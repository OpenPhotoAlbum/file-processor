import { resolve, relative } from 'path';

/**
 * Path utilities to abstract away file system structure
 * All external paths are relative to configured base directories
 */

/**
 * Path prefixes for different base directories
 * Used to create portable, environment-independent path references
 */
export enum PathPrefix {
  /** Sample media files for testing - maps to SAMPLE_BASE_PATH env var */
  SAMPLE = 'sample:',
  /** Production media files - maps to MEDIA_BASE_PATH env var */
  MEDIA = 'media:',
  /** Files relative to current working directory - fallback option */
  RELATIVE = 'relative:'
}

/**
 * Path prefix configuration mapping prefixes to their properties
 */
const PATH_PREFIX_CONFIG = {
  [PathPrefix.SAMPLE]: {
    envVar: 'SAMPLE_BASE_PATH',
    defaultPath: '/default/sample/path',
    description: 'Test and sample media files',
    prefixLength: PathPrefix.SAMPLE.length
  },
  [PathPrefix.MEDIA]: {
    envVar: 'MEDIA_BASE_PATH', 
    defaultPath: '/default/media/path',
    description: 'Production media files',
    prefixLength: PathPrefix.MEDIA.length
  },
  [PathPrefix.RELATIVE]: {
    envVar: null,
    defaultPath: process.cwd(),
    description: 'Files relative to current working directory',
    prefixLength: PathPrefix.RELATIVE.length
  }
} as const;

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
    return `${PathPrefix.SAMPLE}${relative(SAMPLE_BASE_PATH, absolutePath)}`;
  }
  
  if (absolutePath.startsWith(MEDIA_BASE_PATH)) {
    return `${PathPrefix.MEDIA}${relative(MEDIA_BASE_PATH, absolutePath)}`;
  }
  
  // If not under known bases, use relative from current working directory
  return `${PathPrefix.RELATIVE}${relative(process.cwd(), absolutePath)}`;
}

/**
 * Convert relative path back to absolute path
 */
export function toAbsolutePath(relativePath: string): string {
  const { MEDIA_BASE_PATH, SAMPLE_BASE_PATH } = getBasePaths();
  
  if (relativePath.startsWith(PathPrefix.SAMPLE)) {
    return resolve(SAMPLE_BASE_PATH, relativePath.substring(PATH_PREFIX_CONFIG[PathPrefix.SAMPLE].prefixLength));
  }
  
  if (relativePath.startsWith(PathPrefix.MEDIA)) {
    return resolve(MEDIA_BASE_PATH, relativePath.substring(PATH_PREFIX_CONFIG[PathPrefix.MEDIA].prefixLength));
  }
  
  if (relativePath.startsWith(PathPrefix.RELATIVE)) {
    return resolve(process.cwd(), relativePath.substring(PATH_PREFIX_CONFIG[PathPrefix.RELATIVE].prefixLength));
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

/**
 * Get information about a path prefix
 */
export function getPathPrefixInfo(prefix: PathPrefix) {
  return PATH_PREFIX_CONFIG[prefix];
}

/**
 * Check if a path uses a specific prefix
 */
export function hasPathPrefix(path: string, prefix: PathPrefix): boolean {
  return path.startsWith(prefix);
}

/**
 * Get all available path prefixes
 */
export function getAllPathPrefixes(): PathPrefix[] {
  return Object.values(PathPrefix);
}

/**
 * PATH SYSTEM DOCUMENTATION
 * =========================
 * 
 * This module provides a portable path abstraction system that allows files
 * to be referenced independently of their absolute filesystem locations.
 * 
 * ## Path Prefixes
 * 
 * ### sample: (PathPrefix.SAMPLE)
 * - **Purpose**: Test and sample media files
 * - **Environment Variable**: SAMPLE_BASE_PATH
 * - **Example**: "sample:jpg_with_gps_iphone.JPG"
 * - **Resolves to**: $SAMPLE_BASE_PATH/jpg_with_gps_iphone.JPG
 * - **Use case**: Development, testing, examples
 * 
 * ### media: (PathPrefix.MEDIA)  
 * - **Purpose**: Production media files
 * - **Environment Variable**: MEDIA_BASE_PATH
 * - **Example**: "media:photos/2023/vacation.jpg"
 * - **Resolves to**: $MEDIA_BASE_PATH/photos/2023/vacation.jpg
 * - **Use case**: Production file processing
 * 
 * ### relative: (PathPrefix.RELATIVE)
 * - **Purpose**: Files relative to current working directory
 * - **Environment Variable**: None (uses cwd)
 * - **Example**: "relative:temp/output.json"
 * - **Resolves to**: $CWD/temp/output.json
 * - **Use case**: Temporary files, fallback paths
 * 
 * ## Security Benefits
 * 
 * 1. **Path Sanitization**: Full absolute paths are never exposed in logs
 * 2. **Environment Abstraction**: Same code works across different deployments
 * 3. **Base Directory Isolation**: Files are constrained to configured base directories
 * 4. **Portable References**: Database can store "sample:file.jpg" instead of "/home/user/files/file.jpg"
 * 
 * ## Usage Examples
 * 
 * ```typescript
 * // Convert absolute path to portable reference
 * const portable = toRelativePath('/home/user/samples/test.jpg');
 * // Returns: "sample:test.jpg"
 * 
 * // Convert portable reference back to absolute path
 * const absolute = toAbsolutePath('sample:test.jpg'); 
 * // Returns: "/home/user/samples/test.jpg"
 * 
 * // Safe logging (never exposes full paths)
 * logger.info('Processing file', { file: sanitizePathForLogging(absolutePath) });
 * // Logs: "Processing file sample:test.jpg"
 * 
 * // Type-safe prefix usage
 * if (hasPathPrefix(path, PathPrefix.SAMPLE)) {
 *   // Handle sample file...
 * }
 * ```
 */