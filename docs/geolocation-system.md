# Geolocation Service Documentation

## Overview

The Geolocation Service provides GPS coordinate resolution to municipal boundaries, converting latitude/longitude coordinates into city, state, and municipal information with confidence scoring.

## Features

- **3-Tier Location Resolution**: Boundary containment → proximity search → centroid fallback
- **Municipal Boundaries Database**: 12,576 US municipalities across all 50 states
- **Confidence Scoring**: Location matches include confidence percentages (0-100%)
- **Multiple Detection Methods**: Exact boundary containment, nearest municipal center, geographic centroid
- **Performance Optimized**: Spatial indexing with configurable distance thresholds
- **Comprehensive Coverage**: All US Census-designated places, towns, cities, and CDPs

## Database Schema

### Municipal Boundaries Table
```sql
CREATE TABLE geo_municipal_boundaries (
  id INT PRIMARY KEY AUTO_INCREMENT,
  state_code CHAR(2) NOT NULL,
  place_name VARCHAR(255) NOT NULL,
  place_type VARCHAR(50),
  geometry GEOMETRY NOT NULL SRID 4326,
  centroid POINT NOT NULL SRID 4326,
  area_sq_km DECIMAL(12,6),
  population INT,
  INDEX idx_state_place (state_code, place_name),
  SPATIAL INDEX idx_geometry (geometry),
  SPATIAL INDEX idx_centroid (centroid)
);
```

## Location Resolution Methods

### 1. Boundary Containment (Highest Confidence: 100%)
Checks if GPS coordinates fall exactly within municipal boundaries.
```javascript
const result = await geolocationService.findLocation(43.235, -70.823);
// Returns: { city: "South Berwick", state_code: "ME", confidence: 1.0, method: "boundary_containment" }
```

### 2. Proximity Search (Variable Confidence: 50-95%)
Finds nearest municipal center when point is outside all boundaries.
- Distance < 1km: 95% confidence
- Distance 1-5km: 80% confidence  
- Distance 5-10km: 65% confidence
- Distance 10-25km: 50% confidence

### 3. Centroid Fallback (Low Confidence: 30%)
Uses geographic centroid of nearest state when no municipalities found within 25km.

## Configuration

### Environment Variables
```bash
# Database connection
MYSQL_HOST=127.0.0.1
MYSQL_PORT=3309
MYSQL_DATABASE=kin
MYSQL_USER=kin
MYSQL_PASSWORD=your_password

# Geolocation settings
GEOLOCATION_ENABLED=true
GEOLOCATION_MAX_DISTANCE_KM=25
GEOLOCATION_CACHE_TTL=3600
```

### Service Factory
```typescript
import { getGeolocationService } from '../services/index.js';

const geolocationService = getGeolocationService();
const location = await geolocationService.findLocation(latitude, longitude);
```

## Integration with GPS Extraction

The geolocation service automatically enriches GPS data during extraction:

```typescript
// GPS extraction with automatic geolocation enrichment
const gpsResult = await gpsExtractor.extractGPS(sources);

console.log(gpsResult.geolocation);
// Output:
// {
//   city: "South Berwick",
//   state_code: "ME", 
//   confidence: 0.8,
//   method: "Nearest to South Berwick CDP municipal center",
//   distance_km: 2.002
// }
```

## Response Format

### Successful Location Match
```json
{
  "city": "South Berwick",
  "state_code": "ME",
  "confidence": 0.8,
  "method": "Nearest to South Berwick CDP municipal center", 
  "distance_km": 2.002,
  "place_type": "CDP",
  "population": 7220,
  "area_sq_km": 45.2
}
```

### No Location Found
```json
null
```

## CLI Usage Examples

### Process Image with GPS Coordinates
```bash
# Process single image with geolocation
node dist/main.js -f scratch/sample_media/jpg_with_gps_iphone.JPG --json

# Output includes geolocation section:
# "geolocation": {
#   "city": "South Berwick",
#   "state_code": "ME",
#   "confidence": 0.8,
#   "method": "Nearest to South Berwick CDP municipal center"
# }
```

### Batch Processing with GPS Filtering
```bash
# Process directory recursively, output results with geolocation
node dist/main.js -R sample: --json -o gps_results.json
```

## Performance Characteristics

- **Boundary Containment**: ~5-15ms per lookup
- **Proximity Search**: ~10-25ms per lookup
- **Database Connection**: Connection pooling with automatic reconnection
- **Memory Usage**: ~50MB for service initialization
- **Spatial Indexing**: MySQL spatial indexes for sub-millisecond geometry queries

## Error Handling

### Common Issues and Solutions

1. **SRID Mismatch Error**
   ```
   Error: st_contains given two geometries of different srids: 4326 and 0
   ```
   Solution: Ensure all geometries use SRID 4326 (WGS84)

2. **Invalid GIS Data**
   ```
   Error: Invalid GIS data provided to function st_geomfromtext
   ```
   Solution: Validate coordinate ranges (-90 to 90 latitude, -180 to 180 longitude)

3. **Database Connection Issues**
   ```
   Error: connect ECONNREFUSED 127.0.0.1:3309
   ```
   Solution: Verify MySQL service is running and credentials are correct

## Testing

### Sample Test Coordinates
- **South Berwick, ME**: 43.235, -70.823 (2km from city center, 80% confidence)
- **Portsmouth, NH**: 43.071, -70.763 (exact boundary match, 100% confidence)
- **Rural Maine**: 44.5, -69.0 (centroid fallback, 30% confidence)

### Unit Test Example
```typescript
import { getGeolocationService } from '../services/index.js';

test('GPS coordinates resolve to correct municipality', async () => {
  const service = getGeolocationService();
  const result = await service.findLocation(43.235, -70.823);
  
  expect(result.city).toBe('South Berwick');
  expect(result.state_code).toBe('ME');
  expect(result.confidence).toBeGreaterThan(0.7);
});
```

## Migration and Setup

### Database Migration
```bash
# Run MySQL migrations to create geo tables
docker-compose up -d mysql

# Migrations are automatically applied:
# - 020_table_geo_countries.sql
# - 025_table_geo_states.sql  
# - 030_table_geo_cities.sql
# - 035_table_geo_municipal_boundaries.sql
# - 040-050_*.seed.sql (data loading)
```

### Verify Installation
```bash
# Check municipality count
mysql -h 127.0.0.1 -P 3309 -u kin -p kin \
  -e "SELECT COUNT(*) as total_municipalities FROM geo_municipal_boundaries;"

# Expected result: 12,576 municipalities
```

## Logging and Monitoring

The geolocation service provides structured logging:

```
2025-06-24T13:55:18.015Z [INFO] [Geolocation Service] GeolocationService.findLocation called lat=43.23512222 lng=-70.82372222 enabled=true
2025-06-24T13:55:18.039Z [INFO] [Geolocation Service] Location found lat=43.23512222 lng=-70.82372222 city=South Berwick source=boundary_proximity distance=2002 confidence=0.80
```

### Key Metrics to Monitor
- Location resolution success rate
- Average query response time
- Database connection pool status
- Geographic coverage gaps
- Confidence score distribution

## Future Enhancements

1. **International Support**: Add municipal boundaries for Canada, UK, etc.
2. **Landmark Integration**: Combine with National Parks and GNIS landmark data
3. **Caching Layer**: Redis caching for frequently queried coordinates
4. **Batch Processing**: Bulk coordinate resolution for performance
5. **API Endpoints**: REST API for external geolocation queries