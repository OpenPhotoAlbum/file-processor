import { ProcessingResult } from '../types/media.js';
import { Logger } from '../utils/logging/index.js';
import { MediaFileService } from '../services/database/MediaFileService.js';
import { LocationService } from '../services/database/LocationService.js';
import { LandmarkService } from '../services/database/LandmarkService.js';

const logger = new Logger('PostProcessor');

export interface PostProcessorOptions {
  outputDatabase?: boolean;
  dbCollection?: string;
  extractColors?: boolean;
  preserveHistory?: boolean;
}

/**
 * Common post-processing steps for ALL file types
 * - Store in database (if requested)
 * - Store GPS location data
 * - Store landmark associations
 * - Update search indices
 * - Clean up temp files
 */
export async function postProcess(
  result: ProcessingResult,
  options: PostProcessorOptions = {}
): Promise<ProcessingResult> {
  try {
    // Database storage (optional based on CLI flags)
    if (options.outputDatabase) {
      await storeDatabaseRecords(result, options);
    }

    // Additional post-processing steps
    await performCleanup(result);

    return result;

  } catch (error) {
    logger.error(`Post-processing failed for ${result.file.path}: ${error}`);
    throw error;
  }
}

/**
 * Store all database records for a processing result
 */
async function storeDatabaseRecords(
  result: ProcessingResult, 
  options: PostProcessorOptions
): Promise<void> {
  try {
    logger.info(`🔄 Database storage requested for ${result.file.path}`);
    const startTime = Date.now();

    // Get Knex instance from the database service
    const { db: knex } = await import('../database/index.js');

    // Initialize services
    const mediaFileService = new MediaFileService(knex);
    const locationService = new LocationService(knex);
    const landmarkService = new LandmarkService(knex);

    // Store main media file record
    const mediaFileId = await mediaFileService.upsertMediaFile(result, {
      collection: options.dbCollection || 'archive',
      preserveHistory: options.preserveHistory !== false,
      extractColors: options.extractColors !== false
    });

    // Store location data (if GPS data exists)
    if (result.location) {
      await locationService.upsertLocation(mediaFileId, result);
    }

    // Store landmark associations (if enrichment data exists)
    if (result.location?.landmarks && result.location.landmarks.length > 0) {
      await landmarkService.upsertLandmarkAssociations(mediaFileId, result);
    }

    const duration = Date.now() - startTime;
    logger.info(`✅ Database storage completed in ${duration}ms`);

    // Add database info to processing result
    result.database = {
      stored: true,
      mediaFileId,
      collection: options.dbCollection || 'archive',
      duration
    };

  } catch (error) {
    logger.error(`❌ Database storage failed for ${result.file.path}: ${error}`);
    
    // Add failure info to result but don't throw - database storage is optional
    result.database = {
      stored: false,
      error: String(error),
      collection: options.dbCollection || 'archive'
    };
  }
}


/**
 * Perform cleanup operations
 */
async function performCleanup(result: ProcessingResult): Promise<void> {
  try {
    // TODO: Implement actual cleanup
    // - Remove temporary files
    // - Clear processing caches
    // - Update metrics
    
    logger.debug(`Cleanup completed for ${result.file.path}`);
  } catch (error) {
    logger.warn(`Cleanup failed for ${result.file.path}: ${error}`);
  }
}