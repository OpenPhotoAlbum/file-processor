/**
 * Landmark System Types - Core interfaces and enums
 */

/**
 * Landmark categories for classification
 */
export enum LandmarkCategory {
  NATIONAL_PARK = 'national_park',
  NATIONAL_MONUMENT = 'national_monument',
  NATIONAL_HISTORIC_SITE = 'national_historic_site',
  NATIONAL_RECREATION_AREA = 'national_recreation_area',
  NATIONAL_FOREST = 'national_forest',
  STATE_PARK = 'state_park',
  STATE_FOREST = 'state_forest',
  NATURAL_FEATURE = 'natural_feature',
  HISTORIC_LANDMARK = 'historic_landmark',
  CULTURAL_SITE = 'cultural_site',
  SCENIC_AREA = 'scenic_area',
  // GNIS natural feature categories
  MOUNTAIN = 'mountain',
  LAKE = 'lake',
  RIVER = 'river',
  VALLEY = 'valley',
  RIDGE = 'ridge',
  WATER_FEATURE = 'water_feature'
}

/**
 * Data sources for landmark information
 */
export enum LandmarkSource {
  NPS_API = 'nps_api',
  NPS_BUNDLED = 'nps_bundled',
  USGS_GNIS = 'usgs_gnis',
  STATE_API = 'state_api',
  OSM = 'openstreetmap',
  BUNDLED = 'bundled',
  CACHE = 'cache'
}

/**
 * Relationship between GPS coordinates and landmark
 */
export enum LandmarkRelationship {
  WITHIN_BOUNDARY = 'within_boundary',
  AT_ENTRANCE = 'at_entrance',
  NEARBY = 'nearby',
  VISIBLE_FROM = 'visible_from',
  OVERLOOK = 'overlook'
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
  
  // Location data
  latitude: number;
  longitude: number;
  boundaryGeometry?: GeoJSON.Polygon;
  elevation?: number;
  
  // Administrative
  state: string;
  county?: string;
  
  // Contextual information
  description?: string;
  significance?: string;
  established?: string;
  url?: string;
  
  // Source tracking
  source: LandmarkSource;
  lastUpdated: string;
}

/**
 * Landmark match with distance and confidence
 */
export interface LandmarkMatch {
  landmark: Landmark;
  distance: number; // meters from GPS coordinates
  confidence: number; // 0-1 confidence score
  relationship: LandmarkRelationship;
  source: string; // Provider that found this match
  matchMethod: string; // How the match was determined
}

/**
 * Search options for landmark queries
 */
export interface LandmarkSearchOptions {
  maxRadius?: number; // meters (default: 50000)
  maxResults?: number; // max landmarks to return (default: 10)
  categories?: LandmarkCategory[]; // filter by categories
  minConfidence?: number; // minimum confidence threshold (default: 0.3)
  includeBoundaryChecks?: boolean; // perform boundary containment (default: true)
  sources?: LandmarkSource[]; // filter by data sources
}

/**
 * Provider interface for landmark data sources
 */
export interface LandmarkProvider {
  name: string;
  priority: number; // lower number = higher priority
  categories: LandmarkCategory[];
  
  findNearbyLandmarks(
    lat: number, 
    lng: number, 
    options: LandmarkSearchOptions
  ): Promise<LandmarkMatch[]>;
  
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
    stateParks: {
      enabled: boolean;
    };
    historicSites: {
      enabled: boolean;
    };
  };
}