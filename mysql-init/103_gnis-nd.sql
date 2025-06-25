USE kin;

-- GNIS Geographic Features for ND
-- Generated from USGS Geographic Names Information System
-- Uses small batch inserts to avoid packet size issues

SET autocommit = 0;
SET unique_checks = 0;

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('644325', 'Grand Marais Creek', 'Stream', 'Minnesota', 'MN', 'Polk', 'Oslo SE', 48.069982, -97.0970192, ST_GeomFromText('POINT(48.069982 -97.0970192)', 4326), 47.8191409, -96.8056287, '1980-01-11', '2018-02-28', NULL, NULL, NULL),
  ('655066', 'Sand Hill River', 'Stream', 'Minnesota', 'MN', 'Polk', 'Climax', 47.5985855, -96.8559126, ST_GeomFromText('POINT(47.5985855 -96.8559126)', 4326), 47.5152371, -95.7478052, '1980-01-11', '2018-03-27', 'Official', 'Board Decision', '1965-01-01'),
  ('660006', 'Buffalo River', 'Stream', 'Minnesota', 'MN', 'Clay', 'Georgetown', 47.0880232, -96.8161908, ST_GeomFromText('POINT(47.0880232 -96.8161908)', 4326), 46.9196814, -95.6850401, '1980-01-11', '2018-02-28', NULL, NULL, NULL),
  ('756398', 'Missouri River', 'Stream', 'Missouri', 'MO', 'St. Charles', 'Wood River', 38.8136597, -90.1198297, ST_GeomFromText('POINT(38.8136597 -90.1198297)', 4326), 45.9268, -111.50558, '1980-10-24', '2020-10-20', 'Official', 'Board Decision', '1953-01-01'),
  ('768632', 'Beaver Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Eagle Draw', 47.3300156, -103.656584, ST_GeomFromText('POINT(47.3300156 -103.656584)', 4326), 46.527509, -104.1238228, '1980-04-04', '2011-05-26', NULL, NULL, NULL),
  ('768704', 'Bennie Peer Creek', 'Stream', 'Montana', 'MT', 'Richland', 'Sidney NE', 47.698585, -104.092412, ST_GeomFromText('POINT(47.698585 -104.092412)', 4326), 47.376238, -103.845091, '1980-04-04', '2010-12-09', 'Official', 'Board Decision', '1969-01-01'),
  ('768793', 'Big Gumbo Creek', 'Stream', 'North Dakota', 'ND', 'Bowman', 'Cedar Ridge', 46.08454, -103.92588, ST_GeomFromText('POINT(46.08454 -103.92588)', 4326), 46.12062, -104.06671, '1980-04-04', '2011-05-25', NULL, NULL, NULL),
  ('769378', 'Bull Run Creek', 'Stream', 'North Dakota', 'ND', 'Golden Valley', 'Three V Crossing', 46.54145, -103.8131, ST_GeomFromText('POINT(46.54145 -103.8131)', 4326), 46.6133436, -104.0682649, '1980-04-04', '2011-05-25', NULL, NULL, NULL),
  ('769387', 'Bullion Creek', 'Stream', 'Montana', 'MT', 'Wibaux', 'Carlyle', 46.6858447, -104.0004843, ST_GeomFromText('POINT(46.6858447 -104.0004843)', 4326), 46.6927778, -104.0633333, '1980-04-04', NULL, NULL, NULL, NULL),
  ('769472', 'C S Creek', 'Stream', 'Montana', 'MT', 'Wibaux', 'Skaar', 47.363377, -104.120414, ST_GeomFromText('POINT(47.363377 -104.120414)', 4326), 47.263349, -103.951593, '1980-04-04', '2010-12-09', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('769563', 'Cannonball Creek', 'Stream', 'North Dakota', 'ND', 'Slope', 'Pretty Butte', 46.47653, -103.89528, ST_GeomFromText('POINT(46.47653 -103.89528)', 4326), 46.50501, -104.1729914, '1980-04-04', '2011-05-25', NULL, NULL, NULL),
  ('770189', 'Cottonwood Creek', 'Stream', 'Montana', 'MT', 'Sheridan', 'Reserve SE', 48.5147472, -104.267167, ST_GeomFromText('POINT(48.5147472 -104.267167)', 4326), 48.5583603, -103.8435384, '1980-04-04', NULL, NULL, NULL, NULL),
  ('770631', 'Devitt Creek', 'Stream', 'Montana', 'MT', 'Richland', 'Sidney NE', 47.6322391, -104.0290973, ST_GeomFromText('POINT(47.6322391 -104.0290973)', 4326), 47.5967477, -104.0779672, '1980-04-04', '2015-05-28', NULL, NULL, NULL),
  ('770797', 'Dry Creek', 'Stream', 'Montana', 'MT', 'Wibaux', 'Odland Dam NE', 47.1448541, -104.0504823, ST_GeomFromText('POINT(47.1448541 -104.0504823)', 4326), 47.0419585, -103.9546486, '1980-04-04', '2015-05-28', NULL, NULL, NULL),
  ('770863', 'Duck Creek', 'Stream', 'Montana', 'MT', 'Wibaux', 'Wibaux', 46.876152, -104.161935, ST_GeomFromText('POINT(46.876152 -104.161935)', 4326), 46.786309, -104.003019, '1980-04-04', '2010-12-07', NULL, NULL, NULL),
  ('770889', 'Dugout Creek', 'Stream', 'Montana', 'MT', 'Fallon', 'Badland Draw', 46.4338968, -104.034098, ST_GeomFromText('POINT(46.4338968 -104.034098)', 4326), 46.4266738, -104.1727141, '1980-04-04', NULL, NULL, NULL, NULL),
  ('771019', 'East Fork Brush Mountain Creek', 'Stream', 'Montana', 'MT', 'Sheridan', 'Brush Mountain', 48.4541916, -104.0846593, ST_GeomFromText('POINT(48.4541916 -104.0846593)', 4326), 48.4702778, -104.0130556, '1980-04-04', '2015-12-30', NULL, NULL, NULL),
  ('771566', 'Fourmile Creek', 'Stream', 'Montana', 'MT', 'Richland', 'Buford', 47.9705759, -103.9896536, ST_GeomFromText('POINT(47.9705759 -103.9896536)', 4326), 47.9096144, -104.2958663, '1980-04-04', '2015-05-28', NULL, NULL, NULL),
  ('772238', 'Hay Creek', 'Stream', 'Montana', 'MT', 'Richland', 'Cartwright', 47.8205741, -103.9840967, ST_GeomFromText('POINT(47.8205741 -103.9840967)', 4326), 47.8208515, -104.0524328, '1980-04-04', NULL, NULL, NULL, NULL),
  ('772566', 'Horse Tied Creek', 'Stream', 'Montana', 'MT', 'Roosevelt', 'Bainville SW', 48.1241878, -104.1304937, ST_GeomFromText('POINT(48.1241878 -104.1304937)', 4326), 48.1094663, -103.9743757, '1980-04-04', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('772880', 'Johny Creek', 'Stream', 'Montana', 'MT', 'Fallon', 'Badland Draw', 46.4575084, -104.0065969, ST_GeomFromText('POINT(46.4575084 -104.0065969)', 4326), 46.4693032, -104.2009176, '1980-04-04', '2015-05-28', NULL, NULL, NULL),
  ('773400', 'Little Beaver Creek', 'Stream', 'Montana', 'MT', 'Wibaux', 'Odland Dam', 47.10412, -104.114642, ST_GeomFromText('POINT(47.10412 -104.114642)', 4326), 46.836417, -103.969545, '1980-04-04', '2010-12-07', NULL, NULL, NULL),
  ('773403', 'Little Beaver Creek', 'Stream', 'North Dakota', 'ND', 'Slope', 'Marmarth', 46.2880616, -103.9254839, ST_GeomFromText('POINT(46.2880616 -103.9254839)', 4326), 45.79437, -104.5259, '1980-04-04', '2011-05-25', 'Official', 'Board Decision', '1978-01-01'),
  ('773469', 'Little Muddy Creek', 'Stream', 'Montana', 'MT', 'Roosevelt', 'Bainville SW', 48.0625201, -104.1824403, ST_GeomFromText('POINT(48.0625201 -104.1824403)', 4326), 48.3061348, -103.9971549, '1980-04-04', NULL, NULL, NULL, NULL),
  ('774895', 'O''Brien Creek', 'Stream', 'Montana', 'MT', 'Richland', 'Piche', 47.604109, -104.188757, ST_GeomFromText('POINT(47.604109 -104.188757)', 4326), 47.486683, -104.038264, '1980-04-04', '2010-12-09', NULL, NULL, NULL),
  ('775331', 'Poison Spring Creek', 'Stream', 'Montana', 'MT', 'Wibaux', 'Skaar', 47.3675156, -104.0563196, ST_GeomFromText('POINT(47.3675156 -104.0563196)', 4326), 47.4136236, -103.9180442, '1980-04-04', '2015-05-28', NULL, NULL, NULL),
  ('776390', 'Shadwell Creek', 'Stream', 'Montana', 'MT', 'Richland', 'Crane', 47.51196, -104.251328, ST_GeomFromText('POINT(47.51196 -104.251328)', 4326), 47.426461, -103.998299, '1980-04-04', '2011-04-15', 'Official', 'Board Decision', '1932-01-01'),
  ('776674', 'Smith Creek', 'Stream', 'Montana', 'MT', 'Richland', 'Savage', 47.4411265, -104.306886, ST_GeomFromText('POINT(47.4411265 -104.306886)', 4326), 47.36281, -104.043746, '1980-04-04', '2010-12-10', NULL, NULL, NULL),
  ('776725', 'Soda Creek', 'Stream', 'North Dakota', 'ND', 'Bowman', 'Doaks Butte', 45.97082, -103.96549, ST_GeomFromText('POINT(45.97082 -103.96549)', 4326), 46.03588, -104.15142, '1980-04-04', '2011-05-26', NULL, NULL, NULL),
  ('778533', 'Willow Creek', 'Stream', 'Montana', 'MT', 'Sheridan', 'Brush Lake', 48.5300257, -104.049658, ST_GeomFromText('POINT(48.5300257 -104.049658)', 4326), 48.4503033, -103.880762, '1980-04-04', '2009-05-04', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('792876', 'Waterhole Creek', 'Stream', 'Montana', 'MT', 'Fallon', 'Marmarth', 46.2691721, -103.9863196, ST_GeomFromText('POINT(46.2691721 -103.9863196)', 4326), 46.3611172, -104.1504915, '1980-04-04', NULL, NULL, NULL, NULL),
  ('799243', 'Badland Draw', 'Valley', 'North Dakota', 'ND', 'Slope', 'Badland Draw', 46.4272519, -104.0395537, ST_GeomFromText('POINT(46.4272519 -104.0395537)', 4326), 46.433011, -104.0942322, '1994-04-01', '2019-08-20', NULL, NULL, NULL),
  ('799256', 'Corral Creek', 'Stream', 'North Dakota', 'ND', 'Bowman', 'Waterhole Creek', 46.266672, -104.0010425, ST_GeomFromText('POINT(46.266672 -104.0010425)', 4326), 46.3286166, -104.1757704, '1994-04-01', NULL, NULL, NULL, NULL),
  ('799275', 'Buffalo Creek', 'Stream', 'North Dakota', 'ND', 'Bowman', 'Webster NE', 46.2430605, -104.0065983, ST_GeomFromText('POINT(46.2430605 -104.0065983)', 4326), 46.2988937, -104.2016048, '1994-04-01', NULL, NULL, NULL, NULL),
  ('799835', 'Corral Creek', 'Stream', 'North Dakota', 'ND', 'Bowman', 'Marmarth', 46.2686165, -103.9857641, ST_GeomFromText('POINT(46.2686165 -103.9857641)', 4326), 46.3272276, -104.1757704, '1994-07-01', NULL, NULL, NULL, NULL),
  ('799837', 'Cottonwood Creek', 'Stream', 'North Dakota', 'ND', 'Slope', 'Pretty Butte', 46.4622307, -103.9877073, ST_GeomFromText('POINT(46.4622307 -103.9877073)', 4326), 46.5188978, -104.114656, '1994-07-01', NULL, NULL, NULL, NULL),
  ('799838', 'Mud Creek', 'Stream', 'North Dakota', 'ND', 'Slope', 'Pretty Butte', 46.4677865, -103.977429, ST_GeomFromText('POINT(46.4677865 -103.977429)', 4326), 46.5316759, -104.0754878, '1994-07-01', NULL, NULL, NULL, NULL),
  ('799840', 'Boxelder Creek', 'Stream', 'North Dakota', 'ND', 'Bowman', 'Doaks Butte', 45.9777791, -103.940764, ST_GeomFromText('POINT(45.9777791 -103.940764)', 4326), 45.1933194, -104.9008069, '1980-02-13', NULL, 'Official', 'Board Decision', '1978-01-01'),
  ('834073', 'The Colosseum', 'Cape', 'Nebraska', 'NE', 'Sioux', 'Scole School', 46.0997249, -104.0210442, ST_GeomFromText('POINT(46.0997249 -104.0210442)', 4326), NULL, NULL, '1979-03-09', NULL, NULL, NULL, NULL),
  ('1027629', 'Beaver Creek', 'Stream', 'North Dakota', 'ND', 'Mercer', 'Medicine Butte SE', 47.1163961, -101.8562744, ST_GeomFromText('POINT(47.1163961 -101.8562744)', 4326), 46.9772276, -101.7412649, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1027630', 'Bowman-Haley Lake', 'Reservoir', 'North Dakota', 'ND', 'Bowman', 'Tepee Buttes', 45.9824737, -103.2593686, ST_GeomFromText('POINT(45.9824737 -103.2593686)', 4326), NULL, NULL, '1980-02-13', '2019-08-29', 'Official', 'Board Decision', '1971-01-01'),
  ('1027631', 'Buffalo Rock Coulee', 'Stream', 'North Dakota', 'ND', 'McLean', 'Raub SE', 47.5938941, -102.0051697, ST_GeomFromText('POINT(47.5938941 -102.0051697)', 4326), 47.6413945, -102.0010016, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027634', 'Little Muddy River', 'Stream', 'North Dakota', 'ND', 'Williams', 'Williston East', 48.1353019, -103.5921405, ST_GeomFromText('POINT(48.1353019 -103.5921405)', 4326), 48.5333593, -103.1699062, '1980-02-13', NULL, 'Official', 'Board Decision', '1975-01-01'),
  ('1027639', 'Stony Creek', 'Stream', 'North Dakota', 'ND', 'Burke', 'Bowbells NW', 48.991684, -102.2007253, ST_GeomFromText('POINT(48.991684 -102.2007253)', 4326), 48.8511411, -102.4143363, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027642', 'Spring Coulee', 'Valley', 'North Dakota', 'ND', 'McHenry', 'Newburg SW', 48.5166804, -100.9029235, ST_GeomFromText('POINT(48.5166804 -100.9029235)', 4326), 48.7594667, -101.48655, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027645', 'Abbey Hill', 'Summit', 'North Dakota', 'ND', 'Hettinger', 'Abbey Hill', 46.367392, -102.5287212, ST_GeomFromText('POINT(46.367392 -102.5287212)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1027646', 'Abbey Lake', 'Lake', 'North Dakota', 'ND', 'Stark', 'Richardton', 46.8999217, -102.3128801, ST_GeomFromText('POINT(46.8999217 -102.3128801)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1027652', 'Adams Slough', 'Swamp', 'North Dakota', 'ND', 'Barnes', 'Pillsbury SW', 47.0095426, -97.9482256, ST_GeomFromText('POINT(47.0095426 -97.9482256)', 4326), NULL, NULL, '1980-02-13', '2013-11-20', NULL, NULL, NULL),
  ('1027653', 'Lake Addie', 'Lake', 'North Dakota', 'ND', 'Griggs', 'Binford', 47.5312217, -98.286979, ST_GeomFromText('POINT(47.5312217 -98.286979)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1027654', 'Adkinson Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Eldridge NW', 46.8866248, -98.9348604, ST_GeomFromText('POINT(46.8866248 -98.9348604)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1027657', 'Aennis Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Donnybrook', 48.5255767, -101.9134953, ST_GeomFromText('POINT(48.5255767 -101.9134953)', 4326), 48.5155556, -101.9491667, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027659', 'Aggie Brown Coulee', 'Stream', 'North Dakota', 'ND', 'McLean', 'Riverdale North', 47.5202769, -101.3684932, ST_GeomFromText('POINT(47.5202769 -101.3684932)', 4326), 47.5102778, -101.3169444, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027667', 'Alderin Creek', 'Stream', 'North Dakota', 'ND', 'Mercer', 'Stanton SE', 47.2672182, -101.270711, ST_GeomFromText('POINT(47.2672182 -101.270711)', 4326), 47.2605546, -101.3923807, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027672', 'Alkali Creek', 'Stream', 'North Dakota', 'ND', 'Bowman', 'Tepee Buttes', 45.9966699, -103.2924013, ST_GeomFromText('POINT(45.9966699 -103.2924013)', 4326), 46.150283, -103.612694, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027673', 'Alkali Creek', 'Stream', 'North Dakota', 'ND', 'Grant', 'Round Top', 46.0686155, -101.8773641, ST_GeomFromText('POINT(46.0686155 -101.8773641)', 4326), 46.1688933, -101.9359794, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027674', 'Alkali Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Halliday', 47.3569535, -102.3354562, ST_GeomFromText('POINT(47.3569535 -102.3354562)', 4326), 47.2980665, -102.4237922, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027675', 'Alkali Creek', 'Stream', 'North Dakota', 'ND', 'Williams', 'Charlson NE', 48.15252, -102.8504617, ST_GeomFromText('POINT(48.15252 -102.8504617)', 4326), 48.2744632, -102.8504601, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027676', 'Alkali Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Goldwin', 47.2069664, -99.2079384, ST_GeomFromText('POINT(47.2069664 -99.2079384)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1027677', 'Alkali Lake', 'Lake', 'North Dakota', 'ND', 'Sheridan', 'Anamoose SW', 47.758804, -100.2267819, ST_GeomFromText('POINT(47.758804 -100.2267819)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1027678', 'Alkali Lake', 'Lake', 'North Dakota', 'ND', 'Pierce', 'Martin', 47.8530896, -100.0712568, ST_GeomFromText('POINT(47.8530896 -100.0712568)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1027679', 'Alkali Lake', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Drake NW', 47.8943463, -100.3987539, ST_GeomFromText('POINT(47.8943463 -100.3987539)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1027680', 'Alkali Lake', 'Lake', 'North Dakota', 'ND', 'Williams', 'Appam', 48.5778609, -103.5900314, ST_GeomFromText('POINT(48.5778609 -103.5900314)', 4326), NULL, NULL, '1980-02-13', '2019-04-27', NULL, NULL, NULL),
  ('1027681', 'Alkaline Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Alkaline Lake', 46.6715006, -99.5635591, ST_GeomFromText('POINT(46.6715006 -99.5635591)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1027682', 'Lake Etta', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Dawson', 46.77279, -99.841003, ST_GeomFromText('POINT(46.77279 -99.841003)', 4326), NULL, NULL, '1980-02-13', '2024-12-18', 'Official', 'Board Decision', '2006-09-14'),
  ('1027693', 'Ambulance Butte', 'Summit', 'North Dakota', 'ND', 'Morton', 'Huff', 46.5815185, -100.7237077, ST_GeomFromText('POINT(46.5815185 -100.7237077)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1027701', 'Anderson Butte', 'Summit', 'North Dakota', 'ND', 'Hettinger', 'Abbey Hill', 46.3000719, -102.5302076, ST_GeomFromText('POINT(46.3000719 -102.5302076)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1027702', 'Anderson Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'International Peace Garden', 48.9108074, -100.0583813, ST_GeomFromText('POINT(48.9108074 -100.0583813)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1027705', 'Ankenbauer Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Kenmare', 48.6853039, -102.1054418, ST_GeomFromText('POINT(48.6853039 -102.1054418)', 4326), 48.7491974, -102.2593335, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027708', 'Antelope Butte', 'Summit', 'North Dakota', 'ND', 'Grant', 'North Star Butte', 46.4886174, -102.0212665, ST_GeomFromText('POINT(46.4886174 -102.0212665)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1027711', 'Antelope Creek', 'Stream', 'North Dakota', 'ND', 'Grant', 'Crown Butte Creek SW', 46.5000066, -102.0023771, ST_GeomFromText('POINT(46.5000066 -102.0023771)', 4326), 46.5055608, -102.1348827, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1027712', 'Antelope Creek', 'Stream', 'North Dakota', 'ND', 'Mercer', 'Hazen East', 47.3058363, -101.5890531, ST_GeomFromText('POINT(47.3058363 -101.5890531)', 4326), 47.4000039, -101.7646141, '1980-02-13', NULL, 'Official', 'Board Decision', '1980-01-01'),
  ('1027713', 'Antelope Lakes', 'Lake', 'North Dakota', 'ND', 'Pierce', 'Clifton', 47.9692496, -100.1159739, ST_GeomFromText('POINT(47.9692496 -100.1159739)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1027715', 'Antelope Valley', 'Valley', 'North Dakota', 'ND', 'Pierce', 'Anamoose', 47.9875032, -100.1323568, ST_GeomFromText('POINT(47.9875032 -100.1323568)', 4326), 47.9938934, -100.452642, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027723', 'Apple Creek', 'Stream', 'North Dakota', 'ND', 'Burleigh', 'Schmidt', 46.6944387, -100.7565154, ST_GeomFromText('POINT(46.6944387 -100.7565154)', 4326), 46.8872222, -100.4794444, '1980-02-13', NULL, 'Official', 'Board Decision', '1976-01-01'),
  ('1027727', 'Lake Ardoch', 'Reservoir', 'North Dakota', 'ND', 'Walsh', 'Ardoch', 48.2415323, -97.3139386, ST_GeomFromText('POINT(48.2415323 -97.3139386)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1027732', 'Arikara Bay', 'Bay', 'North Dakota', 'ND', 'McLean', 'Raub NW', 47.6991742, -102.2040612, ST_GeomFromText('POINT(47.6991742 -102.2040612)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027733', 'Armourdale Lake', 'Reservoir', 'North Dakota', 'ND', 'Towner', 'Hansboro', 48.8810242, -99.4222047, ST_GeomFromText('POINT(48.8810242 -99.4222047)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1027738', 'Arnegard Dam', 'Reservoir', 'North Dakota', 'ND', 'McKenzie', 'Arnegard', 47.8342113, -103.4849279, ST_GeomFromText('POINT(47.8342113 -103.4849279)', 4326), NULL, NULL, '1980-02-13', '2022-08-09', NULL, NULL, NULL),
  ('1027740', 'Arnold Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Carpio', 48.4019598, -101.6357182, ST_GeomFromText('POINT(48.4019598 -101.6357182)', 4326), 48.3150137, -101.7626632, '1980-02-13', NULL, 'Official', 'Board Decision', '1981-01-01'),
  ('1027742', 'Arrowwood Lake', 'Reservoir', 'North Dakota', 'ND', 'Stutsman', 'Arrowwood Lake', 47.2897105, -98.8378617, ST_GeomFromText('POINT(47.2897105 -98.8378617)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', 'Official', 'Board Decision', '1935-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1027751', 'Ash Coulee', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Marshall', 47.1513978, -102.2685094, ST_GeomFromText('POINT(47.1513978 -102.2685094)', 4326), 47.1750091, -102.2279529, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027752', 'Ash Coulee', 'Valley', 'North Dakota', 'ND', 'Dunn', 'Saddle Butte SW', 47.5772304, -102.3974017, ST_GeomFromText('POINT(47.5772304 -102.3974017)', 4326), 47.5625, -102.3780556, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027753', 'Ash Creek', 'Stream', 'North Dakota', 'ND', 'Stark', 'Dickinson South', 46.8513985, -102.8612896, ST_GeomFromText('POINT(46.8513985 -102.8612896)', 4326), 46.7408437, -102.9768425, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027756', 'Ashley Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Tappen North', 46.8972276, -99.7405029, ST_GeomFromText('POINT(46.8972276 -99.7405029)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1027758', 'Lake Ashtabula', 'Reservoir', 'North Dakota', 'ND', 'Barnes', 'Sibley', 47.1703468, -97.990288, ST_GeomFromText('POINT(47.1703468 -97.990288)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1027761', 'Audubon Lake', 'Reservoir', 'North Dakota', 'ND', 'McLean', 'Coleharbor', 47.6016501, -101.1824337, ST_GeomFromText('POINT(47.6016501 -101.1824337)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', 'Official', 'Board Decision', '1968-01-01'),
  ('1027774', 'Aylmer Lake', 'Lake', 'North Dakota', 'ND', 'Pierce', 'Anamoose', 47.9412521, -100.1965712, ST_GeomFromText('POINT(47.9412521 -100.1965712)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1027779', 'Bacon Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Boundary Lake', 48.9546926, -100.1492433, ST_GeomFromText('POINT(48.9546926 -100.1492433)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1027780', 'Baden Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Coulee', 48.5916895, -102.0054402, ST_GeomFromText('POINT(48.5916895 -102.0054402)', 4326), 48.5330556, -102.0966667, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027781', 'Badger Bay', 'Bay', 'North Dakota', 'ND', 'Emmons', 'Fort Rice', 46.5030498, -100.5620648, ST_GeomFromText('POINT(46.5030498 -100.5620648)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1027782', 'Badger Creek', 'Stream', 'North Dakota', 'ND', 'Emmons', 'Fort Rice', 46.5024942, -100.55512, ST_GeomFromText('POINT(46.5024942 -100.55512)', 4326), 46.5283246, -100.3392808, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027785', 'Bahr Creek', 'Stream', 'North Dakota', 'ND', 'Morton', 'Dengate', 46.8097257, -101.6915388, ST_GeomFromText('POINT(46.8097257 -101.6915388)', 4326), 46.7258372, -101.7070934, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027786', 'Bair Slough', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Cleveland', 46.8814616, -99.0665843, ST_GeomFromText('POINT(46.8814616 -99.0665843)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1027790', 'Bakstad Lake', 'Lake', 'North Dakota', 'ND', 'Eddy', 'Hamar', 47.7531034, -98.6243489, ST_GeomFromText('POINT(47.7531034 -98.6243489)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1027791', 'Balch Slough', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Cleveland SW', 46.7868813, -99.1669008, ST_GeomFromText('POINT(46.7868813 -99.1669008)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1027792', 'Bald Butte', 'Summit', 'North Dakota', 'ND', 'McHenry', 'Rangeley NE', 48.1395733, -100.3468466, ST_GeomFromText('POINT(48.1395733 -100.3468466)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1027793', 'Baldhill Creek', 'Stream', 'North Dakota', 'ND', 'Barnes', 'Dazey NE', 47.1469302, -98.028987, ST_GeomFromText('POINT(47.1469302 -98.028987)', 4326), 47.5416636, -98.6873255, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027798', 'Baldy Butte', 'Summit', 'North Dakota', 'ND', 'Slope', 'East Rainy Butte', 46.4845726, -102.9906019, ST_GeomFromText('POINT(46.4845726 -102.9906019)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1027799', 'Baldy Hill', 'Summit', 'North Dakota', 'ND', 'Morton', 'Dengate', 46.788219, -101.6949892, ST_GeomFromText('POINT(46.788219 -101.6949892)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1027811', 'Barnes Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Woodworth', 47.23369, -99.2769704, ST_GeomFromText('POINT(47.23369 -99.2769704)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1027813', 'Barr Butte', 'Summit', 'North Dakota', 'ND', 'Williams', 'Grenora', 48.5600268, -103.8963183, ST_GeomFromText('POINT(48.5600268 -103.8963183)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1027815', 'Barren Butte', 'Summit', 'North Dakota', 'ND', 'Sioux', 'Barren Butte', 46.152962, -100.810268, ST_GeomFromText('POINT(46.152962 -100.810268)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1027819', 'Barths Butte', 'Summit', 'North Dakota', 'ND', 'Adams', 'Barths Butte', 46.0805586, -102.3321019, ST_GeomFromText('POINT(46.0805586 -102.3321019)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1027824', 'Bartons Lake', 'Lake', 'North Dakota', 'ND', 'McLean', 'Douglas East', 47.858382, -101.453161, ST_GeomFromText('POINT(47.858382 -101.453161)', 4326), NULL, NULL, '1980-02-13', '2024-12-19', NULL, NULL, NULL),
  ('1027826', 'Basswood Lake', 'Lake', 'North Dakota', 'ND', 'Nelson', 'Binford NW', 47.6779092, -98.3787212, ST_GeomFromText('POINT(47.6779092 -98.3787212)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1027830', 'Battema Lake', 'Lake', 'North Dakota', 'ND', 'Pierce', 'Balta SE', 48.0543571, -100.1075265, ST_GeomFromText('POINT(48.0543571 -100.1075265)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1027832', 'Battle Creek', 'Stream', 'North Dakota', 'ND', 'Sioux', 'Fort Yates NW', 46.1916621, -100.6345705, ST_GeomFromText('POINT(46.1916621 -100.6345705)', 4326), 46.3122196, -100.8687418, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027833', 'Battle Lake', 'Lake', 'North Dakota', 'ND', 'Eddy', 'Hamar', 47.8130247, -98.6166972, ST_GeomFromText('POINT(47.8130247 -98.6166972)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1027835', 'Baumgartner Lake', 'Lake', 'North Dakota', 'ND', 'Emmons', 'Strasburg', 46.1650348, -100.2017182, ST_GeomFromText('POINT(46.1650348 -100.2017182)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1027838', 'Bear Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Hay Flat', 47.5672297, -102.3423999, ST_GeomFromText('POINT(47.5672297 -102.3423999)', 4326), 47.5191667, -102.3536111, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1027839', 'Bear Creek Bay', 'Bay', 'North Dakota', 'ND', 'Dunn', 'Hay Flat', 47.5744519, -102.3407333, ST_GeomFromText('POINT(47.5744519 -102.3407333)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027841', 'Bear Den Bay', 'Bay', 'North Dakota', 'ND', 'McKenzie', 'Sanish SW', 47.8114027, -102.6663006, ST_GeomFromText('POINT(47.8114027 -102.6663006)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027843', 'Bear Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Metigoshe Lake', 48.8771022, -100.3017484, ST_GeomFromText('POINT(48.8771022 -100.3017484)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1027844', 'Bears Den Hillock', 'Summit', 'North Dakota', 'ND', 'Ransom', 'Fort Ransom', 46.528428, -97.9504538, ST_GeomFromText('POINT(46.528428 -97.9504538)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1027846', 'Beauty Valley', 'Valley', 'North Dakota', 'ND', 'Mountrail', 'Battleview', 48.5061347, -102.8321265, ST_GeomFromText('POINT(48.5061347 -102.8321265)', 4326), 48.5225247, -102.9057375, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027848', 'Beaver Creek', 'Stream', 'North Dakota', 'ND', 'Morton', 'Bismarck', 46.7905496, -100.8534634, ST_GeomFromText('POINT(46.7905496 -100.8534634)', 4326), 46.7752778, -100.8533333, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027849', 'Beaver Creek', 'Stream', 'North Dakota', 'ND', 'Emmons', 'Fort Yates NE', 46.2474938, -100.5392887, ST_GeomFromText('POINT(46.2474938 -100.5392887)', 4326), 46.3774763, -99.6103886, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027850', 'Beaver Creek', 'Stream', 'North Dakota', 'ND', 'Grant', 'Otter Creek East', 46.6030572, -101.3640338, ST_GeomFromText('POINT(46.6030572 -101.3640338)', 4326), 46.7955549, -101.4070874, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027851', 'Beaver Creek', 'Stream', 'North Dakota', 'ND', 'Grant', 'Clark Butte NE', 46.6336175, -102.0098805, ST_GeomFromText('POINT(46.6336175 -102.0098805)', 4326), 46.7841733, -102.0901639, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027852', 'Beaver Creek', 'Stream', 'North Dakota', 'ND', 'Stark', 'White Butte NE', 46.6475056, -102.2504448, ST_GeomFromText('POINT(46.6475056 -102.2504448)', 4326), 46.5391711, -102.2937772, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1027853', 'Beaver Creek', 'Stream', 'North Dakota', 'ND', 'Stutsman', 'Montpelier', 46.685815, -98.5942625, ST_GeomFromText('POINT(46.685815 -98.5942625)', 4326), 46.7730386, -99.0381654, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027854', 'Beaver Creek', 'Stream', 'North Dakota', 'ND', 'Stark', 'Gladstone', 46.8216731, -102.5015679, ST_GeomFromText('POINT(46.8216731 -102.5015679)', 4326), 46.8825068, -102.4268448, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027855', 'Beaver Creek', 'Stream', 'North Dakota', 'ND', 'Mercer', 'Beulah NW', 47.4788935, -102.0004502, ST_GeomFromText('POINT(47.4788935 -102.0004502)', 4326), 47.4075, -101.9486111, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027856', 'Beaver Creek', 'Stream', 'North Dakota', 'ND', 'Steele', 'Hatton SW', 47.5716542, -97.4989793, ST_GeomFromText('POINT(47.5716542 -97.4989793)', 4326), 47.7466584, -97.8817585, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027857', 'Beaver Creek Bay', 'Bay', 'North Dakota', 'ND', 'Mercer', 'Beulah NW', 47.4791706, -101.9282274, ST_GeomFromText('POINT(47.4791706 -101.9282274)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027862', 'Beaver Holes Creek', 'Stream', 'North Dakota', 'ND', 'Sioux', 'Cannon Ball SE', 46.3013832, -100.5867898, ST_GeomFromText('POINT(46.3013832 -100.5867898)', 4326), 46.3227733, -100.7298503, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027863', 'Beaver Lake', 'Lake', 'North Dakota', 'ND', 'Logan', 'Wishek NE', 46.3959812, -99.6066417, ST_GeomFromText('POINT(46.3959812 -99.6066417)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1027864', 'Beaver Lake', 'Lake', 'North Dakota', 'ND', 'McLean', 'Sanger', 47.1668072, -100.9614263, ST_GeomFromText('POINT(47.1668072 -100.9614263)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1027865', 'Beaver Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Beaver Lake', 48.8642045, -102.6401702, ST_GeomFromText('POINT(48.8642045 -102.6401702)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1027869', 'Becker Lake', 'Lake', 'North Dakota', 'ND', 'Emmons', 'Grassna', 46.0066675, -100.3705261, ST_GeomFromText('POINT(46.0066675 -100.3705261)', 4326), NULL, NULL, '1980-02-13', '2019-03-07', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1027870', 'Beer Bum Hill', 'Summit', 'North Dakota', 'ND', 'Grant', 'Pretty Rock Butte', 46.1904111, -101.8312773, ST_GeomFromText('POINT(46.1904111 -101.8312773)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1027874', 'Belcourt Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Lake Upsilon', 48.8774892, -99.7591103, ST_GeomFromText('POINT(48.8774892 -99.7591103)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1027876', 'Bell Butte', 'Summit', 'North Dakota', 'ND', 'Morton', 'Dengate', 46.7645371, -101.6603202, ST_GeomFromText('POINT(46.7645371 -101.6603202)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1027879', 'Belle Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Carpenter Lake', 48.8937504, -99.9993967, ST_GeomFromText('POINT(48.8937504 -99.9993967)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1027881', 'Belmar Slough', 'Swamp', 'North Dakota', 'ND', 'Bottineau', 'Omemee', 48.6568442, -100.3344759, ST_GeomFromText('POINT(48.6568442 -100.3344759)', 4326), NULL, NULL, '1980-02-13', '2023-03-24', NULL, NULL, NULL),
  ('1027884', 'Ben Waters Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Carpenter Lake', 48.9676386, -99.8949584, ST_GeomFromText('POINT(48.9676386 -99.8949584)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1027888', 'Lake Bennett', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Metigoshe Lake', 48.9677027, -100.3345849, ST_GeomFromText('POINT(48.9677027 -100.3345849)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1027889', 'Bennetts Coulee', 'Valley', 'North Dakota', 'ND', 'Stutsman', 'Arrowwood Lake', 47.2530521, -98.8626082, ST_GeomFromText('POINT(47.2530521 -98.8626082)', 4326), 47.2563855, -98.9064983, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027892', 'Lake Benson', 'Lake', 'North Dakota', 'ND', 'Barnes', 'Dazey', 47.2244863, -98.2323487, ST_GeomFromText('POINT(47.2244863 -98.2323487)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1027894', 'Bentley Lake', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Drake NW', 47.9173974, -100.441109, ST_GeomFromText('POINT(47.9173974 -100.441109)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1027895', 'Bentz Lake', 'Lake', 'North Dakota', 'ND', 'Sheridan', 'Lincoln Valley NW', 47.6373711, -100.4316825, ST_GeomFromText('POINT(47.6373711 -100.4316825)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1027896', 'Berg Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Donnybrook', 48.5375215, -101.9348842, ST_GeomFromText('POINT(48.5375215 -101.9348842)', 4326), 48.4972438, -102.0032178, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027897', 'Berg Slough', 'Lake', 'North Dakota', 'ND', 'Williams', 'Tom Berg Lake', 48.601827, -103.18741, ST_GeomFromText('POINT(48.601827 -103.18741)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1027904', 'Bergen Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Boundary Lake', 48.9702264, -100.1923624, ST_GeomFromText('POINT(48.9702264 -100.1923624)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1027905', 'Berkland Slough', 'Lake', 'North Dakota', 'ND', 'Nelson', 'McVille', 47.8396396, -98.1817525, ST_GeomFromText('POINT(47.8396396 -98.1817525)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1027911', 'Beere Lake', 'Lake', 'North Dakota', 'ND', 'Sargent', 'Hamlin', 46.1345621, -97.3084751, ST_GeomFromText('POINT(46.1345621 -97.3084751)', 4326), NULL, NULL, '1980-02-13', '2024-12-20', NULL, NULL, NULL),
  ('1027912', 'Berreth Lake', 'Lake', 'North Dakota', 'ND', 'Emmons', 'Grassna NW', 46.210464, -100.406824, ST_GeomFromText('POINT(46.210464 -100.406824)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1027913', 'Berry Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'International Peace Garden', 48.9333151, -100.1177782, ST_GeomFromText('POINT(48.9333151 -100.1177782)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1027914', 'Lake Bertha', 'Lake', 'North Dakota', 'ND', 'Cass', 'Alice', 46.7599008, -97.5040293, ST_GeomFromText('POINT(46.7599008 -97.5040293)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1027916', 'Berthold Bay', 'Bay', 'North Dakota', 'ND', 'Ward', 'Emmet SW', 47.5550016, -101.6979461, ST_GeomFromText('POINT(47.5550016 -101.6979461)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1027920', 'Lake Bessie', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Metigoshe Lake', 48.9488694, -100.3624656, ST_GeomFromText('POINT(48.9488694 -100.3624656)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1027972', 'Beulah Bay', 'Bay', 'North Dakota', 'ND', 'Mercer', 'Beulah NE', 47.4916685, -101.7585039, ST_GeomFromText('POINT(47.4916685 -101.7585039)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027979', 'Big Butte', 'Summit', 'North Dakota', 'ND', 'Adams', 'Kid Rich Butte', 45.9949492, -102.5510645, ST_GeomFromText('POINT(45.9949492 -102.5510645)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1027980', 'Big Butte', 'Summit', 'North Dakota', 'ND', 'Mountrail', 'White Earth', 48.4447747, -102.7799749, ST_GeomFromText('POINT(48.4447747 -102.7799749)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL),
  ('1027981', 'Big Coulee', 'Valley', 'North Dakota', 'ND', 'Benson', 'Fort Totten', 47.8827759, -98.9665069, ST_GeomFromText('POINT(47.8827759 -98.9665069)', 4326), 47.9658333, -98.9616667, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027982', 'Big Coulee', 'Valley', 'North Dakota', 'ND', 'Benson', 'Maddock', 47.899729, -99.592074, ST_GeomFromText('POINT(47.899729 -99.592074)', 4326), 48.1094499, -99.526801, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027983', 'Big Coulee', 'Valley', 'North Dakota', 'ND', 'Benson', 'Brinsmade', 48.1911093, -99.2623572, ST_GeomFromText('POINT(48.1911093 -99.2623572)', 4326), 48.2469433, -99.3820792, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027984', 'Big Coulee', 'Valley', 'North Dakota', 'ND', 'Towner', 'Egeland SW', 48.5211137, -99.1868038, ST_GeomFromText('POINT(48.5211137 -99.1868038)', 4326), 48.8336166, -99.6095891, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027989', 'Big Meadow', 'Swamp', 'North Dakota', 'ND', 'Williams', 'Big Meadow', 48.5581217, -103.0569976, ST_GeomFromText('POINT(48.5581217 -103.0569976)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1027990', 'Big Muddy Creek', 'Stream', 'North Dakota', 'ND', 'Grant', 'Otter Creek West', 46.6083352, -101.3862561, ST_GeomFromText('POINT(46.6083352 -101.3862561)', 4326), 46.8402845, -101.990439, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1027991', 'Big Muddy Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Tappen North', 46.9245912, -99.738334, ST_GeomFromText('POINT(46.9245912 -99.738334)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1027995', 'Big Slough', 'Lake', 'North Dakota', 'ND', 'Divide', 'Wildrose', 48.6980823, -103.22588, ST_GeomFromText('POINT(48.6980823 -103.22588)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1027996', 'Big Slough', 'Stream', 'South Dakota', 'SD', 'Roberts', 'Wheaton West', 45.863148, -96.602697, ST_GeomFromText('POINT(45.863148 -96.602697)', 4326), 45.969467, -96.89568, '1980-02-13', '2010-12-07', NULL, NULL, NULL),
  ('1027997', 'Big Slough', 'Stream', 'North Dakota', 'ND', 'Wells', 'Heimdal', 47.8105595, -99.6981805, ST_GeomFromText('POINT(47.8105595 -99.6981805)', 4326), 47.750002, -99.3854021, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027998', 'Big Slough', 'Stream', 'North Dakota', 'ND', 'Pembina', 'Hamilton', 48.8536, -97.3886873, ST_GeomFromText('POINT(48.8536 -97.3886873)', 4326), 48.7902662, -97.3672995, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1027999', 'Big Spring Coulee', 'Valley', 'North Dakota', 'ND', 'Burke', 'Vanville NE', 48.6900294, -102.2587775, ST_GeomFromText('POINT(48.6900294 -102.2587775)', 4326), 48.6616667, -102.2822222, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028001', 'Big Swamp', 'Swamp', 'North Dakota', 'ND', 'Barnes', 'Valley City West', 46.8798607, -98.0877376, ST_GeomFromText('POINT(46.8798607 -98.0877376)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1028002', 'Bigham Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Dunseith', 48.8146122, -100.0227302, ST_GeomFromText('POINT(48.8146122 -100.0227302)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1028003', 'Billings Lake', 'Lake', 'North Dakota', 'ND', 'Cavalier', 'Billings Lake', 48.600195, -98.4977581, ST_GeomFromText('POINT(48.600195 -98.4977581)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1028005', 'Billows Lake', 'Lake', 'North Dakota', 'ND', 'McLean', 'Peterson Lake', 47.5475221, -100.8552512, ST_GeomFromText('POINT(47.5475221 -100.8552512)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028010', 'Bird Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Tappen North', 46.9888925, -99.7077859, ST_GeomFromText('POINT(46.9888925 -99.7077859)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1028014', 'Bisek Lake', 'Lake', 'North Dakota', 'ND', 'Richland', 'Lidgerwood', 46.1059874, -97.1674788, ST_GeomFromText('POINT(46.1059874 -97.1674788)', 4326), NULL, NULL, '1980-02-13', '2023-05-26', NULL, NULL, NULL),
  ('1028017', 'Bittener Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Metigoshe Lake', 48.9937091, -100.2602098, ST_GeomFromText('POINT(48.9937091 -100.2602098)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1028018', 'Bitter Lake', 'Lake', 'North Dakota', 'ND', 'Nelson', 'Bitter Lake', 47.9612709, -98.1856473, ST_GeomFromText('POINT(47.9612709 -98.1856473)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1028021', 'Black Butte', 'Summit', 'North Dakota', 'ND', 'Hettinger', 'Stony Butte', 46.5179898, -102.570033, ST_GeomFromText('POINT(46.5179898 -102.570033)', 4326), NULL, NULL, '1980-02-13', '2025-05-03', NULL, NULL, NULL),
  ('1028022', 'Black Butte', 'Summit', 'North Dakota', 'ND', 'Ward', 'Sawyer', 48.0995502, -101.0234714, ST_GeomFromText('POINT(48.0995502 -101.0234714)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL),
  ('1028024', 'Black Hammer Hill', 'Summit', 'North Dakota', 'ND', 'Wells', 'Black Hammer Hill', 47.827849, -99.398355, ST_GeomFromText('POINT(47.827849 -99.398355)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1028025', 'Black Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Lake Klingenberg', 48.931075, -100.49404, ST_GeomFromText('POINT(48.931075 -100.49404)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1028027', 'Black Slough', 'Lake', 'North Dakota', 'ND', 'Benson', 'Hamar', 47.8581891, -98.5819773, ST_GeomFromText('POINT(47.8581891 -98.5819773)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1028029', 'Black Slough', 'Lake', 'North Dakota', 'ND', 'Burke', 'Rennie Lake', 48.8491228, -102.6144739, ST_GeomFromText('POINT(48.8491228 -102.6144739)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028030', 'Black Tiger Bay', 'Bay', 'North Dakota', 'ND', 'Ramsey', 'Tokio', 47.965, -98.7806671, ST_GeomFromText('POINT(47.965 -98.7806671)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028031', 'Blacks Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Carpio NE', 48.3825145, -101.5954408, ST_GeomFromText('POINT(48.3825145 -101.5954408)', 4326), 48.3469581, -101.6362745, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028032', 'Blacktail Coulee', 'Valley', 'North Dakota', 'ND', 'McHenry', 'Voltaire', 48.0222299, -100.8576487, ST_GeomFromText('POINT(48.0222299 -100.8576487)', 4326), 47.9125054, -100.9634833, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028033', 'Blacktail Creek', 'Stream', 'North Dakota', 'ND', 'Williams', 'Twin Lakes', 48.3844696, -103.5951947, ST_GeomFromText('POINT(48.3844696 -103.5951947)', 4326), 48.4736369, -103.866317, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028034', 'Blacktail Lake', 'Reservoir', 'North Dakota', 'ND', 'Williams', 'Blacktail Lake', 48.4336742, -103.7349271, ST_GeomFromText('POINT(48.4336742 -103.7349271)', 4326), NULL, NULL, '1980-02-13', '2019-04-27', NULL, NULL, NULL),
  ('1028036', 'Blackwater Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Sawyer', 48.1011207, -101.1107118, ST_GeomFromText('POINT(48.1011207 -101.1107118)', 4326), 48.0205643, -101.288773, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028037', 'Blackwater Lake', 'Lake', 'North Dakota', 'ND', 'McLean', 'Blackwater Lake', 47.6625056, -101.8187594, ST_GeomFromText('POINT(47.6625056 -101.8187594)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1028040', 'Blanc Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Westby Lake', 48.6242404, -102.2863509, ST_GeomFromText('POINT(48.6242404 -102.2863509)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1028043', 'Blind Johnny Hill', 'Summit', 'North Dakota', 'ND', 'Grant', 'Wheeler Hills', 46.1844506, -101.7329162, ST_GeomFromText('POINT(46.1844506 -101.7329162)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1028051', 'Blue Butte', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Sanish SW', 47.858929, -102.7247643, ST_GeomFromText('POINT(47.858929 -102.7247643)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028052', 'Blue Cloud Lake', 'Lake', 'North Dakota', 'ND', 'Foster', 'Grace City', 47.5466748, -98.7695117, ST_GeomFromText('POINT(47.5466748 -98.7695117)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1028053', 'Blue Hill', 'Summit', 'North Dakota', 'ND', 'McLean', 'Blue Hill', 47.7702807, -101.6412756, ST_GeomFromText('POINT(47.7702807 -101.6412756)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1028055', 'Blue Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Fried', 47.1001429, -98.664722, ST_GeomFromText('POINT(47.1001429 -98.664722)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1028056', 'Blue Lake', 'Lake', 'North Dakota', 'ND', 'McLean', 'Peterson Lake', 47.5448929, -100.7574681, ST_GeomFromText('POINT(47.5448929 -100.7574681)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1028057', 'Blue Mountain', 'Summit', 'North Dakota', 'ND', 'Nelson', 'Pekin NW', 47.918563, -98.4917815, ST_GeomFromText('POINT(47.918563 -98.4917815)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1028064', 'Bob Denny Hills', 'Range', 'North Dakota', 'ND', 'Slope', 'Mineral Springs', 46.3522312, -103.1285047, ST_GeomFromText('POINT(46.3522312 -103.1285047)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028065', 'Bobs Coulee', 'Valley', 'North Dakota', 'ND', 'Williams', 'Trenton', 48.0758562, -103.8202037, ST_GeomFromText('POINT(48.0758562 -103.8202037)', 4326), 48.1280785, -103.8402043, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028068', 'Bog Creek', 'Stream', 'North Dakota', 'ND', 'Bowman', 'Cedar Hills', 46.1361151, -103.8593712, ST_GeomFromText('POINT(46.1361151 -103.8593712)', 4326), 46.1219485, -103.7946467, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028069', 'Boggy Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Sanish SE', 47.7747345, -102.6221338, ST_GeomFromText('POINT(47.7747345 -102.6221338)', 4326), 47.7705687, -102.6913024, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028074', 'Bond Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Pettibone', 47.0840896, -99.5936108, ST_GeomFromText('POINT(47.0840896 -99.5936108)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028075', 'Bone Creek', 'Stream', 'North Dakota', 'ND', 'Sioux', 'Fort Yates NE', 46.2188834, -100.5801239, ST_GeomFromText('POINT(46.2188834 -100.5801239)', 4326), 46.2630507, -100.6679042, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028077', 'Lake Bonita', 'Reservoir', 'North Dakota', 'ND', 'Foster', 'Melville', 47.3323971, -99.0889733, ST_GeomFromText('POINT(47.3323971 -99.0889733)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1028078', 'Bonnes Coulee', 'Valley', 'North Dakota', 'ND', 'McHenry', 'Velva', 48.0555642, -100.9490398, ST_GeomFromText('POINT(48.0555642 -100.9490398)', 4326), 47.8886162, -101.1273771, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028079', 'Boot Lake', 'Lake', 'North Dakota', 'ND', 'Sargent', 'Cayuga NW', 46.2436176, -97.4003618, ST_GeomFromText('POINT(46.2436176 -97.4003618)', 4326), NULL, NULL, '1980-02-13', '2023-05-26', NULL, NULL, NULL),
  ('1028081', 'Borg Lake', 'Lake', 'North Dakota', 'ND', 'Sargent', 'Cayuga NW', 46.2190358, -97.4090512, ST_GeomFromText('POINT(46.2190358 -97.4090512)', 4326), NULL, NULL, '1980-02-13', '2023-05-26', NULL, NULL, NULL),
  ('1028085', 'Boundary Butte', 'Summit', 'North Dakota', 'ND', 'Bottineau', 'Lake Klingenberg', 48.9993532, -100.4300165, ST_GeomFromText('POINT(48.9993532 -100.4300165)', 4326), NULL, NULL, '1980-02-13', '2012-10-11', NULL, NULL, NULL),
  ('1028086', 'Boundary Creek', 'Stream', 'North Dakota', 'ND', 'Bottineau', 'Landa SW', 48.84433, -100.91852, ST_GeomFromText('POINT(48.84433 -100.91852)', 4326), 49.03126, -100.4412, '1980-02-13', '2014-11-01', NULL, NULL, NULL),
  ('1028095', 'Bowers Coulee', 'Valley', 'North Dakota', 'ND', 'McHenry', 'Blacktail Coulee', 47.9872294, -100.924595, ST_GeomFromText('POINT(47.9872294 -100.924595)', 4326), 47.9311171, -101.0134852, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028101', 'Bowman Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Donnybrook', 48.5172431, -101.9082175, ST_GeomFromText('POINT(48.5172431 -101.9082175)', 4326), 48.4936323, -101.9732177, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028105', 'Boxelder Creek', 'Stream', 'North Dakota', 'ND', 'Grant', 'Paradise Flats', 46.2238937, -101.5031907, ST_GeomFromText('POINT(46.2238937 -101.5031907)', 4326), 46.3394506, -101.647085, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028106', 'Boyd Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Lake Upsilon', 48.9817727, -99.823174, ST_GeomFromText('POINT(48.9817727 -99.823174)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1028110', 'Braddock Dam', 'Reservoir', 'North Dakota', 'ND', 'Emmons', 'Braddock', 46.5430428, -100.116776, ST_GeomFromText('POINT(46.5430428 -100.116776)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028111', 'Brady Creek', 'Stream', 'North Dakota', 'ND', 'Mercer', 'Hazen West', 47.2800043, -101.6390542, ST_GeomFromText('POINT(47.2800043 -101.6390542)', 4326), 47.1438894, -101.4882099, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028112', 'Brager Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Metigoshe Lake', 48.9554205, -100.272654, ST_GeomFromText('POINT(48.9554205 -100.272654)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1028115', 'Branch Knife River', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Willow Creek West', 47.1169528, -102.2004511, ST_GeomFromText('POINT(47.1169528 -102.2004511)', 4326), 46.9166737, -102.123778, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028118', 'Bratburg Butte', 'Summit', 'North Dakota', 'ND', 'Stark', 'Bratburg Butte', 46.814335, -102.4538183, ST_GeomFromText('POINT(46.814335 -102.4538183)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1028119', 'Braun Butte', 'Summit', 'North Dakota', 'ND', 'Emmons', 'Grassna', 46.1010455, -100.2992963, ST_GeomFromText('POINT(46.1010455 -100.2992963)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL),
  ('1028125', 'Lake Brekken', 'Lake', 'North Dakota', 'ND', 'McLean', 'Turtle Lake', 47.545664, -100.8948399, ST_GeomFromText('POINT(47.545664 -100.8948399)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1028128', 'Brennan Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'International Peace Garden', 48.9552194, -100.0168128, ST_GeomFromText('POINT(48.9552194 -100.0168128)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1028131', 'Briar Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Buford', 47.9402981, -103.9468742, ST_GeomFromText('POINT(47.9402981 -103.9468742)', 4326), 47.9233333, -103.9072222, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028132', 'Bright Water Lake', 'Lake', 'North Dakota', 'ND', 'Divide', 'Bright Water Lake', 48.725731, -103.4643213, ST_GeomFromText('POINT(48.725731 -103.4643213)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1028137', 'Bristol Gulch', 'Stream', 'North Dakota', 'ND', 'Dickey', 'Monango SW', 46.0452497, -98.6614909, ST_GeomFromText('POINT(46.0452497 -98.6614909)', 4326), 46.0871935, -98.8317711, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028139', 'Brock Slough', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Pettibone', 47.0748207, -99.5416929, ST_GeomFromText('POINT(47.0748207 -99.5416929)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1028141', 'Broken Bone Hill', 'Summit', 'North Dakota', 'ND', 'Benson', 'Pleasant Lake', 48.3479499, -99.768219, ST_GeomFromText('POINT(48.3479499 -99.768219)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL),
  ('1028142', 'Broken Bone Lake', 'Lake', 'North Dakota', 'ND', 'Benson', 'Pleasant Lake', 48.3486112, -99.8040687, ST_GeomFromText('POINT(48.3486112 -99.8040687)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1028143', 'Bromley Lake', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Rangeley SE', 48.0559202, -100.3156188, ST_GeomFromText('POINT(48.0559202 -100.3156188)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1028147', 'Broom Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Lake Upsilon', 48.9805195, -99.8573566, ST_GeomFromText('POINT(48.9805195 -99.8573566)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1028149', 'Browen Lake', 'Lake', 'North Dakota', 'ND', 'Ransom', 'Nome SE', 46.6007704, -97.8181366, ST_GeomFromText('POINT(46.6007704 -97.8181366)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1028156', 'Brumba Pool', 'Lake', 'North Dakota', 'ND', 'Towner', 'Snyder Lake', 48.7277299, -99.2444178, ST_GeomFromText('POINT(48.7277299 -99.2444178)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1028158', 'Brumwell Slough', 'Lake', 'North Dakota', 'ND', 'McLean', 'Blackwater Lake', 47.6961093, -101.8656118, ST_GeomFromText('POINT(47.6961093 -101.8656118)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028160', 'Brush Creek', 'Stream', 'North Dakota', 'ND', 'Mercer', 'Medicine Butte NE', 47.2241744, -101.8462791, ST_GeomFromText('POINT(47.2241744 -101.8462791)', 4326), 47.0550048, -101.6971001, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028161', 'Brush Hills', 'Range', 'North Dakota', 'ND', 'Stutsman', 'Vashti', 47.2344416, -99.1115021, ST_GeomFromText('POINT(47.2344416 -99.1115021)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028162', 'Brush Lake', 'Lake', 'North Dakota', 'ND', 'McLean', 'Pelican Lake', 47.5294381, -100.7269238, ST_GeomFromText('POINT(47.5294381 -100.7269238)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1028163', 'Brush Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Goldwin SW', 47.1247887, -99.1282868, ST_GeomFromText('POINT(47.1247887 -99.1282868)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1028164', 'Brushy Creek', 'Stream', 'North Dakota', 'ND', 'Grant', 'Pretty Rock Butte SE', 46.0500047, -101.8434734, ST_GeomFromText('POINT(46.0500047 -101.8434734)', 4326), 46.1888936, -101.9159789, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028165', 'Bu Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Carpenter Lake', 48.9149064, -99.9011387, ST_GeomFromText('POINT(48.9149064 -99.9011387)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1028173', 'Buffalo Buttes', 'Range', 'North Dakota', 'ND', 'Hettinger', 'Regent', 46.40056, -102.5529405, ST_GeomFromText('POINT(46.40056 -102.5529405)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028174', 'Buffalo Coulee', 'Stream', 'North Dakota', 'ND', 'Traill', 'Climax NW', 47.6952531, -96.9075795, ST_GeomFromText('POINT(47.6952531 -96.9075795)', 4326), 47.5005372, -97.1445331, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028175', 'Buffalo Coulee', 'Valley', 'North Dakota', 'ND', 'Pierce', 'Esmond', 48.0330608, -99.8609639, ST_GeomFromText('POINT(48.0330608 -99.8609639)', 4326), 48.0600033, -99.9698537, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028176', 'Buffalo Creek', 'Stream', 'North Dakota', 'ND', 'Adams', 'Cow Butte NE', 45.9330593, -102.8634956, ST_GeomFromText('POINT(45.9330593 -102.8634956)', 4326), 46.2120852, -103.3408859, '1980-02-13', '2015-05-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028177', 'Buffalo Creek', 'Stream', 'North Dakota', 'ND', 'Stark', 'Clark Butte NW', 46.7208397, -102.2026664, ST_GeomFromText('POINT(46.7208397 -102.2026664)', 4326), 46.5566718, -102.1840522, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028178', 'Buffalo Creek', 'Stream', 'North Dakota', 'ND', 'Stutsman', 'Millarton', 46.7494274, -98.756215, ST_GeomFromText('POINT(46.7494274 -98.756215)', 4326), 46.6427562, -99.0498312, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028179', 'Buffalo Creek', 'Stream', 'North Dakota', 'ND', 'Cass', 'Casselton SE', 46.8355272, -97.1239777, ST_GeomFromText('POINT(46.8355272 -97.1239777)', 4326), 46.8744204, -97.524538, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028180', 'Buffalo Creek', 'Stream', 'North Dakota', 'ND', 'McLean', 'Washburn', 47.2955499, -101.1118159, ST_GeomFromText('POINT(47.2955499 -101.1118159)', 4326), 47.4152738, -101.0701487, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028181', 'Buffalo Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Steele NE', 46.9314305, -99.7894433, ST_GeomFromText('POINT(46.9314305 -99.7894433)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1028182', 'Buffalo Lake', 'Reservoir', 'North Dakota', 'ND', 'Pierce', 'Esmond', 48.0122568, -99.8533995, ST_GeomFromText('POINT(48.0122568 -99.8533995)', 4326), NULL, NULL, '1980-02-13', '2016-11-30', NULL, NULL, NULL),
  ('1028185', 'Buffalo Lodge Butte', 'Summit', 'North Dakota', 'ND', 'McHenry', 'Granville', 48.3263236, -100.768666, ST_GeomFromText('POINT(48.3263236 -100.768666)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1028187', 'Buffalo Springs Lake', 'Reservoir', 'North Dakota', 'ND', 'Bowman', 'Scranton', 46.1755765, -103.2234686, ST_GeomFromText('POINT(46.1755765 -103.2234686)', 4326), NULL, NULL, '1980-02-13', '2019-02-21', NULL, NULL, NULL),
  ('1028191', 'Bull Butte', 'Summit', 'North Dakota', 'ND', 'Hettinger', 'White Butte West', 46.5897769, -102.4166322, ST_GeomFromText('POINT(46.5897769 -102.4166322)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1028192', 'Bull Butte', 'Summit', 'North Dakota', 'ND', 'Williams', 'Bull Butte', 48.3369536, -104.0316224, ST_GeomFromText('POINT(48.3369536 -104.0316224)', 4326), NULL, NULL, '1980-02-13', '2025-05-03', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028193', 'Bull Hook Creek', 'Stream', 'South Dakota', 'SD', 'Perkins', 'Hettinger South', 45.8819464, -102.6393244, ST_GeomFromText('POINT(45.8819464 -102.6393244)', 4326), 45.9769444, -102.6791667, '1980-02-13', '2010-12-07', NULL, NULL, NULL),
  ('1028194', 'Bunce Lake', 'Lake', 'North Dakota', 'ND', 'Burleigh', 'Florence Lake', 47.269732, -100.3538184, ST_GeomFromText('POINT(47.269732 -100.3538184)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1028195', 'Bunker Lake', 'Lake', 'North Dakota', 'ND', 'Burleigh', 'Wing', 47.236733, -100.353069, ST_GeomFromText('POINT(47.236733 -100.353069)', 4326), NULL, NULL, '1980-02-13', '2025-02-26', NULL, NULL, NULL),
  ('1028202', 'Burkley Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Sawyer SW', 48.0897316, -101.1323793, ST_GeomFromText('POINT(48.0897316 -101.1323793)', 4326), 48.0233333, -101.2302778, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028204', 'Burnt Butte', 'Summit', 'North Dakota', 'ND', 'Burleigh', 'Burnt Butte', 46.9396789, -100.797175, ST_GeomFromText('POINT(46.9396789 -100.797175)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1028205', 'Burnt Creek', 'Stream', 'North Dakota', 'ND', 'Burleigh', 'Bismarck', 46.8294378, -100.839019, ST_GeomFromText('POINT(46.8294378 -100.839019)', 4326), 47.152215, -100.7745769, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028209', 'Bush Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Bush Lake', 48.7384108, -102.9034992, ST_GeomFromText('POINT(48.7384108 -102.9034992)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1028210', 'Busse Coulee', 'Valley', 'North Dakota', 'ND', 'Pembina', 'Hallson', 48.7738832, -97.8434292, ST_GeomFromText('POINT(48.7738832 -97.8434292)', 4326), 48.8149943, -97.9720432, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028211', 'Butler Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'International Peace Garden', 48.8914125, -100.0578936, ST_GeomFromText('POINT(48.8914125 -100.0578936)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1028213', 'Butte de Morale', 'Summit', 'North Dakota', 'ND', 'Wells', 'Wellsburg', 47.8314663, -99.8538137, ST_GeomFromText('POINT(47.8314663 -99.8538137)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028214', 'Butte Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Lords Lake', 48.8475359, -100.2160606, ST_GeomFromText('POINT(48.8475359 -100.2160606)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1028215', 'Butte Michaud', 'Summit', 'North Dakota', 'ND', 'Griggs', 'Jessie', 47.595572, -98.1421008, ST_GeomFromText('POINT(47.595572 -98.1421008)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1028216', 'Butte Saint Paul', 'Summit', 'North Dakota', 'ND', 'Bottineau', 'Lords Lake', 48.8515854, -100.1962566, ST_GeomFromText('POINT(48.8515854 -100.1962566)', 4326), NULL, NULL, '1980-02-13', '2012-10-11', NULL, NULL, NULL),
  ('1028219', 'Buttke Lake', 'Lake', 'North Dakota', 'ND', 'Sargent', 'Forman', 46.0006335, -97.6822709, ST_GeomFromText('POINT(46.0006335 -97.6822709)', 4326), NULL, NULL, '1980-02-13', '2023-05-26', NULL, NULL, NULL),
  ('1028227', 'Byrnes Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Saint John', 48.9266655, -99.7389913, ST_GeomFromText('POINT(48.9266655 -99.7389913)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1028231', 'Cain Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Carpenter Lake', 48.915593, -99.9159181, ST_GeomFromText('POINT(48.915593 -99.9159181)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1028247', 'Camel Butte', 'Summit', 'North Dakota', 'ND', 'Bowman', 'Camel Butte', 46.0027803, -103.7199219, ST_GeomFromText('POINT(46.0027803 -103.7199219)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1028248', 'Camel Buttes', 'Range', 'North Dakota', 'ND', 'Hettinger', 'White Butte East', 46.5597268, -102.3007221, ST_GeomFromText('POINT(46.5597268 -102.3007221)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028249', 'Camel Slough', 'Lake', 'North Dakota', 'ND', 'Burleigh', 'Wing', 47.2037006, -100.3241539, ST_GeomFromText('POINT(47.2037006 -100.3241539)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1028250', 'Camels Butte', 'Summit', 'North Dakota', 'ND', 'Dunn', 'Dickinson North', 46.9982852, -102.8225255, ST_GeomFromText('POINT(46.9982852 -102.8225255)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028251', 'Camels Hump Butte', 'Summit', 'North Dakota', 'ND', 'Golden Valley', 'Sentinel Butte', 46.9524886, -103.7982273, ST_GeomFromText('POINT(46.9524886 -103.7982273)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL),
  ('1028254', 'Camp Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Camp Creek East', 47.9403007, -103.6001974, ST_GeomFromText('POINT(47.9403007 -103.6001974)', 4326), 47.9711342, -103.7074226, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028255', 'Camp Creek', 'Stream', 'North Dakota', 'ND', 'Williams', 'Williston East', 48.2333569, -103.5963062, ST_GeomFromText('POINT(48.2333569 -103.5963062)', 4326), 48.2905797, -103.7193662, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028260', 'Camp Lake', 'Lake', 'North Dakota', 'ND', 'McLean', 'Kongsberg', 47.770847, -100.85094, ST_GeomFromText('POINT(47.770847 -100.85094)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1028263', 'Campbell Butte', 'Summit', 'North Dakota', 'ND', 'Hettinger', 'White Butte East', 46.5932569, -102.3301792, ST_GeomFromText('POINT(46.5932569 -102.3301792)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1028269', 'Canfield Lake', 'Lake', 'North Dakota', 'ND', 'Burleigh', 'Canfield Lake', 47.1863152, -100.458652, ST_GeomFromText('POINT(47.1863152 -100.458652)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1028272', 'Cannon Hill', 'Summit', 'North Dakota', 'ND', 'Grant', 'Heart Butte NW', 46.6303429, -101.9125271, ST_GeomFromText('POINT(46.6303429 -101.9125271)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1028273', 'Cannon Hill', 'Summit', 'North Dakota', 'ND', 'Dickey', 'Savo NW', 45.9644167, -98.3756569, ST_GeomFromText('POINT(45.9644167 -98.3756569)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1028274', 'Cantapeta Creek', 'Stream', 'North Dakota', 'ND', 'Morton', 'Cannon Ball NW', 46.4258278, -100.6306791, ST_GeomFromText('POINT(46.4258278 -100.6306791)', 4326), 46.4427778, -100.6761111, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028275', 'Cap Butte', 'Summit', 'North Dakota', 'ND', 'Morton', 'Dengate', 46.7815866, -101.7079925, ST_GeomFromText('POINT(46.7815866 -101.7079925)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028277', 'Carl Feldner Coulee', 'Valley', 'North Dakota', 'ND', 'Renville', 'Hartland', 48.4730741, -101.7729394, ST_GeomFromText('POINT(48.4730741 -101.7729394)', 4326), 48.5130756, -101.8204394, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028279', 'Carlisle Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Dunseith', 48.8732976, -100.0090776, ST_GeomFromText('POINT(48.8732976 -100.0090776)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1028282', 'Carpenter Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Carpenter Lake', 48.9609309, -99.9768947, ST_GeomFromText('POINT(48.9609309 -99.9768947)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1028283', 'Carpenter Lake', 'Lake', 'North Dakota', 'ND', 'Ward', 'Plaza NW', 48.2412814, -101.9109102, ST_GeomFromText('POINT(48.2412814 -101.9109102)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1028286', 'Carrie Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Grand View', 48.6395348, -102.8002297, ST_GeomFromText('POINT(48.6395348 -102.8002297)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1028291', 'Cart Creek', 'Stream', 'North Dakota', 'ND', 'Pembina', 'Crystal SE', 48.5319357, -97.5839742, ST_GeomFromText('POINT(48.5319357 -97.5839742)', 4326), 48.670272, -98.015379, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028292', 'Carvers Lake', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Simcoe', 48.2217727, -100.8201967, ST_GeomFromText('POINT(48.2217727 -100.8201967)', 4326), NULL, NULL, '1980-02-13', '2019-04-08', NULL, NULL, NULL),
  ('1028295', 'Cassidy Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Carpenter Lake', 48.875945, -99.905859, ST_GeomFromText('POINT(48.875945 -99.905859)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1028296', 'Cassidy Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Boundary Lake', 48.904576, -100.2493529, ST_GeomFromText('POINT(48.904576 -100.2493529)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1028297', 'Castle Butte', 'Summit', 'North Dakota', 'ND', 'Morton', 'Cannon Ball NW', 46.493813, -100.6497431, ST_GeomFromText('POINT(46.493813 -100.6497431)', 4326), NULL, NULL, '1980-02-13', '2025-05-03', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028298', 'Castle Rock', 'Pillar', 'North Dakota', 'ND', 'Hettinger', 'Mott South', 46.3102806, -102.3565485, ST_GeomFromText('POINT(46.3102806 -102.3565485)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028301', 'Cattail Creek', 'Stream', 'North Dakota', 'ND', 'Emmons', 'Fort Yates SE', 46.1036068, -100.5834595, ST_GeomFromText('POINT(46.1036068 -100.5834595)', 4326), 46.0511042, -100.3162328, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028304', 'Cavanaugh Lake', 'Lake', 'North Dakota', 'ND', 'Ramsey', 'Webster', 48.2571836, -98.8901395, ST_GeomFromText('POINT(48.2571836 -98.8901395)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1028305', 'Cave Coulee', 'Valley', 'North Dakota', 'ND', 'Burleigh', 'Burnt Butte', 46.9841582, -100.8715224, ST_GeomFromText('POINT(46.9841582 -100.8715224)', 4326), 46.9752778, -100.8425, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028307', 'Cedar Butte', 'Summit', 'North Dakota', 'ND', 'Grant', 'Lookout Butte', 46.117515, -101.3951253, ST_GeomFromText('POINT(46.117515 -101.3951253)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1028308', 'Cedar Butte', 'Summit', 'North Dakota', 'ND', 'Adams', 'Cedar Butte', 46.1183912, -102.1312881, ST_GeomFromText('POINT(46.1183912 -102.1312881)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL),
  ('1028311', 'Cedar Coulee', 'Valley', 'North Dakota', 'ND', 'Dunn', 'North Killdeer Mountain', 47.5841817, -102.9193554, ST_GeomFromText('POINT(47.5841817 -102.9193554)', 4326), 47.5605556, -102.9152778, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028312', 'Cedar Coulee', 'Valley', 'North Dakota', 'ND', 'Williams', 'Cussicks Spring', 48.1480775, -103.1815751, ST_GeomFromText('POINT(48.1480775 -103.1815751)', 4326), 48.1675, -103.2036111, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028313', 'Cedar Creek', 'Stream', 'North Dakota', 'ND', 'Williams', 'Lake Jessie', 48.0491912, -103.4121365, ST_GeomFromText('POINT(48.0491912 -103.4121365)', 4326), 48.1094444, -103.4202778, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028315', 'Cedar Hills', 'Ridge', 'North Dakota', 'ND', 'Bowman', 'Cedar Hills', 46.2058385, -103.826314, ST_GeomFromText('POINT(46.2058385 -103.826314)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028316', 'Cedar Lake', 'Reservoir', 'North Dakota', 'ND', 'Slope', 'Cedar Lake', 46.2897673, -102.9702006, ST_GeomFromText('POINT(46.2897673 -102.9702006)', 4326), NULL, NULL, '1980-02-13', '2019-02-22', NULL, NULL, NULL),
  ('1028317', 'Cedar Ridge', 'Ridge', 'North Dakota', 'ND', 'Bowman', 'Cedar Ridge', 46.0500533, -103.9677007, ST_GeomFromText('POINT(46.0500533 -103.9677007)', 4326), NULL, NULL, '1980-02-13', '2017-01-31', NULL, NULL, NULL),
  ('1028333', 'Chain Lake', 'Lake', 'North Dakota', 'ND', 'Ramsey', 'Cando SE', 48.3381552, -99.0589286, ST_GeomFromText('POINT(48.3381552 -99.0589286)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1028336', 'Chanta Peta Creek', 'Stream', 'North Dakota', 'ND', 'Adams', 'Ehler Lake', 46.2266722, -102.6532126, ST_GeomFromText('POINT(46.2266722 -102.6532126)', 4326), 46.4819546, -103.0543354, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028337', 'Chanta Peta Creek', 'Stream', 'North Dakota', 'ND', 'Morton', 'Burgess', 46.4233335, -101.1229161, ST_GeomFromText('POINT(46.4233335 -101.1229161)', 4326), 46.6313869, -101.1337505, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028338', 'Charging Creek', 'Stream', 'North Dakota', 'ND', 'McLean', 'Raub NW', 47.6958407, -102.1943388, ST_GeomFromText('POINT(47.6958407 -102.1943388)', 4326), 47.6555556, -102.1311111, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028339', 'Charging Eagle Bay', 'Bay', 'North Dakota', 'ND', 'Dunn', 'Saddle Butte SW', 47.5833416, -102.3976795, ST_GeomFromText('POINT(47.5833416 -102.3976795)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028342', 'Charles Lake', 'Lake', 'North Dakota', 'ND', 'Hettinger', 'Mott NW', 46.3903214, -102.3980667, ST_GeomFromText('POINT(46.3903214 -102.3980667)', 4326), NULL, NULL, '1980-02-13', '2019-02-21', NULL, NULL, NULL),
  ('1028345', 'Chase Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Lake Louise', 47.0084185, -99.442034, ST_GeomFromText('POINT(47.0084185 -99.442034)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1028351', 'Cherry Lake', 'Lake', 'North Dakota', 'ND', 'McLean', 'Turtle Lake', 47.5260634, -100.947563, ST_GeomFromText('POINT(47.5260634 -100.947563)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028352', 'Cherry Lake', 'Lake', 'North Dakota', 'ND', 'Eddy', 'Lake Coe', 47.6385931, -98.6771359, ST_GeomFromText('POINT(47.6385931 -98.6771359)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1028353', 'Cherry Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Horsehead Lake', 47.0637666, -99.8707025, ST_GeomFromText('POINT(47.0637666 -99.8707025)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1028354', 'Cherry Lake', 'Lake', 'North Dakota', 'ND', 'Sheridan', 'Pelican Lake', 47.6217406, -100.671182, ST_GeomFromText('POINT(47.6217406 -100.671182)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1028355', 'Chicago Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Lake Louise', 47.0701132, -99.4417178, ST_GeomFromText('POINT(47.0701132 -99.4417178)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1028356', 'Chiles Slough', 'Lake', 'North Dakota', 'ND', 'Burke', 'Thompson Lake', 48.6888925, -102.4741529, ST_GeomFromText('POINT(48.6888925 -102.4741529)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1028357', 'Chilton Creek', 'Stream', 'North Dakota', 'ND', 'Hettinger', 'Mott NW', 46.3791701, -102.4137731, ST_GeomFromText('POINT(46.3791701 -102.4137731)', 4326), 46.2833366, -102.5046032, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028358', 'Chimney Butte', 'Summit', 'North Dakota', 'ND', 'Dunn', 'Dunn Center NW', 47.4809296, -102.6499629, ST_GeomFromText('POINT(47.4809296 -102.6499629)', 4326), NULL, NULL, '1980-02-13', '2025-05-03', NULL, NULL, NULL),
  ('1028359', 'Chimney Butte Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Dunn Center NW', 47.482234, -102.6785188, ST_GeomFromText('POINT(47.482234 -102.6785188)', 4326), 47.4850104, -102.5832387, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028360', 'Chinaman Coulee', 'Valley', 'North Dakota', 'ND', 'Williams', 'Williston East', 48.1869682, -103.6043625, ST_GeomFromText('POINT(48.1869682 -103.6043625)', 4326), 48.2497458, -103.7238107, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028361', 'Chokecherry Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Medina SW', 46.8384274, -99.4447503, ST_GeomFromText('POINT(46.8384274 -99.4447503)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028362', 'Chris Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Chris Creek', 48.0961337, -103.2532431, ST_GeomFromText('POINT(48.0961337 -103.2532431)', 4326), 48.1041667, -103.3516667, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028364', 'Christensen Slough', 'Lake', 'North Dakota', 'ND', 'Burke', 'Westby Lake', 48.5946596, -102.2505851, ST_GeomFromText('POINT(48.5946596 -102.2505851)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1028369', 'Chase Lake State Game Management Area', 'Lake', 'North Dakota', 'ND', 'Williams', 'Brush Mountain', 48.3877793, -104.010944, ST_GeomFromText('POINT(48.3877793 -104.010944)', 4326), NULL, NULL, '1980-02-13', '2019-02-27', NULL, NULL, NULL),
  ('1028373', 'Church Hill', 'Summit', 'North Dakota', 'ND', 'Ward', 'Donnybrook', 48.5077984, -101.8921063, ST_GeomFromText('POINT(48.5077984 -101.8921063)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1028375', 'Circle Buttes', 'Range', 'North Dakota', 'ND', 'Grant', 'Carson', 46.3791134, -101.541608, ST_GeomFromText('POINT(46.3791134 -101.541608)', 4326), NULL, NULL, '1980-02-13', '2014-05-14', NULL, NULL, NULL),
  ('1028376', 'Lake Claire', 'Lake', 'North Dakota', 'ND', 'Eddy', 'Barlow', 47.6137199, -99.1605984, ST_GeomFromText('POINT(47.6137199 -99.1605984)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1028377', 'Clark Butte', 'Summit', 'North Dakota', 'ND', 'Grant', 'Clark Butte', 46.539558, -102.0168972, ST_GeomFromText('POINT(46.539558 -102.0168972)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1028380', 'Clay Butte', 'Summit', 'North Dakota', 'ND', 'Dunn', 'Dunn Center', 47.2727797, -102.52774, ST_GeomFromText('POINT(47.2727797 -102.52774)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1028384', 'Clear Creek', 'Stream', 'North Dakota', 'ND', 'Emmons', 'Linton', 46.2505445, -100.1737238, ST_GeomFromText('POINT(46.2505445 -100.1737238)', 4326), 46.3738757, -100.0764985, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028385', 'Clear Lake', 'Lake', 'North Dakota', 'ND', 'McIntosh', 'Danzig', 46.2315569, -99.4273121, ST_GeomFromText('POINT(46.2315569 -99.4273121)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028386', 'Clear Lake', 'Lake', 'North Dakota', 'ND', 'Burleigh', 'Clear Lake', 46.9255162, -100.185362, ST_GeomFromText('POINT(46.9255162 -100.185362)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1028387', 'Clear Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Tuttle SW', 47.1149753, -99.9580647, ST_GeomFromText('POINT(47.1149753 -99.9580647)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1028388', 'Clear Lake', 'Lake', 'North Dakota', 'ND', 'Pierce', 'Martin', 47.8625011, -100.1054091, ST_GeomFromText('POINT(47.8625011 -100.1054091)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028389', 'Clear Lake', 'Lake', 'North Dakota', 'ND', 'Nelson', 'Brocket', 48.1286602, -98.3044463, ST_GeomFromText('POINT(48.1286602 -98.3044463)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1028390', 'Clearwater Lake', 'Lake', 'North Dakota', 'ND', 'Mountrail', 'Clearwater Lake', 48.4113894, -102.2851025, ST_GeomFromText('POINT(48.4113894 -102.2851025)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1028393', 'Cleveland Park', 'Flat', 'North Dakota', 'ND', 'Walsh', 'Dahlen', 48.2197175, -97.9639848, ST_GeomFromText('POINT(48.2197175 -97.9639848)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028400', 'Clouds Lake', 'Lake', 'North Dakota', 'ND', 'Sargent', 'Cayuga', 46.0020724, -97.4415985, ST_GeomFromText('POINT(46.0020724 -97.4415985)', 4326), NULL, NULL, '1980-02-13', '2023-05-26', NULL, NULL, NULL),
  ('1028403', 'Coal Bank Creek', 'Stream', 'North Dakota', 'ND', 'Hettinger', 'Havelock', 46.4530612, -102.641553, ST_GeomFromText('POINT(46.4530612 -102.641553)', 4326), 46.4447317, -102.9801659, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028404', 'Coal Butte', 'Summit', 'North Dakota', 'ND', 'Emmons', 'Cannon Ball', 46.4591607, -100.5178968, ST_GeomFromText('POINT(46.4591607 -100.5178968)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1028405', 'Coal Butte', 'Summit', 'North Dakota', 'ND', 'Burleigh', 'Burnt Butte', 46.9688805, -100.8492993, ST_GeomFromText('POINT(46.9688805 -100.8492993)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028406', 'Coal Creek', 'Stream', 'North Dakota', 'ND', 'Grant', 'Lake Tschida West', 46.6161175, -101.9429327, ST_GeomFromText('POINT(46.6161175 -101.9429327)', 4326), 46.5294504, -102.0637692, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028407', 'Coal Creek', 'Stream', 'North Dakota', 'ND', 'Mercer', 'Hazen East', 47.3280571, -101.5176626, ST_GeomFromText('POINT(47.3280571 -101.5176626)', 4326), 47.3952801, -101.6173882, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028408', 'Coal Hill', 'Summit', 'North Dakota', 'ND', 'Morton', 'Dengate', 46.7854127, -101.7365742, ST_GeomFromText('POINT(46.7854127 -101.7365742)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL),
  ('1028409', 'Coal Lake', 'Lake', 'North Dakota', 'ND', 'McLean', 'Washburn NE', 47.442935, -101.0761752, ST_GeomFromText('POINT(47.442935 -101.0761752)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1028410', 'Coal Lake Coulee', 'Stream', 'North Dakota', 'ND', 'McLean', 'Washburn', 47.2974945, -101.1312612, ST_GeomFromText('POINT(47.2974945 -101.1312612)', 4326), 47.3561065, -101.1307061, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028411', 'Coal Mine Lake', 'Reservoir', 'North Dakota', 'ND', 'Sheridan', 'Sheyenne Lake', 47.6841776, -100.1673959, ST_GeomFromText('POINT(47.6841776 -100.1673959)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1028413', 'Lake Coe', 'Lake', 'North Dakota', 'ND', 'Eddy', 'Lake Coe', 47.6956841, -98.6970568, ST_GeomFromText('POINT(47.6956841 -98.6970568)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1028414', 'Coffin Buttes', 'Range', 'North Dakota', 'ND', 'Grant', 'Coffin Buttes', 46.2019492, -101.9187569, ST_GeomFromText('POINT(46.2019492 -101.9187569)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028416', 'Colby Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Woodworth', 47.210617, -99.2635135, ST_GeomFromText('POINT(47.210617 -99.2635135)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1028417', 'Cold Turkey Creek', 'Stream', 'North Dakota', 'ND', 'Bowman', 'Bowman SE', 46.0447262, -103.3151801, ST_GeomFromText('POINT(46.0447262 -103.3151801)', 4326), 46.1600053, -103.6090827, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028418', 'Cole Creek', 'Stream', 'North Dakota', 'ND', 'Grand Forks', 'Bygland', 47.8477552, -96.9973007, ST_GeomFromText('POINT(47.8477552 -96.9973007)', 4326), 47.70665, -97.3198092, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028428', 'Colville Hill', 'Summit', 'North Dakota', 'ND', 'Grant', 'Parks Hills', 46.0462357, -101.7351365, ST_GeomFromText('POINT(46.0462357 -101.7351365)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL),
  ('1028429', 'Colvin Creek', 'Stream', 'North Dakota', 'ND', 'Eddy', 'Hamar', 47.7752756, -98.5656584, ST_GeomFromText('POINT(47.7752756 -98.5656584)', 4326), 47.6772194, -98.6101026, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028440', 'Connia Slough', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Balfour NW', 47.9748127, -100.63997, ST_GeomFromText('POINT(47.9748127 -100.63997)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1028445', 'Cool Lakes', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Lake Upsilon', 48.9429957, -99.8304288, ST_GeomFromText('POINT(48.9429957 -99.8304288)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1028446', 'Coon Creek', 'Stream', 'North Dakota', 'ND', 'Hettinger', 'New England', 46.5105633, -102.8173881, ST_GeomFromText('POINT(46.5105633 -102.8173881)', 4326), 46.4627867, -102.91711, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028447', 'Coon Lake', 'Lake', 'North Dakota', 'ND', 'Nelson', 'Pekin NW', 47.9738093, -98.379857, ST_GeomFromText('POINT(47.9738093 -98.379857)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1028448', 'Coon Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Carpenter Lake', 48.9970497, -99.9087747, ST_GeomFromText('POINT(48.9970497 -99.9087747)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1028454', 'Copperdahl Hill', 'Summit', 'North Dakota', 'ND', 'McHenry', 'Rangeley NW', 48.2291354, -100.4439555, ST_GeomFromText('POINT(48.2291354 -100.4439555)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1028458', 'Corner Butte', 'Summit', 'North Dakota', 'ND', 'Morton', 'Fort Rice', 46.5470259, -100.621183, ST_GeomFromText('POINT(46.5470259 -100.621183)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028459', 'Corral Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Dunn Center NW', 47.475012, -102.6890745, ST_GeomFromText('POINT(47.475012 -102.6890745)', 4326), 47.5439028, -102.8599103, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028463', 'Cottontail Creek', 'Stream', 'North Dakota', 'ND', 'Stutsman', 'Millarton', 46.7016476, -98.8312162, ST_GeomFromText('POINT(46.7016476 -98.8312162)', 4326), 46.6635904, -98.9062177, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028465', 'Cottonwood Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Dodge', 47.3211199, -102.2360096, ST_GeomFromText('POINT(47.3211199 -102.2360096)', 4326), 47.2891771, -102.3585129, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028466', 'Cottonwood Lake', 'Lake', 'North Dakota', 'ND', 'Burleigh', 'Bismarck', 46.7788452, -100.7855712, ST_GeomFromText('POINT(46.7788452 -100.7855712)', 4326), NULL, NULL, '1980-02-13', '2013-09-04', NULL, NULL, NULL),
  ('1028467', 'Cottonwood Lake', 'Lake', 'North Dakota', 'ND', 'Burleigh', 'Driscoll', 46.8673867, -100.1747272, ST_GeomFromText('POINT(46.8673867 -100.1747272)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1028468', 'Cottonwood Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Goldwin SE', 47.0833803, -99.0414026, ST_GeomFromText('POINT(47.0833803 -99.0414026)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1028469', 'Cottonwood Lake', 'Lake', 'North Dakota', 'ND', 'McLean', 'Peterson Lake', 47.6152704, -100.827459, ST_GeomFromText('POINT(47.6152704 -100.827459)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1028470', 'Cottonwood Lake', 'Lake', 'North Dakota', 'ND', 'Mountrail', 'Cottonwood Lake', 48.4345296, -102.589927, ST_GeomFromText('POINT(48.4345296 -102.589927)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1028471', 'Cottonwood Lake', 'Lake', 'North Dakota', 'ND', 'Williams', 'Alamo', 48.5867462, -103.4434538, ST_GeomFromText('POINT(48.5867462 -103.4434538)', 4326), NULL, NULL, '1980-02-13', '2020-02-20', NULL, NULL, NULL),
  ('1028472', 'Cottonwood Lake', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Balfour NW', 47.8777235, -100.6728348, ST_GeomFromText('POINT(47.8777235 -100.6728348)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028473', 'Cottonwood Lake', 'Lake', 'North Dakota', 'ND', 'Wells', 'Fessenden SW', 47.5109385, -99.6272304, ST_GeomFromText('POINT(47.5109385 -99.6272304)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1028516', 'Court Lake', 'Lake', 'North Dakota', 'ND', 'Benson', 'Fort Totten', 47.993774, -98.9154003, ST_GeomFromText('POINT(47.993774 -98.9154003)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1028519', 'Lake Couthard', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Lake Klingenberg', 48.9561128, -100.4449513, ST_GeomFromText('POINT(48.9561128 -100.4449513)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1028520', 'Cow Butte', 'Summit', 'North Dakota', 'ND', 'Adams', 'Cow Butte', 45.9879275, -102.9450059, ST_GeomFromText('POINT(45.9879275 -102.9450059)', 4326), NULL, NULL, '1980-02-13', '2012-10-11', NULL, NULL, NULL),
  ('1028521', 'Cow Creek', 'Stream', 'North Dakota', 'ND', 'Williams', 'Blacktail Lake SE', 48.2983574, -103.5846389, ST_GeomFromText('POINT(48.2983574 -103.5846389)', 4326), 48.3050238, -103.9524308, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028523', 'Coyote Creek', 'Stream', 'North Dakota', 'ND', 'Bowman', 'Cedar Hills', 46.2422278, -103.8732601, ST_GeomFromText('POINT(46.2422278 -103.8732601)', 4326), 46.1502829, -103.6332506, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028524', 'Coyote Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Marshall', 47.1447312, -102.3029549, ST_GeomFromText('POINT(47.1447312 -102.3029549)', 4326), 47.2763995, -102.3637908, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028525', 'Coyote Creek', 'Stream', 'North Dakota', 'ND', 'Mercer', 'Medicine Butte', 47.2025081, -101.9207239, ST_GeomFromText('POINT(47.2025081 -101.9207239)', 4326), 47.0022292, -101.9212715, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028526', 'Crab Tree Lakes', 'Lake', 'North Dakota', 'ND', 'Dickey', 'Merricourt SW', 46.016367, -98.8821679, ST_GeomFromText('POINT(46.016367 -98.8821679)', 4326), NULL, NULL, '1980-02-13', '2019-02-27', NULL, NULL, NULL),
  ('1028527', 'Cranberry Lake', 'Lake', 'North Dakota', 'ND', 'Benson', 'Fillmore', 48.1422252, -99.7681652, ST_GeomFromText('POINT(48.1422252 -99.7681652)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028530', 'Crazy Man Coulee', 'Valley', 'North Dakota', 'ND', 'Williams', 'Williston East', 48.1266909, -103.5626951, ST_GeomFromText('POINT(48.1266909 -103.5626951)', 4326), 48.1194689, -103.5107491, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028531', 'Creel Bay', 'Bay', 'North Dakota', 'ND', 'Ramsey', 'Camp Grafton', 48.0791669, -98.9365117, ST_GeomFromText('POINT(48.0791669 -98.9365117)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028534', 'Crooked Creek', 'Stream', 'North Dakota', 'ND', 'Morton', 'New Salem', 46.7769454, -101.4962551, ST_GeomFromText('POINT(46.7769454 -101.4962551)', 4326), 46.7983333, -101.4080556, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028535', 'Crooked Creek', 'Stream', 'North Dakota', 'ND', 'Bowman', 'Tepee Buttes', 45.9483357, -103.3190694, ST_GeomFromText('POINT(45.9483357 -103.3190694)', 4326), 45.9230745, -103.642084, '1980-02-13', '2015-05-28', NULL, NULL, NULL),
  ('1028536', 'Crooked Creek', 'Stream', 'North Dakota', 'ND', 'Grant', 'Pitt Creek', 46.0261155, -101.5354095, ST_GeomFromText('POINT(46.0261155 -101.5354095)', 4326), 46.1411169, -101.6837476, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028537', 'Crooked Creek', 'Stream', 'North Dakota', 'ND', 'Sargent', 'Cayuga', 46.1144061, -97.387315, ST_GeomFromText('POINT(46.1144061 -97.387315)', 4326), 46.1266303, -97.6189854, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028538', 'Crooked Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Ziner Butte', 47.1916787, -102.5862953, ST_GeomFromText('POINT(47.1916787 -102.5862953)', 4326), 47.1961265, -103.1151839, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028539', 'Crooked Lake', 'Lake', 'North Dakota', 'ND', 'McLean', 'Coleharbor NE', 47.6270543, -101.029552, ST_GeomFromText('POINT(47.6270543 -101.029552)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1028540', 'Crooked Lake', 'Lake', 'North Dakota', 'ND', 'McLean', 'Horseshoe Valley', 47.6652765, -100.8869181, ST_GeomFromText('POINT(47.6652765 -100.8869181)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1028548', 'Crow Fly High Hill', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Trenton', 48.0117455, -103.7843657, ST_GeomFromText('POINT(48.0117455 -103.7843657)', 4326), NULL, NULL, '1980-02-13', '2012-10-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028549', 'Crow Hill', 'Summit', 'North Dakota', 'ND', 'Benson', 'Crow Hill', 47.9516331, -99.0522451, ST_GeomFromText('POINT(47.9516331 -99.0522451)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1028550', 'Crow Lake', 'Lake', 'North Dakota', 'ND', 'Dickey', 'Merricourt SW', 46.0547551, -98.9217153, ST_GeomFromText('POINT(46.0547551 -98.9217153)', 4326), NULL, NULL, '1980-02-13', '2019-02-27', NULL, NULL, NULL),
  ('1028551', 'Crow Lake', 'Lake', 'North Dakota', 'ND', 'Barnes', 'Pillsbury SW', 47.1019717, -97.9489296, ST_GeomFromText('POINT(47.1019717 -97.9489296)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1028552', 'Crow Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Lake Upsilon', 48.9443013, -99.8489345, ST_GeomFromText('POINT(48.9443013 -99.8489345)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1028554', 'Crown Butte', 'Summit', 'North Dakota', 'ND', 'Morton', 'Crown Butte', 46.9030171, -101.0898829, ST_GeomFromText('POINT(46.9030171 -101.0898829)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1028555', 'Crown Butte Creek', 'Stream', 'North Dakota', 'ND', 'Morton', 'Crown Butte Lake', 46.8222165, -101.0268024, ST_GeomFromText('POINT(46.8222165 -101.0268024)', 4326), 46.9211049, -101.1068057, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028556', 'Crown Butte Lake', 'Reservoir', 'North Dakota', 'ND', 'Morton', 'Crown Butte Lake', 46.8668221, -101.0909472, ST_GeomFromText('POINT(46.8668221 -101.0909472)', 4326), NULL, NULL, '1980-02-13', '2019-02-21', NULL, NULL, NULL),
  ('1028560', 'Crystal Lake', 'Lake', 'North Dakota', 'ND', 'Wells', 'Manfred SW', 47.5185212, -99.9667969, ST_GeomFromText('POINT(47.5185212 -99.9667969)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1028562', 'Crystal Springs', 'Spring', 'North Dakota', 'ND', 'Kidder', 'Crystal Springs', 46.8799856, -99.457332, ST_GeomFromText('POINT(46.8799856 -99.457332)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028568', 'Curlew Buttes', 'Summit', 'North Dakota', 'ND', 'Morton', 'North Almont', 46.7644421, -101.6143727, ST_GeomFromText('POINT(46.7644421 -101.6143727)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028571', 'Curlew Valley', 'Valley', 'North Dakota', 'ND', 'Grant', 'Otter Creek West', 46.6083352, -101.3862561, ST_GeomFromText('POINT(46.6083352 -101.3862561)', 4326), 46.8233376, -101.7348736, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028573', 'Cussicks Spring', 'Spring', 'North Dakota', 'ND', 'Williams', 'Cussicks Spring', 48.1806845, -103.2247526, ST_GeomFromText('POINT(48.1806845 -103.2247526)', 4326), NULL, NULL, '1980-02-13', '2011-04-19', NULL, NULL, NULL),
  ('1028574', 'Custer Flats', 'Flat', 'North Dakota', 'ND', 'Morton', 'Mandan', 46.7702724, -100.9631888, ST_GeomFromText('POINT(46.7702724 -100.9631888)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028575', 'Custer Lookout', 'Summit', 'North Dakota', 'ND', 'Stark', 'Antelope', 46.8491358, -102.1714955, ST_GeomFromText('POINT(46.8491358 -102.1714955)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1028579', 'Cut Bank Creek', 'Stream', 'North Dakota', 'ND', 'Morton', 'New Salem', 46.8330554, -101.4551439, ST_GeomFromText('POINT(46.8330554 -101.4551439)', 4326), 46.8327778, -101.4130556, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028580', 'Cut Bank Creek', 'Stream', 'North Dakota', 'ND', 'McHenry', 'Newburg SE', 48.5997315, -100.7865302, ST_GeomFromText('POINT(48.5997315 -100.7865302)', 4326), 48.3791732, -100.7695827, '1980-02-13', NULL, 'Official', 'Board Decision', '1977-01-01'),
  ('1028581', 'Cut Bank Creek', 'Stream', 'North Dakota', 'ND', 'Bottineau', 'Newburg SE', 48.5819578, -100.8743125, ST_GeomFromText('POINT(48.5819578 -100.8743125)', 4326), 48.9944611, -101.7176615, '1980-02-13', NULL, 'Official', 'Board Decision', '1976-01-01'),
  ('1028583', 'Cypress Creek', 'Stream', 'Manitoba', 'MA', 'Manitoba', NULL, 49.2066713, -99.0795409, ST_GeomFromText('POINT(49.2066713 -99.0795409)', 4326), 48.8911174, -98.8890169, '1980-02-13', '2010-12-07', 'Official', 'Board Decision', '1973-01-01'),
  ('1028584', 'Dahl Slough', 'Lake', 'North Dakota', 'ND', 'Nelson', 'McVille', 47.8192494, -98.1734471, ST_GeomFromText('POINT(47.8192494 -98.1734471)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1028606', 'Lake Dana', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Lake Klingenberg', 48.9021562, -100.4091475, ST_GeomFromText('POINT(48.9021562 -100.4091475)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028612', 'Lake Darling', 'Reservoir', 'North Dakota', 'ND', 'Renville', 'Carpio NE', 48.464334, -101.5840567, ST_GeomFromText('POINT(48.464334 -101.5840567)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1028618', 'Davis Buttes', 'Range', 'North Dakota', 'ND', 'Stark', 'Davis Buttes', 46.9152865, -102.7312922, ST_GeomFromText('POINT(46.9152865 -102.7312922)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028619', 'Davis Lake', 'Lake', 'North Dakota', 'ND', 'Pierce', 'Balta', 48.1503893, -100.1025566, ST_GeomFromText('POINT(48.1503893 -100.1025566)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1028620', 'Davis Slough', 'Lake', 'North Dakota', 'ND', 'Ramsey', 'Starkweather', 48.4124111, -98.9557975, ST_GeomFromText('POINT(48.4124111 -98.9557975)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1028622', 'Dayton Creek', 'Stream', 'North Dakota', 'ND', 'Hettinger', 'Mott NW', 46.3980593, -102.4707184, ST_GeomFromText('POINT(46.3980593 -102.4707184)', 4326), 46.2836152, -102.562103, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028625', 'De Trobriand Bay', 'Bay', 'North Dakota', 'ND', 'McLean', 'Garrison Dam North', 47.5991667, -101.4076608, ST_GeomFromText('POINT(47.5991667 -101.4076608)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028630', 'Dead Buffalo Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Steele NE', 46.9029265, -99.7714178, ST_GeomFromText('POINT(46.9029265 -99.7714178)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1028631', 'Dead Colt Creek', 'Stream', 'North Dakota', 'ND', 'Ransom', 'Lisbon NE', 46.3791324, -97.6112065, ST_GeomFromText('POINT(46.3791324 -97.6112065)', 4326), 46.2827426, -97.7909322, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028632', 'Dead Dog Slough', 'Lake', 'North Dakota', 'ND', 'Burke', 'Lostwood Lakes', 48.6039356, -102.4390727, ST_GeomFromText('POINT(48.6039356 -102.4390727)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1028633', 'Dead Heart Slough', 'Lake', 'North Dakota', 'ND', 'Morton', 'Mandan', 46.8188786, -100.9365763, ST_GeomFromText('POINT(46.8188786 -100.9365763)', 4326), NULL, NULL, '1980-02-13', '2019-02-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028634', 'Dead Horse Creek', 'Stream', 'North Dakota', 'ND', 'Hettinger', 'Lefor SW', 46.5044511, -102.7465542, ST_GeomFromText('POINT(46.5044511 -102.7465542)', 4326), 46.600007, -102.7810031, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028636', 'Decker Creek', 'Stream', 'South Dakota', 'SD', 'Campbell', 'Pollock', 45.9133274, -100.2751229, ST_GeomFromText('POINT(45.9133274 -100.2751229)', 4326), 46.0413811, -100.2348421, '1980-02-13', '2010-12-07', NULL, NULL, NULL),
  ('1028638', 'Deep Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Marshall NW', 47.1422322, -102.478239, ST_GeomFromText('POINT(47.1422322 -102.478239)', 4326), 47.0794566, -102.7893503, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028639', 'Deep Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Metigoshe Lake', 48.9200361, -100.2808573, ST_GeomFromText('POINT(48.9200361 -100.2808573)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1028640', 'Deep River', 'Stream', 'North Dakota', 'ND', 'Bottineau', 'Deep', 48.6597334, -100.7868105, ST_GeomFromText('POINT(48.6597334 -100.7868105)', 4326), 48.5819578, -100.8743125, '1980-02-13', NULL, 'Official', 'Board Decision', '1976-01-01'),
  ('1028643', 'Deepwater Creek', 'Stream', 'North Dakota', 'ND', 'McLean', 'Raub NW', 47.7266742, -102.1593372, ST_GeomFromText('POINT(47.7266742 -102.1593372)', 4326), 47.91001, -101.929333, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028644', 'Deepwater Creek Bay', 'Bay', 'North Dakota', 'ND', 'McLean', 'Raub NW', 47.7241744, -102.1923938, ST_GeomFromText('POINT(47.7241744 -102.1923938)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028647', 'Deer Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Goldwin SE', 47.0541852, -99.1097302, ST_GeomFromText('POINT(47.0541852 -99.1097302)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1028648', 'Deer Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Lake Williams', 47.1519572, -99.5966892, ST_GeomFromText('POINT(47.1519572 -99.5966892)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1028649', 'Deer Lake', 'Lake', 'North Dakota', 'ND', 'Nelson', 'Lake Pickard', 47.9952332, -97.9542056, ST_GeomFromText('POINT(47.9952332 -97.9542056)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028654', 'Lake Dell', 'Lake', 'North Dakota', 'ND', 'Sargent', 'Kidder', 45.9885578, -97.6854591, ST_GeomFromText('POINT(45.9885578 -97.6854591)', 4326), NULL, NULL, '1980-02-13', '2023-05-26', NULL, NULL, NULL),
  ('1028655', 'Deltlot Hill', 'Summit', 'North Dakota', 'ND', 'Ward', 'Tolley SE', 48.5124343, -101.8684186, ST_GeomFromText('POINT(48.5124343 -101.8684186)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1028656', 'Den Lake', 'Lake', 'North Dakota', 'ND', 'Ward', 'Minot NW', 48.1911203, -101.3915525, ST_GeomFromText('POINT(48.1911203 -101.3915525)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028666', 'Des Lacs Reservoir', 'Reservoir', 'North Dakota', 'ND', 'Ward', 'Des Lacs', 48.2592889, -101.5691332, ST_GeomFromText('POINT(48.2592889 -101.5691332)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1028667', 'Des Lacs River', 'Stream', 'North Dakota', 'ND', 'Ward', 'Burlington', 48.2797327, -101.4187749, ST_GeomFromText('POINT(48.2797327 -101.4187749)', 4326), 48.5903005, -101.996829, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028668', 'Des Moines Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Des Moines Lake', 47.133144, -99.6448897, ST_GeomFromText('POINT(47.133144 -99.6448897)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1028669', 'Desjarlis Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Lake Upsilon', 48.8857544, -99.8741126, ST_GeomFromText('POINT(48.8857544 -99.8741126)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1028670', 'Devils Gulch', 'Valley', 'North Dakota', 'ND', 'Emmons', 'Fort Rice', 46.542494, -100.529008, ST_GeomFromText('POINT(46.542494 -100.529008)', 4326), 46.5488827, -100.4917846, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028671', 'Devils Heart Butte', 'Summit', 'North Dakota', 'ND', 'Benson', 'Tokio', 47.9338411, -98.8576412, ST_GeomFromText('POINT(47.9338411 -98.8576412)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1028673', 'Devils Lake Mountain', 'Summit', 'North Dakota', 'ND', 'Ramsey', 'Devils Lake Mountain', 47.9399219, -98.5597873, ST_GeomFromText('POINT(47.9399219 -98.5597873)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028674', 'Devils Nest', 'Summit', 'North Dakota', 'ND', 'Richland', 'Hankinson SE', 46.046057, -96.8707037, ST_GeomFromText('POINT(46.046057 -96.8707037)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1028675', 'Devils Thumb', 'Summit', 'North Dakota', 'ND', 'Eddy', 'Lake Coe', 47.675275, -98.6362142, ST_GeomFromText('POINT(47.675275 -98.6362142)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1028685', 'Dill Slough', 'Lake', 'North Dakota', 'ND', 'Sargent', 'Crete', 46.1380708, -97.9172027, ST_GeomFromText('POINT(46.1380708 -97.9172027)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1028686', 'Dion Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Carpenter Lake', 48.977844, -99.8960394, ST_GeomFromText('POINT(48.977844 -99.8960394)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1028690', 'Doaks Butte', 'Summit', 'North Dakota', 'ND', 'Bowman', 'Doaks Butte', 45.956192, -103.9456201, ST_GeomFromText('POINT(45.956192 -103.9456201)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1028691', 'Dobson Buttes', 'Range', 'North Dakota', 'ND', 'Stark', 'Lehigh', 46.7958403, -102.7446222, ST_GeomFromText('POINT(46.7958403 -102.7446222)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028692', 'Docs Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Thompson Lake', 48.6676358, -102.470614, ST_GeomFromText('POINT(48.6676358 -102.470614)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1028695', 'Dogden Butte', 'Summit', 'North Dakota', 'ND', 'McLean', 'Kongsberg', 47.8139597, -100.7620259, ST_GeomFromText('POINT(47.8139597 -100.7620259)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1028697', 'Dogtooth Creek', 'Stream', 'North Dakota', 'ND', 'Morton', 'Breien', 46.3772334, -100.9392983, ST_GeomFromText('POINT(46.3772334 -100.9392983)', 4326), 46.3858367, -101.3584742, '1980-02-13', '2014-05-14', 'Official', 'Board Decision', '1976-01-01'),
  ('1028699', 'Dollar Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Pingree', 47.2319147, -98.995844, ST_GeomFromText('POINT(47.2319147 -98.995844)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028700', 'Dollar Slough', 'Swamp', 'North Dakota', 'ND', 'Stutsman', 'Arrowwood Lake', 47.2676407, -98.8297405, ST_GeomFromText('POINT(47.2676407 -98.8297405)', 4326), NULL, NULL, '1980-02-13', '2022-08-12', NULL, NULL, NULL),
  ('1028702', 'Donald Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Carpenter Lake', 48.9264433, -99.9074528, ST_GeomFromText('POINT(48.9264433 -99.9074528)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1028706', 'Douglas Creek Bay', 'Bay', 'North Dakota', 'ND', 'McLean', 'Emmet SE', 47.5975012, -101.6026657, ST_GeomFromText('POINT(47.5975012 -101.6026657)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028709', 'Douglas Lake', 'Lake', 'North Dakota', 'ND', 'McLean', 'Douglas East', 47.8455272, -101.4901614, ST_GeomFromText('POINT(47.8455272 -101.4901614)', 4326), NULL, NULL, '1980-02-13', '2014-07-09', NULL, NULL, NULL),
  ('1028714', 'Drags Wolf Bay', 'Bay', 'North Dakota', 'ND', 'Dunn', 'Sanish SE', 47.7858457, -102.6115776, ST_GeomFromText('POINT(47.7858457 -102.6115776)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028728', 'Dry Branch', 'Stream', 'South Dakota', 'SD', 'Brown', 'Frederick', 45.7758087, -98.5931543, ST_GeomFromText('POINT(45.7758087 -98.5931543)', 4326), 46.1083036, -98.4667668, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028729', 'Dry Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Mandaree SW', 47.5330674, -102.6893532, ST_GeomFromText('POINT(47.5330674 -102.6893532)', 4326), 47.5491667, -102.7327778, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028730', 'Dry Creek', 'Stream', 'North Dakota', 'ND', 'Stark', 'Lehigh', 46.7805623, -102.734344, ST_GeomFromText('POINT(46.7805623 -102.734344)', 4326), 46.7600082, -102.8490654, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028732', 'Dry Fork Creek', 'Stream', 'North Dakota', 'ND', 'Williams', 'Charlson NW', 48.1755772, -102.9918506, ST_GeomFromText('POINT(48.1755772 -102.9918506)', 4326), 48.3052978, -102.9099047, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028733', 'Dry Lake', 'Lake', 'North Dakota', 'ND', 'Hettinger', 'Plum Butte', 46.2429514, -102.2378562, ST_GeomFromText('POINT(46.2429514 -102.2378562)', 4326), NULL, NULL, '1980-02-13', '2019-02-22', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028734', 'Dry Lake', 'Lake', 'North Dakota', 'ND', 'Foster', 'Bordulac', 47.3774967, -98.888719, ST_GeomFromText('POINT(47.3774967 -98.888719)', 4326), NULL, NULL, '1980-02-13', '2017-09-25', NULL, NULL, NULL),
  ('1028735', 'Dry Lake', 'Lake', 'North Dakota', 'ND', 'Ramsey', 'Webster', 48.2802569, -98.972913, ST_GeomFromText('POINT(48.2802569 -98.972913)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1028736', 'Dry Run', 'Stream', 'South Dakota', 'SD', 'Brown', 'Hecla', 45.8749698, -98.2684348, ST_GeomFromText('POINT(45.8749698 -98.2684348)', 4326), 45.9997222, -98.2433333, '1980-02-13', '2010-12-07', NULL, NULL, NULL),
  ('1028738', 'Duck Creek', 'Stream', 'North Dakota', 'ND', 'Adams', 'Cedar Butte', 46.0466691, -102.2151555, ST_GeomFromText('POINT(46.0466691 -102.2151555)', 4326), 46.1611178, -102.9512751, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028739', 'Duck Creek', 'Stream', 'North Dakota', 'ND', 'Stark', 'Dickinson South', 46.8638986, -102.8540678, ST_GeomFromText('POINT(46.8638986 -102.8540678)', 4326), 46.9589012, -102.9535133, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028740', 'Duck Lake', 'Lake', 'North Dakota', 'ND', 'Wells', 'Fessenden SW', 47.5184849, -99.664091, ST_GeomFromText('POINT(47.5184849 -99.664091)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1028741', 'Duck Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Lake Klingenberg', 48.9251893, -100.3961334, ST_GeomFromText('POINT(48.9251893 -100.3961334)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1028742', 'Duckshire Lake', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Rangeley SE', 48.1218831, -100.3241209, ST_GeomFromText('POINT(48.1218831 -100.3241209)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1028753', 'Dutch Henry Butte', 'Summit', 'North Dakota', 'ND', 'Stark', 'New Hradec South', 46.9801352, -102.9270458, ST_GeomFromText('POINT(46.9801352 -102.9270458)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1028754', 'Dutton Slough', 'Lake', 'North Dakota', 'ND', 'Emmons', 'Moffit SE', 46.6044348, -100.3314694, ST_GeomFromText('POINT(46.6044348 -100.3314694)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028757', 'Eagle Nest Butte', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Mandaree', 47.6826048, -102.6899638, ST_GeomFromText('POINT(47.6826048 -102.6899638)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1028758', 'Eagle Nest Rock', 'Pillar', 'North Dakota', 'ND', 'Williams', 'Appam', 48.5630835, -103.5282475, ST_GeomFromText('POINT(48.5630835 -103.5282475)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028763', 'East Branch Apple Creek', 'Stream', 'North Dakota', 'ND', 'Burleigh', 'McKenzie NW', 46.8874925, -100.4801169, ST_GeomFromText('POINT(46.8874925 -100.4801169)', 4326), 47.1241586, -100.3823378, '1980-02-13', NULL, 'Official', 'Board Decision', '1976-01-01'),
  ('1028764', 'East Branch Douglas Creek', 'Stream', 'North Dakota', 'ND', 'McLean', 'Emmet SE', 47.6125009, -101.5504423, ST_GeomFromText('POINT(47.6125009 -101.5504423)', 4326), 47.7458343, -101.5090515, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028765', 'East Branch Nekoma Coulee', 'Valley', 'North Dakota', 'ND', 'Ramsey', 'Edmore', 48.4455587, -98.3940008, ST_GeomFromText('POINT(48.4455587 -98.3940008)', 4326), 48.581113, -98.3584472, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028767', 'East Devils Lake', 'Lake', 'North Dakota', 'ND', 'Ramsey', 'Free Peoples Lake', 47.9696022, -98.640306, ST_GeomFromText('POINT(47.9696022 -98.640306)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1028768', 'East Fischer Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Goldwin SW', 47.0855491, -99.2131685, ST_GeomFromText('POINT(47.0855491 -99.2131685)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028770', 'East Fork Bear Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Hay Flat', 47.5658408, -102.3412888, ST_GeomFromText('POINT(47.5658408 -102.3412888)', 4326), 47.5197222, -102.2861111, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028773', 'East Fork Chanta Peta Creek', 'Stream', 'North Dakota', 'ND', 'Morton', 'Flasher', 46.4858338, -101.1554197, ST_GeomFromText('POINT(46.4858338 -101.1554197)', 4326), 46.505553, -100.9618015, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028774', 'East Fork Deepwater Creek', 'Stream', 'North Dakota', 'ND', 'McLean', 'Makoti SW', 47.8152856, -101.9612766, ST_GeomFromText('POINT(47.8152856 -101.9612766)', 4326), 47.8891763, -101.940444, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028775', 'East Fork Little Muddy River', 'Stream', 'North Dakota', 'ND', 'Williams', 'Blacktail Lake SE', 48.3536359, -103.5999171, ST_GeomFromText('POINT(48.3536359 -103.5999171)', 4326), 48.3669671, -103.2721304, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028777', 'East Fork Shell Creek', 'Stream', 'North Dakota', 'ND', 'Mountrail', 'Shell Creek Bay', 47.9280682, -102.26545, ST_GeomFromText('POINT(47.9280682 -102.26545)', 4326), 47.990845, -101.8662776, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028783', 'East Rainy Butte', 'Summit', 'North Dakota', 'ND', 'Slope', 'East Rainy Butte', 46.4572319, -102.9876662, ST_GeomFromText('POINT(46.4572319 -102.9876662)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1028794', 'Ebel Lake', 'Lake', 'North Dakota', 'ND', 'Sheridan', 'Kief', 47.8026205, -100.5050948, ST_GeomFromText('POINT(47.8026205 -100.5050948)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1028798', 'Eckelson Lake', 'Lake', 'North Dakota', 'ND', 'Barnes', 'Eckelson', 46.9240821, -98.3009458, ST_GeomFromText('POINT(46.9240821 -98.3009458)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1028799', 'Eckert Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Vanville NE', 48.6293289, -102.3656364, ST_GeomFromText('POINT(48.6293289 -102.3656364)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1028813', 'Edmore Coulee', 'Valley', 'North Dakota', 'ND', 'Ramsey', 'Sweetwater', 48.2119476, -98.7898418, ST_GeomFromText('POINT(48.2119476 -98.7898418)', 4326), 48.6080608, -98.4959523, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028815', 'Eds Slough', 'Lake', 'North Dakota', 'ND', 'Burke', 'Lostwood Lakes', 48.5846598, -102.4516129, ST_GeomFromText('POINT(48.5846598 -102.4516129)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1028817', 'Edward Arthur Patterson Lake', 'Reservoir', 'North Dakota', 'ND', 'Stark', 'Dickinson South', 46.8588395, -102.8555655, ST_GeomFromText('POINT(46.8588395 -102.8555655)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', 'Official', 'Congressional Legislation', '1959-08-25'),
  ('1028820', 'Egg Creek', 'Stream', 'North Dakota', 'ND', 'McHenry', 'Granville', 48.3561182, -100.7784726, ST_GeomFromText('POINT(48.3561182 -100.7784726)', 4326), 48.5605745, -101.4898835, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028821', 'Egg Lake', 'Lake', 'North Dakota', 'ND', 'Wells', 'Manfred NW', 47.7344146, -99.8758123, ST_GeomFromText('POINT(47.7344146 -99.8758123)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1028822', 'Ehler Lake', 'Reservoir', 'North Dakota', 'ND', 'Adams', 'Ehler Lake', 46.1729705, -102.6712837, ST_GeomFromText('POINT(46.1729705 -102.6712837)', 4326), NULL, NULL, '1980-02-13', '2019-02-22', NULL, NULL, NULL),
  ('1028834', 'Eightmile Creek', 'Stream', 'North Dakota', 'ND', 'Williams', 'Trenton', 48.0503004, -103.8360377, ST_GeomFromText('POINT(48.0503004 -103.8360377)', 4326), 48.1728004, -103.9493749, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028835', 'Elbow Lake', 'Lake', 'North Dakota', 'ND', 'Benson', 'Free Peoples Lake', 47.8980305, -98.7400231, ST_GeomFromText('POINT(47.8980305 -98.7400231)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1028836', 'Elbow Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Lunds Valley', 48.6042624, -102.511472, ST_GeomFromText('POINT(48.6042624 -102.511472)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1028839', 'Elbowoods Bay', 'Bay', 'North Dakota', 'ND', 'McLean', 'Twin Buttes', 47.6163952, -102.1460056, ST_GeomFromText('POINT(47.6163952 -102.1460056)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028843', 'Eldridge Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'International Peace Garden', 48.9023941, -100.0540277, ST_GeomFromText('POINT(48.9023941 -100.0540277)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1028854', 'Elm Coulee', 'Stream', 'North Dakota', 'ND', 'Grand Forks', 'Thompson', 47.8266442, -97.0136906, ST_GeomFromText('POINT(47.8266442 -97.0136906)', 4326), 47.7813722, -97.3156411, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028855', 'Elm Creek', 'Stream', 'North Dakota', 'ND', 'Mercer', 'Schaffner Creek NE', 47.1336195, -102.0876701, ST_GeomFromText('POINT(47.1336195 -102.0876701)', 4326), 46.9780626, -101.9396052, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028856', 'Elm Creek', 'Stream', 'North Dakota', 'ND', 'Mercer', 'Stanton', 47.3372226, -101.4609945, ST_GeomFromText('POINT(47.3372226 -101.4609945)', 4326), 47.4333334, -101.4621067, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028860', 'Elm Lake', 'Lake', 'North Dakota', 'ND', 'Richland', 'Lidgerwood', 46.0078169, -97.1326161, ST_GeomFromText('POINT(46.0078169 -97.1326161)', 4326), NULL, NULL, '1980-02-13', '2023-05-26', NULL, NULL, NULL),
  ('1028863', 'Elm River', 'Stream', 'North Dakota', 'ND', 'Traill', 'Halstad', 47.2608067, -96.8464686, ST_GeomFromText('POINT(47.2608067 -96.8464686)', 4326), 47.173317, -97.5270347, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028888', 'Enget Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Powers Lake', 48.5711842, -102.6800222, ST_GeomFromText('POINT(48.5711842 -102.6800222)', 4326), NULL, NULL, '1980-02-13', '2023-04-05', NULL, NULL, NULL),
  ('1028889', 'England Lake', 'Lake', 'North Dakota', 'ND', 'McLean', 'Siebold Lake', 47.6917067, -100.6025817, ST_GeomFromText('POINT(47.6917067 -100.6025817)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1028891', 'Englevale Slough', 'Stream', 'North Dakota', 'ND', 'Ransom', 'Elliott SW', 46.2721877, -97.9067666, ST_GeomFromText('POINT(46.2721877 -97.9067666)', 4326), 46.4716363, -97.9367682, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028893', 'English Coulee', 'Stream', 'North Dakota', 'ND', 'Grand Forks', 'Grand Forks', 47.9616468, -97.059521, ST_GeomFromText('POINT(47.9616468 -97.059521)', 4326), 47.8291524, -97.398419, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028898', 'Epping Dam', 'Reservoir', 'North Dakota', 'ND', 'Williams', 'Spring Brook', 48.2569831, -103.4240685, ST_GeomFromText('POINT(48.2569831 -103.4240685)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1028900', 'Erdahl Slough', 'Lake', 'North Dakota', 'ND', 'Williams', 'Twin Lakes', 48.4157429, -103.5496819, ST_GeomFromText('POINT(48.4157429 -103.5496819)', 4326), NULL, NULL, '1980-02-13', '2019-04-27', NULL, NULL, NULL),
  ('1028901', 'Eric Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Goldwin SW', 47.1238671, -99.154376, ST_GeomFromText('POINT(47.1238671 -99.154376)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1028902', 'Erickson Lake', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Voltaire', 48.0279375, -100.8647523, ST_GeomFromText('POINT(48.0279375 -100.8647523)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028903', 'Ericson Coulee', 'Valley', 'North Dakota', 'ND', 'Morton', 'North Almont', 46.773891, -101.581813, ST_GeomFromText('POINT(46.773891 -101.581813)', 4326), 46.8033333, -101.5883333, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028910', 'Alkali Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Dawson', 46.788768, -99.839286, ST_GeomFromText('POINT(46.788768 -99.839286)', 4326), NULL, NULL, '1980-02-13', '2024-10-09', 'Official', 'Board Decision', '2006-09-14'),
  ('1028920', 'Expansion Bay', 'Bay', 'North Dakota', 'ND', 'Mercer', 'Emmet SW', 47.5005569, -101.7090584, ST_GeomFromText('POINT(47.5005569 -101.7090584)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028923', 'Fairdale Slough', 'Lake', 'North Dakota', 'ND', 'Walsh', 'Osnabrock SW', 48.511128, -98.2354252, ST_GeomFromText('POINT(48.511128 -98.2354252)', 4326), NULL, NULL, '1980-02-13', '2018-11-28', NULL, NULL, NULL),
  ('1028944', 'Fangsrud Lake Bed', 'Flat', 'North Dakota', 'ND', 'Sargent', 'Cayuga NW', 46.2438498, -97.4367577, ST_GeomFromText('POINT(46.2438498 -97.4367577)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028951', 'Lake Fedge', 'Lake', 'North Dakota', 'ND', 'Sargent', 'Cayuga NW', 46.1965204, -97.3979207, ST_GeomFromText('POINT(46.1965204 -97.3979207)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1028954', 'Fiestel Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Lake Upsilon', 48.98585, -99.85779, ST_GeomFromText('POINT(48.98585 -99.85779)', 4326), NULL, NULL, '1980-02-13', '2024-10-09', NULL, NULL, NULL),
  ('1028955', 'Figley Coulee', 'Valley', 'North Dakota', 'ND', 'Williams', 'Dore', 47.9913582, -104.0114538, ST_GeomFromText('POINT(47.9913582 -104.0114538)', 4326), 48.0373877, -103.9839657, '1980-02-13', '2018-06-15', NULL, NULL, NULL),
  ('1028966', 'Fireheart Creek', 'Stream', 'North Dakota', 'ND', 'Sioux', 'Mahto NE', 45.9880521, -100.5573502, ST_GeomFromText('POINT(45.9880521 -100.5573502)', 4326), 45.9941644, -100.662073, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028967', 'First Larson Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Surrey', 48.1947319, -101.2321051, ST_GeomFromText('POINT(48.1947319 -101.2321051)', 4326), 48.1405644, -101.4809983, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028968', 'Fischer Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Goldwin SW', 47.0831191, -99.2275097, ST_GeomFromText('POINT(47.0831191 -99.2275097)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1028969', 'Fish Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Marshall', 47.1544535, -102.2987882, ST_GeomFromText('POINT(47.1544535 -102.2987882)', 4326), 47.1855556, -102.3741667, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028970', 'Fish Creek', 'Stream', 'North Dakota', 'ND', 'Morton', 'Fish Creek Lake', 46.7197194, -101.2012508, ST_GeomFromText('POINT(46.7197194 -101.2012508)', 4326), 46.7449978, -101.2920855, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028971', 'Fish Lake', 'Lake', 'North Dakota', 'ND', 'Benson', 'Harlow SE', 48.108585, -99.5606701, ST_GeomFromText('POINT(48.108585 -99.5606701)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1028972', 'Fish Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Grubb Lake', 48.630519, -102.6384375, ST_GeomFromText('POINT(48.630519 -102.6384375)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1028973', 'Fish Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Helde Lake', 48.6534221, -102.5452007, ST_GeomFromText('POINT(48.6534221 -102.5452007)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1028975', 'Fisher Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Lake Louise', 47.0275177, -99.4691593, ST_GeomFromText('POINT(47.0275177 -99.4691593)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1028976', 'Five Point Butte', 'Summit', 'North Dakota', 'ND', 'Golden Valley', 'Thelan', 46.7619286, -103.9044213, ST_GeomFromText('POINT(46.7619286 -103.9044213)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1028977', 'Lake Five', 'Lake', 'North Dakota', 'ND', 'Griggs', 'Cooperstown West', 47.4821783, -98.2018357, ST_GeomFromText('POINT(47.4821783 -98.2018357)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1028978', 'Fivemile Creek', 'Stream', 'North Dakota', 'ND', 'Bowman', 'Cedar Ridge', 46.0302798, -103.9396527, ST_GeomFromText('POINT(46.0302798 -103.9396527)', 4326), 45.9638909, -103.7365893, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1028980', 'Flagstaff Hill', 'Summit', 'North Dakota', 'ND', 'Williams', 'Cussicks Spring', 48.1612621, -103.2168102, ST_GeomFromText('POINT(48.1612621 -103.2168102)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1028982', 'Flat Creek', 'Stream', 'South Dakota', 'SD', 'Perkins', 'Summerville', 45.7833297, -102.1879328, ST_GeomFromText('POINT(45.7833297 -102.1879328)', 4326), 46.1155619, -102.8704391, '1980-02-13', '2010-12-07', NULL, NULL, NULL),
  ('1028983', 'Flat Lake', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Drake', 47.9970077, -100.3084369, ST_GeomFromText('POINT(47.9970077 -100.3084369)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1028984', 'Flat Top Hill', 'Summit', 'North Dakota', 'ND', 'Morton', 'Dengate', 46.7797258, -101.7034833, ST_GeomFromText('POINT(46.7797258 -101.7034833)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1028985', 'Flaten Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Carpio', 48.4464062, -101.716273, ST_GeomFromText('POINT(48.4464062 -101.716273)', 4326), 48.3827943, -101.854885, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1028991', 'Florence Lake', 'Lake', 'North Dakota', 'ND', 'Burleigh', 'Florence Lake', 47.2918431, -100.3241241, ST_GeomFromText('POINT(47.2918431 -100.3241241)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1028994', 'Fool Bear Creek', 'Stream', 'North Dakota', 'ND', 'Sioux', 'Cannon Ball SE', 46.2894387, -100.5926234, ST_GeomFromText('POINT(46.2894387 -100.5926234)', 4326), 46.2752728, -100.6592927, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029000', 'Ford Slough', 'Lake', 'North Dakota', 'ND', 'Burke', 'Westby Lake', 48.6045124, -102.3485005, ST_GeomFromText('POINT(48.6045124 -102.3485005)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1029003', 'Forest River', 'Stream', 'North Dakota', 'ND', 'Walsh', 'Big Woods SW', 48.3580397, -97.1459042, ST_GeomFromText('POINT(48.3580397 -97.1459042)', 4326), 48.2124935, -97.8087013, '1980-02-13', '2018-01-12', NULL, NULL, NULL),
  ('1029007', 'Forsch Rocks', 'Summit', 'North Dakota', 'ND', 'Hettinger', 'Mott SW', 46.3377552, -102.390574, ST_GeomFromText('POINT(46.3377552 -102.390574)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029029', 'Four Bears Bay', 'Bay', 'North Dakota', 'ND', 'McKenzie', 'Sanish', 47.9739054, -102.587961, ST_GeomFromText('POINT(47.9739054 -102.587961)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029033', 'Fourmile Creek', 'Stream', 'North Dakota', 'ND', 'Sioux', 'Fort Yates SE', 46.0249968, -100.6115166, ST_GeomFromText('POINT(46.0249968 -100.6115166)', 4326), 46.1086097, -100.8329074, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029035', 'Fox Lake', 'Lake', 'North Dakota', 'ND', 'Barnes', 'Eckelson', 46.9591188, -98.3530606, ST_GeomFromText('POINT(46.9591188 -98.3530606)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1029036', 'Fox Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Courtenay', 47.2304752, -98.6061978, ST_GeomFromText('POINT(47.2304752 -98.6061978)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1029037', 'Fox Lake', 'Lake', 'North Dakota', 'ND', 'Ramsey', 'Southam', 48.2322753, -98.5619288, ST_GeomFromText('POINT(48.2322753 -98.5619288)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1029040', 'Lake Francis', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Lake Klingenberg', 48.9797702, -100.3959071, ST_GeomFromText('POINT(48.9797702 -100.3959071)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029041', 'Frank Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Dunn Center NW', 47.4947347, -102.7424092, ST_GeomFromText('POINT(47.4947347 -102.7424092)', 4326), 47.4961247, -102.859354, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029042', 'Frankhauser Lake', 'Lake', 'North Dakota', 'ND', 'Sheridan', 'Drake SE', 47.8117235, -100.3312807, ST_GeomFromText('POINT(47.8117235 -100.3312807)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1029048', 'Free Peoples Lake', 'Lake', 'North Dakota', 'ND', 'Benson', 'Free Peoples Lake', 47.9086561, -98.7304996, ST_GeomFromText('POINT(47.9086561 -98.7304996)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1029053', 'Fresh Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Alkaline Lake', 46.6355735, -99.6211672, ST_GeomFromText('POINT(46.6355735 -99.6211672)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029054', 'Fresh Water Coulee', 'Stream', 'North Dakota', 'ND', 'Grand Forks', 'Kelly', 47.9488725, -97.220636, ST_GeomFromText('POINT(47.9488725 -97.220636)', 4326), 47.8205401, -97.3489741, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029055', 'Fresh Water Lake', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Rangeley NE', 48.2165469, -100.3578547, ST_GeomFromText('POINT(48.2165469 -100.3578547)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1029061', 'Fritz Butte', 'Summit', 'North Dakota', 'ND', 'Emmons', 'Kiefer Buttes', 46.0105428, -100.4217252, ST_GeomFromText('POINT(46.0105428 -100.4217252)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1029065', 'Fuller Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Des Lacs', 48.3636248, -101.5665523, ST_GeomFromText('POINT(48.3636248 -101.5665523)', 4326), 48.3180683, -101.6282194, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029066', 'Fullers Lake', 'Swamp', 'North Dakota', 'ND', 'Steele', 'Hope SE', 47.3060013, -97.5908035, ST_GeomFromText('POINT(47.3060013 -97.5908035)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1029071', 'Gaebe Hill', 'Summit', 'North Dakota', 'ND', 'Morton', 'New Salem', 46.8208322, -101.3970875, ST_GeomFromText('POINT(46.8208322 -101.3970875)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1029077', 'Gamache Creek', 'Stream', 'North Dakota', 'ND', 'Williams', 'Cussicks Spring', 48.1258555, -103.2290758, ST_GeomFromText('POINT(48.1258555 -103.2290758)', 4326), 48.1916879, -103.2635202, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029079', 'Garden Coulee', 'Valley', 'North Dakota', 'ND', 'Williams', 'Dore', 47.9966973, -104.0233309, ST_GeomFromText('POINT(47.9966973 -104.0233309)', 4326), 48.0484809, -104.0247928, '1980-02-13', '2018-06-15', NULL, NULL, NULL),
  ('1029084', 'Garrison Bay', 'Bay', 'North Dakota', 'ND', 'McLean', 'Garrison Dam North', 47.6133335, -101.4396062, ST_GeomFromText('POINT(47.6133335 -101.4396062)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029085', 'Garrison Creek', 'Stream', 'North Dakota', 'ND', 'McLean', 'Garrison', 47.6408336, -101.4276613, ST_GeomFromText('POINT(47.6408336 -101.4276613)', 4326), 47.6811111, -101.4497222, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029090', 'Gascoyne Lake', 'Reservoir', 'North Dakota', 'ND', 'Bowman', 'Scranton NE', 46.1340702, -103.0952342, ST_GeomFromText('POINT(46.1340702 -103.0952342)', 4326), NULL, NULL, '1980-02-13', '2019-02-21', NULL, NULL, NULL),
  ('1029091', 'Gassman Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Minot NW', 48.2316761, -101.3784969, ST_GeomFromText('POINT(48.2316761 -101.3784969)', 4326), 48.2080653, -101.5623873, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029093', 'Gatten Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Boundary Lake', 48.9864618, -100.1549582, ST_GeomFromText('POINT(48.9864618 -100.1549582)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029098', 'Lake Geneva', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Lake Geneva', 46.8409047, -100.0201237, ST_GeomFromText('POINT(46.8409047 -100.0201237)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1029100', 'Lake George', 'Lake', 'North Dakota', 'ND', 'Foster', 'Bordulac', 47.3992851, -98.9545009, ST_GeomFromText('POINT(47.3992851 -98.9545009)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1029102', 'Lake George', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Rangeley', 48.1017123, -100.3833437, ST_GeomFromText('POINT(48.1017123 -100.3833437)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1029115', 'Gert Buttes', 'Ridge', 'North Dakota', 'ND', 'Hettinger', 'Mott South', 46.2694393, -102.325148, ST_GeomFromText('POINT(46.2694393 -102.325148)', 4326), NULL, NULL, '1980-02-13', '2017-01-31', NULL, NULL, NULL),
  ('1029124', 'Gilmore Lake', 'Lake', 'North Dakota', 'ND', 'Pierce', 'Overly SE', 48.5156728, -100.001495, ST_GeomFromText('POINT(48.5156728 -100.001495)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029126', 'Girard Lake', 'Lake', 'North Dakota', 'ND', 'Pierce', 'Petrified Lake', 48.0721373, -99.9999759, ST_GeomFromText('POINT(48.0721373 -99.9999759)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1029129', 'Girl Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Thorne', 48.6834573, -99.9202047, ST_GeomFromText('POINT(48.6834573 -99.9202047)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029135', 'Glencoe Creek', 'Stream', 'North Dakota', 'ND', 'Emmons', 'Fort Rice', 46.622216, -100.5473421, ST_GeomFromText('POINT(46.622216 -100.5473421)', 4326), 46.6008263, -100.4573393, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029140', 'Glennon Coulee', 'Stream', 'North Dakota', 'ND', 'McLean', 'Blackwater Lake', 47.7388926, -101.7832216, ST_GeomFromText('POINT(47.7388926 -101.7832216)', 4326), 47.7458364, -101.7226656, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029142', 'Glick Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Des Lacs', 48.3733474, -101.5782188, ST_GeomFromText('POINT(48.3733474 -101.5782188)', 4326), 48.3613889, -101.6047222, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029144', 'Goettle Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Hartland', 48.4961311, -101.8490505, ST_GeomFromText('POINT(48.4961311 -101.8490505)', 4326), 48.5150203, -101.8487728, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029149', 'Gold Creek', 'Stream', 'North Dakota', 'ND', 'Mercer', 'Schaffner Creek NE', 47.1613975, -102.0396139, ST_GeomFromText('POINT(47.1613975 -102.0396139)', 4326), 47.0988968, -101.9693322, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029151', 'Golden Hill Lake', 'Lake', 'North Dakota', 'ND', 'Sargent', 'Kidder', 45.9594183, -97.6887534, ST_GeomFromText('POINT(45.9594183 -97.6887534)', 4326), NULL, NULL, '1980-02-13', '2023-05-26', NULL, NULL, NULL),
  ('1029152', 'Golden Lake', 'Lake', 'North Dakota', 'ND', 'Steele', 'Golden Lake', 47.5678992, -97.6380452, ST_GeomFromText('POINT(47.5678992 -97.6380452)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1029154', 'Golden Rush Lake', 'Lake', 'North Dakota', 'ND', 'Steele', 'Golden Lake', 47.5669129, -97.6535587, ST_GeomFromText('POINT(47.5669129 -97.6535587)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1029159', 'Good Bear Bay', 'Bay', 'North Dakota', 'ND', 'McLean', 'Raub SE', 47.5947279, -102.0876714, ST_GeomFromText('POINT(47.5947279 -102.0876714)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029162', 'Goodman Creek', 'Stream', 'North Dakota', 'ND', 'Mercer', 'Golden Valley', 47.290842, -102.0926733, ST_GeomFromText('POINT(47.290842 -102.0926733)', 4326), 47.4536171, -102.1523967, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029167', 'Goose Creek', 'Stream', 'North Dakota', 'ND', 'McLean', 'Sanger', 47.2241591, -100.9493077, ST_GeomFromText('POINT(47.2241591 -100.9493077)', 4326), 47.1816667, -100.9402778, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029168', 'Goose Creek', 'Stream', 'North Dakota', 'ND', 'Emmons', 'Dana', 46.5724874, -100.1328872, ST_GeomFromText('POINT(46.5724874 -100.1328872)', 4326), 46.5538745, -100.0259409, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029169', 'Goose Creek', 'Stream', 'North Dakota', 'ND', 'Adams', 'Taylor Butte', 46.1866712, -102.5751574, ST_GeomFromText('POINT(46.1866712 -102.5751574)', 4326), 46.151673, -102.7159901, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029170', 'Goose Creek', 'Stream', 'North Dakota', 'ND', 'Hettinger', 'Jung Lake', 46.4591738, -102.7804418, ST_GeomFromText('POINT(46.4591738 -102.7804418)', 4326), 46.4491755, -102.9173875, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029171', 'Goose Creek', 'Stream', 'North Dakota', 'ND', 'Nelson', 'Aneta', 47.7469361, -97.8823141, ST_GeomFromText('POINT(47.7469361 -97.8823141)', 4326), 47.9252728, -98.0873218, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029172', 'Goose Lake', 'Lake', 'North Dakota', 'ND', 'Barnes', 'Spiritwood', 46.8849304, -98.4050198, ST_GeomFromText('POINT(46.8849304 -98.4050198)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1029173', 'Goose Lake', 'Lake', 'North Dakota', 'ND', 'Wells', 'Black Hammer Hill', 47.796096, -99.4700978, ST_GeomFromText('POINT(47.796096 -99.4700978)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1029174', 'Goose Lake', 'Lake', 'North Dakota', 'ND', 'Eddy', 'Tokio SW', 47.8257481, -98.9731872, ST_GeomFromText('POINT(47.8257481 -98.9731872)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1029175', 'Goose Lake', 'Lake', 'North Dakota', 'ND', 'Wells', 'Harvey', 47.8348528, -99.902226, ST_GeomFromText('POINT(47.8348528 -99.902226)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1029176', 'Goose Lake', 'Lake', 'North Dakota', 'ND', 'Pierce', 'Rugby NW', 48.4140028, -99.9234591, ST_GeomFromText('POINT(48.4140028 -99.9234591)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029177', 'Goose Lake', 'Lake', 'North Dakota', 'ND', 'Emmons', 'Braddock', 46.5489612, -100.0060614, ST_GeomFromText('POINT(46.5489612 -100.0060614)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1029178', 'Goose Lake', 'Lake', 'North Dakota', 'ND', 'Barnes', 'Pillsbury', 47.228708, -97.8676586, ST_GeomFromText('POINT(47.228708 -97.8676586)', 4326), NULL, NULL, '1980-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1029179', 'Goose Lake', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Bantry NW', 48.4268304, -100.7405048, ST_GeomFromText('POINT(48.4268304 -100.7405048)', 4326), NULL, NULL, '1980-02-13', '2019-04-08', NULL, NULL, NULL),
  ('1029180', 'Goose Pan Slough', 'Lake', 'North Dakota', 'ND', 'Burke', 'Thompson Lake', 48.6434979, -102.4120296, ST_GeomFromText('POINT(48.6434979 -102.4120296)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029181', 'Goose River', 'Stream', 'North Dakota', 'ND', 'Traill', 'Shelly', 47.4596965, -96.8559139, ST_GeomFromText('POINT(47.4596965 -96.8559139)', 4326), 47.9363829, -98.0153768, '1980-02-13', '2018-01-16', NULL, NULL, NULL),
  ('1029184', 'Gopher Tail Lake', 'Lake', 'North Dakota', 'ND', 'Nelson', 'Lake Pickard', 47.9274493, -97.911126, ST_GeomFromText('POINT(47.9274493 -97.911126)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1029185', 'Gordon Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Lake Upsilon', 48.9224506, -99.7790075, ST_GeomFromText('POINT(48.9224506 -99.7790075)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029186', 'Gordon Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Boundary Lake', 48.9396306, -100.1437926, ST_GeomFromText('POINT(48.9396306 -100.1437926)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029189', 'Government Creek', 'Stream', 'North Dakota', 'ND', 'Stark', 'Clark Butte NW', 46.6994506, -102.1409975, ST_GeomFromText('POINT(46.6994506 -102.1409975)', 4326), 46.8844512, -102.4215668, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029198', 'Grand Forks Sewage Disposal Ponds', 'Reservoir', 'North Dakota', 'ND', 'Grand Forks', 'Kelly', 47.9613768, -97.1417751, ST_GeomFromText('POINT(47.9613768 -97.1417751)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029204', 'Grand View', 'Summit', 'North Dakota', 'ND', 'Burke', 'Grand View', 48.6307247, -102.761929, ST_GeomFromText('POINT(48.6307247 -102.761929)', 4326), NULL, NULL, '1980-02-13', '2012-10-11', NULL, NULL, NULL),
  ('1029208', 'Grandin Lake', 'Lake', 'North Dakota', 'ND', 'Traill', 'Halstad', 47.3513366, -96.8513923, ST_GeomFromText('POINT(47.3513366 -96.8513923)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1029210', 'Grandview Point', 'Cape', 'North Dakota', 'ND', 'Walsh', 'Edinburg', 48.4036047, -97.7923127, ST_GeomFromText('POINT(48.4036047 -97.7923127)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029220', 'Grass Lake', 'Lake', 'North Dakota', 'ND', 'Burleigh', 'Grass Lake', 47.2230935, -100.7090505, ST_GeomFromText('POINT(47.2230935 -100.7090505)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1029221', 'Grass Lake', 'Lake', 'North Dakota', 'ND', 'Pierce', 'Island Lake', 48.5257589, -99.6640829, ST_GeomFromText('POINT(48.5257589 -99.6640829)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1029222', 'Grass Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Boundary Lake', 48.9110132, -100.2241161, ST_GeomFromText('POINT(48.9110132 -100.2241161)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029223', 'Grass Lake', 'Lake', 'North Dakota', 'ND', 'Richland', 'Lidgerwood', 46.0990095, -97.2386348, ST_GeomFromText('POINT(46.0990095 -97.2386348)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1029225', 'Grasshopper Hills', 'Range', 'North Dakota', 'ND', 'Stutsman', 'Jim Lake', 47.1877728, -98.7884393, ST_GeomFromText('POINT(47.1877728 -98.7884393)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029229', 'Gravel Bottom Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Carpenter Lake', 48.9015819, -99.9606663, ST_GeomFromText('POINT(48.9015819 -99.9606663)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029230', 'Gravel Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Lake Upsilon', 48.9564722, -99.8340311, ST_GeomFromText('POINT(48.9564722 -99.8340311)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029235', 'Green Lake', 'Lake', 'North Dakota', 'ND', 'McIntosh', 'Danzig', 46.2032176, -99.460769, ST_GeomFromText('POINT(46.2032176 -99.460769)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1029236', 'Green Lake', 'Lake', 'North Dakota', 'ND', 'Williams', 'Appam', 48.6176572, -103.6203733, ST_GeomFromText('POINT(48.6176572 -103.6203733)', 4326), NULL, NULL, '1980-02-13', '2019-04-27', NULL, NULL, NULL),
  ('1029244', 'Grigg Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Metigoshe Lake', 48.8821663, -100.3456277, ST_GeomFromText('POINT(48.8821663 -100.3456277)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029245', 'Grimm Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Lake Upsilon', 48.9190294, -99.8233077, ST_GeomFromText('POINT(48.9190294 -99.8233077)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029251', 'Grubb Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Grubb Lake', 48.6961825, -102.7465405, ST_GeomFromText('POINT(48.6961825 -102.7465405)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1029256', 'Gullys Slough', 'Lake', 'North Dakota', 'ND', 'Richland', 'Swan Lake', 46.0472423, -97.0526463, ST_GeomFromText('POINT(46.0472423 -97.0526463)', 4326), NULL, NULL, '1980-02-13', '2023-05-26', NULL, NULL, NULL),
  ('1029257', 'Gumbo Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Dunn Center NW', 47.3772357, -102.7279637, ST_GeomFromText('POINT(47.3772357 -102.7279637)', 4326), 47.4494589, -102.9162981, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029258', 'Gunderson Creek', 'Stream', 'North Dakota', 'ND', 'Griggs', 'Hannaford', 47.254713, -98.1870404, ST_GeomFromText('POINT(47.254713 -98.1870404)', 4326), 47.2630556, -98.2475, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029259', 'Gunderson Lake', 'Lake', 'North Dakota', 'ND', 'Pierce', 'Rugby', 48.2950916, -99.9728204, ST_GeomFromText('POINT(48.2950916 -99.9728204)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029260', 'Guss Lake', 'Lake', 'North Dakota', 'ND', 'Pierce', 'Wolford', 48.4614374, -99.7403868, ST_GeomFromText('POINT(48.4614374 -99.7403868)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029262', 'Guyes Lake', 'Lake', 'North Dakota', 'ND', 'Sheridan', 'Drake SE', 47.7666866, -100.3100845, ST_GeomFromText('POINT(47.7666866 -100.3100845)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1029270', 'Hagel Creek', 'Stream', 'North Dakota', 'ND', 'Oliver', 'Nelson Lake', 47.07055, -101.2226459, ST_GeomFromText('POINT(47.07055 -101.2226459)', 4326), 47.0749988, -101.4387605, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029272', 'Hailstone Butte', 'Summit', 'North Dakota', 'ND', 'Morton', 'Hailstone Butte', 46.9130852, -101.6749777, ST_GeomFromText('POINT(46.9130852 -101.6749777)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1029273', 'Hailstone Creek', 'Stream', 'North Dakota', 'ND', 'Morton', 'Almont East', 46.7155573, -101.4931999, ST_GeomFromText('POINT(46.7155573 -101.4931999)', 4326), 46.9897274, -101.7312647, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029277', 'Half Timber Butte', 'Summit', 'North Dakota', 'ND', 'Sioux', 'Half Timber Butte', 46.271386, -100.8351302, ST_GeomFromText('POINT(46.271386 -100.8351302)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1029279', 'Halfbreed Creek', 'Stream', 'North Dakota', 'ND', 'Williams', 'Chris Creek', 48.069468, -103.261855, ST_GeomFromText('POINT(48.069468 -103.261855)', 4326), 48.095767, -103.386412, '2024-04-22', '2024-04-22', NULL, NULL, NULL),
  ('1029280', 'Hall Hill', 'Summit', 'North Dakota', 'ND', 'Emmons', 'Kiefer Buttes', 46.0497563, -100.4624305, ST_GeomFromText('POINT(46.0497563 -100.4624305)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1029306', 'Hans Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Halliday NW', 47.4930633, -102.3904565, ST_GeomFromText('POINT(47.4930633 -102.3904565)', 4326), 47.4566729, -102.2160088, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029309', 'Hanson Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Carpio', 48.4066823, -101.6421071, ST_GeomFromText('POINT(48.4066823 -101.6421071)', 4326), 48.3766667, -101.6922222, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029312', 'Hanson Lake', 'Lake', 'North Dakota', 'ND', 'Barnes', 'Dazey', 47.2185869, -98.1443552, ST_GeomFromText('POINT(47.2185869 -98.1443552)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029314', 'Hanson Slough', 'Lake', 'North Dakota', 'ND', 'McLean', 'Turtle Lake', 47.5247568, -100.936301, ST_GeomFromText('POINT(47.5247568 -100.936301)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1029315', 'Hanson Slough', 'Swamp', 'North Dakota', 'ND', 'McLean', 'Lake Nettie', 47.5372201, -101.0062585, ST_GeomFromText('POINT(47.5372201 -101.0062585)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029316', 'Happy Lake', 'Lake', 'North Dakota', 'ND', 'Dickey', 'Merricourt SW', 46.0282724, -98.8766168, ST_GeomFromText('POINT(46.0282724 -98.8766168)', 4326), NULL, NULL, '1980-02-13', '2019-02-27', NULL, NULL, NULL),
  ('1029317', 'Harker Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Tappen South', 46.8266302, -99.7208711, ST_GeomFromText('POINT(46.8266302 -99.7208711)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1029320', 'Lake Harman', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Lake Klingenberg', 48.9075597, -100.3843569, ST_GeomFromText('POINT(48.9075597 -100.3843569)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029322', 'Harms Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Grubb Lake', 48.6629338, -102.6784271, ST_GeomFromText('POINT(48.6629338 -102.6784271)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1029323', 'Harriet Lake', 'Lake', 'North Dakota', 'ND', 'Burleigh', 'Harriet Lake', 47.117597, -100.186256, ST_GeomFromText('POINT(47.117597 -100.186256)', 4326), NULL, NULL, '1980-02-13', '2025-02-26', NULL, NULL, NULL),
  ('1029325', 'Harrison Lake', 'Lake', 'North Dakota', 'ND', 'Nelson', 'Lambs Lake', 47.8952241, -98.0321671, ST_GeomFromText('POINT(47.8952241 -98.0321671)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1029327', 'Harts Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Lake Klingenberg', 48.9851942, -100.4219204, ST_GeomFromText('POINT(48.9851942 -100.4219204)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1029331', 'Harvey Hills', 'Range', 'North Dakota', 'ND', 'Bowman', 'Bowman', 46.1450055, -103.4371304, ST_GeomFromText('POINT(46.1450055 -103.4371304)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029343', 'Hawk Creek', 'Stream', 'North Dakota', 'ND', 'Emmons', 'Moffit SE', 46.6102672, -100.2559451, ST_GeomFromText('POINT(46.6102672 -100.2559451)', 4326), 46.4644352, -100.3037247, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029346', 'Hawks Nest', 'Summit', 'North Dakota', 'ND', 'Wells', 'Hawks Nest', 47.3423066, -99.2880392, ST_GeomFromText('POINT(47.3423066 -99.2880392)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1029348', 'Hay Butte', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Rawson', 47.7829166, -103.5443316, ST_GeomFromText('POINT(47.7829166 -103.5443316)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1029349', 'Hay Coulee', 'Valley', 'North Dakota', 'ND', 'Dunn', 'Halliday NE', 47.4905631, -102.374345, ST_GeomFromText('POINT(47.4905631 -102.374345)', 4326), 47.5336186, -102.3676783, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029350', 'Hay Coulee', 'Valley', 'North Dakota', 'ND', 'McHenry', 'Granville', 48.345843, -100.8431985, ST_GeomFromText('POINT(48.345843 -100.8431985)', 4326), 48.3033451, -101.2307157, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029351', 'Hay Creek', 'Stream', 'North Dakota', 'ND', 'Grant', 'Pitt Creek', 46.01862, -101.61066, ST_GeomFromText('POINT(46.01862 -101.61066)', 4326), 45.9325005, -101.9807019, '1980-02-13', '2011-06-01', NULL, NULL, NULL),
  ('1029352', 'Hay Creek', 'Stream', 'North Dakota', 'ND', 'Burleigh', 'Menoken SW', 46.7913824, -100.7123477, ST_GeomFromText('POINT(46.7913824 -100.7123477)', 4326), 46.9224921, -100.6995711, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029353', 'Hay Flat', 'Flat', 'North Dakota', 'ND', 'Dunn', 'Hay Flat', 47.5730626, -102.2935097, ST_GeomFromText('POINT(47.5730626 -102.2935097)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029354', 'Hay Slough Creek', 'Stream', 'North Dakota', 'ND', 'Hettinger', 'Havelock', 46.4655614, -102.6568311, ST_GeomFromText('POINT(46.4655614 -102.6568311)', 4326), 46.5508391, -102.6510013, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029355', 'Haymarsh Creek', 'Stream', 'North Dakota', 'ND', 'Morton', 'Glen Ullin', 46.8327824, -101.7570967, ST_GeomFromText('POINT(46.8327824 -101.7570967)', 4326), 46.9200061, -101.8704354, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029358', 'Haystack Butte', 'Summit', 'North Dakota', 'ND', 'Burleigh', 'Wing', 47.1730017, -100.3363194, ST_GeomFromText('POINT(47.1730017 -100.3363194)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1029359', 'Haystack Butte', 'Summit', 'North Dakota', 'ND', 'Dunn', 'Lone Butte NE', 47.6645994, -103.0761443, ST_GeomFromText('POINT(47.6645994 -103.0761443)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1029362', 'Hazen Brook', 'Stream', 'North Dakota', 'ND', 'Grand Forks', 'Emerado', 47.9188751, -97.3656393, ST_GeomFromText('POINT(47.9188751 -97.3656393)', 4326), 47.813322, -97.5723093, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029363', 'Heart Butte', 'Summit', 'North Dakota', 'ND', 'Dunn', 'String Buttes', 47.65373, -102.4022427, ST_GeomFromText('POINT(47.65373 -102.4022427)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1029364', 'Heart Butte', 'Summit', 'North Dakota', 'ND', 'Grant', 'Heart Butte', 46.6700098, -101.8743968, ST_GeomFromText('POINT(46.6700098 -101.8743968)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1029365', 'Heart Butte Creek', 'Stream', 'North Dakota', 'ND', 'Grant', 'Crown Butte Creek SW', 46.5911174, -101.737923, ST_GeomFromText('POINT(46.5911174 -101.737923)', 4326), 46.8016733, -102.0621077, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029382', 'Heckers Lake', 'Lake', 'North Dakota', 'ND', 'Sheridan', 'Mercer SW', 47.3417421, -100.6694761, ST_GeomFromText('POINT(47.3417421 -100.6694761)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1029383', 'Heffner Lake', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Karlsruhe NE', 48.1842441, -100.5042873, ST_GeomFromText('POINT(48.1842441 -100.5042873)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1029384', 'Heidemann Coulee', 'Valley', 'North Dakota', 'ND', 'Williams', 'Blacktail Lake', 48.4625261, -103.6554749, ST_GeomFromText('POINT(48.4625261 -103.6554749)', 4326), 48.4936373, -103.8029811, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029389', 'Helde Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Helde Lake', 48.6707196, -102.587466, ST_GeomFromText('POINT(48.6707196 -102.587466)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029390', 'Lake Helen', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Lake Helen', 47.2353231, -100.0588424, ST_GeomFromText('POINT(47.2353231 -100.0588424)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1029392', 'Helle Slough', 'Lake', 'North Dakota', 'ND', 'Williams', 'Tom Berg Lake', 48.5727595, -103.1310566, ST_GeomFromText('POINT(48.5727595 -103.1310566)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1029393', 'Hellick Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Boundary Lake', 48.9282301, -100.247329, ST_GeomFromText('POINT(48.9282301 -100.247329)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029397', 'Hemming Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Metigoshe Lake', 48.9104166, -100.2873634, ST_GeomFromText('POINT(48.9104166 -100.2873634)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029398', 'Henderson Hills', 'Range', 'North Dakota', 'ND', 'McHenry', 'Simcoe', 48.1952862, -100.8031989, ST_GeomFromText('POINT(48.1952862 -100.8031989)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029402', 'Lake Henry', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Tappen South', 46.7718918, -99.6675357, ST_GeomFromText('POINT(46.7718918 -99.6675357)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1029407', 'Herd Lake', 'Lake', 'North Dakota', 'ND', 'Pierce', 'Rugby NW', 48.4920176, -99.9519726, ST_GeomFromText('POINT(48.4920176 -99.9519726)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029414', 'Herrington Lake', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Karlsruhe', 48.0877433, -100.504864, ST_GeomFromText('POINT(48.0877433 -100.504864)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1029422', 'Lake Hester', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Voltaire', 48.0520706, -100.7593385, ST_GeomFromText('POINT(48.0520706 -100.7593385)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1029427', 'Hidatsa Bay', 'Bay', 'North Dakota', 'ND', 'Dunn', 'Saddle Butte SW', 47.6102861, -102.3874016, ST_GeomFromText('POINT(47.6102861 -102.3874016)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029428', 'Hidden Island Coulee', 'Valley', 'North Dakota', 'ND', 'Towner', 'Hansboro NE', 48.9947305, -99.3537457, ST_GeomFromText('POINT(48.9947305 -99.3537457)', 4326), 48.978897, -99.6576392, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029429', 'Hidden Slough', 'Lake', 'North Dakota', 'ND', 'Burke', 'Thompson Lake', 48.637206, -102.4270101, ST_GeomFromText('POINT(48.637206 -102.4270101)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029431', 'Hiddenwood Lake', 'Reservoir', 'North Dakota', 'ND', 'Ward', 'Roseglen', 47.8482195, -101.8014769, ST_GeomFromText('POINT(47.8482195 -101.8014769)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1029454', 'Hilles Lake', 'Lake', 'North Dakota', 'ND', 'Dickey', 'Merricourt NW', 46.187334, -98.9279315, ST_GeomFromText('POINT(46.187334 -98.9279315)', 4326), NULL, NULL, '1980-02-13', '2019-02-27', NULL, NULL, NULL),
  ('1029455', 'Hillesland Lake', 'Lake', 'North Dakota', 'ND', 'Nelson', 'Niagara SW', 47.751228, -97.9970463, ST_GeomFromText('POINT(47.751228 -97.9970463)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1029477', 'Hirshkorn Lake', 'Lake', 'North Dakota', 'ND', 'Wells', 'Fessenden West', 47.6291666, -99.7326577, ST_GeomFromText('POINT(47.6291666 -99.7326577)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1029481', 'Hobart Lake', 'Lake', 'North Dakota', 'ND', 'Barnes', 'Sanborn', 46.922189, -98.1337744, ST_GeomFromText('POINT(46.922189 -98.1337744)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1029483', 'Hoevens Gulch', 'Valley', 'North Dakota', 'ND', 'Dickey', 'Forbes', 45.9394911, -98.8418991, ST_GeomFromText('POINT(45.9394911 -98.8418991)', 4326), 45.9658244, -98.9065797, '1980-02-13', '2017-02-02', NULL, NULL, NULL),
  ('1029488', 'Hofflund Bay', 'Bay', 'North Dakota', 'ND', 'Williams', 'Charlson NW', 48.1675218, -102.9910174, ST_GeomFromText('POINT(48.1675218 -102.9910174)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029492', 'Hogback Ridge', 'Ridge', 'North Dakota', 'ND', 'McHenry', 'Bergen', 48.0253233, -100.6299089, ST_GeomFromText('POINT(48.0253233 -100.6299089)', 4326), NULL, NULL, '1980-02-13', '2017-01-31', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029493', 'Hogs Back Buttes', 'Ridge', 'North Dakota', 'ND', 'Hettinger', 'Burt', 46.2872247, -102.2157134, ST_GeomFromText('POINT(46.2872247 -102.2157134)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029500', 'Holm Lake', 'Lake', 'North Dakota', 'ND', 'Williams', 'Appam', 48.6236206, -103.5436843, ST_GeomFromText('POINT(48.6236206 -103.5436843)', 4326), NULL, NULL, '1980-02-13', '2019-04-27', NULL, NULL, NULL),
  ('1029505', 'Lake Holmes', 'Lake', 'North Dakota', 'ND', 'McLean', 'Peterson Lake', 47.53339, -100.8716913, ST_GeomFromText('POINT(47.53339 -100.8716913)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1029515', 'Holywater Spring', 'Spring', 'North Dakota', 'ND', 'Rolette', 'Lake Upsilon SW', 48.8219462, -99.9420815, ST_GeomFromText('POINT(48.8219462 -99.9420815)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029522', 'Hooker Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Carpenter Lake', 48.959776, -99.8895602, ST_GeomFromText('POINT(48.959776 -99.8895602)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1029524', 'Hoot-E-Too Lake', 'Lake', 'North Dakota', 'ND', 'Griggs', 'Binford NW', 47.6275361, -98.4842349, ST_GeomFromText('POINT(47.6275361 -98.4842349)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1029525', 'Hoover Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Westby Lake', 48.5693126, -102.3681575, ST_GeomFromText('POINT(48.5693126 -102.3681575)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1029533', 'Horgan Ridge', 'Ridge', 'North Dakota', 'ND', 'Pembina', 'Cavalier NW', 48.9472246, -97.6920341, ST_GeomFromText('POINT(48.9472246 -97.6920341)', 4326), NULL, NULL, '1980-02-13', '2017-01-31', NULL, NULL, NULL),
  ('1029534', 'Horse Camp Coulee', 'Valley', 'North Dakota', 'ND', 'Dunn', 'Sanish SE', 47.7747345, -102.6221338, ST_GeomFromText('POINT(47.7747345 -102.6221338)', 4326), 47.7705687, -102.6913024, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029535', 'Horse Creek', 'Stream', 'North Dakota', 'ND', 'Bowman', 'Mud Buttes', 46.1097258, -103.8632604, ST_GeomFromText('POINT(46.1097258 -103.8632604)', 4326), 46.0330587, -103.6885314, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029536', 'Horse Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Golden Valley NW', 47.3836184, -102.1732305, ST_GeomFromText('POINT(47.3836184 -102.1732305)', 4326), 47.3622303, -102.2448984, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029537', 'Horse Lake', 'Lake', 'North Dakota', 'ND', 'Sheridan', 'Horse Lake', 47.3689132, -100.408291, ST_GeomFromText('POINT(47.3689132 -100.408291)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1029538', 'Horse Nose Butte', 'Summit', 'North Dakota', 'ND', 'Dunn', 'Werner', 47.2944554, -102.4315702, ST_GeomFromText('POINT(47.2944554 -102.4315702)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1029540', 'Horsehead Creek', 'Stream', 'North Dakota', 'ND', 'Emmons', 'Cannon Ball SE', 46.3466606, -100.5303984, ST_GeomFromText('POINT(46.3466606 -100.5303984)', 4326), 46.4783255, -100.3876155, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029541', 'Horsehead Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Horsehead Lake', 47.0458259, -99.7881716, ST_GeomFromText('POINT(47.0458259 -99.7881716)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1029542', 'Horsehead Valley', 'Valley', 'North Dakota', 'ND', 'Emmons', 'Hazelton SW', 46.2649922, -100.4026179, ST_GeomFromText('POINT(46.2649922 -100.4026179)', 4326), 46.3683333, -100.4994444, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029544', 'Horseshoe Butte', 'Summit', 'North Dakota', 'ND', 'Morton', 'Glen Ullin', 46.8040809, -101.8187046, ST_GeomFromText('POINT(46.8040809 -101.8187046)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1029545', 'Horseshoe Butte', 'Summit', 'North Dakota', 'ND', 'Oliver', 'Price', 47.066959, -100.9374132, ST_GeomFromText('POINT(47.066959 -100.9374132)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1029546', 'Horseshoe Coulee', 'Valley', 'North Dakota', 'ND', 'Walsh', 'Oakwood', 48.4385977, -97.2928524, ST_GeomFromText('POINT(48.4385977 -97.2928524)', 4326), 48.4372222, -97.2897222, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029547', 'Horseshoe Lake', 'Lake', 'North Dakota', 'ND', 'Nelson', 'Niagara SW', 47.7627345, -97.9754727, ST_GeomFromText('POINT(47.7627345 -97.9754727)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029548', 'Horseshoe Lake', 'Lake', 'North Dakota', 'ND', 'Eddy', 'Horseshoe Lake', 47.8466974, -98.7949831, ST_GeomFromText('POINT(47.8466974 -98.7949831)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1029549', 'Horseshoe Lake', 'Lake', 'North Dakota', 'ND', 'Benson', 'Pleasant Lake', 48.3302139, -99.8033525, ST_GeomFromText('POINT(48.3302139 -99.8033525)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029550', 'Horseshoe Lake', 'Lake', 'North Dakota', 'ND', 'Williams', 'Brush Lake', 48.5942727, -104.0449421, ST_GeomFromText('POINT(48.5942727 -104.0449421)', 4326), NULL, NULL, '1980-02-13', '2019-02-28', NULL, NULL, NULL),
  ('1029551', 'Horseshoe Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Carpenter Lake', 48.9124246, -99.9868595, ST_GeomFromText('POINT(48.9124246 -99.9868595)', 4326), NULL, NULL, '1980-02-13', '2013-09-14', NULL, NULL, NULL),
  ('1029552', 'Horseshoe Lake', 'Lake', 'North Dakota', 'ND', 'Pierce', 'Towner NE', 48.4284356, -100.2595897, ST_GeomFromText('POINT(48.4284356 -100.2595897)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029553', 'Horseshoe Lake', 'Lake', 'North Dakota', 'ND', 'Nelson', 'Lambs Lake', 47.9146391, -98.1245872, ST_GeomFromText('POINT(47.9146391 -98.1245872)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1029554', 'Horseshoe Lake', 'Lake', 'North Dakota', 'ND', 'Burleigh', 'Wing', 47.2271331, -100.250761, ST_GeomFromText('POINT(47.2271331 -100.250761)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1029555', 'Horseshoe Valley', 'Valley', 'North Dakota', 'ND', 'McLean', 'Horseshoe Valley', 47.6927783, -100.964313, ST_GeomFromText('POINT(47.6927783 -100.964313)', 4326), 47.7494444, -100.9022222, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029556', 'Lake Hoskins', 'Lake', 'North Dakota', 'ND', 'McIntosh', 'Ashley West', 46.0403941, -99.4513805, ST_GeomFromText('POINT(46.0403941 -99.4513805)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1029561', 'Howard Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Lake Upsilon SW', 48.8653389, -99.9445328, ST_GeomFromText('POINT(48.8653389 -99.9445328)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029563', 'Howells Lake', 'Lake', 'North Dakota', 'ND', 'McLean', 'Pelican Lake', 47.5264524, -100.6792269, ST_GeomFromText('POINT(47.5264524 -100.6792269)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1029568', 'Huff Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Carpenter Lake', 48.931079, -99.9160262, ST_GeomFromText('POINT(48.931079 -99.9160262)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1029569', 'Hufty Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Lake Upsilon', 48.9482634, -99.7746514, ST_GeomFromText('POINT(48.9482634 -99.7746514)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1029573', 'Hulse Coulee', 'Valley', 'North Dakota', 'ND', 'Bottineau', 'Westhope', 48.9680751, -101.0929344, ST_GeomFromText('POINT(48.9680751 -101.0929344)', 4326), 48.9830755, -101.3362696, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029574', 'Hungry Gulch', 'Valley', 'North Dakota', 'ND', 'Williams', 'Cussicks Spring', 48.1891878, -103.1796302, ST_GeomFromText('POINT(48.1891878 -103.1796302)', 4326), 48.2361111, -103.1988889, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029575', 'Hungry Gulch Spring', 'Spring', 'North Dakota', 'ND', 'Williams', 'Cussicks Spring', 48.2196645, -103.1936731, ST_GeomFromText('POINT(48.2196645 -103.1936731)', 4326), NULL, NULL, '1980-02-13', '2011-04-19', NULL, NULL, NULL),
  ('1029576', 'Hungry Man Butte', 'Summit', 'North Dakota', 'ND', 'Billings', 'Hungry Man Butte', 47.2421091, -103.0555344, ST_GeomFromText('POINT(47.2421091 -103.0555344)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1029578', 'Hunts Along Bay', 'Bay', 'North Dakota', 'ND', 'McKenzie', 'Sanish NW', 47.9108496, -102.6637979, ST_GeomFromText('POINT(47.9108496 -102.6637979)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029580', 'Hurricane Lake', 'Lake', 'North Dakota', 'ND', 'Pierce', 'Hurricane Lake West', 48.424257, -99.5039873, ST_GeomFromText('POINT(48.424257 -99.5039873)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1029583', 'Hutchinson Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Lake Helen', 47.1749488, -100.0969773, ST_GeomFromText('POINT(47.1749488 -100.0969773)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029585', 'Hyatt Slough', 'Lake', 'North Dakota', 'ND', 'Dickey', 'Hecla', 45.9534724, -98.1424346, ST_GeomFromText('POINT(45.9534724 -98.1424346)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1029588', 'Lake Ibsen', 'Lake', 'North Dakota', 'ND', 'Benson', 'Leeds', 48.2604227, -99.4009871, ST_GeomFromText('POINT(48.2604227 -99.4009871)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1029589', 'Icelandic Coulee', 'Valley', 'North Dakota', 'ND', 'Pembina', 'Bathgate NE', 48.9374881, -97.2889572, ST_GeomFromText('POINT(48.9374881 -97.2889572)', 4326), 48.8666542, -97.2781258, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029591', 'Lake Ilo', 'Reservoir', 'North Dakota', 'ND', 'Dunn', 'Lake Ilo', 47.3432072, -102.668402, ST_GeomFromText('POINT(47.3432072 -102.668402)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1029608', 'Independence Point', 'Cape', 'North Dakota', 'ND', 'Dunn', 'New Town SE', 47.7780653, -102.3526782, ST_GeomFromText('POINT(47.7780653 -102.3526782)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029609', 'Indian Butte', 'Summit', 'North Dakota', 'ND', 'Stark', 'Indian Butte', 46.9592142, -102.1981502, ST_GeomFromText('POINT(46.9592142 -102.1981502)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1029610', 'Indian Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Fairfield SE', 47.0289027, -103.064902, ST_GeomFromText('POINT(47.0289027 -103.064902)', 4326), 47.1247222, -103.0472222, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029611', 'Indian Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Williston SE', 48.054469, -103.5871412, ST_GeomFromText('POINT(48.054469 -103.5871412)', 4326), 48.0158333, -103.6222222, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029612', 'Indian Creek', 'Stream', 'North Dakota', 'ND', 'Hettinger', 'Regent', 46.4344491, -102.5704416, ST_GeomFromText('POINT(46.4344491 -102.5704416)', 4326), 46.2938933, -102.5812699, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029613', 'Indian Creek', 'Stream', 'North Dakota', 'ND', 'Rolette', 'Dunseith', 48.8300016, -100.0712448, ST_GeomFromText('POINT(48.8300016 -100.0712448)', 4326), 48.9008357, -100.0059628, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029615', 'Indian Hill', 'Summit', 'North Dakota', 'ND', 'Williams', 'Appam', 48.6138837, -103.5744152, ST_GeomFromText('POINT(48.6138837 -103.5744152)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1029624', 'Iowa Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Kunkel Lake', 47.12237, -99.6288795, ST_GeomFromText('POINT(47.12237 -99.6288795)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1029627', 'Lake Irvine', 'Lake', 'North Dakota', 'ND', 'Ramsey', 'Churchs Ferry', 48.2934022, -99.150223, ST_GeomFromText('POINT(48.2934022 -99.150223)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1029628', 'Lake Isabel', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Tappen South', 46.8188452, -99.7499433, ST_GeomFromText('POINT(46.8188452 -99.7499433)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1029629', 'Island Lake', 'Lake', 'North Dakota', 'ND', 'Barnes', 'Spiritwood', 46.9014155, -98.3916147, ST_GeomFromText('POINT(46.9014155 -98.3916147)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1029630', 'Island Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Island Lake', 48.574288, -99.6912206, ST_GeomFromText('POINT(48.574288 -99.6912206)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1029631', 'Island Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Helde Lake', 48.6752871, -102.5142021, ST_GeomFromText('POINT(48.6752871 -102.5142021)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1029632', 'Island Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Boundary Lake', 48.902529, -100.2129703, ST_GeomFromText('POINT(48.902529 -100.2129703)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029633', 'Island Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Carpenter Lake', 48.962097, -99.8818758, ST_GeomFromText('POINT(48.962097 -99.8818758)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1029634', 'Island Lake', 'Lake', 'North Dakota', 'ND', 'Logan', 'Wishek NE', 46.3754593, -99.5825775, ST_GeomFromText('POINT(46.3754593 -99.5825775)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029639', 'Iverson Slough', 'Lake', 'North Dakota', 'ND', 'Burke', 'Thompson Lake', 48.6633413, -102.415252, ST_GeomFromText('POINT(48.6633413 -102.415252)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029640', 'Jack Lake', 'Lake', 'North Dakota', 'ND', 'Foster', 'Bordulac NE', 47.4136771, -98.8227134, ST_GeomFromText('POINT(47.4136771 -98.8227134)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1029641', 'Jack Power Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Donnybrook', 48.5080762, -101.884884, ST_GeomFromText('POINT(48.5080762 -101.884884)', 4326), 48.4972427, -101.9004396, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029642', 'Jackrabbit Butte', 'Summit', 'North Dakota', 'ND', 'Morton', 'Dengate', 46.8145935, -101.6676564, ST_GeomFromText('POINT(46.8145935 -101.6676564)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1029643', 'Jacks Lookout', 'Summit', 'North Dakota', 'ND', 'Grant', 'Coffin Buttes', 46.1541214, -101.9615364, ST_GeomFromText('POINT(46.1541214 -101.9615364)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1029644', 'Jaff Slough', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Cleveland SE', 46.8675794, -99.0931881, ST_GeomFromText('POINT(46.8675794 -99.0931881)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1029651', 'Jamestown Reservoir', 'Reservoir', 'North Dakota', 'ND', 'Stutsman', 'Fried', 47.0217253, -98.7354915, ST_GeomFromText('POINT(47.0217253 -98.7354915)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1029652', 'Jarvis Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Lake Upsilon', 48.9211119, -99.8528137, ST_GeomFromText('POINT(48.9211119 -99.8528137)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029653', 'Jay Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Carpenter Lake', 48.9452589, -99.9486121, ST_GeomFromText('POINT(48.9452589 -99.9486121)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1029656', 'Jensen Lake', 'Lake', 'North Dakota', 'ND', 'Divide', 'Hamlet', 48.6652103, -103.0631502, ST_GeomFromText('POINT(48.6652103 -103.0631502)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029657', 'Jensen Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Vanville NE', 48.6269218, -102.3354392, ST_GeomFromText('POINT(48.6269218 -102.3354392)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029658', 'Jerrys Slough', 'Lake', 'North Dakota', 'ND', 'Burke', 'Thompson Lake', 48.6408899, -102.4232525, ST_GeomFromText('POINT(48.6408899 -102.4232525)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029660', 'Lake Jessie', 'Lake', 'North Dakota', 'ND', 'Griggs', 'Binford', 47.550772, -98.2882046, ST_GeomFromText('POINT(47.550772 -98.2882046)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1029663', 'Jim Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Mandaree SW', 47.5194561, -102.6818527, ST_GeomFromText('POINT(47.5194561 -102.6818527)', 4326), 47.4722363, -102.8924093, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029664', 'Jim Lake', 'Reservoir', 'North Dakota', 'ND', 'Stutsman', 'Jim Lake', 47.177281, -98.8188214, ST_GeomFromText('POINT(47.177281 -98.8188214)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1029665', 'Jimmy Creek', 'Stream', 'North Dakota', 'ND', 'Stark', 'Gladstone', 46.7819508, -102.607122, ST_GeomFromText('POINT(46.7819508 -102.607122)', 4326), 46.6986171, -102.6143411, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029666', 'Joe Bush Creek', 'Stream', 'North Dakota', 'ND', 'Sioux', 'Mahto NE', 45.9391634, -100.5373514, ST_GeomFromText('POINT(45.9391634 -100.5373514)', 4326), 45.9624985, -100.7270741, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029670', 'Johnny Anderson Slough', 'Lake', 'North Dakota', 'ND', 'Williams', 'Twin Lakes', 48.4602746, -103.5114361, ST_GeomFromText('POINT(48.4602746 -103.5114361)', 4326), NULL, NULL, '1980-02-13', '2019-04-27', NULL, NULL, NULL),
  ('1029671', 'Johns Lake', 'Lake', 'North Dakota', 'ND', 'Sheridan', 'McClusky', 47.3805473, -100.4833616, ST_GeomFromText('POINT(47.3805473 -100.4833616)', 4326), NULL, NULL, '1980-02-13', '2025-02-26', NULL, NULL, NULL),
  ('1029679', 'Johnson Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Carpio', 48.4339057, -101.696551, ST_GeomFromText('POINT(48.4339057 -101.696551)', 4326), 48.3977778, -101.7411111, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029680', 'Johnson Lake', 'Lake', 'North Dakota', 'ND', 'Nelson', 'Johnson Lake', 47.6754789, -98.5238094, ST_GeomFromText('POINT(47.6754789 -98.5238094)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1029681', 'Johnson Lake', 'Lake', 'North Dakota', 'ND', 'Sheridan', 'Martin', 47.7653228, -100.1084567, ST_GeomFromText('POINT(47.7653228 -100.1084567)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1029682', 'Johnson Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Lake Upsilon SW', 48.8693939, -99.9300327, ST_GeomFromText('POINT(48.8693939 -99.9300327)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029688', 'Johnsons Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Helde Lake', 48.7469776, -102.5945448, ST_GeomFromText('POINT(48.7469776 -102.5945448)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1029692', 'Jones Lake', 'Lake', 'North Dakota', 'ND', 'Griggs', 'Sutton NE', 47.4399204, -98.3225782, ST_GeomFromText('POINT(47.4399204 -98.3225782)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1029693', 'Jones Lake', 'Lake', 'North Dakota', 'ND', 'Sheridan', 'Mertz Slough', 47.5433378, -100.2267082, ST_GeomFromText('POINT(47.5433378 -100.2267082)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1029694', 'Jones Lake', 'Lake', 'North Dakota', 'ND', 'Nelson', 'Bartlett', 48.0223993, -98.3862809, ST_GeomFromText('POINT(48.0223993 -98.3862809)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1029695', 'Jones Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'International Peace Garden', 48.9055176, -100.0662375, ST_GeomFromText('POINT(48.9055176 -100.0662375)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029697', 'Lake Josephine', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Tuttle', 47.1811689, -99.9999044, ST_GeomFromText('POINT(47.1811689 -99.9999044)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1029699', 'Juanita Lake', 'Lake', 'North Dakota', 'ND', 'Foster', 'Juanita', 47.5536052, -98.7355769, ST_GeomFromText('POINT(47.5536052 -98.7355769)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029700', 'Jud Chrests Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Helde Lake', 48.7182704, -102.5132846, ST_GeomFromText('POINT(48.7182704 -102.5132846)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1029703', 'Juneau Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Boundary Lake', 48.8897402, -100.2281624, ST_GeomFromText('POINT(48.8897402 -100.2281624)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029704', 'Jung Lake', 'Reservoir', 'North Dakota', 'ND', 'Hettinger', 'Jung Lake', 46.4272592, -102.8406006, ST_GeomFromText('POINT(46.4272592 -102.8406006)', 4326), NULL, NULL, '1980-02-13', '2019-02-21', NULL, NULL, NULL),
  ('1029708', 'Kalina Lake', 'Reservoir', 'North Dakota', 'ND', 'Bowman', 'Bowman', 46.1485168, -103.4784155, ST_GeomFromText('POINT(46.1485168 -103.4784155)', 4326), NULL, NULL, '1980-02-13', '2019-02-21', NULL, NULL, NULL),
  ('1029709', 'Kandiotta Lake', 'Lake', 'North Dakota', 'ND', 'Sargent', 'Cayuga NW', 46.144172, -97.4900261, ST_GeomFromText('POINT(46.144172 -97.4900261)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1029710', 'Kandolph Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Des Lacs', 48.2994555, -101.5034982, ST_GeomFromText('POINT(48.2994555 -101.5034982)', 4326), 48.2822222, -101.5766667, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029711', 'Kandt Lake', 'Lake', 'North Dakota', 'ND', 'Sheridan', 'Drake SW', 47.8136991, -100.4614998, ST_GeomFromText('POINT(47.8136991 -100.4614998)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1029713', 'Karlsen Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Des Lacs', 48.3683472, -101.5729411, ST_GeomFromText('POINT(48.3683472 -101.5729411)', 4326), 48.3483333, -101.6075, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029719', 'Kee Lake', 'Lake', 'North Dakota', 'ND', 'Barnes', 'Eckelson SE', 46.8462971, -98.2854996, ST_GeomFromText('POINT(46.8462971 -98.2854996)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1029720', 'Keever Butte', 'Summit', 'North Dakota', 'ND', 'Burleigh', 'Keever Butte', 46.9420882, -100.6943965, ST_GeomFromText('POINT(46.9420882 -100.6943965)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029721', 'Kelly Creek', 'Stream', 'North Dakota', 'ND', 'Foster', 'Bordulac NE', 47.3888856, -98.7989947, ST_GeomFromText('POINT(47.3888856 -98.7989947)', 4326), 47.5980537, -99.1215035, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029723', 'Kelly Slough', 'Stream', 'North Dakota', 'ND', 'Grand Forks', 'Manvel', 48.0083178, -97.2253569, ST_GeomFromText('POINT(48.0083178 -97.2253569)', 4326), 47.9383197, -97.3634168, '1980-02-13', NULL, 'Official', 'Board Decision', '1937-01-01'),
  ('1029726', 'Kemp Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Surrey', 48.1316766, -101.1382128, ST_GeomFromText('POINT(48.1316766 -101.1382128)', 4326), 48.0966753, -101.4357196, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029733', 'Kettle Lake', 'Lake', 'North Dakota', 'ND', 'Williams', 'Appam', 48.6071002, -103.6238867, ST_GeomFromText('POINT(48.6071002 -103.6238867)', 4326), NULL, NULL, '1980-02-13', '2019-04-27', NULL, NULL, NULL),
  ('1029734', 'Kid Creek', 'Stream', 'North Dakota', 'ND', 'Bowman', 'Kid Creek', 46.1605598, -103.8907612, ST_GeomFromText('POINT(46.1605598 -103.8907612)', 4326), 46.1480556, -103.9897222, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029737', 'Kiefer Buttes', 'Range', 'North Dakota', 'ND', 'Emmons', 'Kiefer Buttes', 46.0586057, -100.4567915, ST_GeomFromText('POINT(46.0586057 -100.4567915)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029738', 'Kilgore Lake', 'Lake', 'North Dakota', 'ND', 'Pierce', 'Balta NW', 48.1642258, -100.1423703, ST_GeomFromText('POINT(48.1642258 -100.1423703)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1029741', 'Killdeer Mountains', 'Range', 'North Dakota', 'ND', 'Dunn', 'Killdeer Mountains', 47.445848, -102.932687, ST_GeomFromText('POINT(47.445848 -102.932687)', 4326), NULL, NULL, '1980-02-13', '2015-02-16', NULL, NULL, NULL),
  ('1029742', 'Killian Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Donnybrook', 48.5055761, -101.8798839, ST_GeomFromText('POINT(48.5055761 -101.8798839)', 4326), 48.5011111, -101.8880556, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029744', 'Kindschi Lake', 'Lake', 'North Dakota', 'ND', 'Sheridan', 'Lincoln Valley SE', 47.6000083, -100.3390291, ST_GeomFromText('POINT(47.6000083 -100.3390291)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029745', 'Kinneman Creek', 'Stream', 'North Dakota', 'ND', 'Mercer', 'Hazen East', 47.3227794, -101.5187737, ST_GeomFromText('POINT(47.3227794 -101.5187737)', 4326), 47.1875005, -101.4746012, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029747', 'Kirkland Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Thompson Lake', 48.6902999, -102.4896944, ST_GeomFromText('POINT(48.6902999 -102.4896944)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1029748', 'Kishpaugh Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Rolette SW', 48.5548308, -99.9038105, ST_GeomFromText('POINT(48.5548308 -99.9038105)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029749', 'Kittelson Slough', 'Lake', 'North Dakota', 'ND', 'Mountrail', 'Lostwood Lakes', 48.5041059, -102.4672224, ST_GeomFromText('POINT(48.5041059 -102.4672224)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1029751', 'Kjemhus Hill', 'Summit', 'North Dakota', 'ND', 'Cavalier', 'Vang', 48.9847068, -98.1104309, ST_GeomFromText('POINT(48.9847068 -98.1104309)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL),
  ('1029754', 'Klebe Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Metigoshe Lake', 48.9776248, -100.293074, ST_GeomFromText('POINT(48.9776248 -100.293074)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029755', 'Kleiter Slough', 'Swamp', 'North Dakota', 'ND', 'Kidder', 'Tappen NE', 46.9998134, -99.5638661, ST_GeomFromText('POINT(46.9998134 -99.5638661)', 4326), NULL, NULL, '1980-02-13', '2013-09-14', NULL, NULL, NULL),
  ('1029756', 'Klondike Butte', 'Summit', 'North Dakota', 'ND', 'Morton', 'New Salem', 46.7668614, -101.4561781, ST_GeomFromText('POINT(46.7668614 -101.4561781)', 4326), NULL, NULL, '1980-02-13', '2025-05-03', NULL, NULL, NULL),
  ('1029763', 'Knudson Slough', 'Lake', 'North Dakota', 'ND', 'Burke', 'Lostwood Lakes', 48.5874268, -102.4425626, ST_GeomFromText('POINT(48.5874268 -102.4425626)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1029764', 'Knudsvig Lake', 'Lake', 'North Dakota', 'ND', 'Williams', 'Appam', 48.6214059, -103.602361, ST_GeomFromText('POINT(48.6214059 -103.602361)', 4326), NULL, NULL, '1980-02-13', '2019-04-27', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029776', 'Kreiser Lake', 'Lake', 'North Dakota', 'ND', 'Richland', 'Kreiser Lake', 46.1329659, -97.2193543, ST_GeomFromText('POINT(46.1329659 -97.2193543)', 4326), NULL, NULL, '1980-02-13', '2023-05-26', NULL, NULL, NULL),
  ('1029777', 'Kremer Lake', 'Lake', 'North Dakota', 'ND', 'Emmons', 'Grassna NE', 46.2298957, -100.3706868, ST_GeomFromText('POINT(46.2298957 -100.3706868)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1029780', 'Krueger Lake', 'Lake', 'North Dakota', 'ND', 'Sheridan', 'Kief', 47.770379, -100.5022093, ST_GeomFromText('POINT(47.770379 -100.5022093)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1029782', 'Kunkel Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Kunkel Lake', 47.0413614, -99.6392261, ST_GeomFromText('POINT(47.0413614 -99.6392261)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1029784', 'Kurtz Creek', 'Stream', 'North Dakota', 'ND', 'Morton', 'Dengate', 46.8177818, -101.7209843, ST_GeomFromText('POINT(46.8177818 -101.7209843)', 4326), 46.7691709, -101.7609849, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029788', 'La Belle Creek', 'Stream', 'North Dakota', 'ND', 'Sargent', 'Veblen NE', 45.99562, -97.32604, ST_GeomFromText('POINT(45.99562 -97.32604)', 4326), 45.83801, -97.43927, '1980-02-13', '2011-06-01', NULL, NULL, NULL),
  ('1029790', 'LaPorte Coulee', 'Valley', 'North Dakota', 'ND', 'Bottineau', 'Deep', 48.7161256, -100.828759, ST_GeomFromText('POINT(48.7161256 -100.828759)', 4326), 48.7089056, -100.8895949, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029791', 'Lake Alice', 'Lake', 'North Dakota', 'ND', 'Ramsey', 'Cando SE', 48.3474272, -99.1122503, ST_GeomFromText('POINT(48.3474272 -99.1122503)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', 'Official', 'Board Decision', '1973-01-01'),
  ('1029793', 'Lagerquist Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Boundary Lake', 48.9579433, -100.1366329, ST_GeomFromText('POINT(48.9579433 -100.1366329)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029794', 'Lagorin Slough', 'Lake', 'North Dakota', 'ND', 'Burke', 'Mosquito Butte', 48.582309, -102.2444848, ST_GeomFromText('POINT(48.582309 -102.2444848)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029796', 'Laird Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Lake Upsilon', 48.9526791, -99.8707627, ST_GeomFromText('POINT(48.9526791 -99.8707627)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1029828', 'Langdon Reservoir', 'Reservoir', 'North Dakota', 'ND', 'Cavalier', 'Langdon West', 48.7572479, -98.3814094, ST_GeomFromText('POINT(48.7572479 -98.3814094)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1029835', 'Lake Laretta', 'Lake', 'North Dakota', 'ND', 'Nelson', 'Michigan West', 48.0684669, -98.1704931, ST_GeomFromText('POINT(48.0684669 -98.1704931)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1029841', 'Larson Lake', 'Lake', 'North Dakota', 'ND', 'Hettinger', 'Regent', 46.4272935, -102.514184, ST_GeomFromText('POINT(46.4272935 -102.514184)', 4326), NULL, NULL, '1980-02-13', '2019-02-21', NULL, NULL, NULL),
  ('1029842', 'Larson Slough', 'Lake', 'North Dakota', 'ND', 'Barnes', 'Pillsbury SW', 47.0718762, -97.9381114, ST_GeomFromText('POINT(47.0718762 -97.9381114)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1029843', 'Larsons Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Burlington', 48.284455, -101.4512754, ST_GeomFromText('POINT(48.284455 -101.4512754)', 4326), 48.2363986, -101.5415542, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029844', 'Lashman Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Lake Upsilon', 48.9688369, -99.8632364, ST_GeomFromText('POINT(48.9688369 -99.8632364)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1029845', 'Lauinger Lake', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Rangeley', 48.1231243, -100.4207321, ST_GeomFromText('POINT(48.1231243 -100.4207321)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1029846', 'Lawson Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Tolley SE', 48.5022424, -101.8593284, ST_GeomFromText('POINT(48.5022424 -101.8593284)', 4326), 48.5111111, -101.8591667, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029849', 'Le Paul Slough', 'Reservoir', 'North Dakota', 'ND', 'Dunn', 'Lake Ilo', 47.3253023, -102.6396229, ST_GeomFromText('POINT(47.3253023 -102.6396229)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029850', 'Leaf on the Hill Creek', 'Stream', 'North Dakota', 'ND', 'Sioux', 'Bell Coulee East', 46.1313916, -101.2676307, ST_GeomFromText('POINT(46.1313916 -101.2676307)', 4326), 45.990558, -101.2056849, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029851', 'Leaf-on Hill', 'Summit', 'North Dakota', 'ND', 'Sioux', 'Tatanka Lake', 45.9889134, -101.2063873, ST_GeomFromText('POINT(45.9889134 -101.2063873)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1029855', 'Lee Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Metigoshe Lake', 48.8911827, -100.2720178, ST_GeomFromText('POINT(48.8911827 -100.2720178)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029859', 'Legreid Lake', 'Lake', 'North Dakota', 'ND', 'Benson', 'Hesper', 47.9333126, -99.6457415, ST_GeomFromText('POINT(47.9333126 -99.6457415)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1029863', 'Lake Lemer', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Rangeley SE', 48.0765827, -100.3442946, ST_GeomFromText('POINT(48.0765827 -100.3442946)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1029868', 'Lesmeister Lake', 'Lake', 'North Dakota', 'ND', 'Pierce', 'Clifton', 47.9912051, -100.007273, ST_GeomFromText('POINT(47.9912051 -100.007273)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1029884', 'Lighting Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Manning', 47.161958, -102.7818511, ST_GeomFromText('POINT(47.161958 -102.7818511)', 4326), 47.0775123, -102.8004613, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029885', 'Lightning Creek', 'Stream', 'North Dakota', 'ND', 'Adams', 'Cow Butte', 45.9486148, -102.9234982, ST_GeomFromText('POINT(45.9486148 -102.9234982)', 4326), 46.1069495, -103.2671224, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029890', 'Lime Hills', 'Range', 'North Dakota', 'ND', 'Stark', 'White Butte NE', 46.6450054, -102.3501692, ST_GeomFromText('POINT(46.6450054 -102.3501692)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029915', 'Lindstrom Creek', 'Stream', 'North Dakota', 'ND', 'Grant', 'Heart Butte', 46.6697276, -101.7965389, ST_GeomFromText('POINT(46.6697276 -101.7965389)', 4326), 46.74, -101.7855556, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029922', 'Little Beaver Creek', 'Stream', 'North Dakota', 'ND', 'Emmons', 'Fort Yates NE', 46.2174942, -100.5490119, ST_GeomFromText('POINT(46.2174942 -100.5490119)', 4326), 46.0499922, -100.2426199, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029924', 'Little Butte', 'Summit', 'North Dakota', 'ND', 'McHenry', 'Kongsberg NE', 47.9160486, -100.7690048, ST_GeomFromText('POINT(47.9160486 -100.7690048)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1029925', 'Little Butte', 'Summit', 'North Dakota', 'ND', 'Burke', 'Vanville NE', 48.6430328, -102.3043871, ST_GeomFromText('POINT(48.6430328 -102.3043871)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1029927', 'Little Coulee', 'Valley', 'North Dakota', 'ND', 'Benson', 'Tilden', 48.1872205, -99.2276345, ST_GeomFromText('POINT(48.1872205 -99.2276345)', 4326), 48.1869444, -99.2272222, '1980-02-13', NULL, 'Official', 'Board Decision', '1961-01-01'),
  ('1029929', 'Little Deep Creek', 'Stream', 'North Dakota', 'ND', 'Renville', 'Mouse River Park NE', 48.9258515, -101.7523844, ST_GeomFromText('POINT(48.9258515 -101.7523844)', 4326), 48.9352778, -101.7747222, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029930', 'Little Deep Creek', 'Stream', 'North Dakota', 'ND', 'McHenry', 'Newburg SE', 48.5819578, -100.8743125, ST_GeomFromText('POINT(48.5819578 -100.8743125)', 4326), 48.9355735, -101.7754402, '1980-02-13', NULL, 'Official', 'Board Decision', '1976-01-01'),
  ('1029935', 'Little Goose River', 'Stream', 'North Dakota', 'ND', 'Grand Forks', 'Northwood', 47.745822, -97.6223095, ST_GeomFromText('POINT(47.745822 -97.6223095)', 4326), 47.967493, -97.8753718, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029936', 'Little Gurr Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Thorne', 48.6895059, -99.8789341, ST_GeomFromText('POINT(48.6895059 -99.8789341)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029938', 'Little Heart Flats', 'Lake', 'North Dakota', 'ND', 'Sioux', 'Froelich Dam', 46.1340871, -100.9853883, ST_GeomFromText('POINT(46.1340871 -100.9853883)', 4326), NULL, NULL, '1980-02-13', '2019-03-07', NULL, NULL, NULL),
  ('1029939', 'Little Heart River', 'Stream', 'North Dakota', 'ND', 'Morton', 'Schmidt', 46.6863834, -100.7867943, ST_GeomFromText('POINT(46.6863834 -100.7867943)', 4326), 46.6588868, -101.1634733, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029940', 'Little Horseshoe Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Carpenter Lake', 48.90575, -99.988461, ST_GeomFromText('POINT(48.90575 -99.988461)', 4326), NULL, NULL, '1980-02-13', '2024-10-10', NULL, NULL, NULL),
  ('1029941', 'Little Knife River', 'Stream', 'North Dakota', 'ND', 'Mountrail', 'Rat Lake SE', 48.0311272, -102.5285141, ST_GeomFromText('POINT(48.0311272 -102.5285141)', 4326), 48.3075185, -102.3068368, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029944', 'Little North Pembina River', 'Stream', 'North Dakota', 'ND', 'Cavalier', 'Vang', 48.9308299, -98.0837111, ST_GeomFromText('POINT(48.9308299 -98.0837111)', 4326), 48.9991667, -98.1213889, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029945', 'Little Pipestem Creek', 'Stream', 'North Dakota', 'ND', 'Foster', 'Carrington SW', 47.3727763, -99.2009475, ST_GeomFromText('POINT(47.3727763 -99.2009475)', 4326), 47.2424976, -99.3156701, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029949', 'Little Shell Creek', 'Stream', 'North Dakota', 'ND', 'Mountrail', 'New Town SW', 47.8038997, -102.420459, ST_GeomFromText('POINT(47.8038997 -102.420459)', 4326), 47.8266791, -102.5429636, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029951', 'Little Slough', 'Lake', 'North Dakota', 'ND', 'Burke', 'Portal', 48.9456244, -102.5680414, ST_GeomFromText('POINT(48.9456244 -102.5680414)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029952', 'Little South Pembina River', 'Stream', 'North Dakota', 'ND', 'Cavalier', 'Vang', 48.8983285, -98.0120421, ST_GeomFromText('POINT(48.8983285 -98.0120421)', 4326), 48.7816679, -98.3892839, '1980-02-13', NULL, 'Official', 'Board Decision', '1975-01-01'),
  ('1029954', 'Livingston Creek', 'Stream', 'North Dakota', 'ND', 'Ward', 'Surrey', 48.2261207, -101.2504391, ST_GeomFromText('POINT(48.2261207 -101.2504391)', 4326), 48.3702914, -101.4021068, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1029955', 'Livingston Lake', 'Reservoir', 'North Dakota', 'ND', 'Ward', 'Burlington SE', 48.3382799, -101.3579228, ST_GeomFromText('POINT(48.3382799 -101.3579228)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1029956', 'Lloyds Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Burlington', 48.2913997, -101.4862758, ST_GeomFromText('POINT(48.2913997 -101.4862758)', 4326), 48.2472328, -101.6351646, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029957', 'Lockhart Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'International Peace Garden', 48.9525688, -100.0319418, ST_GeomFromText('POINT(48.9525688 -100.0319418)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029965', 'London Bridge', 'Ridge', 'North Dakota', 'ND', 'Dunn', 'Marshall', 47.2142775, -102.3366429, ST_GeomFromText('POINT(47.2142775 -102.3366429)', 4326), NULL, NULL, '1980-02-13', '2017-01-28', NULL, NULL, NULL),
  ('1029966', 'Lone Butte', 'Summit', 'North Dakota', 'ND', 'Emmons', 'Grassna', 46.0825634, -100.3056908, ST_GeomFromText('POINT(46.0825634 -100.3056908)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1029967', 'Lone Butte', 'Summit', 'North Dakota', 'ND', 'Golden Valley', 'Thelan', 46.7539904, -103.884058, ST_GeomFromText('POINT(46.7539904 -103.884058)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1029968', 'Lonetree Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Des Lacs', 48.3508464, -101.5429415, ST_GeomFromText('POINT(48.3508464 -101.5429415)', 4326), 48.2714008, -101.7034973, '1980-02-13', '2009-04-28', NULL, NULL, NULL),
  ('1029969', 'Lone Tree Creek', 'Stream', 'North Dakota', 'ND', 'Bowman', 'Eagles Nest Butte', 45.98532, -103.47437, ST_GeomFromText('POINT(45.98532 -103.47437)', 4326), 45.8983346, -103.7135327, '1980-02-13', '2011-06-01', NULL, NULL, NULL),
  ('1029970', 'Lone Tree Lake', 'Lake', 'North Dakota', 'ND', 'Ransom', 'Englevale', 46.4211178, -97.9589838, ST_GeomFromText('POINT(46.4211178 -97.9589838)', 4326), NULL, NULL, '1980-02-13', '2023-05-26', NULL, NULL, NULL),
  ('1029971', 'Lone Tree Lake', 'Lake', 'North Dakota', 'ND', 'Steele', 'Luverne', 47.2892801, -97.8910546, ST_GeomFromText('POINT(47.2892801 -97.8910546)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1029972', 'Lone Tree Lake', 'Lake', 'North Dakota', 'ND', 'Sheridan', 'Sheyenne Lake', 47.6595773, -100.1603761, ST_GeomFromText('POINT(47.6595773 -100.1603761)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1029973', 'Lone Tree Lake', 'Lake', 'North Dakota', 'ND', 'Williams', 'Twin Lakes', 48.439278, -103.530208, ST_GeomFromText('POINT(48.439278 -103.530208)', 4326), NULL, NULL, '1980-02-13', '2019-04-27', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029978', 'Lonetree Lake', 'Lake', 'North Dakota', 'ND', 'Burleigh', 'Wing', 47.2024145, -100.2941079, ST_GeomFromText('POINT(47.2024145 -100.2941079)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1029979', 'Long Alakline Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Robinson', 47.2421581, -99.8295095, ST_GeomFromText('POINT(47.2421581 -99.8295095)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1029980', 'Long Butte', 'Summit', 'North Dakota', 'ND', 'Adams', 'Long Butte', 46.1507085, -102.2604676, ST_GeomFromText('POINT(46.1507085 -102.2604676)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1029981', 'Long Butte', 'Summit', 'North Dakota', 'ND', 'Stark', 'Antelope', 46.8433365, -102.1411354, ST_GeomFromText('POINT(46.8433365 -102.1411354)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1029985', 'Long Grassy Butte', 'Ridge', 'North Dakota', 'ND', 'Bowman', 'Camel Butte', 46.0038448, -103.7438303, ST_GeomFromText('POINT(46.0038448 -103.7438303)', 4326), NULL, NULL, '1980-02-13', '2017-01-31', NULL, NULL, NULL),
  ('1029986', 'Long Lake', 'Lake', 'North Dakota', 'ND', 'Griggs', 'Sutton NE', 47.4862122, -98.3362333, ST_GeomFromText('POINT(47.4862122 -98.3362333)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1029987', 'Long Lake', 'Lake', 'North Dakota', 'ND', 'Griggs', 'Binford', 47.5650221, -98.2931876, ST_GeomFromText('POINT(47.5650221 -98.2931876)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1029988', 'Long Lake', 'Lake', 'North Dakota', 'ND', 'McLean', 'Long Lake', 47.7122812, -100.8611777, ST_GeomFromText('POINT(47.7122812 -100.8611777)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1029989', 'Long Lake', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Rangeley SE', 48.0996394, -100.2923536, ST_GeomFromText('POINT(48.0996394 -100.2923536)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1029990', 'Long Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Lake Upsilon', 48.8973444, -99.8438647, ST_GeomFromText('POINT(48.8973444 -99.8438647)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1029991', 'Long Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'International Peace Garden', 48.9373883, -100.0202756, ST_GeomFromText('POINT(48.9373883 -100.0202756)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029992', 'Long Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Lake Klingenberg', 48.9423989, -100.4498855, ST_GeomFromText('POINT(48.9423989 -100.4498855)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029993', 'Long Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Lake Upsilon', 48.9532651, -99.8145862, ST_GeomFromText('POINT(48.9532651 -99.8145862)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1029994', 'Long Lake', 'Reservoir', 'North Dakota', 'ND', 'Burleigh', 'Braddock NE', 46.7193552, -100.1011873, ST_GeomFromText('POINT(46.7193552 -100.1011873)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1029995', 'Long Lake', 'Lake', 'North Dakota', 'ND', 'Pierce', 'Esmond', 48.0824805, -99.8687395, ST_GeomFromText('POINT(48.0824805 -99.8687395)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1029996', 'Long Lake', 'Lake', 'North Dakota', 'ND', 'Benson', 'Pleasant Lake', 48.261395, -99.7873842, ST_GeomFromText('POINT(48.261395 -99.7873842)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029997', 'Long Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Mylo NW', 48.6328888, -99.7210106, ST_GeomFromText('POINT(48.6328888 -99.7210106)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1029998', 'Long Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Carpenter Lake', 48.9094449, -99.9952301, ST_GeomFromText('POINT(48.9094449 -99.9952301)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1029999', 'Long Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Lake Upsilon', 48.9159036, -99.8733166, ST_GeomFromText('POINT(48.9159036 -99.8733166)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1030000', 'Long Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Metigoshe Lake', 48.9246562, -100.2561976, ST_GeomFromText('POINT(48.9246562 -100.2561976)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030001', 'Long Lake Creek', 'Stream', 'North Dakota', 'ND', 'Burleigh', 'McKenzie', 46.7747142, -100.4359498, ST_GeomFromText('POINT(46.7747142 -100.4359498)', 4326), 46.3644282, -99.9428866, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030009', 'Lookout Butte', 'Summit', 'North Dakota', 'ND', 'Emmons', 'Kiefer Buttes', 46.0212492, -100.4650199, ST_GeomFromText('POINT(46.0212492 -100.4650199)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1030010', 'Lookout Butte', 'Summit', 'North Dakota', 'ND', 'Grant', 'Lookout Butte', 46.1065517, -101.435985, ST_GeomFromText('POINT(46.1065517 -101.435985)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1030011', 'Lookout Mountain', 'Summit', 'North Dakota', 'ND', 'Eddy', 'Warwick', 47.8209497, -98.6835766, ST_GeomFromText('POINT(47.8209497 -98.6835766)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1030012', 'Lookout Point', 'Cliff', 'North Dakota', 'ND', 'Pembina', 'Walhalla', 48.9108284, -97.9256485, ST_GeomFromText('POINT(48.9108284 -97.9256485)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030013', 'Loon Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Metigoshe Lake', 48.9346842, -100.3091113, ST_GeomFromText('POINT(48.9346842 -100.3091113)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1030018', 'Lords Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Lords Lake', 48.7809589, -100.1983002, ST_GeomFromText('POINT(48.7809589 -100.1983002)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1030022', 'Lost Lake', 'Lake', 'North Dakota', 'ND', 'McLean', 'Turtle Creek SW', 47.2558407, -100.8979767, ST_GeomFromText('POINT(47.2558407 -100.8979767)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1030026', 'Louden Coulee', 'Valley', 'North Dakota', 'ND', 'Pembina', 'Bathgate NE', 48.9113773, -97.3297934, ST_GeomFromText('POINT(48.9113773 -97.3297934)', 4326), 48.9641589, -97.5942459, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030027', 'Lake Louise', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Lake Louise', 47.0505741, -99.4519011, ST_GeomFromText('POINT(47.0505741 -99.4519011)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030028', 'Louse Creek', 'Stream', 'North Dakota', 'ND', 'Morton', 'Timmer', 46.363888, -101.016245, ST_GeomFromText('POINT(46.363888 -101.016245)', 4326), 46.3630609, -101.5237521, '1980-02-13', NULL, 'Official', 'Board Decision', '1976-01-01'),
  ('1030029', 'Lower Branch Rush River', 'Stream', 'North Dakota', 'ND', 'Cass', 'West Fargo North', 46.9794121, -96.9003604, ST_GeomFromText('POINT(46.9794121 -96.9003604)', 4326), 46.9635838, -97.1292536, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030030', 'Lower Des Lacs Lake', 'Reservoir', 'North Dakota', 'ND', 'Ward', 'Donnybrook', 48.5958439, -101.9998945, ST_GeomFromText('POINT(48.5958439 -101.9998945)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1030031', 'Lower Lostwood Lake', 'Lake', 'North Dakota', 'ND', 'Mountrail', 'Lostwood Lakes', 48.5400915, -102.4559734, ST_GeomFromText('POINT(48.5400915 -102.4559734)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1030036', 'Lucies Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Belcourt', 48.8169643, -99.6714332, ST_GeomFromText('POINT(48.8169643 -99.6714332)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1030038', 'Lucky Mound Creek Bay', 'Bay', 'North Dakota', 'ND', 'McLean', 'New Town SE', 47.7844536, -102.2537841, ST_GeomFromText('POINT(47.7844536 -102.2537841)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030041', 'Lueck Lake', 'Lake', 'North Dakota', 'ND', 'Richland', 'Swan Lake', 46.0285343, -97.0421918, ST_GeomFromText('POINT(46.0285343 -97.0421918)', 4326), NULL, NULL, '1980-02-13', '2023-05-26', NULL, NULL, NULL),
  ('1030042', 'Lunby Lake', 'Lake', 'North Dakota', 'ND', 'Grand Forks', 'Mekinock', 48.043989, -97.2775563, ST_GeomFromText('POINT(48.043989 -97.2775563)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1030050', 'Lyde Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'International Peace Garden', 48.9355176, -100.0598034, ST_GeomFromText('POINT(48.9355176 -100.0598034)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1030052', 'Lynch Lake', 'Lake', 'North Dakota', 'ND', 'Steele', 'Blabon', 47.4828417, -97.8302638, ST_GeomFromText('POINT(47.4828417 -97.8302638)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030060', 'Mackay Island', 'Island', 'North Dakota', 'ND', 'Bottineau', 'Metigoshe Lake', 48.9758434, -100.3473624, ST_GeomFromText('POINT(48.9758434 -100.3473624)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030061', 'Mackobee Coulee', 'Valley', 'North Dakota', 'ND', 'Renville', 'Carpio NE', 48.474184, -101.5793285, ST_GeomFromText('POINT(48.474184 -101.5793285)', 4326), 48.5889094, -101.7226619, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030065', 'Magog Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Carpenter Lake', 48.8823712, -99.9451219, ST_GeomFromText('POINT(48.8823712 -99.9451219)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1030067', 'Maier Lake', 'Lake', 'North Dakota', 'ND', 'Emmons', 'Grassna NE', 46.241056, -100.2794544, ST_GeomFromText('POINT(46.241056 -100.2794544)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1030071', 'Mallard Island', 'Island', 'North Dakota', 'ND', 'McLean', 'Riverdale North', 47.5666658, -101.3123802, ST_GeomFromText('POINT(47.5666658 -101.3123802)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030072', 'Mallard Lake', 'Lake', 'North Dakota', 'ND', 'Benson', 'Tokio', 47.889809, -98.8019372, ST_GeomFromText('POINT(47.889809 -98.8019372)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1030073', 'Mallard Lake', 'Lake', 'North Dakota', 'ND', 'Benson', 'Fort Totten', 47.9890098, -98.900131, ST_GeomFromText('POINT(47.9890098 -98.900131)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1030074', 'Malnourie Creek', 'Stream', 'North Dakota', 'ND', 'Mercer', 'Raub SE', 47.5216718, -102.1168402, ST_GeomFromText('POINT(47.5216718 -102.1168402)', 4326), 47.5286168, -102.2048969, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030077', 'Mandan Bay', 'Bay', 'North Dakota', 'ND', 'Dunn', 'Twin Buttes', 47.5713951, -102.2171188, ST_GeomFromText('POINT(47.5713951 -102.2171188)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030078', 'Mandan Lake', 'Lake', 'North Dakota', 'ND', 'Oliver', 'Fort Clark', 47.2466568, -101.1811748, ST_GeomFromText('POINT(47.2466568 -101.1811748)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030086', 'Lake Mann', 'Lake', 'North Dakota', 'ND', 'Sargent', 'Rutland', 46.0244664, -97.5319343, ST_GeomFromText('POINT(46.0244664 -97.5319343)', 4326), NULL, NULL, '1980-02-13', '2023-05-26', NULL, NULL, NULL),
  ('1030087', 'Mannie Lake', 'Lake', 'North Dakota', 'ND', 'Nelson', 'Binford NE', 47.6975246, -98.3726509, ST_GeomFromText('POINT(47.6975246 -98.3726509)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1030092', 'Maple River', 'Stream', 'North Dakota', 'ND', 'Cass', 'West Fargo North', 46.9321903, -96.9228617, ST_GeomFromText('POINT(46.9321903 -96.9228617)', 4326), 47.4536018, -97.8450936, '1980-02-13', '2018-01-16', NULL, NULL, NULL),
  ('1030097', 'North Marais River', 'Stream', 'North Dakota', 'ND', 'Walsh', 'Big Woods SW', 48.3255396, -97.1375707, ST_GeomFromText('POINT(48.3255396 -97.1375707)', 4326), 48.1741504, -97.1467398, '1980-02-13', NULL, 'Official', 'Board Decision', '1974-01-01'),
  ('1030098', 'Marble Point', 'Cape', 'North Dakota', 'ND', 'Ward', 'Donnybrook', 48.5150209, -101.9084953, ST_GeomFromText('POINT(48.5150209 -101.9084953)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030099', 'Lake Margaret', 'Reservoir', 'North Dakota', 'ND', 'McLean', 'Peterson Lake', 47.5573477, -100.8532713, ST_GeomFromText('POINT(47.5573477 -100.8532713)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', 'Official', 'Board Decision', '1963-01-01'),
  ('1030101', 'Marion Lakes', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Lake Upsilon SE', 48.8570629, -99.7933678, ST_GeomFromText('POINT(48.8570629 -99.7933678)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1030103', 'Marple Slough', 'Lake', 'North Dakota', 'ND', 'Williams', 'Twin Lakes', 48.4124439, -103.5391128, ST_GeomFromText('POINT(48.4124439 -103.5391128)', 4326), NULL, NULL, '1980-02-13', '2019-04-27', NULL, NULL, NULL),
  ('1030106', 'Martin Lake', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Rangeley SE', 48.0421624, -100.2964085, ST_GeomFromText('POINT(48.0421624 -100.2964085)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1030107', 'Martin Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Belcourt', 48.8601389, -99.7069947, ST_GeomFromText('POINT(48.8601389 -99.7069947)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030108', 'Martin Lakes', 'Lake', 'North Dakota', 'ND', 'Burke', 'Vanville NE', 48.6410832, -102.3447637, ST_GeomFromText('POINT(48.6410832 -102.3447637)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1030110', 'Martinsen Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Lostwood Lakes', 48.6169542, -102.3891405, ST_GeomFromText('POINT(48.6169542 -102.3891405)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1030111', 'Lake Mary', 'Lake', 'North Dakota', 'ND', 'Benson', 'Hesper', 47.9647292, -99.665843, ST_GeomFromText('POINT(47.9647292 -99.665843)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1030112', 'Lake Mary', 'Lake', 'North Dakota', 'ND', 'Nelson', 'Michigan West', 48.0520735, -98.1821237, ST_GeomFromText('POINT(48.0520735 -98.1821237)', 4326), NULL, NULL, '1980-02-13', '2013-09-22', NULL, NULL, NULL),
  ('1030116', 'Masonic Island', 'Island', 'North Dakota', 'ND', 'Bottineau', 'Metigoshe Lake', 48.9852881, -100.3443068, ST_GeomFromText('POINT(48.9852881 -100.3443068)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030120', 'Matson Slough', 'Lake', 'North Dakota', 'ND', 'Nelson', 'Aneta', 47.7405886, -97.9525855, ST_GeomFromText('POINT(47.7405886 -97.9525855)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1030121', 'Big Coulee', 'Valley', 'North Dakota', 'ND', 'Ramsey', 'Tilden', 48.1491655, -99.1940224, ST_GeomFromText('POINT(48.1491655 -99.1940224)', 4326), 48.2827771, -99.172912, '1980-02-13', NULL, 'Official', 'Board Decision', '1961-01-01'),
  ('1030132', 'Lake Klingenberg', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Lake Klingenberg', 48.9372188, -100.4334337, ST_GeomFromText('POINT(48.9372188 -100.4334337)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', 'Official', 'Board Decision', '1973-01-01'),
  ('1030138', 'McDonald Lake', 'Lake', 'North Dakota', 'ND', 'Barnes', 'Valley City West', 46.9572144, -98.0777669, ST_GeomFromText('POINT(46.9572144 -98.0777669)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1030140', 'Lake McDonald', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Metigoshe Lake', 48.993846, -100.3389862, ST_GeomFromText('POINT(48.993846 -100.3389862)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030146', 'McGregory Buttes', 'Range', 'North Dakota', 'ND', 'Dunn', 'Mandaree SE', 47.6083444, -102.6149086, ST_GeomFromText('POINT(47.6083444 -102.6149086)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030148', 'McHugh Slough', 'Lake', 'North Dakota', 'ND', 'Nelson', 'Lakota', 48.1056451, -98.261543, ST_GeomFromText('POINT(48.1056451 -98.261543)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1030149', 'McIntosh Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Donnybrook', 48.5452995, -101.9459955, ST_GeomFromText('POINT(48.5452995 -101.9459955)', 4326), 48.5177778, -101.9880556, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030150', 'McKenna Lake', 'Lake', 'North Dakota', 'ND', 'Logan', 'McKenna Lake South', 46.4996933, -99.8052523, ST_GeomFromText('POINT(46.4996933 -99.8052523)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1030152', 'McKenzie Bay', 'Bay', 'North Dakota', 'ND', 'Dunn', 'Hay Flat', 47.6205634, -102.3285107, ST_GeomFromText('POINT(47.6205634 -102.3285107)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030153', 'McKenzie Slough', 'Swamp', 'North Dakota', 'ND', 'Burleigh', 'McKenzie', 46.8159497, -100.4228709, ST_GeomFromText('POINT(46.8159497 -100.4228709)', 4326), NULL, NULL, '1980-02-13', '2022-08-12', NULL, NULL, NULL),
  ('1030161', 'McLaughlin Lake', 'Lake', 'North Dakota', 'ND', 'Towner', 'Rolla', 48.8566112, -99.520866, ST_GeomFromText('POINT(48.8566112 -99.520866)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1030162', 'McLeod Lake', 'Lake', 'North Dakota', 'ND', 'Williams', 'Ray', 48.338206, -103.1738396, ST_GeomFromText('POINT(48.338206 -103.1738396)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1030163', 'McMann Lake', 'Lake', 'North Dakota', 'ND', 'Ward', 'Benedict', 47.849102, -101.1200153, ST_GeomFromText('POINT(47.849102 -101.1200153)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1030167', 'McVille Coulee', 'Stream', 'North Dakota', 'ND', 'Nelson', 'Kloten NW', 47.7124951, -98.1567643, ST_GeomFromText('POINT(47.7124951 -98.1567643)', 4326), 47.7966619, -98.1503764, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030169', 'Meander Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Woodworth', 47.2036422, -99.3508305, ST_GeomFromText('POINT(47.2036422 -99.3508305)', 4326), NULL, NULL, '1980-02-13', '2013-10-25', NULL, NULL, NULL),
  ('1030170', 'Medicine Butte', 'Summit', 'North Dakota', 'ND', 'Mercer', 'Medicine Butte', 47.1253403, -101.9276934, ST_GeomFromText('POINT(47.1253403 -101.9276934)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1030173', 'Medicine Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Jim Lake', 47.1958202, -98.7787893, ST_GeomFromText('POINT(47.1958202 -98.7787893)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1030174', 'Medicine Lake', 'Lake', 'North Dakota', 'ND', 'Eddy', 'Lake Coe', 47.6934854, -98.7445603, ST_GeomFromText('POINT(47.6934854 -98.7445603)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1030178', 'Medicine Pole Hills', 'Range', 'North Dakota', 'ND', 'Bowman', 'Griffin', 46.1366716, -103.6238057, ST_GeomFromText('POINT(46.1366716 -103.6238057)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030179', 'Medicine Rock', 'Summit', 'North Dakota', 'ND', 'Grant', 'Sheep Creek Dam', 46.2936769, -101.7903365, ST_GeomFromText('POINT(46.2936769 -101.7903365)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1030180', 'Medicine Stone Bay', 'Bay', 'North Dakota', 'ND', 'Mercer', 'Twin Buttes', 47.5544502, -102.1676737, ST_GeomFromText('POINT(47.5544502 -102.1676737)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030185', 'Mehrer Creek', 'Stream', 'North Dakota', 'ND', 'Hettinger', 'Burt', 46.3566696, -102.2373827, ST_GeomFromText('POINT(46.3566696 -102.2373827)', 4326), 46.2975026, -102.3451592, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030189', 'Melby Hills', 'Range', 'North Dakota', 'ND', 'Foster', 'Grace City', 47.5297191, -98.8589956, ST_GeomFromText('POINT(47.5297191 -98.8589956)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030190', 'Melbys Slough', 'Lake', 'North Dakota', 'ND', 'Burke', 'Thompson Lake', 48.7021022, -102.4634246, ST_GeomFromText('POINT(48.7021022 -102.4634246)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030208', 'Merrills Slough', 'Lake', 'North Dakota', 'ND', 'Burke', 'Lostwood Lakes', 48.6067419, -102.4261121, ST_GeomFromText('POINT(48.6067419 -102.4261121)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1030210', 'Mertz Slough', 'Swamp', 'North Dakota', 'ND', 'Sheridan', 'Mertz Slough', 47.5683297, -100.2051273, ST_GeomFromText('POINT(47.5683297 -100.2051273)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030215', 'Middle Branch Douglas Creek', 'Stream', 'North Dakota', 'ND', 'McLean', 'Emmet SE', 47.617501, -101.558498, ST_GeomFromText('POINT(47.617501 -101.558498)', 4326), 47.8425035, -101.4990521, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030216', 'Middle Branch Forest River', 'Stream', 'North Dakota', 'ND', 'Walsh', 'Fordville', 48.2124935, -97.8087013, ST_GeomFromText('POINT(48.2124935 -97.8087013)', 4326), 48.4177761, -98.1889934, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030217', 'Middle Branch Goose River', 'Stream', 'North Dakota', 'ND', 'Traill', 'Hatton SW', 47.5094315, -97.4617579, ST_GeomFromText('POINT(47.5094315 -97.4617579)', 4326), 47.6297141, -97.8834256, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030218', 'Middle Branch Park River', 'Stream', 'North Dakota', 'ND', 'Walsh', 'Grafton', 48.4408226, -97.4553579, ST_GeomFromText('POINT(48.4408226 -97.4553579)', 4326), 48.6224961, -98.1078824, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030219', 'Middle Des Lacs Lake', 'Reservoir', 'North Dakota', 'ND', 'Ward', 'Kenmare', 48.6627587, -102.0787707, ST_GeomFromText('POINT(48.6627587 -102.0787707)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1030224', 'Mikes Lake', 'Lake', 'North Dakota', 'ND', 'Ramsey', 'Cando SE', 48.3025939, -99.0239257, ST_GeomFromText('POINT(48.3025939 -99.0239257)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1030225', 'Mikes Peak', 'Summit', 'North Dakota', 'ND', 'McHenry', 'Simcoe', 48.2150796, -100.7945395, ST_GeomFromText('POINT(48.2150796 -100.7945395)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1030226', 'Mill Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Lake Upsilon', 48.9409481, -99.8052421, ST_GeomFromText('POINT(48.9409481 -99.8052421)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030229', 'Miller Coulee', 'Valley', 'North Dakota', 'ND', 'Williams', 'Trenton', 48.0861339, -103.8371488, ST_GeomFromText('POINT(48.0861339 -103.8371488)', 4326), 48.1072222, -103.8577778, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030230', 'Miller Creek', 'Stream', 'North Dakota', 'ND', 'Bottineau', 'Omemee', 48.6319437, -100.3381907, ST_GeomFromText('POINT(48.6319437 -100.3381907)', 4326), 48.7794468, -100.2884699, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030233', 'Lake Miller', 'Lake', 'North Dakota', 'ND', 'Nelson', 'Michigan East', 48.1128739, -98.0845438, ST_GeomFromText('POINT(48.1128739 -98.0845438)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1030238', 'Minehan Slough', 'Lake', 'North Dakota', 'ND', 'McLean', 'Blackwater Lake', 47.6768782, -101.818297, ST_GeomFromText('POINT(47.6768782 -101.818297)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1030239', 'Mineral Creek', 'Stream', 'North Dakota', 'ND', 'Rolette', 'Dunseith', 48.8397242, -100.0987446, ST_GeomFromText('POINT(48.8397242 -100.0987446)', 4326), 48.9300033, -100.0520734, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030240', 'Mineral Spring', 'Spring', 'North Dakota', 'ND', 'Ransom', 'Fort Ransom', 46.5033194, -97.8937798, ST_GeomFromText('POINT(46.5033194 -97.8937798)', 4326), NULL, NULL, '1980-02-13', '2011-04-19', NULL, NULL, NULL),
  ('1030241', 'Mineral Springs', 'Spring', 'North Dakota', 'ND', 'Slope', 'Mineral Springs', 46.3241753, -103.2251758, ST_GeomFromText('POINT(46.3241753 -103.2251758)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030243', 'Minneapolis Flats', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Eldridge SW', 46.8357698, -98.9012559, ST_GeomFromText('POINT(46.8357698 -98.9012559)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1030244', 'Minneapolis Flats Creek', 'Stream', 'North Dakota', 'ND', 'Stutsman', 'Eldridge', 46.9841573, -98.8570517, ST_GeomFromText('POINT(46.9841573 -98.8570517)', 4326), 46.9210993, -99.0462218, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030246', 'Minnie Lake', 'Lake', 'North Dakota', 'ND', 'Barnes', 'Pillsbury SE', 47.0954323, -97.7686168, ST_GeomFromText('POINT(47.0954323 -97.7686168)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030254', 'Mirror Lake', 'Lake', 'North Dakota', 'ND', 'Adams', 'Hettinger South', 45.995545, -102.63917, ST_GeomFromText('POINT(45.995545 -102.63917)', 4326), NULL, NULL, '1980-02-13', '2024-10-10', NULL, NULL, NULL),
  ('1030255', 'Mission Bay', 'Bay', 'North Dakota', 'ND', 'Ramsey', 'Camp Grafton', 48.0077774, -98.8881738, ST_GeomFromText('POINT(48.0077774 -98.8881738)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030258', 'Mitchell Lake', 'Lake', 'North Dakota', 'ND', 'Burleigh', 'Wing', 47.1716599, -100.299863, ST_GeomFromText('POINT(47.1716599 -100.299863)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1030260', 'Moccasin Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Saddle Butte SW', 47.5927871, -102.4829602, ST_GeomFromText('POINT(47.5927871 -102.4829602)', 4326), 47.6672352, -102.7479691, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030261', 'Moccasin Creek Bay', 'Bay', 'North Dakota', 'ND', 'Dunn', 'Saddle Butte SW', 47.5833423, -102.4654595, ST_GeomFromText('POINT(47.5833423 -102.4654595)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030262', 'Moesner Lake', 'Lake', 'North Dakota', 'ND', 'Sheridan', 'Kief', 47.7967468, -100.5419028, ST_GeomFromText('POINT(47.7967468 -100.5419028)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1030263', 'Moffet Slough', 'Lake', 'North Dakota', 'ND', 'Dunn', 'Dunn Center', 47.2903985, -102.6069372, ST_GeomFromText('POINT(47.2903985 -102.6069372)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1030265', 'Moffit Butte', 'Summit', 'North Dakota', 'ND', 'Burleigh', 'Moffit', 46.6903961, -100.2679081, ST_GeomFromText('POINT(46.6903961 -100.2679081)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1030267', 'Moga Butte', 'Summit', 'North Dakota', 'ND', 'Bowman', 'Scranton', 46.1658034, -103.13555, ST_GeomFromText('POINT(46.1658034 -103.13555)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1030272', 'Montgomery Hill', 'Summit', 'North Dakota', 'ND', 'McHenry', 'Drake NW', 47.9904685, -100.4926114, ST_GeomFromText('POINT(47.9904685 -100.4926114)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030273', 'Montgomery Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Lake Upsilon', 48.9308552, -99.7700648, ST_GeomFromText('POINT(48.9308552 -99.7700648)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1030275', 'Moon Lake', 'Lake', 'North Dakota', 'ND', 'Barnes', 'Moon Lake', 46.8573951, -98.1593308, ST_GeomFromText('POINT(46.8573951 -98.1593308)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1030276', 'Moon Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Cleveland SE', 46.8671446, -99.0244823, ST_GeomFromText('POINT(46.8671446 -99.0244823)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1030279', 'Moore Lake', 'Lake', 'North Dakota', 'ND', 'Towner', 'Hansboro NE', 48.9148461, -99.2968015, ST_GeomFromText('POINT(48.9148461 -99.2968015)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1030280', 'Moorehead Lake', 'Lake', 'North Dakota', 'ND', 'Sheridan', 'Drake SE', 47.7995925, -100.3361212, ST_GeomFromText('POINT(47.7995925 -100.3361212)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1030283', 'Moran Lake', 'Lake', 'North Dakota', 'ND', 'Richland', 'Swan Lake', 46.0399636, -97.0198014, ST_GeomFromText('POINT(46.0399636 -97.0198014)', 4326), NULL, NULL, '1980-02-13', '2023-05-26', NULL, NULL, NULL),
  ('1030285', 'Mount Morian', 'Summit', 'North Dakota', 'ND', 'Stutsman', 'Carrington SW', 47.3050331, -99.2178082, ST_GeomFromText('POINT(47.3050331 -99.2178082)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL),
  ('1030286', 'Mork Lake', 'Lake', 'North Dakota', 'ND', 'Ward', 'Mork Lake', 48.1306253, -101.57495, ST_GeomFromText('POINT(48.1306253 -101.57495)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1030290', 'Morris Creek', 'Stream', 'North Dakota', 'ND', 'Grant', 'Leith', 46.2577836, -101.6309717, ST_GeomFromText('POINT(46.2577836 -101.6309717)', 4326), 46.1713947, -101.8009739, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030292', 'Morrison Lake', 'Lake', 'North Dakota', 'ND', 'Ramsey', 'Sweetwater', 48.2473962, -98.8319952, ST_GeomFromText('POINT(48.2473962 -98.8319952)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030293', 'Mort Adams Spring', 'Spring', 'North Dakota', 'ND', 'Williams', 'Cussicks Spring', 48.1993944, -103.2372154, ST_GeomFromText('POINT(48.1993944 -103.2372154)', 4326), NULL, NULL, '1980-02-13', '2011-04-19', NULL, NULL, NULL),
  ('1030295', 'Mosbrucker Lake', 'Reservoir', 'North Dakota', 'ND', 'Oliver', 'New Salem NW', 46.982376, -101.4838574, ST_GeomFromText('POINT(46.982376 -101.4838574)', 4326), NULL, NULL, '1980-02-13', '2019-02-21', NULL, NULL, NULL),
  ('1030297', 'Mosquito Butte', 'Summit', 'North Dakota', 'ND', 'Burke', 'Mosquito Butte', 48.5673216, -102.2352076, ST_GeomFromText('POINT(48.5673216 -102.2352076)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL),
  ('1030298', 'Mostad Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Surrey', 48.1277876, -101.1518244, ST_GeomFromText('POINT(48.1277876 -101.1518244)', 4326), 48.1102872, -101.1984928, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030300', 'Mott Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Donnybrook', 48.5700224, -101.986829, ST_GeomFromText('POINT(48.5700224 -101.986829)', 4326), 48.5236337, -102.0465516, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030321', 'Mower Machine Flat', 'Flat', 'North Dakota', 'ND', 'Dunn', 'Hay Flat', 47.5441737, -102.3196216, ST_GeomFromText('POINT(47.5441737 -102.3196216)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030323', 'Mud Buttes', 'Range', 'North Dakota', 'ND', 'Bowman', 'Mud Buttes', 46.0263916, -103.7668683, ST_GeomFromText('POINT(46.0263916 -103.7668683)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030324', 'Mud Creek', 'Stream', 'North Dakota', 'ND', 'Mercer', 'Medicine Butte', 47.1780641, -101.9912798, ST_GeomFromText('POINT(47.1780641 -101.9912798)', 4326), 47.1019522, -101.9559986, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030325', 'Mud Creek', 'Stream', 'North Dakota', 'ND', 'Bottineau', 'Overly', 48.6599989, -100.154858, ST_GeomFromText('POINT(48.6599989 -100.154858)', 4326), 48.8133343, -100.0087454, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030326', 'Mud Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Braddock NE', 46.6782454, -100.0308628, ST_GeomFromText('POINT(46.6782454 -100.0308628)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030327', 'Mud Lake', 'Lake', 'North Dakota', 'ND', 'Barnes', 'Eckelson SW', 46.8586159, -98.4297265, ST_GeomFromText('POINT(46.8586159 -98.4297265)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1030328', 'Mud Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Pearl Lake', 47.0521578, -99.3465803, ST_GeomFromText('POINT(47.0521578 -99.3465803)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1030329', 'Mud Lake', 'Lake', 'North Dakota', 'ND', 'Barnes', 'Wimbledon', 47.1513697, -98.4079818, ST_GeomFromText('POINT(47.1513697 -98.4079818)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1030330', 'Mud Lake', 'Reservoir', 'North Dakota', 'ND', 'Stutsman', 'Jim Lake', 47.177281, -98.8188214, ST_GeomFromText('POINT(47.177281 -98.8188214)', 4326), NULL, NULL, '1980-02-13', '2013-10-25', NULL, NULL, NULL),
  ('1030331', 'Mud Lake', 'Lake', 'North Dakota', 'ND', 'Sheridan', 'Anamoose SW', 47.8131033, -100.2304339, ST_GeomFromText('POINT(47.8131033 -100.2304339)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1030332', 'Mud Lake', 'Lake', 'North Dakota', 'ND', 'Benson', 'Harlow', 48.2268964, -99.5693534, ST_GeomFromText('POINT(48.2268964 -99.5693534)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1030333', 'Mud Lake', 'Lake', 'North Dakota', 'ND', 'Benson', 'Pleasant Lake', 48.3536277, -99.7649846, ST_GeomFromText('POINT(48.3536277 -99.7649846)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1030334', 'Mud Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Metigoshe Lake', 48.9633175, -100.3641618, ST_GeomFromText('POINT(48.9633175 -100.3641618)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1030335', 'Mud Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Metigoshe Lake', 48.97728, -100.3175904, ST_GeomFromText('POINT(48.97728 -100.3175904)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1030336', 'Mud Lake', 'Lake', 'North Dakota', 'ND', 'McLean', 'Turtle Lake', 47.6072424, -100.9927903, ST_GeomFromText('POINT(47.6072424 -100.9927903)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030337', 'Mullet Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Lake Upsilon', 48.9379639, -99.7847179, ST_GeomFromText('POINT(48.9379639 -99.7847179)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1030339', 'Murach Lake', 'Lake', 'North Dakota', 'ND', 'Sargent', 'Geneseo', 46.120591, -97.2786488, ST_GeomFromText('POINT(46.120591 -97.2786488)', 4326), NULL, NULL, '1980-02-13', '2023-05-26', NULL, NULL, NULL),
  ('1030340', 'Lake Murie', 'Lake', 'North Dakota', 'ND', 'Benson', 'Tilden', 48.2306843, -99.2461291, ST_GeomFromText('POINT(48.2306843 -99.2461291)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1030341', 'Murphy Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Lake Ilo', 47.3355688, -102.6743516, ST_GeomFromText('POINT(47.3355688 -102.6743516)', 4326), 47.3158484, -102.8515749, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030342', 'Murphy Hill', 'Summit', 'North Dakota', 'ND', 'Ward', 'Tolley SE', 48.5095074, -101.8633847, ST_GeomFromText('POINT(48.5095074 -101.8633847)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1030344', 'Muskie Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Grubb Lake', 48.6812757, -102.6764014, ST_GeomFromText('POINT(48.6812757 -102.6764014)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1030345', 'Muskrat Creek', 'Stream', 'North Dakota', 'ND', 'Morton', 'North Almont', 46.8069453, -101.5087556, ST_GeomFromText('POINT(46.8069453 -101.5087556)', 4326), 46.9258342, -101.5429242, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030346', 'Muskrat Lake', 'Swamp', 'North Dakota', 'ND', 'Mountrail', 'New Town SW', 47.8598257, -102.4514037, ST_GeomFromText('POINT(47.8598257 -102.4514037)', 4326), NULL, NULL, '1980-02-13', '2022-08-09', NULL, NULL, NULL),
  ('1030347', 'Musta Lake', 'Lake', 'North Dakota', 'ND', 'Divide', 'Smoky Butte', 48.7138416, -103.5937198, ST_GeomFromText('POINT(48.7138416 -103.5937198)', 4326), NULL, NULL, '1980-02-13', '2019-04-27', NULL, NULL, NULL),
  ('1030348', 'Myer Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'International Peace Garden', 48.9641368, -100.0577151, ST_GeomFromText('POINT(48.9641368 -100.0577151)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030356', 'Nason Hill', 'Summit', 'North Dakota', 'ND', 'Adams', 'Nason Hill', 46.1182722, -102.1024489, ST_GeomFromText('POINT(46.1182722 -102.1024489)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1030361', 'Nead Lake', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Simcoe', 48.2046725, -100.817468, ST_GeomFromText('POINT(48.2046725 -100.817468)', 4326), NULL, NULL, '1980-02-13', '2019-04-08', NULL, NULL, NULL),
  ('1030367', 'Niels Slough', 'Lake', 'North Dakota', 'ND', 'Burke', 'Lostwood Lakes', 48.6088082, -102.4270417, ST_GeomFromText('POINT(48.6088082 -102.4270417)', 4326), NULL, NULL, '1980-02-13', '2025-02-27', NULL, NULL, NULL),
  ('1030370', 'Nekoma Coulee', 'Valley', 'North Dakota', 'ND', 'Ramsey', 'Edmore', 48.4361153, -98.4465022, ST_GeomFromText('POINT(48.4361153 -98.4465022)', 4326), 48.5858371, -98.4309497, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030371', 'Nelson and Carlson Lakes', 'Lake', 'North Dakota', 'ND', 'Ward', 'Rush Lake', 47.9131736, -101.4700975, ST_GeomFromText('POINT(47.9131736 -101.4700975)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1030373', 'Nelson Butte', 'Summit', 'North Dakota', 'ND', 'Morton', 'Dengate', 46.8021544, -101.6959115, ST_GeomFromText('POINT(46.8021544 -101.6959115)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1030374', 'Nelson Lake', 'Lake', 'North Dakota', 'ND', 'McLean', 'Peterson Lake', 47.5899091, -100.8620851, ST_GeomFromText('POINT(47.5899091 -100.8620851)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1030375', 'Nelson Lake', 'Lake', 'North Dakota', 'ND', 'Divide', 'Bush Lake', 48.7063679, -102.9963964, ST_GeomFromText('POINT(48.7063679 -102.9963964)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1030376', 'Nelson Lake', 'Reservoir', 'North Dakota', 'ND', 'Oliver', 'Nelson Lake', 47.0759895, -101.2200226, ST_GeomFromText('POINT(47.0759895 -101.2200226)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1030379', 'Lake Nettie', 'Lake', 'North Dakota', 'ND', 'McLean', 'Lake Nettie', 47.6157916, -101.0145173, ST_GeomFromText('POINT(47.6157916 -101.0145173)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030381', 'Neuwsma Lake', 'Lake', 'North Dakota', 'ND', 'Emmons', 'Herreid NE', 45.9726933, -100.0410963, ST_GeomFromText('POINT(45.9726933 -100.0410963)', 4326), NULL, NULL, '1980-02-13', '2019-03-07', NULL, NULL, NULL),
  ('1030405', 'Niccum Reservoir', 'Reservoir', 'North Dakota', 'ND', 'Foster', 'Bordulac NE', 47.40731, -98.831398, ST_GeomFromText('POINT(47.40731 -98.831398)', 4326), NULL, NULL, '1980-02-13', '2024-10-14', NULL, NULL, NULL),
  ('1030411', 'Nine Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Bloom', 46.9561166, -98.5193306, ST_GeomFromText('POINT(46.9561166 -98.5193306)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1030412', 'Ninemile Lake', 'Lake', 'North Dakota', 'ND', 'Eddy', 'Lake Coe', 47.661759, -98.7363753, ST_GeomFromText('POINT(47.661759 -98.7363753)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1030416', 'Niobe Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Kenmare', 48.6819704, -102.1057196, ST_GeomFromText('POINT(48.6819704 -102.1057196)', 4326), 48.6744738, -102.2857228, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030418', 'Nishu Bay', 'Bay', 'North Dakota', 'ND', 'McLean', 'Blackwater Lake SW', 47.5533372, -101.9262816, ST_GeomFromText('POINT(47.5533372 -101.9262816)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030420', 'Nohly Lake', 'Lake', 'North Dakota', 'ND', 'McKenzie', 'Dore', 47.920103, -104.0019911, ST_GeomFromText('POINT(47.920103 -104.0019911)', 4326), NULL, NULL, '1980-02-13', '2019-02-27', NULL, NULL, NULL),
  ('1030424', 'Norberg Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Metigoshe Lake', 48.9264606, -100.2803148, ST_GeomFromText('POINT(48.9264606 -100.2803148)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1030436', 'Norman Lake', 'Lake', 'North Dakota', 'ND', 'Divide', 'Bush Lake', 48.7128918, -102.9249833, ST_GeomFromText('POINT(48.7128918 -102.9249833)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1030437', 'Norman Otto Hill', 'Summit', 'North Dakota', 'ND', 'Cavalier', 'Vang', 48.9303633, -98.0731358, ST_GeomFromText('POINT(48.9303633 -98.0731358)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030442', 'North Branch Cantapeta Creek', 'Stream', 'North Dakota', 'ND', 'Morton', 'Cannon Ball NW', 46.4430503, -100.6765139, ST_GeomFromText('POINT(46.4430503 -100.6765139)', 4326), 46.5966616, -100.7956839, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030443', 'North Branch Elm River', 'Stream', 'North Dakota', 'ND', 'Traill', 'Halstad SW', 47.2949753, -96.9034149, ST_GeomFromText('POINT(47.2949753 -96.9034149)', 4326), 47.4085934, -97.220367, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030444', 'North Branch Forest River', 'Stream', 'North Dakota', 'ND', 'Walsh', 'Fordville', 48.2124935, -97.8087013, ST_GeomFromText('POINT(48.2124935 -97.8087013)', 4326), 48.4397189, -98.1003792, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030445', 'North Branch Goose River', 'Stream', 'North Dakota', 'ND', 'Traill', 'Hillsboro NW', 47.4560934, -97.1934225, ST_GeomFromText('POINT(47.4560934 -97.1934225)', 4326), 47.7105431, -97.5256436, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030446', 'North Branch Little Heart River', 'Stream', 'North Dakota', 'ND', 'Morton', 'Lynwood', 46.6811064, -100.9067983, ST_GeomFromText('POINT(46.6811064 -100.9067983)', 4326), 46.7477778, -100.9936111, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030447', 'North Branch Park River', 'Stream', 'North Dakota', 'ND', 'Walsh', 'Grafton', 48.4463787, -97.4825811, ST_GeomFromText('POINT(48.4463787 -97.4825811)', 4326), 48.701386, -98.1809429, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030448', 'North Branch Turtle River', 'Stream', 'North Dakota', 'ND', 'Grand Forks', 'Larimore East', 47.93749, -97.5839756, ST_GeomFromText('POINT(47.93749 -97.5839756)', 4326), 48.0386054, -97.9895433, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030449', 'North Brooks Slough', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Cleveland SE', 46.7996254, -99.1022916, ST_GeomFromText('POINT(46.7996254 -99.1022916)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1030450', 'North Creek', 'Stream', 'North Dakota', 'ND', 'Stark', 'South Heart', 46.8666781, -102.9612893, ST_GeomFromText('POINT(46.8666781 -102.9612893)', 4326), 46.9066794, -103.0974002, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030451', 'North Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Werner', 47.3572321, -102.4126803, ST_GeomFromText('POINT(47.3572321 -102.4126803)', 4326), 47.4541757, -102.449347, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030454', 'North Fork Grand River', 'Stream', 'South Dakota', 'SD', 'Perkins', 'Haynes SE', 45.79314, -102.30838, ST_GeomFromText('POINT(45.79314 -102.30838)', 4326), 46.0088916, -103.6774198, '1980-02-13', '2018-01-16', NULL, NULL, NULL),
  ('1030457', 'North Fork Sheyenne River', 'Stream', 'North Dakota', 'ND', 'Benson', 'Heimdal', 47.8719497, -99.6995713, ST_GeomFromText('POINT(47.8719497 -99.6995713)', 4326), 47.9469473, -100.0034638, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030458', 'North Golden Lake', 'Lake', 'North Dakota', 'ND', 'Steele', 'Golden Lake', 47.5939592, -97.6322035, ST_GeomFromText('POINT(47.5939592 -97.6322035)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1030461', 'North Killdeer Mountain', 'Summit', 'North Dakota', 'ND', 'Dunn', 'North Killdeer Mountain', 47.5090882, -102.8790889, ST_GeomFromText('POINT(47.5090882 -102.8790889)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1030462', 'North Lake', 'Lake', 'North Dakota', 'ND', 'Sheridan', 'Denhoff', 47.3817896, -100.2616323, ST_GeomFromText('POINT(47.3817896 -100.2616323)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1030463', 'North Lake', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Granville', 48.3657375, -100.7763107, ST_GeomFromText('POINT(48.3657375 -100.7763107)', 4326), NULL, NULL, '1980-02-13', '2019-04-08', NULL, NULL, NULL),
  ('1030464', 'North Lake', 'Reservoir', 'North Dakota', 'ND', 'Divide', 'Alkabo', 48.868498, -103.965254, ST_GeomFromText('POINT(48.868498 -103.965254)', 4326), NULL, NULL, '1980-02-13', '2024-10-14', NULL, NULL, NULL),
  ('1030467', 'North Lemmon Lake', 'Lake', 'North Dakota', 'ND', 'Adams', 'Cedar Butte', 46.0104193, -102.1634768, ST_GeomFromText('POINT(46.0104193 -102.1634768)', 4326), NULL, NULL, '1980-02-13', '2019-02-22', NULL, NULL, NULL),
  ('1030478', 'North Salt Lake', 'Lake', 'North Dakota', 'ND', 'Walsh', 'North Salt Lake', 48.537681, -97.3407897, ST_GeomFromText('POINT(48.537681 -97.3407897)', 4326), NULL, NULL, '1980-02-13', '2018-11-28', NULL, NULL, NULL),
  ('1030480', 'North Star Butte', 'Summit', 'North Dakota', 'ND', 'Hettinger', 'North Star Butte', 46.4826353, -102.1149886, ST_GeomFromText('POINT(46.4826353 -102.1149886)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030489', 'North Washington Lake', 'Lake', 'North Dakota', 'ND', 'Eddy', 'Warwick', 47.755539, -98.7106102, ST_GeomFromText('POINT(47.755539 -98.7106102)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', 'Official', 'Board Decision', '1963-01-01'),
  ('1030495', 'Northwestern Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Goldwin', 47.2119876, -99.2127005, ST_GeomFromText('POINT(47.2119876 -99.2127005)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1030501', 'Norway Lake', 'Lake', 'North Dakota', 'ND', 'Wells', 'Black Hammer Hill', 47.810528, -99.4690121, ST_GeomFromText('POINT(47.810528 -99.4690121)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1030503', 'Lake Norway', 'Lake', 'North Dakota', 'ND', 'Griggs', 'Binford', 47.5831073, -98.2677793, ST_GeomFromText('POINT(47.5831073 -98.2677793)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1030513', 'Nygaard Slough', 'Lake', 'North Dakota', 'ND', 'McLean', 'Lake Nettie', 47.5423117, -101.0249464, ST_GeomFromText('POINT(47.5423117 -101.0249464)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1030515', 'O''Brien Coulee', 'Valley', 'North Dakota', 'ND', 'Cavalier', 'Olga', 48.8377738, -98.0926034, ST_GeomFromText('POINT(48.8377738 -98.0926034)', 4326), 48.7775, -98.0497222, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030516', 'O''Brien Lake', 'Lake', 'North Dakota', 'ND', 'Burleigh', 'Florence Lake', 47.2556219, -100.3636933, ST_GeomFromText('POINT(47.2556219 -100.3636933)', 4326), NULL, NULL, '1980-02-13', '2013-09-14', NULL, NULL, NULL),
  ('1030517', 'O''Connell Lake', 'Lake', 'North Dakota', 'ND', 'Benson', 'Brinsmade', 48.1824133, -99.2667703, ST_GeomFromText('POINT(48.1824133 -99.2667703)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1030521', 'Oak Creek', 'Stream', 'North Dakota', 'ND', 'McHenry', 'Velva', 48.0644533, -100.9618179, ST_GeomFromText('POINT(48.0644533 -100.9618179)', 4326), 47.8894495, -101.1534893, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030522', 'Oak Creek', 'Stream', 'North Dakota', 'ND', 'Bottineau', 'Gardena', 48.6397224, -100.4068025, ST_GeomFromText('POINT(48.6397224 -100.4068025)', 4326), 48.9630661, -100.3676415, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030527', 'Oak Lakes', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Lake Upsilon', 48.9628837, -99.8047436, ST_GeomFromText('POINT(48.9628837 -99.8047436)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1030550', 'Oestreicher Hill', 'Summit', 'North Dakota', 'ND', 'Ransom', 'Nome SE', 46.5110812, -97.8370464, ST_GeomFromText('POINT(46.5110812 -97.8370464)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1030553', 'Old Baldy', 'Summit', 'North Dakota', 'ND', 'Cavalier', 'Vang', 48.9261791, -98.066926, ST_GeomFromText('POINT(48.9261791 -98.066926)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL),
  ('1030556', 'Old Man Dancing Butte', 'Summit', 'North Dakota', 'ND', 'Dunn', 'Hay Flat', 47.5553004, -102.2904611, ST_GeomFromText('POINT(47.5553004 -102.2904611)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL),
  ('1030561', 'Oleaas Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Carpio', 48.4286275, -101.6682178, ST_GeomFromText('POINT(48.4286275 -101.6682178)', 4326), 48.3802778, -101.7486111, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030563', 'Olsen Slough', 'Lake', 'North Dakota', 'ND', 'Nelson', 'McVille', 47.8555542, -98.1812077, ST_GeomFromText('POINT(47.8555542 -98.1812077)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1030566', 'Olson Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Grand View', 48.6498898, -102.7856511, ST_GeomFromText('POINT(48.6498898 -102.7856511)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1030567', 'Olson Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Carpenter Lake', 48.9496816, -99.8843668, ST_GeomFromText('POINT(48.9496816 -99.8843668)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1030569', 'Olson Slough', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Cleveland SE', 46.8217408, -99.1072441, ST_GeomFromText('POINT(46.8217408 -99.1072441)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1030571', 'Omild Slough', 'Lake', 'North Dakota', 'ND', 'Nelson', 'Kloten', 47.740564, -98.008629, ST_GeomFromText('POINT(47.740564 -98.008629)', 4326), NULL, NULL, '1980-02-13', '2025-02-27', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030572', 'Onemile Creek', 'Stream', 'North Dakota', 'ND', 'Sioux', 'Fort Yates', 46.0791632, -100.6337384, ST_GeomFromText('POINT(46.0791632 -100.6337384)', 4326), 46.1244423, -100.785685, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030573', 'Lake Ontario', 'Lake', 'North Dakota', 'ND', 'Wells', 'Fessenden SW', 47.5069363, -99.7380258, ST_GeomFromText('POINT(47.5069363 -99.7380258)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1030574', 'Lake Ordway', 'Lake', 'North Dakota', 'ND', 'McLean', 'Turtle Lake', 47.5023001, -100.9428182, ST_GeomFromText('POINT(47.5023001 -100.9428182)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1030578', 'Orner Slough', 'Swamp', 'North Dakota', 'ND', 'Barnes', 'Rogers', 47.1157416, -98.2472278, ST_GeomFromText('POINT(47.1157416 -98.2472278)', 4326), NULL, NULL, '1980-02-13', '2013-11-20', NULL, NULL, NULL),
  ('1030582', 'Oslie Lake', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Simcoe', 48.2290732, -100.8621489, ST_GeomFromText('POINT(48.2290732 -100.8621489)', 4326), NULL, NULL, '1980-02-13', '2019-04-08', NULL, NULL, NULL),
  ('1030588', 'Oswalds Bay', 'Swamp', 'North Dakota', 'ND', 'Benson', 'Grahams Island', 48.0966671, -99.1123808, ST_GeomFromText('POINT(48.0966671 -99.1123808)', 4326), NULL, NULL, '1980-02-13', '2011-10-13', NULL, NULL, NULL),
  ('1030589', 'Otis Lake', 'Lake', 'North Dakota', 'ND', 'McLean', 'Ruso', 47.8128768, -100.9082661, ST_GeomFromText('POINT(47.8128768 -100.9082661)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1030591', 'Otter Creek', 'Stream', 'North Dakota', 'ND', 'Grant', 'Otter Creek East', 46.5708346, -101.2995895, ST_GeomFromText('POINT(46.5708346 -101.2995895)', 4326), 46.4858375, -101.4134799, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030592', 'Otter Creek', 'Stream', 'North Dakota', 'ND', 'Morton', 'Harmon', 46.9222147, -100.9304121, ST_GeomFromText('POINT(46.9222147 -100.9304121)', 4326), 46.9422161, -101.1334733, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030593', 'Otter Creek', 'Stream', 'North Dakota', 'ND', 'Mercer', 'Hazen West', 47.2625058, -101.7012778, ST_GeomFromText('POINT(47.2625058 -101.7012778)', 4326), 47.021947, -101.6159843, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030595', 'Otter Tail Creek', 'Stream', 'North Dakota', 'ND', 'Williams', 'Blacktail Lake SE', 48.3414135, -103.6065841, ST_GeomFromText('POINT(48.3414135 -103.6065841)', 4326), 48.3930809, -103.7465896, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030596', 'Ottofy Lake', 'Lake', 'North Dakota', 'ND', 'Nelson', 'Binford NW', 47.7430367, -98.3795226, ST_GeomFromText('POINT(47.7430367 -98.3795226)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1030611', 'Ox Creek', 'Stream', 'North Dakota', 'ND', 'Bottineau', 'Willow City', 48.6099983, -100.2845789, ST_GeomFromText('POINT(48.6099983 -100.2845789)', 4326), 48.8688942, -99.7473673, '1980-02-13', NULL, 'Official', 'Board Decision', '1920-01-01'),
  ('1030616', 'Paint Hill', 'Summit', 'North Dakota', 'ND', 'McLean', 'Blackwater Lake NW', 47.6912783, -101.948394, ST_GeomFromText('POINT(47.6912783 -101.948394)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1030618', 'Painted Woods Creek', 'Stream', 'North Dakota', 'ND', 'McLean', 'Sanger', 47.2199922, -100.9804201, ST_GeomFromText('POINT(47.2199922 -100.9804201)', 4326), 47.3238846, -100.542348, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030619', 'Painted Woods Creek', 'Stream', 'North Dakota', 'ND', 'Williams', 'Trenton', 48.0816898, -103.7877026, ST_GeomFromText('POINT(48.0816898 -103.7877026)', 4326), 48.2616902, -103.8960396, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030620', 'Painted Woods Lake', 'Lake', 'North Dakota', 'ND', 'McLean', 'Sanger', 47.2131413, -100.9522691, ST_GeomFromText('POINT(47.2131413 -100.9522691)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1030625', 'Palmer Spring', 'Spring', 'North Dakota', 'ND', 'Benson', 'Hesper', 47.8938945, -99.7187382, ST_GeomFromText('POINT(47.8938945 -99.7187382)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030626', 'Pamplin Hills', 'Range', 'North Dakota', 'ND', 'Sioux', 'Pamplin Hills', 46.0772236, -101.0629079, ST_GeomFromText('POINT(46.0772236 -101.0629079)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030627', 'Paradise Flats', 'Flat', 'North Dakota', 'ND', 'Grant', 'Paradise Flats', 46.1347271, -101.5648566, ST_GeomFromText('POINT(46.1347271 -101.5648566)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030628', 'Paradise Meadow', 'Swamp', 'North Dakota', 'ND', 'Burke', 'Powers Lake', 48.5565943, -102.7249089, ST_GeomFromText('POINT(48.5565943 -102.7249089)', 4326), NULL, NULL, '1980-02-13', '2022-08-09', NULL, NULL, NULL),
  ('1030632', 'Park Lakebed', 'Flat', 'North Dakota', 'ND', 'Richland', 'Claire City NW', 45.9749605, -97.2128688, ST_GeomFromText('POINT(45.9749605 -97.2128688)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030634', 'Park River', 'Stream', 'North Dakota', 'ND', 'Walsh', 'Big Woods NW', 48.4744286, -97.1561817, ST_GeomFromText('POINT(48.4744286 -97.1561817)', 4326), 48.4411004, -97.4556357, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030638', 'Parks Hills', 'Range', 'North Dakota', 'ND', 'Grant', 'Parks Hills', 46.0383385, -101.645967, ST_GeomFromText('POINT(46.0383385 -101.645967)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030640', 'Pass Lake', 'Swamp', 'North Dakota', 'ND', 'Rolette', 'Boundary Lake', 48.9346195, -100.1578604, ST_GeomFromText('POINT(48.9346195 -100.1578604)', 4326), NULL, NULL, '1980-02-13', '2023-02-24', NULL, NULL, NULL),
  ('1030642', 'Pats Coulee', 'Valley', 'North Dakota', 'ND', 'Williams', 'Zahl', 48.5125268, -103.6685311, ST_GeomFromText('POINT(48.5125268 -103.6685311)', 4326), 48.5008595, -103.8415939, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030643', 'Pauls Slough', 'Lake', 'North Dakota', 'ND', 'Burke', 'Lostwood Lakes', 48.6114867, -102.4160002, ST_GeomFromText('POINT(48.6114867 -102.4160002)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1030644', 'Paulsen Creek', 'Stream', 'North Dakota', 'ND', 'Mountrail', 'White Earth', 48.3850205, -102.7718487, ST_GeomFromText('POINT(48.3850205 -102.7718487)', 4326), 48.4775, -102.8708333, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030645', 'Paulson Lake', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Balfour NW', 47.9855847, -100.6927563, ST_GeomFromText('POINT(47.9855847 -100.6927563)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1030654', 'Pearl Butte', 'Summit', 'North Dakota', 'ND', 'Adams', 'Pearl Butte', 46.0926684, -102.4206233, ST_GeomFromText('POINT(46.0926684 -102.4206233)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030655', 'Pearl Butte', 'Summit', 'North Dakota', 'ND', 'Hettinger', 'Stony Butte', 46.5465979, -102.5451217, ST_GeomFromText('POINT(46.5465979 -102.5451217)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL),
  ('1030656', 'Pearl Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Pearl Lake', 47.0323293, -99.356171, ST_GeomFromText('POINT(47.0323293 -99.356171)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1030659', 'Pelican Lake', 'Lake', 'North Dakota', 'ND', 'McLean', 'Peterson Lake', 47.5303958, -100.7673595, ST_GeomFromText('POINT(47.5303958 -100.7673595)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1030660', 'Pelican Lake', 'Lake', 'North Dakota', 'ND', 'McLean', 'Pelican Lake', 47.5981972, -100.6771761, ST_GeomFromText('POINT(47.5981972 -100.6771761)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1030661', 'Pelican Lake', 'Lake', 'North Dakota', 'ND', 'Ramsey', 'Tilden', 48.1479677, -99.1653432, ST_GeomFromText('POINT(48.1479677 -99.1653432)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1030662', 'Pelican Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Metigoshe Lake', 48.9438605, -100.2693721, ST_GeomFromText('POINT(48.9438605 -100.2693721)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1030663', 'Pelican Lake', 'Lake', 'North Dakota', 'ND', 'Burleigh', 'Florence Lake', 47.3056177, -100.3663905, ST_GeomFromText('POINT(47.3056177 -100.3663905)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1030682', 'Peters Creek', 'Stream', 'North Dakota', 'ND', 'Grant', 'Clark Butte NE', 46.6794506, -102.0921066, ST_GeomFromText('POINT(46.6794506 -102.0921066)', 4326), 46.7491667, -102.0977778, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030686', 'Peterson Coulee', 'Valley', 'North Dakota', 'ND', 'Benson', 'Flora', 47.8944482, -99.3848527, ST_GeomFromText('POINT(47.8944482 -99.3848527)', 4326), 47.9402808, -99.345688, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030687', 'Peterson Lake', 'Lake', 'North Dakota', 'ND', 'McLean', 'Peterson Lake', 47.5274162, -100.80428, ST_GeomFromText('POINT(47.5274162 -100.80428)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030688', 'Peterson Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Boundary Lake', 48.9650856, -100.1848128, ST_GeomFromText('POINT(48.9650856 -100.1848128)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1030691', 'Peterson Slough', 'Lake', 'North Dakota', 'ND', 'Williams', 'Tom Berg Lake', 48.606881, -103.2394621, ST_GeomFromText('POINT(48.606881 -103.2394621)', 4326), NULL, NULL, '1980-02-13', '2019-04-27', NULL, NULL, NULL),
  ('1030694', 'Petrified Lake', 'Lake', 'North Dakota', 'ND', 'Pierce', 'Petrified Lake', 48.0866319, -99.9558675, ST_GeomFromText('POINT(48.0866319 -99.9558675)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1030697', 'Phaelens Butte', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Mandaree', 47.6812042, -102.6798605, ST_GeomFromText('POINT(47.6812042 -102.6798605)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1030698', 'Pheasant Lake', 'Reservoir', 'North Dakota', 'ND', 'Dickey', 'Monango SW', 46.0178805, -98.6697736, ST_GeomFromText('POINT(46.0178805 -98.6697736)', 4326), NULL, NULL, '1980-02-13', '2019-02-27', NULL, NULL, NULL),
  ('1030699', 'Phelps Bay', 'Bay', 'North Dakota', 'ND', 'McKenzie', 'Charlson', 48.1064087, -102.7965736, ST_GeomFromText('POINT(48.1064087 -102.7965736)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030700', 'Phelps Lake', 'Lake', 'North Dakota', 'ND', 'Griggs', 'Sutton NE', 47.4994334, -98.3500852, ST_GeomFromText('POINT(47.4994334 -98.3500852)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1030703', 'Lake Pickard', 'Lake', 'North Dakota', 'ND', 'Nelson', 'Lake Pickard', 47.9464144, -97.9112898, ST_GeomFromText('POINT(47.9464144 -97.9112898)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1030706', 'Pickerel Lake', 'Lake', 'North Dakota', 'ND', 'Griggs', 'Kloten', 47.6654234, -98.0015598, ST_GeomFromText('POINT(47.6654234 -98.0015598)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1030707', 'Pickerel Lake Creek', 'Stream', 'North Dakota', 'ND', 'Griggs', 'Kloten SE', 47.5349945, -98.0395393, ST_GeomFromText('POINT(47.5349945 -98.0395393)', 4326), 47.650827, -98.0025954, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030708', 'Piepers Lake', 'Lake', 'North Dakota', 'ND', 'Divide', 'Wildrose', 48.6991049, -103.1616553, ST_GeomFromText('POINT(48.6991049 -103.1616553)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1030714', 'Pilot Knob', 'Summit', 'North Dakota', 'ND', 'Barnes', 'Pillsbury SE', 47.0561336, -97.8554392, ST_GeomFromText('POINT(47.0561336 -97.8554392)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL),
  ('1030728', 'Pipestem Creek', 'Stream', 'North Dakota', 'ND', 'Stutsman', 'Jamestown', 46.9027658, -98.7162137, ST_GeomFromText('POINT(46.9027658 -98.7162137)', 4326), 47.4141646, -99.6270623, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030729', 'Pipestem Lake', 'Reservoir', 'North Dakota', 'ND', 'Stutsman', 'Eldridge', 46.9746829, -98.8120258, ST_GeomFromText('POINT(46.9746829 -98.8120258)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', 'Official', 'Board Decision', '1971-01-01'),
  ('1030731', 'Pitcairn Creek', 'Stream', 'North Dakota', 'ND', 'Richland', 'Galchutt', 46.4566278, -96.7828573, ST_GeomFromText('POINT(46.4566278 -96.7828573)', 4326), 46.4719075, -96.9886965, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030732', 'Pitt Creek', 'Stream', 'North Dakota', 'ND', 'Sioux', 'Lookout Butte', 46.0425041, -101.4948537, ST_GeomFromText('POINT(46.0425041 -101.4948537)', 4326), 46.1200051, -101.5965235, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030733', 'Piuss Butte', 'Summit', 'North Dakota', 'ND', 'Sioux', 'Porcupine', 46.1942103, -101.0744333, ST_GeomFromText('POINT(46.1942103 -101.0744333)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL),
  ('1030742', 'Platte Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Lords Lake', 48.8736488, -100.2055746, ST_GeomFromText('POINT(48.8736488 -100.2055746)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1030762', 'Mount Pleasant', 'Summit', 'North Dakota', 'ND', 'Stutsman', 'Cleveland SE', 46.7916503, -99.0667767, ST_GeomFromText('POINT(46.7916503 -99.0667767)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1030764', 'Plowe Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Jim Lake', 47.1696209, -98.8703654, ST_GeomFromText('POINT(47.1696209 -98.8703654)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030765', 'Plum Butte', 'Summit', 'North Dakota', 'ND', 'Adams', 'Plum Butte', 46.1866689, -102.2204343, ST_GeomFromText('POINT(46.1866689 -102.2204343)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1030766', 'Plum Creek', 'Stream', 'North Dakota', 'ND', 'Williams', 'Lake Jessie', 48.0511355, -103.4015806, ST_GeomFromText('POINT(48.0511355 -103.4015806)', 4326), 48.0808333, -103.3855556, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030767', 'Plum Creek', 'Stream', 'North Dakota', 'ND', 'Sioux', 'Lookout Butte', 46.0469485, -101.4859649, ST_GeomFromText('POINT(46.0469485 -101.4859649)', 4326), 45.9497242, -101.3792979, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030768', 'Plum Creek', 'Stream', 'North Dakota', 'ND', 'Adams', 'Nason Hill', 46.0522247, -102.1090406, ST_GeomFromText('POINT(46.0522247 -102.1090406)', 4326), 45.9355559, -102.0151479, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030769', 'Plum Creek', 'Stream', 'North Dakota', 'ND', 'Stark', 'White Butte NE', 46.7444508, -102.3151704, ST_GeomFromText('POINT(46.7444508 -102.3151704)', 4326), 46.6216719, -102.4146143, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030770', 'Plum Lake', 'Lake', 'North Dakota', 'ND', 'Griggs', 'Binford', 47.5810646, -98.3068591, ST_GeomFromText('POINT(47.5810646 -98.3068591)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1030771', 'Point Kneeshaw', 'Summit', 'North Dakota', 'ND', 'Cavalier', 'Vang', 48.9251076, -98.0573773, ST_GeomFromText('POINT(48.9251076 -98.0573773)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL),
  ('1030772', 'Pointed Hill', 'Summit', 'North Dakota', 'ND', 'Morton', 'New Salem', 46.8302784, -101.4979222, ST_GeomFromText('POINT(46.8302784 -101.4979222)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1030773', 'Poison Lake', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Karlsruhe NE', 48.2386233, -100.5799959, ST_GeomFromText('POINT(48.2386233 -100.5799959)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1030775', 'Pond A', 'Reservoir', 'North Dakota', 'ND', 'Ward', 'Carpio NE', 48.4530991, -101.5845181, ST_GeomFromText('POINT(48.4530991 -101.5845181)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030776', 'Pond B', 'Reservoir', 'North Dakota', 'ND', 'Ward', 'Carpio NE', 48.44335, -101.565476, ST_GeomFromText('POINT(48.44335 -101.565476)', 4326), NULL, NULL, '1980-02-13', '2024-10-14', NULL, NULL, NULL),
  ('1030777', 'Pond C', 'Reservoir', 'North Dakota', 'ND', 'Ward', 'Carpio NE', 48.4364048, -101.5484958, ST_GeomFromText('POINT(48.4364048 -101.5484958)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030778', 'Pony Gulch', 'Valley', 'North Dakota', 'ND', 'Wells', 'Pony Gulch', 47.6213868, -100.0120702, ST_GeomFromText('POINT(47.6213868 -100.0120702)', 4326), 47.6138889, -100.0091667, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030779', 'Pop Lake', 'Lake', 'North Dakota', 'ND', 'Sheridan', 'McClusky', 47.3759733, -100.4374024, ST_GeomFromText('POINT(47.3759733 -100.4374024)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1030782', 'Porcupine Creek', 'Stream', 'North Dakota', 'ND', 'Sioux', 'Fort Yates NW', 46.1569404, -100.6554047, ST_GeomFromText('POINT(46.1569404 -100.6554047)', 4326), 46.0672217, -100.8692963, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030783', 'Porcupine Hill', 'Summit', 'North Dakota', 'ND', 'Morton', 'Dengate', 46.7830766, -101.7042374, ST_GeomFromText('POINT(46.7830766 -101.7042374)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL),
  ('1030784', 'Porcupine Hills', 'Ridge', 'North Dakota', 'ND', 'Sioux', 'Selfridge', 46.1150321, -100.8883065, ST_GeomFromText('POINT(46.1150321 -100.8883065)', 4326), NULL, NULL, '1980-02-13', '2017-01-31', NULL, NULL, NULL),
  ('1030787', 'Post Office Butte', 'Summit', 'North Dakota', 'ND', 'Bowman', 'Rhame', 46.2395567, -103.6774678, ST_GeomFromText('POINT(46.2395567 -103.6774678)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1030788', 'Postel Lake', 'Lake', 'North Dakota', 'ND', 'McLean', 'Pelican Lake', 47.6144169, -100.6784122, ST_GeomFromText('POINT(47.6144169 -100.6784122)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1030789', 'Potato Hill', 'Summit', 'North Dakota', 'ND', 'Emmons', 'Fort Rice', 46.6205138, -100.5029511, ST_GeomFromText('POINT(46.6205138 -100.5029511)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030790', 'Potters Lake', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Velva', 48.0425034, -100.8908663, ST_GeomFromText('POINT(48.0425034 -100.8908663)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1030791', 'Pound Lake', 'Lake', 'North Dakota', 'ND', 'Towner', 'Hansboro NE', 48.9421112, -99.3428484, ST_GeomFromText('POINT(48.9421112 -99.3428484)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1030793', 'Powers Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Powers Lake', 48.5514806, -102.6404647, ST_GeomFromText('POINT(48.5514806 -102.6404647)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1030798', 'Prairie Hill', 'Summit', 'North Dakota', 'ND', 'Slope', 'West Rainy Butte', 46.4655318, -103.1064534, ST_GeomFromText('POINT(46.4655318 -103.1064534)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL),
  ('1030806', 'Pretty Rock Butte', 'Summit', 'North Dakota', 'ND', 'Grant', 'Pretty Rock Butte', 46.1324377, -101.8056855, ST_GeomFromText('POINT(46.1324377 -101.8056855)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1030812', 'Prophets Mountains', 'Ridge', 'North Dakota', 'ND', 'Sheridan', 'Pelican Lake', 47.5261098, -100.6370784, ST_GeomFromText('POINT(47.5261098 -100.6370784)', 4326), NULL, NULL, '1980-02-13', '2012-05-10', NULL, NULL, NULL),
  ('1030815', 'Proposal Hill', 'Summit', 'North Dakota', 'ND', 'Sioux', 'Fort Yates', 46.1023846, -100.636375, ST_GeomFromText('POINT(46.1023846 -100.636375)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL),
  ('1030821', 'Purdy Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Carpenter Lake', 48.9472292, -99.8935042, ST_GeomFromText('POINT(48.9472292 -99.8935042)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1030822', 'Pursian Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Pursian Lake', 46.6849487, -99.9881038, ST_GeomFromText('POINT(46.6849487 -99.9881038)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1030829', 'Rabb Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Boundary Lake', 48.9875053, -100.1462405, ST_GeomFromText('POINT(48.9875053 -100.1462405)', 4326), NULL, NULL, '1980-02-13', NULL, 'Official', 'Board Decision', '1969-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030831', 'Rabbit City Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'International Peace Garden', 48.8841861, -100.0203939, ST_GeomFromText('POINT(48.8841861 -100.0203939)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1030836', 'Rames Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Lake Upsilon', 48.9593054, -99.8734064, ST_GeomFromText('POINT(48.9593054 -99.8734064)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1030838', 'Ranch Lake', 'Lake', 'North Dakota', 'ND', 'Pierce', 'Balta', 48.1388832, -100.088496, ST_GeomFromText('POINT(48.1388832 -100.088496)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1030839', 'Ranch Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Lake Williams', 47.1260685, -99.535002, ST_GeomFromText('POINT(47.1260685 -99.535002)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1030840', 'Random Creek', 'Stream', 'North Dakota', 'ND', 'Burleigh', 'McKenzie', 46.8449929, -100.4965067, ST_GeomFromText('POINT(46.8449929 -100.4965067)', 4326), 46.8655436, -100.2314977, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030841', 'Random Slough', 'Lake', 'North Dakota', 'ND', 'Burleigh', 'Driscoll', 46.8362973, -100.2109213, ST_GeomFromText('POINT(46.8362973 -100.2109213)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1030843', 'Rattlesnake Butte', 'Summit', 'North Dakota', 'ND', 'Morton', 'Huff', 46.5200274, -100.6647849, ST_GeomFromText('POINT(46.5200274 -100.6647849)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL),
  ('1030844', 'Rattlesnake Butte', 'Summit', 'North Dakota', 'ND', 'Emmons', 'Moffit SW', 46.5508185, -100.4962135, ST_GeomFromText('POINT(46.5508185 -100.4962135)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL),
  ('1030845', 'Rattlesnake Buttes', 'Ridge', 'North Dakota', 'ND', 'Bowman', 'Mud Buttes', 46.0898078, -103.7935661, ST_GeomFromText('POINT(46.0898078 -103.7935661)', 4326), NULL, NULL, '1980-02-13', '2017-01-31', NULL, NULL, NULL),
  ('1030851', 'Raymond Creek', 'Stream', 'North Dakota', 'ND', 'Mercer', 'Stanton', 47.3338892, -101.4568277, ST_GeomFromText('POINT(47.3338892 -101.4568277)', 4326), 47.450001, -101.5587762, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030852', 'Red Butte', 'Summit', 'North Dakota', 'ND', 'Oliver', 'Red Butte', 47.1872626, -101.5754485, ST_GeomFromText('POINT(47.1872626 -101.5754485)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1030853', 'Red Butte Bay', 'Bay', 'North Dakota', 'ND', 'Mercer', 'Raub SE', 47.5358384, -102.0943396, ST_GeomFromText('POINT(47.5358384 -102.0943396)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030857', 'Red Creek', 'Stream', 'North Dakota', 'ND', 'Grant', 'Lake Tschida West', 46.6177841, -101.8957084, ST_GeomFromText('POINT(46.6177841 -101.8957084)', 4326), 46.6505617, -101.9145991, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030859', 'Red Hills', 'Range', 'North Dakota', 'ND', 'Morton', 'Dengate', 46.7927815, -101.7070946, ST_GeomFromText('POINT(46.7927815 -101.7070946)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030860', 'Red Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Grand View', 48.7256614, -102.8568041, ST_GeomFromText('POINT(48.7256614 -102.8568041)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1030861', 'Red Lake', 'Lake', 'North Dakota', 'ND', 'Pierce', 'Balta', 48.2371079, -100.1161095, ST_GeomFromText('POINT(48.2371079 -100.1161095)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1030863', 'Red Willow Lake', 'Lake', 'North Dakota', 'ND', 'Griggs', 'Binford NE', 47.647406, -98.3737331, ST_GeomFromText('POINT(47.647406 -98.3737331)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1030878', 'Reihle Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Des Lacs', 48.3711251, -101.5762744, ST_GeomFromText('POINT(48.3711251 -101.5762744)', 4326), 48.3625, -101.5897222, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030880', 'Renner Bay', 'Bay', 'North Dakota', 'ND', 'Mercer', 'Beulah NE', 47.4741698, -101.8396155, ST_GeomFromText('POINT(47.4741698 -101.8396155)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030881', 'Rennie Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Rennie Lake', 48.8293279, -102.5233392, ST_GeomFromText('POINT(48.8293279 -102.5233392)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030886', 'Reunion Bay', 'Bay', 'North Dakota', 'ND', 'Mountrail', 'Sanish', 47.8952929, -102.6157416, ST_GeomFromText('POINT(47.8952929 -102.6157416)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030892', 'Rice Creek', 'Stream', 'North Dakota', 'ND', 'Morton', 'Fort Rice', 46.5083276, -100.5934548, ST_GeomFromText('POINT(46.5083276 -100.5934548)', 4326), 46.6111055, -100.7448487, '1980-02-13', NULL, 'Official', 'Board Decision', '1920-01-01'),
  ('1030893', 'Rice Lake', 'Lake', 'North Dakota', 'ND', 'Emmons', 'Senger Lake South', 46.0389889, -100.0804812, ST_GeomFromText('POINT(46.0389889 -100.0804812)', 4326), NULL, NULL, '1980-02-13', '2019-03-07', NULL, NULL, NULL),
  ('1030894', 'Rice Lake', 'Lake', 'North Dakota', 'ND', 'Ward', 'Rice Lake', 48.0083296, -101.5343987, ST_GeomFromText('POINT(48.0083296 -101.5343987)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1030895', 'Rice Lake', 'Lake', 'North Dakota', 'ND', 'Burleigh', 'Sibley Butte', 46.9899076, -100.2895937, ST_GeomFromText('POINT(46.9899076 -100.2895937)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1030898', 'Lake Richard', 'Lake', 'North Dakota', 'ND', 'Sheridan', 'Drake SE', 47.8463415, -100.3641572, ST_GeomFromText('POINT(47.8463415 -100.3641572)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1030934', 'Robbers Butte', 'Summit', 'North Dakota', 'ND', 'Adams', 'Cedar Butte', 46.0344469, -102.1970993, ST_GeomFromText('POINT(46.0344469 -102.1970993)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1030935', 'Roberts Lake', 'Lake', 'North Dakota', 'ND', 'Benson', 'Esmond', 48.1056241, -99.778133, ST_GeomFromText('POINT(48.1056241 -99.778133)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1030937', 'Robinson Coulee', 'Valley', 'North Dakota', 'ND', 'Eddy', 'Brantford NE', 47.746386, -98.8537203, ST_GeomFromText('POINT(47.746386 -98.8537203)', 4326), 47.7255528, -98.9731687, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030938', 'Rock Creek', 'Stream', 'South Dakota', 'SD', 'Corson', 'Bullhead', 45.7749978, -101.0837481, ST_GeomFromText('POINT(45.7749978 -101.0837481)', 4326), 45.9669459, -101.1295749, '1980-02-13', '2010-12-09', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030939', 'Rock Haven Creek', 'Stream', 'North Dakota', 'ND', 'Morton', 'Mandan', 46.872493, -100.8865212, ST_GeomFromText('POINT(46.872493 -100.8865212)', 4326), 46.8733333, -100.93, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030940', 'Rock Lake', 'Lake', 'North Dakota', 'ND', 'Towner', 'Rock Lake', 48.8229886, -99.2113371, ST_GeomFromText('POINT(48.8229886 -99.2113371)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', 'Official', 'Board Decision', '1920-01-01'),
  ('1030941', 'Rock Slough', 'Lake', 'North Dakota', 'ND', 'Burke', 'Lostwood Lakes', 48.5649016, -102.4480034, ST_GeomFromText('POINT(48.5649016 -102.4480034)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1030947', 'Rocky Butte', 'Summit', 'North Dakota', 'ND', 'Golden Valley', 'Thelan', 46.8101203, -103.9192701, ST_GeomFromText('POINT(46.8101203 -103.9192701)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL),
  ('1030948', 'Rocky Hill', 'Summit', 'North Dakota', 'ND', 'Billings', 'Hungry Man Butte', 47.2230366, -103.1134271, ST_GeomFromText('POINT(47.2230366 -103.1134271)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL),
  ('1030949', 'Rocky Ridge', 'Ridge', 'North Dakota', 'ND', 'Morton', 'Glen Ullin', 46.7694492, -101.8223761, ST_GeomFromText('POINT(46.7694492 -101.8223761)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030950', 'Rocky Ridge', 'Ridge', 'North Dakota', 'ND', 'Morton', 'New Salem', 46.7959287, -101.3845908, ST_GeomFromText('POINT(46.7959287 -101.3845908)', 4326), NULL, NULL, '1980-02-13', '2017-01-31', NULL, NULL, NULL),
  ('1030951', 'Rocky Ridge', 'Ridge', 'North Dakota', 'ND', 'Adams', 'Hettinger North', 46.0552263, -102.6406024, ST_GeomFromText('POINT(46.0552263 -102.6406024)', 4326), NULL, NULL, '1980-02-13', '2017-01-31', NULL, NULL, NULL),
  ('1030952', 'Rocky Run', 'Stream', 'North Dakota', 'ND', 'Eddy', 'New Rockford NE', 47.6336086, -99.0487245, ST_GeomFromText('POINT(47.6336086 -99.0487245)', 4326), 47.4736107, -99.708176, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030953', 'Roger Creek', 'Stream', 'North Dakota', 'ND', 'Grant', 'Lookout Butte SE', 46.0702812, -101.3626308, ST_GeomFromText('POINT(46.0702812 -101.3626308)', 4326), 45.9405572, -101.3190201, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1030955', 'Rohrich Dam', 'Reservoir', 'North Dakota', 'ND', 'Emmons', 'Rohrich Dam', 46.2583567, -100.0077637, ST_GeomFromText('POINT(46.2583567 -100.0077637)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1030978', 'Rosa Lake', 'Lake', 'North Dakota', 'ND', 'Pembina', 'Hallson', 48.8371899, -97.7527709, ST_GeomFromText('POINT(48.8371899 -97.7527709)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1030982', 'Rose Lake', 'Lake', 'North Dakota', 'ND', 'Nelson', 'Michigan West', 48.0421696, -98.1808847, ST_GeomFromText('POINT(48.0421696 -98.1808847)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1030983', 'Rose Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'International Peace Garden', 48.8838258, -100.0756846, ST_GeomFromText('POINT(48.8838258 -100.0756846)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1030987', 'Rosebud Coulee', 'Valley', 'North Dakota', 'ND', 'Pembina', 'Bathgate', 48.8888791, -97.4806352, ST_GeomFromText('POINT(48.8888791 -97.4806352)', 4326), 48.9277692, -97.5478578, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1030990', 'Rosefield Slough', 'Reservoir', 'North Dakota', 'ND', 'Eddy', 'Barlow', 47.6140033, -99.2185044, ST_GeomFromText('POINT(47.6140033 -99.2185044)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1031007', 'Ross Slough', 'Swamp', 'North Dakota', 'ND', 'Adams', 'Taylor Butte', 46.1823778, -102.6063089, ST_GeomFromText('POINT(46.1823778 -102.6063089)', 4326), NULL, NULL, '1980-02-13', '2019-02-22', NULL, NULL, NULL),
  ('1031009', 'Rosten Slough', 'Lake', 'North Dakota', 'ND', 'Divide', 'Wildrose', 48.6347707, -103.2051857, ST_GeomFromText('POINT(48.6347707 -103.2051857)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1031011', 'Rough Coulee', 'Valley', 'North Dakota', 'ND', 'McKenzie', 'Sanish NW', 47.9136277, -102.6776871, ST_GeomFromText('POINT(47.9136277 -102.6776871)', 4326), 47.8661272, -102.7243563, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1031012', 'Round Lake', 'Lake', 'North Dakota', 'ND', 'Pierce', 'Round Lake', 48.4795689, -100.1965662, ST_GeomFromText('POINT(48.4795689 -100.1965662)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1031013', 'Round Lake', 'Lake', 'North Dakota', 'ND', 'Logan', 'McKenna Lake South', 46.4477551, -99.8163251, ST_GeomFromText('POINT(46.4477551 -99.8163251)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1031014', 'Round Lake', 'Lake', 'North Dakota', 'ND', 'Barnes', 'Sanborn', 46.9169099, -98.2049947, ST_GeomFromText('POINT(46.9169099 -98.2049947)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1031015', 'Round Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Woodworth NW', 47.1461958, -99.4877777, ST_GeomFromText('POINT(47.1461958 -99.4877777)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1031016', 'Round Lake', 'Lake', 'North Dakota', 'ND', 'Griggs', 'Binford', 47.506082, -98.3328797, ST_GeomFromText('POINT(47.506082 -98.3328797)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1031017', 'Round Lake', 'Lake', 'North Dakota', 'ND', 'Eddy', 'Juanita', 47.5920358, -98.6980557, ST_GeomFromText('POINT(47.5920358 -98.6980557)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1031018', 'Round Lake', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Rangeley SE', 48.0319265, -100.276656, ST_GeomFromText('POINT(48.0319265 -100.276656)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1031019', 'Round Lake', 'Lake', 'North Dakota', 'ND', 'Pierce', 'Petrified Lake', 48.0837991, -99.9315931, ST_GeomFromText('POINT(48.0837991 -99.9315931)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1031022', 'Round Top', 'Summit', 'North Dakota', 'ND', 'Sioux', 'Round Top', 46.0188252, -101.9458294, ST_GeomFromText('POINT(46.0188252 -101.9458294)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1031023', 'Round Top', 'Summit', 'North Dakota', 'ND', 'Grant', 'Pretty Rock Butte', 46.1751397, -101.8506286, ST_GeomFromText('POINT(46.1751397 -101.8506286)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1031024', 'Round Top', 'Summit', 'North Dakota', 'ND', 'Stutsman', 'Vashti', 47.1292208, -99.0357614, ST_GeomFromText('POINT(47.1292208 -99.0357614)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1031025', 'Round Top', 'Summit', 'North Dakota', 'ND', 'Dunn', 'North Killdeer Mountain', 47.5498117, -102.9612708, ST_GeomFromText('POINT(47.5498117 -102.9612708)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL),
  ('1031026', 'Round Top Hill', 'Summit', 'North Dakota', 'ND', 'McLean', 'Roseglen', 47.8056708, -101.8019857, ST_GeomFromText('POINT(47.8056708 -101.8019857)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1031028', 'Ruddy Slough', 'Lake', 'North Dakota', 'ND', 'Burke', 'Thompson Lake', 48.6367997, -102.466052, ST_GeomFromText('POINT(48.6367997 -102.466052)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1031029', 'Rudolph Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Courtenay NW', 47.1332646, -98.6929482, ST_GeomFromText('POINT(47.1332646 -98.6929482)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1031032', 'Rugby Point', 'Cape', 'North Dakota', 'ND', 'Bottineau', 'Metigoshe Lake', 48.9719544, -100.3476402, ST_GeomFromText('POINT(48.9719544 -100.3476402)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1031033', 'Rugh Lake', 'Lake', 'North Dakota', 'ND', 'Nelson', 'Niagara SW', 47.7744557, -97.9600517, ST_GeomFromText('POINT(47.7744557 -97.9600517)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1031035', 'Runner Slough', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Cleveland NW', 46.8790337, -99.134068, ST_GeomFromText('POINT(46.8790337 -99.134068)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1031036', 'Rush Island Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Bloom', 46.9631447, -98.5008805, ST_GeomFromText('POINT(46.9631447 -98.5008805)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1031037', 'Rush Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Lake Helen', 47.1950816, -100.1117803, ST_GeomFromText('POINT(47.1950816 -100.1117803)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1031038', 'Rush Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Senior Lake', 47.2831907, -99.8901437, ST_GeomFromText('POINT(47.2831907 -99.8901437)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1031039', 'Rush Lake', 'Lake', 'North Dakota', 'ND', 'Ward', 'Rush Lake', 47.8899042, -101.4094437, ST_GeomFromText('POINT(47.8899042 -101.4094437)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1031040', 'Rush Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Lostwood Lakes', 48.5547687, -102.4271912, ST_GeomFromText('POINT(48.5547687 -102.4271912)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1031041', 'Rush Lake', 'Lake', 'North Dakota', 'ND', 'Cavalier', 'Hannah', 48.904683, -98.6833425, ST_GeomFromText('POINT(48.904683 -98.6833425)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1031042', 'Rush Lake', 'Lake', 'North Dakota', 'ND', 'Pierce', 'Round Lake', 48.3817835, -100.2199188, ST_GeomFromText('POINT(48.3817835 -100.2199188)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1031043', 'Rush Lake', 'Swamp', 'North Dakota', 'ND', 'Griggs', 'Binford', 47.5076175, -98.3580635, ST_GeomFromText('POINT(47.5076175 -98.3580635)', 4326), NULL, NULL, '1980-02-13', '2013-11-01', NULL, NULL, NULL),
  ('1031044', 'Rush River', 'Stream', 'North Dakota', 'ND', 'Cass', 'West Fargo North', 46.9963567, -96.9009158, ST_GeomFromText('POINT(46.9963567 -96.9009158)', 4326), 47.2244266, -97.3498104, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1031047', 'Russell Butte', 'Summit', 'North Dakota', 'ND', 'Grant', 'Wheeler Hills', 46.1902741, -101.6996894, ST_GeomFromText('POINT(46.1902741 -101.6996894)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL),
  ('1031048', 'Russell Lake', 'Lake', 'North Dakota', 'ND', 'Foster', 'Carrington West', 47.3787045, -99.1599317, ST_GeomFromText('POINT(47.3787045 -99.1599317)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1031050', 'Russian Slough', 'Stream', 'North Dakota', 'ND', 'Adams', 'Enterprise School', 46.2669519, -102.8521048, ST_GeomFromText('POINT(46.2669519 -102.8521048)', 4326), 46.1883404, -102.9351631, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1031051', 'Russian Spring Creek', 'Stream', 'North Dakota', 'ND', 'Stark', 'Davis Buttes', 46.9372308, -102.6785154, ST_GeomFromText('POINT(46.9372308 -102.6785154)', 4326), 47.1002918, -102.9354607, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1031052', 'Rustan Lake', 'Lake', 'North Dakota', 'ND', 'Hettinger', 'Cedar Lake', 46.3666749, -102.8987746, ST_GeomFromText('POINT(46.3666749 -102.8987746)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1031053', 'Rusten Slough', 'Lake', 'North Dakota', 'ND', 'Foster', 'Grace City', 47.5418404, -98.872297, ST_GeomFromText('POINT(47.5418404 -98.872297)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1031058', 'Rutten Lake', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Rangeley SE', 48.0131837, -100.3395286, ST_GeomFromText('POINT(48.0131837 -100.3395286)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1031071', 'Saddle Butte', 'Summit', 'North Dakota', 'ND', 'Dunn', 'Saddle Butte', 47.6622536, -102.3406101, ST_GeomFromText('POINT(47.6622536 -102.3406101)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1031072', 'Saddle Butte Bay', 'Bay', 'North Dakota', 'ND', 'Dunn', 'Saddle Butte', 47.6558411, -102.2968427, ST_GeomFromText('POINT(47.6558411 -102.2968427)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1031074', 'Saddle Buttes', 'Range', 'North Dakota', 'ND', 'Grant', 'Parks Hills', 46.1041724, -101.6843024, ST_GeomFromText('POINT(46.1041724 -101.6843024)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1031075', 'Sagebrush Coulee', 'Valley', 'North Dakota', 'ND', 'Dunn', 'Saddle Butte SW', 47.5644527, -102.4087908, ST_GeomFromText('POINT(47.5644527 -102.4087908)', 4326), 47.5400076, -102.3693451, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1031227', 'Saint Marys Lake', 'Lake', 'North Dakota', 'ND', 'Barnes', 'Moon Lake', 46.847219, -98.155374, ST_GeomFromText('POINT(46.847219 -98.155374)', 4326), NULL, NULL, '1980-02-13', '2025-03-04', NULL, NULL, NULL),
  ('1031326', 'Salon Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Lostwood Lakes', 48.6163551, -102.4096843, ST_GeomFromText('POINT(48.6163551 -102.4096843)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1031327', 'Salt Alkaline Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Tappen NE', 46.9448061, -99.5327545, ST_GeomFromText('POINT(46.9448061 -99.5327545)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1031328', 'Salt Coulee', 'Stream', 'North Dakota', 'ND', 'Grand Forks', 'Emerado SE', 47.8749846, -97.3209172, ST_GeomFromText('POINT(47.8749846 -97.3209172)', 4326), 47.8611111, -97.3383333, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1031329', 'Salt Lake', 'Lake', 'North Dakota', 'ND', 'Burleigh', 'Florence Lake', 47.3200824, -100.274365, ST_GeomFromText('POINT(47.3200824 -100.274365)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1031330', 'Salt Lake', 'Lake', 'North Dakota', 'ND', 'Walsh', 'Oakwood', 48.4594136, -97.284137, ST_GeomFromText('POINT(48.4594136 -97.284137)', 4326), NULL, NULL, '1980-02-13', '2018-11-28', NULL, NULL, NULL),
  ('1031331', 'Salt Water Coulee', 'Stream', 'North Dakota', 'ND', 'Grand Forks', 'Manvel', 48.0085952, -97.2117455, ST_GeomFromText('POINT(48.0085952 -97.2117455)', 4326), 47.8560979, -97.4331412, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1031335', 'Sanborn Lake', 'Lake', 'North Dakota', 'ND', 'Barnes', 'Sanborn', 46.9464395, -98.184593, ST_GeomFromText('POINT(46.9464395 -98.184593)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1031336', 'Sand Bottom Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Helde Lake', 48.6665072, -102.5258924, ST_GeomFromText('POINT(48.6665072 -102.5258924)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1031337', 'Sand Creek', 'Stream', 'North Dakota', 'ND', 'Emmons', 'Hazelton SW', 46.2652698, -100.3859509, ST_GeomFromText('POINT(46.2652698 -100.3859509)', 4326), 46.4569353, -100.3092805, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1031338', 'Sand Creek', 'Stream', 'North Dakota', 'ND', 'Williams', 'Williston West', 48.1397461, -103.6365863, ST_GeomFromText('POINT(48.1397461 -103.6365863)', 4326), 48.2980796, -103.8146477, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1031340', 'Sandy Lake', 'Lake', 'North Dakota', 'ND', 'Sheridan', 'Drake SE', 47.7760092, -100.3001965, ST_GeomFromText('POINT(47.7760092 -100.3001965)', 4326), NULL, NULL, '1980-02-13', '2025-03-04', NULL, NULL, NULL),
  ('1031341', 'Sand Lake', 'Lake', 'North Dakota', 'ND', 'Benson', 'Fillmore', 48.2166623, -99.7950774, ST_GeomFromText('POINT(48.2166623 -99.7950774)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1031342', 'Sand Lake', 'Lake', 'North Dakota', 'ND', 'Pierce', 'Rugby NE', 48.4090289, -99.8013678, ST_GeomFromText('POINT(48.4090289 -99.8013678)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1031343', 'Sand Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Metigoshe Lake', 48.9437309, -100.2521759, ST_GeomFromText('POINT(48.9437309 -100.2521759)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1031345', 'Sand Slough', 'Lake', 'North Dakota', 'ND', 'Pierce', 'Tunbridge', 48.3406952, -100.0857204, ST_GeomFromText('POINT(48.3406952 -100.0857204)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1031346', 'Sand Slough', 'Lake', 'North Dakota', 'ND', 'Burke', 'Helde Lake', 48.6595492, -102.5452085, ST_GeomFromText('POINT(48.6595492 -102.5452085)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1031351', 'Sandy Lakes', 'Lake', 'North Dakota', 'ND', 'Pierce', 'Selz NW', 47.9803611, -99.9574721, ST_GeomFromText('POINT(47.9803611 -99.9574721)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1031355', 'Sanish Bay', 'Bay', 'North Dakota', 'ND', 'Mountrail', 'Sanish', 47.9889047, -102.5324036, ST_GeomFromText('POINT(47.9889047 -102.5324036)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1031366', 'Scab Creek', 'Stream', 'North Dakota', 'ND', 'Morton', 'North Almont', 46.766391, -101.5815352, ST_GeomFromText('POINT(46.766391 -101.5815352)', 4326), 46.7175035, -101.6634812, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1031375', 'Schaffner Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Willow Creek West', 47.1219528, -102.200729, ST_GeomFromText('POINT(47.1219528 -102.200729)', 4326), 47.2161204, -102.1335068, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1031383', 'Schmidt Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'International Peace Garden', 48.9100345, -100.117063, ST_GeomFromText('POINT(48.9100345 -100.117063)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1031386', 'Schollaert Hills', 'Range', 'North Dakota', 'ND', 'Morton', 'North Almont', 46.824723, -101.5065334, ST_GeomFromText('POINT(46.824723 -101.5065334)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1031387', 'School Hill', 'Summit', 'North Dakota', 'ND', 'Morton', 'New Salem', 46.8517538, -101.4262962, ST_GeomFromText('POINT(46.8517538 -101.4262962)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL),
  ('1031388', 'School Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Cleveland SW', 46.7769615, -99.2484558, ST_GeomFromText('POINT(46.7769615 -99.2484558)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1031987', 'School Section Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Lostwood Lakes', 48.59801, -102.4401287, ST_GeomFromText('POINT(48.59801 -102.4401287)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1031988', 'School Section Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Carpenter Lake', 48.900963, -99.9254075, ST_GeomFromText('POINT(48.900963 -99.9254075)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1031989', 'School Section Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Metigoshe Lake', 48.9894561, -100.3284218, ST_GeomFromText('POINT(48.9894561 -100.3284218)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1031990', 'School Section Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Carpenter Lake', 48.9441671, -99.8775587, ST_GeomFromText('POINT(48.9441671 -99.8775587)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1031991', 'School Section Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Carpenter Lake', 48.9446962, -99.996778, ST_GeomFromText('POINT(48.9446962 -99.996778)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1031999', 'Schutte Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Dunseith', 48.8225026, -100.0482222, ST_GeomFromText('POINT(48.8225026 -100.0482222)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1032000', 'Schwahn Lake', 'Lake', 'North Dakota', 'ND', 'Emmons', 'Grassna NE', 46.1401639, -100.2747814, ST_GeomFromText('POINT(46.1401639 -100.2747814)', 4326), NULL, NULL, '1980-02-13', '2019-03-07', NULL, NULL, NULL),
  ('1032002', 'Schwoebel Slough', 'Lake', 'North Dakota', 'ND', 'Eddy', 'New Rockford NE', 47.6280166, -99.1128038, ST_GeomFromText('POINT(47.6280166 -99.1128038)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032004', 'Scorio Creek', 'Stream', 'North Dakota', 'ND', 'Williams', 'Zahl', 48.580028, -103.6876986, ST_GeomFromText('POINT(48.580028 -103.6876986)', 4326), 48.6039167, -103.8340935, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032005', 'Scott Hill', 'Summit', 'North Dakota', 'ND', 'Ransom', 'Nome SE', 46.5178273, -97.7800369, ST_GeomFromText('POINT(46.5178273 -97.7800369)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1032006', 'Scotts Lake', 'Lake', 'North Dakota', 'ND', 'Barnes', 'Clementsville', 47.0163501, -98.4621654, ST_GeomFromText('POINT(47.0163501 -98.4621654)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1032007', 'Scotts Slough', 'Stream', 'North Dakota', 'ND', 'Foster', 'New Rockford SE', 47.5427752, -99.0587225, ST_GeomFromText('POINT(47.5427752 -99.0587225)', 4326), 47.5211102, -99.3265056, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032011', 'Second Larson Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Surrey', 48.1947319, -101.2321051, ST_GeomFromText('POINT(48.1947319 -101.2321051)', 4326), 48.1211198, -101.4512754, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032012', 'Sectionline Slough', 'Lake', 'North Dakota', 'ND', 'Burke', 'Thompson Lake', 48.6333955, -102.4621066, ST_GeomFromText('POINT(48.6333955 -102.4621066)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1032018', 'Senger Lake', 'Lake', 'North Dakota', 'ND', 'Emmons', 'Senger Lake North', 46.1289436, -100.056333, ST_GeomFromText('POINT(46.1289436 -100.056333)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1032019', 'Senior Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Senior Lake', 47.3083801, -99.9301975, ST_GeomFromText('POINT(47.3083801 -99.9301975)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1032021', 'Sentinel Butte', 'Summit', 'North Dakota', 'ND', 'Golden Valley', 'Sentinel Butte SE', 46.8711245, -103.8354775, ST_GeomFromText('POINT(46.8711245 -103.8354775)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1032022', 'Sevenmile Coulee', 'Stream', 'North Dakota', 'ND', 'Renville', 'Mouse River Park', 48.8744642, -101.8654411, ST_GeomFromText('POINT(48.8744642 -101.8654411)', 4326), 48.9677945, -101.8590525, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032023', 'Sevenmile Coulee', 'Valley', 'North Dakota', 'ND', 'Stutsman', 'Ypsilanti', 46.8691538, -98.5709287, ST_GeomFromText('POINT(46.8691538 -98.5709287)', 4326), 47.0655471, -98.6175991, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032024', 'Sevenmile Creek', 'Stream', 'North Dakota', 'ND', 'Bowman', 'Cedar Ridge', 46.0830585, -103.924374, ST_GeomFromText('POINT(46.0830585 -103.924374)', 4326), 45.9819467, -103.7065879, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032025', 'Sevenmile Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Schafer', 47.7522404, -103.1538019, ST_GeomFromText('POINT(47.7522404 -103.1538019)', 4326), 47.7239064, -103.2199131, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032026', 'Seventeen Butte', 'Summit', 'North Dakota', 'ND', 'Stark', 'Dickinson North', 46.9422933, -102.8191996, ST_GeomFromText('POINT(46.9422933 -102.8191996)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1032027', 'Lake Seventeen', 'Lake', 'North Dakota', 'ND', 'Benson', 'Hesper', 47.9866599, -99.6485425, ST_GeomFromText('POINT(47.9866599 -99.6485425)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1032031', 'Sewer Branch', 'Stream', 'South Dakota', 'SD', 'Brown', 'Ellendale South', 45.9213622, -98.5348223, ST_GeomFromText('POINT(45.9213622 -98.5348223)', 4326), 46.0860822, -98.5881566, '1980-02-13', '2010-12-09', NULL, NULL, NULL),
  ('1032032', 'Shallow Alkali Lake', 'Lake', 'North Dakota', 'ND', 'McLean', 'Douglas East', 47.7804639, -101.4061425, ST_GeomFromText('POINT(47.7804639 -101.4061425)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1032033', 'Shallow Lake', 'Lake', 'North Dakota', 'ND', 'McLean', 'Max', 47.7771447, -101.3424777, ST_GeomFromText('POINT(47.7771447 -101.3424777)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1032034', 'Shallow Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Rennie Lake', 48.8458708, -102.5957175, ST_GeomFromText('POINT(48.8458708 -102.5957175)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1032039', 'Shea Slough', 'Swamp', 'North Dakota', 'ND', 'Ramsey', 'Starkweather NE', 48.3922276, -98.866239, ST_GeomFromText('POINT(48.3922276 -98.866239)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032041', 'Sheep Creek', 'Stream', 'North Dakota', 'ND', 'Adams', 'Plum Butte NE', 46.1472254, -102.0601506, ST_GeomFromText('POINT(46.1472254 -102.0601506)', 4326), 46.1530582, -102.1654322, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032042', 'Sheep Creek', 'Stream', 'North Dakota', 'ND', 'Grant', 'Sheep Creek Dam', 46.3472286, -101.8509786, ST_GeomFromText('POINT(46.3472286 -101.8509786)', 4326), 46.2258374, -102.0187609, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032045', 'Sheep Lake', 'Lake', 'North Dakota', 'ND', 'Benson', 'Harlow', 48.1807115, -99.555751, ST_GeomFromText('POINT(48.1807115 -99.555751)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1032046', 'Shell Creek', 'Stream', 'North Dakota', 'ND', 'Mountrail', 'Shell Creek Bay', 47.9805695, -102.2757276, ST_GeomFromText('POINT(47.9805695 -102.2757276)', 4326), 48.2322372, -102.1646118, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032049', 'Shell Valley', 'Valley', 'North Dakota', 'ND', 'Rolette', 'Lake Upsilon SE', 48.7511123, -99.8732003, ST_GeomFromText('POINT(48.7511123 -99.8732003)', 4326), 48.8113889, -99.8041667, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032052', 'Sherk Creek', 'Stream', 'North Dakota', 'ND', 'Oliver', 'Price', 47.0913808, -100.9409711, ST_GeomFromText('POINT(47.0913808 -100.9409711)', 4326), 47.1224928, -101.0776433, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032057', 'Sheyenne Lake', 'Reservoir', 'North Dakota', 'ND', 'Sheridan', 'Sheyenne Lake', 47.6991822, -100.2102764, ST_GeomFromText('POINT(47.6991822 -100.2102764)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1032062', 'Shin Bone Lake', 'Lake', 'North Dakota', 'ND', 'Benson', 'Warwick', 47.8609624, -98.7008284, ST_GeomFromText('POINT(47.8609624 -98.7008284)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1032066', 'Shipton Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Donnybrook', 48.5155765, -101.9040508, ST_GeomFromText('POINT(48.5155765 -101.9040508)', 4326), 48.4736316, -101.9709957, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032067', 'Shirley Lake', 'Lake', 'North Dakota', 'ND', 'Williams', 'Zahl', 48.5741651, -103.6650058, ST_GeomFromText('POINT(48.5741651 -103.6650058)', 4326), NULL, NULL, '1980-02-13', '2020-02-20', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032068', 'Shockley Slough', 'Stream', 'North Dakota', 'ND', 'Burke', 'Coteau', 48.797251, -102.2840568, ST_GeomFromText('POINT(48.797251 -102.2840568)', 4326), 48.7805556, -102.2752778, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032070', 'Shortfoot Creek', 'Stream', 'North Dakota', 'ND', 'Sargent', 'Geneseo', 46.1149616, -97.3750927, ST_GeomFromText('POINT(46.1149616 -97.3750927)', 4326), 45.8145398, -97.4102833, '1980-02-13', '2015-05-28', NULL, NULL, NULL),
  ('1032071', 'Shroyer Lake', 'Lake', 'North Dakota', 'ND', 'Eddy', 'Oberon SW', 47.7605792, -99.1942741, ST_GeomFromText('POINT(47.7605792 -99.1942741)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1032074', 'Sibley Butte', 'Summit', 'North Dakota', 'ND', 'Burleigh', 'Sibley Butte', 46.958435, -100.3669095, ST_GeomFromText('POINT(46.958435 -100.3669095)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1032077', 'Sibley Lake', 'Lake', 'North Dakota', 'ND', 'Griggs', 'Binford', 47.5159325, -98.3520812, ST_GeomFromText('POINT(47.5159325 -98.3520812)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1032081', 'Siebold Lake', 'Lake', 'North Dakota', 'ND', 'Sheridan', 'Siebold Lake', 47.7017016, -100.5614386, ST_GeomFromText('POINT(47.7017016 -100.5614386)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1032083', 'Signal Butte', 'Summit', 'North Dakota', 'ND', 'Morton', 'Huff', 46.5309081, -100.6868863, ST_GeomFromText('POINT(46.5309081 -100.6868863)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1032088', 'Silver Creek', 'Stream', 'North Dakota', 'ND', 'Griggs', 'Hannaford', 47.2536016, -98.1503742, ST_GeomFromText('POINT(47.2536016 -98.1503742)', 4326), 47.2477689, -98.2381507, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032089', 'Silver Creek', 'Stream', 'North Dakota', 'ND', 'Nelson', 'Binford NE', 47.7499964, -98.2798215, ST_GeomFromText('POINT(47.7499964 -98.2798215)', 4326), 47.895275, -98.2676012, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032090', 'Silver Lake', 'Lake', 'North Dakota', 'ND', 'Richland', 'Lidgerwood', 46.1193368, -97.1934136, ST_GeomFromText('POINT(46.1193368 -97.1934136)', 4326), NULL, NULL, '1980-02-13', '2023-05-26', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032091', 'Silver Lake', 'Lake', 'North Dakota', 'ND', 'Wells', 'Chaseley', 47.3777745, -99.7915066, ST_GeomFromText('POINT(47.3777745 -99.7915066)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032092', 'Silver Lake', 'Reservoir', 'North Dakota', 'ND', 'Sargent', 'Rutland', 46.0230783, -97.5701452, ST_GeomFromText('POINT(46.0230783 -97.5701452)', 4326), NULL, NULL, '1980-02-13', '2023-05-26', NULL, NULL, NULL),
  ('1032093', 'Silver Lake', 'Lake', 'North Dakota', 'ND', 'Benson', 'Brinsmade', 48.1936017, -99.2538785, ST_GeomFromText('POINT(48.1936017 -99.2538785)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1032094', 'Lake Silver', 'Lake', 'North Dakota', 'ND', 'Griggs', 'Binford', 47.5799303, -98.2791486, ST_GeomFromText('POINT(47.5799303 -98.2791486)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1032098', 'Simon Butte', 'Summit', 'North Dakota', 'ND', 'Stark', 'Davis Buttes', 46.9669141, -102.711246, ST_GeomFromText('POINT(46.9669141 -102.711246)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1032100', 'Sims Creek', 'Stream', 'North Dakota', 'ND', 'Morton', 'Almont East', 46.7480567, -101.4920883, ST_GeomFromText('POINT(46.7480567 -101.4920883)', 4326), 46.8591668, -101.4795888, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032101', 'Sinclair Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Metigoshe Lake', 48.9785954, -100.2502582, ST_GeomFromText('POINT(48.9785954 -100.2502582)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1032102', 'Sinclair Slough', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Cleveland SE', 46.7770265, -99.1022123, ST_GeomFromText('POINT(46.7770265 -99.1022123)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1032103', 'Sink Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Kunkel Lake', 47.1138715, -99.6561772, ST_GeomFromText('POINT(47.1138715 -99.6561772)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1032107', 'Sivertson Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Metigoshe Lake', 48.9840771, -100.2707829, ST_GeomFromText('POINT(48.9840771 -100.2707829)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032108', 'Sixmile Bay', 'Bay', 'North Dakota', 'ND', 'Ramsey', 'Grahams Island', 48.104722, -99.0254055, ST_GeomFromText('POINT(48.104722 -99.0254055)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032109', 'Sixmile Creek', 'Stream', 'North Dakota', 'ND', 'Grant', 'Bell Coulee West', 46.1825038, -101.4123554, ST_GeomFromText('POINT(46.1825038 -101.4123554)', 4326), 46.3350045, -101.4504169, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032110', 'Sixmile Creek', 'Stream', 'North Dakota', 'ND', 'McLean', 'Blackwater Lake SW', 47.5750045, -101.964059, ST_GeomFromText('POINT(47.5750045 -101.964059)', 4326), 47.6477837, -102.0354466, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032111', 'Sixmile Creek', 'Stream', 'North Dakota', 'ND', 'Williams', 'Trenton', 48.0083554, -103.865761, ST_GeomFromText('POINT(48.0083554 -103.865761)', 4326), 48.0480769, -103.975209, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032114', 'Skjermo Lake', 'Lake', 'North Dakota', 'ND', 'Divide', 'Skjermo Lake', 48.9534622, -103.8826226, ST_GeomFromText('POINT(48.9534622 -103.8826226)', 4326), NULL, NULL, '1980-02-13', '2019-02-28', NULL, NULL, NULL),
  ('1032115', 'Skinner Hill', 'Summit', 'North Dakota', 'ND', 'Ward', 'Sawyer', 48.0842575, -101.079433, ST_GeomFromText('POINT(48.0842575 -101.079433)', 4326), NULL, NULL, '1980-02-13', '2025-05-07', NULL, NULL, NULL),
  ('1032118', 'Skogmo Lake', 'Lake', 'North Dakota', 'ND', 'Sheridan', 'Lincoln Valley NW', 47.7180234, -100.4037949, ST_GeomFromText('POINT(47.7180234 -100.4037949)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1032119', 'Skull Creek', 'Stream', 'North Dakota', 'ND', 'Bowman', 'Cedar Hills', 46.1297261, -103.8563156, ST_GeomFromText('POINT(46.1297261 -103.8563156)', 4326), 46.0830596, -103.6499182, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032120', 'Skunk Coulee', 'Valley', 'North Dakota', 'ND', 'Grand Forks', 'Fordville', 48.1302707, -97.7787006, ST_GeomFromText('POINT(48.1302707 -97.7787006)', 4326), 48.0983281, -97.9978763, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032121', 'Skunk Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'String Buttes', 47.7275097, -102.4493502, ST_GeomFromText('POINT(47.7275097 -102.4493502)', 4326), 47.735289, -102.5887997, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032122', 'Skunk Creek Bay', 'Bay', 'North Dakota', 'ND', 'Dunn', 'String Buttes', 47.7383429, -102.4246268, ST_GeomFromText('POINT(47.7383429 -102.4246268)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032124', 'Skunk Hill', 'Summit', 'North Dakota', 'ND', 'Dunn', 'Killdeer Mountains', 47.4987059, -102.9848743, ST_GeomFromText('POINT(47.4987059 -102.9848743)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1032126', 'Slaughterhouse Bay', 'Bay', 'North Dakota', 'ND', 'Sioux', 'Fort Yates', 46.1144408, -100.6540162, ST_GeomFromText('POINT(46.1144408 -100.6540162)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032127', 'Slaughterhouse Creek', 'Stream', 'North Dakota', 'ND', 'Sioux', 'Fort Yates', 46.1138855, -100.6679053, ST_GeomFromText('POINT(46.1138855 -100.6679053)', 4326), 46.1119444, -100.7394444, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032128', 'Sled Creek', 'Stream', 'North Dakota', 'ND', 'Grant', 'Lake Tschida West', 46.6058397, -101.8873743, ST_GeomFromText('POINT(46.6058397 -101.8873743)', 4326), 46.5752778, -101.9016667, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032129', 'Sletten Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Battleview', 48.5594964, -102.7741725, ST_GeomFromText('POINT(48.5594964 -102.7741725)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1032130', 'Slick Creek', 'Stream', 'South Dakota', 'SD', 'Perkins', 'Hettinger South', 45.9155592, -102.7401574, ST_GeomFromText('POINT(45.9155592 -102.7401574)', 4326), 45.9980617, -102.7748797, '1980-02-13', '2010-12-09', NULL, NULL, NULL),
  ('1032131', 'Slow Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Dunn Center', 47.3016783, -102.5004608, ST_GeomFromText('POINT(47.3016783 -102.5004608)', 4326), 47.2747222, -102.5119444, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032132', 'Smishek Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Powers Lake', 48.6224222, -102.6554919, ST_GeomFromText('POINT(48.6224222 -102.6554919)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', 'Official', 'Board Decision', '1961-01-01'),
  ('1032133', 'Smith Butte', 'Summit', 'North Dakota', 'ND', 'Emmons', 'Kiefer Buttes', 46.0063837, -100.4317923, ST_GeomFromText('POINT(46.0063837 -100.4317923)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032134', 'Smith Coulee', 'Valley', 'North Dakota', 'ND', 'Pembina', 'Hallson', 48.7758277, -97.8403734, ST_GeomFromText('POINT(48.7758277 -97.8403734)', 4326), 48.8588836, -97.9748194, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032136', 'Smith Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Lostwood Lakes', 48.5573587, -102.3922034, ST_GeomFromText('POINT(48.5573587 -102.3922034)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1032137', 'Smith Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Dunseith', 48.8629582, -100.0295168, ST_GeomFromText('POINT(48.8629582 -100.0295168)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1032138', 'Smith Lakes', 'Lake', 'North Dakota', 'ND', 'Grand Forks', 'Niagara', 47.9211298, -97.8721226, ST_GeomFromText('POINT(47.9211298 -97.8721226)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1032140', 'Smokey Butte', 'Summit', 'North Dakota', 'ND', 'Sioux', 'Lookout Butte', 46.0371127, -101.3848085, ST_GeomFromText('POINT(46.0371127 -101.3848085)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1032141', 'Smoky Butte', 'Summit', 'North Dakota', 'ND', 'Divide', 'Smoky Butte', 48.6740025, -103.5625577, ST_GeomFromText('POINT(48.6740025 -103.5625577)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1032142', 'Smoky Lake', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Rangeley NE', 48.1675186, -100.2528112, ST_GeomFromText('POINT(48.1675186 -100.2528112)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1032145', 'Snake Creek', 'Stream', 'North Dakota', 'ND', 'Grant', 'Otter Creek West', 46.5991697, -101.4459791, ST_GeomFromText('POINT(46.5991697 -101.4459791)', 4326), 46.5463889, -101.4341667, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032146', 'Snake Creek', 'Stream', 'North Dakota', 'ND', 'McLean', 'Coleharbor NE', 47.6876947, -101.1057186, ST_GeomFromText('POINT(47.6876947 -101.1057186)', 4326), 47.7467689, -101.1149883, '1980-02-13', '2011-04-12', NULL, NULL, NULL),
  ('1032147', 'Snake Creek', 'Stream', 'North Dakota', 'ND', 'McHenry', 'Willow City SW', 48.5747203, -100.4481893, ST_GeomFromText('POINT(48.5747203 -100.4481893)', 4326), 48.4861071, -100.2951329, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032148', 'Snake Creek', 'Stream', 'North Dakota', 'ND', 'Grant', 'Paradise Flats', 46.2250051, -101.5534695, ST_GeomFromText('POINT(46.2250051 -101.5534695)', 4326), 46.1488948, -101.784306, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032149', 'Snake Creek', 'Stream', 'North Dakota', 'ND', 'Rolette', 'Fonda', 48.7086105, -100.012082, ST_GeomFromText('POINT(48.7086105 -100.012082)', 4326), 48.7988903, -99.9448603, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032152', 'Snake Hill', 'Summit', 'North Dakota', 'ND', 'Morton', 'Dengate', 46.7815043, -101.7386556, ST_GeomFromText('POINT(46.7815043 -101.7386556)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1032158', 'Snyder Lake', 'Reservoir', 'North Dakota', 'ND', 'Towner', 'Snyder Lake', 48.6897157, -99.217158, ST_GeomFromText('POINT(48.6897157 -99.217158)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1032160', 'Soap Lake', 'Lake', 'North Dakota', 'ND', 'Pierce', 'Rugby NW', 48.4117494, -99.9774614, ST_GeomFromText('POINT(48.4117494 -99.9774614)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1032164', 'Solberg Butte', 'Summit', 'North Dakota', 'ND', 'Burleigh', 'Solberg Butte', 46.9324923, -100.6217898, ST_GeomFromText('POINT(46.9324923 -100.6217898)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1032167', 'Solomon Hill', 'Summit', 'North Dakota', 'ND', 'Morton', 'Dengate', 46.8020424, -101.7197084, ST_GeomFromText('POINT(46.8020424 -101.7197084)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1032172', 'Sorby Hill', 'Summit', 'North Dakota', 'ND', 'Ransom', 'Fort Ransom', 46.5222521, -97.9168125, ST_GeomFromText('POINT(46.5222521 -97.9168125)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1032173', 'Sorenson Lake', 'Lake', 'North Dakota', 'ND', 'Wells', 'Sheyenne Lake NE', 47.7495108, -100.0629948, ST_GeomFromText('POINT(47.7495108 -100.0629948)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1032176', 'South Branch Beaver Creek', 'Stream', 'North Dakota', 'ND', 'Emmons', 'Weisser Dam West', 46.2333177, -99.9595543, ST_GeomFromText('POINT(46.2333177 -99.9595543)', 4326), 46.2444222, -99.7434464, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032177', 'South Branch Cattail Creek', 'Stream', 'North Dakota', 'ND', 'Emmons', 'Kiefer Buttes', 46.039161, -100.4106798, ST_GeomFromText('POINT(46.039161 -100.4106798)', 4326), 45.9747168, -100.380125, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032178', 'South Branch Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Minot NW', 48.2266761, -101.3909971, ST_GeomFromText('POINT(48.2266761 -101.3909971)', 4326), 48.1677869, -101.5212763, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032179', 'South Branch Elm River', 'Stream', 'North Dakota', 'ND', 'Traill', 'Kelso', 47.2594238, -97.0928635, ST_GeomFromText('POINT(47.2594238 -97.0928635)', 4326), 47.2416478, -97.2842549, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032180', 'South Branch Forest River', 'Stream', 'North Dakota', 'ND', 'Grand Forks', 'Inkster', 48.1886038, -97.7442547, ST_GeomFromText('POINT(48.1886038 -97.7442547)', 4326), 48.2133287, -97.9764854, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032181', 'South Branch Goose River', 'Stream', 'North Dakota', 'ND', 'Traill', 'Mayville North', 47.5105414, -97.3695354, ST_GeomFromText('POINT(47.5105414 -97.3695354)', 4326), 47.1966517, -97.6306511, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032182', 'South Branch Little Heart River', 'Stream', 'North Dakota', 'ND', 'Morton', 'Lynwood', 46.647218, -100.9367995, ST_GeomFromText('POINT(46.647218 -100.9367995)', 4326), 46.53083, -100.9287445, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032183', 'South Branch Maple River', 'Stream', 'North Dakota', 'ND', 'Ransom', 'Enderlin South', 46.6160832, -97.5967638, ST_GeomFromText('POINT(46.6160832 -97.5967638)', 4326), 46.5146921, -97.7556577, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032184', 'South Branch Park River', 'Stream', 'North Dakota', 'ND', 'Walsh', 'Grafton', 48.4408226, -97.4556357, ST_GeomFromText('POINT(48.4408226 -97.4556357)', 4326), 48.7044437, -98.2887251, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032185', 'South Branch Turtle River', 'Stream', 'North Dakota', 'ND', 'Grand Forks', 'Larimore East', 47.93749, -97.5839756, ST_GeomFromText('POINT(47.93749 -97.5839756)', 4326), 47.9574927, -97.8431482, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032186', 'South Brooks Slough', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Cleveland SE', 46.7912296, -99.1040008, ST_GeomFromText('POINT(46.7912296 -99.1040008)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032187', 'South Cedar Creek', 'Stream', 'North Dakota', 'ND', 'Bowman', 'Cedar Lake', 46.2819525, -102.9501633, ST_GeomFromText('POINT(46.2819525 -102.9501633)', 4326), 46.2222298, -102.9640525, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032189', 'South Egg Creek', 'Stream', 'North Dakota', 'ND', 'McHenry', 'Granville', 48.3125073, -100.7726396, ST_GeomFromText('POINT(48.3125073 -100.7726396)', 4326), 48.2550116, -100.9245923, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032190', 'South Fork Skunk Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'String Buttes', 47.6952877, -102.5004631, ST_GeomFromText('POINT(47.6952877 -102.5004631)', 4326), 47.6694444, -102.4647222, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032194', 'South Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Pettibone', 47.1019021, -99.609834, ST_GeomFromText('POINT(47.1019021 -99.609834)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1032195', 'South Loon Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Metigoshe Lake', 48.9263204, -100.3056174, ST_GeomFromText('POINT(48.9263204 -100.3056174)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1032196', 'South Marais River', 'Stream', 'North Dakota', 'ND', 'Grand Forks', 'Oslo SE', 48.1291505, -97.1636856, ST_GeomFromText('POINT(48.1291505 -97.1636856)', 4326), 48.0333144, -97.0706305, '1980-02-13', NULL, 'Official', 'Board Decision', '1974-01-01'),
  ('1032206', 'South Twin Lake', 'Lake', 'North Dakota', 'ND', 'Eddy', 'Lake Coe', 47.6570608, -98.7037099, ST_GeomFromText('POINT(47.6570608 -98.7037099)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1032207', 'South Washington Lake', 'Lake', 'North Dakota', 'ND', 'Eddy', 'Lake Coe', 47.724307, -98.6904661, ST_GeomFromText('POINT(47.724307 -98.6904661)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', 'Official', 'Board Decision', '1963-01-01'),
  ('1032209', 'Southeast Branch Little Heart River', 'Stream', 'North Dakota', 'ND', 'Morton', 'Lynwood', 46.6494398, -100.8934647, ST_GeomFromText('POINT(46.6494398 -100.8934647)', 4326), 46.5188852, -100.8831875, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032211', 'Sowers Bluff', 'Cliff', 'North Dakota', 'ND', 'Williams', 'Grenora', 48.5400261, -103.9802106, ST_GeomFromText('POINT(48.5400261 -103.9802106)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032214', 'Spencer Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Donnybrook', 48.5566887, -101.9657178, ST_GeomFromText('POINT(48.5566887 -101.9657178)', 4326), 48.5116886, -102.0065511, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032216', 'Sperry Lake', 'Lake', 'North Dakota', 'ND', 'Sheridan', 'Florence Lake', 47.3630078, -100.2519126, ST_GeomFromText('POINT(47.3630078 -100.2519126)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1032219', 'Spiritwood Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Spiritwood Lake', 47.0743481, -98.5874872, ST_GeomFromText('POINT(47.0743481 -98.5874872)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1032220', 'Spotted Horn Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Mandaree', 47.7080679, -102.6838017, ST_GeomFromText('POINT(47.7080679 -102.6838017)', 4326), 47.6847222, -102.6752778, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032221', 'Sprague Lake', 'Lake', 'North Dakota', 'ND', 'Sargent', 'Rutland', 46.0187116, -97.5400054, ST_GeomFromText('POINT(46.0187116 -97.5400054)', 4326), NULL, NULL, '1980-02-13', '2023-05-26', NULL, NULL, NULL),
  ('1032225', 'Spring Butte', 'Summit', 'North Dakota', 'ND', 'Adams', 'Cedar Butte', 46.1077405, -102.1947169, ST_GeomFromText('POINT(46.1077405 -102.1947169)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1032226', 'Spring Butte', 'Summit', 'North Dakota', 'ND', 'Morton', 'Glen Ullin', 46.7666027, -101.8042088, ST_GeomFromText('POINT(46.7666027 -101.8042088)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1032229', 'Spring Coulee', 'Stream', 'North Dakota', 'ND', 'McHenry', 'Balfour NW', 47.9197273, -100.7084772, ST_GeomFromText('POINT(47.9197273 -100.7084772)', 4326), 47.8747266, -100.874869, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032230', 'Spring Coulee', 'Valley', 'North Dakota', 'ND', 'Burleigh', 'Burnt Butte', 46.9841582, -100.8715224, ST_GeomFromText('POINT(46.9841582 -100.8715224)', 4326), 46.9711111, -100.8463889, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032231', 'Spring Creek', 'Stream', 'North Dakota', 'ND', 'McHenry', 'Velva', 48.0622307, -100.9140386, ST_GeomFromText('POINT(48.0622307 -100.9140386)', 4326), 47.9394505, -101.0001515, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032232', 'Spring Creek', 'Stream', 'North Dakota', 'ND', 'Bowman', 'Bowman SE', 46.0075034, -103.2807341, ST_GeomFromText('POINT(46.0075034 -103.2807341)', 4326), 46.2438955, -103.6451952, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032233', 'Spring Creek', 'Stream', 'North Dakota', 'ND', 'Bowman', 'Cedar Hills', 46.1661155, -103.8749272, ST_GeomFromText('POINT(46.1661155 -103.8749272)', 4326), 46.1113933, -103.6443623, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032234', 'Spring Creek', 'Stream', 'North Dakota', 'ND', 'Bowman', 'Cedar Hills', 46.2100056, -103.7729787, ST_GeomFromText('POINT(46.2100056 -103.7729787)', 4326), 46.2369508, -103.667974, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032235', 'Spring Creek', 'Stream', 'North Dakota', 'ND', 'Adams', 'Taylor Butte', 46.2213938, -102.6118239, ST_GeomFromText('POINT(46.2213938 -102.6118239)', 4326), 46.2538929, -102.5601574, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032236', 'Spring Creek', 'Stream', 'North Dakota', 'ND', 'Emmons', 'Linton', 46.2649902, -100.2434475, ST_GeomFromText('POINT(46.2649902 -100.2434475)', 4326), 46.3969334, -100.192334, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032237', 'Spring Creek', 'Stream', 'North Dakota', 'ND', 'Hettinger', 'Burt', 46.3636145, -102.1909924, ST_GeomFromText('POINT(46.3636145 -102.1909924)', 4326), 46.4491705, -102.3787753, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032238', 'Spring Creek', 'Stream', 'North Dakota', 'ND', 'Hettinger', 'Mott NW', 46.4016704, -102.468774, ST_GeomFromText('POINT(46.4016704 -102.468774)', 4326), 46.5202825, -102.5293339, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032239', 'Spring Creek', 'Stream', 'North Dakota', 'ND', 'Grant', 'Lake Tschida West', 46.6141732, -101.9801566, ST_GeomFromText('POINT(46.6141732 -101.9801566)', 4326), 46.5913954, -102.0087684, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032240', 'Spring Creek', 'Stream', 'North Dakota', 'ND', 'Barnes', 'Kathryn', 46.6674753, -97.9484346, ST_GeomFromText('POINT(46.6674753 -97.9484346)', 4326), 46.837485, -98.2848131, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032241', 'Spring Creek', 'Stream', 'North Dakota', 'ND', 'Stark', 'Clark Butte NW', 46.7130619, -102.1615539, ST_GeomFromText('POINT(46.7130619 -102.1615539)', 4326), 46.8327845, -102.2093352, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032242', 'Spring Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'New Hradec North', 47.0036237, -102.9307366, ST_GeomFromText('POINT(47.0036237 -102.9307366)', 4326), 47.1114037, -103.013516, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032243', 'Spring Creek', 'Stream', 'North Dakota', 'ND', 'Mercer', 'Beulah', 47.2522296, -101.8012797, ST_GeomFromText('POINT(47.2522296 -101.8012797)', 4326), 47.4094596, -102.9632424, '1980-02-13', '2018-01-16', NULL, NULL, NULL),
  ('1032244', 'Spring Creek', 'Stream', 'North Dakota', 'ND', 'Steele', 'Northwood', 47.6813771, -97.585644, ST_GeomFromText('POINT(47.6813771 -97.585644)', 4326), 47.7672135, -97.8317568, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032247', 'Spring Hill', 'Summit', 'North Dakota', 'ND', 'Grant', 'Leith', 46.3564192, -101.6830592, ST_GeomFromText('POINT(46.3564192 -101.6830592)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1032248', 'Spring Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Goldwin SW', 47.0361523, -99.1990645, ST_GeomFromText('POINT(47.0361523 -99.1990645)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1032249', 'Spring Lake', 'Lake', 'North Dakota', 'ND', 'Benson', 'Tokio', 47.9452996, -98.8200922, ST_GeomFromText('POINT(47.9452996 -98.8200922)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1032250', 'Spring Lake', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Denbigh', 48.3236804, -100.5847591, ST_GeomFromText('POINT(48.3236804 -100.5847591)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1032251', 'Spring Lake', 'Lake', 'North Dakota', 'ND', 'Pierce', 'Rugby NW', 48.492997, -99.9016006, ST_GeomFromText('POINT(48.492997 -99.9016006)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1032252', 'Spring Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Lostwood Lakes', 48.562404, -102.4064039, ST_GeomFromText('POINT(48.562404 -102.4064039)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1032253', 'Spring Lake', 'Reservoir', 'North Dakota', 'ND', 'Bowman', 'Rhame', 46.2227376, -103.7375606, ST_GeomFromText('POINT(46.2227376 -103.7375606)', 4326), NULL, NULL, '1980-02-13', '2019-04-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032254', 'Spring Slough', 'Lake', 'North Dakota', 'ND', 'Burke', 'Lostwood Lakes', 48.5827606, -102.4570737, ST_GeomFromText('POINT(48.5827606 -102.4570737)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1032255', 'Spring Valley Creek', 'Stream', 'North Dakota', 'ND', 'Morton', 'Glen Ullin', 46.8255603, -101.7770974, ST_GeomFromText('POINT(46.8255603 -101.7770974)', 4326), 46.7541667, -101.7897222, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032256', 'Springs Creek', 'Stream', 'North Dakota', 'ND', 'Hettinger', 'White Butte East', 46.5069485, -102.2907211, ST_GeomFromText('POINT(46.5069485 -102.2907211)', 4326), 46.4544482, -102.3812755, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032257', 'Springwater Dam', 'Reservoir', 'North Dakota', 'ND', 'Emmons', 'Rohrich Dam', 46.295821, -100.1167778, ST_GeomFromText('POINT(46.295821 -100.1167778)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032260', 'Square Butte', 'Summit', 'North Dakota', 'ND', 'Oliver', 'Nelson Lake', 47.0597163, -101.1976447, ST_GeomFromText('POINT(47.0597163 -101.1976447)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1032261', 'Square Butte Creek', 'Stream', 'North Dakota', 'ND', 'Morton', 'Harmon', 46.9049927, -100.9131891, ST_GeomFromText('POINT(46.9049927 -100.9131891)', 4326), 47.0791663, -101.4709834, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032265', 'Square Buttes', 'Summit', 'North Dakota', 'ND', 'Oliver', 'Price', 47.0507139, -100.9364851, ST_GeomFromText('POINT(47.0507139 -100.9364851)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1032266', 'Square Lake', 'Lake', 'North Dakota', 'ND', 'Benson', 'Tokio', 47.9065774, -98.8044268, ST_GeomFromText('POINT(47.9065774 -98.8044268)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1032267', 'North Tepee Creek', 'Stream', 'North Dakota', 'ND', 'Hettinger', 'Havelock', 46.4475057, -102.6543305, ST_GeomFromText('POINT(46.4475057 -102.6543305)', 4326), 46.3916667, -102.7383333, '1980-02-13', '2023-02-08', 'Official', 'Board Decision', '2022-12-08'),
  ('1032268', 'Sakakawea Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Saddle Butte SW', 47.6213982, -102.4724048, ST_GeomFromText('POINT(47.6213982 -102.4724048)', 4326), 47.7469576, -102.741582, '1980-02-13', '2022-09-08', 'Official', 'Secretarial Order', '2022-09-08');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032269', 'Sakakawea Bay', 'Bay', 'North Dakota', 'ND', 'Dunn', 'Saddle Butte SW', 47.6041755, -102.4337921, ST_GeomFromText('POINT(47.6041755 -102.4337921)', 4326), NULL, NULL, '1980-02-13', '2022-09-08', 'Official', 'Secretarial Order', '2022-09-08'),
  ('1032270', 'Mitigomizh Neyaashi', 'Cape', 'North Dakota', 'ND', 'Bottineau', 'Metigoshe Lake', 48.9886217, -100.3504184, ST_GeomFromText('POINT(48.9886217 -100.3504184)', 4326), NULL, NULL, '1980-02-13', '2022-09-08', 'Official', 'Secretarial Order', '2022-09-08'),
  ('1032271', 'Stacy Slough', 'Lake', 'North Dakota', 'ND', 'Burke', 'Westby Lake', 48.5771796, -102.359178, ST_GeomFromText('POINT(48.5771796 -102.359178)', 4326), NULL, NULL, '1980-02-13', '2020-06-22', NULL, NULL, NULL),
  ('1032277', 'Stage Creek', 'Stream', 'North Dakota', 'ND', 'Bowman', 'Bowman SE', 46.0511152, -103.3196249, ST_GeomFromText('POINT(46.0511152 -103.3196249)', 4326), 46.156117, -103.3343477, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032282', 'Standing Rock Hill', 'Summit', 'North Dakota', 'ND', 'Ransom', 'Fort Ransom', 46.623417, -97.9083538, ST_GeomFromText('POINT(46.623417 -97.9083538)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1032283', 'Standish Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Lake Williams', 47.1389176, -99.57539, ST_GeomFromText('POINT(47.1389176 -99.57539)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1032290', 'Starkweather Coulee', 'Valley', 'North Dakota', 'ND', 'Ramsey', 'Starkweather SE', 48.3111156, -98.8131792, ST_GeomFromText('POINT(48.3111156 -98.8131792)', 4326), 48.7566739, -98.866243, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032297', 'Steel Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Halliday NE', 47.4494515, -102.2910102, ST_GeomFromText('POINT(47.4494515 -102.2910102)', 4326), 47.4255642, -102.386568, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032299', 'Steele Lake', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Anamoose SW', 47.8749043, -100.2441034, ST_GeomFromText('POINT(47.8749043 -100.2441034)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1032301', 'Stein Lake', 'Lake', 'North Dakota', 'ND', 'Sheridan', 'Lincoln Valley SE', 47.5873524, -100.3683025, ST_GeomFromText('POINT(47.5873524 -100.3683025)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032302', 'Stella Lake', 'Lake', 'North Dakota', 'ND', 'Nelson', 'Lambs Lake', 47.9932446, -98.0338663, ST_GeomFromText('POINT(47.9932446 -98.0338663)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1032306', 'Sterling Reservoir', 'Reservoir', 'North Dakota', 'ND', 'Burleigh', 'Sterling', 46.8036023, -100.2752831, ST_GeomFromText('POINT(46.8036023 -100.2752831)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1032308', 'Stevens Slough', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Balfour NW', 47.987381, -100.6718499, ST_GeomFromText('POINT(47.987381 -100.6718499)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1032309', 'Stewart Lake', 'Lake', 'North Dakota', 'ND', 'Grand Forks', 'Mekinock', 48.0602742, -97.281251, ST_GeomFromText('POINT(48.0602742 -97.281251)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1032310', 'Stewart Lake', 'Reservoir', 'North Dakota', 'ND', 'Slope', 'Stewart Lake', 46.3436859, -103.4302086, ST_GeomFromText('POINT(46.3436859 -103.4302086)', 4326), NULL, NULL, '1980-02-13', '2019-04-27', NULL, NULL, NULL),
  ('1032315', 'Stink Creek', 'Stream', 'North Dakota', 'ND', 'McHenry', 'Voltaire', 48.1119522, -100.7865335, ST_GeomFromText('POINT(48.1119522 -100.7865335)', 4326), 48.0422222, -100.7775, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032316', 'Stink Lake', 'Lake', 'North Dakota', 'ND', 'Benson', 'Tilden', 48.2455532, -99.2434683, ST_GeomFromText('POINT(48.2455532 -99.2434683)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032317', 'Stink Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Crystal Springs', 46.8837532, -99.4248541, ST_GeomFromText('POINT(46.8837532 -99.4248541)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1032318', 'Stink Lake', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Voltaire', 48.070999, -100.7796094, ST_GeomFromText('POINT(48.070999 -100.7796094)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1032319', 'Stink Lake', 'Lake', 'North Dakota', 'ND', 'Benson', 'Churchs Ferry', 48.2525571, -99.2356482, ST_GeomFromText('POINT(48.2525571 -99.2356482)', 4326), NULL, NULL, '1980-02-13', '2017-02-25', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032320', 'Stink Lake', 'Lake', 'North Dakota', 'ND', 'Emmons', 'Pursian Lake', 46.6254072, -99.9372701, ST_GeomFromText('POINT(46.6254072 -99.9372701)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1032321', 'Stink Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Medina SW', 46.8569033, -99.3777867, ST_GeomFromText('POINT(46.8569033 -99.3777867)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1032327', 'Stockyard Creek', 'Stream', 'North Dakota', 'ND', 'Williams', 'Williston East', 48.1880795, -103.5160262, ST_GeomFromText('POINT(48.1880795 -103.5160262)', 4326), 48.1755782, -103.3704672, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032330', 'Stone Creek', 'Stream', 'North Dakota', 'ND', 'Bottineau', 'Deep', 48.6736223, -100.776255, ST_GeomFromText('POINT(48.6736223 -100.776255)', 4326), 48.9111236, -100.478203, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032331', 'Stone Johnny Coulee', 'Valley', 'North Dakota', 'ND', 'Williams', 'Cussicks Spring', 48.2136318, -103.1435184, ST_GeomFromText('POINT(48.2136318 -103.1435184)', 4326), 48.2177778, -103.1730556, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032332', 'Stone Johnny Hill', 'Summit', 'North Dakota', 'ND', 'Williams', 'Cussicks Spring', 48.2106041, -103.1555057, ST_GeomFromText('POINT(48.2106041 -103.1555057)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1032333', 'Stone Lake', 'Lake', 'North Dakota', 'ND', 'Ramsey', 'Webster', 48.2982723, -98.927786, ST_GeomFromText('POINT(48.2982723 -98.927786)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1032334', 'Stone Man Creek', 'Stream', 'North Dakota', 'ND', 'Sioux', 'Fort Yates NW', 46.1663851, -100.6865165, ST_GeomFromText('POINT(46.1663851 -100.6865165)', 4326), 46.1472201, -100.8040185, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032337', 'Stonehouse Butte', 'Summit', 'North Dakota', 'ND', 'Oliver', 'Price', 47.0650941, -100.9278346, ST_GeomFromText('POINT(47.0650941 -100.9278346)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1032339', 'Stony Brook', 'Stream', 'North Dakota', 'ND', 'Stutsman', 'Jim Lake', 47.2394406, -98.8345518, ST_GeomFromText('POINT(47.2394406 -98.8345518)', 4326), 47.2413844, -98.6837139, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032340', 'Stony Butte', 'Summit', 'North Dakota', 'ND', 'Hettinger', 'Stony Butte', 46.5486332, -102.5407675, ST_GeomFromText('POINT(46.5486332 -102.5407675)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1032341', 'Stony Creek', 'Stream', 'North Dakota', 'ND', 'Williams', 'Williston East', 48.1411352, -103.5813066, ST_GeomFromText('POINT(48.1411352 -103.5813066)', 4326), 48.2866876, -103.2557414, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032342', 'Stony Creek', 'Stream', 'North Dakota', 'ND', 'Ward', 'Bowbells SE', 48.79197, -102.1226652, ST_GeomFromText('POINT(48.79197 -102.1226652)', 4326), 48.7736413, -102.2990568, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032344', 'Stony Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Tappen North', 46.9528683, -99.6788853, ST_GeomFromText('POINT(46.9528683 -99.6788853)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1032345', 'Stony Lake', 'Lake', 'North Dakota', 'ND', 'Steele', 'Luverne', 47.2846805, -97.9072413, ST_GeomFromText('POINT(47.2846805 -97.9072413)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1032346', 'Stony Lake', 'Lake', 'North Dakota', 'ND', 'Foster', 'Juanita', 47.5434915, -98.6881995, ST_GeomFromText('POINT(47.5434915 -98.6881995)', 4326), NULL, NULL, '1980-02-13', '2020-08-19', NULL, NULL, NULL),
  ('1032347', 'Stony Lake', 'Lake', 'North Dakota', 'ND', 'Benson', 'Josephine', 47.978181, -99.2987652, ST_GeomFromText('POINT(47.978181 -99.2987652)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1032348', 'Stony Lake', 'Lake', 'North Dakota', 'ND', 'Pierce', 'Balta NW', 48.1537321, -100.1396459, ST_GeomFromText('POINT(48.1537321 -100.1396459)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1032350', 'Stony Slough', 'Swamp', 'North Dakota', 'ND', 'Burleigh', 'Stony Slough', 46.8895744, -100.0889938, ST_GeomFromText('POINT(46.8895744 -100.0889938)', 4326), NULL, NULL, '1980-02-13', '2013-09-14', NULL, NULL, NULL),
  ('1032354', 'Storm Creek Lake', 'Reservoir', 'North Dakota', 'ND', 'Morton', 'Bluegrass', 46.8988106, -101.6088603, ST_GeomFromText('POINT(46.8988106 -101.6088603)', 4326), NULL, NULL, '1980-02-13', '2019-02-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032365', 'Strawberry Lake', 'Reservoir', 'North Dakota', 'ND', 'McLean', 'Kongsberg', 47.7627482, -100.8682936, ST_GeomFromText('POINT(47.7627482 -100.8682936)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1032366', 'Strawberry Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Carbury', 48.9445642, -100.5050359, ST_GeomFromText('POINT(48.9445642 -100.5050359)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1032370', 'Stray Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Ziner Butte', 47.1927901, -102.6065731, ST_GeomFromText('POINT(47.1927901 -102.6065731)', 4326), 47.2836255, -102.7260186, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032371', 'Streaman Coulee', 'Valley', 'North Dakota', 'ND', 'Stutsman', 'Montpelier', 46.7397064, -98.5542602, ST_GeomFromText('POINT(46.7397064 -98.5542602)', 4326), 46.7672075, -98.4795353, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032373', 'Streitzel Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Carpenter Lake', 48.9799543, -99.9277477, ST_GeomFromText('POINT(48.9799543 -99.9277477)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1032374', 'String Buttes', 'Range', 'North Dakota', 'ND', 'Dunn', 'String Buttes', 47.6266756, -102.4285145, ST_GeomFromText('POINT(47.6266756 -102.4285145)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032375', 'Stump Lake', 'Lake', 'North Dakota', 'ND', 'Nelson', 'Pekin NE', 47.8773951, -98.3612867, ST_GeomFromText('POINT(47.8773951 -98.3612867)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1032378', 'Sucker Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Carpenter Lake', 48.9271573, -99.9692642, ST_GeomFromText('POINT(48.9271573 -99.9692642)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1032379', 'Sueet Slough', 'Lake', 'North Dakota', 'ND', 'Williams', 'Brush Mountain', 48.3929105, -104.0195785, ST_GeomFromText('POINT(48.3929105 -104.0195785)', 4326), NULL, NULL, '1980-02-13', '2019-02-27', NULL, NULL, NULL),
  ('1032380', 'Sugarloaf Butte', 'Summit', 'North Dakota', 'ND', 'Morton', 'Sugarloaf Butte', 46.6481694, -100.7301235, ST_GeomFromText('POINT(46.6481694 -100.7301235)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032381', 'Sullys Hill', 'Summit', 'North Dakota', 'ND', 'Benson', 'Fort Totten', 47.9902529, -98.9568105, ST_GeomFromText('POINT(47.9902529 -98.9568105)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1032384', 'Sunday Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Woodworth', 47.1858574, -99.3252749, ST_GeomFromText('POINT(47.1858574 -99.3252749)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1032392', 'Sunset Butte', 'Summit', 'North Dakota', 'ND', 'Bowman', 'Cedar Hills', 46.1496391, -103.809115, ST_GeomFromText('POINT(46.1496391 -103.809115)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1032400', 'Lake Susie', 'Reservoir', 'North Dakota', 'ND', 'McLean', 'Makoti SW', 47.8069758, -101.9566029, ST_GeomFromText('POINT(47.8069758 -101.9566029)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1032404', 'Swamp Creek', 'Stream', 'North Dakota', 'ND', 'Grant', 'Lake Tschida West', 46.6050064, -101.8776516, ST_GeomFromText('POINT(46.6050064 -101.8776516)', 4326), 46.5791667, -101.8933333, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032405', 'Swan Creek', 'Stream', 'North Dakota', 'ND', 'Cass', 'Casselton SE', 46.8641384, -97.1164772, ST_GeomFromText('POINT(46.8641384 -97.1164772)', 4326), 47.0358113, -97.4889789, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032406', 'Swan Lake', 'Lake', 'North Dakota', 'ND', 'Nelson', 'Pekin NW', 47.9577656, -98.4456753, ST_GeomFromText('POINT(47.9577656 -98.4456753)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1032407', 'Swan Lake', 'Lake', 'North Dakota', 'ND', 'Richland', 'Swan Lake', 46.0883851, -97.1087056, ST_GeomFromText('POINT(46.0883851 -97.1087056)', 4326), NULL, NULL, '1980-02-13', '2023-05-26', NULL, NULL, NULL),
  ('1032408', 'Swan Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Willow Lake', 47.2890837, -99.7614295, ST_GeomFromText('POINT(47.2890837 -99.7614295)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1032414', 'Sweetbriar Creek', 'Stream', 'North Dakota', 'ND', 'Morton', 'Crown Butte Lake', 46.8083279, -101.0404137, ST_GeomFromText('POINT(46.8083279 -101.0404137)', 4326), 46.9691678, -101.560703, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032416', 'Sweet Briar Lake', 'Reservoir', 'North Dakota', 'ND', 'Morton', 'Judson', 46.869703, -101.2710422, ST_GeomFromText('POINT(46.869703 -101.2710422)', 4326), NULL, NULL, '1980-02-13', '2019-02-21', NULL, NULL, NULL),
  ('1032418', 'Sweetwater Lake', 'Lake', 'North Dakota', 'ND', 'Barnes', 'Sanborn', 46.8798326, -98.2082025, ST_GeomFromText('POINT(46.8798326 -98.2082025)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1032419', 'Sweetwater Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Tappen NE', 46.9896446, -99.5915204, ST_GeomFromText('POINT(46.9896446 -99.5915204)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1032420', 'Sweetwater Lake', 'Lake', 'North Dakota', 'ND', 'Benson', 'Fort Totten', 47.9825194, -98.9749853, ST_GeomFromText('POINT(47.9825194 -98.9749853)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1032421', 'Sweetwater Lake', 'Lake', 'North Dakota', 'ND', 'Ramsey', 'Sweetwater', 48.2153328, -98.8238061, ST_GeomFromText('POINT(48.2153328 -98.8238061)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1032422', 'Swensens Slough', 'Lake', 'North Dakota', 'ND', 'Burke', 'Thompson Lake', 48.6967576, -102.4541582, ST_GeomFromText('POINT(48.6967576 -102.4541582)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1032424', 'Swim Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Helde Lake', 48.664989, -102.548094, ST_GeomFromText('POINT(48.664989 -102.548094)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1032428', 'Syrian Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Saint John', 48.8766159, -99.7365797, ST_GeomFromText('POINT(48.8766159 -99.7365797)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1032429', 'Lake Taayer', 'Lake', 'North Dakota', 'ND', 'Sargent', 'Straubville', 46.1242983, -97.96166, ST_GeomFromText('POINT(46.1242983 -97.96166)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1032430', 'Table Butte', 'Summit', 'North Dakota', 'ND', 'Morton', 'Huff', 46.5168561, -100.6596713, ST_GeomFromText('POINT(46.5168561 -100.6596713)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032433', 'Talbot Butte', 'Summit', 'North Dakota', 'ND', 'Bowman', 'Talbot Butte', 46.1633364, -103.3564353, ST_GeomFromText('POINT(46.1633364 -103.3564353)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1032438', 'Tasker Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Des Lacs', 48.308067, -101.5090535, ST_GeomFromText('POINT(48.308067 -101.5090535)', 4326), 48.2689001, -101.6365533, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032439', 'Taskers Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Kenmare', 48.6441913, -102.0621077, ST_GeomFromText('POINT(48.6441913 -102.0621077)', 4326), 48.6439153, -102.1565534, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032440', 'Tavis Creek', 'Stream', 'North Dakota', 'ND', 'Morton', 'Glen Ullin', 46.8183386, -101.8462666, ST_GeomFromText('POINT(46.8183386 -101.8462666)', 4326), 46.7644444, -101.8113889, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032445', 'Taylor Butte', 'Summit', 'North Dakota', 'ND', 'Adams', 'Taylor Butte', 46.1561637, -102.5715824, ST_GeomFromText('POINT(46.1561637 -102.5715824)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1032446', 'Lake Taylor', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Lake Klingenberg', 48.9317416, -100.466183, ST_GeomFromText('POINT(48.9317416 -100.466183)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1032447', 'Teal Slough', 'Lake', 'North Dakota', 'ND', 'Burke', 'Thompson Lake', 48.6518291, -102.4140495, ST_GeomFromText('POINT(48.6518291 -102.4140495)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1032452', 'Temvik Butte', 'Summit', 'North Dakota', 'ND', 'Emmons', 'Temvik', 46.3641609, -100.2855647, ST_GeomFromText('POINT(46.3641609 -100.2855647)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL),
  ('1032455', 'Tepee Buttes', 'Range', 'North Dakota', 'ND', 'Hettinger', 'Jung Lake', 46.3955625, -102.7634952, ST_GeomFromText('POINT(46.3955625 -102.7634952)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032456', 'Tepee Creek', 'Stream', 'North Dakota', 'ND', 'Hettinger', 'Regent', 46.3952826, -102.5887734, ST_GeomFromText('POINT(46.3952826 -102.5887734)', 4326), 46.3905626, -102.7671062, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032457', 'Terpena Hill', 'Summit', 'North Dakota', 'ND', 'Stutsman', 'Cleveland', 46.9007447, -99.1212916, ST_GeomFromText('POINT(46.9007447 -99.1212916)', 4326), NULL, NULL, '1980-02-13', '2012-12-04', NULL, NULL, NULL),
  ('1032460', 'Lake Tewaukon', 'Reservoir', 'North Dakota', 'ND', 'Sargent', 'Veblen NE', 45.9995333, -97.3517329, ST_GeomFromText('POINT(45.9995333 -97.3517329)', 4326), NULL, NULL, '1980-02-13', '2023-05-26', NULL, NULL, NULL),
  ('1032461', 'The Buttes', 'Summit', 'North Dakota', 'ND', 'Benson', 'Harlow', 48.1973019, -99.5003051, ST_GeomFromText('POINT(48.1973019 -99.5003051)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL),
  ('1032462', 'The Coulee', 'Valley', 'North Dakota', 'ND', 'Pembina', 'Crystal SE', 48.5516582, -97.5934192, ST_GeomFromText('POINT(48.5516582 -97.5934192)', 4326), 48.599994, -97.7537028, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032463', 'The Hogback', 'Ridge', 'North Dakota', 'ND', 'Morton', 'The Hogback', 46.5259353, -100.7578846, ST_GeomFromText('POINT(46.5259353 -100.7578846)', 4326), NULL, NULL, '1980-02-13', '2017-02-03', NULL, NULL, NULL),
  ('1032464', 'The Island', 'Island', 'North Dakota', 'ND', 'Benson', 'Leeds', 48.2572212, -99.4012459, ST_GeomFromText('POINT(48.2572212 -99.4012459)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032465', 'The Narrows', 'Gap', 'North Dakota', 'ND', 'Bottineau', 'Metigoshe Lake', 48.9808436, -100.3481959, ST_GeomFromText('POINT(48.9808436 -100.3481959)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032466', 'The Pyramid', 'Summit', 'North Dakota', 'ND', 'Ransom', 'Fort Ransom', 46.5239104, -97.9203701, ST_GeomFromText('POINT(46.5239104 -97.9203701)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1032467', 'The Swamp', 'Swamp', 'North Dakota', 'ND', 'Divide', 'Wildrose', 48.6376289, -103.1446408, ST_GeomFromText('POINT(48.6376289 -103.1446408)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1032469', 'Thirtymile Creek', 'Stream', 'North Dakota', 'ND', 'Hettinger', 'Bentley', 46.3555604, -102.0515425, ST_GeomFromText('POINT(46.3555604 -102.0515425)', 4326), 46.5838952, -102.7110024, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032470', 'Lake Thomas', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Metigoshe Lake', 48.9024263, -100.3251378, ST_GeomFromText('POINT(48.9024263 -100.3251378)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1032473', 'Thompson Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Thompson Lake', 48.649457, -102.4011233, ST_GeomFromText('POINT(48.649457 -102.4011233)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1032474', 'Thorn Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Dunseith', 48.8625588, -100.0074065, ST_GeomFromText('POINT(48.8625588 -100.0074065)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1032476', 'Thornton Slough', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Cleveland SW', 46.7972096, -99.1295772, ST_GeomFromText('POINT(46.7972096 -99.1295772)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1032477', 'Thorsons Lake', 'Lake', 'North Dakota', 'ND', 'Divide', 'Wildrose', 48.6713251, -103.2160113, ST_GeomFromText('POINT(48.6713251 -103.2160113)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1032478', 'Three Buttes', 'Range', 'North Dakota', 'ND', 'Grant', 'Freda', 46.3255576, -101.2356918, ST_GeomFromText('POINT(46.3255576 -101.2356918)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032479', 'Three Sisters Hill', 'Summit', 'North Dakota', 'ND', 'Cavalier', 'Vang', 48.9411831, -98.0665312, ST_GeomFromText('POINT(48.9411831 -98.0665312)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1032482', 'Tiffany Flats', 'Flat', 'North Dakota', 'ND', 'Eddy', 'Brantford NW', 47.7177749, -98.933445, ST_GeomFromText('POINT(47.7177749 -98.933445)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032484', 'Timber Coulee', 'Valley', 'North Dakota', 'ND', 'Ransom', 'Lisbon', 46.4066336, -97.6798202, ST_GeomFromText('POINT(46.4066336 -97.6798202)', 4326), 46.3302438, -97.8095441, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032485', 'Timber Creek', 'Stream', 'North Dakota', 'ND', 'Sioux', 'Lookout Butte', 46.0233374, -101.497909, ST_GeomFromText('POINT(46.0233374 -101.497909)', 4326), 45.9594475, -101.5573544, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032486', 'Timber Creek', 'Stream', 'North Dakota', 'ND', 'Grant', 'Round Top', 46.0611151, -101.9062543, ST_GeomFromText('POINT(46.0611151 -101.9062543)', 4326), 46.245558, -102.3607133, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032487', 'Timber Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Camp Creek East', 47.999192, -103.5365848, ST_GeomFromText('POINT(47.999192 -103.5365848)', 4326), 47.7569613, -103.5074173, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032491', 'Tioga Dam', 'Reservoir', 'North Dakota', 'ND', 'Williams', 'Tioga', 48.4072007, -102.9382619, ST_GeomFromText('POINT(48.4072007 -102.9382619)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1032493', 'Tobacco Garden Creek', 'Stream', 'North Dakota', 'ND', 'Williams', 'Cussicks Spring', 48.1611329, -103.1343522, ST_GeomFromText('POINT(48.1611329 -103.1343522)', 4326), 48.2105556, -103.2383333, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032498', 'Tolna Coulee', 'Valley', 'North Dakota', 'ND', 'Nelson', 'Tolna', 47.8213869, -98.4242684, ST_GeomFromText('POINT(47.8213869 -98.4242684)', 4326), 47.8455556, -98.4630556, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032500', 'Tom Berg Lake', 'Lake', 'North Dakota', 'ND', 'Williams', 'Tom Berg Lake', 48.5911346, -103.1572775, ST_GeomFromText('POINT(48.5911346 -103.1572775)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1032503', 'Tongue River', 'Stream', 'North Dakota', 'ND', 'Pembina', 'Bathgate NE', 48.9363771, -97.3028468, ST_GeomFromText('POINT(48.9363771 -97.3028468)', 4326), 48.7524979, -98.2373352, '1980-02-13', '2018-01-16', NULL, NULL, NULL),
  ('1032510', 'Tower Slough', 'Lake', 'North Dakota', 'ND', 'Burke', 'Thompson Lake', 48.6384401, -102.4173909, ST_GeomFromText('POINT(48.6384401 -102.4173909)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1032512', 'Township Lake', 'Reservoir', 'North Dakota', 'ND', 'Adams', 'Lemmon NE', 45.9764791, -102.0576, ST_GeomFromText('POINT(45.9764791 -102.0576)', 4326), NULL, NULL, '1980-02-13', '2019-02-22', NULL, NULL, NULL),
  ('1032514', 'Trappers Coulee', 'Valley', 'North Dakota', 'ND', 'Benson', 'Selz NE', 47.9894511, -99.802074, ST_GeomFromText('POINT(47.9894511 -99.802074)', 4326), 48.0444501, -99.804019, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032515', 'Trautman Slough', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Cleveland SW', 46.8248871, -99.1818933, ST_GeomFromText('POINT(46.8248871 -99.1818933)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1032518', 'Lake Trenton', 'Lake', 'North Dakota', 'ND', 'Williams', 'Trenton', 48.0541408, -103.8408544, ST_GeomFromText('POINT(48.0541408 -103.8408544)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1032543', 'Tschetter Lake', 'Lake', 'North Dakota', 'ND', 'McIntosh', 'Ashley East', 46.0011189, -99.3546915, ST_GeomFromText('POINT(46.0011189 -99.3546915)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1032544', 'Lake Tschida', 'Reservoir', 'North Dakota', 'ND', 'Grant', 'Lake Tschida West', 46.6098501, -101.8820345, ST_GeomFromText('POINT(46.6098501 -101.8820345)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1032545', 'Tub Butte', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Rawson', 47.8436974, -103.6113996, ST_GeomFromText('POINT(47.8436974 -103.6113996)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1032549', 'Turtle Creek', 'Stream', 'North Dakota', 'ND', 'McLean', 'Turtle Creek SW', 47.2619369, -100.9865324, ST_GeomFromText('POINT(47.2619369 -100.9865324)', 4326), 47.5974989, -100.9879246, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032550', 'Turtle Creek', 'Stream', 'North Dakota', 'ND', 'Grant', 'Pretty Rock Butte SE', 46.060838, -101.8476404, ST_GeomFromText('POINT(46.060838 -101.8476404)', 4326), 45.9661136, -101.9120872, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032551', 'Turtle Lake', 'Lake', 'North Dakota', 'ND', 'McLean', 'Turtle Lake', 47.5349073, -100.9705565, ST_GeomFromText('POINT(47.5349073 -100.9705565)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1032555', 'Turtle River', 'Stream', 'North Dakota', 'ND', 'Grand Forks', 'Oslo', 48.1735948, -97.1467398, ST_GeomFromText('POINT(48.1735948 -97.1467398)', 4326), 47.93749, -97.5839756, '1980-02-13', '2018-01-16', 'Official', 'Board Decision', '1974-01-01'),
  ('1032560', 'Twin Buttes', 'Range', 'North Dakota', 'ND', 'Dunn', 'Ziner Butte', 47.1752897, -102.600462, ST_GeomFromText('POINT(47.1752897 -102.600462)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032561', 'Twin Buttes', 'Range', 'North Dakota', 'ND', 'Ward', 'Minot SW', 48.119453, -101.4734981, ST_GeomFromText('POINT(48.119453 -101.4734981)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032563', 'Twin Buttes', 'Summit', 'North Dakota', 'ND', 'Adams', 'Barths Butte', 46.0419194, -102.3518474, ST_GeomFromText('POINT(46.0419194 -102.3518474)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1032564', 'Twin Buttes', 'Summit', 'North Dakota', 'ND', 'Bowman', 'Bowman', 46.2073569, -103.388875, ST_GeomFromText('POINT(46.2073569 -103.388875)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1032565', 'Twin Buttes', 'Summit', 'North Dakota', 'ND', 'Sioux', 'Cannon Ball', 46.3984788, -100.6184578, ST_GeomFromText('POINT(46.3984788 -100.6184578)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1032566', 'Twin Buttes', 'Summit', 'North Dakota', 'ND', 'Burleigh', 'Sugarloaf Butte', 46.6919622, -100.7074085, ST_GeomFromText('POINT(46.6919622 -100.7074085)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1032567', 'Twin Buttes', 'Summit', 'North Dakota', 'ND', 'Morton', 'Dengate', 46.8472808, -101.7109108, ST_GeomFromText('POINT(46.8472808 -101.7109108)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1032568', 'Twin Buttes', 'Summit', 'North Dakota', 'ND', 'Burleigh', 'Baldwin', 47.0588818, -100.7350159, ST_GeomFromText('POINT(47.0588818 -100.7350159)', 4326), NULL, NULL, '1980-02-13', '2012-12-04', NULL, NULL, NULL),
  ('1032570', 'Twin Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Thorne', 48.7057011, -99.9198927, ST_GeomFromText('POINT(48.7057011 -99.9198927)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1032571', 'Twin Lakes', 'Lake', 'North Dakota', 'ND', 'Benson', 'Crow Hill', 47.9654123, -99.0973852, ST_GeomFromText('POINT(47.9654123 -99.0973852)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1032572', 'Twin Lakes', 'Lake', 'North Dakota', 'ND', 'Nelson', 'Lake Pickard', 47.9695318, -97.8968676, ST_GeomFromText('POINT(47.9695318 -97.8968676)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032573', 'Twin Lakes', 'Lake', 'North Dakota', 'ND', 'Ramsey', 'Bartlett', 48.0351706, -98.494726, ST_GeomFromText('POINT(48.0351706 -98.494726)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1032574', 'Twin Lakes', 'Lake', 'North Dakota', 'ND', 'Williams', 'Twin Lakes', 48.4273412, -103.6201175, ST_GeomFromText('POINT(48.4273412 -103.6201175)', 4326), NULL, NULL, '1980-02-13', '2019-04-27', NULL, NULL, NULL),
  ('1032575', 'Twin Lakes', 'Lake', 'North Dakota', 'ND', 'Williams', 'Brush Lake', 48.6068593, -104.0138194, ST_GeomFromText('POINT(48.6068593 -104.0138194)', 4326), NULL, NULL, '1980-02-13', '2019-02-28', NULL, NULL, NULL),
  ('1032576', 'Twin Lakes', 'Lake', 'North Dakota', 'ND', 'Burleigh', 'Arena', 47.2126733, -100.130424, ST_GeomFromText('POINT(47.2126733 -100.130424)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1032577', 'Twin Lakes', 'Lake', 'North Dakota', 'ND', 'Nelson', 'Lambs Lake', 47.8819428, -98.1245575, ST_GeomFromText('POINT(47.8819428 -98.1245575)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1032578', 'Twin Lakes', 'Lake', 'North Dakota', 'ND', 'Benson', 'Harlow', 48.2366482, -99.6242467, ST_GeomFromText('POINT(48.2366482 -99.6242467)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1032579', 'Twin Lakes', 'Lake', 'North Dakota', 'ND', 'Pierce', 'Nanson', 48.5441789, -99.7656897, ST_GeomFromText('POINT(48.5441789 -99.7656897)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1032610', 'Upper Harker Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Tappen South', 46.8350453, -99.7125461, ST_GeomFromText('POINT(46.8350453 -99.7125461)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1032611', 'Upper Lostwood Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Lostwood Lakes', 48.5695195, -102.4385057, ST_GeomFromText('POINT(48.5695195 -102.4385057)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1032613', 'Upper Thompson Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Thompson Lake', 48.6565248, -102.390438, ST_GeomFromText('POINT(48.6565248 -102.390438)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032614', 'Lake Upsilon', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Lake Upsilon', 48.9662104, -99.8445663, ST_GeomFromText('POINT(48.9662104 -99.8445663)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1032623', 'Van Hook Arm', 'Bay', 'North Dakota', 'ND', 'Mountrail', 'Shell Creek Bay', 47.8833454, -102.3537877, ST_GeomFromText('POINT(47.8833454 -102.3537877)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032625', 'Van Patton Slough', 'Swamp', 'North Dakota', 'ND', 'Hettinger', 'Mott SW', 46.2800424, -102.446556, ST_GeomFromText('POINT(46.2800424 -102.446556)', 4326), NULL, NULL, '1980-02-13', '2019-02-22', NULL, NULL, NULL),
  ('1032630', 'Vang Hill', 'Summit', 'North Dakota', 'ND', 'Cavalier', 'Vang', 48.9199351, -98.0338953, ST_GeomFromText('POINT(48.9199351 -98.0338953)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1032647', 'Villneauve Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Carpenter Lake', 48.8802956, -99.9106835, ST_GeomFromText('POINT(48.8802956 -99.9106835)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1032652', 'Volk Butte', 'Summit', 'North Dakota', 'ND', 'Emmons', 'Grassna', 46.1242392, -100.311553, ST_GeomFromText('POINT(46.1242392 -100.311553)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1032657', 'Wagon Wheel Hill', 'Summit', 'North Dakota', 'ND', 'Kidder', 'Wagon Wheel Hill', 47.3175158, -99.6892977, ST_GeomFromText('POINT(47.3175158 -99.6892977)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1032659', 'Wahl Lake', 'Lake', 'North Dakota', 'ND', 'Richland', 'Lidgerwood', 46.0474919, -97.1416853, ST_GeomFromText('POINT(46.0474919 -97.1416853)', 4326), NULL, NULL, '1980-02-13', '2023-05-26', NULL, NULL, NULL),
  ('1032669', 'Walker Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Lake Upsilon', 48.9611177, -99.8574945, ST_GeomFromText('POINT(48.9611177 -99.8574945)', 4326), NULL, NULL, '1980-02-13', '2014-07-09', NULL, NULL, NULL),
  ('1032670', 'Walker Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Boundary Lake', 48.9600813, -100.2284474, ST_GeomFromText('POINT(48.9600813 -100.2284474)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032673', 'Walsh Point', 'Cape', 'North Dakota', 'ND', 'Walsh', 'Edinburg', 48.4097159, -97.8045354, ST_GeomFromText('POINT(48.4097159 -97.8045354)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032679', 'Walther Slough', 'Lake', 'North Dakota', 'ND', 'Emmons', 'Grassna NW', 46.1996799, -100.3762536, ST_GeomFromText('POINT(46.1996799 -100.3762536)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1032681', 'Ward Hill', 'Summit', 'North Dakota', 'ND', 'Burke', 'Vanville NE', 48.6548758, -102.3274284, ST_GeomFromText('POINT(48.6548758 -102.3274284)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1032682', 'Ward Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Thompson Lake', 48.7092421, -102.4690655, ST_GeomFromText('POINT(48.7092421 -102.4690655)', 4326), NULL, NULL, '1980-02-13', '2019-03-05', NULL, NULL, NULL),
  ('1032684', 'Warner Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Carpenter Lake', 48.9548756, -99.885374, ST_GeomFromText('POINT(48.9548756 -99.885374)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1032685', 'Warnke Hill', 'Summit', 'North Dakota', 'ND', 'Slope', 'Warnke Hill', 46.3330644, -103.1118371, ST_GeomFromText('POINT(46.3330644 -103.1118371)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1032699', 'Water Chief Bay', 'Bay', 'North Dakota', 'ND', 'Dunn', 'Hay Flat', 47.5947294, -102.2948984, ST_GeomFromText('POINT(47.5947294 -102.2948984)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032700', 'Waterloo Lake', 'Lake', 'North Dakota', 'ND', 'Walsh', 'Waterloo Lake', 48.5267636, -98.1036535, ST_GeomFromText('POINT(48.5267636 -98.1036535)', 4326), NULL, NULL, '1980-02-13', '2018-11-28', NULL, NULL, NULL),
  ('1032706', 'Webber Gulch', 'Stream', 'South Dakota', 'SD', 'Brown', 'Frederick NW', 45.9160851, -98.6867684, ST_GeomFromText('POINT(45.9160851 -98.6867684)', 4326), 46.0316384, -98.9042728, '1980-02-13', '2010-12-09', NULL, NULL, NULL),
  ('1032707', 'Weber Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Steele', 46.8289509, -99.9555385, ST_GeomFromText('POINT(46.8289509 -99.9555385)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032709', 'Weber Slough', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Cleveland SE', 46.8193074, -99.1239717, ST_GeomFromText('POINT(46.8193074 -99.1239717)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1032710', 'Webers Gulch', 'Valley', 'North Dakota', 'ND', 'Dickey', 'Forbes NW', 45.9414185, -98.8797965, ST_GeomFromText('POINT(45.9414185 -98.8797965)', 4326), 45.956603, -98.914189, '1980-02-13', '2016-12-02', NULL, NULL, NULL),
  ('1032716', 'Weisser Dam', 'Reservoir', 'North Dakota', 'ND', 'McIntosh', 'Weisser Dam West', 46.2138331, -99.8767301, ST_GeomFromText('POINT(46.2138331 -99.8767301)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1032717', 'Weller Slough', 'Lake', 'North Dakota', 'ND', 'McLean', 'Underwood', 47.3960369, -101.1923694, ST_GeomFromText('POINT(47.3960369 -101.1923694)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1032720', 'Wendland Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Carpenter Lake', 48.9015731, -99.9460215, ST_GeomFromText('POINT(48.9015731 -99.9460215)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1032726', 'West Branch Apple Creek', 'Stream', 'North Dakota', 'ND', 'Burleigh', 'McKenzie NW', 46.8874925, -100.4801169, ST_GeomFromText('POINT(46.8874925 -100.4801169)', 4326), 47.1166595, -100.6670717, '1980-02-13', NULL, 'Official', 'Board Decision', '1976-01-01'),
  ('1032727', 'West Branch Douglas Creek', 'Stream', 'North Dakota', 'ND', 'Ward', 'Emmet SW', 47.6013905, -101.6537778, ST_GeomFromText('POINT(47.6013905 -101.6537778)', 4326), 47.6602813, -101.8123898, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032728', 'West Branch Long Lake Creek', 'Stream', 'North Dakota', 'ND', 'Emmons', 'Braddock', 46.5463761, -100.1167759, ST_GeomFromText('POINT(46.5463761 -100.1167759)', 4326), 46.3844324, -100.1364997, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032729', 'West Branch Short Creek', 'Stream', 'North Dakota', 'ND', 'Burke', 'Columbus', 48.9991983, -102.8371213, ST_GeomFromText('POINT(48.9991983 -102.8371213)', 4326), 48.8453094, -102.9179575, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032730', 'West Cut Bank Creek', 'Stream', 'North Dakota', 'ND', 'Bottineau', 'Antler SW', 48.7758551, -101.3857158, ST_GeomFromText('POINT(48.7758551 -101.3857158)', 4326), 48.8950202, -101.6154391, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032736', 'West Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Goldwin', 47.2076106, -99.2301523, ST_GeomFromText('POINT(47.2076106 -99.2301523)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1032737', 'West Lake', 'Lake', 'North Dakota', 'ND', 'Sheridan', 'Florence Lake', 47.370934, -100.2792416, ST_GeomFromText('POINT(47.370934 -100.2792416)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1032746', 'West Snowflake Creek', 'Stream', 'Manitoba', 'MA', 'Not Determined', 'Wales OE N', 49.0178187, -98.602649, ST_GeomFromText('POINT(49.0178187 -98.602649)', 4326), 48.9531489, -98.7297535, '1980-02-13', '2013-03-21', NULL, NULL, NULL),
  ('1032750', 'Westby Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Westby Lake', 48.55077, -102.3505489, ST_GeomFromText('POINT(48.55077 -102.3505489)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1032762', 'Wheaton Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Lake Upsilon', 48.9185287, -99.7922551, ST_GeomFromText('POINT(48.9185287 -99.7922551)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1032763', 'Wheeler Hills', 'Range', 'North Dakota', 'ND', 'Grant', 'Wheeler Hills', 46.1358392, -101.6968033, ST_GeomFromText('POINT(46.1358392 -101.6968033)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032766', 'Whetstone Buttes', 'Ridge', 'North Dakota', 'ND', 'Adams', 'Whetstone Buttes', 46.2249659, -102.9549358, ST_GeomFromText('POINT(46.2249659 -102.9549358)', 4326), NULL, NULL, '1980-02-13', '2017-01-31', NULL, NULL, NULL),
  ('1032768', 'Whisky Creek', 'Stream', 'North Dakota', 'ND', 'Grand Forks', 'Larimore West', 47.9444358, -97.7106437, ST_GeomFromText('POINT(47.9444358 -97.7106437)', 4326), 47.9836041, -97.8612047, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032769', 'Whisky Creek', 'Stream', 'North Dakota', 'ND', 'Grand Forks', 'Orr', 48.0302696, -97.6928657, ST_GeomFromText('POINT(48.0302696 -97.6928657)', 4326), 48.0102706, -97.8162029, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032774', 'White Butte', 'Summit', 'North Dakota', 'ND', 'Stark', 'South Heart', 46.8155428, -102.9555472, ST_GeomFromText('POINT(46.8155428 -102.9555472)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032775', 'White Butte', 'Summit', 'North Dakota', 'ND', 'Hettinger', 'White Butte East', 46.5995674, -102.3642969, ST_GeomFromText('POINT(46.5995674 -102.3642969)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1032779', 'White Earth Creek', 'Stream', 'North Dakota', 'ND', 'Burke', 'Battleview', 48.545858, -102.7585144, ST_GeomFromText('POINT(48.545858 -102.7585144)', 4326), 48.6930861, -102.883513, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032781', 'White Lake', 'Lake', 'North Dakota', 'ND', 'Sargent', 'Marlow', 45.9971993, -97.3943278, ST_GeomFromText('POINT(45.9971993 -97.3943278)', 4326), NULL, NULL, '1980-02-13', '2023-05-26', NULL, NULL, NULL),
  ('1032782', 'White Lake', 'Lake', 'North Dakota', 'ND', 'Slope', 'White Lake', 46.4762135, -103.2144861, ST_GeomFromText('POINT(46.4762135 -103.2144861)', 4326), NULL, NULL, '1980-02-13', '2019-02-21', NULL, NULL, NULL),
  ('1032783', 'White Lake', 'Lake', 'North Dakota', 'ND', 'Mountrail', 'Lostwood', 48.3882857, -102.45708, ST_GeomFromText('POINT(48.3882857 -102.45708)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1032788', 'White Tail Bay', 'Bay', 'North Dakota', 'ND', 'Williams', 'Cussicks Spring', 48.1558552, -103.1312967, ST_GeomFromText('POINT(48.1558552 -103.1312967)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032793', 'Whitebody Coulee', 'Valley', 'North Dakota', 'ND', 'McKenzie', 'Sanish NW', 47.9008493, -102.6629649, ST_GeomFromText('POINT(47.9008493 -102.6629649)', 4326), 47.8727937, -102.6965776, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032795', 'Whitestone Hills', 'Range', 'North Dakota', 'ND', 'Sargent', 'Lisbon SW', 46.2666301, -97.680374, ST_GeomFromText('POINT(46.2666301 -97.680374)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032799', 'Whitmore Creek', 'Stream', 'North Dakota', 'ND', 'Grant', 'Pitt Creek', 46.0369494, -101.6226332, ST_GeomFromText('POINT(46.0369494 -101.6226332)', 4326), 46.1341729, -101.7518042, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032804', 'Wild Cow Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Chris Creek', 48.0258575, -103.3163009, ST_GeomFromText('POINT(48.0258575 -103.3163009)', 4326), 47.9275226, -103.352136, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032806', 'Wild Rice Creek', 'Stream', 'North Dakota', 'ND', 'Sargent', 'Forman', 46.01529, -97.64091, ST_GeomFromText('POINT(46.01529 -97.64091)', 4326), 45.8199553, -97.5131539, '1980-02-13', '2011-06-01', NULL, NULL, NULL),
  ('1032809', 'Wildwood Lake', 'Lake', 'North Dakota', 'ND', 'McLean', 'Sanger', 47.1738749, -100.966909, ST_GeomFromText('POINT(47.1738749 -100.966909)', 4326), NULL, NULL, '1980-02-13', '2013-09-14', NULL, NULL, NULL),
  ('1032812', 'Lake Williams', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Lake Williams', 47.1293783, -99.6169178, ST_GeomFromText('POINT(47.1293783 -99.6169178)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1032813', 'Lake Williams', 'Lake', 'North Dakota', 'ND', 'McLean', 'Peterson Lake', 47.5278503, -100.8344928, ST_GeomFromText('POINT(47.5278503 -100.8344928)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1032819', 'Willow Creek', 'Stream', 'North Dakota', 'ND', 'Adams', 'Cow Butte NE', 45.9536152, -102.8743292, ST_GeomFromText('POINT(45.9536152 -102.8743292)', 4326), 46.060006, -102.8454384, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032820', 'Willow Creek', 'Stream', 'North Dakota', 'ND', 'Mercer', 'Willow Creek West', 47.1211195, -102.127671, ST_GeomFromText('POINT(47.1211195 -102.127671)', 4326), 46.9719517, -102.0721101, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032821', 'Willow Creek', 'Stream', 'North Dakota', 'ND', 'Williams', 'Williston SE', 48.0344696, -103.524084, ST_GeomFromText('POINT(48.0344696 -103.524084)', 4326), 48.102802, -103.4410254, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032822', 'Willow Creek', 'Stream', 'North Dakota', 'ND', 'Walsh', 'Oakwood', 48.4599864, -97.2795187, ST_GeomFromText('POINT(48.4599864 -97.2795187)', 4326), 48.7058272, -97.9878785, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032824', 'Willow Creek', 'Stream', 'North Dakota', 'ND', 'McHenry', 'Upham SE', 48.5777776, -100.5412456, ST_GeomFromText('POINT(48.5777776 -100.5412456)', 4326), 48.9891721, -100.1517962, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032826', 'Willow Lake', 'Lake', 'North Dakota', 'ND', 'Steele', 'Luverne', 47.2729089, -97.9262108, ST_GeomFromText('POINT(47.2729089 -97.9262108)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032827', 'Willow Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Willow Lake', 47.2812601, -99.8191344, ST_GeomFromText('POINT(47.2812601 -99.8191344)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1032828', 'Willow Lake', 'Lake', 'North Dakota', 'ND', 'Divide', 'Wildrose', 48.7178021, -103.1441128, ST_GeomFromText('POINT(48.7178021 -103.1441128)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1032829', 'Willow Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Boundary Lake', 48.9247275, -100.1462793, ST_GeomFromText('POINT(48.9247275 -100.1462793)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1032835', 'Wilson Creek', 'Stream', 'North Dakota', 'ND', 'Bowman', 'Haley', 45.9552808, -103.1185059, ST_GeomFromText('POINT(45.9552808 -103.1185059)', 4326), 45.887184, -103.2050661, '1980-02-13', '2015-05-28', NULL, NULL, NULL),
  ('1032836', 'Wilson Creek', 'Stream', 'North Dakota', 'ND', 'Morton', 'Dengate', 46.8036141, -101.6570933, ST_GeomFromText('POINT(46.8036141 -101.6570933)', 4326), 46.9655615, -101.8048781, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032837', 'Wilson Creek', 'Stream', 'North Dakota', 'ND', 'Grand Forks', 'Thompson', 47.8458128, -97.1000806, ST_GeomFromText('POINT(47.8458128 -97.1000806)', 4326), 47.799148, -97.217584, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032838', 'Wilson Dam', 'Reservoir', 'North Dakota', 'ND', 'Dickey', 'Merricourt', 46.1771013, -98.7555671, ST_GeomFromText('POINT(46.1771013 -98.7555671)', 4326), NULL, NULL, '1980-02-13', '2019-02-27', NULL, NULL, NULL),
  ('1032842', 'Winchester Butte', 'Summit', 'North Dakota', 'ND', 'Emmons', 'Temvik', 46.3015099, -100.310111, ST_GeomFromText('POINT(46.3015099 -100.310111)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1032847', 'Winona Flats', 'Flat', 'North Dakota', 'ND', 'Emmons', 'Fort Yates NE', 46.1352731, -100.5770699, ST_GeomFromText('POINT(46.1352731 -100.5770699)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032849', 'Wintering River', 'Stream', 'North Dakota', 'ND', 'McHenry', 'Karlsruhe NE', 48.1963931, -100.5784724, ST_GeomFromText('POINT(48.1963931 -100.5784724)', 4326), 47.8852825, -100.9268151, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032850', 'Wintering River Flats', 'Flat', 'North Dakota', 'ND', 'McHenry', 'Balfour', 47.952227, -100.5801427, ST_GeomFromText('POINT(47.952227 -100.5801427)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032858', 'Wold Slough', 'Swamp', 'North Dakota', 'ND', 'Traill', 'Buxton SW', 47.5010212, -97.1537673, ST_GeomFromText('POINT(47.5010212 -97.1537673)', 4326), NULL, NULL, '1980-02-13', '2023-05-30', NULL, NULL, NULL),
  ('1032859', 'Wolf Butte', 'Summit', 'North Dakota', 'ND', 'Adams', 'Wolf Butte', 46.1536666, -102.7736235, ST_GeomFromText('POINT(46.1536666 -102.7736235)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1032860', 'Wolf Butte', 'Summit', 'North Dakota', 'ND', 'Morton', 'Heart Butte', 46.7262595, -101.8460985, ST_GeomFromText('POINT(46.7262595 -101.8460985)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1032862', 'Wolf Butte Creek', 'Stream', 'North Dakota', 'ND', 'Adams', 'Ehler Lake', 46.2275065, -102.7243235, ST_GeomFromText('POINT(46.2275065 -102.7243235)', 4326), 46.1708401, -102.8257149, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032864', 'Wolf Chief Bay', 'Bay', 'North Dakota', 'ND', 'Dunn', 'Saddle Butte SW', 47.5025079, -102.4146236, ST_GeomFromText('POINT(47.5025079 -102.4146236)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032865', 'Wolf Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Manning', 47.2325147, -102.7621296, ST_GeomFromText('POINT(47.2325147 -102.7621296)', 4326), 47.2769596, -102.8254635, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032866', 'Wolf Creek', 'Stream', 'North Dakota', 'ND', 'McLean', 'Riverdale North', 47.5522208, -101.2587674, ST_GeomFromText('POINT(47.5522208 -101.2587674)', 4326), 47.5322204, -101.2345999, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032867', 'Wolf Creek', 'Stream', 'North Dakota', 'ND', 'Rolette', 'Barton', 48.6058312, -100.1312468, ST_GeomFromText('POINT(48.6058312 -100.1312468)', 4326), 48.8375043, -99.7676459, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032870', 'Wolf Lake', 'Lake', 'North Dakota', 'ND', 'Sheridan', 'Anamoose SW', 47.808588, -100.1479857, ST_GeomFromText('POINT(47.808588 -100.1479857)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032873', 'Wood Lake', 'Lake', 'North Dakota', 'ND', 'Dickey', 'Merricourt SW', 46.0719494, -98.927171, ST_GeomFromText('POINT(46.0719494 -98.927171)', 4326), NULL, NULL, '1980-02-13', '2019-02-27', NULL, NULL, NULL),
  ('1032874', 'Wood Lake', 'Lake', 'North Dakota', 'ND', 'Benson', 'Tokio', 47.9012664, -98.8426053, ST_GeomFromText('POINT(47.9012664 -98.8426053)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1032881', 'Woodhouse Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Woodhouse Lake', 47.3095507, -100.0100972, ST_GeomFromText('POINT(47.3095507 -100.0100972)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1032886', 'Wright Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Rolette SW', 48.5511143, -99.9283326, ST_GeomFromText('POINT(48.5511143 -99.9283326)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1032888', 'Writing Rock Coulee', 'Valley', 'North Dakota', 'ND', 'McKenzie', 'Sanish SW', 47.8122365, -102.6993571, ST_GeomFromText('POINT(47.8122365 -102.6993571)', 4326), 47.8638889, -102.7141667, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032891', 'Yanktonai Creek', 'Stream', 'North Dakota', 'ND', 'McLean', 'Sanger', 47.2463818, -100.8973613, ST_GeomFromText('POINT(47.2463818 -100.8973613)', 4326), 47.1774926, -100.8693033, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032892', 'Yanktonai Lake', 'Lake', 'North Dakota', 'ND', 'McLean', 'Wilton', 47.1756188, -100.8732126, ST_GeomFromText('POINT(47.1756188 -100.8732126)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1032896', 'Young Mans Butte', 'Summit', 'North Dakota', 'ND', 'Stark', 'Antelope', 46.8713555, -102.2441125, ST_GeomFromText('POINT(46.8713555 -102.2441125)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', NULL, NULL, NULL),
  ('1032899', 'Lake Yri', 'Lake', 'North Dakota', 'ND', 'Benson', 'Tilden', 48.2200285, -99.2498903, ST_GeomFromText('POINT(48.2200285 -99.2498903)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1032902', 'Lake Zahl', 'Reservoir', 'North Dakota', 'ND', 'Williams', 'Zahl', 48.5564249, -103.6707145, ST_GeomFromText('POINT(48.5564249 -103.6707145)', 4326), NULL, NULL, '1980-02-13', '2019-04-27', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1032906', 'Zich Hills', 'Range', 'North Dakota', 'ND', 'Hettinger', 'Mott NW', 46.4488927, -102.3865531, ST_GeomFromText('POINT(46.4488927 -102.3865531)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1032907', 'Ziegler Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Carpenter Lake', 48.9812517, -99.9683808, ST_GeomFromText('POINT(48.9812517 -99.9683808)', 4326), NULL, NULL, '1980-02-13', '2018-11-29', NULL, NULL, NULL),
  ('1032909', 'Ziner Butte', 'Summit', 'North Dakota', 'ND', 'Dunn', 'Ziner Butte', 47.2296523, -102.5213456, ST_GeomFromText('POINT(47.2296523 -102.5213456)', 4326), NULL, NULL, '1980-02-13', '2025-05-02', NULL, NULL, NULL),
  ('1032956', 'Zumpf Lake', 'Lake', 'North Dakota', 'ND', 'Wells', 'Black Hammer Hill', 47.7946489, -99.4934363, ST_GeomFromText('POINT(47.7946489 -99.4934363)', 4326), NULL, NULL, '1980-02-13', '2018-11-27', NULL, NULL, NULL),
  ('1033354', 'Wally Dresskell Lake', 'Reservoir', 'North Dakota', 'ND', 'Mercer', 'Beulah', 47.2550072, -101.7737794, ST_GeomFromText('POINT(47.2550072 -101.7737794)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1033355', 'Lake Hiawatha', 'Reservoir', 'North Dakota', 'ND', 'Wells', 'Sykeston', 47.4792938, -99.4004125, ST_GeomFromText('POINT(47.4792938 -99.4004125)', 4326), NULL, NULL, '1986-09-23', '2019-02-26', NULL, NULL, NULL),
  ('1033356', 'Hanson Lake', 'Reservoir', 'North Dakota', 'ND', 'Barnes', 'Dazey', 47.2149893, -98.1403741, ST_GeomFromText('POINT(47.2149893 -98.1403741)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1033357', 'Storm Creek Lake', 'Reservoir', 'North Dakota', 'ND', 'Morton', 'Bluegrass', 46.8933355, -101.6020926, ST_GeomFromText('POINT(46.8933355 -101.6020926)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1033358', 'Larson Lake', 'Reservoir', 'North Dakota', 'ND', 'Hettinger', 'Regent', 46.4340775, -102.5133781, ST_GeomFromText('POINT(46.4340775 -102.5133781)', 4326), NULL, NULL, '1986-09-23', '2019-02-21', NULL, NULL, NULL),
  ('1033360', 'Lake Pechek', 'Reservoir', 'North Dakota', 'ND', 'McKenzie', 'Arnegard', 47.8316863, -103.4871392, ST_GeomFromText('POINT(47.8316863 -103.4871392)', 4326), NULL, NULL, '1986-09-23', '2013-08-16', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1033361', 'McLedd Lake (historical)', 'Reservoir', 'North Dakota', 'ND', 'Williams', 'Ray', 48.3375439, -103.1657194, ST_GeomFromText('POINT(48.3375439 -103.1657194)', 4326), NULL, NULL, '1986-09-23', '2019-08-23', NULL, NULL, NULL),
  ('1033362', 'Moores Lake', 'Reservoir', 'North Dakota', 'ND', 'Dickey', 'Merricourt SE', 46.0367664, -98.8722452, ST_GeomFromText('POINT(46.0367664 -98.8722452)', 4326), NULL, NULL, '1986-09-23', '2019-02-27', NULL, NULL, NULL),
  ('1033363', 'Random Lake', 'Reservoir', 'North Dakota', 'ND', 'Burleigh', 'Sterling', 46.7666571, -100.3537251, ST_GeomFromText('POINT(46.7666571 -100.3537251)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1033365', 'Homme Lake', 'Reservoir', 'North Dakota', 'ND', 'Walsh', 'Edinburg', 48.407753, -97.802916, ST_GeomFromText('POINT(48.407753 -97.802916)', 4326), NULL, NULL, '1986-09-23', '2025-03-04', 'Official', 'Board Decision', '1971-07-27'),
  ('1033366', 'Pool Five Reservoir', 'Reservoir', 'North Dakota', 'ND', 'Ward', 'Coulee', 48.6233924, -102.0324192, ST_GeomFromText('POINT(48.6233924 -102.0324192)', 4326), NULL, NULL, '1986-09-23', '2019-03-04', NULL, NULL, NULL),
  ('1033367', 'Pool Three Reservoir', 'Reservoir', 'North Dakota', 'ND', 'Ward', 'Kenmare', 48.6800258, -102.0954416, ST_GeomFromText('POINT(48.6800258 -102.0954416)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1033368', 'Jim Reservoir', 'Reservoir', 'North Dakota', 'ND', 'Stutsman', 'Jim Lake', 47.1666613, -98.7837168, ST_GeomFromText('POINT(47.1666613 -98.7837168)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1033369', 'Depuy Dam Lake', 'Reservoir', 'North Dakota', 'ND', 'Stutsman', 'Jim Lake', 47.1408709, -98.771797, ST_GeomFromText('POINT(47.1408709 -98.771797)', 4326), NULL, NULL, '1986-09-23', '2019-02-26', NULL, NULL, NULL),
  ('1033370', 'Pool Eight Reservoir', 'Reservoir', 'North Dakota', 'ND', 'Ward', 'Coulee', 48.5833559, -102.0004401, ST_GeomFromText('POINT(48.5833559 -102.0004401)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1033371', 'Unit 357 Reservoir', 'Reservoir', 'North Dakota', 'ND', 'Bottineau', 'Landa', 48.9866858, -100.9654334, ST_GeomFromText('POINT(48.9866858 -100.9654334)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1033372', 'Unit 341 Reservoir', 'Reservoir', 'North Dakota', 'ND', 'Bottineau', 'Landa SE', 48.7800172, -100.8720958, ST_GeomFromText('POINT(48.7800172 -100.8720958)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1033373', 'Unit 332 Reservoir', 'Reservoir', 'North Dakota', 'ND', 'Bottineau', 'Deep', 48.6706148, -100.7854966, ST_GeomFromText('POINT(48.6706148 -100.7854966)', 4326), NULL, NULL, '1986-09-23', '2019-03-05', NULL, NULL, NULL),
  ('1033374', 'Unit 326 Reservoir', 'Reservoir', 'North Dakota', 'ND', 'McHenry', 'Kramer', 48.6250076, -100.7254178, ST_GeomFromText('POINT(48.6250076 -100.7254178)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1033375', 'Unit 320 Reservoir', 'Reservoir', 'North Dakota', 'ND', 'McHenry', 'Upham', 48.5824428, -100.6700412, ST_GeomFromText('POINT(48.5824428 -100.6700412)', 4326), NULL, NULL, '1986-09-23', '2019-03-05', NULL, NULL, NULL),
  ('1033376', 'Unit 87 Reservoir', 'Reservoir', 'North Dakota', 'ND', 'Ward', 'Carpio', 48.4666842, -101.6454396, ST_GeomFromText('POINT(48.4666842 -101.6454396)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1033377', 'Unit 96 Reservoir', 'Reservoir', 'North Dakota', 'ND', 'Ward', 'Carpio', 48.4333497, -101.64544, ST_GeomFromText('POINT(48.4333497 -101.64544)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1033378', 'Lake Darling', 'Reservoir', 'North Dakota', 'ND', 'Ward', 'Grano SW', 48.5000186, -101.6671058, ST_GeomFromText('POINT(48.5000186 -101.6671058)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1033379', 'Unit 41 Reservoir', 'Reservoir', 'North Dakota', 'ND', 'Renville', 'Tolley', 48.6450218, -101.7754402, ST_GeomFromText('POINT(48.6450218 -101.7754402)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1033380', 'Sunburst Lake', 'Reservoir', 'North Dakota', 'ND', 'Emmons', 'Cannon Ball', 46.3772489, -100.503652, ST_GeomFromText('POINT(46.3772489 -100.503652)', 4326), NULL, NULL, '1986-09-23', '2019-03-07', NULL, NULL, NULL),
  ('1033381', 'Appert Lake', 'Reservoir', 'North Dakota', 'ND', 'Emmons', 'Appert Lake', 46.446656, -100.2120562, ST_GeomFromText('POINT(46.446656 -100.2120562)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1033382', 'Flickertail Lake', 'Reservoir', 'North Dakota', 'ND', 'Emmons', 'Schell Buttes SW', 46.2499838, -99.9487208, ST_GeomFromText('POINT(46.2499838 -99.9487208)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1033383', 'Kellys Slough Reservoir', 'Reservoir', 'North Dakota', 'ND', 'Grand Forks', 'Emerado', 47.9827714, -97.2555718, ST_GeomFromText('POINT(47.9827714 -97.2555718)', 4326), NULL, NULL, '1986-09-23', '2018-11-27', NULL, NULL, NULL),
  ('1033384', 'Rose Lake', 'Reservoir', 'North Dakota', 'ND', 'Nelson', 'Pekin NW', 47.9989793, -98.4626295, ST_GeomFromText('POINT(47.9989793 -98.4626295)', 4326), NULL, NULL, '1986-09-23', '2018-11-26', NULL, NULL, NULL),
  ('1033385', 'Lambs Lake', 'Reservoir', 'North Dakota', 'ND', 'Nelson', 'Lambs Lake', 47.9368431, -98.073713, ST_GeomFromText('POINT(47.9368431 -98.073713)', 4326), NULL, NULL, '1986-09-23', '2018-11-26', NULL, NULL, NULL),
  ('1033387', 'Little Goose Lake', 'Reservoir', 'North Dakota', 'ND', 'Grand Forks', 'Niagara', 47.9328654, -97.8452592, ST_GeomFromText('POINT(47.9328654 -97.8452592)', 4326), NULL, NULL, '1986-09-23', '2018-11-26', NULL, NULL, NULL),
  ('1033389', 'Pretty Rock Lake', 'Reservoir', 'North Dakota', 'ND', 'Grant', 'New Leipzig South', 46.2521548, -101.9453411, ST_GeomFromText('POINT(46.2521548 -101.9453411)', 4326), NULL, NULL, '1986-09-23', '2019-02-21', NULL, NULL, NULL),
  ('1033390', 'White Lake', 'Reservoir', 'North Dakota', 'ND', 'Slope', 'White Lake', 46.4700102, -103.1921188, ST_GeomFromText('POINT(46.4700102 -103.1921188)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1033391', 'Maple River Lake', 'Reservoir', 'North Dakota', 'ND', 'Dickey', 'Silverleaf', 46.0616379, -98.3970455, ST_GeomFromText('POINT(46.0616379 -98.3970455)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1033392', 'Lake George', 'Reservoir', 'North Dakota', 'ND', 'Kidder', 'Streeter NW', 46.7398027, -99.4949296, ST_GeomFromText('POINT(46.7398027 -99.4949296)', 4326), NULL, NULL, '1986-09-23', '2019-04-11', NULL, NULL, NULL),
  ('1033394', 'Tomahawk Lake', 'Reservoir', 'North Dakota', 'ND', 'Barnes', 'Rogers', 47.0764891, -98.1774788, ST_GeomFromText('POINT(47.0764891 -98.1774788)', 4326), NULL, NULL, '1986-09-23', '2018-11-26', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1033395', 'Dakota Lake', 'Reservoir', 'North Dakota', 'ND', 'Dickey', 'Hecla', 45.9466362, -98.177047, ST_GeomFromText('POINT(45.9466362 -98.177047)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1033396', 'Lords Lake', 'Reservoir', 'North Dakota', 'ND', 'Bottineau', 'Lords Lake', 48.776668, -100.21208, ST_GeomFromText('POINT(48.776668 -100.21208)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1033397', 'Wood Lake Marsh Reservoir', 'Reservoir', 'North Dakota', 'ND', 'Benson', 'Tokio', 47.9066656, -98.838724, ST_GeomFromText('POINT(47.9066656 -98.838724)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1033606', 'West Branch Antelope Creek', 'Stream', 'North Dakota', 'ND', 'Mercer', 'Hazen West', 47.3152824, -101.6879448, ST_GeomFromText('POINT(47.3152824 -101.6879448)', 4326), 47.4013945, -101.9401714, '1986-09-23', NULL, 'Official', 'Board Decision', '1980-01-01'),
  ('1033607', 'Lake Charlie', 'Reservoir', 'North Dakota', 'ND', 'Walsh', 'Union', 48.5292153, -97.9525985, ST_GeomFromText('POINT(48.5292153 -97.9525985)', 4326), NULL, NULL, '1986-09-23', '2018-11-28', 'Official', 'Board Decision', '1981-01-01'),
  ('1033608', 'McPhail Slough', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Tappen North', 46.9752722, -99.679021, ST_GeomFromText('POINT(46.9752722 -99.679021)', 4326), NULL, NULL, '1986-09-23', '2019-02-19', 'Official', 'Board Decision', '1980-01-01'),
  ('1033609', 'Mud Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Tappen North', 46.9422548, -99.703875, ST_GeomFromText('POINT(46.9422548 -99.703875)', 4326), NULL, NULL, '1986-09-23', '2019-02-19', 'Official', 'Board Decision', '1980-01-01'),
  ('1033610', 'Pass Lakes', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Tappen North', 46.9023057, -99.6990636, ST_GeomFromText('POINT(46.9023057 -99.6990636)', 4326), NULL, NULL, '1986-09-23', '2019-02-19', 'Official', 'Board Decision', '1980-01-01'),
  ('1033611', 'Tappen Slough', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Tappen North', 46.9412862, -99.6463924, ST_GeomFromText('POINT(46.9412862 -99.6463924)', 4326), NULL, NULL, '1986-09-23', '2019-02-19', 'Official', 'Board Decision', '1980-01-01'),
  ('1033612', 'Klinks Slope', 'Summit', 'North Dakota', 'ND', 'Sheridan', 'Pickardville', 47.4601443, -100.5584192, ST_GeomFromText('POINT(47.4601443 -100.5584192)', 4326), NULL, NULL, '1980-02-13', '2025-04-30', 'Official', 'Board Decision', '1977-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1033613', 'Tangedahl Lake', 'Lake', 'North Dakota', 'ND', 'Ward', 'Lake Vernon', 47.990946, -101.5267581, ST_GeomFromText('POINT(47.990946 -101.5267581)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', 'Official', 'Board Decision', '1976-01-01'),
  ('1033617', 'Dogtooth Buttes', 'Range', 'North Dakota', 'ND', 'Grant', 'Dogtooth Buttes', 46.3938922, -101.3468079, ST_GeomFromText('POINT(46.3938922 -101.3468079)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1033626', 'Bear Creek', 'Stream', 'North Dakota', 'ND', 'Dickey', 'Oakes', 46.1599674, -98.1117681, ST_GeomFromText('POINT(46.1599674 -98.1117681)', 4326), 46.6741456, -98.1403739, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1033628', 'Bone Hill Creek', 'Stream', 'North Dakota', 'ND', 'LaMoure', 'Dickey', 46.5013632, -98.4406504, ST_GeomFromText('POINT(46.5013632 -98.4406504)', 4326), 46.5730315, -98.9376066, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1033632', 'Cottonwood Creek', 'Stream', 'North Dakota', 'ND', 'LaMoure', 'LaMoure', 46.2632993, -98.2534338, ST_GeomFromText('POINT(46.2632993 -98.2534338)', 4326), 46.5319189, -99.0078858, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1033633', 'Cottonwood Lake', 'Lake', 'North Dakota', 'ND', 'LaMoure', 'LaMoure SW', 46.2889528, -98.4259761, ST_GeomFromText('POINT(46.2889528 -98.4259761)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1033637', 'Dry Coulee', 'Valley', 'North Dakota', 'ND', 'LaMoure', 'Dickey', 46.5460874, -98.4673159, ST_GeomFromText('POINT(46.5460874 -98.4673159)', 4326), 46.6544252, -98.4092591, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1033638', 'Dry Creek', 'Stream', 'North Dakota', 'ND', 'LaMoure', 'Adrian', 46.5383089, -98.5848183, ST_GeomFromText('POINT(46.5383089 -98.5848183)', 4326), 46.6260901, -98.6156525, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1033651', 'Lake LaMoure', 'Reservoir', 'North Dakota', 'ND', 'LaMoure', 'LaMoure', 46.2943812, -98.2856779, ST_GeomFromText('POINT(46.2943812 -98.2856779)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', 'Official', 'Board Decision', '1974-01-01'),
  ('1033652', 'Maple Creek', 'Stream', 'North Dakota', 'ND', 'LaMoure', 'Edgeley SE', 46.2944138, -98.5923212, ST_GeomFromText('POINT(46.2944138 -98.5923212)', 4326), 46.4166386, -98.943162, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1033653', 'Maple River', 'Stream', 'South Dakota', 'SD', 'Brown', 'Frederick', 45.7825, -98.5494444, ST_GeomFromText('POINT(45.7825 -98.5494444)', 4326), 46.3648955, -98.8938171, '1980-02-13', '2010-12-09', NULL, NULL, NULL),
  ('1033656', 'Minneapolis Flats', 'Flat', 'North Dakota', 'ND', 'Stutsman', 'Millarton', 46.6460899, -98.8156598, ST_GeomFromText('POINT(46.6460899 -98.8156598)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1033657', 'Nevermore Lake', 'Reservoir', 'North Dakota', 'ND', 'LaMoure', 'LaMoure', 46.3102223, -98.3097992, ST_GeomFromText('POINT(46.3102223 -98.3097992)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1033680', 'Sevenmile Coulee', 'Valley', 'North Dakota', 'ND', 'LaMoure', 'Dickey', 46.5541434, -98.4839823, ST_GeomFromText('POINT(46.5541434 -98.4839823)', 4326), 46.6025, -98.4761111, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1033682', 'Twin Lakes', 'Lake', 'North Dakota', 'ND', 'LaMoure', 'Grand Rapids', 46.4054439, -98.2675584, ST_GeomFromText('POINT(46.4054439 -98.2675584)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1033684', 'Wild Rice Slough', 'Reservoir', 'North Dakota', 'ND', 'LaMoure', 'Millarton', 46.6254636, -98.7895756, ST_GeomFromText('POINT(46.6254636 -98.7895756)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1033701', 'Bone Hill Creek Lake', 'Reservoir', 'North Dakota', 'ND', 'LaMoure', 'Jud SE', 46.552026, -98.862171, ST_GeomFromText('POINT(46.552026 -98.862171)', 4326), NULL, NULL, '1986-09-23', '2019-02-26', NULL, NULL, NULL),
  ('1033708', 'Shell Lake', 'Lake', 'North Dakota', 'ND', 'Mountrail', 'Shell Lake', 48.1853693, -102.1088459, ST_GeomFromText('POINT(48.1853693 -102.1088459)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1033710', 'Headquarters Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Tappen South', 46.8439434, -99.7136296, ST_GeomFromText('POINT(46.8439434 -99.7136296)', 4326), NULL, NULL, '1990-03-01', '2019-02-19', 'Official', 'Board Decision', '1980-01-01'),
  ('1033713', 'McPhail Butte', 'Summit', 'North Dakota', 'ND', 'Kidder', 'Tappen North', 46.9798834, -99.6417517, ST_GeomFromText('POINT(46.9798834 -99.6417517)', 4326), NULL, NULL, '1990-07-01', '2025-05-02', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1033714', 'Alkali Lake', 'Lake', 'North Dakota', 'ND', 'Sheridan', 'Alkali Lake', 47.6471618, -100.6367408, ST_GeomFromText('POINT(47.6471618 -100.6367408)', 4326), NULL, NULL, '1990-05-01', '2019-02-19', NULL, NULL, NULL),
  ('1033716', 'Blacktail Coulee', 'Stream', 'North Dakota', 'ND', 'McHenry', 'Kongsberg NE', 47.9741735, -100.845426, ST_GeomFromText('POINT(47.9741735 -100.845426)', 4326), 47.9122276, -100.9629277, '1990-05-01', NULL, NULL, NULL, NULL),
  ('1033719', 'Fish Creek Lake', 'Reservoir', 'North Dakota', 'ND', 'Morton', 'Fish Creek Lake', 46.7268245, -101.2321635, ST_GeomFromText('POINT(46.7268245 -101.2321635)', 4326), NULL, NULL, '1990-05-01', '2019-02-21', NULL, NULL, NULL),
  ('1033721', 'Green Ridge', 'Ridge', 'North Dakota', 'ND', 'Morton', 'Green Ridge', 46.6852641, -101.2698649, ST_GeomFromText('POINT(46.6852641 -101.2698649)', 4326), NULL, NULL, '1990-05-01', '2017-01-31', NULL, NULL, NULL),
  ('1033722', 'Lake Vernon', 'Lake', 'North Dakota', 'ND', 'Ward', 'Lake Vernon', 47.9773671, -101.5185526, ST_GeomFromText('POINT(47.9773671 -101.5185526)', 4326), NULL, NULL, '1990-05-01', '2019-04-28', NULL, NULL, NULL),
  ('1033723', 'Lostwood Lakes', 'Lake', 'North Dakota', 'ND', 'Burke', 'Lostwood Lakes', 48.5538875, -102.4478048, ST_GeomFromText('POINT(48.5538875 -102.4478048)', 4326), NULL, NULL, '1990-05-01', '2020-06-22', NULL, NULL, NULL),
  ('1033724', 'May Lake', 'Lake', 'North Dakota', 'ND', 'McIntosh', 'May Lake', 46.2457401, -99.5473227, ST_GeomFromText('POINT(46.2457401 -99.5473227)', 4326), NULL, NULL, '1990-05-01', '2019-02-19', NULL, NULL, NULL),
  ('1033725', 'Rat Lake', 'Lake', 'North Dakota', 'ND', 'Mountrail', 'Rat Lake', 48.1427013, -102.6618255, ST_GeomFromText('POINT(48.1427013 -102.6618255)', 4326), NULL, NULL, '1990-05-01', '2019-04-28', NULL, NULL, NULL),
  ('1033726', 'Bell Coulee', 'Valley', 'North Dakota', 'ND', 'Grant', 'Bell Coulee West', 46.1644481, -101.4015217, ST_GeomFromText('POINT(46.1644481 -101.4015217)', 4326), 46.1886145, -101.3587437, '1990-05-01', NULL, NULL, NULL, NULL),
  ('1033728', 'Robinson Coulee', 'Valley', 'North Dakota', 'ND', 'Ward', 'Robinson Coulee', 47.9763963, -101.0832107, ST_GeomFromText('POINT(47.9763963 -101.0832107)', 4326), 47.9441667, -101.0838889, '1990-05-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1033729', 'Robinson Lake', 'Lake', 'North Dakota', 'ND', 'Mountrail', 'Robinson Lake', 48.1392412, -102.6236278, ST_GeomFromText('POINT(48.1392412 -102.6236278)', 4326), NULL, NULL, '1990-05-01', '2019-04-28', NULL, NULL, NULL),
  ('1033730', 'Schell Buttes', 'Summit', 'North Dakota', 'ND', 'Logan', 'Schell Buttes', 46.3055717, -99.8317552, ST_GeomFromText('POINT(46.3055717 -99.8317552)', 4326), NULL, NULL, '1990-05-01', '2025-05-06', NULL, NULL, NULL),
  ('1033732', 'Shell Creek Bay', 'Bay', 'North Dakota', 'ND', 'Mountrail', 'Shell Creek Bay', 47.9408465, -102.3087849, ST_GeomFromText('POINT(47.9408465 -102.3087849)', 4326), NULL, NULL, '1990-05-01', NULL, NULL, NULL, NULL),
  ('1033734', 'Streeter Flats', 'Flat', 'North Dakota', 'ND', 'Logan', 'Streeter Flats', 46.5883117, -99.5487203, ST_GeomFromText('POINT(46.5883117 -99.5487203)', 4326), NULL, NULL, '1990-05-01', NULL, NULL, NULL, NULL),
  ('1033735', 'Underdahl Lake', 'Lake', 'North Dakota', 'ND', 'Ward', 'Underdahl Lake', 48.0707949, -101.6519613, ST_GeomFromText('POINT(48.0707949 -101.6519613)', 4326), NULL, NULL, '1990-05-01', '2019-04-28', NULL, NULL, NULL),
  ('1033814', 'Porcupine Coulee', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Timber Prong Creek', 47.9972471, -103.1501876, ST_GeomFromText('POINT(47.9972471 -103.1501876)', 4326), 47.9666667, -103.1375, '1991-12-01', NULL, NULL, NULL, NULL),
  ('1033822', 'Bartall Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Demicks Lake', 47.985025, -103.0987984, ST_GeomFromText('POINT(47.985025 -103.0987984)', 4326), 48.0150253, -103.06852, '1991-12-01', NULL, NULL, NULL, NULL),
  ('1033940', 'Camp Lake', 'Lake', 'North Dakota', 'ND', 'Divide', 'Camp Lake', 48.6670113, -103.9993302, ST_GeomFromText('POINT(48.6670113 -103.9993302)', 4326), NULL, NULL, '1990-05-01', '2019-02-28', NULL, NULL, NULL),
  ('1033942', 'Twin Butte', 'Range', 'North Dakota', 'ND', 'Divide', 'Colgan SE', 48.8241988, -103.5540827, ST_GeomFromText('POINT(48.8241988 -103.5540827)', 4326), NULL, NULL, '1992-11-01', NULL, NULL, NULL, NULL),
  ('1033947', 'Stink Lake', 'Lake', 'North Dakota', 'ND', 'Williams', 'Brush Lake', 48.6242313, -104.0242786, ST_GeomFromText('POINT(48.6242313 -104.0242786)', 4326), NULL, NULL, '1992-11-01', '2019-02-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1033951', 'Rattler Lake', 'Swamp', 'North Dakota', 'ND', 'Divide', 'Alexandria', 48.8605723, -103.7481511, ST_GeomFromText('POINT(48.8605723 -103.7481511)', 4326), NULL, NULL, '1992-11-01', '2019-02-28', NULL, NULL, NULL),
  ('1033952', 'Marsland Slough', 'Swamp', 'North Dakota', 'ND', 'Divide', 'Writing Rock North', 48.842121, -103.7859064, ST_GeomFromText('POINT(48.842121 -103.7859064)', 4326), NULL, NULL, '1992-11-01', '2019-02-28', NULL, NULL, NULL),
  ('1033954', 'North Lake', 'Lake', 'North Dakota', 'ND', 'Divide', 'Alkabo', 48.8700419, -103.9651831, ST_GeomFromText('POINT(48.8700419 -103.9651831)', 4326), NULL, NULL, '1992-11-01', '2019-02-28', NULL, NULL, NULL),
  ('1033955', 'Miller Lake', 'Lake', 'North Dakota', 'ND', 'Divide', 'Alkabo', 48.8373781, -103.9625285, ST_GeomFromText('POINT(48.8373781 -103.9625285)', 4326), NULL, NULL, '1992-11-01', '2019-02-28', NULL, NULL, NULL),
  ('1033960', 'Goose Lake', 'Lake', 'North Dakota', 'ND', 'Divide', 'Colgan West', 48.9871203, -103.7020262, ST_GeomFromText('POINT(48.9871203 -103.7020262)', 4326), NULL, NULL, '1992-11-01', '2019-03-04', NULL, NULL, NULL),
  ('1033961', 'Round Lake', 'Lake', 'North Dakota', 'ND', 'Divide', 'Westby North', 48.8908827, -104.0459796, ST_GeomFromText('POINT(48.8908827 -104.0459796)', 4326), NULL, NULL, '1992-11-01', '2019-02-28', NULL, NULL, NULL),
  ('1033964', 'Mc Cone Lake', 'Lake', 'North Dakota', 'ND', 'Divide', 'Westby North', 48.9402808, -104.0179307, ST_GeomFromText('POINT(48.9402808 -104.0179307)', 4326), NULL, NULL, '1992-11-01', '2019-02-28', NULL, NULL, NULL),
  ('1033970', 'Mellam Lake', 'Lake', 'North Dakota', 'ND', 'Ward', 'Rice Lake', 48.0676183, -101.6225027, ST_GeomFromText('POINT(48.0676183 -101.6225027)', 4326), NULL, NULL, '1992-11-01', '2019-04-28', NULL, NULL, NULL),
  ('1033973', 'Twin Buttes', 'Summit', 'North Dakota', 'ND', 'Ward', 'Minot SW', 48.1189783, -101.4733315, ST_GeomFromText('POINT(48.1189783 -101.4733315)', 4326), NULL, NULL, '1992-11-01', '2025-04-30', NULL, NULL, NULL),
  ('1033989', 'Lake Sakakawea', 'Reservoir', 'North Dakota', 'ND', 'Dunn', 'New Town SE', 47.7715919, -102.3295725, ST_GeomFromText('POINT(47.7715919 -102.3295725)', 4326), NULL, NULL, '1992-11-01', '2020-06-22', 'Official', 'Board Decision', '1967-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1033990', 'Nelson Lake', 'Lake', 'North Dakota', 'ND', 'Ward', 'South Prairie', 48.0019418, -101.2744948, ST_GeomFromText('POINT(48.0019418 -101.2744948)', 4326), NULL, NULL, '1992-11-01', '2019-03-05', NULL, NULL, NULL),
  ('1034008', 'Arnies Lake', 'Lake', 'North Dakota', 'ND', 'Logan', 'Alfred', 46.5870356, -99.099736, ST_GeomFromText('POINT(46.5870356 -99.099736)', 4326), NULL, NULL, '1992-11-01', '2019-02-26', NULL, NULL, NULL),
  ('1034011', 'School Lake', 'Lake', 'North Dakota', 'ND', 'Logan', 'Gackle South', 46.5072841, -99.2390456, ST_GeomFromText('POINT(46.5072841 -99.2390456)', 4326), NULL, NULL, '1992-11-01', '2019-02-26', NULL, NULL, NULL),
  ('1034012', 'Cactus Point', 'Summit', 'North Dakota', 'ND', 'Logan', 'Gackle South', 46.539142, -99.2184433, ST_GeomFromText('POINT(46.539142 -99.2184433)', 4326), NULL, NULL, '1992-11-01', '2025-04-30', NULL, NULL, NULL),
  ('1034013', 'Buffalo Hill', 'Summit', 'North Dakota', 'ND', 'Logan', 'Gackle South', 46.5578118, -99.1751923, ST_GeomFromText('POINT(46.5578118 -99.1751923)', 4326), NULL, NULL, '1992-11-01', '2025-04-30', NULL, NULL, NULL),
  ('1034037', 'Flagstaff Butte', 'Summit', 'North Dakota', 'ND', 'Stark', 'Daglum', 46.6643186, -103.0331648, ST_GeomFromText('POINT(46.6643186 -103.0331648)', 4326), NULL, NULL, '1992-11-01', '2020-01-17', NULL, NULL, NULL),
  ('1034048', 'Windy Butte', 'Summit', 'North Dakota', 'ND', 'Billings', 'Rocky Ridge North', 46.6992575, -103.3398206, ST_GeomFromText('POINT(46.6992575 -103.3398206)', 4326), NULL, NULL, '1992-11-01', '2020-01-17', NULL, NULL, NULL),
  ('1034049', 'Bare Butte', 'Summit', 'North Dakota', 'ND', 'Billings', 'Rocky Ridge North', 46.668692, -103.35724, ST_GeomFromText('POINT(46.668692 -103.35724)', 4326), NULL, NULL, '1992-11-01', '2020-01-17', NULL, NULL, NULL),
  ('1034053', 'Antelope Hills', 'Summit', 'North Dakota', 'ND', 'Grant', 'Brisbane', 46.2979075, -101.437819, ST_GeomFromText('POINT(46.2979075 -101.437819)', 4326), NULL, NULL, '1992-11-01', '2025-05-02', NULL, NULL, NULL),
  ('1034054', 'Devils Butte', 'Summit', 'North Dakota', 'ND', 'Grant', 'Otter Creek West', 46.5231132, -101.493566, ST_GeomFromText('POINT(46.5231132 -101.493566)', 4326), NULL, NULL, '1992-11-01', '2025-04-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1034061', 'Elm Butte', 'Summit', 'North Dakota', 'ND', 'Grant', 'Heil', 46.4304331, -101.7301154, ST_GeomFromText('POINT(46.4304331 -101.7301154)', 4326), NULL, NULL, '1992-11-01', '2025-04-30', NULL, NULL, NULL),
  ('1034070', 'Long Butte', 'Summit', 'North Dakota', 'ND', 'Morton', 'Flasher', 46.3846082, -101.1668816, ST_GeomFromText('POINT(46.3846082 -101.1668816)', 4326), NULL, NULL, '1992-11-01', '2025-04-30', NULL, NULL, NULL),
  ('1034072', 'Rattlesnake Hill', 'Summit', 'North Dakota', 'ND', 'Morton', 'Fallon', 46.569335, -101.031518, ST_GeomFromText('POINT(46.569335 -101.031518)', 4326), NULL, NULL, '1992-11-01', '2025-05-06', NULL, NULL, NULL),
  ('1034074', 'Whiskey Buttes', 'Summit', 'North Dakota', 'ND', 'Grant', 'Dogtooth Buttes', 46.4822778, -101.3419075, ST_GeomFromText('POINT(46.4822778 -101.3419075)', 4326), NULL, NULL, '1992-11-01', '2025-05-02', NULL, NULL, NULL),
  ('1034077', 'Cookout Butte', 'Summit', 'North Dakota', 'ND', 'Grant', 'Carson', 46.45959, -101.514101, ST_GeomFromText('POINT(46.45959 -101.514101)', 4326), NULL, NULL, '1992-11-01', '2025-04-30', NULL, NULL, NULL),
  ('1034078', 'Carson Hill', 'Summit', 'North Dakota', 'ND', 'Grant', 'Carson', 46.4282443, -101.555922, ST_GeomFromText('POINT(46.4282443 -101.555922)', 4326), NULL, NULL, '1992-11-01', '2025-04-30', NULL, NULL, NULL),
  ('1034081', 'Van Duesen Hill', 'Summit', 'North Dakota', 'ND', 'Morton', 'Burgess', 46.4136999, -101.0305005, ST_GeomFromText('POINT(46.4136999 -101.0305005)', 4326), NULL, NULL, '1992-11-01', '2025-04-30', NULL, NULL, NULL),
  ('1034082', 'Township Hill', 'Summit', 'North Dakota', 'ND', 'Morton', 'Burgess', 46.4438898, -101.0491133, ST_GeomFromText('POINT(46.4438898 -101.0491133)', 4326), NULL, NULL, '1992-11-01', '2025-04-30', NULL, NULL, NULL),
  ('1034084', 'War Dance Hill', 'Summit', 'North Dakota', 'ND', 'Morton', 'Breien', 46.3840635, -100.9816933, ST_GeomFromText('POINT(46.3840635 -100.9816933)', 4326), NULL, NULL, '1992-11-01', '2025-05-02', NULL, NULL, NULL),
  ('1034102', 'Iverson Lake', 'Lake', 'North Dakota', 'ND', 'Burke', 'Thompson Lake', 48.6702038, -102.378442, ST_GeomFromText('POINT(48.6702038 -102.378442)', 4326), NULL, NULL, '1992-11-01', '2019-03-04', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1034106', 'Pudwill Lake', 'Lake', 'North Dakota', 'ND', 'McIntosh', 'Danzig', 46.1622404, -99.4609161, ST_GeomFromText('POINT(46.1622404 -99.4609161)', 4326), NULL, NULL, '1992-11-01', '2019-02-19', NULL, NULL, NULL),
  ('1034137', 'Doyles Lake', 'Lake', 'North Dakota', 'ND', 'Logan', 'Wishek', 46.3683529, -99.5201809, ST_GeomFromText('POINT(46.3683529 -99.5201809)', 4326), NULL, NULL, '1992-11-01', '2019-02-19', NULL, NULL, NULL),
  ('1034170', 'Miller Lake', 'Lake', 'North Dakota', 'ND', 'McIntosh', 'Coldwater Lake NW', 46.2405735, -99.2010994, ST_GeomFromText('POINT(46.2405735 -99.2010994)', 4326), NULL, NULL, '1992-11-01', '2019-02-19', NULL, NULL, NULL),
  ('1034173', 'Goose Lake', 'Lake', 'North Dakota', 'ND', 'McIntosh', 'Ashley West', 46.1141064, -99.4657315, ST_GeomFromText('POINT(46.1141064 -99.4657315)', 4326), NULL, NULL, '1992-11-01', '2019-02-19', NULL, NULL, NULL),
  ('1034179', 'Kislingbury Lake', 'Lake', 'North Dakota', 'ND', 'McIntosh', 'Ashley East', 46.0485647, -99.3275831, ST_GeomFromText('POINT(46.0485647 -99.3275831)', 4326), NULL, NULL, '1992-11-01', '2024-06-24', NULL, NULL, NULL),
  ('1034186', 'Dry Lake', 'Lake', 'North Dakota', 'ND', 'McIntosh', 'Ashley West', 46.0822354, -99.4271877, ST_GeomFromText('POINT(46.0822354 -99.4271877)', 4326), NULL, NULL, '1992-11-01', '2019-02-19', NULL, NULL, NULL),
  ('1034187', 'Salt Lake', 'Lake', 'North Dakota', 'ND', 'McIntosh', 'Ashley East', 46.1192049, -99.2920043, ST_GeomFromText('POINT(46.1192049 -99.2920043)', 4326), NULL, NULL, '1992-11-01', '2019-02-19', NULL, NULL, NULL),
  ('1034193', 'Pembina Valley', 'Valley', 'North Dakota', 'ND', 'Cavalier', 'Walhalla', 48.8833282, -97.9989863, ST_GeomFromText('POINT(48.8833282 -97.9989863)', 4326), 49.440836, -99.7289886, '1992-11-01', NULL, 'Official', 'Board Decision', '1992-01-01'),
  ('1034194', 'Devils Lake', 'Lake', 'North Dakota', 'ND', 'Ramsey', 'Camp Grafton', 48.0462688, -98.9976006, ST_GeomFromText('POINT(48.0462688 -98.9976006)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1034195', 'Grahams Island', 'Island', 'North Dakota', 'ND', 'Ramsey', 'Grahams Island', 48.0538881, -99.0967958, ST_GeomFromText('POINT(48.0538881 -99.0967958)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1034196', 'Long Lake', 'Lake', 'North Dakota', 'ND', 'Benson', 'Minnewaukan West', 48.0047088, -99.2610072, ST_GeomFromText('POINT(48.0047088 -99.2610072)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1034198', 'Round Lake', 'Lake', 'North Dakota', 'ND', 'Benson', 'Minnewaukan East', 48.0265731, -99.2298598, ST_GeomFromText('POINT(48.0265731 -99.2298598)', 4326), NULL, NULL, '1980-02-13', '2013-09-22', NULL, NULL, NULL),
  ('1034199', 'Sams Hill', 'Summit', 'North Dakota', 'ND', 'Benson', 'Minnewaukan East', 48.0403928, -99.1610209, ST_GeomFromText('POINT(48.0403928 -99.1610209)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL),
  ('1034201', 'West Bay', 'Flat', 'North Dakota', 'ND', 'Benson', 'Minnewaukan East', 48.0805547, -99.2059668, ST_GeomFromText('POINT(48.0805547 -99.2059668)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034246', 'Cattail Bay', 'Bay', 'North Dakota', 'ND', 'Emmons', 'Fort Yates SE', 46.1055513, -100.5887372, ST_GeomFromText('POINT(46.1055513 -100.5887372)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1034251', 'Wilde Lake', 'Lake', 'North Dakota', 'ND', 'Emmons', 'Fort Rice', 46.5444384, -100.5392862, ST_GeomFromText('POINT(46.5444384 -100.5392862)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1034252', 'Carlson Lake', 'Lake', 'North Dakota', 'ND', 'Emmons', 'Fort Rice', 46.5938828, -100.5420642, ST_GeomFromText('POINT(46.5938828 -100.5420642)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1034253', 'Lake Robinson (historical)', 'Lake', 'North Dakota', 'ND', 'Emmons', 'Fort Rice', 46.6224938, -100.5545646, ST_GeomFromText('POINT(46.6224938 -100.5545646)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1034254', 'Litzman Ponds', 'Lake', 'North Dakota', 'ND', 'Emmons', 'Fort Rice', 46.6063829, -100.5906769, ST_GeomFromText('POINT(46.6063829 -100.5906769)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1034256', 'Winona Island', 'Island', 'North Dakota', 'ND', 'Emmons', 'Fort Yates SE', 46.109718, -100.6004041, ST_GeomFromText('POINT(46.109718 -100.6004041)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1034260', 'Emanuel Rock (historical)', 'Pillar', 'North Dakota', 'ND', 'Mercer', 'Emmet SE', 47.5261121, -101.6135002, ST_GeomFromText('POINT(47.5261121 -101.6135002)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1034261', 'Connors Point (historical)', 'Cape', 'North Dakota', 'ND', 'Mercer', 'Emmet SW', 47.5344459, -101.692113, ST_GeomFromText('POINT(47.5344459 -101.692113)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1034265', 'Pretty Point (historical)', 'Cape', 'North Dakota', 'ND', 'Oliver', 'Sanger', 47.1577699, -100.970696, ST_GeomFromText('POINT(47.1577699 -100.970696)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1034268', 'Turtle Creek (historical)', 'Stream', 'North Dakota', 'ND', 'McLean', 'Sanger', 47.240548, -100.9554195, ST_GeomFromText('POINT(47.240548 -100.9554195)', 4326), 47.2558333, -100.9763889, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1034269', 'Chippewa Point (historical)', 'Cape', 'North Dakota', 'ND', 'McLean', 'Blue Hill', 47.8247267, -101.6390535, ST_GeomFromText('POINT(47.8247267 -101.6390535)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1034271', 'Sandstone Bluffs (historical)', 'Cliff', 'North Dakota', 'ND', 'McLean', 'Stanton SE', 47.2847183, -101.2698777, ST_GeomFromText('POINT(47.2847183 -101.2698777)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1034273', 'The Slide (historical)', 'Cliff', 'North Dakota', 'ND', 'McLean', 'New Town SE', 47.7691755, -102.2537842, ST_GeomFromText('POINT(47.7691755 -102.2537842)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1034274', 'Goldfinch Towhead (historical)', 'Island', 'North Dakota', 'ND', 'McLean', 'Saddle Butte', 47.6805633, -102.2573964, ST_GeomFromText('POINT(47.6805633 -102.2573964)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1034277', 'Gros Ventres Island (historical)', 'Island', 'North Dakota', 'ND', 'McLean', 'Lake Nettie', 47.5738875, -101.0670941, ST_GeomFromText('POINT(47.5738875 -101.0670941)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1034278', 'Little Bason Island (historical)', 'Island', 'North Dakota', 'ND', 'McLean', 'Blackwater Lake SE', 47.5038913, -101.82906, ST_GeomFromText('POINT(47.5038913 -101.82906)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1034281', 'Bone Point (historical)', 'Cape', 'North Dakota', 'ND', 'Dunn', 'Hay Flat', 47.5005622, -102.3171216, ST_GeomFromText('POINT(47.5005622 -102.3171216)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1034285', 'Sunday Island (historical)', 'Island', 'North Dakota', 'ND', 'Mountrail', 'Sanish SE', 47.7964013, -102.591299, ST_GeomFromText('POINT(47.7964013 -102.591299)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1034287', 'Knifer Towhead (historical)', 'Island', 'North Dakota', 'ND', 'McKenzie', 'Sanish', 47.9383495, -102.620185, ST_GeomFromText('POINT(47.9383495 -102.620185)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1034289', 'Little Bear Island (historical)', 'Island', 'North Dakota', 'ND', 'McKenzie', 'Charlson NW', 48.1355778, -102.9662955, ST_GeomFromText('POINT(48.1355778 -102.9662955)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1034291', 'David Watts Bluff (historical)', 'Cliff', 'North Dakota', 'ND', 'Williams', 'Cussicks Spring', 48.1500219, -103.1718528, ST_GeomFromText('POINT(48.1500219 -103.1718528)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1034292', 'Spanish Point (historical)', 'Cape', 'North Dakota', 'ND', 'McKenzie', 'Cussicks Spring', 48.1250222, -103.2137979, ST_GeomFromText('POINT(48.1250222 -103.2137979)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1034294', 'Sliding Bluff (historical)', 'Cliff', 'North Dakota', 'ND', 'Williams', 'Chris Creek', 48.0597463, -103.3690797, ST_GeomFromText('POINT(48.0597463 -103.3690797)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1034295', 'Grizzly Bluffs (historical)', 'Cliff', 'North Dakota', 'ND', 'Williams', 'Blacktail Lake SE', 48.3397468, -103.5285256, ST_GeomFromText('POINT(48.3397468 -103.5285256)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1034296', 'Plum Pudding Butte (historical)', 'Summit', 'North Dakota', 'ND', 'Williams', 'Williston SE', 48.0583582, -103.5360285, ST_GeomFromText('POINT(48.0583582 -103.5360285)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1034322', 'Crystal Lake (historical)', 'Lake', 'North Dakota', 'ND', 'Barnes', 'Fingal', 46.8278146, -97.8277403, ST_GeomFromText('POINT(46.8278146 -97.8277403)', 4326), NULL, NULL, '1986-09-23', '2015-08-24', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1034323', 'Rush Lake (historical)', 'Lake', 'North Dakota', 'ND', 'Barnes', 'Fingal', 46.8233538, -97.8688992, ST_GeomFromText('POINT(46.8233538 -97.8688992)', 4326), NULL, NULL, '1986-09-23', '2015-08-24', NULL, NULL, NULL),
  ('1034325', 'Dry Lake (historical)', 'Lake', 'North Dakota', 'ND', 'Barnes', 'Sanborn', 46.9350252, -98.2021617, ST_GeomFromText('POINT(46.9350252 -98.2021617)', 4326), NULL, NULL, '1986-09-23', '2015-08-24', NULL, NULL, NULL),
  ('1034362', 'Bair Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Cleveland', 46.9537824, -99.0421783, ST_GeomFromText('POINT(46.9537824 -99.0421783)', 4326), NULL, NULL, '1986-09-23', '2019-02-26', NULL, NULL, NULL),
  ('1034417', 'Fiske Lake', 'Lake', 'North Dakota', 'ND', 'Nelson', 'Michigan West', 48.0741355, -98.2375955, ST_GeomFromText('POINT(48.0741355 -98.2375955)', 4326), NULL, NULL, '1986-09-23', '2018-11-26', NULL, NULL, NULL),
  ('1034519', 'Weiler Dam Reservoir', 'Reservoir', 'North Dakota', 'ND', 'Pembina', 'Hanks Corner', 48.8317507, -97.9104833, ST_GeomFromText('POINT(48.8317507 -97.9104833)', 4326), NULL, NULL, '1986-09-23', '2018-11-29', NULL, NULL, NULL),
  ('1034563', 'Lake Schimmer', 'Lake', 'North Dakota', 'ND', 'Sargent', 'Crete', 46.1275077, -97.9496691, ST_GeomFromText('POINT(46.1275077 -97.9496691)', 4326), NULL, NULL, '1986-09-23', '2019-02-26', NULL, NULL, NULL),
  ('1034565', 'Elm Lake (historical)', 'Lake', 'North Dakota', 'ND', 'Richland', 'Lidgerwood', 46.0409342, -97.1726366, ST_GeomFromText('POINT(46.0409342 -97.1726366)', 4326), NULL, NULL, '1986-09-23', '2015-08-24', NULL, NULL, NULL),
  ('1034628', 'Sibley Island (historical)', 'Island', 'North Dakota', 'ND', 'Morton', 'Schmidt', 46.7280499, -100.7851273, ST_GeomFromText('POINT(46.7280499 -100.7851273)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1034641', 'Wild Cow Bay', 'Bay', 'North Dakota', 'ND', 'McKenzie', 'Watford City NW', 47.9855805, -103.4629718, ST_GeomFromText('POINT(47.9855805 -103.4629718)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1034669', 'Altamont Moraine', 'Range', 'North Dakota', 'ND', 'Emmons', 'Braddock', 46.5002631, -100.0006628, ST_GeomFromText('POINT(46.5002631 -100.0006628)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1034674', 'Clarks Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Sanish NW', 47.9161278, -102.6787982, ST_GeomFromText('POINT(47.9161278 -102.6787982)', 4326), 47.9166874, -102.8699105, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034676', 'A Butte', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Alexander', 47.8282032, -103.6364898, ST_GeomFromText('POINT(47.8282032 -103.6364898)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1034677', 'Achenbach Hills', 'Range', 'North Dakota', 'ND', 'McKenzie', 'Sperati Point', 47.5682883, -103.4058084, ST_GeomFromText('POINT(47.5682883 -103.4058084)', 4326), NULL, NULL, '1980-02-13', '2017-08-18', 'Official', 'Board Decision', '1975-01-01'),
  ('1034678', 'Achenbach Spring', 'Spring', 'North Dakota', 'ND', 'McKenzie', 'Sperati Point', 47.5755713, -103.4074155, ST_GeomFromText('POINT(47.5755713 -103.4074155)', 4326), NULL, NULL, '1980-02-13', NULL, 'Official', 'Board Decision', '1975-01-01'),
  ('1034680', 'Alkali Creek', 'Stream', 'North Dakota', 'ND', 'Golden Valley', 'Hootowl Creek East', 47.218904, -103.7526966, ST_GeomFromText('POINT(47.218904 -103.7526966)', 4326), 47.1713889, -103.7522222, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034681', 'Alkali Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Sidney NE', 47.6539058, -104.0424313, ST_GeomFromText('POINT(47.6539058 -104.0424313)', 4326), 47.6347394, -103.8540913, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034683', 'Anderson Butte', 'Summit', 'North Dakota', 'ND', 'Billings', 'Hanks Gully', 47.2822102, -103.5098334, ST_GeomFromText('POINT(47.2822102 -103.5098334)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1034685', 'Anderson Coulee', 'Valley', 'North Dakota', 'ND', 'Billings', 'Hanks Gully', 47.2655044, -103.5129355, ST_GeomFromText('POINT(47.2655044 -103.5129355)', 4326), 47.2757684, -103.4796802, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1034687', 'Antelope Creek', 'Stream', 'North Dakota', 'ND', 'Stark', 'Gladstone', 46.8200064, -102.5132346, ST_GeomFromText('POINT(46.8200064 -102.5132346)', 4326), 46.6916776, -103.0685084, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034688', 'Antelope Creek', 'Stream', 'North Dakota', 'ND', 'Richland', 'Galchutt', 46.3941267, -96.7570229, ST_GeomFromText('POINT(46.3941267 -96.7570229)', 4326), 46.4413534, -97.2000895, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1034689', 'Antelope Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Charbonneau', 47.8336307, -103.7977018, ST_GeomFromText('POINT(47.8336307 -103.7977018)', 4326), 47.7466835, -103.5429736, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034690', 'Antelope Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Rat Lake SW', 48.0041846, -102.629628, ST_GeomFromText('POINT(48.0041846 -102.629628)', 4326), 48.0089114, -102.8501863, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034692', 'Appel Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Sperati Point', 47.601127, -103.3851929, ST_GeomFromText('POINT(47.601127 -103.3851929)', 4326), 47.6247222, -103.3852778, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034693', 'Ash Coulee', 'Stream', 'North Dakota', 'ND', 'Billings', 'Wannagan Creek East', 47.1227926, -103.5532451, ST_GeomFromText('POINT(47.1227926 -103.5532451)', 4326), 47.10307, -103.3335156, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034694', 'Aura Butte', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Blue Buttes SE', 47.8712785, -102.8571173, ST_GeomFromText('POINT(47.8712785 -102.8571173)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1034695', 'Bacon Creek', 'Stream', 'North Dakota', 'ND', 'Slope', 'Marmarth', 46.3066732, -103.8979828, ST_GeomFromText('POINT(46.3066732 -103.8979828)', 4326), 46.2666735, -103.6893638, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034696', 'Badlands Draw', 'Valley', 'North Dakota', 'ND', 'McKenzie', 'Phillip Spring', 47.5790423, -103.9749212, ST_GeomFromText('POINT(47.5790423 -103.9749212)', 4326), 47.5699552, -103.9705915, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1034699', 'Bay Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Sheep Creek', 47.5594612, -103.8446462, ST_GeomFromText('POINT(47.5594612 -103.8446462)', 4326), 47.6172222, -103.7797222, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034701', 'Bear Butte', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Bear Butte', 47.6512797, -103.5232534, ST_GeomFromText('POINT(47.6512797 -103.5232534)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1034702', 'Bear Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Cinnamon Creek', 47.442516, -103.6535298, ST_GeomFromText('POINT(47.442516 -103.6535298)', 4326), 47.4363889, -103.7316667, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1034703', 'Bear Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Croff', 47.6319605, -102.9532449, ST_GeomFromText('POINT(47.6319605 -102.9532449)', 4326), 47.5127917, -102.8776875, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034704', 'Bear Den Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Sanish SW', 47.8091809, -102.7001905, ST_GeomFromText('POINT(47.8091809 -102.7001905)', 4326), 47.7375169, -102.9276911, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034706', 'Bear Island', 'Island', 'North Dakota', 'ND', 'Bottineau', 'Metigoshe Lake', 48.9939002, -100.3623638, ST_GeomFromText('POINT(48.9939002 -100.3623638)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034708', 'Beaver Creek', 'Stream', 'North Dakota', 'ND', 'Williams', 'Charlson NW', 48.1705774, -102.9946285, ST_GeomFromText('POINT(48.1705774 -102.9946285)', 4326), 48.2891876, -103.2393523, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034711', 'Beef Corral Wash', 'Stream', 'North Dakota', 'ND', 'Billings', 'Fryburg NW', 46.9822364, -103.4937964, ST_GeomFromText('POINT(46.9822364 -103.4937964)', 4326), 46.9708333, -103.4572222, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034712', 'Beicegel Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Cinnamon Creek', 47.4639049, -103.6282518, ST_GeomFromText('POINT(47.4639049 -103.6282518)', 4326), 47.3311262, -103.1815753, '1980-02-13', NULL, 'Official', 'Board Decision', '1975-01-01'),
  ('1034716', 'Bell Lake Creek', 'Stream', 'North Dakota', 'ND', 'Golden Valley', 'Hootowl Creek East', 47.2358485, -103.7613081, ST_GeomFromText('POINT(47.2358485 -103.7613081)', 4326), 47.1500148, -103.7376959, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034717', 'Bennett Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Sperati Point', 47.5244601, -103.460472, ST_GeomFromText('POINT(47.5244601 -103.460472)', 4326), 47.4083478, -103.257966, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034721', 'Betsy Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Gorham', 47.208626, -103.3285185, ST_GeomFromText('POINT(47.208626 -103.3285185)', 4326), 47.1597222, -103.2927778, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034722', 'Big Gulch', 'Valley', 'North Dakota', 'ND', 'Dunn', 'Lone Butte SE', 47.6224886, -103.0244098, ST_GeomFromText('POINT(47.6224886 -103.0244098)', 4326), 47.5204702, -102.9377906, '1980-02-13', '2020-01-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1034724', 'Big Spring', 'Spring', 'North Dakota', 'ND', 'Slope', 'Rocky Ridge South', 46.6250116, -103.3537927, ST_GeomFromText('POINT(46.6250116 -103.3537927)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034725', 'Black Butte', 'Summit', 'North Dakota', 'ND', 'Slope', 'Black Butte', 46.3984364, -103.4466516, ST_GeomFromText('POINT(46.3984364 -103.4466516)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1034726', 'Black Spring', 'Spring', 'North Dakota', 'ND', 'Stark', 'Belfield SW', 46.7586227, -103.1573997, ST_GeomFromText('POINT(46.7586227 -103.1573997)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034727', 'Black Top Butte', 'Summit', 'North Dakota', 'ND', 'Billings', 'Roosevelt Creek East', 47.236307, -103.5708831, ST_GeomFromText('POINT(47.236307 -103.5708831)', 4326), NULL, NULL, '1980-02-13', '2017-08-18', NULL, NULL, NULL),
  ('1034728', 'Blacktail Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Hanks Gully', 47.2861265, -103.6140824, ST_GeomFromText('POINT(47.2861265 -103.6140824)', 4326), 47.1436257, -103.3468504, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034729', 'Blue Buttes', 'Range', 'North Dakota', 'ND', 'McKenzie', 'Blue Buttes', 47.8795337, -102.8523481, ST_GeomFromText('POINT(47.8795337 -102.8523481)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1034732', 'Boicourt Spring', 'Spring', 'North Dakota', 'ND', 'Billings', 'Fryburg NW', 46.968625, -103.398793, ST_GeomFromText('POINT(46.968625 -103.398793)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034733', 'Bonnie Divide', 'Ridge', 'North Dakota', 'ND', 'Dunn', 'Petes Creek', 47.4682213, -103.0476801, ST_GeomFromText('POINT(47.4682213 -103.0476801)', 4326), NULL, NULL, '1980-02-13', '2017-02-03', NULL, NULL, NULL),
  ('1034734', 'Boulder Point', 'Summit', 'North Dakota', 'ND', 'Slope', 'Black Butte', 46.4124567, -103.4491475, ST_GeomFromText('POINT(46.4124567 -103.4491475)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1034735', 'Bowline Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Red Wing Creek', 47.5200162, -103.6015853, ST_GeomFromText('POINT(47.5200162 -103.6015853)', 4326), 47.5816833, -103.6507528, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1034736', 'Boyce Creek', 'Stream', 'North Dakota', 'ND', 'Slope', 'Boyce Creek West', 46.4697314, -103.8621471, ST_GeomFromText('POINT(46.4697314 -103.8621471)', 4326), 46.4063979, -103.6651953, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034737', 'Bridger Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Burning Mine Butte', 47.5100164, -103.6801974, ST_GeomFromText('POINT(47.5100164 -103.6801974)', 4326), 47.5516667, -103.6922222, '1980-02-13', NULL, 'Official', 'Board Decision', '1975-01-01'),
  ('1034738', 'Browns Hill', 'Summit', 'North Dakota', 'ND', 'Slope', 'Black Butte', 46.4083354, -103.4668428, ST_GeomFromText('POINT(46.4083354 -103.4668428)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1034739', 'Buck Hill', 'Summit', 'North Dakota', 'ND', 'Billings', 'Fryburg NW', 46.9257524, -103.3888466, ST_GeomFromText('POINT(46.9257524 -103.3888466)', 4326), NULL, NULL, '1980-02-13', '2017-08-18', NULL, NULL, NULL),
  ('1034740', 'Buckhorn Butte', 'Summit', 'North Dakota', 'ND', 'Billings', 'Hanks Gully', 47.303716, -103.623036, ST_GeomFromText('POINT(47.303716 -103.623036)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1034741', 'Buckhorn Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Eagle Draw', 47.3125155, -103.6263053, ST_GeomFromText('POINT(47.3125155 -103.6263053)', 4326), 47.2983487, -103.581304, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034742', 'Buckskin Butte', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Buckskin Butte', 47.380052, -103.3053337, ST_GeomFromText('POINT(47.380052 -103.3053337)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1034744', 'Buffalo Lodge Lake', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Granville', 48.3275416, -100.7566163, ST_GeomFromText('POINT(48.3275416 -100.7566163)', 4326), NULL, NULL, '1980-02-13', '2019-04-08', NULL, NULL, NULL),
  ('1034745', 'Bull Butte', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Charbonneau', 47.8506338, -103.8345569, ST_GeomFromText('POINT(47.8506338 -103.8345569)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1034746', 'Bull Creek', 'Stream', 'North Dakota', 'ND', 'Stark', 'Belfield SE', 46.8055674, -103.1023995, ST_GeomFromText('POINT(46.8055674 -103.1023995)', 4326), 46.7111226, -103.1960107, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1034748', 'Bullion Butte', 'Summit', 'North Dakota', 'ND', 'Billings', 'Bullion Butte', 46.6772846, -103.5939481, ST_GeomFromText('POINT(46.6772846 -103.5939481)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', 'Official', 'Board Decision', '1978-01-01'),
  ('1034749', 'Bullion Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Bullion Butte', 46.7119571, -103.5963021, ST_GeomFromText('POINT(46.7119571 -103.5963021)', 4326), 46.6927892, -104.0638198, '1980-02-13', NULL, 'Official', 'Board Decision', '1978-01-01'),
  ('1034751', 'Bummer Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Red Wing Creek', 47.5119605, -103.5685293, ST_GeomFromText('POINT(47.5119605 -103.5685293)', 4326), 47.4372374, -103.4060252, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034753', 'Burning Mine Butte', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Burning Mine Butte', 47.5531496, -103.6820874, ST_GeomFromText('POINT(47.5531496 -103.6820874)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1034754', 'Burning Mine Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Burning Mine Butte', 47.5758499, -103.6557529, ST_GeomFromText('POINT(47.5758499 -103.6557529)', 4326), 47.5527778, -103.6447222, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034756', 'Burnt Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Lone Butte NE', 47.6783508, -103.0040784, ST_GeomFromText('POINT(47.6783508 -103.0040784)', 4326), 47.7177942, -102.9129687, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034762', 'Camp Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Scairt Woman Draw', 47.2977928, -103.3282429, ST_GeomFromText('POINT(47.2977928 -103.3282429)', 4326), 47.3091667, -103.2944444, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034766', 'Cash Creek', 'Stream', 'North Dakota', 'ND', 'Slope', 'Pretty Butte', 46.4366752, -103.9038155, ST_GeomFromText('POINT(46.4366752 -103.9038155)', 4326), 46.3627859, -103.7374208, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034767', 'Cedar Canyon', 'Valley', 'North Dakota', 'ND', 'Billings', 'Fryburg NE', 46.900663, -103.361184, ST_GeomFromText('POINT(46.900663 -103.361184)', 4326), 46.8922522, -103.3409763, '1980-02-13', '2017-08-18', NULL, NULL, NULL),
  ('1034768', 'Cedar Canyon', 'Valley', 'North Dakota', 'ND', 'McKenzie', 'Long X Divide', 47.60856, -103.3469737, ST_GeomFromText('POINT(47.60856 -103.3469737)', 4326), 47.6119929, -103.3747505, '1980-02-13', '2017-08-18', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1034769', 'Cedar Creek', 'Stream', 'North Dakota', 'ND', 'Grant', 'Lookout Butte SE', 46.1247252, -101.3112422, ST_GeomFromText('POINT(46.1247252 -101.3112422)', 4326), 46.3038971, -103.3468482, '1980-02-13', '2011-04-15', 'Official', 'Board Decision', '1975-01-01'),
  ('1034770', 'Cedar Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Red Wing Creek', 47.5208495, -103.6138077, ST_GeomFromText('POINT(47.5208495 -103.6138077)', 4326), 47.5552944, -103.6882533, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034771', 'Cedar Top Butte', 'Summit', 'North Dakota', 'ND', 'Billings', 'Hanks Gully', 47.30223, -103.5010135, ST_GeomFromText('POINT(47.30223 -103.5010135)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1034772', 'Chalky Buttes', 'Range', 'North Dakota', 'ND', 'Slope', 'Amidon', 46.3994538, -103.3351807, ST_GeomFromText('POINT(46.3994538 -103.3351807)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034774', 'Charbonneau Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Cartwright', 47.8583524, -103.9652075, ST_GeomFromText('POINT(47.8583524 -103.9652075)', 4326), 47.6255724, -103.6293637, '1980-02-13', NULL, 'Official', 'Board Decision', '1932-01-01'),
  ('1034775', 'Charlie Bob Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Petes Creek', 47.4394593, -103.0899099, ST_GeomFromText('POINT(47.4394593 -103.0899099)', 4326), 47.388348, -103.2065764, '1980-02-13', NULL, 'Official', 'Board Decision', '1976-01-01'),
  ('1034777', 'Chase Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Lone Butte SE', 47.5455709, -103.0690774, ST_GeomFromText('POINT(47.5455709 -103.0690774)', 4326), 47.4911253, -102.9162984, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034779', 'Cheney Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Fairview', 47.7583508, -104.0427097, ST_GeomFromText('POINT(47.7583508 -104.0427097)', 4326), 47.6660349, -103.9207014, '1980-02-13', '2015-05-28', 'Official', 'Board Decision', '1932-01-01'),
  ('1034780', 'Cherry Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Lone Butte NE', 47.6783507, -103.0240785, ST_GeomFromText('POINT(47.6783507 -103.0240785)', 4326), 47.7264057, -103.5515848, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034782', 'Chicken Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Sheep Creek', 47.5602946, -103.7996447, ST_GeomFromText('POINT(47.5602946 -103.7996447)', 4326), 47.5675168, -103.7226982, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1034783', 'Chimney Butte', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Blue Buttes', 47.9274011, -102.84014, ST_GeomFromText('POINT(47.9274011 -102.84014)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1034784', 'Chocolate Butte', 'Summit', 'North Dakota', 'ND', 'Billings', 'Rocky Ridge North', 46.6683975, -103.3412969, ST_GeomFromText('POINT(46.6683975 -103.3412969)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1034785', 'Cinnamon Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Ice Box Canyon', 47.4008491, -103.6249175, ST_GeomFromText('POINT(47.4008491 -103.6249175)', 4326), 47.3939048, -103.7860323, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034786', 'Clay Butte', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Tepee Buttes', 47.6972316, -103.3071254, ST_GeomFromText('POINT(47.6972316 -103.3071254)', 4326), NULL, NULL, '1980-02-13', '2017-08-18', NULL, NULL, NULL),
  ('1034787', 'Clear Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Banks', 48.0030806, -103.1393541, ST_GeomFromText('POINT(48.0030806 -103.1393541)', 4326), 47.9441896, -102.9304652, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034792', 'Coal Creek', 'Stream', 'North Dakota', 'ND', 'Golden Valley', 'Chimney Butte', 46.800569, -103.5738007, ST_GeomFromText('POINT(46.800569 -103.5738007)', 4326), 46.7730556, -103.5088889, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034793', 'Coal Lake Coulee', 'Valley', 'North Dakota', 'ND', 'McLean', 'Washburn NE', 47.3880513, -101.1104278, ST_GeomFromText('POINT(47.3880513 -101.1104278)', 4326), 47.4913889, -101.0486111, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034794', 'Coal Mine Creek', 'Stream', 'North Dakota', 'ND', 'Stark', 'Belfield', 46.8752903, -103.1260111, ST_GeomFromText('POINT(46.8752903 -103.1260111)', 4326), 46.9316667, -103.1791667, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034796', 'Collar Draw', 'Valley', 'North Dakota', 'ND', 'McKenzie', 'Sperati Point', 47.5474947, -103.4097237, ST_GeomFromText('POINT(47.5474947 -103.4097237)', 4326), 47.5173549, -103.3903194, '1980-02-13', '2017-08-18', NULL, NULL, NULL),
  ('1034798', 'Cooks Peak', 'Summit', 'North Dakota', 'ND', 'Golden Valley', 'Roosevelt Creek West', 47.1551489, -103.7357531, ST_GeomFromText('POINT(47.1551489 -103.7357531)', 4326), NULL, NULL, '1980-02-13', '2017-08-18', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1034800', 'Corral Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Sheep Creek', 47.5380723, -103.7751993, ST_GeomFromText('POINT(47.5380723 -103.7751993)', 4326), 47.5605723, -103.7099202, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034801', 'Corral Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Sperati Point', 47.5527935, -103.4432495, ST_GeomFromText('POINT(47.5527935 -103.4432495)', 4326), 47.5083475, -103.2418567, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034802', 'Corral Draw', 'Valley', 'North Dakota', 'ND', 'McKenzie', 'Phillip Spring', 47.5944589, -103.9941762, ST_GeomFromText('POINT(47.5944589 -103.9941762)', 4326), 47.606409, -103.9584792, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1034804', 'Cottonwood Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Lone Butte SE', 47.590016, -103.0487999, ST_GeomFromText('POINT(47.590016 -103.0487999)', 4326), 47.5641667, -103.0047222, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034805', 'Cottonwood Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Wolf Coulee', 47.4947373, -103.3943595, ST_GeomFromText('POINT(47.4947373 -103.3943595)', 4326), 47.3983479, -103.2732439, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034806', 'Covered Bridge Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Burning Mine Butte', 47.5000163, -103.6643639, ST_GeomFromText('POINT(47.5000163 -103.6643639)', 4326), 47.5, -103.7033333, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034809', 'Crooked Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Roosevelt Creek East', 47.137237, -103.5799128, ST_GeomFromText('POINT(47.137237 -103.5799128)', 4326), 47.0966813, -103.6840827, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034810', 'Crosby Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Lone Butte SE', 47.5775158, -103.0729667, ST_GeomFromText('POINT(47.5775158 -103.0729667)', 4326), 47.4394593, -103.0896322, '1980-02-13', NULL, 'Official', 'Board Decision', '1976-01-01'),
  ('1034811', 'Cummings Draw', 'Valley', 'North Dakota', 'ND', 'McKenzie', 'Sheep Creek', 47.5719973, -103.8735463, ST_GeomFromText('POINT(47.5719973 -103.8735463)', 4326), 47.6090929, -103.8605829, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1034812', 'Custers Wash', 'Stream', 'North Dakota', 'ND', 'Golden Valley', 'Chimney Butte', 46.8641804, -103.5424102, ST_GeomFromText('POINT(46.8641804 -103.5424102)', 4326), 46.8611111, -103.5713889, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1034815', 'Dantz Creek', 'Stream', 'North Dakota', 'ND', 'Golden Valley', 'Chimney Butte', 46.7533464, -103.5982464, ST_GeomFromText('POINT(46.7533464 -103.5982464)', 4326), 46.7086233, -103.3637933, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034816', 'Davis Creek', 'Stream', 'North Dakota', 'ND', 'Golden Valley', 'Chimney Butte', 46.8677915, -103.5340765, ST_GeomFromText('POINT(46.8677915 -103.5340765)', 4326), 46.7058455, -103.3596265, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034817', 'Dawsons Waterhole', 'Stream', 'North Dakota', 'ND', 'Billings', 'Wannagan Creek East', 47.1200148, -103.5046323, ST_GeomFromText('POINT(47.1200148 -103.5046323)', 4326), 47.0939035, -103.4401853, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034820', 'Deep Creek', 'Stream', 'North Dakota', 'ND', 'Slope', 'Deep Creek North', 46.5944561, -103.5193551, ST_GeomFromText('POINT(46.5944561 -103.5193551)', 4326), 46.37112, -103.5149113, '1980-02-13', NULL, 'Official', 'Board Decision', '1979-01-01'),
  ('1034821', 'Deep Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Croff', 47.6566832, -102.9607452, ST_GeomFromText('POINT(47.6566832 -102.9607452)', 4326), 47.6761258, -102.8446353, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034822', 'Deer Creek', 'Stream', 'North Dakota', 'ND', 'Slope', 'Three V Crossing', 46.5258434, -103.8424238, ST_GeomFromText('POINT(46.5258434 -103.8424238)', 4326), 46.5419543, -103.9296492, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034823', 'Deer Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Petes Creek', 47.4394593, -103.0899099, ST_GeomFromText('POINT(47.4394593 -103.0899099)', 4326), 47.3722377, -103.0568536, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034825', 'Demicks Lake', 'Lake', 'North Dakota', 'ND', 'McKenzie', 'Demicks Lake', 47.886705, -103.0222432, ST_GeomFromText('POINT(47.886705 -103.0222432)', 4326), NULL, NULL, '1980-02-13', '2019-04-28', NULL, NULL, NULL),
  ('1034827', 'Devils Pass', 'Gap', 'North Dakota', 'ND', 'Billings', 'Hanks Gully', 47.295571, -103.5371363, ST_GeomFromText('POINT(47.295571 -103.5371363)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034829', 'Dietz Draw', 'Valley', 'North Dakota', 'ND', 'Golden Valley', 'Eagle Draw', 47.270842, -103.7213345, ST_GeomFromText('POINT(47.270842 -103.7213345)', 4326), 47.2941102, -103.7971637, '1980-02-13', '2020-01-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1034830', 'Dillinger Divide', 'Ridge', 'North Dakota', 'ND', 'Dunn', 'Petes Creek', 47.4663715, -103.0639184, ST_GeomFromText('POINT(47.4663715 -103.0639184)', 4326), NULL, NULL, '1980-02-13', '2017-02-12', NULL, NULL, NULL),
  ('1034831', 'Docs Draw', 'Valley', 'North Dakota', 'ND', 'McKenzie', 'Bear Butte', 47.636042, -103.5110247, ST_GeomFromText('POINT(47.636042 -103.5110247)', 4326), 47.6782838, -103.5976551, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1034835', 'Dry Bullion Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Bullion Butte', 46.7052905, -103.6090804, ST_GeomFromText('POINT(46.7052905 -103.6090804)', 4326), 46.7266795, -103.7415857, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034836', 'Dry Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Bullion Butte', 46.7380686, -103.6004688, ST_GeomFromText('POINT(46.7380686 -103.6004688)', 4326), 46.7577909, -103.6626934, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034837', 'Dry Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Wannagan Creek East', 47.0486256, -103.5257429, ST_GeomFromText('POINT(47.0486256 -103.5257429)', 4326), 47.0450145, -103.4846302, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034838', 'Dry Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Roosevelt Creek East', 47.2019594, -103.6329708, ST_GeomFromText('POINT(47.2019594 -103.6329708)', 4326), 47.1952928, -103.6951948, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034839', 'Dry Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Lone Butte SE', 47.5561265, -103.0837999, ST_GeomFromText('POINT(47.5561265 -103.0837999)', 4326), 47.5194588, -103.2390789, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034840', 'Dry Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Blue Buttes SE', 47.7750146, -102.7796369, ST_GeomFromText('POINT(47.7750146 -102.7796369)', 4326), 47.8277968, -102.9107455, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034841', 'Duff Gulch', 'Valley', 'North Dakota', 'ND', 'Slope', 'Amidon', 46.3877871, -103.3449034, ST_GeomFromText('POINT(46.3877871 -103.3449034)', 4326), 46.3938889, -103.3233333, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034842', 'Dugout Creek', 'Stream', 'North Dakota', 'ND', 'Slope', 'Badland Draw', 46.4572306, -104.0057635, ST_GeomFromText('POINT(46.4572306 -104.0057635)', 4326), 46.4255627, -104.1716029, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1034843', 'Eagle Draw', 'Valley', 'North Dakota', 'ND', 'McKenzie', 'Eagle Draw', 47.3335133, -103.6701892, ST_GeomFromText('POINT(47.3335133 -103.6701892)', 4326), 47.3499207, -103.696991, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1034844', 'East Branch Elk Creek', 'Stream', 'North Dakota', 'ND', 'Golden Valley', 'West Twin Butte', 47.1239035, -103.8229769, ST_GeomFromText('POINT(47.1239035 -103.8229769)', 4326), 47.0297222, -103.8455556, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034846', 'East Fork Badlands Draw', 'Valley', 'North Dakota', 'ND', 'McKenzie', 'Phillip Spring', 47.5698806, -103.9703321, ST_GeomFromText('POINT(47.5698806 -103.9703321)', 4326), 47.5418044, -103.9683, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1034847', 'East Fork Deep Creek', 'Stream', 'North Dakota', 'ND', 'Slope', 'West Fork Deep Creek', 46.37112, -103.5149113, ST_GeomFromText('POINT(46.37112 -103.5149113)', 4326), 46.2486181, -103.5285234, '1980-02-13', NULL, 'Official', 'Board Decision', '1979-01-01'),
  ('1034848', 'East Hay Draw Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Burning Mine Butte', 47.5033495, -103.6357524, ST_GeomFromText('POINT(47.5033495 -103.6357524)', 4326), 47.5380556, -103.7427778, '1980-02-13', NULL, 'Official', 'Board Decision', '1975-01-01'),
  ('1034850', 'East Twin Butte', 'Summit', 'North Dakota', 'ND', 'Golden Valley', 'Wannagan Creek West', 47.020991, -103.7477729, ST_GeomFromText('POINT(47.020991 -103.7477729)', 4326), NULL, NULL, '1980-02-13', '2018-06-15', NULL, NULL, NULL),
  ('1034851', 'Eisenhower Divide', 'Ridge', 'North Dakota', 'ND', 'McKenzie', 'Petes Creek', 47.490958, -103.1042903, ST_GeomFromText('POINT(47.490958 -103.1042903)', 4326), NULL, NULL, '1980-02-13', '2017-02-07', NULL, NULL, NULL),
  ('1034852', 'Elk Creek', 'Stream', 'North Dakota', 'ND', 'Richland', 'Moselle', 46.2024599, -97.0931424, ST_GeomFromText('POINT(46.2024599 -97.0931424)', 4326), 46.3116291, -97.3631464, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034853', 'Elk Creek', 'Stream', 'North Dakota', 'ND', 'Golden Valley', 'Hootowl Creek East', 47.2139039, -103.8340886, ST_GeomFromText('POINT(47.2139039 -103.8340886)', 4326), 47.033903, -103.9379812, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034854', 'Elkhorn Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Lone Butte NE', 47.7164067, -103.0826903, ST_GeomFromText('POINT(47.7164067 -103.0826903)', 4326), 47.6927948, -103.2196352, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1034856', 'Ellison Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Roosevelt Creek East', 47.2325152, -103.6185263, ST_GeomFromText('POINT(47.2325152 -103.6185263)', 4326), 47.2161262, -103.6829724, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034857', 'Lake Elsie', 'Lake', 'North Dakota', 'ND', 'Richland', 'Hankinson', 46.0454089, -96.9315903, ST_GeomFromText('POINT(46.0454089 -96.9315903)', 4326), NULL, NULL, '1980-02-13', '2023-05-26', NULL, NULL, NULL),
  ('1034859', 'Estes Coulee', 'Valley', 'North Dakota', 'ND', 'McKenzie', 'Sidney NE', 47.7485503, -104.0333256, ST_GeomFromText('POINT(47.7485503 -104.0333256)', 4326), 47.7571636, -104.000366, '1980-02-13', '2021-07-24', NULL, NULL, NULL),
  ('1034861', 'Estes Spring', 'Spring', 'North Dakota', 'ND', 'McKenzie', 'Sidney NE', 47.7272396, -104.0190974, ST_GeomFromText('POINT(47.7272396 -104.0190974)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034865', 'Fantail Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Eagle Draw', 47.3247377, -103.6265832, ST_GeomFromText('POINT(47.3247377 -103.6265832)', 4326), 47.295571, -103.5613035, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034868', 'Fisher Run', 'Stream', 'North Dakota', 'ND', 'Golden Valley', 'Square Butte', 46.8011244, -103.6838052, ST_GeomFromText('POINT(46.8011244 -103.6838052)', 4326), 46.8561245, -103.7971428, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034870', 'Flat Rock Butte', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Flat Rock Butte', 47.4341908, -103.8632974, ST_GeomFromText('POINT(47.4341908 -103.8632974)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1034871', 'Flat Top Butte', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Ice Box Canyon', 47.4485024, -103.507577, ST_GeomFromText('POINT(47.4485024 -103.507577)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1034872', 'Foreman Butte', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Alexander', 47.8437446, -103.6507377, ST_GeomFromText('POINT(47.8437446 -103.6507377)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1034873', 'Foreman Coulee', 'Valley', 'North Dakota', 'ND', 'McKenzie', 'Sanish SW', 47.8164039, -102.7382469, ST_GeomFromText('POINT(47.8164039 -102.7382469)', 4326), 47.8597396, -102.7979679, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1034874', 'Forked Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Burning Mine Butte', 47.53335, -103.7426984, ST_GeomFromText('POINT(47.53335 -103.7426984)', 4326), 47.5255556, -103.7025, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034875', 'Franks Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Wannagan Creek East', 47.0775146, -103.5357438, ST_GeomFromText('POINT(47.0775146 -103.5357438)', 4326), 46.9772359, -103.2679549, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034879', 'French Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Cinnamon Creek', 47.457516, -103.6365852, ST_GeomFromText('POINT(47.457516 -103.6365852)', 4326), 47.4708333, -103.7202778, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034882', 'Frying Pan Lake', 'Lake', 'North Dakota', 'ND', 'Richland', 'Hankinson', 46.0314603, -96.9757656, ST_GeomFromText('POINT(46.0314603 -96.9757656)', 4326), NULL, NULL, '1980-02-13', '2023-05-26', NULL, NULL, NULL),
  ('1034885', 'Garner Creek', 'Stream', 'North Dakota', 'ND', 'Golden Valley', 'Chimney Butte', 46.8150134, -103.5699116, ST_GeomFromText('POINT(46.8150134 -103.5699116)', 4326), 46.8358462, -103.9635381, '1980-02-13', NULL, 'Official', 'Board Decision', '1979-01-01'),
  ('1034892', 'Government Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Wannagan Creek East', 47.0222366, -103.5343539, ST_GeomFromText('POINT(47.0222366 -103.5343539)', 4326), 46.9489025, -103.3149012, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034896', 'Grass Lake', 'Lake', 'North Dakota', 'ND', 'Richland', 'Hankinson', 46.0602758, -96.9252954, ST_GeomFromText('POINT(46.0602758 -96.9252954)', 4326), NULL, NULL, '1980-02-13', '2023-05-26', NULL, NULL, NULL),
  ('1034898', 'Grassy Butte', 'Summit', 'North Dakota', 'ND', 'Billings', 'Wannagan Creek East', 47.1188766, -103.6217914, ST_GeomFromText('POINT(47.1188766 -103.6217914)', 4326), NULL, NULL, '1980-02-13', '2017-08-18', NULL, NULL, NULL),
  ('1034899', 'Grassy Butte', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Grassy Butte', 47.3952848, -103.2490658, ST_GeomFromText('POINT(47.3952848 -103.2490658)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1034902', 'Green River', 'Stream', 'North Dakota', 'ND', 'Stark', 'Gladstone', 46.8619515, -102.5857357, ST_GeomFromText('POINT(46.8619515 -102.5857357)', 4326), 47.1500146, -103.2771265, '1980-02-13', '2018-01-09', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1034903', 'Half Breed Coulee', 'Valley', 'North Dakota', 'ND', 'Williams', 'Red Mike Hill', 48.1883081, -103.1154092, ST_GeomFromText('POINT(48.1883081 -103.1154092)', 4326), 48.2246969, -103.1549344, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1034906', 'Handy Water Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Blue Buttes SE', 47.7894591, -102.7663033, ST_GeomFromText('POINT(47.7894591 -102.7663033)', 4326), 47.8733333, -102.8544444, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034908', 'Hanks Gully', 'Valley', 'North Dakota', 'ND', 'McKenzie', 'Hanks Gully', 47.3396009, -103.5575067, ST_GeomFromText('POINT(47.3396009 -103.5575067)', 4326), 47.3551757, -103.5575747, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1034910', 'Hanley Wash', 'Stream', 'North Dakota', 'ND', 'Billings', 'Cliffs Plateau', 46.6361231, -103.4582414, ST_GeomFromText('POINT(46.6361231 -103.4582414)', 4326), 46.675, -103.4088889, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034911', 'Hanleys Wash', 'Stream', 'North Dakota', 'ND', 'Billings', 'Bullion Butte', 46.6636235, -103.5074098, ST_GeomFromText('POINT(46.6636235 -103.5074098)', 4326), 46.6513889, -103.5880556, '1980-02-13', '2015-05-28', NULL, NULL, NULL),
  ('1034914', 'Hay Coulee', 'Valley', 'North Dakota', 'ND', 'Dunn', 'Petes Creek', 47.4919805, -103.0205689, ST_GeomFromText('POINT(47.4919805 -103.0205689)', 4326), 47.4683486, -103.0038637, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1034916', 'Hay Draw', 'Valley', 'North Dakota', 'ND', 'Billings', 'Wannagan Creek East', 47.1111379, -103.5530222, ST_GeomFromText('POINT(47.1111379 -103.5530222)', 4326), 47.0970238, -103.5243805, '1980-02-13', '2017-08-18', NULL, NULL, NULL),
  ('1034918', 'Heart River', 'Stream', 'North Dakota', 'ND', 'Morton', 'Bismarck', 46.7674942, -100.8420738, ST_GeomFromText('POINT(46.7674942 -100.8420738)', 4326), 46.9369577, -103.230177, '1980-02-13', '2018-01-09', NULL, NULL, NULL),
  ('1034927', 'Hootowl Creek', 'Stream', 'North Dakota', 'ND', 'Golden Valley', 'Hootowl Creek East', 47.2097372, -103.853256, ST_GeomFromText('POINT(47.2097372 -103.853256)', 4326), 47.2489041, -103.9221475, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034928', 'Hops Wash', 'Stream', 'North Dakota', 'ND', 'Billings', 'Cliffs Plateau', 46.6361231, -103.4582414, ST_GeomFromText('POINT(46.6361231 -103.4582414)', 4326), 46.6586111, -103.4222222, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1034929', 'Horse Creek', 'Stream', 'North Dakota', 'ND', 'Slope', 'Pretty Butte', 46.4780648, -103.8890925, ST_GeomFromText('POINT(46.4780648 -103.8890925)', 4326), 46.555843, -104.0310417, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034930', 'Horse Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Cartwright', 47.8077961, -103.992708, ST_GeomFromText('POINT(47.8077961 -103.992708)', 4326), 47.6302951, -103.7801999, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034931', 'Horse Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Rattlesnake Butte', 47.0866811, -103.133514, ST_GeomFromText('POINT(47.0866811 -103.133514)', 4326), 47.183904, -103.1474055, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034932', 'Horse Creek', 'Stream', 'North Dakota', 'ND', 'Golden Valley', 'Hootowl Creek East', 47.2397374, -103.8335331, ST_GeomFromText('POINT(47.2397374 -103.8335331)', 4326), 47.2677931, -103.9368704, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034933', 'Horse Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Cinnamon Creek', 47.4102936, -103.6254733, ST_GeomFromText('POINT(47.4102936 -103.6254733)', 4326), 47.4191667, -103.7113889, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034935', 'Horseshoe Lake', 'Lake', 'North Dakota', 'ND', 'Richland', 'Hankinson', 46.0445542, -96.9865812, ST_GeomFromText('POINT(46.0445542 -96.9865812)', 4326), NULL, NULL, '1980-02-13', '2023-05-26', NULL, NULL, NULL),
  ('1034937', 'Hultman Lake', 'Lake', 'North Dakota', 'ND', 'Sargent', 'Lisbon SE', 46.2729702, -97.5025949, ST_GeomFromText('POINT(46.2729702 -97.5025949)', 4326), NULL, NULL, '1980-02-13', '2023-05-26', NULL, NULL, NULL),
  ('1034938', 'Ice Box Canyon', 'Valley', 'North Dakota', 'ND', 'McKenzie', 'Ice Box Canyon', 47.4805717, -103.612974, ST_GeomFromText('POINT(47.4805717 -103.612974)', 4326), 47.4708333, -103.5444444, '1980-02-13', NULL, 'Official', 'Board Decision', '1975-01-01'),
  ('1034947', 'Johntown Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Charbonneau', 47.7702961, -103.807146, ST_GeomFromText('POINT(47.7702961 -103.807146)', 4326), 47.7297399, -103.8485361, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034950', 'Jones Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Fryburg NW', 46.9691809, -103.4904631, ST_GeomFromText('POINT(46.9691809 -103.4904631)', 4326), 46.9722222, -103.405, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1034951', 'Jules Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Fryburg NW', 46.9905699, -103.49963, ST_GeomFromText('POINT(46.9905699 -103.49963)', 4326), 46.9766667, -103.4138889, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034952', 'Juniper Spur', 'Ridge', 'North Dakota', 'ND', 'Slope', 'Juniper Spur', 46.5935886, -103.4416716, ST_GeomFromText('POINT(46.5935886 -103.4416716)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1034958', 'Klandl Spring', 'Spring', 'North Dakota', 'ND', 'McKenzie', 'Phillip Spring', 47.6166837, -103.9346495, ST_GeomFromText('POINT(47.6166837 -103.9346495)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034960', 'Knife River', 'Stream', 'North Dakota', 'ND', 'Mercer', 'Stanton SE', 47.3216653, -101.3709919, ST_GeomFromText('POINT(47.3216653 -101.3709919)', 4326), 47.1905705, -103.2129607, '1980-02-13', '2018-01-16', NULL, NULL, NULL),
  ('1034961', 'Knutson Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Medora', 46.9552919, -103.5162975, ST_GeomFromText('POINT(46.9552919 -103.5162975)', 4326), 47.0055696, -103.8849235, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034962', 'Kummer Ridge', 'Ridge', 'North Dakota', 'ND', 'McKenzie', 'Johnsons Corner', 47.7786187, -102.9051551, ST_GeomFromText('POINT(47.7786187 -102.9051551)', 4326), NULL, NULL, '1980-02-13', '2017-01-31', NULL, NULL, NULL),
  ('1034976', 'Little Antelope Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Rat Lake SW', 48.0014071, -102.6435173, ST_GeomFromText('POINT(48.0014071 -102.6435173)', 4326), 48.0511333, -102.8699078, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034979', 'Little Beicegel Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Ice Box Canyon', 47.4472381, -103.5990844, ST_GeomFromText('POINT(47.4472381 -103.5990844)', 4326), 47.3639044, -103.5074146, '1980-02-13', NULL, 'Official', 'Board Decision', '1975-01-01'),
  ('1034980', 'Little Knife River', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Killdeer', 47.2572379, -102.8726857, ST_GeomFromText('POINT(47.2572379 -102.8726857)', 4326), 47.3452928, -103.1771312, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034981', 'Little Missouri River', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Lost Bridge', 47.6105703, -102.873245, ST_GeomFromText('POINT(47.6105703 -102.873245)', 4326), 44.5402608, -104.9991455, '1980-02-13', '2016-05-27', 'Official', 'Board Decision', '1974-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1034982', 'Little Squaretop Butte', 'Summit', 'North Dakota', 'ND', 'Billings', 'Squaretop Butte', 47.2669278, -103.4391222, ST_GeomFromText('POINT(47.2669278 -103.4391222)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1034983', 'Little Wannagan Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Wannagan Creek East', 47.0452923, -103.5785227, ST_GeomFromText('POINT(47.0452923 -103.5785227)', 4326), 47.011681, -103.6838043, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034985', 'Lone Beaver Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Lone Butte NE', 47.6980733, -103.0463011, ST_GeomFromText('POINT(47.6980733 -103.0463011)', 4326), 47.7214054, -102.9193576, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034986', 'Lone Butte', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Lone Butte', 47.5023659, -103.1579196, ST_GeomFromText('POINT(47.5023659 -103.1579196)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1034987', 'Lone Butte Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Petes Creek', 47.498348, -103.0707437, ST_GeomFromText('POINT(47.498348 -103.0707437)', 4326), 47.4941811, -103.1521334, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034988', 'Lonesome Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Charbonneau', 47.8572423, -103.7879795, ST_GeomFromText('POINT(47.8572423 -103.7879795)', 4326), 47.7752955, -103.5354735, '1980-02-13', NULL, 'Official', 'Board Decision', '1932-01-01'),
  ('1034989', 'Long Creek', 'Stream', 'North Dakota', 'ND', 'Williams', 'Banks', 48.1030781, -103.2474095, ST_GeomFromText('POINT(48.1030781 -103.2474095)', 4326), 48.119746, -103.4229691, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034990', 'Long X Divide', 'Ridge', 'North Dakota', 'ND', 'McKenzie', 'Long X Divide', 47.5715605, -103.3652166, ST_GeomFromText('POINT(47.5715605 -103.3652166)', 4326), NULL, NULL, '1980-02-13', '2017-02-07', NULL, NULL, NULL),
  ('1034991', 'Magpie Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Hanks Gully', 47.3658489, -103.6035278, ST_GeomFromText('POINT(47.3658489 -103.6035278)', 4326), 47.2239039, -103.2387949, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1034998', 'McPeak Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Phillip Spring', 47.5719612, -103.8882588, ST_GeomFromText('POINT(47.5719612 -103.8882588)', 4326), 47.6213889, -103.9097222, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1034999', 'McPeak Spring', 'Spring', 'North Dakota', 'ND', 'McKenzie', 'Phillip Spring', 47.598628, -103.8940925, ST_GeomFromText('POINT(47.598628 -103.8940925)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035002', 'Merrifield Creek', 'Stream', 'North Dakota', 'ND', 'Golden Valley', 'Chimney Butte', 46.810569, -103.5699116, ST_GeomFromText('POINT(46.810569 -103.5699116)', 4326), 46.7780686, -103.4304621, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035003', 'Middle Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Charbonneau', 47.8183526, -103.8015907, ST_GeomFromText('POINT(47.8183526 -103.8015907)', 4326), 47.7763889, -103.8283333, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035005', 'Mike Hart Draw', 'Valley', 'North Dakota', 'ND', 'McKenzie', 'Sheep Creek', 47.5829029, -103.8570701, ST_GeomFromText('POINT(47.5829029 -103.8570701)', 4326), 47.6237848, -103.8359312, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1035006', 'Mikes Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Roosevelt Creek East', 47.1883483, -103.5963029, ST_GeomFromText('POINT(47.1883483 -103.5963029)', 4326), 47.1772371, -103.4640766, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035007', 'Mile Butte', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Burning Mine Butte', 47.5199872, -103.709167, ST_GeomFromText('POINT(47.5199872 -103.709167)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1035014', 'Morgan Draw', 'Valley', 'North Dakota', 'ND', 'Billings', 'Eagle Draw', 47.294464, -103.6299035, ST_GeomFromText('POINT(47.294464 -103.6299035)', 4326), 47.2529288, -103.6556666, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1035015', 'Morman Butte', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Lone Butte', 47.605056, -103.193668, ST_GeomFromText('POINT(47.605056 -103.193668)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1035019', 'Mule Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Cartwright', 47.8094627, -103.9913191, ST_GeomFromText('POINT(47.8094627 -103.9913191)', 4326), 47.8, -103.9047222, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035024', 'Nelson Creek', 'Stream', 'North Dakota', 'ND', 'Williams', 'Red Mike Hill', 48.1725217, -103.0657403, ST_GeomFromText('POINT(48.1725217 -103.0657403)', 4326), 48.2497422, -103.2001853, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1035026', 'Norred Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Lone Butte SE', 47.5027925, -103.0685215, ST_GeomFromText('POINT(47.5027925 -103.0685215)', 4326), 47.4530702, -102.9335204, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035027', 'North Branch Bowline Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Burning Mine Butte', 47.5814055, -103.650475, ST_GeomFromText('POINT(47.5814055 -103.650475)', 4326), 47.6197222, -103.7419444, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035028', 'North Branch Clear Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Demicks Lake', 47.9341909, -103.0040762, ST_GeomFromText('POINT(47.9341909 -103.0040762)', 4326), 47.9591893, -102.8985206, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035029', 'North Cedar Creek', 'Stream', 'North Dakota', 'ND', 'Slope', 'Cedar Lake', 46.3019528, -102.9804421, ST_GeomFromText('POINT(46.3019528 -102.9804421)', 4326), 46.3697313, -103.292401, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035030', 'North Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Squaretop Butte', 47.2825151, -103.3837993, ST_GeomFromText('POINT(47.2825151 -103.3837993)', 4326), 47.2866819, -103.2040745, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035031', 'North Fork Bull Creek', 'Stream', 'North Dakota', 'ND', 'Stark', 'Daglum NW', 46.7114005, -103.1962884, ST_GeomFromText('POINT(46.7114005 -103.1962884)', 4326), 46.7047343, -103.3307365, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035032', 'North Fork Cedar Creek', 'Stream', 'North Dakota', 'ND', 'Slope', 'Mineral Springs', 46.2719525, -103.1560058, ST_GeomFromText('POINT(46.2719525 -103.1560058)', 4326), 46.3683424, -103.2887898, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035033', 'North Fork Clark Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Blue Buttes', 47.921407, -102.7504666, ST_GeomFromText('POINT(47.921407 -102.7504666)', 4326), 47.9575221, -102.8801873, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035034', 'North Fork Prairie Dog Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Eagle Draw', 47.3286267, -103.7026961, ST_GeomFromText('POINT(47.3286267 -103.7026961)', 4326), 47.3758491, -103.8254779, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035035', 'North Fork Six Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Eagle Draw', 47.3497378, -103.668529, ST_GeomFromText('POINT(47.3497378 -103.668529)', 4326), 47.3663889, -103.7, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1035036', 'North Fork Smith Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Skaar', 47.3600156, -104.0327076, ST_GeomFromText('POINT(47.3600156 -104.0327076)', 4326), 47.3147377, -103.868257, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035037', 'Northfork Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Schafer', 47.8044639, -103.1765791, ST_GeomFromText('POINT(47.8044639 -103.1765791)', 4326), 47.7802954, -102.9110243, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035038', 'Norwegian Creek', 'Stream', 'North Dakota', 'ND', 'Stark', 'Belfield NE', 46.8777903, -103.1176777, ST_GeomFromText('POINT(46.8777903 -103.1176777)', 4326), 46.8514019, -103.329347, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035039', 'Number One Coulee', 'Valley', 'North Dakota', 'ND', 'McKenzie', 'Cartwright', 47.787392, -103.9745684, ST_GeomFromText('POINT(47.787392 -103.9745684)', 4326), 47.7865685, -103.8935415, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1035041', 'O''Neil Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Trotters', 47.3555713, -103.992706, ST_GeomFromText('POINT(47.3555713 -103.992706)', 4326), 47.3689047, -103.8671461, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035042', 'Oak Gulch', 'Valley', 'North Dakota', 'ND', 'Dunn', 'Petes Creek', 47.446306, -103.0385014, ST_GeomFromText('POINT(47.446306 -103.0385014)', 4326), 47.4299788, -102.9604715, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1035046', 'One-O-One Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Phillip Spring', 47.5786278, -103.9827064, ST_GeomFromText('POINT(47.5786278 -103.9827064)', 4326), 47.4836273, -104.0082625, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035049', 'Paddock Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Fryburg NW', 46.967792, -103.4904631, ST_GeomFromText('POINT(46.967792 -103.4904631)', 4326), 46.8922355, -103.3410138, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035050', 'Painted Canyon', 'Valley', 'North Dakota', 'ND', 'Billings', 'Fryburg NE', 46.9002703, -103.374789, ST_GeomFromText('POINT(46.9002703 -103.374789)', 4326), 46.8918682, -103.3633233, '1980-02-13', '2017-08-18', NULL, NULL, NULL),
  ('1035052', 'Peaceful Valley', 'Valley', 'North Dakota', 'ND', 'Billings', 'Fryburg NW', 46.9661239, -103.493552, ST_GeomFromText('POINT(46.9661239 -103.493552)', 4326), 46.9560867, -103.5136319, '1980-02-13', '2017-08-18', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1035056', 'Petes Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Petes Creek', 47.4722369, -103.0937991, ST_GeomFromText('POINT(47.4722369 -103.0937991)', 4326), 47.4175154, -102.9929647, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035057', 'Philbrick Creek', 'Stream', 'North Dakota', 'ND', 'Slope', 'Daglum SE', 46.5869548, -103.0004478, ST_GeomFromText('POINT(46.5869548 -103.0004478)', 4326), 46.5669555, -103.3060129, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035058', 'Phillip Draw', 'Valley', 'North Dakota', 'ND', 'McKenzie', 'Phillip Spring', 47.5465098, -103.9163105, ST_GeomFromText('POINT(47.5465098 -103.9163105)', 4326), 47.5282153, -103.9470847, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1035059', 'Phillip Spring', 'Spring', 'North Dakota', 'ND', 'McKenzie', 'Phillip Spring', 47.5439055, -103.9143707, ST_GeomFromText('POINT(47.5439055 -103.9143707)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035060', 'Pigeon Point', 'Cliff', 'North Dakota', 'ND', 'Ransom', 'Venlo', 46.4971898, -97.3973138, ST_GeomFromText('POINT(46.4971898 -97.3973138)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035061', 'Pikes Peak', 'Summit', 'North Dakota', 'ND', 'Billings', 'Wannagan Creek East', 47.0505059, -103.5104475, ST_GeomFromText('POINT(47.0505059 -103.5104475)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1035068', 'Plumb Draw', 'Valley', 'North Dakota', 'ND', 'McKenzie', 'Sheep Creek', 47.5986481, -103.8584423, ST_GeomFromText('POINT(47.5986481 -103.8584423)', 4326), 47.6029664, -103.8791042, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1035071', 'Poker Jim Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Sheep Creek', 47.5091832, -103.7879774, ST_GeomFromText('POINT(47.5091832 -103.7879774)', 4326), 47.4747385, -103.7138087, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035073', 'Porcupine Creek', 'Stream', 'North Dakota', 'ND', 'Golden Valley', 'Eagle Draw', 47.2977932, -103.7163073, ST_GeomFromText('POINT(47.2977932 -103.7163073)', 4326), 47.3083488, -103.8732571, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035074', 'Prairie Dog Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Eagle Draw', 47.3261267, -103.6915847, ST_GeomFromText('POINT(47.3261267 -103.6915847)', 4326), 47.3655714, -103.8693683, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1035076', 'Ragged Butte', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Alexander', 47.8634708, -103.6421976, ST_GeomFromText('POINT(47.8634708 -103.6421976)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1035077', 'Railroad Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Medora', 46.9155695, -103.5321317, ST_GeomFromText('POINT(46.9155695 -103.5321317)', 4326), 46.9000136, -103.4140718, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035078', 'Ranch Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Petes Creek', 47.4583481, -103.0999101, ST_GeomFromText('POINT(47.4583481 -103.0999101)', 4326), 47.3861257, -103.2326875, '1980-02-13', NULL, 'Official', 'Board Decision', '1976-01-01'),
  ('1035080', 'Rattlesnake Butte', 'Summit', 'North Dakota', 'ND', 'Slope', 'Amidon SE', 46.3646547, -103.2940578, ST_GeomFromText('POINT(46.3646547 -103.2940578)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL),
  ('1035081', 'Rattlesnake Butte', 'Summit', 'North Dakota', 'ND', 'Billings', 'Rattlesnake Butte', 47.0372136, -103.1719852, ST_GeomFromText('POINT(47.0372136 -103.1719852)', 4326), NULL, NULL, '1980-02-13', '2025-05-06', NULL, NULL, NULL),
  ('1035083', 'Red Mike Hill', 'Summit', 'North Dakota', 'ND', 'Williams', 'Red Mike Hill', 48.1619588, -103.0551737, ST_GeomFromText('POINT(48.1619588 -103.0551737)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1035085', 'Red Wing Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Sperati Point', 47.5352937, -103.500195, ST_GeomFromText('POINT(47.5352937 -103.500195)', 4326), 47.6505719, -103.4790835, '1980-02-13', NULL, 'Official', 'Board Decision', '1975-01-01'),
  ('1035093', 'Rock Lake', 'Lake', 'North Dakota', 'ND', 'McHenry', 'Riga', 48.3167984, -100.7248132, ST_GeomFromText('POINT(48.3167984 -100.7248132)', 4326), NULL, NULL, '1980-02-13', '2019-04-08', NULL, NULL, NULL),
  ('1035094', 'Rocky Hill', 'Summit', 'North Dakota', 'ND', 'Stark', 'Belfield SW', 46.7700045, -103.2101672, ST_GeomFromText('POINT(46.7700045 -103.2101672)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1035096', 'Rocky Ridge', 'Ridge', 'North Dakota', 'ND', 'Billings', 'Rocky Ridge North', 46.6326132, -103.2804076, ST_GeomFromText('POINT(46.6326132 -103.2804076)', 4326), NULL, NULL, '1980-02-13', '2017-01-31', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1035098', 'Ronningen Draw', 'Valley', 'North Dakota', 'ND', 'McKenzie', 'Phillip Spring', 47.5748151, -103.9306884, ST_GeomFromText('POINT(47.5748151 -103.9306884)', 4326), 47.5951458, -103.9184358, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1035099', 'Roosevelt Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Roosevelt Creek East', 47.1833483, -103.5988029, ST_GeomFromText('POINT(47.1833483 -103.5988029)', 4326), 47.1486259, -103.7524186, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035101', 'Rough Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Lone Butte NE', 47.6939065, -103.0435233, ST_GeomFromText('POINT(47.6939065 -103.0435233)', 4326), 47.6094604, -103.1682455, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035102', 'Round Lake', 'Lake', 'North Dakota', 'ND', 'Richland', 'Hankinson', 46.0567969, -96.9375116, ST_GeomFromText('POINT(46.0567969 -96.9375116)', 4326), NULL, NULL, '1980-02-13', '2023-05-26', NULL, NULL, NULL),
  ('1035103', 'Round Top Butte', 'Summit', 'North Dakota', 'ND', 'Dunn', 'Lone Butte NE', 47.6604229, -103.0577765, ST_GeomFromText('POINT(47.6604229 -103.0577765)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1035106', 'Russian Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Petes Creek', 47.4561259, -103.1135214, ST_GeomFromText('POINT(47.4561259 -103.1135214)', 4326), 47.4991809, -103.2115785, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035107', 'Saddle Butte', 'Summit', 'North Dakota', 'ND', 'Billings', 'Belfield', 46.9826662, -103.2289445, ST_GeomFromText('POINT(46.9826662 -103.2289445)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1035108', 'Saddle Butte', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Johnsons Corner', 47.8591345, -102.8921963, ST_GeomFromText('POINT(47.8591345 -102.8921963)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1035119', 'Sand Creek', 'Stream', 'North Dakota', 'ND', 'Slope', 'Deep Creek North', 46.5980673, -103.5004654, ST_GeomFromText('POINT(46.5980673 -103.5004654)', 4326), 46.3850093, -103.2968457, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035120', 'Sand Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Hanks Gully', 47.3202932, -103.5140806, ST_GeomFromText('POINT(47.3202932 -103.5140806)', 4326), 47.3447375, -103.4460241, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1035121', 'Sand Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Ice Box Canyon', 47.37696, -103.5271376, ST_GeomFromText('POINT(47.37696 -103.5271376)', 4326), 47.3614044, -103.5057479, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035122', 'Sand Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Lone Butte SE', 47.5502931, -103.0860221, ST_GeomFromText('POINT(47.5502931 -103.0860221)', 4326), 47.5058478, -103.1363, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035123', 'Sand Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Tobacco Garden Bay', 48.1141899, -103.0368518, ST_GeomFromText('POINT(48.1141899 -103.0368518)', 4326), 47.9589113, -102.8901873, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035124', 'Sather Lake', 'Reservoir', 'North Dakota', 'ND', 'McKenzie', 'Sather Lake', 47.671187, -103.8073655, ST_GeomFromText('POINT(47.671187 -103.8073655)', 4326), NULL, NULL, '1980-02-13', '2019-02-26', NULL, NULL, NULL),
  ('1035126', 'Scairt Woman Draw', 'Valley', 'North Dakota', 'ND', 'Billings', 'Scairt Woman Draw', 47.2908484, -103.35741, ST_GeomFromText('POINT(47.2908484 -103.35741)', 4326), 47.3269595, -103.3874114, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035136', 'Second Creek', 'Stream', 'North Dakota', 'ND', 'Slope', 'Juniper Spur', 46.6144562, -103.4687973, ST_GeomFromText('POINT(46.6144562 -103.4687973)', 4326), 46.5750112, -103.3324028, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035139', 'Sheep Butte', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Sather Lake', 47.6303971, -103.794886, ST_GeomFromText('POINT(47.6303971 -103.794886)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', 'Official', 'Board Decision', '1975-01-01'),
  ('1035140', 'Sheep Butte Spring', 'Spring', 'North Dakota', 'ND', 'Billings', 'Fryburg NW', 46.957236, -103.3787924, ST_GeomFromText('POINT(46.957236 -103.3787924)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035141', 'Sheep Coulee', 'Valley', 'North Dakota', 'ND', 'McKenzie', 'Cartwright', 47.84778, -103.9495652, ST_GeomFromText('POINT(47.84778 -103.9495652)', 4326), 47.8248352, -103.9236441, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1035142', 'Sheep Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Medora', 46.9305696, -103.5468545, ST_GeomFromText('POINT(46.9305696 -103.5468545)', 4326), 46.9000136, -103.4140718, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1035143', 'Sheep Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Sperati Point', 47.5277936, -103.4888059, ST_GeomFromText('POINT(47.5277936 -103.4888059)', 4326), 47.4597375, -103.4296373, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035144', 'Sheep Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Sheep Creek', 47.5600168, -103.8402016, ST_GeomFromText('POINT(47.5600168 -103.8402016)', 4326), 47.6280729, -103.761866, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035146', 'Sheyenne River', 'Stream', 'North Dakota', 'ND', 'Cass', 'Georgetown', 47.0235771, -96.825358, ST_GeomFromText('POINT(47.0235771 -96.825358)', 4326), 47.6961108, -100.4979113, '1980-02-13', '2018-01-16', 'Official', 'Board Decision', '1896-01-01'),
  ('1035147', 'Short Creek', 'Stream', 'North Dakota', 'ND', 'Williams', 'Banks', 48.1111335, -103.2424094, ST_GeomFromText('POINT(48.1111335 -103.2424094)', 4326), 48.1461334, -103.2996326, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035148', 'Sibley Lake', 'Lake', 'North Dakota', 'ND', 'Kidder', 'Tappen North', 46.954729, -99.7362284, ST_GeomFromText('POINT(46.954729 -99.7362284)', 4326), NULL, NULL, '1980-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1035151', 'Six Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Eagle Draw', 47.34696, -103.6424172, ST_GeomFromText('POINT(47.34696 -103.6424172)', 4326), 47.3636111, -103.7288889, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035154', 'Slide Butte', 'Summit', 'North Dakota', 'ND', 'Slope', 'Black Butte', 46.3897824, -103.3846963, ST_GeomFromText('POINT(46.3897824 -103.3846963)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1035156', 'Smithsrud Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Metigoshe Lake', 48.8905301, -100.3445256, ST_GeomFromText('POINT(48.8905301 -100.3445256)', 4326), NULL, NULL, '1980-02-13', '2025-03-04', NULL, NULL, NULL),
  ('1035157', 'Softwater Spring', 'Spring', 'North Dakota', 'ND', 'McKenzie', 'Sheep Creek', 47.5941838, -103.7529766, ST_GeomFromText('POINT(47.5941838 -103.7529766)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035158', 'South Branch Antelope Creek', 'Stream', 'North Dakota', 'ND', 'Richland', 'Mooreton East', 46.2935697, -96.7661891, ST_GeomFromText('POINT(46.2935697 -96.7661891)', 4326), 46.2496817, -97.0153629, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1035159', 'South Branch Bowline Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Burning Mine Butte', 47.5814055, -103.650475, ST_GeomFromText('POINT(47.5814055 -103.650475)', 4326), 47.5786111, -103.7355556, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035160', 'South Branch Heart River', 'Stream', 'North Dakota', 'ND', 'Stark', 'Belfield SE', 46.8644564, -103.0068446, ST_GeomFromText('POINT(46.8644564 -103.0068446)', 4326), 46.7855677, -103.228789, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035161', 'South Fork Bull Creek', 'Stream', 'North Dakota', 'ND', 'Stark', 'Daglum NW', 46.7114005, -103.1962884, ST_GeomFromText('POINT(46.7114005 -103.1962884)', 4326), 46.6875119, -103.3271253, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035162', 'South Fork Cedar Creek', 'Stream', 'North Dakota', 'ND', 'Bowman', 'Mineral Springs', 46.2636191, -103.1954521, ST_GeomFromText('POINT(46.2636191 -103.1954521)', 4326), 46.2522298, -103.3290697, '1980-02-13', NULL, 'Official', 'Board Decision', '1975-01-01'),
  ('1035163', 'South Fork Green River', 'Stream', 'North Dakota', 'ND', 'Billings', 'Fairfield SE', 47.0389028, -103.1051795, ST_GeomFromText('POINT(47.0389028 -103.1051795)', 4326), 47.0191807, -103.2987897, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035164', 'South Fork Smith Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Skaar', 47.3600156, -104.0327076, ST_GeomFromText('POINT(47.3600156 -104.0327076)', 4326), 47.2827932, -103.8765904, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035166', 'Southeast Corner Spring', 'Spring', 'North Dakota', 'ND', 'Billings', 'Fryburg NE', 46.8969577, -103.3251798, ST_GeomFromText('POINT(46.8969577 -103.3251798)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035167', 'Sperati Point', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Sperati Point', 47.5947107, -103.4484992, ST_GeomFromText('POINT(47.5947107 -103.4484992)', 4326), NULL, NULL, '1980-02-13', '2017-08-18', NULL, NULL, NULL),
  ('1035168', 'Spring Coulee', 'Stream', 'North Dakota', 'ND', 'Slope', 'Deep Creek North', 46.6016784, -103.5526897, ST_GeomFromText('POINT(46.6016784 -103.5526897)', 4326), 46.5811224, -103.6410269, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035169', 'Spring Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Spring Creek', 46.6241784, -103.6774169, ST_GeomFromText('POINT(46.6241784 -103.6774169)', 4326), 46.5330556, -103.6519444, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1035170', 'Spring Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Fairfield SE', 47.0344583, -103.0860131, ST_GeomFromText('POINT(47.0344583 -103.0860131)', 4326), 47.1241812, -103.2087919, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035171', 'Spring Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Scairt Woman Draw', 47.2558484, -103.3026859, ST_GeomFromText('POINT(47.2558484 -103.3026859)', 4326), 47.2680708, -103.2101852, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035172', 'Spring Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Red Wing Creek', 47.5777943, -103.6185302, ST_GeomFromText('POINT(47.5777943 -103.6185302)', 4326), 47.6502951, -103.7101984, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035173', 'Spring Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Phillip Spring', 47.5780723, -103.9602056, ST_GeomFromText('POINT(47.5780723 -103.9602056)', 4326), 47.4233493, -103.90937, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035174', 'Spring Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Watford City', 47.779185, -103.3051917, ST_GeomFromText('POINT(47.779185 -103.3051917)', 4326), 47.593349, -103.1860233, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035178', 'Square Butte', 'Summit', 'North Dakota', 'ND', 'Golden Valley', 'Square Butte', 46.8669506, -103.6971279, ST_GeomFromText('POINT(46.8669506 -103.6971279)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', 'Official', 'Board Decision', '1979-01-01'),
  ('1035179', 'Square Top', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Lone Butte', 47.545737, -103.2320144, ST_GeomFromText('POINT(47.545737 -103.2320144)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1035180', 'Squaretop Butte', 'Summit', 'North Dakota', 'ND', 'Billings', 'Squaretop Butte', 47.2639683, -103.4435974, ST_GeomFromText('POINT(47.2639683 -103.4435974)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1035181', 'Long Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Long X Divide', 47.5922379, -103.331303, ST_GeomFromText('POINT(47.5922379 -103.331303)', 4326), 47.610849, -103.249635, '1980-02-13', '2022-09-08', 'Official', 'Secretarial Order', '2022-09-08'),
  ('1035184', 'Stacks Slough', 'Lake', 'North Dakota', 'ND', 'Richland', 'Swan Lake', 46.0909052, -97.0082238, ST_GeomFromText('POINT(46.0909052 -97.0082238)', 4326), NULL, NULL, '1980-02-13', '2023-05-26', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1035188', 'Stocke Butte', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Stocke Butte', 47.6573446, -103.459507, ST_GeomFromText('POINT(47.6573446 -103.459507)', 4326), NULL, NULL, '1980-02-13', '2017-08-18', NULL, NULL, NULL),
  ('1035189', 'Stony Butte', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Keene', 47.8977505, -102.8755151, ST_GeomFromText('POINT(47.8977505 -102.8755151)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1035190', 'Stony Johnny Butte', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Tepee Buttes', 47.6811203, -103.291014, ST_GeomFromText('POINT(47.6811203 -103.291014)', 4326), NULL, NULL, '1980-02-13', '2017-08-18', NULL, NULL, NULL),
  ('1035191', 'Storm Lake', 'Lake', 'North Dakota', 'ND', 'Sargent', 'Milnor', 46.2568229, -97.4713818, ST_GeomFromText('POINT(46.2568229 -97.4713818)', 4326), NULL, NULL, '1980-02-13', '2023-05-26', NULL, NULL, NULL),
  ('1035193', 'Sully Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Medora', 46.8958471, -103.5399099, ST_GeomFromText('POINT(46.8958471 -103.5399099)', 4326), 46.8327908, -103.3585148, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035196', 'Sweening Coulee', 'Valley', 'North Dakota', 'ND', 'McKenzie', 'Cartwright', 47.8252182, -103.9233979, ST_GeomFromText('POINT(47.8252182 -103.9233979)', 4326), 47.8033607, -103.8981124, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1035197', 'Table Butte', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Blue Buttes', 47.9322606, -102.8240811, ST_GeomFromText('POINT(47.9322606 -102.8240811)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1035199', 'Teepee Butte', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Buckskin Butte', 47.4149553, -103.3285294, ST_GeomFromText('POINT(47.4149553 -103.3285294)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1035200', 'Tepee Butte', 'Summit', 'North Dakota', 'ND', 'Slope', 'Black Butte', 46.3937077, -103.3996487, ST_GeomFromText('POINT(46.3937077 -103.3996487)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1035201', 'Tepee Buttes', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Tepee Buttes', 47.7300301, -103.3200314, ST_GeomFromText('POINT(47.7300301 -103.3200314)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1035205', 'Third Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Cliffs Plateau', 46.6327897, -103.4315736, ST_GeomFromText('POINT(46.6327897 -103.4315736)', 4326), 46.6961231, -103.3290698, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035207', 'Thorsen Creek', 'Stream', 'North Dakota', 'ND', 'Williams', 'Red Mike Hill', 48.1847436, -103.0712957, ST_GeomFromText('POINT(48.1847436 -103.0712957)', 4326), 48.2486111, -103.1055556, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035210', 'Timber Prong Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Timber Prong Creek', 47.8930772, -103.2274116, ST_GeomFromText('POINT(47.8930772 -103.2274116)', 4326), 47.8733552, -103.0724109, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035211', 'Tobacco Garden Bay', 'Bay', 'North Dakota', 'ND', 'McKenzie', 'Tobacco Garden Bay', 48.1069674, -103.1118526, ST_GeomFromText('POINT(48.1069674 -103.1118526)', 4326), NULL, NULL, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035212', 'Tobacco Garden Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Tobacco Garden Bay', 48.0975232, -103.1124082, ST_GeomFromText('POINT(48.0975232 -103.1124082)', 4326), 47.8927995, -103.4726943, '1980-02-13', '2018-01-16', NULL, NULL, NULL),
  ('1035215', 'Toms Butte', 'Summit', 'North Dakota', 'ND', 'Billings', 'Cliffs Plateau', 46.6846283, -103.3859429, ST_GeomFromText('POINT(46.6846283 -103.3859429)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1035216', 'Toms Wash', 'Stream', 'North Dakota', 'ND', 'Billings', 'Cliffs Plateau', 46.664179, -103.4857423, ST_GeomFromText('POINT(46.664179 -103.4857423)', 4326), 46.6944444, -103.4372222, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035217', 'Tower Butte', 'Summit', 'North Dakota', 'ND', 'Billings', 'Squaretop Butte', 47.320694, -103.4638844, ST_GeomFromText('POINT(47.320694 -103.4638844)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1035218', 'Tracy Mountain', 'Summit', 'North Dakota', 'ND', 'Billings', 'Tracy Mountain', 46.7752014, -103.430573, ST_GeomFromText('POINT(46.7752014 -103.430573)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1035225', 'Vanderhoof Coulee', 'Valley', 'North Dakota', 'ND', 'McKenzie', 'Cartwright', 47.7558712, -103.9518959, ST_GeomFromText('POINT(47.7558712 -103.9518959)', 4326), 47.7313701, -103.8678062, '1980-02-13', '2020-01-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1035227', 'Butte Creek', 'Stream', 'North Dakota', 'ND', 'Slope', 'Pretty Butte', 46.4000078, -103.9338168, ST_GeomFromText('POINT(46.4000078 -103.9338168)', 4326), 46.3983333, -103.9886111, '1980-02-13', NULL, 'Official', 'Board Decision', '1979-01-01'),
  ('1035230', 'Wannagan Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Wannagan Creek East', 47.0564034, -103.5407436, ST_GeomFromText('POINT(47.0564034 -103.5407436)', 4326), 47.0233476, -103.7668633, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035231', 'West Branch Charbonneau Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Charbonneau', 47.792241, -103.78909, ST_GeomFromText('POINT(47.792241 -103.78909)', 4326), 47.6252949, -103.7149206, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035232', 'West Fork Badlands Draw', 'Valley', 'North Dakota', 'ND', 'McKenzie', 'Phillip Spring', 47.5700794, -103.9709882, ST_GeomFromText('POINT(47.5700794 -103.9709882)', 4326), 47.5356432, -103.9655399, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1035233', 'West Fork Deep Creek', 'Stream', 'North Dakota', 'ND', 'Slope', 'West Fork Deep Creek', 46.37112, -103.5149113, ST_GeomFromText('POINT(46.37112 -103.5149113)', 4326), 46.2519511, -103.6540845, '1980-02-13', NULL, 'Official', 'Board Decision', '1979-01-01'),
  ('1035234', 'West Hay Draw Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Sheep Creek', 47.5564057, -103.8332569, ST_GeomFromText('POINT(47.5564057 -103.8332569)', 4326), 47.5386278, -103.7438095, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035236', 'West Rainy Butte', 'Summit', 'North Dakota', 'ND', 'Slope', 'West Rainy Butte', 46.4962947, -103.0456638, ST_GeomFromText('POINT(46.4962947 -103.0456638)', 4326), NULL, NULL, '1980-02-13', '2012-12-04', NULL, NULL, NULL),
  ('1035237', 'West Twin Butte', 'Summit', 'North Dakota', 'ND', 'Golden Valley', 'West Twin Butte', 47.0217523, -103.7739032, ST_GeomFromText('POINT(47.0217523 -103.7739032)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1035239', 'White Butte', 'Summit', 'North Dakota', 'ND', 'Slope', 'Amidon', 46.3869054, -103.3027053, ST_GeomFromText('POINT(46.3869054 -103.3027053)', 4326), NULL, NULL, '1980-02-13', '2012-12-04', NULL, NULL, NULL),
  ('1035240', 'White Earth River', 'Stream', 'North Dakota', 'ND', 'Mountrail', 'Rat Lake', 48.1250184, -102.7207393, ST_GeomFromText('POINT(48.1250184 -102.7207393)', 4326), 48.6189173, -102.6646229, '1980-02-13', '2018-01-16', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1035243', 'Whites Wash', 'Stream', 'North Dakota', 'ND', 'Billings', 'Cliffs Plateau', 46.6619567, -103.4804643, ST_GeomFromText('POINT(46.6619567 -103.4804643)', 4326), 46.6733333, -103.4216667, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035244', 'Whitetail Creek', 'Stream', 'North Dakota', 'ND', 'Dunn', 'Petes Creek', 47.490848, -103.0732436, ST_GeomFromText('POINT(47.490848 -103.0732436)', 4326), 47.4622222, -103.0327778, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035245', 'Whitetail Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Hanks Gully', 47.2844597, -103.6088045, ST_GeomFromText('POINT(47.2844597 -103.6088045)', 4326), 47.1561257, -103.2790712, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035247', 'Wild Rice River', 'Stream', 'North Dakota', 'ND', 'Cass', 'Fargo South', 46.7566307, -96.7900829, ST_GeomFromText('POINT(46.7566307 -96.7900829)', 4326), 46.0155223, -97.7856569, '1980-02-13', '2018-01-16', NULL, NULL, NULL),
  ('1035248', 'Willard Lake', 'Lake', 'North Dakota', 'ND', 'Richland', 'Hankinson', 46.0646271, -96.9442327, ST_GeomFromText('POINT(46.0646271 -96.9442327)', 4326), NULL, NULL, '1980-02-13', '2023-05-26', NULL, NULL, NULL),
  ('1035249', 'Williams Creek', 'Stream', 'North Dakota', 'ND', 'Golden Valley', 'Three V Crossing', 46.5619551, -103.7921441, ST_GeomFromText('POINT(46.5619551 -103.7921441)', 4326), 46.6555666, -104.0263187, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035250', 'Winter Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Wannagan Creek West', 47.0608478, -103.6454699, ST_GeomFromText('POINT(47.0608478 -103.6454699)', 4326), 47.0211254, -103.752696, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035251', 'Wolf Coulee', 'Valley', 'North Dakota', 'ND', 'McKenzie', 'Wolf Coulee', 47.4000665, -103.4248898, ST_GeomFromText('POINT(47.4000665 -103.4248898)', 4326), 47.4259541, -103.4037833, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1035252', 'Wolf Draw', 'Valley', 'North Dakota', 'ND', 'Billings', 'Wannagan Creek East', 47.0903042, -103.517458, ST_GeomFromText('POINT(47.0903042 -103.517458)', 4326), 47.0934287, -103.4729755, '1980-02-13', '2017-08-18', NULL, NULL, NULL),
  ('1035255', 'Yellowstone River', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Buford', 47.9783538, -103.9821535, ST_GeomFromText('POINT(47.9783538 -103.9821535)', 4326), 43.9882832, -109.9290691, '1980-02-13', '2016-05-27', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1035259', 'Strawberry Island (historical)', 'Island', 'North Dakota', 'ND', 'Williams', 'Charlson NW', 48.1311322, -102.8971289, ST_GeomFromText('POINT(48.1311322 -102.8971289)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1035260', 'Bear Island (historical)', 'Island', 'North Dakota', 'ND', 'Williams', 'Red Mike Hill', 48.1444668, -103.0351847, ST_GeomFromText('POINT(48.1444668 -103.0351847)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1035262', 'Glass Bluffs (historical)', 'Cliff', 'North Dakota', 'ND', 'McKenzie', 'Buford', 47.952243, -103.9138177, ST_GeomFromText('POINT(47.952243 -103.9138177)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1035296', 'Sather Reservoir', 'Reservoir', 'North Dakota', 'ND', 'McKenzie', 'Sather Lake', 47.6733508, -103.8238127, ST_GeomFromText('POINT(47.6733508 -103.8238127)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1035297', 'Stock Dam P10 A1 Reservoir', 'Reservoir', 'North Dakota', 'ND', 'McKenzie', 'Tepee Buttes', 47.6566831, -103.3304699, ST_GeomFromText('POINT(47.6566831 -103.3304699)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1035298', 'Williams Reservoir', 'Reservoir', 'North Dakota', 'ND', 'Golden Valley', 'Williams Lake', 46.6000108, -103.8938142, ST_GeomFromText('POINT(46.6000108 -103.8938142)', 4326), NULL, NULL, '1986-09-23', NULL, NULL, NULL, NULL),
  ('1035318', 'Big Top Mesa', 'Summit', 'North Dakota', 'ND', 'Billings', 'Squaretop Butte', 47.3041391, -103.4831855, ST_GeomFromText('POINT(47.3041391 -103.4831855)', 4326), NULL, NULL, '1986-09-23', '2020-01-17', NULL, NULL, NULL),
  ('1035324', 'South Butte Creek', 'Stream', 'North Dakota', 'ND', 'Slope', 'Marmarth', 46.3669517, -103.9285391, ST_GeomFromText('POINT(46.3669517 -103.9285391)', 4326), 46.3811181, -104.0440987, '1986-09-23', NULL, 'Official', 'Board Decision', '1980-01-01'),
  ('1035325', 'North Butte Creek', 'Stream', 'North Dakota', 'ND', 'Slope', 'Pretty Butte', 46.4011188, -103.9474284, ST_GeomFromText('POINT(46.4011188 -103.9474284)', 4326), 46.3994518, -104.0238201, '1986-09-23', NULL, 'Official', 'Board Decision', '1980-01-01'),
  ('1035330', 'Chimney Butte', 'Summit', 'North Dakota', 'ND', 'Billings', 'Chimney Butte', 46.8178372, -103.5934459, ST_GeomFromText('POINT(46.8178372 -103.5934459)', 4326), NULL, NULL, '1990-05-01', '2020-01-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1035332', 'Williams Lake', 'Lake', 'North Dakota', 'ND', 'Golden Valley', 'Williams Lake', 46.6026418, -103.8907959, ST_GeomFromText('POINT(46.6026418 -103.8907959)', 4326), NULL, NULL, '1990-05-01', '2025-03-04', NULL, NULL, NULL),
  ('1035336', 'Hagan Spring', 'Spring', 'North Dakota', 'ND', 'McKenzie', 'Sperati Point', 47.6180717, -103.4176935, ST_GeomFromText('POINT(47.6180717 -103.4176935)', 4326), NULL, NULL, '1991-12-01', NULL, NULL, NULL, NULL),
  ('1035337', 'Overlook Spring', 'Spring', 'North Dakota', 'ND', 'McKenzie', 'Sperati Point', 47.6058493, -103.436305, ST_GeomFromText('POINT(47.6058493 -103.436305)', 4326), NULL, NULL, '1991-12-01', NULL, NULL, NULL, NULL),
  ('1035338', 'Mandal Spring', 'Spring', 'North Dakota', 'ND', 'McKenzie', 'Sperati Point', 47.5852937, -103.4479719, ST_GeomFromText('POINT(47.5852937 -103.4479719)', 4326), NULL, NULL, '1991-12-01', NULL, NULL, NULL, NULL),
  ('1035365', 'Stevens Spring', 'Spring', 'North Dakota', 'ND', 'McKenzie', 'Long X Divide', 47.6125158, -103.3035249, ST_GeomFromText('POINT(47.6125158 -103.3035249)', 4326), NULL, NULL, '1991-12-01', NULL, NULL, NULL, NULL),
  ('1035383', 'Greenieu Coulee', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Demicks Lake', 47.9705803, -103.0787984, ST_GeomFromText('POINT(47.9705803 -103.0787984)', 4326), 47.9455556, -103.0997222, '1991-12-01', NULL, NULL, NULL, NULL),
  ('1035384', 'Jackson Coulee', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Demicks Lake', 47.95308, -103.0565763, ST_GeomFromText('POINT(47.95308 -103.0565763)', 4326), 47.9208333, -103.0497222, '1991-12-01', NULL, NULL, NULL, NULL),
  ('1035385', 'Sand Creek Bay', 'Bay', 'North Dakota', 'ND', 'McKenzie', 'Tobacco Garden Bay', 48.1175231, -103.0368517, ST_GeomFromText('POINT(48.1175231 -103.0368517)', 4326), NULL, NULL, '1991-12-01', NULL, NULL, NULL, NULL),
  ('1035392', 'Grantier Creek', 'Stream', 'North Dakota', 'ND', 'McKenzie', 'Tobacco Garden Bay', 48.0255803, -103.1204648, ST_GeomFromText('POINT(48.0255803 -103.1204648)', 4326), 48.0219444, -103.0516667, '1991-12-01', NULL, NULL, NULL, NULL),
  ('1035399', 'Maverick Flat', 'Flat', 'North Dakota', 'ND', 'McKenzie', 'Wolf Coulee', 47.4539042, -103.4288038, ST_GeomFromText('POINT(47.4539042 -103.4288038)', 4326), NULL, NULL, '1991-12-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1035446', 'Black Spring', 'Spring', 'North Dakota', 'ND', 'Billings', 'Bullion Butte', 46.6739013, -103.5882464, ST_GeomFromText('POINT(46.6739013 -103.5882464)', 4326), NULL, NULL, '1991-12-01', NULL, NULL, NULL, NULL),
  ('1035447', 'Lime Spring', 'Spring', 'North Dakota', 'ND', 'Billings', 'Bullion Butte', 46.6675123, -103.6013025, ST_GeomFromText('POINT(46.6675123 -103.6013025)', 4326), NULL, NULL, '1991-12-01', NULL, NULL, NULL, NULL),
  ('1035451', 'Tomamichael Spring', 'Spring', 'North Dakota', 'ND', 'Billings', 'Medora', 46.9658475, -103.5504655, ST_GeomFromText('POINT(46.9658475 -103.5504655)', 4326), NULL, NULL, '1991-12-01', NULL, NULL, NULL, NULL),
  ('1035452', 'Big Plateau Spring', 'Spring', 'North Dakota', 'ND', 'Billings', 'Medora', 46.9689031, -103.506297, ST_GeomFromText('POINT(46.9689031 -103.506297)', 4326), NULL, NULL, '1991-12-01', NULL, NULL, NULL, NULL),
  ('1035453', 'Ekblom Spring', 'Spring', 'North Dakota', 'ND', 'Billings', 'Medora', 46.9633475, -103.5176864, ST_GeomFromText('POINT(46.9633475 -103.5176864)', 4326), NULL, NULL, '1991-12-01', NULL, NULL, NULL, NULL),
  ('1035457', 'Lone Tree Spring', 'Spring', 'North Dakota', 'ND', 'Billings', 'Medora', 46.9836253, -103.5599102, ST_GeomFromText('POINT(46.9836253 -103.5599102)', 4326), NULL, NULL, '1991-12-01', NULL, NULL, NULL, NULL),
  ('1035458', 'Wannagan Seeps', 'Spring', 'North Dakota', 'ND', 'Billings', 'Medora', 46.9927921, -103.5490764, ST_GeomFromText('POINT(46.9927921 -103.5490764)', 4326), NULL, NULL, '1991-12-01', NULL, NULL, NULL, NULL),
  ('1035459', 'Sheep Pasture Spring', 'Spring', 'North Dakota', 'ND', 'Billings', 'Medora', 46.9847364, -103.5354648, ST_GeomFromText('POINT(46.9847364 -103.5354648)', 4326), NULL, NULL, '1991-12-01', NULL, NULL, NULL, NULL),
  ('1035469', 'Castel Rock', 'Pillar', 'North Dakota', 'ND', 'Billings', 'Squaretop Butte', 47.2875152, -103.4610233, ST_GeomFromText('POINT(47.2875152 -103.4610233)', 4326), NULL, NULL, '1991-12-01', NULL, NULL, NULL, NULL),
  ('1035477', 'Eagle Butte', 'Summit', 'North Dakota', 'ND', 'McKenzie', 'Sather Lake', 47.6464719, -103.7740978, ST_GeomFromText('POINT(47.6464719 -103.7740978)', 4326), NULL, NULL, '1991-12-01', '2020-01-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1035496', 'Chimney Butte', 'Summit', 'North Dakota', 'ND', 'Golden Valley', 'Chimney Butte', 46.8394505, -103.6201805, ST_GeomFromText('POINT(46.8394505 -103.6201805)', 4326), NULL, NULL, '1991-12-01', '2020-01-17', NULL, NULL, NULL),
  ('1035503', 'Roselle Spring', 'Spring', 'North Dakota', 'ND', 'Billings', 'Wannagan Creek West', 47.0800146, -103.6340807, ST_GeomFromText('POINT(47.0800146 -103.6340807)', 4326), NULL, NULL, '1991-12-01', NULL, NULL, NULL, NULL),
  ('1035507', 'Mirror Pool', 'Reservoir', 'North Dakota', 'ND', 'Richland', 'Power', 46.5269478, -97.2408734, ST_GeomFromText('POINT(46.5269478 -97.2408734)', 4326), NULL, NULL, '1992-10-01', '2018-11-26', NULL, NULL, NULL),
  ('1035509', 'Johnstone Dam', 'Reservoir', 'North Dakota', 'ND', 'Golden Valley', 'Duck Creek', 46.75154, -104.0103745, ST_GeomFromText('POINT(46.75154 -104.0103745)', 4326), NULL, NULL, '1994-07-01', '2019-04-27', NULL, NULL, NULL),
  ('1035537', 'Coldwater Lake', 'Lake', 'North Dakota', 'ND', 'McIntosh', 'Coldwater Lake', 46.0082196, -99.0706721, ST_GeomFromText('POINT(46.0082196 -99.0706721)', 4326), NULL, NULL, '1994-07-01', '2019-02-19', NULL, NULL, NULL),
  ('1035541', 'Tepee Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Chimney Butte', 46.7814022, -103.5913015, ST_GeomFromText('POINT(46.7814022 -103.5913015)', 4326), 46.7691799, -103.4943533, '1994-07-01', NULL, NULL, NULL, NULL),
  ('1035543', 'Mud Creek', 'Stream', 'North Dakota', 'ND', 'Slope', 'Pretty Butte', 46.4233415, -103.9257609, ST_GeomFromText('POINT(46.4233415 -103.9257609)', 4326), 46.4344444, -103.9869444, '1994-07-01', NULL, NULL, NULL, NULL),
  ('1035546', 'Cottonwood Creek', 'Stream', 'North Dakota', 'ND', 'Golden Valley', 'Williams Lake', 46.5672325, -103.9046481, ST_GeomFromText('POINT(46.5672325 -103.9046481)', 4326), 46.5805657, -104.0152076, '1994-07-01', NULL, NULL, NULL, NULL),
  ('1035548', 'South Mosquito Creek', 'Stream', 'North Dakota', 'ND', 'Slope', 'Marmarth', 46.3427847, -103.9238168, ST_GeomFromText('POINT(46.3427847 -103.9238168)', 4326), 46.3261111, -103.9677778, '1994-07-01', NULL, NULL, NULL, NULL),
  ('1035549', 'South Mosquito Creek', 'Stream', 'North Dakota', 'ND', 'Slope', 'Marmarth', 46.3502849, -103.914372, ST_GeomFromText('POINT(46.3502849 -103.914372)', 4326), 46.3377778, -103.9797222, '1994-07-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1035551', 'Worser Creek', 'Stream', 'North Dakota', 'ND', 'Bowman', 'Marmarth', 46.25695, -103.9115947, ST_GeomFromText('POINT(46.25695 -103.9115947)', 4326), 46.2438948, -103.8193691, '1994-07-01', NULL, NULL, NULL, NULL),
  ('1035552', 'Hay Creek', 'Stream', 'North Dakota', 'ND', 'Slope', 'Marmarth', 46.3038953, -103.9013162, ST_GeomFromText('POINT(46.3038953 -103.9013162)', 4326), 46.2463951, -103.767145, '1994-07-01', NULL, NULL, NULL, NULL),
  ('1035553', 'First Creek', 'Stream', 'North Dakota', 'ND', 'Slope', 'Juniper Spur', 46.5777893, -103.4893539, ST_GeomFromText('POINT(46.5777893 -103.4893539)', 4326), 46.5133441, -103.3051792, '1994-07-01', NULL, NULL, NULL, NULL),
  ('1035555', 'South Fork Maple River', 'Stream', 'North Dakota', 'ND', 'Dickey', 'Monango', 46.1813582, -98.5439885, ST_GeomFromText('POINT(46.1813582 -98.5439885)', 4326), 46.1596924, -98.6595457, '1994-07-01', NULL, NULL, NULL, NULL),
  ('1035581', 'Camels Hump Lake', 'Lake', 'North Dakota', 'ND', 'Golden Valley', 'Sentinel Butte', 46.9453461, -103.8167017, ST_GeomFromText('POINT(46.9453461 -103.8167017)', 4326), NULL, NULL, '1994-07-01', '2019-04-27', NULL, NULL, NULL),
  ('1035584', 'Flat Top Butte', 'Summit', 'North Dakota', 'ND', 'Billings', 'Rocky Ridge North', 46.7143479, -103.327255, ST_GeomFromText('POINT(46.7143479 -103.327255)', 4326), NULL, NULL, '1994-07-01', '2020-01-17', NULL, NULL, NULL),
  ('1035591', 'Bosserman Lake', 'Lake', 'North Dakota', 'ND', 'Golden Valley', 'Golva', 46.7163845, -103.9094859, ST_GeomFromText('POINT(46.7163845 -103.9094859)', 4326), NULL, NULL, '1994-07-01', '2019-04-27', NULL, NULL, NULL),
  ('1035593', 'Little Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Chimney Butte', 46.8219579, -103.5629668, ST_GeomFromText('POINT(46.8219579 -103.5629668)', 4326), 46.8041798, -103.4262951, '1994-07-01', NULL, NULL, NULL, NULL),
  ('1035594', 'Plumley Draw', 'Valley', 'North Dakota', 'ND', 'Billings', 'Chimney Butte', 46.8347606, -103.5535494, ST_GeomFromText('POINT(46.8347606 -103.5535494)', 4326), 46.819385, -103.494223, '1994-07-01', '2020-01-17', 'Official', 'Board Decision', '2018-10-11'),
  ('1035596', 'Dickey Draw', 'Valley', 'North Dakota', 'ND', 'Slope', 'Marmarth', 46.2902839, -103.9121501, ST_GeomFromText('POINT(46.2902839 -103.9121501)', 4326), 46.2691727, -103.8668708, '1994-07-01', '2025-03-06', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1035597', 'Round Top Butte', 'Summit', 'North Dakota', 'ND', 'Slope', 'Deep Creek South', 46.4083481, -103.5522795, ST_GeomFromText('POINT(46.4083481 -103.5522795)', 4326), NULL, NULL, '1994-07-01', '2025-05-06', NULL, NULL, NULL),
  ('1035599', 'Adobe Wall Creek', 'Stream', 'North Dakota', 'ND', 'Slope', 'Daglum SW', 46.6197331, -103.1279522, ST_GeomFromText('POINT(46.6197331 -103.1279522)', 4326), 46.6372336, -103.2512887, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035600', 'Andrews Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Medora', 46.9302918, -103.5476878, ST_GeomFromText('POINT(46.9302918 -103.5476878)', 4326), 46.9339025, -103.8993687, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035601', 'Bear Creek', 'Stream', 'North Dakota', 'ND', 'Billings', 'Bullion Butte', 46.7069571, -103.5746346, ST_GeomFromText('POINT(46.7069571 -103.5746346)', 4326), 46.70029, -103.364071, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035605', 'Indian Creek', 'Stream', 'North Dakota', 'ND', 'Slope', 'Williams Lake', 46.5419544, -103.9190932, ST_GeomFromText('POINT(46.5419544 -103.9190932)', 4326), 46.355008, -103.7263093, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035607', 'North Fork Garner Creek', 'Stream', 'North Dakota', 'ND', 'Golden Valley', 'Sentinel Butte SE', 46.8041799, -103.7671419, ST_GeomFromText('POINT(46.8041799 -103.7671419)', 4326), 46.8452908, -103.9510376, '1980-02-13', NULL, 'Official', 'Board Decision', '1979-01-01'),
  ('1035608', 'Northwest Branch Cantapeta Creek', 'Stream', 'North Dakota', 'ND', 'Morton', 'Cannon Ball NW', 46.4430503, -100.6767917, ST_GeomFromText('POINT(46.4430503 -100.6767917)', 4326), 46.5438841, -100.8054068, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035609', 'Pretty Butte', 'Summit', 'North Dakota', 'ND', 'Slope', 'Pretty Butte', 46.3807997, -103.9612304, ST_GeomFromText('POINT(46.3807997 -103.9612304)', 4326), NULL, NULL, '1980-02-13', '2020-01-17', NULL, NULL, NULL),
  ('1035612', 'Lake Tobiason', 'Lake', 'North Dakota', 'ND', 'Steele', 'Northwood NW', 47.6425598, -97.6388844, ST_GeomFromText('POINT(47.6425598 -97.6388844)', 4326), NULL, NULL, '1980-02-13', '2018-11-26', NULL, NULL, NULL),
  ('1035629', 'Streeter Moraine', 'Ridge', 'North Dakota', 'ND', 'Logan', 'Lehr NE', 46.4990525, -99.3086208, ST_GeomFromText('POINT(46.4990525 -99.3086208)', 4326), NULL, NULL, '1992-11-01', '2017-02-03', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1035632', 'Mud Lake', 'Lake', 'North Dakota', 'ND', 'McIntosh', 'Lehr SW', 46.2631703, -99.3868309, ST_GeomFromText('POINT(46.2631703 -99.3868309)', 4326), NULL, NULL, '1992-11-01', '2019-02-19', NULL, NULL, NULL),
  ('1035760', 'Easy Hill', 'Summit', 'North Dakota', 'ND', 'Billings', 'Fryburg', 46.78743, -103.3223455, ST_GeomFromText('POINT(46.78743 -103.3223455)', 4326), NULL, NULL, '1986-09-23', '2020-01-17', NULL, NULL, NULL),
  ('1035869', 'Mauvais Coulee', 'Stream', 'North Dakota', 'ND', 'Ramsey', 'Churchs Ferry', 48.320278, -99.148468, ST_GeomFromText('POINT(48.320278 -99.148468)', 4326), 48.363834, -99.108353, '1986-09-23', '2025-03-06', 'Official', 'Board Decision', '1972-01-01'),
  ('1035871', 'Mowbray Creek', 'Stream', 'Manitoba', 'MA', 'Manitoba', 'Mount Carmel OE N', 49.0541692, -98.4748273, ST_GeomFromText('POINT(49.0541692 -98.4748273)', 4326), 48.9794471, -98.4995594, '2000-01-01', '2010-12-10', 'Official', 'Board Decision', '1977-01-01'),
  ('1035872', 'Wilfreds Lake', 'Lake', 'North Dakota', 'ND', 'Rolette', 'Lake Upsilon', 48.9986606, -99.8601047, ST_GeomFromText('POINT(48.9986606 -99.8601047)', 4326), NULL, NULL, '1986-09-23', '2018-11-29', 'Official', 'Board Decision', '1977-01-01'),
  ('1035881', 'Boundary Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Boundary Lake', 48.995368, -100.2112314, ST_GeomFromText('POINT(48.995368 -100.2112314)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', 'Official', 'Board Decision', '1954-01-01'),
  ('1035882', 'East Branch Short Creek', 'Stream', 'Saskatchewan', 'SA', 'Saskatchewan', NULL, 49.0250311, -102.8454552, ST_GeomFromText('POINT(49.0250311 -102.8454552)', 4326), 48.7619785, -102.5076725, '2000-01-01', '2010-12-10', NULL, NULL, NULL),
  ('1035884', 'Hartley Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Boundary Lake', 48.9961884, -100.1873925, ST_GeomFromText('POINT(48.9961884 -100.1873925)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', 'Official', 'Board Decision', '1953-01-01'),
  ('1035885', 'Hyde Park Coulee', 'Valley', 'North Dakota', 'ND', 'Pembina', 'Cavalier NW OE N', 49.0033273, -97.6850779, ST_GeomFromText('POINT(49.0033273 -97.6850779)', 4326), 48.9719397, -97.828974, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1035886', 'Long Creek', 'Stream', 'North Dakota', 'ND', 'Divide', 'Noonan', 48.9991969, -103.0637956, ST_GeomFromText('POINT(48.9991969 -103.0637956)', 4326), 48.9992004, -103.3501893, '1980-02-13', '2011-04-15', 'Official', 'Board Decision', '1953-03-23');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1035887', 'Gimby Creek', 'Stream', 'Manitoba', 'MA', 'Manitoba', 'Saint John', 49.0916735, -99.3212312, ST_GeomFromText('POINT(49.0916735 -99.3212312)', 4326), 48.969583, -99.74822, '2000-01-01', '2010-12-10', 'Official', 'Board Decision', '1976-01-01'),
  ('1035888', 'Metigoshe Lake', 'Reservoir', 'North Dakota', 'ND', 'Bottineau', 'Metigoshe Lake', 48.9793433, -100.3535643, ST_GeomFromText('POINT(48.9793433 -100.3535643)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', 'Official', 'Board Decision', '1953-01-01'),
  ('1035889', 'Pembina River', 'Stream', 'North Dakota', 'ND', 'Pembina', 'Pembina', 48.9663766, -97.2392315, ST_GeomFromText('POINT(48.9663766 -97.2392315)', 4326), 49.204172, -100.0184499, '1980-02-13', '2018-01-16', NULL, NULL, NULL),
  ('1035890', 'Red River of the North', 'Stream', 'Minnesota', 'MN', 'Kittson', NULL, 50.4002778, -96.8, ST_GeomFromText('POINT(50.4002778 -96.8)', 4326), 46.2644033, -96.5986848, '2000-01-01', '2018-01-23', 'Official', 'Board Decision', '1953-01-01'),
  ('1035891', 'Snowflake Creek', 'Stream', 'Manitoba', 'MA', 'Manitoba', 'Wales OE N', 49.0573326, -98.5399818, ST_GeomFromText('POINT(49.0573326 -98.5399818)', 4326), 48.9074741, -98.6833298, '2000-01-01', '2014-12-03', NULL, NULL, NULL),
  ('1035892', 'Souris River', 'Stream', 'Manitoba', 'MA', 'Manitoba', 'Landa', 49.6611107, -99.5725887, ST_GeomFromText('POINT(49.6611107 -99.5725887)', 4326), 48.9986264, -101.9648877, '2000-01-01', '2015-02-16', 'Official', 'Board Decision', '1953-01-01'),
  ('1035893', 'Turtle Mountains', 'Range', 'North Dakota', 'ND', 'Rolette', 'International Peace Garden', 48.9473612, -100.1217716, ST_GeomFromText('POINT(48.9473612 -100.1217716)', 4326), NULL, NULL, '1980-02-13', '2018-09-18', NULL, NULL, NULL),
  ('1035894', 'Upper Des Lacs Lake', 'Reservoir', 'North Dakota', 'ND', 'Burke', 'Bowbells SE', 48.8350531, -102.0965452, ST_GeomFromText('POINT(48.8350531 -102.0965452)', 4326), NULL, NULL, '1980-02-13', '2019-03-04', NULL, NULL, NULL),
  ('1035895', 'Wakopa Creek', 'Stream', 'Manitoba', 'MA', 'Manitoba', 'Carpenter Lake', 49.0194503, -99.892073, ST_GeomFromText('POINT(49.0194503 -99.892073)', 4326), 48.9683394, -99.8462455, '2000-01-01', '2010-12-10', 'Official', 'Board Decision', '1974-01-01'),
  ('1035897', 'Pembina Hills', 'Range', 'North Dakota', 'ND', 'Cavalier', 'Walhalla', 48.9111062, -97.9253707, ST_GeomFromText('POINT(48.9111062 -97.9253707)', 4326), NULL, NULL, '1980-02-13', NULL, 'Official', 'Board Decision', '1977-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1035898', 'Cannonball River', 'Stream', 'North Dakota', 'ND', 'Sioux', 'Cannon Ball', 46.429161, -100.5892887, ST_GeomFromText('POINT(46.429161 -100.5892887)', 4326), 46.4700103, -103.2065638, '1980-02-13', '2018-01-12', 'Official', 'Board Decision', '1913-01-01'),
  ('1254745', 'Dry Branch', 'Stream', 'South Dakota', 'SD', 'Brown', 'Frederick', 45.7760865, -98.5934321, ST_GeomFromText('POINT(45.7760865 -98.5934321)', 4326), 46.1088889, -98.4663889, '1980-02-13', '2005-11-28', NULL, NULL, NULL),
  ('1254786', 'Dry Run', 'Stream', 'South Dakota', 'SD', 'Brown', 'Houghton', 45.817745, -98.2326017, ST_GeomFromText('POINT(45.817745 -98.2326017)', 4326), 45.9991667, -98.2441667, '1980-02-13', '2006-01-10', NULL, NULL, NULL),
  ('1254922', 'Elm River', 'Stream', 'South Dakota', 'SD', 'Brown', 'Columbia', 45.6033016, -98.3081534, ST_GeomFromText('POINT(45.6033016 -98.3081534)', 4326), 46.1352484, -98.8659385, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1255774', 'Iron Dog Creek', 'Stream', 'South Dakota', 'SD', 'Corson', 'Bullhead SW', 45.7816645, -101.1337477, ST_GeomFromText('POINT(45.7816645 -101.1337477)', 4326), 45.9713911, -101.2431855, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1256105', 'Lewis Creek', 'Stream', 'South Dakota', 'SD', 'Harding', 'Haley', 45.9527808, -103.101283, ST_GeomFromText('POINT(45.9527808 -103.101283)', 4326), 45.8722238, -103.0898936, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1258351', 'Stink Creek', 'Stream', 'South Dakota', 'SD', 'Corson', 'Bullhead', 45.7661087, -101.1059706, ST_GeomFromText('POINT(45.7661087 -101.1059706)', 4326), 45.9488909, -101.3717979, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1258510', 'Teeter Creek', 'Stream', 'South Dakota', 'SD', 'Harding', 'Haley', 45.9486141, -103.0612816, ST_GeomFromText('POINT(45.9486141 -103.0612816)', 4326), 45.8527791, -103.0535034, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1261082', 'James River', 'Stream', 'South Dakota', 'SD', 'Yankton', 'Menominee', 42.8713859, -97.2906104, ST_GeomFromText('POINT(42.8713859 -97.2906104)', 4326), 47.4813871, -99.859011, '1980-02-13', '2013-12-20', 'Official', 'Board Decision', '1953-01-01'),
  ('1262214', 'Plains Valley', 'Valley', 'South Dakota', 'SD', 'Fall River', 'Rumford', 43.1346927, -103.6901995, ST_GeomFromText('POINT(43.1346927 -103.6901995)', 4326), 46.207783, -103.8335366, '1980-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1265310', 'Oak Creek', 'Stream', 'South Dakota', 'SD', 'Corson', 'Mobridge', 45.5969395, -100.4429124, ST_GeomFromText('POINT(45.5969395 -100.4429124)', 4326), 46.0350015, -101.0451298, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1266878', 'Lake Oahe', 'Reservoir', 'South Dakota', 'SD', 'Hughes', 'Oahe Dam', 44.4510925, -100.4023574, ST_GeomFromText('POINT(44.4510925 -100.4023574)', 4326), NULL, NULL, '1986-09-23', NULL, 'Official', 'Congressional Legislation', '1968-01-01'),
  ('1777065', 'Red River', 'Reservoir', 'Minnesota', 'MN', 'Kittson', 'Drayton', 48.5983177, -97.1536808, ST_GeomFromText('POINT(48.5983177 -97.1536808)', 4326), NULL, NULL, '1998-01-12', NULL, NULL, NULL, NULL),
  ('1923070', 'Chardon Creek', 'Stream', 'North Dakota', 'ND', 'Mercer', 'Hannover NE', 47.2472181, -101.2720997, ST_GeomFromText('POINT(47.2472181 -101.2720997)', 4326), 47.2155556, -101.3369444, '2001-05-30', NULL, 'Official', 'Board Decision', '2001-01-01'),
  ('1930555', 'Red River Valley of the North', 'Valley', 'Minnesota', 'MN', 'Kittson', NULL, 50.4, -96.8, ST_GeomFromText('POINT(50.4 -96.8)', 4326), 48.8744306, -97.1783987, '2001-08-06', '2011-04-14', NULL, NULL, NULL),
  ('2027077', 'Clarks Creek', 'Stream', 'North Dakota', 'ND', 'Mercer', 'Hannover NE', 47.2472181, -101.2720997, ST_GeomFromText('POINT(47.2472181 -101.2720997)', 4326), 47.1675, -101.3052778, '2004-02-05', NULL, NULL, NULL, NULL),
  ('2663397', 'Two Shields Butte', 'Summit', 'North Dakota', 'ND', 'Dunn', 'String Buttes', 47.739753, -102.478074, ST_GeomFromText('POINT(47.739753 -102.478074)', 4326), NULL, NULL, '2011-01-18', '2025-04-30', NULL, NULL, NULL),
  ('2747319', 'Lake Renwick', 'Reservoir', 'North Dakota', 'ND', 'Pembina', 'Hallson', 48.7769298, -97.7595974, ST_GeomFromText('POINT(48.7769298 -97.7595974)', 4326), NULL, NULL, '2014-03-27', NULL, NULL, NULL, NULL),
  ('2749219', 'Mineral Springs Falls', 'Falls', 'North Dakota', 'ND', 'Ransom', 'Fort Ransom', 46.50342, -97.90124, ST_GeomFromText('POINT(46.50342 -97.90124)', 4326), NULL, NULL, '2013-08-13', NULL, NULL, NULL, NULL),
  ('2749474', 'Rudnick Pond', 'Swamp', 'North Dakota', 'ND', 'McHenry', 'Anamoose SW', 47.854826, -100.241983, ST_GeomFromText('POINT(47.854826 -100.241983)', 4326), NULL, NULL, '2013-12-04', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2761537', 'Oak Coulee Ridge', 'Ridge', 'North Dakota', 'ND', 'Morton', 'Fish Creek Lake', 46.6378584, -101.1443993, ST_GeomFromText('POINT(46.6378584 -101.1443993)', 4326), NULL, NULL, '2014-05-09', '2017-01-28', NULL, NULL, NULL),
  ('2761539', 'Chimney Butte', 'Summit', 'North Dakota', 'ND', 'Morton', 'Fish Creek Lake', 46.6653066, -101.1557391, ST_GeomFromText('POINT(46.6653066 -101.1557391)', 4326), NULL, NULL, '2014-05-09', '2025-05-02', NULL, NULL, NULL),
  ('2761540', 'Antelope Butte', 'Summit', 'North Dakota', 'ND', 'Morton', 'Almont East', 46.6375178, -101.4677804, ST_GeomFromText('POINT(46.6375178 -101.4677804)', 4326), NULL, NULL, '2014-05-09', '2025-04-30', NULL, NULL, NULL),
  ('2761541', 'White Butte', 'Summit', 'North Dakota', 'ND', 'Morton', 'Almont East', 46.6604081, -101.4574378, ST_GeomFromText('POINT(46.6604081 -101.4574378)', 4326), NULL, NULL, '2014-05-09', '2025-04-30', NULL, NULL, NULL),
  ('2761542', 'Ramsland Hills', 'Range', 'North Dakota', 'ND', 'Morton', 'Almont West', 46.7094501, -101.6137092, ST_GeomFromText('POINT(46.7094501 -101.6137092)', 4326), NULL, NULL, '2014-05-09', NULL, NULL, NULL, NULL),
  ('2761557', 'Crown Butte', 'Summit', 'North Dakota', 'ND', 'Grant', 'Crown Butte Creek SE', 46.5949201, -101.5564621, ST_GeomFromText('POINT(46.5949201 -101.5564621)', 4326), NULL, NULL, '2014-05-12', '2025-04-30', NULL, NULL, NULL),
  ('2761558', 'Pump Coulee', 'Valley', 'North Dakota', 'ND', 'Grant', 'Crown Butte Creek SE', 46.5572222, -101.5311111, ST_GeomFromText('POINT(46.5572222 -101.5311111)', 4326), 46.5167022, -101.514684, '2014-05-12', NULL, NULL, NULL, NULL),
  ('2761559', 'Cat Coulee', 'Valley', 'North Dakota', 'ND', 'Grant', 'Crown Butte Creek SE', 46.5649949, -101.5098775, ST_GeomFromText('POINT(46.5649949 -101.5098775)', 4326), 46.5444256, -101.4687217, '2014-05-12', NULL, NULL, NULL, NULL),
  ('2761560', 'Griner Coulee', 'Valley', 'North Dakota', 'ND', 'Grant', 'Otter Creek West', 46.6055601, -101.4834486, ST_GeomFromText('POINT(46.6055601 -101.4834486)', 4326), 46.6192388, -101.4820753, '2014-05-12', NULL, NULL, NULL, NULL),
  ('2761561', 'Snake Coulee', 'Valley', 'North Dakota', 'ND', 'Grant', 'Otter Creek West', 46.5995488, -101.4462518, ST_GeomFromText('POINT(46.5995488 -101.4462518)', 4326), 46.5614384, -101.4417027, '2014-05-12', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2761562', 'Point Butte', 'Summit', 'North Dakota', 'ND', 'Grant', 'Otter Creek West', 46.5683483, -101.4090844, ST_GeomFromText('POINT(46.5683483 -101.4090844)', 4326), NULL, NULL, '2014-05-12', '2025-04-30', NULL, NULL, NULL),
  ('2761563', 'Pony Coulee', 'Valley', 'North Dakota', 'ND', 'Grant', 'Otter Creek East', 46.591056, -101.3677167, ST_GeomFromText('POINT(46.591056 -101.3677167)', 4326), 46.5601991, -101.3951825, '2014-05-12', NULL, NULL, NULL, NULL),
  ('2761564', 'Bridge Coulee', 'Valley', 'North Dakota', 'ND', 'Morton', 'Otter Creek East', 46.5997221, -101.2655245, ST_GeomFromText('POINT(46.5997221 -101.2655245)', 4326), 46.617647, -101.2995135, '2014-05-12', NULL, NULL, NULL, NULL),
  ('2761597', 'Stone Hills', 'Summit', 'North Dakota', 'ND', 'Grant', 'Lake Tschida West', 46.5427092, -101.9219243, ST_GeomFromText('POINT(46.5427092 -101.9219243)', 4326), NULL, NULL, '2014-05-14', '2025-04-30', NULL, NULL, NULL),
  ('2761598', 'Rattlesnake Point', 'Cape', 'North Dakota', 'ND', 'Grant', 'Lake Tschida West', 46.6094374, -101.8785369, ST_GeomFromText('POINT(46.6094374 -101.8785369)', 4326), NULL, NULL, '2014-05-14', NULL, NULL, NULL, NULL),
  ('2761599', 'Frey Hills', 'Range', 'North Dakota', 'ND', 'Grant', 'New Leipzig North', 46.4105258, -101.8931154, ST_GeomFromText('POINT(46.4105258 -101.8931154)', 4326), NULL, NULL, '2014-05-14', NULL, NULL, NULL, NULL),
  ('2761600', 'Rattlesnake Buttes', 'Range', 'North Dakota', 'ND', 'Grant', 'Lark', 46.4401819, -101.4593628, ST_GeomFromText('POINT(46.4401819 -101.4593628)', 4326), NULL, NULL, '2014-05-14', NULL, NULL, NULL, NULL),
  ('2761601', 'Lake Patricia', 'Reservoir', 'North Dakota', 'ND', 'Morton', 'Flasher', 46.4678385, -101.1866015, ST_GeomFromText('POINT(46.4678385 -101.1866015)', 4326), NULL, NULL, '2014-05-14', NULL, NULL, NULL, NULL),
  ('2761602', 'Rattlesnake Hill', 'Summit', 'North Dakota', 'ND', 'Morton', 'Flasher', 46.4324381, -101.161378, ST_GeomFromText('POINT(46.4324381 -101.161378)', 4326), NULL, NULL, '2014-05-14', '2025-04-30', NULL, NULL, NULL),
  ('2761603', 'Raleigh Reservoir', 'Reservoir', 'North Dakota', 'ND', 'Grant', 'Raleigh', 46.3511457, -101.3708149, ST_GeomFromText('POINT(46.3511457 -101.3708149)', 4326), NULL, NULL, '2014-05-14', '2017-09-25', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2761604', 'Thompson Butte', 'Summit', 'North Dakota', 'ND', 'Grant', 'Bell Coulee West', 46.234371, -101.4798253, ST_GeomFromText('POINT(46.234371 -101.4798253)', 4326), NULL, NULL, '2014-05-14', '2025-04-30', NULL, NULL, NULL),
  ('2761605', 'Rattlesnake Butte', 'Summit', 'North Dakota', 'ND', 'Grant', 'Bell Coulee West', 46.1507813, -101.4324066, ST_GeomFromText('POINT(46.1507813 -101.4324066)', 4326), NULL, NULL, '2014-05-14', '2020-01-17', NULL, NULL, NULL),
  ('2761606', 'Flat Top Butte', 'Summit', 'North Dakota', 'ND', 'Grant', 'Bell Coulee West', 46.1266024, -101.4075457, ST_GeomFromText('POINT(46.1266024 -101.4075457)', 4326), NULL, NULL, '2014-05-14', '2020-01-17', NULL, NULL, NULL),
  ('2783986', 'Searl Creek', 'Stream', 'South Dakota', 'SD', 'Campbell', 'Pollock', 45.9166667, -100.2913889, ST_GeomFromText('POINT(45.9166667 -100.2913889)', 4326), 45.9919444, -100.3205556, '2016-05-09', NULL, 'Official', 'Board Decision', '2016-05-05'),
  ('2785227', 'Fordville Dam', 'Reservoir', 'North Dakota', 'ND', 'Grand Forks', 'Fordville', 48.1793977, -97.7681839, ST_GeomFromText('POINT(48.1793977 -97.7681839)', 4326), NULL, NULL, '2016-09-15', NULL, NULL, NULL, NULL),
  ('2787674', 'Harmon Lake', 'Reservoir', 'North Dakota', 'ND', 'Morton', 'Harmon', 46.9391886, -100.9652374, ST_GeomFromText('POINT(46.9391886 -100.9652374)', 4326), NULL, NULL, '2017-08-02', NULL, NULL, NULL, NULL),
  ('2788117', 'Mooreton Pond', 'Reservoir', 'North Dakota', 'ND', 'Richland', 'Mooreton East', 46.267, -96.8387, ST_GeomFromText('POINT(46.267 -96.8387)', 4326), NULL, NULL, '2018-07-06', NULL, NULL, NULL, NULL),
  ('2790879', 'Streeter Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Streeter', 46.6482, -99.3633, ST_GeomFromText('POINT(46.6482 -99.3633)', 4326), NULL, NULL, '2018-07-05', NULL, NULL, NULL, NULL),
  ('2790899', 'Belfield Pond', 'Reservoir', 'North Dakota', 'ND', 'Stark', 'Belfield', 46.8796, -103.2079, ST_GeomFromText('POINT(46.8796 -103.2079)', 4326), NULL, NULL, '2018-07-06', NULL, NULL, NULL, NULL),
  ('2805082', 'Alkali Lake', 'Lake', 'North Dakota', 'ND', 'Stutsman', 'Spiritwood Lake', 47.04078, -98.58368, ST_GeomFromText('POINT(47.04078 -98.58368)', 4326), NULL, NULL, '2019-12-13', NULL, 'Official', 'Board Decision', '2019-12-12');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2829457', 'Roth Lake', 'Lake', 'North Dakota', 'ND', 'Emmons', 'Westfield', 46.107292, -100.173905, ST_GeomFromText('POINT(46.107292 -100.173905)', 4326), NULL, NULL, '2021-02-11', NULL, 'Official', 'Board Decision', '2021-02-11'),
  ('2831366', 'Christenson Lake', 'Lake', 'North Dakota', 'ND', 'Bottineau', 'Boundary Lake', 48.8952796, -100.2458872, ST_GeomFromText('POINT(48.8952796 -100.2458872)', 4326), NULL, NULL, '2023-10-16', '2023-10-16', 'Official', 'Board Decision', '2023-10-12');


COMMIT;
SET unique_checks = 1;
SET autocommit = 1;

-- ND complete: 2,292 features loaded
