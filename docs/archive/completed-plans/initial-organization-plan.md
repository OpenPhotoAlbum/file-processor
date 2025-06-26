# Initial Photo Organization Plan

## Current Situation
- **Source**: `/home/stephen/GOOGLE-TAKEOUT-PROCESSING` (1.5TB)
- **NVMe Available**: 1.9TB free on `/` mount
- **Goal**: Organize using `mv` operations (no copying) while staying on fast NVMe

## Proposed Organization Structure

```
/photos/                          # Main photo archive (on NVMe)
├── staging/                      # Temporary import area
│   ├── google-takeout/          # Raw Google Takeout files
│   └── processing/              # Files being processed
├── archive/                     # Final organized photos
│   ├── 2015/
│   ├── 2016/
│   ├── ...
│   ├── 2024/
│   │   ├── 01-january/
│   │   │   ├── 2024-01-15_birthday-party/
│   │   │   └── 2024-01-20_daily-photos/
│   │   └── 12-december/
│   └── 2025/
├── metadata/                    # Processing metadata
│   ├── duplicates.log
│   ├── processing-progress.json
│   └── enrichment-queue/
└── working/                     # Temporary processing space
    ├── thumbnails/
    ├── previews/
    └── temp/
```

## Phase 1: Setup Base Structure (5 minutes)

```bash
# Create the base structure
sudo mkdir -p /photos/{staging,archive,metadata,working}
sudo mkdir -p /photos/staging/{google-takeout,processing}
sudo mkdir -p /photos/working/{thumbnails,previews,temp}
sudo mkdir -p /photos/metadata/enrichment-queue

# Set ownership
sudo chown -R stephen:stephen /photos
chmod -R 755 /photos
```

## Phase 2: Move Google Takeout (30 minutes)

```bash
# Move the entire Google Takeout to staging (mv = instant)
mv "/home/stephen/GOOGLE-TAKEOUT-PROCESSING" "/photos/staging/google-takeout"

# This creates:
# /photos/staging/google-takeout/Takeout/Google Photos/...
```

## Phase 3: Analyze and Plan (1 hour)

```bash
# Analyze the Google Takeout structure
cd "/photos/staging/google-takeout"

# Get size breakdown by year directories
find . -name "Photos from *" -type d | while read dir; do
    year=$(echo "$dir" | sed 's/.*Photos from \([0-9]\{4\}\).*/\1/')
    size=$(du -sh "$dir" | cut -f1)
    count=$(find "$dir" -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.heic" -o -name "*.png" -o -name "*.mp4" -o -name "*.mov" \) | wc -l)
    echo "$year: $size ($count files)"
done | sort
```

## Phase 4: Priority-Based Organization

### 4.1: Recent Photos First (High Value)
```bash
# Start with 2024-2025 (most accessed, highest value)
mkdir -p /photos/archive/{2024,2025}

# Move recent years (these will get full processing)
node /home/stephen/Documents/initial-media-processing/scripts/chronological-import.ts \
  "/photos/staging/google-takeout/Takeout/Google Photos" \
  "/photos/archive" \
  --year-filter "2024,2025" \
  --full-processing
```

### 4.2: Historical Photos (Bulk Organization)
```bash
# Move older years in batches (minimal processing initially)
for year in {2020..2023}; do
  mkdir -p "/photos/archive/$year"
  
  # Fast move operation for year-based directories
  find "/photos/staging/google-takeout" -name "*Photos from $year*" -type d | while read dir; do
    echo "Moving $year photos..."
    # Use our import script for organized moving
    node /home/stephen/Documents/initial-media-processing/scripts/chronological-import.ts \
      "$dir" \
      "/photos/archive" \
      --minimal-processing \
      --batch-size 1000
  done
done
```

## Phase 5: Deduplication (Space Recovery)

```bash
# Create deduplication script
cat > /photos/working/dedupe.sh << 'EOF'
#!/bin/bash
cd /photos/staging/google-takeout

echo "Starting duplicate detection..."
echo "This will take 2-3 hours but could save 300-400GB"

# Fast duplicate detection by file size + hash
find . -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.heic" -o -name "*.png" -o -name "*.mp4" \) -printf "%s %p\n" > /photos/working/size-index.txt

# Find potential duplicates (same size)
sort -n /photos/working/size-index.txt | awk '{print $1}' | uniq -d > /photos/working/duplicate-sizes.txt

# Hash only potential duplicates
echo "Hashing potential duplicates..."
while read size; do
    grep "^$size " /photos/working/size-index.txt | while read sz filepath; do
        if [ -f "$filepath" ]; then
            hash=$(md5sum "$filepath" | cut -d' ' -f1)
            echo "$hash $filepath"
        fi
    done
done < /photos/working/duplicate-sizes.txt > /photos/working/hashes.txt

# Find actual duplicates
echo "Identifying duplicates..."
sort /photos/working/hashes.txt | awk '{
    if ($1 == prev_hash && prev_file != "") {
        print "DUPLICATE: " prev_file " == " $2
        system("rm \"" $2 "\"")  # Remove duplicate
        duplicate_count++
    }
    prev_hash = $1
    prev_file = $2
} END {
    print "Removed " duplicate_count " duplicates"
}'
EOF

chmod +x /photos/working/dedupe.sh
```

## Space Management Strategy

### Current Space Usage
```
Source Photos:        1.5TB
Available NVMe:       1.9TB  
Working Headroom:     400GB
```

### After Organization
```
Organized Archive:    ~1.1TB (after deduplication)
Working Space:        ~300GB (thumbnails, processing)
Free Space:          ~500GB (for daily operations)
```

## Benefits of This Approach

1. **No Copying**: Uses `mv` operations to stay within disk space limits
2. **Fast NVMe**: All current photos stay on fast storage
3. **Incremental**: Can pause and resume at any step
4. **Safe**: Original structure preserved in staging until confirmed
5. **Scalable**: Easy to add new photos to organized structure

## Emergency Fallback

If space gets tight during organization:

```bash
# Move older years to HDD temporarily
mv /photos/archive/{2015,2016,2017,2018,2019} /mnt/hdd/photos-temp/

# Complete organization of recent years
# Then move older years back when ready
```

## Verification Steps

```bash
# Check organization progress
du -sh /photos/archive/*/
find /photos/archive -name "*.jpg" | wc -l  # Photo count
df -h /  # Remaining space

# Verify no data loss
find /photos/staging/google-takeout -name "*.jpg" | wc -l  # Original count
find /photos/archive -name "*.jpg" | wc -l  # Organized count
```

## Next Steps After Organization

1. **Run Processing Pipeline**: Process organized photos with GPS enrichment
2. **Generate Thumbnails**: Create preview system
3. **Setup Collections**: Create curated albums via symlinks
4. **Plan NAS Migration**: Eventually move to larger storage system

This plan keeps everything on your fast NVMe while creating a sustainable organization structure using only `mv` operations.