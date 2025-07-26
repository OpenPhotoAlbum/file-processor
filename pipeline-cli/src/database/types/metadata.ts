/**
 * Type definitions for JSON metadata fields stored in database
 * These replace all 'any' types in the database schema
 */

// Equipment metadata types
export interface CameraMetadata {
  sensor_type?: string;
  max_resolution?: string;
  video_capabilities?: string;
  mount_type?: string;
  notes?: string;
}

export interface LensMetadata {
  focal_length_range?: string;
  max_aperture?: string;
  mount_type?: string;
  stabilization?: boolean;
  notes?: string;
}

export interface TelescopeMetadata {
  aperture_mm?: number;
  focal_length_mm?: number;
  focal_ratio?: string;
  optical_design?: string;
  notes?: string;
}

export type EquipmentMetadata = CameraMetadata | LensMetadata | TelescopeMetadata | Record<string, unknown>;

// Imaging train metadata
export interface ImagingTrainMetadata {
  camera_system?: string;
  primary_focal_length?: string;
  ultra_wide_focal_length?: string;
  telephoto_focal_length?: string;
  setup_type?: string;
  mount_type?: string;
  focal_ratio?: string;
  total_focal_length?: string;
  field_of_view?: string;
  focal_length_range?: string;
  zoom_range?: string;
  special_features?: string[];
  notes?: string;
}

// Media metadata from ProcessingResult
export interface MediaMetadata {
  dimensions?: {
    width: number;
    height: number;
    megapixels: number;
    orientation: string;
  };
  livePhotoInfo?: {
    confidence: 'high' | 'medium' | 'low' | 'none';
    hasMotionData: boolean;
    motionDataCount: number;
    duration: number | null;
    correspondingImagePath?: string;
  };
}

// Camera EXIF data
export interface CameraExifData {
  camera?: {
    make?: string;
    model?: string;
    lens?: string;
    software?: string;
  };
  settings?: {
    iso?: number;
    aperture?: string;
    shutterSpeed?: string;
    focalLength?: string;
    focalLength35mm?: string;
    flash?: string;
  };
  technical?: {
    fileType?: string;
    mimeType?: string;
    exifVersion?: string;
    colorSpace?: string;
    compression?: string;
    encoding?: string;
    [key: string]: unknown;
  };
}

// Geolocation data from reverse geocoding
export interface GeolocationData {
  city?: string;
  state?: string;
  state_code?: string;
  county?: string;
  county_name?: string;
  country?: string;
  country_code?: string;
  postal_code?: string;
  formatted_address?: string;
  [key: string]: unknown;
}

// Landmark provider data
export interface GNISProviderData {
  feature_id: number;
  feature_name: string;
  feature_class: string;
  state_alpha: string;
  county_name: string;
  primary_lat_dms: string;
  primary_lon_dms: string;
  elev_in_ft?: number;
  map_name?: string;
}

export interface RecreationGovProviderData {
  facility_id: string;
  facility_name: string;
  facility_type: string;
  parent_org_name?: string;
  reservation_url?: string;
  activities?: string[];
}

export interface NPSProviderData {
  park_code: string;
  full_name: string;
  designation?: string;
  states?: string;
  url?: string;
}

export type LandmarkProviderData = GNISProviderData | RecreationGovProviderData | NPSProviderData | Record<string, unknown>;

// Software metadata
export interface SoftwareMetadata {
  platform?: string;
  manufacturer?: string;
  capabilities?: string[];
  features?: string[];
  settings_capabilities?: string[];
  description?: string;
  notes?: string;
}

// Software usage metadata
export interface SoftwareUsageMetadata {
  settings?: Record<string, unknown>;
  processing_notes?: string;
  version_used?: string;
  [key: string]: unknown;
}

// Processing provider arrays
export type ProvidersArray = string[];

// Re-export for convenience
export type JSONMetadata = 
  | EquipmentMetadata 
  | ImagingTrainMetadata 
  | MediaMetadata 
  | CameraExifData 
  | GeolocationData 
  | LandmarkProviderData 
  | SoftwareMetadata 
  | SoftwareUsageMetadata;