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

### 🔍 Performance Investigation
- [ ] Investigate MaxListenersExceededWarning for AbortSignal memory leaks
- [ ] Review database connection pooling and cleanup patterns
- [ ] Check for event listener accumulation in services