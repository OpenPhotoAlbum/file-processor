#!/usr/bin/env python3
"""
Set EXIF orientation data without rotating actual pixels.
This tells image viewers how to display the image.
"""

import os
import sys
import argparse
from pathlib import Path

try:
    from PIL import Image
    from PIL.ExifTags import ORIENTATION
except ImportError:
    print("Error: Pillow not installed.")
    print("Please run: pip install Pillow")
    sys.exit(1)

def set_exif_orientation(image_path, rotation_degrees):
    """
    Set EXIF orientation tag based on rotation needed.
    
    Args:
        image_path: Path to image file
        rotation_degrees: How many degrees the image needs to be rotated (0, 90, 180, 270)
    """
    # Map rotation to EXIF orientation values
    rotation_to_orientation = {
        0: 1,    # Normal
        90: 6,   # Rotate 90° CW
        180: 3,  # Rotate 180°
        270: 8   # Rotate 270° CW (or 90° CCW)
    }
    
    if rotation_degrees not in rotation_to_orientation:
        print(f"Invalid rotation: {rotation_degrees}. Must be 0, 90, 180, or 270")
        return False
    
    try:
        with Image.open(image_path) as img:
            # Get existing EXIF data
            exif_data = img.getexif()
            
            # Set orientation
            orientation_value = rotation_to_orientation[rotation_degrees]
            exif_data[ORIENTATION] = orientation_value
            
            # Save image with updated EXIF
            img.save(image_path, exif=exif_data)
            
            print(f"Set orientation to {orientation_value} ({rotation_degrees}°): {os.path.basename(image_path)}")
            return True
            
    except Exception as e:
        print(f"Error setting EXIF orientation for {image_path}: {e}")
        return False

def process_directory(directory, rotation_degrees):
    """Process all images in a directory."""
    image_extensions = {'.jpg', '.jpeg', '.tiff', '.tif'}
    
    processed = 0
    failed = 0
    
    for root, dirs, files in os.walk(directory):
        for file in files:
            if Path(file).suffix.lower() in image_extensions:
                file_path = os.path.join(root, file)
                
                if set_exif_orientation(file_path, rotation_degrees):
                    processed += 1
                else:
                    failed += 1
    
    print(f"\nProcessed {processed} images, {failed} failed")

def main():
    parser = argparse.ArgumentParser(description='Set EXIF orientation data')
    parser.add_argument('path', help='Image file or directory')
    parser.add_argument('rotation', type=int, choices=[0, 90, 180, 270],
                        help='Rotation needed in degrees (0, 90, 180, 270)')
    parser.add_argument('--recursive', action='store_true',
                        help='Process directories recursively')
    
    args = parser.parse_args()
    
    if os.path.isfile(args.path):
        # Single file
        set_exif_orientation(args.path, args.rotation)
    elif os.path.isdir(args.path):
        # Directory
        process_directory(args.path, args.rotation)
    else:
        print(f"Error: {args.path} not found")
        sys.exit(1)

if __name__ == '__main__':
    main()