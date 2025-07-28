/**
 * Landmark Service Factory - Creates configured service instances
 */
import { LandmarkService } from './index.js';
/**
 * Create LandmarkService from environment variables
 */
export declare function createLandmarkService(): LandmarkService;
export declare function getLandmarkService(): LandmarkService;
/**
 * Reset singleton (useful for testing)
 */
export declare function resetLandmarkService(): void;
