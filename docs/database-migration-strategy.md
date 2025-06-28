# Database Migration Strategy

## Overview

This document outlines the complete strategy for migrating from JSON sidecar metadata storage to a hybrid JSON + MySQL database approach while preserving all existing data and maintaining system reliability.

## Current State Analysis

### Existing Assets
- **24,243+ JSON sidecar files** with comprehensive metadata
- **Robust metadata extraction pipeline** producing consistent JSON output
- **Geographic database infrastructure** already operational (650K+ landmarks, facilities)
- **Color extraction system** integrated and producing 3-color analysis
- **Processing history tracking** with provider information

### Migration Challenges
- **Zero downtime requirement** - System must remain operational during migration
- **Data preservation** - All existing JSON metadata must be preserved
- **Consistency validation** - Database and JSON must stay synchronized
- **Performance impact** - Migration should not slow down daily operations
- **Rollback capability** - Must be able to revert if issues arise

## Migration Architecture

### Dual-Write Pattern
The migration will implement a dual-write pattern where all new processing writes to both JSON and database:

```
New Media File → Processor → {
  1. JSON Sidecar (existing)
  2. Database Insert (new)
  3. Validation Check
}
```

### Phase-Based Approach

## Phase 1: Database Infrastructure (Week 1-2)

### 1.1 Database Setup
```sql
-- Create the complete schema from database-schema-design.md
-- All 14 tables with proper indexes and constraints

-- Core tables (immediate need)
CREATE TABLE media_files (...);
CREATE TABLE media_locations (...);
CREATE TABLE landmarks (...);
CREATE TABLE media_landmarks (...);
CREATE TABLE equipment (...);
CREATE TABLE imaging_trains (...);
CREATE TABLE software (...);
CREATE TABLE media_software (...);
CREATE TABLE processing_runs (...);
CREATE TABLE processing_field_updates (...);

-- Future enhancement tables (prepared but not used yet)
CREATE TABLE detected_objects (...);
CREATE TABLE media_object_detections (...);
CREATE TABLE face_identities (...);
CREATE TABLE face_identity_matches (...);
```

### 1.2 Seed Reference Data
```sql
-- Basic equipment entries for migration
INSERT INTO equipment (equipment_type, make, model) VALUES
  ('camera', 'Apple', 'iPhone 13 Pro'),
  ('camera', 'Canon', 'Generic DSLR'),
  ('camera', 'Unknown', 'Unknown Camera');

-- Default imaging trains
INSERT INTO imaging_trains (name, primary_camera_id) VALUES
  ('iPhone 13 Pro', 1),
  ('Generic DSLR', 2),
  ('Unknown Camera', 3);

-- Basic software entries
INSERT INTO software (name, software_type, version) VALUES
  ('iPhone Camera', 'capture', 'iOS 15+'),
  ('ImageProcessor', 'processing', '1.0.0'),
  ('VideoProcessor', 'processing', '1.0.0');
```

### 1.3 Migration Scripts
Create database management utilities:

```typescript
// src/database/migrations/001-initial-schema.sql
// src/database/seeders/001-reference-data.sql
// src/database/connection.ts
// src/database/models/MediaFile.ts (basic ORM models)
// src/scripts/migrate-json-to-database.ts
// src/scripts/validate-database-consistency.ts
```

## Phase 2: JSON Analysis & Batch Migration (Week 3-4)

### 2.1 JSON Inventory Script
Analyze existing JSON files to prepare migration:

```typescript
// Scan all JSON sidecars and build migration plan
interface MigrationAnalysis {
  totalFiles: number;
  byMimeType: Record<string, number>;
  byCollection: Record<string, number>;
  processingVersions: Record<string, number>;
  uniqueEquipment: string[];
  uniqueSoftware: string[];
  colorAnalysisPresent: number;
  gpsDataPresent: number;
  landmarkDataPresent: number;
  errors: string[];
}
```

### 2.2 Equipment & Software Normalization
Before migrating media files, normalize all equipment and software entries:

```typescript
// Extract unique combinations from JSON files
// Create normalized equipment and imaging_train records
// Create software records for all processing tools used
```

### 2.3 Batch Migration Tool
Process JSON files in batches to populate database:

```typescript
// src/scripts/migrate-json-batch.ts
interface BatchMigrationOptions {
  batchSize: number;        // Process N files at once
  collectionFilter?: string; // Migrate specific collection first
  dryRun: boolean;          // Validate without inserting
  skipExisting: boolean;    // Resume interrupted migration
  validateAfter: boolean;   // Check database vs JSON consistency
}
```

### 2.4 Migration Verification
After each batch, verify data consistency:

```sql
-- Sample verification queries
SELECT COUNT(*) FROM media_files;
SELECT COUNT(*) FROM media_locations WHERE latitude IS NOT NULL;
SELECT COUNT(*) FROM media_landmarks;
SELECT dominant_color_hex, COUNT(*) FROM media_files 
  WHERE dominant_color_hex IS NOT NULL GROUP BY dominant_color_hex LIMIT 10;
```

## Phase 3: Dual-Write Implementation (Week 5-6)

### 3.1 Database Service Layer
Create database abstraction matching your existing patterns:

```typescript
// src/services/database/MediaDatabaseService.ts
export class MediaDatabaseService {
  async insertMediaFile(metadata: ProcessingResult): Promise<number>;
  async updateMediaFile(fileId: number, metadata: ProcessingResult): Promise<void>;
  async findMediaFile(filePath: string): Promise<MediaFileRecord | null>;
  async insertProcessingRun(fileId: number, processing: ProcessingEvent): Promise<void>;
  // ... other operations
}
```

### 3.2 Enhanced Post-Processor
Modify the post-processor to write to both destinations:

```typescript
// src/pipeline/post-processor.ts (enhanced)
export class PostProcessor {
  private database = new MediaDatabaseService();
  
  async process(result: ProcessingResult): Promise<void> {
    // 1. Write JSON sidecar (existing)
    await this.writeJSONSidecar(result);
    
    // 2. Write to database (new)
    try {
      await this.database.insertMediaFile(result);
      this.logger.info('Successfully wrote to database', {filename: result.file.path});
    } catch (error) {
      this.logger.error('Database write failed - JSON still saved', {error, filename: result.file.path});
      // Don't fail the entire operation - JSON is still saved
    }
    
    // 3. Validate consistency (optional)
    if (process.env.VALIDATE_DATABASE_WRITES === 'true') {
      await this.validateConsistency(result);
    }
  }
}
```

### 3.3 Consistency Validation
Add validation to catch sync issues early:

```typescript
async validateConsistency(result: ProcessingResult): Promise<boolean> {
  const dbRecord = await this.database.findMediaFile(result.file.path);
  const jsonData = await this.readJSONSidecar(result.file.path);
  
  // Compare key fields
  const issues = [];
  if (dbRecord.dominantColor !== jsonData.media.dominantColor) {
    issues.push('Dominant color mismatch');
  }
  // ... other validations
  
  if (issues.length > 0) {
    this.logger.warn('Database/JSON consistency issues found', {issues, filename: result.file.path});
    return false;
  }
  return true;
}
```

## Phase 4: Query Migration & Testing (Week 7-8)

### 4.1 Database Query API
Create query interface that mirrors your JSON operations:

```typescript
// src/services/database/QueryService.ts
export class QueryService {
  // Temporal queries (your primary use case)
  async findByDateRange(startDate: Date, endDate: Date): Promise<MediaFileRecord[]>;
  async findByCollection(collection: string): Promise<MediaFileRecord[]>;
  
  // Color-based queries
  async findByDominantColor(colorPattern: string): Promise<MediaFileRecord[]>;
  async findByColorPalette(dominant: string, mean: string, salient?: string): Promise<MediaFileRecord[]>;
  
  // Geographic queries
  async findNearLocation(lat: number, lon: number, radiusMeters: number): Promise<MediaFileRecord[]>;
  async findByLandmark(landmarkName: string): Promise<MediaFileRecord[]>;
  
  // Equipment queries
  async findByImagingTrain(trainName: string): Promise<MediaFileRecord[]>;
  async findBySettings(iso?: number, aperture?: string): Promise<MediaFileRecord[]>;
}
```

### 4.2 Performance Testing
Compare database vs JSON performance:

```typescript
// src/scripts/performance-comparison.ts
interface PerformanceTest {
  name: string;
  jsonQuery: () => Promise<any[]>;
  databaseQuery: () => Promise<any[]>;
  expectedCount: number;
}

const tests: PerformanceTest[] = [
  {
    name: "Photos from July 2023",
    jsonQuery: () => findJSONByDateRange('2023-07-01', '2023-07-31'),
    databaseQuery: () => queryService.findByDateRange(new Date('2023-07-01'), new Date('2023-07-31')),
    expectedCount: 150
  },
  {
    name: "Blue ocean photos",
    jsonQuery: () => findJSONByDominantColor('#69a9f4'),
    databaseQuery: () => queryService.findByDominantColor('#69a9f4'),
    expectedCount: 25
  }
  // ... more tests
];
```

## Phase 5: Production Cutover (Week 9-10)

### 5.1 Read Migration
Gradually switch operations to read from database:

```typescript
// Feature flags for gradual migration
const useDatabase = {
  colorQueries: true,      // Start with color queries
  temporalQueries: false,  // Keep using JSON for now
  spatialQueries: false,   // Geographic still JSON
  analytics: true          // Analytics from database
};
```

### 5.2 Performance Monitoring
Monitor query performance during cutover:

```typescript
// Add performance metrics to all database operations
class DatabaseMetrics {
  static async timeQuery<T>(name: string, query: () => Promise<T>): Promise<T> {
    const start = Date.now();
    const result = await query();
    const duration = Date.now() - start;
    
    logger.info('Database query performance', {
      queryName: name,
      durationMs: duration,
      resultCount: Array.isArray(result) ? result.length : 1
    });
    
    return result;
  }
}
```

## Risk Mitigation

### Rollback Strategy
- **Database issues**: Disable database writes, continue with JSON-only
- **Performance problems**: Revert specific query types to JSON
- **Data corruption**: Database can be rebuilt from JSON sidecars

### Data Validation
- **Continuous consistency checks** between JSON and database
- **Daily reconciliation reports** showing any discrepancies  
- **Automated alerts** for sync failures

### Backup Strategy
- **JSON files remain primary source of truth** during migration
- **Database backups** before major migration steps
- **Point-in-time recovery** capability for both JSON and database

## Success Metrics

### Migration Completeness
- ✅ All 24,243+ JSON files successfully migrated
- ✅ Zero data loss during migration
- ✅ All color analysis data preserved
- ✅ Geographic and landmark data intact
- ✅ Processing history fully preserved

### Performance Goals
- 🎯 **Temporal queries**: <100ms (vs JSON scan times)
- 🎯 **Color queries**: <200ms for pattern matching
- 🎯 **Spatial queries**: <500ms for radius searches
- 🎯 **Complex analytics**: <2s for aggregation queries

### System Reliability
- 📊 **Uptime**: >99.9% during migration
- 📊 **Data consistency**: >99.99% JSON-DB sync rate
- 📊 **Processing throughput**: No degradation vs JSON-only

## Implementation Timeline

| Week | Phase | Activities | Success Criteria |
|------|-------|------------|------------------|
| 1-2  | Infrastructure | Database setup, initial schema | Tables created, seed data loaded |
| 3-4  | Batch Migration | JSON analysis, bulk import | All existing data migrated |
| 5-6  | Dual-Write | Post-processor enhancement | New files go to both JSON+DB |
| 7-8  | Query Migration | API development, testing | Database queries match JSON results |
| 9-10 | Production | Gradual cutover, monitoring | Primary operations use database |

## Next Steps

1. **Review and approve this migration strategy**
2. **Set up development database environment**
3. **Create initial schema and seed data**
4. **Begin JSON inventory and analysis**
5. **Develop batch migration tooling**

The migration preserves your existing JSON workflow while building powerful database capabilities for the photo organization and search features you want to implement.