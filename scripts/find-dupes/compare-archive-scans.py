#!/usr/bin/env python3
"""
Compare images between archive and staging directories to find duplicates.
Uses perceptual hashing to detect images that are visually similar even with
different cropping, contrast, or compression.
"""

import os
import sys
import argparse
from pathlib import Path
import json
from collections import defaultdict

try:
    from PIL import Image
    import imagehash
except ImportError:
    print("Error: Required libraries not installed.")
    print("Please run: source venv/bin/activate")
    print("Then try again.")
    sys.exit(1)

def get_image_files(directory):
    """Get all image files from directory recursively."""
    image_extensions = {'.jpg', '.jpeg', '.png', '.gif', '.bmp', '.tiff', '.tif'}
    image_files = []
    
    print(f"Scanning {directory}...")
    for root, dirs, files in os.walk(directory):
        for file in files:
            if Path(file).suffix.lower() in image_extensions:
                image_files.append(os.path.join(root, file))
    
    return image_files

def compute_perceptual_hash(image_path, hash_type='dhash'):
    """Compute perceptual hash for an image."""
    try:
        img = Image.open(image_path)
        
        # Convert RGBA to RGB if necessary
        if img.mode == 'RGBA':
            background = Image.new('RGB', img.size, (255, 255, 255))
            background.paste(img, mask=img.split()[3])
            img = background
        
        # Compute hash based on type
        if hash_type == 'dhash':
            return str(imagehash.dhash(img))
        elif hash_type == 'phash':
            return str(imagehash.phash(img))
        elif hash_type == 'ahash':
            return str(imagehash.average_hash(img))
        elif hash_type == 'whash':
            return str(imagehash.whash(img))
        else:
            return str(imagehash.dhash(img))
            
    except Exception as e:
        print(f"Error processing {image_path}: {e}")
        return None

def hamming_distance(hash1, hash2):
    """Calculate Hamming distance between two hash strings."""
    if len(hash1) != len(hash2):
        return float('inf')
    
    return sum(c1 != c2 for c1, c2 in zip(hash1, hash2))

def compare_directories(archive_dir, staging_dir, threshold=5, hash_type='dhash'):
    """Compare images between archive and staging directories."""
    print(f"Comparing directories:")
    print(f"  Archive: {archive_dir}")
    print(f"  Staging: {staging_dir}")
    print(f"  Hash type: {hash_type}")
    print(f"  Similarity threshold: {threshold}")
    print()
    
    # Get all image files
    archive_files = get_image_files(archive_dir)
    staging_files = get_image_files(staging_dir)
    
    print(f"Found {len(archive_files)} files in archive")
    print(f"Found {len(staging_files)} files in staging")
    print()
    
    if not archive_files or not staging_files:
        print("No images found in one or both directories.")
        return []
    
    # Compute hashes for archive files
    print("Computing hashes for archive files...")
    archive_hashes = {}
    for i, file_path in enumerate(archive_files):
        if i % 100 == 0:
            print(f"  Processed {i}/{len(archive_files)}")
        
        hash_val = compute_perceptual_hash(file_path, hash_type)
        if hash_val:
            archive_hashes[file_path] = hash_val
    
    print(f"Successfully processed {len(archive_hashes)} archive files")
    
    # Compute hashes for staging files
    print("Computing hashes for staging files...")
    staging_hashes = {}
    for i, file_path in enumerate(staging_files):
        if i % 100 == 0:
            print(f"  Processed {i}/{len(staging_files)}")
        
        hash_val = compute_perceptual_hash(file_path, hash_type)
        if hash_val:
            staging_hashes[file_path] = hash_val
    
    print(f"Successfully processed {len(staging_hashes)} staging files")
    print()
    
    # Compare hashes to find similarities
    print("Comparing hashes for duplicates...")
    matches = []
    
    for staging_file, staging_hash in staging_hashes.items():
        for archive_file, archive_hash in archive_hashes.items():
            distance = hamming_distance(staging_hash, archive_hash)
            
            if distance <= threshold:
                match = {
                    'staging_file': staging_file,
                    'archive_file': archive_file,
                    'distance': distance,
                    'similarity_score': 64 - distance,  # Max similarity is 64 for 64-bit hash
                    'staging_size': os.path.getsize(staging_file),
                    'archive_size': os.path.getsize(archive_file),
                    'staging_hash': staging_hash,
                    'archive_hash': archive_hash
                }
                matches.append(match)
    
    # Sort by similarity (best matches first)
    matches.sort(key=lambda x: x['distance'])
    
    return matches

def main():
    parser = argparse.ArgumentParser(description='Find duplicate images between archive and staging')
    parser.add_argument('--archive', default='/photos/archive',
                        help='Archive directory path')
    parser.add_argument('--staging', default='/photos/staging/scans',
                        help='Staging directory path')
    parser.add_argument('-t', '--threshold', type=int, default=5,
                        help='Similarity threshold (0=identical, higher=more different)')
    parser.add_argument('-a', '--algorithm', choices=['dhash', 'phash', 'ahash', 'whash'],
                        default='dhash', help='Hash algorithm to use')
    parser.add_argument('-o', '--output', help='Save results to JSON file')
    parser.add_argument('--limit', type=int, help='Limit number of results shown')
    
    args = parser.parse_args()
    
    # Check directories exist
    if not os.path.isdir(args.archive):
        print(f"Error: Archive directory {args.archive} not found")
        sys.exit(1)
    
    if not os.path.isdir(args.staging):
        print(f"Error: Staging directory {args.staging} not found")
        sys.exit(1)
    
    # Find matches
    matches = compare_directories(args.archive, args.staging, args.threshold, args.algorithm)
    
    # Limit results if requested
    if args.limit and len(matches) > args.limit:
        matches = matches[:args.limit]
        print(f"Showing top {args.limit} matches (out of {len(matches)} total)")
    
    # Display results
    print(f"Found {len(matches)} potential duplicates:")
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
        # Convert to JSON-serializable format
        json_matches = []
        for match in matches:
            json_match = {
                'staging_file': match['staging_file'],
                'archive_file': match['archive_file'],
                'distance': match['distance'],
                'similarity_score': match['similarity_score'],
                'staging_size': match['staging_size'],
                'archive_size': match['archive_size']
            }
            json_matches.append(json_match)
        
        with open(args.output, 'w') as f:
            json.dump({
                'parameters': {
                    'archive_dir': args.archive,
                    'staging_dir': args.staging,
                    'threshold': args.threshold,
                    'algorithm': args.algorithm
                },
                'matches': json_matches
            }, f, indent=2)
        print(f"\nResults saved to: {args.output}")
    
    if matches:
        print(f"\n{'='*100}")
        print("SUMMARY:")
        print(f"Found {len(matches)} potential duplicate pairs")
        print("Review these manually to confirm they are the same image.")
        print("Lower distance = more similar (0 = identical)")

if __name__ == '__main__':
    main()