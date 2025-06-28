# Large Collection Strategy - 1.4TB+ Media Archive

## Revised Storage Requirements

With 1.4TB of existing media, we need to adjust the approach significantly.

### Immediate Storage Needs

```
Current:  1.4TB raw media
+Metadata: ~140GB (10% for sidecar files, thumbnails, previews)  
+Growth:   ~200GB/year (20 photos/day × 3MB × 365 days)
+Working:  ~500GB (processing space, duplicates during reorg)
────────────────────────────────────
Total:     ~2.3TB minimum, 4TB recommended
```

## Revised Hardware Recommendations

### Option A: Performance Focus (Recommended)
```
Primary Storage:
- 4TB NVMe SSD ($400-500)
  - Samsung 990 PRO 4TB
  - WD Black SN850X 4TB  
  - Crucial T700 4TB

Backup Storage:
- 2 × 4TB HDD in RAID 1 ($200)
  OR
- 6TB External HDD ($180)

Total Cost: ~$600-700
```

### Option B: Capacity Focus (Budget-Friendly)
```
Primary Storage:
- 2TB NVMe SSD ($150) - Hot tier for recent/working
- 4TB HDD ($80) - Warm tier for main archive

Backup Storage:
- 6TB External HDD ($180)

Total Cost: ~$410
```

### Option C: Professional Setup
```
Primary Storage:
- Synology DS224+ NAS ($300)
- 2 × 6TB NAS HDD in RAID 1 ($340)
- 1TB NVMe cache ($80)

Benefits:
- Network accessible
- Automated backups
- Expandable to 32TB
- Built-in photo apps

Total Cost: ~$720
```

## Migration Strategy for 1.4TB

### Phase 1: Analysis (Before Moving Anything)

```bash
# Get detailed breakdown of current media
find "$HOME/GOOGLE-TAKEOUT-PROCESSING/Takeout/Google Photos" -type f \
  \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.heic" -o -iname "*.png" \
  -o -iname "*.mp4" -o -iname "*.mov" \) -print0 | \
  xargs -0 du -ch | tail -1

# Count files by year
for year in {2015..2025}; do
  count=$(find . -name "*$year*" -type f | wc -l)
  echo "$year: $count files"
done

# Find largest directories
du -h --max-depth=2 | sort -hr | head -20
```

### Phase 2: Prioritized Organization

Instead of organizing everything at once, prioritize:

```bash
# 1. Most recent 2 years (likely most accessed)
/photos/archive/2024/
/photos/archive/2025/

# 2. Special events/trips (high value)
/photos/collections/trips/
/photos/collections/family-events/

# 3. Everything else in year batches
/photos/archive/imported/bulk-2015-2019/
/photos/archive/imported/bulk-2020-2023/
```

## Deduplication Strategy (Critical at This Scale)

### Estimate: 20-30% Duplicates in Google Takeout

```bash
#!/bin/bash
# Fast duplicate detection for 1.4TB

# Step 1: Build file size index (fast)
find /source -type f -printf "%s %p\n" > size-index.txt
sort -n size-index.txt > size-index-sorted.txt

# Step 2: Find same-size files (potential duplicates)
awk '{print $1}' size-index-sorted.txt | uniq -d > duplicate-sizes.txt

# Step 3: Hash only potential duplicates (much faster)
while read size; do
  grep "^$size " size-index-sorted.txt | while read size filepath; do
    echo "$(md5sum "$filepath" | cut -d' ' -f1) $filepath"
  done
done < duplicate-sizes.txt > potential-duplicates.txt

# Step 4: Identify actual duplicates
sort potential-duplicates.txt | awk '{
  if ($1 == prev_hash) {
    print prev_file " == " $2
  }
  prev_hash = $1
  prev_file = $2
}'
```

### Estimated Space Savings: 300-400GB

## Optimized Import Workflow

### Parallel Processing for 1.4TB

```bash
#!/bin/bash
# Parallel import with progress tracking

SOURCE="/home/stephen/GOOGLE-TAKEOUT-PROCESSING/Takeout/Google Photos"
DEST="/photos/archive/imported"
WORKERS=4

# Create year-based chunks
find "$SOURCE" -name "*.jpg" -o -name "*.heic" | \
  sed 's/.*Photos from \([0-9]\{4\}\).*/\1/' | \
  sort -u > years.txt

# Process years in parallel
cat years.txt | parallel -j $WORKERS --eta \
  'rsync -av --progress \
   --include="*from {}*" \
   --include="*/" \
   --exclude="*" \
   "'$SOURCE'/" \
   "'$DEST'/year-{}/"'
```

## Performance Optimizations

### 1. Tiered Processing

```typescript
// Process in tiers to avoid memory issues
export class TieredProcessor {
  async processLargeArchive(sourcePath: string) {
    // Tier 1: Recent photos (full processing)
    await this.processRecent(sourcePath, { 
      fullEnrichment: true,
      generatePreviews: true 
    });
    
    // Tier 2: Older photos (basic processing)
    await this.processArchival(sourcePath, {
      fullEnrichment: false,
      generatePreviews: false,
      batchSize: 1000
    });
    
    // Tier 3: Videos (separate pipeline)
    await this.processVideos(sourcePath, {
      extractThumbnails: true,
      skipTranscoding: true
    });
  }
}
```

### 2. Database Partitioning

```sql
-- Partition media_files table by year for better performance
ALTER TABLE media_files 
PARTITION BY RANGE (YEAR(capture_date)) (
  PARTITION p_2015 VALUES LESS THAN (2016),
  PARTITION p_2016 VALUES LESS THAN (2017),
  -- ... etc
  PARTITION p_2025 VALUES LESS THAN (2026),
  PARTITION p_future VALUES LESS THAN MAXVALUE
);

-- Indexes for large collections
CREATE INDEX idx_file_hash ON media_files(file_hash);
CREATE INDEX idx_capture_date ON media_files(capture_date);
CREATE INDEX idx_file_size ON media_files(file_size);
```

## Incremental Migration Plan

### Week 1: Setup & Test
- Set up new storage
- Test with 10GB subset
- Refine organization rules

### Week 2-3: Recent Years
- Import 2024-2025 photos
- Full enrichment processing
- Verify organization

### Week 4-5: Historical Import  
- Import 2020-2023
- Basic processing only
- Deduplicate aggressively

### Week 6-8: Archive Import
- Import pre-2020
- Minimal processing
- Focus on organization

### Ongoing: Optimization
- Background enrichment
- Thumbnail generation
- Duplicate cleanup

## Monitoring Progress

```bash
#!/bin/bash
# Progress monitoring script

echo "=== Import Progress ==="
echo "Source size: $(du -sh "$SOURCE" | cut -f1)"
echo "Imported: $(du -sh /photos/archive | cut -f1)"
echo "Processed: $(find /photos/archive -name "*.json" | wc -l) files"
echo "Duplicates found: $(cat /photos/metadata/duplicates.log | wc -l)"
echo ""
echo "=== Storage Usage ==="
df -h | grep -E "(photos|backup)"
echo ""
echo "=== Recent Activity ==="
find /photos/archive -type f -mmin -60 | wc -l
echo "files processed in last hour"
```

## Key Differences for Large Collections

1. **Deduplication First**: Could save 300-400GB
2. **Tiered Processing**: Recent photos get full treatment
3. **Incremental Migration**: Spread over 6-8 weeks
4. **Performance Tuning**: Database partitioning, parallel processing
5. **Storage Headroom**: 4TB minimum for breathing room

Would you like me to create specific scripts for your 1.4TB import process?