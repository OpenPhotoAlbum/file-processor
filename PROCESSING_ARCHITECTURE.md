# Media Processing Pipeline Architecture

## Overview
```
                    ┌─────────────────┐
                    │   Entry Point   │
                    │  (Single Queue) │
                    └────────┬────────┘
                             │
                    ┌────────▼────────┐
                    │ Common Pre-     │
                    │ Processing      │
                    │ • File validation│
                    │ • Hash generation│
                    │ • MIME detection │
                    └────────┬────────┘
                             │
                    ┌────────▼────────┐
                    │   MIME Router   │
                    └───┬───┬───┬────┘
                        │   │   │
           ┌────────────┼───┼───┼────────────┐
           │            │   │   │            │
     ┌─────▼─────┐ ┌────▼───▼────┐ ┌────────▼────────┐
     │  IMAGE/*  │ │   VIDEO/*   │ │   AUDIO/*       │
     │ Processor │ │  Processor  │ │   Processor     │
     └─────┬─────┘ └──────┬──────┘ └────────┬────────┘
           │              │                  │
           └──────────────┼──────────────────┘
                          │
                 ┌────────▼────────┐
                 │ Common Post-    │
                 │ Processing      │
                 │ • DB storage    │
                 │ • Notifications │
                 └─────────────────┘
```

## Core Components

### 1. Entry Point (`/src/pipeline/entry.ts`)
```typescript
interface MediaFile {
  path: string;
  hash: string;
  size: number;
  mimeType: string;
  googleMetadata?: GoogleMetadata;
}

async function processFile(filePath: string): Promise<ProcessingResult> {
  // Common pre-processing
  const file = await preProcess(filePath);
  
  // Route to specific processor
  const processor = getProcessor(file.mimeType);
  const metadata = await processor.extract(file);
  
  // Common post-processing
  return await postProcess(file, metadata);
}
```

### 2. Pre-Processing (Shared)
- File existence validation
- Calculate MD5/SHA256 hash
- Detect MIME type
- Check for paired Google metadata JSON
- Check if already processed (deduplication)

### 3. MIME Router
```typescript
const processorMap = {
  'image/jpeg': ImageProcessor,
  'image/png': ImageProcessor,
  'image/heic': ImageProcessor,
  'image/gif': ImageProcessor,
  'video/mp4': VideoProcessor,
  'video/quicktime': VideoProcessor,
  'video/x-msvideo': VideoProcessor,
  'text/plain': TextProcessor,        // Future
  'application/fits': FitsProcessor,  // Future
};
```

### 4. Type-Specific Processors

#### Image Processor (`/src/processors/image.ts`)
```typescript
class ImageProcessor implements MediaProcessor {
  async extract(file: MediaFile): Promise<ImageMetadata> {
    const exif = await extractExif(file.path);
    const dimensions = await getDimensions(file.path);
    const gps = parseGpsData(exif);
    
    return {
      type: 'image',
      exif,
      dimensions,
      gps,
      thumbnail: await generateThumbnail(file.path),
    };
  }
}
```

#### Video Processor (`/src/processors/video.ts`)
```typescript
class VideoProcessor implements MediaProcessor {
  async extract(file: MediaFile): Promise<VideoMetadata> {
    const ffprobe = await runFFprobe(file.path);
    
    return {
      type: 'video',
      duration: ffprobe.duration,
      codec: ffprobe.codec,
      resolution: ffprobe.resolution,
      frameRate: ffprobe.fps,
      thumbnail: await extractFrame(file.path),
    };
  }
}
```

### 5. Post-Processing (Shared)
- Store in database
- Update search indices
- Generate derived files (thumbnails, previews)
- Send completion notifications
- Clean up temporary files

## Scalability Features

### 1. Queue-Based Processing
```typescript
// Use BullMQ or similar for job queuing
const mediaQueue = new Queue('media-processing');

mediaQueue.process(async (job) => {
  const { filePath } = job.data;
  return await processFile(filePath);
});
```

### 2. Parallel Processing
```typescript
// Process different mime types in parallel workers
const imageWorker = new Worker('image-processor', imageProcessor);
const videoWorker = new Worker('video-processor', videoProcessor);
```

### 3. Plugin Architecture
```typescript
// Easy to add new processors
export interface MediaProcessor {
  supportedMimes: string[];
  extract(file: MediaFile): Promise<Metadata>;
  validate?(file: MediaFile): Promise<boolean>;
}

// Register new processor
processorRegistry.register(new AstronomyFitsProcessor());
```

## Database Schema (Shared)
```sql
-- Common tables used by all processors
CREATE TABLE media_files (
  id BIGINT PRIMARY KEY,
  path VARCHAR(1024),
  hash VARCHAR(64),
  mime_type VARCHAR(128),
  size BIGINT,
  status ENUM('pending', 'processing', 'completed', 'failed'),
  processor_type VARCHAR(64),
  created_at TIMESTAMP
);

-- Type-specific metadata stored as JSON
CREATE TABLE media_metadata (
  file_id BIGINT,
  metadata_type VARCHAR(64), -- 'exif', 'video', 'audio', etc
  metadata JSON,
  FOREIGN KEY (file_id) REFERENCES media_files(id)
);
```

## Benefits of This Architecture

1. **DRY**: Common operations (hashing, DB storage) happen once
2. **Scalable**: Easy to add workers, processors, or scale horizontally
3. **Maintainable**: Clear separation of concerns
4. **Extensible**: New media types just need a new processor
5. **Testable**: Each component can be tested independently

## Future Extensions
- **Text files**: OCR, language detection
- **FITS files**: Astronomy metadata extraction
- **Audio files**: Waveform generation, ID3 tags
- **Documents**: PDF text extraction
- **3D models**: Mesh analysis, preview generation