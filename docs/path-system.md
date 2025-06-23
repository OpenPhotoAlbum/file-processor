# Path System Documentation

This module provides a portable path abstraction system that allows files to be referenced independently of their absolute filesystem locations.

## Path Prefixes

### `sample:` (PathPrefix.SAMPLE)
- **Purpose**: Test and sample media files
- **Environment Variable**: `SAMPLE_BASE_PATH`
- **Example**: `"sample:jpg_with_gps_iphone.JPG"`
- **Resolves to**: `$SAMPLE_BASE_PATH/jpg_with_gps_iphone.JPG`
- **Use case**: Development, testing, examples

### `media:` (PathPrefix.MEDIA)  
- **Purpose**: Production media files
- **Environment Variable**: `MEDIA_BASE_PATH`
- **Example**: `"media:photos/2023/vacation.jpg"`
- **Resolves to**: `$MEDIA_BASE_PATH/photos/2023/vacation.jpg`
- **Use case**: Production file processing

### `relative:` (PathPrefix.RELATIVE)
- **Purpose**: Files relative to current working directory
- **Environment Variable**: None (uses cwd)
- **Example**: `"relative:temp/output.json"`
- **Resolves to**: `$CWD/temp/output.json`
- **Use case**: Temporary files, fallback paths

## Security Benefits

1. **Path Sanitization**: Full absolute paths are never exposed in logs
2. **Environment Abstraction**: Same code works across different deployments
3. **Base Directory Isolation**: Files are constrained to configured base directories
4. **Portable References**: Database can store `"sample:file.jpg"` instead of `"/home/user/files/file.jpg"`

## API Reference

### Core Functions

#### `toRelativePath(absolutePath: string): string`
Convert absolute path to portable reference.

```typescript
const portable = toRelativePath('/home/user/samples/test.jpg');
// Returns: "sample:test.jpg"
```

#### `toAbsolutePath(relativePath: string): string`
Convert portable reference back to absolute path.

```typescript
const absolute = toAbsolutePath('sample:test.jpg'); 
// Returns: "/home/user/samples/test.jpg"
```

#### `sanitizePathForLogging(path: string): string`
Safe logging function that never exposes full paths.

```typescript
logger.info('Processing file', { file: sanitizePathForLogging(absolutePath) });
// Logs: "Processing file sample:test.jpg"
```

### Helper Functions

#### `hasPathPrefix(path: string, prefix: PathPrefix): boolean`
Type-safe prefix checking.

```typescript
if (hasPathPrefix(path, PathPrefix.SAMPLE)) {
  // Handle sample file...
}
```

#### `getPathPrefixInfo(prefix: PathPrefix)`
Get metadata about a path prefix.

```typescript
const info = getPathPrefixInfo(PathPrefix.SAMPLE);
// Returns: { envVar: 'SAMPLE_BASE_PATH', defaultPath: '/default/sample/path', ... }
```

#### `getAllPathPrefixes(): PathPrefix[]`
Get all available path prefixes.

```typescript
const prefixes = getAllPathPrefixes();
// Returns: ['sample:', 'media:', 'relative:']
```

## Configuration

Set these environment variables in your `.env` file:

```bash
# Sample media files (for testing)
SAMPLE_BASE_PATH=/path/to/your/project/scratch/sample_media

# Production media files
MEDIA_BASE_PATH=/path/to/your/media/files
```

## Usage Examples

### Basic File Processing

```typescript
import { PathPrefix, toAbsolutePath, sanitizePathForLogging } from './utils/paths.js';
import { Logger } from './utils/logging/index.js';

const logger = new Logger('File Processor');

// Process a sample file
const samplePath = 'sample:jpg_with_gps_iphone.JPG';
const absolutePath = toAbsolutePath(samplePath);

logger.info('Processing file', { 
  file: sanitizePathForLogging(absolutePath) 
});
// Safe: logs "sample:jpg_with_gps_iphone.JPG" instead of full path
```

### Type-Safe Path Handling

```typescript
function processFile(relativePath: string) {
  if (hasPathPrefix(relativePath, PathPrefix.SAMPLE)) {
    logger.debug('Processing sample file');
    // Handle test/sample files
  } else if (hasPathPrefix(relativePath, PathPrefix.MEDIA)) {
    logger.info('Processing production file');
    // Handle production files
  } else {
    logger.warn('Processing relative path file');
    // Handle fallback case
  }
}
```

### Database Storage

```typescript
// Store portable references in database
const mediaFile = {
  id: 'file-123',
  path: 'sample:test.jpg',  // Portable, environment-independent
  metadata: { ... }
};

// Later, resolve to absolute path for processing
const absolutePath = toAbsolutePath(mediaFile.path);
```

## Best Practices

1. **Always use prefixed paths** for file references in logs, databases, and configuration
2. **Use `sanitizePathForLogging()`** for all log output to prevent path exposure
3. **Configure base paths** via environment variables for different deployments
4. **Use type-safe helpers** like `hasPathPrefix()` instead of string comparisons
5. **Store prefixed paths** in databases for portability across environments

## Migration Guide

If you have existing code using hardcoded strings:

```typescript
// ❌ Old way - hardcoded strings
if (path.startsWith('sample:')) {
  // ...
}

// ✅ New way - type-safe enum
if (hasPathPrefix(path, PathPrefix.SAMPLE)) {
  // ...
}
```

```typescript
// ❌ Old way - magic numbers
const withoutPrefix = path.substring(7); // What is 7?

// ✅ New way - explicit configuration
const config = getPathPrefixInfo(PathPrefix.SAMPLE);
const withoutPrefix = path.substring(config.prefixLength);
```