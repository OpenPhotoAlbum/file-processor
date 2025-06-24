# Error System Documentation

The Media Processing Pipeline uses a hybrid error system that combines structured error codes with developer-friendly semantic methods. This system provides consistent error handling, structured logging, and type-safe error creation across all components.

## Overview

Our error system evolved from hardcoded magic strings to a hybrid approach that offers:
- **Named Constants**: Replace magic strings with discoverable constants
- **Semantic Methods**: Type-safe, autocomplete-enabled error creation
- **Structured Codes**: Consistent `MPP-[COMPONENT]-[SEVERITY]-[NUMBER]` format
- **Component Scoping**: Each component has its own error factory and logger
- **Path Sanitization**: Safe logging that never exposes sensitive file paths

## Architecture

### Error Code Structure

All error codes follow the pattern: `MPP-[COMPONENT]-[SEVERITY]-[NUMBER]`

- **MPP**: Media Processing Pipeline prefix
- **COMPONENT**: System component (TIME, GPS, EXIF, etc.)
- **SEVERITY**: Error level (E=Error, W=Warning, I=Info)
- **NUMBER**: Sequential identifier within component/severity

Examples:
- `MPP-TIME-E-001`: Timestamp parsing failed (Error)
- `MPP-GPS-W-002`: GPS coordinates conflict detected (Warning)
- `MPP-EXIF-I-003`: Using fallback EXIF extraction method (Info)

### Component Architecture

```
src/utils/errors/
├── index.ts              # Core error creation utilities
├── factories.ts          # Component-specific error factories
└── registry/
    ├── timestamp.ts       # Timestamp error constants
    ├── gps.ts            # GPS error constants
    ├── exif.ts           # EXIF error constants
    ├── metadata.ts       # Metadata error constants
    ├── system.ts         # System error constants
    ├── validation.ts     # Validation error constants
    ├── path.ts           # Path error constants
    └── config.ts         # Configuration error constants
```

## Usage

### Basic Error Creation

Instead of hardcoded strings:
```typescript
// ❌ Old approach - magic strings
this.errorFactory.timestamp('MPP-TIME-W-002', context, error);
```

Use semantic methods with named constants:
```typescript
// ✅ New hybrid approach
import { createTimestampErrorFactory } from '../utils/errors/factories.js';

class TimestampExtractor {
  private logger = new Logger('Timestamp Extractor');
  private timestampErrors = createTimestampErrorFactory(this.logger);
  
  private handleParsingError(context: object, error: Error) {
    // Semantic method with autocomplete
    this.timestampErrors.formatUnrecognized({
      source: sidecar.source,
      format: sidecar.format,
      sidecarPath: sidecar.path
    }, error);
  }
}
```

### Available Error Factories

Each component has its own error factory with semantic methods:

#### Timestamp Errors
```typescript
const timestampErrors = createTimestampErrorFactory(logger);
timestampErrors.parsingFailed(context, error);
timestampErrors.formatUnrecognized(context, error);
timestampErrors.conflictDetected(context);
timestampErrors.invalidTimezone(context, error);
timestampErrors.usingFallback(context);
```

#### GPS Errors
```typescript
const gpsErrors = createGPSErrorFactory(logger);
gpsErrors.conflictDetected(context);
gpsErrors.extractionFailed(context, error);
gpsErrors.invalidCoordinates(context);
gpsErrors.noGPSData(context);
```

#### System Errors
```typescript
const systemErrors = createSystemErrorFactory(logger);
systemErrors.outOfMemory(context);
systemErrors.fileOperationFailed(context, error);
systemErrors.externalToolNotFound(context);
```

#### Validation Errors
```typescript
const validationErrors = createValidationErrorFactory(logger);
validationErrors.signatureFailed(context, error);
validationErrors.sizeMismatch(context);
validationErrors.mimeTypeUnknown(context);
validationErrors.formatMismatch(context);
```

### Error Constants

All error codes are available as named constants for reference:

```typescript
import { TimestampErrors } from '../utils/errors/registry/timestamp.js';

// Access specific error codes
console.log(TimestampErrors.PARSING_FAILED);      // 'MPP-TIME-E-001'
console.log(TimestampErrors.FORMAT_UNRECOGNIZED); // 'MPP-TIME-W-002'
```

## Integration Examples

### Processor Integration

```typescript
import { Logger } from '../utils/logging/index.js';
import { createValidationErrorFactory, createSystemErrorFactory } from '../utils/errors/factories.js';
import { sanitizePathForLogging } from '../utils/paths.js';

export class ImageProcessor extends BaseProcessor {
  private logger = new Logger('Image Processor');
  private validationErrors = createValidationErrorFactory(this.logger);
  private systemErrors = createSystemErrorFactory(this.logger);
  
  async validate(file: MediaFile): Promise<boolean> {
    const safePath = sanitizePathForLogging(file.absolutePath);
    this.logger.info(`Validating image: ${safePath}`);
    
    try {
      const result = await this.validator.validateImage(file);
      
      if (!result.isValid) {
        result.errors.forEach(error => {
          this.validationErrors.signatureFailed({
            filePath: safePath,
            error: error,
            operation: 'image validation'
          });
        });
        return false;
      }
      
      return true;
    } catch (error) {
      this.systemErrors.fileOperationFailed({
        filePath: safePath,
        operation: 'image validation'
      }, error as Error);
      return false;
    }
  }
}
```

### Main Pipeline Integration

```typescript
import { Logger } from './utils/logging/index.js';
import { createSystemErrorFactory } from './utils/errors/factories.js';
import { sanitizePathForLogging } from './utils/paths.js';

async function main() {
  const logger = new Logger('Main Pipeline');
  const systemErrors = createSystemErrorFactory(logger);
  
  try {
    const result = await processFile(absolutePath);
    
    if (result.success) {
      logger.info(`Successfully processed: ${safePath}`);
    } else {
      logger.warn(`Processing completed with warnings: ${safePath}`);
    }
    
  } catch (error) {
    const safePath = sanitizePathForLogging(relativePath);
    systemErrors.fileOperationFailed({
      filePath: safePath,
      operation: 'main pipeline processing'
    }, error as Error);
  }
}
```

## Path Sanitization

All error logging uses path sanitization to prevent exposure of sensitive file system information:

```typescript
import { sanitizePathForLogging } from '../utils/paths.js';

// Convert absolute paths to safe relative paths for logging
const safePath = sanitizePathForLogging('/sensitive/absolute/path/file.jpg');
// Results in: 'sample:file.jpg' or 'media:file.jpg'

this.systemErrors.fileOperationFailed({
  filePath: safePath,  // Always use sanitized paths
  operation: 'metadata extraction'
}, error);
```

## Error Registry Components

### Available Components

| Component | Code | Description |
|-----------|------|-------------|
| Timestamp | TIME | Date/time extraction and parsing |
| GPS | GPS | Geographic coordinate processing |
| EXIF | EXIF | Image metadata extraction |
| Metadata | META | General metadata processing |
| System | SYS | File operations and system resources |
| Validation | VAL | File format and integrity checks |
| Path | PATH | File path resolution and access |
| Config | CFG | Configuration and environment setup |

### Severity Levels

| Code | Level | Usage |
|------|-------|-------|
| E | Error | Critical failures requiring attention |
| W | Warning | Issues that don't prevent processing |
| I | Info | Informational messages about processing decisions |

## Benefits of the Hybrid System

### Developer Experience
- **Autocomplete**: IDE support for discovering available error methods
- **Type Safety**: Compile-time checking of error usage
- **Consistency**: Standardized error handling patterns across components
- **Discoverability**: Easy to find available errors through IntelliSense

### Maintenance
- **Centralized**: All error definitions in one location per component
- **Versioning**: Clear error code evolution with sequential numbering
- **Documentation**: Self-documenting through semantic method names
- **Refactoring**: Safe renaming and reorganization with TypeScript

### Operations
- **Monitoring**: Structured error codes for alerting and metrics
- **Debugging**: Rich context information in every error
- **Security**: Safe path logging prevents information leakage
- **Compliance**: Consistent error handling for audit requirements

## Migration from Legacy System

The system evolved through these phases:

1. **Magic Strings**: `'MPP-TIME-W-002'` hardcoded everywhere
2. **Constants**: `TIMESTAMP_ERRORS.FORMAT_UNRECOGNIZED`
3. **Hybrid**: `timestampErrors.formatUnrecognized(context, error)`

Each phase maintains backwards compatibility while improving developer experience.

## Best Practices

1. **Always Use Semantic Methods**: Prefer `timestampErrors.parsingFailed()` over direct constants
2. **Sanitize Paths**: Never log absolute paths directly
3. **Provide Context**: Include relevant operation context in error calls
4. **Component Scoping**: Use component-specific loggers and error factories
5. **Error Chaining**: Pass original errors to maintain stack traces
6. **Consistent Naming**: Follow existing patterns for new error types

## Future Enhancements

- **Error Analytics**: Aggregate error metrics for system health monitoring
- **Custom Error Types**: Extend base error classes for specific use cases
- **Internationalization**: Multi-language error messages
- **Error Recovery**: Automatic retry and fallback mechanisms
- **Documentation Generation**: Auto-generate error code documentation