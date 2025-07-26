/**
 * National Parks Service integration for landmark detection
 * Uses NPS API to identify photos taken in national parks, monuments, etc.
 */

import { Logger } from '../../utils/logging/index.js';

export interface NationalParkData {
  id: string;
  name: string;
  fullName: string;
  type: 'National Park' | 'National Monument' | 'National Historic Site' | 'National Recreation Area' | string;
  state: string;
  latitude: number;
  longitude: number;
  description?: string;
  url?: string;
  designation: string;
}

export interface LandmarkMatch {
  landmark: NationalParkData;
  distance: number; // meters from coordinates
  confidence: number; // 0-1 based on distance and landmark size
  source: 'nps_api' | 'nps_boundaries' | 'cached';
  matchType: 'within_boundary' | 'nearby' | 'entrance_area';
}

/**
 * National Parks Service landmark detector
 */
export class NationalParksService {
  private logger = new Logger('National Parks Service');
  private cache = new Map<string, NationalParkData[]>();
  private apiKey?: string;
  private baseUrl = 'https://developer.nps.gov/api/v1';
  
  constructor(apiKey?: string) {
    this.apiKey = apiKey;
    if (!apiKey) {
      this.logger.warn('No NPS API key provided - using cached/bundled data only');
    }
  }
  
  /**
   * Find national parks/monuments near coordinates
   */
  async findNearbyParks(lat: number, lng: number, radiusKm: number = 50): Promise<LandmarkMatch[]> {
    try {
      // First try API if available
      if (this.apiKey) {
        const apiResults = await this.searchParksAPI(lat, lng, radiusKm);
        if (apiResults.length > 0) {
          return apiResults;
        }
      }
      
      // Fallback to bundled data
      return await this.searchBundledParks(lat, lng, radiusKm);
      
    } catch (error) {
      this.logger.warn('National parks lookup failed', { 
        lat, lng, 
        error: (error as Error).message 
      });
      return [];
    }
  }
  
  /**
   * Search parks using NPS API
   */
  private async searchParksAPI(lat: number, lng: number, radiusKm: number): Promise<LandmarkMatch[]> {
    // Note: NPS API doesn't have direct coordinate search, so we'd need to:
    // 1. Get parks by state
    // 2. Calculate distances client-side
    // For now, return empty and use bundled data
    return [];
  }
  
  /**
   * Search using bundled/cached national parks data
   */
  private async searchBundledParks(lat: number, lng: number, radiusKm: number): Promise<LandmarkMatch[]> {
    const parks = await this.getBundledParksData();
    const matches: LandmarkMatch[] = [];
    const maxDistanceMeters = radiusKm * 1000;
    
    for (const park of parks) {
      const distance = this.calculateDistance(lat, lng, park.latitude, park.longitude);
      
      if (distance <= maxDistanceMeters) {
        const confidence = this.calculateParkConfidence(distance, park);
        
        matches.push({
          landmark: park,
          distance: Math.round(distance),
          confidence,
          source: 'cached',
          matchType: distance < 1000 ? 'within_boundary' : 'nearby'
        });
      }
    }
    
    // Sort by distance, return closest matches
    return matches.sort((a, b) => a.distance - b.distance).slice(0, 5);
  }
  
  /**
   * Calculate confidence based on distance and park characteristics
   */
  private calculateParkConfidence(distanceMeters: number, park: NationalParkData): number {
    // Base confidence on distance (closer = higher)
    let confidence = Math.max(0, 1 - (distanceMeters / 50000)); // 50km max
    
    // Boost confidence for major parks
    if (park.type.includes('National Park')) {
      confidence = Math.min(1, confidence * 1.2);
    }
    
    // Boost for very close matches
    if (distanceMeters < 1000) {
      confidence = Math.min(1, confidence * 1.5);
    }
    
    return Math.round(confidence * 100) / 100;
  }
  
  /**
   * Calculate distance between two lat/lng points (Haversine formula)
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
   * Get bundled national parks data (major parks with coordinates)
   */
  private async getBundledParksData(): Promise<NationalParkData[]> {
    // Cache for performance
    const cacheKey = 'us_national_parks';
    if (this.cache.has(cacheKey)) {
      return this.cache.get(cacheKey)!;
    }
    
    // Major US National Parks with coordinates
    // This would ideally be loaded from a more complete dataset
    const parks: NationalParkData[] = [
      // Northeast
      {
        id: 'acad',
        name: 'Acadia',
        fullName: 'Acadia National Park',
        type: 'National Park',
        state: 'ME',
        latitude: 44.35,
        longitude: -68.21,
        designation: 'National Park'
      },
      
      // Southeast  
      {
        id: 'grsm',
        name: 'Great Smoky Mountains',
        fullName: 'Great Smoky Mountains National Park',
        type: 'National Park',
        state: 'TN,NC',
        latitude: 35.65,
        longitude: -83.51,
        designation: 'National Park'
      },
      {
        id: 'ever',
        name: 'Everglades',
        fullName: 'Everglades National Park',
        type: 'National Park',
        state: 'FL',
        latitude: 25.32,
        longitude: -80.93,
        designation: 'National Park'
      },
      
      // West
      {
        id: 'yell',
        name: 'Yellowstone',
        fullName: 'Yellowstone National Park',
        type: 'National Park',
        state: 'WY,MT,ID',
        latitude: 44.60,
        longitude: -110.50,
        designation: 'National Park'
      },
      {
        id: 'grca',
        name: 'Grand Canyon',
        fullName: 'Grand Canyon National Park',
        type: 'National Park',
        state: 'AZ',
        latitude: 36.05,
        longitude: -112.14,
        designation: 'National Park'
      },
      {
        id: 'yose',
        name: 'Yosemite',
        fullName: 'Yosemite National Park',
        type: 'National Park',
        state: 'CA',
        latitude: 37.83,
        longitude: -119.50,
        designation: 'National Park'
      },
      {
        id: 'zion',
        name: 'Zion',
        fullName: 'Zion National Park',
        type: 'National Park',
        state: 'UT',
        latitude: 37.30,
        longitude: -113.05,
        designation: 'National Park'
      },
      {
        id: 'arch',
        name: 'Arches',
        fullName: 'Arches National Park',
        type: 'National Park',
        state: 'UT',
        latitude: 38.73,
        longitude: -109.57,
        designation: 'National Park'
      },
      {
        id: 'romo',
        name: 'Rocky Mountain',
        fullName: 'Rocky Mountain National Park',
        type: 'National Park',
        state: 'CO',
        latitude: 40.34,
        longitude: -105.68,
        designation: 'National Park'
      },
      
      // Additional major landmarks in NH area
      {
        id: 'whmo',
        name: 'White Mountain',
        fullName: 'White Mountain National Forest',
        type: 'National Forest',
        state: 'NH,ME',
        latitude: 44.27,
        longitude: -71.30,
        designation: 'National Forest'
      }
    ];
    
    this.cache.set(cacheKey, parks);
    return parks;
  }
  
  /**
   * Clear cache
   */
  clearCache(): void {
    this.cache.clear();
    this.logger.info('National parks cache cleared');
  }
}