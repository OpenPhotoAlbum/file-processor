/**
 * LocationService - Location resolution and coordinate validation
 * 
 * Handles location shortcuts, coordinate parsing, and validation for GPS operations.
 * Integrates with MMP configuration system for shortcut resolution.
 */

import config from '../core/config.js';

export interface Coordinates {
  lat: number;
  lng: number;
}

export interface LocationResolutionResult {
  coordinates: Coordinates;
  resolvedFrom: 'shortcut' | 'coordinates';
  originalInput: string;
}

export class LocationService {
  /**
   * Resolve location input to coordinates
   * Handles both shortcuts (cottage) and direct coordinates (42.7070,-71.1631)
   */
  async resolveLocation(input: string): Promise<LocationResolutionResult> {
    const trimmedInput = input.trim();
    
    // Try to parse as direct coordinates first
    if (this.looksLikeCoordinates(trimmedInput)) {
      const coordinates = this.parseCoordinates(trimmedInput);
      this.validateCoordinates(coordinates.lat, coordinates.lng);
      
      return {
        coordinates,
        resolvedFrom: 'coordinates',
        originalInput: input
      };
    }
    
    // Try to resolve as shortcut
    try {
      const coordinateString = await config.resolveLocationShortcut(trimmedInput);
      const coordinates = this.parseCoordinates(coordinateString);
      this.validateCoordinates(coordinates.lat, coordinates.lng);
      
      return {
        coordinates,
        resolvedFrom: 'shortcut',
        originalInput: input
      };
    } catch (error) {
      throw new Error(`Location '${input}' not found. Use coordinates like "42.7070,-71.1631" or add shortcut first.`);
    }
  }

  /**
   * Parse coordinate string to lat/lng numbers
   */
  parseCoordinates(coords: string): Coordinates {
    const trimmed = coords.trim();
    const parts = trimmed.split(',');
    
    if (parts.length !== 2) {
      throw new Error(`Invalid coordinate format '${coords}'. Expected format: "lat,lng" like "42.7070,-71.1631"`);
    }
    
    const latStr = parts[0]?.trim();
    const lngStr = parts[1]?.trim();
    
    if (!latStr || !lngStr) {
      throw new Error(`Invalid coordinate format '${coords}'. Both latitude and longitude must be provided.`);
    }
    
    const lat = parseFloat(latStr);
    const lng = parseFloat(lngStr);
    
    if (isNaN(lat) || isNaN(lng)) {
      throw new Error(`Invalid coordinate values '${coords}'. Both latitude and longitude must be numbers.`);
    }
    
    return { lat, lng };
  }

  /**
   * Validate coordinate ranges
   */
  validateCoordinates(lat: number, lng: number): void {
    if (lat < -90 || lat > 90) {
      throw new Error(`Invalid latitude ${lat}. Must be between -90 and 90 degrees.`);
    }
    
    if (lng < -180 || lng > 180) {
      throw new Error(`Invalid longitude ${lng}. Must be between -180 and 180 degrees.`);
    }
  }

  /**
   * Check if input looks like coordinates (contains comma and numbers)
   */
  private looksLikeCoordinates(input: string): boolean {
    return input.includes(',') && /^-?\d+\.?\d*,-?\d+\.?\d*$/.test(input.trim());
  }

  /**
   * Get hemisphere references for ExifTool
   */
  getHemisphereReferences(lat: number, lng: number): { latRef: 'N' | 'S', lngRef: 'E' | 'W' } {
    return {
      latRef: lat >= 0 ? 'N' : 'S',
      lngRef: lng >= 0 ? 'E' : 'W'
    };
  }

  /**
   * Get absolute values for ExifTool (remove negative signs)
   */
  getAbsoluteCoordinates(lat: number, lng: number): { latAbs: number, lngAbs: number } {
    return {
      latAbs: Math.abs(lat),
      lngAbs: Math.abs(lng)
    };
  }

  /**
   * Format coordinates for display
   */
  formatCoordinates(lat: number, lng: number): string {
    return `${lat.toFixed(6)},${lng.toFixed(6)}`;
  }
}

// Export singleton instance
export const locationService = new LocationService();
export default locationService;