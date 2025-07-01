# CompreFace Integration Plan

## Overview
Integrate CompreFace face recognition service to enable people search functionality in the media processing pipeline. This will add face detection, identification, and people-based search capabilities to the existing system.

## Context from Current Architecture

### Existing Database Schema ✅
The database already includes comprehensive face recognition tables:
- **`detected_objects`** - Object type registry (including faces)
- **`media_object_detections`** - Face detection results with bounding boxes and confidence
- **`face_identities`** - Person profiles with face embeddings
- **`face_identity_matches`** - Links detected faces to known people

### Infrastructure Foundation ✅
- Docker container orchestration already supports additional services
- Database migration system ready for face recognition data
- Processing pipeline architecture supports new providers
- CLI and service layer patterns established

## Implementation Requirements

### 1. CompreFace Service Integration

#### Docker Service Setup
```yaml
# Add to docker-compose.yaml
services:
  compreface-postgres:
    image: postgres:11.5
    environment:
      POSTGRES_USER: postgres
      POSTGRES_PASSWORD: postgres
      POSTGRES_DB: compreface
    volumes:
      - compreface_postgres_data:/var/lib/postgresql/data

  compreface-admin:
    image: exadel/compreface:1.2.0
    environment:
      POSTGRES_USER: postgres
      POSTGRES_PASSWORD: postgres
      POSTGRES_URL: jdbc:postgresql://compreface-postgres:5432/compreface
    ports:
      - "8000:8000"
    depends_on:
      - compreface-postgres

  compreface-api:
    image: exadel/compreface:1.2.0
    environment:
      POSTGRES_USER: postgres
      POSTGRES_PASSWORD: postgres
      POSTGRES_URL: jdbc:postgresql://compreface-postgres:5432/compreface
    ports:
      - "8001:8000"
    depends_on:
      - compreface-postgres
```

#### Service Architecture
```
src/services/face-recognition/
├── index.ts              # CompreFace service facade
├── compreface-client.ts   # HTTP client for CompreFace API
├── face-processor.ts     # Face detection and recognition logic
├── identity-manager.ts   # Person identity management
└── types.ts              # Face recognition types
```

### 2. Processing Pipeline Integration

#### New Face Recognition Processor
```typescript
// src/processors/face.processor.ts
export class FaceProcessor extends BaseProcessor {
  async process(file: MediaFile): Promise<FaceProcessingResult> {
    // 1. Detect faces in image
    const detections = await this.faceService.detectFaces(file.path);
    
    // 2. Extract face embeddings
    const embeddings = await this.faceService.extractEmbeddings(detections);
    
    // 3. Match against known identities
    const matches = await this.faceService.matchIdentities(embeddings);
    
    // 4. Store results in database
    await this.storeDetections(file.id, detections, matches);
    
    return { faces: detections, identities: matches };
  }
}
```

#### Pipeline Router Integration
```typescript
// Update src/pipeline/router.ts
export class ProcessorRouter {
  async routeFile(file: MediaFile): Promise<ProcessingResult> {
    // ... existing routing logic
    
    // Add face processing for images
    if (this.isImage(file.mimeType) && this.faceProcessingEnabled) {
      const faceResult = await this.faceProcessor.process(file);
      result.faces = faceResult;
    }
    
    return result;
  }
}
```

### 3. Database Service Layer

#### Face Recognition Services
```typescript
// src/services/database/FaceDetectionService.ts
export class FaceDetectionService {
  async storeFaceDetection(detection: FaceDetection): Promise<number> {
    // Store detection in media_object_detections table
  }
  
  async findFacesByPerson(personName: string): Promise<FaceDetection[]> {
    // Query faces by person identity
  }
  
  async findSimilarFaces(embedding: Buffer): Promise<FaceMatch[]> {
    // Find faces similar to given embedding
  }
}

// src/services/database/FaceIdentityService.ts
export class FaceIdentityService {
  async createIdentity(name: string, embedding: Buffer): Promise<number> {
    // Create new person identity
  }
  
  async linkFaceToIdentity(detectionId: number, identityId: number): Promise<void> {
    // Create face identity match
  }
  
  async getAllIdentities(): Promise<FaceIdentity[]> {
    // List all known people
  }
}
```

### 4. CLI Integration

#### Face Processing Options
```typescript
// Update src/cli/types.ts
export interface CLIOptions {
  // ... existing options
  
  // Face recognition options
  'face-detection'?: boolean;
  'face-recognition'?: boolean;
  'create-identity'?: string;  // Person name for new identity
  'confidence-threshold'?: number;  // Minimum confidence for matches
}
```

#### Face Processing Commands
```bash
# Enable face detection during processing
media-processor -f photo.jpg --face-detection --output-db

# Enable face recognition (requires identities)
media-processor -R /photos --face-recognition --output-db

# Create new person identity from photo
media-processor -f person-photo.jpg --create-identity "John Doe" --output-db

# Set confidence threshold for matches
media-processor -R /photos --face-recognition --confidence-threshold 0.8
```

### 5. Search Integration

#### Face-Based Search Parameters
Extend the planned search feature with face recognition capabilities:

```bash
# Find photos containing a specific person
media-processor search --person "John Doe"

# Find photos with any faces detected
media-processor search --has-faces

# Find photos with unidentified faces
media-processor search --has-faces --person NONE

# Find photos with multiple people
media-processor search --face-count ">1"

# Combine with existing searches
media-processor search --location "Acadia" --person "John Doe" --date "2023-07-15"
```

### 6. Identity Management Interface

#### CLI Identity Commands
```bash
# List all known identities
media-processor faces list

# Show photos for a person
media-processor faces show "John Doe"

# Merge duplicate identities
media-processor faces merge "John" "John Doe"

# Export face data
media-processor faces export --json
```

## Implementation Phases

### Phase 1: Core Infrastructure (Weeks 1-2)
1. **Docker Service Setup**
   - Add CompreFace containers to docker-compose.yaml
   - Configure PostgreSQL for CompreFace
   - Test service connectivity

2. **Database Service Layer**
   - Implement FaceDetectionService and FaceIdentityService
   - Create database service tests
   - Validate schema compatibility

3. **CompreFace Client**
   - Build HTTP client for CompreFace API
   - Implement face detection and recognition calls
   - Add error handling and retry logic

### Phase 2: Processing Integration (Weeks 3-4)
1. **Face Processor Implementation**
   - Create FaceProcessor class following existing processor patterns
   - Integrate with pipeline router
   - Add face processing to CLI options

2. **Basic Face Detection**
   - Implement face detection for single files
   - Store detection results in database
   - Test with sample photos

3. **CLI Integration**
   - Add face detection flags to CLI
   - Update output handlers for face data
   - Create basic face processing tests

### Phase 3: Identity Management (Weeks 5-6)
1. **Identity Creation**
   - Implement person identity creation from photos
   - Build face embedding storage
   - Add identity management CLI commands

2. **Face Recognition**
   - Implement face matching against known identities
   - Add confidence thresholds and matching logic
   - Create identity linking functionality

3. **Batch Processing**
   - Enable face recognition for directory processing
   - Optimize performance for large photo collections
   - Add progress reporting for face processing

### Phase 4: Search Integration (Weeks 7-8)
1. **Extend Search Command**
   - Add person-based search parameters to planned search feature
   - Implement face count and identity queries
   - Test search performance with face data

2. **Advanced Features**
   - Identity merging and management
   - Face clustering for unknown faces
   - Confidence adjustment and manual verification

## Configuration & Environment

### Environment Variables
```bash
# CompreFace service configuration
COMPREFACE_ADMIN_URL=http://localhost:8000
COMPREFACE_API_URL=http://localhost:8001
COMPREFACE_API_KEY=your_api_key

# Face processing settings
FACE_DETECTION_ENABLED=true
FACE_RECOGNITION_ENABLED=true
FACE_CONFIDENCE_THRESHOLD=0.7
FACE_DETECTION_MODEL=retinaface

# Performance settings
FACE_PROCESSING_CONCURRENCY=4
FACE_EMBEDDING_BATCH_SIZE=10
```

### Performance Considerations
- **Image preprocessing**: Resize images for optimal CompreFace performance
- **Batch processing**: Process multiple faces in single API calls
- **Caching**: Cache face embeddings to avoid reprocessing
- **Async processing**: Use worker queues for large collections

## Testing Strategy

### Unit Tests
```typescript
// Test face detection API client
test('CompreFace client detects faces', async () => {
  const client = new ComprefaceClient(config);
  const detections = await client.detectFaces(testImagePath);
  expect(detections).toHaveLength(1);
  expect(detections[0].confidence).toBeGreaterThan(0.7);
});

// Test face processor
test('FaceProcessor stores detections in database', async () => {
  const processor = new FaceProcessor();
  const result = await processor.process(testMediaFile);
  expect(result.faces).toBeDefined();
  
  const stored = await FaceDetectionService.findByFileId(testMediaFile.id);
  expect(stored).toHaveLength(result.faces.length);
});
```

### Integration Tests
```typescript
// Test end-to-end face processing
test('CLI processes photos with face detection', async () => {
  const result = await runCLI(['--face-detection', testPhotoPath]);
  expect(result.faces?.detections).toBeDefined();
  
  // Verify database storage
  const mediaFile = await MediaFileService.findByPath(testPhotoPath);
  const detections = await FaceDetectionService.findByFileId(mediaFile.id);
  expect(detections.length).toBeGreaterThan(0);
});
```

### Performance Tests
```typescript
// Test face processing performance
test('Face processing handles large batches efficiently', async () => {
  const startTime = Date.now();
  const results = await processor.processBatch(testPhotos);
  const duration = Date.now() - startTime;
  
  expect(duration).toBeLessThan(30000); // 30 seconds for 100 photos
  expect(results.every(r => r.success)).toBe(true);
});
```

## Success Criteria

1. ✅ CompreFace service integrated and running via Docker
2. ✅ Face detection working for individual photos and batch processing
3. ✅ Person identity creation and management via CLI
4. ✅ Face recognition with configurable confidence thresholds
5. ✅ Database storage of face detections and identity matches
6. ✅ Search integration supporting person-based queries
7. ✅ Performance acceptable for large photo collections (>10k photos)
8. ✅ Comprehensive test coverage for face recognition pipeline

## Future Enhancements

1. **Advanced Identity Management**
   - Face clustering for unknown faces
   - Semi-automatic identity suggestions
   - Identity merging and duplicate detection

2. **Performance Optimizations**
   - GPU acceleration for face processing
   - Distributed processing across multiple CompreFace instances
   - Incremental face processing for new photos only

3. **User Interface Enhancements**
   - Web interface for identity management
   - Face tagging and verification workflows
   - Visual face matching confidence indicators

4. **Privacy & Security**
   - Face data encryption at rest
   - Privacy zone integration (anonymize faces in certain locations)
   - GDPR compliance for face data storage