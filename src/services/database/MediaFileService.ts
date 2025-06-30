import { Knex } from 'knex';
import crypto from 'crypto';
import { Logger } from '../../utils/logging/index.js';
import { EquipmentService } from './EquipmentService.js';
import { extractColorAnalysis } from '../colorExtractor.js';
import { ProcessingResult } from '../../types/media.js';
import { UnknownJsonContent } from '../../types/semantic-any.js';

const logger = new Logger('MediaFileService');

export interface MediaFileStorageOptions {
  collection?: string;
  preserveHistory?: boolean;
  extractColors?: boolean;
}

export interface MediaFileRecord {
  id: number;
  collection: string;
  relative_path: string;
  file_hash: string;
  file_size: number;
  mime_type: string;
  media_type: string;
  media_format: string;
  is_live_photo: boolean;
  primary_timestamp: Date;
  timestamp_source: string;
  timestamp_confidence: string;
  imaging_train_id?: number;
  iso_value?: number;
  aperture_f_number?: number;
  shutter_speed_seconds?: number;
  frame_count: number;
  integration_time_seconds?: number;
  focal_length_mm?: number;
  dominant_color_hex?: string;
  mean_color_hex?: string;
  salient_color_hex?: string;
  media_metadata: UnknownJsonContent;
  camera_exif: UnknownJsonContent;
  created_at: Date;
  updated_at: Date;
}

export class MediaFileService {
  private db: Knex;
  private equipmentService: EquipmentService;
  private fileHashCache: Map<string, number> = new Map();

  constructor(db: Knex) {
    this.db = db;
    this.equipmentService = new EquipmentService(db);
  }

  /**
   * Store or update a media file from processing results
   */
  async upsertMediaFile(
    result: ProcessingResult, 
    options: MediaFileStorageOptions = {}
  ): Promise<number> {
    const {
      collection = 'archive',
      preserveHistory = true,
      extractColors = true
    } = options;

    try {
      // Generate file hash for deduplication
      const fileHash = await this.generateFileHash(result.filePath);
      
      // Check if file already exists
      const existingFile = await this.findByHash(fileHash);
      
      if (existingFile && !preserveHistory) {
        logger.debug(`File already exists, skipping: ${result.filePath}`);
        return existingFile.id;
      }

      // Extract colors if requested and not already present
      let colorData: { dominant?: string; mean?: string; salient?: string } = {};
      if (extractColors && this.shouldExtractColors(result)) {
        colorData = await this.extractColorsFromResult(result);
      }

      // Handle equipment and imaging train
      let imagingTrainId: number | undefined;
      if (result.camera?.make && result.camera?.model) {
        const equipmentId = await this.equipmentService.getOrCreateEquipment(
          result.camera.make,
          result.camera.model
        );
        imagingTrainId = await this.equipmentService.getOrCreateImagingTrain(
          equipmentId,
          result.camera.make,
          result.camera.model
        );
      }

      // Prepare media file data
      const mediaFileData = {
        collection,
        relative_path: this.getRelativePath(result.filePath),
        file_hash: fileHash,
        file_size: result.fileSize || 0,
        mime_type: result.mimeType || 'unknown',
        media_type: this.determineMediaType(result.mimeType),
        media_format: result.format || 'unknown',
        is_live_photo: result.isLivePhoto || false,
        primary_timestamp: this.extractPrimaryTimestamp(result) || new Date(),
        timestamp_source: result.timestamp?.source || 'unknown',
        timestamp_confidence: result.timestamp?.confidence || 'low',
        imaging_train_id: imagingTrainId,
        iso_value: result.camera?.settings?.iso,
        aperture_f_number: result.camera?.settings?.aperture,
        shutter_speed_seconds: result.camera?.settings?.shutterSpeed,
        frame_count: result.dimensions?.frameCount || 1,
        integration_time_seconds: result.camera?.settings?.exposureTime,
        focal_length_mm: result.camera?.settings?.focalLength,
        dominant_color_hex: colorData.dominant,
        mean_color_hex: colorData.mean,
        salient_color_hex: colorData.salient,
        media_metadata: this.sanitizeMetadata(result),
        camera_exif: result.exif || {}
      };

      let mediaFileId: number;

      if (existingFile) {
        // Update existing record
        await this.db('media_files')
          .where('id', existingFile.id)
          .update({
            ...mediaFileData,
            updated_at: new Date()
          });
        mediaFileId = existingFile.id;
        logger.info(`Updated media file: ${result.filePath}`);
      } else {
        // Insert new record
        const [id] = await this.db('media_files').insert({
          ...mediaFileData,
          created_at: new Date(),
          updated_at: new Date()
        });
        mediaFileId = id;
        this.fileHashCache.set(fileHash, id);
        logger.info(`Inserted new media file: ${result.filePath}`);
      }

      // Create processing run record
      await this.createProcessingRun(mediaFileId, result);

      return mediaFileId;

    } catch (error) {
      logger.error(`Failed to upsert media file ${result.filePath}: ${error}`);
      throw error;
    }
  }

  /**
   * Find media file by hash
   */
  async findByHash(hash: string): Promise<MediaFileRecord | null> {
    // Check cache first
    if (this.fileHashCache.has(hash)) {
      const id = this.fileHashCache.get(hash)!;
      return this.findById(id);
    }

    const result = await this.db('media_files')
      .select('*')
      .where('file_hash', hash)
      .first();

    if (result) {
      this.fileHashCache.set(hash, result.id);
    }

    return result || null;
  }

  /**
   * Find media file by ID
   */
  async findById(id: number): Promise<MediaFileRecord | null> {
    const result = await this.db('media_files')
      .select('*')
      .where('id', id)
      .first();

    return result || null;
  }

  /**
   * Generate file hash for deduplication
   */
  private async generateFileHash(filePath: string): Promise<string> {
    return new Promise((resolve, reject) => {
      const hash = crypto.createHash('md5');
      const fs = require('fs');
      const stream = fs.createReadStream(filePath);
      
      stream.on('data', (data: Buffer) => hash.update(data));
      stream.on('end', () => resolve(hash.digest('hex')));
      stream.on('error', reject);
    });
  }

  /**
   * Extract colors from processing result
   */
  private async extractColorsFromResult(result: ProcessingResult): Promise<{
    dominant?: string;
    mean?: string;
    salient?: string;
  }> {
    try {
      if (result.colors?.dominant || result.colors?.mean || result.colors?.salient) {
        return {
          dominant: result.colors.dominant,
          mean: result.colors.mean,
          salient: result.colors.salient
        };
      }

      // Extract colors if not already present
      const colors = await extractColorAnalysis(result.filePath);
      return {
        dominant: colors.dominantColor,
        mean: colors.meanColor,
        salient: colors.salientColor
      };
    } catch (error) {
      logger.warn(`Failed to extract colors for ${result.filePath}: ${error}`);
      return {};
    }
  }

  /**
   * Check if colors should be extracted
   */
  private shouldExtractColors(result: ProcessingResult): boolean {
    // Only extract for images, not videos
    return result.mimeType?.startsWith('image/') || false;
  }

  /**
   * Get relative path for storage
   */
  private getRelativePath(fullPath: string): string {
    // Extract relative path from archive directory
    const archiveIndex = fullPath.indexOf('/photos/archive/');
    if (archiveIndex !== -1) {
      return fullPath.substring(archiveIndex + '/photos/archive/'.length);
    }
    
    // Fallback to filename
    return fullPath.split('/').pop() || fullPath;
  }

  /**
   * Determine media type from MIME type
   */
  private determineMediaType(mimeType?: string): string {
    if (!mimeType) return 'unknown';
    
    if (mimeType.startsWith('image/')) return 'image';
    if (mimeType.startsWith('video/')) return 'video';
    if (mimeType.startsWith('audio/')) return 'audio';
    
    return 'unknown';
  }

  /**
   * Extract primary timestamp from processing result
   */
  private extractPrimaryTimestamp(result: ProcessingResult): Date | null {
    if (result.timestamp?.value) {
      return new Date(result.timestamp.value);
    }
    
    // Fallback to EXIF date
    if (result.exif?.CreateDate) {
      return new Date(result.exif.CreateDate as string);
    }
    
    return null;
  }

  /**
   * Sanitize metadata for storage
   */
  private sanitizeMetadata(result: ProcessingResult): UnknownJsonContent {
    return {
      technical: result.technical || {},
      dimensions: result.dimensions || {},
      location: result.location || {},
      enrichment: result.enrichment || {}
    };
  }

  /**
   * Create processing run record
   */
  private async createProcessingRun(mediaFileId: number, result: ProcessingResult): Promise<void> {
    try {
      const processingRunData = {
        media_file_id: mediaFileId,
        processor_name: result.processor || 'unknown',
        processor_version: '1.0.0', // TODO: Get from package.json
        processing_started_at: new Date(),
        processing_completed_at: new Date(),
        processing_duration_ms: result.processingTime || 0,
        status: 'completed',
        error_message: null,
        run_metadata: {
          enrichment_status: result.enrichment?.status || {},
          provider_usage: result.enrichment?.providerUsage || {}
        }
      };

      await this.db('processing_runs').insert(processingRunData);
    } catch (error) {
      logger.warn(`Failed to create processing run for media file ${mediaFileId}: ${error}`);
    }
  }

  /**
   * Clear caches (useful for testing)
   */
  clearCache(): void {
    this.fileHashCache.clear();
    this.equipmentService.clearCache();
  }

  /**
   * Get cache statistics
   */
  getCacheStats(): { fileHashes: number; equipment: number; imagingTrains: number } {
    const equipmentStats = this.equipmentService.getCacheStats();
    return {
      fileHashes: this.fileHashCache.size,
      equipment: equipmentStats.equipment,
      imagingTrains: equipmentStats.imagingTrains
    };
  }
}