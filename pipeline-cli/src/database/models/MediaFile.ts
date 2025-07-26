import { RowDataPacket } from 'mysql2';
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
} from '../types/metadata.js';

export interface MediaFileRecord extends RowDataPacket {
  id: number;
  collection: 'archive' | 'staging' | 'processed';
  relative_path: string;
  file_hash: string;
  file_size: number;
  mime_type: string;
  media_type: 'image' | 'video';
  media_format: string;
  is_live_photo: boolean;
  primary_timestamp: Date;
  timestamp_source: 'exif' | 'filename' | 'filesystem';
  timestamp_confidence: 'high' | 'medium' | 'low';
  imaging_train_id: number | null;
  iso_value: number | null;
  aperture_f_number: number | null;
  shutter_speed_seconds: number | null;
  frame_count: number;
  integration_time_seconds: number | null;
  focal_length_mm: number | null;
  dominant_color_hex: string | null;
  mean_color_hex: string | null;
  salient_color_hex: string | null;
  media_metadata: MediaMetadata;
  camera_exif: CameraExifData;
  file_created_at: Date;
  file_modified_at: Date;
  created_at: Date;
  updated_at: Date;
}

export interface MediaLocationRecord extends RowDataPacket {
  file_id: number;
  latitude: number;
  longitude: number;
  gps_source: 'exif' | 'manual' | 'estimated';
  gps_confidence: 'high' | 'medium' | 'low';
  geolocation_data: GeolocationData;
}

export interface LandmarkRecord extends RowDataPacket {
  id: number;
  name: string;
  category: string;
  provider: 'GNIS' | 'RECREATION_GOV' | 'NPS';
  provider_data: LandmarkProviderData;
}

export interface MediaLandmarkRecord extends RowDataPacket {
  id: number;
  file_id: number;
  landmark_id: number;
  distance_meters: number;
}

export interface EquipmentRecord extends RowDataPacket {
  id: number;
  equipment_type: 'camera' | 'lens' | 'telescope' | 'mount' | 'filter' | 'guider';
  make: string;
  model: string;
  equipment_metadata: EquipmentMetadata;
  is_active: boolean;
}

export interface ImagingTrainRecord extends RowDataPacket {
  id: number;
  name: string;
  description: string | null;
  primary_camera_id: number;
  lens_id: number | null;
  telescope_id: number | null;
  mount_id: number | null;
  train_metadata: ImagingTrainMetadata;
  is_active: boolean;
}

export interface SoftwareRecord extends RowDataPacket {
  id: number;
  name: string;
  software_type: 'capture' | 'processing' | 'post_processing' | 'analysis';
  version: string | null;
  software_metadata: SoftwareMetadata;
}

export interface MediaSoftwareRecord extends RowDataPacket {
  id: number;
  file_id: number;
  software_id: number;
  usage_role: 'capture' | 'stacking' | 'calibration' | 'post_processing';
  usage_metadata: SoftwareUsageMetadata;
}

export interface ProcessingRunRecord extends RowDataPacket {
  id: number;
  file_id: number;
  processor: string;
  success: boolean;
  extracted_at: Date;
  processing_version: string | null;
  providers_enabled: ProvidersArray;
  providers_with_results: ProvidersArray;
  provider_failures: ProvidersArray;
  processing_duration_ms: number | null;
  notes: string | null;
}

export interface ProcessingFieldUpdateRecord extends RowDataPacket {
  id: number;
  processing_run_id: number;
  field_name: string;
}