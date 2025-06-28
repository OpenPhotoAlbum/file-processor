# Post-Deduplication Organization Plan

## Overview
After jdupes deduplication completes (~288K files removed, ~818GB freed), execute this plan to organize the remaining photo collection.

## Phase 1: Verification & Metadata Preservation
### 1. Verify Deduplication Results
- [ ] Count remaining files vs expected numbers
- [ ] Verify disk space freed (~818GB expected)
- [ ] Spot-check that correct originals were preserved
- [ ] Ensure no unexpected deletions occurred

### 2. Handle Orphaned JSON Sidecars
- [ ] Use `/photos/image-json-pairs.txt` to identify JSONs whose images were deleted
- [ ] Create `/photos/metadata/duplicate-sidecars/` directory structure
- [ ] Move orphaned JSONs while maintaining organizational structure
- [ ] Preserve all Google Photos metadata for future reference

## Phase 2: Directory Restructuring
### 3. Implement CLI Timestamp Extraction
- [ ] Add `--timestamp-only` flag to CLI for lightweight timestamp extraction
- [ ] Skip all processors (GPS, landmarks, database) for speed
- [ ] Output clean `YYYY-MM-DD_HH-MM-SS` format for filename generation

### 4. Clean Organization & Standardization
- [ ] Move from chaotic Google Takeout structure to `/photos/archive/YYYY/` date-based folders
- [ ] Rename all files to `YYYY-MM-DD_HH-MM-SS_000.ext` format using CLI timestamps
- [ ] Maintain sidecar filename synchronization (`filename.ext` + `filename.ext.supplemental-metadata.json`)
- [ ] Eliminate nested "Untitled" and random folder structures
- [ ] Handle timestamp collision with increment counters (_001, _002, etc.)

## Deferred Tasks
- **Metadata Linkage**: Connect kept images with their duplicate JSON metadata (complex, can wait)
- **Collections**: Build curated collections in `/photos/collections/` (after basic organization)

## Safety Measures
- Preserve `/photos/image-json-pairs.txt` catalog throughout process
- Keep Google Takeout structure intact until archive organization complete
- Maintain audit trail of all moves and reorganization

## Expected Outcome
- Clean, organized photo library in `/photos/archive/`
- All metadata preserved and accessible
- Significant disk space recovered
- Foundation for future advanced organization features