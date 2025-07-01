# Processors Module - Media Processing Pipeline

## Purpose
Specialized media file processors for extracting format-specific metadata from images, videos, and future audio formats. Each processor focuses on its domain expertise while maintaining a consistent interface.

## Key Components

### Core Files
- **`base.processor.ts`** - Abstract base class defining the processor interface
- **`image.processor.ts`** - Handles all image formats (JPEG, PNG, HEIC, GIF, TIFF, WEBP)
- **`video.processor.ts`** - Handles video formats (MP4, MOV, AVI) with Live Photo detection

## Architecture Patterns

### Processor Interface
```typescript
interface MediaProcessor {
  supportedMimes: string[];
  extract(file: MediaFile): Promise<ProcessingResult>;
  validate?(file: MediaFile): Promise<boolean>;
}
```

### Base Class Benefits
- **MIME validation** - Automatic validation against supportedMimes array
- **Interface enforcement** - Ensures all processors implement required methods
- **Extensibility** - Easy to add new processor types (audio, document, etc.)

### Specialized Processing
Each processor focuses on format-specific extraction:
- **ImageProcessor** - EXIF data, orientation, color analysis, Live Photo detection
- **VideoProcessor** - Video metadata, motion data analysis, companion image identification

## Image Processor

### Supported Formats
```typescript
supportedMimes = [
  'image/jpeg', 'image/jpg',    // Primary JPEG support
  'image/png',                  // PNG with transparency
  'image/heic', 'image/heif',   // Apple formats
  'image/gif',                  // GIF animations
  'image/tiff',                 // TIFF files
  'image/webp'                  // Modern web format
];
```

### Key Features
- **EXIF extraction** - Complete metadata using ExifTool
- **GPS coordinate parsing** - Handles both numeric and string coordinate formats
- **Timestamp extraction** - Multiple timestamp sources with conflict detection
- **Color analysis** - Dominant color extraction using Vibrant.js
- **Orientation handling** - Proper image rotation metadata
- **Live Photo detection** - Identifies Apple Live Photos from companion metadata

### EXIF Data Processing
```typescript
// Comprehensive EXIF extraction
const exifData = await extractEXIF(file.absolutePath);
// → Camera make, model, lens information
// → Camera settings (ISO, aperture, shutter speed)
// → Technical data (color space, compression)
// → GPS coordinates with validation
// → Timestamp data from multiple EXIF fields
```

## Video Processor

### Supported Formats
```typescript
supportedMimes = [
  'video/mp4',           // MP4 containers
  'video/quicktime',     // MOV files (Apple)
  'video/x-msvideo'      // AVI format
];
```

### Specialized Features
- **Video metadata extraction** - Duration, codec, bitrate information
- **Motion data analysis** - Detects Apple Live Photo motion data
- **Companion image detection** - Links video files to corresponding still images
- **GPS coordinate correction** - Fixes longitude sign corruption in video EXIF

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

**Detection Logic:**
- **High confidence** - Short duration (< 10s) + Apple QuickTime + motion data
- **Medium confidence** - Short duration + motion data (non-Apple)
- **Low confidence** - Short duration but missing motion data
- **None** - Long duration or clearly not a Live Photo

## GPS Coordinate Corruption Fix

### Problem Identified
Video files had GPS longitude sign corruption affecting 20.2% of files with GPS data.

### Root Cause
ExifTool returns different coordinate formats:
- **Images** - Numeric values (e.g., -68.2039)
- **Videos** - String with embedded directions (e.g., "68.2039 W")

### Solution Implemented
Enhanced coordinate parsing in both processors:
```typescript
// Handles both numeric and string coordinate formats
function parseCoordinate(value: any, ref?: string): number | null {
  if (typeof value === 'number') return value;
  if (typeof value === 'string') {
    // Parse embedded direction: "68.2039 W" → -68.2039
    const match = value.match(/(\d+\.?\d*)\s*([NSEW])/);
    if (match) {
      const [, coord, direction] = match;
      const numeric = parseFloat(coord);
      return ['S', 'W'].includes(direction) ? -numeric : numeric;
    }
  }
  return null;
}
```

## Error Handling Patterns

### Graceful Degradation
```typescript
// Continue processing despite individual extraction failures
try {
  const gpsData = await extractGPS(exifData);
  result.location = enrichWithGPS(gpsData);
} catch (error) {
  result.location = createEmptyLocationResult();
  result.processing.notes = `GPS extraction failed: ${error.message}`;
}
```

### Validation Chains
```typescript
// Multi-level validation for robust processing
if (!await this.validate(file)) {
  throw new ValidationError('MIME type not supported');
}

if (!await fileExists(file.absolutePath)) {
  throw new PathError('File not found');
}
```

## Development Patterns

### Adding New Processors
1. **Extend BaseProcessor** - Implement abstract methods
2. **Define supported MIME types** - Add to supportedMimes array
3. **Implement extraction logic** - Format-specific metadata extraction
4. **Update router** - Register processor in pipeline/router.ts
5. **Add test coverage** - Include in CLI response test suite

### Processor Testing
```typescript
// Individual processor tests
describe('ImageProcessor', () => {
  it('should extract EXIF data from JPEG', async () => {
    const processor = new ImageProcessor();
    const result = await processor.extract(jpegFile);
    expect(result.camera.make).toBeDefined();
    expect(result.settings.iso).toBeGreaterThan(0);
  });
});
```

## Quality Standards

### Metadata Extraction Requirements
- **Complete EXIF data** - Extract all available metadata fields
- **Type safety** - Proper TypeScript types for all extracted data
- **Error handling** - Graceful handling of corrupted or missing metadata
- **Performance** - Efficient processing for large files

### GPS Data Integrity
- **Coordinate validation** - Verify GPS coordinates are within valid ranges
- **Format handling** - Support both numeric and string coordinate formats
- **Sign correction** - Proper hemisphere handling for longitude/latitude
- **Null handling** - Graceful handling of missing GPS data

### Live Photo Detection Accuracy
- **High precision** - Minimize false positives for Live Photo detection
- **Confidence scoring** - Provide confidence levels for detection results
- **Companion linking** - Accurate linking between video and image files
- **Performance** - Efficient motion data analysis

## Future Processor Extensions

### Audio Processor (Planned)
```typescript
class AudioProcessor extends BaseProcessor {
  supportedMimes = [
    'audio/mpeg',     // MP3 files
    'audio/wav',      // WAV audio
    'audio/flac',     // FLAC lossless
    'audio/aac'       // AAC format
  ];
  
  async extract(file: MediaFile): Promise<ProcessingResult> {
    // Audio-specific metadata extraction
    // Duration, bitrate, codec, embedded artwork
  }
}
```

### Document Processor (Future)
```typescript
class DocumentProcessor extends BaseProcessor {
  supportedMimes = [
    'application/pdf',     // PDF documents
    'image/svg+xml',       // SVG graphics
    'application/postscript' // EPS files
  ];
  
  async extract(file: MediaFile): Promise<ProcessingResult> {
    // Document metadata, creation info, embedded images
  }
}
```

## Code Quality Gates

### Processor-Specific Testing
```bash
# Test all processors
npm test -- --testPathPattern=processors

# Test specific processor
npm test -- --testPathPattern=image.processor

# Test Live Photo detection
npm test -- --testPathPattern=live-photo
```

### Quality Requirements
- **TypeScript compliance** - No `any` types, use semantic-any.ts when needed
- **Error handling** - All extractors must handle corrupted files gracefully
- **Performance** - Process images under 2 seconds, videos under 5 seconds
- **Test coverage** - Every supported MIME type must have test coverage