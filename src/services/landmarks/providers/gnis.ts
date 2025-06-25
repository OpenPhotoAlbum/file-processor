/**
 * GNIS Provider - USGS Geographic Names Information System
 * Detects natural features like mountains, lakes, rivers, valleys, etc.
 */

import mysql from 'mysql2/promise';
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
 * GNIS database record structure
 */
interface GNISFeatureRecord {
  id: number;
  feature_id: string;
  feature_name: string;
  feature_class: string;
  state_name: string;
  state_code: string;
  county_name: string | null;
  map_name: string | null;
  latitude: number;
  longitude: number;
  elevation_meters: number | null;
  source_latitude: number | null;
  source_longitude: number | null;
  date_created: string | null;
  date_edited: string | null;
  bgn_type: string | null;
  bgn_authority: string | null;
  bgn_date: string | null;
  distance_km: number; // Added by spatial query
}

/**
 * USGS GNIS landmark provider for natural features
 */
export class GNISProvider implements LandmarkProvider {
  name = 'USGS GNIS';
  priority = 2; // Lower priority than major landmarks like National Parks
  categories = [
    LandmarkCategory.MOUNTAIN,
    LandmarkCategory.LAKE,
    LandmarkCategory.RIVER,
    LandmarkCategory.VALLEY,
    LandmarkCategory.RIDGE,
    LandmarkCategory.WATER_FEATURE,
    LandmarkCategory.NATURAL_FEATURE
  ];
  
  private logger = new Logger('GNIS Provider');
  private connection: mysql.Connection | null = null;
  
  // GNIS feature class to landmark category mapping
  private readonly FEATURE_CLASS_MAPPING: Record<string, LandmarkCategory> = {
    'Summit': LandmarkCategory.MOUNTAIN,
    'Lake': LandmarkCategory.LAKE,
    'Reservoir': LandmarkCategory.LAKE,
    'Stream': LandmarkCategory.RIVER,
    'Valley': LandmarkCategory.VALLEY,
    'Ridge': LandmarkCategory.RIDGE,
    'Falls': LandmarkCategory.WATER_FEATURE,
    'Spring': LandmarkCategory.WATER_FEATURE,
    'Cliff': LandmarkCategory.NATURAL_FEATURE,
    'Gap': LandmarkCategory.NATURAL_FEATURE,
    'Cape': LandmarkCategory.NATURAL_FEATURE,
    'Bay': LandmarkCategory.WATER_FEATURE,
    'Island': LandmarkCategory.NATURAL_FEATURE,
    'Beach': LandmarkCategory.NATURAL_FEATURE,
    'Swamp': LandmarkCategory.WATER_FEATURE,
    'Flat': LandmarkCategory.NATURAL_FEATURE,
    'Pillar': LandmarkCategory.NATURAL_FEATURE,
    'Bench': LandmarkCategory.NATURAL_FEATURE
  };

  constructor() {}

  /**
   * Initialize database connection
   */
  private async getConnection(): Promise<mysql.Connection> {
    if (!this.connection) {
      this.connection = await mysql.createConnection({
        host: '127.0.0.1',
        port: 3309,
        user: 'kin',
        password: 'Dalekini21!',
        database: 'kin'
      });
    }
    return this.connection;
  }

  /**
   * Find GNIS geographic features near coordinates
   */
  async findNearbyLandmarks(
    lat: number, 
    lng: number, 
    options: LandmarkSearchOptions
  ): Promise<LandmarkMatch[]> {
    try {
      const maxRadius = options.maxRadius || 50000; // 50km default
      const maxResults = options.maxResults || 15;   // More results for natural features
      
      const connection = await this.getConnection();
      
      // Use haversine formula with hardcoded values to avoid parameter binding issues
      // This approach works around mysql2 driver parameter binding problems
      const radiusKm = maxRadius / 1000;
      const latRange = 0.5; // Approximately 55km at this latitude
      const lngRange = 0.7; // Approximately 55km at this longitude
      
      const query = `
        SELECT 
          id,
          feature_id,
          feature_name,
          feature_class,
          state_name,
          state_code,
          county_name,
          map_name,
          latitude,
          longitude,
          elevation_meters,
          source_latitude,
          source_longitude,
          date_created,
          date_edited,
          bgn_type,
          bgn_authority,
          bgn_date,
          (
            6371 * acos(
              cos(radians(${lat})) * cos(radians(latitude)) * 
              cos(radians(longitude) - radians(${lng})) + 
              sin(radians(${lat})) * sin(radians(latitude))
            )
          ) as distance_km
        FROM geo_geographic_features 
        WHERE latitude BETWEEN ${lat - latRange} AND ${lat + latRange}
        AND longitude BETWEEN ${lng - lngRange} AND ${lng + lngRange}
        HAVING distance_km <= ${radiusKm}
        ORDER BY distance_km ASC
        LIMIT ${maxResults}
      `;

      const [rows] = await connection.execute(query) as [GNISFeatureRecord[], any];

      const matches: LandmarkMatch[] = [];

      for (const record of rows) {
        // Convert to landmark category
        const category = this.FEATURE_CLASS_MAPPING[record.feature_class];
        if (!category) {
          continue; // Skip unmapped feature classes
        }

        // Apply category filter if specified
        if (options.categories && !options.categories.includes(category)) {
          continue;
        }

        const distance = record.distance_km * 1000; // Convert back to meters
        const relationship = this.determineRelationship(distance, record);
        const confidence = this.calculateConfidence(distance, record, relationship);

        // Skip if below confidence threshold
        if (options.minConfidence && confidence < options.minConfidence) {
          continue;
        }

        const landmark: Landmark = {
          id: `gnis_${record.feature_id}`,
          name: record.feature_name,
          fullName: `${record.feature_name} (${record.feature_class})`,
          category,
          subcategory: record.feature_class,
          latitude: record.latitude,
          longitude: record.longitude,
          elevation: record.elevation_meters || undefined,
          state: record.state_code,
          county: record.county_name || undefined,
          description: this.generateDescription(record),
          source: LandmarkSource.USGS_GNIS,
          lastUpdated: new Date().toISOString()
        };

        matches.push({
          landmark,
          distance: Math.round(distance),
          confidence,
          relationship,
          source: this.name,
          matchMethod: 'spatial_query'
        });
      }

      this.logger.debug('GNIS features found', {
        lat, lng, 
        maxRadius: maxRadius / 1000,
        found: matches.length
      });

      return matches;

    } catch (error) {
      this.logger.warn('GNIS landmark search failed', { 
        lat, lng, 
        error: (error as Error).message 
      });
      return [];
    }
  }

  /**
   * Determine relationship between coordinates and feature
   */
  private determineRelationship(distance: number, record: GNISFeatureRecord): LandmarkRelationship {
    const featureClass = record.feature_class;
    
    // Adjust thresholds based on feature type
    if (featureClass === 'Summit') {
      // Mountains have larger "presence"
      if (distance < 2000) return LandmarkRelationship.WITHIN_BOUNDARY;
      if (distance < 5000) return LandmarkRelationship.NEARBY;
      return LandmarkRelationship.VISIBLE_FROM;
    } else if (featureClass === 'Lake' || featureClass === 'Reservoir') {
      // Lakes can be quite large
      if (distance < 1000) return LandmarkRelationship.WITHIN_BOUNDARY;
      if (distance < 3000) return LandmarkRelationship.NEARBY;
      return LandmarkRelationship.VISIBLE_FROM;
    } else if (featureClass === 'Stream') {
      // Rivers/streams are linear features
      if (distance < 500) return LandmarkRelationship.WITHIN_BOUNDARY;
      if (distance < 2000) return LandmarkRelationship.NEARBY;
      return LandmarkRelationship.VISIBLE_FROM;
    } else {
      // General natural features
      if (distance < 1000) return LandmarkRelationship.WITHIN_BOUNDARY;
      if (distance < 2000) return LandmarkRelationship.NEARBY;
      return LandmarkRelationship.VISIBLE_FROM;
    }
  }

  /**
   * Calculate confidence for GNIS features
   */
  private calculateConfidence(
    distance: number, 
    record: GNISFeatureRecord, 
    relationship: LandmarkRelationship
  ): number {
    let confidence = 1.0;
    
    // Base confidence on relationship
    switch (relationship) {
      case LandmarkRelationship.WITHIN_BOUNDARY:
        confidence = 1.0;
        break;
      case LandmarkRelationship.NEARBY:
        confidence = Math.max(0.5, 1 - (distance / 5000));
        break;
      case LandmarkRelationship.VISIBLE_FROM:
        confidence = Math.max(0.3, 1 - (distance / 50000));
        break;
      default:
        confidence = 0.4;
    }

    // Boost confidence for prominent features
    const featureClass = record.feature_class;
    
    if (featureClass === 'Summit' && record.elevation_meters && record.elevation_meters > 1000) {
      confidence *= 1.3; // High mountains are more prominent
    }
    
    if (featureClass === 'Lake' && distance < 2000) {
      confidence *= 1.2; // Lakes are visually prominent
    }

    // Boost for well-known features (basic name matching)
    const name = record.feature_name.toLowerCase();
    if (name.includes('mount ') || name.includes('lake ') || name.includes(' mountain')) {
      confidence *= 1.1;
    }

    // Reduce confidence for very common names
    if (name.includes('brook') || name.includes('pond') || name.includes('hill')) {
      confidence *= 0.9;
    }

    return Math.min(1.0, Math.round(confidence * 100) / 100);
  }

  /**
   * Generate feature description
   */
  private generateDescription(record: GNISFeatureRecord): string {
    const parts: string[] = [];
    
    if (record.feature_class === 'Summit' && record.elevation_meters) {
      parts.push(`${record.elevation_meters}m elevation`);
    }
    
    if (record.county_name) {
      parts.push(`in ${record.county_name} County`);
    }
    
    parts.push(record.state_name);
    
    if (record.map_name) {
      parts.push(`(USGS ${record.map_name} quad)`);
    }

    const description = parts.join(', ');
    
    // Add feature type context
    const typeDescriptions: Record<string, string> = {
      'Summit': 'Mountain peak',
      'Lake': 'Natural lake',
      'Reservoir': 'Water reservoir',
      'Stream': 'River or stream',
      'Valley': 'Geographic valley',
      'Ridge': 'Mountain ridge',
      'Falls': 'Waterfall',
      'Spring': 'Natural spring',
      'Cliff': 'Rock formation',
      'Gap': 'Mountain pass',
      'Bay': 'Water body',
      'Island': 'Land mass surrounded by water'
    };

    const typeDesc = typeDescriptions[record.feature_class];
    if (typeDesc) {
      return `${typeDesc} - ${description}`;
    }

    return description;
  }

  /**
   * Close database connection
   */
  async close(): Promise<void> {
    if (this.connection) {
      await this.connection.end();
      this.connection = null;
      this.logger.debug('GNIS provider database connection closed');
    }
  }

  /**
   * Clear provider cache (no cache for database provider)
   */
  clearCache(): void {
    // No cache to clear for database provider
    this.logger.debug('GNIS provider cache clear requested (no cache)');
  }
}