USE kin;

DROP TABLE IF EXISTS `geo_states`;
CREATE TABLE `geo_states` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `geo_states_code_country_code_unique` (`code`,`country_code`),
  KEY `geo_states_country_code_index` (`country_code`),
  CONSTRAINT `geo_states_country_code_foreign` FOREIGN KEY (`country_code`) REFERENCES `geo_countries` (`country_code`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;