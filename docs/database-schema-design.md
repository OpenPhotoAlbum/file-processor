# Database Schema Design for Media Processing Pipeline

## Overview

This document outlines the comprehensive database schema design for transitioning from JSON sidecar metadata storage to a normalized MySQL database. The design prioritizes query performance, spatial operations, and extensibility for both casual photography and future astrophotography workflows.

## Design Philosophy

### Query-Driven Architecture
Rather than mirroring the existing JSON structure, this schema is designed around primary query patterns:
- **Temporal queries**: "Photos from July 2023" (primary use case)
- **Spatial queries**: "Photos within 5km of landmarks" 
- **Equipment analytics**: "All images from specific imaging trains"
- **Processing tracking**: "Files that need reprocessing"
- **Astrophotography queries**: "30+ second exposures above ISO 1600"

### Extensibility Principles
- **Future-ready equipment modeling**: Supports progression from phone cameras to telescopes
- **Flexible metadata storage**: JSON columns for variable/evolving data
- **Normalization where it matters**: Landmarks, equipment, software for analytics
- **Performance-first**: Dedicated columns for high-query fields

## Core Schema Design

### 1. Media Files Registry

The central table tracking all processed media files with optimized indexing for primary query patterns.

```sql
CREATE TABLE media_files (
  -- Primary key and identification
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  
  -- File organization and location
  collection VARCHAR(64) NOT NULL CHECK (collection IN ('archive', 'staging', 'processed')),
  relative_path VARCHAR(512) NOT NULL,    -- '2023/07/photo.jpg' (relative to collection)
  file_hash VARCHAR(64) UNIQUE NOT NULL,  -- SHA-256 hash for deduplication
  file_size BIGINT NOT NULL,
  mime_type VARCHAR(128) NOT NULL,        -- 'image/jpeg', 'video/mp4'
  
  -- Media classification for queries
  media_type VARCHAR(16) NOT NULL CHECK (media_type IN ('image', 'video')),
  media_format VARCHAR(16) NOT NULL,      -- 'jpeg', 'heic', 'mp4', 'mov'
  is_live_photo BOOLEAN DEFAULT FALSE,
  
  -- Primary timestamp - the most critical query field
  primary_timestamp TIMESTAMP NOT NULL,
  timestamp_source VARCHAR(32) NOT NULL CHECK (timestamp_source IN ('exif', 'filename', 'filesystem')),
  timestamp_confidence VARCHAR(16) NOT NULL CHECK (timestamp_confidence IN ('high', 'medium', 'low')),
  
  -- Equipment and imaging setup
  imaging_train_id BIGINT,
  
  -- Camera settings - structured for astrophotography queries
  iso_value INT,
  aperture_f_number DECIMAL(3,1),         -- f/1.4, f/2.8, f/5.6
  shutter_speed_seconds DECIMAL(10,6),    -- 0.000125 (1/8000s) to 600.0s
  frame_count INT DEFAULT 1,              -- Number of stacked frames (astro)
  integration_time_seconds DECIMAL(10,6) AS (shutter_speed_seconds * frame_count) STORED,
  focal_length_mm INT,
  
  -- Visual properties for queries
  dominant_color_hex CHAR(7),             -- '#FF5733' most frequent color after quantization
  mean_color_hex CHAR(7),                 -- '#A0A0A0' average color after quantization  
  salient_color_hex CHAR(7),              -- '#FFFF00' color that stands out from surroundings
  
  -- Flexible metadata storage
  media_metadata JSON,                    -- dimensions, orientation, livePhotoInfo
  camera_exif JSON,                       -- variable EXIF data, focus distance, flash, etc.
  
  -- File system timestamps
  file_created_at TIMESTAMP NOT NULL,
  file_modified_at TIMESTAMP NOT NULL,
  
  -- Database tracking
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  
  -- Foreign key constraints
  FOREIGN KEY (imaging_train_id) REFERENCES imaging_trains(id),
  
  -- Performance indexes
  INDEX idx_collection_path (collection, relative_path),
  INDEX idx_hash (file_hash),
  INDEX idx_primary_timestamp (primary_timestamp),
  INDEX idx_collection_timestamp (collection, primary_timestamp),
  INDEX idx_media_type_format (media_type, media_format),
  INDEX idx_camera_settings (iso_value, aperture_f_number, shutter_speed_seconds),
  INDEX idx_integration_time (integration_time_seconds),
  INDEX idx_imaging_train (imaging_train_id),
  INDEX idx_dominant_color (dominant_color_hex),
  INDEX idx_mean_color (mean_color_hex),
  INDEX idx_salient_color (salient_color_hex)
);
```

**Key Design Decisions:**
- **Collection separation**: Enables efficient queries by photo organization
- **Computed integration time**: Automatic calculation for astrophotography stack queries
- **Structured camera settings**: Dedicated columns for high-frequency astro queries
- **JSON flexibility**: Variable EXIF and media properties stored as JSON

### 2. Geographic Data Model

Optimized for spatial queries and landmark relationships.

```sql
-- GPS coordinates with spatial indexing
CREATE TABLE media_locations (
  file_id BIGINT PRIMARY KEY,
  latitude DECIMAL(10, 8) NOT NULL,
  longitude DECIMAL(11, 8) NOT NULL,
  gps_source VARCHAR(32) NOT NULL CHECK (gps_source IN ('exif', 'manual', 'estimated')),
  gps_confidence VARCHAR(16) NOT NULL CHECK (gps_confidence IN ('high', 'medium', 'low')),
  
  -- Flexible geolocation data from reverse geocoding
  geolocation_data JSON,                  -- {city, state_code, county_name, etc.}
  
  FOREIGN KEY (file_id) REFERENCES media_files(id) ON DELETE CASCADE,
  SPATIAL INDEX idx_coordinates (latitude, longitude)
);

-- Normalized landmark registry
CREATE TABLE landmarks (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  category VARCHAR(64) NOT NULL,          -- 'mountain', 'lake', 'recreation_area', 'park'
  provider VARCHAR(32) NOT NULL,          -- 'GNIS', 'RECREATION_GOV', 'NPS'
  provider_data JSON,                     -- facility_id, park_code, provider-specific metadata
  
  UNIQUE KEY idx_name_provider (name, provider),
  INDEX idx_category (category),
  INDEX idx_provider (provider)
);

-- Photo-landmark relationships with distance
CREATE TABLE media_landmarks (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  file_id BIGINT NOT NULL,
  landmark_id BIGINT NOT NULL,
  distance_meters INT NOT NULL,
  
  FOREIGN KEY (file_id) REFERENCES media_files(id) ON DELETE CASCADE,
  FOREIGN KEY (landmark_id) REFERENCES landmarks(id) ON DELETE CASCADE,
  INDEX idx_file_landmarks (file_id),
  INDEX idx_landmark_distance (landmark_id, distance_meters),
  INDEX idx_file_distance (file_id, distance_meters)
);
```

**Key Features:**
- **Spatial indexing**: MySQL spatial index for efficient geographic queries
- **Landmark normalization**: Eliminates duplicate landmark names across photos
- **Distance tracking**: Enables "within X meters" queries
- **Provider separation**: Tracks data source for enrichment auditing

### 3. Equipment and Imaging Train Model

Designed for current casual photography with seamless expansion to astrophotography gear.

```sql
-- Individual equipment registry
CREATE TABLE equipment (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  equipment_type VARCHAR(32) NOT NULL CHECK (equipment_type IN ('camera', 'lens', 'telescope', 'mount', 'filter', 'guider')),
  make VARCHAR(64) NOT NULL,              -- 'Apple', 'Canon', 'Celestron', 'Orion'
  model VARCHAR(128) NOT NULL,            -- 'iPhone 13 Pro', 'EF 50mm f/1.8', 'EdgeHD 11'
  equipment_metadata JSON,                -- specs, acquisition_date, notes, technical details
  is_active BOOLEAN DEFAULT TRUE,         -- Current vs retired equipment
  
  UNIQUE KEY idx_type_make_model (equipment_type, make, model),
  INDEX idx_equipment_type (equipment_type),
  INDEX idx_make_model (make, model)
);

-- Imaging train configurations (complete optical/capture setups)
CREATE TABLE imaging_trains (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(128) NOT NULL,             -- 'iPhone 13 Pro', 'Canon + 50mm', 'EdgeHD + Canon'
  description TEXT,                       -- Human-readable setup description
  
  -- Equipment components (cameras always required, others optional)
  primary_camera_id BIGINT NOT NULL,
  lens_id BIGINT,                         -- NULL for phones with integrated lenses
  telescope_id BIGINT,                    -- NULL for terrestrial photography
  mount_id BIGINT,                        -- NULL for handheld shots
  
  -- Computed optical properties for astrophotography
  train_metadata JSON,                    -- focal_ratio, total_focal_length, field_of_view
  is_active BOOLEAN DEFAULT TRUE,
  
  FOREIGN KEY (primary_camera_id) REFERENCES equipment(id),
  FOREIGN KEY (lens_id) REFERENCES equipment(id),
  FOREIGN KEY (telescope_id) REFERENCES equipment(id),
  FOREIGN KEY (mount_id) REFERENCES equipment(id),
  INDEX idx_primary_camera (primary_camera_id),
  INDEX idx_telescope (telescope_id)
);
```

**Migration Strategy for Equipment:**
1. **Phase 1**: Create basic entries:
   - Equipment: "Apple iPhone 13 Pro" (camera), "Canon Generic DSLR" (camera)
   - Imaging trains: "iPhone 13 Pro", "Generic DSLR" (camera-only setups)
2. **Phase 2**: Add telescope equipment as astro capabilities expand
3. **Phase 3**: Complex multi-component imaging trains for advanced astrophotography

### 4. Software Provenance Tracking

Tracks software used in capture and processing workflows.

```sql
-- Software registry with version tracking
CREATE TABLE software (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(128) NOT NULL,             -- 'Siril', 'Ekos', 'Adobe Lightroom', 'iPhone Camera'
  software_type VARCHAR(32) NOT NULL CHECK (software_type IN ('capture', 'processing', 'post_processing', 'analysis')),
  version VARCHAR(64),                    -- '1.2.1', 'CC 2024', 'iOS 17.1'
  software_metadata JSON,                 -- features, settings capabilities, notes
  
  UNIQUE KEY idx_name_version (name, version),
  INDEX idx_software_type (software_type),
  INDEX idx_name (name)
);

-- Software usage tracking
CREATE TABLE media_software (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  file_id BIGINT NOT NULL,
  software_id BIGINT NOT NULL,
  usage_role VARCHAR(32) NOT NULL,        -- 'capture', 'stacking', 'calibration', 'post_processing'
  usage_metadata JSON,                    -- software-specific settings, processing notes
  
  FOREIGN KEY (file_id) REFERENCES media_files(id) ON DELETE CASCADE,
  FOREIGN KEY (software_id) REFERENCES software(id),
  INDEX idx_file_software (file_id),
  INDEX idx_software_role (software_id, usage_role)
);
```

### 5. Processing History and Audit Trail

Comprehensive tracking of all processing operations with field-level granularity.

```sql
-- Processing run registry
CREATE TABLE processing_runs (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  file_id BIGINT NOT NULL,
  processor VARCHAR(64) NOT NULL,         -- 'ImageProcessor', 'VideoProcessor', 'ManualUpdate'
  success BOOLEAN NOT NULL,
  extracted_at TIMESTAMP NOT NULL,
  processing_version VARCHAR(32),         -- Pipeline version for compatibility tracking
  
  -- Provider and enrichment tracking
  providers_enabled JSON,                 -- ["GEOLOCATION", "RECREATION_GOV", "GNIS", "NPS"]
  providers_with_results JSON,            -- ["GEOLOCATION", "GNIS"] (subset of enabled)
  provider_failures JSON,                 -- ["RECREATION_GOV", "NPS"] (failed/empty results)
  
  -- Processing metadata
  processing_duration_ms INT,             -- Performance tracking
  notes TEXT,                             -- Human-readable processing notes
  
  FOREIGN KEY (file_id) REFERENCES media_files(id) ON DELETE CASCADE,
  INDEX idx_file_processor (file_id, extracted_at),
  INDEX idx_processor_success (processor, success),
  INDEX idx_processing_date (extracted_at)
);

-- Field-level update tracking
CREATE TABLE processing_field_updates (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  processing_run_id BIGINT NOT NULL,
  field_name VARCHAR(64) NOT NULL,        -- 'location', 'timestamps', 'camera', 'media', 'landmarks'
  
  FOREIGN KEY (processing_run_id) REFERENCES processing_runs(id) ON DELETE CASCADE,
  INDEX idx_run_field (processing_run_id, field_name),
  INDEX idx_field_updates (field_name)
);
```

### 6. Object Detection and Recognition (Future Enhancement)

Comprehensive object detection system supporting faces, animals, objects, and scenes.

```sql
-- Object type registry
CREATE TABLE detected_objects (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  object_type VARCHAR(32) NOT NULL,       -- 'face', 'person', 'dog', 'car', 'bird', 'mountain'
  object_category VARCHAR(64) NOT NULL,   -- 'human', 'animal', 'vehicle', 'nature', 'food'
  object_name VARCHAR(128),               -- 'golden retriever', 'bald eagle', 'sedan', 'pizza'
  object_metadata JSON,                   -- Additional classification data, synonyms
  
  UNIQUE KEY idx_type_name (object_type, object_name),
  INDEX idx_object_type (object_type),
  INDEX idx_object_category (object_category)
);

-- Object detections with spatial data
CREATE TABLE media_object_detections (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  file_id BIGINT NOT NULL,
  object_id BIGINT NOT NULL,
  confidence DECIMAL(3,2) NOT NULL,       -- 0.95 (95% confidence)
  
  -- Bounding box (normalized 0-1 coordinates)
  bbox_x DECIMAL(4,3) NOT NULL,           -- Left edge
  bbox_y DECIMAL(4,3) NOT NULL,           -- Top edge
  bbox_width DECIMAL(4,3) NOT NULL,       -- Box width
  bbox_height DECIMAL(4,3) NOT NULL,      -- Box height
  
  -- Detection metadata
  detection_model VARCHAR(64) NOT NULL,   -- 'compreface_v1', 'yolo_v8', 'apple_vision'
  detection_metadata JSON,                -- Model-specific data, attributes
  detected_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  
  FOREIGN KEY (file_id) REFERENCES media_files(id) ON DELETE CASCADE,
  FOREIGN KEY (object_id) REFERENCES detected_objects(id),
  INDEX idx_file_objects (file_id),
  INDEX idx_object_confidence (object_id, confidence),
  INDEX idx_high_confidence (confidence), -- For filtering reliable detections
  INDEX idx_detection_model (detection_model)
);

-- Face recognition and identity management
CREATE TABLE face_identities (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  person_name VARCHAR(128),               -- 'John Doe', 'Unknown Person 1'
  person_metadata JSON,                   -- Relationship, notes, alternate names
  face_embedding BLOB,                    -- Vector embedding for face matching
  is_verified BOOLEAN DEFAULT FALSE,      -- Manually confirmed identity
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  
  INDEX idx_person_name (person_name),
  INDEX idx_verified (is_verified)
);

-- Face to identity matching
CREATE TABLE face_identity_matches (
  detection_id BIGINT NOT NULL,
  identity_id BIGINT NOT NULL,
  match_confidence DECIMAL(3,2) NOT NULL, -- 0.92 (92% match)
  is_manual BOOLEAN DEFAULT FALSE,        -- Manual vs automatic match
  matched_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  
  PRIMARY KEY (detection_id, identity_id),
  FOREIGN KEY (detection_id) REFERENCES media_object_detections(id) ON DELETE CASCADE,
  FOREIGN KEY (identity_id) REFERENCES face_identities(id) ON DELETE CASCADE,
  INDEX idx_identity_matches (identity_id),
  INDEX idx_confidence (match_confidence)
);
```

**Key Features:**
- **Flexible object taxonomy**: Supports any detected object type
- **Spatial data**: Bounding boxes for object location within images
- **Confidence tracking**: Filter by detection reliability
- **Face recognition**: Identity management with embedding-based matching
- **Model agnostic**: Supports multiple detection models and versions

## Primary Query Patterns

### Temporal Queries (Highest Priority)
```sql
-- All photos from July 2023
SELECT * FROM media_files 
WHERE primary_timestamp BETWEEN '2023-07-01' AND '2023-07-31 23:59:59'
ORDER BY primary_timestamp;

-- Photos from staging collection taken last week
SELECT * FROM media_files 
WHERE collection = 'staging' 
  AND primary_timestamp >= DATE_SUB(NOW(), INTERVAL 7 DAY)
ORDER BY primary_timestamp DESC;
```

### Color-Based Queries
```sql
-- Find all sunset/warm-toned photos (reds/oranges)
SELECT * FROM media_files 
WHERE dominant_color_hex LIKE '#F%' 
   OR dominant_color_hex LIKE '#E%'
   OR mean_color_hex LIKE '#F%'
ORDER BY primary_timestamp;

-- Ocean/sky blue photos across all color types
SELECT * FROM media_files 
WHERE dominant_color_hex LIKE '#%9%F%'  -- Blue dominant colors
   OR mean_color_hex LIKE '#%8%B%'      -- Blue-ish mean colors
   OR salient_color_hex LIKE '#%0%1%'   -- Dark blue salient colors
ORDER BY primary_timestamp;

-- Photos with vibrant salient colors (colors that "pop")
SELECT *, salient_color_hex as accent_color
FROM media_files 
WHERE salient_color_hex IS NOT NULL
  AND salient_color_hex NOT LIKE '#0%'  -- Exclude very dark colors
  AND salient_color_hex NOT LIKE '#F%F%F%' -- Exclude very light colors
ORDER BY primary_timestamp;

-- Color palette analysis
SELECT 
  dominant_color_hex,
  mean_color_hex, 
  salient_color_hex,
  COUNT(*) as photo_count 
FROM media_files 
WHERE dominant_color_hex IS NOT NULL
GROUP BY dominant_color_hex, mean_color_hex, salient_color_hex
ORDER BY photo_count DESC;

-- Find photos with contrasting colors (dominant vs salient)
SELECT *
FROM media_files 
WHERE dominant_color_hex IS NOT NULL 
  AND salient_color_hex IS NOT NULL
  AND dominant_color_hex != salient_color_hex  -- Different colors
ORDER BY primary_timestamp;
```

### Spatial and Landmark Queries
```sql
-- All photos within 1km of any mountain in 2022
SELECT DISTINCT mf.*
FROM media_files mf
JOIN media_landmarks ml ON mf.id = ml.file_id  
JOIN landmarks l ON ml.landmark_id = l.id
WHERE l.category = 'mountain'
  AND ml.distance_meters <= 1000
  AND YEAR(mf.primary_timestamp) = 2022;

-- Photos near specific coordinates (using spatial index)
SELECT mf.* FROM media_files mf
JOIN media_locations loc ON mf.id = loc.file_id
WHERE ST_Distance_Sphere(
  POINT(loc.longitude, loc.latitude),
  POINT(-68.2733, 44.3386)  -- Acadia National Park
) <= 5000;
```

### Equipment and Technical Queries
```sql
-- Astrophotography: Long exposure, high ISO captures
SELECT mf.*, it.name as imaging_train_name
FROM media_files mf
JOIN imaging_trains it ON mf.imaging_train_id = it.id
WHERE mf.integration_time_seconds >= 1800  -- 30+ minutes total integration
  AND mf.iso_value >= 1600
ORDER BY mf.integration_time_seconds DESC;

-- Equipment usage analysis
SELECT it.name, COUNT(*) as photo_count
FROM media_files mf
JOIN imaging_trains it ON mf.imaging_train_id = it.id
GROUP BY it.id, it.name
ORDER BY photo_count DESC;
```

### Processing and Quality Queries
```sql
-- Files that need location reprocessing (no GPS data)
SELECT mf.* FROM media_files mf
LEFT JOIN media_locations loc ON mf.id = loc.file_id
WHERE loc.file_id IS NULL;

-- Recent processing failures for investigation
SELECT pr.*, mf.relative_path 
FROM processing_runs pr
JOIN media_files mf ON pr.file_id = mf.id
WHERE pr.success = FALSE 
  AND pr.extracted_at >= DATE_SUB(NOW(), INTERVAL 24 HOUR);
```

### Object Detection Queries (Future)
```sql
-- All photos with dogs
SELECT DISTINCT mf.*, do.object_name as breed
FROM media_files mf
JOIN media_object_detections mod ON mf.id = mod.file_id
JOIN detected_objects do ON mod.object_id = do.id
WHERE do.object_type = 'dog'
  AND mod.confidence > 0.8
ORDER BY mf.primary_timestamp;

-- Photos of specific person across time
SELECT mf.*, mod.confidence FROM media_files mf
JOIN media_object_detections mod ON mf.id = mod.file_id
JOIN face_identity_matches fim ON mod.id = fim.detection_id
JOIN face_identities fi ON fim.identity_id = fi.id
WHERE fi.person_name = 'John Doe'
  AND fim.match_confidence > 0.85
ORDER BY mf.primary_timestamp;

-- Wildlife photography analysis
SELECT do.object_name, COUNT(*) as photo_count, AVG(mod.confidence) as avg_confidence
FROM media_object_detections mod
JOIN detected_objects do ON mod.object_id = do.id
WHERE do.object_category = 'animal'
GROUP BY do.object_name
ORDER BY photo_count DESC;

-- Find photos with multiple people (group photos)
SELECT mf.*, COUNT(DISTINCT fi.id) as person_count
FROM media_files mf
JOIN media_object_detections mod ON mf.id = mod.file_id
JOIN detected_objects do ON mod.object_id = do.id
JOIN face_identity_matches fim ON mod.id = fim.detection_id
JOIN face_identities fi ON fim.identity_id = fi.id
WHERE do.object_type = 'face'
  AND fim.match_confidence > 0.8
GROUP BY mf.id
HAVING person_count >= 3
ORDER BY person_count DESC;
```

## Migration Strategy from JSON Sidecars

### Phase 1: Database Schema Creation
1. **Create all tables** with proper indexes and constraints
2. **Populate base equipment data**: iPhone, Generic DSLR entries
3. **Create default imaging trains**: Simple camera-only configurations
4. **Seed software entries**: iPhone Camera, basic processing tools

### Phase 2: Data Migration Pipeline
1. **Preserve existing JSON files** - maintain as backup and fallback
2. **Parse and import JSON metadata** into normalized schema
3. **Validate data consistency** between JSON and database
4. **Handle duplicate detection** via file hash uniqueness

### Phase 3: Dual-Write Implementation
1. **Enhance post-processor** to write both JSON and database
2. **Implement validation mode** comparing JSON vs database consistency
3. **Gradual query migration** from JSON reads to database reads
4. **Performance monitoring** and optimization

### Phase 4: JSON Preservation Strategy
- **Keep JSON files as backup** for portability and disaster recovery
- **Maintain JSON for debugging** and development workflows
- **Use database as primary** for all production queries and analytics

## Performance Considerations

### Indexing Strategy
- **Primary timestamp**: Clustered index for chronological queries
- **Spatial coordinates**: MySQL spatial index for geographic queries  
- **Collection + timestamp**: Composite index for filtered browsing
- **Hash uniqueness**: Ensures deduplication at database level
- **Equipment relationships**: Foreign key indexes for join performance

### Expected Scale and Performance
- **Current scale**: 24,243 processed media files
- **Target scale**: 100,000+ files with astrophotography expansion
- **Query response targets**: <100ms for primary temporal queries, <500ms for complex spatial joins
- **Storage efficiency**: Normalized landmarks and equipment reduce redundancy

### Optimization Opportunities
- **Computed columns**: Integration time automatically maintained
- **JSON indexing**: MySQL 8.0 functional indexes on JSON paths if needed
- **Partitioning**: Table partitioning by year if temporal queries dominate
- **Caching**: Application-level caching for frequently accessed equipment/landmark data

## Future Extensibility

### Astrophotography Enhancements
- **Target tracking**: Object catalogs (Messier, NGC, IC numbers)
- **Observing conditions**: Seeing, transparency, light pollution data
- **Calibration frames**: Bias, dark, flat frame relationships
- **Processing pipeline tracking**: Complete workflow from acquisition to final image

### Advanced Analytics
- **Temporal patterns**: Shooting frequency analysis, seasonal trends
- **Geographic coverage**: Heat maps, location diversity metrics  
- **Equipment performance**: Success rates by imaging train configuration
- **Processing efficiency**: Provider performance and failure analysis

### Integration Capabilities
- **External catalogs**: Link to astronomical databases, geographic services
- **API development**: RESTful endpoints for mobile apps, web interfaces
- **Data export**: Flexible export formats for backup and portability
- **Real-time monitoring**: Processing pipeline health and performance dashboards

## Implementation Priorities

### Phase 1 (Immediate - Database Foundation)
1. **Core schema creation** - All table definitions with indexes
2. **Basic equipment seeding** - iPhone and DSLR configurations
3. **Migration tool development** - JSON to database import pipeline
4. **Data validation framework** - Consistency checking between JSON and database

### Phase 2 (Short-term - Dual Operations)
1. **Post-processor enhancement** - Dual-write capability (JSON + database)
2. **Query API development** - Database-backed endpoints for common operations
3. **Performance baseline establishment** - Query response time benchmarks
4. **Migration of primary queries** - Switch high-frequency operations to database

### Phase 3 (Medium-term - Full Migration)
1. **Complete query migration** - All operations use database as primary
2. **Advanced analytics implementation** - Spatial queries, equipment analysis
3. **Astrophotography preparation** - Enhanced equipment modeling, processing workflows
4. **JSON archival strategy** - Long-term preservation and backup procedures

## Complete Table Summary

### Core Tables (Phase 1)
1. **media_files** - Central registry with timestamps, equipment, camera settings, dominant color
2. **media_locations** - GPS coordinates with spatial indexing
3. **landmarks** - Normalized landmark registry  
4. **media_landmarks** - Photo-landmark relationships with distances
5. **equipment** - Camera, lens, telescope, mount registry
6. **imaging_trains** - Equipment combinations/setups
7. **software** - Processing software tracking
8. **media_software** - Software usage per file
9. **processing_runs** - Processing history with provider tracking
10. **processing_field_updates** - Field-level update tracking

### Future Enhancement Tables (Phase 2)
11. **detected_objects** - Object type registry (faces, animals, objects)
12. **media_object_detections** - Detections with bounding boxes and confidence
13. **face_identities** - Person identity management
14. **face_identity_matches** - Face to identity matching

### Key Design Features
- **Temporal optimization**: Primary timestamp indexing for date queries
- **Spatial capabilities**: Geographic queries via spatial indexes
- **Equipment flexibility**: From phones to complex astrophotography rigs
- **Object detection ready**: Extensible framework for AI/ML features
- **Processing audit trail**: Complete history of all enrichment operations
- **Color-based search**: Dominant color for visual similarity queries

## Conclusion

This database schema design provides a robust foundation for the media processing pipeline that:

- **Preserves existing capabilities** while dramatically improving query performance
- **Enables new analytics** not possible with JSON file storage
- **Scales seamlessly** from casual photography to advanced astrophotography workflows  
- **Maintains data integrity** through proper normalization and constraints
- **Supports gradual migration** with minimal disruption to existing workflows
- **Future-proofs** the system with object detection and recognition capabilities

The query-driven design ensures that the most common operations (temporal browsing, spatial searches, color matching) perform optimally while the normalized structure enables sophisticated analytics and equipment tracking that will support the system's evolution into astrophotography, wildlife photography, event coverage, and beyond.