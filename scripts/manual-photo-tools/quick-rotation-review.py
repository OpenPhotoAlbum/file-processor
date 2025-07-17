#!/usr/bin/env python3
"""
Quick visual review tool for identifying rotated images.
Shows images one by one and lets you quickly mark them for rotation.
"""

import os
import sys
import argparse
from pathlib import Path
import shutil
import json

try:
    from PIL import Image, ImageTk
    import tkinter as tk
    from tkinter import ttk
except ImportError:
    print("Error: Required libraries not installed.")
    print("Please install: pip install Pillow")
    sys.exit(1)

class RotationReviewer:
    def __init__(self, image_files, rotate_dir):
        self.image_files = image_files
        self.rotate_dir = rotate_dir
        self.current_index = 0
        self.marked_for_rotation = []
        
        # Create rotate directory if it doesn't exist
        os.makedirs(rotate_dir, exist_ok=True)
        
        # Setup GUI
        self.root = tk.Tk()
        self.root.title("Rotation Reviewer")
        self.root.geometry("1000x800")
        
        # Bind keyboard shortcuts
        self.root.bind('<Key>', self.on_key_press)
        self.root.focus_set()
        
        self.setup_ui()
        self.load_current_image()
    
    def setup_ui(self):
        """Setup the user interface."""
        # Top frame for controls
        control_frame = ttk.Frame(self.root)
        control_frame.pack(fill='x', padx=10, pady=5)
        
        # Progress info
        self.progress_label = ttk.Label(control_frame, text="")
        self.progress_label.pack(side='left')
        
        # Instructions
        instructions = ttk.Label(control_frame, text="R=Rotate, S=Skip, Q=Quit, ←/→=Navigate")
        instructions.pack(side='right')
        
        # Image display frame
        self.image_frame = ttk.Frame(self.root)
        self.image_frame.pack(fill='both', expand=True, padx=10, pady=5)
        
        # Image label
        self.image_label = ttk.Label(self.image_frame)
        self.image_label.pack(expand=True)
        
        # Bottom frame for buttons and info
        bottom_frame = ttk.Frame(self.root)
        bottom_frame.pack(fill='x', padx=10, pady=5)
        
        # Filename label
        self.filename_label = ttk.Label(bottom_frame, text="", foreground='blue')
        self.filename_label.pack()
        
        # Button frame
        button_frame = ttk.Frame(bottom_frame)
        button_frame.pack(pady=5)
        
        ttk.Button(button_frame, text="← Previous (Left Arrow)", command=self.previous_image).pack(side='left', padx=5)
        ttk.Button(button_frame, text="Mark for Rotation (R)", command=self.mark_for_rotation).pack(side='left', padx=5)
        ttk.Button(button_frame, text="Skip (S)", command=self.next_image).pack(side='left', padx=5)
        ttk.Button(button_frame, text="Next → (Right Arrow)", command=self.next_image).pack(side='left', padx=5)
        ttk.Button(button_frame, text="Quit (Q)", command=self.quit_app).pack(side='left', padx=5)
    
    def load_current_image(self):
        """Load and display the current image."""
        if self.current_index >= len(self.image_files):
            self.show_completion()
            return
        
        current_file = self.image_files[self.current_index]
        
        try:
            # Load and resize image for display
            img = Image.open(current_file)
            
            # Calculate display size (fit within 800x600)
            display_width, display_height = 800, 600
            img_width, img_height = img.size
            
            # Calculate scaling
            scale = min(display_width / img_width, display_height / img_height)
            new_width = int(img_width * scale)
            new_height = int(img_height * scale)
            
            img = img.resize((new_width, new_height), Image.Resampling.LANCZOS)
            
            # Convert to PhotoImage
            photo = ImageTk.PhotoImage(img)
            
            # Update display
            self.image_label.configure(image=photo)
            self.image_label.image = photo  # Keep a reference
            
            # Update labels
            self.progress_label.configure(text=f"Image {self.current_index + 1} of {len(self.image_files)}")
            self.filename_label.configure(text=os.path.basename(current_file))
            
            # Update window title
            self.root.title(f"Rotation Reviewer - {os.path.basename(current_file)}")
            
        except Exception as e:
            self.image_label.configure(text=f"Error loading image: {e}")
            self.filename_label.configure(text=f"Error: {current_file}")
    
    def on_key_press(self, event):
        """Handle keyboard shortcuts."""
        key = event.keysym.lower()
        
        if key == 'r':
            self.mark_for_rotation()
        elif key == 's':
            self.next_image()
        elif key == 'q':
            self.quit_app()
        elif key == 'left':
            self.previous_image()
        elif key == 'right':
            self.next_image()
    
    def mark_for_rotation(self):
        """Mark current image for rotation and move to rotate directory."""
        if self.current_index >= len(self.image_files):
            return
        
        current_file = self.image_files[self.current_index]
        filename = os.path.basename(current_file)
        dest_path = os.path.join(self.rotate_dir, filename)
        
        try:
            # Move file to rotate directory
            shutil.move(current_file, dest_path)
            self.marked_for_rotation.append({
                'original_path': current_file,
                'rotate_path': dest_path,
                'index': self.current_index
            })
            
            print(f"Moved to rotate: {filename}")
            self.next_image()
            
        except Exception as e:
            print(f"Error moving file: {e}")
    
    def previous_image(self):
        """Go to previous image."""
        if self.current_index > 0:
            self.current_index -= 1
            self.load_current_image()
    
    def next_image(self):
        """Go to next image."""
        self.current_index += 1
        self.load_current_image()
    
    def show_completion(self):
        """Show completion message."""
        self.image_label.configure(text=f"Review Complete!\n\nMarked {len(self.marked_for_rotation)} images for rotation")
        self.filename_label.configure(text="All images reviewed")
        self.progress_label.configure(text=f"Completed {len(self.image_files)} images")
    
    def quit_app(self):
        """Quit the application."""
        print(f"\nReview session complete:")
        print(f"Images reviewed: {self.current_index}")
        print(f"Marked for rotation: {len(self.marked_for_rotation)}")
        
        if self.marked_for_rotation:
            print(f"Files moved to: {self.rotate_dir}")
            for item in self.marked_for_rotation:
                print(f"  {os.path.basename(item['rotate_path'])}")
        
        self.root.destroy()
    
    def run(self):
        """Start the review process."""
        print(f"Starting rotation review of {len(self.image_files)} images")
        print(f"Rotate directory: {self.rotate_dir}")
        print("\nControls:")
        print("  R = Mark for rotation and move to rotate folder")
        print("  S = Skip (next image)")
        print("  ← → = Navigate between images")
        print("  Q = Quit")
        print()
        
        self.root.mainloop()

def main():
    parser = argparse.ArgumentParser(description='Quick visual review for identifying rotated images')
    parser.add_argument('source_dir', help='Directory containing images to review')
    parser.add_argument('--rotate-dir', default='/photos/staging/scans/rotate',
                        help='Directory to move rotated images to')
    parser.add_argument('--start-from', type=int, default=0,
                        help='Start from this image index (for resuming)')
    parser.add_argument('--extensions', nargs='+', 
                        default=['.jpg', '.jpeg', '.png', '.gif', '.bmp', '.tiff', '.tif'],
                        help='Image file extensions to include')
    
    args = parser.parse_args()
    
    if not os.path.isdir(args.source_dir):
        print(f"Error: Source directory {args.source_dir} not found")
        sys.exit(1)
    
    # Find all image files
    image_files = []
    for root, dirs, files in os.walk(args.source_dir):
        for file in files:
            if Path(file).suffix.lower() in [ext.lower() for ext in args.extensions]:
                image_files.append(os.path.join(root, file))
    
    # Sort files for consistent ordering
    image_files.sort()
    
    if args.start_from > 0:
        image_files = image_files[args.start_from:]
        print(f"Starting from image {args.start_from}")
    
    if not image_files:
        print("No image files found")
        sys.exit(1)
    
    print(f"Found {len(image_files)} images to review")
    
    # Start the reviewer
    reviewer = RotationReviewer(image_files, args.rotate_dir)
    reviewer.run()

if __name__ == '__main__':
    main()