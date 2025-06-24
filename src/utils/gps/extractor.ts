/**
 * GPS data extraction utilities - completely source-agnostic
 * Supports EXIF, XMP, and any sidecar metadata format
 */

import { SidecarMetadata, SidecarFormat } from '../../types/media.js';

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
  sourceDetails?: string; // Additional info about the source (e.g., 'google-takeout', 'adobe-bridge')
}

export interface GPSExtractionResult {
  primary: GPSData | null;
  alternatives: GPSData[];
  conflicts: string[];
}

/**
 * Sources for GPS extraction - generic and extensible
 */
export interface GPSExtractionSources {
  exifData?: any;
  xmpData?: any;
  sidecarMetadata?: SidecarMetadata[];
  filename?: string;
  directoryPath?: string;
}

/**
 * Extract GPS coordinates from multiple sources with conflict resolution
 */
export class GPSExtractor {
  
  /**
   * Main GPS extraction method - completely source-agnostic
   */
  async extractGPS(sources: GPSExtractionSources): Promise<GPSExtractionResult> {
    
    const gpsOptions: GPSData[] = [];
    
    // 1. Try EXIF GPS data (most reliable for cameras)
    if (sources.exifData) {
      const exifGPS = this.extractFromExif(sources.exifData);
      if (exifGPS) gpsOptions.push(exifGPS);
    }
    
    // 2. Try XMP data (Adobe/other software)
    if (sources.xmpData) {
      const xmpGPS = this.extractFromXMP(sources.xmpData);
      if (xmpGPS) gpsOptions.push(xmpGPS);
    }
    
    // 3. Try sidecar metadata files (any source: Google Takeout, Adobe Bridge, etc.)
    if (sources.sidecarMetadata) {
      for (const sidecar of sources.sidecarMetadata) {
        const sidecarGPS = this.extractFromSidecar(sidecar);
        if (sidecarGPS) gpsOptions.push(sidecarGPS);
      }
    }
    
    // 4. Try filename-based GPS (GPS coordinates in filename)
    if (sources.filename) {
      const filenameGPS = this.extractFromFilename(sources.filename);
      if (filenameGPS) gpsOptions.push(filenameGPS);
    }
    
    // 5. Try directory-based GPS (GPS from folder structure)
    if (sources.directoryPath) {
      const directoryGPS = this.extractFromDirectory(sources.directoryPath);
      if (directoryGPS) gpsOptions.push(directoryGPS);
    }
    
    // 6. Detect conflicts and choose best option
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
   * Extract GPS from sidecar metadata files (any source)
   */
  private extractFromSidecar(sidecar: SidecarMetadata): GPSData | null {
    try {
      const data = sidecar.data;
      
      // Try different GPS data structures based on source
      let gpsData = null;
      
      if (sidecar.source === 'google-takeout') {
        // Google Takeout JSON structure
        gpsData = data.geoData || data.photoTakenTime?.gps;
      } else if (sidecar.source === 'adobe-bridge') {
        // Adobe Bridge XMP structure
        gpsData = data.gps || data.location;
      } else if (sidecar.format === SidecarFormat.JSON) {
        // Generic JSON - try common GPS field names
        gpsData = data.gps || data.location || data.coordinates || data.geoData;
      } else {
        // Try to find GPS-like data in any structure
        gpsData = this.findGPSInGenericData(data);
      }
      
      if (!gpsData || !gpsData.latitude || !gpsData.longitude) return null;
      
      return {
        latitude: parseFloat(gpsData.latitude),
        longitude: parseFloat(gpsData.longitude),
        altitude: gpsData.altitude ? parseFloat(gpsData.altitude) : undefined,
        accuracy: gpsData.accuracy ? parseFloat(gpsData.accuracy) : undefined,
        direction: gpsData.direction ? parseFloat(gpsData.direction) : undefined,
        speed: gpsData.speed ? parseFloat(gpsData.speed) : undefined,
        timestamp: gpsData.timestamp || gpsData.time,
        source: 'sidecar',
        sourceDetails: `${sidecar.source} (${sidecar.format})`
      };
      
    } catch (error) {
      console.warn(`Error extracting GPS from ${sidecar.source} sidecar:`, error);
      return null;
    }
  }
  
  /**
   * Extract GPS coordinates from filename patterns
   */
  private extractFromFilename(filename: string): GPSData | null {
    try {
      // Pattern: IMG_lat_lon.jpg or similar
      const patterns = [
        /(\d+\.\d+)_(-?\d+\.\d+)/,  // Simple lat_lon pattern
        /lat(\d+\.\d+)_lon(-?\d+\.\d+)/i,  // lat123.45_lon-67.89
        /(\d+\.\d+)N_(\d+\.\d+)[EW]/,  // GPS coordinate format
      ];
      
      for (const pattern of patterns) {
        const match = filename.match(pattern);
        if (match) {
          const lat = parseFloat(match[1]);
          const lon = parseFloat(match[2]);
          
          if (!isNaN(lat) && !isNaN(lon)) {
            return {
              latitude: lat,
              longitude: lon,
              source: 'filename',
              sourceDetails: 'extracted from filename pattern'
            };
          }
        }
      }
      
      return null;
    } catch (error) {
      return null;
    }
  }
  
  /**
   * Extract GPS from directory structure (e.g., organized by location)
   */
  private extractFromDirectory(directoryPath: string): GPSData | null {
    // TODO: Implement directory-based GPS extraction
    // Could parse folder names like "Photos/2023/Paris_48.8566_2.3522/"
    return null;
  }
  
  /**
   * Try to find GPS data in generic/unknown structure
   */
  private findGPSInGenericData(data: any): any {
    // Recursively search for GPS-like data
    const gpsFields = ['latitude', 'longitude', 'lat', 'lon', 'coords', 'gps'];
    
    function search(obj: any): any {
      if (!obj || typeof obj !== 'object') return null;
      
      // Check if this object has GPS fields
      if (gpsFields.some(field => field in obj)) {
        return obj;
      }
      
      // Recursively search nested objects
      for (const value of Object.values(obj)) {
        const found = search(value);
        if (found) return found;
      }
      
      return null;
    }
    
    return search(data);
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
          const source1 = gpsOptions[i].sourceDetails || gpsOptions[i].source;
          const source2 = gpsOptions[j].sourceDetails || gpsOptions[j].source;
          conflicts.push(`${source1} vs ${source2}: ${distance.toFixed(0)}m apart`);
        }
      }
    }
    
    // Priority order: EXIF > XMP > Sidecar > Filename > Directory > Custom
    // TODO: Make this configurable via environment variables
    const priority: GPSSource[] = ['exif', 'xmp', 'sidecar', 'filename', 'directory', 'custom'];
    const sorted = gpsOptions.sort((a, b) => {
      const priorityA = priority.indexOf(a.source);
      const priorityB = priority.indexOf(b.source);
      
      // If both sources are the same type, prefer one with more accuracy info
      if (priorityA === priorityB) {
        const accuracyA = a.accuracy || 999999;
        const accuracyB = b.accuracy || 999999;
        return accuracyA - accuracyB; // Lower accuracy value is better
      }
      
      return priorityA - priorityB;
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