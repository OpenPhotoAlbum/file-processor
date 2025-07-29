/**
 * GPS utility functions for consistent coordinate handling
 */

/**
 * Round GPS coordinates to a consistent precision
 * 6 decimal places = ~0.11m accuracy at equator
 * This prevents floating-point variations from causing different distances
 */
export function normalizeGPSCoordinate(coordinate: number, isLongitude = false): number {
  // Ensure coordinate is within valid range
  const max = isLongitude ? 180 : 90;
  const min = isLongitude ? -180 : -90;
  
  if (coordinate > max || coordinate < min) {
    throw new Error(`Invalid ${isLongitude ? 'longitude' : 'latitude'}: ${coordinate}`);
  }
  
  // Round to 6 decimal places (0.11m precision)
  return Math.round(coordinate * 1000000) / 1000000;
}

/**
 * Normalize a GPS coordinate pair
 */
export function normalizeGPSCoordinates(lat: number, lng: number): { latitude: number; longitude: number } {
  return {
    latitude: normalizeGPSCoordinate(lat, false),
    longitude: normalizeGPSCoordinate(lng, true)
  };
}

/**
 * Convert DMS (degrees, minutes, seconds) to decimal with consistent precision
 */
export function dmsToDecimal(degrees: number, minutes: number, seconds: number, ref: string): number {
  // Calculate decimal value
  let decimal = degrees + minutes / 60 + seconds / 3600;
  
  // Apply reference (North/South, East/West)
  if (ref === 'S' || ref === 'W') {
    decimal = -decimal;
  }
  
  // Normalize to consistent precision
  const isLongitude = ref === 'E' || ref === 'W';
  return normalizeGPSCoordinate(decimal, isLongitude);
}