/**
 * Landmark System Types - Core interfaces and enums
 */
/**
 * Landmark categories for classification
 */
export declare enum LandmarkCategory {
    NATIONAL_PARK = "national_park",
    NATIONAL_MONUMENT = "national_monument",
    NATIONAL_HISTORIC_SITE = "national_historic_site",
    NATIONAL_RECREATION_AREA = "national_recreation_area",
    NATIONAL_FOREST = "national_forest",
    STATE_PARK = "state_park",
    STATE_FOREST = "state_forest",
    NATURAL_FEATURE = "natural_feature",
    HISTORIC_LANDMARK = "historic_landmark",
    CULTURAL_SITE = "cultural_site",
    SCENIC_AREA = "scenic_area",
    MOUNTAIN = "mountain",
    LAKE = "lake",
    RIVER = "river",
    VALLEY = "valley",
    RIDGE = "ridge",
    WATER_FEATURE = "water_feature",
    VISITOR_CENTER = "visitor_center",
    NATURE_CENTER = "nature_center",
    CAMPGROUND = "campground",
    DAY_USE_AREA = "day_use_area",
    BOAT_LAUNCH = "boat_launch",
    PICNIC_AREA = "picnic_area",
    TRAILHEAD = "trailhead",
    RECREATION_FACILITY = "recreation_facility"
}
/**
 * Data sources for landmark information
 */
export declare enum LandmarkSource {
    NPS_API = "nps_api",
    NPS_BUNDLED = "nps_bundled",
    USGS_GNIS = "usgs_gnis",
    RECREATION_GOV = "recreation_gov",
    STATE_API = "state_api",
    OSM = "openstreetmap",
    BUNDLED = "bundled",
    CACHE = "cache"
}
/**
 * Relationship between GPS coordinates and landmark
 */
export declare enum LandmarkRelationship {
    WITHIN_BOUNDARY = "within_boundary",
    AT_ENTRANCE = "at_entrance",
    NEARBY = "nearby",
    VISIBLE_FROM = "visible_from",
    OVERLOOK = "overlook"
}
/**
 * Core landmark data structure
 */
export interface Landmark {
    id: string;
    name: string;
    fullName: string;
    category: LandmarkCategory;
    subcategory?: string;
    latitude: number;
    longitude: number;
    boundaryGeometry?: GeoJSON.Polygon;
    elevation?: number;
    state: string;
    county?: string;
    description?: string;
    significance?: string;
    established?: string;
    url?: string;
    source: LandmarkSource;
    lastUpdated: string;
}
/**
 * Landmark match with distance and confidence
 */
export interface LandmarkMatch {
    landmark: Landmark;
    distance: number;
    confidence: number;
    relationship: LandmarkRelationship;
    source: string;
    matchMethod: string;
}
/**
 * Search options for landmark queries
 */
export interface LandmarkSearchOptions {
    maxRadius?: number;
    maxResults?: number;
    categories?: LandmarkCategory[];
    minConfidence?: number;
    includeBoundaryChecks?: boolean;
    sources?: LandmarkSource[];
}
/**
 * Provider interface for landmark data sources
 */
export interface LandmarkProvider {
    name: string;
    priority: number;
    categories: LandmarkCategory[];
    findNearbyLandmarks(lat: number, lng: number, options: LandmarkSearchOptions): Promise<LandmarkMatch[]>;
    clearCache(): void;
}
/**
 * Enrichment status tracking
 */
export interface EnrichmentStatus {
    landmarks: 'success' | 'partial' | 'not_found' | 'error' | 'disabled';
    providersUsed: string[];
    cacheHit: boolean;
    queryTimeMs: number;
}
/**
 * Landmark service configuration
 */
export interface LandmarkServiceConfig {
    enabled: boolean;
    maxRadius: number;
    maxResults: number;
    minConfidence: number;
    cacheEnabled: boolean;
    cacheTtlMinutes: number;
    providers: {
        nationalParks: {
            enabled: boolean;
            apiKey?: string;
        };
        naturalFeatures: {
            enabled: boolean;
        };
        recreation: {
            enabled: boolean;
            apiKey?: string;
        };
        stateParks: {
            enabled: boolean;
        };
        historicSites: {
            enabled: boolean;
        };
    };
}
