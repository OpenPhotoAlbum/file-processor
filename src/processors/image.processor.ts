import { BaseProcessor } from './base.processor.js';
import { MediaFile } from '../types/media.js';
import { ImageValidator } from '../utils/image/validation.js';
import { ExifExtractor, GPSExtractor, TimestampExtractor } from '../utils/extractors/index.js';
import { getEnabledMimeTypes, getAllSupportedMimeTypes } from '../utils/mime-config.js';
import { Logger } from '../utils/logging/index.js';
import { createValidationErrorFactory, createSystemErrorFactory } from '../utils/errors/factories.js';
import { sanitizePathForLogging } from '../utils/paths.js';
import { FileSystemService } from '../services/index.js';

/**
 * Processor for image files (JPEG, PNG, HEIC, GIF, etc.)
 * Handles EXIF extraction, GPS parsing, thumbnail generation
 */
export class ImageProcessor extends BaseProcessor {
  private logger = new Logger('Image Processor');
  private validationErrors = createValidationErrorFactory(this.logger);
  private systemErrors = createSystemErrorFactory(this.logger);
  private fs = new FileSystemService();
  
  private validator = new ImageValidator();
  private exifExtractor = new ExifExtractor();
  private gpsExtractor = new GPSExtractor();
  private timestampExtractor = new TimestampExtractor();
  
  /**
   * Get supported MIME types - combines codebase capabilities with user configuration
   * Based on SupportedMimeType enum but filtered by ENABLED_MIME_TYPES env var
   */
  get supportedMimes(): string[] {
    return getEnabledMimeTypes();
  }
  
  /**
   * Get all MIME types that the codebase can handle (regardless of configuration)
   */
  get allSupportedMimes(): string[] {
    return getAllSupportedMimeTypes();
  }

  /**
   * Enhanced validation using FileSystemService and image utilities
   */
  async validate(file: MediaFile): Promise<boolean> {
    const safePath = sanitizePathForLogging(file.absolutePath);
    this.logger.info(`Validating image: ${safePath}`);
    
    try {
      // First, use FileSystemService for basic file validation
      const fileValidation = await this.fs.validateFile(file.absolutePath);
      if (!fileValidation.isValid) {
        this.logger.error(`File validation failed for image: ${safePath}`);
        fileValidation.errors.forEach(error => {
          this.validationErrors.signatureFailed({
            filePath: safePath,
            error,
            operation: 'file system validation'
          });
        });
        return false;
      }
      
      // Then, use ImageValidator for image-specific validation
      const imageResult = await this.validator.validateImage(file);
      
      if (!imageResult.isValid) {
        this.logger.error(`Image validation failed for: ${safePath}`);
        imageResult.errors.forEach(error => {
          this.validationErrors.signatureFailed({
            filePath: safePath,
            error,
            operation: 'image signature validation'
          });
        });
        return false;
      }
      
      // Log any warnings from either validation step
      fileValidation.warnings.forEach(warning => {
        this.logger.warn(`File validation warning for ${safePath}: ${warning}`);
      });
      
      imageResult.warnings.forEach(warning => {
        this.logger.warn(`Image validation warning for ${safePath}: ${warning}`);
      });
      
      this.logger.info(`Complete validation passed: ${safePath}`);
      return true;
      
    } catch (error) {
      this.systemErrors.fileOperationFailed({
        filePath: safePath,
        operation: 'image validation'
      }, error as Error);
      return false;
    }
  }


  async extract(file: MediaFile): Promise<any> {
    const safePath = sanitizePathForLogging(file.absolutePath);
    this.logger.info(`Extracting image metadata from: ${safePath}`);
    
    try {
      // 1. Extract EXIF data using shared utility
      const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
      
      // 2. Extract GPS data from multiple sources using shared utility
      const gpsResult = await this.gpsExtractor.extractGPS({
        exifData,
        sidecarMetadata: file.sidecarMetadata,
        filename: file.path,
        directoryPath: file.absolutePath
      });

      // 3. Extract smart timestamps from all sources using FileSystemService
      const fileMetadata = await this.fs.getFileMetadata(file.absolutePath);
      if (!fileMetadata) {
        throw new Error('Failed to retrieve file metadata for timestamp extraction');
      }
      
      const timestampResult = await this.timestampExtractor.extractTimestamps({
        exifData,
        sidecarMetadata: file.sidecarMetadata,
        fileStats: fileMetadata.stats, // Use stats from FileSystemService
        filePath: file.absolutePath
      });
      
      // 4. TODO: Add other extraction steps
      // - Thumbnail generation
      // - Dominant color extraction
      
      this.logger.info(`Successfully extracted metadata from: ${safePath}`);
      
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
        timestamps: {
          // Legacy EXIF timestamp data for compatibility
          exif: exifData.timestamps,
          // Smart timestamp analysis
          smart: {
            primary: timestampResult.primary,
            capture: timestampResult.capture,
            creation: timestampResult.creation,
            modification: timestampResult.modification,
            alternatives: timestampResult.alternatives,
            conflicts: timestampResult.conflicts
          }
        },
        camera: exifData.camera,
        settings: exifData.settings,
        technical: exifData.technical,
        // TODO: Add when implemented
        thumbnail: null,
        dominantColor: null
      };
      
    } catch (error) {
      this.systemErrors.fileOperationFailed({
        filePath: safePath,
        operation: 'metadata extraction',
        processorType: 'ImageProcessor'
      }, error as Error);
      
      // Return minimal data on error to allow processing to continue
      return {
        type: 'image',
        processor: 'ImageProcessor',
        extractedAt: new Date().toISOString(),
        error: error instanceof Error ? error.message : 'Unknown error',
        exif: {},
        dimensions: { width: 0, height: 0 },
        gps: null,
        timestamps: null,
        camera: null,
        settings: null,
        technical: null,
        thumbnail: null,
        dominantColor: null
      };
    }
  }
}