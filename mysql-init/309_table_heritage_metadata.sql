-- Heritage Photo Integration - Rich Metadata Storage
-- Created: 2025-01-22
-- Purpose: Store heritage-specific EXIF fields and transcription data

CREATE TABLE heritage_metadata (
  file_id BIGINT UNSIGNED PRIMARY KEY,
  image_description TEXT,
  user_comment TEXT,
  creator_name VARCHAR(128),
  creator_type ENUM('individual', 'organization', 'institution', 'government'),
  copyright_info VARCHAR(255),
  subject_tags VARCHAR(500),
  keywords VARCHAR(500),
  document_type VARCHAR(64),
  transcription_text TEXT,

  -- Foreign keys
  FOREIGN KEY (file_id) REFERENCES media_files(id) ON DELETE CASCADE,

  -- Indexes
  INDEX idx_creator_name (creator_name),
  INDEX idx_creator_type (creator_type),
  INDEX idx_document_type (document_type),
  FULLTEXT idx_description (image_description),
  FULLTEXT idx_transcription (transcription_text),
  FULLTEXT idx_keywords (keywords)
);