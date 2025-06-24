USE kin;

-- Municipal Boundaries Table for US Geographic Data
-- This table stores city/town/municipality boundaries with spatial geometry
-- for precise location-based queries and geofencing operations

DROP TABLE IF EXISTS `geo_municipal_boundaries`;
CREATE TABLE `geo_municipal_boundaries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  
  -- Basic identification
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Municipality name (e.g., "Manchester")',
  `full_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Full official name (e.g., "Manchester city")',
  `place_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Type: city, town, village, etc.',
  
  -- Government codes
  `fips_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'FIPS place code for official identification',
  `state_code` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Two-letter state code',
  `state_fips` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'State FIPS code',
  `country_code` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'US' COMMENT 'Country code',
  
  -- Geographic data
  `centroid_lat` decimal(10,8) NOT NULL COMMENT 'Latitude of municipality center point',
  `centroid_lng` decimal(11,8) NOT NULL COMMENT 'Longitude of municipality center point',
  `boundary_polygon` geometry NOT NULL COMMENT 'Precise boundary geometry for containment queries',
  `area_sq_meters` bigint DEFAULT NULL COMMENT 'Area in square meters',
  
  -- Metadata
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  
  PRIMARY KEY (`id`),
  
  -- Spatial index for boundary containment queries (most important for geolocation)
  SPATIAL KEY `idx_boundary` (`boundary_polygon`),
  
  -- Index for name-based searches
  KEY `idx_name` (`name`),
  
  -- Composite index for proximity searches using centroid
  KEY `idx_centroid` (`centroid_lat`, `centroid_lng`),
  
  -- Index for state-based filtering
  KEY `idx_state` (`state_code`),
  
  -- Composite index for state + name searches
  KEY `idx_state_name` (`state_code`, `name`)
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
COMMENT='US municipal boundaries with spatial geometry for photo geolocation';

-- Additional indexes for performance optimization
-- These are separate ALTER statements to avoid blocking the initial table creation

-- Optimize for FIPS code lookups
ALTER TABLE `geo_municipal_boundaries` ADD INDEX `idx_fips` (`fips_code`);

-- Optimize for place type filtering
ALTER TABLE `geo_municipal_boundaries` ADD INDEX `idx_place_type` (`place_type`);

-- Set table-level spatial reference system
-- SRID 4326 = WGS84 (GPS coordinate system)
-- This ensures all spatial operations use the correct coordinate reference system
-- ALTER TABLE `geo_municipal_boundaries` MODIFY `boundary_polygon` geometry NOT NULL SRID 4326;