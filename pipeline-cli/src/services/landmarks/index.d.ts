/**
 * Landmark Service - Central orchestrator for landmark detection
 * Coordinates multiple landmark providers and merges results
 */
import { Landmark, LandmarkMatch, LandmarkSearchOptions, LandmarkProvider, LandmarkRelationship, EnrichmentStatus, LandmarkServiceConfig } from './types.js';
export * from './types.js';
/**
 * Main landmark service class
 */
export declare class LandmarkService {
    private config;
    private logger;
    private errorFactory;
    private providers;
    private cache;
    constructor(config: LandmarkServiceConfig, providers?: LandmarkProvider[]);
    /**
     * Register a landmark provider
     */
    registerProvider(provider: LandmarkProvider): void;
    /**
     * Find landmarks near GPS coordinates
     */
    findNearbyLandmarks(lat: number, lng: number, options?: LandmarkSearchOptions): Promise<{
        matches: LandmarkMatch[];
        status: EnrichmentStatus;
    }>;
    /**
     * Merge and deduplicate matches from multiple providers
     */
    private mergeAndRankMatches;
    /**
     * Calculate confidence score for a landmark match
     */
    calculateConfidence(distance: number, landmark: Landmark, relationship: LandmarkRelationship): number;
    /**
     * Calculate distance between two coordinates (Haversine formula)
     */
    calculateDistance(lat1: number, lng1: number, lat2: number, lng2: number): number;
    private toRadians;
    /**
     * Generate cache key for a search
     */
    private generateCacheKey;
    /**
     * Get cached result if valid
     */
    private getCachedResult;
    /**
     * Cache search results
     */
    private cacheResult;
    /**
     * Clear all caches
     */
    clearCache(): void;
    /**
     * Get service statistics
     */
    getStats(): {
        cacheSize: number;
        providerCount: number;
        providers: Array<{
            name: string;
            categories: string[];
        }>;
    };
    /**
     * Close all provider connections
     */
    close(): Promise<void>;
}
