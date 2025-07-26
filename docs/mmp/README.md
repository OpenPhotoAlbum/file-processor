# MMP - Unified CLI Tools

**Purpose:** User-friendly unified CLI for all media processing operations  
**Last Updated:** July 26, 2025  
**Status:** GPS, CROP, SCAN working; DATES, ROTATE, TRANSCRIBE pending

## Overview

MMP (Media Processing Pipeline) is a unified CLI tool designed to replace 50+ fragmented tools with a single, consistent interface organized by user intent rather than technical implementation.

## Quick Start

```bash
# Install MMP globally
cd /home/stephen/Documents/initial-media-processing/mmp/
./install.sh

# Basic usage examples
mmp capture --flatbed --date 1990-12-25 --location cottage
mmp understand document.jpg --ai-enhance
mmp locate /photos/vacation/ --set cottage
mmp date /scanned/ --set "1985-12-25"
mmp prepare /photos/ --fix-rotation
```

## Command Categories

### `mmp capture` - Get media into digital form
- **Scanning:** Flatbed and ADF scanner integration
- **Photo separation:** Multicrop tool integration for multiple photos per scan
- **Webcam capture:** Direct photo capture
- **Status:** ✅ Operational

### `mmp understand` - Tell me what this contains
- **OCR:** Text extraction from images and documents
- **Speech-to-text:** Audio transcription from videos
- **AI analysis:** Heritage photo analysis with Claude integration
- **Filename suggestions:** AI-powered intelligent naming
- **Status:** 🔄 Text extraction working, AI features pending

### `mmp locate` - Where was this?
- **GPS tagging:** Add coordinates to photos without GPS
- **Location shortcuts:** Use predefined locations (cottage, didi-house, etc.)
- **Interactive picker:** Visual location selection
- **Batch operations:** Process multiple files efficiently
- **Status:** ✅ Operational

### `mmp date` - When was this?
- **Historical dating:** Set dates on scanned vintage photos
- **Filename extraction:** Parse dates from filenames
- **Timezone correction:** Handle timezone conversion
- **Batch dating:** Process collections efficiently
- **Status:** 🔄 Pending implementation

### `mmp prepare` - Get this ready for storage
- **Rotation correction:** Fix orientation issues
- **Filename standardization:** Consistent naming conventions
- **Quality review:** Interactive optimization
- **File optimization:** Size and format optimization
- **Status:** 🔄 Rotation pending, other features available

### `mmp process` - Work on many files efficiently
- **Batch processing:** Parallel job execution
- **Workflow pipelines:** Predefined processing sequences
- **Progress monitoring:** Real-time status updates
- **Resume capability:** Continue interrupted operations
- **Status:** ✅ Basic batch processing operational

## Installation & Configuration

### Prerequisites
- Node.js 18+
- ExifTool (metadata operations)
- ImageMagick (image processing)
- ScanImage (scanner operations)

### Installation
```bash
cd /home/stephen/Documents/initial-media-processing/mmp/
./install.sh
```

This installs:
- Binary to `~/.local/bin/mmp`
- Assets to `~/.local/share/mmp/`
- Config to `~/.config/mmp/config.json`

### Configuration
Edit `~/.config/mmp/config.json`:
```json
{
  "shortcuts": {
    "locations": {
      "cottage": "42.7070,-71.1631",
      "didi-house": "42.7067,-71.1631",
      "home": "42.7067,-71.1631"
    }
  },
  "scanning": {
    "default_device": "airscan:e0:HP",
    "default_resolution": 300
  },
  "ai": {
    "enabled": true,
    "provider": "claude"
  }
}
```

## Workflows

### Complete Scanning Workflow
```bash
# 1. Capture with metadata
mmp capture --flatbed --date 1985-12-25 --location cottage

# 2. Understand content (if documents)
mmp understand *.jpg --ai-enhance

# 3. Prepare for storage
mmp prepare *.jpg --fix-rotation --standardize-names
```

### Historical Photo Processing
```bash
# Scanned vintage photos workflow
mmp date /scanned-photos/ --historical --decade 1980s
mmp locate /scanned-photos/ --set "childhood-home"
mmp prepare /scanned-photos/ --interactive-review
```

### Batch Photo Organization
```bash
# Process large collection efficiently
mmp process /photos/collection/ --pipeline "locate,date,prepare" --jobs 8
```

## Integration with Pipeline CLI

MMP provides a user-friendly interface to the core Pipeline CLI system:

**MMP (User Interface)** → **Pipeline CLI (Processing Engine)**

```bash
# User-friendly MMP command
mmp understand photo.jpg

# Equivalent Pipeline CLI command (more control)
node pipeline-cli/dist/main.js -f photo.jpg --json
```

## Command Documentation

### Available Now
- **[Capture Commands](commands/capture.md)** - Scanning and photo capture
- **[Locate Commands](commands/locate.md)** - GPS and location operations
- **[Process Commands](commands/process.md)** - Batch processing workflows

### In Development
- **[Date Commands](commands/date.md)** - Historical photo dating
- **[Understand Commands](commands/understand.md)** - AI analysis and transcription
- **[Prepare Commands](commands/prepare.md)** - File preparation and optimization

## Development Status

### Working Features ✅
- **GPS tagging** - Add coordinates to photos
- **Photo cropping** - Remove borders and backgrounds
- **Scanning workflow** - Complete digitization process
- **Batch processing** - Process multiple files efficiently

### Pending Features 🔄
- **Date correction** - Manual date setting for historical photos
- **Photo rotation** - Orientation correction
- **Audio transcription** - Speech-to-text for video files
- **AI enhancement** - Heritage photo analysis with Claude

### Migration from Legacy Tools
MMP replaces these fragmented tools:
- `scan.sh` → `mmp capture --flatbed`
- `multicrop-tool/scan` → `mmp capture --separate-photos`
- `manual-photo-tools/geotag-images.py` → `mmp locate --interactive`
- `scrapbook-treatment.js` → `mmp understand --ai-enhance`

## Help System

Every command has comprehensive help:
```bash
mmp --help                    # Overview of all commands
mmp capture --help            # Scanning operations
mmp understand --help         # Text extraction
mmp locate --help            # GPS operations
mmp <command> <subcommand> --help  # Detailed help
```

## Philosophy

MMP organizes functionality by **user intent** rather than technical implementation:

- **"I want to digitize photos"** → `mmp capture`
- **"I want to know what's in this"** → `mmp understand`
- **"I want to record where this was"** → `mmp locate`
- **"I want to fix when this was taken"** → `mmp date`
- **"I want to get this ready for storage"** → `mmp prepare`
- **"I want to work on many files"** → `mmp process`

This eliminates the "which tool should I use?" confusion that plagued the previous fragmented system.

---

**MMP Status:** 🔄 Active development - Core features operational, advanced features in progress

For complete technical details, see the [Pipeline CLI documentation](../pipeline-cli/README.md).