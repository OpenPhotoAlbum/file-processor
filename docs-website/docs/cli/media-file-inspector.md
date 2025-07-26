---
title: "Media File Inspector - CLI Integration Plan"
description: Auto-generated from media-file-inspector.md
---

# Media File Inspector - CLI Integration Plan

## Current Script Features

The `inspect-media-file.cjs` script provides comprehensive database inspection:

### ✅ What It Shows
- **Core file info**: ID, collection, hash, size, MIME type, Live Photo status
- **Timestamps**: All timestamps converted to EDT/EST for easy reading
- **Equipment**: Camera make/model, imaging train details
- **Camera settings**: ISO, aperture, shutter speed, focal length
- **Colors**: Dominant, mean, salient color analysis
- **Location data**: GPS coordinates, geolocation confidence, city/state/country
- **Landmarks**: Nearby points of interest with distances
- **Software**: Capture software (iOS version, etc.)
- **Processing history**: All processing runs with success/failure
- **Metadata summary**: Field counts and key details

### ✅ Flexible Input
- **File ID**: `node inspect-media-file.cjs 51782`
- **Relative path**: `node inspect-media-file.cjs "IMG_6645.jpg"`
- **Partial path**: `node inspect-media-file.cjs "2019/12/photo.jpg"`
- **MD5 hash**: `node inspect-media-file.cjs "6f8c330c41efd3306ff9de744667c92f"`

## CLI Integration Options

### Option 1: New CLI Command
```bash
# Add as new main command
node dist/main.js --inspect <identifier\>
node dist/main.js --inspect 51782
node dist/main.js --inspect "sample:IMG_6645.jpg"
```

### Option 2: Subcommand
```bash
# Add as inspect subcommand
node dist/main.js inspect <identifier\>
node dist/main.js inspect --file-id 51782
node dist/main.js inspect --path "IMG_6645.jpg"
```

### Option 3: Database Query Mode
```bash
# Add as database operation
node dist/main.js --db-inspect <identifier\>
node dist/main.js --output-db --inspect <identifier\>
```

## Recommended Implementation

### Phase 1: CLI Flag (Quick Integration)
Add `--inspect` flag to existing CLI:

```typescript
// In cli/index.ts
.option('--inspect <identifier\>', 'inspect database record for media file')

// In handler
if (program.getOptionValue('inspect')) {
  await inspectMediaFile(program.getOptionValue('inspect'));
  return;
}
```

### Phase 2: Dedicated Inspect Command
Create separate inspect CLI with rich options:

```bash
# Basic usage
node dist/inspect.js <identifier\>

# Output formats
node dist/inspect.js <identifier\> --json
node dist/inspect.js <identifier\> --format table
node dist/inspect.js <identifier\> --sections location,landmarks

# Batch inspection
node dist/inspect.js --collection staging --limit 10
```

## Implementation Details

### Core Function
Move logic from `scripts/inspect-media-file.cjs` to:
- `src/services/database/MediaFileInspector.ts`
- Export class with methods for different output formats

### CLI Integration
```typescript
// src/cli/commands/inspect.ts
export class InspectCommand {
  async execute(identifier: string, options: InspectOptions) {
    const inspector = new MediaFileInspector(this.db);
    const data = await inspector.getCompleteRecord(identifier);
    
    if (options.json) {
      console.log(JSON.stringify(data, null, 2));
    } else {
      await inspector.displayFormatted(data, options.sections);
    }
  }
}
```

### Future Enhancements
1. **Web interface**: Expose inspection via photo browser API
2. **Comparison mode**: Compare two files side-by-side
3. **Validation mode**: Check for data integrity issues
4. **Export options**: Save inspection reports to files

## Benefits for Development

### Debugging
- **Database verification**: Confirm what's actually stored vs expected
- **Processing validation**: See all processing runs and their results
- **Relationship checking**: Verify foreign key relationships work

### Data Analysis
- **Collection insights**: Understand what data is populated
- **Provider performance**: See which enrichment providers are working
- **Schema validation**: Identify missing or malformed data

### User Support
- **File troubleshooting**: Quickly diagnose processing issues
- **Data exploration**: Help users understand their photo metadata
- **Quality assurance**: Verify migration and processing results

## Next Steps

Would you like to:
1. **Add simple `--inspect` flag** to existing CLI (30 minutes)
2. **Create dedicated inspect command** with rich options (2 hours)
3. **Discuss specific integration approach** you prefer
4. **Identify any missing inspection features** you'd want to see