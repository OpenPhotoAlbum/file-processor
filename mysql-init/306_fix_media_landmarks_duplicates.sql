-- Fix media_landmarks duplicate entries
-- Created: 2025-06-30
-- Purpose: Add unique constraint to prevent duplicate file_id/landmark_id combinations

-- First, remove any existing duplicates (keeping the one with shortest distance)
DELETE ml1 FROM media_landmarks ml1
INNER JOIN media_landmarks ml2 
WHERE ml1.file_id = ml2.file_id 
  AND ml1.landmark_id = ml2.landmark_id 
  AND (ml1.distance_meters > ml2.distance_meters 
       OR (ml1.distance_meters = ml2.distance_meters AND ml1.id > ml2.id));

-- Add unique constraint to prevent future duplicates
ALTER TABLE media_landmarks 
ADD UNIQUE KEY unique_file_landmark (file_id, landmark_id);

-- Add a note about the constraint
ALTER TABLE media_landmarks 
COMMENT = 'Associates media files with landmarks. Each file-landmark pair must be unique.';