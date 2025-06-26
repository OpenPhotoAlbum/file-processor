# Google Takeout Stragglers Completion Plan

**Purpose:** Process the remaining ~134K Google Takeout files that were missed during the initial organization phases and integrate them into the existing `/photos/archive/` structure.

**Current Status:** Timestamp extraction in progress using fixed parallel processing script

## Overview

These are Google Takeout files in `/photos/staging/google-takeout/Takeout/Google Photos` that weren't processed during the initial Phases 1-3B. They need to be:
1. Organized into the existing `/photos/archive/YYYY/MM/` structure
2. Deduplicated against existing archive
3. Have collections preserved from Google album data
4. Receive full metadata enrichment (Phase 3A + 3B)

## Current Progress: Step 1 - Timestamp Extraction ✅ IN PROGRESS

**Script:** `/scripts/process-google-takeout-complete.sh`  
**Status:** Running with 45 parallel processes  
**Performance:** Fixed `npm run dev` → `node dist/main.js` (massive speedup)

**Outputs:**
- `/tmp/google_takeout_processing_complete/all_media.txt` - List of all media files
- `/tmp/google_takeout_processing_complete/all_timestamps.json` - Extracted timestamps

**Monitoring:** `/scripts/watch-google-takeout-progress.sh`

## Implementation Plan

### Step 2: Execute Organized Moves with Collection Preservation (OPTIMIZED APPROACH)
**Purpose:** Single-pass parallel processing that combines parsing and moving in one optimized workflow

**Architecture: Job Queue with File Locking**
- **No intermediate files** - Stream directly from timestamp extraction results
- **Parallel safe** - Multiple workers using atomic file operations
- **Resume capability** - Can interrupt and continue processing
- **Real-time progress** - Watch files process as they're consumed

**Setup Phase:**
1. **Backup source files:**
   ```bash
   cp all_media.txt all_media_backup.txt
   cp all_timestamps.json all_timestamps_backup.json
   echo "$(wc -l < all_media_backup.txt)" > total_files.txt
   echo "0" > completed_files.txt
   ```

2. **Create directory structure** - Ensure all needed `/photos/archive/YYYY/MM/` directories exist

**Worker Script Logic (`scripts/process-stragglers-worker.js`):**
```javascript
while (true) {
  // 1. Acquire file lock (atomic operation)
  const lockResult = await acquireFileLock('all_media.txt');
  
  // 2. Read + remove first line from both files
  const filePath = removeFirstLine('all_media.txt');
  const timestamp = removeFirstLine('all_timestamps.json');
  
  // 3. Release lock
  releaseLock(lockResult);
  
  // 4. Exit if no more files
  if (!filePath) break;
  
  // 5. Process this file pair:
  //    - Parse timestamp → target directory
  //    - Generate unique filename
  //    - Find & read Google sidecar for album data  
  //    - Move photo to organized location
  //    - Create collection symlinks
  //    - Delete Google sidecar
  //    - Handle null timestamps → /photos/archive/unknown/
  await processFilePair(filePath, timestamp);
  
  // 6. Update progress counter
  incrementCompletedCount();
}
```

**Parallel Execution:**
```bash
# Run 20 parallel workers
parallel -j 20 node scripts/process-stragglers-worker.js ::: {1..20}
```

**Progress Monitoring:**
```bash
# Watch real-time progress
watch 'echo "Progress: $(cat completed_files.txt)/$(cat total_files.txt) files processed"'
watch 'echo "Queue remaining: $(wc -l < all_media.txt) files"'
```

**Benefits:**
- ✅ **Atomic operations** - No duplicate processing across workers
- ✅ **Natural load balancing** - Fast workers automatically get more files
- ✅ **Resume capability** - Restart and continue from where interrupted
- ✅ **Memory efficient** - Process one file at a time, no large data structures
- ✅ **Real-time feedback** - Watch queue shrink and progress increase
- ✅ **Test friendly** - Easy to test with single file by stopping after one iteration

**Outputs:**
- Files organized in `/photos/archive/YYYY/MM/` with standard naming
- Collection symlinks created in `/photos/collections/`
- Worker logs with success/failure tracking per process
- Progress counters for monitoring

**Testing Strategy:**
1. **Single file test** - Modify worker to exit after processing one file
2. **Small batch** - Process 100 files to verify all logic works
3. **Full parallel run** - Execute all 20 workers on remaining files

### Step 3: Deduplicate Against Existing Archive
**Purpose:** Remove any duplicates between newly imported files and existing archive

**Process:**
1. **Run jdupes** across entire `/photos/archive/` directory
2. **Hash-based comparison** for exact duplicate detection
3. **Preserve existing files** - Delete newly imported duplicates (existing files have priority)
4. **Update broken symlinks** - Fix any collection symlinks pointing to deleted duplicates
5. **Log deduplication results** - Track how many files removed, space saved

**Command:** `jdupes -rd /photos/archive/`

### Step 4: Phase 3A Enrichment (Basic Metadata)
**Purpose:** Generate enriched JSON sidecars with basic metadata

**Process:**
1. **Scan newly organized files** - Only process files without existing `.json` sidecars
2. **Extract basic metadata:**
   - EXIF data (camera settings, GPS, technical specs)
   - GNIS natural landmarks (mountains, lakes, rivers)
   - Municipal boundaries (city/county/town detection)
   - Basic geolocation data
3. **Generate sidecars** - Create `.json` files alongside each photo
4. **No API calls** - Only local database queries for fast processing

**Script:** Existing CLI with batch processing: `node dist/main.js -d /photos/archive/YYYY/MM/ --batch`

### Step 5: Phase 3B Enrichment (Contextual Enhancement)
**Purpose:** Add smart Recreation.gov data where geographically relevant

**Process:**
1. **Contextual analysis** - Read existing sidecars to determine geographic context
2. **Smart Recreation.gov integration:**
   - Only call API for GPS photos in outdoor/recreation contexts
   - Skip urban areas, residential locations
   - Use existing caching and rate limiting
3. **Update existing sidecars** - Add Recreation.gov data to Phase 3A JSON files
4. **~37% success rate** expected based on previous analysis

**Script:** Existing contextual provider with smart logic

## Success Metrics

- **Files processed:** ~134K Google Takeout files
- **Organization:** All files in `/photos/archive/YYYY/MM/` structure
- **Collections preserved:** Album relationships maintained via symlinks
- **Deduplication:** Remove redundant copies, maintain archive integrity
- **Metadata coverage:** 100% Phase 3A, ~37% Phase 3B enrichment
- **Performance:** Complete process within reasonable timeframe

## File Structure After Completion

```
/photos/
├── archive/YYYY/MM/
│   ├── YYYY-MM-DD_HH-MM-SS_001.jpg          # Newly organized files
│   ├── YYYY-MM-DD_HH-MM-SS_001.jpg.json     # Enriched sidecars
│   └── ...
├── collections/Album_Name/
│   ├── YYYY-MM-DD_HH-MM-SS_001.jpg -> ../../archive/YYYY/MM/...  # New symlinks
│   └── ...
└── staging/google-takeout/                   # Should be empty after completion
```

## Integration with Existing System

This process integrates seamlessly with the existing organized photo system:
- **Maintains naming convention:** `YYYY-MM-DD_HH-MM-SS_000.ext`
- **Preserves collection structure:** Google albums → `/photos/collections/`
- **Uses existing enrichment pipeline:** Phase 3A → Phase 3B workflow
- **Compatible with MCP search:** New files searchable via semantic search
- **Deduplication safe:** Existing files take priority over imports

## Risk Mitigation

- **Backup before processing:** Ensure `/photos/archive/` is backed up
- **Batch processing:** Process in chunks to allow interruption/resume
- **Dry run mode:** Test move scripts before actual execution
- **Logging:** Comprehensive logs for debugging and verification
- **Rollback plan:** Keep staging files until verification complete

## Next Steps After Completion

1. **External iPhone collections:** Process `/photos/staging/external-imports/`
2. **Photo metadata browser:** Scale browser system to full collection
3. **Advanced features:** CompreFace integration, privacy zones

---

**Created:** 2025-06-26  
**Status:** Step 1 (Timestamp Extraction) in progress  
**Estimated completion:** TBD based on parallel processing performance