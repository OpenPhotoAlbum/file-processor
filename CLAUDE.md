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

### Commands
- **Generate Sidecar**: Creates an enriched version of a sidecar file
`RECREATION_GOV_PROVIDER_ENABLED=true  node dist/main.js -f "/photos/archive/2025/05/2025-05-31_14-53-36_001.JPG" -o /photos/archive/path/to/file/name.jpg.json`
- **Build CLI APP**: `npm run build`
- **View Sidecar JSON**: `RECREATION_GOV_PROVIDER_ENABLED=true node dist/main.js -f "/photos/archive/2025/05/2025-05-31_14-53-36_001.JPG" --json | jq`

### Photo Metadata Browser Standards (December 2024)
- **Prime example**: `/photos/archive/2022/01/2022-01-01_00-00-00_008.jpeg` - Acadia beach scene
- **Exemplary metadata richness**: 10 Recreation.gov landmarks, Acadia National Park context, iPhone 13 Pro technical data
- **Template approach**: Build complete HTML from scratch using metadata, not template replacement
- **Geographic intelligence**: National Park + Recreation.gov facility integration (Blackwoods Campground 1.4km)
- **Technical insights**: Face detection, focus distance, optimal lighting analysis
- **Design principles**: Clean photo display, professional insights cards, responsive grid layout

## Development Notes
- This project treats media processing as a production system, not a prototype
- Stephen values sustainable development practices for long-term maintenance
- Expects other developers may contribute, hence emphasis on documentation and tooling
- Security and path sanitization are non-negotiable requirements
- Type safety and developer experience are prioritized over quick solutions