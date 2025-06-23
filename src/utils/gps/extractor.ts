/**
 * GPS data extraction utilities
 * Shared across image processors and potentially video processors
 */

export interface GPSData {
  latitude: number;
  longitude: number;
  altitude?: number;
  accuracy?: number;
  direction?: number;
  speed?: number;
  timestamp?: string;
  source: 'exif' | 'google' | 'xmp' | 'fallback';
}

export interface GPSExtractionResult {
  primary: GPSData | null;
  alternatives: GPSData[];
  conflicts: string[];
}

/**
 * Extract GPS coordinates from multiple sources with conflict resolution
 */
export class GPSExtractor {
  
  /**
   * Main GPS extraction method - tries multiple sources
   */
  async extractGPS(sources: {
    exifData?: any;
    googleMetadata?: any;
    xmpData?: any;
  }): Promise<GPSExtractionResult> {
    
    const gpsOptions: GPSData[] = [];
    const conflicts: string[] = [];
    
    // 1. Try EXIF GPS data first (most reliable for cameras)
    if (sources.exifData) {
      const exifGPS = this.extractFromExif(sources.exifData);
      if (exifGPS) gpsOptions.push(exifGPS);
    }
    
    // 2. Try Google Photos metadata (good for phone uploads)
    if (sources.googleMetadata) {
      const googleGPS = this.extractFromGoogle(sources.googleMetadata);
      if (googleGPS) gpsOptions.push(googleGPS);
    }
    
    // 3. Try XMP data (Adobe/other software)
    if (sources.xmpData) {
      const xmpGPS = this.extractFromXMP(sources.xmpData);
      if (xmpGPS) gpsOptions.push(xmpGPS);
    }
    
    // 4. Detect conflicts and choose best option
    const { primary, conflicts: detectedConflicts } = this.resolveConflicts(gpsOptions);
    
    return {
      primary,
      alternatives: gpsOptions.filter(gps => gps !== primary),
      conflicts: detectedConflicts
    };
  }
  
  /**
   * Extract GPS from EXIF data
   */
  private extractFromExif(exifData: any): GPSData | null {
    try {
      const gps = exifData.GPS || exifData.gps;
      if (!gps) return null;
      
      const lat = this.parseCoordinate(gps.GPSLatitude, gps.GPSLatitudeRef);
      const lon = this.parseCoordinate(gps.GPSLongitude, gps.GPSLongitudeRef);
      
      if (lat === null || lon === null) return null;
      
      return {
        latitude: lat,
        longitude: lon,
        altitude: gps.GPSAltitude ? parseFloat(gps.GPSAltitude) : undefined,
        direction: gps.GPSImgDirection ? parseFloat(gps.GPSImgDirection) : undefined,
        speed: gps.GPSSpeed ? parseFloat(gps.GPSSpeed) : undefined,
        timestamp: gps.GPSTimeStamp ? this.parseGPSTimestamp(gps) : undefined,
        source: 'exif'
      };
      
    } catch (error) {
      console.warn('Error extracting GPS from EXIF:', error);
      return null;
    }
  }
  
  /**
   * Extract GPS from Google Photos metadata
   */
  private extractFromGoogle(googleData: any): GPSData | null {
    try {
      if (!googleData.geoData && !googleData.photoTakenTime?.gps) return null;
      
      const geoData = googleData.geoData || googleData.photoTakenTime?.gps;
      
      return {
        latitude: parseFloat(geoData.latitude),
        longitude: parseFloat(geoData.longitude),
        altitude: geoData.altitude ? parseFloat(geoData.altitude) : undefined,
        accuracy: geoData.accuracy ? parseFloat(geoData.accuracy) : undefined,
        source: 'google'
      };
      
    } catch (error) {
      console.warn('Error extracting GPS from Google metadata:', error);
      return null;
    }
  }
  
  /**
   * Extract GPS from XMP data
   */
  private extractFromXMP(xmpData: any): GPSData | null {
    // TODO: Implement XMP GPS extraction
    return null;
  }
  
  /**
   * Resolve conflicts between multiple GPS sources
   */
  private resolveConflicts(gpsOptions: GPSData[]): { primary: GPSData | null; conflicts: string[] } {
    if (gpsOptions.length === 0) return { primary: null, conflicts: [] };
    if (gpsOptions.length === 1) return { primary: gpsOptions[0], conflicts: [] };
    
    const conflicts: string[] = [];
    
    // Check for coordinate conflicts (> 100m difference)
    for (let i = 0; i < gpsOptions.length - 1; i++) {
      for (let j = i + 1; j < gpsOptions.length; j++) {
        const distance = this.calculateDistance(gpsOptions[i], gpsOptions[j]);
        if (distance > 0.1) { // 100m threshold
          conflicts.push(`${gpsOptions[i].source} vs ${gpsOptions[j].source}: ${distance.toFixed(0)}m apart`);
        }
      }
    }
    
    // Priority order: EXIF > Google > XMP > others
    const priority = ['exif', 'google', 'xmp', 'fallback'];
    const sorted = gpsOptions.sort((a, b) => {
      return priority.indexOf(a.source) - priority.indexOf(b.source);
    });
    
    return { primary: sorted[0], conflicts };
  }
  
  /**
   * Parse coordinate from EXIF format
   */
  private parseCoordinate(coord: any, ref: string): number | null {
    if (!coord || !ref) return null;
    
    try {
      // Handle different EXIF coordinate formats
      let decimal: number;
      
      if (Array.isArray(coord) && coord.length === 3) {
        // Degrees, minutes, seconds format
        const [degrees, minutes, seconds] = coord.map(parseFloat);
        decimal = degrees + minutes / 60 + seconds / 3600;
      } else if (typeof coord === 'number') {
        decimal = coord;
      } else {
        return null;
      }
      
      // Apply reference (North/South, East/West)
      if (ref === 'S' || ref === 'W') {
        decimal = -decimal;
      }
      
      return decimal;
      
    } catch (error) {
      return null;
    }
  }
  
  /**
   * Parse GPS timestamp from EXIF
   */
  private parseGPSTimestamp(gps: any): string | undefined {
    try {
      if (gps.GPSDateStamp && gps.GPSTimeStamp) {
        return `${gps.GPSDateStamp} ${gps.GPSTimeStamp}`;
      }
      return undefined;
    } catch {
      return undefined;
    }
  }
  
  /**
   * Calculate distance between two GPS points (in kilometers)
   */
  private calculateDistance(point1: GPSData, point2: GPSData): number {
    const R = 6371; // Earth's radius in km
    const dLat = this.toRadians(point2.latitude - point1.latitude);
    const dLon = this.toRadians(point2.longitude - point1.longitude);
    
    const a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
      Math.cos(this.toRadians(point1.latitude)) * Math.cos(this.toRadians(point2.latitude)) *
      Math.sin(dLon / 2) * Math.sin(dLon / 2);
    
    const c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
    return R * c;
  }
  
  private toRadians(degrees: number): number {
    return degrees * (Math.PI / 180);
  }
}