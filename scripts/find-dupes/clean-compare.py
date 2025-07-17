#!/usr/bin/env python3
"""
Enhanced duplicate detection with file filtering to remove corrupted/tiny files.
"""

import os
import sys
import argparse
from pathlib import Path
import json
import multiprocessing as mp
import time

try:
    from PIL import Image
    import imagehash
except ImportError:
    print("Error: Required libraries not installed.")
    print("Please run: source venv/bin/activate")
    sys.exit(1)

def is_valid_image_file(file_path, min_size=10000, max_aspect_ratio=10):
    """
    Check if a file is a valid image with reasonable properties.
    
    Args:
        file_path: Path to the image file
        min_size: Minimum file size in bytes (default 10KB)
        max_aspect_ratio: Maximum width/height ratio to filter out weird dimensions
    """
    try:
        # Check file size first (quick filter)
        file_size = os.path.getsize(file_path)
        if file_size < min_size:
            return False, f"Too small ({file_size} bytes)"
        
        # Try to open and validate the image
        with Image.open(file_path) as img:
            width, height = img.size
            
            # Check for reasonable dimensions
            if width < 100 or height < 100:
                return False, f"Dimensions too small ({width}x{height})"
            
            # Check aspect ratio (filter out very thin/wide images that might be artifacts)
            aspect_ratio = max(width, height) / min(width, height)
            if aspect_ratio > max_aspect_ratio:
                return False, f"Unusual aspect ratio ({width}x{height})"
            
            # Check if image has actual data (not just a tiny placeholder)
            if width * height < 10000:  # Less than 100x100 pixels
                return False, f"Too few pixels ({width*height})"
            
            return True, "Valid"
            
    except Exception as e:
        return False, f"Cannot open: {str(e)}"

def get_valid_image_files(directory, min_size=10000):
    """Get all valid image files from directory, filtering out problematic ones."""
    image_extensions = {'.jpg', '.jpeg', '.png', '.gif', '.bmp', '.tiff', '.tif'}
    valid_files = []
    invalid_files = []
    
    print(f"Scanning and validating images in {directory}...")
    
    all_files = []
    for root, dirs, files in os.walk(directory):
        for file in files:
            if Path(file).suffix.lower() in image_extensions:
                all_files.append(os.path.join(root, file))
    
    print(f"Found {len(all_files)} potential image files, validating...")
    
    for i, file_path in enumerate(all_files):
        if i % 1000 == 0 and i > 0:
            print(f"  Validated {i}/{len(all_files)} files...")
        
        is_valid, reason = is_valid_image_file(file_path, min_size)
        
        if is_valid:
            valid_files.append(file_path)
        else:
            invalid_files.append((file_path, reason))
    
    print(f"Validation complete:")
    print(f"  Valid files: {len(valid_files)}")
    print(f"  Invalid files: {len(invalid_files)}")
    
    # Show some examples of invalid files
    if invalid_files:
        print(f"  Examples of invalid files:")
        for file_path, reason in invalid_files[:5]:
            print(f"    {file_path}: {reason}")
        if len(invalid_files) > 5:
            print(f"    ... and {len(invalid_files) - 5} more")
    
    return valid_files, invalid_files

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
        
        # Compute hash
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
        return (file_path, None)

def compute_hashes_parallel(file_list, hash_type='dhash', num_workers=None):
    """Compute hashes for a list of files in parallel."""
    if num_workers is None:
        num_workers = mp.cpu_count()
    
    print(f"Computing hashes for {len(file_list)} files using {num_workers} workers...")
    
    args_list = [(file_path, hash_type) for file_path in file_list]
    
    hashes = {}
    failed_count = 0
    
    with mp.Pool(num_workers) as pool:
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
    
    staging_items = list(staging_hashes.items())
    batch_size = max(1, len(staging_items) // (num_workers * 4))
    batches = [staging_items[i:i + batch_size] for i in range(0, len(staging_items), batch_size)]
    
    print(f"  Split into {len(batches)} batches")
    
    args_list = [(batch, archive_hashes, threshold) for batch in batches]
    
    all_matches = []
    with mp.Pool(num_workers) as pool:
        batch_results = pool.map(compare_hashes_batch, args_list)
        
        for batch_matches in batch_results:
            all_matches.extend(batch_matches)
    
    return all_matches

def main():
    parser = argparse.ArgumentParser(description='Clean duplicate image detection with filtering')
    parser.add_argument('--archive', default='/photos/archive',
                        help='Archive directory path')
    parser.add_argument('--staging', default='/photos/staging/scans',
                        help='Staging directory path')
    parser.add_argument('-t', '--threshold', type=int, default=5,
                        help='Similarity threshold')
    parser.add_argument('-a', '--algorithm', choices=['dhash', 'phash', 'ahash', 'whash'],
                        default='dhash', help='Hash algorithm to use')
    parser.add_argument('-w', '--workers', type=int,
                        help='Number of worker processes')
    parser.add_argument('--min-size', type=int, default=10000,
                        help='Minimum file size in bytes (default: 10KB)')
    parser.add_argument('-o', '--output', help='Save results to JSON file')
    parser.add_argument('--save-invalid', help='Save list of invalid files to JSON')
    parser.add_argument('--limit', type=int, help='Limit number of results shown')
    
    args = parser.parse_args()
    
    print(f"Clean duplicate detection with filtering:")
    print(f"  Archive: {args.archive}")
    print(f"  Staging: {args.staging}")
    print(f"  Minimum file size: {args.min_size:,} bytes")
    print(f"  Hash algorithm: {args.algorithm}")
    print(f"  Similarity threshold: {args.threshold}")
    print()
    
    start_time = time.time()
    
    # Get and validate files
    print("=" * 60)
    print("PHASE 1: FILE VALIDATION")
    print("=" * 60)
    
    archive_files, archive_invalid = get_valid_image_files(args.archive, args.min_size)
    staging_files, staging_invalid = get_valid_image_files(args.staging, args.min_size)
    
    if not archive_files or not staging_files:
        print("No valid images found in one or both directories.")
        return
    
    # Save invalid files list if requested
    if args.save_invalid:
        invalid_data = {
            'archive_invalid': [{'file': f, 'reason': r} for f, r in archive_invalid],
            'staging_invalid': [{'file': f, 'reason': r} for f, r in staging_invalid],
            'total_invalid': len(archive_invalid) + len(staging_invalid)
        }
        with open(args.save_invalid, 'w') as f:
            json.dump(invalid_data, f, indent=2)
        print(f"Invalid files list saved to: {args.save_invalid}")
    
    print("\n" + "=" * 60)
    print("PHASE 2: HASH COMPUTATION")
    print("=" * 60)
    
    # Compute hashes
    archive_hashes = compute_hashes_parallel(archive_files, args.algorithm, args.workers)
    staging_hashes = compute_hashes_parallel(staging_files, args.algorithm, args.workers)
    
    print("\n" + "=" * 60)
    print("PHASE 3: DUPLICATE DETECTION")
    print("=" * 60)
    
    # Find matches
    matches = compare_hashes_parallel(staging_hashes, archive_hashes, args.threshold, args.workers)
    
    # Sort by similarity
    matches.sort(key=lambda x: x['distance'])
    
    # Limit results if requested
    if args.limit and len(matches) > args.limit:
        matches = matches[:args.limit]
        print(f"Showing top {args.limit} matches")
    
    elapsed_time = time.time() - start_time
    
    # Display results
    print(f"\nProcessing completed in {elapsed_time:.1f} seconds")
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
    
    # Save results
    if args.output:
        with open(args.output, 'w') as f:
            json.dump({
                'parameters': {
                    'archive_dir': args.archive,
                    'staging_dir': args.staging,
                    'threshold': args.threshold,
                    'algorithm': args.algorithm,
                    'min_file_size': args.min_size,
                    'processing_time': elapsed_time,
                    'files_processed': {
                        'archive_valid': len(archive_files),
                        'archive_invalid': len(archive_invalid),
                        'staging_valid': len(staging_files),
                        'staging_invalid': len(staging_invalid)
                    }
                },
                'matches': matches
            }, f, indent=2)
        print(f"\nResults saved to: {args.output}")
    
    if matches:
        print(f"\n{'='*100}")
        print("SUMMARY:")
        print(f"Valid files processed: {len(archive_files)} archive + {len(staging_files)} staging")
        print(f"Invalid files filtered: {len(archive_invalid)} archive + {len(staging_invalid)} staging")
        print(f"Found {len(matches)} potential duplicate pairs")

if __name__ == '__main__':
    main()