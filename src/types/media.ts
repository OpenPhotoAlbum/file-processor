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
 * Known sidecar metadata sources
 */
export enum SidecarSource {
  /** Google Takeout photo metadata */
  GOOGLE_TAKEOUT = 'google-takeout',
  /** Adobe Bridge XMP metadata */
  ADOBE_BRIDGE = 'adobe-bridge',
  /** Adobe Lightroom metadata */
  ADOBE_LIGHTROOM = 'adobe-lightroom',
  /** Custom metadata files */
  CUSTOM = 'custom',
  /** Unknown or unidentified source */
  UNKNOWN = 'unknown'
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
  TIFF = 'image/tiff',
  /** WEBP images - modern web format */
  WEBP = 'image/webp'
}

/**
 * Metadata from external sidecar files (JSON, XMP, etc.)
 */
export interface SidecarMetadata {
  source: SidecarSource;    // Source system using type-safe enum
  format: SidecarFormat;    // File format using type-safe enum
  path: string;            // Relative path to metadata file
  absolutePath: string;    // Absolute path for processing
  data: Record<string, unknown>; // Parsed metadata content
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

/**
 * New consolidated processing result schema
 */
export interface ProcessingResult {
  file: {
    path: string;
    hash: string;
    size: number;
    mimeType: string;
    created: string;
    modified: string;
  };
  processing: {
    success: boolean;
    processor: string;
    extractedAt: string;
    processingTimeMs?: number;
    error?: string;
  };
  media: {
    type: string;
    format: string;
    dimensions: {
      width: number;
      height: number;
      megapixels: number;
      orientation: string;
    };
    isLivePhoto?: boolean;
    livePhotoInfo?: {
      confidence: 'high' | 'medium' | 'low' | 'none';
      hasMotionData: boolean;
      motionDataCount: number;
      duration: number | null;
      correspondingImagePath?: string;
    };
  };
  timestamps: import('../utils/extractors/timestamp.js').TimestampExtractionResult;
  location: import('../utils/extractors/gps.js').GPSExtractionResult;
  camera: {
    make?: string;
    model?: string;
    lens?: string;
    software?: string;
  };
  settings: {
    iso?: number;
    aperture?: string;
    shutterSpeed?: string;
    focalLength?: string;
    focalLength35mm?: string;
    flash?: string;
  };
  technical: {
    fileType?: string;
    mimeType?: string;
    exifVersion?: string;
    colorSpace?: string;
    compression?: string;
    encoding?: string;
    [key: string]: unknown;
  };
  sidecars: {
    source: SidecarSource;
    format: SidecarFormat;
    path: string;
  }[];
}