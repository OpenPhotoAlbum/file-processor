# Location Data Enrichment Flow

This document describes the step-by-step process for enriching GPS coordinates with geographic context in the media processing pipeline.

## Overview

The enrichment system transforms basic GPS coordinates into rich geographic context through a multi-service architecture that provides:
- **Municipal boundaries** (cities, towns, counties)
- **Major landmarks** (National Parks, monuments, forests)
- **Natural features** (mountains, lakes, rivers, valleys)

## Data Enrichment Flow

### Entry Point: GPS Extraction
```
GPS Coordinates Found in Photo
↓
44.32179722, -68.18823889 (Acadia example)
```

### Step 1: Geolocation Service
**File:** `src/services/geolocation/index.ts`  
**Purpose:** Convert GPS coordinates to municipal boundaries and administrative context

```typescript
GeolocationService.findLocation(lat, lng)
```

#### Three-Tier Lookup Strategy

**1. Boundary Containment Query (Highest Accuracy)**
- Check if GPS point is INSIDE any municipality boundary
- Uses: `ST_Contains(boundary_polygon, POINT(lng, lat))`
- Database: `geo_municipal_boundaries` table (12,576 US municipalities)
- Result: Exact municipality match (confidence: 100%)

**2. Boundary Proximity Query (Fallback)**
- Find nearest municipality boundary within 10km radius
- Uses: `ST_Distance_Sphere()` with `LIMIT 1`
- Result: Nearest town/city (confidence: distance-based 50-90%)

**3. City Centroid Proximity (Final Fallback)**
- Find nearest city center within 50km radius
- Uses: `centroid_lat/lng` with Haversine distance calculation
- Result: Regional context (confidence: 20-50%)

#### Example Output
```json
{
  "city": "Bar Harbor",
  "state_code": "ME", 
  "county_name": "Hancock",
  "confidence": 0.85,
  "source": "boundary_proximity",
  "distance": 2.3
}
```

### Step 2: Landmark Service
**File:** `src/services/landmarks/index.ts`  
**Purpose:** Find notable landmarks and natural features near GPS coordinates

```typescript
LandmarkService.findNearbyLandmarks(lat, lng)
```

#### Multi-Provider Architecture

**Provider 1: National Parks Service**
- **Priority:** 1 (highest)
- **Data Source:** Bundled landmarks (25+ major parks, monuments, forests)
- **Radius:** 50km default
- **Categories:** national_park, national_monument, national_forest, national_historic_site
- **Fallback:** Always works (bundled data, no external dependencies)

**Provider 2: GNIS (Geographic Names Information System)**
- **Priority:** 2
- **Data Source:** `geo_geographic_features` table (natural features database)
- **Radius:** 50km default
- **Categories:** mountain, lake, river, valley, ridge, water_feature, natural_feature
- **Fallback:** Empty array if database unavailable

#### Provider Query Process

```
For Each Provider:
1. Execute spatial query within radius
2. Apply category filters (if specified)
3. Calculate distance using Haversine formula
4. Determine relationship (within_boundary, nearby, visible_from)
5. Calculate confidence score (distance + feature prominence)
6. Filter by confidence threshold (>= 0.3)
7. Return ranked matches

Service-Level Processing:
1. Query all providers simultaneously
2. Deduplicate results by landmark ID
3. Keep highest confidence for duplicates
4. Sort by confidence (descending), then distance (ascending)
5. Apply max results limit (default: 10)
6. Return merged, ranked results
```

#### Example Provider Results

**National Parks Provider:**
```json
{
  "name": "Acadia National Park",
  "category": "national_park",
  "distance": 3582,
  "confidence": 0.77,
  "relationship": "nearby",
  "source": "National Parks Service"
}
```

**GNIS Provider:**
```json
{
  "name": "Mount Cadillac",
  "category": "mountain", 
  "distance": 5200,
  "confidence": 0.65,
  "elevation": 466,
  "feature_class": "Summit",
  "source": "USGS GNIS"
}
```

### Step 3: Result Integration

The GPS extraction service combines geolocation and landmark results into a unified structure:

```json
{
  "location": {
    "primary": {
      "latitude": 44.32179722,
      "longitude": -68.18823889,
      "altitude": 7.35693496,
      "source": "exif"
    },
    "geolocation": {
      "city": "Bar Harbor", 
      "state_code": "ME",
      "county_name": "Hancock",
      "confidence": 0.85,
      "source": "boundary_proximity"
    },
    "landmarks": [
      {
        "landmark": { /* Full landmark object */ },
        "distance": 3582,
        "confidence": 0.77,
        "relationship": "nearby",
        "source": "National Parks Service"
      }
    ],
    "enrichmentStatus": {
      "geolocation": "success|not_found|error|disabled",
      "landmarks": "success|partial|not_found|error|disabled",
      "providersUsed": ["National Parks Service", "USGS GNIS"],
      "cacheHit": false,
      "queryTimeMs": 125
    }
  }
}
```

## Error Handling & Fallback Strategy

### Geolocation Service Failures
```
Database Connection Failed:
├─ Return: geolocation: null, status: "error"
├─ Log: Connection error details
└─ Impact: No municipal context, but landmarks still work

No Boundaries Found:
├─ Return: geolocation: null, status: "not_found" 
├─ Reason: GPS coordinates outside covered areas
└─ Impact: Location context missing, landmarks may still provide value
```

### Landmark Service Failures

**Provider-Level Failures:**
```
National Parks Provider Failure:
├─ Cause: Bundled data corruption (very unlikely)
├─ Fallback: Continue with other providers
├─ Impact: Missing major landmarks (parks, monuments)
└─ Status: "partial" if other providers succeed

GNIS Provider Failure:
├─ Cause: Database connection refused (common during development)
├─ Fallback: Return empty array for this provider
├─ Impact: Missing natural features (mountains, lakes, rivers)
└─ Status: "partial" if other providers succeed
```

**Service-Level Failures:**
```
All Providers Fail:
├─ Return: landmarks: [], status: "error"
├─ Log: Individual provider error details
└─ Impact: GPS coordinates only, no geographic context

Service Disabled:
├─ Environment: LANDMARKS_ENABLED=false
├─ Return: landmarks: [], status: "disabled"
└─ Impact: Intentional - landmark enrichment bypassed
```

## Real-World Examples

### Current State: IMG_6645.jpg (GNIS Database Down)
```
Input: 44.32179722, -68.18823889 (Acadia National Park area)

Step 1 - Geolocation Service:
❌ Database connection refused
→ Result: geolocation: null, status: "error"

Step 2 - Landmark Service:
✅ National Parks Provider: Found "Acadia National Park" (3.6km, 77% confidence)  
❌ GNIS Provider: Database connection refused
→ Result: 1 landmark, status: "partial", providers: ["National Parks Service"]

Final Output:
✅ 1 landmark (Acadia National Park)
❌ No municipal context
⚡ 7ms total query time
📊 Enrichment: partial success
```

### Optimal State: All Services Working
```
Input: 44.2706, -71.3033 (Mount Washington, NH area)

Step 1 - Geolocation Service:
✅ Boundary proximity: "North Conway, NH" (8.5km, 85% confidence)
→ Result: Full municipal context

Step 2 - Landmark Service:
✅ National Parks: "White Mountain National Forest" (0km, 100% confidence)
✅ GNIS: "Mount Washington" (1.2km, 95% confidence)
✅ GNIS: "Tuckerman Ravine" (2.8km, 78% confidence)
✅ GNIS: "Glen Ellis Falls" (12.4km, 45% confidence)
→ Result: 4 landmarks, status: "success"

Final Output:
✅ 4 landmarks (1 forest + 3 natural features)
✅ Municipal context (North Conway, Coos County, NH)
⚡ ~150ms total enrichment time
📊 Enrichment: complete success
```

### Edge Case: Remote Location
```
Input: 45.9876, -109.1234 (Remote Montana wilderness)

Step 1 - Geolocation Service:
❌ No municipal boundaries within 50km
→ Result: geolocation: null, status: "not_found"

Step 2 - Landmark Service:
✅ National Parks: "Yellowstone National Park" (35km, 45% confidence)
✅ GNIS: "Beartooth Mountains" (15km, 65% confidence)
→ Result: 2 landmarks, status: "success"

Final Output:
✅ 2 landmarks (regional context from natural features)
❌ No municipal context (expected in wilderness)
⚡ 89ms total query time
📊 Enrichment: landmarks only (appropriate for remote areas)
```

## Performance Characteristics

### Query Times (Typical)
- **Geolocation Service:** 20-50ms (depends on database performance)
- **National Parks Provider:** 1-5ms (bundled data, in-memory)
- **GNIS Provider:** 30-80ms (database spatial queries)
- **Total Enrichment:** 60-150ms (parallel provider execution)

### Caching Strategy
- **Landmark Service:** In-memory cache with 60-minute TTL
- **Cache Key:** Rounded coordinates + search options
- **Cache Hit Rate:** ~40-60% for typical photo processing workflows
- **Cache Size Limit:** 1000 entries with LRU eviction

### Database Dependencies
- **Required for Geolocation:** MySQL connection to `geo_municipal_boundaries`
- **Required for GNIS:** MySQL connection to `geo_geographic_features`
- **Graceful Degradation:** System continues with available services

## Configuration Options

### Environment Variables
```bash
# Global landmark system
LANDMARKS_ENABLED=true                    # Enable/disable landmark enrichment
LANDMARKS_MAX_RADIUS=50000               # Search radius in meters
LANDMARKS_MAX_RESULTS=10                 # Maximum landmarks per query
LANDMARKS_MIN_CONFIDENCE=0.3             # Minimum confidence threshold
LANDMARKS_CACHE_ENABLED=true             # Enable result caching
LANDMARKS_CACHE_TTL_MINUTES=60          # Cache expiration time

# Provider-specific
NPS_PROVIDER_ENABLED=true                # National Parks provider
NPS_API_KEY=optional                     # NPS API key (optional, uses bundled data)
GNIS_PROVIDER_ENABLED=true               # GNIS natural features provider

# Database (required for geolocation and GNIS)
DB_HOST=127.0.0.1
DB_PORT=3309
DB_USER=kin
DB_PASSWORD=Dalekini21!
DB_NAME=kin
```

### Service Configuration
```typescript
// Customizable per search
const options: LandmarkSearchOptions = {
  maxRadius: 25000,           // 25km search radius
  maxResults: 5,              // Top 5 landmarks only
  categories: [               // Filter by categories
    LandmarkCategory.NATIONAL_PARK,
    LandmarkCategory.MOUNTAIN
  ],
  minConfidence: 0.5,         // Higher confidence threshold
  includeBoundaryChecks: true // Enable spatial boundary queries
};
```

## Architecture Benefits

### Resilience
- **Graceful Degradation:** System works with partial service availability
- **Independent Providers:** One provider failure doesn't break others
- **Fallback Data:** National Parks work without external dependencies

### Extensibility
- **Provider Pattern:** Easy to add new landmark data sources
- **Category System:** Flexible landmark classification
- **Configuration Driven:** Runtime behavior controlled by environment

### Performance
- **Parallel Execution:** All providers query simultaneously
- **Spatial Indexing:** Efficient database queries with proper indexes
- **Smart Caching:** Reduces redundant database queries

### Data Quality
- **Multi-Source Validation:** Cross-reference landmarks from different providers
- **Confidence Scoring:** Distance and prominence-based reliability metrics
- **Relationship Classification:** Contextual understanding (within, nearby, visible)

This enrichment flow transforms basic GPS coordinates into comprehensive geographic context, providing valuable metadata for photo organization, travel documentation, and location-based media analysis.