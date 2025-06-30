-- Fix historical timestamp support for photos from before 1970
-- Change TIMESTAMP to DATETIME to support dates like 1938-08-22
-- TIMESTAMP range: 1970-01-01 00:00:01 to 2038-01-19 03:14:07
-- DATETIME range: 1000-01-01 00:00:00 to 9999-12-31 23:59:59

-- Update media_files table to use DATETIME for historical timestamps
ALTER TABLE media_files 
MODIFY COLUMN primary_timestamp DATETIME NOT NULL;

ALTER TABLE media_files 
MODIFY COLUMN file_created_at DATETIME NOT NULL;

ALTER TABLE media_files 
MODIFY COLUMN file_modified_at DATETIME NOT NULL;

-- Note: created_at and updated_at remain TIMESTAMP since they're for database tracking
-- and should always be modern dates