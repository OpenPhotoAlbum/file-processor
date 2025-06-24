import { MediaFile, ProcessingResult } from '../types/media.js';

/**
 * Common post-processing steps for ALL file types
 * - Store in database
 * - Update search indices
 * - Save generated files (thumbnails, etc.)
 * - Clean up temp files
 */
export async function postProcess(
  file: MediaFile, 
  _metadata: ProcessingResult
): Promise<ProcessingResult> {
  // TODO: Implement actual logic
  // - Database storage
  // - Notification sending
  // - Cleanup
  
  return _metadata;
}