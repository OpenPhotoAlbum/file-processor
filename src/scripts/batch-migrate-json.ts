#!/usr/bin/env node
import fs from 'fs/promises';
import path from 'path';
import { Knex } from 'knex';
import { Logger } from '../utils/logging/index.js';
import { EquipmentService } from '../services/database/EquipmentService.js';
import { initializeDatabase } from '../database/knex.js';
import { extractColorAnalysis } from '../services/colorExtractor.js';

const logger = new Logger('BatchMigration');

interface MigrationProgress {
  totalFiles: number;
  processedFiles: number;
  successfulMigrations: number;
  failedMigrations: number;
  hashConflicts: number;
  skippedFiles: number;
  colorsExtracted: number;
  colorExtractionFailed: number;
  startTime: Date;
  currentBatch: number;
  totalBatches: number;
}

interface JSONMetadata {
  success?: boolean;
  results?: Array<{
    metadata?: {
      file?: {
        path?: string;
        mimeType?: string;
        size?: number;
        name?: string;
        directory?: string;
        basename?: string;
        extension?: string;
      };
      processing?: {
        processor?: string;
        extractedAt?: string;
        success?: boolean;
        duration?: number;
        version?: string;
      };
      media?: {
        type?: string;
        format?: string;
        dominantColor?: string;
        meanColor?: string;
        salientColor?: string;
        livePhotoInfo?: {
          isLivePhoto?: boolean;
          pairedVideoFile?: string;
        };
        dimensions?: {
          width?: number;
          height?: number;
        };
        technical?: {
          orientation?: number;
          colorSpace?: string;
          bitDepth?: number;
          compression?: string;
        };
      };
      location?: {
        latitude?: number;
        longitude?: number;
        altitude?: number;
        landmarks?: Array<{
          name?: string;
          type?: string;
          distance?: number;
          bearing?: string;
          source?: string;
        }>;
        geolocation?: {
          city?: string;
          state?: string;
          country?: string;
          municipality?: string;
        };
      };
      camera?: {
        make?: string;
        model?: string;
        software?: string;
        lens?: string;
      };
      settings?: {
        iso?: number;
        aperture?: number;
        shutterSpeed?: string;
        focalLength?: string;
        flash?: string;
        whiteBalance?: string;
        meteringMode?: string;
        exposureMode?: string;
      };
      technical?: {
        [key: string]: unknown;
      };
      timestamps?: {
        primary?: {
          timestamp?: string;
          source?: string;
          confidence?: string;
        };
        created?: string;
        modified?: string;
        digitized?: string;
      };
    };
  }>;
}

class BatchMigrationService {
  private db: Knex;
  private equipmentService: EquipmentService;
  private progress: MigrationProgress;

  constructor(db: Knex) {
    this.db = db;
    this.equipmentService = new EquipmentService(db);
    this.progress = {
      totalFiles: 0,
      processedFiles: 0,
      successfulMigrations: 0,
      failedMigrations: 0,
      hashConflicts: 0,
      skippedFiles: 0,
      colorsExtracted: 0,
      colorExtractionFailed: 0,
      startTime: new Date(),
      currentBatch: 0,
      totalBatches: 0
    };
  }

  async findJSONFiles(directory: string): Promise<string[]> {
    const files: string[] = [];
    
    async function walk(dir: string): Promise<void> {
      try {
        const entries = await fs.readdir(dir, { withFileTypes: true });
        
        for (const entry of entries) {
          const fullPath = path.join(dir, entry.name);
          
          if (entry.isDirectory()) {
            await walk(fullPath);
          } else if (entry.name.endsWith('.json')) {
            files.push(fullPath);
          }
        }
      } catch (error) {
        logger.warn(`Error reading directory ${dir}: ${error}`);
      }
    }
    
    await walk(directory);
    return files;
  }

  async migrateJSONFile(filePath: string): Promise<boolean> {
    try {
      const content = await fs.readFile(filePath, 'utf-8');
      
      // Skip empty files
      if (!content.trim()) {
        logger.debug(`Empty JSON file ${filePath}, skipping`);
        this.progress.skippedFiles++;
        return true;
      }
      
      const data: JSONMetadata = JSON.parse(content);
      
      if (!data.results || data.results.length === 0) {
        logger.debug(`No results in ${filePath}, skipping`);
        this.progress.skippedFiles++;
        return true;
      }

      // Extract colors if missing before migrating to database
      await this.extractAndUpdateColors(filePath, data);

      for (const item of data.results) {
        const metadata = item.metadata;
        if (!metadata) continue;

        try {
          await this.db.transaction(async (trx) => {
          // 1. Get or create equipment
            let equipmentId: number | null = null;
            let imagingTrainId: number | null = null;
          
            if (metadata.camera?.make && metadata.camera?.model) {
              equipmentId = await this.equipmentService.getOrCreateEquipment(
                metadata.camera.make,
                metadata.camera.model
              );
            
              imagingTrainId = await this.equipmentService.getOrCreateImagingTrain(
                equipmentId,
                metadata.camera.make,
                metadata.camera.model
              );
            }

            // 2. Insert media file record first
            const mediaFileData: any = {
              collection: this.determineCollection(metadata.file?.path || filePath),
              relative_path: this.getRelativePath(metadata.file?.path || filePath),
              file_hash: await this.generateFileHash(metadata.file?.path || filePath),
              file_size: metadata.file?.size || 0,
              mime_type: metadata.file?.mimeType || 'unknown',
            
              // Media classification
              media_type: this.determineMediaType(metadata.file?.mimeType),
              media_format: metadata.file?.extension || path.extname(filePath).slice(1),
              is_live_photo: metadata.media?.livePhotoInfo?.isLivePhoto || false,
            
              // Timestamps
              primary_timestamp: this.parseTimestamp(metadata.timestamps?.primary?.timestamp) || new Date(),
              timestamp_source: this.mapTimestampSource(metadata.timestamps?.primary?.source),
              timestamp_confidence: this.mapConfidence(metadata.timestamps?.primary?.confidence),
            
              // Equipment
              imaging_train_id: imagingTrainId,
            
              // Camera settings
              iso_value: metadata.settings?.iso || null,
              aperture_f_number: metadata.settings?.aperture || null,
              shutter_speed_seconds: this.parseShutterSpeed(metadata.settings?.shutterSpeed),
              frame_count: 1,
              integration_time_seconds: this.parseShutterSpeed(metadata.settings?.shutterSpeed),
              focal_length_mm: this.parseFocalLength(metadata.settings?.focalLength),
            
              // Visual properties
              dominant_color_hex: metadata.media?.dominantColor || null,
              mean_color_hex: metadata.media?.meanColor || null,
              salient_color_hex: metadata.media?.salientColor || null,
            
              // Flexible metadata
              media_metadata: {
                technical: metadata.media?.technical || {},
                dimensions: metadata.media?.dimensions || {}
              },
              camera_exif: {
                settings: metadata.settings || {},
                camera: metadata.camera || {},
                technical: metadata.technical || {}
              },
            
              // File system timestamps
              file_created_at: this.parseTimestamp(metadata.timestamps?.created) || new Date(),
              file_modified_at: this.parseTimestamp(metadata.timestamps?.modified) || new Date()
            };

            const [mediaFileId] = await trx('media_files').insert(mediaFileData) as [number];

            // 3. Insert location if GPS data exists
            if (metadata.location?.latitude && metadata.location?.longitude) {
              const locationData: any = {
                file_id: mediaFileId,
                latitude: metadata.location.latitude,
                longitude: metadata.location.longitude,
                gps_source: 'exif',
                gps_confidence: 'medium',
                geolocation_data: metadata.location.geolocation || {}
              };

              await trx('media_locations').insert(locationData);

              // Insert landmarks if they exist
              if (metadata.location.landmarks && metadata.location.landmarks.length > 0) {
                for (const landmark of metadata.location.landmarks) {
                  if (landmark.name) {
                  // Check if landmark already exists
                    const existingLandmark = await trx('landmarks')
                      .select('id')
                      .where('name', landmark.name)
                      .where('provider', this.mapLandmarkProvider(landmark.source))
                      .first();

                    let landmarkId: number;
                    if (existingLandmark) {
                      landmarkId = existingLandmark.id;
                    } else {
                      const landmarkData: any = {
                        name: landmark.name,
                        category: landmark.type || 'unknown',
                        provider: this.mapLandmarkProvider(landmark.source),
                        provider_data: landmark
                      };
                    
                      const [insertedLandmarkId] = await trx('landmarks').insert(landmarkData) as [number];
                      landmarkId = insertedLandmarkId;
                    }

                    // Link media file to landmark
                    const landmarkLinkData: any = {
                      file_id: mediaFileId,
                      landmark_id: landmarkId,
                      distance_meters: Math.round(landmark.distance || 0)
                    };
                    await trx('media_landmarks').insert(landmarkLinkData);
                  }
                }
              }
            }


            // 4. Record processing history
            if (metadata.processing) {
              const processingData: any = {
                file_id: mediaFileId,
                processor: metadata.processing.processor || 'unknown',
                success: metadata.processing.success !== false,
                extracted_at: this.parseTimestamp(metadata.processing.extractedAt) || new Date(),
                processing_version: metadata.processing.version || '1.0.0',
                processing_duration_ms: metadata.processing.duration || null
              };

              await trx('processing_runs').insert(processingData);
            }

            logger.debug(`Successfully migrated ${filePath}`);
          });
        } catch (transactionError: unknown) {
          // Check if this is a duplicate hash error
          const errorString = String(transactionError);
          if (errorString.includes('Duplicate entry') && 
              errorString.includes('media_files_file_hash_unique')) {
            logger.warn(`Hash conflict for ${filePath} - skipping duplicate`);
            this.progress.hashConflicts++;
            return true; // Consider this successful since it's already in DB
          }
          
          logger.error(`Transaction failed for ${filePath}: ${transactionError}`);
          throw transactionError;
        }
      }

      return true;
    } catch (error) {
      logger.error(`Failed to migrate ${filePath}: ${error}`);
      return false;
    }
  }

  private parseShutterSpeed(shutterSpeed?: string): number | null {
    if (!shutterSpeed) return null;
    
    try {
      // Handle fractions like "1/60", "1/125"
      if (shutterSpeed.includes('/')) {
        const [numerator, denominator] = shutterSpeed.split('/');
        return parseFloat(numerator) / parseFloat(denominator);
      }
      
      // Handle decimal values
      return parseFloat(shutterSpeed);
    } catch {
      return null;
    }
  }

  private parseFocalLength(focalLength?: string): number | null {
    if (!focalLength) return null;
    
    try {
      // Handle formats like "4.2 mm", "26 mm", or just "4.2"
      const numericValue = parseFloat(focalLength.toString().replace(/[^\d.]/g, ''));
      return isNaN(numericValue) ? null : numericValue;
    } catch {
      return null;
    }
  }

  private parseTimestamp(timestamp?: string): Date | null {
    if (!timestamp) return null;
    
    try {
      const date = new Date(timestamp);
      if (isNaN(date.getTime())) return null;
      
      // MySQL DATETIME range: 1000-01-01 00:00:00 to 9999-12-31 23:59:59
      // Support historical dates like 1938 photos
      const minDate = new Date('1000-01-01T00:00:00Z');
      const maxDate = new Date('9999-12-31T23:59:59Z');
      
      if (date < minDate) {
        logger.debug(`Date ${timestamp} too old, using 1000-01-01`);
        return minDate;
      }
      
      if (date > maxDate) {
        logger.debug(`Date ${timestamp} too far in future, using 9999-12-31`);
        return maxDate;
      }
      
      return date;
    } catch {
      return null;
    }
  }

  private determineCollection(filePath: string): 'archive' | 'staging' | 'processed' {
    if (filePath.includes('/archive/')) return 'archive';
    if (filePath.includes('/staging/')) return 'staging';
    if (filePath.includes('/processed/')) return 'processed';
    return 'archive'; // default
  }

  private getRelativePath(filePath: string): string {
    // Extract relative path from full path
    const archiveIndex = filePath.indexOf('/archive/');
    const stagingIndex = filePath.indexOf('/staging/');
    const processedIndex = filePath.indexOf('/processed/');
    
    if (archiveIndex !== -1) {
      return filePath.substring(archiveIndex + '/archive/'.length);
    }
    if (stagingIndex !== -1) {
      return filePath.substring(stagingIndex + '/staging/'.length);
    }
    if (processedIndex !== -1) {
      return filePath.substring(processedIndex + '/processed/'.length);
    }
    
    return path.basename(filePath);
  }

  private async generateFileHash(filePath: string): Promise<string> {
    // For now, generate a simple hash from the file path
    // In a production system, this would be the actual file hash
    const crypto = await import('crypto');
    return crypto.createHash('sha256').update(filePath).digest('hex').substring(0, 32);
  }

  private determineMediaType(mimeType?: string): 'image' | 'video' {
    if (!mimeType) return 'image';
    return mimeType.startsWith('video/') ? 'video' : 'image';
  }

  private mapTimestampSource(source?: string): 'exif' | 'filename' | 'filesystem' {
    if (!source) return 'exif';
    if (source.includes('exif')) return 'exif';
    if (source.includes('filename')) return 'filename';
    return 'filesystem';
  }

  private mapConfidence(confidence?: string): 'high' | 'medium' | 'low' {
    if (!confidence) return 'medium';
    if (confidence.toLowerCase() === 'high') return 'high';
    if (confidence.toLowerCase() === 'low') return 'low';
    return 'medium';
  }

  private mapLandmarkProvider(source?: string): 'GNIS' | 'RECREATION_GOV' | 'NPS' {
    if (!source) return 'GNIS';
    const upperSource = source.toUpperCase();
    if (upperSource.includes('RECREATION')) return 'RECREATION_GOV';
    if (upperSource.includes('NPS')) return 'NPS';
    return 'GNIS';
  }

  private async extractAndUpdateColors(filePath: string, metadata: JSONMetadata): Promise<boolean> {
    try {
      // Check if colors are missing
      const mediaData = metadata.results?.[0]?.metadata?.media;
      if (mediaData?.dominantColor || mediaData?.meanColor || mediaData?.salientColor) {
        // Colors already exist, skip extraction
        return true;
      }

      // Get the original image file path (remove .json extension)
      const imagePath = filePath.replace(/\.json$/, '');
      
      // Check if the image file exists
      try {
        await fs.access(imagePath);
      } catch {
        logger.debug(`Image file not found for ${imagePath}, skipping color extraction`);
        return true;
      }

      logger.debug(`Extracting colors for ${imagePath}`);
      const colorAnalysis = await extractColorAnalysis(imagePath);

      // Update the metadata object
      if (!metadata.results?.[0]?.metadata?.media) {
        if (!metadata.results) metadata.results = [{}];
        if (!metadata.results[0].metadata) metadata.results[0].metadata = {};
        if (!metadata.results[0].metadata.media) metadata.results[0].metadata.media = {};
      }

      const media = metadata.results[0].metadata.media;
      media.dominantColor = colorAnalysis.dominantColor;
      media.meanColor = colorAnalysis.meanColor;
      media.salientColor = colorAnalysis.salientColor || undefined;

      // Add color analysis details
      (media as any).colorAnalysis = {
        topColors: colorAnalysis.topColors,
        colorProfile: colorAnalysis.colorProfile,
        extractedAt: new Date().toISOString()
      };

      // Write updated metadata back to JSON file
      await fs.writeFile(filePath, JSON.stringify(metadata, null, 2), 'utf-8');
      
      this.progress.colorsExtracted++;
      logger.debug(`Colors extracted and saved for ${imagePath}`);
      return true;

    } catch (error) {
      logger.error(`Failed to extract colors for ${filePath}: ${error}`);
      this.progress.colorExtractionFailed++;
      return false;
    }
  }

  private logProgress(): void {
    const elapsed = Date.now() - this.progress.startTime.getTime();
    const rate = this.progress.processedFiles / (elapsed / 1000);
    const eta = this.progress.totalFiles > this.progress.processedFiles 
      ? (this.progress.totalFiles - this.progress.processedFiles) / rate 
      : 0;

    logger.info(`Progress: ${this.progress.processedFiles}/${this.progress.totalFiles} ` +
      `(${(this.progress.processedFiles / this.progress.totalFiles * 100).toFixed(1)}%) ` +
      `| Success: ${this.progress.successfulMigrations} ` +
      `| Failed: ${this.progress.failedMigrations} ` +
      `| Hash conflicts: ${this.progress.hashConflicts} ` +
      `| Skipped: ${this.progress.skippedFiles} ` +
      `| Colors: ${this.progress.colorsExtracted} ` +
      `| Rate: ${rate.toFixed(1)} files/sec ` +
      `| ETA: ${Math.round(eta)}s`);
  }

  async runMigration(archivePath: string, batchSize = 100): Promise<void> {
    logger.info('Starting batch migration of JSON metadata to database...');
    logger.info(`Scanning directory: ${archivePath}`);
    
    // Find all JSON files
    const jsonFiles = await this.findJSONFiles(archivePath);
    this.progress.totalFiles = jsonFiles.length;
    
    logger.info(`Found ${jsonFiles.length.toLocaleString()} JSON files to migrate`);
    
    if (jsonFiles.length === 0) {
      logger.error('No JSON files found');
      return;
    }

    // Process in batches
    const batches: string[][] = [];
    for (let i = 0; i < jsonFiles.length; i += batchSize) {
      batches.push(jsonFiles.slice(i, i + batchSize));
    }
    
    this.progress.totalBatches = batches.length;
    logger.info(`Processing ${batches.length} batches of ${batchSize} files each`);

    // Process each batch
    for (let i = 0; i < batches.length; i++) {
      const batch = batches[i];
      this.progress.currentBatch = i + 1;
      
      logger.info(`Processing batch ${i + 1}/${batches.length} (${batch.length} files)`);
      
      // Process files sequentially within the batch to avoid connection overload
      for (const filePath of batch) {
        const success = await this.migrateJSONFile(filePath);
        
        this.progress.processedFiles++;
        if (success) {
          this.progress.successfulMigrations++;
        } else {
          this.progress.failedMigrations++;
          // Only stop on actual failures, not hash conflicts
          if (this.progress.failedMigrations > this.progress.hashConflicts) {
            throw new Error(`Migration failed for ${filePath}. Stopping migration to prevent data corruption.`);
          }
        }
      }
      
      // Log progress every 10 batches or at the end
      if ((i + 1) % 10 === 0 || i === batches.length - 1) {
        this.logProgress();
        
        // Log equipment cache stats
        const cacheStats = this.equipmentService.getCacheStats();
        logger.info(`Equipment cache: ${cacheStats.equipment} entries, ` +
          `Imaging trains: ${cacheStats.imagingTrains} entries`);
      }
    }

    // Final summary
    const totalTime = (Date.now() - this.progress.startTime.getTime()) / 1000;
    logger.info('Migration completed!');
    logger.info(`Total files processed: ${this.progress.processedFiles.toLocaleString()}`);
    logger.info(`Successful migrations: ${this.progress.successfulMigrations.toLocaleString()}`);
    logger.info(`Failed migrations: ${this.progress.failedMigrations.toLocaleString()}`);
    logger.info(`Hash conflicts (skipped): ${this.progress.hashConflicts.toLocaleString()}`);
    logger.info(`Files skipped: ${this.progress.skippedFiles.toLocaleString()}`);
    logger.info(`Colors extracted: ${this.progress.colorsExtracted.toLocaleString()}`);
    logger.info(`Color extraction failed: ${this.progress.colorExtractionFailed.toLocaleString()}`);
    logger.info(`Total time: ${Math.round(totalTime)}s`);
    logger.info(`Average rate: ${(this.progress.processedFiles / totalTime).toFixed(1)} files/sec`);
  }
}

async function main() {
  const archivePath = process.argv[2] || '/photos/archive';
  const batchSize = parseInt(process.argv[3]) || 100;
  
  try {
    logger.info('Initializing database connection...');
    const db = await initializeDatabase();
    
    logger.info('Starting batch migration service...');
    const migrationService = new BatchMigrationService(db);
    
    await migrationService.runMigration(archivePath, batchSize);
    
    logger.info('Closing database connection...');
    await db.destroy();
    
  } catch (error) {
    logger.error(`Migration failed: ${error}`);
    process.exit(1);
  }
}

if (import.meta.url === `file://${process.argv[1]}`) {
  main().catch(error => {
    logger.error(`Script execution failed: ${error}`);
    process.exit(1);
  });
}