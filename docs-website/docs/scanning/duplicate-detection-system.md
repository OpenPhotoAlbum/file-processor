---
title: "Duplicate Detection System"
description: Auto-generated from duplicate-detection-system.md
---

# Duplicate Detection System

A comprehensive duplicate detection system for finding identical and similar photos across large collections, including rotation-aware detection.

## Overview

The duplicate detection system provides two main approaches:
1. **Consolidated duplicate management** - Complete workflow with unified interface
2. **Specialized rotation-aware detection** - Advanced tools for complex duplicate scenarios

## System Architecture

### Current Detection Pipeline

```
📁 Photo Collection
    ↓
🔍 Primary Tool: Duplicate Manager (scripts/analysis/duplicate-manager.sh)
    ↓ (handles most cases)
🔍 Advanced Tool: Rotation-Aware Detection (scripts/manual-photo-tools/)
    ↓ (for complex scenarios)
📋 Comprehensive Duplicate Report
```

## Tools Overview

### Primary Tool: Duplicate Manager
**Location:** `scripts/analysis/duplicate-manager.sh`
**Purpose:** Unified interface for duplicate detection workflows
**Method:** Consolidated approach with multiple detection strategies

### Advanced Tools: Manual Photo Tools
**Location:** `scripts/manual-photo-tools/`
**Purpose:** Specialized rotation-aware and perceptual duplicate detection
**Method:** Multi-rotation perceptual hashing with parallel processing

## Quick Start

### Simple Duplicate Check
Use the consolidated duplicate manager:
```bash
./scripts/analysis/duplicate-manager.sh
```

### Advanced Rotation-Aware Detection
For complex duplicate scenarios with rotation detection:
```bash
cd scripts/manual-photo-tools
source venv/bin/activate
python rotation-aware-compare.py --archive /photos/archive --staging /photos/staging/scans
```

## Primary Tool: Duplicate Manager

### scripts/analysis/duplicate-manager.sh
**Best for:** Most duplicate detection workflows

```bash
# Run the consolidated duplicate manager
./scripts/analysis/duplicate-manager.sh
```

**Features:**
- ⚡ Handles common duplicate scenarios
- 🎯 Unified interface for detection workflows
- 📊 Comprehensive reporting

**Advantages:**
- 🔧 Consolidated tool reduces complexity
- 🎛️ Handles multiple detection strategies
- 📋 Clear workflow management

## Advanced Tools: Manual Photo Tools

### Location: scripts/manual-photo-tools/

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
cd scripts/manual-photo-tools
source venv/bin/activate  # Virtual environment already exists
# Dependencies are already installed
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

1. **Start with duplicate manager** for most cases
```bash
./scripts/analysis/duplicate-manager.sh
```

2. **Use advanced tools** for complex scenarios
```bash
cd scripts/manual-photo-tools
source venv/bin/activate
python rotation-aware-compare.py --staging /photos/staging/scans -o rotation_duplicates.json
```

3. **Manual review** of potential duplicates
```bash
cd scripts/manual-photo-tools
python cli-rotation-review.py /photos/staging/scans
```

### Integration with Multicrop Workflow

After scanning photos with multicrop-tool:
```bash
# 1. Scan photos
multicrop-scan -dest /photos/staging/scans/new_batch/ -r red -date "1985"

# 2. Check for duplicates using duplicate manager
./scripts/analysis/duplicate-manager.sh

# 3. For advanced cases, use manual photo tools
cd scripts/manual-photo-tools
source venv/bin/activate
python rotation-aware-compare.py \
  --archive /photos/archive \
  --staging /photos/staging/scans/new_batch/ \
  -o new_batch_duplicates.json

# 4. Review and clean duplicates
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