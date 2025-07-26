/**
 * Shared types for filesystem operations
 */

import { Stats } from 'fs';

export interface ScanOptions {
  /** Path to scan - can be absolute or prefixed */
  path: string;
  /** Scan recursively through subdirectories */
  recursive?: boolean;
  /** Filter by file extensions (e.g., ['.jpg', '.png']) */
  extensions?: string[];
  /** Filter by MIME types (e.g., ['image/jpeg', 'image/png']) */
  mimeTypes?: string[];
  /** Maximum depth for recursive scanning (-1 = unlimited) */
  maxDepth?: number;
  /** Follow symbolic links */
  followSymlinks?: boolean;
  /** Include hidden files and directories */
  includeHidden?: boolean;
}

export interface FileValidationResult {
  /** File exists and is accessible */
  isValid: boolean;
  /** File exists */
  exists: boolean;
  /** File is readable */
  readable: boolean;
  /** File is writable */
  writable: boolean;
  /** File is a regular file (not directory, symlink, etc.) */
  isFile: boolean;
  /** Validation errors encountered */
  errors: string[];
  /** Non-critical warnings */
  warnings: string[];
}

export interface FileSystemMetadata {
  /** Absolute path to the file */
  absolutePath: string;
  /** Sanitized path for logging */
  safePath: string;
  /** File size in bytes */
  size: number;
  /** File creation time */
  birthtime: Date;
  /** Last modification time */
  mtime: Date;
  /** Last access time */
  atime: Date;
  /** File permissions */
  mode: number;
  /** Is directory */
  isDirectory: boolean;
  /** Is regular file */
  isFile: boolean;
  /** Is symbolic link */
  isSymbolicLink: boolean;
  /** Raw fs.Stats object */
  stats: Stats;
}

export interface PathValidationResult {
  /** Path is valid and accessible */
  isValid: boolean;
  /** Resolved absolute path */
  absolutePath: string;
  /** Sanitized path for logging */
  safePath: string;
  /** Path uses a known prefix */
  hasKnownPrefix: boolean;
  /** The prefix used (if any) */
  prefix?: string;
  /** Validation errors */
  errors: string[];
  /** Non-critical warnings */
  warnings: string[];
}

export interface MediaDiscoveryOptions {
  /** Include sidecar files in results */
  includeSidecars?: boolean;
  /** Validate file signatures */
  validateSignatures?: boolean;
  /** Skip files that fail validation */
  skipInvalid?: boolean;
  /** Maximum file size to process (bytes) */
  maxFileSize?: number;
}

export interface MediaDiscoveryResult {
  /** Discovered media files */
  mediaFiles: string[];
  /** Associated sidecar files */
  sidecarFiles: string[];
  /** Files that failed validation */
  invalidFiles: string[];
  /** Total files scanned */
  totalScanned: number;
  /** Scan duration in milliseconds */
  scanDuration: number;
}

export interface SidecarSearchOptions {
  /** File extensions to search for sidecar files */
  extensions?: string[];
  /** Search in parent directories */
  searchParentDirs?: boolean;
  /** Maximum depth to search in parent directories */
  maxParentDepth?: number;
}

/**
 * Common file extensions for media files
 */
export const MEDIA_EXTENSIONS = {
  IMAGE: ['.jpg', '.jpeg', '.png', '.gif', '.bmp', '.tiff', '.tif', '.webp', '.heic', '.heif', '.raw', '.cr2', '.nef', '.arw'],
  VIDEO: ['.mp4', '.avi', '.mov', '.mkv', '.webm', '.flv', '.wmv', '.m4v', '.3gp'],
  AUDIO: ['.mp3', '.wav', '.flac', '.aac', '.ogg', '.wma', '.m4a']
} as const;

/**
 * Common sidecar file extensions
 */
export const SIDECAR_EXTENSIONS = [
  '.xmp',   // Adobe XMP
  '.json',  // Custom JSON metadata
  '.xml',   // Various XML formats
  '.txt',   // Plain text metadata
  '.yaml',  // YAML metadata
  '.yml'    // YAML metadata (alternative extension)
] as const;