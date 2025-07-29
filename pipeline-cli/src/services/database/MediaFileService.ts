import { Knex } from 'knex';
import crypto from 'crypto';
import { Logger } from '../../utils/logging/index.js';
import { EquipmentService } from './EquipmentService.js';
import { extractColorAnalysis } from '../../utils/extractors/color.js';
import { ProcessingResult } from '../../types/media.js';
import { UnknownJsonContent } from '../../types/semantic-any.js';
import { MediaFile, Collection } from '../../database/types/tables.js';

const logger = new Logger('MediaFileService');

export interface MediaFileStorageOptions {
  collection?: string;
  preserveHistory?: boolean;
  extractColors?: boolean;
}

export type MediaFileRecord = MediaFile;

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
      const fileHash = await this.generateFileHash(result.file.path);
      
      // Check if file already exists
      const existingFile = await this.findByHash(fileHash);
      
      if (existingFile && !preserveHistory) {
        logger.debug(`File already exists, skipping: ${result.file.path}`);
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
      const detectedCollection = this.determineCollection(result.file.path, collection);
      logger.debug(
        `Collection detection: path=${result.file.path}, input=${collection}, detected=${detectedCollection}`
      );
      // @ts-ignore - database insert compatibility
      const mediaFileData = {
        collection: detectedCollection,
        relative_path: this.getRelativePath(result.file.path),
        file_hash: fileHash,
        file_size: result.file.size || 0,
        mime_type: result.file.mimeType || 'unknown',
        media_type: this.determineMediaType(result.file.mimeType) as 'image' | 'video',
        media_format: result.media.format || 'unknown',
        is_live_photo: result.media.isLivePhoto || false,
        primary_timestamp: this.extractPrimaryTimestamp(result) || new Date(),
        timestamp_source: (result.timestamps?.primary?.source || 'filesystem') as 'exif' | 'filename' | 'filesystem',
        timestamp_confidence: (result.timestamps?.primary?.confidence || 'low') as 'high' | 'medium' | 'low',
        imaging_train_id: imagingTrainId,
        iso_value: result.settings?.iso ? parseInt(String(result.settings.iso)) : null,
        aperture_f_number: result.settings?.aperture ? parseFloat(result.settings.aperture) : null,
        shutter_speed_seconds: this.parseShutterSpeed(result.settings?.shutterSpeed),
        frame_count: 1, // TODO: Add frameCount to media interface if needed
        integration_time_seconds: this.calculateIntegrationTime(
          this.parseShutterSpeed(result.settings?.shutterSpeed),
          1 // frame_count defaults to 1
        ),
        focal_length_mm: this.parseFocalLength(result.settings?.focalLength),
        dominant_color_hex: colorData.dominant,
        mean_color_hex: colorData.mean,
        salient_color_hex: colorData.salient,
        media_metadata: JSON.stringify(this.sanitizeMetadata(result)),
        // camera_exif: removed - same data stored in media_metadata.technical
        file_created_at: new Date(result.file.created),
        file_modified_at: new Date(result.file.modified)
      };

      let mediaFileId: number;

      if (existingFile) {
        // Update existing record (remove timestamps, let DB handle them)
        const updateData = { ...mediaFileData };
        // Skip timestamp fields for updates

        await this.db('media_files')
          .where('id', existingFile.id)
          // @ts-ignore - database update compatibility
          .update(updateData);
        mediaFileId = existingFile.id;
        logger.info(`Updated media file: ${result.file.path}`);
      } else {
        // Insert new record (let DB handle timestamps)
        // @ts-ignore - database insert compatibility
        const [id] = await this.db('media_files').insert(mediaFileData);
        mediaFileId = Number(id);
        this.fileHashCache.set(fileHash, mediaFileId);
        logger.info(`Inserted new media file: ${result.file.path}`);
      }

      // Create processing run record
      await this.createProcessingRun(mediaFileId, result);

      return mediaFileId;

    } catch (error) {
      logger.error(`Failed to upsert media file ${result.file.path}: ${error}`);
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
    const hash = crypto.createHash('md5');
    const fs = await import('fs');
      
    // Resolve the absolute path if it's a special path
    let absolutePath = filePath;
    if (filePath.includes(':')) {
      // This is a special path like "sample:file.jpg", resolve it
      const { toAbsolutePath } = await import('../../utils/paths.js');
      absolutePath = toAbsolutePath(filePath);
    }
      
    const stream = fs.createReadStream(absolutePath);
      
    return new Promise<string>((resolve, reject) => {
      stream.on('data', (data: string | Buffer) => hash.update(data));
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
      if (result.media?.dominantColor || result.media?.meanColor || result.media?.salientColor) {
        return {
          dominant: result.media.dominantColor,
          mean: result.media.meanColor,
          salient: result.media.salientColor || undefined
        };
      }

      // Extract colors if not already present
      const colors = await extractColorAnalysis(result.file.path);
      return {
        dominant: colors.dominantColor,
        mean: colors.meanColor,
        salient: colors.salientColor || undefined
      };
    } catch (error) {
      logger.warn(`Failed to extract colors for ${result.file.path}: ${error}`);
      return {};
    }
  }

  /**
   * Check if colors should be extracted
   */
  private shouldExtractColors(result: ProcessingResult): boolean {
    // Only extract for images, not videos
    return result.file.mimeType?.startsWith('image/') || false;
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
   * Determine collection based on file path
   */
  private determineCollection(
    filePath: string, 
    defaultCollection: string
  ): Collection {
    // Check for sample files first
    if (filePath.startsWith('sample:')) {
      logger.debug(`Sample file detected, using sample collection: ${filePath}`);
      return Collection.SAMPLE;
    }
    
    // Check for specific directory patterns
    if (filePath.includes('/photos/archive/')) {
      return Collection.ARCHIVE;
    }
    
    if (filePath.includes('/photos/staging/')) {
      return Collection.STAGING;
    }
    
    if (filePath.includes('/photos/processed/')) {
      return Collection.PROCESSED;
    }
    
    // Use provided default, but ensure it's valid (unless it's 'auto')
    if (defaultCollection === 'auto') {
      return Collection.STAGING; // Default for auto-detection
    }
    
    const validCollections = [Collection.ARCHIVE, Collection.STAGING, Collection.PROCESSED, Collection.SAMPLE];
    if (validCollections.includes(defaultCollection as Collection)) {
      return defaultCollection as Collection;
    }
    
    // Final fallback
    return Collection.STAGING;
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
    if (result.timestamps?.primary?.timestamp) {
      return new Date(result.timestamps.primary.timestamp);
    }
    
    // Fallback to file creation date
    if (result.file.created) {
      return new Date(result.file.created);
    }
    
    return null;
  }

  /**
   * Sanitize metadata for storage
   * Excludes data that's stored in relational columns/tables to prevent duplication
   */
  private sanitizeMetadata(result: ProcessingResult): UnknownJsonContent {
    // Create cleaned media object (exclude fields stored in columns)
    const { type, format, dominantColor, meanColor, salientColor, ...cleanedMedia } = result.media || {};
    void type; void format; void dominantColor; void meanColor; void salientColor;

    // Create cleaned settings object (exclude fields stored in columns)  
    const { iso, aperture, shutterSpeed, focalLength, flash, ...cleanedSettings } = result.settings || {};
    void iso; void aperture; void shutterSpeed; void focalLength; void flash;

    // Create cleaned camera object (exclude fields stored in equipment/software tables)
    const { make, model, software, lens, ...cleanedCamera } = result.camera || {};
    void make; void model; void software; void lens;
    // All camera info is stored in equipment/software tables

    // Create cleaned technical object (exclude fields stored in columns)
    const cleanedTechnical = result.technical ? { ...result.technical } : {};
    delete cleanedTechnical.fileType;    // stored in media_format column
    delete cleanedTechnical.mimeType;    // stored in mime_type column
    delete cleanedTechnical.SourceFile;  // stored in relative_path column
    delete cleanedTechnical['EXIF:Flash']; // stored in settings.flash

    return {
      media: cleanedMedia,
      // location: excluded - stored in media_locations and media_landmarks tables
      camera: cleanedCamera,
      settings: cleanedSettings, 
      technical: cleanedTechnical
      // processing: excluded - stored in processing_runs table
    };
  }

  /**
   * Create processing run record
   */
  private async createProcessingRun(mediaFileId: number, result: ProcessingResult): Promise<void> {
    try {
      const processingRunData = {
        file_id: mediaFileId,
        processor: result.processing.processor,
        success: result.processing.success,
        extracted_at: new Date(result.processing.extractedAt),
        processing_version: result.processing.version || '1.0.0',
        providers_enabled: result.processing.providersEnabled || null,
        providers_with_results: null, // TODO: Extract from result
        provider_failures: null, // TODO: Extract from result
        processing_duration_ms: result.processing.processingTimeMs || 0,
        notes: result.processing.notes || null
      };

      // @ts-ignore - database insert compatibility
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

  /**
   * Parse shutter speed string to decimal seconds
   */
  private parseShutterSpeed(shutterSpeed?: string): number | null {
    if (!shutterSpeed) return null;
    
    // Handle fraction format (e.g., "1/125")
    if (shutterSpeed.includes('/')) {
      const [numerator, denominator] = shutterSpeed.split('/').map(Number);
      return numerator / denominator;
    }
    
    // Handle decimal format (e.g., "0.008")
    return parseFloat(shutterSpeed);
  }

  /**
   * Parse focal length string to mm integer
   */
  private parseFocalLength(focalLength?: string): number | null {
    if (!focalLength) return null;
    
    // Extract numeric value (e.g., "50mm" -> 50)
    const match = focalLength.match(/(\d+)/);
    return match ? parseInt(match[1]) : null;
  }

  /**
   * Calculate integration time as shutter_speed_seconds * frame_count
   * Defaults to shutter speed if available, null if shutter speed is null
   * Rounds to 5 decimal places for reasonable precision
   */
  private calculateIntegrationTime(shutterSpeedSeconds: number | null, frameCount: number): number | null {
    if (shutterSpeedSeconds === null) return null;
    
    // Integration time = shutter speed * frame count
    // For single frames (photos), this equals shutter speed
    // For multiple frames (video/stacking), this is total exposure time
    const integrationTime = shutterSpeedSeconds * frameCount;
    
    // Round to 5 decimal places (e.g., 0.00025)
    return Math.round(integrationTime * 100000) / 100000;
  }
}