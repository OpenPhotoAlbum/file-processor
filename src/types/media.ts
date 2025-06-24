/**
 * Supported sidecar metadata file formats
 */
export enum SidecarFormat {
  /** JSON format - commonly used by Google Takeout, custom tools */
  JSON = 'json',
  /** XMP format - Adobe Bridge, Lightroom, etc. */
  XMP = 'xmp',
  /** XML format - various video metadata systems */
  XML = 'xml',
  /** Plain text format - simple key=value pairs */
  TEXT = 'text'
}

/**
 * MIME types that the codebase can actually process
 * These are the formats our processors, validators, and extractors support
 */
export enum SupportedMimeType {
  /** JPEG images - primary supported format */
  JPEG = 'image/jpeg',
  /** JPEG images - alternative MIME type */
  JPG = 'image/jpg',
  /** PNG images - full support */
  PNG = 'image/png',
  /** HEIC images - Apple format support */
  HEIC = 'image/heic',
  /** GIF images - basic support */
  GIF = 'image/gif',
  /** TIFF images - full support */
  TIFF = 'image/tiff'
}

/**
 * Metadata from external sidecar files (JSON, XMP, etc.)
 */
export interface SidecarMetadata {
  source: string;           // Source system: 'google-takeout', 'adobe-bridge', 'custom', etc.
  format: SidecarFormat;    // File format using type-safe enum
  path: string;            // Relative path to metadata file
  absolutePath: string;    // Absolute path for processing
  data: Record<string, any>; // Parsed metadata content
}

/**
 * Core media file interface - completely source-agnostic
 */
export interface MediaFile {
  path: string;          // Always store as relative path (e.g., "sample:jpg_with_gps_iphone.JPG")
  absolutePath: string;  // Used internally for processing, never stored
  hash: string;
  size: number;
  mimeType: string;
  sidecarMetadata?: SidecarMetadata[]; // Generic external metadata from any source
}

// Processing result interface
export interface ProcessingResult {
  success: boolean;
  mediaFile: MediaFile;
  metadata: any; // TODO: type this properly later
  error?: string;
}