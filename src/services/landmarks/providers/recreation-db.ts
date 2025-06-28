/**
 * Recreation.gov Database Provider - Federal Recreation Facilities
 * 
 * Fast offline provider that queries local database instead of Recreation.gov API.
 * Provides comprehensive information about federal recreation facilities including
 * campgrounds, visitor centers, day-use areas, and other amenities.
 * 
 * This replaces the API-based recreation provider for production use.
 */

import mysql from 'mysql2/promise';
import { Logger } from '../../../utils/logging/index.js';
import {
  LandmarkProvider,
  LandmarkMatch,
  Landmark,
  LandmarkCategory,
  LandmarkSource,
  LandmarkRelationship,
  LandmarkSearchOptions
} from '../types.js';

/**
 * Database record structure for recreation facilities
 */
interface RecreationFacilityRecord {
  id: number;
  facility_id: string;
  facility_name: string;
  facility_type: string;
  latitude: number;
  longitude: number;
  description?: string;
  directions?: string;
  phone?: string;
  email?: string;
  reservation_url?: string;
  ada_access?: string;
  stay_limit?: string;
  keywords?: string;
  organization_id?: string;
  organization_name?: string;
  parent_organization_id?: string;
  last_updated_date?: Date;
  distance_km: number; // Added by spatial query
}

export class RecreationDatabaseProvider implements LandmarkProvider {
  public readonly name = 'Recreation.gov DB';
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
  private connectionPool?: mysql.Pool;

  constructor(dbConfig?: {
    host: string;
    port: number;
    user: string;
    password: string;
    database: string;
  }) {
    this.logger = new Logger('Recreation DB Provider');
    
    // Initialize connection pool
    this.connectionPool = mysql.createPool({
      host: dbConfig?.host || process.env.DB_HOST || '127.0.0.1',
      port: dbConfig?.port || parseInt(process.env.DB_PORT || '3309'),
      user: dbConfig?.user || process.env.DB_USER || 'kin',
      password: dbConfig?.password || process.env.DB_PASSWORD || 'kin123',
      database: dbConfig?.database || process.env.DB_NAME || 'kin',
      waitForConnections: true,
      connectionLimit: 10,
      queueLimit: 0
    });
  }

  async findNearbyLandmarks(
    lat: number, 
    lng: number, 
    options: LandmarkSearchOptions = {}
  ): Promise<LandmarkMatch[]> {
    if (!this.connectionPool) {
      this.logger.warn('Database connection pool not available');
      return [];
    }

    const maxRadius = Math.min(options.maxRadius || 50000, 50000) / 1000; // Convert to km, max 50km
    const maxResults = options.maxResults || 10;

    try {
      this.logger.debug(`Searching Recreation.gov facilities near ${lat}, ${lng} within ${maxRadius}km`);

      // Use spatial query similar to GNIS provider
      const query = `
        SELECT 
          id,
          facility_id,
          facility_name,
          facility_type,
          latitude,
          longitude,
          description,
          directions,
          phone,
          email,
          reservation_url,
          ada_access,
          stay_limit,
          keywords,
          organization_id,
          organization_name,
          parent_organization_id,
          last_updated_date,
          (
            6371 * acos(
              cos(radians(?)) * cos(radians(latitude)) * 
              cos(radians(longitude) - radians(?)) + 
              sin(radians(?)) * sin(radians(latitude))
            )
          ) as distance_km
        FROM recreation_facilities 
        WHERE enabled = true
          AND latitude BETWEEN ? - 0.5 AND ? + 0.5
          AND longitude BETWEEN ? - 0.7 AND ? + 0.7
        HAVING distance_km <= ?
        ORDER BY distance_km ASC
        LIMIT ?
      `;

      const params = [
        lat, lng, lat,  // For haversine calculation
        lat, lat,       // Latitude bounds
        lng, lng,       // Longitude bounds  
        maxRadius,      // Distance filter
        maxResults      // Limit
      ];

      const [rows] = await this.connectionPool.execute(query, params);
      const facilities = rows as RecreationFacilityRecord[];
      
      this.logger.debug(`Found ${facilities.length} recreation facilities`);

      const matches = facilities.map(facility => this.mapFacilityToLandmark(facility, lat, lng));
      
      // Filter by confidence threshold
      const minConfidence = options.minConfidence || 0.3;
      const filteredMatches = matches.filter(match => match.confidence >= minConfidence);

      this.logger.debug(`Returning ${filteredMatches.length} recreation facilities above confidence threshold`);
      
      return filteredMatches;

    } catch (error) {
      this.logger.error('Failed to fetch Recreation.gov facilities from database', error as Error);
      return [];
    }
  }

  private mapFacilityToLandmark(facility: RecreationFacilityRecord, _searchLat: number, _searchLng: number): LandmarkMatch {
    // Convert distance from km to meters
    const distance = facility.distance_km * 1000;

    // Map facility type to our categories
    const category = this.mapFacilityTypeToCategory(facility.facility_type, facility.facility_name);
    
    // Calculate confidence based on distance and facility type
    const confidence = this.calculateConfidence(distance, category, facility.facility_type);
    
    // Determine relationship based on distance
    const relationship = this.determineRelationship(distance);

    const landmark: Landmark = {
      id: `recreation_${facility.facility_id}`,
      name: facility.facility_name,
      fullName: facility.facility_name,
      category,
      subcategory: facility.facility_type,
      latitude: facility.latitude,
      longitude: facility.longitude,
      state: 'US', // Recreation.gov is US federal facilities
      description: facility.description || undefined,
      url: facility.reservation_url || undefined,
      source: LandmarkSource.RECREATION_GOV,
      lastUpdated: facility.last_updated_date?.toISOString().split('T')[0] || new Date().toISOString().split('T')[0]
    };

    // Add facility-specific metadata to description
    if (facility.phone || facility.ada_access || facility.stay_limit) {
      const metadata: string[] = [];
      if (facility.phone) metadata.push(`Phone: ${facility.phone}`);
      if (facility.ada_access) metadata.push(`ADA Access: ${facility.ada_access}`);
      if (facility.stay_limit) metadata.push(`Stay Limit: ${facility.stay_limit}`);
      
      landmark.description = [landmark.description, metadata.join(', ')].filter(Boolean).join(' - ');
    }

    return {
      landmark,
      distance: Math.round(distance),
      confidence,
      relationship,
      source: this.name,
      matchMethod: 'database_spatial_query'
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

  clearCache(): void {
    // Database provider doesn't implement local caching beyond connection pooling
    this.logger.debug('Cache cleared (database provider uses connection pooling)');
  }

  /**
   * Close database connections
   */
  async close(): Promise<void> {
    if (this.connectionPool) {
      await this.connectionPool.end();
      this.connectionPool = undefined;
      this.logger.info('Recreation database provider connections closed');
    }
  }
}