# MMP - Unified CLI Tools

**Purpose:** User-friendly unified CLI for all media processing operations  
**Last Updated:** August 5, 2025  
**Status:** GPS, CROP, SCAN, SCRAPBOOK working; DATES, ROTATE, TRANSCRIBE pending

## Overview

MMP (Media Processing Pipeline) is a unified CLI tool designed to replace 50+ fragmented tools with a single, consistent interface organized by user intent rather than technical implementation.

## Quick Start

```bash
# Install MMP globally
cd /home/stephen/Documents/initial-media-processing/mmp/
./install.sh

# Basic usage examples
mmp scan --flatbed --date 1990-12-25 --location cottage
mmp transcribe document.jpg --ai-enhance
mmp gps /photos/vacation/ --location cottage
mmp dates /scanned/ --set "1985-12-25"
mmp rotate /photos/ --interactive
mmp scrapbook /heritage-docs --series "Family Letters" --location "Boston, MA"
```

## Command Categories

### `mmp scan` - Get media into digital form
- **Scanning:** Flatbed and ADF scanner integration
- **Photo separation:** Multicrop tool integration for multiple photos per scan
- **Webcam capture:** Direct photo capture
- **Status:** ✅ Operational

### `mmp transcribe` - Tell me what this contains
- **OCR:** Text extraction from images and documents
- **Speech-to-text:** Audio transcription from videos
- **AI analysis:** Heritage photo analysis with Claude integration
- **Filename suggestions:** AI-powered intelligent naming
- **Status:** 🔄 Text extraction working, AI features pending

### `mmp scrapbook` - Process heritage document collections
- **Complete workflow:** OCR transcription, filename normalization, EXIF embedding
- **Series linking:** Automatic page numbering and cross-referencing
- **Heritage metadata:** Full EXIF enrichment for archival documents
- **Batch processing:** Process entire scrapbook collections efficiently
- **Status:** ✅ Operational

### `mmp gps` - Where was this?
- **GPS tagging:** Add coordinates to photos without GPS
- **Location shortcuts:** Use predefined locations (cottage, didi-house, etc.)
- **Interactive picker:** Visual location selection
- **Batch operations:** Process multiple files efficiently
- **Status:** ✅ Operational

### `mmp dates` - When was this?
- **Historical dating:** Set dates on scanned vintage photos
- **Filename extraction:** Parse dates from filenames
- **Timezone correction:** Handle timezone conversion
- **Batch dating:** Process collections efficiently
- **Status:** 🔄 Pending implementation

### `mmp rotate` - Get this ready for storage
- **Rotation correction:** Fix orientation issues
- **Interactive mode:** Visual rotation selection
- **Batch operations:** Process multiple files efficiently
- **EXIF preservation:** Maintain metadata during rotation
- **Status:** 🔄 Pending implementation

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
# 1. Scan with metadata
mmp scan --flatbed --date 1985-12-25 --location cottage

# 2. Process content (if documents)
mmp scrapbook /scanned-docs --series "Family Documents" --location cottage

# 3. Add GPS and process with Pipeline CLI
mmp gps *.jpg --location cottage
```

### Heritage Document Processing
```bash
# Complete scrapbook workflow
mmp scrapbook /heritage-scans/family-letters \
  --series "Grandma's Letters" \
  --location "Sandown, NH" \
  --keywords "family, correspondence, 1960s"

# Historical photo dating
mmp dates /scanned-photos/ --set "1985-12-25"
mmp gps /scanned-photos/ --location "childhood-home"
```

### Batch Photo Organization
```bash
# Process large collection efficiently
mmp gps /photos/collection/ --location cottage --batch
mmp dates /photos/collection/ --set "1985-01-01" --batch
mmp process /photos/collection/ --pipeline custom --jobs 8
```

## Integration with Pipeline CLI

MMP provides a user-friendly interface to the core Pipeline CLI system:

**MMP (User Interface)** → **Pipeline CLI (Processing Engine)**

```bash
# User-friendly MMP command
mmp transcribe document.jpg

# Equivalent Pipeline CLI command (more control)
node pipeline-cli/dist/main.js -f document.jpg --json
```

## Command Documentation

### Available Now
- **[Scan Commands](commands/scan.md)** - Scanning and photo capture
- **[GPS Commands](commands/gps.md)** - GPS and location operations
- **[Scrapbook Commands](commands/scrapbook.md)** - Heritage document processing workflow
- **[Process Commands](commands/process.md)** - Batch processing workflows

### In Development
- **[Dates Commands](commands/dates.md)** - Historical photo dating
- **[Transcribe Commands](commands/transcribe.md)** - AI analysis and transcription
- **[Rotate Commands](commands/rotate.md)** - Photo rotation and orientation

## Development Status

### Working Features ✅
- **GPS tagging** - Add coordinates to photos (`mmp gps`)
- **Photo cropping** - Remove borders and backgrounds (`mmp crop`)
- **Scanning workflow** - Complete digitization process (`mmp scan`)
- **Heritage document processing** - Complete scrapbook workflow (`mmp scrapbook`)
- **Batch processing** - Process multiple files efficiently

### Pending Features 🔄
- **Date correction** - Manual date setting for historical photos (`mmp dates`)
- **Photo rotation** - Orientation correction (`mmp rotate`)
- **Audio transcription** - Speech-to-text for video files (`mmp transcribe`)
- **AI enhancement** - Heritage photo analysis with Claude integration

### Migration from Legacy Tools
MMP replaces these fragmented tools:
- `scan.sh` → `mmp scan --flatbed`
- `multicrop-tool/multicrop` → `mmp crop --background red`
- `manual-photo-tools/geotag-images.py` → `mmp gps --interactive`
- **4-script scrapbook workflow** → `mmp scrapbook` (complete workflow replacement)
  - `transcribe-all.sh` → Integrated OCR transcription
  - `rename-spaces-to-underscores.sh` → Integrated filename normalization
  - `add-transcriptions-to-exif.sh` → Integrated EXIF text embedding
  - `apply-full-scrapbook-treatment.sh` → Integrated metadata application

## Help System

Every command has comprehensive help:
```bash
mmp --help                    # Overview of all commands
mmp scan --help               # Scanning operations
mmp transcribe --help         # Text extraction
mmp gps --help               # GPS operations
mmp scrapbook --help         # Heritage document processing
mmp <command> --help         # Detailed command help
```

## Philosophy

MMP organizes functionality by **user intent** rather than technical implementation:

- **"I want to digitize photos"** → `mmp scan`
- **"I want to process heritage documents"** → `mmp scrapbook`
- **"I want to know what's in this"** → `mmp transcribe`
- **"I want to record where this was"** → `mmp gps`
- **"I want to fix when this was taken"** → `mmp dates`
- **"I want to fix rotation issues"** → `mmp rotate`
- **"I want to work on many files"** → `mmp process`

This eliminates the "which tool should I use?" confusion that plagued the previous fragmented system.

---

**MMP Status:** 🔄 Active development - Core features operational, advanced features in progress

For complete technical details, see the [Pipeline CLI documentation](../pipeline-cli/README.md).