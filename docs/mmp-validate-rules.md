# MMP Validate - Rule Reference Documentation

**Version:** 1.0  
**Last Updated:** July 28, 2025  
**Photo Types:** Post-Digital and Heritage-Scan

## Overview

This document provides detailed specifications for all validation rules in the MMP Validate system. Rules are categorized by importance and applied based on detected photo type.

## Rule Categories

| Category | Weight | Pass Threshold | Purpose |
|----------|--------|----------------|---------|
| **Critical** | 3.0x | 100% (all must pass) | Essential for archival integrity |
| **Quality** | 2.0x | 70% | Important for professional standards |
| **Bonus** | 1.0x | 50% | Additional value indicators |
| **Expected** | 2.5x | 60% | Heritage-specific requirements |

## Post-Digital Photo Rules

**Total Rules:** 13 (7 critical + 4 quality + 2 bonus)  
**Applied To:** Modern digital cameras, smartphones, DSLR photos

### Critical Rules (7 rules, 100% must pass)

#### PD-CRITICAL-01: File Readable
- **ID:** `pd-critical-file-readable`
- **Weight:** 10 points
- **Purpose:** Ensure file can be opened and metadata extracted
- **Test:** Attempts EXIF extraction using ExifTool
- **Pass Criteria:** EXIF extraction succeeds without errors
- **Failure Examples:**
  - Corrupted file headers
  - Unsupported proprietary formats
  - File permission issues
- **Auto-Fix:** Not available (requires manual file repair)

```json
// Pass Example
{
  "passed": true,
  "score": 10,
  "message": "File successfully read"
}

// Fail Example  
{
  "passed": false,
  "score": 0,
  "message": "File cannot be read",
  "details": "ExifTool extraction failed: corrupted file header"
}
```

#### PD-CRITICAL-02: Valid Image Format
- **ID:** `pd-critical-valid-format`
- **Weight:** 10 points
- **Purpose:** Verify file is a supported image format for processing
- **Supported Formats:** JPEG, PNG, HEIC, GIF, TIFF, WebP
- **Pass Criteria:** MIME type matches supported format list
- **Failure Examples:**
  - Raw camera formats (CR2, NEF, ARW)
  - Document formats (PDF, DOCX)
  - Video files processed as images
- **Auto-Fix:** Not available (requires format conversion)

```json
// Pass Example
{
  "passed": true,
  "score": 10,
  "message": "Valid format: image/jpeg"
}

// Fail Example
{
  "passed": false,
  "score": 0,
  "message": "Unsupported format: image/cr2"
}
```

#### PD-CRITICAL-03: Has Dimensions
- **ID:** `pd-critical-has-dimensions`
- **Weight:** 10 points
- **Purpose:** Ensure image has valid width and height metadata
- **Pass Criteria:** Width > 0 AND Height > 0
- **Data Sources:** EXIF ImageWidth, ImageHeight, or PixelXDimension, PixelYDimension
- **Failure Examples:**
  - Missing dimension metadata
  - Zero or negative dimensions
  - Corrupted EXIF dimension fields
- **Auto-Fix:** Not available (requires image file repair)

```json
// Pass Example
{
  "passed": true,
  "score": 10,
  "message": "Valid dimensions: 4032x3024"
}

// Fail Example
{
  "passed": false,
  "score": 0,
  "message": "Missing or invalid dimensions"
}
```

#### PD-CRITICAL-04: Has Timestamp
- **ID:** `pd-critical-has-timestamp`
- **Weight:** 10 points
- **Purpose:** Verify photo has capture or creation timestamp for chronological organization
- **Data Sources:** 
  1. Metadata sidecar (`timestamps.primary.timestamp` or `timestamps.capture.timestamp`)
  2. EXIF DateTimeOriginal
  3. EXIF CreateDate
- **Pass Criteria:** At least one timestamp source present and valid
- **Auto-Fix:** ✅ Available - generates metadata sidecar with extracted timestamps

```json
// Pass Example (from sidecar)
{
  "passed": true,
  "score": 10,
  "message": "Timestamp present in metadata: 2023-07-15T14:32:45Z"
}

// Pass Example (from EXIF)
{
  "passed": true,
  "score": 10,
  "message": "Timestamp present in EXIF: 2023:07:15 14:32:45"
}

// Fail Example
{
  "passed": false,
  "score": 0,
  "message": "No capture or creation timestamp found"
}
```

#### PD-CRITICAL-05: Minimum Resolution
- **ID:** `pd-critical-minimum-resolution`
- **Weight:** 10 points
- **Purpose:** Ensure adequate resolution for archival preservation
- **Pass Criteria:** ≥0.5 megapixels (minimum archival standard)
- **Calculation:** `(width × height) / 1,000,000`
- **Rationale:** 0.5MP threshold allows vintage digital cameras while excluding thumbnails
- **Auto-Fix:** Not available (resolution cannot be increased)

```json
// Pass Example
{
  "passed": true,
  "score": 10,
  "message": "Resolution adequate: 12.2MP"
}

// Fail Example
{
  "passed": false,
  "score": 0,
  "message": "Resolution too low: 0.3MP (minimum 0.5MP)"
}
```

#### PD-CRITICAL-06: Reasonable File Size
- **ID:** `pd-critical-file-size`
- **Weight:** 10 points
- **Purpose:** Detect corrupted files and ensure reasonable storage efficiency
- **Pass Criteria:** 1KB ≤ file size ≤ 100MB
- **Rationale:** 
  - Minimum 1KB excludes empty/corrupted files
  - Maximum 100MB reasonable for consumer photos (excludes RAW files)
- **Auto-Fix:** Not available (file size cannot be modified safely)

```json
// Pass Example
{
  "passed": true,
  "score": 10,
  "message": "File size OK: 2847KB"
}

// Fail Example (too small)
{
  "passed": false,
  "score": 0,
  "message": "File size issue: 0KB"
}

// Fail Example (too large)
{
  "passed": false,
  "score": 0,
  "message": "File size issue: 150MB"
}
```

#### PD-CRITICAL-07: File Hash Present
- **ID:** `pd-critical-hash-present`
- **Weight:** 10 points
- **Purpose:** Enable deduplication and integrity verification
- **Pass Criteria:** Non-empty hash string present in MediaFile object
- **Hash Algorithm:** SHA-256 (calculated during file processing)
- **Auto-Fix:** ✅ Available - hash calculated during metadata generation

```json
// Pass Example
{
  "passed": true,
  "score": 10,
  "message": "File hash present"
}

// Fail Example
{
  "passed": false,
  "score": 0,
  "message": "File hash missing"
}
```

### Quality Rules (4 rules, 70% must pass)

#### PD-QUALITY-01: Camera Information Present
- **ID:** `pd-quality-camera-info`
- **Weight:** 5 points
- **Purpose:** Verify camera metadata for equipment tracking and photo provenance
- **Data Sources:**
  1. Metadata sidecar (`technical.camera.make` and `technical.camera.model`)
  2. EXIF Make and Model tags
- **Pass Criteria:** Both camera make AND model present
- **Auto-Fix:** ✅ Available - generates metadata sidecar with camera information

```json
// Pass Example
{
  "passed": true,
  "score": 5,
  "message": "Camera: Apple iPhone 13 Pro"
}

// Fail Example
{
  "passed": false,
  "score": 0,
  "message": "Camera information missing"
}
```

#### PD-QUALITY-02: GPS Coordinates Present
- **ID:** `pd-quality-gps-coordinates`
- **Weight:** 5 points
- **Purpose:** Enable location-based photo organization and mapping
- **Data Sources:**
  1. Metadata sidecar (`location.primary.coordinates`)
  2. EXIF GPS latitude and longitude
- **Pass Criteria:** Valid latitude AND longitude coordinates
- **Auto-Fix:** ✅ Available - enhances existing GPS with reverse geocoding (GPS enrichment)

```json
// Pass Example
{
  "passed": true,
  "score": 5,
  "message": "GPS: 44.3776, -68.2039"
}

// Fail Example
{
  "passed": false,
  "score": 0,
  "message": "No GPS coordinates found"
}
```

#### PD-QUALITY-03: Exposure Settings Present
- **ID:** `pd-quality-exposure-settings`
- **Weight:** 5 points
- **Purpose:** Verify technical photography metadata for professional use
- **Data Sources:** EXIF ISO, FNumber (aperture), ShutterSpeedValue
- **Pass Criteria:** At least 2 of 3 exposure settings present
- **Scoring:** Partial credit based on number present (0-5 points)
- **Auto-Fix:** Not available (camera settings cannot be reconstructed)

```json
// Pass Example (all 3 present)
{
  "passed": true,
  "score": 5,
  "message": "Exposure settings: 3/3 present (ISO: true, Aperture: true, Shutter: true)"
}

// Partial Example (2 of 3)
{
  "passed": true,
  "score": 3,
  "message": "Exposure settings: 2/3 present (ISO: true, Aperture: false, Shutter: true)"
}

// Fail Example
{
  "passed": false,
  "score": 0,
  "message": "Exposure settings: 1/3 present (ISO: false, Aperture: false, Shutter: true)"
}
```

#### PD-QUALITY-04: Proper Color Space
- **ID:** `pd-quality-color-space`
- **Weight:** 5 points
- **Purpose:** Ensure color accuracy and cross-platform compatibility
- **Recognized Standards:** sRGB, Adobe RGB, ProPhoto RGB, Display P3
- **Data Source:** EXIF ColorSpace tag
- **Pass Criteria:** Color space matches recognized standard
- **Partial Credit:** 2 points if color space present but not standard
- **Auto-Fix:** Not available (color space conversion not safe without user intent)

```json
// Pass Example
{
  "passed": true,
  "score": 5,
  "message": "Color space: sRGB"
}

// Partial Example
{
  "passed": false,
  "score": 2,
  "message": "Color space: Unknown RGB"
}

// Fail Example
{
  "passed": false,
  "score": 0,
  "message": "No color space information"
}
```

### Bonus Rules (2 rules, 50% must pass)

#### PD-BONUS-01: Focal Length Information
- **ID:** `pd-bonus-focal-length`
- **Weight:** 3 points
- **Purpose:** Additional lens metadata for photography analysis
- **Data Source:** EXIF FocalLength tag
- **Pass Criteria:** Focal length value present and > 0
- **Auto-Fix:** Not available (lens metadata cannot be reconstructed)

```json
// Pass Example
{
  "passed": true,
  "score": 3,
  "message": "Focal length: 26mm"
}

// Fail Example
{
  "passed": false,
  "score": 0,
  "message": "No focal length information"
}
```

#### PD-BONUS-02: High Resolution Image
- **ID:** `pd-bonus-high-resolution`
- **Weight:** 3 points
- **Purpose:** Reward excellent detail preservation capability
- **Pass Criteria:** ≥8.0 megapixels
- **Rationale:** 8MP threshold represents modern camera standards for detail preservation
- **Auto-Fix:** Not available (resolution cannot be increased)

```json
// Pass Example
{
  "passed": true,
  "score": 3,
  "message": "Resolution: 12.2MP (High resolution)"
}

// Fail Example
{
  "passed": false,
  "score": 0,
  "message": "Resolution: 5.1MP (Standard resolution)"
}
```

## Heritage-Scan Photo Rules

**Total Rules:** 12 (6 critical + 3 quality + 3 expected)  
**Applied To:** Scanned family photos, historical documents, digitized film

### Critical Rules (6 rules, 100% must pass)

#### HS-CRITICAL-01: File Readable
- **ID:** `hs-critical-file-readable`
- **Weight:** 10 points
- **Purpose:** Ensure scanned file can be opened and processed
- **Test:** Identical to post-digital file readable test
- **Auto-Fix:** Not available (requires manual file repair)

#### HS-CRITICAL-02: Heritage Metadata Present
- **ID:** `hs-critical-heritage-metadata`
- **Weight:** 10 points
- **Purpose:** Verify file has been properly marked as heritage scan
- **Data Source:** XMP digitalSourceType field
- **Pass Criteria:** digitalSourceType contains "Scanned"
- **Required Metadata:** XMP heritage markers indicating scan provenance
- **Auto-Fix:** ✅ Partially available - metadata sidecar generation includes heritage detection

```json
// Pass Example
{
  "passed": true,
  "score": 10,
  "message": "Heritage metadata present: Scanned from original"
}

// Fail Example
{
  "passed": false,
  "score": 0,
  "message": "No heritage scan metadata found"
}
```

#### HS-CRITICAL-03: Valid Heritage Format
- **ID:** `hs-critical-valid-format`
- **Weight:** 10 points
- **Purpose:** Ensure format suitable for long-term preservation
- **Preferred Formats:** TIFF (lossless), JPEG (high quality)
- **Pass Criteria:** MIME type is image/tiff, image/jpeg, or image/jpg
- **Rationale:** These formats balance preservation quality with accessibility
- **Auto-Fix:** Not available (format conversion requires user decision)

```json
// Pass Example
{
  "passed": true,
  "score": 10,
  "message": "Heritage-suitable format: image/tiff"
}

// Fail Example
{
  "passed": false,
  "score": 0,
  "message": "Format not ideal for heritage: image/png"
}
```

#### HS-CRITICAL-04: Has Scan Dimensions
- **ID:** `hs-critical-has-dimensions`
- **Weight:** 10 points
- **Purpose:** Verify scan resolution metadata present
- **Test:** Identical to post-digital dimensions test
- **Heritage Context:** Dimensions critical for understanding original size
- **Auto-Fix:** Not available (scan dimensions cannot be reconstructed)

#### HS-CRITICAL-05: File Integrity
- **ID:** `hs-critical-file-integrity`
- **Weight:** 10 points
- **Purpose:** Ensure heritage scan file size is reasonable
- **Pass Criteria:** 50KB ≤ file size ≤ 500MB
- **Rationale:** 
  - Minimum 50KB for meaningful scan content
  - Maximum 500MB accommodates high-resolution archival scans
- **Auto-Fix:** Not available (file size issues require re-scanning)

```json
// Pass Example
{
  "passed": true,
  "score": 10,
  "message": "Heritage file size OK: 15MB"
}

// Fail Example
{
  "passed": false,
  "score": 0,
  "message": "Heritage file size issue: 25KB"
}
```

### Quality Rules (3 rules, 70% must pass)

#### HS-QUALITY-01: Adequate Scan DPI
- **ID:** `hs-quality-scan-dpi`
- **Weight:** 5 points
- **Purpose:** Verify sufficient resolution for preservation
- **Data Source:** EXIF XResolution and YResolution
- **Pass Criteria:** Average DPI ≥ 300
- **Partial Credit:** Proportional scoring up to 4/5 points for DPI < 300
- **Rationale:** 300 DPI minimum standard for photographic preservation
- **Auto-Fix:** Not available (DPI set during scanning process)

```json
// Pass Example
{
  "passed": true,
  "score": 5,
  "message": "Scan DPI: 600"
}

// Partial Example
{
  "passed": false,
  "score": 2,
  "message": "Scan DPI: 150"
}

// Fail Example
{
  "passed": false,
  "score": 0,
  "message": "No DPI information in scan"
}
```

#### HS-QUALITY-02: Heritage Dating Information
- **ID:** `hs-quality-heritage-dating`
- **Weight:** 5 points
- **Purpose:** Capture historical timeline information
- **Data Sources:**
  - EXIF DateTimeOriginal (original photo date)
  - EXIF CreateDate (scan date)
  - Future: Heritage-specific date fields
- **Pass Criteria:** At least one date source present
- **Auto-Fix:** ✅ Available - metadata sidecar includes timestamp extraction

```json
// Pass Example (original date)
{
  "passed": true,
  "score": 5,
  "message": "Original date: 1985:12:25 10:30:00"
}

// Pass Example (scan date)
{
  "passed": true,
  "score": 5,
  "message": "Creation date: 2023:07:15 14:32:45"
}

// Fail Example
{
  "passed": false,
  "score": 0,
  "message": "No dating information found"
}
```

#### HS-QUALITY-03: Creator/Scanner Information
- **ID:** `hs-quality-creator-info`
- **Weight:** 3 points
- **Purpose:** Document digitization provenance (optional but valuable)
- **Data Sources:**
  - XMP Creator field
  - XMP Copyright field
  - Future: Artist field
- **Pass Criteria:** Any creator information present
- **Scoring:** Always passes (optional metadata), 3 points if present, 0 if absent
- **Auto-Fix:** Not available (creator information must be manually added)

```json
// Pass Example
{
  "passed": true,
  "score": 3,
  "message": "Creator: Stephen Young"
}

// No Information Example
{
  "passed": true,
  "score": 0,
  "message": "No creator/scanner information (optional)"
}
```

### Expected Rules (3 rules, 60% must pass)

#### HS-EXPECTED-01: Document Title/Description
- **ID:** `hs-expected-document-title`
- **Weight:** 4 points
- **Purpose:** Provide heritage context and searchability
- **Data Sources:**
  - XMP DocumentName
  - XMP ImageDescription
  - Future: Title field
- **Pass Criteria:** At least one descriptive field present
- **Auto-Fix:** ✅ Partially available - metadata sidecar may include extracted descriptions

```json
// Pass Example
{
  "passed": true,
  "score": 4,
  "message": "Document: Family Christmas 1985"
}

// Fail Example
{
  "passed": false,
  "score": 0,
  "message": "No document title/description found"
}
```

#### HS-EXPECTED-02: Preservation Notes
- **ID:** `hs-expected-preservation-notes`
- **Weight:** 4 points
- **Purpose:** Document original condition and processing decisions
- **Data Sources:**
  - XMP UserComment
  - Future: Preservation-specific fields
  - Future: Processing instructions
- **Pass Criteria:** Any preservation-related notes present
- **Auto-Fix:** Not available (preservation notes require manual documentation)

```json
// Pass Example
{
  "passed": true,
  "score": 4,
  "message": "User comment: Original photo slightly faded, contrast enhanced during scan"
}

// Fail Example
{
  "passed": false,
  "score": 0,
  "message": "No preservation notes found"
}
```

## Rule Execution Order

### Processing Flow

1. **Photo Type Detection** - Determines which rule set to apply
2. **File System Validation** - Basic file accessibility checks
3. **Critical Rules** - All must pass for overall validation success
4. **Quality Rules** - Threshold-based scoring (70% pass required)
5. **Bonus/Expected Rules** - Additional scoring based on photo type
6. **Weighted Score Calculation** - Applies category weights
7. **Pass/Fail Determination** - Checks all thresholds

### Optimization Notes

- **EXIF Caching** - Multiple rules extract EXIF data; consider caching within single validation
- **Sidecar Priority** - Validation rules check metadata sidecars first, fall back to EXIF
- **Error Tolerance** - Individual rule failures don't stop validation process
- **Performance** - Average validation time ~300ms per photo including EXIF extraction

## Auto-Fix Rule Support

### Supported Fixes by Rule

| Rule ID | Auto-Fix Available | Fix Type | Notes |
|---------|-------------------|----------|-------|
| pd-critical-hash-present | ✅ | Hash calculation | During metadata generation |
| pd-critical-has-timestamp | ✅ | Metadata sidecar | Extracts timestamps from EXIF |
| pd-quality-camera-info | ✅ | Metadata sidecar | Includes camera make/model |
| pd-quality-gps-coordinates | ✅ | GPS enrichment | Only enhances existing coordinates |
| hs-critical-heritage-metadata | ⚠️ | Partial | Detection only, not creation |
| hs-quality-heritage-dating | ✅ | Metadata sidecar | Timestamp extraction |
| hs-expected-document-title | ⚠️ | Partial | May extract from filename |

### Auto-Fix Limitations

Rules that **cannot** be auto-fixed:
- File format issues (require conversion)
- Resolution problems (cannot increase resolution)
- Corrupted files (require manual repair)
- Missing exposure settings (camera data cannot be reconstructed)
- Scan DPI issues (require re-scanning)
- Creator information (requires manual input)

## Rule Customization

### Scoring Weights

```typescript
interface ScoringConfig {
  weights: {
    critical: 3.0;    // Critical rules weighted 3x
    quality: 2.0;     // Quality rules weighted 2x  
    bonus: 1.0;       // Bonus rules normal weight
    expected: 2.5;    // Expected rules weighted 2.5x
  };
}
```

### Pass Thresholds

```typescript
interface ScoringConfig {
  thresholds: {
    critical: 100;    // All critical rules must pass
    quality: 70;      // 70% of quality rules must pass
    bonus: 50;        // 50% of bonus rules must pass
    expected: 60;     // 60% of expected rules must pass
    overall: 75;      // 75% overall weighted score
  };
}
```

### Adding Custom Rules

Future extension points for custom validation rules:

```typescript
interface ValidationRule {
  id: string;
  name: string;
  description: string;
  category: 'critical' | 'quality' | 'bonus' | 'expected';
  weight: number;
  validate: (file: MediaFile, metadata?: UnknownJsonContent) => Promise<ValidationResult>;
}
```

## Related Documentation

- [MMP Validate System](./mmp-validate-system.md) - Complete user guide
- [MMP Validate Configuration](./mmp-validate-configuration.md) - Advanced configuration
- [MMP Validate Auto-Fix Reference](./mmp-validate-autofix.md) - Auto-fix capabilities
- [Heritage Photo Processing](./heritage-photo-enrichment.md) - Heritage-specific workflows

---

**Rule Set Version:** 1.0  
**Last Updated:** July 28, 2025  
**Validation Coverage:** 91% pass rate across 11 test samples  
**Auto-Fix Support:** 8/15 rules support automated fixes