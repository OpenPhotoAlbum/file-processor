---
title: "MPP Error Code Reference"
description: Auto-generated from error-codes.md
---

# MPP Error Code Reference

**Purpose:** Complete reference for all Media Processing Pipeline error codes  
**Last Updated:** July 26, 2025  
**Status:** Comprehensive error code system

## Error Code Format

MPP error codes follow the pattern: `MPP-[COMPONENT]-[SEVERITY]-[NUMBER]`

### Components
- **PATH** - File system and path operations
- **GPS** - GPS coordinate processing
- **EXIF** - EXIF metadata extraction
- **CONFIG** - Configuration and environment
- **LANDMARK** - Landmark and location services
- **TIMESTAMP** - Date and time processing
- **METADATA** - General metadata operations
- **VALIDATION** - Input validation
- **SYSTEM** - System-level operations

### Severity Levels
- **F** - Fatal (system cannot continue)
- **E** - Error (operation failed but system can continue)
- **W** - Warning (potential issue, operation succeeded)
- **I** - Info (informational, no action required)
- **D** - Debug (diagnostic information)

## Error Codes by Component

### PATH Errors (MPP-PATH-*)

| Code | Severity | Description | Resolution |
|------|----------|-------------|------------|
| MPP-PATH-F-001 | Fatal | File not found | Verify file path exists and is accessible |
| MPP-PATH-D-002 | Debug | Optional file not found | Expected behavior, no action required |
| MPP-PATH-E-003 | Error | Path resolution failed | Check file permissions and path format |
| MPP-PATH-E-004 | Error | Permission denied | Verify read/write permissions on file and directory |

### GPS Errors (MPP-GPS-*)

| Code | Severity | Description | Resolution |
|------|----------|-------------|------------|
| MPP-GPS-W-001 | Warning | GPS conflict detected | Multiple GPS sources disagree, using primary source |
| MPP-GPS-E-002 | Error | GPS extraction failed | EXIF GPS data corrupted or malformed |
| MPP-GPS-W-003 | Warning | Invalid coordinates | GPS coordinates outside valid range (-90 to 90, -180 to 180) |
| MPP-GPS-I-004 | Info | No GPS data | File contains no GPS information (normal for many files) |

### EXIF Errors (MPP-EXIF-*)

| Code | Severity | Description | Resolution |
|------|----------|-------------|------------|
| MPP-EXIF-E-001 | Error | EXIF extraction failed | File may be corrupted or unsupported format |
| MPP-EXIF-E-002 | Error | ExifTool execution failed | Check ExifTool installation and file permissions |
| MPP-EXIF-W-003 | Warning | EXIF data corrupted | Some metadata may be incomplete or invalid |
| MPP-EXIF-E-004 | Error | ExifTool timeout exceeded | Large file or system performance issue |

### Configuration Errors (MPP-CFG-*)

| Code | Severity | Description | Resolution |
|------|----------|-------------|------------|
| MPP-CFG-F-001 | Fatal | Required environment variable missing | Set required environment variable |
| MPP-CFG-E-002 | Error | Invalid configuration value | Check configuration format and valid values |

### Landmark Errors (MPP-LANDMARK-*)

| Code | Severity | Description | Resolution |
|------|----------|-------------|------------|
| MPP-LANDMARK-W-001 | Warning | Provider unavailable | External service down, retrying automatically |
| MPP-LANDMARK-W-002 | Warning | Provider timeout | Network slow, consider increasing timeout |
| MPP-LANDMARK-W-003 | Warning | Rate limit exceeded | Too many requests, automatic backoff applied |
| MPP-LANDMARK-I-004 | Info | No landmarks found | No points of interest within search radius |
| MPP-LANDMARK-E-005 | Error | Invalid API response | External service returned malformed data |

### Timestamp Errors (MPP-TIMESTAMP-*)

| Code | Severity | Description | Resolution |
|------|----------|-------------|------------|
| MPP-TIMESTAMP-ERROR-001 | Error | Timestamp extraction failed | No valid timestamp found in file |
| MPP-TIMESTAMP-WARNING-002 | Warning | Invalid timestamp format | Timestamp exists but format unrecognized |
| MPP-TIMESTAMP-INFO-003 | Info | Timezone missing | Using UTC as default timezone |

## Common Error Scenarios

### File Processing Issues

#### "File not found" (MPP-PATH-F-001)
```bash
# Check file exists
ls -la "/path/to/file.jpg"

# Check permissions
file "/path/to/file.jpg"

# Use absolute path
node pipeline-cli/dist/main.js -f "/absolute/path/to/file.jpg"
```

#### "EXIF extraction failed" (MPP-EXIF-E-001)
```bash
# Test with ExifTool directly
exiftool "/path/to/file.jpg"

# Check file format
file "/path/to/file.jpg"

# Try with different file
node pipeline-cli/dist/main.js -f "sample:vancouver-island.jpg" --json
```

### GPS Processing Issues

#### "No GPS data" (MPP-GPS-I-004)
This is normal for:
- Scanned photos
- Screenshots
- Photos from cameras without GPS
- Photos with GPS stripped for privacy

#### "GPS extraction failed" (MPP-GPS-E-002)
```bash
# Check GPS in EXIF directly
exiftool -GPS* "/path/to/file.jpg"

# Known issue: Video GPS corruption (see GPS coordinate corruption fix)
# Solution: Use the GPS coordinate fix implementation
```

### Landmark Service Issues

#### "Provider unavailable" (MPP-LANDMARK-W-001)
```bash
# Disable problematic provider
RECREATION_GOV_PROVIDER_ENABLED=false node pipeline-cli/dist/main.js -f "photo.jpg"

# Check network connectivity
curl -I https://ridb.recreation.gov/

# Use only local providers
GEOLOCATION_ENABLED=false node pipeline-cli/dist/main.js -f "photo.jpg"
```

#### "No landmarks found" (MPP-LANDMARK-I-004)
```bash
# Increase search radius
LANDMARK_MAX_RADIUS=100000 node pipeline-cli/dist/main.js -f "photo.jpg"

# Check GPS coordinates are valid
echo "GPS: $(exiftool -GPS* photo.jpg)"

# Try with known landmark-rich photo
node pipeline-cli/dist/main.js -f "sample:acadia-national-park.jpg" --json
```

## Error Handling Best Practices

### In Scripts
```bash
# Capture exit code
node pipeline-cli/dist/main.js -f "photo.jpg" --json > output.json
if [ $? -ne 0 ]; then
    echo "Processing failed for photo.jpg"
    # Handle error appropriately
fi

# Separate stdout and stderr
node pipeline-cli/dist/main.js -f "photo.jpg" --json > output.json 2> errors.log
```

### Batch Processing
```bash
# Continue on errors
find /photos -name "*.jpg" | while read photo; do
    node pipeline-cli/dist/main.js -f "$photo" --json > "${photo}.json" 2>/dev/null || {
        echo "Failed: $photo" >> failed-files.log
    }
done
```

### Environment-Specific Handling
```bash
# Production: Disable providers that commonly fail
RECREATION_GOV_PROVIDER_ENABLED=false \
GEOLOCATION_ENABLED=true \
  node pipeline-cli/dist/main.js -f "photo.jpg"

# Development: Enable all providers for testing
GEOLOCATION_ENABLED=true \
RECREATION_GOV_PROVIDER_ENABLED=true \
NPS_PROVIDER_ENABLED=true \
GNIS_PROVIDER_ENABLED=true \
  node pipeline-cli/dist/main.js -f "photo.jpg" --json
```

## Diagnostic Commands

### System Health Check
```bash
# Check all dependencies
node --version
npm --version
docker --version
exiftool -ver

# Check database connectivity
docker exec mykin_db mysql -u kin -p'Dalekini21!' kin -e "SELECT 1;"

# Test with sample media
node pipeline-cli/dist/main.js -f "sample:vancouver-island.jpg" --json
```

### Error Investigation
```bash
# Enable verbose logging (if available)
DEBUG=* node pipeline-cli/dist/main.js -f "photo.jpg" --json

# Check file details
exiftool -a -G1 "photo.jpg"
file "photo.jpg"
identify "photo.jpg"  # ImageMagick

# Test individual components
node pipeline-cli/dist/main.js -f "photo.jpg" --timestamp-only
GEOLOCATION_ENABLED=false node pipeline-cli/dist/main.js -f "photo.jpg" --json
```

## Error Code Registry

For complete error code definitions and implementation details, see:
- **Source:** `/pipeline-cli/src/utils/errors/registry/`
- **Implementation:** `/pipeline-cli/src/utils/errors/`
- **Tests:** `/pipeline-cli/tests/` (error handling test cases)

---

**Error Code Status:** ✅ Comprehensive structured error system operational across all components