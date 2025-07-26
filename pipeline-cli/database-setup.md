# Database Setup for Media Processing Pipeline CLI

The CLI requires a MySQL database for landmark enrichment and geolocation services. This guide covers connection setup and database requirements.

## Database Connection

### Shared Database (Recommended)
If you have the main media-processing-pipeline project, the CLI can connect to the existing database:

```bash
# From main project directory
docker compose up -d

# Verify database is running
docker ps | grep mykin_db
```

### Environment Configuration
Create a `.env` file in the CLI directory:

```bash
# Database connection
DB_HOST=localhost
DB_PORT=3309
DB_USER=kin
DB_PASSWORD=Dalekini21!
DB_NAME=kin

# Provider settings
GEOLOCATION_ENABLED=true
GNIS_PROVIDER_ENABLED=true
NPS_PROVIDER_ENABLED=true
RECREATION_GOV_PROVIDER_ENABLED=false
LANDMARK_MAX_RADIUS=50000
```

## Database Requirements

### Required Tables
The CLI needs these database tables for full functionality:

- **geo_countries, geo_states, geo_cities** - Geolocation lookup
- **geo_geographic_features** - GNIS geographic feature data
- **recreation_facilities** - Recreation.gov facility data
- **media_files, media_locations** - Media metadata storage (optional)

### Database Schema
The database uses the same schema as the main project. Key components:

```sql
-- Geolocation tables
CREATE TABLE geo_cities (
    geoname_id INT PRIMARY KEY,
    name VARCHAR(200),
    latitude DECIMAL(10,8),
    longitude DECIMAL(11,8),
    country_code CHAR(2),
    admin1_code VARCHAR(20)
);

-- Geographic features (GNIS)
CREATE TABLE geo_geographic_features (
    feature_id INT PRIMARY KEY,
    feature_name VARCHAR(120),
    feature_class VARCHAR(50),
    state_alpha CHAR(2),
    county_name VARCHAR(100),
    primary_latitude_dms VARCHAR(20),
    primary_longitude_dms VARCHAR(21),
    elevation_in_feet INT
);

-- Recreation facilities
CREATE TABLE recreation_facilities (
    facility_id VARCHAR(50) PRIMARY KEY,
    facility_name VARCHAR(200),
    latitude DECIMAL(10,8),
    longitude DECIMAL(11,8),
    facility_type VARCHAR(100)
);
```

## Setting Up New Database

### Option 1: Use Existing Main Project Database
```bash
# Clone main project if you don't have it
git clone <main-project-url>
cd media-processing-pipeline

# Start database
docker compose up -d

# Verify tables exist
docker exec mykin_db mysql -u kin -p'Dalekini21!' kin -e "SHOW TABLES;"
```

### Option 2: Standalone Database Setup
```bash
# Create database container
docker run -d \\
  --name mpp-cli-db \\
  -e MYSQL_ROOT_PASSWORD=rootpass \\
  -e MYSQL_DATABASE=kin \\
  -e MYSQL_USER=kin \\
  -e MYSQL_PASSWORD=Dalekini21! \\
  -p 3309:3306 \\
  mysql:8.0

# Import schema (requires main project SQL files)
# docker exec -i mpp-cli-db mysql -u kin -p'Dalekini21!' kin < schema.sql
```

## Connection Testing

### Test Database Connection
```bash
# Test connection
docker exec mykin_db mysql -u kin -p'Dalekini21!' kin -e "SELECT 1;"

# Check key tables
docker exec mykin_db mysql -u kin -p'Dalekini21!' kin -e "
  SELECT 
    (SELECT COUNT(*) FROM geo_cities) as cities,
    (SELECT COUNT(*) FROM geo_geographic_features) as features,
    (SELECT COUNT(*) FROM recreation_facilities) as facilities;
"
```

### CLI Connection Verification
```bash
# Test CLI with database connection
npm run build
GEOLOCATION_ENABLED=true node dist/main.js -f "sample:IMG_6645.jpg" --json | jq '.location.geolocation'
```

## Provider Configuration

### Enable/Disable Providers
Control which enrichment providers are used:

```bash
# Maximum enrichment (slowest)
GEOLOCATION_ENABLED=true \\
GNIS_PROVIDER_ENABLED=true \\
NPS_PROVIDER_ENABLED=true \\
RECREATION_GOV_PROVIDER_ENABLED=true \\
  mpp -f "photo.jpg" --json

# Fast processing (minimal enrichment)
GEOLOCATION_ENABLED=false \\
  mpp -f "photo.jpg" --json

# Landmarks only (no reverse geocoding)
GEOLOCATION_ENABLED=false \\
GNIS_PROVIDER_ENABLED=true \\
NPS_PROVIDER_ENABLED=true \\
  mmp -f "photo.jpg" --json
```

### Provider Details

| Provider | Data Source | Performance | Enabled by Default |
|----------|-------------|-------------|-------------------|
| Geolocation | Municipal boundaries | Fast | ✅ Yes |
| GNIS | US Geographic Names | Fast | ✅ Yes |
| National Parks | NPS boundaries | Fast | ✅ Yes |
| Recreation.gov | Facility database | Medium | ❌ No |

## Performance Tuning

### Database Performance
```sql
-- Add indexes for common queries
CREATE INDEX idx_geo_cities_coords ON geo_cities(latitude, longitude);
CREATE INDEX idx_geo_features_coords ON geo_geographic_features(primary_latitude_dms, primary_longitude_dms);
CREATE INDEX idx_recreation_coords ON recreation_facilities(latitude, longitude);
```

### Connection Pooling
The CLI uses connection pooling with these defaults:
- **Min connections**: 2
- **Max connections**: 10
- **Acquire timeout**: 30 seconds
- **Create timeout**: 30 seconds

## Troubleshooting

### Common Issues

**Connection Refused**
```bash
# Check if database is running
docker ps | grep mykin_db

# Check port binding
netstat -ln | grep 3309

# Start database if needed
docker compose up -d
```

**Missing Tables**
```bash
# Check available tables
docker exec mykin_db mysql -u kin -p'Dalekini21!' kin -e "SHOW TABLES;"

# If empty, database needs initialization (see main project setup)
```

**Authentication Errors**
```bash
# Verify credentials
docker exec mykin_db mysql -u kin -p'Dalekini21!' kin -e "SELECT USER();"

# Reset password if needed (from main project)
# docker exec mykin_db mysql -u root -p'rootpass' -e "ALTER USER 'kin'@'%' IDENTIFIED BY 'Dalekini21!';"
```

**Slow Queries**
```bash
# Check database performance
docker exec mykin_db mysql -u kin -p'Dalekini21!' kin -e "SHOW PROCESSLIST;"

# Disable expensive providers for testing
RECREATION_GOV_PROVIDER_ENABLED=false mpp -f "photo.jpg" --json
```

### Debug Mode
```bash
# Enable verbose logging (if supported)
DEBUG=true mmp -f "photo.jpg" --json

# Check specific provider issues
GNIS_PROVIDER_ENABLED=false mmp -f "photo.jpg" --json  # Disable GNIS
NPS_PROVIDER_ENABLED=false mmp -f "photo.jpg" --json   # Disable NPS
```

## Data Sources

The database contains enrichment data from:
- **GNIS**: US Board on Geographic Names
- **Recreation.gov**: Federal recreation facilities
- **Municipal Boundaries**: City/county boundary data
- **National Parks**: NPS unit boundaries

For data updates and ETL processes, see the main project documentation.