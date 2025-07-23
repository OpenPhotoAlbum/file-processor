# Logging System Documentation

## Overview

Scoped logger system where each component creates its own logger instance with a fixed context. This ensures consistent logging across the media processing pipeline while maintaining clean, readable code.

## Core Design

### Scoped Logger Class

```typescript
export class Logger {
  constructor(private context: string) {}
  
  debug(message: string, data?: Record<string, any>): void
  info(message: string, data?: Record<string, any>): void  
  warn(message: string, data?: Record<string, any>): void
  error(message: string, error?: Error, data?: Record<string, any>): void
  fatal(message: string, error?: Error, data?: Record<string, any>): void
}
```

### LogOutput Enum

Type-safe output targeting:

```typescript
export enum LogOutput {
  CONSOLE = 'console',
  FILE = 'file'
}
```

## Usage Patterns

### Component-Scoped Loggers

Each utility and processor creates its own logger with descriptive context:

```typescript
// Image validation
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
  }
}

// GPS extraction
export class GPSExtractor {
  private logger = new Logger('GPS Extraction');
  
  async extractGPS(sources): Promise<GPSExtractionResult> {
    this.logger.info('Extracting GPS from sources', { 
      sourceCount: Object.keys(sources).length 
    });
    
    if (conflicts.length > 0) {
      this.logger.warn('GPS conflicts detected', { conflicts });
    }
  }
}
```

### Structured Data Logging

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

## Configuration

### Environment Variables

Configure all logging via `.env` file:

```bash
# Basic logging configuration
LOG_LEVEL=DEBUG
LOG_INCLUDE_TIMESTAMP=true
LOG_COLORIZE=true
LOG_FORMAT=console
LOG_OUTPUTS=console,file
LOG_FILE_PATH=logs/media-processing.log

# Log level colors (hex codes without #)
LOG_COLOR_DEBUG=808080
LOG_COLOR_INFO=00FFFF
LOG_COLOR_WARN=FFFF00
LOG_COLOR_ERROR=FF0000
LOG_COLOR_FATAL=FF00FF

# Scope colors - each component gets its own color
LOG_SCOPE_COLOR_IMAGE_PROCESSOR=5F9EFF
LOG_SCOPE_COLOR_IMAGE_VALIDATION=5FFFFF
LOG_SCOPE_COLOR_EXIF_EXTRACTOR=5FFF5F
LOG_SCOPE_COLOR_GPS_EXTRACTION=FFFF5F
LOG_SCOPE_COLOR_DEFAULT=FFFFFF
```

### Runtime Configuration

```typescript
// Configure globally (optional override)
Logger.configure({
  level: LogLevel.INFO,
  includeTimestamp: true,
  colorize: true,
  outputs: [LogOutput.CONSOLE, LogOutput.FILE]
});
```

## Output Formats

### Console Output (Colored)

```bash
2025-06-23T21:49:46.905Z [INFO ] [Image Processor] Starting metadata extraction fileId=sample:jpg_with_gps_iphone.JPG size=1740252
2025-06-23T21:49:46.905Z [DEBUG] [EXIF Extractor] Running ExifTool command command=exiftool -json -G timeout=5000
2025-06-23T21:49:46.905Z [WARN ] [GPS Extraction] GPS conflict detected sources=[exif,google] distance=50m primary=exif
2025-06-23T21:49:46.906Z [ERROR] [Image Validation] File signature validation failed fileId=sample:corrupt.jpg expected=ffd8ff actual=89504e error="Invalid JPEG signature"
```

### File Output (Plain Text)

```
2025-06-23T21:49:46.905Z [INFO ] [Image Processor] Starting metadata extraction fileId=sample:jpg_with_gps_iphone.JPG size=1740252
2025-06-23T21:49:46.905Z [DEBUG] [EXIF Extractor] Running ExifTool command command=exiftool -json -G timeout=5000
2025-06-23T21:49:46.905Z [WARN ] [GPS Extraction] GPS conflict detected sources=[exif,google] distance=50m primary=exif
2025-06-23T21:49:46.906Z [ERROR] [Image Validation] File signature validation failed fileId=sample:corrupt.jpg expected=ffd8ff actual=89504e error="Invalid JPEG signature"
```

## Component Context Names

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

## Security & Privacy Features

### Path Privacy
- Always use relative paths (`sample:file.jpg`) in logs
- Never expose absolute file system paths
- Consistent with existing path abstraction system

### Structured Data
- File IDs use our relative path system
- Additional context as structured data, not string interpolation
- Easy to filter and analyze logs programmatically

### Error Context
- Include relevant context without exposing sensitive data
- Sanitize error messages that might contain paths
- Stack traces included when helpful

## Color System

### Dual Output Formatting
- **Console Output**: ANSI colored output for better readability
- **File Output**: Plain text without colors for clean log files
- **Auto-detection**: Colors only applied when outputting to TTY

### Custom Colors
- Each log level has configurable hex color
- Each component scope has configurable hex color
- Colors automatically converted from hex to ANSI codes
- Fallback colors for undefined scopes

## API Reference

### Core Methods

```typescript
// Basic logging
logger.debug('Debug message');
logger.info('Info message'); 
logger.warn('Warning message');
logger.error('Error occurred', error);
logger.fatal('Critical failure', error);

// With structured data
logger.info('Operation completed', { 
  duration: 150,
  itemsProcessed: 42 
});

// Error with context
logger.error('Processing failed', error, {
  fileId: 'sample:test.jpg',
  step: 'validation'
});
```

### Helper Functions

```typescript
// Get current configuration
const config = Logger.getConfig();

// Global configuration override
Logger.configure({ level: LogLevel.DEBUG });
```

## Best Practices

1. **Create one logger per class** with descriptive context
2. **Use structured data** instead of string interpolation
3. **Include file IDs** using portable path format (`sample:`, `media:`)
4. **Log key lifecycle events** (start, complete, error)
5. **Use appropriate log levels** (debug for development, info for normal flow)
6. **Include error objects** when logging errors for stack traces
7. **Add timing information** for performance monitoring

## Migration from Console Logs

```typescript
// ❌ Old way
console.log(`Validating image: ${file.path}`);
console.error(`❌ Validation failed: ${file.path}`);

// ✅ New way  
logger.info('Starting validation', { fileId: file.path });
logger.error('Validation failed', null, { fileId: file.path, errors: result.errors });
```

## Testing

Create test loggers for development and testing:

```typescript
// Test logger usage
const logger = new Logger('Test Runner');
logger.info('Starting test suite');
logger.debug('Test configuration loaded', { testCount: 15 });
```

The logging system provides professional-grade logging capabilities while maintaining security through path sanitization and structured data formatting.