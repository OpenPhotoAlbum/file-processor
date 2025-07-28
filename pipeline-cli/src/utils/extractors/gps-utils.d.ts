/**
 * GPS utility functions for consistent coordinate handling
 */
/**
 * Round GPS coordinates to a consistent precision
 * 6 decimal places = ~0.11m accuracy at equator
 * This prevents floating-point variations from causing different distances
 */
export declare function normalizeGPSCoordinate(coordinate: number, isLongitude?: boolean): number;
/**
 * Normalize a GPS coordinate pair
 */
export declare function normalizeGPSCoordinates(lat: number, lng: number): {
    latitude: number;
    longitude: number;
};
/**
 * Convert DMS (degrees, minutes, seconds) to decimal with consistent precision
 */
export declare function dmsToDecimal(degrees: number, minutes: number, seconds: number, ref: string): number;
