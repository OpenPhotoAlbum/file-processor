import { BaseProcessor } from './base.processor.js';
import { MediaFile, ProcessingResult } from '../types/media.js';
import { ImageValidator } from '../utils/image/validation.js';
import { ExifExtractor, GPSExtractor, TimestampExtractor } from '../utils/extractors/index.js';
import { getEnabledMimeTypes, getAllSupportedMimeTypes } from '../utils/mime-config.js';
import { Logger } from '../utils/logging/index.js';
import { createValidationErrorFactory, createSystemErrorFactory } from '../utils/errors/factories.js';
import { sanitizePathForLogging } from '../utils/paths.js';
import { FileSystemService } from '../services/index.js';
import { extractColorAnalysis } from '../services/colorExtractor.js';

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


  async extract(file: MediaFile): Promise<ProcessingResult> {
    const safePath = sanitizePathForLogging(file.absolutePath);
    this.logger.info(`Extracting image metadata from: ${safePath}`);
    
    try {
      // 1. Extract EXIF data using shared utility
      const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
      
      // 2. Extract GPS data from multiple sources using shared utility
      this.logger.info('Starting GPS extraction', {
        hasExifData: !!exifData,
        hasSidecarMetadata: !!file.sidecarMetadata,
        filename: file.path
      });
      const gpsResult = await this.gpsExtractor.extractGPS({
        exifData,
        sidecarMetadata: file.sidecarMetadata,
        filename: file.path,
        directoryPath: file.absolutePath
      });
      this.logger.info('GPS extraction completed', {
        hasPrimary: !!gpsResult.primary,
        hasGeolocation: !!gpsResult.geolocation,
        landmarkCount: gpsResult.landmarks.length,
        enrichmentStatus: gpsResult.enrichmentStatus
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
      
      // 4. Extract color analysis
      let colorAnalysis: { dominantColor?: string; meanColor?: string; salientColor?: string } = {};
      try {
        const fullColorAnalysis = await extractColorAnalysis(file.absolutePath);
        colorAnalysis = {
          dominantColor: fullColorAnalysis.dominantColor,
          meanColor: fullColorAnalysis.meanColor,
          salientColor: fullColorAnalysis.salientColor || undefined
        };
        this.logger.info(`Extracted colors - dominant: ${colorAnalysis.dominantColor}, mean: ${colorAnalysis.meanColor}, salient: ${colorAnalysis.salientColor || 'none'}`, { filename: file.path });
      } catch (error) {
        this.logger.warn(`Failed to extract color analysis from ${safePath}:`, { error });
        colorAnalysis = {};
      }
      
      // 5. TODO: Add other extraction steps
      // - Thumbnail generation
      
      this.logger.info(`Successfully extracted metadata from: ${safePath}`);
      
      // Get file format from MIME type
      const format = file.mimeType.split('/')[1] || 'unknown';
      
      // Build consolidated schema
      return {
        file: {
          path: file.path,
          hash: file.hash,
          size: file.size,
          mimeType: file.mimeType,
          created: fileMetadata.stats.birthtime.toISOString(),
          modified: fileMetadata.stats.mtime.toISOString()
        },
        processing: {
          success: true,
          processor: 'ImageProcessor',
          extractedAt: new Date().toISOString(),
          processingTimeMs: undefined // TODO: Add timing
        },
        media: {
          type: 'image',
          format,
          dimensions: {
            width: exifData.image.width || 0,
            height: exifData.image.height || 0,
            megapixels: exifData.image.megapixels || 0,
            orientation: exifData.image.orientation || 'unknown'
          },
          dominantColor: colorAnalysis.dominantColor,
          meanColor: colorAnalysis.meanColor,
          salientColor: colorAnalysis.salientColor
        },
        timestamps: {
          primary: timestampResult.primary,
          capture: timestampResult.capture,
          creation: timestampResult.creation,
          modification: timestampResult.modification,
          alternatives: timestampResult.alternatives,
          conflicts: timestampResult.conflicts
        },
        location: {
          primary: gpsResult.primary,
          alternatives: gpsResult.alternatives,
          conflicts: gpsResult.conflicts,
          geolocation: gpsResult.geolocation,
          landmarks: gpsResult.landmarks,
          enrichmentStatus: gpsResult.enrichmentStatus
        },
        camera: exifData.camera,
        settings: exifData.settings,
        technical: exifData.technical,
        sidecars: file.sidecarMetadata?.map(sidecar => ({
          source: sidecar.source,
          format: sidecar.format,
          path: sidecar.path
        })) || []
      };
      
    } catch (error) {
      this.systemErrors.fileOperationFailed({
        filePath: safePath,
        operation: 'metadata extraction',
        processorType: 'ImageProcessor'
      }, error as Error);
      
      // Return minimal data on error to allow processing to continue
      const format = file.mimeType.split('/')[1] || 'unknown';
      
      return {
        file: {
          path: file.path,
          hash: file.hash,
          size: file.size,
          mimeType: file.mimeType,
          created: new Date().toISOString(), // Fallback timestamp
          modified: new Date().toISOString()
        },
        processing: {
          success: false,
          processor: 'ImageProcessor',
          extractedAt: new Date().toISOString(),
          error: error instanceof Error ? error.message : 'Unknown error'
        },
        media: {
          type: 'image',
          format,
          dimensions: {
            width: 0,
            height: 0,
            megapixels: 0,
            orientation: 'unknown'
          }
        },
        timestamps: {
          primary: null,
          capture: null,
          creation: null,
          modification: null,
          alternatives: [],
          conflicts: []
        },
        location: {
          primary: null,
          alternatives: [],
          conflicts: [],
          geolocation: null,
          landmarks: [],
          enrichmentStatus: {
            geolocation: 'disabled',
            landmarks: 'disabled',
            providersUsed: [],
            cacheHit: false,
            queryTimeMs: 0
          }
        },
        camera: {},
        settings: {},
        technical: {},
        sidecars: []
      };
    }
  }
}