# Getting Started

This guide will help you set up and start using the Media Processing Pipeline.

## Prerequisites

- **Node.js 18+** - For TypeScript compilation and runtime
- **ExifTool** - For EXIF metadata extraction
- **Git** - For version control

## Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd media-processing-pipeline
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Set up environment configuration**
   ```bash
   cp .env.example .env
   ```

4. **Edit `.env` with your settings**
   ```bash
   # Required: Configure your media paths
   MEDIA_BASE_PATH=/path/to/your/media/files
   SAMPLE_BASE_PATH=/path/to/your/project/scratch/sample_media
   
   # Optional: Customize logging
   LOG_LEVEL=DEBUG
   LOG_COLORIZE=true
   LOG_OUTPUTS=console,file
   ```

## Project Structure

```
├── docs/                 # Documentation (you are here!)
├── src/                  # TypeScript source code
│   ├── processors/       # Media-specific processors
│   ├── utils/           # Shared utilities
│   ├── types/           # Type definitions
│   └── main.ts          # Entry point
├── scratch/             # Test files and experiments (gitignored)
│   ├── sample_media/    # Sample files for testing
│   └── *.js             # Test scripts
├── logs/                # Log files (gitignored)
└── dist/                # Compiled JavaScript (gitignored)
```

## Build and Test

1. **Compile TypeScript**
   ```bash
   npm run build
   ```

2. **Run basic tests**
   ```bash
   # Test the logging system
   node dist/test-logger.js
   
   # Test sample image access
   node scratch/quick-image-test.js
   ```

## First Steps

### 1. Test the Logging System

```bash
node dist/test-logger.js
```

This will demonstrate:
- Colored console output
- File logging to `logs/media-processing.log`
- Different log levels and scoped contexts

### 2. Test Path Resolution

```bash
node -e "
import { toAbsolutePath, PathPrefix } from './dist/utils/paths.js';
console.log('Sample path:', toAbsolutePath('sample:test.jpg'));
console.log('Available prefixes:', Object.values(PathPrefix));
"
```

### 3. Validate Sample Images

```bash
node scratch/test-with-real-sizes.js
```

This will test image validation on real sample files.

## Development Workflow

### Adding New Components

1. **Create scoped logger**
   ```typescript
   import { Logger } from '../utils/logging/index.js';
   
   export class MyProcessor {
     private logger = new Logger('My Processor');
     
     async process(file: MediaFile) {
       this.logger.info('Starting processing', { fileId: file.path });
       // ... your logic
     }
   }
   ```

2. **Use portable paths**
   ```typescript
   import { toAbsolutePath, sanitizePathForLogging } from '../utils/paths.js';
   
   const absolutePath = toAbsolutePath(file.path);
   this.logger.info('Processing file', { 
     file: sanitizePathForLogging(absolutePath) 
   });
   ```

3. **Build and test**
   ```bash
   npm run build
   node dist/your-test.js
   ```

### Working with Sample Data

- Place test files in `scratch/sample_media/`
- Reference them as `sample:filename.jpg`
- Create test scripts in `scratch/` directory

### Debugging

1. **Enable debug logging**
   ```bash
   # In .env
   LOG_LEVEL=DEBUG
   ```

2. **Check log files**
   ```bash
   tail -f logs/media-processing.log
   ```

3. **Use structured logging**
   ```typescript
   logger.debug('Debug info', { 
     variable: value,
     context: 'additional info'
   });
   ```

## Common Tasks

### Process a Single Image

```typescript
import { ImageProcessor } from './processors/image.processor.js';
import { toAbsolutePath } from './utils/paths.js';

const processor = new ImageProcessor();
const mediaFile = {
  path: 'sample:jpg_with_gps_iphone.JPG',
  absolutePath: toAbsolutePath('sample:jpg_with_gps_iphone.JPG'),
  hash: 'computed-hash',
  mimeType: 'image/jpeg',
  size: 1740252
};

// Validate first
const isValid = await processor.validate(mediaFile);
if (isValid) {
  // Extract metadata
  const metadata = await processor.extract(mediaFile);
  console.log('Extracted metadata:', metadata);
}
```

### Add New Path Prefix

1. **Update PathPrefix enum**
   ```typescript
   export enum PathPrefix {
     SAMPLE = 'sample:',
     MEDIA = 'media:',
     ARCHIVE = 'archive:',  // New prefix
     RELATIVE = 'relative:'
   }
   ```

2. **Update configuration**
   ```typescript
   const PATH_PREFIX_CONFIG = {
     // ... existing configs
     [PathPrefix.ARCHIVE]: {
       envVar: 'ARCHIVE_BASE_PATH',
       defaultPath: '/default/archive/path',
       description: 'Archived media files',
       prefixLength: PathPrefix.ARCHIVE.length
     }
   };
   ```

3. **Update environment**
   ```bash
   # In .env
   ARCHIVE_BASE_PATH=/path/to/archives
   ```

## Troubleshooting

### Build Errors

```bash
# Clean and rebuild
rm -rf dist/
npm run build
```

### Missing Environment Variables

```bash
# Check your .env file has all required variables
# Compare with .env.example
diff .env .env.example
```

### Path Resolution Issues

```bash
# Test path resolution
node -e "
import { config } from 'dotenv';
config();
console.log('SAMPLE_BASE_PATH:', process.env.SAMPLE_BASE_PATH);
console.log('MEDIA_BASE_PATH:', process.env.MEDIA_BASE_PATH);
"
```

### Log Files Not Created

```bash
# Ensure logs directory exists
mkdir -p logs
# Check permissions
ls -la logs/
```

## Next Steps

- Read the [Path System Documentation](./path-system.md)
- Explore the [Logging System Documentation](./logging-system.md)  
- Check out sample files in `scratch/sample_media/`
- Review test scripts in `scratch/` directory

## Getting Help

- Check the documentation in `/docs/`
- Look at examples in `/scratch/`
- Review inline code documentation
- Create issues for bugs or questions