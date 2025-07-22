-- Heritage Photo Integration - Enhanced Media Files Table
-- Created: 2025-01-22
-- Purpose: Add heritage support columns to existing media_files table

ALTER TABLE media_files ADD COLUMN heritage_type ENUM('standard', 'scanned') DEFAULT 'standard';
ALTER TABLE media_files ADD COLUMN document_date DATE;
ALTER TABLE media_files ADD COLUMN archive_collection VARCHAR(64);

-- Add indexes for new columns
ALTER TABLE media_files ADD INDEX idx_heritage_type (heritage_type);
ALTER TABLE media_files ADD INDEX idx_document_date (document_date);
ALTER TABLE media_files ADD INDEX idx_archive_collection (archive_collection);