-- Add geographic foreign keys to media_locations table
-- Purpose: Normalize city/state/country references instead of storing in JSON
-- Benefits: Better performance, referential integrity, easier analytics

USE kin;

-- Add foreign key columns to media_locations
ALTER TABLE media_locations 
ADD COLUMN city_id INT UNSIGNED NULL AFTER gps_confidence,
ADD COLUMN state_id INT UNSIGNED NULL AFTER city_id,
ADD COLUMN country_id INT UNSIGNED NULL AFTER state_id;

-- Add foreign key constraints
ALTER TABLE media_locations
ADD CONSTRAINT fk_media_locations_city FOREIGN KEY (city_id) REFERENCES geo_cities(id),
ADD CONSTRAINT fk_media_locations_state FOREIGN KEY (state_id) REFERENCES geo_states(id),
ADD CONSTRAINT fk_media_locations_country FOREIGN KEY (country_id) REFERENCES geo_countries(id);

-- Add indexes for better query performance
ALTER TABLE media_locations
ADD INDEX idx_city_id (city_id),
ADD INDEX idx_state_id (state_id), 
ADD INDEX idx_country_id (country_id),
ADD INDEX idx_city_state (city_id, state_id);

-- Add a composite index for geographic hierarchy queries
ALTER TABLE media_locations
ADD INDEX idx_geographic_hierarchy (country_id, state_id, city_id);