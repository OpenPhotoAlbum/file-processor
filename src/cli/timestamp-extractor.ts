/**
 * Lightweight timestamp extraction for CLI --timestamp-only flag
 * Uses existing shared services but skips heavy processing
 */

import { TimestampExtractor } from '../utils/extractors/timestamp.js';
import { ExifExtractor } from '../utils/extractors/exif.js';
import { FileSystemService } from '../services/index.js';
import { preProcess } from '../pipeline/pre-processor.js';
import { Logger } from '../utils/logging/index.js';
import { basename } from 'path';

const logger = new Logger('Timestamp Only');

/**
 * Extract timestamp in YYYY-MM-DD_HH-MM-SS format for filename use
 * Reuses existing timestamp extraction logic but skips GPS/landmark processing
 */
export async function extractTimestampOnly(filePath: string): Promise<string> {
  try {
    // Use existing pre-processor to get file metadata and sidecars
    // This reuses our existing validation and sidecar discovery logic
    const file = await preProcess(filePath);
    
    // Use existing services for extraction
    const exifExtractor = new ExifExtractor();
    const timestampExtractor = new TimestampExtractor();
    const fs = new FileSystemService();
    
    // Extract EXIF data using shared utility
    const exifData = await exifExtractor.extractExifData(file.absolutePath);
    
    // Get file metadata using FileSystemService
    const fileMetadata = await fs.getFileMetadata(file.absolutePath);
    if (!fileMetadata) {
      throw new Error('Failed to retrieve file metadata');
    }
    
    // Extract timestamps using existing shared logic
    const timestampResult = await timestampExtractor.extractTimestamps({
      exifData,
      sidecarMetadata: file.sidecarMetadata,
      fileStats: fileMetadata.stats,
      filePath: file.absolutePath
    });

    // Use primary timestamp (same logic as image processor)
    const timestamp = timestampResult.primary?.timestamp;
    
    if (!timestamp) {
      throw new Error('No valid timestamp found');
    }

    // Convert ISO timestamp to YYYY-MM-DD_HH-MM-SS format
    const date = new Date(timestamp);
    const year = date.getUTCFullYear();
    const month = String(date.getUTCMonth() + 1).padStart(2, '0');
    const day = String(date.getUTCDate()).padStart(2, '0');
    const hours = String(date.getUTCHours()).padStart(2, '0');
    const minutes = String(date.getUTCMinutes()).padStart(2, '0');
    const seconds = String(date.getUTCSeconds()).padStart(2, '0');

    return `${year}-${month}-${day}_${hours}-${minutes}-${seconds}`;

  } catch (error) {
    logger.error(`Timestamp extraction failed for ${basename(filePath)}: ${(error as Error).message}`);
    
    // Fallback to current date if all extraction methods fail
    const now = new Date();
    const year = now.getUTCFullYear();
    const month = String(now.getUTCMonth() + 1).padStart(2, '0');
    const day = String(now.getUTCDate()).padStart(2, '0');
    const hours = String(now.getUTCHours()).padStart(2, '0');
    const minutes = String(now.getUTCMinutes()).padStart(2, '0');
    const seconds = String(now.getUTCSeconds()).padStart(2, '0');

    return `${year}-${month}-${day}_${hours}-${minutes}-${seconds}`;
  }
}