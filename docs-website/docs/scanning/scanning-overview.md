---
title: "Scanning & Digitization Workflow"
description: Auto-generated from README.md
---

# Scanning & Digitization Workflow

**Purpose:** Complete workflow for digitizing physical photos using flatbed scanners  
**Last Updated:** July 26, 2025  
**Status:** Production toolkit - Multicrop scanning and duplicate detection operational

## Overview

This workflow provides a complete toolkit for digitizing physical photos from flatbed scans, including photo separation, duplicate detection, and historical date assignment.

## Scanning Toolkit Components

### Multicrop Photo Separation
- **Background-aware processing** - Red/white background detection for optimal separation
- **Automatic photo detection** - Identifies individual photos within flatbed scans
- **Edge detection** - Precise photo boundary identification
- **Batch processing** - Process multiple scans efficiently

### Multi-Tier Duplicate Detection
1. **Fast exact matching** - SHA-256 hash comparison for identical files
2. **Perceptual hashing** - Content-based similarity detection
3. **Rotation-aware detection** - Identifies same photo at different orientations

### Historical Date Support
- **Manual date assignment** - Set proper dates on scanned vintage photos
- **Batch dating** - Apply dates to entire photo collections
- **Era-based organization** - Organize by decade or time period

## Complete Scanning Workflow

### Phase 1: Physical Photo Preparation
1. **Clean photos** - Remove dust and debris
2. **Group by era** - Organize photos by time period for batch processing
3. **Plan scanning layout** - Arrange photos on scanner bed efficiently
4. **Background selection** - Use consistent red or white background

### Phase 2: Scanning Process
```bash
# Scan using MMP capture command
mmp capture --flatbed --date 1985-12-25 --location cottage

# Or use direct scan script
/photos/tools/scan.sh --date 1985-12-25 --location cottage

# Scan settings:
# - Resolution: 600 DPI for photos, 300 DPI for documents
# - Format: JPEG for photos, PNG for documents
# - Color: 24-bit color for color photos, grayscale for B&W
```

### Phase 3: Photo Separation
```bash
# Separate multiple photos from single scan
cd /photos/tools/multicrop-tool
./multicrop input-scan.jpg output-directory/

# Automatic separation with background detection
./multicrop --background red input-scan.jpg output/
./multicrop --background white input-scan.jpg output/

# Manual separation for complex layouts
./multicrop --interactive input-scan.jpg output/
```

### Phase 4: Duplicate Detection & Removal
```bash
# Run three-tier duplicate detection
cd /photos/tools/manual-photo-tools

# Tier 1: Exact duplicates (fast)
./detect-exact-duplicates.py /photos/scanned/

# Tier 2: Perceptual duplicates  
./detect-similar-photos.py /photos/scanned/

# Tier 3: Rotation-aware duplicates
./detect-rotated-duplicates.py /photos/scanned/

# Review and remove duplicates
./review-duplicates.py /photos/scanned/
```

### Phase 5: Historical Dating
```bash
# Set dates on vintage photos
mmp date /photos/scanned/1980s/ --set "1985-12-25"

# Batch date assignment by era
mmp date /photos/scanned/christmas-1985/ --set "1985-12-25"
mmp date /photos/scanned/summer-1987/ --set "1987-07-15"

# Interactive dating for mixed collections
mmp date /photos/scanned/mixed/ --interactive
```

### Phase 6: Location Assignment
```bash
# Add GPS coordinates using shortcuts
mmp locate /photos/scanned/family-home/ --set cottage
mmp locate /photos/scanned/vacations/ --set cape-cod

# Use geotag shortcuts for common locations
# (Configured in ~/.config/mmp/config.json)
```

### Phase 7: Final Processing
```bash
# Process scanned photos through pipeline
find /photos/scanned -name "*.jpg" | while read photo; do
    node pipeline-cli/dist/main.js -f "$photo" --json > "${photo}.json"
done

# Organize processed photos
mmp prepare /photos/scanned/ --standardize-names --organize
```

## Scanning Setup & Configuration

### Scanner Configuration
```bash
# List available scanners
scanimage -L

# Test scanner connection
mmp capture --test-scanner

# Configure default scanner in MMP
nano ~/.config/mmp/config.json
```

### MMP Scanning Configuration
```json
{
  "scanning": {
    "default_device": "airscan:e0:HP",
    "default_resolution": 600,
    "default_format": "jpeg",
    "default_color_mode": "color"
  },
  "multicrop": {
    "background_detection": true,
    "min_photo_size": "1000x1000",
    "edge_threshold": 50
  }
}
```

### Location Shortcuts
```json
{
  "shortcuts": {
    "locations": {
      "cottage": "42.7070,-71.1631",
      "didi-house": "42.7067,-71.1631",
      "cape-cod": "41.6688,-70.2962",
      "childhood-home": "42.7067,-71.1631"
    }
  }
}
```

## Multicrop Tool Usage

### Basic Photo Separation
```bash
# Separate photos from scan with red background
./multicrop --background red scan-001.jpg output/

# Expected output:
# output/scan-001_photo_001.jpg
# output/scan-001_photo_002.jpg
# output/scan-001_photo_003.jpg
```

### Advanced Separation Options
```bash
# White background detection
./multicrop --background white scan-002.jpg output/

# Manual region selection
./multicrop --interactive scan-003.jpg output/

# Batch processing multiple scans
for scan in *.jpg; do
    ./multicrop --background red "$scan" "output/${scan%.*}/"
done
```

### Quality Control
```bash
# Validate separation results
ls -la output/scan-001_photo_*.jpg

# Check photo dimensions
for photo in output/*.jpg; do
    identify "$photo"
done

# Review separation quality manually
# Ensure all photos properly separated
# No background artifacts included
```

## Duplicate Detection System

### Three-Tier Detection Process

#### Tier 1: Exact Duplicates (SHA-256)
```bash
# Fast hash-based detection
./detect-exact-duplicates.py /photos/scanned/

# Identifies:
# - Identical files
# - Exact copies
# - Renamed duplicates
```

#### Tier 2: Perceptual Duplicates
```bash
# Content-based similarity detection
./detect-similar-photos.py /photos/scanned/ --threshold 0.9

# Identifies:
# - Same photo, different quality
# - Slight color variations
# - Minor cropping differences
```

#### Tier 3: Rotation-Aware Detection
```bash
# Rotation and orientation detection
./detect-rotated-duplicates.py /photos/scanned/

# Identifies:
# - Same photo rotated 90°, 180°, 270°
# - Horizontally or vertically flipped
# - Same content, different orientation
```

### Duplicate Review & Removal
```bash
# Interactive duplicate review
./review-duplicates.py /photos/scanned/

# Options for each duplicate set:
# - Keep highest quality version
# - Keep version with most metadata
# - Keep version with GPS data
# - Manual selection
```

## Historical Dating Workflow

### Era-Based Dating
```bash
# Organize photos by decade first
mkdir -p /photos/scanned/{1970s,1980s,1990s,2000s}

# Move photos to appropriate decade folders
# Then apply batch dating

mmp date /photos/scanned/1980s/ --era 1980s
mmp date /photos/scanned/1990s/ --era 1990s
```

### Event-Based Dating
```bash
# Group photos by event or occasion
mkdir -p /photos/scanned/events/{christmas-1985,summer-1987,wedding-1989}

# Apply specific dates to events
mmp date /photos/scanned/events/christmas-1985/ --set "1985-12-25"
mmp date /photos/scanned/events/summer-1987/ --set "1987-07-15"
mmp date /photos/scanned/events/wedding-1989/ --set "1989-06-10"
```

### Interactive Dating
```bash
# For mixed collections requiring individual attention
mmp date /photos/scanned/mixed/ --interactive

# Provides:
# - Photo preview
# - Metadata extraction from filename
# - Date suggestions based on context
# - Manual date entry
# - Batch application options
```

## Integration with Photo Organization

### Workflow Integration
```bash
# Complete scanning to organization pipeline
# 1. Scan photos
mmp capture --flatbed --date 1985-12-25 --location cottage

# 2. Separate photos
./multicrop --background red scan.jpg separated/

# 3. Detect duplicates
./detect-duplicates.py separated/

# 4. Process through pipeline
find separated/ -name "*.jpg" | while read photo; do
    node pipeline-cli/dist/main.js -f "$photo" --json > "${photo}.json"
done

# 5. Organize in main collection
mmp prepare separated/ --organize-into /photos/organized/heritage/
```

### Heritage Photo Integration
Scanned photos automatically receive heritage photo processing:
- **Historical analysis** - AI-powered content analysis
- **Context enrichment** - Period-appropriate metadata
- **Series linking** - Related family photos grouped
- **Enhanced metadata** - Rich JSON metadata for searchability

## Quality Assurance

### Scanning Quality Checks
```bash
# Check scan resolution
identify -verbose scan.jpg | grep Resolution

# Verify color depth
identify -verbose scan.jpg | grep "Colorspace\|Depth"

# Check file size (indicator of quality)
ls -lah scan.jpg
```

### Photo Separation Validation
```bash
# Count separated photos vs. expected
expected_photos=6
actual_photos=$(ls separated/*.jpg | wc -l)

if [ $actual_photos -ne $expected_photos ]; then
    echo "Photo separation may need manual review"
fi

# Check for background artifacts
# Manual review of separated photos recommended
```

### Processing Validation
```bash
# Verify all scanned photos have metadata
scanned_photos=$(find /photos/scanned -name "*.jpg" | wc -l)
metadata_files=$(find /photos/scanned -name "*.json" | wc -l)

echo "Scanned photos: $scanned_photos"
echo "Metadata files: $metadata_files"

# Should be approximately equal
```

## Tool Locations & Requirements

### Tool Paths
```bash
# Main scanning script
/photos/tools/scan.sh

# Multicrop photo separation
/photos/tools/multicrop-tool/multicrop

# Duplicate detection tools
/photos/tools/manual-photo-tools/detect-exact-duplicates.py
/photos/tools/manual-photo-tools/detect-similar-photos.py
/photos/tools/manual-photo-tools/detect-rotated-duplicates.py

# GPS tagging tools
/photos/tools/manual-photo-tools/geotag-images.py
```

### Python Environment
```bash
# Scanning tools use isolated Python environment
cd /photos/tools/manual-photo-tools
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

### System Requirements
- **Scanner support** - SANE-compatible scanners
- **ImageMagick** - Image processing and conversion
- **ExifTool** - Metadata manipulation
- **Python 3.8+** - Duplicate detection scripts
- **Node.js 18+** - Pipeline processing integration

## Example Scanning Sessions

### Family Photo Collection (1980s)
```bash
# 1. Prepare photos on scanner with red background
# 2. Scan at 600 DPI
mmp capture --flatbed --date 1985-12-25 --location cottage

# 3. Separate individual photos
./multicrop --background red family-1985-scan.jpg family-1985/

# 4. Remove duplicates
./detect-duplicates.py family-1985/

# 5. Process with heritage analysis
find family-1985/ -name "*.jpg" | while read photo; do
    node pipeline-cli/dist/main.js -f "$photo" --json > "${photo}.json"
done
```

### Document Scanning Session
```bash
# 1. Scan documents at 300 DPI (text focus)
mmp capture --flatbed --format png --resolution 300

# 2. OCR text extraction
mmp understand document-scan.png --ocr

# 3. Organize by document type
mmp prepare documents/ --organize-by-type
```

### Mixed Media Scanning
```bash
# 1. Scan photos and documents together
mmp capture --flatbed --mixed-media

# 2. Separate by content type
./multicrop --detect-type mixed-scan.jpg output/

# 3. Process photos and documents separately
find output/photos/ -name "*.jpg" | while read photo; do
    node pipeline-cli/dist/main.js -f "$photo" --json > "${photo}.json"
done

find output/documents/ -name "*.png" | while read doc; do
    mmp understand "$doc" --ocr > "${doc}.txt"
done
```

## Troubleshooting Scanning Issues

### Scanner Not Detected
```bash
# Check scanner connection
scanimage -L

# If no scanners found:
# 1. Check USB connection
# 2. Restart SANE daemon
sudo systemctl restart saned

# 3. Check device permissions
ls -la /dev/bus/usb/
```

### Poor Photo Separation
```bash
# Try different background detection
./multicrop --background white scan.jpg output/  # if red failed

# Manual separation for complex layouts
./multicrop --interactive scan.jpg output/

# Adjust separation parameters
./multicrop --edge-threshold 30 --min-size 800x600 scan.jpg output/
```

### Duplicate Detection Issues
```bash
# Adjust similarity threshold
./detect-similar-photos.py /photos/ --threshold 0.8  # more sensitive

# Check for corruption
file /photos/*.jpg | grep -v "JPEG image data"

# Re-run individual detection tiers
./detect-exact-duplicates.py /photos/
```

---

**Scanning Workflow Status:** ✅ Complete digitization toolkit with multicrop separation, duplicate detection, and heritage photo integration

For detailed technical procedures, see [Multicrop Scanning Workflow](../scanning-workflow.md) and [Duplicate Detection System](../duplicate-detection-system.md).