// Database table types for TypeScript
// These match the schema defined in the Knex migrations
// 
// Connection to CLI types:
// - ConfidenceLevel: Maps to ProcessingResult confidence strings ('high' | 'medium' | 'low' | 'none')
// - MediaType: Maps to ProcessingResult.media.type 
// - TimestampSource: Maps to ProcessingResult.timestamps.primary.source
// - Collection: Determined from file path (/archive/, /staging/, /processed/)
// - See ./shared.ts for conversion functions between CLI and database types

import type {
  EquipmentMetadata,
  ImagingTrainMetadata,
  MediaMetadata,
  CameraExifData,
  GeolocationData,
  LandmarkProviderData,
  SoftwareMetadata,
  SoftwareUsageMetadata,
  ProvidersArray
} from './metadata.js';

// Shared enums
export enum ConfidenceLevel {
  HIGH = 'high',
  MEDIUM = 'medium',
  LOW = 'low'
}

// Equipment enums
export enum EquipmentType {
  CAMERA = 'camera',
  LENS = 'lens',
  TELESCOPE = 'telescope',
  MOUNT = 'mount',
  FILTER = 'filter',
  GUIDER = 'guider'
}

// Media enums
export enum Collection {
  ARCHIVE = 'archive',
  STAGING = 'staging',
  PROCESSED = 'processed'
}

export enum MediaType {
  IMAGE = 'image',
  VIDEO = 'video'
}

export enum TimestampSource {
  EXIF = 'exif',
  FILENAME = 'filename',
  FILESYSTEM = 'filesystem'
}

// Location enums
export enum GPSSource {
  EXIF = 'exif',
  MANUAL = 'manual',
  ESTIMATED = 'estimated'
}

export enum LandmarkProvider {
  GNIS = 'GNIS',
  RECREATION_GOV = 'RECREATION_GOV',
  NPS = 'NPS'
}

// Software enums
export enum SoftwareType {
  CAPTURE = 'capture',
  PROCESSING = 'processing',
  POST_PROCESSING = 'post_processing',
  ANALYSIS = 'analysis'
}

export interface Equipment {
  id: number;
  equipment_type: EquipmentType;
  make: string;
  model: string;
  equipment_metadata?: EquipmentMetadata;
  is_active: boolean;
}

export interface ImagingTrain {
  id: number;
  name: string;
  description?: string;
  primary_camera_id: number;
  lens_id?: number;
  telescope_id?: number;
  mount_id?: number;
  train_metadata?: ImagingTrainMetadata;
  is_active: boolean;
}

export interface MediaFile {
  id: number;
  collection: Collection;
  relative_path: string;
  file_hash: string;
  file_size: number;
  mime_type: string;
  media_type: MediaType;
  media_format: string;
  is_live_photo: boolean;
  primary_timestamp: Date;
  timestamp_source: TimestampSource;
  timestamp_confidence: ConfidenceLevel;
  imaging_train_id?: number;
  iso_value?: number;
  aperture_f_number?: number;
  shutter_speed_seconds?: number;
  frame_count: number;
  integration_time_seconds?: number;
  focal_length_mm?: number;
  dominant_color_hex?: string;
  mean_color_hex?: string;
  salient_color_hex?: string;
  media_metadata?: MediaMetadata;
  camera_exif?: CameraExifData;
  file_created_at: Date;
  file_modified_at: Date;
  created_at: Date;
  updated_at: Date;
}

export interface MediaLocation {
  file_id: number;
  latitude: number;
  longitude: number;
  gps_source: GPSSource;
  gps_confidence: ConfidenceLevel;
  geolocation_data?: GeolocationData;
}

export interface Landmark {
  id: number;
  name: string;
  category: string;
  provider: LandmarkProvider;
  provider_data?: LandmarkProviderData;
}

export interface MediaLandmark {
  id: number;
  file_id: number;
  landmark_id: number;
  distance_meters: number;
}

export interface Software {
  id: number;
  name: string;
  software_type: SoftwareType;
  version?: string;
  software_metadata?: SoftwareMetadata;
}

export interface MediaSoftware {
  id: number;
  file_id: number;
  software_id: number;
  usage_role: string;
  usage_metadata?: SoftwareUsageMetadata;
}

export interface ProcessingRun {
  id: number;
  file_id: number;
  processor: string;
  success: boolean;
  extracted_at: Date;
  processing_version?: string;
  providers_enabled?: ProvidersArray;
  providers_with_results?: ProvidersArray;
  provider_failures?: ProvidersArray;
  processing_duration_ms?: number;
  notes?: string;
}

export interface ProcessingFieldUpdate {
  id: number;
  processing_run_id: number;
  field_name: string;
}

// Module augmentation for Knex to provide table type hints
declare module 'knex/types/tables' {
  interface Tables {
    equipment: Equipment;
    imaging_trains: ImagingTrain;
    media_files: MediaFile;
    media_locations: MediaLocation;
    landmarks: Landmark;
    media_landmarks: MediaLandmark;
    software: Software;
    media_software: MediaSoftware;
    processing_runs: ProcessingRun;
    processing_field_updates: ProcessingFieldUpdate;
  }
}