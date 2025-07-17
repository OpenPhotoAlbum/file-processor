# Multicrop-Tool Development Log

## Project Overview
A comprehensive photo scanning and processing toolkit that wraps the multicrop-ref ImageMagick script with modern convenience features.

## Work Completed

### 1. Initial Analysis & Planning
- **Analyzed existing multicrop script** - Understanding the Fred Weinhaus multicrop script functionality
- **Identified improvement opportunities** - Background detection issues, user experience pain points
- **Planned modular architecture** - Separate scripts for different concerns

### 2. Enhanced multicrop-ref Script
- **Added reference image support (-R flag)** - Use reference background images instead of edge sampling
- **Added post-processing trim (-T flag)** - Remove edge artifacts with configurable pixel trim
- **Added optional mask saving (-M flag)** - Control mask file generation
- **Added optional original saving (-O flag)** - Control original file saving (default: off)
- **Improved background color detection** - More robust color sampling from reference images

### 3. Created Process Wrapper Script (multicrop)
- **Flexible argument parsing** - Arguments can be provided in any order
- **Background shortcuts (-r flag)** - Use `-r red` instead of full paths to reference images
- **Single file and directory processing** - Handle both individual files and batch processing
- **Progress tracking** - Clear status messages and error handling
- **Automatic extension handling** - Smart filename processing for files with/without extensions
- **Built-in validation** - Check dependencies and file existence

### 4. Created Scan Script (multicrop-scan)
- **Integrated scanning workflow** - Scan → Process → Organize in one command
- **Scanner auto-detection** - Fallback logic when specified device fails
- **Custom naming with description** - Filename generation with timestamp and description
- **Filename sanitization** - Convert spaces to dashes, commas to double underscores
- **Scan file management** - Optional keeping of original scan files
- **All processing options** - Pass-through support for all multicrop flags

### 5. Added Date Setting Capability
- **Created set-photo-dates script** - Standalone date setting utility
- **Flexible date parsing** - Support for `1997`, `12-1997`, `12-01-1997` formats
- **EXIF and filesystem dates** - Set both embedded metadata and file timestamps
- **Batch processing** - Handle multiple files efficiently
- **Default time setting** - All dates set to 12:00:00 noon
- **Integrated with scan workflow** - Automatic date setting via `-date` flag

### 6. Self-Contained Package Structure
```
multicrop-tool/
├── multicrop              # Main processing script
├── multicrop-ref          # Enhanced core processing engine
├── scan                   # Scan and auto-process script
├── set-photo-dates        # Date setting utility
├── install.sh             # System installation script
├── backgrounds/           # Reference background images
│   ├── red.jpg
│   └── white.jpg
└── samples/               # Sample files
```

### 7. System Installation
- **User-local installation** - Installs to `~/.local/bin` (no sudo required)
- **Path management** - Automatic PATH checking and guidance
- **Dependency validation** - Check for ImageMagick, SANE, exiftool
- **Command creation** - Install as `multicrop`, `multicrop-scan`, `multicrop-set-dates`
- **File organization** - Backgrounds and core scripts in `~/.local/share/multicrop`

## Key Features Achieved

### Background Detection
- **Reference image support** - Use actual background samples for better detection
- **Shortcut system** - `-r red` automatically uses `backgrounds/red.jpg`
- **Multiple background options** - Support for different colored backgrounds

### Workflow Automation
- **Scan to process pipeline** - One command from scanner to individual photos
- **Automatic file organization** - Timestamps, descriptions, proper extensions
- **Optional components** - Masks, originals, date setting all controlled by flags

### User Experience
- **Intuitive commands** - Simple, memorable command structure
- **Helpful error messages** - Clear guidance when things go wrong
- **Progress feedback** - Real-time status updates during processing
- **Flexible usage** - Works for both quick single files and batch operations

### Date Management
- **Historical photo support** - Set proper dates on scanned old photos
- **Multiple date formats** - Natural date input formats
- **Complete date setting** - Both EXIF metadata and filesystem timestamps
- **Batch date operations** - Set dates on multiple files at once

## Technical Achievements

### Robust Error Handling
- Scanner device auto-detection with fallbacks
- Missing dependency detection and guidance
- File validation and existence checking
- Graceful degradation when optional tools missing

### Modular Architecture
- Separate concerns into focused scripts
- Clean interfaces between components
- Reusable utilities (set-photo-dates)
- Easy to maintain and extend

### Cross-Platform Compatibility
- Works with different scanner types (HP, Canon, etc.)
- Handles various ImageMagick versions
- Supports different shell environments
- Portable installation system

## Commands Provided

```bash
# Process existing images
multicrop -src input.jpg -dest output/ -r red -M -O

# Scan and process in one step  
multicrop-scan -dest output/ -r red -date "1985-12-25" -name "christmas photos" -M

# Set dates on existing photos
multicrop-set-dates -date "1997" photo1.jpg photo2.jpg photo3.jpg
```

## Installation
```bash
# Install to ~/.local/bin
./install.sh

# Add to PATH if needed
export PATH="$HOME/.local/bin:$PATH"
```

This project successfully transformed a complex ImageMagick script into a user-friendly, modern photo processing toolkit with scanning integration and comprehensive workflow automation.