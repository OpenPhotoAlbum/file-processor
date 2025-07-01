# Database Module - Media Processing Pipeline

## Purpose
MySQL database integration using Knex.js for structured storage of media metadata, relationships, and processing history. Provides normalized storage for efficient querying and analysis.

## Key Components

### Core Files
- **`index.ts`** - Database connection management, migration control, and lifecycle
- **`connection.ts`** - Knex instance configuration with environment detection
- **`knexfile.ts`** - Knex configuration for development, test, and production environments

### Database Structure
- **`migrations/`** - Schema definitions and database evolution
  - `20241228_000001_create_media_tables.ts` - Core media file and metadata tables
  - `20241228_000002_create_object_detection_tables.ts` - Future object detection features
- **`models/`** - TypeScript interfaces for database entities
- **`seeds/`** - Reference data population (GNIS, Recreation.gov facilities)
- **`types/`** - Database-specific type definitions and table schemas

## Architecture Patterns

### Connection Management
- **Environment detection** - Automatically switches between src/dist directory structures
- **Migration control** - Dynamic extension handling (.ts in dev, .js in production)
- **Connection pooling** - Efficient database resource management
- **Graceful shutdown** - Proper connection cleanup

### Database Design Philosophy
- **Normalized storage** - Foreign key relationships for geographic data
- **JSON flexibility** - Raw EXIF data stored as JSON for comprehensive metadata
- **Processing history** - Track all processing events and provider usage
- **Collection isolation** - Logical grouping of media files (archive, staging, etc.)

## Database Schema

### Core Tables
- **`media_files`** - Primary media file registry with hashes and paths
- **`media_processing_history`** - Complete processing event audit trail
- **`locations`** - Normalized GPS coordinates and geolocation data
- **`landmarks`** - POI data from GNIS, Recreation.gov, National Parks
- **`equipment`** - Camera makes, models, and lens information
- **`software`** - Software versions and processing tools

### Relationship Model
```
media_files (1) → (many) media_processing_history
media_files (many) → (1) locations  
locations (1) → (many) landmarks
media_files (many) → (1) equipment
```

## Critical Database Management

### Container Preservation
**⚠️ NEVER delete or recreate the database without explicit user permission**

- **Container name**: `mykin_db` (MySQL 8.0 on port 3309)
- **Volume**: `mykin_db_data` for persistent storage
- **Recovery protocol**: Debug connection/permissions first - DO NOT recreate container
- **Migration state**: Track completed migrations to avoid data loss

### Connection Validation
```bash
# Check existing tables before any operations
docker exec mykin_db mysql -u kin -p'Dalekini21!' kin -e "SHOW TABLES;"

# Verify connection from application
node -e "import('./dist/database/index.js').then(db => db.testConnection())"
```

## Environment Configuration

### Development Setup
- **Database**: `kin` on localhost:3309
- **User**: `kin` with password `Dalekini21!`
- **Connection pooling**: min 2, max 10 connections
- **Migration directory**: Auto-detects src vs dist

### Production Considerations
- **Environment variables**: Override connection settings
- **SSL configuration**: Enable for production deployments
- **Performance monitoring**: Connection pool metrics
- **Backup strategy**: Regular dumps with restoration procedures

## Key Features

### Migration System
- **Automatic migration** - Run latest migrations on startup
- **Rollback support** - Safe schema rollback for development
- **Cross-environment** - Works in both TypeScript and compiled JavaScript
- **Version tracking** - Knex migration state management

### Seed Data Management
- **Reference data** - GNIS geographic features, Recreation.gov facilities
- **Consistent state** - Reproducible database setup across environments
- **Incremental updates** - Add new reference data without full rebuild

## Database Services Integration

### Service Layer Pattern
Database services in `/src/services/database/` provide typed interfaces:

- **`MediaFileService.ts`** - Media file CRUD operations with collection support
- **`LocationService.ts`** - GPS and geolocation data management
- **`LandmarkService.ts`** - POI and landmark queries with radius search
- **`EquipmentService.ts`** - Camera and lens information management
- **`SoftwareService.ts`** - Processing tool version tracking

### Query Optimization
- **Indexed lookups** - Hash-based file lookup, GPS coordinate indexing
- **Batch operations** - Efficient bulk inserts for large photo collections
- **Relationship queries** - JOIN optimization for metadata enrichment
- **Cache-friendly** - Structure supports application-level caching

## Development Workflows

### Local Development
```bash
# Test database connection
npm run db:test

# Run migrations
npm run db:migrate

# Seed reference data
npm run db:seed

# Database reset (development only)
npm run db:reset
```

### Schema Changes
1. **Create migration** - Use Knex migration generator
2. **Test locally** - Verify migration up/down in development
3. **Update types** - Modify `/database/types/` interfaces
4. **Update services** - Adjust service layer for schema changes
5. **Run quality gates** - Ensure TypeScript compilation passes

## Common Patterns

### Media File Storage
```typescript
// Store processing result in database
const mediaFile = await MediaFileService.create({
  path: result.file.path,
  hash: result.file.hash,
  collection: 'archive',
  processingResult: result
});
```

### Landmark Queries
```typescript
// Find nearby landmarks with radius search
const landmarks = await LandmarkService.findNearby({
  latitude: 44.3776,
  longitude: -68.2039,
  radiusMeters: 50000
});
```

### Processing History
```typescript
// Track processing events for audit trail
await MediaFileService.addProcessingHistory(mediaFileId, {
  success: true,
  processor: 'ImageProcessor',
  providersEnabled: ['GNIS', 'NPS'],
  extractedAt: new Date()
});
```

## Quality Standards

### Data Integrity
- **Foreign key constraints** - Enforce referential integrity
- **Validation rules** - Database-level data validation
- **Transaction support** - Atomic operations for consistency
- **Error handling** - Proper error propagation to application layer

### Performance Requirements
- **Query optimization** - All queries must use appropriate indexes
- **Batch operations** - Handle large datasets efficiently
- **Connection pooling** - Prevent connection exhaustion
- **Memory management** - Avoid loading entire result sets in memory

### Migration Best Practices
- **Backward compatibility** - New migrations should not break existing data
- **Rollback safety** - All migrations must have safe rollback procedures
- **Testing requirements** - Test migrations in development before production
- **Documentation** - Comment complex migrations with business justification