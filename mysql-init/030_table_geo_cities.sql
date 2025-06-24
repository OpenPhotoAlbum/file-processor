USE kin;

DROP TABLE IF EXISTS `geo_cities`;
CREATE TABLE `geo_cities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `postal_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `county_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `county_names_all` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_coordinates` (`latitude`,`longitude`),
  KEY `geo_cities_state_code_index` (`state_code`),
  KEY `geo_cities_city_index` (`city`)
) ENGINE=InnoDB AUTO_INCREMENT=33798 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
