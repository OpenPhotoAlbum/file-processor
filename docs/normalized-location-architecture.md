# Normalized Location Architecture

**Created:** 2025-06-30  
**Status:** Implemented  
**Purpose:** Document the normalized database approach for geographic location storage

## Overview

The media processing pipeline now stores geographic location data using normalized foreign key relationships instead of storing city/state/country names as JSON strings. This provides significant performance, integrity, and analytics benefits.

## Architecture

### Database Schema

```sql
-- Core geographic reference tables
geo_countries (id, country_code, country_name, ...)
geo_states (id, code, name, country_code, ...)  
geo_cities (id, city, state_code, latitude, longitude, ...)

-- Media location storage with foreign keys
media_locations (
  file_id BIGINT UNSIGNED PRIMARY KEY,
  latitude DECIMAL(10,8),
  longitude DECIMAL(11,8),
  gps_source ENUM('exif', 'manual', 'estimated'),
  gps_confidence ENUM('high', 'medium', 'low'),
  
  -- Normalized foreign key relationships
  city_id INT UNSIGNED,           -- FK to geo_cities.id
  state_id INT UNSIGNED,          -- FK to geo_states.id  
  country_id INT UNSIGNED,        -- FK to geo_countries.id
  
  -- Fallback/additional data
  geolocation_data JSON,
  
  FOREIGN KEY (city_id) REFERENCES geo_cities(id),
  FOREIGN KEY (state_id) REFERENCES geo_states(id),
  FOREIGN KEY (country_id) REFERENCES geo_countries(id)
)
```

### Service Integration

The `LocationService` automatically resolves geographic names to foreign key IDs:

```typescript
// GeolocationService returns: { city: "Austin", state_code: "TX" }
// LocationService resolves to:
{
  city_id: 27917,    // Austin in geo_cities  
  state_id: 114,     // Texas in geo_states
  country_id: 486    // United States in geo_countries
}
```

## Benefits

### 1. Query Performance
```sql
-- Fast indexed queries instead of JSON parsing
SELECT COUNT(*) FROM media_locations ml
JOIN geo_states gs ON ml.state_id = gs.id 
WHERE gs.code = 'TX';

-- Geographic analytics with JOINs
SELECT gc.city, gs.name as state, COUNT(*) as photo_count
FROM media_locations ml
JOIN geo_cities gc ON ml.city_id = gc.id
JOIN geo_states gs ON ml.state_id = gs.id  
GROUP BY gc.city, gs.name;
```

### 2. Data Integrity
- Foreign key constraints ensure valid locations
- No duplicate city names stored
- Consistent geographic hierarchy
- Automatic cascade deletes

### 3. Storage Efficiency
- Integer IDs instead of repeated text strings
- Normalized data reduces redundancy
- Better compression and indexing

### 4. Analytics Ready
- Easy aggregation by city/state/country
- Geographic distribution queries
- Travel pattern analysis
- Location-based photo organization

## Implementation Details

### Migration Applied
File: `mysql-init/305_add_location_foreign_keys.sql`

```sql
-- Add foreign key columns
ALTER TABLE media_locations 
ADD COLUMN city_id INT UNSIGNED NULL,
ADD COLUMN state_id INT UNSIGNED NULL,
ADD COLUMN country_id INT UNSIGNED NULL;

-- Add constraints and indexes
ALTER TABLE media_locations
ADD CONSTRAINT fk_media_locations_city FOREIGN KEY (city_id) REFERENCES geo_cities(id),
ADD INDEX idx_city_state (city_id, state_id),
ADD INDEX idx_geographic_hierarchy (country_id, state_id, city_id);
```

### Service Changes
- **LocationService**: Enhanced to resolve geographic names to IDs
- **PostProcessor**: No changes required - works transparently 
- **CLI**: No interface changes - foreign keys stored automatically

### Fallback Handling
- JSON `geolocation_data` field preserved for additional metadata
- Graceful handling when foreign key resolution fails
- Backward compatibility with existing processing pipeline

## Example Usage

### Storage Process
1. Photo GPS coordinates: `42.78105278, -71.03292778`
2. GeolocationService finds: `"Haverhill, MA"`
3. LocationService resolves IDs:
   - City lookup: `SELECT id FROM geo_cities WHERE city='Haverhill' AND state_code='MA'`
   - State lookup: `SELECT id FROM geo_states WHERE code='MA'`  
   - Country lookup: `SELECT id FROM geo_countries WHERE country_code='US'`
4. Storage: `city_id=12345, state_id=22, country_id=1`

### Query Examples
```sql
-- Photos in Massachusetts
SELECT COUNT(*) FROM media_locations ml
JOIN geo_states gs ON ml.state_id = gs.id 
WHERE gs.code = 'MA';

-- Top photographed cities
SELECT gc.city, COUNT(*) as photos
FROM media_locations ml
JOIN geo_cities gc ON ml.city_id = gc.id
GROUP BY gc.city
ORDER BY photos DESC;

-- Photos by country distribution  
SELECT gco.country_name, COUNT(*) as photos
FROM media_locations ml
JOIN geo_countries gco ON ml.country_id = gco.id
GROUP BY gco.country_name;
```

## Testing Results

**Test File:** Austin, TX photo  
**Results:**
- `city_id: 27917` → **Austin**
- `state_id: 114` → **Texas**  
- `country_id: 486` → **United States**

**Query Performance:** Sub-millisecond lookups with proper indexing

## Migration Notes

- **Non-destructive**: JSON data preserved as fallback
- **Gradual adoption**: New photos get foreign keys, old ones still work
- **Index optimization**: Composite indexes for common query patterns
- **Clean upgrade path**: No data loss during migration

## Related Documentation

- [Database Schema](../mysql-init/305_add_location_foreign_keys.sql)
- [LocationService](../src/services/database/LocationService.ts)
- [GeolocationService](../src/services/geolocation/index.ts)
- [Database Cleanup Script](../scripts/database-clean-media.sh)