/**
 * Shared type mappings between database and CLI
 * This file bridges the gap between database storage and runtime processing
 */

import { 
  ConfidenceLevel, 
  MediaType as DBMediaType, 
  TimestampSource,
  GPSSource,
  Collection 
} from './tables.js';
import type { MediaMetadata, CameraExifData } from './metadata.js';
import { ProcessingResult, ProcessingEvent } from '../../types/media.js';

/**
 * Maps CLI confidence strings to database enum
 */
export function mapConfidenceToDb(confidence: 'high' | 'medium' | 'low' | 'none'): ConfidenceLevel | null {
  switch (confidence) {
  case 'high': return ConfidenceLevel.HIGH;
  case 'medium': return ConfidenceLevel.MEDIUM;
  case 'low': return ConfidenceLevel.LOW;
  case 'none': return null;
  default: return ConfidenceLevel.LOW;
  }
}

/**
 * Maps database confidence enum to CLI strings
 */
export function mapConfidenceFromDb(confidence: ConfidenceLevel | null): 'high' | 'medium' | 'low' | 'none' {
  switch (confidence) {
  case ConfidenceLevel.HIGH: return 'high';
  case ConfidenceLevel.MEDIUM: return 'medium';
  case ConfidenceLevel.LOW: return 'low';
  case null: return 'none';
  default: return 'low';
  }
}

/**
 * Maps media type string to database enum
 */
export function mapMediaTypeToDb(type: string): DBMediaType {
  return type.toLowerCase() === 'video' ? DBMediaType.VIDEO : DBMediaType.IMAGE;
}

/**
 * Determines collection from file path
 */
export function determineCollection(path: string): Collection {
  if (path.includes('/archive/')) return Collection.ARCHIVE;
  if (path.includes('/staging/')) return Collection.STAGING;
  if (path.includes('/processed/')) return Collection.PROCESSED;
  // Default to staging for unknown paths
  return Collection.STAGING;
}

/**
 * Maps timestamp source string to database enum
 */
export function mapTimestampSourceToDb(source: string): TimestampSource {
  switch (source.toLowerCase()) {
  case 'exif': return TimestampSource.EXIF;
  case 'filename': return TimestampSource.FILENAME;
  case 'filesystem': return TimestampSource.FILESYSTEM;
  default: return TimestampSource.FILESYSTEM;
  }
}

/**
 * Maps GPS source string to database enum
 */
export function mapGPSSourceToDb(source: string): GPSSource {
  switch (source.toLowerCase()) {
  case 'exif': return GPSSource.EXIF;
  case 'manual': return GPSSource.MANUAL;
  case 'estimated': return GPSSource.ESTIMATED;
  default: return GPSSource.EXIF;
  }
}

/**
 * Converts ProcessingResult to database-ready format
 */
export interface DatabaseMediaFile {
  collection: Collection;
  relative_path: string;
  file_hash: string;
  file_size: number;
  mime_type: string;
  media_type: DBMediaType;
  media_format: string;
  is_live_photo: boolean;
  primary_timestamp: Date;
  timestamp_source: TimestampSource;
  timestamp_confidence: ConfidenceLevel;
  iso_value?: number;
  aperture_f_number?: number;
  shutter_speed_seconds?: number;
  focal_length_mm?: number;
  dominant_color_hex?: string;
  mean_color_hex?: string;
  salient_color_hex?: string;
  media_metadata: MediaMetadata;
  camera_exif: CameraExifData;
  file_created_at: Date;
  file_modified_at: Date;
}

/**
 * Converts ProcessingResult to database format
 */
export function processingResultToDatabase(result: ProcessingResult, relativePath: string): DatabaseMediaFile {
  // Parse aperture to f-number (e.g., "f/2.8" -> 2.8)
  const apertureFNumber = result.settings.aperture 
    ? parseFloat(result.settings.aperture.replace(/[^0-9.]/g, ''))
    : undefined;
  
  // Parse shutter speed to seconds (e.g., "1/250" -> 0.004)
  const shutterSpeedSeconds = result.settings.shutterSpeed
    ? parseShutterSpeed(result.settings.shutterSpeed)
    : undefined;

  // Parse focal length to mm (e.g., "50mm" -> 50)
  const focalLengthMm = result.settings.focalLength
    ? parseInt(result.settings.focalLength.replace(/[^0-9]/g, ''))
    : undefined;

  return {
    collection: determineCollection(relativePath),
    relative_path: relativePath,
    file_hash: result.file.hash,
    file_size: result.file.size,
    mime_type: result.file.mimeType,
    media_type: mapMediaTypeToDb(result.media.type),
    media_format: result.media.format.toLowerCase(),
    is_live_photo: result.media.isLivePhoto || false,
    primary_timestamp: result.timestamps.primary 
      ? new Date(result.timestamps.primary.timestamp)
      : new Date(result.file.modified),
    timestamp_source: result.timestamps.primary
      ? mapTimestampSourceToDb(result.timestamps.primary.source)
      : TimestampSource.FILESYSTEM,
    timestamp_confidence: result.timestamps.primary
      ? mapConfidenceToDb(result.timestamps.primary.confidence) || ConfidenceLevel.LOW
      : ConfidenceLevel.LOW,
    iso_value: result.settings.iso,
    aperture_f_number: apertureFNumber,
    shutter_speed_seconds: shutterSpeedSeconds,
    focal_length_mm: focalLengthMm,
    dominant_color_hex: result.media.dominantColor,
    mean_color_hex: result.media.meanColor,
    salient_color_hex: result.media.salientColor,
    media_metadata: {
      dimensions: result.media.dimensions,
      livePhotoInfo: result.media.livePhotoInfo
    },
    camera_exif: {
      camera: result.camera,
      settings: result.settings,
      technical: result.technical
    },
    file_created_at: new Date(result.file.created),
    file_modified_at: new Date(result.file.modified)
  };
}

/**
 * Parse shutter speed string to seconds
 * Examples: "1/250" -> 0.004, "2.5" -> 2.5, "30s" -> 30
 */
function parseShutterSpeed(shutter: string): number | undefined {
  if (!shutter) return undefined;
  
  // Handle fractional format (e.g., "1/250")
  if (shutter.includes('/')) {
    const [numerator, denominator] = shutter.split('/').map(s => parseFloat(s));
    return numerator / denominator;
  }
  
  // Handle decimal seconds (e.g., "2.5s", "30")
  const seconds = parseFloat(shutter.replace(/[^0-9.]/g, ''));
  return isNaN(seconds) ? undefined : seconds;
}

/**
 * Convert ProcessingEvent to database processing run format
 */
export interface DatabaseProcessingRun {
  processor: string;
  success: boolean;
  extracted_at: Date;
  processing_version?: string;
  providers_enabled?: string[];
  providers_with_results?: string[];
  provider_failures?: string[];
  processing_duration_ms?: number;
  notes?: string;
}

export function processingEventToDatabase(event: ProcessingEvent): DatabaseProcessingRun {
  return {
    processor: event.processor,
    success: event.success,
    extracted_at: new Date(event.extractedAt),
    processing_version: event.version,
    providers_enabled: event.providersEnabled,
    processing_duration_ms: event.processingTimeMs,
    notes: event.notes || event.error
  };
}