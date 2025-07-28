/**
 * GeolocationService - Municipal boundary and proximity-based location lookup
 * Integrates with geo_municipal_boundaries and geo_cities tables
 */
export interface LocationMatch {
    city: string;
    state_code: string;
    county_name?: string;
    timezone?: string;
    postal_code?: string;
    distance: number;
    confidence: number;
    source: 'boundary_exact' | 'boundary_proximity' | 'city_proximity';
    method: string;
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
export declare class GeolocationService {
    private config;
    private logger;
    private systemErrors;
    private cache;
    private dbPool?;
    constructor(config: GeolocationConfig);
    /**
     * Find location for given coordinates using boundary lookup + proximity fallback
     */
    findLocation(lat: number, lng: number): Promise<LocationMatch | null>;
    /**
     * Step 1: Check if coordinates fall within any municipal boundary
     */
    private findByBoundaryContainment;
    /**
     * Step 2: Find nearest municipal boundary within radius
     */
    private findByBoundaryProximity;
    /**
     * Step 3: Fallback to original city centroid method
     */
    private findByCityProximity;
    /**
     * Calculate confidence based on distance (closer = higher confidence)
     */
    private calculateProximityConfidence;
    /**
     * Initialize database connection pool
     */
    private initializeDatabase;
    /**
     * Test database connectivity
     */
    testConnection(): Promise<boolean>;
    /**
     * Get cache statistics
     */
    getCacheStats(): {
        size: number;
        maxEntries: number;
        enabled: boolean;
    };
    /**
     * Clear the cache
     */
    clearCache(): void;
    /**
     * Close database connections
     */
    close(): Promise<void>;
}
