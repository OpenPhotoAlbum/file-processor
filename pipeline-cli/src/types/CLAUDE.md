# Types Module - Media Processing Pipeline

## Purpose
Centralized TypeScript type definitions for the entire media processing system. Provides type safety, IDE support, and consistent data structures across all components.

## Key Components

### Core Files
- **`media.ts`** - Core media file interfaces and processing result schema
- **`processors.ts`** - Processor interfaces and media processing contracts
- **`semantic-any.ts`** - Semantic alternatives to `any` type for unavoidable dynamic data

## Architecture Philosophy

### Type Safety First
- **Zero `any` types** - Use semantic alternatives from `semantic-any.ts`
- **Interface compliance** - All components must implement defined interfaces
- **IDE support** - Rich autocomplete and compile-time validation
- **Documentation** - Self-documenting code through descriptive type names

### Semantic Any System
```typescript
// Instead of any, use semantic types that explain WHY dynamic typing is needed
export type ExternalToolOutput = any;      // Data from external tools (ExifTool, etc.)
export type UnknownSidecarData = any;      // Metadata from external sidecar files
export type UnknownJsonContent = any;      // JSON data with unknown structure
export type DatabaseRowData = any;         // Dynamic database query results
export type ConfigurationValue = any;      // Environment-driven configuration
```

### Documentation Requirement
Each semantic any type includes JSDoc explaining the business justification:
```typescript
/**
 * ExifTool output structure varies significantly between file formats
 * and versions. Using dynamic typing here acknowledges this reality
 * while clearly marking where conversion to proper types should occur.
 */
export type ExternalToolOutput = any;
```

## Media Types (`media.ts`)

### Core Interfaces

#### MediaFile Interface
```typescript
interface MediaFile {
  path: string;          // Relative path with prefix (sample:, media:)
  absolutePath: string;  // Full path for processing (never stored)
  hash: string;         // SHA-256 content hash
  size: number;         // File size in bytes
  mimeType: string;     // Detected MIME type
  sidecarMetadata?: SidecarMetadata[]; // External metadata files
}
```

#### ProcessingResult Schema
**Unified output format for all processors:**
```typescript
interface ProcessingResult {
  file: FileMetadata;           // Basic file information
  processing: ProcessingEvent;   // Success/failure, timing, providers
  processingHistory?: ProcessingEvent[]; // Complete audit trail
  media: MediaInfo;             // Format, dimensions, Live Photo detection
  timestamps: TimestampData;     // Capture time with conflict resolution
  location: LocationData;        // GPS, geolocation, landmarks
  camera: CameraInfo;           // Make, model, lens
  settings: CameraSettings;     // ISO, aperture, shutter speed
  technical: TechnicalData;     // EXIF version, color space, compression
  sidecars: SidecarInfo[];      // External metadata file references
  database?: DatabaseStorage;   // Database storage metadata
}
```

### Enumerations

#### SupportedMimeType
```typescript
enum SupportedMimeType {
  JPEG = 'image/jpeg',
  PNG = 'image/png',
  HEIC = 'image/heic',
  GIF = 'image/gif',
  TIFF = 'image/tiff',
  WEBP = 'image/webp'
}
```

#### SidecarSource & SidecarFormat
```typescript
enum SidecarSource {
  GOOGLE_TAKEOUT = 'google-takeout',
  ADOBE_LIGHTROOM = 'adobe-lightroom',
  CUSTOM = 'custom'
}

enum SidecarFormat {
  JSON = 'json',
  XMP = 'xmp',
  XML = 'xml'
}
```

## Processor Types (`processors.ts`)

### MediaProcessor Interface
```typescript
interface MediaProcessor {
  supportedMimes: string[];
  extract(file: MediaFile): Promise<ProcessingResult>;
  validate?(file: MediaFile): Promise<boolean>;
}
```

### Processing Event Tracking
```typescript
interface ProcessingEvent {
  success: boolean;
  processor: string;           // 'ImageProcessor', 'VideoProcessor'
  extractedAt: string;        // ISO timestamp
  processingTimeMs?: number;   // Performance tracking
  error?: string;             // Error details if failed
  providersEnabled?: string[]; // Geolocation/landmark providers used
  fieldsUpdated?: string[];   // For merge operations
  version?: string;           // Processor version for compatibility
  notes?: string;             // Additional context
}
```

## Semantic Any Types (`semantic-any.ts`)

### Purpose
Provide type-safe alternatives to `any` when dynamic typing is genuinely required.

### Available Types
```typescript
// External tool integration
export type ExternalToolOutput = any;    // ExifTool, ffprobe output
export type UnknownSidecarData = any;    // JSON/XMP sidecar content

// Database operations  
export type DatabaseRowData = any;       // Dynamic query results
export type UnknownJsonContent = any;    // Generic JSON parsing

// Configuration and environment
export type ConfigurationValue = any;    // Environment-driven config
export type LegacyApiResponse = any;     // Third-party API responses
```

### Usage Guidelines
- **Document WHY** - Each usage must explain business justification
- **Convert quickly** - Transform to proper types as soon as structure is known
- **Limit scope** - Use for the smallest possible code section
- **Type guards** - Use runtime validation when converting from semantic any

### Example Usage
```typescript
// BAD: Using any without explanation
function parseExif(data: any): CameraInfo { ... }

// GOOD: Using semantic type with documentation
function parseExif(data: ExternalToolOutput): CameraInfo {
  // ExifTool output structure varies by format - convert to known types
  const typed = data as { Make?: string, Model?: string };
  return {
    make: typed.Make || null,
    model: typed.Model || null
  };
}
```

## Type Evolution Patterns

### Schema Migrations
When evolving ProcessingResult schema:
1. **Add optional fields** - Maintain backward compatibility
2. **Update processors** - Ensure all processors provide new fields
3. **Update tests** - Regenerate CLI response mocks
4. **Document changes** - Update interface documentation

### Deprecation Strategy
```typescript
interface ProcessingResult {
  // New field
  media: MediaInfo;
  
  // Deprecated field (remove in v2.0)
  /** @deprecated Use media.type instead */
  mediaType?: string;
}
```

## Integration Points

### CLI Integration
Types ensure CLI options map correctly to internal data structures:
```typescript
interface CLIOptions {
  files?: string[];
  output?: string;
  merge?: boolean;
  mergeSection?: MergeSectionType[];  // Type-safe merge sections
}
```

### Database Integration
Types align with database schema through service layer:
```typescript
// Database service uses typed interfaces
interface MediaFileRecord {
  id: number;
  path: string;
  hash: string;
  collection: string;
  processing_result: ProcessingResult; // JSON column with proper typing
}
```

### Testing Integration
Types enable comprehensive test validation:
```typescript
// Test type compliance
const result: ProcessingResult = await processFile('sample:image.jpg');
expect(result.file.path).toMatch(/^sample:/);
expect(result.processing.success).toBe(true);
expect(result.media.dimensions.width).toBeGreaterThan(0);
```

## Quality Standards

### Type Safety Requirements
- **No `any` types** - Use semantic-any.ts alternatives
- **Complete interfaces** - All data structures must be typed
- **Optional vs required** - Clear distinction in interface definitions
- **Null handling** - Explicit null/undefined handling in all interfaces

### Documentation Standards
- **Interface documentation** - JSDoc for all public interfaces
- **Field explanations** - Document non-obvious field purposes
- **Example usage** - Provide usage examples for complex types
- **Migration notes** - Document breaking changes and migration paths

### Quality Gates
```bash
npm run typecheck     # TypeScript compilation with strict checks
npm run lint:check    # ESLint with TypeScript rules
npm run build         # Full build pipeline validation
```

### Type Coverage Goals
- **100% interface coverage** - All data structures must be typed
- **Zero `any` usage** - Use semantic alternatives
- **Complete import/export** - All types properly exported
- **Cross-module consistency** - Types align across all modules