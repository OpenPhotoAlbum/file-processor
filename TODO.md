# Media Processing Pipeline - TODO

## Current Development Session

### 🔧 Filesystem Service (Completed)
- [x] Design and implement centralized FileSystemService
- [x] Create scanner module for directory enumeration with filters
- [x] Add validator module for file existence, permissions, integrity
- [x] Build metadata module for file stats, timestamps, sizes
- [x] Define shared filesystem types and interfaces
- [x] Integrate with existing path utilities system
- [x] Add comprehensive error handling with structured error codes
- [x] Create media-specific discovery patterns (sidecars, sequences)
- [x] Add batch operations for efficient processing
- [x] Create demo script showing integration patterns

### 🎯 CLI Implementation (Completed)
- [x] Install and configure commander.js
- [x] Create CLI module structure (index, handlers, validators, output)
- [x] Implement command-line argument parsing with mixed path support
- [x] Add directory scanning with recursive options using FileSystem Service
- [x] Support MIME type filtering that overrides env vars
- [x] Implement output control (console, file, JSON, quiet modes)
- [x] Add --overwrite flag for output file handling
- [x] Replace hardcoded testFiles in main.ts with professional CLI
- [x] Create comprehensive CLI documentation with examples

### 🧹 Code Cleanup (Completed)
- [x] Refactor pre-processor to use FileSystemService for file discovery and validation
- [x] Update image processor to use FileSystemService for file stats and validation
- [x] Consolidate file validation across processors using FileSystemService
- [x] Remove duplicate filesystem code in extractors and utilities
- [x] Update sidecar discovery to use centralized service
- [x] Test all processors work correctly with FileSystemService integration

### 📚 Documentation Updates (Completed)
- [x] Document FileSystemService architecture and usage
- [x] Create CLI usage documentation  
- [x] Update main README with new filesystem service
- [x] Add examples of filesystem service integration

## Design Decisions Made
- **Filesystem Service**: Centralized service layer for all file operations
- **CLI Library**: Commander.js for professional CLI experience
- **Path Handling**: Support both prefix paths and absolute paths with external: fallback
- **Output Control**: JSON/console output with optional file writing and --overwrite flag
- **Architecture**: Clean separation of concerns across multiple focused modules

## Next Steps

### 🧪 CLI Response Testing Framework (Completed)
- [x] Create test structure: `tests/cli-response/` with mocks/ subdirectory
- [x] Generate expected response files for each sample image in scratch/
- [x] Build CLI test runner that executes commands and compares outputs
- [x] Implement response validator with schema checking
- [x] Add npm test script for CLI response validation
- [x] Create documentation for maintaining test expectations

### 🔍 Performance Investigation (Completed)
- [x] Investigate MaxListenersExceededWarning for AbortSignal memory leaks
- [x] Review database connection pooling and cleanup patterns
- [x] Check for event listener accumulation in services

### 🏔️ GNIS Geographic Features Integration (Completed)

**Architecture**: Minimal-impact integration using existing provider pattern and CLI testing approach

**File Changes Required:**
```
migrations/036_create_geo_geographic_features.sql     # NEW - Database table
scripts/load-gnis-data.ts                            # NEW - One-time data loader  
src/services/landmarks/providers/gnis.ts             # NEW - GNIS provider
src/services/landmarks/types.ts                      # MODIFY - Add categories
tests/cli-response/mocks/*.json                      # UPDATED - New landmark data
```

**Implementation Steps:**
- [x] **Create Database Migration (055_table_geo_geographic_features.sql)**
  - [x] Design table schema with spatial indexing
  - [x] Include feature_id, feature_name, feature_class, coordinates, elevation
  - [x] Add proper indexes for performance (spatial, feature_class, state)

- [x] **Build Data Loading Scripts**
  - [x] Load complete US GNIS dataset (654K+ features) via individual state SQL files
  - [x] Parse pipe-delimited format: feature_id|feature_name|feature_class|...
  - [x] Filter for relevant feature classes: Summit, Lake, Stream, Valley, Ridge, Falls
  - [x] Insert with proper SRID spatial conversion
  - [x] Add comprehensive US municipal boundaries (267 municipalities across 17 states)

- [x] **Implement GNIS Provider (src/services/landmarks/providers/gnis.ts)**
  - [x] Follow existing NationalParksProvider pattern exactly
  - [x] Map feature classes to categories (Summit→mountain, Lake→lake, etc.)
  - [x] Use spatial queries with haversine formula for accurate distance calculation
  - [x] Add GNIS-specific fields (feature_id, feature_class, county, subcategory)
  - [x] Calculate confidence based on distance and feature type

- [x] **Update Landmark Types (src/services/landmarks/types.ts)**
  - [x] Add new categories: mountain, lake, river, valley, ridge, water_feature, natural_feature
  - [x] Extend Landmark interface for GNIS fields

- [x] **Register Provider & Test**
  - [x] Add GNISProvider to landmark service provider list
  - [x] Run existing CLI tests on sample images
  - [x] Update mock JSON files with new landmark data
  - [x] Verify integration through CLI output with comprehensive testing coverage

**Testing Strategy**: Use existing Jest CLI integration tests - no new unit tests needed
- [x] Sample images show new GNIS landmarks in JSON output
- [x] Updated mock expectations to match enriched responses  
- [x] Monitor diffs for regressions
- [x] Ensure caching works with high-volume GNIS queries
- [x] Add GNIS feature statistics to enrichmentStatus

- [x] **Enhanced JSON Output Structure**
  - [x] Include GNIS feature_id for cross-referencing
  - [x] Add feature_class from GNIS taxonomy  
  - [x] Include subcategory and county information
  - [x] Add descriptive context for each feature
  - [x] Provide detailed statistics by category and provider

- [x] **Testing & Validation**
  - [x] Create test cases for mountain/lake/river detection
  - [x] Validate against known locations (Acadia National Park, Rollinsford NH)
  - [x] Test performance with 650K+ features in database
  - [x] Ensure proper fallback when no features found
  - [x] Verify coordinate system consistency with SRID 4326

### Expected JSON Enhancement Example:
```json
{
  "landmarks": [
    {
      "name": "Mount Lafayette",
      "category": "mountain",
      "provider": "GNIS",
      "distance": 2.3,
      "bearing": 45,
      "confidence": 0.98,
      "elevation": 1600,
      "feature_id": "872634",
      "feature_class": "Summit",
      "prominence": 945,
      "description": "Highest peak in Franconia Ridge"
    },
    {
      "name": "Profile Lake",
      "category": "lake",
      "provider": "GNIS", 
      "distance": 4.2,
      "bearing": 85,
      "confidence": 0.93,
      "elevation": 571,
      "feature_id": "869123",
      "feature_class": "Lake",
      "area_hectares": 5.2,
      "description": "Small glacial lake at base of Cannon Mountain"
    }
  ]
}
```