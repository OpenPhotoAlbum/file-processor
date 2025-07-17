#!/usr/bin/env python3
"""
GPS-focused geolocation tagging tool:
- Default shortcut mode: Single letter keys for instant GPS tagging
- Cmd+Space: Enter text input mode for new locations
- Writes GPS coordinates to proper EXIF fields
- JSON config for easy shortcut management
"""

import os
import sys
import argparse
import json
from pathlib import Path
import subprocess
from typing import List, Dict, Optional, Tuple
from datetime import datetime

try:
    from PIL import Image, ImageTk
    import tkinter as tk
    from tkinter import ttk
    import mysql.connector
except ImportError:
    print("Error: Required libraries not installed.")
    print("Please install: pip install Pillow mysql-connector-python")
    sys.exit(1)

class GeotagGPS:
    def __init__(self, image_files, config_file=None, db_config=None, history_file=None):
        self.image_files = image_files
        self.config_file = config_file or 'geotag-shortcuts.json'
        self.db_config = db_config
        self.history_file = history_file
        self.current_index = 0
        self.processed_count = 0
        self.tagged_count = 0
        
        # UI state
        self.text_input_mode = False
        self.text_input_results = []
        
        # Configuration
        self.shortcuts = {}
        self.text_aliases = {}
        self.recent_coordinates = []
        self.settings = {}
        
        # Database connection
        self.db_connection = None
        self.db_suggestions = []
        
        # Load configuration
        self.load_config()
        
        # Connect to database if configured
        self.connect_database()
        
        # Setup GUI
        self.root = tk.Tk()
        self.root.title("GPS Geotag Images")
        self.root.configure(bg='black')
        
        # Set window to 1/3 of screen size
        try:
            width = self.root.winfo_screenwidth()
            height = self.root.winfo_screenheight()
            # Use 1/3 of screen width, full height
            window_width = width // 3
            window_height = height
            self.root.geometry(f"{window_width}x{window_height}+0+0")
        except:
            # Fallback geometry if screen detection fails
            self.root.geometry("640x900")
        
        # Bind keyboard shortcuts and window events
        self.root.bind('<Key>', self.on_key_press)
        self.root.bind('<Configure>', self.on_window_resize)
        self.root.focus_set()
        
        # Track the last resize to avoid excessive updates
        self.last_resize_time = 0
        
        self.setup_ui()
        self.load_current_image()
    
    def load_config(self):
        """Load shortcuts and settings from JSON config file."""
        if not os.path.exists(self.config_file):
            print(f"Config file {self.config_file} not found - using defaults")
            return
        
        try:
            with open(self.config_file, 'r') as f:
                config = json.load(f)
            
            self.shortcuts = config.get('shortcuts', {})
            self.text_aliases = config.get('text_aliases', {})
            self.recent_coordinates = config.get('recent_coordinates', [])
            self.settings = config.get('settings', {'max_recent': 5})
            
            print(f"Loaded {len(self.shortcuts)} shortcuts from config")
            
        except Exception as e:
            print(f"Warning: Could not load config file: {e}")
    
    def save_config(self):
        """Save current configuration to JSON file."""
        try:
            config = {
                'shortcuts': self.shortcuts,
                'text_aliases': self.text_aliases,
                'recent_coordinates': self.recent_coordinates,
                'settings': self.settings
            }
            
            with open(self.config_file, 'w') as f:
                json.dump(config, f, indent=2)
                
        except Exception as e:
            print(f"Warning: Could not save config: {e}")
    
    def connect_database(self):
        """Connect to MySQL database for location suggestions."""
        if not self.db_config:
            return
        
        try:
            self.db_connection = mysql.connector.connect(**self.db_config)
            print("Connected to database for location suggestions")
        except Exception as e:
            print(f"Warning: Could not connect to database: {e}")
            self.db_connection = None
    
    def search_database_coordinates(self, query: str) -> List[Tuple[str, float, float]]:
        """Search database for coordinates matching query."""
        if not self.db_connection or not query.strip():
            return []
        
        try:
            cursor = self.db_connection.cursor()
            results = []
            
            # Parse query - look for "city, state" pattern
            parts = [p.strip() for p in query.split(',')]
            
            if len(parts) >= 2:
                city_part = parts[0]
                state_part = parts[1]
                
                # Search cities first for "city, state" queries
                sql = """
                SELECT city, state_code, latitude, longitude 
                FROM geo_cities 
                WHERE city LIKE %s AND state_code LIKE %s
                LIMIT 3
                """
                cursor.execute(sql, (f'%{city_part}%', f'%{state_part}%'))
                
                for row in cursor.fetchall():
                    city, state_code, lat, lng = row
                    name = f"{city}, {state_code}"
                    results.append((name, float(lat), float(lng)))
                
                # Also search geographic features in that state
                if not results:
                    sql = """
                    SELECT feature_name, feature_class, state_code, latitude, longitude 
                    FROM geo_geographic_features 
                    WHERE feature_name LIKE %s AND state_code LIKE %s
                    LIMIT 3
                    """
                    cursor.execute(sql, (f'%{city_part}%', f'%{state_part}%'))
                    
                    for row in cursor.fetchall():
                        feature_name, feature_class, state_code, lat, lng = row
                        name = f"{feature_name} ({feature_class}), {state_code}"
                        results.append((name, float(lat), float(lng)))
            else:
                # Single term - search both cities and geographic features
                term = parts[0]
                
                # Search cities first
                sql = """
                SELECT city, state_code, latitude, longitude 
                FROM geo_cities 
                WHERE city LIKE %s
                LIMIT 2
                """
                cursor.execute(sql, (f'%{term}%',))
                
                for row in cursor.fetchall():
                    city, state_code, lat, lng = row
                    name = f"{city}, {state_code}"
                    results.append((name, float(lat), float(lng)))
                
                # Search geographic features
                sql = """
                SELECT feature_name, feature_class, state_code, latitude, longitude 
                FROM geo_geographic_features 
                WHERE feature_name LIKE %s
                LIMIT 3
                """
                cursor.execute(sql, (f'%{term}%',))
                
                for row in cursor.fetchall():
                    feature_name, feature_class, state_code, lat, lng = row
                    name = f"{feature_name} ({feature_class}), {state_code}"
                    results.append((name, float(lat), float(lng)))
            
            # Limit total results
            return results[:5]
            
        except Exception as e:
            print(f"Warning: Database search failed: {e}")
            return []
    
    def add_to_recent(self, name: str, coordinates: List[float]):
        """Add coordinates to recent list."""
        # Remove if already exists
        self.recent_coordinates = [r for r in self.recent_coordinates 
                                 if r['coordinates'] != coordinates]
        
        # Add to front
        recent_entry = {
            'name': name,
            'coordinates': coordinates,
            'timestamp': datetime.now().isoformat()
        }
        self.recent_coordinates.insert(0, recent_entry)
        
        # Keep only max_recent items
        max_recent = self.settings.get('max_recent', 5)
        self.recent_coordinates = self.recent_coordinates[:max_recent]
        
        self.save_config()
    
    def coordinates_to_location_name(self, lat: float, lng: float) -> str:
        """Convert coordinates back to a friendly location name if it matches a known location."""
        # Check shortcuts first
        for key, shortcut in self.shortcuts.items():
            shortcut_lat, shortcut_lng = shortcut['coordinates']
            # Allow small tolerance for floating point differences
            if (abs(lat - shortcut_lat) < 0.0001 and abs(lng - shortcut_lng) < 0.0001):
                return f"{shortcut['name']} [{key}]"
        
        # Check recent locations
        for recent in self.recent_coordinates:
            recent_lat, recent_lng = recent['coordinates']
            if (abs(lat - recent_lat) < 0.0001 and abs(lng - recent_lng) < 0.0001):
                return recent['name']
        
        # Check text aliases
        for alias, coords in self.text_aliases.items():
            alias_lat, alias_lng = coords
            if (abs(lat - alias_lat) < 0.0001 and abs(lng - alias_lng) < 0.0001):
                return alias
        
        # No match found, return coordinates
        return f"{lat:.6f}, {lng:.6f}"
    
    def parse_dms_coordinate(self, dms_str: str) -> float:
        """Parse DMS coordinate string like '42 deg 46' 34.32' N' to decimal degrees."""
        try:
            # Remove direction (N/S/E/W) and clean up
            parts = dms_str.replace("'", "").replace('"', '').split()
            
            # Extract degrees, minutes, seconds
            degrees = float(parts[0])
            minutes = float(parts[2]) if len(parts) > 2 else 0
            seconds = float(parts[3]) if len(parts) > 3 else 0
            
            # Convert to decimal degrees
            decimal = degrees + minutes/60 + seconds/3600
            
            # Apply negative for South/West
            if dms_str.upper().endswith((' S', ' W')):
                decimal = -decimal
                
            return decimal
        except:
            return None
    
    def get_current_gps_coordinates(self):
        """Get current GPS coordinates from EXIF metadata."""
        if self.current_index >= len(self.image_files):
            return None
        
        current_file = self.image_files[self.current_index]
        
        try:
            result = subprocess.run([
                'exiftool', '-GPSLatitude', '-GPSLongitude', '-s', '-s', '-s', current_file
            ], capture_output=True, text=True)
            
            if result.returncode == 0:
                lines = result.stdout.strip().split('\n')
                if len(lines) >= 2:
                    lat_str = lines[0].strip()
                    lng_str = lines[1].strip()
                    
                    if lat_str and lng_str:
                        # Parse coordinate strings (handle various formats)
                        try:
                            # Try parsing as decimal degrees first
                            lat = float(lat_str)
                            lng = float(lng_str)
                            return (lat, lng)
                        except ValueError:
                            try:
                                # Handle DMS format: "42 deg 46' 34.32" N"
                                lat = self.parse_dms_coordinate(lat_str)
                                lng = self.parse_dms_coordinate(lng_str)
                                if lat is not None and lng is not None:
                                    return (lat, lng)
                            except:
                                pass
            
        except FileNotFoundError:
            pass
        
        return None
    
    def write_gps_coordinates(self, latitude: float, longitude: float):
        """Write GPS coordinates to EXIF metadata."""
        if self.current_index >= len(self.image_files):
            return False
        
        current_file = self.image_files[self.current_index]
        
        try:
            # Determine GPS reference (N/S, E/W)
            lat_ref = 'N' if latitude >= 0 else 'S'
            lng_ref = 'E' if longitude >= 0 else 'W'
            
            # Use absolute values for coordinates
            lat_abs = abs(latitude)
            lng_abs = abs(longitude)
            
            result = subprocess.run([
                'exiftool', '-overwrite_original',
                f'-GPSLatitude={lat_abs}',
                f'-GPSLatitudeRef={lat_ref}',
                f'-GPSLongitude={lng_abs}',
                f'-GPSLongitudeRef={lng_ref}',
                current_file
            ], capture_output=True, text=True)
            
            if result.returncode == 0:
                return True
            else:
                print(f"exiftool error: {result.stderr}")
                return False
                
        except FileNotFoundError:
            print("Error: exiftool not found")
            return False
        except Exception as e:
            print(f"Error writing GPS coordinates: {e}")
            return False
    
    def setup_ui(self):
        """Setup the user interface."""
        # Top frame for info and current location
        info_frame = tk.Frame(self.root, bg='black')
        info_frame.pack(fill='x', padx=10, pady=5)
        
        # Progress
        self.progress_label = tk.Label(info_frame, text="", fg='white', bg='black', font=('Arial', 12))
        self.progress_label.pack(side='left')
        
        # Current GPS coordinates display
        self.current_gps_label = tk.Label(info_frame, text="GPS: None", fg='yellow', bg='black', font=('Arial', 12, 'bold'))
        self.current_gps_label.pack(side='right')
        
        # Mode indicator
        self.mode_label = tk.Label(info_frame, text="SHORTCUT MODE", fg='cyan', bg='black', font=('Arial', 10, 'bold'))
        self.mode_label.pack()
        
        # Main content frame with image and shortcuts side by side
        content_frame = tk.Frame(self.root, bg='black')
        content_frame.pack(fill='both', expand=True, padx=10, pady=5)
        
        # Image display frame (left side)
        self.image_frame = tk.Frame(content_frame, bg='black')
        self.image_frame.pack(side='left', fill='both', expand=True)
        
        # Parsed filename display
        self.parsed_filename_label = tk.Label(self.image_frame, text="", fg='white', bg='black', font=('Arial', 14, 'bold'))
        self.parsed_filename_label.pack(pady=(0, 10))
        
        # Image label
        self.image_label = tk.Label(self.image_frame, bg='black')
        self.image_label.pack(expand=True)
        
        # Shortcuts panel (right side)
        shortcuts_frame = tk.Frame(content_frame, bg='black', width=300)
        shortcuts_frame.pack(side='right', fill='y', padx=(10, 0))
        shortcuts_frame.pack_propagate(False)  # Don't shrink
        
        # Shortcuts title
        shortcuts_title = tk.Label(shortcuts_frame, text="SHORTCUTS", fg='cyan', bg='black', font=('Arial', 12, 'bold'))
        shortcuts_title.pack(anchor='w', pady=(0, 10))
        
        # Shortcuts display
        self.shortcuts_label = tk.Label(shortcuts_frame, text="", fg='lightgreen', bg='black', font=('Arial', 10), justify='left', anchor='nw')
        self.shortcuts_label.pack(anchor='nw', fill='both', expand=True)
        
        # Add separator line
        separator = tk.Frame(shortcuts_frame, height=2, bg='gray40')
        separator.pack(fill='x', pady=10)
        
        # Filename display in right panel
        tk.Label(shortcuts_frame, text="CURRENT FILE:", fg='cyan', bg='black', font=('Arial', 10, 'bold')).pack(anchor='w')
        self.filename_label = tk.Label(shortcuts_frame, text="", fg='lightblue', bg='black', font=('Arial', 9), wraplength=280, justify='left', anchor='w')
        self.filename_label.pack(anchor='w', fill='x', pady=(0, 10))
        
        # Text input frame in right panel (hidden by default)
        self.input_frame = tk.Frame(shortcuts_frame, bg='black')
        
        tk.Label(self.input_frame, text="Location:", fg='white', bg='black', font=('Arial', 10)).pack(anchor='w')
        
        self.location_entry = tk.Entry(self.input_frame, bg='gray20', fg='white', font=('Arial', 11), insertbackground='white')
        self.location_entry.pack(fill='x', pady=(5, 10))
        self.location_entry.bind('<Return>', self.on_text_input_enter)
        self.location_entry.bind('<Escape>', self.exit_text_input_mode)
        
        # Status in right panel
        self.status_label = tk.Label(shortcuts_frame, text="", fg='lightgreen', bg='black', font=('Arial', 10), wraplength=280, justify='left', anchor='w')
        self.status_label.pack(anchor='w', fill='x')
        
        self.update_shortcuts_display()
    
    def update_shortcuts_display(self):
        """Update the shortcuts display."""
        if self.text_input_mode:
            if self.text_input_results:
                # Show numbered search results
                result_lines = ["SEARCH RESULTS:", ""]
                for i, (name, lat, lng) in enumerate(self.text_input_results[:5]):
                    result_lines.append(f"{i+1}: {name}")
                result_lines.extend(["", "Press 1-5 to select", "Enter for first result", "Escape to cancel"])
                self.shortcuts_label.configure(text="\n".join(result_lines))
            else:
                self.shortcuts_label.configure(text="TEXT INPUT MODE\n\nType location name\nPress Enter to search\nPress Escape to cancel")
            return
        
        # Show available shortcuts - one per line
        shortcut_lines = []
        
        # Add all shortcuts, one per line
        for key, info in sorted(self.shortcuts.items()):
            shortcut_lines.append(f"{key}: {info['name']}")
        
        # Add recent locations if any
        if self.recent_coordinates:
            shortcut_lines.append("")  # Empty line
            shortcut_lines.append("RECENT:")
            for i, recent in enumerate(self.recent_coordinates[:5]):
                shortcut_lines.append(f"{i+1}: {recent['name']}")
        
        # Add controls
        shortcut_lines.extend([
            "",
            "CONTROLS:",
            "T: Text Input",
            "Numpad Enter: Skip",
            "←/→: Navigate",
            "Esc: Quit"
        ])
        
        shortcuts_text = "\n".join(shortcut_lines)
        self.shortcuts_label.configure(text=shortcuts_text)
    
    def parse_filename_for_display(self, filename: str) -> str:
        """Parse filename to extract meaningful name by removing date/timestamp prefix and extension."""
        import re
        
        # Remove extension
        name = os.path.splitext(filename)[0]
        
        # Pattern to match YYYY-MM-DD-{TIMESTAMP}- at the beginning
        # This matches: 4 digits - 2 digits - 2 digits - many digits -
        pattern = r'^(\d{4}-\d{2}-\d{2}-\d+-)'
        
        # Remove the matched pattern from the beginning
        cleaned_name = re.sub(pattern, '', name)
        
        # Remove -### suffix at the end (like -000, -001, etc.)
        # This matches: - followed by digits at the end of string
        suffix_pattern = r'-\d+$'
        cleaned_name = re.sub(suffix_pattern, '', cleaned_name)
        
        # If nothing was removed (no pattern match), return the original name without extension
        if cleaned_name == name:
            return name
        
        return cleaned_name
    
    def on_window_resize(self, event):
        """Handle window resize events to update image display."""
        # Only respond to resize events on the main window
        if event.widget == self.root:
            import time
            current_time = time.time()
            # Throttle resize updates to avoid excessive processing
            if current_time - self.last_resize_time > 0.5:  # 500ms delay
                self.last_resize_time = current_time
                self.root.after(100, self.reload_current_image_display)
    
    def reload_current_image_display(self):
        """Reload the current image with new window dimensions."""
        if hasattr(self, 'current_index') and self.current_index < len(self.image_files):
            # Just reload the display part without changing the current index
            self.load_current_image()
    
    def enter_text_input_mode(self):
        """Enter text input mode."""
        self.text_input_mode = True
        self.text_input_results = []
        self.mode_label.configure(text="TEXT INPUT MODE", fg='yellow')
        self.input_frame.pack(fill='x', pady=(0, 10))
        self.location_entry.focus_set()
        self.location_entry.delete(0, tk.END)
        self.location_entry.bind('<KeyRelease>', self.on_text_input_change)
        self.update_shortcuts_display()
    
    def exit_text_input_mode(self, event=None):
        """Exit text input mode."""
        self.text_input_mode = False
        self.text_input_results = []
        self.mode_label.configure(text="SHORTCUT MODE", fg='cyan')
        self.input_frame.pack_forget()
        self.root.focus_set()
        self.update_shortcuts_display()
    
    def on_text_input_change(self, event):
        """Handle real-time text input changes to show search results."""
        query = self.location_entry.get().strip()
        
        if len(query) >= 2:  # Start searching after 2 characters
            # Check text aliases first
            if query.lower() in self.text_aliases:
                coordinates = self.text_aliases[query.lower()]
                self.text_input_results = [(query, coordinates[0], coordinates[1])]
            else:
                # Search database
                self.text_input_results = self.search_database_coordinates(query)
        else:
            self.text_input_results = []
        
        self.update_shortcuts_display()
    
    def on_text_input_enter(self, event):
        """Handle Enter key in text input mode."""
        if self.text_input_results:
            # Use first result
            name, lat, lng = self.text_input_results[0]
            self.apply_coordinates(name, [lat, lng])
        else:
            query = self.location_entry.get().strip()
            if query:
                self.status_label.configure(text=f"No coordinates found for '{query}'", fg='red')
            self.exit_text_input_mode()
    
    def apply_coordinates(self, name: str, coordinates: List[float]):
        """Apply GPS coordinates to current image."""
        if self.current_index >= len(self.image_files):
            return
        
        lat, lng = coordinates
        
        if self.write_gps_coordinates(lat, lng):
            self.status_label.configure(text=f"✓ Tagged with GPS: {name} ({lat:.6f}, {lng:.6f})", fg='lightgreen')
            self.tagged_count += 1
            
            # Add to recent locations
            self.add_to_recent(name, coordinates)
            
            # Exit text input mode if active
            if self.text_input_mode:
                self.exit_text_input_mode()
            
            # Save to processing history
            if self.history_file:
                save_to_processing_history(self.history_file, [self.image_files[self.current_index]])
            
            self.processed_count += 1
            
            # Move to next image
            self.current_index += 1
            self.load_current_image()
        else:
            self.status_label.configure(text=f"✗ Error writing GPS coordinates", fg='red')
    
    def load_current_image(self):
        """Load and display the current image."""
        if self.current_index >= len(self.image_files):
            self.show_completion()
            return
        
        current_file = self.image_files[self.current_index]
        
        try:
            # Load and display image
            image = Image.open(current_file)
            
            # Calculate available space for image display
            self.root.update_idletasks()  # Ensure geometry is updated
            
            # Get the actual size of the image frame
            image_frame_width = self.image_frame.winfo_width()
            image_frame_height = self.image_frame.winfo_height()
            
            # Use frame dimensions with some padding, minimum reasonable size
            display_width = max(image_frame_width - 20, 800)
            display_height = max(image_frame_height - 20, 500)
            
            img_width, img_height = image.size
            
            # For landscape images, limit width more to ensure side panel is visible
            if img_width > img_height:  # Landscape orientation
                display_width = min(display_width, int(display_width * 0.7))  # Use only 70% of available width
            
            # Scale to fit within available space
            scale = min(display_width / img_width, display_height / img_height)
            if scale < 1 or scale > 1:  # Scale both up and down
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
            
            # Update filename displays
            filename = os.path.basename(current_file)
            self.filename_label.configure(text=filename)
            
            # Update parsed filename display
            parsed_name = self.parse_filename_for_display(filename)
            self.parsed_filename_label.configure(text=parsed_name)
            
            # Check for existing GPS coordinates
            current_gps = self.get_current_gps_coordinates()
            if current_gps:
                lat, lng = current_gps
                location_display = self.coordinates_to_location_name(lat, lng)
                # Debug: print actual coordinates vs stored
                print(f"Debug: Read coordinates: {lat}, {lng}")
                self.current_gps_label.configure(text=f"GPS: {location_display}")
                self.status_label.configure(text="Image has GPS coordinates")
            else:
                self.current_gps_label.configure(text="GPS: None")
                self.status_label.configure(text="No GPS coordinates - add location!")
            
            # Update window title
            self.root.title(f"GPS Geotag - {os.path.basename(current_file)}")
            
            # Update shortcuts display
            self.update_shortcuts_display()
            
        except Exception as e:
            self.image_label.configure(text=f"Error loading image: {e}", fg='red')
            self.filename_label.configure(text=f"Error: {current_file}")
    
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
        if self.current_index < len(self.image_files):
            current_file = self.image_files[self.current_index]
            
            # Save to processing history even when skipped
            if self.history_file:
                save_to_processing_history(self.history_file, [current_file])
        
        self.processed_count += 1
        self.current_index += 1
        self.load_current_image()
        self.status_label.configure(text="Skipped image")
    
    def on_key_press(self, event):
        """Handle keyboard shortcuts."""
        if self.text_input_mode:
            # In text input mode, handle number keys for result selection
            key = event.keysym
            
            if key.isdigit() and key != '0':
                num = int(key) - 1
                if 0 <= num < len(self.text_input_results):
                    name, lat, lng = self.text_input_results[num]
                    self.apply_coordinates(name, [lat, lng])
                    return
            
            # Otherwise let normal text input handling continue
            return
        
        key = event.keysym
        char = event.char.lower()
        
        # Check for Cmd+Space or Ctrl+Space (text input mode)
        if ((event.state & 0x8) or (event.state & 0x4)) and key == 'space':  # Cmd or Ctrl key pressed
            self.enter_text_input_mode()
            return
        
        # Fallback: use 't' key for text input mode
        if key == 't':
            self.enter_text_input_mode()
            return
        
        # Number keys for main shortcuts (1-9)
        if key.isdigit() and key != '0':
            if key in self.shortcuts:
                shortcut = self.shortcuts[key]
                self.apply_coordinates(shortcut['name'], shortcut['coordinates'])
                return
        
        # Letter shortcuts for additional locations
        if char in self.shortcuts:
            shortcut = self.shortcuts[char]
            self.apply_coordinates(shortcut['name'], shortcut['coordinates'])
            return
        
        # Navigation keys
        if key == 'KP_Enter':  # Numpad Enter
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
        self.filename_label.configure(text="GPS tagging complete!")
        self.status_label.configure(text="Press ESC to quit")
        self.shortcuts_label.configure(text="")
    
    def quit_app(self):
        """Quit the application."""
        print(f"\nGPS tagging session complete:")
        print(f"Images processed: {self.processed_count}")
        print(f"Images tagged: {self.tagged_count}")
        
        if self.db_connection:
            self.db_connection.close()
        
        self.root.destroy()
    
    def run(self):
        """Start the GPS tagging process."""
        print(f"Starting GPS geolocation tagging of {len(self.image_files)} images")
        print(f"Loaded {len(self.shortcuts)} shortcuts")
        print("\nShortcut Mode (default):")
        for key, shortcut in self.shortcuts.items():
            print(f"  {key} = {shortcut['name']}")
        print("\nControls:")
        print("  1-9 = Main location shortcuts (numpad friendly)")
        print("  p,b,c = Additional location shortcuts")
        print("  T = Enter text input mode (or try Cmd+Space)")
        print("  Numpad Enter = Skip image")
        print("  ← → = Navigate")
        print("  Esc = Quit")
        print()
        
        self.root.mainloop()

def check_image_has_gps(file_path: str) -> bool:
    """Check if an image already has GPS coordinates in EXIF."""
    try:
        result = subprocess.run([
            'exiftool', '-GPSLatitude', '-GPSLongitude', '-s', '-s', '-s', file_path
        ], capture_output=True, text=True)
        
        if result.returncode == 0:
            lines = result.stdout.strip().split('\n')
            # Check if we have both latitude and longitude with actual values
            if len(lines) >= 2:
                lat_line = lines[0].strip()
                lng_line = lines[1].strip()
                
                # Both lines should have content (not empty)
                if lat_line and lng_line:
                    return True
        
        return False
        
    except (FileNotFoundError, Exception):
        # If exiftool fails, assume no GPS data
        return False

def check_batch_gps_coordinates(file_paths: List[str]) -> set:
    """Check GPS coordinates for multiple files at once - much faster."""
    if not file_paths:
        return set()
    
    try:
        # Use exiftool to check all files at once
        cmd = ['exiftool', '-GPSLatitude', '-GPSLongitude', '-s', '-s', '-s'] + file_paths
        result = subprocess.run(cmd, capture_output=True, text=True)
        
        # Parse output - files with GPS show coordinates, files without show just filename
        files_with_gps = set()
        all_files_set = set(file_paths)
        
        lines = result.stdout.strip().split('\n')
        current_file = None
        has_coordinates = False
        
        for line in lines:
            line = line.strip()
            if line.startswith('======== '):
                # Save previous file if it had coordinates
                if current_file and has_coordinates:
                    files_with_gps.add(current_file)
                
                # New file
                current_file = line[9:]  # Remove "======== " prefix
                has_coordinates = False
            elif line and current_file and not line.startswith('========'):
                # This is coordinate data for the current file
                has_coordinates = True
        
        # Check the last file
        if current_file and has_coordinates:
            files_with_gps.add(current_file)
        
        # Files that appear in the output with ======== but no coordinates are files WITHOUT GPS
        # Files that don't appear at all in the output likely have GPS coordinates
        files_in_output = set()
        for line in lines:
            if line.startswith('======== '):
                files_in_output.add(line[9:])
        
        # Files not in output likely have GPS coordinates
        files_not_in_output = all_files_set - files_in_output
        files_with_gps.update(files_not_in_output)
        
        return files_with_gps
    except Exception as e:
        print(f"Batch GPS check failed: {e}")
        return set()

def load_processing_history(history_file: str) -> set:
    """Load processed images history."""
    if not history_file or not os.path.exists(history_file):
        return set()
    
    try:
        with open(history_file, 'r') as f:
            return set(line.strip() for line in f if line.strip())
    except:
        return set()

def save_to_processing_history(history_file: str, processed_files: list):
    """Save processed files to history."""
    if not history_file:
        return
    
    try:
        existing = load_processing_history(history_file)
        existing.update(processed_files)
        
        with open(history_file, 'w') as f:
            for file_path in sorted(existing):
                f.write(f"{file_path}\n")
    except Exception as e:
        print(f"Warning: Could not save processing history: {e}")

def main():
    parser = argparse.ArgumentParser(description='Add GPS coordinates to images using shortcuts')
    parser.add_argument('source_dir', help='Directory containing images to process')
    parser.add_argument('--config', help='JSON config file for shortcuts (default: geotag-shortcuts.json)')
    parser.add_argument('--extensions', nargs='+', 
                        default=['.jpg', '.jpeg', '.png', '.gif', '.bmp', '.tiff', '.tif'],
                        help='Image file extensions to include')
    parser.add_argument('--db-host', default='127.0.0.1', help='MySQL host')
    parser.add_argument('--db-port', type=int, default=3309, help='MySQL port')
    parser.add_argument('--db-user', default='kin', help='MySQL user')
    parser.add_argument('--db-password', default='Dalekini21!', help='MySQL password')
    parser.add_argument('--db-database', default='kin', help='MySQL database')
    parser.add_argument('--no-db', action='store_true', help='Run without database integration')
    parser.add_argument('--skip-gps', action='store_true', help='Skip images that already have GPS coordinates')
    parser.add_argument('--skip-processed', action='store_true', help='Skip images that have been processed before (faster)')
    parser.add_argument('--history-file', help='File to track processed images (default: .geotag_history in source dir)')
    
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
    
    print(f"Found {len(image_files)} total image files")
    
    # Setup history file
    if args.history_file:
        history_file = args.history_file
    else:
        history_file = os.path.join(args.source_dir, '.geotag_history')
    
    # Filter out already processed images if requested
    if args.skip_processed:
        print("Loading processing history...")
        processed_history = load_processing_history(history_file)
        
        unprocessed_images = []
        skipped_count = 0
        
        for image_file in image_files:
            if image_file in processed_history:
                skipped_count += 1
            else:
                unprocessed_images.append(image_file)
        
        image_files = unprocessed_images
        print(f"Skipped {skipped_count} previously processed images")
    
    # Filter out images with existing GPS data if requested  
    if args.skip_gps:
        print("Checking for existing GPS coordinates (batch mode)...")
        
        # Use batch checking for speed
        files_with_gps = check_batch_gps_coordinates(image_files)
        
        images_without_gps = []
        skipped_count = 0
        
        for image_file in image_files:
            if image_file in files_with_gps:
                skipped_count += 1
            else:
                images_without_gps.append(image_file)
        
        image_files = images_without_gps
        print(f"Skipped {skipped_count} images with existing GPS coordinates")
    
    if not image_files:
        print("No images to process after filtering")
        sys.exit(1)
    
    print(f"Processing {len(image_files)} images")
    
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
    
    # Setup config file path
    config_file = args.config
    if not config_file:
        config_file = os.path.join(os.path.dirname(__file__), 'geotag-shortcuts.json')
    
    # Start the tool  
    tool = GeotagGPS(image_files, config_file=config_file, db_config=db_config, 
                    history_file=history_file if args.skip_processed else None)
    tool.run()

if __name__ == '__main__':
    main()