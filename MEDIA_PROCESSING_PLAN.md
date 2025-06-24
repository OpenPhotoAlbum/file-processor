# Media Processing System - Architecture Plan

## Overview
System to scan thousands of media files from Google Takeout, extract comprehensive metadata, and store in organized database for scalable processing.

## Data Sources Analysis

### Google Takeout Structure
- **Paired Files**: Each media file has corresponding `.supplemental-metadata.json`
- **Album Structure**: Album-level `metadata.json` files with organizational info
- **File Formats**: JPG, HEIC, PNG, MOV with UUID-style and original filenames
- **Rich Metadata**: Creation/photo times, GPS, people tags, view counts, sharing info

### Available Tools
- **ExifTool** (`/usr/bin/exiftool` v12.76): Technical camera metadata extraction
- **MySQL Database**: Storage with Docker containerization
- **Google JSON**: Social and organizational metadata

## Three-Layer Metadata Strategy

### 1. ExifTool Technical Data
- Camera settings (ISO, aperture, shutter speed, focal length)
- Color profiles, compression, encoding details
- Lens information, flash settings
- Raw technical specifications

### 2. Google Photos Metadata
- Social context (people tags, sharing history)
- User engagement (view counts, favorites)
- Organizational data (albums, descriptions)
- Google-corrected timestamps and locations

### 3. File System Data
- File paths, sizes, modification times
- Checksums for duplicate detection
- Processing status and errors

## Database Schema Design

### Core Tables
```sql
-- Primary file registry
media_files (
    id, path, original_filename, file_hash, file_size, 
    mime_type, google_url, album_id, created_at, updated_at
)

-- ExifTool technical metadata
exif_data (
    file_id, camera_make, camera_model, lens_model, iso, 
    aperture, shutter_speed, focal_length, flash, color_space,
    image_width, image_height, orientation
)

-- Google Photos social/organizational metadata
google_metadata (
    file_id, photo_taken_time, creation_time, image_views,
    people_tags, gps_latitude, gps_longitude, sharing_info,
    google_photos_url
)

-- Album relationships
albums (
    id, name, description, access_level, date_created, google_album_id
)

-- Processing tracking
processing_jobs (
    id, file_path, status, error_message, started_at, completed_at
)

-- Duplicate detection
file_checksums (
    file_id, md5_hash, sha256_hash, content_hash
)
```

## Processing Architecture

### Unified Pipeline Design
**Single Entry Point Architecture** - All media files funnel through one processing entry point, then branch based on MIME type for specialized handling while sharing common pre/post-processing steps.

```
File Input → Pre-Processing → MIME Router → Type Processors → Post-Processing → Database
                (shared)                      (specialized)        (shared)
```

### 1. Common Pre-Processing (All Files)
- File existence validation and path normalization
- Hash generation (MD5/SHA256) for duplicate detection
- MIME type detection and validation
- Check for paired Google metadata JSON files
- Processing status tracking and deduplication

### 2. MIME Type Router
- Route files to specialized processors based on detected MIME type
- Support for extensible processor registration
- Graceful handling of unknown/unsupported file types

### 3. Type-Specific Processors

#### Image Processor (`image/*`)
- ExifTool metadata extraction (camera settings, GPS, orientation)
- Dimension and color space analysis
- Thumbnail generation for previews
- Support for JPEG, HEIC, PNG, GIF, TIFF formats

#### Video Processor (`video/*`) **[Future Enhancement]**
- **Frame Extraction**: Key frames at intervals (start, middle, end, scene changes)
- **Thumbnail Generation**: Best representative frame selection
- **Scene Detection**: Identify cuts, transitions, and content changes
- **Motion Analysis**: Detect static vs dynamic content patterns
- **Video Fingerprinting**: Content-based duplicate detection
- **Preview Clips**: Generate short GIF/WebM previews (first 3-5 seconds)
- **Quality Analysis**: Resolution, bitrate, compression artifacts detection
- **Technical Metadata**: Codec info, duration, frame rate, audio tracks
- Support for MOV, MP4, AVI, MKV formats

#### Audio Processor (`audio/*`) **[Future]**
- Waveform generation and audio fingerprinting
- ID3 tag extraction and metadata parsing
- Duration and quality analysis

#### Document Processor (`text/*, application/*`) **[Future]**
- PDF text extraction and indexing
- Document metadata and properties

#### Astronomy Processor (`application/fits`) **[Future]**
- FITS header parsing for telescope metadata
- Coordinate system and observation data extraction

### 4. Common Post-Processing (All Files)
- Database storage with type-specific metadata tables
- Search index updates for full-text search
- Generated file storage (thumbnails, previews, clips)
- Processing completion notifications and status updates
- Temporary file cleanup and resource management

### 5. Google Takeout Integration
- Scan directory for media/JSON file pairs
- Parse paired files as atomic units during pre-processing
- Handle album structure and relationships
- Preserve Google's metadata hierarchy and social context

## Scalability Features

### Batch Processing
- Process files in configurable batch sizes (e.g., 100-1000 files)
- Resume interrupted scans from checkpoints
- Parallel workers across multiple CPU cores
- Memory management for large datasets

### Queue-based Processing
- Redis/RabbitMQ for job queuing
- Worker processes for CPU-intensive metadata extraction
- Retry logic for corrupted/locked files
- Progress monitoring and status reporting

### Database Optimization
- Indexed file paths, hashes, and timestamps
- Partitioned tables by date or file type
- Connection pooling for concurrent workers
- Optimized queries for common search patterns

## Duplicate Detection Strategy

### Multi-level Detection
1. **Content Hashing** - MD5/SHA256 of file contents
2. **Google Photos URLs** - Cross-reference Google's unique identifiers
3. **Filename Variations** - Handle UUID vs original names
4. **EXIF Similarity** - Compare camera timestamps and settings

### Conflict Resolution Rules
- Google timestamps often more accurate than EXIF
- Prefer non-zero GPS coordinates over 0.0, 0.0 defaults
- Merge people tags from multiple sources
- Track metadata source provenance

## Performance Optimizations

### ExifTool Integration
- JSON output parsing faster than individual subprocess calls
- Batch processing reduces overhead significantly
- Group flags (`-G`) organize metadata by source
- Recursive directory processing with filtering

### Memory Management
- Stream processing for large files
- Configurable memory limits per worker
- Garbage collection between processing batches
- Lazy loading of large metadata sets

### Database Performance
- Bulk inserts for batch operations
- Prepared statements for repeated queries
- Connection pooling and transaction batching
- Index optimization for common access patterns

## Implementation Phases

### Phase 1: Core Infrastructure
- [ ] Database schema creation and migration scripts
- [ ] Docker containerization with resource limits
- [ ] Basic file discovery and pairing logic

### Phase 2: Metadata Extraction
- [ ] ExifTool integration and batch processing
- [ ] Google JSON parser for supplemental metadata
- [ ] Data merging and conflict resolution

### Phase 3: Scalability & Optimization
- [ ] Queue system implementation
- [ ] Duplicate detection algorithms
- [ ] Performance monitoring and optimization

### Phase 4: Advanced Features
- [ ] Web interface for browsing/searching
- [ ] Export functionality for various formats
- [ ] Backup and synchronization capabilities

## Technology Stack

- **Database**: MySQL 8.0 with Docker
- **Metadata Extraction**: ExifTool 12.76
- **Processing**: Python/Node.js workers
- **Queue System**: Redis or RabbitMQ
- **Containerization**: Docker Compose
- **Storage**: Local filesystem with optional cloud backup

## Configuration

### Environment Variables
```
MYSQL_ROOT_PASSWORD=<password>
MYSQL_DATABASE=media
MYSQL_USER=<username>
MYSQL_PASSWORD=<password>
MYSQL_PORT=3309
BATCH_SIZE=500
MAX_WORKERS=4
MEMORY_LIMIT=512M
```

### Processing Options
- Recursive directory scanning
- File type filtering (jpg, heic, png, mov, etc.)
- Metadata source priority configuration
- Duplicate handling strategies (skip, merge, flag)