/**
 * GeolocationService - Municipal boundary and proximity-based location lookup
 * Integrates with geo_municipal_boundaries and geo_cities tables
 */

import mysql from 'mysql2/promise';
import { Logger } from '../../utils/logging/index.js';
import { createSystemErrorFactory } from '../../utils/errors/factories.js';

export interface LocationMatch {
  // Core location data
  city: string;
  state_code: string;
  county_name?: string;
  timezone?: string;
  postal_code?: string;
  
  // Metadata
  distance: number; // meters from input coordinates
  confidence: number; // 0-1 (1.0 = exact boundary match, decreases with distance)
  source: 'boundary_exact' | 'boundary_proximity' | 'city_proximity';
  method: string; // Description of how match was found
  
  // Additional context
  area_sq_meters?: number;
  place_type?: string;
}

export interface GeolocationConfig {
  enabled: boolean;
  maxRadiusKm: number;
  confidenceThreshold: number;
  cacheEnabled: boolean;
  cacheTtlMinutes: number;
  dbConfig: {
    host: string;
    port: number;
    user: string;
    password: string;
    database: string;
  };
}

/**
 * In-memory cache for coordinate lookups
 */
class GeolocationCache {
  private cache = new Map<string, { data: LocationMatch | null; expiry: number }>();
  private maxEntries = 1000;
  
  private getCacheKey(lat: number, lng: number): string {
    // Round to 4 decimal places (~11m precision) for better cache hit rate
    return `${lat.toFixed(4)}_${lng.toFixed(4)}`;
  }
  
  get(lat: number, lng: number): LocationMatch | null | undefined {
    const key = this.getCacheKey(lat, lng);
    const entry = this.cache.get(key);
    
    if (!entry) return undefined;
    if (Date.now() > entry.expiry) {
      this.cache.delete(key);
      return undefined;
    }
    
    return entry.data;
  }
  
  set(lat: number, lng: number, data: LocationMatch | null, ttlMinutes: number): void {
    const key = this.getCacheKey(lat, lng);
    
    // Simple LRU: remove oldest if at capacity
    if (this.cache.size >= this.maxEntries) {
      const firstKey = this.cache.keys().next().value;
      if (firstKey) {
        this.cache.delete(firstKey);
      }
    }
    
    this.cache.set(key, {
      data,
      expiry: Date.now() + (ttlMinutes * 60 * 1000)
    });
  }
  
  clear(): void {
    this.cache.clear();
  }
  
  size(): number {
    return this.cache.size;
  }
}

export class GeolocationService {
  private logger = new Logger('Geolocation Service');
  private systemErrors = createSystemErrorFactory(this.logger);
  private cache = new GeolocationCache();
  private dbPool?: mysql.Pool;
  
  constructor(private config: GeolocationConfig) {
    if (config.enabled) {
      this.initializeDatabase();
    }
  }
  
  /**
   * Find location for given coordinates using boundary lookup + proximity fallback
   */
  async findLocation(lat: number, lng: number): Promise<LocationMatch | null> {
    this.logger.info('GeolocationService.findLocation called', { lat, lng, enabled: this.config.enabled });
    
    if (!this.config.enabled) {
      this.logger.debug('Geolocation service disabled');
      return null;
    }
    
    // Check cache first
    if (this.config.cacheEnabled) {
      const cached = this.cache.get(lat, lng);
      if (cached !== undefined) {
        this.logger.debug('Cache hit for coordinates', { lat, lng, found: !!cached });
        return cached;
      }
    }
    
    try {
      let result: LocationMatch | null = null;
      
      // Step 1: Try exact boundary containment (most accurate)
      result = await this.findByBoundaryContainment(lat, lng);
      
      // Step 2: If no boundary match, try boundary proximity 
      if (!result) {
        result = await this.findByBoundaryProximity(lat, lng);
      }
      
      // Step 3: Final fallback to city centroid proximity
      if (!result) {
        result = await this.findByCityProximity(lat, lng);
      }
      
      // Cache the result (including null results)
      if (this.config.cacheEnabled) {
        this.cache.set(lat, lng, result, this.config.cacheTtlMinutes);
      }
      
      if (result) {
        this.logger.info('Location found', { 
          lat, lng, 
          city: result.city, 
          source: result.source,
          distance: Math.round(result.distance),
          confidence: result.confidence.toFixed(2)
        });
      } else {
        this.logger.warn('No location found within radius', { 
          lat, lng, 
          maxRadius: this.config.maxRadiusKm 
        });
      }
      
      return result;
      
    } catch (error) {
      this.systemErrors.fileOperationFailed({
        operation: 'geolocation lookup',
        coordinates: `${lat}, ${lng}`
      }, error as Error);
      
      return null;
    }
  }
  
  /**
   * Step 1: Check if coordinates fall within any municipal boundary
   */
  private async findByBoundaryContainment(lat: number, lng: number): Promise<LocationMatch | null> {
    if (!this.dbPool) {
      this.logger.debug('No database pool available');
      return null;
    }
    
    const query = `
      SELECT name, full_name, place_type, state_code, area_sq_meters
      FROM geo_municipal_boundaries 
      WHERE ST_Contains(boundary_polygon, ST_GeomFromText('POINT(? ?)', 4326))
      LIMIT 1
    `;
    
    try {
      this.logger.info('Executing boundary containment query', { lat, lng });
      const [rows] = await this.dbPool.execute(query, [lng, lat]);
      const results = rows as any[];
      
      this.logger.info('Boundary containment query results', { resultCount: results.length });
      
      if (results.length > 0) {
        const row = results[0];
        return {
          city: row.name,
          state_code: row.state_code,
          distance: 0, // Inside boundary = 0 distance
          confidence: 1.0, // Perfect confidence for boundary matches
          source: 'boundary_exact',
          method: `Inside ${row.full_name} municipal boundary`,
          area_sq_meters: row.area_sq_meters,
          place_type: row.place_type
        };
      }
      
      return null;
    } catch (error) {
      this.logger.warn('Boundary containment query failed', { lat, lng, error: (error as Error).message });
      return null;
    }
  }
  
  /**
   * Step 2: Find nearest municipal boundary within radius
   */
  private async findByBoundaryProximity(lat: number, lng: number): Promise<LocationMatch | null> {
    if (!this.dbPool) return null;
    
    const maxDistanceMeters = this.config.maxRadiusKm * 1000;
    
    const query = `
      SELECT name, full_name, place_type, state_code, area_sq_meters,
             ST_Distance_Sphere(POINT(?, ?), POINT(centroid_lng, centroid_lat)) as distance_meters
      FROM geo_municipal_boundaries 
      HAVING distance_meters <= ?
      ORDER BY distance_meters 
      LIMIT 1
    `;
    
    try {
      const [rows] = await this.dbPool.execute(query, [lng, lat, maxDistanceMeters]);
      const results = rows as any[];
      
      if (results.length > 0) {
        const row = results[0];
        const distance = parseFloat(row.distance_meters);
        
        return {
          city: row.name,
          state_code: row.state_code,
          distance: Math.round(distance),
          confidence: this.calculateProximityConfidence(distance),
          source: 'boundary_proximity',
          method: `Nearest to ${row.full_name} municipal center`,
          area_sq_meters: row.area_sq_meters,
          place_type: row.place_type
        };
      }
      
      return null;
    } catch (error) {
      this.logger.warn('Boundary proximity query failed', { lat, lng, error: (error as Error).message });
      return null;
    }
  }
  
  /**
   * Step 3: Fallback to original city centroid method
   */
  private async findByCityProximity(lat: number, lng: number): Promise<LocationMatch | null> {
    if (!this.dbPool) return null;
    
    const maxDistanceMeters = this.config.maxRadiusKm * 1000;
    
    const query = `
      SELECT city, state_code, county_name, timezone, postal_code,
             (6371000 * acos(cos(radians(?)) * cos(radians(latitude)) * 
              cos(radians(longitude) - radians(?)) + sin(radians(?)) * 
              sin(radians(latitude)))) AS distance_meters
      FROM geo_cities 
      HAVING distance_meters <= ? 
      ORDER BY distance_meters 
      LIMIT 1
    `;
    
    try {
      const [rows] = await this.dbPool.execute(query, [lat, lng, lat, maxDistanceMeters]);
      const results = rows as any[];
      
      if (results.length > 0) {
        const row = results[0];
        const distance = parseFloat(row.distance_meters);
        
        return {
          city: row.city,
          state_code: row.state_code,
          county_name: row.county_name,
          timezone: row.timezone,
          postal_code: row.postal_code,
          distance: Math.round(distance),
          confidence: this.calculateProximityConfidence(distance),
          source: 'city_proximity',
          method: 'Nearest city centroid'
        };
      }
      
      return null;
    } catch (error) {
      this.logger.warn('City proximity query failed', { lat, lng, error: (error as Error).message });
      return null;
    }
  }
  
  /**
   * Calculate confidence based on distance (closer = higher confidence)
   */
  private calculateProximityConfidence(distanceMeters: number): number {
    const maxDistance = this.config.maxRadiusKm * 1000;
    const confidence = Math.max(0, 1 - (distanceMeters / maxDistance));
    return Math.round(confidence * 100) / 100; // Round to 2 decimal places
  }
  
  /**
   * Initialize database connection pool
   */
  private initializeDatabase(): void {
    try {
      this.dbPool = mysql.createPool({
        host: this.config.dbConfig.host,
        port: this.config.dbConfig.port,
        user: this.config.dbConfig.user,
        password: this.config.dbConfig.password,
        database: this.config.dbConfig.database,
        waitForConnections: true,
        connectionLimit: 5,
        queueLimit: 0
      });
      
      this.logger.info('Database connection pool initialized', {
        host: this.config.dbConfig.host,
        port: this.config.dbConfig.port,
        database: this.config.dbConfig.database
      });
    } catch (error) {
      this.systemErrors.fileOperationFailed({
        operation: 'database pool initialization'
      }, error as Error);
    }
  }
  
  /**
   * Test database connectivity
   */
  async testConnection(): Promise<boolean> {
    if (!this.dbPool) return false;
    
    try {
      const [rows] = await this.dbPool.execute('SELECT 1 as test');
      return true;
    } catch (error) {
      this.logger.error('Database connection test failed');
      return false;
    }
  }
  
  /**
   * Get cache statistics
   */
  getCacheStats(): { size: number; maxEntries: number; enabled: boolean } {
    return {
      size: this.cache.size(),
      maxEntries: 1000,
      enabled: this.config.cacheEnabled
    };
  }
  
  /**
   * Clear the cache
   */
  clearCache(): void {
    this.cache.clear();
    this.logger.info('Geolocation cache cleared');
  }
  
  /**
   * Close database connections
   */
  async close(): Promise<void> {
    if (this.dbPool) {
      await this.dbPool.end();
      this.logger.info('Database connection pool closed');
    }
  }
}