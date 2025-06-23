import { BaseProcessor } from './base.processor.js';
import { MediaFile } from '../types/media.js';
import { ImageValidator } from '../utils/image/validation.js';
import { ExifExtractor } from '../utils/exif/extractor.js';
import { GPSExtractor } from '../utils/gps/extractor.js';

/**
 * Processor for image files (JPEG, PNG, HEIC, GIF, etc.)
 * Handles EXIF extraction, GPS parsing, thumbnail generation
 */
export class ImageProcessor extends BaseProcessor {
  private validator = new ImageValidator();
  private exifExtractor = new ExifExtractor();
  private gpsExtractor = new GPSExtractor();
  
  supportedMimes = [
    'image/jpeg',
    'image/jpg', 
    'image/png',
    'image/heic',
    'image/gif',
    'image/tiff'
  ];

  /**
   * Enhanced validation using shared utilities
   */
  async validate(file: MediaFile): Promise<boolean> {
    console.log(`Validating image: ${file.path}`);
    
    const result = await this.validator.validateImage(file);
    
    if (!result.isValid) {
      console.error(`❌ Validation failed: ${file.path}`);
      result.errors.forEach(error => console.error(`  Error: ${error}`));
      return false;
    }
    
    if (result.warnings.length > 0) {
      result.warnings.forEach(warning => console.warn(`  Warning: ${warning}`));
    }
    
    console.log(`✅ Image validation passed: ${file.path}`);
    return true;
  }


  async extract(file: MediaFile): Promise<any> {
    console.log(`Extracting image metadata from: ${file.path}`);
    
    try {
      // 1. Extract EXIF data using shared utility
      const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
      
      // 2. Extract GPS data from multiple sources using shared utility
      const gpsResult = await this.gpsExtractor.extractGPS({
        exifData: exifData,
        sidecarMetadata: file.sidecarMetadata,
        filename: file.path,
        directoryPath: file.absolutePath
      });
      
      // 3. TODO: Add other extraction steps
      // - Thumbnail generation
      // - Dominant color extraction
      
      return {
        type: 'image',
        processor: 'ImageProcessor',
        extractedAt: new Date().toISOString(),
        exif: exifData,
        dimensions: {
          width: exifData.image.width || 0,
          height: exifData.image.height || 0
        },
        megapixels: exifData.image.megapixels || 0,
        gps: {
          primary: gpsResult.primary,
          alternatives: gpsResult.alternatives,
          conflicts: gpsResult.conflicts
        },
        timestamps: exifData.timestamps,
        camera: exifData.camera,
        settings: exifData.settings,
        technical: exifData.technical,
        // TODO: Add when implemented
        thumbnail: null,
        dominantColor: null
      };
      
    } catch (error) {
      console.error(`Error extracting metadata from ${file.path}:`, error);
      
      // Return minimal data on error
      return {
        type: 'image',
        processor: 'ImageProcessor',
        extractedAt: new Date().toISOString(),
        error: error instanceof Error ? error.message : 'Unknown error',
        exif: {},
        dimensions: { width: 0, height: 0 },
        gps: null
      };
    }
  }
}