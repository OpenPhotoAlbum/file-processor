# Scripts Directory - Table of Contents

This directory contains all the tools and scripts for the Media Processing Pipeline. Scripts are organized by function to help you quickly find what you need.

## 📸 Photo Scanning & Digitization

### Multicrop Tool (`multicrop-tool/`)
Complete toolkit for digitizing physical photos from flatbed scans
- `multicrop` - Process existing scan files and separate photos
- `multicrop-scan` - Scan and process in one workflow 
- `multicrop-set-dates` - Set historical dates on scanned photos
- `install.sh` - System-wide installation script
- See [Multicrop Scanning Workflow](../docs/multicrop-scanning-workflow.md)

### Manual Photo Tools (`manual-photo-tools/`)
Advanced photo processing and duplicate detection (Python environment)
- `rotation-aware-compare.py` - Find duplicates across all rotations
- `geotag-images.py` - Add GPS coordinates to photos
- `rotate-and-save.py` - Batch photo rotation with EXIF preservation
- `web-rotate.py` - Web interface for manual photo review
- `setup.sh` - Initialize Python virtual environment

### Scanning Scripts
- `scan.sh` - Complete scanning workflow with GPS integration
- `group-scanned-photos.sh` - Organize scanned photos by groups

## 🔍 Analysis & Detection

### Duplicate Management (`analysis/`)
- `duplicate-manager.sh` - Unified duplicate detection interface
- `live-photo-manager.sh` - Apple Live Photo detection and management
- `media-inspector.cjs` - Deep media file analysis

### Monitoring (`monitoring/`)
Real-time progress tracking for batch operations
- `monitor-batches.sh` - Watch batch processing progress
- `video-stats.sh` - Video processing statistics
- `watch-google-takeout-progress.sh` - Google Takeout import monitoring

## 📊 Database & Processing

### Database Tools (`database/`)
- `database-clean-media.sh` - Reset media data while preserving reference data
- `check-file-in-db.js` - Verify file database entries
- `check-landmark-duplicates.sql` - Find duplicate landmark entries
- `check-software.cjs` - Software metadata analysis

### Processing Scripts (`processing/`)
- `process-archive-to-database.sh` - Import archive to database
- `process-archive-to-database-smart.sh` - Smart import with deduplication
- `reorganize-existing.sh` - Reorganize existing photo structure

### Worker Scripts (`workers/`)
Parallel processing workers for large collections
- `process-videos-worker.js` - Video processing worker
- `process-iphone-worker.js` - iPhone-specific processing
- `process-gifs-worker.js` - GIF animation processing
- `process-stragglers-worker.js` - Handle remaining files

## 📥 Import & Organization

### Google Takeout (`google-takeout/`)
- `process-google-takeout-complete.sh` - Complete Google Takeout processing
- `process-iphone-external-imports.sh` - External iPhone collection import

### Document Processing (`document-cleanup/`)
- `cleanup-scans.sh` - Clean and organize document scans
- `split-documents.sh` - Separate documents from photo scans
- `split-photos.sh` - Advanced photo separation tools

## 🎥 Video Processing

### Video Enhancement Scripts
- `add-video-metadata.sh` - Add comprehensive video metadata
- `add-video-geolocation.sh` - GPS enhancement for videos
- `process-videos-parallel.sh` - Parallel video processing

### Voice Processing (`voice-processing/`)
Complete audio transcription and processing toolkit
- `enhanced_assembly_ai.py` - AI-powered transcription
- `extract_audio.py` - Audio extraction from videos
- `process_video.py` - Video analysis with audio processing

## 🛠️ Utilities

### General Utilities (`utilities/`)
- `create-file-batches.sh` - Create processing batches from file lists
- `generate-test-mocks.sh` - Generate test data for development
- `etl-census-municipal-boundaries.sh` - Geographic data import

### Enrichment Scripts
- `phase3b-recreation-enrichment.sh` - Recreation.gov landmark enrichment

### Database Setup
- `add-video-equipment.sql` - Video equipment schema additions

## 🚀 Quick Start Commands

### Basic Photo Processing
```bash
# Process a single photo with full enrichment
node dist/main.js -f "photo.jpg" -o "photo.json"

# Scan physical photos
cd scripts/multicrop-tool && ./multicrop-scan -dest output/ -r red
```

### Duplicate Detection
```bash
# Quick duplicate check
./scripts/analysis/duplicate-manager.sh

# Advanced rotation-aware detection
cd scripts/manual-photo-tools && python rotation-aware-compare.py
```

### Batch Operations
```bash
# Monitor processing progress
./scripts/monitoring/monitor-batches.sh

# Process video collection
./scripts/workers/process-videos-parallel.sh
```

## 📚 Documentation Links

- [Getting Started](../docs/getting-started.md) - Setup and basic usage
- [Multicrop Scanning Workflow](../docs/multicrop-scanning-workflow.md) - Physical photo digitization
- [Duplicate Detection System](../docs/duplicate-detection-system.md) - Comprehensive duplicate management
- [Photo Organization Strategy](../docs/photo-organization-strategy.md) - Complete organization workflow

## 🔧 Development Notes

Most scripts include built-in help. Try running with `-h` or `--help` for usage information:
```bash
./script-name.sh --help
```

For Python tools, activate the virtual environment first:
```bash
cd scripts/manual-photo-tools
source venv/bin/activate
python script-name.py --help
```

## 📁 Script Categories

- **🔧 Setup Tools**: `install.sh`, `setup.sh` scripts for environment preparation
- **📸 Photo Tools**: Scanning, rotation, GPS tagging, duplicate detection  
- **🎥 Video Tools**: Processing, metadata enhancement, audio extraction
- **📊 Analysis**: Statistics, monitoring, inspection tools
- **🗄️ Database**: Import, cleanup, verification scripts
- **⚡ Workers**: Parallel processing for large collections