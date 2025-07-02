-- Add video equipment entries for home video collection
-- These represent the likely cameras used for different eras of family videos

-- 1950s-1960s: Wind-up 8mm film camera for the old reels
INSERT INTO equipment (make, model, type, notes) VALUES 
('Kodak', 'Brownie Movie Camera', 'video', '8mm film camera with wind-up spring motor, silent film, 1950s-1960s home movies');

-- 1980s-1990s: VHS camcorder era for most family videos
INSERT INTO equipment (make, model, type, notes) VALUES 
('Generic', 'VHS Camcorder', 'video', 'Full-size VHS shoulder-mounted camcorder, 1980s-1990s');

-- 1990s-2000s: Compact camcorder era for later videos
INSERT INTO equipment (make, model, type, notes) VALUES 
('Sony', 'Handycam Hi8', 'video', '8mm/Hi8 compact camcorder, 1990s-2000s');

-- Check what we added
SELECT * FROM equipment WHERE type = 'video';