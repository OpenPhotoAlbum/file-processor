#!/usr/bin/env python3
"""
Rotation-aware duplicate detection that can find images even if they're rotated.
Tests multiple rotations of each image to find matches.
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

def is_valid_image_file(file_path, min_size=10000):
    """Check if a file is a valid image with reasonable properties."""
    try:
        file_size = os.path.getsize(file_path)
        if file_size < min_size:
            return False, f"Too small ({file_size} bytes)"
        
        with Image.open(file_path) as img:
            width, height = img.size
            
            if width < 100 or height < 100:
                return False, f"Dimensions too small ({width}x{height})"
            
            if width * height < 10000:
                return False, f"Too few pixels ({width*height})"
            
            return True, "Valid"
            
    except Exception as e:
        return False, f"Cannot open: {str(e)}"

def compute_rotation_hashes(img, hash_type='dhash'):
    """Compute hashes for an image at all 4 rotations (0°, 90°, 180°, 270°)."""
    hashes = {}
    
    # Hash function mapping
    hash_funcs = {
        'dhash': imagehash.dhash,
        'phash': imagehash.phash,
        'ahash': imagehash.average_hash,
        'whash': imagehash.whash
    }
    
    hash_func = hash_funcs.get(hash_type, imagehash.dhash)
    
    # Original image (0°)
    hashes[0] = str(hash_func(img))
    
    # 90° rotation
    hashes[90] = str(hash_func(img.rotate(90, expand=True)))
    
    # 180° rotation
    hashes[180] = str(hash_func(img.rotate(180, expand=True)))
    
    # 270° rotation
    hashes[270] = str(hash_func(img.rotate(270, expand=True)))
    
    return hashes

def compute_hash_worker(args):
    """Worker function to compute rotation-aware hashes for a single image."""
    file_path, hash_type = args
    try:
        with Image.open(file_path) as img:
            # Convert RGBA to RGB if necessary
            if img.mode == 'RGBA':
                background = Image.new('RGB', img.size, (255, 255, 255))
                background.paste(img, mask=img.split()[3])
                img = background
            
            # Compute hashes for all rotations
            rotation_hashes = compute_rotation_hashes(img, hash_type)
            
            return (file_path, rotation_hashes)
            
    except Exception as e:
        return (file_path, None)

def get_valid_image_files(directory, min_size=10000):
    """Get all valid image files from directory, filtering out problematic ones."""
    image_extensions = {'.jpg', '.jpeg', '.png', '.gif', '.bmp', '.tiff', '.tif'}
    valid_files = []
    invalid_count = 0
    
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
            invalid_count += 1
    
    print(f"Validation complete: {len(valid_files)} valid, {invalid_count} invalid")
    return valid_files

def compute_hashes_parallel(file_list, hash_type='dhash', num_workers=None):
    """Compute rotation-aware hashes for a list of files in parallel."""
    if num_workers is None:
        num_workers = mp.cpu_count()
    
    print(f"Computing rotation-aware hashes for {len(file_list)} files using {num_workers} workers...")
    
    args_list = [(file_path, hash_type) for file_path in file_list]
    
    hashes = {}
    failed_count = 0
    
    with mp.Pool(num_workers) as pool:
        results = pool.imap(compute_hash_worker, args_list, chunksize=25)  # Smaller chunks since we're doing more work per image
        
        for i, (file_path, rotation_hashes) in enumerate(results):
            if i % 500 == 0:  # Update less frequently since rotation processing is slower
                print(f"  Processed {i}/{len(file_list)} files...")
            
            if rotation_hashes is not None:
                hashes[file_path] = rotation_hashes
            else:
                failed_count += 1
    
    print(f"  Successfully processed {len(hashes)} files ({failed_count} failed)")
    return hashes

def hamming_distance(hash1, hash2):
    """Calculate Hamming distance between two hash strings."""
    if len(hash1) != len(hash2):
        return float('inf')
    return sum(c1 != c2 for c1, c2 in zip(hash1, hash2))

def find_best_rotation_match(staging_hashes, archive_hashes, threshold=5):
    """Find the best match between staging and archive images across all rotations."""
    best_distance = float('inf')
    best_staging_rotation = None
    best_archive_rotation = None
    
    # Try all combinations of rotations
    for staging_rot, staging_hash in staging_hashes.items():
        for archive_rot, archive_hash in archive_hashes.items():
            distance = hamming_distance(staging_hash, archive_hash)
            if distance < best_distance:
                best_distance = distance
                best_staging_rotation = staging_rot
                best_archive_rotation = archive_rot
    
    if best_distance <= threshold:
        return {
            'distance': best_distance,
            'staging_rotation': best_staging_rotation,
            'archive_rotation': best_archive_rotation,
            'similarity_score': 64 - best_distance
        }
    
    return None

def compare_rotation_hashes_batch(args):
    """Worker function to compare a batch of staging files against archive files with rotation awareness."""
    staging_batch, archive_hashes_dict, threshold = args
    matches = []
    
    for staging_file, staging_rotation_hashes in staging_batch:
        for archive_file, archive_rotation_hashes in archive_hashes_dict.items():
            
            match_info = find_best_rotation_match(
                staging_rotation_hashes, 
                archive_rotation_hashes, 
                threshold
            )
            
            if match_info:
                match = {
                    'staging_file': staging_file,
                    'archive_file': archive_file,
                    'distance': match_info['distance'],
                    'similarity_score': match_info['similarity_score'],
                    'staging_rotation': match_info['staging_rotation'],
                    'archive_rotation': match_info['archive_rotation'],
                    'staging_size': os.path.getsize(staging_file),
                    'archive_size': os.path.getsize(archive_file),
                }
                matches.append(match)
    
    return matches

def compare_hashes_parallel(staging_hashes, archive_hashes, threshold=5, num_workers=None):
    """Compare staging and archive rotation hashes in parallel."""
    if num_workers is None:
        num_workers = mp.cpu_count()
    
    print(f"Comparing rotation-aware hashes using {num_workers} workers...")
    
    staging_items = list(staging_hashes.items())
    batch_size = max(1, len(staging_items) // (num_workers * 2))  # Fewer batches since rotation comparison is more expensive
    batches = [staging_items[i:i + batch_size] for i in range(0, len(staging_items), batch_size)]
    
    print(f"  Split into {len(batches)} batches")
    
    args_list = [(batch, archive_hashes, threshold) for batch in batches]
    
    all_matches = []
    with mp.Pool(num_workers) as pool:
        batch_results = pool.map(compare_rotation_hashes_batch, args_list)
        
        for batch_matches in batch_results:
            all_matches.extend(batch_matches)
    
    return all_matches

def main():
    parser = argparse.ArgumentParser(description='Rotation-aware duplicate image detection')
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
                        help='Minimum file size in bytes')
    parser.add_argument('-o', '--output', help='Save results to JSON file')
    parser.add_argument('--limit', type=int, help='Limit number of results shown')
    
    args = parser.parse_args()
    
    print(f"Rotation-aware duplicate detection:")
    print(f"  Archive: {args.archive}")
    print(f"  Staging: {args.staging}")
    print(f"  Hash algorithm: {args.algorithm}")
    print(f"  Detects: 0°, 90°, 180°, 270° rotations")
    print(f"  Minimum file size: {args.min_size:,} bytes")
    print(f"  Similarity threshold: {args.threshold}")
    print()
    
    start_time = time.time()
    
    # Get and validate files
    archive_files = get_valid_image_files(args.archive, args.min_size)
    staging_files = get_valid_image_files(args.staging, args.min_size)
    
    if not archive_files or not staging_files:
        print("No valid images found in one or both directories.")
        return
    
    # Compute rotation-aware hashes
    print("\nComputing archive hashes (with rotations)...")
    archive_hashes = compute_hashes_parallel(archive_files, args.algorithm, args.workers)
    
    print("\nComputing staging hashes (with rotations)...")
    staging_hashes = compute_hashes_parallel(staging_files, args.algorithm, args.workers)
    
    # Find matches
    print("\nComparing for rotation-aware duplicates...")
    matches = compare_hashes_parallel(staging_hashes, archive_hashes, args.threshold, args.workers)
    
    # Sort by similarity
    matches.sort(key=lambda x: x['distance'])
    
    # Limit results if requested
    if args.limit and len(matches) > args.limit:
        matches = matches[:args.limit]
    
    elapsed_time = time.time() - start_time
    
    # Display results
    print(f"\nProcessing completed in {elapsed_time:.1f} seconds")
    print(f"\nFound {len(matches)} potential duplicates:")
    print("=" * 100)
    
    for i, match in enumerate(matches, 1):
        print(f"\nMatch {i}:")
        print(f"  Staging: {match['staging_file']}")
        print(f"           Size: {match['staging_size']:,} bytes, Rotation: {match['staging_rotation']}°")
        print(f"  Archive: {match['archive_file']}")
        print(f"           Size: {match['archive_size']:,} bytes, Rotation: {match['archive_rotation']}°")
        print(f"  Similarity: {match['similarity_score']}/64 (distance: {match['distance']})")
        
        # Show rotation difference
        rotation_diff = abs(match['staging_rotation'] - match['archive_rotation'])
        if rotation_diff > 180:
            rotation_diff = 360 - rotation_diff
        
        if rotation_diff == 0:
            print("  Rotation: Same orientation")
        else:
            print(f"  Rotation: {rotation_diff}° difference")
        
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
                    'rotation_aware': True,
                    'min_file_size': args.min_size,
                    'processing_time': elapsed_time
                },
                'matches': matches
            }, f, indent=2)
        print(f"\nResults saved to: {args.output}")

if __name__ == '__main__':
    main()