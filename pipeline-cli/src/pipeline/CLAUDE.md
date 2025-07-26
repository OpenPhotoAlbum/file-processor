# Pipeline Module - Media Processing Pipeline

## Purpose
Core processing orchestration that routes media files through the complete processing workflow. Acts as the central funnel for all media processing operations with consistent pre/post-processing.

## Key Components

### Core Files
- **`entry.ts`** - Main entry point that orchestrates the complete processing flow
- **`router.ts`** - MIME type-based processor selection and routing logic
- **`pre-processor.ts`** - Common pre-processing tasks shared across all file types
- **`post-processor.ts`** - Common post-processing enrichment and finalization

## Architecture Patterns

### Processing Flow
1. **Pre-processing** → File validation, metadata extraction, path resolution
2. **Routing** → MIME type detection and processor selection  
3. **Specialized Processing** → Image/Video processor execution
4. **Post-processing** → GPS enrichment, landmark lookup, color extraction

### Processor Selection Strategy
```typescript
// Router determines processor based on MIME type
const processor = getProcessor(file.mimeType);
// → ImageProcessor for JPEG, PNG, HEIC, GIF, TIFF, WEBP
// → VideoProcessor for MP4, MOV, AVI
// → Throws for unsupported formats
```

### Error Handling Philosophy
- **Graceful degradation** - Continue processing despite individual component failures
- **Structured error reporting** - Return ProcessingResult with error details
- **Component isolation** - Processor failures don't crash the entire pipeline
- **Recovery mechanisms** - Retry logic for transient failures

## Processing Stages

### Pre-Processing (`pre-processor.ts`)
**Shared tasks performed for all media files:**
- **File validation** - Size, permissions, existence checks
- **Hash calculation** - SHA-256 content hashing for deduplication
- **Basic metadata** - File size, creation/modification dates
- **Path normalization** - Convert to MediaFile interface with absolute/relative paths
- **MIME type detection** - Robust file type identification

### Routing (`router.ts`)
**Processor selection logic:**
- **ImageProcessor** - Handles static image formats (JPEG, PNG, HEIC, etc.)
- **VideoProcessor** - Handles video formats (MP4, MOV, AVI)
- **Extensible design** - Easy to add new processors for additional formats
- **MIME validation** - Ensures processor supports the detected file type

### Post-Processing (`post-processor.ts`)  
**Enrichment tasks applied after specialized processing:**
- **GPS enrichment** - Reverse geocoding when GPS coordinates exist
- **Landmark lookup** - POI identification using GNIS, Recreation.gov, National Parks
- **Color extraction** - Dominant color analysis for visual categorization
- **Processing metadata** - Timestamp, provider usage, cache hit tracking

## Integration Points

### CLI Integration
```typescript
// CLI calls pipeline entry point for all processing
import { processFile } from './pipeline/entry.js';
const result = await processFile(filePath);
```

### Database Integration
```typescript
// Post-processing can optionally store in database
if (options.outputDb) {
  result.database = await storeInDatabase(result);
}
```

### Service Layer Integration
The pipeline coordinates multiple services:
- **FileSystemService** - File operations and validation
- **GeolocationService** - Reverse geocoding for GPS coordinates
- **LandmarkService** - POI lookup with multiple providers
- **ColorExtractionService** - Visual analysis for dominant colors

## Key Features

### Processor Extensibility
```typescript
// Adding new processor is straightforward
class AudioProcessor extends BaseProcessor {
  supportedMimes = ['audio/mpeg', 'audio/wav'];
  async extract(file: MediaFile): Promise<ProcessingResult> {
    // Audio-specific processing
  }
}

// Register in router.ts
const processors = new Map([
  ['audio/', new AudioProcessor()]
]);
```

### Processing Result Schema
**Unified output format across all processors:**
```typescript
interface ProcessingResult {
  file: FileMetadata;           // Basic file information
  processing: ProcessingEvent;   // Success/failure, timing, providers
  media: MediaInfo;             // Dimensions, format, Live Photo detection
  timestamps: TimestampData;     // Capture time, creation time, conflicts
  location: LocationData;        // GPS, geolocation, landmarks, enrichment
  camera: CameraInfo;           // Make, model, lens information
  settings: CameraSettings;     // ISO, aperture, shutter speed
  technical: TechnicalData;     // EXIF version, color space, compression
  sidecars: SidecarInfo[];      // External metadata files
}
```

### Environment-Driven Processing
Pipeline behavior adapts to environment variables:
- **`GEOLOCATION_ENABLED`** - Control reverse geocoding
- **Provider flags** - Enable/disable landmark providers individually
- **`LANDMARK_MAX_RADIUS`** - Adjust search radius for POI lookup
- **Performance tuning** - Provider timeout and concurrency settings

## Error Recovery Patterns

### Partial Success Handling
```typescript
// Pipeline continues processing even with component failures
try {
  await enrichWithGPS(result);
} catch (error) {
  result.location.enrichmentStatus = 'error';
  result.processing.notes = `GPS enrichment failed: ${error.message}`;
}
```

### Provider Fallback Chain
```typescript
// Landmark service tries multiple providers
const landmarks = await Promise.allSettled([
  gnisProvider.search(gps),
  recreationProvider.search(gps),
  npsProvider.search(gps)
]);
// Combine successful results, log failures
```

## Performance Optimization

### Caching Strategy
- **Geolocation cache** - Avoid repeated reverse geocoding for same coordinates
- **Landmark cache** - Cache POI results by GPS radius
- **Processor cache** - Reuse EXIF extraction results during debugging

### Parallel Processing
```typescript
// Post-processing runs enrichment in parallel where possible
await Promise.allSettled([
  enrichWithGeolocation(result),
  enrichWithLandmarks(result),
  extractColors(result)
]);
```

### Memory Management
- **Streaming where possible** - Don't load entire files into memory
- **Resource cleanup** - Proper disposal of image processing resources
- **Batch optimization** - Efficient processing for large file collections

## Development Workflows

### Adding New Processing Features
1. **Identify stage** - Pre, specialized, or post-processing
2. **Update interfaces** - Modify ProcessingResult schema if needed
3. **Implement logic** - Add to appropriate processor or post-processor
4. **Update tests** - Include in CLI response test suite
5. **Document behavior** - Update relevant documentation

### Testing Strategy
```bash
# Test complete pipeline with sample files
npm test -- --testPathPattern=pipeline

# Test specific processors
npm test -- --testPathPattern=processors

# Validate CLI integration
npm test -- --testPathPattern=cli-response
```

## Quality Standards

### Processing Consistency
- **Deterministic output** - Same input always produces same result
- **Schema compliance** - All results conform to ProcessingResult interface
- **Error standardization** - Consistent error reporting across all processors

### Performance Requirements
- **Processing time** - Images under 2 seconds, videos under 5 seconds
- **Memory usage** - Process files without excessive memory consumption
- **Provider timeouts** - External service calls must have reasonable timeouts

### Code Quality Gates
```bash
npm run lint:check    # ESLint compliance
npm run typecheck     # TypeScript compilation  
npm run build         # Full build pipeline
npm test              # Complete test suite
```