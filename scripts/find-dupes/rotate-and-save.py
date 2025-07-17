#!/usr/bin/env python3
"""
Simple image rotation tool with your exact workflow:
- Shows image
- Spacebar = rotate 90° CW  
- Enter = save rotation and move to next image
- Escape = quit
"""

import os
import sys
import argparse
from pathlib import Path
import json
import subprocess

try:
    from PIL import Image, ImageTk
    import tkinter as tk
    from tkinter import ttk
except ImportError:
    print("Error: Required libraries not installed.")
    print("Please install: pip install Pillow")
    sys.exit(1)

class RotateAndSave:
    def __init__(self, image_files, save_rotations=True, history_file=None):
        self.image_files = image_files
        self.save_rotations = save_rotations
        self.history_file = history_file
        self.current_index = 0
        self.current_rotation = 0  # 0, 90, 180, 270
        self.original_image = None
        self.processed_count = 0
        self.rotated_count = 0
        
        # Track what we've done
        self.rotation_log = []
        self.deleted_count = 0
        
        # Setup GUI
        self.root = tk.Tk()
        self.root.title("Rotate and Save")
        self.root.geometry("1200x900")
        self.root.configure(bg='black')
        
        # Bind keyboard shortcuts
        self.root.bind('<Key>', self.on_key_press)
        self.root.focus_set()
        
        self.setup_ui()
        self.load_current_image()
    
    def setup_ui(self):
        """Setup the user interface."""
        # Top frame for info
        info_frame = tk.Frame(self.root, bg='black')
        info_frame.pack(fill='x', padx=10, pady=5)
        
        # Progress and file info
        self.progress_label = tk.Label(info_frame, text="", fg='white', bg='black', font=('Arial', 12))
        self.progress_label.pack(side='left')
        
        self.rotation_label = tk.Label(info_frame, text="Rotation: 0°", fg='yellow', bg='black', font=('Arial', 12, 'bold'))
        self.rotation_label.pack(side='right')
        
        # Instructions
        instructions = tk.Label(info_frame, text="SPACEBAR=Rotate 90°  ENTER=Save & Next  ←/→=Navigate  DELETE=Delete Image  ESC=Quit", 
                               fg='cyan', bg='black', font=('Arial', 10))
        instructions.pack()
        
        # Image display frame
        self.image_frame = tk.Frame(self.root, bg='black')
        self.image_frame.pack(fill='both', expand=True, padx=10, pady=5)
        
        # Image label
        self.image_label = tk.Label(self.image_frame, bg='black')
        self.image_label.pack(expand=True)
        
        # Bottom frame for filename
        bottom_frame = tk.Frame(self.root, bg='black')
        bottom_frame.pack(fill='x', padx=10, pady=5)
        
        self.filename_label = tk.Label(bottom_frame, text="", fg='lightblue', bg='black', font=('Arial', 11))
        self.filename_label.pack()
        
        # Status
        self.status_label = tk.Label(bottom_frame, text="", fg='lightgreen', bg='black', font=('Arial', 10))
        self.status_label.pack()
    
    def load_current_image(self):
        """Load and display the current image."""
        if self.current_index >= len(self.image_files):
            self.show_completion()
            return
        
        current_file = self.image_files[self.current_index]
        self.current_rotation = 0  # Reset rotation for new image
        
        try:
            # Load original image
            self.original_image = Image.open(current_file)
            
            # Display the image
            self.display_image()
            
            # Update labels
            self.progress_label.configure(text=f"Image {self.current_index + 1} of {len(self.image_files)}")
            self.filename_label.configure(text=os.path.basename(current_file))
            self.status_label.configure(text="Ready - use SPACEBAR to rotate, ENTER to save")
            
            # Update window title
            self.root.title(f"Rotate and Save - {os.path.basename(current_file)}")
            
        except Exception as e:
            self.image_label.configure(text=f"Error loading image: {e}", fg='red')
            self.filename_label.configure(text=f"Error: {current_file}")
    
    def display_image(self):
        """Display the current image with current rotation."""
        if self.original_image is None:
            return
        
        try:
            # Apply rotation
            if self.current_rotation == 90:
                img = self.original_image.rotate(-90, expand=True)
            elif self.current_rotation == 180:
                img = self.original_image.rotate(-180, expand=True)
            elif self.current_rotation == 270:
                img = self.original_image.rotate(-270, expand=True)
            else:
                img = self.original_image
            
            # Resize for display (fit within 1000x700)
            display_width, display_height = 1000, 700
            img_width, img_height = img.size
            
            scale = min(display_width / img_width, display_height / img_height)
            if scale < 1:  # Only downscale
                new_width = int(img_width * scale)
                new_height = int(img_height * scale)
                img = img.resize((new_width, new_height), Image.Resampling.LANCZOS)
            
            # Convert to PhotoImage
            photo = ImageTk.PhotoImage(img)
            
            # Update display
            self.image_label.configure(image=photo, text="")
            self.image_label.image = photo  # Keep reference
            
            # Update rotation label
            self.rotation_label.configure(text=f"Rotation: {self.current_rotation}°")
            
        except Exception as e:
            self.image_label.configure(text=f"Error displaying image: {e}", fg='red')
    
    def rotate_image(self):
        """Rotate the image 90 degrees clockwise."""
        self.current_rotation = (self.current_rotation + 90) % 360
        self.display_image()
        
        if self.current_rotation == 0:
            self.status_label.configure(text="Back to original orientation")
        else:
            self.status_label.configure(text=f"Rotated {self.current_rotation}° from original")
    
    def set_orientation_metadata(self, file_path, rotation_applied):
        """Set EXIF orientation based on rotation applied."""
        try:
            # Map rotation to correct orientation value
            # Since we rotated the pixels, we need the orientation that displays them correctly
            orientation_map = {
                0: 1,    # No rotation = Normal
                90: 1,   # Rotated 90° CW = Normal (pixels are now correct)
                180: 1,  # Rotated 180° = Normal (pixels are now correct) 
                270: 1   # Rotated 270° CW = Normal (pixels are now correct)
            }
            
            orientation = orientation_map.get(rotation_applied, 1)
            
            result = subprocess.run([
                'exiftool', '-overwrite_original', f'-Orientation={orientation}', file_path
            ], capture_output=True, text=True)
            
            if result.returncode != 0:
                print(f"Warning: Failed to set orientation metadata for {os.path.basename(file_path)}: {result.stderr}")
                return False
            return True
        except FileNotFoundError:
            print("Warning: exiftool not found - orientation metadata will not be set")
            return False
        except Exception as e:
            print(f"Warning: Error setting orientation metadata: {e}")
            return False

    def save_and_next(self):
        """Save current rotation and move to next image."""
        if self.current_index >= len(self.image_files):
            return
        
        current_file = self.image_files[self.current_index]
        
        # Log what we did
        log_entry = {
            'file': current_file,
            'original_rotation': 0,
            'final_rotation': self.current_rotation,
            'rotated': self.current_rotation != 0
        }
        self.rotation_log.append(log_entry)
        
        # Save the rotated image if needed
        if self.current_rotation != 0 and self.save_rotations:
            try:
                # Apply the rotation permanently
                if self.current_rotation == 90:
                    rotated_img = self.original_image.rotate(-90, expand=True)
                elif self.current_rotation == 180:
                    rotated_img = self.original_image.rotate(-180, expand=True)
                elif self.current_rotation == 270:
                    rotated_img = self.original_image.rotate(-270, expand=True)
                
                # Save over the original file
                rotated_img.save(current_file)
                
                self.status_label.configure(text=f"✓ Saved rotation: {self.current_rotation}°", fg='lightgreen')
                self.rotated_count += 1
                
            except Exception as e:
                self.status_label.configure(text=f"✗ Error saving: {e}", fg='red')
                return
        else:
            if self.current_rotation == 0:
                self.status_label.configure(text="✓ No rotation needed", fg='lightblue')
        
        # Don't set orientation metadata when rotating - rotated pixels should display correctly as-is
        # if self.current_rotation != 0 and self.save_rotations:
        #     self.set_orientation_metadata(current_file, self.current_rotation)
        
        self.processed_count += 1
        
        # Save to history if enabled
        if self.history_file:
            save_to_history(self.history_file, [current_file])
        
        # Move to next image
        self.current_index += 1
        self.load_current_image()
    
    def next_image(self):
        """Move to next image without saving."""
        if self.current_index < len(self.image_files) - 1:
            self.current_index += 1
            self.load_current_image()
            self.status_label.configure(text="Moved to next image (no save)")
        else:
            self.status_label.configure(text="Already at last image")
    
    def previous_image(self):
        """Move to previous image without saving."""
        if self.current_index > 0:
            self.current_index -= 1
            self.load_current_image()
            self.status_label.configure(text="Moved to previous image")
        else:
            self.status_label.configure(text="Already at first image")
    
    def delete_image(self):
        """Delete the current image file and move to next."""
        if self.current_index >= len(self.image_files):
            return
        
        current_file = self.image_files[self.current_index]
        
        try:
            # Move to trash/delete the file
            os.remove(current_file)
            
            # Log the deletion
            log_entry = {
                'file': current_file,
                'action': 'deleted'
            }
            self.rotation_log.append(log_entry)
            
            # Remove from our list
            self.image_files.pop(self.current_index)
            self.deleted_count += 1
            
            self.status_label.configure(text=f"✗ Deleted: {os.path.basename(current_file)}", fg='red')
            
            # Adjust index if we're at the end
            if self.current_index >= len(self.image_files):
                self.current_index = len(self.image_files) - 1
            
            # Load the next/current image
            if self.image_files:  # Still have images left
                self.load_current_image()
            else:  # No more images
                self.show_completion()
                
        except Exception as e:
            self.status_label.configure(text=f"✗ Error deleting: {e}", fg='red')

    def on_key_press(self, event):
        """Handle keyboard shortcuts."""
        key = event.keysym
        
        if key == 'space':
            self.rotate_image()
        elif key == 'Return':
            self.save_and_next()
        elif key == 'Right':
            self.next_image()
        elif key == 'Left':
            self.previous_image()
        elif key == 'Delete':
            self.delete_image()
        elif key == 'Escape':
            self.quit_app()
    
    def show_completion(self):
        """Show completion message."""
        self.image_label.configure(text=f"🎉 All Done!\n\nProcessed: {self.processed_count} images\nRotated: {self.rotated_count} images\nDeleted: {self.deleted_count} images", 
                                  fg='lightgreen', font=('Arial', 16))
        self.filename_label.configure(text="Review complete!")
        self.status_label.configure(text="Press ESC to quit")
    
    def quit_app(self):
        """Quit the application."""
        print(f"\nRotation session complete:")
        print(f"Images processed: {self.processed_count}")
        print(f"Images rotated: {self.rotated_count}")
        print(f"Images deleted: {self.deleted_count}")
        
        if self.rotation_log:
            rotated_files = [entry for entry in self.rotation_log if entry.get('rotated', False)]
            deleted_files = [entry for entry in self.rotation_log if entry.get('action') == 'deleted']
            
            if rotated_files:
                print(f"\nFiles that were rotated:")
                for entry in rotated_files:
                    print(f"  {os.path.basename(entry['file'])}: {entry['final_rotation']}°")
            
            if deleted_files:
                print(f"\nFiles that were deleted:")
                for entry in deleted_files:
                    print(f"  {os.path.basename(entry['file'])}")
        
        self.root.destroy()
    
    def run(self):
        """Start the rotation process."""
        print(f"Starting rotation review of {len(self.image_files)} images")
        print("\nControls:")
        print("  SPACEBAR = Rotate 90° clockwise")
        print("  ENTER = Save rotation and move to next image")
        print("  ← LEFT ARROW = Previous image (no save)")
        print("  → RIGHT ARROW = Next image (no save)")
        print("  ESC = Quit")
        print()
        
        self.root.mainloop()

def check_batch_orientation(file_paths):
    """Check orientation metadata for multiple files at once - much faster."""
    if not file_paths:
        return set()
    
    try:
        # Use exiftool to check all files at once
        cmd = ['exiftool', '-Orientation', '-s', '-s', '-s', '-q'] + file_paths
        result = subprocess.run(cmd, capture_output=True, text=True)
        
        # Parse output - exiftool outputs filename:value for each file with metadata
        files_with_metadata = set()
        for line in result.stdout.strip().split('\n'):
            if line.strip() and ':' in line:
                # Extract filename from "filename:orientation_value"
                file_part = line.split(':', 1)[0].strip()
                files_with_metadata.add(file_part)
        
        return files_with_metadata
    except:
        return set()

def load_history(history_file):
    """Load processed images history."""
    if not history_file or not os.path.exists(history_file):
        return set()
    
    try:
        with open(history_file, 'r') as f:
            return set(line.strip() for line in f if line.strip())
    except:
        return set()

def save_to_history(history_file, processed_files):
    """Save processed files to history."""
    if not history_file:
        return
    
    try:
        existing = load_history(history_file)
        existing.update(processed_files)
        
        with open(history_file, 'w') as f:
            for file_path in sorted(existing):
                f.write(f"{file_path}\n")
    except Exception as e:
        print(f"Warning: Could not save history: {e}")

def main():
    parser = argparse.ArgumentParser(description='Rotate and save images with simple controls')
    parser.add_argument('source_dir', help='Directory containing images to process')
    parser.add_argument('--no-save', action='store_true', help='Preview only, do not save rotations')
    parser.add_argument('--extensions', nargs='+', 
                        default=['.jpg', '.jpeg', '.png', '.gif', '.bmp', '.tiff', '.tif'],
                        help='Image file extensions to include')
    parser.add_argument('--skip-processed', action='store_true', 
                        help='Skip images that already have orientation metadata')
    parser.add_argument('--history-file', 
                        help='File to track processed images (default: .rotation_history in source dir)')
    
    args = parser.parse_args()
    
    if not os.path.isdir(args.source_dir):
        print(f"Error: Source directory {args.source_dir} not found")
        sys.exit(1)
    
    # Set up history file
    if args.history_file:
        history_file = args.history_file
    else:
        history_file = os.path.join(args.source_dir, '.rotation_history')
    
    # Load processing history
    processed_history = load_history(history_file) if args.skip_processed else set()
    
    # Find all image files first
    all_image_files = []
    
    print("Scanning for image files...")
    
    for root, dirs, files in os.walk(args.source_dir):
        for file in files:
            if Path(file).suffix.lower() in [ext.lower() for ext in args.extensions]:
                file_path = os.path.join(root, file)
                all_image_files.append(file_path)
    
    print(f"Found {len(all_image_files)} total image files")
    
    # Filter out already processed files
    image_files = []
    skipped_count = 0
    
    if args.skip_processed:
        print("Checking for already processed files...")
        
        # Filter by history first (fast)
        candidates = [f for f in all_image_files if f not in processed_history]
        skipped_count = len(all_image_files) - len(candidates)
        
        if candidates:
            # Batch check orientation metadata (much faster than one-by-one)
            files_with_metadata = check_batch_orientation(candidates)
            
            # Filter out files with existing metadata
            for file_path in candidates:
                if file_path in files_with_metadata:
                    skipped_count += 1
                else:
                    image_files.append(file_path)
        else:
            image_files = candidates
    else:
        image_files = all_image_files
    
    # Sort for consistent ordering
    image_files.sort()
    
    if not image_files:
        if skipped_count > 0:
            print(f"No new images to process (skipped {skipped_count} already processed)")
        else:
            print("No image files found")
        sys.exit(1)
    
    print(f"Found {len(image_files)} images to process")
    if skipped_count > 0:
        print(f"Skipped {skipped_count} already processed images")
    
    if args.no_save:
        print("Preview mode - rotations will NOT be saved")
    else:
        print("Rotations will be saved permanently to files")
    
    # Start the tool
    tool = RotateAndSave(image_files, save_rotations=not args.no_save, 
                        history_file=history_file if args.skip_processed else None)
    tool.run()

if __name__ == '__main__':
    main()