-- Video Equipment Seed Data
-- Equipment entries for home video collection cameras used across different eras

-- First, we need to add 'video' to the equipment_type ENUM
ALTER TABLE equipment MODIFY COLUMN equipment_type ENUM('camera','lens','telescope','mount','filter','guider','video') NOT NULL;

-- 1950s-1960s: Wind-up 8mm film camera for the old reels (silent films)
INSERT INTO equipment (equipment_type, make, model, equipment_metadata) VALUES 
('video', 'Kodak', 'Brownie Movie Camera', JSON_OBJECT(
  'era', '1950s-1960s',
  'format', '8mm film',
  'features', 'Wind-up spring motor, silent film',
  'description', '8mm film camera with wind-up spring motor, silent film, 1950s-1960s home movies'
));

-- 1980s-1990s: VHS camcorder era for most family videos
INSERT INTO equipment (equipment_type, make, model, equipment_metadata) VALUES 
('video', 'Generic', 'VHS Camcorder', JSON_OBJECT(
  'era', '1980s-1990s',
  'format', 'VHS',
  'features', 'Full-size VHS, shoulder-mounted',
  'description', 'Full-size VHS shoulder-mounted camcorder, 1980s-1990s'
));

-- 1990s-2000s: Compact camcorder era for later videos  
INSERT INTO equipment (equipment_type, make, model, equipment_metadata) VALUES 
('video', 'Sony', 'Handycam Hi8', JSON_OBJECT(
  'era', '1990s-2000s',
  'format', '8mm/Hi8',
  'features', 'Compact handheld design',
  'description', '8mm/Hi8 compact camcorder, 1990s-2000s'
));

-- Verify the video equipment was added
SELECT 'Video Equipment Added:' as status;
SELECT id, equipment_type, make, model, equipment_metadata FROM equipment WHERE equipment_type = 'video';