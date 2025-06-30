-- Add 'sample' collection type for test and sample files
-- Purpose: Distinguish sample files from actual archive/staging/processed media

USE kin;

-- Modify the collection enum to include 'sample'
ALTER TABLE media_files 
MODIFY COLUMN collection ENUM('archive', 'staging', 'processed', 'sample') NOT NULL;