# Metadata Storage Architecture

## Current Implementation: JSON Sidecar Files

The media processing pipeline currently uses a **JSON sidecar file approach** for storing all photo and video metadata. This architecture was chosen for portability, simplicity, and deduplication preservation.

## Storage Strategy

### File Organization
```
/photos/archive/YYYY/MM/
├── 2023-07-02_07-45-49_001.MP4          # Original video file
├── 2023-07-02_07-45-49_001.MP4.json     # Metadata sidecar
├── 2023-07-02_12-25-19_001.jpg          # Original image file
└── 2023-07-02_12-25-19_001.jpg.json     # Metadata sidecar
```

### Sidecar File Format
Each media file gets a companion `.json` file containing:
- **File metadata**: Path, hash, size, MIME type, timestamps
- **EXIF data**: Camera settings, technical details, embedded GPS
- **Enriched location**: Geolocation results, nearby landmarks
- **Processing history**: Array of processing events with provider information
- **Media properties**: Dimensions, orientation, Live Photo detection

### Current Scale
- **24,243 enriched JSON sidecars** generated across photo archive
- **Average file size**: 3-8 KB per JSON file
- **Total metadata storage**: ~120-200 MB estimated

## JSON Schema Structure

### Core Metadata Schema
```json
{
  "file": {
    "path": "relative:../../../../photos/archive/2023/07/photo.jpg",
    "hash": "sha256-hash",
    "size": 2964109,
    "mimeType": "image/jpeg",
    "created": "2025-06-26T07:19:32.365Z",
    "modified": "2024-04-04T20:50:29.000Z"
  },
  "processing": {
    "success": true,
    "processor": "ImageProcessor",
    "extractedAt": "2025-06-27T01:44:22.097Z",
    "providersEnabled": ["GEOLOCATION", "RECREATION_GOV", "GNIS", "NPS"],
    "fieldsUpdated": ["location", "timestamps", "camera"],
    "version": "1.2.0"
  },
  "processingHistory": [
    {
      "success": true,
      "processor": "ImageProcessor", 
      "extractedAt": "2024-01-15T10:30:00Z",
      "providersEnabled": ["GNIS", "NPS"],
      "fieldsUpdated": ["location", "timestamps", "camera"]
    }
  ],
  "media": {
    "type": "image",
    "format": "jpeg",
    "dimensions": {
      "width": 3672,
      "height": 2066,
      "megapixels": 7.6,
      "orientation": "Horizontal (normal)"
    },
    "isLivePhoto": false
  },
  "location": {
    "primary": {
      "latitude": 42.8165,
      "longitude": -71.0639,
      "source": "exif"
    },
    "geolocation": {
      "city": "Plaistow",
      "state_code": "NH",
      "county_name": "Rockingham"
    },
    "landmarks": [
      {
        "landmark": {
          "name": "Corliss Hill",
          "category": "mountain",
          "distance": 912
        }
      }
    ]
  },
  "timestamps": {
    "primary": {
      "timestamp": "2024-04-04T15:50:29.000Z",
      "source": "exif",
      "confidence": "high"
    }
  },
  "camera": {
    "make": "Apple",
    "model": "iPhone 13 Pro"
  },
  "settings": {
    "iso": 50,
    "aperture": "f/1.5",
    "shutterSpeed": "1/120"
  }
}
```

### Live Photo Extensions
For videos detected as Live Photos:
```json
{
  "media": {
    "type": "video",
    "isLivePhoto": true,
    "livePhotoInfo": {
      "confidence": "high",
      "hasMotionData": true,
      "motionDataCount": 63,
      "duration": 2.936667,
      "correspondingImagePath": "/path/to/still.heic"
    }
  }
}
```

## Database Infrastructure (Geographic Reference Only)

The MySQL database stores **geographic reference data** for enrichment, not photo metadata:

### Geographic Tables
- **`geo_geographic_features`**: 650K+ GNIS natural landmarks
- **`geo_municipal_boundaries`**: 23,580 US municipal boundaries  
- **`recreation_facilities`**: Recreation.gov facilities and parks
- **`geo_countries/states/cities`**: Administrative geographic hierarchy

### Usage Pattern
```typescript
// Database used for enrichment queries during processing
const landmarks = await landmarkService.findNearbyLandmarks(lat, lon, radius);
const location = await geolocationService.findLocation(lat, lon);

// Results stored in JSON sidecar, not database
await writeJSONFile(photoPath + '.json', metadata);
```

## Metadata Merge System

### Processing History Array
Tracks all processing runs to prevent data loss:
```json
{
  "processingHistory": [
    {
      "extractedAt": "2024-01-15T10:30:00Z",
      "providersEnabled": ["GNIS", "NPS", "RECREATION_GOV"],
      "fieldsUpdated": ["location", "timestamps"],
      "notes": "Initial full processing with all providers"
    },
    {
      "extractedAt": "2024-06-28T14:30:00Z", 
      "providersEnabled": [],
      "fieldsUpdated": ["media.isLivePhoto", "media.livePhotoInfo"],
      "notes": "Added Live Photo detection"
    }
  ]
}
```

### Merge Modes
- **`--overwrite`**: Replace entire metadata file
- **`--merge`**: Intelligently merge preserving expensive operations
- **`--merge-sections=location,media`**: Update specific sections only
- **`--preserve-enrichment`**: Keep geolocation/landmark data (default: true)

## Advantages of Current Approach

### Portability
- **Self-contained**: Metadata travels with photos
- **No database dependencies** for viewing metadata
- **Platform independent**: Standard JSON files

### Backup & Recovery  
- **Standard file backup** procedures work
- **Point-in-time recovery** via filesystem snapshots
- **No database corruption** risks

### Development Simplicity
- **Direct file access** for debugging
- **Version control friendly** for configuration
- **No database schema migrations** needed

### Deduplication Support
- **Multiple JSON files** preserved during deduplication
- **Separate enrichment** for duplicate files in different locations
- **History preservation** across file operations

## Limitations of Current Approach

### Query Performance
- **No indexed searches** across all photos
- **Sequential file reading** required for bulk operations
- **No date range queries** without scanning all files

### Analytics Limitations
- **No aggregate queries** (camera model distribution, GPS coverage)
- **No join operations** with geographic data
- **Manual reporting** required

### Concurrency
- **File locking issues** with concurrent access
- **No transactional updates** across multiple photos
- **Race conditions** possible during batch processing

## Future Database Storage Considerations

### Planned Schema (Not Implemented)
```sql
-- Media files table
CREATE TABLE media_files (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  path VARCHAR(1024) NOT NULL,
  hash VARCHAR(64) UNIQUE,
  mime_type VARCHAR(128),
  size BIGINT,
  created_at TIMESTAMP,
  modified_at TIMESTAMP,
  INDEX idx_path (path),
  INDEX idx_hash (hash)
);

-- Flexible metadata storage
CREATE TABLE media_metadata (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  file_id BIGINT,
  metadata_type VARCHAR(64), -- 'exif', 'gps', 'landmarks'
  metadata JSON,
  created_at TIMESTAMP,
  FOREIGN KEY (file_id) REFERENCES media_files(id),
  INDEX idx_file_type (file_id, metadata_type)
);

-- GPS coordinates for spatial queries
CREATE TABLE media_locations (
  file_id BIGINT PRIMARY KEY,
  latitude DECIMAL(10, 8),
  longitude DECIMAL(11, 8),
  accuracy FLOAT,
  source VARCHAR(32),
  FOREIGN KEY (file_id) REFERENCES media_files(id),
  SPATIAL INDEX idx_coordinates (latitude, longitude)
);
```

### Hybrid Approach
Potential future architecture:
- **Database**: Fast queries, analytics, API endpoints
- **JSON files**: Preserved for backup, portability, direct access
- **Synchronization**: Automatic sync between database and JSON files

## Implementation Status

### ✅ Completed Components
- **JSON sidecar generation** for images and videos
- **Comprehensive metadata schema** with all enrichment data
- **Processing history tracking** with provider information
- **Metadata merge system** preserving expensive operations
- **Geographic reference database** for enrichment queries
- **Live Photo detection** and metadata extensions

### 📋 Planned Components (Not Implemented)
- **Database metadata storage** (post-processor stub exists)
- **Migration tools** from JSON to database
- **Query API** for metadata search
- **Analytics dashboard** for photo collection insights
- **Bulk operations** via database transactions

## Conclusion

The current JSON sidecar approach provides a robust, portable, and simple metadata storage solution that has successfully processed **24,243+ media files**. It excels at preservation, backup, and development simplicity.

Database storage would provide significant benefits for query performance and analytics, but would require careful migration planning and architectural changes to the post-processing pipeline.

The existing geographic database infrastructure provides a solid foundation for future metadata database implementation, with established patterns for data loading, indexing, and spatial queries.

---

**Current Status**: Production-ready JSON sidecar system with comprehensive metadata schema and merge capabilities.

**Future Evolution**: Database storage architecture planned but not implemented, requiring post-processor development and migration strategy.