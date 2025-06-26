# Contextual Landmark Provider Strategy

**Date:** 2025-06-26  
**Status:** Concept - Ready for Implementation  

## Overview

Implement intelligent, context-aware landmark provider enabling to optimize API costs and processing speed while maximizing data quality where it matters most.

## Core Concept

Instead of blanket enabling/disabling Recreation.gov API calls for all photos, dynamically decide based on initial analysis from local/cheap providers (GNIS + NPS).

## Provider Hierarchy & Strategy

### Phase 1: Local Analysis (Always Run)
1. **GNIS Provider** (Local database, no API cost)
   - Mountains, peaks, summits
   - State parks, natural areas
   - Lakes, rivers, geographic features
   - Trail systems, wilderness areas

2. **National Parks Provider** (API, but valuable)
   - National parks, monuments
   - Historic sites
   - Federal recreation areas

### Phase 2: Contextual Decision
Based on Phase 1 results, determine if Recreation.gov would add value:

#### **Enable Recreation.gov When:**
- GNIS finds keywords: "National Forest", "State Park", "Mountain", "Trail", "Wilderness", "Recreation Area"
- NPS finds any national park/monument nearby
- Geographic regions known for outdoor recreation (NH mountains, Maine coast)
- Natural features suggesting camping/hiking opportunities

#### **Skip Recreation.gov When:**
- Suburban/residential areas (user's house)
- Urban locations with no natural features
- Photos with no nearby outdoor recreation infrastructure
- Areas where campgrounds/trails are unlikely

## Technical Implementation

```typescript
interface LandmarkContext {
  hasNaturalFeatures: boolean;
  hasOutdoorRecreation: boolean;
  suggestsRecreationFacilities: boolean;
  geographicRegion: string;
  keywords: string[];
}

async function analyzePhotoContext(lat: number, lng: number): Promise<LandmarkContext> {
  // Run GNIS + NPS first
  const gnisResults = await gnisProvider.findNearbyLandmarks(lat, lng);
  const npsResults = await npsProvider.findNearbyLandmarks(lat, lng);
  
  // Analyze results for recreation context
  const context = {
    hasNaturalFeatures: gnisResults.some(r => isNaturalFeature(r)),
    hasOutdoorRecreation: npsResults.length > 0 || gnisResults.some(r => isRecreationArea(r)),
    suggestsRecreationFacilities: shouldEnableRecreationGov(gnisResults, npsResults),
    geographicRegion: determineRegion(lat, lng),
    keywords: extractKeywords(gnisResults, npsResults)
  };
  
  return context;
}

async function enrichPhotoWithLandmarks(lat: number, lng: number) {
  const context = await analyzePhotoContext(lat, lng);
  
  if (context.suggestsRecreationFacilities) {
    // Only make Recreation.gov API call when contextually valuable
    const recreationData = await recreationProvider.findNearbyLandmarks(lat, lng);
    return combineResults(context.gnisResults, context.npsResults, recreationData);
  }
  
  return combineResults(context.gnisResults, context.npsResults);
}
```

## Benefits

### Cost Optimization
- **Reduced API calls**: Skip Recreation.gov for ~2/3 of photos (house, urban, non-recreation)
- **Smart spending**: Only pay for API calls that add meaningful value
- **Faster processing**: Avoid unnecessary network requests

### Data Quality
- **Rich where it matters**: NH/Maine outdoor photos get full campground/trail data
- **Clean elsewhere**: House photos don't get irrelevant recreation facility noise
- **Contextual relevance**: Landmarks match photo's actual recreational context

### Geographic Intelligence
- **Regional awareness**: Recognize NH mountains, Maine coast as recreation areas
- **Feature correlation**: Mountain + trail = likely camping/hiking area
- **Urban filtering**: Downtown photos skip outdoor recreation providers

## User Story Examples

### Scenario 1: House Photo (Suburban NH)
```
GNIS: "Residential area, small pond nearby"
NPS: No results
Decision: Skip Recreation.gov (no outdoor recreation context)
Result: Basic location data, no irrelevant campground listings
```

### Scenario 2: White Mountains Photo
```
GNIS: "Mount Washington, White Mountain National Forest"
NPS: "White Mountain National Forest boundary"
Decision: Enable Recreation.gov (high outdoor recreation context)
Result: Full data including nearby campgrounds, trails, visitor centers
```

### Scenario 3: Acadia National Park
```
GNIS: "Cadillac Mountain, Thunder Hole"
NPS: "Acadia National Park"
Decision: Enable Recreation.gov (national park context)
Result: Complete recreation infrastructure data
```

## Implementation Priority

This enhancement should be implemented **after** basic enriched metadata generation is working, as it's an optimization layer on top of the core landmark detection system.

## Configuration

```typescript
// Environment variables for fine-tuning
CONTEXTUAL_PROVIDERS_ENABLED=true
RECREATION_GOV_CONTEXT_THRESHOLD=0.7  // Confidence threshold
GEOGRAPHIC_REGION_FILTERING=true
SUBURBAN_FILTER_RADIUS=5000  // Skip recreation.gov within 5km of known residential
```

This strategy transforms landmark detection from a blunt instrument into an intelligent, context-aware system that maximizes value while minimizing costs.