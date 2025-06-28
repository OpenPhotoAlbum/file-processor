# Sidecar Deduplication Strategy

## Problem Statement

When removing duplicate images, we need to handle their JSON sidecars without losing metadata or creating orphaned references.

## Approach 1: Simple Reference Preservation (Recommended First Step)

### Concept
Instead of merging complex metadata, keep all sidecars and reference them in the kept image's JSON.

### Schema Extension
```json
{
  "title": "IMG_1234.jpg",
  "description": "Family gathering",
  "photoTakenTime": {...},
  "geoData": {...},
  "people": [...],
  
  // NEW FIELD - References to duplicate sidecars
  "duplicateMetadata": [
    {
      "originalImagePath": "/photos/.../Sunday River 2024/IMG_1234.jpg",
      "sidecarPath": "/photos/.../Sunday River 2024/IMG_1234.jpg.json",
      "relocatedSidecarPath": "/photos/metadata/duplicate-sidecars/sunday-river-2024_IMG_1234.jpg.json"
    },
    {
      "originalImagePath": "/photos/.../La Femme - 2024/IMG_1234.jpg", 
      "sidecarPath": "/photos/.../La Femme - 2024/IMG_1234.jpg.json",
      "relocatedSidecarPath": "/photos/metadata/duplicate-sidecars/la-femme-2024_IMG_1234.jpg.json"
    }
  ],
  
  // Audit trail
  "deduplicationInfo": {
    "processedAt": "2025-06-25T12:30:00Z",
    "keptImagePath": "/photos/.../Photos from 2024/IMG_1234.jpg",
    "removedDuplicates": [
      "/photos/.../Sunday River 2024/IMG_1234.jpg",
      "/photos/.../La Femme - 2024/IMG_1234.jpg"
    ]
  }
}
```

### Implementation Plan

#### Phase 1: Sidecar Relocation
```typescript
async function relocateDuplicateSidecars(duplicates: DuplicateGroup): Promise<void> {
  const keeper = duplicates.files[0]; // Keep first file
  const toRemove = duplicates.files.slice(1); // Remove rest
  
  const keeperJsonPath = keeper.path + '.json';
  const keeperJson = JSON.parse(await fs.readFile(keeperJsonPath, 'utf8'));
  
  // Initialize new fields
  keeperJson.duplicateMetadata = [];
  keeperJson.deduplicationInfo = {
    processedAt: new Date().toISOString(),
    keptImagePath: keeper.path,
    removedDuplicates: []
  };
  
  for (const duplicate of toRemove) {
    const duplicateJsonPath = duplicate.path + '.json';
    
    if (await fs.pathExists(duplicateJsonPath)) {
      // Create safe filename for relocated sidecar
      const safeFilename = createSafeFilename(duplicate.path);
      const relocatedPath = `/photos/metadata/duplicate-sidecars/${safeFilename}.json`;
      
      // Move sidecar to safe location
      await fs.ensureDir('/photos/metadata/duplicate-sidecars');
      await fs.move(duplicateJsonPath, relocatedPath);
      
      // Add reference to keeper's JSON
      keeperJson.duplicateMetadata.push({
        originalImagePath: duplicate.path,
        sidecarPath: duplicateJsonPath,
        relocatedSidecarPath: relocatedPath
      });
      
      keeperJson.deduplicationInfo.removedDuplicates.push(duplicate.path);
    }
    
    // Remove duplicate image
    await fs.unlink(duplicate.path);
  }
  
  // Update keeper's JSON
  await fs.writeFile(keeperJsonPath, JSON.stringify(keeperJson, null, 2));
}

function createSafeFilename(originalPath: string): string {
  // Convert path to safe filename
  // /photos/.../Sunday River 2024/IMG_1234.jpg 
  // -> sunday-river-2024_IMG_1234
  const parts = originalPath.split('/');
  const directory = parts[parts.length - 2]; // "Sunday River 2024"
  const filename = path.parse(parts[parts.length - 1]).name; // "IMG_1234"
  
  const safeDir = directory.toLowerCase().replace(/[^a-z0-9]/g, '-');
  return `${safeDir}_${filename}`;
}
```

#### Phase 2: Directory Structure
```
/photos/metadata/
├── duplicate-sidecars/           # Preserved duplicate metadata
│   ├── sunday-river-2024_IMG_1234.jpg.json
│   ├── la-femme-2024_IMG_1234.jpg.json
│   └── young-family_IMG_2024.jpg.json
├── deduplication-log.json        # Master log of all operations
└── recovery-index.json           # Index for potential recovery
```

#### Phase 3: Recovery & Analysis Tools
```typescript
// Tool to analyze preserved metadata
async function analyzeDuplicateMetadata(imagePath: string): Promise<void> {
  const jsonPath = imagePath + '.json';
  const metadata = JSON.parse(await fs.readFile(jsonPath, 'utf8'));
  
  if (metadata.duplicateMetadata) {
    console.log(`Image has ${metadata.duplicateMetadata.length} duplicate sidecars:`);
    
    for (const dup of metadata.duplicateMetadata) {
      const dupMetadata = JSON.parse(await fs.readFile(dup.relocatedSidecarPath, 'utf8'));
      console.log(`  - ${dup.originalImagePath}`);
      console.log(`    GPS: ${dupMetadata.geoData ? 'Yes' : 'No'}`);
      console.log(`    People: ${dupMetadata.people?.length || 0}`);
      console.log(`    Description: ${dupMetadata.description || 'None'}`);
    }
  }
}

// Tool to recover a specific duplicate
async function recoverDuplicate(imagePath: string, duplicateIndex: number): Promise<void> {
  // Read keeper metadata
  const keeperJson = JSON.parse(await fs.readFile(imagePath + '.json', 'utf8'));
  const duplicateRef = keeperJson.duplicateMetadata[duplicateIndex];
  
  // This would restore the duplicate image and its original sidecar
  // (Implementation depends on whether you keep image backups)
}
```

### Benefits of This Approach

1. **Zero metadata loss** - All sidecars preserved
2. **Reversible** - Can reconstruct original structure if needed
3. **Simple implementation** - No complex merging logic
4. **Immediate space savings** - Duplicate images removed right away
5. **Future-proof** - Can implement complex merging later
6. **Auditable** - Clear trail of what was done

### Usage Workflow

```bash
# 1. Run deduplication with sidecar preservation
node scripts/dedupe-with-sidecars.js /photos/staging/google-takeout

# 2. Analyze a specific image's duplicate metadata
node scripts/analyze-duplicates.js /photos/archive/2024/01-january/IMG_1234.jpg

# 3. Later: Run complex metadata merger on preserved sidecars
node scripts/merge-duplicate-metadata.js /photos/archive/2024/01-january/IMG_1234.jpg
```

## Approach 2: Complex Metadata Merging (Future Enhancement)

[Previous complex merging strategy documented here for later implementation]

### Merge Conflict Resolution
- Timestamp conflicts: Choose more precise
- GPS conflicts: Choose more accurate
- People tags: Merge and deduplicate
- Descriptions: Concatenate with separator

### Implementation
[Full TypeScript implementation with conflict detection, smart merging rules, validation, and audit trails]

## Recommendation

Start with **Approach 1** (Simple Reference Preservation) because:
- Immediate space savings with zero risk
- Preserves all metadata for future analysis
- Can be implemented quickly and safely
- Provides foundation for complex merging later

Once comfortable with the simple approach, implement Approach 2 for true metadata consolidation.