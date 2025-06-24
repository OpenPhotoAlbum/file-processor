
USE kin;

DROP TABLE IF EXISTS `geo_countries`;
CREATE TABLE `geo_countries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `country_code` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso3` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `geo_countries_country_code_unique` (`country_code`),
  KEY `geo_countries_country_code_index` (`country_code`)
) ENGINE=InnoDB AUTO_INCREMENT=505 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;