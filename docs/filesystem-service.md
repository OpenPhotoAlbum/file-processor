# FileSystem Service Documentation

The FileSystem Service provides a centralized, secure, and efficient interface for all file system operations in the Media Processing Pipeline. It consolidates scattered filesystem logic into a unified service layer with comprehensive error handling and business logic.

## Overview

The service replaces direct filesystem operations throughout the codebase with a consistent, type-safe interface that integrates seamlessly with our path system, error handling, and logging infrastructure.

## Architecture

### Service Structure

```
src/services/filesystem/
├── index.ts          # Main FileSystemService (unified interface)
├── types.ts          # Comprehensive type definitions
├── scanner.ts        # Directory scanning with filtering
├── validator.ts      # File validation and security checks
├── metadata.ts       # File stats and metadata operations
└── demo.ts           # Integration examples
```

### Component Services

The FileSystemService is composed of three specialized components:

1. **FileSystemScanner**: Directory enumeration and media discovery
2. **FileSystemValidator**: File validation and security checks
3. **FileSystemMetadataService**: File metadata and statistics

## Usage

### Basic Setup

```typescript
import { FileSystemService } from '../services/index.js';

const fs = new FileSystemService();
```

### Core Operations

#### Path Validation
```typescript
// Validate and resolve any path (prefixed or absolute)
const result = await fs.validatePath('sample:images');
console.log(result.isValid);        // true/false
console.log(result.absolutePath);   // resolved absolute path
console.log(result.safePath);       // sanitized for logging
console.log(result.hasKnownPrefix); // uses sample:, media:, etc.
```

#### File Validation
```typescript
// Comprehensive file validation
const validation = await fs.validateFile('/path/to/image.jpg');
console.log(validation.exists);     // file exists
console.log(validation.readable);   // file is readable
console.log(validation.writable);   // file is writable
console.log(validation.isFile);     // is regular file (not directory)
console.log(validation.errors);     // validation errors
console.log(validation.warnings);   // non-critical warnings
```

#### File Metadata
```typescript
// Get comprehensive file metadata
const metadata = await fs.getFileMetadata('sample:image.jpg');
if (metadata) {
  console.log(metadata.size);           // file size in bytes
  console.log(metadata.mtime);          // modification time
  console.log(metadata.safePath);       // sanitized path
  console.log(fs.formatFileSize(metadata.size));  // "2.5 MB"
  console.log(fs.getFileAge(metadata)); // "2 hours ago"
}
```

### Directory Operations

#### Basic Directory Scanning
```typescript
// Scan directory with options
const files = await fs.scanDirectory({
  path: 'sample:photos',
  recursive: true,
  extensions: ['.jpg', '.png', '.heic'],
  includeHidden: false,
  maxDepth: 3
});
```

#### Media File Discovery
```typescript
// Discover media files with business logic
const discovery = await fs.discoverMediaFiles('sample:photos', true, {
  includeSidecars: true,
  validateSignatures: true,
  skipInvalid: false,
  maxFileSize: 100 * 1024 * 1024 // 100MB limit
});

console.log(discovery.mediaFiles);    // discovered media files
console.log(discovery.sidecarFiles);  // associated metadata files
console.log(discovery.invalidFiles);  // files that failed validation
console.log(discovery.scanDuration);  // time taken in ms
```

#### Directory Contents with Metadata
```typescript
// Get directory listing with full metadata
const contents = await fs.getDirectoryContents('sample:photos');
contents.forEach(item => {
  console.log(`${item.safePath}: ${fs.formatFileSize(item.size)}`);
});
```

### Sidecar File Operations

#### Find Associated Sidecars
```typescript
// Find sidecar files for a media file
const sidecars = await fs.findSidecarFiles('sample:IMG_001.jpg', {
  extensions: ['.xmp', '.json', '.xml'],
  searchParentDirs: true,
  maxParentDepth: 2
});

// Results: ['sample:IMG_001.xmp', 'sample:IMG_001.json']
```

### Batch Operations

#### Batch File Validation
```typescript
const files = ['sample:img1.jpg', 'sample:img2.png', 'sample:img3.heic'];

// Validate multiple files efficiently
const results = await fs.batchValidateFiles(files);
results.forEach((validation, filePath) => {
  console.log(`${filePath}: ${validation.isValid ? 'valid' : 'invalid'}`);
});
```

#### Batch Metadata Retrieval
```typescript
// Get metadata for multiple files efficiently
const metadata = await fs.batchGetMetadata(files);
const totalSize = Array.from(metadata.values())
  .filter(m => m !== null)
  .reduce((total, m) => total + m.size, 0);

console.log(`Total size: ${fs.formatFileSize(totalSize)}`);
```

## Integration Examples

### Replacing Pre-processor Logic

**Before:**
```typescript
// Scattered filesystem operations
const stats = await stat(filePath);
const dir = dirname(filePath);
const sidecarPath = join(dir, basename(filePath, extname(filePath)) + '.xmp');
const sidecarExists = await access(sidecarPath).then(() => true).catch(() => false);
```

**After:**
```typescript
// Centralized service
const metadata = await fs.getFileMetadata(filePath);
const sidecars = await fs.findSidecarFiles(filePath);
```

### Replacing CLI File Discovery

**Before:**
```typescript
// Hardcoded test files
const testFiles = [
  'sample:jpg_with_gps_iphone.JPG',
  'sample:heic_sample1.HEIC',
  'sample:mov_sample.MOV'
];
```

**After:**
```typescript
// Dynamic discovery
const discovery = await fs.discoverMediaFiles('sample:', true);
const testFiles = discovery.mediaFiles;
```

### Replacing Image Processor Stats

**Before:**
```typescript
// Direct filesystem calls
const fileStats = await stat(file.absolutePath);
```

**After:**
```typescript
// Service-based approach
const metadata = await fs.getFileMetadata(file.absolutePath);
const fileStats = metadata?.stats;
```

## Configuration Options

### ScanOptions Interface
```typescript
interface ScanOptions {
  path: string;                    // Path to scan (absolute or prefixed)
  recursive?: boolean;             // Scan subdirectories
  extensions?: string[];           // Filter by extensions ['.jpg', '.png']
  mimeTypes?: string[];           // Filter by MIME types
  maxDepth?: number;              // Limit recursion depth (-1 = unlimited)
  followSymlinks?: boolean;       // Follow symbolic links
  includeHidden?: boolean;        // Include hidden files/directories
}
```

### MediaDiscoveryOptions Interface
```typescript
interface MediaDiscoveryOptions {
  includeSidecars?: boolean;      // Include sidecar files in results
  validateSignatures?: boolean;   // Validate file signatures
  skipInvalid?: boolean;         // Skip files that fail validation
  maxFileSize?: number;          // Maximum file size in bytes
}
```

### SidecarSearchOptions Interface
```typescript
interface SidecarSearchOptions {
  extensions?: string[];          // Sidecar extensions to search
  searchParentDirs?: boolean;     // Search parent directories
  maxParentDepth?: number;       // Maximum parent search depth
}
```

## Performance Features

### Batch Processing
- **Concurrency Control**: Configurable parallel processing limits
- **Chunked Operations**: Large file lists processed in manageable chunks
- **Memory Efficiency**: Streaming operations for large directories

### Caching Considerations
- Service instances can be reused across operations
- Metadata operations return rich objects suitable for caching
- Path validation results can be cached for repeated operations

### Error Resilience
- Individual file failures don't abort batch operations
- Comprehensive error reporting with context
- Graceful degradation for inaccessible files

## Security Features

### Path Sanitization
- All logged paths are sanitized using `sanitizePathForLogging()`
- Absolute paths never appear in logs
- Sensitive directory structures are protected

### Access Control
- File permission validation before operations
- Security policy enforcement for external paths
- Path traversal protection through validation

### Safe Operations
- Read-only by default (no file modification methods)
- Validation before any file system access
- Comprehensive error handling prevents crashes

## Error Handling

The service integrates with our hybrid error system:

```typescript
// Automatic error handling with structured codes
try {
  const files = await fs.scanDirectory({ path: '/invalid/path' });
} catch (error) {
  // Errors are logged with structured codes like:
  // MPP-SYS-E-002: File operation failed
  // Context includes sanitized paths and operation details
}
```

### Error Categories
- **Path Errors**: Invalid paths, permission denied, file not found
- **System Errors**: File operation failures, out of memory
- **Validation Errors**: Invalid file signatures, format mismatches

## Integration with Existing Systems

### Path System Integration
- Seamless handling of `sample:`, `media:`, and `relative:` prefixes
- Automatic path resolution and sanitization
- External path handling with `external:` prefix for logging

### Error System Integration
- Uses component-specific error factories
- Structured error codes for monitoring and debugging
- Rich context information in all error reports

### Logging Integration
- Component-scoped loggers: `[FileSystem Service]`, `[FileSystem Scanner]`
- Structured logging with sanitized paths
- Performance metrics and operation timing

## Future Enhancements

### Planned Features
- **Watch Operations**: File system watching for real-time updates
- **Checksums**: File integrity verification
- **Compression**: Built-in compression support for large files
- **Remote Filesystems**: Support for cloud storage backends

### Performance Optimizations
- **Intelligent Caching**: Metadata and validation result caching
- **Progressive Loading**: Lazy loading for large directory trees
- **Memory Streaming**: Efficient handling of very large file lists

### Security Enhancements
- **Access Control Lists**: Fine-grained permission management
- **Audit Logging**: Detailed access logging for compliance
- **Sandboxing**: Restricted filesystem access policies

## Best Practices

### Service Usage
1. **Reuse Service Instances**: Create once, use multiple times
2. **Use Batch Operations**: Prefer batch methods for multiple files
3. **Handle Null Results**: Always check for null metadata/validation results
4. **Leverage Path Validation**: Validate paths before processing

### Error Handling
1. **Check Validation Results**: Always verify file validation before processing
2. **Handle Batch Failures**: Individual failures in batch operations are normal
3. **Log Context**: Include operation context in error handling

### Performance
1. **Set Appropriate Limits**: Configure `maxDepth` and concurrency for your use case
2. **Filter Early**: Use extensions/MIME filters to reduce processing
3. **Monitor Memory**: Be conscious of memory usage with large file lists

## Migration Guide

### From Direct fs/promises Usage
```typescript
// Before
import { stat, readdir, access } from 'fs/promises';

// After  
import { FileSystemService } from '../services/index.js';
const fs = new FileSystemService();
```

### From Custom File Discovery
```typescript
// Before: Custom directory scanning logic
const files = [];
// ... manual directory traversal

// After: Service-based discovery
const discovery = await fs.discoverMediaFiles(path, recursive);
const files = discovery.mediaFiles;
```

### From Manual Validation
```typescript
// Before: Manual existence checking
const exists = await access(path).then(() => true).catch(() => false);

// After: Comprehensive validation
const validation = await fs.validateFile(path);
const exists = validation.exists;
```

The FileSystem Service provides a robust, secure, and efficient foundation for all file operations in the Media Processing Pipeline, replacing scattered filesystem code with a unified, well-tested service layer.