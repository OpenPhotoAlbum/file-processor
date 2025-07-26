# Recreation.gov ETL Pipeline

## Overview

The Recreation.gov ETL pipeline extracts federal recreation facility data from the Recreation Information Database (RIDB) API and loads it into our local MySQL database for fast offline landmark detection.

This replaces live API calls with local spatial database queries, eliminating rate limits and improving processing speed.

## Benefits

### Performance
- **~800ms API call** → **~5ms database query**
- No network dependency during photo processing
- Batch processing without rate limit concerns

### Reliability
- Offline capability when Recreation.gov API is down
- Consistent query performance regardless of load
- No external API failures during media processing

### Cost & Scalability
- No API rate limits for thousands of photos
- Single ETL process vs per-photo API calls
- Predictable database costs vs unpredictable API usage

## Database Schema

### Table: `recreation_facilities`

```sql
-- Core facility identification
facility_id         varchar(20)   -- Recreation.gov unique identifier
facility_name       varchar(255)  -- Official facility name
facility_type       varchar(100)  -- Campground, Visitor Center, etc.

-- Spatial data (optimized for radius queries)
latitude           decimal(10,8)  -- WGS84 coordinates
longitude          decimal(11,8)  
coordinates        point SRID 4326 -- Spatial index for fast queries

-- Facility details
description        text           -- Full facility description
phone              varchar(20)    -- Contact information
reservation_url    varchar(500)   -- Booking URL
ada_access         varchar(50)    -- Accessibility information

-- Organizational data
organization_name  varchar(255)   -- Managing agency (NPS, USFS, etc.)
last_updated_date  datetime       -- Data freshness from Recreation.gov

-- ETL metadata
etl_batch_id       varchar(50)    -- Data lineage tracking
```

## ETL Process

### 1. Data Extraction
- Fetches facilities from Recreation.gov RIDB API (`/facilities` endpoint)
- Paginates through all results (50 facilities per request)
- Filters facilities with valid GPS coordinates
- Rate limited to avoid API restrictions

### 2. Data Transformation
- Strips HTML from descriptions
- Normalizes facility types for landmark categorization
- Extracts organization hierarchy
- Creates spatial POINT geometries for MySQL

### 3. Data Loading
- Upsert strategy (INSERT ... ON DUPLICATE KEY UPDATE)
- Maintains data freshness via `last_updated_date`
- Tracks ETL batches for data lineage
- Preserves spatial indexes for fast queries

## Usage

### Initial Data Load
```bash
# Full refresh - truncates and reloads all data
npm run etl:recreation
```

### Incremental Updates
```bash
# Updates existing records, adds new facilities
npm run etl:recreation:incremental
```

### Scheduled Maintenance
```bash
# Recommended: Weekly incremental updates
0 2 * * 0 cd /path/to/project && npm run etl:recreation:incremental
```

## Migration Strategy

### Phase 1: Parallel Operation ✅ CURRENT
- Keep existing API provider for immediate functionality
- Add database provider as alternative
- Test data quality and performance

### Phase 2: Provider Switch (Recommended Next)
1. Run initial ETL: `npm run etl:recreation`
2. Update landmark factory to use `RecreationDatabaseProvider`
3. Test processing with sample photos
4. Monitor for missing facilities or data quality issues

### Phase 3: Production Deployment
1. Schedule weekly ETL updates
2. Remove API provider from codebase
3. Remove `RECREATION_GOV_API_KEY` dependency
4. Monitor database performance and query optimization

## Provider Comparison

| Aspect | API Provider | Database Provider |
|--------|-------------|------------------|
| **Setup** | API key only | ETL + Database |
| **Performance** | ~800ms per photo | ~5ms per photo |
| **Rate Limits** | Yes (unknown limit) | None |
| **Offline** | ❌ Requires internet | ✅ Fully offline |
| **Data Freshness** | Real-time | Weekly updates |
| **Scalability** | Limited by API | Database limited |
| **Dependencies** | Recreation.gov uptime | Local database |

## Implementation Details

### Spatial Queries
The database provider uses MySQL spatial functions identical to the GNIS provider:

```sql
-- Haversine distance calculation with spatial bounds
SELECT *, (
  6371 * acos(
    cos(radians(?)) * cos(radians(latitude)) * 
    cos(radians(longitude) - radians(?)) + 
    sin(radians(?)) * sin(radians(latitude))
  )
) as distance_km
FROM recreation_facilities 
WHERE latitude BETWEEN ? - 0.5 AND ? + 0.5
  AND longitude BETWEEN ? - 0.7 AND ? + 0.7
HAVING distance_km <= ?
ORDER BY distance_km ASC
```

### Data Quality
- **Coordinate validation**: Filters out (0,0) and null coordinates
- **Duplicate handling**: Uses `facility_id` as unique constraint
- **HTML cleaning**: Strips markup from descriptions
- **Organization normalization**: Extracts primary managing agency

### Monitoring
- ETL batch tracking via `etl_batch_id`
- Data freshness via `last_updated_date`
- Query performance via database slow query log
- Coverage analysis via facility type distribution

## Configuration

### Environment Variables
```bash
# Database connection (shared with existing services)
DB_HOST=127.0.0.1
DB_PORT=3309
DB_USER=kin
DB_PASSWORD=kin123
DB_NAME=kin

# Recreation.gov API (only needed for ETL)
RECREATION_GOV_API_KEY=your_api_key_here
```

### Landmark Factory Updates
```typescript
// Replace API provider with database provider
import { RecreationDatabaseProvider } from './providers/recreation-db.js';

// In landmark factory registration
const recreationProvider = new RecreationDatabaseProvider();
providers.push(recreationProvider);
```

## Data Pipeline Architecture

```
Recreation.gov API → ETL Script → MySQL Database → Database Provider → Landmark Service
     (weekly)         (batch)      (spatial idx)     (~5ms queries)    (photo processing)
```

This ETL approach follows the same pattern as our successful GNIS integration, providing fast, reliable, and scalable landmark detection for Recreation.gov facilities.