# Quick Start: Photo Organization Implementation

## Immediate Action Plan

Based on your current setup and the existing media processing pipeline, here's a practical implementation plan.

## Step 1: Directory Setup (Do This First)

```bash
# Create the base structure
sudo mkdir -p /photos/{archive,processed,collections,inbox,metadata}
sudo chown -R $USER:$USER /photos

# Create year/month structure for existing years
for year in {2020..2025}; do
  for month in {01..12}; do
    mkdir -p /photos/archive/$year/$month-$(date -d "$year-$month-01" +%B | tr '[:upper:]' '[:lower:]')
  done
done

# Create inbox subdirectories
mkdir -p /photos/inbox/{phone-sync,camera-import,to-process}

# Create metadata structure
mkdir -p /photos/metadata/{checksums,enrichment,original,faces,locations}
```

## Step 2: Import Your Google Takeout

### Prepare the Import Script

```bash
#!/bin/bash
# save as: import-google-takeout.sh

SOURCE_DIR="$HOME/GOOGLE-TAKEOUT-PROCESSING/Takeout/Google Photos"
DEST_BASE="/photos/archive/imported/google-takeout-2024"
LOG_FILE="/photos/metadata/import-log-$(date +%Y%m%d-%H%M%S).log"

echo "Starting Google Takeout import..." | tee -a $LOG_FILE

# First, analyze the structure
find "$SOURCE_DIR" -name "*.jp*g" -o -name "*.heic" -o -name "*.png" | head -20

# Process by year folders
for year_dir in "$SOURCE_DIR"/Photos\ from\ */; do
  if [[ -d "$year_dir" ]]; then
    year=$(basename "$year_dir" | grep -oE '[0-9]{4}')
    echo "Processing year: $year" | tee -a $LOG_FILE
    
    # Copy maintaining structure
    rsync -av --progress \
      --include="*.jpg" --include="*.jpeg" --include="*.heic" \
      --include="*.png" --include="*.mp4" --include="*.json" \
      "$year_dir" "$DEST_BASE/year-$year/" | tee -a $LOG_FILE
  fi
done
```

## Step 3: Update Your Pipeline Configuration

### Add to `.env`:

```bash
# Photo Organization Paths
PHOTO_ARCHIVE_PATH=/photos/archive
PHOTO_PROCESSED_PATH=/photos/processed
PHOTO_INBOX_PATH=/photos/inbox
PHOTO_METADATA_PATH=/photos/metadata

# Import Configuration
IMPORT_RENAME_FILES=true
IMPORT_ORGANIZE_BY_DATE=true
IMPORT_PRESERVE_ORIGINALS=true
IMPORT_DEDUPE_ON_IMPORT=true
```

## Step 4: Create Import Pipeline Script

```typescript
// src/scripts/import-photos.ts
import { FileSystemService } from '../services/filesystem/index.js';
import { createHash } from 'crypto';
import { readFile, rename, mkdir } from 'fs/promises';
import { join, extname, dirname } from 'path';

interface ImportOptions {
  source: string;
  destination: string;
  organizeByDate: boolean;
  dedupeByHash: boolean;
  preserveOriginals: boolean;
}

class PhotoImporter {
  private seen = new Map<string, string>(); // hash -> path
  
  async import(options: ImportOptions) {
    // 1. Scan source
    const files = await this.scanDirectory(options.source);
    
    // 2. Process each file
    for (const file of files) {
      const hash = await this.calculateHash(file);
      
      // Check for duplicates
      if (options.dedupeByHash && this.seen.has(hash)) {
        console.log(`Duplicate found: ${file} = ${this.seen.get(hash)}`);
        continue;
      }
      
      // 3. Determine destination path
      const destPath = await this.determineDestination(file, options);
      
      // 4. Copy/move file
      await this.processFile(file, destPath, options);
      
      this.seen.set(hash, destPath);
    }
  }
  
  private async determineDestination(file: string, options: ImportOptions): Promise<string> {
    if (options.organizeByDate) {
      // Extract date from EXIF or filename
      const date = await this.extractDate(file);
      const year = date.getFullYear();
      const month = String(date.getMonth() + 1).padStart(2, '0');
      const monthName = date.toLocaleDateString('en-US', { month: 'long' }).toLowerCase();
      
      return join(
        options.destination,
        String(year),
        `${month}-${monthName}`,
        `${date.toISOString().split('T')[0]}_daily-photos`,
        this.generateFilename(file, date)
      );
    }
    
    return join(options.destination, 'unsorted', basename(file));
  }
}
```

## Step 5: Storage Hardware Recommendations

### For Your Use Case

1. **Primary Storage** (Start Here)
   - **Option A**: Single 4TB NVMe SSD (~$200-300)
     - Samsung 990 PRO or WD Black SN850X
     - Entire archive on fast storage
     - Simple, no RAID complexity
   
   - **Option B**: 2x 2TB NVMe in RAID 1 (~$300-400)
     - Redundancy built-in
     - Slightly more complex setup

2. **Backup Storage**
   - **Local**: 8TB External HDD (~$150)
     - WD Elements or Seagate Backup Plus
     - Weekly automated backups
   
   - **Cloud**: Backblaze B2 or Wasabi (~$5-10/month)
     - For irreplaceable photos only
     - ~1TB initially

### Directory Size Estimates

Based on your current sample:
- Average photo size: ~2-3MB (JPEG), ~1.5MB (HEIC)
- With metadata: +10KB per photo
- Thumbnails: +50KB per photo

For 100,000 photos:
- Original files: ~250GB
- Metadata + thumbnails: ~6GB  
- Total with overhead: ~300GB

## Step 6: Daily Workflow Setup

### Phone Auto-Sync

```bash
# Using Syncthing (recommended)
# Install: sudo apt install syncthing

# Configure folders:
# Phone: DCIM → /photos/inbox/phone-sync
# Auto-process every night via cron
```

### Daily Import Cron

```bash
# Add to crontab -e
# Process inbox photos every night at 2 AM
0 2 * * * /home/stephen/Documents/initial-media-processing/scripts/daily-import.sh

# Dedupe check weekly
0 3 * * 0 /home/stephen/Documents/initial-media-processing/scripts/weekly-dedupe.sh
```

## Step 7: Quick Wins

1. **Start with Recent Photos** (last 2 years)
   - Easier to organize when memories are fresh
   - Test the system with smaller dataset

2. **Use Symlinks for Collections**
   ```bash
   # Create thematic collections without duplicating
   ln -s /photos/archive/2024/09-september/2024-09-15_vacation \
         /photos/collections/trips/2024-europe-trip
   ```

3. **Parallel Processing**
   ```bash
   # Process multiple directories simultaneously
   find /photos/inbox -type d -name "20*" | \
     parallel -j 4 npm run process -- --directory {}
   ```

## Next Steps

1. **Week 1**: Set up directory structure and storage
2. **Week 2**: Import most recent year
3. **Week 3**: Process and enrich metadata  
4. **Week 4**: Set up automated workflows
5. **Month 2**: Import historical data in batches

## Monitoring Success

```sql
-- Track import progress
SELECT 
  DATE(import_date) as date,
  COUNT(*) as photos_imported,
  SUM(file_size)/1073741824 as gb_imported,
  import_batch
FROM file_locations
GROUP BY DATE(import_date), import_batch
ORDER BY date DESC;
```

This approach lets you start organizing immediately while building toward the comprehensive system described in the full strategy document.