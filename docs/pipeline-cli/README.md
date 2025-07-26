# Pipeline CLI - Core Processing Engine

**Purpose:** Core media processing system for metadata extraction, enrichment, and database integration  
**Last Updated:** July 26, 2025  
**Status:** Production grade - 150,000+ photos processed successfully

## Overview

The Pipeline CLI is the heart of the Media Processing Pipeline system, providing robust metadata extraction, GPS enrichment, and database integration for photos and videos.

## Quick Usage

### Basic Photo Processing
```bash
# Process single photo with full enrichment
node pipeline-cli/dist/main.js -f "/path/to/photo.jpg" -o "metadata.json"

# JSON output only (no logs) - perfect for scripting
node pipeline-cli/dist/main.js -f "/path/to/photo.jpg" --json

# Extract timestamp for filename generation
node pipeline-cli/dist/main.js -f "/path/to/photo.jpg" --timestamp-only
# Output: 2023-07-15_14-32-45
```

### Batch Processing
```bash
# Process all photos in directory
find /photos -name "*.jpg" | head -10 | while read photo; do
  node pipeline-cli/dist/main.js -f "$photo" --json > "${photo}.json"
done
```

### Environment Configuration
```bash
# Enable all location services (default)
GEOLOCATION_ENABLED=true \
RECREATION_GOV_PROVIDER_ENABLED=true \
NPS_PROVIDER_ENABLED=true \
GNIS_PROVIDER_ENABLED=true \
  node pipeline-cli/dist/main.js -f "photo.jpg" --json

# Disable geolocation for faster processing
GEOLOCATION_ENABLED=false node pipeline-cli/dist/main.js -f "photo.jpg" -o "output.json"
```

## What It Does

### Metadata Extraction
- **EXIF data** - Camera settings, timestamps, GPS coordinates
- **Technical analysis** - Image dimensions, color profiles, camera equipment
- **File information** - Format, size, creation dates
- **Live Photo detection** - Apple Live Photo identification and pairing

### GPS & Location Enrichment
- **Reverse geocoding** - Convert GPS coordinates to addresses
- **Landmark detection** - Find nearby points of interest within configurable radius
- **Multi-source integration:**
  - **Recreation.gov** - Federal recreation facilities and campgrounds
  - **GNIS** - US Geological Survey geographic features database
  - **National Parks Service** - Parks, monuments, and historic sites
  - **Municipal boundaries** - City and county information

### Heritage Photo Analysis
- **XMP metadata detection** - Enhanced photos with additional metadata
- **AI-powered analysis** - Historical context and content analysis via Claude
- **Series linking** - Connect related heritage photos
- **Context enrichment** - Add historical and cultural context

### Database Integration
- **Normalized schema** - Efficient relational database storage
- **Foreign key relationships** - Geographic and equipment data normalization
- **Intelligent merging** - Preserve existing data when reprocessing
- **Zero data loss** - All original metadata preserved

## Architecture

### Component Overview
- **[Architecture Documentation](architecture/README.md)** - System design and patterns
- **[API Documentation](apis/README.md)** - Internal API references
- **[Development Guide](development/README.md)** - Extension and contribution guide

### Processing Pipeline
1. **Pre-processing** - File validation and type detection
2. **Processor routing** - Image vs video processing paths
3. **Metadata extraction** - EXIF, technical, and format-specific data
4. **GPS enrichment** - Location services and landmark detection
5. **Heritage analysis** - AI-powered historical analysis (if applicable)
6. **Database storage** - Normalized relational storage
7. **Post-processing** - Output formatting and response generation

### Supported Formats

#### Image Formats
- **JPEG** - Full metadata extraction and GPS enrichment
- **HEIC** - Apple format with Live Photo detection
- **PNG** - Technical metadata extraction
- **GIF** - Format analysis and basic metadata

#### Video Formats  
- **MP4/MOV** - GPS coordinates, technical metadata, video analysis
- **174 family videos** - Already analyzed and ready for metadata application

## Configuration

### Environment Variables
```bash
# Location Services
GEOLOCATION_ENABLED=true                    # Enable reverse geocoding
RECREATION_GOV_PROVIDER_ENABLED=true        # Federal recreation facilities
GNIS_PROVIDER_ENABLED=true                  # Geographic features
NPS_PROVIDER_ENABLED=true                   # National Parks Service

# Search Parameters
LANDMARK_MAX_RADIUS=50000                   # Search radius in meters (50km default)

# Database Configuration
DB_HOST=localhost
DB_PORT=3309
DB_USER=kin
DB_PASSWORD=Dalekini21!
DB_NAME=kin
```

### Sample Media Testing
```bash
# Test with built-in sample photos
node pipeline-cli/dist/main.js -f "sample:vancouver-island.jpg" --json
node pipeline-cli/dist/main.js -f "sample:acadia-national-park.jpg" --json
```

## Output Format

### JSON Metadata Structure
```json
{
  "file": {
    "path": "/path/to/photo.jpg",
    "size": 2847392,
    "mime_type": "image/jpeg"
  },
  "technical": {
    "camera": "iPhone 13 Pro",
    "timestamp": "2023-07-15T14:32:45Z",
    "gps": {
      "latitude": 44.3776,
      "longitude": -68.2039
    }
  },
  "location": {
    "address": "Bar Harbor, Maine",
    "landmarks": [
      {
        "name": "Acadia National Park",
        "distance": 1.2,
        "type": "National Park"
      }
    ]
  },
  "processing": {
    "timestamp": "2025-07-26T15:45:00Z",
    "enrichment_status": "complete",
    "providers_used": ["gnis", "recreation_gov", "nps"]
  }
}
```

## Performance & Scale

### Production Metrics
- **150,000+ photos** processed successfully
- **Zero data loss** throughout entire processing pipeline
- **49/49 tests passing** - Comprehensive test coverage with mocking
- **818GB storage saved** - Through intelligent deduplication

### Performance Characteristics
- **First run:** Slower due to cache building and provider initialization
- **Subsequent runs:** Significantly faster with cached geographic data
- **Batch processing:** Parallel processing support for large collections
- **Memory efficient:** Streaming processing for large files

## Development

### Building and Testing
```bash
# Install dependencies
npm install

# Build TypeScript
npm run build

# Run tests
npm test

# Quality gates (MANDATORY after changes)
npm run lint:check
npm run typecheck
npm run build
npm test
```

### Sample Media for Testing
The `/scratch/sample_media/` directory contains test files covering:
- GPS-enabled photos from various devices
- Heritage photos with XMP metadata
- Video files with GPS coordinates
- Live Photos and HEIC format samples
- Rotation metadata test cases

## Integration Points

### MMP CLI Integration
The Pipeline CLI is integrated into the MMP unified interface:
```bash
# MMP wrapper (user-friendly)
mmp understand photo.jpg

# Direct pipeline CLI (full control)  
node pipeline-cli/dist/main.js -f photo.jpg --json
```

### Database Integration
- **Database setup:** See [Data Layer Setup](../data-layer/setup/README.md)
- **Schema design:** See [Data Layer Schema](../data-layer/schema/README.md)
- **Migration procedures:** See [Data Layer Migration](../data-layer/setup/migration.md)

### Workflow Integration
- **Photo Organization:** See [Organization Workflow](../workflows/organization/README.md)
- **Heritage Processing:** See [Heritage Workflow](../workflows/heritage-photos/README.md)
- **Scanning Integration:** See [Scanning Workflow](../workflows/scanning/README.md)

## Troubleshooting

### Common Issues
- **Database connection errors:** Check MySQL container status and credentials
- **Missing landmarks:** Verify GPS coordinates and search radius settings
- **Slow processing:** First run builds caches - subsequent runs much faster
- **Permission errors:** Ensure file read permissions and output directory access

### Quality Gates
All code changes must pass:
1. **ESLint** - Code quality and consistency
2. **TypeScript** - Type checking and compilation  
3. **Build** - Full compilation pipeline
4. **Tests** - All 49 tests must pass

See [Testing Framework](../testing/README.md) for comprehensive quality assurance procedures.

---

**Pipeline CLI Status:** ✅ Production ready - Core processing engine for the Media Processing Pipeline system