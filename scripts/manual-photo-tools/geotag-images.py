#!/usr/bin/env python3
"""
Geolocation tagging tool with database integration:
- Shows image
- Hotkeys 1-9 for preset/recent locations
- Type custom location + Enter to save
- Spacebar = skip, ←/→ = navigate, Escape = quit
"""

import os
import sys
import argparse
import json
from pathlib import Path
import subprocess
from typing import List, Dict, Optional

try:
    from PIL import Image, ImageTk
    import tkinter as tk
    from tkinter import ttk
    import mysql.connector
except ImportError:
    print("Error: Required libraries not installed.")
    print("Please install: pip install Pillow mysql-connector-python")
    sys.exit(1)

class GeotagImages:
    def __init__(self, image_files, db_config=None, history_file=None):
        self.image_files = image_files
        self.db_config = db_config
        self.history_file = history_file
        self.current_index = 0
        self.processed_count = 0
        self.tagged_count = 0
        
        # Location management
        self.recent_locations = []
        self.db_suggestions = []
        self.current_input = ""
        
        # Database connection
        self.db_connection = None
        
        # Load recent locations from file
        self.load_recent_locations()
        
        # Connect to database if configured
        self.connect_database()
        
        # Setup GUI
        self.root = tk.Tk()
        self.root.title("Geotag Images")
        self.root.geometry("1200x900")
        self.root.configure(bg='black')
        
        # Bind keyboard shortcuts
        self.root.bind('<Key>', self.on_key_press)
        self.root.focus_set()
        
        self.setup_ui()
        self.load_current_image()
    
    def connect_database(self):
        """Connect to MySQL database for location suggestions."""
        if not self.db_config:
            print("No database config provided - running without location suggestions")
            return
        
        try:
            self.db_connection = mysql.connector.connect(**self.db_config)
            print("Connected to database for location suggestions")
        except Exception as e:
            print(f"Warning: Could not connect to database: {e}")
            self.db_connection = None
    
    def search_locations(self, query: str) -> List[Dict]:
        """Search database for location suggestions."""
        if not self.db_connection or not query.strip():
            return []
        
        # Preferred zip codes for cities with multiple entries
        preferred_zips = {
            ('Haverhill', 'MA'): '01830'
        }
        
        try:
            cursor = self.db_connection.cursor(dictionary=True)
            
            # Parse query - look for "city, state" pattern
            parts = [p.strip() for p in query.split(',')]
            
            if len(parts) >= 2:
                # Query like "portland, or"
                city_part = parts[0]
                state_part = parts[1]
                
                # Check if we have a preferred zip for this city/state combo
                preferred_zip = None
                for (pref_city, pref_state), zip_code in preferred_zips.items():
                    if (city_part.lower() == pref_city.lower() and 
                        state_part.upper() == pref_state.upper()):
                        preferred_zip = zip_code
                        break
                
                if preferred_zip:
                    # Prioritize the preferred zip code
                    sql = """
                    SELECT city, state_code, postal_code, latitude, longitude 
                    FROM geo_cities 
                    WHERE city LIKE %s AND state_code LIKE %s
                    ORDER BY (postal_code = %s) DESC, postal_code
                    LIMIT 5
                    """
                    cursor.execute(sql, (f'%{city_part}%', f'%{state_part}%', preferred_zip))
                else:
                    sql = """
                    SELECT city, state_code, postal_code, latitude, longitude 
                    FROM geo_cities 
                    WHERE city LIKE %s AND state_code LIKE %s
                    LIMIT 5
                    """
                    cursor.execute(sql, (f'%{city_part}%', f'%{state_part}%'))
            else:
                # Single term - search cities and states
                term = parts[0]
                
                # First try exact state code match
                sql = """
                SELECT city, state_code, postal_code, latitude, longitude 
                FROM geo_cities 
                WHERE state_code = %s
                LIMIT 5
                """
                cursor.execute(sql, (term.upper(),))
                results = cursor.fetchall()
                
                if not results:
                    # Then try city name search with preferred zip logic
                    preferred_zip = None
                    for (pref_city, pref_state), zip_code in preferred_zips.items():
                        if term.lower() == pref_city.lower():
                            preferred_zip = zip_code
                            break
                    
                    if preferred_zip:
                        sql = """
                        SELECT city, state_code, postal_code, latitude, longitude 
                        FROM geo_cities 
                        WHERE city LIKE %s
                        ORDER BY (postal_code = %s) DESC, postal_code
                        LIMIT 5
                        """
                        cursor.execute(sql, (f'%{term}%', preferred_zip))
                    else:
                        sql = """
                        SELECT city, state_code, postal_code, latitude, longitude 
                        FROM geo_cities 
                        WHERE city LIKE %s
                        LIMIT 5
                        """
                        cursor.execute(sql, (f'%{term}%',))
                    
                    results = cursor.fetchall()
                
                return results
            
            return cursor.fetchall()
            
        except Exception as e:
            print(f"Warning: Database search failed: {e}")
            return []
    
    def format_location(self, location_data: Dict) -> str:
        """Format location data into display string."""
        if 'city' in location_data and 'state_code' in location_data:
            return f"{location_data['city']}, {location_data['state_code']}"
        return str(location_data)
    
    def load_recent_locations(self):
        """Load recent locations from file."""
        if not self.history_file or not os.path.exists(self.history_file):
            return
        
        try:
            with open(self.history_file, 'r') as f:
                data = json.load(f)
                self.recent_locations = data.get('recent_locations', [])
        except Exception as e:
            print(f"Warning: Could not load location history: {e}")
    
    def save_recent_locations(self):
        """Save recent locations to file."""
        if not self.history_file:
            return
        
        try:
            data = {'recent_locations': self.recent_locations}
            os.makedirs(os.path.dirname(self.history_file), exist_ok=True)
            with open(self.history_file, 'w') as f:
                json.dump(data, f, indent=2)
        except Exception as e:
            print(f"Warning: Could not save location history: {e}")
    
    def add_to_recent(self, location: str):
        """Add location to recent list (most recent first)."""
        # Remove if already exists
        if location in self.recent_locations:
            self.recent_locations.remove(location)
        
        # Add to front
        self.recent_locations.insert(0, location)
        
        # Keep only last 9 locations
        self.recent_locations = self.recent_locations[:9]
        
        self.save_recent_locations()
    
    def setup_ui(self):
        """Setup the user interface."""
        # Top frame for info and current location
        info_frame = tk.Frame(self.root, bg='black')
        info_frame.pack(fill='x', padx=10, pady=5)
        
        # Progress
        self.progress_label = tk.Label(info_frame, text="", fg='white', bg='black', font=('Arial', 12))
        self.progress_label.pack(side='left')
        
        # Current location display
        self.current_location_label = tk.Label(info_frame, text="Location: None", fg='yellow', bg='black', font=('Arial', 12, 'bold'))
        self.current_location_label.pack(side='right')
        
        # Instructions
        instructions = tk.Label(info_frame, text="1-9=Quick Location  TYPE+ENTER=Custom Location  SPACEBAR=Skip  ←/→=Navigate  ESC=Quit", 
                               fg='cyan', bg='black', font=('Arial', 10))
        instructions.pack()
        
        # Image display frame
        self.image_frame = tk.Frame(self.root, bg='black')
        self.image_frame.pack(fill='both', expand=True, padx=10, pady=5)
        
        # Image label
        self.image_label = tk.Label(self.image_frame, bg='black')
        self.image_label.pack(expand=True)
        
        # Bottom frame for input and suggestions
        bottom_frame = tk.Frame(self.root, bg='black')
        bottom_frame.pack(fill='x', padx=10, pady=5)
        
        # Filename
        self.filename_label = tk.Label(bottom_frame, text="", fg='lightblue', bg='black', font=('Arial', 11))
        self.filename_label.pack()
        
        # Location input
        input_frame = tk.Frame(bottom_frame, bg='black')
        input_frame.pack(fill='x', pady=5)
        
        tk.Label(input_frame, text="Location:", fg='white', bg='black', font=('Arial', 10)).pack(side='left')
        
        self.location_entry = tk.Entry(input_frame, bg='gray20', fg='white', font=('Arial', 11), insertbackground='white')
        self.location_entry.pack(side='left', fill='x', expand=True, padx=(5, 0))
        self.location_entry.bind('<KeyRelease>', self.on_input_change)
        self.location_entry.bind('<Return>', self.on_enter_pressed)
        
        # Suggestions display
        self.suggestions_label = tk.Label(bottom_frame, text="", fg='lightgreen', bg='black', font=('Arial', 10), justify='left')
        self.suggestions_label.pack(fill='x')
        
        # Status
        self.status_label = tk.Label(bottom_frame, text="", fg='lightgreen', bg='black', font=('Arial', 10))
        self.status_label.pack()
        
        self.update_suggestions_display()
    
    def update_suggestions_display(self):
        """Update the suggestions display with recent locations and DB suggestions."""
        suggestions = []
        
        # Recent locations (hotkeys 1-9)
        for i, location in enumerate(self.recent_locations[:9]):
            suggestions.append(f"{i+1}: {location}")
        
        # Fill remaining slots with database suggestions if we have input
        if self.current_input and self.db_suggestions:
            start_num = len(self.recent_locations) + 1
            for i, suggestion in enumerate(self.db_suggestions[:9-len(self.recent_locations)]):
                formatted = self.format_location(suggestion)
                suggestions.append(f"{start_num + i}: {formatted}")
        
        if suggestions:
            self.suggestions_label.configure(text="Quick Select: " + "  ".join(suggestions))
        else:
            self.suggestions_label.configure(text="Recent locations will appear here as you use them")
    
    def on_input_change(self, event):
        """Handle input field changes for real-time suggestions."""
        self.current_input = self.location_entry.get()
        
        # Search database for suggestions
        self.db_suggestions = self.search_locations(self.current_input)
        self.update_suggestions_display()
    
    def on_enter_pressed(self, event):
        """Handle Enter key in input field."""
        location = self.location_entry.get().strip()
        if location:
            self.apply_location(location)
    
    def get_current_location_metadata(self):
        """Get current location from EXIF metadata."""
        if self.current_index >= len(self.image_files):
            return None
        
        current_file = self.image_files[self.current_index]
        
        try:
            result = subprocess.run([
                'exiftool', '-UserComment', '-s', '-s', '-s', current_file
            ], capture_output=True, text=True)
            
            if result.returncode == 0 and result.stdout.strip():
                return result.stdout.strip()
            
        except FileNotFoundError:
            pass
        
        return None
    
    def load_current_image(self):
        """Load and display the current image."""
        if self.current_index >= len(self.image_files):
            self.show_completion()
            return
        
        current_file = self.image_files[self.current_index]
        
        try:
            # Load and display image
            image = Image.open(current_file)
            
            # Resize for display (fit within 1000x600)
            display_width, display_height = 1000, 600
            img_width, img_height = image.size
            
            scale = min(display_width / img_width, display_height / img_height)
            if scale < 1:
                new_width = int(img_width * scale)
                new_height = int(img_height * scale)
                image = image.resize((new_width, new_height), Image.Resampling.LANCZOS)
            
            # Convert to PhotoImage
            photo = ImageTk.PhotoImage(image)
            
            # Update display
            self.image_label.configure(image=photo, text="")
            self.image_label.image = photo
            
            # Update labels
            self.progress_label.configure(text=f"Image {self.current_index + 1} of {len(self.image_files)}")
            self.filename_label.configure(text=os.path.basename(current_file))
            
            # Check for existing location metadata
            current_location = self.get_current_location_metadata()
            if current_location:
                self.current_location_label.configure(text=f"Current: {current_location}")
                self.status_label.configure(text="Image has location metadata")
            else:
                self.current_location_label.configure(text="Location: None")
                self.status_label.configure(text="No location metadata - add one!")
            
            # Clear input field
            self.location_entry.delete(0, tk.END)
            self.current_input = ""
            self.db_suggestions = []
            self.update_suggestions_display()
            
            # Update window title
            self.root.title(f"Geotag Images - {os.path.basename(current_file)}")
            
        except Exception as e:
            self.image_label.configure(text=f"Error loading image: {e}", fg='red')
            self.filename_label.configure(text=f"Error: {current_file}")
    
    def apply_location(self, location: str):
        """Apply location to current image and move to next."""
        if self.current_index >= len(self.image_files):
            return
        
        current_file = self.image_files[self.current_index]
        
        try:
            # Write location to EXIF UserComment field
            result = subprocess.run([
                'exiftool', '-overwrite_original', f'-UserComment={location}', current_file
            ], capture_output=True, text=True)
            
            if result.returncode == 0:
                self.status_label.configure(text=f"✓ Tagged with: {location}", fg='lightgreen')
                self.tagged_count += 1
                
                # Add to recent locations
                self.add_to_recent(location)
                
            else:
                self.status_label.configure(text=f"✗ Error tagging: {result.stderr}", fg='red')
                return
                
        except FileNotFoundError:
            self.status_label.configure(text="✗ Error: exiftool not found", fg='red')
            return
        except Exception as e:
            self.status_label.configure(text=f"✗ Error: {e}", fg='red')
            return
        
        self.processed_count += 1
        
        # Move to next image
        self.current_index += 1
        self.load_current_image()
    
    def next_image(self):
        """Move to next image without tagging."""
        if self.current_index < len(self.image_files) - 1:
            self.current_index += 1
            self.load_current_image()
            self.status_label.configure(text="Moved to next image (no tag)")
    
    def previous_image(self):
        """Move to previous image."""
        if self.current_index > 0:
            self.current_index -= 1
            self.load_current_image()
            self.status_label.configure(text="Moved to previous image")
    
    def skip_image(self):
        """Skip current image without tagging."""
        self.processed_count += 1
        self.current_index += 1
        self.load_current_image()
        self.status_label.configure(text="Skipped image")
    
    def on_key_press(self, event):
        """Handle keyboard shortcuts."""
        key = event.keysym
        
        # Number keys for quick location selection
        if key.isdigit() and key != '0':
            num = int(key) - 1
            
            # Check recent locations first
            if num < len(self.recent_locations):
                self.apply_location(self.recent_locations[num])
                return
            
            # Then check database suggestions
            db_index = num - len(self.recent_locations)
            if 0 <= db_index < len(self.db_suggestions):
                location = self.format_location(self.db_suggestions[db_index])
                self.apply_location(location)
                return
        
        elif key == 'space':
            self.skip_image()
        elif key == 'Right':
            self.next_image()
        elif key == 'Left':
            self.previous_image()
        elif key == 'Escape':
            self.quit_app()
    
    def show_completion(self):
        """Show completion message."""
        self.image_label.configure(text=f"🎉 All Done!\n\nProcessed: {self.processed_count} images\nTagged: {self.tagged_count} images", 
                                  fg='lightgreen', font=('Arial', 16))
        self.filename_label.configure(text="Geotagging complete!")
        self.status_label.configure(text="Press ESC to quit")
    
    def quit_app(self):
        """Quit the application."""
        print(f"\nGeotagging session complete:")
        print(f"Images processed: {self.processed_count}")
        print(f"Images tagged: {self.tagged_count}")
        
        if self.db_connection:
            self.db_connection.close()
        
        self.root.destroy()
    
    def run(self):
        """Start the geotagging process."""
        print(f"Starting geolocation tagging of {len(self.image_files)} images")
        print("\nControls:")
        print("  1-9 = Apply preset/recent location")
        print("  TYPE + ENTER = Apply custom location")
        print("  SPACEBAR = Skip image")
        print("  ← LEFT ARROW = Previous image")
        print("  → RIGHT ARROW = Next image") 
        print("  ESC = Quit")
        print()
        
        self.root.mainloop()

def main():
    parser = argparse.ArgumentParser(description='Add geolocation tags to images')
    parser.add_argument('source_dir', help='Directory containing images to process')
    parser.add_argument('--extensions', nargs='+', 
                        default=['.jpg', '.jpeg', '.png', '.gif', '.bmp', '.tiff', '.tif'],
                        help='Image file extensions to include')
    parser.add_argument('--db-host', default='127.0.0.1', help='MySQL host')
    parser.add_argument('--db-port', type=int, default=3309, help='MySQL port')
    parser.add_argument('--db-user', default='kin', help='MySQL user')
    parser.add_argument('--db-password', default='Dalekini21!', help='MySQL password')
    parser.add_argument('--db-database', default='kin', help='MySQL database')
    parser.add_argument('--no-db', action='store_true', help='Run without database integration')
    parser.add_argument('--history-file', 
                        help='File to store location history (default: .geotag_history.json in source dir)')
    
    args = parser.parse_args()
    
    if not os.path.isdir(args.source_dir):
        print(f"Error: Source directory {args.source_dir} not found")
        sys.exit(1)
    
    # Find image files
    image_files = []
    for root, dirs, files in os.walk(args.source_dir):
        for file in files:
            if Path(file).suffix.lower() in [ext.lower() for ext in args.extensions]:
                file_path = os.path.join(root, file)
                image_files.append(file_path)
    
    image_files.sort()
    
    if not image_files:
        print("No image files found")
        sys.exit(1)
    
    print(f"Found {len(image_files)} images to process")
    
    # Setup database config
    db_config = None
    if not args.no_db:
        db_config = {
            'host': args.db_host,
            'port': args.db_port,
            'user': args.db_user,
            'password': args.db_password,
            'database': args.db_database
        }
    
    # Setup history file
    if args.history_file:
        history_file = args.history_file
    else:
        history_file = os.path.join(args.source_dir, '.geotag_history.json')
    
    # Start the tool
    tool = GeotagImages(image_files, db_config=db_config, history_file=history_file)
    tool.run()

if __name__ == '__main__':
    main()