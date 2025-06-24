import { MediaFile } from '../types/media.js';

/**
 * Common post-processing steps for ALL file types
 * - Store in database
 * - Update search indices
 * - Save generated files (thumbnails, etc.)
 * - Clean up temp files
 */
export async function postProcess(file: MediaFile, metadata: any): Promise<any> {
  console.log(`Post-processing: ${file.path}`); // Safe to log - it's the relative path
  
  // TODO: Implement actual logic
  // - Database storage
  // - Notification sending
  // - Cleanup
  
  return {
    stored: true,
    timestamp: new Date().toISOString()
  };
}