# Landmark Enrichment System Architecture

## Overview

The Landmark Enrichment System enhances GPS location data with contextual information about nearby landmarks, parks, natural features, and points of interest. This system builds on the existing geolocation service to provide rich context for photo locations.

## System Architecture

### Core Components

#### 1. Landmark Service (`LandmarkService`)
- **Purpose**: Central orchestrator for landmark detection
- **Responsibilities**:
  - Coordinate between different landmark providers
  - Merge and deduplicate results
  - Apply business logic for confidence scoring
  - Cache results for performance

#### 2. Landmark Providers
Each provider specializes in a specific type of landmark data:

- **National Parks Provider** (`NationalParksProvider`)
  - National Parks, Monuments, Historic Sites
  - Uses NPS API + bundled data
  - Boundary containment + proximity detection

- **State Parks Provider** (`StateParksProvider`)
  - State parks, recreation areas, forests
  - Uses state-specific APIs + bundled data
  - Important for local/regional landmarks

- **Natural Features Provider** (`NaturalFeaturesProvider`)
  - Mountains, lakes, rivers, peaks
  - Uses USGS GNIS database
  - Geographical features that are stable landmarks

- **Historic Sites Provider** (`HistoricSitesProvider`)
  - National Historic Landmarks
  - NRHP (National Register of Historic Places)
  - Cultural and historical significance

#### 3. Data Integration Layer
- **Bundled Data**: Critical landmarks with coordinates
- **API Integration**: Live data from government sources
- **Database Storage**: Cached results and boundary data
- **Fallback Strategy**: Always available offline data

## Data Schema

### Landmark Interface
```typescript
interface Landmark {
  id: string;
  name: string;
  fullName: string;
  category: LandmarkCategory;
  subcategory?: string;
  
  // Location
  latitude: number;
  longitude: number;
  boundaryGeometry?: GeoJSON.Polygon;
  
  // Administrative
  state: string;
  county?: string;
  
  // Context
  description?: string;
  significance?: string;
  established?: string;
  url?: string;
  
  // Source
  source: LandmarkSource;
  lastUpdated: string;
}
```

### Landmark Match Interface
```typescript
interface LandmarkMatch {
  landmark: Landmark;
  distance: number; // meters
  confidence: number; // 0-1
  relationship: LandmarkRelationship;
  source: string;
  matchMethod: string;
}

enum LandmarkRelationship {
  WITHIN_BOUNDARY = 'within_boundary',    // GPS is inside landmark
  AT_ENTRANCE = 'at_entrance',            // Near main entrance/visitor center
  NEARBY = 'nearby',                      // Within search radius
  VISIBLE_FROM = 'visible_from',          // Landmark visible from location
  OVERLOOK = 'overlook'                   // Location overlooks landmark
}
```

### Enhanced GPS Result
```typescript
interface GPSExtractionResult {
  primary: GPSData | null;
  alternatives: GPSData[];
  conflicts: string[];
  
  // Enhanced with database lookup
  geolocation?: LocationMatch | null;
  landmarks: LandmarkMatch[];           // NEW: Landmark enrichment
  enrichmentStatus: EnrichmentStatus;
}

interface EnrichmentStatus {
  geolocation: 'success' | 'not_found' | 'error' | 'disabled';
  landmarks: 'success' | 'partial' | 'not_found' | 'error' | 'disabled';
  providersUsed: string[];
  cacheHit: boolean;
}
```

## Implementation Strategy

### Phase 1: Core Infrastructure
1. **Landmark Service Architecture**
   - Abstract provider interface
   - Result merging and deduplication
   - Confidence scoring algorithms
   - Caching layer

2. **National Parks Provider** (Existing + Enhanced)
   - Expand bundled data (all 400+ NPS units)
   - Add boundary detection
   - Implement NPS API integration

### Phase 2: Additional Providers
3. **Natural Features Provider**
   - USGS GNIS integration
   - Focus on major peaks, lakes, rivers
   - State-specific feature databases

4. **State Parks Provider**
   - State-by-state implementation
   - Start with states in our municipal boundary data
   - Prioritize by photo volume/usage

### Phase 3: Advanced Features
5. **Historic Sites Provider**
   - National Historic Landmarks
   - NRHP integration
   - Cultural significance scoring

6. **Boundary Geometry**
   - Accurate park/landmark boundaries
   - Spatial containment queries
   - Entrance/visitor center detection

## Distance and Confidence Algorithms

### Distance Categories
- **Within Boundary** (0m): GPS inside landmark boundary
- **At Entrance** (0-500m): Near visitor centers/entrances
- **Nearby** (500m-5km): Walking/short drive distance
- **Regional** (5km-50km): Visible or regional significance
- **Distant** (50km+): Major landmarks visible from far

### Confidence Scoring
```typescript
function calculateLandmarkConfidence(
  distance: number,
  landmark: Landmark,
  relationship: LandmarkRelationship
): number {
  let confidence = 1.0;
  
  // Base confidence on relationship
  switch (relationship) {
    case 'within_boundary': confidence = 1.0; break;
    case 'at_entrance': confidence = 0.9; break;
    case 'nearby': confidence = Math.max(0.3, 1 - (distance / 5000)); break;
    case 'visible_from': confidence = Math.max(0.2, 1 - (distance / 50000)); break;
    case 'overlook': confidence = 0.8; break;
  }
  
  // Boost for significance
  if (landmark.category === 'National Park') confidence *= 1.2;
  if (landmark.subcategory?.includes('Monument')) confidence *= 1.1;
  
  // Reduce for very distant matches
  if (distance > 25000) confidence *= 0.7;
  
  return Math.min(1.0, confidence);
}
```

## Caching Strategy

### Multi-Level Caching
1. **Memory Cache**: Recent GPS lookups (1 hour TTL)
2. **Database Cache**: Landmark matches (24 hour TTL)
3. **Static Cache**: Bundled landmark data (permanent)

### Cache Keys
- GPS-based: `landmarks:${lat}:${lng}:${radius}`
- Provider-based: `provider:${provider}:${lat}:${lng}`
- Boundary-based: `boundary:${landmarkId}:${lat}:${lng}`

## Integration Points

### GPS Extractor Integration
```typescript
// In src/utils/extractors/gps.ts
async function enrichWithLandmarks(gpsData: GPSData): Promise<LandmarkMatch[]> {
  const landmarkService = getLandmarkService();
  return await landmarkService.findNearbyLandmarks(
    gpsData.latitude,
    gpsData.longitude,
    { maxRadius: 50000, maxResults: 10 }
  );
}
```

### Service Integration
```typescript
// In src/services/index.ts
export { LandmarkService } from './landmarks/index.js';
export { getLandmarkService, createLandmarkService } from './landmarks/factory.js';
```

## Data Sources Priority

### National Data
1. **NPS API** - Official park data
2. **USGS GNIS** - Geographic names
3. **National Historic Landmarks** - Historic significance

### State/Regional Data
1. **State Park APIs** - Official state data
2. **Tourism Board APIs** - Visitor-focused data
3. **OpenStreetMap** - Community-maintained data

### Bundled Fallbacks
1. **Major National Parks** - Always available
2. **Significant Natural Features** - Mountains, major lakes
3. **Historic Landmarks** - National significance only

## Performance Requirements

- **GPS Enrichment**: < 200ms for cached results
- **Provider Queries**: < 2s for uncached API calls
- **Memory Usage**: < 50MB for landmark caches
- **Database Queries**: < 100ms for spatial lookups

## Error Handling

- **Graceful Degradation**: Continue without landmarks if services fail
- **Provider Fallbacks**: Use bundled data if APIs unavailable
- **Timeout Handling**: 5s timeout for external API calls
- **Rate Limiting**: Respect API limits with exponential backoff

## Future Enhancements

1. **Machine Learning**: Photo content analysis for landmark verification
2. **User Feedback**: Crowdsourced landmark identification
3. **Seasonal Data**: Hours, accessibility, seasonal closures
4. **Route Integration**: Hiking trails, scenic drives
5. **Photo Clustering**: Identify popular photo spots within landmarks

This architecture provides a scalable, maintainable system for landmark enrichment that enhances the value of GPS data while maintaining performance and reliability.