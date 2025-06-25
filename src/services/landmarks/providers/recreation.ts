/**
 * Recreation.gov Provider - Federal Recreation Facilities
 * 
 * Integrates with the Recreation Information Database (RIDB) API to provide
 * comprehensive information about federal recreation facilities including
 * campgrounds, visitor centers, day-use areas, and other amenities.
 */

import {
  LandmarkProvider,
  LandmarkMatch,
  Landmark,
  LandmarkCategory,
  LandmarkSource,
  LandmarkRelationship,
  LandmarkSearchOptions
} from '../types.js';
import { Logger } from '../../../utils/logging/index.js';

interface RecreationFacility {
  FacilityID: string;
  FacilityName: string;
  FacilityTypeDescription: string;
  FacilityLatitude: number;
  FacilityLongitude: number;
  FacilityDescription?: string;
  FacilityDirections?: string;
  FacilityPhone?: string;
  FacilityEmail?: string;
  FacilityReservationURL?: string;
  FacilityAdaAccess?: string;
  StayLimit?: string;
  Keywords?: string;
  LastUpdatedDate?: string;
}

interface RecreationApiResponse {
  METADATA: {
    RESULTS: {
      CURRENT_COUNT: number;
      TOTAL_COUNT: number;
    };
  };
  RECDATA: RecreationFacility[];
}

export class RecreationProvider implements LandmarkProvider {
  public readonly name = 'Recreation.gov';
  public readonly priority = 3; // After National Parks (1) and GNIS (2)
  public readonly categories = [
    LandmarkCategory.VISITOR_CENTER,
    LandmarkCategory.NATURE_CENTER,
    LandmarkCategory.CAMPGROUND,
    LandmarkCategory.DAY_USE_AREA,
    LandmarkCategory.BOAT_LAUNCH,
    LandmarkCategory.PICNIC_AREA,
    LandmarkCategory.TRAILHEAD,
    LandmarkCategory.RECREATION_FACILITY
  ];

  private readonly logger: Logger;
  private readonly apiKey: string;
  private readonly baseUrl = 'https://ridb.recreation.gov/api/v1';

  constructor(apiKey: string) {
    this.logger = new Logger('Recreation Provider');
    this.apiKey = apiKey;
    
    if (!this.apiKey) {
      this.logger.warn('No Recreation.gov API key provided - provider disabled');
    }
  }

  async findNearbyLandmarks(
    lat: number, 
    lng: number, 
    options: LandmarkSearchOptions = {}
  ): Promise<LandmarkMatch[]> {
    if (!this.apiKey) {
      this.logger.warn('Recreation.gov API key not configured');
      return [];
    }

    const maxRadius = Math.min(options.maxRadius || 50000, 50000) / 1000; // Convert to km, max 50km
    const maxResults = options.maxResults || 10;

    try {
      this.logger.debug(`Searching Recreation.gov facilities near ${lat}, ${lng} within ${maxRadius}km`);

      const url = `${this.baseUrl}/facilities?latitude=${lat}&longitude=${lng}&radius=${maxRadius}&limit=${maxResults}`;
      
      const response = await fetch(url, {
        headers: {
          'accept': 'application/json',
          'apikey': this.apiKey
        }
      });

      if (!response.ok) {
        throw new Error(`Recreation.gov API error: ${response.status} ${response.statusText}`);
      }

      const data = await response.json() as RecreationApiResponse;
      
      this.logger.debug(`Found ${data.RECDATA.length} recreation facilities`);

      const matches = data.RECDATA.map(facility => this.mapFacilityToLandmark(facility, lat, lng));
      
      // Filter by confidence threshold
      const minConfidence = options.minConfidence || 0.3;
      const filteredMatches = matches.filter(match => match.confidence >= minConfidence);

      // Sort by distance (closest first)
      filteredMatches.sort((a, b) => a.distance - b.distance);

      this.logger.debug(`Returning ${filteredMatches.length} recreation facilities above confidence threshold`);
      
      return filteredMatches;

    } catch (error) {
      this.logger.error('Failed to fetch Recreation.gov facilities', error instanceof Error ? error : new Error(String(error)));
      return [];
    }
  }

  private mapFacilityToLandmark(facility: RecreationFacility, searchLat: number, searchLng: number): LandmarkMatch {
    // Calculate distance using haversine formula
    const distance = this.calculateDistance(
      searchLat, searchLng,
      facility.FacilityLatitude, facility.FacilityLongitude
    );

    // Map facility type to our categories
    const category = this.mapFacilityTypeToCategory(facility.FacilityTypeDescription, facility.FacilityName);
    
    // Calculate confidence based on distance and facility type
    const confidence = this.calculateConfidence(distance, category, facility.FacilityTypeDescription);
    
    // Determine relationship based on distance
    const relationship = this.determineRelationship(distance);

    const landmark: Landmark = {
      id: `recreation_${facility.FacilityID}`,
      name: facility.FacilityName,
      fullName: facility.FacilityName,
      category,
      subcategory: facility.FacilityTypeDescription,
      latitude: facility.FacilityLatitude,
      longitude: facility.FacilityLongitude,
      state: 'US', // Recreation.gov is US federal facilities
      description: facility.FacilityDescription?.replace(/<[^>]*>/g, ''), // Strip HTML
      url: facility.FacilityReservationURL || undefined,
      source: LandmarkSource.RECREATION_GOV,
      lastUpdated: facility.LastUpdatedDate || new Date().toISOString().split('T')[0]
    };

    // Add facility-specific metadata to description
    if (facility.FacilityPhone || facility.FacilityAdaAccess || facility.StayLimit) {
      const metadata: string[] = [];
      if (facility.FacilityPhone) metadata.push(`Phone: ${facility.FacilityPhone}`);
      if (facility.FacilityAdaAccess) metadata.push(`ADA Access: ${facility.FacilityAdaAccess}`);
      if (facility.StayLimit) metadata.push(`Stay Limit: ${facility.StayLimit}`);
      
      landmark.description = [landmark.description, metadata.join(', ')].filter(Boolean).join(' - ');
    }

    return {
      landmark,
      distance: Math.round(distance),
      confidence,
      relationship,
      source: this.name,
      matchMethod: 'recreation_api_spatial_query'
    };
  }

  private mapFacilityTypeToCategory(facilityType: string, facilityName: string): LandmarkCategory {
    const type = facilityType.toLowerCase();
    const name = facilityName.toLowerCase();

    // Visitor/Nature Centers
    if (type.includes('visitor center') || name.includes('visitor center')) {
      return LandmarkCategory.VISITOR_CENTER;
    }
    if (type.includes('nature center') || name.includes('nature center')) {
      return LandmarkCategory.NATURE_CENTER;
    }

    // Camping
    if (type.includes('camping') || type.includes('campground') || name.includes('campground')) {
      return LandmarkCategory.CAMPGROUND;
    }

    // Day Use and Picnic Areas
    if (type.includes('day use') || type.includes('picnic') || name.includes('picnic')) {
      return LandmarkCategory.DAY_USE_AREA;
    }

    // Water/Boat Related
    if (type.includes('boat') || type.includes('marina') || name.includes('boat launch')) {
      return LandmarkCategory.BOAT_LAUNCH;
    }

    // Trails
    if (type.includes('trail') || name.includes('trailhead')) {
      return LandmarkCategory.TRAILHEAD;
    }

    // Default to general recreation facility
    return LandmarkCategory.RECREATION_FACILITY;
  }

  private calculateConfidence(distance: number, category: LandmarkCategory, facilityType: string): number {
    // Base confidence from distance (closer = higher confidence)
    let confidence = Math.max(0, 1 - (distance / 25000)); // Max confidence within 25km

    // Boost confidence for key facility types
    if (category === LandmarkCategory.VISITOR_CENTER || category === LandmarkCategory.NATURE_CENTER) {
      confidence *= 1.2; // Visitor centers are high-value for context
    } else if (category === LandmarkCategory.CAMPGROUND) {
      confidence *= 1.1; // Campgrounds are valuable for trip context
    }

    // Boost for facilities with reservations (indicates popular/significant facilities)
    if (facilityType.toLowerCase().includes('reserv')) {
      confidence *= 1.1;
    }

    return Math.min(1, confidence); // Cap at 1.0
  }

  private determineRelationship(distance: number): LandmarkRelationship {
    if (distance <= 500) return LandmarkRelationship.WITHIN_BOUNDARY;
    if (distance <= 2000) return LandmarkRelationship.AT_ENTRANCE;
    return LandmarkRelationship.NEARBY;
  }

  private calculateDistance(lat1: number, lng1: number, lat2: number, lng2: number): number {
    const R = 6371000; // Earth's radius in meters
    const dLat = (lat2 - lat1) * Math.PI / 180;
    const dLng = (lng2 - lng1) * Math.PI / 180;
    const a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
              Math.cos(lat1 * Math.PI / 180) * Math.cos(lat2 * Math.PI / 180) *
              Math.sin(dLng / 2) * Math.sin(dLng / 2);
    const c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
    return R * c;
  }

  clearCache(): void {
    // Recreation.gov provider doesn't implement local caching
    // API responses are fresh each time
    this.logger.debug('Cache cleared (no local caching implemented)');
  }
}