# Multicrop Scanning Workflow

A comprehensive photo scanning and processing toolkit that automates the digitization of multiple physical photos from flatbed scans.

## Overview

The multicrop-tool provides a complete workflow for:
- **Scanning multiple photos** from a flatbed scanner in a single operation
- **Automatically detecting and separating** individual photos from the scan
- **Setting historical dates** on scanned photos (e.g., setting 1985 dates on old family photos)
- **Handling different backgrounds** (red, white) for optimal edge detection
- **Organizing scanned photos** with timestamps and descriptions

## Installation

The multicrop-tool is located at `scripts/multicrop-tool/` and can be installed system-wide:

```bash
cd scripts/multicrop-tool/
./install.sh
```

This installs three commands:
- `multicrop` - Process existing scan files
- `multicrop-scan` - Scan and process in one workflow
- `multicrop-set-dates` - Set dates on existing photos

## Key Features

### Background Detection
- **Reference image support** - Use actual background samples instead of edge sampling
- **Background shortcuts** - Use `-r red` to automatically use `backgrounds/red.jpg`
- **Multiple background options** - Support for different colored backgrounds improves detection

### Workflow Automation
- **Scan-to-process pipeline** - One command from scanner to individual photos
- **Automatic file organization** - Timestamps, descriptions, proper extensions
- **Date management** - Set proper dates on historical photos during scanning

### Date Setting Capabilities
- **Historical photo support** - Set dates like "1985-12-25" on old family photos
- **Flexible date formats** - Support for `1997`, `12-1997`, `12-01-1997` formats
- **Complete date setting** - Both EXIF metadata and filesystem timestamps

## Usage Examples

### Basic Processing (Existing Files)
Process a single scan file:
```bash
multicrop -src input.jpg -dest output/ -r red -M
```

Process a directory of scans:
```bash
multicrop -src scan_dir/ -dest output/ -r red -M -limit 10
```

### Integrated Scanning Workflow
Scan and process in one command:
```bash
multicrop-scan -dest output/ -r red -name "christmas photos 1985" -date "1985-12-25" -M
```

Scan with custom scanner device:
```bash
multicrop-scan -dest output/ -device "hp:scanner" -r white -name "wedding album" -keep-scan
```

### Date Setting (Standalone)
Set dates on existing photos:
```bash
multicrop-set-dates -date "1997" photo1.jpg photo2.jpg photo3.jpg
multicrop-set-dates -date "12-1997" batch_of_photos/*.jpg
multicrop-set-dates -date "12-25-1997" christmas_photos/*.jpg
```

## Command Reference

### multicrop (Processing)
**Required:**
- `-src` - Input file or directory
- `-dest` - Output directory

**Optional:**
- `-r <color>` - Background shortcut (red, white)
- `-R <path>` - Reference background image (full path)
- `-b <color>` - Background color (default: white)
- `-f <value>` - Fuzz value for edge detection (default: 10)
- `-T <pixels>` - Trim amount in pixels (default: 6)
- `-M` - Save mask files (for debugging)
- `-O` - Save original files
- `-limit <n>` - Max files to process (directory mode)

### multicrop-scan (Scanning + Processing)
**Required:**
- `-dest` - Output directory for processed photos

**Optional:**
- `-name <description>` - Description for filename (spaces→dash, commas→__)
- `-date <date>` - Set photo dates (1997, 12-1997, 12-01-1997)
- `-device <scanner>` - Scanner device (default: "airscan:e0:HP")
- `-scan-dir <path>` - Directory for original scans (default: dest/scans/)
- `-keep-scan` - Keep original scan file after processing
- All processing options from `multicrop` (background, fuzz, trim, etc.)

### multicrop-set-dates (Date Setting)
```bash
multicrop-set-dates -date <date> <files...>
```

**Date formats:**
- `1997` - Year only (sets to January 1st)
- `12-1997` - Month and year (sets to 1st of month)
- `12-25-1997` - Full date

## Workflow Integration

### Typical Family Photo Digitization Process
1. **Prepare photos** on flatbed scanner with consistent background
2. **Scan multiple photos** at once using multicrop-scan
3. **Automatic processing** separates and organizes individual photos
4. **Date setting** applies historical dates during scanning
5. **Quality review** of separated photos

### Example: Digitizing 1980s Christmas Photos
```bash
# Scan photos on red background, set Christmas 1985 date
multicrop-scan \
  -dest /photos/staging/scans/christmas-1985/ \
  -r red \
  -date "1985-12-25" \
  -name "christmas morning, family gifts" \
  -M \
  -keep-scan
```

This creates:
- Individual photo files: `1985-12-25-<timestamp>-christmas-morning__family-gifts-001.jpg`
- Mask files for debugging: `*__mask.jpg`
- Original scan preserved in: `dest/scans/`
- All photos have EXIF date set to December 25, 1985

## Technical Details

### File Naming Convention
Generated filenames follow this pattern:
```
<date>-<timestamp>-<description>-<sequence>.jpg
```

Examples:
- `1985-12-25-1673891234567-christmas-morning__family-gifts-001.jpg`
- `1997-01-01-1673891234567-002.jpg` (no description)

### Background Detection Algorithm
The tool uses ImageMagick's multicrop functionality enhanced with:
- **Reference background images** instead of edge sampling
- **Post-processing trim** to remove edge artifacts
- **Color sampling** from reference images for better detection

### Scanner Integration
- **Auto-detection fallback** when specified device fails
- **SANE scanner support** via `scanimage` command
- **Custom device specification** for different scanner types

## Troubleshooting

### Common Issues

**Scanner not detected:**
```bash
# List available scanners
scanimage -L

# Use specific device
multicrop-scan -device "hp:scanner" -dest output/
```

**Background detection problems:**
- Try different reference backgrounds (`-r white` vs `-r red`)
- Adjust fuzz value (`-f 15` for more tolerance)
- Use custom reference image (`-R /path/to/background.jpg`)

**Date setting failures:**
- Ensure `exiftool` is installed
- Check file permissions
- Verify date format (use quotes: `-date "1985-12-25"`)

### Dependencies
- **ImageMagick** - Core image processing
- **SANE utilities** - Scanner support (scanimage)
- **exiftool** - EXIF metadata manipulation

## Integration with Media Processing Pipeline

The multicrop-tool integrates with the broader media processing system:

1. **Scan photos** → multicrop-tool
2. **Detect duplicates** → manual-photo-tools system
3. **Process metadata** → main processing pipeline
4. **Organize archive** → photo organization strategy

See also:
- [Duplicate Detection System](duplicate-detection-system.md)
- [Photo Organization Strategy](photo-organization-strategy.md)
- [Getting Started](getting-started.md)