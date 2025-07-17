#!/usr/bin/env python3
"""
Parallel version of duplicate detection using multiprocessing.
Much faster for large datasets.
"""

import os
import sys
import argparse
from pathlib import Path
import json
import multiprocessing as mp
from functools import partial
import time

try:
    from PIL import Image
    import imagehash
except ImportError:
    print("Error: Required libraries not installed.")
    print("Please run: source venv/bin/activate")
    sys.exit(1)

def get_image_files(directory):
    """Get all image files from directory recursively."""
    image_extensions = {'.jpg', '.jpeg', '.png', '.gif', '.bmp', '.tiff', '.tif'}
    image_files = []
    
    for root, dirs, files in os.walk(directory):
        for file in files:
            if Path(file).suffix.lower() in image_extensions:
                image_files.append(os.path.join(root, file))
    
    return image_files

def compute_hash_worker(args):
    """Worker function to compute hash for a single image."""
    file_path, hash_type = args
    try:
        img = Image.open(file_path)
        
        # Convert RGBA to RGB if necessary
        if img.mode == 'RGBA':
            background = Image.new('RGB', img.size, (255, 255, 255))
            background.paste(img, mask=img.split()[3])
            img = background
        
        # Compute hash based on type
        if hash_type == 'dhash':
            hash_val = str(imagehash.dhash(img))
        elif hash_type == 'phash':
            hash_val = str(imagehash.phash(img))
        elif hash_type == 'ahash':
            hash_val = str(imagehash.average_hash(img))
        elif hash_type == 'whash':
            hash_val = str(imagehash.whash(img))
        else:
            hash_val = str(imagehash.dhash(img))
        
        return (file_path, hash_val)
            
    except Exception as e:
        # Return None for failed files - they'll be filtered out
        return (file_path, None)

def compute_hashes_parallel(file_list, hash_type='dhash', num_workers=None):
    """Compute hashes for a list of files in parallel."""
    if num_workers is None:
        num_workers = mp.cpu_count()
    
    print(f"Computing hashes using {num_workers} workers...")
    
    # Prepare arguments for workers
    args_list = [(file_path, hash_type) for file_path in file_list]
    
    # Process in parallel with progress tracking
    hashes = {}
    failed_count = 0
    
    with mp.Pool(num_workers) as pool:
        # Use imap for progress tracking
        results = pool.imap(compute_hash_worker, args_list, chunksize=50)
        
        for i, (file_path, hash_val) in enumerate(results):
            if i % 1000 == 0:
                print(f"  Processed {i}/{len(file_list)} files...")
            
            if hash_val is not None:
                hashes[file_path] = hash_val
            else:
                failed_count += 1
    
    print(f"  Successfully processed {len(hashes)} files ({failed_count} failed)")
    return hashes

def hamming_distance(hash1, hash2):
    """Calculate Hamming distance between two hash strings."""
    if len(hash1) != len(hash2):
        return float('inf')
    
    return sum(c1 != c2 for c1, c2 in zip(hash1, hash2))

def compare_hashes_batch(args):
    """Worker function to compare a batch of staging hashes against archive hashes."""
    staging_batch, archive_hashes, threshold = args
    matches = []
    
    for staging_file, staging_hash in staging_batch:
        for archive_file, archive_hash in archive_hashes.items():
            distance = hamming_distance(staging_hash, archive_hash)
            
            if distance <= threshold:
                match = {
                    'staging_file': staging_file,
                    'archive_file': archive_file,
                    'distance': distance,
                    'similarity_score': 64 - distance,
                    'staging_size': os.path.getsize(staging_file),
                    'archive_size': os.path.getsize(archive_file),
                }
                matches.append(match)
    
    return matches

def compare_hashes_parallel(staging_hashes, archive_hashes, threshold=5, num_workers=None):
    """Compare staging and archive hashes in parallel."""
    if num_workers is None:
        num_workers = mp.cpu_count()
    
    print(f"Comparing hashes using {num_workers} workers...")
    
    # Split staging hashes into batches for parallel processing
    staging_items = list(staging_hashes.items())
    batch_size = max(1, len(staging_items) // (num_workers * 4))  # 4 batches per worker
    batches = [staging_items[i:i + batch_size] for i in range(0, len(staging_items), batch_size)]
    
    print(f"  Split into {len(batches)} batches of ~{batch_size} items each")
    
    # Prepare arguments for workers
    args_list = [(batch, archive_hashes, threshold) for batch in batches]
    
    # Process in parallel
    all_matches = []
    with mp.Pool(num_workers) as pool:
        batch_results = pool.map(compare_hashes_batch, args_list)
        
        for batch_matches in batch_results:
            all_matches.extend(batch_matches)
    
    return all_matches

def main():
    parser = argparse.ArgumentParser(description='Parallel duplicate image detection')
    parser.add_argument('--archive', default='/photos/archive',
                        help='Archive directory path')
    parser.add_argument('--staging', default='/photos/staging/scans',
                        help='Staging directory path')
    parser.add_argument('-t', '--threshold', type=int, default=5,
                        help='Similarity threshold')
    parser.add_argument('-a', '--algorithm', choices=['dhash', 'phash', 'ahash', 'whash'],
                        default='dhash', help='Hash algorithm to use')
    parser.add_argument('-w', '--workers', type=int,
                        help='Number of worker processes (default: CPU count)')
    parser.add_argument('-o', '--output', help='Save results to JSON file')
    parser.add_argument('--limit', type=int, help='Limit number of results shown')
    parser.add_argument('--cache-archive', help='Cache archive hashes to file')
    parser.add_argument('--load-archive-cache', help='Load archive hashes from cache file')
    
    args = parser.parse_args()
    
    if args.workers:
        print(f"Using {args.workers} worker processes")
    else:
        print(f"Using {mp.cpu_count()} worker processes (auto-detected)")
    
    start_time = time.time()
    
    print(f"Comparing directories:")
    print(f"  Archive: {args.archive}")
    print(f"  Staging: {args.staging}")
    print(f"  Hash type: {args.algorithm}")
    print(f"  Similarity threshold: {args.threshold}")
    print()
    
    # Get file lists
    print("Scanning directories...")
    archive_files = get_image_files(args.archive)
    staging_files = get_image_files(args.staging)
    
    print(f"Found {len(archive_files)} files in archive")
    print(f"Found {len(staging_files)} files in staging")
    print()
    
    if not archive_files or not staging_files:
        print("No images found in one or both directories.")
        return
    
    # Handle archive hash caching
    archive_hashes = {}
    if args.load_archive_cache and os.path.exists(args.load_archive_cache):
        print(f"Loading archive hashes from cache: {args.load_archive_cache}")
        with open(args.load_archive_cache, 'r') as f:
            cache_data = json.load(f)
            archive_hashes = cache_data.get('hashes', {})
        print(f"Loaded {len(archive_hashes)} cached hashes")
    else:
        # Compute archive hashes
        print("Computing archive hashes...")
        archive_hashes = compute_hashes_parallel(archive_files, args.algorithm, args.workers)
        
        # Save cache if requested
        if args.cache_archive:
            print(f"Saving archive hashes to cache: {args.cache_archive}")
            cache_data = {
                'algorithm': args.algorithm,
                'total_files': len(archive_files),
                'successful_hashes': len(archive_hashes),
                'hashes': archive_hashes
            }
            with open(args.cache_archive, 'w') as f:
                json.dump(cache_data, f, indent=2)
    
    # Compute staging hashes
    print("Computing staging hashes...")
    staging_hashes = compute_hashes_parallel(staging_files, args.algorithm, args.workers)
    
    # Compare hashes
    print("Comparing for duplicates...")
    matches = compare_hashes_parallel(staging_hashes, archive_hashes, args.threshold, args.workers)
    
    # Sort by similarity
    matches.sort(key=lambda x: x['distance'])
    
    # Limit results if requested
    if args.limit and len(matches) > args.limit:
        matches = matches[:args.limit]
        print(f"Showing top {args.limit} matches")
    
    elapsed_time = time.time() - start_time
    print(f"\nProcessing completed in {elapsed_time:.1f} seconds")
    
    # Display results
    print(f"\nFound {len(matches)} potential duplicates:")
    print("=" * 100)
    
    for i, match in enumerate(matches, 1):
        print(f"\nMatch {i}:")
        print(f"  Staging: {match['staging_file']}")
        print(f"           Size: {match['staging_size']:,} bytes")
        print(f"  Archive: {match['archive_file']}")
        print(f"           Size: {match['archive_size']:,} bytes")
        print(f"  Similarity: {match['similarity_score']}/64 (distance: {match['distance']})")
        
        if match['distance'] == 0:
            print("  *** IDENTICAL IMAGES ***")
        elif match['distance'] <= 2:
            print("  *** VERY SIMILAR ***")
        elif match['distance'] <= 5:
            print("  *** SIMILAR ***")
    
    # Save results if requested
    if args.output:
        with open(args.output, 'w') as f:
            json.dump({
                'parameters': {
                    'archive_dir': args.archive,
                    'staging_dir': args.staging,
                    'threshold': args.threshold,
                    'algorithm': args.algorithm,
                    'processing_time': elapsed_time
                },
                'matches': matches
            }, f, indent=2)
        print(f"\nResults saved to: {args.output}")

if __name__ == '__main__':
    main()