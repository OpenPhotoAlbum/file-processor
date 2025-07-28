/**
 * GPS data extraction utilities - completely source-agnostic
 * Supports EXIF, XMP, and any sidecar metadata format
 */
import { SidecarMetadata } from '../../types/media.js';
import type { XMPData } from './types.js';
import type { ExternalToolOutput } from '../../types/semantic-any.js';
import { type LocationMatch, type LandmarkMatch } from '../../services/index.js';
/**
 * GPS source types - extensible for any metadata source
 */
export type GPSSource = 'exif' | 'xmp' | 'sidecar' | 'filename' | 'directory' | 'custom';
export interface GPSData {
    latitude: number;
    longitude: number;
    altitude?: number;
    accuracy?: number;
    direction?: number;
    speed?: number;
    timestamp?: string;
    source: GPSSource;
    sourceDetails?: string;
}
/**
 * Enrichment status for GPS extraction (combines geolocation and landmarks)
 */
export interface GPSEnrichmentStatus {
    geolocation: 'success' | 'not_found' | 'error' | 'disabled';
    landmarks: 'success' | 'partial' | 'not_found' | 'error' | 'disabled';
    providersUsed: string[];
    cacheHit: boolean;
    queryTimeMs: number;
}
export interface GPSExtractionResult {
    primary: GPSData | null;
    alternatives: GPSData[];
    conflicts: string[];
    geolocation?: LocationMatch | null;
    landmarks: LandmarkMatch[];
    enrichmentStatus: GPSEnrichmentStatus;
}
/**
 * Sources for GPS extraction - generic and extensible
 */
export interface GPSExtractionSources {
    exifData?: ExternalToolOutput;
    xmpData?: XMPData;
    sidecarMetadata?: SidecarMetadata[];
    filename?: string;
    directoryPath?: string;
}
/**
 * Extract GPS coordinates from multiple sources with conflict resolution
 */
export declare class GPSExtractor {
    private logger;
    private gpsErrors;
    /**
     * Main GPS extraction method - completely source-agnostic
     */
    extractGPS(sources: GPSExtractionSources): Promise<GPSExtractionResult>;
    /**
     * Extract GPS from EXIF data
     */
    private extractFromExif;
    /**
     * Extract GPS from sidecar metadata files (any source)
     */
    private extractFromSidecar;
    /**
     * Extract GPS coordinates from filename patterns
     */
    private extractFromFilename;
    /**
     * Extract GPS from directory structure (e.g., organized by location)
     */
    private extractFromDirectory;
    /**
     * Try to find GPS data in generic/unknown structure
     */
    private findGPSInGenericData;
    /**
     * Extract GPS from XMP data
     */
    private extractFromXMP;
    /**
     * Resolve conflicts between multiple GPS sources
     */
    private resolveConflicts;
    /**
     * Parse coordinate from EXIF format
     */
    private parseCoordinate;
    /**
     * Parse GPS timestamp from EXIF
     */
    private parseGPSTimestamp;
    /**
     * Calculate distance between two GPS points (in kilometers)
     */
    private calculateDistance;
    private toRadians;
}
