import { resolve, relative } from 'path';

/**
 * Path utilities to abstract away file system structure
 * All external paths are relative to configured base directories
 */

// Get base paths from environment variables (loaded dynamically)
function getBasePaths() {
  return {
    MEDIA_BASE_PATH: process.env.MEDIA_BASE_PATH || '/default/media/path',
    SAMPLE_BASE_PATH: process.env.SAMPLE_BASE_PATH || '/default/sample/path'
  };
}

/**
 * Convert absolute path to relative path from base directory
 */
export function toRelativePath(absolutePath: string): string {
  const { MEDIA_BASE_PATH, SAMPLE_BASE_PATH } = getBasePaths();
  
  // Try sample base first, then media base
  if (absolutePath.startsWith(SAMPLE_BASE_PATH)) {
    return `sample:${relative(SAMPLE_BASE_PATH, absolutePath)}`;
  }
  
  if (absolutePath.startsWith(MEDIA_BASE_PATH)) {
    return `media:${relative(MEDIA_BASE_PATH, absolutePath)}`;
  }
  
  // If not under known bases, use relative from current working directory
  return `relative:${relative(process.cwd(), absolutePath)}`;
}

/**
 * Convert relative path back to absolute path
 */
export function toAbsolutePath(relativePath: string): string {
  const { MEDIA_BASE_PATH, SAMPLE_BASE_PATH } = getBasePaths();
  
  if (relativePath.startsWith('sample:')) {
    return resolve(SAMPLE_BASE_PATH, relativePath.substring(7));
  }
  
  if (relativePath.startsWith('media:')) {
    return resolve(MEDIA_BASE_PATH, relativePath.substring(6));
  }
  
  if (relativePath.startsWith('relative:')) {
    return resolve(process.cwd(), relativePath.substring(9));
  }
  
  // Fallback - assume it's already relative to cwd
  return resolve(process.cwd(), relativePath);
}

/**
 * Sanitize path for logging - never expose full absolute paths
 */
export function sanitizePathForLogging(path: string): string {
  return toRelativePath(path);
}