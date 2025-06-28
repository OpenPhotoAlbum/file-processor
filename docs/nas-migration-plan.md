# NAS Migration Plan - Historical Photo Collection

## NAS Strategy for 1.4TB+ Archive (1937-2025)

### Phase 1: Immediate Setup (Current Hardware)
**Goal**: Organize and process while planning NAS purchase

```
Current Setup:
- Work on existing drives
- Organize into proper structure
- Test processing pipeline
- Identify requirements

Timeline: 2-4 weeks
Cost: $0 (using existing hardware)
```

### Phase 2: NAS Purchase & Setup (Recommended)
**Goal**: Production-ready archive system

```
NAS Hardware Recommendations:

Option A: Entry Professional ($600-700)
├── Synology DS224+ (2-bay, expandable) - $300
├── 2 × 4TB WD Red Plus NAS drives - $240  
├── 1TB NVMe cache (optional) - $80
└── Total capacity: 4TB usable (RAID 1)

Option B: Future-Proof ($900-1000)  
├── Synology DS423+ (4-bay) - $450
├── 2 × 6TB WD Red Pro drives - $320
├── 2TB NVMe cache - $120
└── Total capacity: 6TB usable, expandable to 24TB

Option C: High-Performance ($1200-1300)
├── QNAP TS-464C2 (4-bay, 10GbE ready) - $600
├── 4 × 4TB WD Red Pro drives - $480
├── 2TB NVMe cache - $120
└── Total capacity: 12TB usable (RAID 10)
```

### Phase 3: Migration & Expansion (Long-term)

## Detailed NAS Benefits for Your Collection

### 1. Multi-Device Access
```
┌─────────────┐    ┌─────────────────┐    ┌─────────────┐
│   Desktop   │────│   NAS System    │────│   Laptop    │
│ Processing  │    │ Central Archive │    │ Browsing    │
└─────────────┘    └─────────────────┘    └─────────────┘
                           │
                   ┌───────┴───────┐
                   │ Mobile Apps   │
                   │ Family Access │
                   └───────────────┘
```

### 2. Built-in Photo Apps
```
Synology Photos:
- Face recognition (local, private)
- Timeline browsing by date
- Shared albums for family
- Mobile apps for anywhere access
- AI-powered search

QNAP QuMagie:
- Similar features to Synology
- Better video handling
- Timeline organization
- People/object recognition
```

### 3. Automatic Backup Strategy
```
┌──────────────┐     ┌──────────────┐     ┌──────────────┐
│ NAS Primary  │────▶│ External HDD │────▶│ Cloud Backup │
│ (RAID 1)     │     │ (Weekly)     │     │ (Heritage)   │
│ 1.4TB Photos │     │ Full Backup  │     │ Pre-1980    │
└──────────────┘     └──────────────┘     └──────────────┘
```

## Integration with Your Processing Pipeline

### Updated .env Configuration
```bash
# NAS Integration
PHOTO_NAS_HOST=192.168.1.100
PHOTO_NAS_USER=photouser
PHOTO_NAS_BASE_PATH=/volume1/photos

# Archive paths (NAS mounted locally)
PHOTO_ARCHIVE_PATH=/mnt/nas/photos/archive
PHOTO_PROCESSED_PATH=/mnt/nas/photos/processed
PHOTO_COLLECTIONS_PATH=/mnt/nas/photos/collections

# Local cache for performance
PHOTO_CACHE_PATH=/home/stephen/.cache/photos
PHOTO_THUMBNAILS_PATH=/home/stephen/.cache/thumbnails
```

### NAS Mount Strategy
```bash
# Create mount point
sudo mkdir -p /mnt/nas

# Add to /etc/fstab for automatic mounting
//192.168.1.100/photos /mnt/nas cifs \
  credentials=/home/stephen/.nas-credentials,\
  uid=1000,gid=1000,iocharset=utf8 0 0

# Create credentials file
echo "username=photouser" > ~/.nas-credentials
echo "password=yourpassword" >> ~/.nas-credentials
chmod 600 ~/.nas-credentials
```

## Migration Timeline

### Month 1: Planning & Purchase
- **Week 1**: Research and purchase NAS
- **Week 2**: Set up NAS, configure RAID
- **Week 3**: Install photo apps, create shares
- **Week 4**: Test with small subset of photos

### Month 2: Initial Migration
- **Week 1**: Migrate 2024-2025 (194GB) 
- **Week 2**: Set up processing pipeline with NAS
- **Week 3**: Migrate 2018-2023 (314GB)
- **Week 4**: Test family access and mobile apps

### Month 3: Historical Archive
- **Week 1**: Migrate 1937-1999 photos (chronological organization)
- **Week 2**: Migrate 2000-2017 photos  
- **Week 3**: Complete all remaining years
- **Week 4**: Set up automated backups and collection symlinks

### Month 4+: Optimization
- Add expansion drives as needed
- Fine-tune performance
- Set up advanced features

## NAS-Optimized Directory Structure

```
/volume1/photos/
├── archive/                    # Original files (RAID protected)
│   ├── 1937/
│   ├── 1945/
│   ├── 1953/
│   ├── ...
│   ├── 2018/
│   │   ├── 01-january/
│   │   │   ├── 2018-01-15_birthday-party/
│   │   │   └── 2018-01-20_daily-photos/
│   │   └── 12-december/
│   ├── 2024/
│   │   ├── 01-january/
│   │   └── 12-december/
│   └── 2025/
│
├── processed/                 # Edited versions
│   └── [mirrors archive chronological structure]
│
├── collections/               # Curated albums (symlinks to archive)
│   ├── trips/
│   │   ├── 1960s-family-trips/
│   │   └── 2024-europe-vacation/
│   ├── family-events/
│   │   ├── weddings/
│   │   └── birthdays/
│   ├── decades/
│   │   ├── 1940s-highlights/
│   │   ├── 1950s-highlights/
│   │   └── 2020s-highlights/
│   └── heritage/
│       ├── grandparents/
│       └── family-history/
│
├── shares/                    # Family access
│   ├── public/               # Everyone can view
│   ├── stephen/              # Your private photos
│   └── family-shared/        # Collaborative albums
│
└── cache/                    # NAS-local processing
    ├── thumbnails/
    ├── previews/
    └── temp-processing/
```

## Family Sharing Setup

### User Access Levels
```
Admin (Stephen):
- Full access to archive
- Processing pipeline control
- Backup management

Family Members:
- View access to collections
- Upload to family-shared
- Mobile app access

Guests:
- View-only public albums
- Heritage collection browsing
```

### Mobile Access
```
Synology Photos App:
- Auto-upload from phones
- Browse by timeline/people
- Create shared albums
- Download originals

Benefits:
- Replace Google Photos
- Keep everything private
- Family can access heritage photos
- Auto-backup new photos
```

## Cost-Benefit Analysis

### Total Cost Projection
```
Year 1:
- NAS system: $600-1000
- Additional drives: $0-300
- Total: $600-1300

Years 2-5:
- Drive expansions: $200/year
- Power costs: $50/year
- Total: $250/year

5-Year Cost: $1600-2300
```

### vs. Cloud Storage
```
1.4TB on Google Drive: $100/year
5 years: $500
BUT: No privacy, limited features, vendor lock-in

NAS advantages:
- Full control and privacy
- Expandable storage
- Advanced photo features
- Family sharing
- No monthly fees after hardware
```

## Technical Specifications

### Minimum NAS Requirements
```
CPU: Quad-core (for photo indexing)
RAM: 4GB minimum, 8GB preferred
Network: Gigabit Ethernet minimum
Bays: 2-bay minimum, 4-bay preferred
Cache: M.2 slots for SSD cache
```

### Performance Expectations
```
Transfer speeds (Gigabit network):
- Large file copy: 100-110 MB/s
- Many small files: 30-50 MB/s
- Thumbnail generation: Background process
- Photo browsing: Near-instant with cache

Processing pipeline:
- Run directly on NAS (container support)
- Or mount NAS on processing machine
```

## Migration Scripts

### NAS-Aware Import Script
```typescript
class NASPhotoImporter {
  constructor(
    private nasPath: string,
    private localCache: string
  ) {}
  
  async importToNAS(sourcePath: string, year: string) {
    // 1. Copy to local cache first (faster processing)
    await this.copyToCache(sourcePath);
    
    // 2. Process locally
    await this.processPhotos();
    
    // 3. Move to NAS archive
    await this.moveToNAS(year);
    
    // 4. Clean local cache
    await this.cleanupCache();
  }
}
```

This NAS strategy provides a robust foundation for your historical collection while enabling future growth and family sharing capabilities.