# Logger System Design

## Overview
Scoped logger system where each component creates its own logger instance with a fixed context. This ensures consistent logging across the media processing pipeline while maintaining clean, readable code.

## Core Design

### 1. **Simple Scoped Logger Class**
```typescript
// src/utils/logging/logger.ts
export class Logger {
  constructor(private context: string) {}
  
  debug(message: string, data?: Record<string, any>): void
  info(message: string, data?: Record<string, any>): void
  warn(message: string, data?: Record<string, any>): void
  error(message: string, error?: Error, data?: Record<string, any>): void
}
```

### 2. **Component-Scoped Loggers**
Each utility and processor creates its own logger with descriptive context:

```typescript
// src/utils/image/validation.ts
export class ImageValidator {
  private logger = new Logger('Image Validation');
  
  async validateImage(file: MediaFile): Promise<ValidationResult> {
    this.logger.info('Starting validation', { fileId: file.path, size: file.size });
    
    if (!result.isValid) {
      this.logger.error('Validation failed', null, { 
        fileId: file.path, 
        errors: result.errors 
      });
    }
    
    this.logger.info('Validation completed', { fileId: file.path, isValid: result.isValid });
  }
}

// src/utils/gps/extractor.ts
export class GPSExtractor {
  private logger = new Logger('GPS Extraction');
  
  async extractGPS(sources): Promise<GPSExtractionResult> {
    this.logger.info('Extracting GPS from sources', { sourceCount: Object.keys(sources).length });
    
    if (conflicts.length > 0) {
      this.logger.warn('GPS conflicts detected', { conflicts });
    }
  }
}

// src/processors/image.processor.ts
export class ImageProcessor extends BaseProcessor {
  private logger = new Logger('Image Processor');
  
  async extract(file: MediaFile): Promise<any> {
    this.logger.info('Starting metadata extraction', { fileId: file.path });
    
    try {
      const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
      this.logger.info('EXIF extraction completed', { 
        fileId: file.path,
        fieldsExtracted: Object.keys(exifData).length 
      });
    } catch (error) {
      this.logger.error('Metadata extraction failed', error, { fileId: file.path });
    }
  }
}
```

## Proposed Context Names

### Pipeline Components
- `'Pre Processor'` - pre-processor.ts
- `'Pipeline Router'` - router.ts  
- `'Post Processor'` - post-processor.ts

### Media Processors
- `'Image Processor'` - ImageProcessor
- `'Video Processor'` - Future VideoProcessor
- `'Audio Processor'` - Future AudioProcessor

### Utility Components
- `'Image Validation'` - ImageValidator
- `'EXIF Extractor'` - ExifExtractor
- `'GPS Extraction'` - GPSExtractor
- `'File Validator'` - Generic file validation
- `'MIME Detection'` - MIME type detection
- `'Path Resolver'` - Path abstraction utilities

## Usage Patterns

### 1. **Basic Logging**
```typescript
const logger = new Logger('EXIF Extractor');

// Simple messages
logger.info('Starting EXIF extraction');
logger.error('Failed to parse EXIF data');
logger.warn('EXIF field missing');
```

### 2. **Structured Data**
```typescript
// Include additional context
logger.info('Validation passed', { 
  fileId: file.path, 
  duration: 150, 
  detectedType: 'jpeg' 
});

logger.error('Processing failed', error, {
  fileId: file.path,
  step: 'gps-extraction',
  inputSources: ['exif', 'google']
});
```

### 3. **Replace Existing Console Logs**
```typescript
// Current:
console.log(`Validating image: ${file.path}`);
console.error(`❌ Validation failed: ${file.path}`);
console.warn(`MIME mismatch: declared ${file.mimeType}, detected ${expectedMime}`);

// New:
logger.info('Starting validation', { fileId: file.path });
logger.error('Validation failed', null, { fileId: file.path, errors: result.errors });
logger.warn('MIME type mismatch', { declared: file.mimeType, detected: expectedMime });
```

## Output Format Examples

### Console Format
```
[INFO]  [Image Processor] Starting metadata extraction fileId=sample:photo.jpg
[INFO]  [EXIF Extractor] Running ExifTool command fileId=sample:photo.jpg
[INFO]  [GPS Extraction] Found GPS in EXIF data lat=42.985 lon=-70.951
[WARN]  [GPS Extraction] GPS conflict detected sources=exif,google distance=50m
[INFO]  [Image Processor] Metadata extraction completed fields=25 duration=340ms
[ERROR] [File Validator] Validation failed fileId=sample:corrupt.jpg errors=["Invalid signature"]
```

### JSON Format
```json
{
  "timestamp": "2025-06-23T20:48:23.408Z",
  "level": "INFO",
  "context": "Image Processor",
  "message": "Starting metadata extraction",
  "data": {
    "fileId": "sample:jpg_with_gps_iphone.JPG"
  }
}

{
  "timestamp": "2025-06-23T20:48:23.650Z",
  "level": "ERROR", 
  "context": "GPS Extraction",
  "message": "Failed to parse GPS coordinates",
  "error": {
    "name": "TypeError",
    "message": "Cannot read property 'latitude' of undefined",
    "stack": "..."
  },
  "data": {
    "fileId": "sample:heic_sample1.HEIC",
    "source": "exif"
  }
}
```

## Color System

### Terminal Colors (Console Output Only)
```typescript
// ANSI color codes for terminal output
const LOG_LEVEL_COLORS = {
  DEBUG: '\x1b[90m',    // Gray
  INFO:  '\x1b[36m',    // Cyan  
  WARN:  '\x1b[33m',    // Yellow
  ERROR: '\x1b[31m',    // Red
  FATAL: '\x1b[35m'     // Magenta
} as const;

// Scope/context colors (cycling through pleasant colors)
const SCOPE_COLORS = {
  'Image Processor':   '\x1b[94m',  // Bright Blue
  'Image Validation':  '\x1b[96m',  // Bright Cyan
  'EXIF Extractor':    '\x1b[92m',  // Bright Green
  'GPS Extraction':    '\x1b[93m',  // Bright Yellow
  'Pre Processor':     '\x1b[95m',  // Bright Magenta
  'Pipeline Router':   '\x1b[91m',  // Bright Red
  'Post Processor':    '\x1b[97m',  // Bright White
  'Video Processor':   '\x1b[34m',  // Blue
  'Audio Processor':   '\x1b[32m',  // Green
  'File Validator':    '\x1b[35m'   // Magenta
} as const;

const RESET_COLOR = '\x1b[0m';
```

### Colored Console Output Examples
```bash
# Terminal output with colors:
[INFO]  [Image Processor] Starting metadata extraction fileId=sample:photo.jpg
[WARN]  [GPS Extraction] GPS conflict detected sources=exif,google distance=50m  
[ERROR] [File Validator] Validation failed fileId=sample:corrupt.jpg

# Where:
# - INFO is cyan
# - Image Processor is bright blue
# - GPS Extraction is bright yellow  
# - File Validator is magenta
# - Log level and scope each have their own colors
```

### File Output (No Colors)
```
2025-06-23T20:48:23.408Z [INFO]  [Image Processor] Starting metadata extraction fileId=sample:photo.jpg
2025-06-23T20:48:23.650Z [WARN]  [GPS Extraction] GPS conflict detected sources=exif,google distance=50m
2025-06-23T20:48:23.891Z [ERROR] [File Validator] Validation failed fileId=sample:corrupt.jpg
```

## Configuration System

### Global Logger Configuration
```typescript
// Configure once, affects all logger instances
Logger.configure({
  level: LogLevel.INFO,        // Minimum log level
  includeTimestamp: true,      // Add timestamps
  colorize: true,             // Console colors (auto-disabled for files)
  format: 'console',          // 'console' or 'json'
  outputs: ['console', 'file'] // Where to send logs
});
```

### Smart Color Detection
```typescript
// Logger automatically detects output type and applies colors appropriately
class Logger {
  private static shouldColorize(target: 'console' | 'file'): boolean {
    // Only colorize console output, never file output
    return target === 'console' && 
           process.stdout.isTTY && 
           Logger.config.colorize;
  }
  
  private formatMessage(level: LogLevel, message: string, target: 'console' | 'file'): string {
    const timestamp = this.includeTimestamp ? new Date().toISOString() + ' ' : '';
    const levelStr = LogLevel[level].padEnd(5);
    const contextStr = `[${this.context}]`;
    
    if (this.shouldColorize(target)) {
      // Colored output for terminal
      const levelColor = LOG_LEVEL_COLORS[LogLevel[level]];
      const scopeColor = SCOPE_COLORS[this.context] || '\x1b[37m'; // Default white
      
      return `${timestamp}${levelColor}[${levelStr}]${RESET_COLOR} ${scopeColor}${contextStr}${RESET_COLOR} ${message}`;
    } else {
      // Plain text for files
      return `${timestamp}[${levelStr}] ${contextStr} ${message}`;
    }
  }
}
```

### Environment-Based Config
```typescript
interface LoggingConfig {
  level: LogLevel;
  targets: {
    console: { enabled: boolean; colorize: boolean; };
    file: { enabled: boolean; path: string; maxSize: string; };
    json: { enabled: boolean; path: string; };
  };
  privacy: {
    sanitizePaths: boolean;     // Use relative paths only
    includeStackTraces: boolean;
  };
}
```

## Privacy & Security Features

### 1. **Path Privacy**
- Always use relative paths (`sample:file.jpg`) in logs
- Never expose absolute file system paths
- Consistent with existing path abstraction system

### 2. **Structured Data**
- File IDs use our relative path system
- Additional context as structured data, not string interpolation
- Easy to filter and analyze logs programmatically

### 3. **Error Context**
- Include relevant context without exposing sensitive data
- Sanitize error messages that might contain paths
- Stack traces optional (configurable)

## Implementation Benefits

### 1. **Clean Code**
- Each component owns its logger instance
- Automatic context inclusion (never forget component name)
- Consistent API across all components

### 2. **Debugging**
- Clear component ownership in logs
- Structured data for complex debugging scenarios
- Easy to filter logs by component

### 3. **Production Ready**
- Multiple output targets (console, file, JSON)
- Configurable log levels
- Performance monitoring ready (duration tracking)

### 4. **Maintenance**
- Easy to add new components (just `new Logger('Component Name')`)
- Centralized configuration
- Simple to change output format globally

## Migration Strategy

### Phase 1: Basic Implementation
1. Create Logger class with console output
2. Replace console.log/error in one component (ImageValidator)
3. Test and refine format

### Phase 2: Pipeline Integration  
1. Add loggers to all processors and utilities
2. Replace all console.log statements
3. Add structured data for file processing

### Phase 3: Advanced Features
1. Add file output target
2. Add JSON format support
3. Add configuration system
4. Add performance/timing logs

This design ensures we maintain the existing path privacy while adding professional logging capabilities throughout the media processing pipeline.