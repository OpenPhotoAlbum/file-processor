/**
 * GNIS Provider - USGS Geographic Names Information System
 * Detects natural features like mountains, lakes, rivers, valleys, etc.
 */
import { LandmarkMatch, LandmarkProvider, LandmarkSearchOptions, LandmarkCategory } from '../types.js';
/**
 * USGS GNIS landmark provider for natural features
 */
export declare class GNISProvider implements LandmarkProvider {
    name: string;
    priority: number;
    categories: LandmarkCategory[];
    private logger;
    private connection;
    private readonly FEATURE_CLASS_MAPPING;
    constructor();
    /**
     * Initialize database connection
     */
    private getConnection;
    /**
     * Find GNIS geographic features near coordinates
     */
    findNearbyLandmarks(lat: number, lng: number, options: LandmarkSearchOptions): Promise<LandmarkMatch[]>;
    /**
     * Determine relationship between coordinates and feature
     */
    private determineRelationship;
    /**
     * Calculate confidence for GNIS features
     */
    private calculateConfidence;
    /**
     * Generate feature description
     */
    private generateDescription;
    /**
     * Close database connection
     */
    close(): Promise<void>;
    /**
     * Clear provider cache (no cache for database provider)
     */
    clearCache(): void;
}
