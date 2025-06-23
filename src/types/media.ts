// Core media file interface
export interface MediaFile {
  path: string;          // Always store as relative path (e.g., "sample:jpg_with_gps_iphone.JPG")
  absolutePath: string;  // Used internally for processing, never stored
  hash: string;
  size: number;
  mimeType: string;
  googleMetadata?: any; // TODO: type this properly later
}

// Processing result interface
export interface ProcessingResult {
  success: boolean;
  mediaFile: MediaFile;
  metadata: any; // TODO: type this properly later
  error?: string;
}