import { Knex } from 'knex';
import { Logger } from '../../utils/logging/index.js';
import { ProcessingResult } from '../../types/media.js';
import { UnknownJsonContent } from '../../types/semantic-any.js';

const logger = new Logger('LocationService');

export interface LocationRecord {
  id: number;
  media_file_id: number;
  latitude: number;
  longitude: number;
  altitude_meters?: number;
  gps_precision_meters?: number;
  coordinate_source: string;
  coordinate_confidence: string;
  timezone_offset?: string;
  city_name?: string;
  state_province?: string;
  country_name?: string;
  country_code?: string;
  postal_code?: string;
  location_metadata: UnknownJsonContent;
  created_at: Date;
  updated_at: Date;
}

export class LocationService {
  private db: Knex;
  private locationCache: Map<string, number> = new Map();

  constructor(db: Knex) {
    this.db = db;
  }

  /**
   * Store or update location data for a media file
   */
  async upsertLocation(mediaFileId: number, result: ProcessingResult): Promise<number | null> {
    try {
      // Check if processing result has GPS data
      if (!this.hasGPSData(result)) {
        logger.debug(`No GPS data found for media file ${mediaFileId}`);
        return null;
      }

      const locationData = this.extractLocationData(mediaFileId, result);
      const locationKey = this.generateLocationKey(locationData.latitude, locationData.longitude);

      // Check cache first
      if (this.locationCache.has(locationKey)) {
        const existingId = this.locationCache.get(locationKey)!;
        logger.debug(`Using cached location ${existingId} for coordinates ${locationData.latitude}, ${locationData.longitude}`);
        return existingId;
      }

      // Check if location already exists for this media file
      const existingLocation = await this.db('media_locations')
        .select('id')
        .where('media_file_id', mediaFileId)
        .first();

      let locationId: number;

      if (existingLocation) {
        // Update existing location
        await this.db('media_locations')
          .where('id', existingLocation.id)
          .update({
            ...locationData,
            updated_at: new Date()
          });
        locationId = existingLocation.id;
        logger.debug(`Updated location for media file ${mediaFileId}`);
      } else {
        // Insert new location
        const [id] = await this.db('media_locations').insert({
          ...locationData,
          created_at: new Date(),
          updated_at: new Date()
        });
        locationId = id;
        logger.debug(`Created new location for media file ${mediaFileId}`);
      }

      // Cache the location
      this.locationCache.set(locationKey, locationId);
      
      return locationId;

    } catch (error) {
      logger.error(`Failed to upsert location for media file ${mediaFileId}: ${error}`);
      throw error;
    }
  }

  /**
   * Find location by media file ID
   */
  async findByMediaFileId(mediaFileId: number): Promise<LocationRecord | null> {
    const result = await this.db('media_locations')
      .select('*')
      .where('media_file_id', mediaFileId)
      .first();

    return result || null;
  }

  /**
   * Find locations within radius of coordinates
   */
  async findNearbyLocations(
    latitude: number, 
    longitude: number, 
    radiusMeters: number = 1000,
    limit: number = 50
  ): Promise<LocationRecord[]> {
    // Using Haversine formula for distance calculation
    const results = await this.db('media_locations')
      .select('*')
      .whereRaw(`
        ST_Distance_Sphere(
          POINT(longitude, latitude),
          POINT(?, ?)
        ) <= ?
      `, [longitude, latitude, radiusMeters])
      .limit(limit);

    return results;
  }

  /**
   * Get location statistics
   */
  async getLocationStats(): Promise<{
    totalLocations: number;
    countryCounts: { country: string; count: number }[];
    topCities: { city: string; state: string; count: number }[];
  }> {
    const totalLocations = await this.db('media_locations').count('id as count').first();
    
    const countryCounts = await this.db('media_locations')
      .select('country_name as country')
      .count('id as count')
      .whereNotNull('country_name')
      .groupBy('country_name')
      .orderBy('count', 'desc')
      .limit(10);

    const topCities = await this.db('media_locations')
      .select('city_name as city', 'state_province as state')
      .count('id as count')
      .whereNotNull('city_name')
      .groupBy(['city_name', 'state_province'])
      .orderBy('count', 'desc')
      .limit(20);

    return {
      totalLocations: totalLocations?.count || 0,
      countryCounts: countryCounts.map(row => ({
        country: row.country,
        count: Number(row.count)
      })),
      topCities: topCities.map(row => ({
        city: row.city,
        state: row.state || '',
        count: Number(row.count)
      }))
    };
  }

  /**
   * Check if processing result has GPS data
   */
  private hasGPSData(result: ProcessingResult): boolean {
    return !!(
      result.location?.coordinates?.latitude && 
      result.location?.coordinates?.longitude
    );
  }

  /**
   * Extract location data from processing result
   */
  private extractLocationData(mediaFileId: number, result: ProcessingResult): Omit<LocationRecord, 'id' | 'created_at' | 'updated_at'> {
    const location = result.location!;
    const coordinates = location.coordinates!;

    return {
      media_file_id: mediaFileId,
      latitude: coordinates.latitude,
      longitude: coordinates.longitude,
      altitude_meters: coordinates.altitude,
      gps_precision_meters: coordinates.accuracy,
      coordinate_source: coordinates.source || 'gps',
      coordinate_confidence: coordinates.confidence || 'medium',
      timezone_offset: location.timezone?.offset,
      city_name: location.municipality?.city || location.geolocation?.city,
      state_province: location.municipality?.state || location.geolocation?.state,
      country_name: location.municipality?.country || location.geolocation?.country,
      country_code: location.municipality?.countryCode || location.geolocation?.countryCode,
      postal_code: location.geolocation?.postalCode,
      location_metadata: {
        timezone: location.timezone || {},
        municipality: location.municipality || {},
        geolocation: location.geolocation || {},
        raw_coordinates: coordinates
      }
    };
  }

  /**
   * Generate cache key for location coordinates
   */
  private generateLocationKey(latitude: number, longitude: number): string {
    // Round to 6 decimal places for reasonable precision (~0.1m)
    const lat = Math.round(latitude * 1000000) / 1000000;
    const lng = Math.round(longitude * 1000000) / 1000000;
    return `${lat},${lng}`;
  }

  /**
   * Clear caches (useful for testing)
   */
  clearCache(): void {
    this.locationCache.clear();
  }

  /**
   * Get cache statistics
   */
  getCacheStats(): { locations: number } {
    return {
      locations: this.locationCache.size
    };
  }
}