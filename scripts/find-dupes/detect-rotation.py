#!/usr/bin/env python3
"""
Detect if images appear to be rotated based on visual content analysis.
Uses text orientation, face detection, and line analysis.
"""

import os
import sys
import argparse
from pathlib import Path
import json

try:
    from PIL import Image
    import cv2
    import numpy as np
except ImportError:
    print("Error: Required libraries not installed.")
    print("Please install: pip install opencv-python pillow")
    sys.exit(1)

def detect_text_orientation(image_path):
    """
    Use OCR to detect text orientation.
    Returns likely rotation needed to make text readable.
    """
    try:
        import pytesseract
        
        img = cv2.imread(image_path)
        if img is None:
            return None, "Cannot read image"
        
        # Convert to grayscale
        gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
        
        # Try to detect text orientation
        osd = pytesseract.image_to_osd(gray, output_type=pytesseract.Output.DICT)
        
        rotation = osd.get('rotate', 0)
        confidence = osd.get('orientation_conf', 0)
        
        if confidence > 5:  # Reasonable confidence threshold
            return rotation, f"Text suggests {rotation}° rotation (confidence: {confidence})"
        else:
            return None, f"Low text confidence: {confidence}"
            
    except ImportError:
        return None, "pytesseract not available"
    except Exception as e:
        return None, f"OCR error: {str(e)}"

def detect_face_orientation(image_path):
    """
    Use face detection to determine if faces are right-side up.
    """
    try:
        img = cv2.imread(image_path)
        if img is None:
            return None, "Cannot read image"
        
        # Load face detector
        face_cascade = cv2.CascadeClassifier(cv2.data.haarcascades + 'haarcascade_frontalface_default.xml')
        
        gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
        
        # Detect faces in original orientation
        faces_0 = face_cascade.detectMultiScale(gray, 1.1, 4)
        
        # Try 180° rotation
        rotated_180 = cv2.rotate(gray, cv2.ROTATE_180)
        faces_180 = face_cascade.detectMultiScale(rotated_180, 1.1, 4)
        
        if len(faces_0) > len(faces_180):
            return 0, f"Found {len(faces_0)} faces in normal orientation vs {len(faces_180)} when rotated"
        elif len(faces_180) > len(faces_0):
            return 180, f"Found {len(faces_180)} faces when rotated 180° vs {len(faces_0)} normal"
        elif len(faces_0) > 0:
            return 0, f"Equal faces found ({len(faces_0)}), assuming normal orientation"
        else:
            return None, "No faces detected"
            
    except Exception as e:
        return None, f"Face detection error: {str(e)}"

def detect_line_orientation(image_path):
    """
    Analyze dominant lines to detect if image appears rotated.
    """
    try:
        img = cv2.imread(image_path)
        if img is None:
            return None, "Cannot read image"
        
        gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
        
        # Edge detection
        edges = cv2.Canny(gray, 50, 150, apertureSize=3)
        
        # Hough line detection
        lines = cv2.HoughLines(edges, 1, np.pi/180, threshold=100)
        
        if lines is None:
            return None, "No lines detected"
        
        # Analyze angles
        angles = []
        for line in lines:
            rho, theta = line[0]
            angle = theta * 180 / np.pi
            angles.append(angle)
        
        angles = np.array(angles)
        
        # Count horizontal-ish lines (0°, 180°) and vertical-ish lines (90°)
        horizontal_lines = np.sum((angles < 10) | (angles > 170))
        vertical_lines = np.sum((angles > 80) & (angles < 100))
        
        total_strong_lines = horizontal_lines + vertical_lines
        
        if total_strong_lines > len(lines) * 0.3:  # At least 30% are horizontal/vertical
            return 0, f"Good line alignment: {horizontal_lines} horizontal, {vertical_lines} vertical"
        else:
            return None, f"Poor alignment: {horizontal_lines} horizontal, {vertical_lines} vertical out of {len(lines)} total"
            
    except Exception as e:
        return None, f"Line detection error: {str(e)}"

def analyze_image_orientation(image_path):
    """
    Combine multiple methods to determine if image appears rotated.
    """
    results = {
        'file': image_path,
        'methods': {}
    }
    
    # Try text orientation
    text_rotation, text_reason = detect_text_orientation(image_path)
    results['methods']['text'] = {
        'rotation': text_rotation,
        'reason': text_reason
    }
    
    # Try face detection
    face_rotation, face_reason = detect_face_orientation(image_path)
    results['methods']['faces'] = {
        'rotation': face_rotation,
        'reason': face_reason
    }
    
    # Try line analysis
    line_rotation, line_reason = detect_line_orientation(image_path)
    results['methods']['lines'] = {
        'rotation': line_rotation,
        'reason': line_reason
    }
    
    # Determine overall recommendation
    rotations = []
    confidences = []
    
    if text_rotation is not None:
        rotations.append(text_rotation)
        confidences.append(3)  # High confidence for text
    
    if face_rotation is not None:
        rotations.append(face_rotation)
        confidences.append(2)  # Medium confidence for faces
    
    if line_rotation is not None:
        rotations.append(line_rotation)
        confidences.append(1)  # Lower confidence for lines
    
    if rotations:
        # Weighted average
        weighted_rotation = np.average(rotations, weights=confidences)
        results['recommendation'] = {
            'rotation': int(round(weighted_rotation)),
            'confidence': sum(confidences),
            'methods_agree': len(set(rotations)) == 1
        }
    else:
        results['recommendation'] = {
            'rotation': None,
            'confidence': 0,
            'methods_agree': False
        }
    
    return results

def main():
    parser = argparse.ArgumentParser(description='Detect image rotation based on visual content')
    parser.add_argument('images', nargs='+', help='Image files or directories to analyze')
    parser.add_argument('-o', '--output', help='Save results to JSON file')
    parser.add_argument('--show-details', action='store_true', help='Show detailed analysis for each method')
    
    args = parser.parse_args()
    
    # Collect image files
    image_files = []
    image_extensions = {'.jpg', '.jpeg', '.png', '.gif', '.bmp', '.tiff', '.tif'}
    
    for path in args.images:
        if os.path.isfile(path):
            if Path(path).suffix.lower() in image_extensions:
                image_files.append(path)
        elif os.path.isdir(path):
            for root, dirs, files in os.walk(path):
                for file in files:
                    if Path(file).suffix.lower() in image_extensions:
                        image_files.append(os.path.join(root, file))
    
    print(f"Analyzing {len(image_files)} images for rotation...")
    print()
    
    results = []
    potentially_rotated = []
    
    for i, image_path in enumerate(image_files):
        print(f"[{i+1}/{len(image_files)}] {os.path.basename(image_path)}")
        
        analysis = analyze_image_orientation(image_path)
        results.append(analysis)
        
        rec = analysis['recommendation']
        
        if rec['rotation'] is not None and rec['rotation'] != 0:
            potentially_rotated.append(analysis)
            print(f"  🔄 Possibly rotated {rec['rotation']}° (confidence: {rec['confidence']})")
        elif rec['confidence'] > 0:
            print(f"  ✓ Appears correctly oriented (confidence: {rec['confidence']})")
        else:
            print(f"  ❓ Cannot determine orientation")
        
        if args.show_details:
            for method, result in analysis['methods'].items():
                if result['rotation'] is not None:
                    print(f"    {method}: {result['rotation']}° - {result['reason']}")
                else:
                    print(f"    {method}: {result['reason']}")
        
        print()
    
    # Summary
    print("=" * 60)
    print("SUMMARY")
    print("=" * 60)
    print(f"Total images analyzed: {len(image_files)}")
    print(f"Possibly rotated: {len(potentially_rotated)}")
    print(f"Cannot determine: {len([r for r in results if r['recommendation']['confidence'] == 0])}")
    
    if potentially_rotated:
        print(f"\nPossibly rotated images:")
        for analysis in potentially_rotated:
            rec = analysis['recommendation']
            print(f"  {os.path.basename(analysis['file'])}: {rec['rotation']}° (confidence: {rec['confidence']})")
    
    # Save results
    if args.output:
        with open(args.output, 'w') as f:
            json.dump({
                'total_images': len(image_files),
                'potentially_rotated': len(potentially_rotated),
                'results': results
            }, f, indent=2)
        print(f"\nDetailed results saved to: {args.output}")

if __name__ == '__main__':
    main()