-- Media Processing Pipeline - Object Detection Tables
-- Created: 2024-12-29
-- Purpose: Future enhancement tables for object detection and face recognition

-- Create detected_objects table
CREATE TABLE detected_objects (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  object_type VARCHAR(64) NOT NULL,
  category VARCHAR(32) NOT NULL,
  confidence_threshold DECIMAL(3, 2) NOT NULL,
  detection_metadata JSON,
  
  -- Indexes
  UNIQUE KEY unique_type_category (object_type, category),
  INDEX idx_category (category),
  INDEX idx_confidence (confidence_threshold)
);

-- Create media_object_detections table
CREATE TABLE media_object_detections (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  file_id BIGINT UNSIGNED NOT NULL,
  object_id BIGINT UNSIGNED NOT NULL,
  confidence DECIMAL(3, 2) NOT NULL,
  bounding_box JSON,
  detection_metadata JSON,
  
  -- Foreign keys
  FOREIGN KEY (file_id) REFERENCES media_files(id) ON DELETE CASCADE,
  FOREIGN KEY (object_id) REFERENCES detected_objects(id),
  
  -- Indexes
  INDEX idx_file_id (file_id),
  INDEX idx_object_confidence (object_id, confidence),
  INDEX idx_confidence (confidence)
);

-- Create face_identities table
CREATE TABLE face_identities (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  identity_name VARCHAR(128),
  face_encoding BLOB,
  confidence_threshold DECIMAL(3, 2) NOT NULL,
  identity_metadata JSON,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  
  -- Indexes
  INDEX idx_identity_name (identity_name),
  INDEX idx_confidence (confidence_threshold)
);

-- Create face_identity_matches table
CREATE TABLE face_identity_matches (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  file_id BIGINT UNSIGNED NOT NULL,
  identity_id BIGINT UNSIGNED NOT NULL,
  confidence DECIMAL(3, 2) NOT NULL,
  face_bounding_box JSON,
  match_metadata JSON,
  
  -- Foreign keys
  FOREIGN KEY (file_id) REFERENCES media_files(id) ON DELETE CASCADE,
  FOREIGN KEY (identity_id) REFERENCES face_identities(id) ON DELETE CASCADE,
  
  -- Indexes
  INDEX idx_file_id (file_id),
  INDEX idx_identity_confidence (identity_id, confidence),
  INDEX idx_confidence (confidence)
);