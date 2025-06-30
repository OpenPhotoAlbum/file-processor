-- Media Processing Pipeline - Reference Data Seeds
-- Created: 2024-12-29
-- Purpose: Basic equipment, imaging trains, and software entries

-- Insert basic equipment entries - migration script will create equipment dynamically as needed
INSERT INTO equipment (equipment_type, make, model, equipment_metadata, is_active) VALUES
-- Apple devices - just a few key ones
('camera', 'Apple', 'iPhone 13 Pro', JSON_OBJECT(
  'sensor_type', 'CMOS',
  'max_resolution', '4032x3024',
  'video_capabilities', '4K',
  'notes', 'iPhone 13 Pro with triple camera system'
), TRUE),

('camera', 'Apple', 'iPhone 14 Pro', JSON_OBJECT(
  'sensor_type', 'CMOS',
  'max_resolution', '4032x3024',
  'video_capabilities', '4K',
  'notes', 'iPhone 14 Pro with Dynamic Island'
), TRUE),

-- Canon cameras
('camera', 'Canon', 'Canon PowerShot ELPH 330 HS', JSON_OBJECT(
  'sensor_type', 'CMOS',
  'max_resolution', '4000x3000',
  'notes', 'Compact digital camera'
), TRUE),

('camera', 'Canon', 'Generic DSLR', JSON_OBJECT(
  'sensor_type', 'CMOS',
  'mount_type', 'EF/EF-S',
  'notes', 'Fallback for Canon cameras not specifically identified'
), TRUE),

-- Fallback entries
('camera', 'Unknown', 'Unknown Camera', JSON_OBJECT(
  'notes', 'Fallback for cameras that cannot be identified from EXIF'
), TRUE);

-- Insert imaging trains - basic entries, migration will create more as needed
INSERT INTO imaging_trains (name, description, primary_camera_id, train_metadata, is_active)
SELECT 
  'iPhone 13 Pro' as name,
  'Apple iPhone 13 Pro with integrated lenses' as description,
  e.id as primary_camera_id,
  JSON_OBJECT(
    'camera_system', 'triple_camera',
    'primary_focal_length', '26mm',
    'ultra_wide_focal_length', '13mm',
    'telephoto_focal_length', '77mm',
    'setup_type', 'integrated'
  ) as train_metadata,
  TRUE as is_active
FROM equipment e WHERE e.make = 'Apple' AND e.model = 'iPhone 13 Pro';

INSERT INTO imaging_trains (name, description, primary_camera_id, train_metadata, is_active)
SELECT 
  'iPhone 14 Pro' as name,
  'Apple iPhone 14 Pro with improved cameras' as description,
  e.id as primary_camera_id,
  JSON_OBJECT(
    'camera_system', 'triple_camera',
    'primary_focal_length', '24mm',
    'ultra_wide_focal_length', '13mm',
    'telephoto_focal_length', '77mm',
    'setup_type', 'integrated'
  ) as train_metadata,
  TRUE as is_active
FROM equipment e WHERE e.make = 'Apple' AND e.model = 'iPhone 14 Pro';

INSERT INTO imaging_trains (name, description, primary_camera_id, train_metadata, is_active)
SELECT 
  'Canon PowerShot ELPH 330 HS' as name,
  'Canon compact digital camera' as description,
  e.id as primary_camera_id,
  JSON_OBJECT(
    'setup_type', 'compact',
    'zoom_range', '10x optical',
    'focal_length_range', '24-240mm',
    'notes', 'Popular compact camera from 2012-2013 era'
  ) as train_metadata,
  TRUE as is_active
FROM equipment e WHERE e.make = 'Canon' AND e.model = 'Canon PowerShot ELPH 330 HS';

INSERT INTO imaging_trains (name, description, primary_camera_id, train_metadata, is_active)
SELECT 
  'Generic DSLR' as name,
  'Canon DSLR with unknown lens configuration' as description,
  e.id as primary_camera_id,
  JSON_OBJECT(
    'setup_type', 'dslr',
    'mount_type', 'EF/EF-S',
    'notes', 'Lens information will be extracted from EXIF when available'
  ) as train_metadata,
  TRUE as is_active
FROM equipment e WHERE e.make = 'Canon' AND e.model = 'Generic DSLR';

INSERT INTO imaging_trains (name, description, primary_camera_id, train_metadata, is_active)
SELECT 
  'Unknown Camera' as name,
  'Fallback for unidentified equipment' as description,
  e.id as primary_camera_id,
  JSON_OBJECT(
    'setup_type', 'unknown',
    'notes', 'Equipment details will be populated as EXIF data is analyzed'
  ) as train_metadata,
  TRUE as is_active
FROM equipment e WHERE e.make = 'Unknown' AND e.model = 'Unknown Camera';

-- Insert software
INSERT INTO software (name, software_type, version, software_metadata) VALUES
-- Capture software
('iPhone Camera', 'capture', 'iOS 15+', JSON_OBJECT(
  'platform', 'iOS',
  'manufacturer', 'Apple',
  'capabilities', JSON_ARRAY('photo', 'video', 'live_photo', 'portrait_mode', 'night_mode', 'prores')
)),

('iPhone Camera', 'capture', 'iOS 14', JSON_OBJECT(
  'platform', 'iOS',
  'manufacturer', 'Apple',
  'capabilities', JSON_ARRAY('photo', 'video', 'live_photo', 'portrait_mode', 'night_mode')
)),

('Canon Camera', 'capture', 'Unknown', JSON_OBJECT(
  'manufacturer', 'Canon',
  'capabilities', JSON_ARRAY('photo', 'video'),
  'notes', 'Generic Canon camera software entry'
)),

('Google Camera', 'capture', 'Unknown', JSON_OBJECT(
  'platform', 'Android',
  'manufacturer', 'Google',
  'capabilities', JSON_ARRAY('photo', 'video', 'hdr+', 'night_sight'),
  'notes', 'Google Pixel camera software'
)),

-- Processing software
('ImageProcessor', 'processing', '1.0.0', JSON_OBJECT(
  'platform', 'Node.js',
  'capabilities', JSON_ARRAY('exif_extraction', 'color_analysis', 'gps_processing', 'landmark_enrichment'),
  'description', 'Media Processing Pipeline image processor'
)),

('VideoProcessor', 'processing', '1.0.0', JSON_OBJECT(
  'platform', 'Node.js',
  'capabilities', JSON_ARRAY('exif_extraction', 'live_photo_detection', 'gps_processing'),
  'description', 'Media Processing Pipeline video processor'
)),

-- Post-processing software
('Adobe Lightroom', 'post_processing', 'Unknown', JSON_OBJECT(
  'manufacturer', 'Adobe',
  'capabilities', JSON_ARRAY('raw_processing', 'color_grading', 'metadata_editing'),
  'notes', 'Popular photo editing software'
)),

('Photos', 'post_processing', 'macOS', JSON_OBJECT(
  'platform', 'macOS',
  'manufacturer', 'Apple',
  'capabilities', JSON_ARRAY('organization', 'basic_editing', 'icloud_sync')
)),

-- Generic/fallback
('Unknown Software', 'capture', 'Unknown', JSON_OBJECT(
  'notes', 'Fallback for unidentified capture software'
));