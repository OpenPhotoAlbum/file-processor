/**
 * National Parks Provider - Enhanced for new landmark architecture
 * Detects National Parks, Monuments, Historic Sites, etc.
 */

import { Logger } from '../../../utils/logging/index.js';
import {
  Landmark,
  LandmarkMatch,
  LandmarkProvider,
  LandmarkSearchOptions,
  LandmarkCategory,
  LandmarkSource,
  LandmarkRelationship
} from '../types.js';

/**
 * National Parks Service landmark provider
 */
export class NationalParksProvider implements LandmarkProvider {
  name = 'National Parks Service';
  priority = 1; // High priority for major landmarks
  categories = [
    LandmarkCategory.NATIONAL_PARK,
    LandmarkCategory.NATIONAL_MONUMENT,
    LandmarkCategory.NATIONAL_HISTORIC_SITE,
    LandmarkCategory.NATIONAL_RECREATION_AREA,
    LandmarkCategory.NATIONAL_FOREST
  ];
  
  private logger = new Logger('NPS Provider');
  private cache = new Map<string, Landmark[]>();
  private apiKey?: string;
  private baseUrl = 'https://developer.nps.gov/api/v1';
  
  constructor(apiKey?: string) {
    this.apiKey = apiKey;
    if (!apiKey) {
      this.logger.warn('No NPS API key provided - using bundled data only');
    }
  }
  
  /**
   * Find national parks/monuments near coordinates
   */
  async findNearbyLandmarks(
    lat: number, 
    lng: number, 
    options: LandmarkSearchOptions
  ): Promise<LandmarkMatch[]> {
    try {
      const maxRadius = options.maxRadius || 50000;
      const landmarks = await this.getLandmarks();
      const matches: LandmarkMatch[] = [];
      
      for (const landmark of landmarks) {
        // Skip if category filter doesn't match
        if (options.categories && !options.categories.includes(landmark.category)) {
          continue;
        }
        
        const distance = this.calculateDistance(lat, lng, landmark.latitude, landmark.longitude);
        
        if (distance <= maxRadius) {
          const relationship = this.determineRelationship(distance, landmark);
          const confidence = this.calculateConfidence(distance, landmark, relationship);
          
          // Skip if below confidence threshold
          if (options.minConfidence && confidence < options.minConfidence) {
            continue;
          }
          
          matches.push({
            landmark,
            distance: Math.round(distance),
            confidence,
            relationship,
            source: this.name,
            matchMethod: 'distance_based'
          });
        }
      }
      
      // Sort by distance for this provider
      return matches.sort((a, b) => a.distance - b.distance);
      
    } catch (error) {
      this.logger.warn('NPS landmark search failed', { 
        lat, lng, 
        error: (error as Error).message 
      });
      return [];
    }
  }
  
  /**
   * Get all NPS landmarks (API + bundled data)
   */
  private async getLandmarks(): Promise<Landmark[]> {
    // Try API first if available
    if (this.apiKey) {
      try {
        const apiLandmarks = await this.fetchFromAPI();
        if (apiLandmarks.length > 0) {
          return apiLandmarks;
        }
      } catch (error) {
        this.logger.warn('NPS API failed, falling back to bundled data', {
          error: (error as Error).message
        });
      }
    }
    
    // Fallback to bundled data
    return this.getBundledLandmarks();
  }
  
  /**
   * Fetch landmarks from NPS API
   */
  private async fetchFromAPI(): Promise<Landmark[]> {
    // TODO: Implement NPS API integration
    // The NPS API doesn't have direct coordinate search, so we'd need to:
    // 1. Get all parks
    // 2. Filter by distance client-side
    // For now, return empty to use bundled data
    return [];
  }
  
  /**
   * Get bundled landmark data with expanded coverage
   */
  private getBundledLandmarks(): Promise<Landmark[]> {
    const cacheKey = 'nps_bundled';
    if (this.cache.has(cacheKey)) {
      return Promise.resolve(this.cache.get(cacheKey)!);
    }
    
    // Comprehensive US National Parks and major landmarks
    const landmarks: Landmark[] = [
      // Northeast Region
      {
        id: 'acad',
        name: 'Acadia',
        fullName: 'Acadia National Park',
        category: LandmarkCategory.NATIONAL_PARK,
        state: 'ME',
        latitude: 44.35,
        longitude: -68.21,
        description: 'Rocky coastline, pristine lakes, and rugged mountains',
        established: '1916',
        source: LandmarkSource.NPS_BUNDLED,
        lastUpdated: new Date().toISOString()
      },
      
      // Mid-Atlantic
      {
        id: 'gett',
        name: 'Gettysburg',
        fullName: 'Gettysburg National Military Park',
        category: LandmarkCategory.NATIONAL_HISTORIC_SITE,
        state: 'PA',
        latitude: 39.8309,
        longitude: -77.2311,
        description: 'Site of the pivotal Civil War battle',
        established: '1895',
        source: LandmarkSource.NPS_BUNDLED,
        lastUpdated: new Date().toISOString()
      },
      
      // Southeast
      {
        id: 'grsm',
        name: 'Great Smoky Mountains',
        fullName: 'Great Smoky Mountains National Park',
        category: LandmarkCategory.NATIONAL_PARK,
        state: 'TN,NC',
        latitude: 35.65,
        longitude: -83.51,
        description: 'Ancient mountains, diverse wildlife, preserved Appalachian culture',
        established: '1934',
        source: LandmarkSource.NPS_BUNDLED,
        lastUpdated: new Date().toISOString()
      },
      {
        id: 'ever',
        name: 'Everglades',
        fullName: 'Everglades National Park',
        category: LandmarkCategory.NATIONAL_PARK,
        state: 'FL',
        latitude: 25.32,
        longitude: -80.93,
        description: 'Unique wetland ecosystem, alligators, and diverse bird life',
        established: '1947',
        source: LandmarkSource.NPS_BUNDLED,
        lastUpdated: new Date().toISOString()
      },
      
      // West - Major Parks
      {
        id: 'yell',
        name: 'Yellowstone',
        fullName: 'Yellowstone National Park',
        category: LandmarkCategory.NATIONAL_PARK,
        state: 'WY,MT,ID',
        latitude: 44.60,
        longitude: -110.50,
        description: 'First national park, geysers, hot springs, wildlife',
        established: '1872',
        source: LandmarkSource.NPS_BUNDLED,
        lastUpdated: new Date().toISOString()
      },
      {
        id: 'grca',
        name: 'Grand Canyon',
        fullName: 'Grand Canyon National Park',
        category: LandmarkCategory.NATIONAL_PARK,
        state: 'AZ',
        latitude: 36.05,
        longitude: -112.14,
        description: 'Iconic canyon carved by the Colorado River',
        established: '1919',
        source: LandmarkSource.NPS_BUNDLED,
        lastUpdated: new Date().toISOString()
      },
      {
        id: 'yose',
        name: 'Yosemite',
        fullName: 'Yosemite National Park',
        category: LandmarkCategory.NATIONAL_PARK,
        state: 'CA',
        latitude: 37.83,
        longitude: -119.50,
        description: 'Granite cliffs, waterfalls, giant sequoias',
        established: '1890',
        source: LandmarkSource.NPS_BUNDLED,
        lastUpdated: new Date().toISOString()
      },
      {
        id: 'zion',
        name: 'Zion',
        fullName: 'Zion National Park',
        category: LandmarkCategory.NATIONAL_PARK,
        state: 'UT',
        latitude: 37.30,
        longitude: -113.05,
        description: 'Red sandstone canyons and narrow slot canyons',
        established: '1919',
        source: LandmarkSource.NPS_BUNDLED,
        lastUpdated: new Date().toISOString()
      },
      {
        id: 'arch',
        name: 'Arches',
        fullName: 'Arches National Park',
        category: LandmarkCategory.NATIONAL_PARK,
        state: 'UT',
        latitude: 38.73,
        longitude: -109.57,
        description: 'Over 2,000 natural stone arches',
        established: '1971',
        source: LandmarkSource.NPS_BUNDLED,
        lastUpdated: new Date().toISOString()
      },
      {
        id: 'romo',
        name: 'Rocky Mountain',
        fullName: 'Rocky Mountain National Park',
        category: LandmarkCategory.NATIONAL_PARK,
        state: 'CO',
        latitude: 40.34,
        longitude: -105.68,
        description: 'Alpine lakes, mountain peaks, and diverse ecosystems',
        established: '1915',
        source: LandmarkSource.NPS_BUNDLED,
        lastUpdated: new Date().toISOString()
      },
      
      // National Forests (relevant to NH area)
      {
        id: 'whmo',
        name: 'White Mountain',
        fullName: 'White Mountain National Forest',
        category: LandmarkCategory.NATIONAL_FOREST,
        state: 'NH,ME',
        latitude: 44.27,
        longitude: -71.30,
        description: 'New England mountains, hiking trails, fall foliage',
        established: '1918',
        source: LandmarkSource.NPS_BUNDLED,
        lastUpdated: new Date().toISOString()
      },
      
      // National Monuments
      {
        id: 'stli',
        name: 'Statue of Liberty',
        fullName: 'Statue of Liberty National Monument',
        category: LandmarkCategory.NATIONAL_MONUMENT,
        state: 'NY',
        latitude: 40.6892,
        longitude: -74.0445,
        description: 'Symbol of freedom and democracy',
        established: '1924',
        source: LandmarkSource.NPS_BUNDLED,
        lastUpdated: new Date().toISOString()
      },
      {
        id: 'moru',
        name: 'Mount Rushmore',
        fullName: 'Mount Rushmore National Memorial',
        category: LandmarkCategory.NATIONAL_MONUMENT,
        state: 'SD',
        latitude: 43.8791,
        longitude: -103.4591,
        description: 'Presidential faces carved in granite',
        established: '1925',
        source: LandmarkSource.NPS_BUNDLED,
        lastUpdated: new Date().toISOString()
      },
      
      // Additional major parks by region
      {
        id: 'deva',
        name: 'Death Valley',
        fullName: 'Death Valley National Park',
        category: LandmarkCategory.NATIONAL_PARK,
        state: 'CA,NV',
        latitude: 36.5054,
        longitude: -117.0794,
        description: 'Lowest, hottest, driest place in North America',
        established: '1994',
        source: LandmarkSource.NPS_BUNDLED,
        lastUpdated: new Date().toISOString()
      },
      {
        id: 'jotr',
        name: 'Joshua Tree',
        fullName: 'Joshua Tree National Park',
        category: LandmarkCategory.NATIONAL_PARK,
        state: 'CA',
        latitude: 33.8734,
        longitude: -115.9010,
        description: 'Desert landscapes and unique Joshua trees',
        established: '1994',
        source: LandmarkSource.NPS_BUNDLED,
        lastUpdated: new Date().toISOString()
      },
      {
        id: 'glac',
        name: 'Glacier',
        fullName: 'Glacier National Park',
        category: LandmarkCategory.NATIONAL_PARK,
        state: 'MT',
        latitude: 48.7596,
        longitude: -113.7870,
        description: 'Crown of the Continent, pristine wilderness',
        established: '1910',
        source: LandmarkSource.NPS_BUNDLED,
        lastUpdated: new Date().toISOString()
      }
    ];
    
    this.cache.set(cacheKey, landmarks);
    return Promise.resolve(landmarks);
  }
  
  /**
   * Determine relationship between coordinates and landmark
   */
  private determineRelationship(distance: number, landmark: Landmark): LandmarkRelationship {
    // These would ideally use actual boundary data
    if (distance < 1000) {
      return LandmarkRelationship.WITHIN_BOUNDARY;
    } else if (distance < 2000) {
      return LandmarkRelationship.AT_ENTRANCE;  
    } else if (distance < 10000) {
      return LandmarkRelationship.NEARBY;
    } else {
      return LandmarkRelationship.VISIBLE_FROM;
    }
  }
  
  /**
   * Calculate confidence for NPS landmarks
   */
  private calculateConfidence(
    distance: number, 
    landmark: Landmark, 
    relationship: LandmarkRelationship
  ): number {
    let confidence = 1.0;
    
    // Base confidence on relationship
    switch (relationship) {
      case LandmarkRelationship.WITHIN_BOUNDARY:
        confidence = 1.0;
        break;
      case LandmarkRelationship.AT_ENTRANCE:
        confidence = 0.9;
        break;
      case LandmarkRelationship.NEARBY:
        confidence = Math.max(0.4, 1 - (distance / 10000));
        break;
      case LandmarkRelationship.VISIBLE_FROM:
        confidence = Math.max(0.2, 1 - (distance / 50000));
        break;
      default:
        confidence = 0.3;
    }
    
    // Boost for major landmarks
    if (landmark.category === LandmarkCategory.NATIONAL_PARK) {
      confidence *= 1.2;
    }
    if (landmark.name === 'Yellowstone' || landmark.name === 'Grand Canyon' || landmark.name === 'Yosemite') {
      confidence *= 1.1; // Iconic parks get extra boost
    }
    
    return Math.min(1.0, Math.round(confidence * 100) / 100);
  }
  
  /**
   * Calculate distance using Haversine formula
   */
  private calculateDistance(lat1: number, lng1: number, lat2: number, lng2: number): number {
    const R = 6371000; // Earth's radius in meters
    const dLat = this.toRadians(lat2 - lat1);
    const dLng = this.toRadians(lng2 - lng1);
    
    const a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
      Math.cos(this.toRadians(lat1)) * Math.cos(this.toRadians(lat2)) *
      Math.sin(dLng / 2) * Math.sin(dLng / 2);
    
    const c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
    return R * c;
  }
  
  private toRadians(degrees: number): number {
    return degrees * (Math.PI / 180);
  }
  
  /**
   * Clear provider cache
   */
  clearCache(): void {
    this.cache.clear();
    this.logger.info('NPS provider cache cleared');
  }
}