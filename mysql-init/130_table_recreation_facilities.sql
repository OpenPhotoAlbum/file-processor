USE kin;

-- Recreation Facilities Table for Recreation.gov RIDB API Data
-- This table stores federal recreation facilities with spatial coordinates
-- for facility detection and trip planning context in photo processing

DROP TABLE IF EXISTS `recreation_facilities`;
CREATE TABLE `recreation_facilities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  
  -- Recreation.gov identification
  `facility_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Recreation.gov unique facility identifier',
  `facility_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Official facility name',
  `facility_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Facility type (Campground, Visitor Center, etc.)',
  
  -- Geographic coordinates
  `latitude` decimal(10,8) NOT NULL COMMENT 'Latitude in decimal degrees (WGS84)',
  `longitude` decimal(11,8) NOT NULL COMMENT 'Longitude in decimal degrees (WGS84)',
  `coordinates` point NOT NULL SRID 4326 COMMENT 'Spatial point for efficient radius queries',
  
  -- Facility details
  `description` text COLLATE utf8mb4_unicode_ci COMMENT 'Facility description',
  `directions` text COLLATE utf8mb4_unicode_ci COMMENT 'Driving directions',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci COMMENT 'Contact phone number',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci COMMENT 'Contact email',
  `reservation_url` varchar(500) COLLATE utf8mb4_unicode_ci COMMENT 'Reservation URL',
  
  -- Accessibility and amenities
  `ada_access` varchar(50) COLLATE utf8mb4_unicode_ci COMMENT 'ADA accessibility information',
  `stay_limit` varchar(100) COLLATE utf8mb4_unicode_ci COMMENT 'Stay limit information',
  `keywords` text COLLATE utf8mb4_unicode_ci COMMENT 'Searchable keywords',
  
  -- Administrative data
  `organization_id` varchar(20) COLLATE utf8mb4_unicode_ci COMMENT 'Managing organization ID',
  `organization_name` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT 'Managing organization name',
  `parent_organization_id` varchar(20) COLLATE utf8mb4_unicode_ci COMMENT 'Parent organization ID',
  
  -- Recreation.gov metadata
  `last_updated_date` datetime COMMENT 'Last updated date from Recreation.gov',
  `enabled` boolean DEFAULT true COMMENT 'Facility is active and available',
  
  -- ETL metadata
  `data_source` varchar(50) DEFAULT 'recreation_gov_api' COMMENT 'Source of this data record',
  `etl_batch_id` varchar(50) COMMENT 'ETL batch identifier for data lineage',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  
  PRIMARY KEY (`id`),
  
  -- Unique constraint on Recreation.gov facility ID
  UNIQUE KEY `uk_facility_id` (`facility_id`),
  
  -- Spatial index for radius-based facility queries (most important for landmark detection)
  SPATIAL KEY `idx_coordinates` (`coordinates`),
  
  -- Index for facility type filtering (Campground, Visitor Center, etc.)
  KEY `idx_facility_type` (`facility_type`),
  
  -- Index for organization filtering
  KEY `idx_organization` (`organization_id`),
  
  -- Index for name-based searches
  KEY `idx_facility_name` (`facility_name`),
  
  -- Index for enabled facilities (exclude disabled ones from queries)
  KEY `idx_enabled` (`enabled`),
  
  -- Composite index for type + enabled queries
  KEY `idx_type_enabled` (`facility_type`, `enabled`),
  
  -- Index for ETL batch tracking
  KEY `idx_etl_batch` (`etl_batch_id`)
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
COMMENT='Recreation.gov federal facilities for landmark detection and trip planning context';

-- Additional performance optimizations
ALTER TABLE `recreation_facilities` ADD INDEX `idx_organization_name` (`organization_name`);
ALTER TABLE `recreation_facilities` ADD INDEX `idx_last_updated` (`last_updated_date`);