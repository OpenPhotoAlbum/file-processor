# Custom Location Rules and Personal Landmarks Plan

## Overview
Implement a system to automatically assign meaningful, personalized location names when photos are taken within specified distances of predefined coordinates. Replace generic municipal locations like "Plaistow, NH" with custom labels like "Home", "Work", or "Family Cabin" for a more personal and meaningful photo organization experience.

## Context from Current Architecture

### Existing Location System ✅
- **LocationService** - Stores GPS coordinates and geolocation data in database
- **LandmarkService** - Multi-provider landmark detection (GNIS, Recreation.gov, NPS)
- **Geolocation enrichment** - Municipal boundary detection for city/state/country
- **Database schema** - Normalized location storage with foreign keys

### Current Location Processing Flow ✅
```
GPS Coordinates → Geolocation Service → Municipal Boundaries → Landmark Providers → Database Storage
```

### Missing Capability 🎯
- **Personal landmark override** - No way to define custom location names
- **Proximity detection** - No system to check if coordinates fall within custom zones
- **Priority handling** - No way to prioritize personal landmarks over municipal data

## Requirements and User Experience

### Core Functionality

#### Personal Landmark Definition
```javascript
// Define custom locations with meaningful names
const personalLandmarks = [
  {
    name: "Home",
    description: "Family residence",
    coordinates: { lat: 42.8334, lng: -71.1976 },
    radiusMeters: 100,
    priority: 10, // Higher priority overrides municipal data
    icon: "home",
    private: true // Don't include in search results
  },
  {
    name: "Work - Main Office",
    description: "Corporate headquarters",
    coordinates: { lat: 42.3601, lng: -71.0589 },
    radiusMeters: 50,
    priority: 9,
    icon: "briefcase",
    private: false
  },
  {
    name: "Family Cabin",
    description: "Weekend retreat in Vermont",
    coordinates: { lat: 44.2619, lng: -72.5806 },
    radiusMeters: 200,
    priority: 8,
    icon: "cabin",
    private: false
  }
];
```

#### Location Resolution Priority
1. **Personal Landmarks** (highest priority) - Custom defined locations
2. **Recreation.gov Facilities** - Campgrounds, trailheads, visitor centers
3. **GNIS Natural Features** - Mountains, lakes, natural landmarks
4. **National Parks Service** - Parks, monuments, historic sites
5. **Municipal Boundaries** (lowest priority) - City, state, country

#### User Experience Examples
```
Before: "Photo taken in Plaistow, NH"
After: "Photo taken at Home"

Before: "Photo taken in Boston, MA"
After: "Photo taken at Work - Main Office"

Before: "Photo taken in Woodstock, VT"
After: "Photo taken at Family Cabin"
```

### CLI Integration

#### Personal Landmark Management
```bash
# List all personal landmarks
media-processor landmarks list

# Add new personal landmark from current photo location
media-processor landmarks add --name "Coffee Shop" --radius 25 --from-photo sample:cafe.jpg

# Add landmark with specific coordinates
media-processor landmarks add --name "Gym" --lat 42.3736 --lng -71.1097 --radius 30

# Edit existing landmark
media-processor landmarks edit "Home" --radius 150 --description "Updated radius"

# Remove landmark
media-processor landmarks remove "Old Workplace"

# Export landmarks to file
media-processor landmarks export --format json -o my-landmarks.json

# Import landmarks from file
media-processor landmarks import my-landmarks.json
```

#### Processing with Personal Landmarks
```bash
# Process photos with personal landmark detection enabled (default)
media-processor -f photo.jpg --output-db

# Disable personal landmarks (use only public landmarks)
media-processor -f photo.jpg --output-db --no-personal-landmarks

# Show what personal landmarks would be detected without processing
media-processor landmarks preview -f photo.jpg
```

### Search Integration

#### Personal Landmark Searches
Extend the planned search feature to support personal landmarks:

```bash
# Find photos at personal landmarks
media-processor search --personal-landmark "Home"
media-processor search --personal-landmark "Family Cabin"

# Find photos at any personal landmark
media-processor search --personal-landmark

# Exclude personal landmarks from search
media-processor search --location "Boston" --personal-landmark NONE

# Combine with other search criteria
media-processor search --date "2023-12-25" --personal-landmark "Family Cabin"
```

## Implementation Architecture

### 1. Personal Landmark Storage System

#### Database Schema Extension
```sql
-- Create personal_landmarks table
CREATE TABLE personal_landmarks (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(128) NOT NULL UNIQUE,
  description TEXT,
  latitude DECIMAL(10, 7) NOT NULL,
  longitude DECIMAL(11, 7) NOT NULL,
  radius_meters INT NOT NULL DEFAULT 100,
  priority INT NOT NULL DEFAULT 5,
  icon VARCHAR(32) DEFAULT 'pin',
  is_private BOOLEAN DEFAULT false,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  
  INDEX idx_coordinates (latitude, longitude),
  INDEX idx_priority (priority DESC)
);

-- Add personal landmark tracking to media_locations
ALTER TABLE media_locations 
ADD COLUMN personal_landmark_id BIGINT,
ADD FOREIGN KEY (personal_landmark_id) REFERENCES personal_landmarks(id);
```

#### Configuration Management
```typescript
// src/services/landmarks/personal-landmarks-config.ts
interface PersonalLandmarkConfig {
  enabled: boolean;
  configFile?: string; // Optional file-based config
  defaultRadius: number;
  maxRadius: number;
  minRadius: number;
  allowPrivate: boolean;
}
```

### 2. Personal Landmark Provider

#### Service Implementation
```typescript
// src/services/landmarks/providers/personal-landmarks.ts
export class PersonalLandmarkProvider implements LandmarkProvider {
  name = 'personal-landmarks';
  priority = 1; // Highest priority - overrides all other providers
  categories = [LandmarkCategory.PERSONAL];

  async findNearbyLandmarks(
    lat: number, 
    lng: number, 
    options: LandmarkSearchOptions
  ): Promise<LandmarkMatch[]> {
    // 1. Query personal_landmarks table for proximity matches
    const matches = await this.findByProximity(lat, lng, options.maxRadius);
    
    // 2. Calculate exact distances and filter by radius
    const filtered = matches.filter(match => {
      const distance = this.calculateDistance(lat, lng, match.latitude, match.longitude);
      return distance <= match.radius_meters;
    });
    
    // 3. Return matches sorted by priority, then distance
    return filtered
      .map(landmark => this.createLandmarkMatch(landmark, lat, lng))
      .sort((a, b) => b.landmark.priority - a.landmark.priority || a.distance - b.distance);
  }

  private async findByProximity(lat: number, lng: number, maxRadius: number) {
    // Use spatial query for efficient proximity search
    return this.db('personal_landmarks')
      .whereRaw(`
        ST_Distance_Sphere(
          POINT(longitude, latitude),
          POINT(?, ?)
        ) <= GREATEST(radius_meters, ?)
      `, [lng, lat, maxRadius])
      .orderBy('priority', 'desc');
  }
}
```

### 3. Location Resolution Engine

#### Enhanced Location Service
```typescript
// src/services/database/LocationService.ts - Enhanced
export class LocationService {
  async resolveLocationWithPersonalLandmarks(
    mediaFileId: number, 
    gpsData: GPSData,
    options: LocationResolutionOptions
  ): Promise<LocationResolution> {
    
    const providers = [
      new PersonalLandmarkProvider(),    // Priority 1 - Personal landmarks
      new RecreationProvider(),          // Priority 2 - Recreation.gov
      new GnisProvider(),               // Priority 3 - Natural features
      new NationalParksProvider(),      // Priority 4 - National parks
      new MunicipalBoundaryProvider()   // Priority 5 - City/state/country
    ];

    let bestMatch: LandmarkMatch | null = null;
    const allMatches: LandmarkMatch[] = [];

    for (const provider of providers) {
      if (!provider.isEnabled(options)) continue;

      try {
        const matches = await provider.findNearbyLandmarks(
          gpsData.latitude, 
          gpsData.longitude, 
          options
        );

        allMatches.push(...matches);

        // Take first match from highest priority provider
        if (!bestMatch && matches.length > 0) {
          bestMatch = matches[0];
        }
      } catch (error) {
        logger.warn(`Provider ${provider.name} failed`, { error: error.message });
      }
    }

    return {
      primaryLocation: bestMatch,
      alternativeLocations: allMatches,
      resolution: bestMatch ? 'personal_landmark' : 'municipal_boundary',
      confidence: bestMatch?.confidence || 0.5
    };
  }
}
```

### 4. CLI Implementation

#### Personal Landmarks Command
```typescript
// src/cli/commands/landmarks.ts
import { Command } from 'commander';
import { PersonalLandmarkService } from '../services/personal-landmarks.js';

export function createLandmarksCommand(): Command {
  const cmd = new Command('landmarks');
  cmd.description('Manage personal landmarks');

  // List command
  cmd.command('list')
    .option('--private', 'include private landmarks')
    .option('--json', 'output as JSON')
    .action(async (options) => {
      const service = new PersonalLandmarkService();
      const landmarks = await service.list(options);
      
      if (options.json) {
        console.log(JSON.stringify(landmarks, null, 2));
      } else {
        landmarks.forEach(landmark => {
          console.log(`${landmark.name} (${landmark.radius_meters}m radius)`);
          console.log(`  Location: ${landmark.latitude}, ${landmark.longitude}`);
          if (landmark.description) {
            console.log(`  Description: ${landmark.description}`);
          }
          console.log('');
        });
      }
    });

  // Add command
  cmd.command('add')
    .requiredOption('--name <name>', 'landmark name')
    .option('--lat <latitude>', 'latitude coordinate')
    .option('--lng <longitude>', 'longitude coordinate')
    .option('--from-photo <path>', 'extract coordinates from photo')
    .option('--radius <meters>', 'detection radius in meters', '100')
    .option('--description <text>', 'landmark description')
    .option('--private', 'mark as private landmark')
    .action(async (options) => {
      const service = new PersonalLandmarkService();
      
      let coordinates;
      if (options.fromPhoto) {
        coordinates = await service.extractCoordinatesFromPhoto(options.fromPhoto);
      } else if (options.lat && options.lng) {
        coordinates = { lat: parseFloat(options.lat), lng: parseFloat(options.lng) };
      } else {
        throw new Error('Must provide either --lat/--lng or --from-photo');
      }

      const landmark = await service.create({
        name: options.name,
        latitude: coordinates.lat,
        longitude: coordinates.lng,
        radiusMeters: parseInt(options.radius),
        description: options.description,
        isPrivate: options.private || false
      });

      console.log(`✅ Created personal landmark: ${landmark.name}`);
      console.log(`   Location: ${landmark.latitude}, ${landmark.longitude}`);
      console.log(`   Radius: ${landmark.radiusMeters}m`);
    });

  // Preview command
  cmd.command('preview')
    .option('-f, --files <files...>', 'photo files to preview')
    .action(async (options) => {
      const service = new PersonalLandmarkService();
      
      for (const filePath of options.files || []) {
        const matches = await service.previewMatches(filePath);
        console.log(`\n📍 ${filePath}:`);
        
        if (matches.length === 0) {
          console.log('  No personal landmarks detected');
        } else {
          matches.forEach(match => {
            console.log(`  ✓ ${match.landmark.name} (${Math.round(match.distance)}m away)`);
          });
        }
      }
    });

  return cmd;
}
```

## Implementation Phases

### Phase 1: Core Infrastructure (Weeks 1-2)
1. **Database Schema**
   - Create `personal_landmarks` table
   - Add foreign key to `media_locations`
   - Create spatial indexes for proximity queries

2. **Personal Landmark Provider**
   - Implement `PersonalLandmarkProvider` class
   - Add to landmark provider registry with highest priority
   - Implement proximity detection with configurable radius

3. **Basic CLI Management**
   - Create `landmarks` CLI command group
   - Implement `add`, `list`, `remove` commands
   - Basic personal landmark CRUD operations

**Success Criteria:**
- Can create and manage personal landmarks via CLI
- Personal landmarks are detected during photo processing
- Database integration working with proper foreign keys

### Phase 2: Location Resolution Enhancement (Weeks 3-4)
1. **Priority-Based Resolution**
   - Enhance LocationService with provider priority system
   - Implement cascading location resolution logic
   - Handle conflicts between personal and public landmarks

2. **Advanced CLI Features**
   - Add `preview` command to show potential matches
   - Implement `edit` command for landmark updates
   - Add `from-photo` coordinate extraction

3. **Configuration System**
   - File-based configuration support
   - Environment variable integration
   - Import/export functionality

**Success Criteria:**
- Personal landmarks override municipal boundary detection
- Provider priority system working correctly
- Configuration management fully functional

### Phase 3: Search Integration (Weeks 5-6)
1. **Search Command Extension**
   - Add `--personal-landmark` parameter to planned search feature
   - Implement personal landmark filtering and exclusion
   - Support for private landmark handling in search

2. **Advanced Features**
   - Landmark tagging system for organization
   - Bulk operations for landmark management
   - Validation and conflict detection

3. **User Experience Polish**
   - Improved CLI output formatting
   - Better error messages and validation
   - Help text and usage examples

**Success Criteria:**
- Search integration working with personal landmarks
- Advanced landmark management features operational
- Excellent user experience for landmark operations

### Phase 4: Production Features (Weeks 7-8)
1. **Performance Optimization**
   - Spatial indexing optimization for large landmark sets
   - Caching for frequently accessed landmarks
   - Batch processing efficiency

2. **Import/Export System**
   - Support for multiple configuration formats (JSON, YAML, CSV)
   - Backup and restore functionality
   - Migration tools for existing location data

3. **Integration Testing**
   - End-to-end testing with real photo collections
   - Performance testing with large landmark sets
   - Compatibility testing with existing location data

**Success Criteria:**
- Production-ready performance for large photo collections
- Comprehensive import/export capabilities
- Full integration with existing media processing pipeline

## Configuration & Environment

### Environment Variables
```bash
# Personal landmarks configuration
PERSONAL_LANDMARKS_ENABLED=true
PERSONAL_LANDMARKS_CONFIG_FILE=~/.config/media-processor/personal-landmarks.json
PERSONAL_LANDMARKS_DEFAULT_RADIUS=100
PERSONAL_LANDMARKS_MAX_RADIUS=1000
PERSONAL_LANDMARKS_ALLOW_PRIVATE=true
```

### File-Based Configuration
```json
// ~/.config/media-processor/personal-landmarks.json
{
  "version": "1.0",
  "enabled": true,
  "landmarks": [
    {
      "name": "Home",
      "description": "Family residence",
      "latitude": 42.8334,
      "longitude": -71.1976,
      "radiusMeters": 100,
      "priority": 10,
      "icon": "home",
      "private": true,
      "tags": ["family", "residential"]
    },
    {
      "name": "Work - Main Office",
      "description": "Corporate headquarters downtown",
      "latitude": 42.3601,
      "longitude": -71.0589,
      "radiusMeters": 50,
      "priority": 9,
      "icon": "briefcase",
      "private": false,
      "tags": ["work", "office"]
    }
  ]
}
```

## Testing Strategy

### Unit Tests
```typescript
// Test personal landmark detection
describe('PersonalLandmarkProvider', () => {
  test('detects landmark within radius', async () => {
    const provider = new PersonalLandmarkProvider();
    await provider.addLandmark({
      name: 'Test Home',
      latitude: 42.3601,
      longitude: -71.0589,
      radiusMeters: 100
    });

    const matches = await provider.findNearbyLandmarks(
      42.3601, -71.0589, // Exact coordinates
      { maxRadius: 1000 }
    );

    expect(matches).toHaveLength(1);
    expect(matches[0].landmark.name).toBe('Test Home');
    expect(matches[0].distance).toBeLessThan(1); // Nearly zero distance
  });

  test('respects radius boundaries', async () => {
    const provider = new PersonalLandmarkProvider();
    await provider.addLandmark({
      name: 'Test Location',
      latitude: 42.3601,
      longitude: -71.0589,
      radiusMeters: 50
    });

    // Test just outside radius
    const matches = await provider.findNearbyLandmarks(
      42.3610, -71.0589, // ~100m away
      { maxRadius: 1000 }
    );

    expect(matches).toHaveLength(0);
  });
});
```

### Integration Tests
```typescript
// Test end-to-end location resolution
describe('Location Resolution with Personal Landmarks', () => {
  test('personal landmark overrides municipal boundary', async () => {
    // Setup personal landmark
    await personalLandmarkService.create({
      name: 'Test Home',
      latitude: 42.3601,
      longitude: -71.0589,
      radiusMeters: 100
    });

    // Process photo with GPS near personal landmark
    const result = await processMediaFile({
      path: 'test-photo.jpg',
      gps: { latitude: 42.3601, longitude: -71.0589 }
    });

    expect(result.location.primaryLocation).toBe('Test Home');
    expect(result.location.source).toBe('personal_landmark');
  });
});
```

## Success Criteria

1. ✅ **Personal Landmark Creation**: Can define custom landmarks with coordinates and radius
2. ✅ **Automatic Detection**: Photos automatically labeled with personal landmark names
3. ✅ **Priority Override**: Personal landmarks take precedence over municipal boundaries
4. ✅ **CLI Management**: Full CRUD operations for landmarks via command line
5. ✅ **Search Integration**: Can search photos by personal landmark names
6. ✅ **Configuration**: File-based and environment variable configuration support
7. ✅ **Performance**: Fast proximity detection for large photo collections
8. ✅ **Privacy**: Support for private landmarks excluded from search results

## Future Enhancements

1. **Advanced Features**
   - Geofencing with polygon boundaries instead of simple radius
   - Time-based landmarks (work hours vs weekend locations)
   - Hierarchical landmarks (building > floor > room)
   - Automatic landmark suggestions based on photo frequency

2. **Social Features**
   - Shareable landmark collections
   - Community landmark database
   - Landmark ratings and reviews
   - Import landmarks from friends/family

3. **Smart Detection**
   - Machine learning for landmark suggestion
   - Activity-based landmark categorization
   - Seasonal landmark detection (summer cabin, winter ski lodge)
   - Travel mode detection (business vs vacation landmarks)

4. **Integration Enhancements**
   - Mobile app landmark management
   - Map-based landmark editing interface
   - Import from GPS devices and apps
   - Integration with calendar/travel apps