# JSON to Relational Migration - Findings & Plan

**Date**: June 30, 2025  
**Status**: Critical architectural cleanup needed

## Executive Summary

The current system has significant data duplication across JSON columns and incomplete relational data storage. JSON columns were intended as temporary storage during development but have become a source of data inconsistency and architectural debt.

## Key Findings

### 1. **Massive Data Duplication**

#### Within-Table Duplication (Successfully Cleaned)
- ✅ GPS coordinates duplicated between `media_files` columns and JSON
- ✅ Camera settings duplicated between table columns and JSON  
- ✅ Equipment info duplicated between `equipment` table and JSON
- **Result**: ~6-15% size reduction per file after cleanup

#### Cross-Table Duplication (Still Present)
- ❌ Complete location data stored in BOTH:
  - `media_files.media_metadata.location.*`
  - `media_locations.geolocation_data.*`
- **Impact**: ~800-1500 bytes duplicated per file with location data

### 2. **Incomplete Relational Storage**

#### Landmark Storage Failure
- **Critical Issue**: Only 2 out of 10 landmarks stored in relational tables
- **Example**: File `2025/06/2025-06-24_20-58-12_001.JPG`
  - JSON has 10 landmarks (Hales Island, Johnson Creek, etc.)
  - Relational tables only have 2 landmarks
  - 80% data loss in relational storage!

#### Missing Relational Data
- **GPS Metadata**: accuracy, altitude, timestamp not in `media_locations` columns
- **Enrichment Status**: providers used, cache hits, query times only in JSON
- **Landmark Metadata**: confidence scores, relationships, match methods only in JSON
- **Processing Details**: provider results/failures not properly tracked

### 3. **Current Architecture Problems**

```
Current State (BAD):
media_files 
├── media_metadata (JSON) ← Contains location, landmarks, enrichment
├── camera_exif (JSON) ← Contains technical EXIF data
└── [relational links...]

media_locations
├── latitude, longitude (columns) ← Good
├── geolocation_data (JSON) ← Duplicates media_metadata.location!
└── city_id, state_id, country_id ← Good (after our fix)

Issues:
- Same data in multiple places
- JSON queries are inefficient  
- No single source of truth
- Data consistency problems
```

## Root Causes

1. **LandmarkService Bug**: Only processes first 2 landmarks instead of all
2. **Incomplete Schema**: Missing columns/tables for full data normalization
3. **Service Design**: Services store in JSON "just in case" vs proper relational design
4. **Migration Gaps**: Foreign key resolution was disabled (we fixed this)

## Proposed Solution

### Phase 1: Fix Immediate Issues
1. **Fix LandmarkService** to store ALL landmarks (not just 2)
2. **Remove cross-table JSON duplication** (location data)
3. **Add missing columns** to existing tables

### Phase 2: Complete Normalization
1. **Create new tables**:
   - `enrichment_runs` - Track provider usage, timing, cache hits
   - `gps_metadata` - Store accuracy, altitude, acquisition time
   - `landmark_metadata` - Store confidence, relationship, match method

2. **Enhance existing tables**:
   - `media_locations` - Add accuracy, altitude, gps_timestamp columns
   - `processing_runs` - Properly track provider results/failures
   - `media_landmarks` - Add confidence, relationship columns

### Phase 3: Remove JSON Columns
1. **Migrate all remaining JSON data** to relational tables
2. **Update services** to read from relational tables only
3. **Drop JSON columns** entirely

## Target Architecture

```
Target State (GOOD):
media_files (core data only, NO JSON)
├── media_locations (complete GPS + geo data)
│   ├── latitude, longitude, altitude
│   ├── accuracy, gps_timestamp
│   └── city_id, state_id, country_id
├── media_landmarks (complete associations)
│   ├── landmark_id, distance_meters
│   ├── confidence, relationship
│   └── match_method
├── processing_runs (complete tracking)
│   ├── providers_enabled (JSON array)
│   ├── providers_with_results (JSON array)
│   └── provider_failures (JSON object)
└── enrichment_runs (new table)
    ├── cache_hit, query_time_ms
    └── providers_used (JSON array)
```

## Benefits of Pure Relational

1. **Performance**: Indexed columns vs JSON parsing
2. **Consistency**: Single source of truth
3. **Queryability**: SQL joins vs JSON extraction
4. **Storage**: No duplication, ~30-40% size reduction
5. **Maintainability**: Clear schema, easier debugging

## Immediate Action Items

1. [ ] Fix LandmarkService to store all landmarks
2. [ ] Create migration to add missing columns
3. [ ] Remove `media_metadata.location` duplication
4. [ ] Properly populate `processing_runs` provider tracking
5. [ ] Design and create `enrichment_runs` table

## Long-term Goal

**Complete elimination of JSON columns** - Everything should be properly normalized in relational tables. JSON was meant to be temporary during development, not a permanent storage solution.