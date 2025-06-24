-- Migration: Create geolocation tables (simplified)
-- Purpose: GPS coordinate → location resolution for media processing

USE media;

-- Countries table
CREATE TABLE `geo_countries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `country_code` varchar(2) NOT NULL,
  `iso3` varchar(3) DEFAULT NULL,
  `country_name` varchar(100) NOT NULL,
  `phone_code` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_code` (`country_code`),
  KEY `idx_country_code` (`country_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- States table
CREATE TABLE `geo_states` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_country_code` (`country_code`),
  KEY `idx_state_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Cities table
CREATE TABLE `geo_cities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `postal_code` varchar(20) DEFAULT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state_code` varchar(10) DEFAULT NULL,
  `state_name` varchar(100) DEFAULT NULL,
  `county_name` varchar(100) DEFAULT NULL,
  `country_code` varchar(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_coordinates` (`latitude`,`longitude`),
  KEY `idx_country_code` (`country_code`),
  KEY `idx_state_code` (`state_code`),
  KEY `idx_postal_code` (`postal_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;