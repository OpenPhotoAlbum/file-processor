import { MediaFile } from '../types/media.js';
import { detectMimeType } from '../utils/mime.js';
import { toRelativePath, sanitizePathForLogging } from '../utils/paths.js';
import { stat } from 'fs/promises';

/**
 * Common pre-processing steps for ALL file types
 * - Validate file exists
 * - Generate hash
 * - Detect MIME type
 * - Check for Google metadata
 */
export async function preProcess(absolutePath: string): Promise<MediaFile> {
  const safePath = sanitizePathForLogging(absolutePath);
  console.log(`Pre-processing: ${safePath}`);
  
  // Check if file exists and get size
  const stats = await stat(absolutePath);
  
  // Detect MIME type from extension
  const mimeType = detectMimeType(absolutePath);
  
  // Convert to relative path for storage
  const relativePath = toRelativePath(absolutePath);
  
  console.log(`  MIME type: ${mimeType}`);
  console.log(`  File size: ${stats.size} bytes`);
  console.log(`  Relative path: ${relativePath}`);
  
  return {
    path: relativePath,          // Store relative path
    absolutePath,               // Keep absolute for processing
    hash: 'placeholder-hash',   // TODO: Generate actual hash
    size: stats.size,
    mimeType,
    googleMetadata: undefined   // TODO: Check for .json file
  };
}