# CLI Module - Media Processing Pipeline

## Purpose
Command-line interface for the media processing system using commander.js. Handles argument parsing, validation, and orchestrates the entire processing workflow.

## Key Components

### Core Files
- **`index.ts`** - Main CLI entry point with commander.js setup and comprehensive help system
- **`handlers.ts`** - CLIHandler class that processes validated commands and coordinates execution
- **`output.ts`** - Output formatting (JSON, file writing, console display) with clean modes
- **`types.ts`** - TypeScript interfaces for CLI options and internal types
- **`validators.ts`** - Input validation for files, paths, and CLI options
- **`timestamp-extractor.ts`** - Standalone timestamp extraction for `--timestamp-only` mode

## Architecture Patterns

### Command Flow
1. **Parse** → Commander.js validates arguments and options
2. **Validate** → Input validation for files, paths, MIME types  
3. **Process** → Route through pipeline/entry.ts for media processing
4. **Output** → Format results as JSON, files, or console display

### Output Modes
- **Default**: Progress bars, summaries, and detailed logging
- **`--json`**: Clean JSON output only (no logs) - pipeable format
- **`--timestamp-only`**: Single line timestamp output for batch operations
- **File output**: Save results with automatic `.json` extension

### Path Resolution System
- **`sample:`** - Uses `SAMPLE_BASE_PATH` environment variable
- **`media:`** - Uses `MEDIA_BASE_PATH` environment variable  
- **`relative:`** - Relative to current working directory
- **Absolute paths** - Logged as `external:` for security (never expose full paths)

## Key Features

### Batch Processing Support
- Directory scanning (recursive and non-recursive)
- MIME type filtering 
- Multiple file processing
- Progress tracking with proper error handling

### Database Integration
- **`--output-db`** - Store results in MySQL database
- **`--db-collection`** - Custom collection names (default: archive)
- **`--colors`/`--no-colors`** - Control color extraction during database storage
- **`--db-history`** - Preserve vs overwrite existing database records

### Metadata Merge System
- **`--merge`** - Intelligent merging with existing metadata
- **`--merge-sections`** - Granular section control (location, timestamps, camera, etc.)
- **`--preserve-enrichment`** - Keep expensive landmark/geolocation data
- **`--backup`** - Create backups before overwriting
- **`--dry-run`** - Preview changes without writing files

## Development Notes

### Environment Variables
- **`GEOLOCATION_ENABLED`** - Enable/disable reverse geocoding (default: true)
- **`RECREATION_GOV_PROVIDER_ENABLED`** - Recreation.gov landmark lookups (default: false)
- **`GNIS_PROVIDER_ENABLED`** - USGS GNIS landmark lookups (default: true)
- **`NPS_PROVIDER_ENABLED`** - National Parks Service lookups (default: true)
- **`LANDMARK_MAX_RADIUS`** - Maximum search radius in meters (default: 50000)

### Error Handling Philosophy
- **Graceful degradation** - Process what's possible, report what failed
- **Component isolation** - CLI errors don't crash the entire pipeline
- **User-friendly messages** - Hide technical details, show actionable guidance
- **Proper exit codes** - 0 for success, 1 for errors

### Testing Patterns
- **CLI response tests** - Validate complete end-to-end JSON output
- **Mock API responses** - Recreation.gov, GNIS, geolocation services mocked
- **Normalized test data** - Handle dynamic timestamps and file access dates
- **12 test scenarios** - Covers JPEG, HEIC, PNG, GIF, MOV, MP4, no-GPS, Live Photos

## Common Usage Patterns

### Basic Processing
```bash
# Single file with JSON output
node dist/main.js -f "sample:image.jpg" --json

# Directory scan with MIME filtering
node dist/main.js -D /photos --mime jpeg,png,heic -o results

# Recursive scan with quiet output
node dist/main.js -R /photos --quiet -o summary.json --overwrite
```

### Database Storage
```bash
# Store in database only
node dist/main.js -f photo.jpg --output-db

# Database + file output with custom collection
node dist/main.js -f photo.jpg -o output.json --output-db --db-collection staging

# Batch processing with optimized settings
node dist/main.js -R /photos --output-db --no-colors --quiet
```

### Metadata Merging
```bash
# Merge new data with existing metadata
node dist/main.js -f video.mov -o video.json --merge

# Update specific sections with backup
node dist/main.js -f video.mov -o video.json --merge-sections=media --backup

# Preview changes without writing
node dist/main.js -f photo.jpg -o photo.json --merge --dry-run
```

### Batch Operations
```bash
# Parallel processing with xargs
find /photos -name "*.jpg" | xargs -P 8 -I {} node dist/main.js -f {} -o {}.json

# Timestamp extraction only (fast)
find /photos -name "*.jpg" | xargs -I {} node dist/main.js -f {} --timestamp-only
```

## Code Quality Standards

### CLI Specific Requirements
- **Input validation** - Validate all user inputs before processing
- **Path sanitization** - Never expose absolute paths in logs or output
- **Progress indicators** - Show progress for long-running operations  
- **Clean output modes** - JSON and timestamp-only suppress all logging
- **Error recovery** - Continue processing batch operations despite individual failures

### Quality Gates (Run after CLI changes)
```bash
npm run lint:check    # ESLint compliance
npm run typecheck     # TypeScript compilation
npm run build         # Full build pipeline
npm test              # Complete test suite including CLI response tests
```

### CLI-Specific Testing
```bash
# Regenerate CLI response mocks after schema changes
npm run test:generate-mocks

# Run CLI-specific test suite
npm test -- --testPathPattern=cli-response
```