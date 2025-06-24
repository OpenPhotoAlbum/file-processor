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

### 🧪 CLI Response Testing Framework
- [ ] Create test structure: `tests/cli-response/` with mocks/ subdirectory
- [ ] Generate expected response files for each sample image in scratch/
- [ ] Build CLI test runner that executes commands and compares outputs
- [ ] Implement response validator with schema checking
- [ ] Add npm test script for CLI response validation
- [ ] Create documentation for maintaining test expectations

### 🔍 Performance Investigation (Completed)
- [x] Investigate MaxListenersExceededWarning for AbortSignal memory leaks
- [x] Review database connection pooling and cleanup patterns
- [x] Check for event listener accumulation in services

### 🏔️ GNIS Geographic Features Integration (Planned)
- [ ] **Data Acquisition & Storage**
  - [ ] Download GNIS state-by-state pipe-delimited text files from S3
  - [ ] Create MySQL table schema for geographic features (similar to geo_municipal_boundaries)
  - [ ] Parse pipe-delimited format with fields: feature_id, feature_name, feature_class, coordinates, etc.
  - [ ] Build import scripts for loading GNIS data with proper SRID (4326)
  - [ ] Create spatial indexes on coordinates for efficient radius queries
  - [ ] Handle data updates (GNIS refreshes bi-monthly)

- [ ] **Database Schema Design**
  ```sql
  -- Table for GNIS geographic features
  CREATE TABLE geo_geographic_features (
    feature_id VARCHAR(20) PRIMARY KEY,
    feature_name VARCHAR(255) NOT NULL,
    feature_class VARCHAR(50) NOT NULL,
    state_code CHAR(2) NOT NULL,
    county_name VARCHAR(100),
    latitude DECIMAL(10, 8) NOT NULL,
    longitude DECIMAL(11, 8) NOT NULL,
    elevation_meters INT,
    date_created DATE,
    date_edited DATE,
    -- Spatial column for efficient queries
    coordinates POINT NOT NULL SRID 4326,
    -- Indexes
    INDEX idx_feature_class (feature_class),
    INDEX idx_state (state_code),
    SPATIAL INDEX idx_coordinates (coordinates)
  );
  ```

- [ ] **GNIS Provider Implementation**
  - [ ] Create GNISProvider class following existing provider pattern
  - [ ] Implement findLandmarks() with radius-based spatial queries
  - [ ] Map GNIS feature classes to landmark categories:
    - Summit/Peak/Hill → 'mountain'
    - Lake/Reservoir/Pond → 'lake'
    - Stream/River/Creek → 'river'
    - Valley/Canyon/Gorge → 'valley'
    - Ridge/Range → 'ridge'
    - Forest/Woods → 'forest'
    - Spring/Falls → 'water_feature'
  - [ ] Calculate confidence scores based on distance and feature prominence
  - [ ] Add feature-specific metadata (elevation, area, length, etc.)

- [ ] **Integration with Existing System**
  - [ ] Register GNISProvider in landmark service provider list
  - [ ] Update LandmarkCategory type to include new natural features
  - [ ] Extend landmark schema to support GNIS-specific fields
  - [ ] Ensure caching works with high-volume GNIS queries
  - [ ] Add GNIS feature statistics to enrichmentStatus

- [ ] **Enhanced JSON Output Structure**
  - [ ] Include GNIS feature_id for cross-referencing
  - [ ] Add feature_class from GNIS taxonomy
  - [ ] Include elevation for summits and water features
  - [ ] Add descriptive context for each feature
  - [ ] Provide detailed statistics by category and provider

- [ ] **Testing & Validation**
  - [ ] Create test cases for mountain/lake/river detection
  - [ ] Validate against known locations (e.g., Mount Washington area)
  - [ ] Test performance with 1M+ features in database
  - [ ] Ensure proper fallback when no features found
  - [ ] Verify coordinate system consistency

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