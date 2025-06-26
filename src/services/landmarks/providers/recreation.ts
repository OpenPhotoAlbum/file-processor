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

interface RecreationCampsite {
  CampsiteID: string;
  FacilityID: string;
  CampsiteName: string;
  CampsiteType: string;
  TypeOfUse: string;
  Loop: string;
  CampsiteAccessible: boolean;
  CampsiteLatitude?: number;
  CampsiteLongitude?: number;
  CreatedDate?: string;
  LastUpdatedDate?: string;
  ATTRIBUTES?: Array<{
    AttributeID: number;
    AttributeName: string;
    AttributeValue: string;
  }>;
  PERMITTEDEQUIPMENT?: Array<{
    EquipmentName: string;
    MaxLength: number;
  }>;
  ENTITYMEDIA?: Array<{
    EntityMediaID: string;
    MediaType: string;
    Title?: string;
    Description?: string;
    URL?: string;
  }>;
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

interface RecreationCampsiteResponse {
  METADATA: {
    RESULTS: {
      CURRENT_COUNT: number;
      TOTAL_COUNT: number;
    };
  };
  RECDATA: RecreationCampsite[];
}

interface RecreationArea {
  RecAreaID: string;
  OrgRecAreaID: string;
  ParentOrgID: string;
  RecAreaName: string;
  RecAreaDescription?: string;
  RecAreaFeeDescription?: string;
  RecAreaDirections?: string;
  RecAreaAccessibilityText?: string;
  RecAreaPhone?: string;
  RecAreaEmail?: string;
  RecAreaReservationURL?: string;
  RecAreaMapURL?: string;
  GEOJSON?: {
    TYPE: string;
    COORDINATES: [number, number];
  };
  RecAreaLongitude: number;
  RecAreaLatitude: number;
  StayLimit?: string;
  Keywords?: string;
  Reservable: boolean;
  Enabled: boolean;
  LastUpdatedDate?: string;
  ORGANIZATION?: Array<{
    OrgID: string;
    OrgName: string;
    OrgType: string;
    OrgAbbrevName: string;
  }>;
  ACTIVITY?: Array<{
    ActivityID: string;
    ActivityName: string;
    RecAreaActivityDescription?: string;
  }>;
}

interface RecreationAreaResponse {
  METADATA: {
    RESULTS: {
      CURRENT_COUNT: number;
      TOTAL_COUNT: number;
    };
  };
  RECDATA: RecreationArea[];
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
      this.logger.debug(`Searching Recreation.gov facilities and recreation areas near ${lat}, ${lng} within ${maxRadius}km`);

      // Search both facilities and recreation areas in parallel
      const [facilitiesResponse, recreationAreasResponse] = await Promise.allSettled([
        this.searchFacilities(lat, lng, maxRadius, Math.ceil(maxResults / 2)),
        this.searchRecreationAreas(lat, lng, maxRadius, maxResults - Math.ceil(maxResults / 2))
      ]);

      const allMatches: LandmarkMatch[] = [];

      // Process facilities
      if (facilitiesResponse.status === 'fulfilled') {
        allMatches.push(...facilitiesResponse.value);
      } else {
        this.logger.warn('Failed to fetch facilities:', facilitiesResponse.reason);
      }

      // Process recreation areas  
      if (recreationAreasResponse.status === 'fulfilled') {
        allMatches.push(...recreationAreasResponse.value);
      } else {
        this.logger.warn('Failed to fetch recreation areas:', recreationAreasResponse.reason);
      }

      this.logger.debug(`Found ${allMatches.length} total recreation facilities and areas`);
      
      // Filter by confidence threshold
      const minConfidence = options.minConfidence || 0.3;
      const filteredMatches = allMatches.filter(match => match.confidence >= minConfidence);

      // Sort by distance (closest first)
      filteredMatches.sort((a, b) => a.distance - b.distance);

      this.logger.debug(`Returning ${filteredMatches.length} recreation facilities and areas above confidence threshold`);
      
      return filteredMatches.slice(0, maxResults);

    } catch (error) {
      this.logger.error('Failed to fetch Recreation.gov facilities', error instanceof Error ? error : new Error(String(error)));
      return [];
    }
  }

  private async searchFacilities(lat: number, lng: number, radius: number, limit: number): Promise<LandmarkMatch[]> {
    const url = `${this.baseUrl}/facilities?latitude=${lat}&longitude=${lng}&radius=${radius}&limit=${limit}`;
    const startTime = Date.now();
    
    const response = await fetch(url, {
      headers: {
        'accept': 'application/json',
        'apikey': this.apiKey
      }
    });

    const responseTime = Date.now() - startTime;
    this.logger.debug(`Facilities API call took ${responseTime}ms, status: ${response.status}`);

    if (!response.ok) {
      if (response.status === 429) {
        this.logger.warn(`Recreation.gov API rate limit hit! Status: ${response.status}`);
      }
      throw new Error(`Recreation.gov facilities API error: ${response.status} ${response.statusText}`);
    }

    const data = await response.json() as RecreationApiResponse;
    this.logger.debug(`Found ${data.RECDATA.length} facilities`);
    return data.RECDATA.map(facility => this.mapFacilityToLandmark(facility, lat, lng));
  }

  private async searchRecreationAreas(lat: number, lng: number, radius: number, limit: number): Promise<LandmarkMatch[]> {
    // Convert radius from km to miles for recareas endpoint
    const radiusMiles = radius * 0.621371;
    const url = `${this.baseUrl}/recareas?latitude=${lat}&longitude=${lng}&radius=${radiusMiles}&limit=${limit}`;
    const startTime = Date.now();
    
    const response = await fetch(url, {
      headers: {
        'accept': 'application/json',
        'apikey': this.apiKey
      }
    });

    const responseTime = Date.now() - startTime;
    this.logger.debug(`Recreation areas API call took ${responseTime}ms, status: ${response.status}`);

    if (!response.ok) {
      if (response.status === 429) {
        this.logger.warn(`Recreation.gov API rate limit hit! Status: ${response.status}`);
      }
      throw new Error(`Recreation.gov recreation areas API error: ${response.status} ${response.statusText}`);
    }

    const data = await response.json() as RecreationAreaResponse;
    this.logger.debug(`Found ${data.RECDATA.length} recreation areas`);
    return data.RECDATA.map(area => this.mapRecreationAreaToLandmark(area, lat, lng));
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

  private mapCampsiteToLandmark(campsite: RecreationCampsite, searchLat: number, searchLng: number): LandmarkMatch {
    
    // Calculate distance if we have coordinates
    const distance = (campsite.CampsiteLatitude && campsite.CampsiteLongitude) 
      ? this.calculateDistance(searchLat, searchLng, campsite.CampsiteLatitude, campsite.CampsiteLongitude)
      : 999999; // Very far if no coordinates

    // Campsites are always campgrounds
    const category = LandmarkCategory.CAMPGROUND;
    
    // Higher confidence for accessible campsites
    const confidence = campsite.CampsiteAccessible ? 0.8 : 0.6;
    
    // Build description from attributes
    let description = `${campsite.CampsiteType} campsite in ${campsite.Loop} loop`;
    
    if (campsite.TypeOfUse) {
      description += ` (${campsite.TypeOfUse})`;
    }
    
    if (campsite.PERMITTEDEQUIPMENT?.length) {
      const equipment = campsite.PERMITTEDEQUIPMENT.map(eq => 
        `${eq.EquipmentName}${eq.MaxLength ? ` (${eq.MaxLength}ft max)` : ''}`
      ).join(', ');
      description += ` - Equipment: ${equipment}`;
    }

    const landmark: Landmark = {
      id: `recreation_campsite_${campsite.CampsiteID}`,
      name: campsite.CampsiteName,
      fullName: `${campsite.CampsiteName} (Campsite)`,
      category,
      subcategory: campsite.CampsiteType,
      latitude: campsite.CampsiteLatitude || 0,
      longitude: campsite.CampsiteLongitude || 0,
      state: 'US',
      description,
      source: LandmarkSource.RECREATION_GOV,
      lastUpdated: campsite.LastUpdatedDate || new Date().toISOString().split('T')[0]
    };

    return {
      landmark,
      distance: Math.round(distance),
      confidence,
      relationship: this.determineRelationship(distance),
      source: this.name,
      matchMethod: 'recreation_campsite_api'
    };
  }

  private mapRecreationAreaToLandmark(area: RecreationArea, searchLat: number, searchLng: number): LandmarkMatch {
    // Calculate distance using haversine formula
    const distance = this.calculateDistance(
      searchLat, searchLng,
      area.RecAreaLatitude, area.RecAreaLongitude
    );

    // Map area type to category based on organization and activities
    const category = this.mapRecreationAreaToCategory(area);
    
    // Calculate confidence based on distance and organization
    const confidence = this.calculateRecreationAreaConfidence(distance, area);
    
    // Determine relationship based on distance
    const relationship = this.determineRelationship(distance);

    // Build rich description
    let description = area.RecAreaDescription || '';
    
    if (area.ACTIVITY?.length) {
      const activities = area.ACTIVITY.slice(0, 3).map(act => act.ActivityName).join(', ');
      description += description ? ` Activities: ${activities}` : `Activities: ${activities}`;
    }

    if (area.ORGANIZATION?.length) {
      const org = area.ORGANIZATION[0];
      description += ` Managed by ${org.OrgName} (${org.OrgAbbrevName})`;
    }

    const landmark: Landmark = {
      id: `recreation_area_${area.RecAreaID}`,
      name: area.RecAreaName,
      fullName: area.RecAreaName,
      category,
      subcategory: area.ORGANIZATION?.[0]?.OrgType || 'Recreation Area',
      latitude: area.RecAreaLatitude,
      longitude: area.RecAreaLongitude,
      state: 'US',
      description,
      url: area.RecAreaReservationURL || undefined,
      source: LandmarkSource.RECREATION_GOV,
      lastUpdated: area.LastUpdatedDate || new Date().toISOString().split('T')[0]
    };

    // Add contact info to description
    if (area.RecAreaPhone || area.RecAreaEmail) {
      const contact: string[] = [];
      if (area.RecAreaPhone) contact.push(`Phone: ${area.RecAreaPhone}`);
      if (area.RecAreaEmail) contact.push(`Email: ${area.RecAreaEmail}`);
      
      landmark.description = [landmark.description, contact.join(', ')].filter(Boolean).join(' - ');
    }

    return {
      landmark,
      distance: Math.round(distance),
      confidence,
      relationship,
      source: this.name,
      matchMethod: 'recreation_area_spatial_query'
    };
  }

  private mapRecreationAreaToCategory(area: RecreationArea): LandmarkCategory {
    const orgName = area.ORGANIZATION?.[0]?.OrgAbbrevName?.toLowerCase() || '';
    const areaName = area.RecAreaName.toLowerCase();
    
    // National Parks
    if (orgName === 'nps' || areaName.includes('national park')) {
      return LandmarkCategory.NATIONAL_PARK;
    }
    
    // Campgrounds and camping areas
    if (areaName.includes('campground') || areaName.includes('camping')) {
      return LandmarkCategory.CAMPGROUND;
    }
    
    // State parks
    if (areaName.includes('state park')) {
      return LandmarkCategory.STATE_PARK;
    }
    
    // Wilderness areas (map to national recreation area)
    if (areaName.includes('wilderness') || areaName.includes('wild')) {
      return LandmarkCategory.NATIONAL_RECREATION_AREA;
    }
    
    // Default to recreation facility
    return LandmarkCategory.RECREATION_FACILITY;
  }

  private calculateRecreationAreaConfidence(distance: number, area: RecreationArea): number {
    let confidence = Math.max(0.3, 1 - (distance / 50000)); // Base confidence from distance
    
    // Boost for well-known areas
    if (area.ORGANIZATION?.[0]?.OrgAbbrevName === 'NPS') {
      confidence *= 1.3; // National Parks are high priority
    }
    
    // Boost for reservable areas (indicates active recreation)
    if (area.Reservable) {
      confidence *= 1.2;
    }
    
    // Boost for areas with activities
    if (area.ACTIVITY && area.ACTIVITY.length > 0) {
      confidence *= 1.1;
    }
    
    return Math.min(1, confidence); // Cap at 1.0
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