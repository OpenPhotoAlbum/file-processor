# Photo Organization Strategy

## Overview

This document outlines a comprehensive strategy for organizing a large photo collection, starting with an initial bulk import and scaling to handle ongoing daily additions. The strategy covers physical storage, directory structure, naming conventions, and metadata management.

## Storage Architecture

### Primary Storage Tiers

```
┌─────────────────┐     ┌─────────────────┐     ┌─────────────────┐
│   Hot Storage   │     │  Warm Storage   │     │  Cold Storage   │
│   (NVMe SSD)    │────▶│   (HDD RAID)    │────▶│  (Cloud/NAS)    │
│  Recent Photos  │     │  Full Archive   │     │   Backups       │
└─────────────────┘     └─────────────────┘     └─────────────────┘
```

### Recommended Setup

1. **Hot Storage (NVMe SSD)** - 1-2TB
   - Recent photos (last 6-12 months)
   - Working directories for processing
   - Database files (MySQL, thumbnails, cache)
   - Frequently accessed albums

2. **Warm Storage (HDD RAID)** - 8-16TB
   - Complete photo archive
   - RAID 1 (mirror) or RAID 10 for redundancy
   - Primary working location for all photos

3. **Cold Storage (Cloud/NAS)** 
   - Automated backups
   - Version history
   - Disaster recovery

## Directory Structure

### Root Organization

```
/photos/
├── archive/              # Immutable original files
│   ├── 2025/
│   │   ├── 01-january/
│   │   │   ├── 2025-01-15_birthday-party/
│   │   │   └── 2025-01-20_seattle-trip/
│   │   └── 02-february/
│   └── imported/         # Bulk import organization
│       ├── google-takeout-2024/
│       └── iphone-backup-2023/
│
├── processed/            # Edited/processed versions
│   └── [mirrors archive structure]
│
├── collections/          # Virtual albums via symlinks
│   ├── trips/
│   ├── family/
│   └── projects/
│
├── inbox/               # Incoming photos for processing
│   ├── phone-sync/
│   ├── camera-import/
│   └── to-process/
│
└── metadata/            # Sidecar files and enrichment data
    ├── faces/
    ├── locations/
    └── processing-logs/
```

### Archive Directory Principles

1. **Immutable Storage**: Original files are never modified
2. **Date-First Organization**: Primary sort by capture date
3. **Event Folders**: Secondary organization by events/trips
4. **Flat Structure**: Max 3 levels deep for easy navigation

## Naming Conventions

### File Naming Pattern

```
YYYY-MM-DD_HHMMSS_[device]_[sequence].[ext]

Examples:
2025-01-15_143052_iphone13_001.heic
2025-01-15_143052_canon5d_001.cr2
2025-01-15_143052_pixel6_001.jpg
```

### Folder Naming Pattern

```
YYYY-MM-DD_event-description

Examples:
2025-01-15_birthday-party
2025-02-20_seattle-trip
2025-03-10_daily-photos    # For misc daily shots
```

### Benefits
- Chronological sorting by default
- Device tracking for troubleshooting
- Event context without opening files
- Filesystem-friendly (no spaces or special chars)

## Import Workflow

### Initial Bulk Import

```bash
# 1. Stage files in inbox
/photos/inbox/google-takeout-raw/

# 2. Run deduplication
npm run dedupe -- --source /photos/inbox/google-takeout-raw

# 3. Process and organize
npm run import -- \
  --source /photos/inbox/google-takeout-raw \
  --dest /photos/archive/imported/google-takeout-2024 \
  --organize-by-date \
  --rename-pattern "YYYY-MM-DD_HHMMSS_[device]_[seq]"

# 4. Generate metadata
npm run enrich -- --path /photos/archive/imported/google-takeout-2024
```

### Daily Import Workflow

```bash
# Automated phone sync (via Syncthing/Nextcloud)
/photos/inbox/phone-sync/ → process → /photos/archive/YYYY/MM/

# Manual camera import  
/photos/inbox/camera-import/ → process → /photos/archive/YYYY/MM/
```

## Metadata Strategy

### Sidecar File Organization

```
/photos/metadata/
├── checksum/            # SHA256 hashes for integrity
│   └── 2025/
│       └── 01/
│           └── hashes.db
│
├── enrichment/          # Our system's metadata
│   └── [mirrors archive structure]
│       └── photo.json   # GPS, landmarks, faces, etc.
│
└── original/           # Preserved original metadata
    └── [mirrors archive structure]
        ├── photo.xmp   # Adobe/Lightroom
        └── photo.json  # Google Takeout
```

### Database Schema Extension

```sql
-- Add file organization tracking
CREATE TABLE file_locations (
  id INT PRIMARY KEY AUTO_INCREMENT,
  file_hash VARCHAR(64) UNIQUE,
  original_path VARCHAR(500),
  archive_path VARCHAR(500),
  storage_tier ENUM('hot', 'warm', 'cold'),
  import_batch VARCHAR(100),
  import_date TIMESTAMP,
  last_accessed TIMESTAMP,
  INDEX idx_hash (file_hash),
  INDEX idx_archive_path (archive_path)
);
```

## Deduplication Strategy

### Hash-Based Deduplication

```typescript
interface DuplicationStrategy {
  // Level 1: Exact duplicates (same hash)
  exactMatch: {
    action: 'skip' | 'link';
    preservePath: 'earliest' | 'best-metadata';
  };
  
  // Level 2: Similar photos (perceptual hash)
  similarMatch: {
    threshold: 0.95;
    action: 'group' | 'keep-all';
    groupingStrategy: 'timestamp' | 'quality';
  };
  
  // Level 3: Burst photos
  burstPhotos: {
    timeWindow: 3; // seconds
    action: 'keep-best' | 'keep-all';
    qualityMetric: 'sharpness' | 'faces' | 'manual';
  };
}
```

## Performance Optimization

### Directory Size Limits

- **Max files per directory**: 1,000-2,000
- **Auto-split strategy**: By day when exceeding limit
- **Example**: `2025-01-15/` → `2025-01-15-morning/`, `2025-01-15-afternoon/`

### Indexing Strategy

```bash
# Fast filesystem indexing
find /photos/archive -name "*.jpg" -type f > photo-index.txt

# Database sync
npm run sync-db -- --index-file photo-index.txt

# Thumbnail generation (background)
npm run generate-thumbs -- --workers 4
```

## Backup Strategy

### 3-2-1 Rule
- **3** copies of important data
- **2** different storage media
- **1** offsite backup

### Implementation

```bash
# Local backup (warm → cold)
rsync -av --checksum /photos/archive/ /backup/photos/

# Cloud backup (selective)
rclone sync /photos/archive/ remote:photos/ \
  --include "*.{jpg,heic,raw}" \
  --exclude "*/processed/*"

# Database backup
mysqldump kin > backup/kin-$(date +%Y%m%d).sql
```

## Migration Path

### Phase 1: Initial Setup (Week 1)
1. Set up storage hardware
2. Create directory structure
3. Install and configure media processing pipeline

### Phase 2: Bulk Import (Week 2-4)
1. Import Google Takeout data
2. Run deduplication
3. Process and enrich metadata
4. Generate initial database

### Phase 3: Automation (Week 5-6)
1. Set up phone sync
2. Configure automated imports
3. Schedule backups
4. Create monitoring dashboards

### Phase 4: Optimization (Ongoing)
1. Tune performance based on usage
2. Implement tiered storage movement
3. Refine organization based on patterns

## Daily Operations

### Automated Tasks (via cron)

```cron
# Nightly import from inbox
0 2 * * * /usr/local/bin/photo-import-daily.sh

# Weekly deduplication check  
0 3 * * 0 /usr/local/bin/photo-dedupe-check.sh

# Monthly backup to cold storage
0 4 1 * * /usr/local/bin/photo-backup-cold.sh

# Quarterly integrity check
0 5 1 */3 * /usr/local/bin/photo-integrity-check.sh
```

### Monitoring

```bash
# Storage usage by tier
df -h | grep -E "(nvme|storage|backup)"

# Recent imports
find /photos/archive -type f -mtime -7 | wc -l

# Database stats
mysql -e "SELECT COUNT(*) as photos, 
  SUM(size)/1073741824 as size_gb 
  FROM media_files"
```

## Future Considerations

### AI/ML Integration
- Face clustering paths: `/photos/metadata/faces/clusters/`
- Scene detection: `/photos/metadata/scenes/`
- Auto-tagging: Store in database with confidence scores

### Performance Scaling
- Consider ceph/GlusterFS for distributed storage
- PostgreSQL with TimescaleDB for time-series queries
- Redis for hot metadata caching

### Access Patterns
- Most recent 10% of photos get 90% of views
- Seasonal access patterns (holidays, anniversaries)
- Optimize storage tiers based on access logs

This organization strategy provides a solid foundation that scales from your initial import through years of photo accumulation while maintaining performance and enabling rich feature development.