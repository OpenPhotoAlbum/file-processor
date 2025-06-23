/**
 * EXIF data extraction utilities
 * Handles ExifTool integration and EXIF data parsing
 */

import { execSync } from 'child_process';
import { Logger } from '../logging/index.js';
import { createErrorFactory } from '../errors/index.js';

export interface ExifData {
  camera: {
    make?: string;
    model?: string;
    lens?: string;
    software?: string;
  };
  settings: {
    iso?: number;
    aperture?: string;
    shutterSpeed?: string;
    focalLength?: string;
    focalLength35mm?: string;
    flash?: string;
  };
  image: {
    width?: number;
    height?: number;
    orientation?: string;
    colorSpace?: string;
    compression?: string;
    megapixels?: number;
  };
  timestamps: {
    dateTimeOriginal?: string;
    createDate?: string;
    modifyDate?: string;
    preferred?: string;
    source?: string;
  };
  gps?: {
    latitude?: number;
    longitude?: number;
    altitude?: number;
    timestamp?: string;
    accuracy?: string;
  };
  technical: {
    fileType?: string;
    mimeType?: string;
    exifVersion?: string;
    encoding?: string;
    [key: string]: any; // For additional technical fields
  };
}

/**
 * ExifTool-based metadata extractor
 */
export class ExifExtractor {
  private logger = new Logger('EXIF Extractor');
  private errorFactory = createErrorFactory(this.logger);
  
  /**
   * Extract comprehensive EXIF data from image file
   */
  async extractExifData(filePath: string): Promise<ExifData> {
    this.logger.debug('Starting EXIF extraction', { filePath });
    
    try {
      const rawExif = await this.runExifTool(filePath);
      const exifData = this.parseExifData(rawExif);
      
      this.logger.info('EXIF extraction completed', { 
        filePath,
        hasCamera: !!exifData.camera.make,
        hasGPS: !!exifData.gps?.latitude,
        hasTimestamp: !!exifData.timestamps.preferred
      });
      
      return exifData;
    } catch (error) {
      // Create structured error with code
      const mppError = this.errorFactory.exif('MPP-EXIF-E-001', { filePath }, error as Error);
      
      // For non-fatal errors, return empty data and continue processing
      this.logger.warn('Returning empty EXIF data due to extraction failure');
      return this.createEmptyExifData();
    }
  }
  
  /**
   * Run ExifTool command and parse JSON output
   */
  private async runExifTool(filePath: string): Promise<any> {
    // Use ExifTool with JSON output and group tags
    const command = `exiftool -json -G -coordFormat "%.8f" "${filePath}"`;
    
    this.logger.debug('Running ExifTool command', { command, timeout: 5000 });
    
    try {
      const output = execSync(command, { 
        encoding: 'utf8',
        maxBuffer: 1024 * 1024, // 1MB buffer for large EXIF data
        timeout: 5000 // 5 second timeout
      });
      
      if (!output || output.trim() === '') {
        throw this.errorFactory.exif('MPP-EXIF-W-003', { filePath, reason: 'Empty output from ExifTool' });
      }
      
      try {
        const jsonData = JSON.parse(output);
        return Array.isArray(jsonData) ? jsonData[0] : jsonData;
      } catch (parseError) {
        throw this.errorFactory.exif('MPP-EXIF-W-003', { 
          filePath, 
          reason: 'Invalid JSON output from ExifTool',
          output: output.substring(0, 200) // First 200 chars for debugging
        }, parseError as Error);
      }
      
    } catch (error) {
      // Type guard for system errors
      if (error && typeof error === 'object' && 'code' in error && error.code === 'ETIMEDOUT') {
        throw this.errorFactory.exif('MPP-EXIF-E-004', { filePath, timeout: 5000 }, error as unknown as Error);
      } else if (error && typeof error === 'object' && 'status' in error) {
        // ExifTool returned non-zero exit code
        throw this.errorFactory.exif('MPP-EXIF-E-002', { 
          filePath, 
          exitCode: (error as any).status,
          stderr: (error as any).stderr?.toString() 
        }, error as unknown as Error);
      } else {
        // Re-throw MPP errors as-is
        throw error;
      }
    }
  }
  
  /**
   * Parse raw EXIF data into structured format
   */
  private parseExifData(rawExif: any): ExifData {
    const exif = this.createEmptyExifData();
    
    // Camera information
    exif.camera.make = rawExif['EXIF:Make'] || rawExif['IFD0:Make'];
    exif.camera.model = rawExif['EXIF:Model'] || rawExif['IFD0:Model'];
    exif.camera.lens = rawExif['EXIF:LensModel'] || rawExif['Composite:LensID'];
    exif.camera.software = rawExif['EXIF:Software'] || rawExif['IFD0:Software'];
    
    // Camera settings
    exif.settings.iso = this.parseNumber(rawExif['EXIF:ISO'] || rawExif['IFD0:ISO']);
    exif.settings.aperture = rawExif['EXIF:FNumber'] || rawExif['Composite:Aperture'];
    exif.settings.shutterSpeed = rawExif['EXIF:ExposureTime'] || rawExif['Composite:ShutterSpeed'];
    exif.settings.focalLength = rawExif['EXIF:FocalLength'];
    exif.settings.focalLength35mm = rawExif['EXIF:FocalLengthIn35mmFormat'];
    exif.settings.flash = rawExif['EXIF:Flash'];
    
    // Image properties
    exif.image.width = this.parseNumber(rawExif['EXIF:ExifImageWidth'] || rawExif['File:ImageWidth']);
    exif.image.height = this.parseNumber(rawExif['EXIF:ExifImageHeight'] || rawExif['File:ImageHeight']);
    exif.image.orientation = rawExif['EXIF:Orientation'] || rawExif['IFD0:Orientation'];
    exif.image.colorSpace = rawExif['EXIF:ColorSpace'];
    exif.image.compression = rawExif['EXIF:Compression'];
    
    if (exif.image.width && exif.image.height) {
      exif.image.megapixels = Math.round((exif.image.width * exif.image.height) / 1000000 * 10) / 10;
    }
    
    // Timestamps (multiple sources with priority)
    exif.timestamps = this.parseTimestamps(rawExif);
    
    // GPS data
    exif.gps = this.parseGPS(rawExif);
    
    // Technical metadata
    exif.technical.fileType = rawExif['File:FileType'];
    exif.technical.mimeType = rawExif['File:MIMEType'];
    exif.technical.exifVersion = rawExif['EXIF:ExifVersion'];
    exif.technical.encoding = rawExif['EXIF:EncodingProcess'];
    
    // Store any additional fields that might be useful
    Object.keys(rawExif).forEach(key => {
      if (!this.isStandardField(key)) {
        exif.technical[key] = rawExif[key];
      }
    });
    
    return exif;
  }
  
  /**
   * Parse timestamp data with priority handling
   */
  private parseTimestamps(rawExif: any): ExifData['timestamps'] {
    const timestamps: ExifData['timestamps'] = {};
    
    // Extract all possible timestamp sources
    timestamps.dateTimeOriginal = rawExif['EXIF:DateTimeOriginal'] || rawExif['EXIF:CreateDate'];
    timestamps.createDate = rawExif['EXIF:CreateDate'];
    timestamps.modifyDate = rawExif['EXIF:ModifyDate'] || rawExif['File:FileModifyDate'];
    
    // Determine preferred timestamp with priority
    if (timestamps.dateTimeOriginal) {
      timestamps.preferred = timestamps.dateTimeOriginal;
      timestamps.source = 'EXIF:DateTimeOriginal';
    } else if (timestamps.createDate) {
      timestamps.preferred = timestamps.createDate;
      timestamps.source = 'EXIF:CreateDate';
    } else if (timestamps.modifyDate) {
      timestamps.preferred = timestamps.modifyDate;
      timestamps.source = 'EXIF:ModifyDate';
    }
    
    return timestamps;
  }
  
  /**
   * Parse GPS data from EXIF
   */
  private parseGPS(rawExif: any): ExifData['gps'] | undefined {
    const lat = rawExif['GPS:GPSLatitude'] || rawExif['Composite:GPSLatitude'];
    const lon = rawExif['GPS:GPSLongitude'] || rawExif['Composite:GPSLongitude'];
    
    if (!lat || !lon) return undefined;
    
    return {
      latitude: this.parseNumber(lat),
      longitude: this.parseNumber(lon),
      altitude: this.parseNumber(rawExif['GPS:GPSAltitude']),
      timestamp: rawExif['GPS:GPSTimeStamp'],
      accuracy: rawExif['GPS:GPSHPositioningError']
    };
  }
  
  /**
   * Parse number from EXIF value
   */
  private parseNumber(value: any): number | undefined {
    if (typeof value === 'number') return value;
    if (typeof value === 'string') {
      const num = parseFloat(value);
      return isNaN(num) ? undefined : num;
    }
    return undefined;
  }
  
  /**
   * Check if field is already handled in structured parsing
   */
  private isStandardField(key: string): boolean {
    const standardPrefixes = [
      'EXIF:Make', 'EXIF:Model', 'EXIF:LensModel', 'EXIF:Software',
      'EXIF:ISO', 'EXIF:FNumber', 'EXIF:ExposureTime', 'EXIF:FocalLength',
      'EXIF:ExifImageWidth', 'EXIF:ExifImageHeight', 'EXIF:Orientation',
      'EXIF:ColorSpace', 'EXIF:Compression', 'EXIF:DateTimeOriginal',
      'EXIF:CreateDate', 'EXIF:ModifyDate', 'GPS:', 'File:FileType',
      'File:MIMEType', 'File:ImageWidth', 'File:ImageHeight'
    ];
    
    return standardPrefixes.some(prefix => key.startsWith(prefix));
  }
  
  /**
   * Create empty EXIF data structure
   */
  private createEmptyExifData(): ExifData {
    return {
      camera: {},
      settings: {},
      image: {},
      timestamps: {},
      technical: {}
    };
  }
}