# Staging to Archive Migration Plan

## Overview
Move 4,113 heritage photos from `/photos/staging/ready/photos/` to `/photos/archive/`

##  **AGREED: Core Migration Approach**
1. **Run pipeline-cli** on all photos to extract EXIF dates and metadata
2. **Parse filename context** (graduations, Disney trips, Christmas, etc.) into `heritage_context` field in JSON metadata
3. **Organize by date** into `/photos/archive/YYYY/MM/` 
4. **Store in database** for searchability

##  **AGREED: Date Strategy** 
- **Primary source**: EXIF data (let pipeline-cli extract automatically)
- **Secondary source**: Only worry about filename date extraction if EXIF dates are missing/wrong
- **Context preservation**: Filename context (events, people, etc.) goes into `heritage_context` JSON field, NOT used for date correction

##  **AGREED: Database Integration**
Using existing `media_files` table schema:
```sql
-- Heritage photos stored as:
collection = 'archive'
heritage_type = 'scanned' 
media_metadata = JSON with heritage_context
archive_collection = 'heritage' or specific collection name
primary_timestamp = from EXIF data
```

Heritage context stored in `media_metadata` JSON:
```json
{
  "heritage_context": {
    "event": "graduation",
    "person": "jodi",
    "original_filename": "1751769216984-jodis-graduation-06_1990-000.jpg",
    "original_sidecar_text": "content from .txt file if exists"
  }
}
```

##  **AGREED: Safety Approach**
- Test with small batch first
- Create backups before processing
- Use `--dry-run` to preview changes
- Validate results before cleanup

## = **NOT YET CONFIRMED: Specific Implementation Details**

### ✅ **AGREED: Filename Context Parsing**
- **Ignore timestamp prefixes**: `1751769216984-` used only for scan ordering
- **Extract descriptive context**: Store meaningful parts in `heritage_context` JSON for searchability
- **No collections**: Skip collection creation entirely, just archive by date

### ✅ **AGREED: Pipeline-CLI Configuration**  
- **Command**: `mmp -R /photos/staging/ready/photos/ --output-db --backup --validate`
- **Database collection**: Use default `archive` (no `--db-collection` needed)
- **Need to confirm**: Whether to enable all enrichment providers (GPS, landmarks, etc.)

### Execution Plan
- **Need to confirm**: Exact test batch size and selection criteria
- **Need to confirm**: Rollback procedures if something goes wrong
- **Need to confirm**: Success criteria and validation steps

## Current Status
-  Architecture and approach agreed
-  Database schema understood  
-  Basic safety framework agreed
- = Implementation details need confirmation
- = Execution plan needs finalization

## Next Steps
1. ✅ Filename context parsing approach confirmed
2. Finalize pipeline-cli command configuration
3. Create detailed execution plan with test batch