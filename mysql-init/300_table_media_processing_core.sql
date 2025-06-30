-- Media Processing Pipeline - Core Tables
-- Created: 2024-12-29
-- Purpose: Core schema for media file metadata storage and processing tracking

-- Create equipment table first (referenced by imaging_trains)
CREATE TABLE equipment (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  equipment_type ENUM('camera', 'lens', 'telescope', 'mount', 'filter', 'guider') NOT NULL,
  make VARCHAR(64) NOT NULL,
  model VARCHAR(128) NOT NULL,
  equipment_metadata JSON,
  is_active BOOLEAN DEFAULT TRUE,
  
  -- Indexes
  UNIQUE KEY equipment_equipment_type_make_model_unique (equipment_type, make, model),
  INDEX idx_equipment_type (equipment_type),
  INDEX idx_make_model (make, model)
);

-- Create imaging_trains table
CREATE TABLE imaging_trains (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(128) NOT NULL,
  description TEXT,
  primary_camera_id BIGINT UNSIGNED NOT NULL,
  lens_id BIGINT UNSIGNED,
  telescope_id BIGINT UNSIGNED,
  mount_id BIGINT UNSIGNED,
  train_metadata JSON,
  is_active BOOLEAN DEFAULT TRUE,
  
  -- Foreign keys
  FOREIGN KEY (primary_camera_id) REFERENCES equipment(id),
  FOREIGN KEY (lens_id) REFERENCES equipment(id),
  FOREIGN KEY (telescope_id) REFERENCES equipment(id),
  FOREIGN KEY (mount_id) REFERENCES equipment(id),
  
  -- Indexes
  INDEX idx_primary_camera (primary_camera_id),
  INDEX idx_telescope (telescope_id)
);

-- Create media_files table
CREATE TABLE media_files (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  
  -- File organization
  collection ENUM('archive', 'staging', 'processed') NOT NULL,
  relative_path VARCHAR(512) NOT NULL,
  file_hash VARCHAR(64) UNIQUE NOT NULL,
  file_size BIGINT NOT NULL,
  mime_type VARCHAR(128) NOT NULL,
  
  -- Media classification
  media_type ENUM('image', 'video') NOT NULL,
  media_format VARCHAR(16) NOT NULL,
  is_live_photo BOOLEAN DEFAULT FALSE,
  
  -- Timestamps
  primary_timestamp TIMESTAMP NOT NULL,
  timestamp_source ENUM('exif', 'filename', 'filesystem') NOT NULL,
  timestamp_confidence ENUM('high', 'medium', 'low') NOT NULL,
  
  -- Equipment
  imaging_train_id BIGINT UNSIGNED,
  
  -- Camera settings
  iso_value INT,
  aperture_f_number DECIMAL(3, 1),
  shutter_speed_seconds DECIMAL(10, 6),
  frame_count INT DEFAULT 1,
  integration_time_seconds DECIMAL(10, 6),
  focal_length_mm INT,
  
  -- Visual properties
  dominant_color_hex VARCHAR(7),
  mean_color_hex VARCHAR(7),
  salient_color_hex VARCHAR(7),
  
  -- Flexible metadata
  media_metadata JSON,
  camera_exif JSON,
  
  -- File system timestamps
  file_created_at TIMESTAMP NOT NULL,
  file_modified_at TIMESTAMP NOT NULL,
  
  -- Database tracking
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  
  -- Foreign keys
  FOREIGN KEY (imaging_train_id) REFERENCES imaging_trains(id),
  
  -- Indexes
  INDEX idx_collection_path (collection, relative_path),
  INDEX idx_file_hash (file_hash),
  INDEX idx_primary_timestamp (primary_timestamp),
  INDEX idx_collection_timestamp (collection, primary_timestamp),
  INDEX idx_media_type_format (media_type, media_format),
  INDEX idx_camera_settings (iso_value, aperture_f_number, shutter_speed_seconds),
  INDEX idx_integration_time (integration_time_seconds),
  INDEX idx_imaging_train (imaging_train_id),
  INDEX idx_dominant_color (dominant_color_hex),
  INDEX idx_mean_color (mean_color_hex),
  INDEX idx_salient_color (salient_color_hex)
);