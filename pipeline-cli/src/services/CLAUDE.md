# Services Module - Media Processing Pipeline

## Purpose
Service layer providing business logic and external integrations for the media processing system. Handles filesystem operations, geolocation, landmark lookup, and database interactions with proper abstraction and error handling.

## Architecture Overview

### Service Categories
- **Filesystem Services** - File operations, validation, metadata handling
- **Geolocation Services** - Reverse geocoding and municipal boundary lookup
- **Landmark Services** - POI identification from multiple providers (GNIS, Recreation.gov, NPS)
- **Database Services** - Typed database operations for media storage and retrieval
- **Utility Services** - Color extraction, processing orchestration

### Factory Pattern
Services use factory pattern for dependency injection and configuration:
```typescript
// Service creation with environment-based configuration
const geolocationService = createGeolocationService();
const landmarkService = createLandmarkService({
  providers: ['GNIS', 'NPS', 'RECREATION_GOV'],
  maxRadius: 50000
});
```

## Filesystem Services (`filesystem/`)

### Core Components
- **`index.ts`** - FileSystemService with comprehensive file operations
- **`metadata.ts`** - Sidecar metadata detection and parsing (JSON, XMP)
- **`scanner.ts`** - Directory scanning with MIME filtering and validation
- **`validator.ts`** - File existence, permissions, and integrity checks
- **`demo.ts`** - Demo file resolution for testing and examples

### Key Features
- **Path resolution** - Handles `sample:`, `media:`, `relative:` prefix patterns
- **Sidecar detection** - Automatic discovery of .json, .xmp metadata files
- **Security** - Path sanitization, never expose absolute paths in logs
- **Validation** - File existence, permissions, size, and format checks

### Usage Patterns
```typescript
// File operations with path resolution
const fs = new FileSystemService();
const file = await fs.getFileInfo('sample:image.jpg');
const metadata = await fs.detectSidecarMetadata(file.path);

// Directory scanning with filtering
const scanner = new DirectoryScanner();
const files = await scanner.scan('/photos', {
  recursive: true,
  mimeTypes: ['image/jpeg', 'image/png']
});
```

## Geolocation Services (`geolocation/`)

### Components
- **`index.ts`** - GeolocationService for reverse geocoding
- **`factory.ts`** - Service factory with configuration management

### Capabilities
- **Reverse geocoding** - Convert GPS coordinates to human-readable locations
- **Municipal boundaries** - City, state, country identification
- **Caching** - Avoid repeated API calls for same coordinates
- **Error handling** - Graceful degradation when geolocation services fail

### Configuration
```typescript
interface GeolocationConfig {
  enabled: boolean;           // Enable/disable geolocation
  provider: string;          // Service provider selection
  timeout: number;           // Request timeout in milliseconds
  cacheExpiry: number;       // Cache TTL in milliseconds
}
```

## Landmark Services (`landmarks/`)

### Provider Ecosystem
- **`providers/gnis.ts`** - USGS Geographic Names Information System
- **`providers/recreation.ts`** - Recreation.gov facilities and campgrounds
- **`providers/national-parks.ts`** - National Parks Service units and features
- **`providers/recreation-db.ts`** - Local database queries for Recreation.gov data

### Service Architecture
```typescript
interface LandmarkProvider {
  name: string;
  search(coordinates: GPSCoordinates, radius: number): Promise<Landmark[]>;
  isEnabled(): boolean;
  getTimeout(): number;
}
```

### Multi-Provider Aggregation
```typescript
// Landmark service coordinates multiple providers
const landmarks = await landmarkService.findNearby({
  latitude: 44.3776,
  longitude: -68.2039,
  radiusMeters: 50000
});
// → Combines results from GNIS, Recreation.gov, and NPS
```

### Provider Configuration
Environment variables control provider behavior:
- **`GNIS_PROVIDER_ENABLED`** - USGS geographic features (default: true)
- **`RECREATION_GOV_PROVIDER_ENABLED`** - Recreation facilities (default: false)
- **`NPS_PROVIDER_ENABLED`** - National Parks data (default: true)
- **`LANDMARK_MAX_RADIUS`** - Search radius in meters (default: 50000)

## Database Services (`database/`)

### Service Components
- **`MediaFileService.ts`** - Media file CRUD with collection support
- **`LocationService.ts`** - GPS and geolocation data management
- **`LandmarkService.ts`** - POI queries with spatial indexing
- **`EquipmentService.ts`** - Camera and lens information
- **`SoftwareService.ts`** - Processing tool versions and metadata

### Typed Database Operations
```typescript
// Media file storage with relationships
const mediaFile = await MediaFileService.create({
  path: 'sample:image.jpg',
  hash: 'sha256:abc123...',
  collection: 'archive',
  locationId: locationRecord.id,
  equipmentId: equipmentRecord.id
});

// Processing history tracking
await MediaFileService.addProcessingHistory(mediaFile.id, {
  success: true,
  processor: 'ImageProcessor',
  providersEnabled: ['GNIS', 'NPS'],
  extractedAt: new Date(),
  processingTimeMs: 1250
});
```

### Query Optimization
- **Spatial indexing** - Efficient landmark queries by GPS radius
- **Hash lookups** - Fast deduplication using SHA-256 hashes
- **Batch operations** - Optimized bulk inserts for large collections
- **Relationship queries** - Efficient JOINs for metadata enrichment

## Color Extraction Service

### Purpose
Extract dominant colors from images for visual categorization and search.

### Implementation
```typescript
// Color extraction using Vibrant.js
const colors = await extractColors(imagePath);
// → { dominant: '#3A5F8B', mean: '#7F8C9A', salient: '#E8F1FF' }
```

### Integration
- **Post-processing** - Runs after image extraction
- **Database storage** - Colors stored with media file records
- **Performance** - Optional extraction (`--colors`/`--no-colors` flags)

## Error Handling Philosophy

### Service Resilience
```typescript
// Services implement graceful degradation
try {
  const landmarks = await landmarkService.findNearby(gps);
} catch (error) {
  // Log error but continue processing
  logger.warn('Landmark lookup failed', { error: error.message, gps });
  return { landmarks: [], enrichmentStatus: 'error' };
}
```

### Provider Fallback
```typescript
// Multiple providers with fallback chain
const providers = [gnisProvider, npsProvider, recreationProvider];
const results = await Promise.allSettled(
  providers.map(p => p.search(coordinates, radius))
);
// Combine successful results, log failures
```

## Performance Optimization

### Caching Strategy
- **Geolocation cache** - GPS coordinates to location mapping
- **Landmark cache** - POI results by coordinates and radius
- **Database connection pooling** - Efficient database resource usage
- **Provider timeouts** - Prevent hanging on slow external services

### Parallel Execution
```typescript
// Services coordinate parallel operations
await Promise.allSettled([
  geolocationService.reverseGeocode(gps),
  landmarkService.findNearby(gps),
  colorExtractionService.extract(imagePath)
]);
```

## Testing and Quality

### Service Testing Patterns
```typescript
// Services use dependency injection for testability
describe('LandmarkService', () => {
  let mockGnisProvider: jest.Mocked<GnisProvider>;
  let landmarkService: LandmarkService;
  
  beforeEach(() => {
    mockGnisProvider = createMockGnisProvider();
    landmarkService = new LandmarkService([mockGnisProvider]);
  });
});
```

### Mock Integration
- **API mocking** - Mock external service responses for testing
- **Database mocking** - Mock database connections for unit tests
- **Provider mocking** - Mock individual landmark providers
- **Cache mocking** - Test cache hit/miss scenarios

## Environment Configuration

### Service Configuration
```typescript
// Environment-driven service configuration
const config = {
  geolocation: {
    enabled: process.env.GEOLOCATION_ENABLED === 'true',
    timeout: parseInt(process.env.GEOLOCATION_TIMEOUT) || 5000
  },
  landmarks: {
    maxRadius: parseInt(process.env.LANDMARK_MAX_RADIUS) || 50000,
    providers: {
      gnis: process.env.GNIS_PROVIDER_ENABLED === 'true',
      recreation: process.env.RECREATION_GOV_PROVIDER_ENABLED === 'true',
      nps: process.env.NPS_PROVIDER_ENABLED === 'true'
    }
  }
};
```

## Code Quality Standards

### Service Requirements
- **Interface compliance** - All services implement defined interfaces
- **Error propagation** - Proper error handling and logging
- **Resource cleanup** - Proper disposal of connections and resources
- **Type safety** - No `any` types, use semantic-any.ts when needed

### Quality Gates
```bash
npm run lint:check    # ESLint compliance
npm run typecheck     # TypeScript compilation
npm run build         # Full build pipeline
npm test              # Service unit tests and integration tests
```

### Performance Requirements
- **Response times** - Geolocation under 3 seconds, landmarks under 5 seconds
- **Error handling** - Services must handle provider failures gracefully
- **Resource usage** - Efficient memory and connection management
- **Caching effectiveness** - Cache hit rate above 70% for repeated queries