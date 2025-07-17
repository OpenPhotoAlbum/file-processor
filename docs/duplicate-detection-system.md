# Duplicate Detection System

A comprehensive multi-tier duplicate detection system for finding identical and similar photos across large collections, including rotation-aware detection.

## Overview

The duplicate detection system provides three levels of detection sophistication:
1. **Fast exact matching** - Byte-for-byte identical files
2. **Perceptual similarity** - Visually similar images with different compression/cropping
3. **Rotation-aware detection** - Finds duplicates even when photos are rotated

## System Architecture

### Three-Tier Detection Pipeline

```
📁 Photo Collection
    ↓
🔍 Tier 1: Fast Exact Matching (find-image-duplicates.sh)
    ↓ (remaining files)
🔍 Tier 2: Perceptual Hashing (find-duplicates.py)
    ↓ (remaining files)  
🔍 Tier 3: Rotation-Aware Detection (find-dupes/)
    ↓
📋 Comprehensive Duplicate Report
```

## Tools Overview

### Tier 1: Fast Exact Matching
**Location:** `scripts/find-image-duplicates.sh`
**Purpose:** Find byte-for-byte identical files quickly
**Method:** File size comparison + MD5 hash verification

### Tier 2: Basic Perceptual Hashing  
**Location:** `scripts/find-duplicates.py`
**Purpose:** Find visually similar images
**Method:** Single perceptual hash comparison (dhash, phash, ahash, whash)

### Tier 3: Advanced Rotation-Aware System
**Location:** `scripts/find-dupes/`
**Purpose:** Comprehensive duplicate detection including rotated images
**Method:** Multi-rotation perceptual hashing with parallel processing

## Quick Start

### Simple Duplicate Check
Find exact duplicates between archive and staging:
```bash
./scripts/find-image-duplicates.sh
```

### Comprehensive Detection
Find all types of duplicates including rotated images:
```bash
cd scripts/find-dupes
source venv/bin/activate
python rotation-aware-compare.py --archive /photos/archive --staging /photos/staging/scans
```

## Tier 1: Fast Exact Matching

### find-image-duplicates.sh
**Best for:** Quick identification of identical files

```bash
# Edit script to set your directories
ARCHIVE_DIR="/photos/archive"
STAGING_DIR="/photos/staging/scans"

# Run the script
./scripts/find-image-duplicates.sh
```

**Output:**
- Files with matching sizes
- MD5 hash verification for same-size files
- Clear marking of exact duplicates

**Advantages:**
- ⚡ Very fast execution
- 💾 Low memory usage
- 🎯 100% accurate for identical files

**Limitations:**
- Only finds byte-identical files
- Misses cropped or compressed versions

## Tier 2: Basic Perceptual Hashing

### find-duplicates.py
**Best for:** Finding similar images with slight modifications

```bash
cd scripts/
python find-duplicates.py /photos/staging/scans -o duplicates.json
```

**Options:**
- `-t, --threshold` - Similarity threshold (default: 5)
- `-a, --algorithm` - Hash algorithm (dhash, phash, ahash, whash)
- `-o, --output` - Save results to JSON
- `-d, --delete` - Interactive deletion mode

**Advantages:**
- 🔍 Finds visually similar images
- 📊 Multiple hash algorithms
- 🎛️ Adjustable similarity threshold

**Limitations:**
- No rotation detection
- Single-directory operation

## Tier 3: Advanced Rotation-Aware System

### Location: scripts/find-dupes/

A sophisticated system with multiple specialized tools:

#### Core Detection Scripts

**rotation-aware-compare.py** - Main rotation detection tool
```bash
python rotation-aware-compare.py \
  --archive /photos/archive \
  --staging /photos/staging/scans \
  --threshold 5 \
  --algorithm dhash
```

**parallel-compare.py** - High-speed parallel processing
```bash
python parallel-compare.py \
  --archive /photos/archive \
  --staging /photos/staging/scans \
  --workers 8
```

**clean-compare.py** - Enhanced with file filtering
```bash
python clean-compare.py \
  --archive /photos/archive \
  --staging /photos/staging/scans \
  --min-size 10000
```

#### Specialized Tools

**detect-rotation.py** - Analyze rotation angles
```bash
python detect-rotation.py /photos/staging/scans/problematic_photos/
```

**cli-rotation-review.py** - Command-line rotation review
```bash
python cli-rotation-review.py /photos/staging/scans --rotate-dir /photos/staging/scans/rotate
```

**quick-rotation-review.py** - GUI-based rotation review
```bash
python quick-rotation-review.py /photos/staging/scans --rotate-dir /photos/staging/scans/rotate
```

**rotate-and-save.py** - Batch rotation correction
```bash
python rotate-and-save.py /photos/staging/scans/rotate/ --angle 90 --output /photos/staging/scans/corrected/
```

### Virtual Environment Setup
```bash
cd scripts/find-dupes
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

## Advanced Features

### Rotation Detection
The system detects duplicates across all rotation angles:
- **0°** - Original orientation
- **90°** - Rotated clockwise
- **180°** - Upside down
- **270°** - Rotated counter-clockwise

### Parallel Processing
- **Multi-core utilization** for large photo collections
- **Batch processing** with configurable chunk sizes
- **Progress tracking** for long-running operations

### File Validation
- **Size filtering** - Skip files below minimum size threshold
- **Dimension validation** - Filter out tiny or malformed images
- **Aspect ratio checking** - Identify unusual image proportions

### Geotag Integration
**geotag-gps.py** and **geotag-images.py** - Add GPS coordinates to photos during duplicate detection

## Algorithm Selection

### Hash Algorithm Comparison

| Algorithm | Best For | Speed | Rotation Sensitivity |
|-----------|----------|-------|---------------------|
| **dhash** | General purpose, edge detection | Fast | Medium |
| **phash** | Robust to compression/scaling | Medium | Low |
| **ahash** | Quick similarity checks | Fastest | High |
| **whash** | Wavelet-based, very robust | Slow | Low |

**Recommendation:** Use `dhash` for most cases, `phash` for heavily compressed images.

### Threshold Guidelines

| Threshold | Similarity Level | Use Case |
|-----------|------------------|----------|
| 0-2 | Nearly identical | Conservative duplicate removal |
| 3-5 | Very similar | General duplicate detection |
| 6-10 | Similar | Finding related photos |
| 11+ | Broadly similar | Research/categorization |

## Workflow Integration

### Recommended Detection Workflow

1. **Fast exact matching** to eliminate obvious duplicates
```bash
./scripts/find-image-duplicates.sh > exact_duplicates.txt
```

2. **Basic perceptual detection** for quick similarity check
```bash
python scripts/find-duplicates.py /photos/staging/scans -t 5 -o similar.json
```

3. **Rotation-aware detection** for comprehensive analysis
```bash
cd scripts/find-dupes
python rotation-aware-compare.py --staging /photos/staging/scans -o rotation_duplicates.json
```

4. **Manual review** of potential duplicates
```bash
python cli-rotation-review.py /photos/staging/scans
```

### Integration with Multicrop Workflow

After scanning photos with multicrop-tool:
```bash
# 1. Scan photos
multicrop-scan -dest /photos/staging/scans/new_batch/ -r red -date "1985"

# 2. Check for duplicates against archive
cd scripts/find-dupes
python rotation-aware-compare.py \
  --archive /photos/archive \
  --staging /photos/staging/scans/new_batch/ \
  -o new_batch_duplicates.json

# 3. Review and clean duplicates
python cli-rotation-review.py /photos/staging/scans/new_batch/
```

## Database Integration

### MySQL Connection
Some tools connect to the media processing database:
- **Host:** 127.0.0.1:3309
- **Database:** kin
- **Purpose:** Geolocation data for photos

**test-db-connection.py** - Verify database connectivity

## Performance Optimization

### Large Collection Strategies
- **Batch processing** - Process in smaller chunks
- **File filtering** - Skip tiny/corrupted files early
- **Parallel execution** - Use all CPU cores
- **Progressive detection** - Start with fast methods

### Memory Management
- **Chunk processing** - Avoid loading all images at once
- **Hash caching** - Store computed hashes for reuse
- **Progress checkpointing** - Resume interrupted operations

## Output Formats

### JSON Results Format
```json
{
  "parameters": {
    "archive_dir": "/photos/archive",
    "staging_dir": "/photos/staging/scans",
    "threshold": 5,
    "algorithm": "dhash",
    "rotation_aware": true
  },
  "matches": [
    {
      "staging_file": "/photos/staging/scans/new_photo.jpg",
      "archive_file": "/photos/archive/2023/old_photo.jpg",
      "distance": 2,
      "similarity_score": 62,
      "staging_rotation": 0,
      "archive_rotation": 90,
      "staging_size": 2048576,
      "archive_size": 1987654
    }
  ]
}
```

## Troubleshooting

### Common Issues

**High memory usage:**
- Reduce batch sizes in parallel processing
- Filter out large files if not needed
- Use file-based processing instead of memory-based

**Slow performance:**
- Start with exact matching to eliminate obvious duplicates
- Use appropriate worker count (typically CPU cores)
- Filter files by size/type before processing

**False positives:**
- Adjust similarity threshold (higher = more strict)
- Try different hash algorithms
- Use rotation-aware detection for better accuracy

**Missing duplicates:**
- Lower similarity threshold
- Check if images are rotated (use rotation-aware detection)
- Verify file formats are supported

## See Also
- [Multicrop Scanning Workflow](multicrop-scanning-workflow.md) - Photo scanning and separation
- [Photo Organization Strategy](photo-organization-strategy.md) - Overall organization approach
- [Large Collection Strategy](large-collection-strategy.md) - Handling 100k+ photos