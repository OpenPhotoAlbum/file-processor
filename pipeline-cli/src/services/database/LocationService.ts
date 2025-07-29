import { Knex } from 'knex';
import { Logger } from '../../utils/logging/index.js';
import { ProcessingResult } from '../../types/media.js';
import { MediaLocation, GPSSource, ConfidenceLevel } from '../../database/types/tables.js';
import { GeolocationData } from '../../database/types/metadata.js';
import { DatabaseCountResult } from './LandmarkService.js';

const logger = new Logger('LocationService');

export type LocationRecord = MediaLocation;

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

      const locationData = await this.extractLocationData(mediaFileId, result);

      // Check if location already exists for this media file
      const existingLocation = await this.db('media_locations')
        .select('file_id')
        .where('file_id', mediaFileId)
        .first();

      if (existingLocation) {
        // Update existing location
        await this.db('media_locations')
          .where('file_id', mediaFileId)
          .update(locationData);
        logger.debug(`Updated location for media file ${mediaFileId}`);
      } else {
        // Insert new location
        await this.db('media_locations').insert(locationData);
        logger.debug(`Created new location for media file ${mediaFileId}`);
      }
      
      return mediaFileId; // Return the file ID since there's no separate location ID

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
      .where('file_id', mediaFileId)
      .first();

    return result || null;
  }

  /**
   * Find locations within radius of coordinates
   */
  async findNearbyLocations(
    latitude: number, 
    longitude: number, 
    radiusMeters = 1000,
    limit = 50
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
      totalLocations: Number((totalLocations as unknown as DatabaseCountResult)?.count) || 0,
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
      result.location?.primary?.latitude && 
      result.location?.primary?.longitude
    );
  }

  /**
   * Extract location data from processing result
   */
  private async extractLocationData(mediaFileId: number, result: ProcessingResult): Promise<LocationRecord> {
    const primaryGPS = result.location!.primary!;
    const geolocation = result.location?.geolocation;

    return {
      file_id: mediaFileId,
      latitude: primaryGPS.latitude,
      longitude: primaryGPS.longitude,
      gps_source: (primaryGPS.source || 'exif') as GPSSource,
      gps_confidence: ConfidenceLevel.MEDIUM, // TODO: Add confidence to GPS data
      geolocation_data: geolocation as GeolocationData | undefined
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