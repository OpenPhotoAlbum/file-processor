# MMP Validate - Configuration Guide

**Version:** 1.0  
**Last Updated:** July 28, 2025  
**Scope:** Advanced configuration options for validation and auto-fix systems

## Overview

The MMP Validate system provides extensive configuration options for scoring thresholds, rule weights, auto-fix behavior, and integration settings. This guide covers all configuration options with practical examples and use case recommendations.

## Table of Contents

1. [Configuration Architecture](#configuration-architecture)
2. [Scoring Configuration](#scoring-configuration)
3. [Auto-Fix Configuration](#auto-fix-configuration)
4. [CLI Configuration](#cli-configuration)
5. [Use Case Templates](#use-case-templates)
6. [Environment Variables](#environment-variables)
7. [Configuration Examples](#configuration-examples)

## Configuration Architecture

### Configuration Hierarchy

1. **Default Configuration** - Built-in system defaults
2. **Environment Variables** - Runtime environment settings
3. **CLI Arguments** - Command-line overrides
4. **Configuration Files** - Future: JSON/YAML configuration files

### Configuration Sources

```typescript
// ValidationService configuration
const validationService = new ValidationService({
  thresholds: { critical: 100, quality: 80, bonus: 60, overall: 85 },
  weights: { critical: 3.5, quality: 2.5, bonus: 1.5, expected: 3.0 }
});

// AutoFixService configuration  
const autoFixService = new AutoFixService(validationService, {
  enableBackup: true,
  dryRun: false,
  backupDirectory: '/custom/backup/path',
  fixTypes: {
    missingMetadata: true,
    incorrectFilename: false,
    missingGPS: true,
    missingColors: false
  }
});
```

## Scoring Configuration

### ScoringConfig Interface

```typescript
interface ScoringConfig {
  thresholds: {
    critical: number;    // All critical rules must pass (default: 100%)
    quality: number;     // Quality threshold (default: 70%)
    bonus: number;       // Bonus threshold (default: 50%)
    expected: number;    // Expected threshold for heritage (default: 60%)
    overall: number;     // Overall weighted score threshold (default: 75%)
  };
  weights: {
    critical: number;    // Weight multiplier for critical rules (default: 3.0)
    quality: number;     // Weight multiplier for quality rules (default: 2.0)
    bonus: number;       // Weight multiplier for bonus rules (default: 1.0)
    expected: number;    // Weight multiplier for expected rules (default: 2.5)
  };
}
```

### Default Scoring Configuration

```typescript
const defaultConfig: ScoringConfig = {
  thresholds: {
    critical: 100,    // All critical rules must pass
    quality: 70,      // 70% of quality rules must pass
    bonus: 50,        // 50% of bonus rules must pass
    expected: 60,     // 60% of expected rules must pass (heritage)
    overall: 75       // 75% overall weighted score
  },
  weights: {
    critical: 3.0,    // Critical rules weighted 3x
    quality: 2.0,     // Quality rules weighted 2x
    bonus: 1.0,       // Bonus rules normal weight
    expected: 2.5     // Expected rules weighted 2.5x (heritage)
  }
};
```

### Threshold Configuration Guidelines

#### Critical Threshold (100% - Not Configurable)
- **Purpose:** Critical rules ensure basic archival integrity
- **Recommendation:** Always keep at 100%
- **Impact:** All critical rules must pass for photo to be considered valid
- **Use Cases:** All scenarios require 100% critical compliance

#### Quality Threshold (Default: 70%)

| Use Case | Recommended Threshold | Rationale |
|----------|----------------------|-----------|
| **Archival Standards** | 80-90% | Professional archive requirements |
| **Personal Collection** | 60-70% | Balance quality with practicality |
| **Bulk Import** | 50-60% | Accept lower quality for volume processing |
| **Professional Work** | 90-100% | Strict quality requirements |
| **Heritage Preservation** | 70-80% | Balance preservation with practicality |

#### Bonus Threshold (Default: 50%)

| Use Case | Recommended Threshold | Rationale |
|----------|----------------------|-----------|
| **Professional Photography** | 70-80% | Expect high-end camera features |
| **Smartphone Photos** | 30-50% | Limited bonus features available |
| **Mixed Collection** | 50% | Balanced expectation |
| **High-End Equipment** | 80-90% | Premium camera capabilities |

#### Overall Threshold (Default: 75%)

| Use Case | Recommended Threshold | Rationale |
|----------|----------------------|-----------|
| **Strict Quality Control** | 85-95% | Premium collections only |
| **Standard Archival** | 75-85% | Good balance of quality and acceptance |
| **Bulk Processing** | 65-75% | Higher acceptance for volume |
| **Mixed Quality Sources** | 60-70% | Accommodate varying source quality |

### Weight Configuration Guidelines

#### Weight Multiplier Impact

```
Final Score = (Critical × 3.0) + (Quality × 2.0) + (Bonus × 1.0) + (Expected × 2.5)
Max Possible = (Critical_Max × 3.0) + (Quality_Max × 2.0) + (Bonus_Max × 1.0) + (Expected_Max × 2.5)
Weighted Percentage = (Final Score / Max Possible) × 100
```

#### Critical Weight (Default: 3.0)

| Weight Value | Impact | Use Case |
|-------------|--------|----------|
| **2.0-2.5** | Lower emphasis | When critical rules are basic requirements |
| **3.0** | Standard emphasis | Balanced validation approach |
| **3.5-4.0** | Higher emphasis | When critical compliance is paramount |

#### Quality Weight (Default: 2.0)

| Weight Value | Impact | Use Case |
|-------------|--------|----------|
| **1.5** | Lower emphasis | Focus on basic compliance |
| **2.0** | Standard emphasis | Balanced quality expectations |
| **2.5-3.0** | Higher emphasis | Professional quality standards |

#### Bonus Weight (Default: 1.0)

| Weight Value | Impact | Use Case |
|-------------|--------|----------|
| **0.5** | Minimal impact | Bonus features not important |
| **1.0** | Standard impact | Nice-to-have features |
| **1.5-2.0** | Higher impact | Premium features valued |

## Auto-Fix Configuration

### AutoFixConfig Interface

```typescript
interface AutoFixConfig {
  enableBackup: boolean;           // Create backups before modification
  backupDirectory?: string;        // Custom backup location
  dryRun: boolean;                // Preview changes without modification
  fixTypes: {
    missingMetadata: boolean;      // Generate metadata sidecars
    incorrectFilename: boolean;    // Correct filenames from EXIF
    missingGPS: boolean;          // Enhance existing GPS coordinates
    missingColors: boolean;       // Extract color information
  };
}
```

### Default Auto-Fix Configuration

```typescript
const defaultAutoFixConfig: AutoFixConfig = {
  enableBackup: true,
  dryRun: false,
  fixTypes: {
    missingMetadata: true,
    incorrectFilename: true,
    missingGPS: false,    // Only enhance existing GPS
    missingColors: true
  }
};
```

### Fix Type Configuration

#### Missing Metadata (Default: enabled)
- **Purpose:** Generate comprehensive metadata sidecars
- **Performance Impact:** Moderate (processes entire file)
- **Storage Impact:** ~4KB per photo
- **Recommendation:** Enable for most use cases
- **Disable When:** Storage constrained or processing speed critical

#### Incorrect Filename (Default: enabled)
- **Purpose:** Rename files based on EXIF capture date
- **Safety:** Creates backup before rename
- **Format:** `YYYY-MM-DD_HH-MM-SS_###.ext`
- **Recommendation:** Enable for organization workflows
- **Disable When:** Filename preservation required

#### Missing GPS (Default: disabled)
- **Purpose:** Enhance existing GPS with reverse geocoding
- **Behavior:** Only works if GPS coordinates already present
- **Performance Impact:** Network requests for geocoding
- **Recommendation:** Enable when GPS enhancement desired
- **Disable When:** No network access or privacy concerns

#### Missing Colors (Default: enabled)
- **Purpose:** Extract dominant colors for visual search
- **Performance Impact:** Low (quick color analysis)
- **Storage Impact:** Minimal (~100 bytes per photo)
- **Recommendation:** Enable unless performance critical
- **Disable When:** Color data not needed

### Backup Configuration

#### Backup Directory Structure

```
/path/to/photo.jpg
/path/to/.autofix-backup/
  └── 2025-07-28T15-30-45/
      ├── photo.jpg           # Original file backup
      └── photo.jpg.json      # Original sidecar backup (if exists)
```

#### Custom Backup Directory

```typescript
// Environment variable
export AUTOFIX_BACKUP_DIR="/dedicated/backup/storage"

// CLI argument
mmp -f photo.jpg --validate --auto-fix --backup-dir=/custom/backups

// Programmatic configuration
const autoFixService = new AutoFixService(validationService, {
  enableBackup: true,
  backupDirectory: '/custom/backup/location'
});
```

## CLI Configuration

### Command-Line Arguments

#### Validation Arguments

```bash
# Scoring threshold overrides (not currently implemented - future feature)
mmp -f photo.jpg --validate --quality-threshold=80 --overall-threshold=85

# Rule weight overrides (not currently implemented - future feature)  
mmp -f photo.jpg --validate --critical-weight=3.5 --quality-weight=2.5
```

#### Auto-Fix Arguments

```bash
# Enable auto-fix with backup
mmp -f photo.jpg --validate --auto-fix --backup

# Dry run preview
mmp -f photo.jpg --validate --auto-fix --dry-run

# Custom backup location
mmp -f photo.jpg --validate --auto-fix --backup-dir=/backups

# Selective fix types
mmp -f photo.jpg --validate --auto-fix --auto-fix-types=metadata,filename

# Disable specific fix types
mmp -f photo.jpg --validate --auto-fix --auto-fix-types=metadata,colors
```

### Output Configuration

```bash
# JSON output for automation
mmp -f photo.jpg --validate --json

# Quiet mode (minimal output)
mmp -f photo.jpg --validate --quiet

# Verbose detailed output
mmp -f photo.jpg --validate --verbose
```

## Use Case Templates

### Template 1: Professional Archive

**Scenario:** Professional photography archive with strict quality standards

```typescript
const professionalConfig: ScoringConfig = {
  thresholds: {
    critical: 100,    // All critical rules must pass
    quality: 90,      // 90% quality compliance required
    bonus: 70,        // Expect high-end camera features
    expected: 80,     // Heritage photos need good documentation
    overall: 88       // High overall standard
  },
  weights: {
    critical: 3.5,    // Critical rules heavily weighted
    quality: 3.0,     // Quality very important
    bonus: 1.5,       // Bonus features valued
    expected: 3.0     // Heritage documentation important
  }
};

const professionalAutoFix: AutoFixConfig = {
  enableBackup: true,
  dryRun: false,
  fixTypes: {
    missingMetadata: true,    // Generate comprehensive metadata
    incorrectFilename: false, // Preserve existing naming
    missingGPS: true,         // Enhance GPS when available
    missingColors: true       // Extract colors for categorization
  }
};
```

**CLI Usage:**
```bash
# Professional validation workflow
mmp -f *.jpg --validate --auto-fix --backup --auto-fix-types=metadata,gps,colors
```

### Template 2: Personal Family Collection

**Scenario:** Family photo collection with mixed quality sources

```typescript
const familyConfig: ScoringConfig = {
  thresholds: {
    critical: 100,    // Basic integrity required
    quality: 60,      // Relaxed quality standards
    bonus: 40,        // Limited bonus expectations
    expected: 60,     // Moderate heritage documentation
    overall: 70       // Moderate overall standard
  },
  weights: {
    critical: 3.0,    // Standard critical weight
    quality: 1.8,     // Slightly lower quality emphasis
    bonus: 0.8,       // Limited bonus impact
    expected: 2.0     // Moderate heritage importance
  }
};

const familyAutoFix: AutoFixConfig = {
  enableBackup: true,
  dryRun: false,
  fixTypes: {
    missingMetadata: true,    // Generate metadata for organization
    incorrectFilename: true,  // Organize with date-based names
    missingGPS: false,        // Privacy - don't enhance GPS
    missingColors: true       // Extract colors for browsing
  }
};
```

**CLI Usage:**
```bash
# Family collection processing
mmp -D /family-photos --validate --auto-fix --recursive --auto-fix-types=metadata,filename,colors
```

### Template 3: Bulk Import Processing

**Scenario:** Large-scale import with emphasis on speed and acceptance

```typescript
const bulkConfig: ScoringConfig = {
  thresholds: {
    critical: 100,    // Must maintain integrity
    quality: 50,      // Very relaxed quality standards
    bonus: 30,        // Minimal bonus expectations
    expected: 40,     // Low heritage documentation requirements
    overall: 60       // Low overall threshold for acceptance
  },
  weights: {
    critical: 3.0,    // Standard critical weight
    quality: 1.5,     // Lower quality emphasis
    bonus: 0.5,       // Minimal bonus impact
    expected: 1.5     // Lower heritage weight
  }
};

const bulkAutoFix: AutoFixConfig = {
  enableBackup: false,      // Skip backup for speed
  dryRun: false,
  fixTypes: {
    missingMetadata: true,    // Generate basic metadata
    incorrectFilename: false, // Skip filename changes for speed
    missingGPS: false,        // Skip GPS processing
    missingColors: false      // Skip color extraction for speed
  }
};
```

**CLI Usage:**
```bash
# High-speed bulk processing
find /import -name "*.jpg" | xargs -P 8 -I {} mmp -f {} --validate --auto-fix --quiet --auto-fix-types=metadata
```

### Template 4: Heritage Preservation

**Scenario:** Historical photo preservation with emphasis on documentation

```typescript
const heritageConfig: ScoringConfig = {
  thresholds: {
    critical: 100,    // Full integrity required
    quality: 75,      // Higher quality for preservation
    bonus: 40,        // Limited modern bonus features
    expected: 80,     // High heritage documentation standards
    overall: 80       // High overall preservation standard
  },
  weights: {
    critical: 3.0,    // Standard critical weight
    quality: 2.5,     // Higher quality importance
    bonus: 0.5,       // Minimal bonus relevance
    expected: 3.5     // Heritage documentation critical
  }
};

const heritageAutoFix: AutoFixConfig = {
  enableBackup: true,
  dryRun: false,
  fixTypes: {
    missingMetadata: true,    // Comprehensive heritage metadata
    incorrectFilename: true,  // Organize by historical dates
    missingGPS: false,        // Heritage photos rarely have GPS
    missingColors: true       // Colors important for preservation
  }
};
```

**CLI Usage:**
```bash
# Heritage preservation workflow
mmp -f heritage_scan.tiff --validate --auto-fix --backup --auto-fix-types=metadata,filename,colors --verbose
```

## Environment Variables

### Validation Environment Variables

```bash
# Scoring thresholds (future feature)
export MMP_VALIDATION_QUALITY_THRESHOLD=80
export MMP_VALIDATION_BONUS_THRESHOLD=60
export MMP_VALIDATION_OVERALL_THRESHOLD=85

# Rule weights (future feature)
export MMP_VALIDATION_CRITICAL_WEIGHT=3.5
export MMP_VALIDATION_QUALITY_WEIGHT=2.5
export MMP_VALIDATION_BONUS_WEIGHT=1.2
```

### Auto-Fix Environment Variables

```bash
# Auto-fix behavior
export MMP_AUTOFIX_ENABLE_BACKUP=true
export MMP_AUTOFIX_BACKUP_DIR="/dedicated/backup/storage"
export MMP_AUTOFIX_DRY_RUN=false

# Fix type defaults
export MMP_AUTOFIX_METADATA=true
export MMP_AUTOFIX_FILENAME=true
export MMP_AUTOFIX_GPS=false
export MMP_AUTOFIX_COLORS=true
```

### Integration Environment Variables

```bash
# Processing pipeline integration
export GEOLOCATION_ENABLED=true
export RECREATION_GOV_PROVIDER_ENABLED=false
export GNIS_PROVIDER_ENABLED=true
export NPS_PROVIDER_ENABLED=true
export LANDMARK_MAX_RADIUS=50000
```

## Configuration Examples

### Example 1: Development Testing

```bash
#!/bin/bash
# Development testing configuration

export MMP_AUTOFIX_DRY_RUN=true
export MMP_AUTOFIX_BACKUP_DIR="/tmp/test-backups"

# Test with relaxed thresholds
mmp -f test_photos/*.jpg --validate --auto-fix --auto-fix-types=metadata,colors
```

### Example 2: Production Archive

```bash
#!/bin/bash
# Production archive configuration

export MMP_AUTOFIX_ENABLE_BACKUP=true
export MMP_AUTOFIX_BACKUP_DIR="/archive/backups"

# High-quality processing with comprehensive auto-fix
find /archive/import -name "*.jpg" | while read photo; do
  echo "Processing: $(basename "$photo")"
  mmp -f "$photo" --validate --auto-fix --backup --auto-fix-types=metadata,filename,gps,colors
  
  # Check validation result
  if [ $? -eq 0 ]; then
    mv "$photo" /archive/validated/
  else
    mv "$photo" /archive/review/
  fi
done
```

### Example 3: Batch Heritage Processing

```bash
#!/bin/bash
# Heritage collection batch processing

export MMP_AUTOFIX_BACKUP_DIR="/heritage/backups"

# Process heritage scans with appropriate settings
for scan in /heritage/scans/*.{tiff,tif}; do
  if [[ -f "$scan" ]]; then
    echo "Processing heritage scan: $(basename "$scan")"
    
    # Validate with heritage-optimized settings
    mmp -f "$scan" --validate --auto-fix --backup \
        --auto-fix-types=metadata,filename,colors \
        --verbose
        
    # Generate processing report
    echo "Completed: $(basename "$scan")" >> /heritage/processing.log
  fi
done
```

### Example 4: Quality Assurance Workflow

```bash
#!/bin/bash
# Quality assurance validation workflow

# Phase 1: Initial validation with auto-fix
echo "Phase 1: Auto-fix processing"
mmp -D /photos/incoming --validate --auto-fix --recursive \
    --auto-fix-types=metadata,filename,colors \
    --backup-dir=/qa/backups

# Phase 2: Strict validation check
echo "Phase 2: Quality validation"
validation_results="/qa/validation_report.json"

find /photos/incoming -name "*.jpg" | while read photo; do
  result=$(mmp -f "$photo" --validate --json)
  echo "$result" >> "$validation_results"
  
  # Check if passed strict validation
  passed=$(echo "$result" | jq '.passed')
  score=$(echo "$result" | jq '.overallScore')
  
  if [[ "$passed" == "true" ]] && [[ $(echo "$score >= 85" | bc) == "1" ]]; then
    mv "$photo" /photos/approved/
  else
    mv "$photo" /photos/review/
  fi
done

# Phase 3: Generate summary report
echo "Phase 3: Summary report"
total=$(jq -s 'length' "$validation_results")
passed=$(jq -s 'map(select(.passed == true)) | length' "$validation_results")
avg_score=$(jq -s 'map(.overallScore) | add / length' "$validation_results")

echo "QA Summary:"
echo "  Total processed: $total"
echo "  Passed validation: $passed"
echo "  Pass rate: $((100 * passed / total))%"
echo "  Average score: ${avg_score}%"
```

## Configuration Best Practices

### Threshold Setting Guidelines

1. **Start Conservative:** Begin with default thresholds and adjust based on results
2. **Test Incrementally:** Make small threshold adjustments and validate impact
3. **Document Changes:** Keep record of configuration changes and rationale
4. **Monitor Results:** Track pass rates and score distributions over time

### Auto-Fix Safety Practices

1. **Always Enable Backup:** Unless storage is severely constrained
2. **Test with Dry Run:** Preview changes before applying to valuable photos
3. **Selective Fix Types:** Only enable fixes appropriate for your use case
4. **Monitor Disk Space:** Auto-fix can generate significant backup data

### Performance Optimization

1. **Parallel Processing:** Use appropriate parallel processing for batch operations
2. **Selective Processing:** Skip unnecessary fix types for speed
3. **Network Considerations:** Disable GPS enhancement if network is limited
4. **Storage Planning:** Plan backup storage requirements for large collections

## Related Documentation

- [MMP Validate System](./mmp-validate-system.md) - Complete user guide
- [MMP Validate Rule Reference](./mmp-validate-rules.md) - Detailed rule specifications
- [MMP Validate Auto-Fix Reference](./mmp-validate-autofix.md) - Auto-fix capabilities
- [CLI Reference](./cli.md) - Command-line interface documentation

---

**Configuration Version:** 1.0  
**Last Updated:** July 28, 2025  
**Compatibility:** MMP Validate System 1.0  
**Status:** Production Ready