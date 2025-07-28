/**
 * Recreation.gov Provider - Federal Recreation Facilities
 *
 * Integrates with the Recreation Information Database (RIDB) API to provide
 * comprehensive information about federal recreation facilities including
 * campgrounds, visitor centers, day-use areas, and other amenities.
 */
import { LandmarkProvider, LandmarkMatch, LandmarkCategory, LandmarkSearchOptions } from '../types.js';
export declare class RecreationProvider implements LandmarkProvider {
    readonly name = "Recreation.gov";
    readonly priority = 3;
    readonly categories: LandmarkCategory[];
    private readonly logger;
    private readonly apiKey;
    private readonly baseUrl;
    constructor(apiKey: string);
    findNearbyLandmarks(lat: number, lng: number, options?: LandmarkSearchOptions): Promise<LandmarkMatch[]>;
    private searchFacilities;
    private searchRecreationAreas;
    private mapFacilityToLandmark;
    private mapCampsiteToLandmark;
    private mapRecreationAreaToLandmark;
    private mapRecreationAreaToCategory;
    private calculateRecreationAreaConfidence;
    private mapFacilityTypeToCategory;
    private calculateConfidence;
    private determineRelationship;
    private calculateDistance;
    clearCache(): void;
}
