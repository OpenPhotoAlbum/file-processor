# Metadata Merge Strategy

## Problem Statement

When reprocessing media files to add new metadata fields (like Live Photo detection), we risk losing existing enriched data if certain providers are disabled. For example:
- A file processed with `RECREATION_GOV_PROVIDER_ENABLED=true` has landmark data
- Reprocessing without this flag would lose all Recreation.gov landmarks
- GPS coordinates, geolocation data, and other expensive operations would be lost

## Proposed Solution: Smart Merge Mode

### CLI Flags

```bash
# Default behavior (backwards compatible)
node dist/main.js -f photo.jpg -o photo.json

# Explicit overwrite (replace everything)
node dist/main.js -f photo.jpg -o photo.json --overwrite

# Smart merge (preserve existing enriched data)
node dist/main.js -f photo.jpg -o photo.json --merge

# Merge specific sections only
node dist/main.js -f photo.jpg -o photo.json --merge-sections=location,timestamps
```

### Merge Strategy by Section

#### 1. **File Metadata** (Always Overwrite)
- Path, size, hash, MIME type
- Created/modified dates
- These should reflect current file state

#### 2. **Processing History** (Append to Array)
- Each processing run adds a new entry
- Maintains full history of what was extracted when
- Tracks which providers were enabled for each run

```javascript
// Current structure (single object):
processing: {
  success: boolean,
  processor: string,
  extractedAt: string,
  processingTimeMs?: number,
  error?: string
}

// Proposed structure (array of processing events):
processingHistory: [
  {
    success: true,
    processor: "ImageProcessor",
    extractedAt: "2024-01-15T10:30:00Z",
    processingTimeMs: 245,
    providersEnabled: ["GNIS", "NPS"],
    fieldsUpdated: ["location", "timestamps", "camera"]
  },
  {
    success: true,
    processor: "VideoProcessor",
    extractedAt: "2024-06-28T14:30:00Z",
    processingTimeMs: 180,
    providersEnabled: [],
    fieldsUpdated: ["media.isLivePhoto", "media.livePhotoInfo"],
    version: "1.2.0" // Track processor version
  }
]

// Keep current processing as latest entry for backwards compatibility
processing: processingHistory[processingHistory.length - 1]
```

#### 3. **Media Properties** (Merge with Override)
- Basic properties (width, height, format) - overwrite
- **NEW: isLivePhoto, livePhotoInfo** - always update
- Preserve any custom fields not in current extraction

#### 4. **Location Data** (Smart Merge)
```javascript
// Merge strategy for location
{
  primary: existing.primary || new$ the.primary,
  alternatives: [...existing.alternatives, ...new.alternatives],
  conflicts: [...existing.conflicts, ...new.conflicts],
  geolocation: existing.geolocation || new.geolocation,
  landmarks: mergeLandmarks(existing.landmarks, new.landmarks),
  enrichmentStatus: {
    // Preserve provider results if they were previously successful
    geolocation: existing.enrichmentStatus?.geolocation || new.enrichmentStatus.geolocation,
    landmarks: existing.enrichmentStatus?.landmarks || new.enrichmentStatus.landmarks,
    providersUsed: [...new Set([...existing.providersUsed, ...new.providersUsed])]
  }
}
```

#### 5. **Timestamps** (Intelligent Merge)
- Keep highest confidence timestamps
- Merge alternatives array
- Preserve source diversity

#### 6. **Camera/Settings** (Simple Merge)
- Merge objects, preferring non-empty values
- Preserve all fields

### Implementation Plan

#### Phase 1: Core Merge Logic
```typescript
interface MergeOptions {
  mode: 'overwrite' | 'merge' | 'merge-selective';
  sections?: Array<'location' | 'timestamps' | 'camera' | 'settings' | 'technical'>;
  preserveEnrichment?: boolean; // Keep expensive operations like geolocation
}

class MetadataMerger {
  merge(existing: ProcessingResult, new: ProcessingResult, options: MergeOptions): ProcessingResult {
    // Implementation
  }
}
```

#### Phase 2: CLI Integration
```typescript
// In CLI handler
if (flags.merge) {
  const existingMetadata = await readExistingMetadata(outputPath);
  if (existingMetadata) {
    const merged = metadataMerger.merge(existingMetadata, newMetadata, {
      mode: 'merge',
      preserveEnrichment: true
    });
    metadata = merged;
  }
}
```

#### Phase 3: Validation & Safety
- Validate merged data structure
- Log what was preserved vs updated
- Create backup of original before merge

### Use Cases

#### 1. Adding Live Photo Detection
```bash
# Original processing with full enrichment
RECREATION_GOV_PROVIDER_ENABLED=true node dist/main.js -f video.mov -o video.json

# Later: Add Live Photo detection without losing landmarks
node dist/main.js -f video.mov -o video.json --merge
```

#### 2. Updating Specific Fields
```bash
# Update only media properties (e.g., after video processor improvements)
node dist/main.js -f video.mov -o video.json --merge-sections=media
```

#### 3. Force Complete Reprocessing
```bash
# Explicitly overwrite everything
RECREATION_GOV_PROVIDER_ENABLED=true node dist/main.js -f photo.jpg -o photo.json --overwrite
```

### Processing History Benefits

1. **Audit Trail**
   - See exactly when each enrichment was added
   - Track which providers were available at processing time
   - Identify what changed between runs

2. **Debugging Aid**
   - Understand why certain fields might be missing
   - Trace back processing errors
   - Version tracking for processor improvements

3. **Selective Rollback**
   - Can identify and revert specific processing runs
   - Cherry-pick enrichments from different runs

Example with processing history:
```json
{
  "processingHistory": [
    {
      "extractedAt": "2024-01-15T10:30:00Z",
      "processor": "ImageProcessor",
      "success": true,
      "providersEnabled": ["GNIS", "NPS", "RECREATION_GOV"],
      "fieldsUpdated": ["location", "timestamps", "camera", "settings"],
      "notes": "Initial full processing with all providers"
    },
    {
      "extractedAt": "2024-03-20T15:45:00Z",
      "processor": "ImageProcessor",
      "success": true,
      "providersEnabled": ["GNIS"],
      "fieldsUpdated": ["timestamps"],
      "notes": "Reprocessed for improved timestamp extraction",
      "version": "1.1.0"
    },
    {
      "extractedAt": "2024-06-28T14:30:00Z",
      "processor": "VideoProcessor",
      "success": true,
      "providersEnabled": [],
      "fieldsUpdated": ["media.isLivePhoto", "media.livePhotoInfo"],
      "notes": "Added Live Photo detection",
      "version": "1.2.0"
    }
  ],
  "processing": {
    // Latest entry for backwards compatibility
    "success": true,
    "processor": "VideoProcessor",
    "extractedAt": "2024-06-28T14:30:00Z"
  }
}
```

### Safety Features

1. **Backup Creation**
   - Before merge, save `photo.json.backup`
   - Rotate backups (keep last 3)

2. **Merge Logging**
   ```
   [MERGE] Preserving location data (6 landmarks)
   [MERGE] Updating media.isLivePhoto: false → true
   [MERGE] Keeping existing geolocation (provider: Nominatim)
   ```

3. **Dry Run Mode**
   ```bash
   node dist/main.js -f photo.jpg --merge --dry-run
   # Shows what would be merged without writing
   ```

### Configuration

Add to `.claude/settings.json`:
```json
{
  "merge": {
    "defaultMode": "preserve", // or "overwrite"
    "preserveExpensiveOperations": true,
    "backupCount": 3,
    "alwaysPreserve": ["location.landmarks", "location.geolocation"]
  }
}
```

## Benefits

1. **Never lose expensive enrichment data** (GPS lookups, landmark queries)
2. **Safely add new fields** without full reprocessing
3. **Selective updates** for specific improvements
4. **Backwards compatible** (default behavior unchanged)
5. **Audit trail** through backups and logging

## Example Workflow

```bash
# Initial processing with all providers
RECREATION_GOV_PROVIDER_ENABLED=true \
GEOLOCATION_ENABLED=true \
  node dist/main.js -f /photos/archive/2023/07/*.jpg -o {}.json

# Later: Add Live Photo detection to all videos
find /photos -name "*.mov" | xargs -P 8 -I {} \
  node dist/main.js -f {} -o {}.json --merge

# Even later: Update with improved timestamp extraction
find /photos -name "*.json" | xargs -P 8 -I {} \
  node dist/main.js -f ${%.json} -o {} --merge-sections=timestamps
```