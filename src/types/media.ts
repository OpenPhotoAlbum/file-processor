/**
 * Metadata from external sidecar files (JSON, XMP, etc.)
 */
export interface SidecarMetadata {
  source: string;           // Source system: 'google-takeout', 'adobe-bridge', 'custom', etc.
  format: string;           // File format: 'json', 'xmp', 'xml', 'txt', etc.
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