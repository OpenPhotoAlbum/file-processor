-- Media Processing Pipeline - Software and Processing Tables
-- Created: 2024-12-29
-- Purpose: Software tracking and processing history for media files

-- Create software table
CREATE TABLE software (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(128) NOT NULL,
  software_type ENUM('capture', 'processing', 'post_processing', 'analysis') NOT NULL,
  version VARCHAR(64),
  software_metadata JSON,
  
  -- Indexes
  UNIQUE KEY unique_name_version (name, version),
  INDEX idx_software_type (software_type),
  INDEX idx_name (name)
);

-- Create media_software table
CREATE TABLE media_software (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  file_id BIGINT UNSIGNED NOT NULL,
  software_id BIGINT UNSIGNED NOT NULL,
  usage_role VARCHAR(32) NOT NULL,
  usage_metadata JSON,
  
  -- Foreign keys
  FOREIGN KEY (file_id) REFERENCES media_files(id) ON DELETE CASCADE,
  FOREIGN KEY (software_id) REFERENCES software(id),
  
  -- Indexes
  INDEX idx_file_id (file_id),
  INDEX idx_software_role (software_id, usage_role)
);

-- Create processing_runs table
CREATE TABLE processing_runs (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  file_id BIGINT UNSIGNED NOT NULL,
  processor VARCHAR(64) NOT NULL,
  success BOOLEAN NOT NULL,
  extracted_at TIMESTAMP NOT NULL,
  processing_version VARCHAR(32),
  providers_enabled JSON,
  providers_with_results JSON,
  provider_failures JSON,
  processing_duration_ms INT,
  notes TEXT,
  
  -- Foreign keys
  FOREIGN KEY (file_id) REFERENCES media_files(id) ON DELETE CASCADE,
  
  -- Indexes
  INDEX idx_file_id (file_id),
  INDEX idx_processor_success (processor, success),
  INDEX idx_extracted_at (extracted_at),
  INDEX idx_success_duration (success, processing_duration_ms)
);

-- Create processing_field_updates table
CREATE TABLE processing_field_updates (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  processing_run_id BIGINT UNSIGNED NOT NULL,
  field_name VARCHAR(128) NOT NULL,
  
  -- Foreign keys
  FOREIGN KEY (processing_run_id) REFERENCES processing_runs(id) ON DELETE CASCADE,
  
  -- Indexes
  INDEX idx_processing_run (processing_run_id),
  INDEX idx_field_name (field_name)
);