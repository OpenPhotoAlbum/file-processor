# Utils Module - Media Processing Pipeline

## Purpose
Core utility functions and shared components used throughout the media processing system. Provides foundational services for error handling, logging, metadata extraction, and file operations.

## Module Organization

### Core Utility Categories
- **Error System** (`errors/`) - Structured error handling with codes and factories
- **Logging System** (`logging/`) - Component-scoped logging with structured output  
- **Extractors** (`extractors/`) - EXIF, GPS, and timestamp extraction utilities
- **Image/Video Utils** - Format-specific validation and processing helpers
- **Configuration** - Environment-driven configuration management

## Error System (`errors/`)

### Architecture
- **`codes.ts`** - Centralized error code definitions with `MPP-[COMPONENT]-[SEVERITY]-[NUMBER]` format
- **`classes.ts`** - Typed error classes extending base MPPError
- **`factories.ts`** - Component-specific error factories with automatic logging
- **`registry/`** - Error code registries organized by component
- **`index.ts`** - Main exports and utility functions

### Error Code System
```typescript
// Structured error codes for consistent handling
export const TIMESTAMP_ERRORS = {
  EXTRACTION_FAILED: 'MPP-TIMESTAMP-ERROR-001',
  INVALID_FORMAT: 'MPP-TIMESTAMP-WARNING-002',
  TIMEZONE_MISSING: 'MPP-TIMESTAMP-INFO-003'
} as const;
```

### Component Error Factories
```typescript
// Each component gets its own error factory
const errorFactory = createErrorFactory(logger);

// Type-safe error creation with automatic logging
throw errorFactory.timestamp(
  TIMESTAMP_ERRORS.EXTRACTION_FAILED,
  { filePath: 'sample:image.jpg' }
);
```

### Error Severity Levels
- **FATAL** - System-stopping errors that halt processing
- **ERROR** - Component failures that prevent feature completion
- **WARNING** - Issues that allow processing to continue with degraded functionality
- **INFO** - Informational messages for debugging and monitoring

## Logging System (`logging/`)

### Components
- **`logger.ts`** - Main Logger class with structured output
- **`types.ts`** - Logging level definitions and configuration interfaces
- **`index.ts`** - Factory functions and module exports

### Component-Scoped Logging
```typescript
// Each component gets its own logger instance
const logger = new Logger('ImageProcessor');
logger.info('Processing image', { 
  path: 'sample:image.jpg',
  size: 2048576 
});
// Output: [INFO] ImageProcessor: Processing image {"path":"sample:image.jpg","size":2048576}
```

### Structured Logging Features
- **JSON output** - Machine-readable log format for analysis
- **Context data** - Rich metadata attached to log entries
- **Log levels** - FATAL, ERROR, WARN, INFO, DEBUG with filtering
- **Component identification** - Clear component attribution for debugging

### Path Sanitization
**Critical security feature:** Never expose absolute paths in logs
```typescript
// Automatically sanitizes paths for security
logger.info('Processing file', { path: sanitizePath('/absolute/path/image.jpg') });
// Output: "external:image.jpg" instead of full absolute path
```

## Metadata Extractors (`extractors/`)

### Core Extractors
- **`exif.ts`** - Comprehensive EXIF data extraction using ExifTool
- **`gps.ts`** - GPS coordinate parsing with format validation
- **`timestamp.ts`** - Multi-source timestamp extraction with conflict resolution
- **`gps-utils.ts`** - GPS validation and coordinate transformation utilities

### EXIF Extraction (`exif.ts`)
```typescript
// Comprehensive metadata extraction
const exifData = await extractEXIF(filePath);
// Returns structured data:
// - Camera information (make, model, lens)
// - Settings (ISO, aperture, shutter speed)
// - Technical data (color space, compression)
// - GPS coordinates
// - Timestamp information
```

### GPS Coordinate Processing (`gps.ts`)
```typescript
interface GPSExtractionResult {
  primary: GPSCoordinates | null;
  alternatives: GPSCoordinates[];
  conflicts: GPSConflict[];
  geolocation: GeolocationResult | null;
  landmarks: Landmark[];
  enrichmentStatus: EnrichmentStatus;
}
```

**GPS Coordinate Corruption Fix:**
Handles both numeric and string coordinate formats from ExifTool:
```typescript
// Handles: 44.3776 (numeric) and "44.3776 N" (string with direction)
function parseCoordinate(value: any, ref?: string): number | null {
  if (typeof value === 'number') return value;
  if (typeof value === 'string') {
    const match = value.match(/(\d+\.?\d*)\s*([NSEW])/);
    if (match) {
      const [, coord, direction] = match;
      return ['S', 'W'].includes(direction) ? -parseFloat(coord) : parseFloat(coord);
    }
  }
  return null;
}
```

### Timestamp Extraction (`timestamp.ts`)
```typescript
interface TimestampExtractionResult {
  primary: string | null;              // Best timestamp choice
  capture: string | null;              // When photo was actually taken
  creation: string | null;             // File creation timestamp
  modification: string | null;         // File modification timestamp
  alternatives: TimestampSource[];     // Other available timestamps
  conflicts: TimestampConflict[];      // Conflicting timestamp sources
}
```

**Multi-Source Priority:**
1. **DateTimeOriginal** - Camera capture time (highest priority)
2. **CreateDate** - File creation timestamp
3. **ModifyDate** - File modification timestamp
4. **File system timestamps** - OS-level creation/modification
5. **Filename patterns** - Extracted from structured filenames

## Image/Video Utilities

### Image Validation (`image/validation.ts`)
- **Format validation** - Verify image file integrity
- **MIME type validation** - Ensure file matches detected format
- **Size validation** - Check file size constraints
- **Corruption detection** - Identify damaged image files

### Video Processing (`video/`)
- **`index.ts`** - Video format detection and validation
- **`live-photo-detector.ts`** - Apple Live Photo identification system

### Live Photo Detection System
```typescript
interface LivePhotoInfo {
  confidence: 'high' | 'medium' | 'low' | 'none';
  hasMotionData: boolean;
  motionDataCount: number;
  duration: number | null;
  correspondingImagePath?: string;
}
```

**Detection Algorithm:**
- **High confidence** - Duration < 10s + Apple QuickTime + motion data present
- **Medium confidence** - Duration < 10s + motion data (non-Apple devices)
- **Low confidence** - Short duration but missing motion data
- **None** - Long duration or clearly not a Live Photo

## Configuration Management (`config/`)

### Logging Configuration (`logging.ts`)
```typescript
// Environment-driven logging configuration
const loggingConfig = {
  level: process.env.LOG_LEVEL || 'INFO',
  format: process.env.LOG_FORMAT || 'structured',
  output: process.env.LOG_OUTPUT || 'console'
};
```

## Shared Utilities

### MIME Type Handling (`mime.ts`, `mime-config.ts`)
- **MIME detection** - Robust file type identification
- **Supported formats** - Validation against processor capabilities
- **Extension mapping** - File extension to MIME type conversion

### Path Utilities (`paths.ts`)
```typescript
// Path resolution with security
export function resolvePath(path: string): string {
  // Handles sample:, media:, relative: prefixes
  // Returns absolute path for processing
}

export function sanitizePath(path: string): string {
  // Security function - never expose absolute paths in logs
  // Returns safe path representation
}
```

### Metadata Merger (`metadata-merger.ts`)
```typescript
// Intelligent metadata merging
export function mergeMetadata(
  existing: ProcessingResult,
  incoming: ProcessingResult,
  options: MergeOptions
): ProcessingResult {
  // Preserves expensive enrichment data
  // Merges specific sections based on options
  // Maintains processing history
}
```

## Development Patterns

### Utility Testing
```typescript
// Utils have comprehensive unit tests
describe('GPS coordinate parsing', () => {
  it('should handle numeric coordinates', () => {
    expect(parseCoordinate(44.3776)).toBe(44.3776);
  });
  
  it('should handle string coordinates with direction', () => {
    expect(parseCoordinate('44.3776 N')).toBe(44.3776);
    expect(parseCoordinate('68.2039 W')).toBe(-68.2039);
  });
});
```

### Error Factory Usage
```typescript
// Component-specific error handling
class ImageProcessor {
  private errors = createErrorFactory(new Logger('ImageProcessor'));
  
  async extract(file: MediaFile): Promise<ProcessingResult> {
    try {
      return await this.processImage(file);
    } catch (error) {
      throw this.errors.exif(EXIF_ERRORS.EXTRACTION_FAILED, { 
        filePath: file.path 
      }, error);
    }
  }
}
```

## Quality Standards

### Utility Requirements
- **Pure functions** - No side effects for core utility functions
- **Error handling** - All utilities must handle edge cases gracefully
- **Type safety** - No `any` types, use semantic-any.ts when needed
- **Documentation** - JSDoc for all public utility functions

### Performance Requirements
- **Extraction speed** - EXIF extraction under 500ms for typical files
- **Memory efficiency** - No memory leaks in utility functions
- **Caching** - Cache expensive operations (GPS lookups, etc.)

### Security Standards
- **Path sanitization** - Never expose absolute paths
- **Input validation** - Validate all external inputs
- **Error information** - Don't leak sensitive data in error messages

## Code Quality Gates

### Utility Testing
```bash
# Test all utilities
npm test -- --testPathPattern=utils

# Test specific utility modules
npm test -- --testPathPattern=extractors
npm test -- --testPathPattern=errors
npm test -- --testPathPattern=logging
```

### Quality Requirements
```bash
npm run lint:check    # ESLint compliance with TypeScript rules
npm run typecheck     # TypeScript compilation with strict settings
npm run build         # Full build pipeline validation
npm test              # Complete test suite with utilities coverage
```

### Coverage Expectations
- **95%+ test coverage** - Critical utilities must be thoroughly tested
- **Edge case handling** - Test boundary conditions and error cases
- **Integration testing** - Verify utility integration with components
- **Performance testing** - Validate utility performance under load