-- Media Processing Pipeline - Location Tables
-- Created: 2024-12-29
-- Purpose: GPS coordinates and landmark associations for media files

-- Create media_locations table
CREATE TABLE media_locations (
  file_id BIGINT UNSIGNED PRIMARY KEY,
  latitude DECIMAL(10, 8) NOT NULL,
  longitude DECIMAL(11, 8) NOT NULL,
  gps_source ENUM('exif', 'manual', 'estimated') NOT NULL,
  gps_confidence ENUM('high', 'medium', 'low') NOT NULL,
  geolocation_data JSON,
  
  -- Foreign keys
  FOREIGN KEY (file_id) REFERENCES media_files(id) ON DELETE CASCADE,
  
  -- Spatial index (composite index for MySQL compatibility)
  INDEX idx_coordinates (latitude, longitude)
);

-- Create landmarks table
CREATE TABLE landmarks (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  category VARCHAR(64) NOT NULL,
  provider ENUM('GNIS', 'RECREATION_GOV', 'NPS') NOT NULL,
  provider_data JSON,
  
  -- Indexes
  UNIQUE KEY unique_name_provider (name, provider),
  INDEX idx_category (category),
  INDEX idx_provider (provider)
);

-- Create media_landmarks table
CREATE TABLE media_landmarks (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  file_id BIGINT UNSIGNED NOT NULL,
  landmark_id BIGINT UNSIGNED NOT NULL,
  distance_meters INT NOT NULL,
  
  -- Foreign keys
  FOREIGN KEY (file_id) REFERENCES media_files(id) ON DELETE CASCADE,
  FOREIGN KEY (landmark_id) REFERENCES landmarks(id) ON DELETE CASCADE,
  
  -- Indexes
  INDEX idx_file_id (file_id),
  INDEX idx_landmark_distance (landmark_id, distance_meters),
  INDEX idx_file_distance (file_id, distance_meters)
);