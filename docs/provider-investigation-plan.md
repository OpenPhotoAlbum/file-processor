# Geographic Provider Investigation Plan

## Overview

Investigation plan for integrating three high-value geographic data providers into our existing landmark detection system. Each provider offers unique value and follows our established provider pattern.

## 🏕️ **Recreation.gov API Provider**

### **Value Proposition**
- **100,000+ recreation sites** across federal lands
- **Rich facility data**: Campgrounds, day-use areas, visitor centers, boat launches
- **Activity-specific information**: Hiking, fishing, boating, camping availability
- **Real-time data**: Availability, seasonal closures, facility status

### **Investigation Steps**

#### Phase 1: API Research & Access (Week 1)
- [ ] **Documentation Review**
  - [ ] Study Recreation.gov API documentation at `https://www.recreation.gov/use-our-data`
  - [ ] Review RIDB (Recreation Information Database) API structure
  - [ ] Check authentication requirements and rate limits
  - [ ] Identify available endpoints for facility/location data

- [ ] **Data Structure Analysis**
  - [ ] Map API response format to our Landmark interface
  - [ ] Identify relevant facility types for photo contexts
  - [ ] Determine geographic coverage and data quality
  - [ ] Check coordinate system compatibility (WGS84/SRID 4326)

#### Phase 2: Technical Integration (Week 2)
- [ ] **Provider Implementation**
  - [ ] Create `RecreationProvider` following existing pattern
  - [ ] Implement spatial queries using lat/lng + radius
  - [ ] Map facility types to landmark categories (campground, day_use_area, visitor_center)
  - [ ] Add confidence scoring based on distance and facility type

- [ ] **New Categories**
  ```typescript
  enum LandmarkCategory {
    CAMPGROUND = 'campground',
    DAY_USE_AREA = 'day_use_area', 
    VISITOR_CENTER = 'visitor_center',
    BOAT_LAUNCH = 'boat_launch',
    PICNIC_AREA = 'picnic_area',
    TRAILHEAD = 'trailhead'
  }
  ```

#### Phase 3: Testing & Validation (Week 3)
- [ ] **Sample Location Testing**
  - [ ] Test against known recreation areas (White Mountains, Acadia, etc.)
  - [ ] Validate with existing sample photos
  - [ ] Check for overlaps with National Parks data
  - [ ] Ensure facility-level granularity works correctly

---

## 🚵 **Trailforks API Provider**

### **Value Proposition**
- **MTB-specific trail data** with technical ratings and features
- **Rich metadata**: Difficulty, surface type, seasonal access, maintenance status
- **Photo context enhancement**: Perfect for mountain biking photos
- **Trail conditions**: Current status, recent updates from community

### **Investigation Steps**

#### Phase 1: API Access & Approval (Week 1)
- [ ] **Application Process**
  - [ ] Submit Trailforks API access request at `https://www.trailforks.com/about/api/`
  - [ ] **Justification Strategy**: "Media processing pipeline for outdoor photography organization and geotagging"
  - [ ] **Community benefit angle**: "Enhanced trail discovery through photo location context"
  - [ ] **Non-competitive positioning**: "Complementary service, not competing trail app"

- [ ] **Requirements Documentation**
  - [ ] Detail our existing landmark detection system
  - [ ] Explain integration with GNIS and National Parks data
  - [ ] Provide sample use cases and photo enhancement examples
  - [ ] Offer to share aggregated insights back to Trailforks community

#### Phase 2: Technical Evaluation (Week 2) 
- [ ] **API Capabilities Assessment**
  - [ ] Review OAuth2 integration requirements
  - [ ] Study available endpoints and data structures
  - [ ] Check rate limits and usage restrictions
  - [ ] Evaluate geographic coverage (global vs. regional)

- [ ] **MTB Trail Categories**
  ```typescript
  enum LandmarkCategory {
    MTB_TRAIL = 'mtb_trail',
    HIKING_TRAIL = 'hiking_trail', 
    BIKE_PARK = 'bike_park',
    JUMP_LINE = 'jump_line',
    FLOW_TRAIL = 'flow_trail',
    TECHNICAL_TRAIL = 'technical_trail'
  }
  ```

#### Phase 3: Integration Planning (Week 3)
- [ ] **Provider Design**
  - [ ] Design `TrailforksProvider` with OAuth2 handling
  - [ ] Plan trail difficulty mapping (Green/Blue/Black → confidence levels)
  - [ ] Define trail feature detection (jumps, berms, technical sections)
  - [ ] Consider seasonal/conditions data integration

---

## 🏛️ **National Register of Historic Places Provider**

### **Value Proposition**  
- **1.4+ million historic resources** with official federal data
- **Rich historical context**: Construction dates, architectural styles, significance
- **Comprehensive coverage**: Buildings, sites, districts, structures, objects
- **High data quality**: Officially maintained by National Park Service

### **Investigation Steps**

#### Phase 1: NPS MapServer Integration (Week 1)
- [ ] **API Endpoint Analysis**
  - [ ] Test NPS MapServer at `https://mapservices.nps.gov/arcgis/rest/services/cultural_resources/nrhp_locations/MapServer`
  - [ ] Study ArcGIS REST API query capabilities
  - [ ] Check spatial query support (lat/lng + distance)
  - [ ] Evaluate response format and available attributes

- [ ] **Data Quality Assessment**
  - [ ] Test coordinate accuracy (noted issues with transcription errors)
  - [ ] Validate point vs. polygon representations (<10 acres = points)
  - [ ] Check coverage completeness and data freshness
  - [ ] Identify excluded sensitive/restricted sites

#### Phase 2: Historical Categories (Week 2)
- [ ] **Category Mapping**
  ```typescript
  enum LandmarkCategory {
    HISTORIC_BUILDING = 'historic_building',
    HISTORIC_DISTRICT = 'historic_district', 
    HISTORIC_STRUCTURE = 'historic_structure',
    HISTORIC_SITE = 'historic_site',
    HISTORIC_OBJECT = 'historic_object',
    ARCHAEOLOGICAL_SITE = 'archaeological_site'
  }
  ```

- [ ] **Metadata Enhancement**
  - [ ] Map construction dates and architectural periods
  - [ ] Include NRHP registration dates and criteria
  - [ ] Add historical significance levels
  - [ ] Integrate architect/builder information where available

#### Phase 3: Integration & Testing (Week 3)
- [ ] **Provider Implementation**
  - [ ] Create `HistoricSitesProvider` with ArcGIS REST queries
  - [ ] Implement confidence scoring based on significance and proximity
  - [ ] Handle both point and polygon geometries correctly
  - [ ] Add historical context to landmark descriptions

---

## 🎯 **Unified Implementation Strategy**

### **Phase 1: Research & Planning (3 weeks parallel)**
All three providers investigated simultaneously to understand:
- API access requirements and restrictions
- Data quality and coverage 
- Integration complexity and effort required
- Expected value for photo context enhancement

### **Phase 2: Provider Selection & Prioritization**
Based on investigation results:
1. **Immediate implementation**: Providers with straightforward API access
2. **Conditional implementation**: Trailforks pending approval
3. **Fallback options**: Alternative trail data sources if needed

### **Phase 3: Technical Integration**
- [ ] **Database Schema Updates**
  - [ ] Add new landmark categories to types.ts
  - [ ] Extend Landmark interface for provider-specific fields
  - [ ] Update confidence scoring algorithms

- [ ] **Provider Registration**
  ```typescript
  // In landmark factory
  providers.push(new RecreationProvider(db));
  providers.push(new HistoricSitesProvider()); 
  if (trailforksApproved) {
    providers.push(new TrailforksProvider(oauth));
  }
  ```

- [ ] **Testing Enhancement**
  - [ ] Update CLI test mocks with new landmark types
  - [ ] Add coverage for recreation sites and historic places
  - [ ] Verify no performance degradation with additional providers

### **Phase 4: Documentation & Examples**
- [ ] **Enhanced JSON Output Examples**
  ```json
  {
    "landmarks": [
      {
        "name": "Franconia Notch State Park Campground",
        "category": "campground", 
        "provider": "Recreation.gov",
        "facilities": ["restrooms", "showers", "picnic_tables"],
        "availability": "seasonal_may_october"
      },
      {
        "name": "Cannon Mountain Ski Trail",
        "category": "mtb_trail",
        "provider": "Trailforks", 
        "difficulty": "blue_intermediate",
        "trail_features": ["berms", "flow_sections"],
        "conditions": "good_recent_maintenance"
      },
      {
        "name": "Mount Washington Hotel",
        "category": "historic_building",
        "provider": "NRHP",
        "built_year": 1902,
        "architectural_style": "Colonial Revival",
        "nrhp_date": "1978-11-07"
      }
    ]
  }
  ```

## 📊 **Success Metrics**

- **Coverage Enhancement**: Increase landmark detection rate by 50%+
- **Context Richness**: Add facility, historical, and trail-specific metadata
- **Photo Value**: Better identify recreation activities and historical contexts
- **Geographic Breadth**: Expand beyond natural features to human activities

## 🚀 **Next Steps**

1. **Week 1**: Begin parallel investigation of all three providers
2. **Trailforks Application**: Submit API access request immediately (longest lead time)
3. **Recreation.gov**: Start with documentation review and test queries
4. **Historic Places**: Test NPS MapServer API responses and data quality

Would you like me to start with any specific provider investigation, or shall we begin with documenting our approach to the Trailforks API application?