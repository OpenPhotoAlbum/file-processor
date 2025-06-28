import { BaseProcessor } from './base.processor.js';
import { MediaFile, ProcessingResult } from '../types/media.js';
import { ExifExtractor } from '../utils/extractors/exif.js';
import { GPSExtractor } from '../utils/extractors/gps.js';
import { TimestampExtractor } from '../utils/extractors/timestamp.js';
import { LivePhotoDetector } from '../utils/video/live-photo-detector.js';
import { Logger } from '../utils/logging/index.js';
import { sanitizePathForLogging } from '../utils/paths.js';
import { FileSystemService } from '../services/index.js';

/**
 * Processor for video files (MP4, MOV, AVI, etc.)
 * Handles metadata extraction for video files
 */
export class VideoProcessor extends BaseProcessor {
  private logger = new Logger('VideoProcessor');
  private fs = new FileSystemService();
  
  private exifExtractor = new ExifExtractor();
  private gpsExtractor = new GPSExtractor();
  private timestampExtractor = new TimestampExtractor();
  private livePhotoDetector = new LivePhotoDetector();
  
  /**
   * Get supported video MIME types
   */
  get supportedMimes(): string[] {
    return [
      'video/quicktime',  // .mov
      'video/mp4',        // .mp4, .m4v
      'video/x-msvideo',  // .avi
      'video/x-matroska', // .mkv
      'video/3gpp',       // .3gp
      'video/webm'        // .webm
    ];
  }

  /**
   * Validate video file
   */
  async validate(file: MediaFile): Promise<boolean> {
    const safePath = sanitizePathForLogging(file.absolutePath);
    this.logger.info(`Validating video: ${safePath}`);
    
    try {
      // Use FileSystemService for basic file validation
      const fileValidation = await this.fs.validateFile(file.absolutePath);
      
      if (!fileValidation.exists) {
        this.logger.error(`Video file not found: ${safePath}`);
        return false;
      }
      
      // Check if it's a supported video MIME type
      if (!this.supportedMimes.includes(file.mimeType)) {
        this.logger.error(`Unsupported video MIME type: ${file.mimeType} for file: ${safePath}`);
        return false;
      }
      
      this.logger.debug(`Video validation successful: ${safePath}`);
      return true;
      
    } catch (error) {
      this.logger.error(`Unexpected error validating video: ${safePath}`, error as Error);
      return false;
    }
  }

  /**
   * Extract metadata from video file
   * Videos often contain EXIF data similar to images
   */
  async extract(file: MediaFile): Promise<ProcessingResult> {
    const safePath = sanitizePathForLogging(file.absolutePath);
    this.logger.info(`Extracting metadata from video: ${safePath}`);
    
    try {
      // Get file system metadata
      const fileMetadata = await this.fs.getFileMetadata(file.absolutePath);
      
      if (!fileMetadata) {
        throw new Error('Could not get file metadata');
      }
      
      // Extract EXIF data (many videos have EXIF metadata)
      const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
      
      // Extract GPS if available
      const gpsResult = await this.gpsExtractor.extractGPS({
        exifData,
        sidecarMetadata: file.sidecarMetadata,
        filename: file.path,
        directoryPath: file.absolutePath
      });
      
      // Extract timestamps
      const timestamps = await this.timestampExtractor.extractTimestamps({
        exifData,
        sidecarMetadata: file.sidecarMetadata,
        filePath: file.path,
        fileStats: {
          birthtime: fileMetadata.birthtime,
          mtime: fileMetadata.mtime,
          ctime: fileMetadata.mtime // Use mtime as ctime
        }
      });
      
      // Detect if this is a Live Photo
      const livePhotoResult = await this.livePhotoDetector.detectLivePhoto(file.absolutePath);
      
      // For videos, we'll use a simpler approach for now
      const result: ProcessingResult = {
        file: {
          path: file.path,
          hash: file.hash || 'placeholder-hash',
          size: fileMetadata.size,
          mimeType: file.mimeType,
          created: fileMetadata.birthtime.toISOString(),
          modified: fileMetadata.mtime.toISOString()
        },
        processing: {
          success: true,
          processor: 'VideoProcessor',
          extractedAt: new Date().toISOString()
        },
        media: {
          type: 'video',
          format: file.mimeType.split('/')[1] || 'unknown',
          dimensions: {
            width: exifData?.image?.width || 0,
            height: exifData?.image?.height || 0,
            megapixels: 0, // Not applicable for videos
            orientation: exifData?.image?.orientation || 'Unknown'
          },
          isLivePhoto: livePhotoResult.isLivePhoto,
          livePhotoInfo: livePhotoResult.isLivePhoto ? {
            confidence: livePhotoResult.confidence,
            hasMotionData: livePhotoResult.indicators.hasLivePhotoInfo,
            motionDataCount: livePhotoResult.indicators.livePhotoInfoCount,
            duration: livePhotoResult.indicators.duration,
            correspondingImagePath: livePhotoResult.indicators.correspondingImagePath
          } : undefined
        },
        camera: exifData?.camera || {},
        settings: exifData?.settings || {},
        timestamps,
        location: gpsResult || null,
        technical: {},
        sidecars: file.sidecarMetadata?.map(sidecar => ({
          source: sidecar.source,
          format: sidecar.format,
          path: sidecar.path
        })) || []
      };
      
      this.logger.info(`Successfully extracted video metadata: ${safePath}`);
      return result;
      
    } catch (error) {
      const errorMessage = error instanceof Error ? error.message : 'Unknown error';
      this.logger.error(`Failed to extract video metadata: ${safePath}`, error as Error);
      
      // Get basic file metadata even on error
      const fileMetadata = await this.fs.getFileMetadata(file.absolutePath).catch(() => null);
      
      return {
        file: {
          path: file.path,
          hash: file.hash || 'placeholder-hash', 
          size: fileMetadata?.size || 0,
          mimeType: file.mimeType,
          created: fileMetadata?.birthtime?.toISOString() || new Date().toISOString(),
          modified: fileMetadata?.mtime?.toISOString() || new Date().toISOString()
        },
        processing: {
          success: false,
          processor: 'VideoProcessor',
          extractedAt: new Date().toISOString(),
          error: errorMessage
        },
        media: {
          type: 'video',
          format: file.mimeType.split('/')[1] || 'unknown',
          dimensions: {
            width: 0,
            height: 0,
            megapixels: 0,
            orientation: 'Unknown'
          },
          isLivePhoto: false
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
          landmarks: [],
          enrichmentStatus: {
            geolocation: 'disabled',
            landmarks: 'disabled',
            cacheHit: false,
            queryTimeMs: 0,
            providersUsed: []
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