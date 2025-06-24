# Database Migrations

This directory contains MySQL database initialization and migration files for the Media Processing Pipeline.

## Migration File Naming Convention

Files are numbered sequentially to ensure proper execution order:

- `0XX_table_*.sql` - Table creation scripts
- `0XX_*.seed.sql` - Data seeding scripts
- `1XX_*.sql` - Additional migrations and schema updates

## Current Migration Files

### Core Geographic Tables
- `020_table_geo_countries.sql` - Countries reference table
- `025_table_geo_states.sql` - US states reference table  
- `030_table_geo_cities.sql` - Cities/postal codes for proximity lookup
- `035_table_geo_municipal_boundaries.sql` - **Municipal boundaries with spatial geometry**

### Reference Data
- `040_geo_countries.seed.sql` - Countries seed data
- `045_geo_states.seed.sql` - US states seed data
- `050_geo_cities.seed.sql` - Cities seed data

### Legacy/Specific Migrations
- `101_nh_municipal_boundaries.sql` - Original NH-only boundaries (superseded by 035)

## Municipal Boundaries Table (`geo_municipal_boundaries`)

This is the core table for photo geolocation functionality. It contains:

### Key Features
- **Spatial geometry** - Precise boundary polygons for containment queries
- **Centroid coordinates** - For proximity-based fallback searches  
- **FIPS codes** - Official government identifiers
- **Multiple indexes** - Optimized for different query patterns

### Query Patterns Supported
1. **Boundary containment** - "Is this GPS coordinate inside this municipality?"
2. **Proximity search** - "What's the nearest municipality to these coordinates?"
3. **State filtering** - "Find all municipalities in New Hampshire"
4. **Name search** - "Find municipality by name"

### Usage in Geolocation Service
The `GeolocationService` uses this table in a three-tier approach:
1. **Exact match** - ST_Contains() queries against boundary polygons
2. **Proximity match** - Distance calculation using centroids
3. **Fallback** - Nearest city from geo_cities table

## Adding New Migrations

1. **Choose next sequential number** (e.g., `036_`)
2. **Use descriptive naming** - `036_add_landmarks_table.sql`
3. **Include proper comments** - Explain purpose and business logic
4. **Test thoroughly** - Verify indexes and performance
5. **Document here** - Update this README

## Performance Considerations

### Spatial Indexes
- `idx_boundary` - Critical for ST_Contains() queries
- Uses MySQL's R-tree spatial indexing
- Automatically optimizes boundary containment queries

### Standard Indexes  
- `idx_centroid` - Composite index for lat/lng proximity
- `idx_state_name` - Composite index for filtered searches
- `idx_name` - For municipality name lookups

### Memory Usage
- Current dataset: ~12,576 municipalities across 26 US states
- Average polygon complexity: ~100-500 vertices per boundary
- Estimated storage: ~100-200MB for geometry data

## Data Sources

- **TIGER/Line Shapefiles** - US Census Bureau municipal boundaries
- **FIPS Codes** - Federal Information Processing Standards
- **State Codes** - ISO 3166-2:US standard state abbreviations

## Backup and Recovery

Municipal boundary data is expensive to regenerate:
1. **Backup before major changes**
2. **Test migrations on copy first**  
3. **Keep data loading scripts** - for disaster recovery
4. **Document data provenance** - source URLs and dates