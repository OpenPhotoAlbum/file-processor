# Media Processing Pipeline - Project Context

## Stephen's Technical Approach (Session Insights)

### Systems Architecture Mindset
- **Question design decisions first**: When encountering hardcoded values or magic strings, Stephen probes the "why" before accepting solutions
- **Developer experience priority**: Values type safety, autocomplete, and discoverability over "just working" code
- **Systematic scaling**: Once an approach is approved (like the hybrid error system), expects comprehensive application across all components
- **Long-term maintainability**: Willing to refactor working code for better architecture

### Communication Patterns
- **Concrete syntax examples**: Provides specific code examples (`TIMESTAMP_ERRORS.SOME_NAME`) rather than abstract descriptions
- **Incremental approval process**: "Don't go and make changes yet, but please come up with a better solution"
- **Build momentum approach**: Quick approval followed by systematic expansion ("apply this for the rest")
- **Completion-oriented**: Expects full implementation across entire system, not just examples

### Technical Values for This Project
- **Type safety with IDE support**: Hybrid systems that provide both compile-time checking and autocomplete
- **Security consciousness**: Path sanitization, structured logging, never exposing sensitive file paths
- **Professional workflows**: ESLint integration, proper git commits, comprehensive documentation
- **Error handling as architecture**: Structured error codes, component-specific factories, semantic methods
- **Documentation completeness**: Expects docs that match actual implementation, not aspirational docs

### Working Rhythm Observed
1. **Identify systemic issues** rather than addressing symptoms
2. **Request architectural alternatives** before implementation
3. **Scale solutions comprehensively** once direction is approved  
4. **Integrate across all components** - expects thorough application
5. **Document properly** - both inline code docs and external guides
6. **Commit systematically** - meaningful commits with proper PR descriptions

### Project-Specific Preferences
- **Error system**: Prefers named constants + semantic methods over magic strings
- **Path handling**: Always use sanitization for logging, never expose absolute paths
- **Component isolation**: Each processor should have its own logger and error factory
- **Build quality**: Linting and type checking as build gates, not afterthoughts
- **Documentation structure**: Comprehensive `/docs` section with cross-references

### Technical Standards Established
- **Error codes**: `MPP-[COMPONENT]-[SEVERITY]-[NUMBER]` format
- **Logging**: Component-scoped loggers with structured output
- **Type safety**: Minimize `any` usage, prefer proper typing
- **Import organization**: Consistent import ordering and ES6 modules
- **Code quality**: ESLint with TypeScript rules, auto-fix integration

### CLI Enhancement Standards (December 2024)
- **Clean output modes**: `--timestamp-only` and `--json` suppress all logging/progress
- **Timestamp format**: `YYYY-MM-DD_HH-MM-SS` for consistent filename generation
- **JSON output**: Direct metadata object (not CLI wrapper) for pipeable analysis
- **Extensible suppression**: `suppressSummaryModes` array for adding new quiet modes
- **Reuse existing logic**: Timestamp extraction leverages existing processors and services

### Photo Organization Standards (December 2024)
- **File locations**: Photos in `/photos/staging/`, metadata in `/photos/metadata/`
- **Deduplication**: Hash-based with jdupes, metadata preservation priority
- **Sidecar handling**: Orphaned JSONs organized by original directory structure
- **Path prefixes**: `sample:`, `media:` prefixes for flexible file resolution
- **Test integration**: CLI tests use direct JSON output format, normalized dynamic fields

### CLI Commands & Environment Variables

#### Environment Variables
- **`GEOLOCATION_ENABLED`** - Enable/disable reverse geocoding (default: true)
- **`RECREATION_GOV_PROVIDER_ENABLED`** - Enable Recreation.gov landmark lookups (default: false)
- **`GNIS_PROVIDER_ENABLED`** - Enable USGS GNIS landmark lookups (default: true)
- **`NPS_PROVIDER_ENABLED`** - Enable National Parks Service lookups (default: true)
- **`LANDMARK_MAX_RADIUS`** - Maximum search radius in meters (default: 50000)

#### Common CLI Usage Patterns

**Basic Processing (single file)**
```bash
node dist/main.js -f "/photos/archive/2023/07/photo.jpg" -o "photo.jpg.json"
```

**Full Enrichment (all providers)**
```bash
GEOLOCATION_ENABLED=true \
RECREATION_GOV_PROVIDER_ENABLED=true \
NPS_PROVIDER_ENABLED=true \
GNIS_PROVIDER_ENABLED=true \
  node dist/main.js -f "/photos/archive/2023/07/photo.jpg" -o "output.json"
```

**JSON Output (pipeable)**
```bash
node dist/main.js -f "photo.jpg" --json | jq '.location.landmarks'
```

**Timestamp Only Mode**
```bash
node dist/main.js -f "photo.jpg" --timestamp-only
# Output: 2023-07-15_14-32-45
```

**Batch Processing**
```bash
find /photos -name "*.jpg" | xargs -P 8 -I {} \
  node dist/main.js -f {} -o {}.json
```

**Disable Geolocation (faster processing)**
```bash
GEOLOCATION_ENABLED=false node dist/main.js -f "photo.jpg" -o "output.json"
```

**Testing/Development**
```bash
# Build before running
npm run build

# Run with source maps for debugging
node --enable-source-maps dist/main.js -f "photo.jpg" --json

# Process sample photos
node dist/main.js -f "sample:vancouver-island.jpg" --json
```

#### Output Modes
- **Default**: Progress bars, summaries, and logs
- **`--json`**: Clean JSON output only (no logs)
- **`--timestamp-only`**: Single line timestamp output
- **`-o <file>`**: Save to file with progress indicators

### Photo Metadata Browser Standards (December 2024)
- **Prime example**: `/photos/archive/2022/01/2022-01-01_00-00-00_008.jpeg` - Acadia beach scene
- **Exemplary metadata richness**: 10 Recreation.gov landmarks, Acadia National Park context, iPhone 13 Pro technical data
- **Template approach**: Build complete HTML from scratch using metadata, not template replacement
- **Geographic intelligence**: National Park + Recreation.gov facility integration (Blackwoods Campground 1.4km)
- **Technical insights**: Face detection, focus distance, optimal lighting analysis
- **Design principles**: Clean photo display, professional insights cards, responsive grid layout

### GPS Coordinate Corruption Fix (December 2024)
- **Issue discovered**: Video-specific GPS longitude sign corruption affecting 20.2% of video files with GPS
- **Root cause**: ExifTool returns coordinate strings with embedded directions for videos vs numeric values for images
- **Impact**: Only MP4/MOV video files affected; JPG/JPEG image files always processed correctly
- **Fix applied**: Enhanced coordinate parsing handles both string and numeric formats in EXIF extraction
- **Verification**: Fixed files correctly place locations in Western Hemisphere (negative longitude)
- **Documentation**: `/docs/gps-coordinate-corruption-fix.md` - comprehensive technical analysis

## Development Notes
- This project treats media processing as a production system, not a prototype
- Stephen values sustainable development practices for long-term maintenance
- Expects other developers may contribute, hence emphasis on documentation and tooling
- Security and path sanitization are non-negotiable requirements
- Type safety and developer experience are prioritized over quick solutions

## Documentation Index

### Core Systems
- **Error System** - Structured error handling with codes and factories: `docs/error-system.md`
- **Logging System** - Component-scoped logging architecture: `docs/logging-system.md`
- **Path System** - Path resolution and sanitization: `docs/path-system.md`
- **Filesystem Service** - File operations and validation: `docs/filesystem-service.md`
- **CLI Documentation** - Command-line interface usage: `docs/cli.md`

### Metadata & Storage
- **Metadata Storage Architecture** - JSON sidecar files vs database storage: `docs/metadata-storage-architecture.md`
- **Metadata Merge Strategy** - Intelligent merging with processing history: `docs/metadata-merge-strategy.md`

### Processing & Enrichment
- **Live Photo Detection** - Apple Live Photo identification and metadata: `docs/live-photo-detection.md`
- **Metadata Merge Strategy** - Preserve existing data when reprocessing: `docs/metadata-merge-strategy.md`
- **Enrichment Flow** - GPS and landmark enrichment pipeline: `docs/enrichment-flow.md`
- **Geolocation System** - Location services and caching: `docs/geolocation-system.md`
- **Recreation.gov ETL** - Facility data extraction and loading: `docs/recreation-gov-etl.md`

### Organization & Management
- **Photo Organization Strategy** - Complete organization workflow: `docs/photo-organization-strategy.md`
- **Deduplication Report** - Hash-based deduplication process: `docs/deduplication-report.md`
- **Large Collection Strategy** - Handling 100k+ photo collections: `docs/large-collection-strategy.md`
- **Google Takeout Processing** - Complete processing summary: `docs/google-takeout-complete-processing.md`

### Browser & UI
- **Photo Browser API** - Express.js metadata viewer: `docs/photo-browser-api.md`
- **Heritage Photo Enrichment** - AI-powered historical context: `docs/heritage-photo-enrichment.md`

### Development & Planning
- **Getting Started** - Quick start guide: `docs/getting-started.md`
- **Quick Start Organization** - Fast track setup: `docs/quick-start-organization.md`
- **Linting** - ESLint configuration and rules: `docs/linting.md`
- **Testing Guide** - Test structure and coverage: `docs/testing/README.md`

### Future Plans & Vision
- **Future Vision** - Opportunities and roadmap: `docs/future-vision-and-opportunities.md`
- **NAS Migration Plan** - Network storage migration: `docs/nas-migration-plan.md`
- **MCP Semantic Search** - Model Context Protocol integration: `docs/mcp-semantic-search.md`
- **Phase Completion Overview** - Project milestones: `docs/phase-completion-overview.md`

### Archives & Historical
- **Completed Plans** - Successfully implemented strategies: `docs/archive/completed-plans/`
- **Deprecated Docs** - Outdated but historically relevant: `docs/archive/deprecated/`