# MMP Validate System - Complete User Guide

**Version:** 1.0  
**Last Updated:** July 28, 2025  
**Status:** Production Ready

## Overview

The MMP Validate system provides comprehensive photo validation and quality assessment for both modern digital photos and heritage scanned photos. It combines intelligent photo type detection, weighted rule-based validation, and automated fix capabilities to ensure your photo collection meets archival quality standards.

## Table of Contents

1. [Quick Start](#quick-start)
2. [Photo Type Detection](#photo-type-detection)
3. [Validation Rules](#validation-rules)
4. [Scoring System](#scoring-system)
5. [Auto-Fix Capabilities](#auto-fix-capabilities)
6. [Configuration](#configuration)
7. [Command Reference](#command-reference)
8. [Workflow Examples](#workflow-examples)
9. [Troubleshooting](#troubleshooting)

## Quick Start

### Basic Validation

```bash
# Validate a single photo
mmp -f photo.jpg --validate

# Validate with JSON output
mmp -f photo.jpg --validate --json

# Validate multiple photos
mmp -f *.jpg --validate

# Validate and attempt auto-fix
mmp -f photo.jpg --validate --auto-fix
```

### Batch Validation

```bash
# Validate entire directory
find /photos -name "*.jpg" | xargs -P 4 -I {} mmp -f {} --validate --json

# Validate with progress tracking
for file in /photos/*.jpg; do
  echo "Validating: $file"
  mmp -f "$file" --validate
done
```

## Photo Type Detection

The system automatically detects photo types to apply appropriate validation rules:

### Post-Digital Photos
- **Detection:** Camera metadata, GPS coordinates, standard processors
- **Examples:** iPhone photos, DSLR photos, modern digital cameras
- **Rule Set:** 7 critical + 4 quality + 2 bonus rules (13 total)

### Heritage-Scan Photos  
- **Detection:** XMP heritage metadata, HeritageProcessor selection
- **Examples:** Scanned family photos, historical documents, film digitization
- **Rule Set:** 6 critical + 3 quality + 3 expected rules (12 total)

### Detection Evidence

```json
{
  "photoType": {
    "type": "post-digital",
    "confidence": "high",
    "evidence": [
      "Selected standard processor (not HeritageProcessor)",
      "Camera make detected: Apple",
      "GPS coordinates present"
    ]
  }
}
```

## Validation Rules

### Critical Rules (Must Pass 100%)

#### Post-Digital Photos
1. **File Readable** - File can be opened and metadata extracted
2. **Valid Image Format** - Supported format (JPEG, PNG, HEIC, etc.)
3. **Has Dimensions** - Valid width and height > 0
4. **Has Timestamp** - Capture or creation date present
5. **Minimum Resolution** - At least 0.5MP for basic archival quality
6. **Reasonable File Size** - Between 1KB and 100MB
7. **File Hash Present** - Content hash for deduplication

#### Heritage-Scan Photos
1. **File Readable** - Scanned file can be opened
2. **Heritage Metadata Present** - XMP digitalSourceType indicates "Scanned"
3. **Valid Heritage Format** - TIFF or high-quality JPEG preferred
4. **Has Scan Dimensions** - Valid scan resolution
5. **File Integrity** - Reasonable size (50KB to 500MB)
6. **Heritage Hash** - Content hash for archive management

### Quality Rules (70% Pass Threshold)

#### Post-Digital Photos
- **Camera Information** - Make and model metadata
- **GPS Coordinates** - Location data present
- **Exposure Settings** - ISO, aperture, or shutter speed (2 of 3)
- **Proper Color Space** - sRGB, Adobe RGB, or similar standard

#### Heritage-Scan Photos
- **Adequate Scan DPI** - ≥300 DPI for preservation quality
- **Heritage Dating** - Historical or digitization date
- **Creator/Scanner Info** - Documentation of who digitized (optional but scored)

### Bonus/Expected Rules

#### Post-Digital Bonus Rules
- **Focal Length Information** - Lens metadata
- **High Resolution** - ≥8MP for excellent detail preservation

#### Heritage-Scan Expected Rules
- **Document Title/Description** - Heritage context information
- **Preservation Notes** - Condition or processing notes

## Scoring System

### Weighted Scoring Formula

```
Weighted Score = (Critical × 3.0) + (Quality × 2.0) + (Bonus × 1.0) + (Expected × 2.5)
```

### Pass Criteria

A photo passes validation when:
- **Critical:** 100% (all critical rules pass)
- **Quality:** ≥70% of quality rules pass
- **Bonus:** ≥50% of bonus rules pass (post-digital)
- **Expected:** ≥60% of expected rules pass (heritage)
- **Overall:** ≥75% weighted score

### Example Scoring

```json
{
  "overallScore": 100,
  "weightedScore": 234,
  "passed": true,
  "summary": {
    "critical": { "passed": 7, "total": 7, "score": 70, "maxScore": 70 },
    "quality": { "passed": 4, "total": 4, "score": 20, "maxScore": 20 },
    "bonus": { "passed": 2, "total": 2, "score": 6, "maxScore": 6 }
  }
}
```

## Auto-Fix Capabilities

### Available Fixes

1. **Missing Metadata Sidecar**
   - Generates comprehensive metadata file
   - Includes GPS, landmarks, technical details
   - Creates `.json` sidecar file

2. **Incorrect Filename**
   - Corrects based on EXIF capture date
   - Format: `YYYY-MM-DD_HH-MM-SS_###.ext`
   - Preserves original with backup

3. **Missing GPS Enrichment**
   - Enhances existing GPS coordinates
   - Adds reverse geocoding and landmarks
   - Only if coordinates already present

4. **Missing Color Analysis**
   - Extracts dominant, mean, and salient colors
   - Stores in metadata for visual search
   - Optional extraction for performance

### Safety Features

- **Automatic Backup** - Original files backed up before modification
- **Dry Run Mode** - Preview changes without modification
- **Rollback Support** - Restore from timestamped backups
- **Selective Fixes** - Choose which fix types to apply
- **Error Recovery** - Graceful handling of permission/disk issues

### Auto-Fix Usage

```bash
# Auto-fix with backup
mmp -f photo.jpg --validate --auto-fix --backup

# Dry run to preview changes
mmp -f photo.jpg --validate --auto-fix --dry-run

# Selective fix types
mmp -f photo.jpg --validate --auto-fix --auto-fix-types=metadata,filename

# Batch auto-fix
find /photos -name "*.jpg" | xargs -I {} mmp -f {} --validate --auto-fix
```

## Configuration

### Scoring Thresholds

```bash
# Default thresholds (can be customized)
CRITICAL_THRESHOLD=100    # All critical rules must pass
QUALITY_THRESHOLD=70      # 70% of quality rules
BONUS_THRESHOLD=50        # 50% of bonus rules  
EXPECTED_THRESHOLD=60     # 60% of expected rules
OVERALL_THRESHOLD=75      # 75% weighted score
```

### Weight Multipliers

```bash
# Rule category weights
CRITICAL_WEIGHT=3.0       # Critical rules weighted 3x
QUALITY_WEIGHT=2.0        # Quality rules weighted 2x
BONUS_WEIGHT=1.0          # Bonus rules normal weight
EXPECTED_WEIGHT=2.5       # Expected rules weighted 2.5x
```

### Auto-Fix Configuration

```bash
# Auto-fix settings
ENABLE_BACKUP=true        # Create backups before modification
DRY_RUN=false            # Actually perform fixes
FIX_METADATA=true        # Generate missing metadata
FIX_FILENAME=true        # Correct filenames from EXIF
FIX_GPS=false            # Only enhance existing GPS
FIX_COLORS=true          # Extract color information
```

## Command Reference

### Basic Validation Commands

```bash
# Single file validation
mmp -f photo.jpg --validate

# JSON output for automation
mmp -f photo.jpg --validate --json

# Quiet mode (minimal output)
mmp -f photo.jpg --validate --quiet

# Verbose detailed output
mmp -f photo.jpg --validate --verbose
```

### Auto-Fix Commands

```bash
# Enable auto-fix
mmp -f photo.jpg --validate --auto-fix

# Auto-fix with backup
mmp -f photo.jpg --validate --auto-fix --backup

# Dry run preview
mmp -f photo.jpg --validate --auto-fix --dry-run

# Custom backup location
mmp -f photo.jpg --validate --auto-fix --backup-dir=/backups

# Selective fix types
mmp -f photo.jpg --validate --auto-fix --auto-fix-types=metadata,colors
```

### Batch Processing Commands

```bash
# Directory validation
mmp -D /photos --validate --recursive

# Parallel processing
find /photos -name "*.jpg" | xargs -P 8 -I {} mmp -f {} --validate --json

# Filter by validation results
mmp -D /photos --validate --json | jq '.files[] | select(.passed == false)'
```

## Workflow Examples

### New Photo Import Workflow

```bash
#!/bin/bash
# Import and validate new photos

IMPORT_DIR="/photos/import"
ARCHIVE_DIR="/photos/archive"

echo "📷 Processing new photos in $IMPORT_DIR"

# 1. Validate all photos
echo "🔍 Step 1: Validating photos..."
failed_count=0
total_count=0

for photo in "$IMPORT_DIR"/*.{jpg,jpeg,png,heic}; do
  if [[ -f "$photo" ]]; then
    ((total_count++))
    
    # Validate with auto-fix
    if ! mmp -f "$photo" --validate --auto-fix --quiet; then
      ((failed_count++))
      echo "❌ Failed: $(basename "$photo")"
    else
      echo "✅ Passed: $(basename "$photo")"
    fi
  fi
done

echo "📊 Results: $((total_count - failed_count))/$total_count photos passed validation"

# 2. Move validated photos to archive
if [[ $failed_count -eq 0 ]]; then
  echo "🗂️ Step 2: Moving photos to archive..."
  mv "$IMPORT_DIR"/*.{jpg,jpeg,png,heic} "$ARCHIVE_DIR"/
  echo "✅ Import complete!"
else
  echo "⚠️ $failed_count photos failed validation - review before archiving"
fi
```

### Heritage Photo Processing Workflow

```bash
#!/bin/bash
# Process heritage scanned photos

SCAN_DIR="/photos/heritage/scans"
ARCHIVE_DIR="/photos/heritage/archive"

echo "📸 Processing heritage scans in $SCAN_DIR"

for scan in "$SCAN_DIR"/*.{tiff,tif,jpg}; do
  if [[ -f "$scan" ]]; then
    echo "🔍 Validating: $(basename "$scan")"
    
    # Validate heritage photo with comprehensive auto-fix
    result=$(mmp -f "$scan" --validate --auto-fix --json)
    
    # Check if validation passed
    if echo "$result" | jq -e '.passed' > /dev/null; then
      echo "✅ Heritage validation passed"
      
      # Extract photo type and score for logging
      photo_type=$(echo "$result" | jq -r '.photoType.type')
      score=$(echo "$result" | jq -r '.overallScore')
      
      echo "📋 Type: $photo_type, Score: $score%"
      
      # Move to archive if high quality
      if [[ $(echo "$result" | jq -r '.overallScore >= 90') == "true" ]]; then
        mv "$scan" "$ARCHIVE_DIR"/
        echo "🗂️ Moved to archive (high quality)"
      fi
    else
      echo "❌ Heritage validation failed"
      # Keep in scans directory for manual review
    fi
  fi
done
```

### Quality Audit Workflow

```bash
#!/bin/bash
# Audit photo collection quality

COLLECTION_DIR="/photos/archive"
REPORT_FILE="quality_audit_$(date +%Y%m%d).json"

echo "🔍 Starting quality audit of $COLLECTION_DIR"

# Create comprehensive quality report
{
  echo "{"
  echo "  \"audit_date\": \"$(date -Iseconds)\","
  echo "  \"collection_path\": \"$COLLECTION_DIR\","
  echo "  \"results\": ["
  
  first=true
  find "$COLLECTION_DIR" -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.heic" | while read photo; do
    [[ $first == true ]] && first=false || echo ","
    
    # Get validation results
    result=$(mmp -f "$photo" --validate --json)
    
    # Extract key metrics
    echo "    {"
    echo "      \"file\": \"$(basename "$photo")\","
    echo "      \"path\": \"$photo\","
    echo "      \"passed\": $(echo "$result" | jq '.passed'),"
    echo "      \"overall_score\": $(echo "$result" | jq '.overallScore'),"
    echo "      \"weighted_score\": $(echo "$result" | jq '.weightedScore'),"
    echo "      \"photo_type\": $(echo "$result" | jq '.photoType.type')"
    echo -n "    }"
  done
  
  echo ""
  echo "  ]"
  echo "}"
} > "$REPORT_FILE"

echo "📊 Quality audit complete: $REPORT_FILE"

# Generate summary statistics
total=$(jq '.results | length' "$REPORT_FILE")
passed=$(jq '.results | map(select(.passed == true)) | length' "$REPORT_FILE")
avg_score=$(jq '.results | map(.overall_score) | add / length' "$REPORT_FILE")

echo "📈 Summary:"
echo "   Total photos: $total"
echo "   Passed validation: $passed ($((100 * passed / total))%)"
echo "   Average score: ${avg_score}%"
```

## Troubleshooting

### Common Issues

#### "No capture or creation timestamp found"

**Problem:** Photo lacks EXIF timestamp data  
**Solution:**
```bash
# Check if auto-fix can help
mmp -f photo.jpg --validate --auto-fix --dry-run

# Manual timestamp correction
exiftool -DateTimeOriginal="2023:12:25 14:30:00" photo.jpg
```

#### "Heritage metadata missing"

**Problem:** Scanned photo lacks XMP heritage markers  
**Solution:**
```bash
# Add heritage metadata manually
exiftool -XMP:DigitalSourceType="Scanned from original" photo.tiff
exiftool -XMP:DocumentName="Family Photo 1985" photo.tiff
```

#### "File cannot be read"

**Problem:** Corrupted or unsupported file format  
**Solution:**
```bash
# Check file integrity
file photo.jpg
exiftool photo.jpg

# Convert if needed
convert photo.jpg -quality 95 photo_fixed.jpg
```

#### "GPS coordinates present but validation fails"

**Problem:** Corrupted GPS coordinates  
**Solution:**
```bash
# Check GPS data format
exiftool -GPS* photo.jpg

# Fix with auto-fix GPS enhancement
mmp -f photo.jpg --validate --auto-fix --auto-fix-types=gps
```

### Performance Issues

#### Slow validation on large collections

**Solutions:**
```bash
# Use parallel processing
find /photos -name "*.jpg" | xargs -P 8 -I {} mmp -f {} --validate --json

# Skip expensive operations if not needed
mmp -f photo.jpg --validate --no-colors

# Use quiet mode for batch processing
mmp -f photo.jpg --validate --quiet
```

#### High memory usage during batch operations

**Solutions:**
```bash
# Process in smaller batches
find /photos -name "*.jpg" | head -100 | xargs -I {} mmp -f {} --validate

# Use streaming JSON processing
find /photos -name "*.jpg" | while read photo; do
  mmp -f "$photo" --validate --json >> results.jsonl
done
```

### Error Messages

#### "Auto-fix backup creation failed"

**Cause:** Insufficient disk space or permissions  
**Solution:**
```bash
# Check disk space
df -h

# Use custom backup location
mmp -f photo.jpg --validate --auto-fix --backup-dir=/tmp/backups

# Disable backup if space constrained
mmp -f photo.jpg --validate --auto-fix --no-backup
```

#### "Validation rule execution failed"

**Cause:** Corrupted EXIF data or system resource issues  
**Solution:**
```bash
# Check EXIF data
exiftool photo.jpg

# Retry with verbose logging
mmp -f photo.jpg --validate --verbose

# Skip problematic rules
mmp -f photo.jpg --validate --skip-rules=gps,exposure
```

## Related Documentation

- [MMP Validate Rule Reference](./mmp-validate-rules.md) - Detailed rule specifications
- [MMP Validate Configuration](./mmp-validate-configuration.md) - Advanced configuration options
- [MMP Validate Auto-Fix Reference](./mmp-validate-autofix.md) - Complete auto-fix capabilities
- [MMP CLI Reference](./cli.md) - Complete command-line interface documentation
- [Heritage Photo Processing](./heritage-photo-enrichment.md) - Heritage-specific workflows

---

**System Status:** Production Ready  
**Last Validation:** July 28, 2025  
**Test Coverage:** 49/49 tests passing  
**Quality Gates:** ✅ ESLint, ✅ TypeScript, ✅ Build Pipeline