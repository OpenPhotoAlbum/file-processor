# MMP - Media Processing Pipeline

A unified CLI tool for all media processing operations, designed to replace 50+ fragmented tools with a single, consistent interface.

## Quick Start

```bash
# Install MMP globally
./install.sh

# Scan photos with metadata
mmp capture --flatbed --date 1990-12-25 --location cottage

# Extract text from documents
mmp understand document.jpg --ai-enhance

# Add GPS to photo collections
mmp locate /photos/vacation/ --set cottage

# Fix historical photo dates
mmp date /scanned/ --set "1985-12-25"

# Prepare files for storage
mmp prepare /photos/ --fix-rotation
```

## Commands Overview

### `mmp capture` - Get media into digital form
- Scan from flatbed or ADF
- Separate multiple photos from scans
- Webcam capture

### `mmp understand` - Tell me what this contains  
- OCR text extraction from images
- Speech-to-text from videos
- AI-enhanced analysis with Claude
- Intelligent filename suggestions

### `mmp locate` - Where was this?
- GPS coordinate assignment
- Location shortcuts (cottage, didi-house, etc.)
- Interactive location picker
- Batch location operations

### `mmp date` - When was this?
- Set dates on any media file
- Historical dating for scanned photos  
- Extract dates from filenames
- Timezone corrections

### `mmp prepare` - Get this ready for storage
- Fix rotation/orientation issues
- Standardize filenames
- Optimize file sizes
- Interactive quality review

### `mmp process` - Work on many files efficiently
- Batch processing with parallel jobs
- Predefined workflows
- Progress monitoring
- Resume interrupted operations

## Installation

### Prerequisites
- Node.js 18+
- ExifTool (for metadata operations)
- ImageMagick (for image processing)
- ScanImage (for scanner operations)

### Install
```bash
cd /home/stephen/Documents/initial-media-processing/mmp/
./install.sh
```

This installs:
- Binary to `~/.local/bin/mmp`
- Assets to `~/.local/share/mmp/`
- Config to `~/.config/mmp/config.json`

## Configuration

Edit `~/.config/mmp/config.json` to customize:

```json
{
  "shortcuts": {
    "locations": {
      "cottage": "42.7070,-71.1631",
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

## Development

```bash
# Install dependencies
npm install

# Build TypeScript
npm run build

# Test command
npm run dev -- --help

# Run specific command
npm run dev capture --help
```

## Architecture

MMP is built with capability-first design:
- **TypeScript/Node.js** - Consistent with main media pipeline
- **Commander.js** - Standardized CLI interface
- **Wrapper approach** - Leverages existing tools (multicrop, exiftool, etc.)
- **Configuration-driven** - Shortcuts and preferences in JSON config

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

### Batch Photo Organization
```bash
# Process large collection efficiently
mmp process /photos/collection/ --pipeline "locate,date,prepare" --jobs 8
```

### Historical Photo Processing
```bash
# Scanned vintage photos
mmp date /scanned-photos/ --historical --decade 1980s
mmp locate /scanned-photos/ --set "childhood-home"  
mmp prepare /scanned-photos/ --interactive-review
```

## Help System

Every command has comprehensive help:
```bash
mmp --help                    # Overview of all commands
mmp capture --help            # Scanning operations
mmp understand --help         # Text extraction
mmp locate --help            # GPS operations
mmp <command> <subcommand> --help  # Detailed subcommand help
```

## Philosophy

MMP organizes functionality by **user intent** rather than technical implementation:

- "I want to digitize photos" → `mmp capture`
- "I want to know what's in this" → `mmp understand`  
- "I want to record where this was" → `mmp locate`
- "I want to fix when this was taken" → `mmp date`
- "I want to get this ready for storage" → `mmp prepare`
- "I want to work on many files" → `mmp process`

This approach eliminates the "which tool should I use?" confusion that plagued the previous fragmented system.

## Migration from Old Tools

MMP replaces these fragmented tools with a unified interface:
- `scan.sh` → `mmp capture --flatbed`
- `multicrop-tool/scan` → `mmp capture --separate-photos`
- `manual-photo-tools/geotag-images.py` → `mmp locate --interactive`
- `scrapbook-treatment.js` → `mmp understand --ai-enhance`
- Various worker scripts → `mmp process`

Legacy tools remain available during transition period.