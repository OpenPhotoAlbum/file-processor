/**
 * National Parks Provider - Enhanced for new landmark architecture
 * Detects National Parks, Monuments, Historic Sites, etc.
 */
import { LandmarkMatch, LandmarkProvider, LandmarkSearchOptions, LandmarkCategory } from '../types.js';
/**
 * National Parks Service landmark provider
 */
export declare class NationalParksProvider implements LandmarkProvider {
    name: string;
    priority: number;
    categories: LandmarkCategory[];
    private logger;
    private cache;
    private apiKey?;
    private baseUrl;
    constructor(apiKey?: string);
    /**
     * Find national parks/monuments near coordinates
     */
    findNearbyLandmarks(lat: number, lng: number, options: LandmarkSearchOptions): Promise<LandmarkMatch[]>;
    /**
     * Get all NPS landmarks (API + bundled data)
     */
    private getLandmarks;
    /**
     * Fetch landmarks from NPS API
     */
    private fetchFromAPI;
    /**
     * Get bundled landmark data with expanded coverage
     */
    private getBundledLandmarks;
    /**
     * Determine relationship between coordinates and landmark
     */
    private determineRelationship;
    /**
     * Calculate confidence for NPS landmarks
     */
    private calculateConfidence;
    /**
     * Calculate distance using Haversine formula
     */
    private calculateDistance;
    private toRadians;
    /**
     * Clear provider cache
     */
    clearCache(): void;
}
