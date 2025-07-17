#!/usr/bin/env python3
"""
Command-line rotation reviewer - no GUI required.
Shows image info and lets you decide whether to move to rotate folder.
"""

import os
import sys
import argparse
from pathlib import Path
import shutil

try:
    from PIL import Image
except ImportError:
    print("Error: Pillow not installed.")
    print("Please run: pip install Pillow")
    sys.exit(1)

def get_image_info(image_path):
    """Get basic information about an image."""
    try:
        with Image.open(image_path) as img:
            width, height = img.size
            mode = img.mode
            format_name = img.format
            
            # Calculate aspect ratio
            if height > 0:
                aspect_ratio = width / height
                if aspect_ratio > 1.2:
                    orientation = "landscape"
                elif aspect_ratio < 0.8:
                    orientation = "portrait"
                else:
                    orientation = "square"
            else:
                orientation = "unknown"
            
            return {
                'width': width,
                'height': height,
                'mode': mode,
                'format': format_name,
                'aspect_ratio': aspect_ratio,
                'orientation': orientation,
                'file_size': os.path.getsize(image_path)
            }
    except Exception as e:
        return {'error': str(e)}

def show_image_info(image_path, index, total):
    """Display information about the current image."""
    filename = os.path.basename(image_path)
    info = get_image_info(image_path)
    
    print(f"\n{'='*60}")
    print(f"Image {index + 1} of {total}")
    print(f"{'='*60}")
    print(f"File: {filename}")
    print(f"Path: {image_path}")
    
    if 'error' in info:
        print(f"Error: {info['error']}")
        return False
    
    print(f"Size: {info['width']} x {info['height']} pixels")
    print(f"Orientation: {info['orientation']} (ratio: {info['aspect_ratio']:.2f})")
    print(f"Format: {info['format']}, Mode: {info['mode']}")
    print(f"File size: {info['file_size']:,} bytes")
    
    # Show hints about potential rotation issues
    if info['orientation'] == 'portrait' and info['aspect_ratio'] < 0.6:
        print("📱 Very tall - might be a rotated landscape photo")
    elif info['orientation'] == 'landscape' and info['aspect_ratio'] > 2.0:
        print("📐 Very wide - might be a rotated portrait photo")
    
    return True

def review_images(image_files, rotate_dir):
    """Review images and move problematic ones to rotate directory."""
    os.makedirs(rotate_dir, exist_ok=True)
    
    moved_count = 0
    current_index = 0
    
    print(f"Starting review of {len(image_files)} images")
    print(f"Rotate directory: {rotate_dir}")
    print("\nCommands:")
    print("  r = Move to rotate folder")
    print("  s = Skip (next image)")
    print("  b = Go back to previous image")
    print("  q = Quit")
    print("  ? = Show this help")
    
    while current_index < len(image_files):
        image_path = image_files[current_index]
        
        # Show image info
        valid = show_image_info(image_path, current_index, len(image_files))
        
        if not valid:
            print("⚠️  Cannot process this image")
        
        # Get user input
        while True:
            try:
                choice = input(f"\nWhat to do? [r/s/b/q/?]: ").lower().strip()
                
                if choice == 'r':
                    # Move to rotate directory
                    filename = os.path.basename(image_path)
                    dest_path = os.path.join(rotate_dir, filename)
                    
                    try:
                        shutil.move(image_path, dest_path)
                        print(f"✓ Moved to rotate: {filename}")
                        moved_count += 1
                        current_index += 1
                        break
                    except Exception as e:
                        print(f"❌ Error moving file: {e}")
                        continue
                
                elif choice == 's':
                    # Skip to next
                    current_index += 1
                    break
                
                elif choice == 'b':
                    # Go back
                    if current_index > 0:
                        current_index -= 1
                    else:
                        print("Already at first image")
                        continue
                    break
                
                elif choice == 'q':
                    # Quit
                    print(f"\nSession complete!")
                    print(f"Images reviewed: {current_index}")
                    print(f"Moved to rotate: {moved_count}")
                    return moved_count
                
                elif choice == '?':
                    # Show help
                    print("\nCommands:")
                    print("  r = Move to rotate folder")
                    print("  s = Skip (next image)")
                    print("  b = Go back to previous image")
                    print("  q = Quit")
                    print("  ? = Show this help")
                    continue
                
                else:
                    print("Invalid choice. Use r/s/b/q/? or press ? for help")
                    continue
                    
            except KeyboardInterrupt:
                print(f"\n\nInterrupted by user!")
                print(f"Images reviewed: {current_index}")
                print(f"Moved to rotate: {moved_count}")
                return moved_count
    
    print(f"\n🎉 All images reviewed!")
    print(f"Total moved to rotate: {moved_count}")
    return moved_count

def main():
    parser = argparse.ArgumentParser(description='Command-line rotation reviewer')
    parser.add_argument('source_dir', help='Directory containing images to review')
    parser.add_argument('--rotate-dir', default='/photos/staging/scans/rotate',
                        help='Directory to move rotated images to')
    parser.add_argument('--start-from', type=int, default=0,
                        help='Start from this image index')
    parser.add_argument('--filter-size', type=int, help='Only review images smaller than this many bytes')
    parser.add_argument('--filter-orientation', choices=['portrait', 'landscape', 'square'],
                        help='Only review images with this orientation')
    
    args = parser.parse_args()
    
    if not os.path.isdir(args.source_dir):
        print(f"Error: Source directory {args.source_dir} not found")
        sys.exit(1)
    
    # Find all image files
    image_extensions = {'.jpg', '.jpeg', '.png', '.gif', '.bmp', '.tiff', '.tif'}
    image_files = []
    
    for root, dirs, files in os.walk(args.source_dir):
        for file in files:
            if Path(file).suffix.lower() in image_extensions:
                image_files.append(os.path.join(root, file))
    
    # Sort for consistent ordering
    image_files.sort()
    
    # Apply filters
    if args.filter_size or args.filter_orientation:
        filtered_files = []
        print("Applying filters...")
        
        for image_path in image_files:
            include = True
            
            if args.filter_size:
                if os.path.getsize(image_path) >= args.filter_size:
                    include = False
            
            if args.filter_orientation and include:
                info = get_image_info(image_path)
                if 'error' not in info and info['orientation'] != args.filter_orientation:
                    include = False
            
            if include:
                filtered_files.append(image_path)
        
        print(f"Filtered from {len(image_files)} to {len(filtered_files)} images")
        image_files = filtered_files
    
    # Start from specific index if requested
    if args.start_from > 0:
        if args.start_from < len(image_files):
            image_files = image_files[args.start_from:]
            print(f"Starting from image {args.start_from}")
        else:
            print(f"Start index {args.start_from} is beyond available images")
            sys.exit(1)
    
    if not image_files:
        print("No images found to review")
        sys.exit(1)
    
    # Start review
    moved_count = review_images(image_files, args.rotate_dir)
    
    if moved_count > 0:
        print(f"\nFiles moved to rotate directory:")
        print(f"  {args.rotate_dir}")

if __name__ == '__main__':
    main()