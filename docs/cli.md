# Command Line Interface (CLI)

The Media Processing Pipeline provides a comprehensive command-line interface built with commander.js that replaces hardcoded test files with flexible, professional CLI operations.

## Quick Start

```bash
# Show help and available options
node main.js --help

# Process all media files in sample directory recursively  
node main.js -R sample:

# Process specific files with JSON output
node main.js -f sample:image1.jpg sample:image2.png --json

# Scan directory with filtering and save results
node main.js -D /photos --mime jpeg,png -o results --quiet
```

## Installation and Setup

The CLI is built into the main application. After building the project:

```bash
npm run build
node dist/main.js [options]
```

For development:
```bash
npm run dev -- [options]  # Note the -- separator
```

## Command Reference

### Core Options

| Option | Description | Example |
|--------|-------------|---------|
| `-D, --directory <path>` | Scan directory (non-recursive) | `-D /photos` |
| `-R, --recursive <path>` | Scan directory recursively | `-R sample:` |
| `-f, --files <files...>` | Process specific files | `-f img1.jpg img2.png` |

### Filtering Options

| Option | Description | Example |
|--------|-------------|---------|
| `--mime <types>` | Filter by MIME types (comma-separated) | `--mime jpeg,png,heic` |

### Output Options

| Option | Description | Example |
|--------|-------------|---------|
| `-o, --output <file>` | Save results to file (auto-adds .json) | `-o results` |
| `--overwrite` | Overwrite existing output file | `--overwrite` |
| `--json` | Output in JSON format | `--json` |
| `--quiet` | Minimal console output | `--quiet` |

### Utility Options

| Option | Description |
|--------|-------------|
| `-V, --version` | Show version number |
| `-h, --help` | Display help and examples |

## Path Formats

The CLI supports multiple path formats leveraging our path system:

### Prefixed Paths
```bash
# Use configured sample directory
node main.js -R sample:

# Use configured media directory  
node main.js -D media:photos

# Relative to current working directory
node main.js -f relative:image.jpg
```

### Absolute Paths
```bash
# Absolute paths (logged as external: for security)
node main.js -f /home/user/photos/image.jpg

# Mixed path types in same command
node main.js -f sample:img1.jpg /absolute/path/img2.jpg
```

### Environment Variables
The CLI respects environment configuration:
- `SAMPLE_BASE_PATH` - Base directory for `sample:` prefix
- `MEDIA_BASE_PATH` - Base directory for `media:` prefix
- `ENABLED_MIME_TYPES` - Default MIME type filtering (overridden by `--mime`)

## Usage Examples

### Basic Operations

```bash
# Process all files in sample directory
node main.js -R sample:

# Process specific files
node main.js -f sample:image1.jpg sample:image2.png

# Scan directory without recursion
node main.js -D /photos
```

### Filtering and Output

```bash
# Filter by image types only
node main.js -R /photos --mime jpeg,png,gif,webp

# Save results to file with JSON format
node main.js -R sample: --json -o processing-results

# Quiet processing with overwrite
node main.js -R /photos --quiet -o summary.json --overwrite
```

### Advanced Workflows

```bash
# Process large directory quietly and save results
node main.js -R media:archive --mime jpeg,heic --quiet -o archive-scan.json

# Compare different format processing
node main.js -f sample:test.jpg --json -o jpg-analysis.json
node main.js -f sample:test.heic --json -o heic-analysis.json

# Process with specific filter for analysis
node main.js -R /camera-roll --mime jpeg --json -o jpeg-only.json
```

## Output Formats

### Console Output (Default)

```
📊 PROCESSING RESULTS
============================================================

📈 Summary:
  ✅ Successfully processed: 10
  ❌ Failed: 2
  ⚠️  With warnings: 1
  ⏱️  Total time: 2.3s
  ⚡ Average time: 198ms

📁 File Statistics:
  📊 Total size: 25.4 MB
  📐 Average size: 2.1 MB
  📈 Largest: sample:large-photo.jpg (8.2 MB)
  📉 Smallest: sample:thumbnail.jpg (45.2 KB)

🎯 File Types:
  🖼️ image/jpeg: 8
  🖼️ image/png: 2
  🖼️ image/heic: 2
```

### JSON Output (--json)

```json
{
  "success": true,
  "filesProcessed": 12,
  "duration": 2284,
  "results": [
    {
      "filePath": "sample:image1.jpg",
      "success": true,
      "duration": 198,
      "metadata": { /* extracted metadata */ },
      "warnings": []
    }
  ],
  "summary": {
    "totalDiscovered": 12,
    "successfullyProcessed": 10,
    "failedFiles": 2,
    "filesWithWarnings": 1,
    "totalDuration": 2284,
    "averageDuration": 190,
    "mimeTypeBreakdown": {
      "image/jpeg": 8,
      "image/png": 2,
      "image/heic": 2
    },
    "sizeStats": {
      "totalSize": 26664960,
      "averageSize": 2222080,
      "largestFile": {
        "path": "sample:large-photo.jpg",
        "size": 8601600
      },
      "smallestFile": {
        "path": "sample:thumbnail.jpg", 
        "size": 46284
      }
    }
  }
}
```

### Quiet Mode (--quiet)

```bash
# Minimal output
Processed 12 files in 2284ms
⚠️  2 files failed

# JSON quiet mode (minimal JSON structure)
{
  "success": true,
  "filesProcessed": 12,
  "duration": 2284,
  "summary": { /* summary only */ }
}
```

## File Output Handling

### Automatic Numbering
```bash
# First run creates results.json
node main.js -R sample: -o results

# Second run creates results-1.json  
node main.js -R sample: -o results

# Third run creates results-2.json
node main.js -R sample: -o results
```

### Overwrite Mode
```bash
# Always overwrite existing file
node main.js -R sample: -o results --overwrite
```

### Custom Paths
```bash
# Exact file path (no auto-numbering)
node main.js -R sample: -o /absolute/path/analysis.json

# With overwrite for exact paths
node main.js -R sample: -o /path/results.json --overwrite
```

## Error Handling

### File Processing Errors
- Individual file failures don't abort the entire operation
- Failed files are reported in results with error details
- Processing continues with remaining files

### Validation Errors
```bash
# Invalid MIME type
$ node main.js -R sample: --mime invalid-type
Error: No valid MIME types provided. Supported: image/jpeg, image/png, ...

# No input specified
$ node main.js
Error: No input sources specified. Use -D <directory>, -R <directory>, or -f <files...>

# Conflicting options
$ node main.js -D /photos -R /photos  
Error: Cannot specify both -D (directory) and -R (recursive) options.
```

### Path Resolution Errors
- Invalid paths are logged with sanitized output
- Inaccessible files are skipped with warnings
- External paths are processed but logged securely

## Integration with Core Systems

### FileSystem Service
- All file discovery uses the centralized FileSystem Service
- Batch operations for efficient processing
- Comprehensive file validation and metadata

### Error System
- Structured error codes throughout CLI operations
- Component-scoped logging with sanitized paths
- Detailed error context for debugging

### Logging System
- Component-specific loggers: `[CLI Handler]`, `[CLI Output]`
- Structured logging with operation context
- Debug information available when not in quiet mode

## Performance Considerations

### Batch Processing
- Files processed sequentially for memory management
- Progress indicators for large operations
- Efficient metadata extraction with caching

### Memory Usage
- Streaming operations for large directories
- Configurable concurrency limits in FileSystem Service
- Garbage collection friendly processing

### Large Directories
```bash
# Process large directories efficiently
node main.js -R /large-archive --quiet -o scan-results.json

# Filter early to reduce processing load
node main.js -R /mixed-media --mime jpeg,png --quiet
```

## Development and Testing

### Debug Mode
Set environment variables for additional logging:
```bash
DEBUG=true node main.js -R sample:
```

### Testing Commands
```bash
# Test with single file
node main.js -f sample:jpg_with_gps_iphone.JPG --json

# Test directory scanning
node main.js -D sample: --quiet

# Test recursive with output
node main.js -R sample: --json -o test-results
```

### Error Testing
```bash
# Test with non-existent path
node main.js -f /non/existent/file.jpg

# Test with invalid MIME type
node main.js -R sample: --mime invalid
```

## Migration from Legacy

### Before (Hardcoded)
```typescript
const testFiles = [
  'sample:jpg_with_gps_iphone.JPG',
  'sample:heic_sample1.HEIC',
  'sample:mov_sample.MOV'
];
```

### After (CLI)
```bash
# Equivalent command
node main.js -f sample:jpg_with_gps_iphone.JPG sample:heic_sample1.HEIC sample:mov_sample.MOV

# Or discover dynamically
node main.js -R sample:
```

## Supported MIME Types

The CLI supports filtering by these MIME types:

### Images
- `image/jpeg` - JPEG/JPG files
- `image/png` - PNG files  
- `image/gif` - GIF files
- `image/webp` - WebP files
- `image/heic` - HEIC files (Apple)
- `image/heif` - HEIF files

### Videos (Discovery Only)
- `video/mp4` - MP4 files
- `video/quicktime` - MOV files
- `video/x-msvideo` - AVI files

### Audio (Discovery Only)
- `audio/mpeg` - MP3 files
- `audio/wav` - WAV files
- `audio/flac` - FLAC files
- `audio/aac` - AAC files

*Note: Video and audio processing requires additional processors to be implemented.*

## Future Enhancements

### Planned Features
- **Watch Mode**: Real-time processing of new files
- **Configuration Files**: YAML/JSON configuration support
- **Parallel Processing**: Configurable parallel file processing
- **Progress Bars**: Visual progress indicators for large operations
- **Resume**: Resume interrupted operations
- **Dry Run**: Preview operations without processing

### Integration Possibilities
- **CI/CD Integration**: Batch processing in automated workflows
- **Web Interface**: REST API for remote CLI operations
- **Database Integration**: Direct database storage of results
- **Cloud Storage**: Support for cloud-based file processing

## Troubleshooting

### Common Issues

#### Permission Errors
```bash
# Ensure read permissions on directories
chmod -R 755 /path/to/media

# Check file accessibility
node main.js -f /path/file.jpg --quiet
```

#### Memory Issues
```bash
# Process smaller batches
node main.js -D /large-dir --mime jpeg --quiet

# Use filtering to reduce load
node main.js -R /photos --mime jpeg,png
```

#### Output File Issues
```bash
# Check write permissions
touch /path/output.json && rm /path/output.json

# Use absolute paths for troubleshooting
node main.js -R sample: -o "$(pwd)/results.json"
```

### Getting Help

```bash
# Show all available options
node main.js --help

# Version information
node main.js --version
```

The CLI provides a professional, flexible interface for media processing that leverages all the core systems while maintaining security and performance standards.