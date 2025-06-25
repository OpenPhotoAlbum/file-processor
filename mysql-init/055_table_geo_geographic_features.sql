USE kin;

-- Geographic Features Table for US GNIS (Geographic Names Information System) Data
-- This table stores natural and cultural geographic features with spatial coordinates
-- for landmark detection and geographic context in photo processing

DROP TABLE IF EXISTS `geo_geographic_features`;
CREATE TABLE `geo_geographic_features` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  
  -- GNIS identification
  `feature_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'GNIS unique feature identifier',
  `feature_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Official feature name',
  `feature_class` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'GNIS feature class (Summit, Lake, Stream, etc.)',
  
  -- Administrative location
  `state_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'State name',
  `state_code` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Two-letter state code',
  `county_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'County name',
  `map_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'USGS topographic map name',
  
  -- Geographic coordinates
  `latitude` decimal(10,8) NOT NULL COMMENT 'Latitude in decimal degrees (WGS84)',
  `longitude` decimal(11,8) NOT NULL COMMENT 'Longitude in decimal degrees (WGS84)',
  `coordinates` point NOT NULL SRID 4326 COMMENT 'Spatial point for efficient radius queries',
  
  -- Optional feature-specific data
  `elevation_meters` int DEFAULT NULL COMMENT 'Elevation above sea level in meters',
  `source_latitude` decimal(10,8) DEFAULT NULL COMMENT 'Source/headwater latitude for streams',
  `source_longitude` decimal(11,8) DEFAULT NULL COMMENT 'Source/headwater longitude for streams',
  
  -- GNIS metadata
  `date_created` date DEFAULT NULL COMMENT 'Date feature was created in GNIS',
  `date_edited` date DEFAULT NULL COMMENT 'Date feature was last edited in GNIS',
  `bgn_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Board on Geographic Names type',
  `bgn_authority` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'BGN authority',
  `bgn_date` date DEFAULT NULL COMMENT 'BGN decision date',
  
  -- System metadata
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  
  PRIMARY KEY (`id`),
  
  -- Unique constraint on GNIS feature ID
  UNIQUE KEY `uk_feature_id` (`feature_id`),
  
  -- Spatial index for radius-based landmark queries (most important for landmark detection)
  SPATIAL KEY `idx_coordinates` (`coordinates`),
  
  -- Index for feature class filtering (Summit, Lake, Stream, etc.)
  KEY `idx_feature_class` (`feature_class`),
  
  -- Index for state-based filtering
  KEY `idx_state` (`state_code`),
  
  -- Composite index for state + feature class queries
  KEY `idx_state_class` (`state_code`, `feature_class`),
  
  -- Index for name-based searches
  KEY `idx_feature_name` (`feature_name`),
  
  -- Index for elevation-based filtering (mountains, peaks)
  KEY `idx_elevation` (`elevation_meters`)
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
COMMENT='GNIS geographic features for landmark detection and geographic context';

-- Additional performance optimizations
-- These are separate ALTER statements to avoid blocking the initial table creation

-- Optimize for county-based filtering
ALTER TABLE `geo_geographic_features` ADD INDEX `idx_county` (`county_name`);

-- Optimize for map name lookups
ALTER TABLE `geo_geographic_features` ADD INDEX `idx_map_name` (`map_name`);

-- SRID 4326 (WGS84) is already set in the CREATE TABLE statement above
-- This ensures all spatial operations use the correct GPS coordinate reference system
-- and matches the geo_municipal_boundaries table for consistency