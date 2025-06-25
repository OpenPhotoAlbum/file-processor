USE kin;

-- GNIS Geographic Features for RI
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
  ('205575', 'Blackmore Brook', 'Stream', 'Connecticut', 'CT', 'Northeastern Connecticut', 'Thompson', 41.9512091, -71.8136817, ST_GeomFromText('POINT(41.9512091 -71.8136817)', 4326), 41.9511111, -71.7888889, '1979-09-12', NULL, NULL, NULL, NULL),
  ('205909', 'Cady Brook', 'Stream', 'Connecticut', 'CT', 'Northeastern Connecticut', 'Thompson', 41.9048204, -71.8303486, ST_GeomFromText('POINT(41.9048204 -71.8303486)', 4326), 41.9063889, -71.7705556, '1979-09-12', NULL, NULL, NULL, NULL),
  ('206525', 'Croff Farm Brook', 'Stream', 'Connecticut', 'CT', 'Northeastern Connecticut', 'Thompson', 41.9786, -71.8016, ST_GeomFromText('POINT(41.9786 -71.8016)', 4326), 41.9822222, -71.7819444, '1979-09-12', '2008-01-31', 'Official', 'Board Decision', '1972-01-01'),
  ('207316', 'Glade Brook', 'Stream', 'Connecticut', 'CT', 'Southeastern Connecticut', 'Ashaway', 41.4509326, -71.8061805, ST_GeomFromText('POINT(41.4509326 -71.8061805)', 4326), 41.4947222, -71.7869444, '1979-09-12', '2010-02-16', 'Official', 'Board Decision', '1930-02-05'),
  ('207479', 'Green Fall River', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Ashaway', 41.4445438, -71.7964578, ST_GeomFromText('POINT(41.4445438 -71.7964578)', 4326), 41.5559324, -71.8061813, '1979-09-12', '2015-10-19', 'Official', 'Board Decision', '1930-01-01'),
  ('208222', 'Keach Brook', 'Stream', 'Connecticut', 'CT', 'Northeastern Connecticut', 'Thompson', 41.9189871, -71.8125706, ST_GeomFromText('POINT(41.9189871 -71.8125706)', 4326), 41.9536111, -71.7730556, '1979-09-12', '2011-06-16', 'Official', 'Board Decision', '1972-01-01'),
  ('208745', 'Mary Brown Brook', 'Stream', 'Connecticut', 'CT', 'Northeastern Connecticut', 'Thompson', 41.9220425, -71.824793, ST_GeomFromText('POINT(41.9220425 -71.824793)', 4326), 41.9422222, -71.7597222, '1979-09-12', '2008-01-31', 'Official', 'Board Decision', '1930-01-01'),
  ('209031', 'Moosup River', 'Stream', 'Connecticut', 'CT', 'Northeastern Connecticut', 'Plainfield', 41.731348, -71.93264, ST_GeomFromText('POINT(41.731348 -71.93264)', 4326), 41.770636, -71.775742, '2023-04-18', '2023-04-18', 'Official', 'Board Decision', '1930-01-01'),
  ('209580', 'Pachaug River', 'Stream', 'Connecticut', 'CT', 'Southeastern Connecticut', 'Jewett City', 41.601765, -71.9867416, ST_GeomFromText('POINT(41.601765 -71.9867416)', 4326), 41.5914881, -71.7856252, '1979-09-12', '2019-12-13', NULL, NULL, NULL),
  ('209679', 'Peck Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Thompson', 41.9339403, -71.7962087, ST_GeomFromText('POINT(41.9339403 -71.7962087)', 4326), NULL, NULL, '1979-09-12', '2023-03-29', 'Official', 'Board Decision', '1972-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('210609', 'Salisbury Brook', 'Stream', 'Connecticut', 'CT', 'Northeastern Connecticut', 'East Killingly', 41.795824, -71.798444, ST_GeomFromText('POINT(41.795824 -71.798444)', 4326), 41.803087, -71.78647, '2023-04-18', '2023-04-18', NULL, NULL, NULL),
  ('211762', 'Wakefield Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Thompson', 41.963805, -71.7921613, ST_GeomFromText('POINT(41.963805 -71.7921613)', 4326), NULL, NULL, '2023-04-18', '2023-04-18', NULL, NULL, NULL),
  ('212234', 'Wood River', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.428212, -71.718707, ST_GeomFromText('POINT(41.428212 -71.718707)', 4326), 41.654474, -71.830587, '2023-04-18', '2023-04-18', 'Official', 'Board Decision', '1972-01-01'),
  ('606966', 'Allens Pond Marshes', 'Swamp', 'Massachusetts', 'MA', 'Bristol', 'Wickford', 41.5148236, -71.4878365, ST_GeomFromText('POINT(41.5148236 -71.4878365)', 4326), NULL, NULL, '2002-08-27', NULL, NULL, NULL, NULL),
  ('610713', 'Wallum Lake', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Oxford', 42.0080138, -71.7677242, ST_GeomFromText('POINT(42.0080138 -71.7677242)', 4326), NULL, NULL, '1974-02-24', '2018-05-17', NULL, NULL, NULL),
  ('610955', 'Card Machine Brook', 'Stream', 'Massachusetts', 'MA', 'Worcester', 'Uxbridge', 42.0173201, -71.6211763, ST_GeomFromText('POINT(42.0173201 -71.6211763)', 4326), 42.0056537, -71.6356211, '1974-02-24', '2021-05-19', 'Official', 'Board Decision', '1930-01-01'),
  ('610967', 'Chockalog River', 'Stream', 'Massachusetts', 'MA', 'Worcester', 'Chepachet', 41.9959314, -71.6897895, ST_GeomFromText('POINT(41.9959314 -71.6897895)', 4326), 42.032042, -71.6839561, '1974-02-24', '2021-05-19', 'Official', 'Board Decision', '1930-01-01'),
  ('611570', 'Peters River', 'Stream', 'Massachusetts', 'MA', 'Norfolk', 'Franklin', 42.0064871, -71.5036724, ST_GeomFromText('POINT(42.0064871 -71.5036724)', 4326), 42.0592645, -71.4675606, '1974-02-24', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('611724', 'Pine Swamp', 'Swamp', 'Rhode Island', 'RI', 'Providence', 'Franklin', 42.0129314, -71.4332489, ST_GeomFromText('POINT(42.0129314 -71.4332489)', 4326), NULL, NULL, '1974-02-24', '2022-08-02', NULL, NULL, NULL),
  ('612650', 'Pocasset Cedar Swamp', 'Swamp', 'Rhode Island', 'RI', 'Newport', 'Fall River', 41.661932, -71.1713017, ST_GeomFromText('POINT(41.661932 -71.1713017)', 4326), NULL, NULL, '1974-02-24', '2023-04-06', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('612683', 'Sucker Brook', 'Stream', 'Massachusetts', 'MA', 'Bristol', 'Fall River', 41.6737136, -71.1425447, ST_GeomFromText('POINT(41.6737136 -71.1425447)', 4326), 41.6541667, -71.1611111, '1974-02-24', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('612688', 'Touisset', 'Cape', 'Massachusetts', 'MA', 'Bristol', 'Fall River', 41.7084352, -71.2369918, ST_GeomFromText('POINT(41.7084352 -71.2369918)', 4326), NULL, NULL, '1974-02-24', '2011-08-26', 'Official', 'Board Decision', '1930-01-01'),
  ('617009', 'Indian Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Franklin', 42.0073208, -71.3989465, ST_GeomFromText('POINT(42.0073208 -71.3989465)', 4326), 42.0216667, -71.4047222, '1974-02-24', '2010-02-04', 'Official', 'Board Decision', '1971-01-01'),
  ('617212', 'Robin Hollow Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9177419, -71.3815513, ST_GeomFromText('POINT(41.9177419 -71.3815513)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1972-01-01'),
  ('617299', 'Coles Brook', 'Stream', 'Massachusetts', 'MA', 'Bristol', 'East Providence', 41.8548225, -71.3383869, ST_GeomFromText('POINT(41.8548225 -71.3383869)', 4326), 41.8548225, -71.3383869, '1974-02-24', NULL, NULL, NULL, NULL),
  ('617342', 'Miscoe Lake', 'Reservoir', 'Massachusetts', 'MA', 'Norfolk', 'Franklin', 42.0078764, -71.4175584, ST_GeomFromText('POINT(42.0078764 -71.4175584)', 4326), NULL, NULL, '1974-02-24', NULL, 'Official', 'Board Decision', '1971-01-01'),
  ('617835', 'Tremont Pond', 'Lake', 'Massachusetts', 'MA', 'Plymouth', 'East Killingly', 41.7934323, -71.7634028, ST_GeomFromText('POINT(41.7934323 -71.7634028)', 4326), NULL, NULL, '1974-02-24', NULL, NULL, NULL, NULL),
  ('618397', 'Abbott Run', 'Stream', 'Massachusetts', 'MA', 'Bristol', 'Pawtucket', 41.9000996, -71.3856116, ST_GeomFromText('POINT(41.9000996 -71.3856116)', 4326), 41.9811111, -71.3905556, '2002-08-27', '2021-05-19', 'Official', 'Board Decision', '1930-01-01'),
  ('619292', 'Round Top Brook', 'Stream', 'Massachusetts', 'MA', 'Worcester', 'Chepachet', 41.9959314, -71.6897895, ST_GeomFromText('POINT(41.9959314 -71.6897895)', 4326), 42.0187088, -71.7142348, '1974-02-24', '2021-05-19', 'Official', 'Board Decision', '1930-01-01'),
  ('619295', 'Bacon Brook', 'Stream', 'Massachusetts', 'MA', 'Worcester', 'Blackstone', 42.0300978, -71.603398, ST_GeomFromText('POINT(42.0300978 -71.603398)', 4326), 42.0105556, -71.6172222, '1974-02-24', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('619296', 'Mill River', 'Stream', 'Massachusetts', 'MA', 'Worcester', 'Blackstone', 42.0073204, -71.5036725, ST_GeomFromText('POINT(42.0073204 -71.5036725)', 4326), 42.1820402, -71.5536754, '1974-02-24', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('619304', 'Sevenmile River', 'Stream', 'Massachusetts', 'MA', 'Bristol', 'Attleboro', 41.8959332, -71.3397764, ST_GeomFromText('POINT(41.8959332 -71.3397764)', 4326), 41.9986111, -71.3680556, '1974-02-24', '2018-11-30', NULL, NULL, NULL),
  ('619306', 'Grays Mill Pond', 'Lake', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5554035, -71.1273502, ST_GeomFromText('POINT(41.5554035 -71.1273502)', 4326), NULL, NULL, '1974-02-24', '2018-05-16', 'Official', 'Board Decision', '1930-02-05'),
  ('619364', 'Mount Hope Bay', 'Bay', 'Massachusetts', 'MA', 'Bristol', 'Fall River', 41.6834354, -71.216158, ST_GeomFromText('POINT(41.6834354 -71.216158)', 4326), NULL, NULL, '1974-02-24', NULL, 'Official', 'Board Decision', '1964-01-01'),
  ('619365', 'Palmer River', 'Stream', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7326016, -71.2889385, ST_GeomFromText('POINT(41.7326016 -71.2889385)', 4326), 41.845934, -71.2583832, '1974-02-24', '2018-10-30', 'Official', 'Board Decision', '1978-01-01'),
  ('619367', 'Central Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'East Providence', 41.8539746, -71.3401614, ST_GeomFromText('POINT(41.8539746 -71.3401614)', 4326), NULL, NULL, '1974-02-24', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('619371', 'Ten Mile River', 'Stream', 'Rhode Island', 'RI', 'Providence', 'East Providence', 41.8384336, -71.369777, ST_GeomFromText('POINT(41.8384336 -71.369777)', 4326), 42.0203765, -71.3583897, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217465', 'Sandy Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.2326027, -71.577557, ST_GeomFromText('POINT(41.2326027 -71.577557)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217467', 'Cow Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.2267696, -71.5720011, ST_GeomFromText('POINT(41.2267696 -71.5720011)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217468', 'Grove Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.2256585, -71.5658897, ST_GeomFromText('POINT(41.2256585 -71.5658897)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217469', 'Grove Point Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.2267696, -71.5639452, ST_GeomFromText('POINT(41.2267696 -71.5639452)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217470', 'Sachem Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.2224997, -71.5696516, ST_GeomFromText('POINT(41.2224997 -71.5696516)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1963-01-01'),
  ('1217471', 'Logwood Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.221214, -71.577279, ST_GeomFromText('POINT(41.221214 -71.577279)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217472', 'Beach Plum Neck', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.2231585, -71.5753345, ST_GeomFromText('POINT(41.2231585 -71.5753345)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217473', 'Beach Plum Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.2236505, -71.5748974, ST_GeomFromText('POINT(41.2236505 -71.5748974)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217474', 'Niles Swamp', 'Swamp', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.2143907, -71.5727052, ST_GeomFromText('POINT(41.2143907 -71.5727052)', 4326), NULL, NULL, '1976-05-21', '2018-05-16', 'Official', 'Board Decision', '1930-01-01'),
  ('1217475', 'Snores Rocks', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.2106586, -71.5792233, ST_GeomFromText('POINT(41.2106586 -71.5792233)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217476', 'Wash Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.2111411, -71.5754362, ST_GeomFromText('POINT(41.2111411 -71.5754362)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217478', 'Corn Neck', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.2134364, -71.5639449, ST_GeomFromText('POINT(41.2134364 -71.5639449)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217479', 'Bush Lot Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.2158277, -71.5666364, ST_GeomFromText('POINT(41.2158277 -71.5666364)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1972-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217480', 'Long Lot Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.2118335, -71.5665436, ST_GeomFromText('POINT(41.2118335 -71.5665436)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217481', 'Garden Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.20909, -71.56821, ST_GeomFromText('POINT(41.20909 -71.56821)', 4326), NULL, NULL, '1976-05-21', '2024-10-03', 'Official', 'Board Decision', '1930-01-01'),
  ('1217482', 'Isaiahs Gully', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.2203809, -71.5586672, ST_GeomFromText('POINT(41.2203809 -71.5586672)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217483', 'Old Briton Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.2206587, -71.5533891, ST_GeomFromText('POINT(41.2206587 -71.5533891)', 4326), NULL, NULL, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1963-01-01'),
  ('1217484', 'Clay Head', 'Cliff', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.2167698, -71.5553336, ST_GeomFromText('POINT(41.2167698 -71.5553336)', 4326), NULL, NULL, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1963-01-01'),
  ('1217485', 'Little Sachem Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.21348, -71.56031, ST_GeomFromText('POINT(41.21348 -71.56031)', 4326), NULL, NULL, '1976-05-21', '2024-10-03', 'Official', 'Board Decision', '1963-01-01'),
  ('1217486', 'Balls North Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.212881, -71.5542223, ST_GeomFromText('POINT(41.212881 -71.5542223)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1963-01-01'),
  ('1217487', 'Balls Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.2101032, -71.5553334, ST_GeomFromText('POINT(41.2101032 -71.5553334)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217488', 'Clayhead Swamp', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.2062618, -71.5593567, ST_GeomFromText('POINT(41.2062618 -71.5593567)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217489', 'Roiles Harbor', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.2059365, -71.5570001, ST_GeomFromText('POINT(41.2059365 -71.5570001)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217490', 'Jerrys Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.2037144, -71.5581112, ST_GeomFromText('POINT(41.2037144 -71.5581112)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217491', 'Georgian Swamp', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1984365, -71.5692227, ST_GeomFromText('POINT(41.1984365 -71.5692227)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217492', 'Mansion Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.2014922, -71.559778, ST_GeomFromText('POINT(41.2014922 -71.559778)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217493', 'Scotch Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1931589, -71.5639446, ST_GeomFromText('POINT(41.1931589 -71.5639446)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217494', 'Indian Head Neck', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1878811, -71.568667, ST_GeomFromText('POINT(41.1878811 -71.568667)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217495', 'Crescent Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1912144, -71.5633891, ST_GeomFromText('POINT(41.1912144 -71.5633891)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1972-01-01'),
  ('1217496', 'Block Island State Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1823256, -71.5653334, ST_GeomFromText('POINT(41.1823256 -71.5653334)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217497', 'Skippers Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.2009364, -71.5772787, ST_GeomFromText('POINT(41.2009364 -71.5772787)', 4326), NULL, NULL, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1972-01-01'),
  ('1217498', 'Old Breach Cut', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1995475, -71.582001, ST_GeomFromText('POINT(41.1995475 -71.582001)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217499', 'Gunners Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1984731, -71.5869779, ST_GeomFromText('POINT(41.1984731 -71.5869779)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217500', 'Great Salt Pond', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1920475, -71.5820009, ST_GeomFromText('POINT(41.1920475 -71.5820009)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217501', 'Harris Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1906588, -71.5736672, ST_GeomFromText('POINT(41.1906588 -71.5736672)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217503', 'Cormorant Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1912142, -71.5881122, ST_GeomFromText('POINT(41.1912142 -71.5881122)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217504', 'Cormorant Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1903809, -71.589779, ST_GeomFromText('POINT(41.1903809 -71.589779)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217505', 'Harbor Neck', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1939919, -71.5914457, ST_GeomFromText('POINT(41.1939919 -71.5914457)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217506', 'Charleston Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.195103, -71.5931125, ST_GeomFromText('POINT(41.195103 -71.5931125)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217507', 'Grace Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1870474, -71.5972792, ST_GeomFromText('POINT(41.1870474 -71.5972792)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217508', 'Grace Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1828808, -71.6050573, ST_GeomFromText('POINT(41.1828808 -71.6050573)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217509', 'Sandy Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1850128, -71.5976417, ST_GeomFromText('POINT(41.1850128 -71.5976417)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217510', 'New Harbor', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1828811, -71.5733893, ST_GeomFromText('POINT(41.1828811 -71.5733893)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217511', 'Jobs Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1820473, -71.5773838, ST_GeomFromText('POINT(41.1820473 -71.5773838)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217512', 'Siahs Swamp', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1826031, -71.5981125, ST_GeomFromText('POINT(41.1826031 -71.5981125)', 4326), NULL, NULL, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1972-01-01'),
  ('1217513', 'Betty Pucky Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1822529, -71.5839374, ST_GeomFromText('POINT(41.1822529 -71.5839374)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217514', 'Rodman Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1822253, -71.5882085, ST_GeomFromText('POINT(41.1822253 -71.5882085)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217516', 'Trims Pond', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1798256, -71.5717225, ST_GeomFromText('POINT(41.1798256 -71.5717225)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1972-01-01'),
  ('1217517', 'Fort Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1787145, -71.5720003, ST_GeomFromText('POINT(41.1787145 -71.5720003)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217518', 'Harbor Pond', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1770479, -71.5661667, ST_GeomFromText('POINT(41.1770479 -71.5661667)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217519', 'Rat Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1795478, -71.5717225, ST_GeomFromText('POINT(41.1795478 -71.5717225)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217520', 'Swede Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1771844, -71.5988592, ST_GeomFromText('POINT(41.1771844 -71.5988592)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217521', 'Beacon Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1755858, -71.5913577, ST_GeomFromText('POINT(41.1755858 -71.5913577)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217522', 'Dories Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1737142, -71.6078349, ST_GeomFromText('POINT(41.1737142 -71.6078349)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1963-01-01'),
  ('1217523', 'Mouwneit Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1719068, -71.5936217, ST_GeomFromText('POINT(41.1719068 -71.5936217)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217524', 'Martins Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1717698, -71.6100573, ST_GeomFromText('POINT(41.1717698 -71.6100573)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217525', 'Stevens Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1676031, -71.6114461, ST_GeomFromText('POINT(41.1676031 -71.6114461)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217526', 'Franklin Swamp', 'Swamp', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1688918, -71.6071346, ST_GeomFromText('POINT(41.1688918 -71.6071346)', 4326), NULL, NULL, '1976-05-21', '2018-05-16', 'Official', 'Board Decision', '1930-01-01'),
  ('1217527', 'Coonimus Swamp', 'Swamp', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1658684, -71.6089171, ST_GeomFromText('POINT(41.1658684 -71.6089171)', 4326), NULL, NULL, '1976-05-21', '2018-05-16', 'Official', 'Board Decision', '1930-01-01'),
  ('1217528', 'Southwest Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1598254, -71.6133905, ST_GeomFromText('POINT(41.1598254 -71.6133905)', 4326), NULL, NULL, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1963-01-01'),
  ('1217529', 'Bluff Head', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1611642, -71.6113131, ST_GeomFromText('POINT(41.1611642 -71.6113131)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217530', 'Cherry Tree Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1620393, -71.5929395, ST_GeomFromText('POINT(41.1620393 -71.5929395)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217531', 'Deep Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1594383, -71.5947372, ST_GeomFromText('POINT(41.1594383 -71.5947372)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217532', 'Schooner Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1537143, -71.6125571, ST_GeomFromText('POINT(41.1537143 -71.6125571)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217533', 'Dickens Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1512144, -71.6092235, ST_GeomFromText('POINT(41.1512144 -71.6092235)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1963-01-01'),
  ('1217534', 'Lewis Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1473256, -71.5995008, ST_GeomFromText('POINT(41.1473256 -71.5995008)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1963-01-01'),
  ('1217535', 'Plover Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1507575, -71.5956552, ST_GeomFromText('POINT(41.1507575 -71.5956552)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1972-01-01'),
  ('1217536', 'Black Rock Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1464924, -71.593945, ST_GeomFromText('POINT(41.1464924 -71.593945)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1972-01-01'),
  ('1217537', 'Black Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1439924, -71.5942228, ST_GeomFromText('POINT(41.1439924 -71.5942228)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217538', 'Split Rock Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1467702, -71.5911672, ST_GeomFromText('POINT(41.1467702 -71.5911672)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217539', 'Toms Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1473257, -71.5892226, ST_GeomFromText('POINT(41.1473257 -71.5892226)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217540', 'Spar Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1481592, -71.5845003, ST_GeomFromText('POINT(41.1481592 -71.5845003)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217541', 'Barlows Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1478814, -71.5789444, ST_GeomFromText('POINT(41.1478814 -71.5789444)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217542', 'Vaills Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1487148, -71.5722776, ST_GeomFromText('POINT(41.1487148 -71.5722776)', 4326), NULL, NULL, '2002-08-27', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217543', 'Great Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1487149, -71.5658884, ST_GeomFromText('POINT(41.1487149 -71.5658884)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217544', 'Corn Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1512149, -71.5564436, ST_GeomFromText('POINT(41.1512149 -71.5564436)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217545', 'Lighthouse Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.151215, -71.5522768, ST_GeomFromText('POINT(41.151215 -71.5522768)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217546', 'Sand Bank Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1531595, -71.54811, ST_GeomFromText('POINT(41.1531595 -71.54811)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217547', 'Southeast Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1542706, -71.5461655, ST_GeomFromText('POINT(41.1542706 -71.5461655)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217548', 'Cat Rock Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1556595, -71.5458878, ST_GeomFromText('POINT(41.1556595 -71.5458878)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217549', 'Old Whale Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1573261, -71.5422765, ST_GeomFromText('POINT(41.1573261 -71.5422765)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217550', 'Tilson Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1595483, -71.5442211, ST_GeomFromText('POINT(41.1595483 -71.5442211)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217551', 'Green Hill Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1631594, -71.5444989, ST_GeomFromText('POINT(41.1631594 -71.5444989)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217552', 'Old Harbor Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.164826, -71.5442211, ST_GeomFromText('POINT(41.164826 -71.5442211)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217553', 'Lantern Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1717704, -71.5517216, ST_GeomFromText('POINT(41.1717704 -71.5517216)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217555', 'Block Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1917699, -71.5745006, ST_GeomFromText('POINT(41.1917699 -71.5745006)', 4326), NULL, NULL, '1976-05-21', '2020-03-11', 'Official', 'Board Decision', '1930-01-01'),
  ('1217556', 'Rodman Hollow', 'Valley', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1487292, -71.5866757, ST_GeomFromText('POINT(41.1487292 -71.5866757)', 4326), 41.1595883, -71.5878875, '1976-05-21', '2016-12-15', 'Official', 'Board Decision', '1930-01-01'),
  ('1217557', 'Mitchell Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.15232, -71.58305, ST_GeomFromText('POINT(41.15232 -71.58305)', 4326), NULL, NULL, '1976-05-21', '2024-10-03', 'Official', 'Board Decision', '1930-01-01'),
  ('1217558', 'Peckham Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1561034, -71.5811289, ST_GeomFromText('POINT(41.1561034 -71.5811289)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217559', 'Fresh Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1606409, -71.5787112, ST_GeomFromText('POINT(41.1606409 -71.5787112)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217561', 'Fresh Swamp', 'Swamp', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1621004, -71.572753, ST_GeomFromText('POINT(41.1621004 -71.572753)', 4326), NULL, NULL, '1976-05-21', '2018-05-16', 'Official', 'Board Decision', '1930-01-01'),
  ('1217563', 'Sands Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1561587, -71.5676003, ST_GeomFromText('POINT(41.1561587 -71.5676003)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217564', 'New Meadow Hill Swamp', 'Swamp', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1727275, -71.5724434, ST_GeomFromText('POINT(41.1727275 -71.5724434)', 4326), NULL, NULL, '1976-05-21', '2018-05-16', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217565', 'Sunset Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.16911, -71.5677386, ST_GeomFromText('POINT(41.16911 -71.5677386)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217566', 'Great Swamp', 'Swamp', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1661736, -71.5684578, ST_GeomFromText('POINT(41.1661736 -71.5684578)', 4326), NULL, NULL, '1976-05-21', '2018-05-16', 'Official', 'Board Decision', '1930-01-01'),
  ('1217567', 'Mill Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1721177, -71.5648153, ST_GeomFromText('POINT(41.1721177 -71.5648153)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217568', 'Mill Tail Swamp', 'Swamp', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1689925, -71.5639442, ST_GeomFromText('POINT(41.1689925 -71.5639442)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217569', 'Continental Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1679593, -71.559484, ST_GeomFromText('POINT(41.1679593 -71.559484)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217570', 'Pilot Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1574014, -71.5618666, ST_GeomFromText('POINT(41.1574014 -71.5618666)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217571', 'John E''s Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1558408, -71.5597239, ST_GeomFromText('POINT(41.1558408 -71.5597239)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1963-01-01'),
  ('1217572', 'Ambrose Swamp', 'Swamp', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1647056, -71.5578294, ST_GeomFromText('POINT(41.1647056 -71.5578294)', 4326), NULL, NULL, '1976-05-21', '2018-05-16', 'Official', 'Board Decision', '1930-01-01'),
  ('1217573', 'Payne Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1577892, -71.555931, ST_GeomFromText('POINT(41.1577892 -71.555931)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217578', 'Napatree Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Mystic', 41.3064885, -71.8856253, ST_GeomFromText('POINT(41.3064885 -71.8856253)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217579', 'Sandy Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Mystic', 41.3289884, -71.891737, ST_GeomFromText('POINT(41.3289884 -71.891737)', 4326), NULL, NULL, '1976-05-21', '2011-09-14', 'Official', 'Board Decision', '1930-01-01'),
  ('1217580', 'Little Narragansett Bay', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.319399, -71.871357, ST_GeomFromText('POINT(41.319399 -71.871357)', 4326), NULL, NULL, '2023-04-18', '2023-04-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217584', 'Watch Hill Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3037109, -71.8584022, ST_GeomFromText('POINT(41.3037109 -71.8584022)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217585', 'Watch Hill Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3120442, -71.8589578, ST_GeomFromText('POINT(41.3120442 -71.8589578)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217586', 'Mickill Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3116788, -71.848855, ST_GeomFromText('POINT(41.3116788 -71.848855)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217587', 'Foster Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3162109, -71.8567356, ST_GeomFromText('POINT(41.3162109 -71.8567356)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217589', 'Maschaug Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3183916, -71.8312738, ST_GeomFromText('POINT(41.3183916 -71.8312738)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217590', 'Little Maschaug Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3197459, -71.8234853, ST_GeomFromText('POINT(41.3197459 -71.8234853)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217592', 'Winnapaug Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3307947, -71.7871621, ST_GeomFromText('POINT(41.3307947 -71.7871621)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-02-05'),
  ('1217593', 'Weekapaug Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3253782, -71.75201, ST_GeomFromText('POINT(41.3253782 -71.75201)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217595', 'Rhodes Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3200997, -71.8553467, ST_GeomFromText('POINT(41.3200997 -71.8553467)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217596', 'Potter Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3203776, -71.8514577, ST_GeomFromText('POINT(41.3203776 -71.8514577)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217597', 'Horace Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3242665, -71.8484021, ST_GeomFromText('POINT(41.3242665 -71.8484021)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217598', 'Colonel Willie Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3259331, -71.842013, ST_GeomFromText('POINT(41.3259331 -71.842013)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217599', 'Graves Neck', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3284331, -71.8439575, ST_GeomFromText('POINT(41.3284331 -71.8439575)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217601', 'No Bottom Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3335958, -71.8257962, ST_GeomFromText('POINT(41.3335958 -71.8257962)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217602', 'Spring Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3353421, -71.8260596, ST_GeomFromText('POINT(41.3353421 -71.8260596)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217603', 'Babcock Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3378776, -71.8270127, ST_GeomFromText('POINT(41.3378776 -71.8270127)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217604', 'Ram Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3375998, -71.8289572, ST_GeomFromText('POINT(41.3375998 -71.8289572)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217605', 'Pawcatuck River', 'Stream', 'Connecticut', 'CT', 'Southeastern Connecticut', 'Watch Hill', 41.320933, -71.8578468, ST_GeomFromText('POINT(41.320933 -71.8578468)', 4326), 41.4416667, -71.5916667, '1976-05-21', '2014-08-13', 'Official', 'Board Decision', '1930-02-05');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217606', 'Mastuxet Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3428776, -71.8247905, ST_GeomFromText('POINT(41.3428776 -71.8247905)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217607', 'Mastuxet Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3437109, -71.8234016, ST_GeomFromText('POINT(41.3437109 -71.8234016)', 4326), 41.3630556, -71.8180556, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217608', 'Long Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3414494, -71.8133931, ST_GeomFromText('POINT(41.3414494 -71.8133931)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217609', 'Thompson Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3484331, -71.8264573, ST_GeomFromText('POINT(41.3484331 -71.8264573)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217610', 'East Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Quonochontaug', 41.3451009, -71.6822854, ST_GeomFromText('POINT(41.3451009 -71.6822854)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217611', 'Doctor Lewis Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3413059, -71.7882043, ST_GeomFromText('POINT(41.3413059 -71.7882043)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217614', 'Rabbit Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3612027, -71.7516474, ST_GeomFromText('POINT(41.3612027 -71.7516474)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217615', 'Bills Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Quonochontaug', 41.3437117, -71.7178423, ST_GeomFromText('POINT(41.3437117 -71.7178423)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217616', 'Block Island Sound', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Quonochontaug', 41.2751017, -71.6495051, ST_GeomFromText('POINT(41.2751017 -71.6495051)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217619', 'Quahaug Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Quonochontaug', 41.3345448, -71.7445099, ST_GeomFromText('POINT(41.3345448 -71.7445099)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217620', 'Wheat Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Quonochontaug', 41.3348226, -71.7370096, ST_GeomFromText('POINT(41.3348226 -71.7370096)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217623', 'Dam Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Quonochontaug', 41.3555446, -71.7477476, ST_GeomFromText('POINT(41.3555446 -71.7477476)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217625', 'Tanyard Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.3778782, -71.7070092, ST_GeomFromText('POINT(41.3778782 -71.7070092)', 4326), 41.3626005, -71.714787, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217626', 'Quonochontaug Neck', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Quonochontaug', 41.3470451, -71.7033974, ST_GeomFromText('POINT(41.3470451 -71.7033974)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217627', 'Reeds Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Quonochontaug', 41.3531563, -71.6939526, ST_GeomFromText('POINT(41.3531563 -71.6939526)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217628', 'Mud Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Quonochontaug', 41.3603785, -71.6856191, ST_GeomFromText('POINT(41.3603785 -71.6856191)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217629', 'Foster Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Quonochontaug', 41.3626008, -71.6750633, ST_GeomFromText('POINT(41.3626008 -71.6750633)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217630', 'Ninigret Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Quonochontaug', 41.3542677, -71.6661739, ST_GeomFromText('POINT(41.3542677 -71.6661739)', 4326), NULL, NULL, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1972-01-01'),
  ('1217631', 'Coon Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Quonochontaug', 41.3589898, -71.6667295, ST_GeomFromText('POINT(41.3589898 -71.6667295)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217632', 'Hall Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Quonochontaug', 41.3567677, -71.6617293, ST_GeomFromText('POINT(41.3567677 -71.6617293)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217633', 'Governors Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Quonochontaug', 41.3576011, -71.6533956, ST_GeomFromText('POINT(41.3576011 -71.6533956)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217634', 'Grassy Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.3767676, -71.6550628, ST_GeomFromText('POINT(41.3767676 -71.6550628)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217635', 'Marshneck Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Quonochontaug', 41.362799, -71.647167, ST_GeomFromText('POINT(41.362799 -71.647167)', 4326), NULL, NULL, '1976-05-21', '2010-02-04', 'Official', 'Board Decision', '1930-01-01'),
  ('1217637', 'The Hummocks', 'Island', 'Rhode Island', 'RI', 'Washington', 'Quonochontaug', 41.3698232, -71.650618, ST_GeomFromText('POINT(41.3698232 -71.650618)', 4326), NULL, NULL, '1976-05-21', '2010-02-16', 'Official', 'Board Decision', '1978-01-01'),
  ('1217638', 'Potato Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Quonochontaug', 41.3723232, -71.64534, ST_GeomFromText('POINT(41.3723232 -71.64534)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217639', 'Marsh Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Quonochontaug', 41.3692678, -71.6445066, ST_GeomFromText('POINT(41.3692678 -71.6445066)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217640', 'Ward Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Quonochontaug', 41.3623234, -71.6383952, ST_GeomFromText('POINT(41.3623234 -71.6383952)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217641', 'Heather Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Quonochontaug', 41.3651012, -71.6328394, ST_GeomFromText('POINT(41.3651012 -71.6328394)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1933-01-01'),
  ('1217642', 'Stevens Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Quonochontaug', 41.3639901, -71.6297838, ST_GeomFromText('POINT(41.3639901 -71.6297838)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217644', 'Chapman Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Ashaway', 41.3802964, -71.7949135, ST_GeomFromText('POINT(41.3802964 -71.7949135)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217645', 'Aguntaug Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Ashaway', 41.3867462, -71.7841266, ST_GeomFromText('POINT(41.3867462 -71.7841266)', 4326), 41.3842106, -71.7908938, '1976-05-21', '2021-02-03', NULL, NULL, NULL),
  ('1217646', 'McGowan Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Ashaway', 41.3870442, -71.7789563, ST_GeomFromText('POINT(41.3870442 -71.7789563)', 4326), 41.3861111, -71.7611111, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217648', 'Bumpin Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Ashaway', 41.4059242, -71.8370133, ST_GeomFromText('POINT(41.4059242 -71.8370133)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217650', 'Mount Moriah', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Ashaway', 41.4078688, -71.817846, ST_GeomFromText('POINT(41.4078688 -71.817846)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217653', 'Chase Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Ashaway', 41.4088919, -71.7774441, ST_GeomFromText('POINT(41.4088919 -71.7774441)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217654', 'Kedinker Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Ashaway', 41.397322, -71.7672895, ST_GeomFromText('POINT(41.397322 -71.7672895)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217656', 'Mile Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Ashaway', 41.4148218, -71.7961796, ST_GeomFromText('POINT(41.4148218 -71.7961796)', 4326), 41.4236111, -71.7736111, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217659', 'Ashaway River', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Ashaway', 41.416905, -71.797457, ST_GeomFromText('POINT(41.416905 -71.797457)', 4326), 41.444899, -71.796341, '2023-04-18', '2023-04-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217660', 'Diamond Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Ashaway', 41.4356467, -71.7767341, ST_GeomFromText('POINT(41.4356467 -71.7767341)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217661', 'Maxon Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Ashaway', 41.4464799, -71.7764564, ST_GeomFromText('POINT(41.4464799 -71.7764564)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217662', 'Parmenter Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Ashaway', 41.4445438, -71.7959023, ST_GeomFromText('POINT(41.4445438 -71.7959023)', 4326), 41.4805556, -71.7902778, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217664', 'Champlin Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Ashaway', 41.4877836, -71.7793829, ST_GeomFromText('POINT(41.4877836 -71.7793829)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217665', 'Brightman Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Ashaway', 41.4947267, -71.7625233, ST_GeomFromText('POINT(41.4947267 -71.7625233)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217667', 'Tomaquag Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Ashaway', 41.4000998, -71.7675674, ST_GeomFromText('POINT(41.4000998 -71.7675674)', 4326), 41.4727778, -71.7758333, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1972-01-01'),
  ('1217669', 'Watchaug Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.3839903, -71.6911279, ST_GeomFromText('POINT(41.3839903 -71.6911279)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217670', 'Poquiant Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.3978779, -71.7264547, ST_GeomFromText('POINT(41.3978779 -71.7264547)', 4326), 41.3911111, -71.7027778, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217671', 'Shumunkanuc Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.4146459, -71.7101533, ST_GeomFromText('POINT(41.4146459 -71.7101533)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217673', 'Cedar Swamp Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.430378, -71.7011766, ST_GeomFromText('POINT(41.430378 -71.7011766)', 4326), 41.43, -71.6652778, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217674', 'Saw Mill Pond', 'Reservoir', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.4311029, -71.6617716, ST_GeomFromText('POINT(41.4311029 -71.6617716)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217676', 'Pasquiset Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.4478785, -71.6250629, ST_GeomFromText('POINT(41.4478785 -71.6250629)', 4326), 41.4291667, -71.6291667, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217677', 'Pasquiset Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.4260742, -71.6311061, ST_GeomFromText('POINT(41.4260742 -71.6311061)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217678', 'School House Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.401009, -71.6679969, ST_GeomFromText('POINT(41.401009 -71.6679969)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217679', 'Deep Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.39125, -71.6623238, ST_GeomFromText('POINT(41.39125 -71.6623238)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217680', 'King Tom Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.3838086, -71.653536, ST_GeomFromText('POINT(41.3838086 -71.653536)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217681', 'Tautog Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.3770454, -71.6425623, ST_GeomFromText('POINT(41.3770454 -71.6425623)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217682', 'Yawgunsk Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.3803788, -71.6439512, ST_GeomFromText('POINT(41.3803788 -71.6439512)', 4326), 41.3875, -71.6472222, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217683', 'Cross Mills Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.3876705, -71.6356046, ST_GeomFromText('POINT(41.3876705 -71.6356046)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1972-01-01'),
  ('1217685', 'Perry Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.3818108, -71.6319456, ST_GeomFromText('POINT(41.3818108 -71.6319456)', 4326), NULL, NULL, '1976-05-21', '2015-04-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1217686', 'Border Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.3912953, -71.6352161, ST_GeomFromText('POINT(41.3912953 -71.6352161)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217687', 'Hannah Clarkin Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.3940987, -71.6354706, ST_GeomFromText('POINT(41.3940987 -71.6354706)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1933-03-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217688', 'Indian Burying Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.3970369, -71.6331171, ST_GeomFromText('POINT(41.3970369 -71.6331171)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217689', 'Coon Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.4645355, -71.7425668, ST_GeomFromText('POINT(41.4645355 -71.7425668)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217691', 'Canonchet Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.4631554, -71.7200668, ST_GeomFromText('POINT(41.4631554 -71.7200668)', 4326), 41.4959325, -71.7703468, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217692', 'Plain Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.4684373, -71.7242857, ST_GeomFromText('POINT(41.4684373 -71.7242857)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217694', 'Sandy Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.4680958, -71.7058385, ST_GeomFromText('POINT(41.4680958 -71.7058385)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217697', 'Alton Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.4426409, -71.7183706, ST_GeomFromText('POINT(41.4426409 -71.7183706)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217699', 'Meadow Brook Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.440883, -71.6905227, ST_GeomFromText('POINT(41.440883 -71.6905227)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217700', 'Diamond Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.4784792, -71.7038035, ST_GeomFromText('POINT(41.4784792 -71.7038035)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217701', 'Diamond Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.4778776, -71.7134001, ST_GeomFromText('POINT(41.4778776 -71.7134001)', 4326), 41.4852778, -71.7019444, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217702', 'Carolina Trout Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.4894979, -71.7043179, ST_GeomFromText('POINT(41.4894979 -71.7043179)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217703', 'Kenyon Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.4893546, -71.6937647, ST_GeomFromText('POINT(41.4893546 -71.6937647)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217704', 'Meadow Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.4331558, -71.6931207, ST_GeomFromText('POINT(41.4331558 -71.6931207)', 4326), 41.5334333, -71.6661767, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217705', 'White Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.4589891, -71.6728426, ST_GeomFromText('POINT(41.4589891 -71.6728426)', 4326), 41.4819444, -71.6652778, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217706', 'Wells Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.4785652, -71.6717475, ST_GeomFromText('POINT(41.4785652 -71.6717475)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217707', 'Duck Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.4934847, -71.6662728, ST_GeomFromText('POINT(41.4934847 -71.6662728)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217708', 'Lillibridge Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.4948907, -71.6642631, ST_GeomFromText('POINT(41.4948907 -71.6642631)', 4326), NULL, NULL, '1976-05-21', '2021-02-03', 'Official', 'Board Decision', '1930-01-01'),
  ('1217709', 'Grass Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.4887917, -71.6513074, ST_GeomFromText('POINT(41.4887917 -71.6513074)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217711', 'Taney Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.4559337, -71.6492306, ST_GeomFromText('POINT(41.4559337 -71.6492306)', 4326), 41.4888889, -71.6458333, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217713', 'Shannock Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.4623054, -71.6381232, ST_GeomFromText('POINT(41.4623054 -71.6381232)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217715', 'Wilbur Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.4918755, -71.6413893, ST_GeomFromText('POINT(41.4918755 -71.6413893)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217716', 'Gould Neck', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.4242676, -71.6261736, ST_GeomFromText('POINT(41.4242676 -71.6261736)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217717', 'Allen Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Kingston OE S', 41.3698153, -71.6239606, ST_GeomFromText('POINT(41.3698153 -71.6239606)', 4326), NULL, NULL, '1976-05-21', '2015-04-24', 'Official', 'Board Decision', '1930-01-01'),
  ('1217718', 'Sagebed Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Kingston OE S', 41.3653791, -71.6236724, ST_GeomFromText('POINT(41.3653791 -71.6236724)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217719', 'Ram Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Kingston OE S', 41.3714902, -71.620339, ST_GeomFromText('POINT(41.3714902 -71.620339)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217720', 'Green Hill Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Kingston OE S', 41.3701845, -71.6136049, ST_GeomFromText('POINT(41.3701845 -71.6136049)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217722', 'Goose Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Kingston OE S', 41.3676014, -71.6117275, ST_GeomFromText('POINT(41.3676014 -71.6117275)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217723', 'Hog Hill Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Kingston OE S', 41.3687125, -71.612561, ST_GeomFromText('POINT(41.3687125 -71.612561)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217724', 'Jacob Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Kingston OE S', 41.3678792, -71.6092274, ST_GeomFromText('POINT(41.3678792 -71.6092274)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217725', 'Flat Meadow Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Kingston OE S', 41.3689903, -71.6053384, ST_GeomFromText('POINT(41.3689903 -71.6053384)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217726', 'Limber Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Kingston OE S', 41.3737125, -71.6089497, ST_GeomFromText('POINT(41.3737125 -71.6089497)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217727', 'Tuck Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Kingston OE S', 41.374268, -71.6136722, ST_GeomFromText('POINT(41.374268 -71.6136722)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217728', 'Factory Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.3911214, -71.5990392, ST_GeomFromText('POINT(41.3911214 -71.5990392)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217729', 'Green Hill Swamp', 'Swamp', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.3809904, -71.5977155, ST_GeomFromText('POINT(41.3809904 -71.5977155)', 4326), NULL, NULL, '1976-05-21', '2018-05-16', 'Official', 'Board Decision', '1930-01-01'),
  ('1217731', 'Green Hill Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Kingston OE S', 41.3651016, -71.5945046, ST_GeomFromText('POINT(41.3651016 -71.5945046)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217732', 'Green Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Kingston OE S', 41.3733741, -71.5970267, ST_GeomFromText('POINT(41.3733741 -71.5970267)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217733', 'Trustom Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Kingston OE S', 41.3723376, -71.584057, ST_GeomFromText('POINT(41.3723376 -71.584057)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217737', 'Mill Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.3933666, -71.5733195, ST_GeomFromText('POINT(41.3933666 -71.5733195)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217738', 'Blackberry Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.3834266, -71.5542249, ST_GeomFromText('POINT(41.3834266 -71.5542249)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217740', 'Matunuck Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Kingston OE S', 41.3731576, -71.5367247, ST_GeomFromText('POINT(41.3731576 -71.5367247)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217741', 'Deep Hole', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Kingston OE S', 41.371491, -71.5306134, ST_GeomFromText('POINT(41.371491 -71.5306134)', 4326), NULL, NULL, '1976-05-21', '2011-08-05', 'Official', 'Board Decision', '1930-02-05');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217742', 'Squally Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.3778798, -71.5370026, ST_GeomFromText('POINT(41.3778798 -71.5370026)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217743', 'Seaweed Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.3770464, -71.5392249, ST_GeomFromText('POINT(41.3770464 -71.5392249)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217744', 'Segar Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.3814908, -71.5395028, ST_GeomFromText('POINT(41.3814908 -71.5395028)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217745', 'Ram Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.3812131, -71.5367249, ST_GeomFromText('POINT(41.3812131 -71.5367249)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217746', 'Sycamore Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.3834353, -71.535336, ST_GeomFromText('POINT(41.3834353 -71.535336)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217747', 'Meadow Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.3823242, -71.5325582, ST_GeomFromText('POINT(41.3823242 -71.5325582)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217748', 'Potter Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.3873242, -71.5311693, ST_GeomFromText('POINT(41.3873242 -71.5311693)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217749', 'Fresh Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.391792, -71.5409112, ST_GeomFromText('POINT(41.391792 -71.5409112)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217750', 'Perch Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.3978796, -71.5403365, ST_GeomFromText('POINT(41.3978796 -71.5403365)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217752', 'Hazard Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.3806577, -71.5203354, ST_GeomFromText('POINT(41.3806577 -71.5203354)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217753', 'Succotash Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.3803799, -71.5225577, ST_GeomFromText('POINT(41.3803799 -71.5225577)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217756', 'Little Comfort Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.3859355, -71.5111685, ST_GeomFromText('POINT(41.3859355 -71.5111685)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217757', 'West River', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.8950996, -71.4120016, ST_GeomFromText('POINT(41.8950996 -71.4120016)', 4326), 41.9069444, -71.4763889, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217758', 'Strawberry Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.3909806, -71.5089347, ST_GeomFromText('POINT(41.3909806 -71.5089347)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217759', 'Potato Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.39288, -71.5042239, ST_GeomFromText('POINT(41.39288 -71.5042239)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217760', 'Beef Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.396491, -71.5131132, ST_GeomFromText('POINT(41.396491 -71.5131132)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217761', 'Thomas Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.3959354, -71.5036684, ST_GeomFromText('POINT(41.3959354 -71.5036684)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217762', 'Jonathan Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.401491, -71.5022796, ST_GeomFromText('POINT(41.401491 -71.5022796)', 4326), NULL, NULL, '1976-05-21', '2011-09-14', 'Official', 'Board Decision', '1930-01-01'),
  ('1217763', 'Jumping Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4035515, -71.5124307, ST_GeomFromText('POINT(41.4035515 -71.5124307)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217764', 'Turner Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4056576, -71.5111689, ST_GeomFromText('POINT(41.4056576 -71.5111689)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217765', 'Plato Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4042687, -71.5092243, ST_GeomFromText('POINT(41.4042687 -71.5092243)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217766', 'Beach Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4067688, -71.5042242, ST_GeomFromText('POINT(41.4067688 -71.5042242)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217768', 'Crown Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4095464, -71.5064465, ST_GeomFromText('POINT(41.4095464 -71.5064465)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217769', 'Toby Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4101021, -71.5000575, ST_GeomFromText('POINT(41.4101021 -71.5000575)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217770', 'Smelt Brook Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.412602, -71.5106134, ST_GeomFromText('POINT(41.412602 -71.5106134)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217771', 'Buttonwood Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4142687, -71.5078356, ST_GeomFromText('POINT(41.4142687 -71.5078356)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217772', 'Smelt Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.413713, -71.512558, ST_GeomFromText('POINT(41.413713 -71.512558)', 4326), 41.42, -71.5188889, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217773', 'Rum Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4211733, -71.5175728, ST_GeomFromText('POINT(41.4211733 -71.5175728)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217774', 'The Pots', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.418713, -71.5111692, ST_GeomFromText('POINT(41.418713 -71.5111692)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217775', 'Congdon Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4195463, -71.5078357, ST_GeomFromText('POINT(41.4195463 -71.5078357)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217776', 'Cummock Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4181576, -71.5053355, ST_GeomFromText('POINT(41.4181576 -71.5053355)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217777', 'Bull Head Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4002956, -71.5977434, ST_GeomFromText('POINT(41.4002956 -71.5977434)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217779', 'Broad Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4117786, -71.5620621, ST_GeomFromText('POINT(41.4117786 -71.5620621)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217780', 'Wash Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4007099, -71.5505576, ST_GeomFromText('POINT(41.4007099 -71.5505576)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217781', 'Little Wash Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4020173, -71.5456, ST_GeomFromText('POINT(41.4020173 -71.5456)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217782', 'Cedar Swamp Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.405136, -71.5413427, ST_GeomFromText('POINT(41.405136 -71.5413427)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217783', 'The Hills', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4117936, -71.5401238, ST_GeomFromText('POINT(41.4117936 -71.5401238)', 4326), NULL, NULL, '1976-05-21', '2024-07-12', 'Official', 'Board Decision', '1930-01-01'),
  ('1217784', 'Spectacle Ponds', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4100098, -71.5489341, ST_GeomFromText('POINT(41.4100098 -71.5489341)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217785', 'Hot House Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4100847, -71.5425557, ST_GeomFromText('POINT(41.4100847 -71.5425557)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217786', 'Long Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4104059, -71.5535188, ST_GeomFromText('POINT(41.4104059 -71.5535188)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217787', 'Round Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4160328, -71.555432, ST_GeomFromText('POINT(41.4160328 -71.555432)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217788', 'White Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4150468, -71.5452424, ST_GeomFromText('POINT(41.4150468 -71.5452424)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217789', 'Peddlers Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4183601, -71.5375553, ST_GeomFromText('POINT(41.4183601 -71.5375553)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217790', 'Turtle Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4193415, -71.5455237, ST_GeomFromText('POINT(41.4193415 -71.5455237)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217791', 'Tucker Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4221981, -71.5519319, ST_GeomFromText('POINT(41.4221981 -71.5519319)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217792', 'Alewife Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4289902, -71.5689493, ST_GeomFromText('POINT(41.4289902 -71.5689493)', 4326), 41.4244444, -71.5125, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217795', 'Little Sugarloaf Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4315859, -71.5327962, ST_GeomFromText('POINT(41.4315859 -71.5327962)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217796', 'Sugarloaf Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4346342, -71.5106132, ST_GeomFromText('POINT(41.4346342 -71.5106132)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217797', 'Browns Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4214907, -71.5186695, ST_GeomFromText('POINT(41.4214907 -71.5186695)', 4326), 41.4397222, -71.5291667, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217798', 'Worden Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4391225, -71.5748279, ST_GeomFromText('POINT(41.4391225 -71.5748279)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217799', 'Knowles Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4403791, -71.5642271, ST_GeomFromText('POINT(41.4403791 -71.5642271)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217800', 'Stony Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4437122, -71.5778388, ST_GeomFromText('POINT(41.4437122 -71.5778388)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217801', 'Case Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4434344, -71.5856169, ST_GeomFromText('POINT(41.4434344 -71.5856169)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217803', 'Rocky Brook Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4552255, -71.5080238, ST_GeomFromText('POINT(41.4552255 -71.5080238)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217804', 'Peace Dale Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4503288, -71.5138213, ST_GeomFromText('POINT(41.4503288 -71.5138213)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217806', 'Asa Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4592255, -71.5130686, ST_GeomFromText('POINT(41.4592255 -71.5130686)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1217807', 'Genesee Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4617679, -71.5558939, ST_GeomFromText('POINT(41.4617679 -71.5558939)', 4326), 41.4597222, -71.5291667, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217809', 'Genesee Swamp', 'Swamp', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4577096, -71.5466116, ST_GeomFromText('POINT(41.4577096 -71.5466116)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217810', 'Tobey Neck', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4490412, -71.5541864, ST_GeomFromText('POINT(41.4490412 -71.5541864)', 4326), NULL, NULL, '1976-05-21', '2024-03-30', 'Official', 'Board Decision', '1930-01-01'),
  ('1217811', 'Tefft Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4635315, -71.5373638, ST_GeomFromText('POINT(41.4635315 -71.5373638)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217813', 'White Horn Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4626012, -71.5533938, ST_GeomFromText('POINT(41.4626012 -71.5533938)', 4326), 41.4819444, -71.525, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217814', 'Thirty Acre Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4911267, -71.545377, ST_GeomFromText('POINT(41.4911267 -71.545377)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217816', 'Larkin Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4699606, -71.5571346, ST_GeomFromText('POINT(41.4699606 -71.5571346)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217819', 'Chipuxet River', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4492679, -71.5597827, ST_GeomFromText('POINT(41.4492679 -71.5597827)', 4326), 41.5392677, -71.5203379, '1976-05-21', NULL, 'Official', 'Board Decision', '1972-01-01'),
  ('1217820', 'Hazard Beach', 'Beach', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4598249, -71.3253285, ST_GeomFromText('POINT(41.4598249 -71.3253285)', 4326), NULL, NULL, '1976-05-21', '2010-02-04', 'Official', 'Board Decision', '1971-10-12'),
  ('1217821', 'Usquepaug River', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4528786, -71.6083957, ST_GeomFromText('POINT(41.4528786 -71.6083957)', 4326), 41.5034338, -71.607841, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217822', 'Great Neck', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4508639, -71.5902132, ST_GeomFromText('POINT(41.4508639 -71.5902132)', 4326), NULL, NULL, '1976-05-21', '2024-03-30', 'Official', 'Board Decision', '1930-01-01'),
  ('1217823', 'Great Swamp', 'Swamp', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4582761, -71.5706802, ST_GeomFromText('POINT(41.4582761 -71.5706802)', 4326), NULL, NULL, '1976-05-21', '2018-05-16', 'Official', 'Board Decision', '1930-01-01'),
  ('1217824', 'Lily Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.404673, -71.5462175, ST_GeomFromText('POINT(41.404673 -71.5462175)', 4326), NULL, NULL, '1976-05-21', '2021-06-30', 'Official', 'Board Decision', '1930-01-01'),
  ('1217825', 'Mink Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4345457, -71.5647826, ST_GeomFromText('POINT(41.4345457 -71.5647826)', 4326), 41.4347222, -71.5380556, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217826', 'Cormorant Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.460381, -71.2472696, ST_GeomFromText('POINT(41.460381 -71.2472696)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217827', 'Sachuest Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4723252, -71.2475476, ST_GeomFromText('POINT(41.4723252 -71.2475476)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217828', 'Island Rocks', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4814919, -71.235325, ST_GeomFromText('POINT(41.4814919 -71.235325)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217829', 'Flint Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4859362, -71.2369918, ST_GeomFromText('POINT(41.4859362 -71.2369918)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217831', 'Woods Castle', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4992694, -71.2417144, ST_GeomFromText('POINT(41.4992694 -71.2417144)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217832', 'Church Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4998252, -71.2064353, ST_GeomFromText('POINT(41.4998252 -71.2064353)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217833', 'Church Cove', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4826034, -71.1925457, ST_GeomFromText('POINT(41.4826034 -71.1925457)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217834', 'Breakwater Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.464548, -71.1964344, ST_GeomFromText('POINT(41.464548 -71.1964344)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217835', 'Sakonnet Harbor', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4653814, -71.1939343, ST_GeomFromText('POINT(41.4653814 -71.1939343)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217837', 'Watch House Pond', 'Lake', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4591307, -71.1929087, ST_GeomFromText('POINT(41.4591307 -71.1929087)', 4326), NULL, NULL, '1976-05-21', '2018-05-16', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217838', 'Long Pond', 'Lake', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4655666, -71.1791028, ST_GeomFromText('POINT(41.4655666 -71.1791028)', 4326), NULL, NULL, '1976-05-21', '2018-05-16', 'Official', 'Board Decision', '1930-01-01'),
  ('1217839', 'Long Pond Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4603817, -71.175878, ST_GeomFromText('POINT(41.4603817 -71.175878)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217840', 'Mill Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4598261, -71.1806004, ST_GeomFromText('POINT(41.4598261 -71.1806004)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217841', 'Warren Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.461215, -71.1686556, ST_GeomFromText('POINT(41.461215 -71.1686556)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217842', 'Cullywaugh Rocks', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4584373, -71.1700445, ST_GeomFromText('POINT(41.4584373 -71.1700445)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217843', 'Sakonnet Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4542705, -71.1947675, ST_GeomFromText('POINT(41.4542705 -71.1947675)', 4326), NULL, NULL, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1930-01-01'),
  ('1217844', 'East Island', 'Island', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.451215, -71.1928229, ST_GeomFromText('POINT(41.451215 -71.1928229)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217845', 'West Island', 'Island', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.449826, -71.1983787, ST_GeomFromText('POINT(41.449826 -71.1983787)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217846', 'Briggs Marsh', 'Lake', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.477928, -71.1657306, ST_GeomFromText('POINT(41.477928 -71.1657306)', 4326), NULL, NULL, '1976-05-21', '2018-05-16', 'Official', 'Board Decision', '1963-01-01'),
  ('1217848', 'Briggs Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4764928, -71.1505995, ST_GeomFromText('POINT(41.4764928 -71.1505995)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217849', 'Halfway Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4678819, -71.1430991, ST_GeomFromText('POINT(41.4678819 -71.1430991)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217850', 'Little Pond Cove', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4806595, -71.1447661, ST_GeomFromText('POINT(41.4806595 -71.1447661)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1972-01-01'),
  ('1217852', 'Dundery Brook', 'Stream', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4842703, -71.1667114, ST_GeomFromText('POINT(41.4842703 -71.1667114)', 4326), 41.5192698, -71.1864346, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217853', 'Sisson Brook', 'Stream', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4992703, -71.1430996, ST_GeomFromText('POINT(41.4992703 -71.1430996)', 4326), 41.5189922, -71.1617115, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217854', 'Tunipus Pond', 'Lake', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4969232, -71.1396577, ST_GeomFromText('POINT(41.4969232 -71.1396577)', 4326), NULL, NULL, '1976-05-21', '2018-05-16', 'Official', 'Board Decision', '1930-01-01'),
  ('1217856', 'Yawgoog Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Voluntown', 41.5195591, -71.7849418, ST_GeomFromText('POINT(41.5195591 -71.7849418)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217857', 'Phillips Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Voluntown', 41.5170435, -71.7850696, ST_GeomFromText('POINT(41.5170435 -71.7850696)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217858', 'Ell Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Voluntown', 41.505987, -71.7813906, ST_GeomFromText('POINT(41.505987 -71.7813906)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217859', 'Long Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Voluntown', 41.5065449, -71.7733223, ST_GeomFromText('POINT(41.5065449 -71.7733223)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217860', 'Wincheck Pond', 'Reservoir', 'Rhode Island', 'RI', 'Washington', 'Voluntown', 41.5159062, -71.7715898, ST_GeomFromText('POINT(41.5159062 -71.7715898)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-02-05');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217861', 'Ashville Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Voluntown', 41.5008654, -71.7560768, ST_GeomFromText('POINT(41.5008654 -71.7560768)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217863', 'Log House Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Voluntown', 41.524266, -71.7559021, ST_GeomFromText('POINT(41.524266 -71.7559021)', 4326), 41.55, -71.7819444, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217864', 'Grassy Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Voluntown', 41.5384108, -71.7753185, ST_GeomFromText('POINT(41.5384108 -71.7753185)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217865', 'Dye Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Voluntown', 41.5537018, -71.7736796, ST_GeomFromText('POINT(41.5537018 -71.7736796)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217866', 'Deep Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Voluntown', 41.5602011, -71.7619242, ST_GeomFromText('POINT(41.5602011 -71.7619242)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217867', 'Beach Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Voluntown', 41.571271, -71.7841725, ST_GeomFromText('POINT(41.571271 -71.7841725)', 4326), NULL, NULL, '1976-05-21', '2023-03-29', 'Official', 'Board Decision', '1930-01-01'),
  ('1217868', 'Tippecansett Pond', 'Lake', 'Rhode Island', 'RI', 'Kent', 'Voluntown', 41.5982704, -71.783754, ST_GeomFromText('POINT(41.5982704 -71.783754)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217870', 'Stepstone Falls', 'Falls', 'Rhode Island', 'RI', 'Washington', 'Voluntown', 41.611766, -71.7603468, ST_GeomFromText('POINT(41.611766 -71.7603468)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217871', 'Upper Deep Hole', 'Lake', 'Rhode Island', 'RI', 'Kent', 'Voluntown', 41.6174855, -71.7703749, ST_GeomFromText('POINT(41.6174855 -71.7703749)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217872', 'Kelley Brook', 'Stream', 'Rhode Island', 'RI', 'Kent', 'Voluntown', 41.6039882, -71.7509022, ST_GeomFromText('POINT(41.6039882 -71.7509022)', 4326), 41.6312103, -71.7711805, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217873', 'Blue Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Voluntown', 41.5105679, -71.7504795, ST_GeomFromText('POINT(41.5105679 -71.7504795)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217874', 'Fenner Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.5075909, -71.7367339, ST_GeomFromText('POINT(41.5075909 -71.7367339)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217876', 'Moscow Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.5242662, -71.7303456, ST_GeomFromText('POINT(41.5242662 -71.7303456)', 4326), 41.540377, -71.7745137, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217879', 'Brushy Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.5053774, -71.715345, ST_GeomFromText('POINT(41.5053774 -71.715345)', 4326), 41.5542659, -71.7814584, '1976-05-21', NULL, 'Official', 'Board Decision', '1972-01-01'),
  ('1217880', 'Goat Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.522044, -71.7178451, ST_GeomFromText('POINT(41.522044 -71.7178451)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217881', 'Locustville Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.5163319, -71.7207839, ST_GeomFromText('POINT(41.5163319 -71.7207839)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217883', 'Canob Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.515732, -71.6923147, ST_GeomFromText('POINT(41.515732 -71.6923147)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217884', 'Moonshine Swamp', 'Swamp', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.5236234, -71.6823797, ST_GeomFromText('POINT(41.5236234 -71.6823797)', 4326), NULL, NULL, '1976-05-21', '2018-05-16', 'Official', 'Board Decision', '1930-01-01'),
  ('1217885', 'Bailey Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.5101427, -71.6501848, ST_GeomFromText('POINT(41.5101427 -71.6501848)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217886', 'Long Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.5079151, -71.6462732, ST_GeomFromText('POINT(41.5079151 -71.6462732)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217887', 'No Bottom Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.5093654, -71.6449987, ST_GeomFromText('POINT(41.5093654 -71.6449987)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217889', 'Woody Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.5565824, -71.7493012, ST_GeomFromText('POINT(41.5565824 -71.7493012)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217890', 'Dawley Swamp', 'Swamp', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.5475727, -71.731496, ST_GeomFromText('POINT(41.5475727 -71.731496)', 4326), NULL, NULL, '1976-05-21', '2018-05-16', 'Official', 'Board Decision', '1930-01-01'),
  ('1217891', 'Skunk Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.542591, -71.7259003, ST_GeomFromText('POINT(41.542591 -71.7259003)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217892', 'Frying Pan Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.54862, -71.70199, ST_GeomFromText('POINT(41.54862 -71.70199)', 4326), NULL, NULL, '1976-05-21', '2024-10-02', 'Official', 'Board Decision', '1930-01-01'),
  ('1217893', 'Roaring Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.5492663, -71.705067, ST_GeomFromText('POINT(41.5492663 -71.705067)', 4326), 41.5991667, -71.6597222, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217894', 'Browning Mill Pond', 'Reservoir', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.5581102, -71.6895624, ST_GeomFromText('POINT(41.5581102 -71.6895624)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217895', 'Baker Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.5420441, -71.6967333, ST_GeomFromText('POINT(41.5420441 -71.6967333)', 4326), 41.5416667, -71.6755556, '1976-05-21', NULL, 'Official', 'Board Decision', '1972-01-01'),
  ('1217897', 'Tefft Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.555647, -71.667565, ST_GeomFromText('POINT(41.555647 -71.667565)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217898', 'Woody Hill Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.5639884, -71.7278456, ST_GeomFromText('POINT(41.5639884 -71.7278456)', 4326), 41.5612104, -71.7620134, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217899', 'Parris Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.5667254, -71.7151028, ST_GeomFromText('POINT(41.5667254 -71.7151028)', 4326), 41.5999922, -71.7788961, '1976-05-21', '2021-02-03', 'Official', 'Board Decision', '1930-01-01'),
  ('1217900', 'Deep Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.5610732, -71.7169149, ST_GeomFromText('POINT(41.5610732 -71.7169149)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-02-05'),
  ('1217901', 'Bald Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.5641167, -71.7025471, ST_GeomFromText('POINT(41.5641167 -71.7025471)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217903', 'James Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.5763233, -71.6401955, ST_GeomFromText('POINT(41.5763233 -71.6401955)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217904', 'Pine Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5776058, -71.6235811, ST_GeomFromText('POINT(41.5776058 -71.6235811)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217905', 'Mount Tom', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.5820861, -71.7417425, ST_GeomFromText('POINT(41.5820861 -71.7417425)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217906', 'Flat River', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.5778773, -71.7203454, ST_GeomFromText('POINT(41.5778773 -71.7203454)', 4326), 41.6094444, -71.7219444, '1976-05-21', NULL, 'Official', 'Board Decision', '1972-01-01'),
  ('1217907', 'Phillips Brook', 'Stream', 'Rhode Island', 'RI', 'Kent', 'Hope Valley', 41.6095439, -71.7214566, ST_GeomFromText('POINT(41.6095439 -71.7214566)', 4326), 41.6478772, -71.7367351, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1972-01-01'),
  ('1217908', 'Phillips Pond', 'Lake', 'Rhode Island', 'RI', 'Kent', 'Hope Valley', 41.6216433, -71.7319207, ST_GeomFromText('POINT(41.6216433 -71.7319207)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217909', 'Eisenhower Lake', 'Lake', 'Rhode Island', 'RI', 'Kent', 'Hope Valley', 41.6214111, -71.7160827, ST_GeomFromText('POINT(41.6214111 -71.7160827)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217910', 'Factory Brook', 'Stream', 'Rhode Island', 'RI', 'Kent', 'Hope Valley', 41.6117662, -71.7209011, ST_GeomFromText('POINT(41.6117662 -71.7209011)', 4326), 41.6487106, -71.71729, '1976-05-21', NULL, 'Official', 'Board Decision', '1972-01-01'),
  ('1217911', 'Breakheart Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.5845439, -71.715623, ST_GeomFromText('POINT(41.5845439 -71.715623)', 4326), 41.6523218, -71.7017338, '1976-05-21', NULL, 'Official', 'Board Decision', '1972-01-01'),
  ('1217912', 'Breakheart Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.5984266, -71.7012847, ST_GeomFromText('POINT(41.5984266 -71.7012847)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217913', 'Breakheart Hill', 'Summit', 'Rhode Island', 'RI', 'Kent', 'Hope Valley', 41.5995036, -71.6781436, ST_GeomFromText('POINT(41.5995036 -71.6781436)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1972-01-01'),
  ('1217914', 'Wyoming Pond', 'Reservoir', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.5196377, -71.697271, ST_GeomFromText('POINT(41.5196377 -71.697271)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217915', 'Raccoon Hill', 'Summit', 'Rhode Island', 'RI', 'Kent', 'Hope Valley', 41.6187024, -71.6692318, ST_GeomFromText('POINT(41.6187024 -71.6692318)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217916', 'Austin Farm Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.5943035, -71.6669919, ST_GeomFromText('POINT(41.5943035 -71.6669919)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1972-01-01'),
  ('1217917', 'Boon Lake', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.5829956, -71.6738003, ST_GeomFromText('POINT(41.5829956 -71.6738003)', 4326), NULL, NULL, '1976-05-21', '2015-04-17', 'Official', 'Board Decision', '1972-01-01'),
  ('1217919', 'Nooseneck Hill', 'Summit', 'Rhode Island', 'RI', 'Kent', 'Hope Valley', 41.6123678, -71.6405159, ST_GeomFromText('POINT(41.6123678 -71.6405159)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217920', 'Robin Hollow', 'Valley', 'Rhode Island', 'RI', 'Kent', 'Hope Valley', 41.6209271, -71.6586758, ST_GeomFromText('POINT(41.6209271 -71.6586758)', 4326), 41.6185243, -71.6506846, '1976-05-21', '2016-12-16', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217921', 'Robin Hollow Pond', 'Reservoir', 'Rhode Island', 'RI', 'Kent', 'Hope Valley', 41.6181687, -71.6500849, ST_GeomFromText('POINT(41.6181687 -71.6500849)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1217922', 'Pine Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5070362, -71.6220075, ST_GeomFromText('POINT(41.5070362 -71.6220075)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217924', 'Glen Rock Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5083988, -71.6043025, ST_GeomFromText('POINT(41.5083988 -71.6043025)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217925', 'Glen Rock Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5156561, -71.6022853, ST_GeomFromText('POINT(41.5156561 -71.6022853)', 4326), 41.5412113, -71.6258974, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217926', 'Rake Factory Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5178783, -71.5981185, ST_GeomFromText('POINT(41.5178783 -71.5981185)', 4326), 41.5336111, -71.6030556, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217927', 'Sherman Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5170449, -71.6045076, ST_GeomFromText('POINT(41.5170449 -71.6045076)', 4326), 41.5466667, -71.6111111, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217928', 'Locke Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5248228, -71.5833958, ST_GeomFromText('POINT(41.5248228 -71.5833958)', 4326), 41.5666667, -71.6213889, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217929', 'Queen River', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5153783, -71.6022853, ST_GeomFromText('POINT(41.5153783 -71.6022853)', 4326), 41.6111111, -71.5541667, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217930', 'Locke Swamp', 'Swamp', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5245357, -71.5737914, ST_GeomFromText('POINT(41.5245357 -71.5737914)', 4326), NULL, NULL, '1976-05-21', '2018-05-16', 'Official', 'Board Decision', '1930-01-01'),
  ('1217931', 'Arrow Swamp', 'Swamp', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5251752, -71.5578301, ST_GeomFromText('POINT(41.5251752 -71.5578301)', 4326), NULL, NULL, '1976-05-21', '2018-05-16', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217932', 'Chickasheen Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4617675, -71.5967288, ST_GeomFromText('POINT(41.4617675 -71.5967288)', 4326), 41.5226009, -71.5520057, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217933', 'Yawgoo Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5110834, -71.5729965, ST_GeomFromText('POINT(41.5110834 -71.5729965)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217934', 'Mud Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5053786, -71.5658951, ST_GeomFromText('POINT(41.5053786 -71.5658951)', 4326), 41.5130556, -71.5558333, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217935', 'Wolf Rocks', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.513699, -71.5392279, ST_GeomFromText('POINT(41.513699 -71.5392279)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217936', 'Yorker Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5262425, -71.5374516, ST_GeomFromText('POINT(41.5262425 -71.5374516)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1972-01-01'),
  ('1217939', 'Sherman Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.504163, -71.514612, ST_GeomFromText('POINT(41.504163 -71.514612)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217940', 'Dumping Rock', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.536077, -71.5226025, ST_GeomFromText('POINT(41.536077 -71.5226025)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217941', 'The Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5402297, -71.5270484, ST_GeomFromText('POINT(41.5402297 -71.5270484)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217942', 'Huckleberry Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5509258, -71.5164482, ST_GeomFromText('POINT(41.5509258 -71.5164482)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217943', 'Queens Fort Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5495451, -71.5572838, ST_GeomFromText('POINT(41.5495451 -71.5572838)', 4326), 41.5952778, -71.5236111, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217944', 'Casey Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5723141, -71.5986736, ST_GeomFromText('POINT(41.5723141 -71.5986736)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217945', 'Sodom Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5551008, -71.553117, ST_GeomFromText('POINT(41.5551008 -71.553117)', 4326), 41.58, -71.6011111, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217946', 'Dawley Pond', 'Reservoir', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5653724, -71.5771466, ST_GeomFromText('POINT(41.5653724 -71.5771466)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217947', 'Hallville Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.566233, -71.5712456, ST_GeomFromText('POINT(41.566233 -71.5712456)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217949', 'Dutemple Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5734339, -71.5678398, ST_GeomFromText('POINT(41.5734339 -71.5678398)', 4326), 41.5888889, -71.59, '2002-08-27', '2011-08-26', 'Official', 'Board Decision', '1930-02-05'),
  ('1217950', 'Fisherville Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5681562, -71.5658953, ST_GeomFromText('POINT(41.5681562 -71.5658953)', 4326), 41.6219444, -71.5825, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217951', 'Maidford River', 'Stream', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4912139, -71.2472701, ST_GeomFromText('POINT(41.4912139 -71.2472701)', 4326), 41.5292691, -71.2706045, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1972-01-01'),
  ('1217952', 'Edwards Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5825599, -71.5409765, ST_GeomFromText('POINT(41.5825599 -71.5409765)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1217953', 'Exeter Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5790028, -71.5357351, ST_GeomFromText('POINT(41.5790028 -71.5357351)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217954', 'Reuben Brown Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5809341, -71.5272829, ST_GeomFromText('POINT(41.5809341 -71.5272829)', 4326), 41.5988889, -71.53, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217955', 'Millbrook Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.5926181, -71.625645, ST_GeomFromText('POINT(41.5926181 -71.625645)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1972-01-01'),
  ('1217956', 'Money Swamp Pond', 'Reservoir', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5925871, -71.6147318, ST_GeomFromText('POINT(41.5925871 -71.6147318)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1217957', 'Rathbon Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.6007182, -71.6200544, ST_GeomFromText('POINT(41.6007182 -71.6200544)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1217958', 'Congdon River', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.6206557, -71.6208975, ST_GeomFromText('POINT(41.6206557 -71.6208975)', 4326), 41.5947222, -71.6233333, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217959', 'Nooseneck River', 'Stream', 'Rhode Island', 'RI', 'Kent', 'Slocum', 41.6206557, -71.6208975, ST_GeomFromText('POINT(41.6206557 -71.6208975)', 4326), 41.6623219, -71.6728439, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217960', 'Pendock Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5945449, -71.5786737, ST_GeomFromText('POINT(41.5945449 -71.5786737)', 4326), 41.61, -71.5713889, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217961', 'Shrub Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5965929, -71.5660646, ST_GeomFromText('POINT(41.5965929 -71.5660646)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217962', 'Hopkins Hill', 'Summit', 'Rhode Island', 'RI', 'Kent', 'Slocum', 41.620482, -71.5752334, ST_GeomFromText('POINT(41.620482 -71.5752334)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217963', 'Dead Swamp', 'Swamp', 'Rhode Island', 'RI', 'Kent', 'Slocum', 41.6135962, -71.552203, ST_GeomFromText('POINT(41.6135962 -71.552203)', 4326), NULL, NULL, '1976-05-21', '2022-08-02', 'Official', 'Board Decision', '1930-01-01'),
  ('1217964', 'Scrabbletown Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5937121, -71.4958928, ST_GeomFromText('POINT(41.5937121 -71.4958928)', 4326), 41.6087118, -71.5281163, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217965', 'Buttonwood Corner', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.5278778, -71.6661766, ST_GeomFromText('POINT(41.5278778 -71.6661766)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217966', 'Kettle Bottom Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4726023, -71.3725531, ST_GeomFromText('POINT(41.4726023 -71.3725531)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217967', 'West Cove', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4773245, -71.3603304, ST_GeomFromText('POINT(41.4773245 -71.3603304)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217968', 'The Dumplings', 'Summit', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4796231, -71.3590708, ST_GeomFromText('POINT(41.4796231 -71.3590708)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217970', 'Fort Cove', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4789912, -71.3575526, ST_GeomFromText('POINT(41.4789912 -71.3575526)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217972', 'Bull Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4806579, -71.3550525, ST_GeomFromText('POINT(41.4806579 -71.3550525)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217973', 'Mitchell Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4951022, -71.3400521, ST_GeomFromText('POINT(41.4951022 -71.3400521)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217974', 'Rose Island', 'Island', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4964911, -71.3411633, ST_GeomFromText('POINT(41.4964911 -71.3411633)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217975', 'Citing Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4989911, -71.337552, ST_GeomFromText('POINT(41.4989911 -71.337552)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217976', 'Butter Ball Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4603803, -71.3636636, ST_GeomFromText('POINT(41.4603803 -71.3636636)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217977', 'Ragged Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4614914, -71.3625525, ST_GeomFromText('POINT(41.4614914 -71.3625525)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217978', 'Rams Head', 'Cliff', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4637136, -71.3631081, ST_GeomFromText('POINT(41.4637136 -71.3631081)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217979', 'Castle Hill', 'Summit', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4632959, -71.3610939, ST_GeomFromText('POINT(41.4632959 -71.3610939)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1217980', 'Castle Hill Cove', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4648247, -71.3589412, ST_GeomFromText('POINT(41.4648247 -71.3589412)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217981', 'Point of Trees', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4695468, -71.3531077, ST_GeomFromText('POINT(41.4695468 -71.3531077)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217984', 'Brenton Cove', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4748247, -71.3331069, ST_GeomFromText('POINT(41.4748247 -71.3331069)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217985', 'Newport Harbor', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4826025, -71.3256067, ST_GeomFromText('POINT(41.4826025 -71.3256067)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217987', 'Brenton Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4487138, -71.3550519, ST_GeomFromText('POINT(41.4487138 -71.3550519)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217988', 'Graves Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4501027, -71.3514406, ST_GeomFromText('POINT(41.4501027 -71.3514406)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217989', 'Black Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4492694, -71.3497739, ST_GeomFromText('POINT(41.4492694 -71.3497739)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1217990', 'Seal Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4442695, -71.3461626, ST_GeomFromText('POINT(41.4442695 -71.3461626)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217991', 'Price Neck', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4531583, -71.3394957, ST_GeomFromText('POINT(41.4531583 -71.3394957)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217992', 'Goose Neck Cove', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4573249, -71.3331066, ST_GeomFromText('POINT(41.4573249 -71.3331066)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217993', 'Newport Neck', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4648249, -71.3269954, ST_GeomFromText('POINT(41.4648249 -71.3269954)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217994', 'Cherry Neck', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4562138, -71.3308843, ST_GeomFromText('POINT(41.4562138 -71.3308843)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217995', 'Lily Pond', 'Lake', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4632056, -71.3203689, ST_GeomFromText('POINT(41.4632056 -71.3203689)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1217996', 'Almy Pond', 'Lake', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4612247, -71.3122686, ST_GeomFromText('POINT(41.4612247 -71.3122686)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1217997', 'Roaring Bull', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4506584, -71.3328287, ST_GeomFromText('POINT(41.4506584 -71.3328287)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1217998', 'Gooseberry Island', 'Island', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4534361, -71.3253284, ST_GeomFromText('POINT(41.4534361 -71.3253284)', 4326), NULL, NULL, '1976-05-21', '2011-08-11', 'Official', 'Board Decision', '1930-01-01'),
  ('1217999', 'Spouting Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.454825, -71.3211617, ST_GeomFromText('POINT(41.454825 -71.3211617)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218000', 'Bailey Beach', 'Beach', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4564917, -71.3131057, ST_GeomFromText('POINT(41.4564917 -71.3131057)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218001', 'Lands End', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4514918, -71.3125501, ST_GeomFromText('POINT(41.4514918 -71.3125501)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218002', 'Coggeshall Ledge', 'Bench', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4506585, -71.3078276, ST_GeomFromText('POINT(41.4506585 -71.3078276)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218003', 'Midship Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4531585, -71.3058832, ST_GeomFromText('POINT(41.4531585 -71.3058832)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218004', 'Rough Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4545473, -71.3044942, ST_GeomFromText('POINT(41.4545473 -71.3044942)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218005', 'Gull Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4592696, -71.2997719, ST_GeomFromText('POINT(41.4592696 -71.2997719)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218006', 'Sheep Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4601029, -71.302272, ST_GeomFromText('POINT(41.4601029 -71.302272)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218007', 'Sheep Point Cove', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4637139, -71.3006053, ST_GeomFromText('POINT(41.4637139 -71.3006053)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218008', 'Ochre Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4692695, -71.2964385, ST_GeomFromText('POINT(41.4692695 -71.2964385)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218009', 'Forty Steps', 'Cliff', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.475936, -71.2972721, ST_GeomFromText('POINT(41.475936 -71.2972721)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218010', 'Easton Bay', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4812138, -71.288105, ST_GeomFromText('POINT(41.4812138 -71.288105)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218011', 'Marys Seat', 'Cliff', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4839915, -71.2967166, ST_GeomFromText('POINT(41.4839915 -71.2967166)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218012', 'Easton Beach', 'Beach', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4876026, -71.2911609, ST_GeomFromText('POINT(41.4876026 -71.2911609)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1959-01-01'),
  ('1218013', 'Easton Pond', 'Reservoir', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4913659, -71.2927351, ST_GeomFromText('POINT(41.4913659 -71.2927351)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1959-01-01'),
  ('1218014', 'Green End Pond', 'Reservoir', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.498292, -71.2897084, ST_GeomFromText('POINT(41.498292 -71.2897084)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1959-01-01'),
  ('1218015', 'Easton Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4795472, -71.2742155, ST_GeomFromText('POINT(41.4795472 -71.2742155)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218016', 'Long Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.482325, -71.2700488, ST_GeomFromText('POINT(41.482325 -71.2700488)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218017', 'The Bluff', 'Cliff', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4839916, -71.2694932, ST_GeomFromText('POINT(41.4839916 -71.2694932)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218018', 'Purgatory', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4864916, -71.2675487, ST_GeomFromText('POINT(41.4864916 -71.2675487)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218019', 'Sheep Pen Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4745474, -71.2503255, ST_GeomFromText('POINT(41.4745474 -71.2503255)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218020', 'Nelson Pond', 'Reservoir', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4938509, -71.2623936, ST_GeomFromText('POINT(41.4938509 -71.2623936)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218021', 'Hanging Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4917694, -71.2583817, ST_GeomFromText('POINT(41.4917694 -71.2583817)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218022', 'Gardiner Pond', 'Reservoir', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4915977, -71.2540467, ST_GeomFromText('POINT(41.4915977 -71.2540467)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218023', 'Congdon Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5259837, -71.4872816, ST_GeomFromText('POINT(41.5259837 -71.4872816)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218024', 'Ridge Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5226271, -71.4697987, ST_GeomFromText('POINT(41.5226271 -71.4697987)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218025', 'Hammond Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5189819, -71.4578345, ST_GeomFromText('POINT(41.5189819 -71.4578345)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218028', 'Great Creek', 'Stream', 'Rhode Island', 'RI', 'Newport', 'Wickford', 41.5056576, -71.3789427, ST_GeomFromText('POINT(41.5056576 -71.3789427)', 4326), 41.5097222, -71.3722222, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218029', 'Jamestown Brook', 'Stream', 'Rhode Island', 'RI', 'Newport', 'Wickford', 41.5089908, -71.3831096, ST_GeomFromText('POINT(41.5089908 -71.3831096)', 4326), 41.5351019, -71.3700536, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218031', 'The Brothers', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Wickford', 41.5278796, -71.3917211, ST_GeomFromText('POINT(41.5278796 -71.3917211)', 4326), NULL, NULL, '1976-05-21', '2011-08-05', NULL, NULL, NULL),
  ('1218033', 'Great Ledge', 'Bench', 'Rhode Island', 'RI', 'Newport', 'Wickford', 41.534824, -71.3897766, ST_GeomFromText('POINT(41.534824 -71.3897766)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218034', 'Fowler Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Wickford', 41.5353796, -71.3903322, ST_GeomFromText('POINT(41.5353796 -71.3903322)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218035', 'Dick Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Wickford', 41.537324, -71.3889432, ST_GeomFromText('POINT(41.537324 -71.3889432)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218036', 'Sinker Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Wickford', 41.5412129, -71.3875544, ST_GeomFromText('POINT(41.5412129 -71.3875544)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218037', 'America Ledge', 'Bench', 'Rhode Island', 'RI', 'Newport', 'Wickford', 41.548435, -71.3883877, ST_GeomFromText('POINT(41.548435 -71.3883877)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218038', 'Sand Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Wickford', 41.5578795, -71.3847765, ST_GeomFromText('POINT(41.5578795 -71.3847765)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218039', 'Hull Ledge', 'Bench', 'Rhode Island', 'RI', 'Newport', 'Wickford', 41.5603795, -71.3844986, ST_GeomFromText('POINT(41.5603795 -71.3844986)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218041', 'Red Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5381572, -71.4186669, ST_GeomFromText('POINT(41.5381572 -71.4186669)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218042', 'Greene Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5356572, -71.4181112, ST_GeomFromText('POINT(41.5356572 -71.4181112)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218043', 'Old Sergeant', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5342684, -71.4142222, ST_GeomFromText('POINT(41.5342684 -71.4142222)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218045', 'Plum Beach Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5301017, -71.4153333, ST_GeomFromText('POINT(41.5301017 -71.4153333)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1978-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218046', 'Plum Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5245461, -71.4186668, ST_GeomFromText('POINT(41.5245461 -71.4186668)', 4326), NULL, NULL, '1976-05-21', '2008-05-12', 'Official', 'Board Decision', '1930-01-01'),
  ('1218047', 'Barber Heights', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5237127, -71.4258894, ST_GeomFromText('POINT(41.5237127 -71.4258894)', 4326), NULL, NULL, '1976-05-21', '2024-03-30', 'Official', 'Board Decision', '1930-01-01'),
  ('1218048', 'Packard Rocks', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5176017, -71.4150556, ST_GeomFromText('POINT(41.5176017 -71.4150556)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218049', 'Casey Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5128795, -71.4147777, ST_GeomFromText('POINT(41.5128795 -71.4147777)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218050', 'Stook Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.531498, -71.4525578, ST_GeomFromText('POINT(41.531498 -71.4525578)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218052', 'Silver Spring Lake', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.536272, -71.4734748, ST_GeomFromText('POINT(41.536272 -71.4734748)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218053', 'Mattatuxet River', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5209349, -71.4445013, ST_GeomFromText('POINT(41.5209349 -71.4445013)', 4326), 41.5397222, -71.4869444, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218054', 'Kettle Hole Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5464214, -71.4905737, ST_GeomFromText('POINT(41.5464214 -71.4905737)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218056', 'Wannuchecomecut Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5442682, -71.4333898, ST_GeomFromText('POINT(41.5442682 -71.4333898)', 4326), 41.5419444, -71.4583333, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218058', 'Rome Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5484349, -71.4236671, ST_GeomFromText('POINT(41.5484349 -71.4236671)', 4326), NULL, NULL, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1930-02-05');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218059', 'The Clump', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5498238, -71.4203336, ST_GeomFromText('POINT(41.5498238 -71.4203336)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218060', 'Halfway Ledge', 'Bench', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5537127, -71.4072775, ST_GeomFromText('POINT(41.5537127 -71.4072775)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218061', 'Seal Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5528794, -71.4164445, ST_GeomFromText('POINT(41.5528794 -71.4164445)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218062', 'Fox Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5542683, -71.4183891, ST_GeomFromText('POINT(41.5542683 -71.4183891)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218063', 'The Hummocks', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5506571, -71.4289451, ST_GeomFromText('POINT(41.5506571 -71.4289451)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218064', 'Bissel Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5473237, -71.4314452, ST_GeomFromText('POINT(41.5473237 -71.4314452)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218065', 'Mill Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5487126, -71.4353343, ST_GeomFromText('POINT(41.5487126 -71.4353343)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218066', 'Annaquatucket River', 'Stream', 'Rhode Island', 'RI', 'Kent', 'Wickford', 41.5489904, -71.4361677, ST_GeomFromText('POINT(41.5489904 -71.4361677)', 4326), 41.5662121, -71.5067264, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218068', 'Mill Pond', 'Reservoir', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5505369, -71.443402, ST_GeomFromText('POINT(41.5505369 -71.443402)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1972-01-01'),
  ('1218069', 'Annaquatucket Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5538878, -71.4478797, ST_GeomFromText('POINT(41.5538878 -71.4478797)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218071', 'Secret Lake', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5545648, -71.4783784, ST_GeomFromText('POINT(41.5545648 -71.4783784)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218072', 'Oak Hill Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5576545, -71.4870645, ST_GeomFromText('POINT(41.5576545 -71.4870645)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218073', 'Pork Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5660383, -71.4946532, ST_GeomFromText('POINT(41.5660383 -71.4946532)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218074', 'Belleville Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5629894, -71.4802105, ST_GeomFromText('POINT(41.5629894 -71.4802105)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218075', 'Jenkins Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5618425, -71.4631947, ST_GeomFromText('POINT(41.5618425 -71.4631947)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218076', 'Duck Cove', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5571905, -71.4387622, ST_GeomFromText('POINT(41.5571905 -71.4387622)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218077', 'Wild Goose Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5584348, -71.4303341, ST_GeomFromText('POINT(41.5584348 -71.4303341)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218078', 'Wild Goose Ledge', 'Bench', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5581571, -71.4270006, ST_GeomFromText('POINT(41.5581571 -71.4270006)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218079', 'Cold Spring Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5653792, -71.4342232, ST_GeomFromText('POINT(41.5653792 -71.4342232)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218081', 'Wickford Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5689902, -71.4514462, ST_GeomFromText('POINT(41.5689902 -71.4514462)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218082', 'Poplar Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5709347, -71.4386679, ST_GeomFromText('POINT(41.5709347 -71.4386679)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218083', 'General Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5695459, -71.4114443, ST_GeomFromText('POINT(41.5695459 -71.4114443)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218084', 'Brig Ledge', 'Bench', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5767682, -71.4086665, ST_GeomFromText('POINT(41.5767682 -71.4086665)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218085', 'Sauga Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5770458, -71.4381123, ST_GeomFromText('POINT(41.5770458 -71.4381123)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218086', 'Fishing Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5812124, -71.4428347, ST_GeomFromText('POINT(41.5812124 -71.4428347)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218087', 'Cornelius Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5795457, -71.4461682, ST_GeomFromText('POINT(41.5795457 -71.4461682)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218088', 'Three Sisters', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5764902, -71.4453348, ST_GeomFromText('POINT(41.5764902 -71.4453348)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218089', 'Wickford Harbor', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5753792, -71.4422792, ST_GeomFromText('POINT(41.5753792 -71.4422792)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218090', 'Big Rock Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.573157, -71.4436681, ST_GeomFromText('POINT(41.573157 -71.4436681)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218091', 'Cedar Tree Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.576768, -71.4522796, ST_GeomFromText('POINT(41.576768 -71.4522796)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218092', 'Mill Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5787124, -71.4508907, ST_GeomFromText('POINT(41.5787124 -71.4508907)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218093', 'Long Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5778791, -71.4522796, ST_GeomFromText('POINT(41.5778791 -71.4522796)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218094', 'Rabbit Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5806569, -71.4539463, ST_GeomFromText('POINT(41.5806569 -71.4539463)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218095', 'Mill Creek', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5826013, -71.4514462, ST_GeomFromText('POINT(41.5826013 -71.4514462)', 4326), 41.6152778, -71.4375, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218096', 'Calf Neck', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5834346, -71.4483906, ST_GeomFromText('POINT(41.5834346 -71.4483906)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218098', 'Quonset Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5901015, -71.4042218, ST_GeomFromText('POINT(41.5901015 -71.4042218)', 4326), NULL, NULL, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1930-02-05'),
  ('1218101', 'Cocumcussoc Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.582879, -71.4578354, ST_GeomFromText('POINT(41.582879 -71.4578354)', 4326), 41.5791667, -71.4847222, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218107', 'Black Swamp', 'Swamp', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5953012, -71.4759683, ST_GeomFromText('POINT(41.5953012 -71.4759683)', 4326), NULL, NULL, '1976-05-21', '2022-08-02', 'Official', 'Board Decision', '1930-01-01'),
  ('1218108', 'Pine River', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.6092679, -71.4439459, ST_GeomFromText('POINT(41.6092679 -71.4439459)', 4326), 41.6144444, -71.4375, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218109', 'Frys Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.6035628, -71.422162, ST_GeomFromText('POINT(41.6035628 -71.422162)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1972-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218110', 'Hall Creek', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.6053791, -71.4231116, ST_GeomFromText('POINT(41.6053791 -71.4231116)', 4326), 41.6102778, -71.4286111, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218111', 'Davol Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.6105833, -71.4265842, ST_GeomFromText('POINT(41.6105833 -71.4265842)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218112', 'Old Sow Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.6198236, -71.4061665, ST_GeomFromText('POINT(41.6198236 -71.4061665)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218113', 'Spink Neck', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.6189903, -71.4103333, ST_GeomFromText('POINT(41.6189903 -71.4103333)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218114', 'Allen Harbor', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.6237124, -71.4125557, ST_GeomFromText('POINT(41.6237124 -71.4125557)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218115', 'Sandhill Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.6193037, -71.4572175, ST_GeomFromText('POINT(41.6193037 -71.4572175)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218116', 'Saw Mill Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.6142104, -71.4652909, ST_GeomFromText('POINT(41.6142104 -71.4652909)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1972-01-01'),
  ('1218119', 'Bryer Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5023243, -71.3606086, ST_GeomFromText('POINT(41.5023243 -71.3606086)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218120', 'Freebody Hill', 'Summit', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5078827, -71.36157, ST_GeomFromText('POINT(41.5078827 -71.36157)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218121', 'Round Swamp', 'Swamp', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5112131, -71.3700535, ST_GeomFromText('POINT(41.5112131 -71.3700535)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218122', 'Windmill Hill', 'Summit', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5159267, -71.3739419, ST_GeomFromText('POINT(41.5159267 -71.3739419)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218123', 'Potter Cove', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5137131, -71.3631087, ST_GeomFromText('POINT(41.5137131 -71.3631087)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218124', 'Taylor Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5109353, -71.3594974, ST_GeomFromText('POINT(41.5109353 -71.3594974)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218125', 'Coasters Harbor Island', 'Island', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5106578, -71.326996, ST_GeomFromText('POINT(41.5106578 -71.326996)', 4326), NULL, NULL, '1976-05-21', '2011-08-05', 'Official', 'Board Decision', '1930-02-05'),
  ('1218126', 'Gull Rocks', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.50288, -71.3325518, ST_GeomFromText('POINT(41.50288 -71.3325518)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218127', 'Miantonomi Hill', 'Summit', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.510496, -71.3100247, ST_GeomFromText('POINT(41.510496 -71.3100247)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1972-01-01'),
  ('1218128', 'Coasters Harbor', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5137133, -71.3239402, ST_GeomFromText('POINT(41.5137133 -71.3239402)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218130', 'Bailey Brook', 'Stream', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.505658, -71.2908833, ST_GeomFromText('POINT(41.505658 -71.2908833)', 4326), 41.5425, -71.2897222, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218132', 'Paradise Rocks', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5009359, -71.2622709, ST_GeomFromText('POINT(41.5009359 -71.2622709)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218133', 'Coddington Cove', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5234355, -71.3161622, ST_GeomFromText('POINT(41.5234355 -71.3161622)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218134', 'Coddington Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5234355, -71.3236625, ST_GeomFromText('POINT(41.5234355 -71.3236625)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218135', 'Gould Island', 'Island', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5334353, -71.3444968, ST_GeomFromText('POINT(41.5334353 -71.3444968)', 4326), NULL, NULL, '1976-05-21', '2011-08-11', 'Official', 'Board Decision', '1930-01-01'),
  ('1218136', 'Jamestown Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5312724, -71.3723052, ST_GeomFromText('POINT(41.5312724 -71.3723052)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218137', 'Cranston Cove', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5403797, -71.3644977, ST_GeomFromText('POINT(41.5403797 -71.3644977)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1978-01-01'),
  ('1218138', 'Fowler Rocks', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.533713, -71.3622754, ST_GeomFromText('POINT(41.533713 -71.3622754)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218139', 'Slate Hill', 'Summit', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5396281, -71.2660543, ST_GeomFromText('POINT(41.5396281 -71.2660543)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218141', 'Rhode Island', 'Island', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.555658, -71.2642153, ST_GeomFromText('POINT(41.555658 -71.2642153)', 4326), NULL, NULL, '1976-05-21', '2020-02-13', 'Official', 'Board Decision', '2004-06-10'),
  ('1218142', 'Saint Marys Pond', 'Lake', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5549662, -71.2702599, ST_GeomFromText('POINT(41.5549662 -71.2702599)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218143', 'Sisson Pond', 'Lake', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5522416, -71.2774103, ST_GeomFromText('POINT(41.5522416 -71.2774103)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218144', 'Lawton Valley Reservoir', 'Lake', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5651652, -71.2787477, ST_GeomFromText('POINT(41.5651652 -71.2787477)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218145', 'Lawton Valley', 'Valley', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5728857, -71.2877734, ST_GeomFromText('POINT(41.5728857 -71.2877734)', 4326), 41.5596512, -71.2811651, '1976-05-21', '2017-01-23', 'Official', 'Board Decision', '1930-01-01'),
  ('1218147', 'Halfway Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5642687, -71.3325518, ST_GeomFromText('POINT(41.5642687 -71.3325518)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218148', 'Fiske Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5670464, -71.3300517, ST_GeomFromText('POINT(41.5670464 -71.3300517)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218150', 'Conanicut Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5739906, -71.3719981, ST_GeomFromText('POINT(41.5739906 -71.3719981)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218151', 'Dyer Island', 'Island', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5828799, -71.2989391, ST_GeomFromText('POINT(41.5828799 -71.2989391)', 4326), NULL, NULL, '1976-05-21', '2011-08-11', 'Official', 'Board Decision', '1930-01-01'),
  ('1218152', 'Weaver Cove', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5776022, -71.2864385, ST_GeomFromText('POINT(41.5776022 -71.2864385)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218153', 'Quaker Hill', 'Summit', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5828443, -71.2544109, ST_GeomFromText('POINT(41.5828443 -71.2544109)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218154', 'Bloody Brook', 'Stream', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.60038, -71.2589372, ST_GeomFromText('POINT(41.60038 -71.2589372)', 4326), 41.5838889, -71.2580556, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218155', 'Turkey Hill', 'Summit', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.595606, -71.2629342, ST_GeomFromText('POINT(41.595606 -71.2629342)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218156', 'Almy Hill', 'Summit', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5997627, -71.2678259, ST_GeomFromText('POINT(41.5997627 -71.2678259)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218157', 'Melville Ponds', 'Lake', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.591446, -71.2780127, ST_GeomFromText('POINT(41.591446 -71.2780127)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218159', 'Coggeshall Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5928799, -71.285883, ST_GeomFromText('POINT(41.5928799 -71.285883)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218160', 'Crows Swamp', 'Swamp', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5962551, -71.3326515, ST_GeomFromText('POINT(41.5962551 -71.3326515)', 4326), NULL, NULL, '1976-05-21', '2022-08-02', 'Official', 'Board Decision', '1930-01-01'),
  ('1218161', 'Scup Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.6001017, -71.3650534, ST_GeomFromText('POINT(41.6001017 -71.3650534)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218162', 'Round Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5970461, -71.3697758, ST_GeomFromText('POINT(41.5970461 -71.3697758)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218163', 'Flat Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.6017683, -71.3700536, ST_GeomFromText('POINT(41.6017683 -71.3700536)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218164', 'Seal Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.6023238, -71.370887, ST_GeomFromText('POINT(41.6023238 -71.370887)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218165', 'Gooseberry Island', 'Island', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.6031572, -71.3703313, ST_GeomFromText('POINT(41.6031572 -71.3703313)', 4326), NULL, NULL, '1976-05-21', '2011-08-11', 'Official', 'Board Decision', '1930-01-01'),
  ('1218166', 'Hope Island', 'Island', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.6014905, -71.368109, ST_GeomFromText('POINT(41.6014905 -71.368109)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218167', 'Despair Island', 'Island', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.6078795, -71.361442, ST_GeomFromText('POINT(41.6078795 -71.361442)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218169', 'Prudence Island', 'Island', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.6034352, -71.3175511, ST_GeomFromText('POINT(41.6034352 -71.3175511)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218170', 'Schoolhouse Swamp', 'Swamp', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.6101897, -71.3174692, ST_GeomFromText('POINT(41.6101897 -71.3174692)', 4326), NULL, NULL, '1976-05-21', '2022-08-02', 'Official', 'Board Decision', '1930-01-01'),
  ('1218171', 'Sandy Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.6059353, -71.3025504, ST_GeomFromText('POINT(41.6059353 -71.3025504)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218172', 'Barker Brook', 'Stream', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.6081577, -71.2731045, ST_GeomFromText('POINT(41.6081577 -71.2731045)', 4326), 41.5997222, -71.2533333, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218174', 'Lehigh Hill', 'Summit', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.6100937, -71.2589366, ST_GeomFromText('POINT(41.6100937 -71.2589366)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218175', 'Butts Hill', 'Summit', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.6154204, -71.2512443, ST_GeomFromText('POINT(41.6154204 -71.2512443)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218177', 'Arnold Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.623991, -71.2719934, ST_GeomFromText('POINT(41.623991 -71.2719934)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218179', 'Little Creek', 'Stream', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.505936, -71.2400478, ST_GeomFromText('POINT(41.505936 -71.2400478)', 4326), 41.5378802, -71.2578261, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218181', 'Simmons Hill', 'Summit', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5217453, -71.1722396, ST_GeomFromText('POINT(41.5217453 -71.1722396)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218182', 'Brown Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5198251, -71.2053242, ST_GeomFromText('POINT(41.5198251 -71.2053242)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218183', 'Black Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5301027, -71.2289361, ST_GeomFromText('POINT(41.5301027 -71.2289361)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218184', 'Cotton Swamp', 'Swamp', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5260532, -71.2381883, ST_GeomFromText('POINT(41.5260532 -71.2381883)', 4326), NULL, NULL, '1976-05-21', '2022-08-03', 'Official', 'Board Decision', '1930-01-01'),
  ('1218185', 'High Hill Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5473249, -71.216158, ST_GeomFromText('POINT(41.5473249 -71.216158)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218186', 'Almy Brook', 'Stream', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5428806, -71.2069909, ST_GeomFromText('POINT(41.5428806 -71.2069909)', 4326), 41.5469444, -71.2027778, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218187', 'Windmill Hill', 'Summit', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5425944, -71.1967122, ST_GeomFromText('POINT(41.5425944 -71.1967122)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218188', 'Watson Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5389355, -71.1790306, ST_GeomFromText('POINT(41.5389355 -71.1790306)', 4326), NULL, NULL, '1976-05-21', '2015-04-27', 'Official', 'Board Decision', '1930-01-01'),
  ('1218189', 'Richmond Hill', 'Lake', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.546214, -71.1869902, ST_GeomFromText('POINT(41.546214 -71.1869902)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218190', 'Simmons Pond', 'Lake', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5396406, -71.1486679, ST_GeomFromText('POINT(41.5396406 -71.1486679)', 4326), NULL, NULL, '1976-05-21', '2018-05-16', 'Official', 'Board Decision', '1930-01-01'),
  ('1218192', 'Adamsville Brook', 'Stream', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5682795, -71.1330237, ST_GeomFromText('POINT(41.5682795 -71.1330237)', 4326), 41.625, -71.1636111, '1976-05-21', '2021-06-08', 'Official', 'Board Decision', '1930-01-01'),
  ('1218194', 'Dawley Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9995426, -71.5700634, ST_GeomFromText('POINT(41.9995426 -71.5700634)', 4326), 42.0100981, -71.5764525, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218195', 'Nonquit Pond', 'Lake', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5639908, -71.195277, ST_GeomFromText('POINT(41.5639908 -71.195277)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218196', 'Pachet Brook', 'Stream', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5512139, -71.196435, ST_GeomFromText('POINT(41.5512139 -71.196435)', 4326), 41.5247222, -71.1672222, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218197', 'Fogland Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5623248, -71.2203247, ST_GeomFromText('POINT(41.5623248 -71.2203247)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218198', 'Sakonnet River', 'Stream', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4639923, -71.224491, ST_GeomFromText('POINT(41.4639923 -71.224491)', 4326), 41.654269, -71.2119911, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1964-01-01'),
  ('1218199', 'Sandy Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5523248, -71.2339363, ST_GeomFromText('POINT(41.5523248 -71.2339363)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218200', 'The Glen', 'Valley', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5571074, -71.2420694, ST_GeomFromText('POINT(41.5571074 -71.2420694)', 4326), 41.5584571, -71.2448824, '2002-08-27', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218201', 'McCorrie Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5764914, -71.2350475, ST_GeomFromText('POINT(41.5764914 -71.2350475)', 4326), NULL, NULL, '2002-08-27', NULL, 'Official', 'Board Decision', '1982-01-01'),
  ('1218202', 'Wilcox Hill', 'Summit', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5694632, -71.2012009, ST_GeomFromText('POINT(41.5694632 -71.2012009)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218204', 'Borden Brook', 'Stream', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5681584, -71.1903237, ST_GeomFromText('POINT(41.5681584 -71.1903237)', 4326), 41.6208333, -71.1763889, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218205', 'Sassafras Island', 'Island', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5817694, -71.2000463, ST_GeomFromText('POINT(41.5817694 -71.2000463)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218206', 'High Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5834361, -71.1775456, ST_GeomFromText('POINT(41.5834361 -71.1775456)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218207', 'Great Swamp', 'Swamp', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5857234, -71.1510112, ST_GeomFromText('POINT(41.5857234 -71.1510112)', 4326), NULL, NULL, '1976-05-21', '2022-07-13', 'Official', 'Board Decision', '1930-01-01'),
  ('1218208', 'Cedar Swamp', 'Swamp', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5920693, -71.1765748, ST_GeomFromText('POINT(41.5920693 -71.1765748)', 4326), NULL, NULL, '1976-05-21', '2022-08-03', 'Official', 'Board Decision', '1930-01-01'),
  ('1218209', 'Wildcat Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5953805, -71.1794901, ST_GeomFromText('POINT(41.5953805 -71.1794901)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218210', 'Quaket Creek', 'Stream', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.6026026, -71.197824, ST_GeomFromText('POINT(41.6026026 -71.197824)', 4326), 41.5916667, -71.1902778, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218211', 'Barker Island', 'Island', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5862137, -71.2006018, ST_GeomFromText('POINT(41.5862137 -71.2006018)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218212', 'Jacks Island', 'Island', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5939915, -71.2081021, ST_GeomFromText('POINT(41.5939915 -71.2081021)', 4326), NULL, NULL, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1972-01-01'),
  ('1218213', 'Sapowet Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5862136, -71.214769, ST_GeomFromText('POINT(41.5862136 -71.214769)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218214', 'Gould Island', 'Island', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.6151024, -71.2203247, ST_GeomFromText('POINT(41.6151024 -71.2203247)', 4326), NULL, NULL, '1976-05-21', '2011-08-11', 'Official', 'Board Decision', '1930-01-01'),
  ('1218215', 'Nannaquaket Neck', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.6053803, -71.2058798, ST_GeomFromText('POINT(41.6053803 -71.2058798)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218216', 'Nannaquaket Pond', 'Lake', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.6108832, -71.2008848, ST_GeomFromText('POINT(41.6108832 -71.2008848)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218217', 'White Wine Brook', 'Stream', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.6126025, -71.1969906, ST_GeomFromText('POINT(41.6126025 -71.1969906)', 4326), 41.6177778, -71.185, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218219', 'Basket Swamp', 'Swamp', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.6171667, -71.1745506, ST_GeomFromText('POINT(41.6171667 -71.1745506)', 4326), NULL, NULL, '1976-05-21', '2022-08-02', 'Official', 'Board Decision', '1930-01-01'),
  ('1218220', 'Jiley Hill', 'Summit', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.6220385, -71.1869897, ST_GeomFromText('POINT(41.6220385 -71.1869897)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218221', 'Sin and Flesh Brook', 'Stream', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.6195469, -71.2033798, ST_GeomFromText('POINT(41.6195469 -71.2033798)', 4326), 41.6353803, -71.1856014, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218222', 'Quaket River', 'Stream', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.6192691, -71.2092132, ST_GeomFromText('POINT(41.6192691 -71.2092132)', 4326), 41.6172222, -71.2083333, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218225', 'Bailey Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.515022, -71.6588404, ST_GeomFromText('POINT(41.515022 -71.6588404)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218228', 'Wickaboxet Pond', 'Lake', 'Rhode Island', 'RI', 'Kent', 'Oneco', 41.6293962, -71.7690573, ST_GeomFromText('POINT(41.6293962 -71.7690573)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1218229', 'Coney Brook', 'Stream', 'Rhode Island', 'RI', 'Kent', 'Oneco', 41.6325992, -71.7703471, ST_GeomFromText('POINT(41.6325992 -71.7703471)', 4326), 41.6488889, -71.7594444, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218230', 'Tillinghast Pond', 'Lake', 'Rhode Island', 'RI', 'Kent', 'Oneco', 41.6481039, -71.7556015, ST_GeomFromText('POINT(41.6481039 -71.7556015)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218231', 'Arnold Pond', 'Reservoir', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.6652363, -71.7473488, ST_GeomFromText('POINT(41.6652363 -71.7473488)', 4326), NULL, NULL, '1976-05-21', '2018-05-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1218233', 'Fox Hill', 'Summit', 'Rhode Island', 'RI', 'Kent', 'Oneco', 41.6842575, -71.7547906, ST_GeomFromText('POINT(41.6842575 -71.7547906)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218234', 'Roaring Brook', 'Stream', 'Rhode Island', 'RI', 'Kent', 'Oneco', 41.6892659, -71.7703473, ST_GeomFromText('POINT(41.6892659 -71.7703473)', 4326), 41.6600994, -71.7267348, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218235', 'Bucks Horn Brook', 'Stream', 'Rhode Island', 'RI', 'Kent', 'Oneco', 41.6945437, -71.7647916, ST_GeomFromText('POINT(41.6945437 -71.7647916)', 4326), 41.6892662, -71.7117343, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218236', 'Carbuncle Pond', 'Lake', 'Rhode Island', 'RI', 'Kent', 'Oneco', 41.6979911, -71.7734866, ST_GeomFromText('POINT(41.6979911 -71.7734866)', 4326), NULL, NULL, '1976-05-21', '2018-05-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1218237', 'Carbuncle Hill', 'Summit', 'Rhode Island', 'RI', 'Kent', 'Oneco', 41.7091293, -71.7650663, ST_GeomFromText('POINT(41.7091293 -71.7650663)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218239', 'Briggs Pond', 'Lake', 'Rhode Island', 'RI', 'Kent', 'Oneco', 41.7177141, -71.7671187, ST_GeomFromText('POINT(41.7177141 -71.7671187)', 4326), NULL, NULL, '1976-05-21', '2018-05-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1218240', 'Barbs Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Oneco', 41.7267574, -71.7706243, ST_GeomFromText('POINT(41.7267574 -71.7706243)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218242', 'West Meadow Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Oneco', 41.7456549, -71.7506248, ST_GeomFromText('POINT(41.7456549 -71.7506248)', 4326), 41.7748214, -71.7422912, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218244', 'Penny Hill', 'Summit', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.6287019, -71.7486792, ST_GeomFromText('POINT(41.6287019 -71.7486792)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218245', 'Bald Hill', 'Summit', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.6431466, -71.7106222, ST_GeomFromText('POINT(41.6431466 -71.7106222)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218246', 'Cedar Swamp', 'Swamp', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.6371885, -71.6732165, ST_GeomFromText('POINT(41.6371885 -71.6732165)', 4326), NULL, NULL, '1976-05-21', '2022-08-03', 'Official', 'Board Decision', '1930-01-01'),
  ('1218247', 'Fry Pond', 'Lake', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.6384503, -71.670767, ST_GeomFromText('POINT(41.6384503 -71.670767)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218248', 'Raccoon Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Coventry Center', 41.6323221, -71.6470096, ST_GeomFromText('POINT(41.6323221 -71.6470096)', 4326), 41.6064888, -71.6661769, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218249', 'Yard Pond', 'Lake', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.629818, -71.6396242, ST_GeomFromText('POINT(41.629818 -71.6396242)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218251', 'Bear Swamp', 'Swamp', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.6612636, -71.6259983, ST_GeomFromText('POINT(41.6612636 -71.6259983)', 4326), NULL, NULL, '1976-05-21', '2022-08-02', 'Official', 'Board Decision', '1930-01-01'),
  ('1218252', 'Fish Hill', 'Swamp', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.6523221, -71.6392316, ST_GeomFromText('POINT(41.6523221 -71.6392316)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218253', 'Weaver Hill', 'Summit', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.65968, -71.6640781, ST_GeomFromText('POINT(41.65968 -71.6640781)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218254', 'Hammitt Hill', 'Summit', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.667901, -71.6820925, ST_GeomFromText('POINT(41.667901 -71.6820925)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218255', 'Carr Pond', 'Lake', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.668387, -71.6873845, ST_GeomFromText('POINT(41.668387 -71.6873845)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218256', 'Great Cedar Swamp', 'Swamp', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.6611082, -71.7188466, ST_GeomFromText('POINT(41.6611082 -71.7188466)', 4326), NULL, NULL, '1976-05-21', '2023-04-03', 'Official', 'Board Decision', '1930-01-01'),
  ('1218257', 'Great Grass Pond', 'Lake', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.6598878, -71.7233759, ST_GeomFromText('POINT(41.6598878 -71.7233759)', 4326), NULL, NULL, '1976-05-21', '2018-05-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1218258', 'Whitford Pond', 'Reservoir', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.666196, -71.72508, ST_GeomFromText('POINT(41.666196 -71.72508)', 4326), NULL, NULL, '1976-05-21', '2024-10-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1218259', 'Little Grass Pond', 'Lake', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.6651202, -71.7359046, ST_GeomFromText('POINT(41.6651202 -71.7359046)', 4326), NULL, NULL, '1976-05-21', '2018-05-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1218260', 'Koszela Pond', 'Lake', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.6873851, -71.6994601, ST_GeomFromText('POINT(41.6873851 -71.6994601)', 4326), NULL, NULL, '1976-05-21', '2018-05-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1218262', 'Weeks Hill', 'Summit', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.68148, -71.6911772, ST_GeomFromText('POINT(41.68148 -71.6911772)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218263', 'Quidnick Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.6798021, -71.6785372, ST_GeomFromText('POINT(41.6798021 -71.6785372)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218265', 'Harkney Hill', 'Summit', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.6778851, -71.6489308, ST_GeomFromText('POINT(41.6778851 -71.6489308)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218266', 'Stump Pond', 'Reservoir', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.6931271, -71.642536, ST_GeomFromText('POINT(41.6931271 -71.642536)', 4326), NULL, NULL, '1976-05-21', '2015-04-27', 'Official', 'Board Decision', '1978-01-01'),
  ('1218267', 'Rock Hill', 'Summit', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.6806631, -71.6285236, ST_GeomFromText('POINT(41.6806631 -71.6285236)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218268', 'Boyd Brook', 'Stream', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.7128777, -71.6317315, ST_GeomFromText('POINT(41.7128777 -71.6317315)', 4326), 41.7484331, -71.6236759, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218269', 'Quidnick Brook', 'Stream', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.689822, -71.6495099, ST_GeomFromText('POINT(41.689822 -71.6495099)', 4326), 41.6913889, -71.6819444, '1976-05-21', '2019-11-05', 'Official', 'Board Decision', '1930-02-05'),
  ('1218271', 'Foster Ledge', 'Bench', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.6987109, -71.6547879, ST_GeomFromText('POINT(41.6987109 -71.6547879)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218272', 'Scott Hollow', 'Valley', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.7017309, -71.6795643, ST_GeomFromText('POINT(41.7017309 -71.6795643)', 4326), 41.7051021, -71.6878787, '1976-05-21', '2016-12-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218273', 'Waterman Hill', 'Summit', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.7139756, -71.7162409, ST_GeomFromText('POINT(41.7139756 -71.7162409)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1978-01-01'),
  ('1218274', 'Waterman Pond', 'Lake', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.715054, -71.7294237, ST_GeomFromText('POINT(41.715054 -71.7294237)', 4326), NULL, NULL, '1976-05-21', '2018-05-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1218275', 'Warwick Brook', 'Stream', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.7112105, -71.7309018, ST_GeomFromText('POINT(41.7112105 -71.7309018)', 4326), 41.6986111, -71.7444444, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218276', 'Porters Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Coventry Center', 41.734215, -71.7275039, ST_GeomFromText('POINT(41.734215 -71.7275039)', 4326), NULL, NULL, '1976-05-21', '2021-03-06', 'Official', 'Board Decision', '1930-01-01'),
  ('1218277', 'Cranberry Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Coventry Center', 41.7322219, -71.7186082, ST_GeomFromText('POINT(41.7322219 -71.7186082)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218279', 'Bowen Hill', 'Summit', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.7160099, -71.7087685, ST_GeomFromText('POINT(41.7160099 -71.7087685)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218280', 'Sawmill Brook', 'Stream', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.7212106, -71.7014562, ST_GeomFromText('POINT(41.7212106 -71.7014562)', 4326), 41.7183333, -71.7130556, '1976-05-21', '2020-03-14', 'Official', 'Board Decision', '2020-03-12'),
  ('1218281', 'Biscuit Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Coventry Center', 41.7328904, -71.696645, ST_GeomFromText('POINT(41.7328904 -71.696645)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218282', 'Turkey Meadow Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Coventry Center', 41.7278773, -71.7089565, ST_GeomFromText('POINT(41.7278773 -71.7089565)', 4326), 41.745, -71.7127778, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1972-01-01'),
  ('1218283', 'Pine Swamp Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Coventry Center', 41.7209329, -71.6845112, ST_GeomFromText('POINT(41.7209329 -71.6845112)', 4326), 41.7408333, -71.6863889, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218284', 'McCuster Brook', 'Stream', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.7156553, -71.6720108, ST_GeomFromText('POINT(41.7156553 -71.6720108)', 4326), 41.7136111, -71.7002778, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218285', 'Whaley Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Coventry Center', 41.7164886, -71.662566, ST_GeomFromText('POINT(41.7164886 -71.662566)', 4326), 41.7322222, -71.6722222, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218286', 'Nipmuc Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Coventry Center', 41.7316938, -71.6581387, ST_GeomFromText('POINT(41.7316938 -71.6581387)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218287', 'Pierce Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Coventry Center', 41.7162109, -71.6450654, ST_GeomFromText('POINT(41.7162109 -71.6450654)', 4326), 41.7477778, -71.6444444, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218288', 'Mount Misery', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Coventry Center', 41.7472373, -71.6376955, ST_GeomFromText('POINT(41.7472373 -71.6376955)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218289', 'Carr River', 'Stream', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.6426001, -71.6114527, ST_GeomFromText('POINT(41.6426001 -71.6114527)', 4326), 41.6302778, -71.5588889, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218290', 'Capwell Mill Pond', 'Reservoir', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.6431558, -71.607286, ST_GeomFromText('POINT(41.6431558 -71.607286)', 4326), NULL, NULL, '1976-05-21', '2010-02-16', NULL, NULL, NULL),
  ('1218291', 'Mud Bottom Brook', 'Stream', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.6437113, -71.5983968, ST_GeomFromText('POINT(41.6437113 -71.5983968)', 4326), 41.6313889, -71.5916667, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218292', 'Sweet Pond', 'Reservoir', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.626637, -71.5978127, ST_GeomFromText('POINT(41.626637 -71.5978127)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218293', 'Tarbox Pond', 'Reservoir', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.6351658, -71.5689766, ST_GeomFromText('POINT(41.6351658 -71.5689766)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218294', 'Carr Pond', 'Reservoir', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.6358313, -71.5559153, ST_GeomFromText('POINT(41.6358313 -71.5559153)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218295', 'Andrews Hill', 'Summit', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.6592588, -71.5217267, ST_GeomFromText('POINT(41.6592588 -71.5217267)', 4326), NULL, NULL, '2002-08-27', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218296', 'Phelps Pond', 'Lake', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.656287, -71.5538429, ST_GeomFromText('POINT(41.656287 -71.5538429)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218299', 'Hungry Hill', 'Summit', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.6562027, -71.6131188, ST_GeomFromText('POINT(41.6562027 -71.6131188)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218300', 'Mawney Brook', 'Stream', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.6281563, -71.5203383, ST_GeomFromText('POINT(41.6281563 -71.5203383)', 4326), 41.6577778, -71.5325, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218301', 'Reynolds Pond', 'Reservoir', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.6577313, -71.6212708, ST_GeomFromText('POINT(41.6577313 -71.6212708)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218302', 'Bear Brook', 'Stream', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.6634333, -71.6206198, ST_GeomFromText('POINT(41.6634333 -71.6206198)', 4326), 41.6781555, -71.6392317, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218303', 'Maple Root Pond', 'Reservoir', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.6666726, -71.6050151, ST_GeomFromText('POINT(41.6666726 -71.6050151)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218304', 'Mishnock Swamp', 'Swamp', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.6684068, -71.5852475, ST_GeomFromText('POINT(41.6684068 -71.5852475)', 4326), NULL, NULL, '1976-05-21', '2022-08-02', 'Official', 'Board Decision', '1930-01-01'),
  ('1218305', 'Old Hickory Brook', 'Stream', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.6745446, -71.5831185, ST_GeomFromText('POINT(41.6745446 -71.5831185)', 4326), 41.6511111, -71.6036111, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218307', 'Little Huron Pond', 'Lake', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.6775386, -71.5715278, ST_GeomFromText('POINT(41.6775386 -71.5715278)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218308', 'Huron Pond', 'Lake', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.6777256, -71.5687051, ST_GeomFromText('POINT(41.6777256 -71.5687051)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218309', 'Tiogue Lake', 'Reservoir', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.6783446, -71.5503004, ST_GeomFromText('POINT(41.6783446 -71.5503004)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-02-05'),
  ('1218310', 'Flat Top Pond', 'Reservoir', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.6777693, -71.5288237, ST_GeomFromText('POINT(41.6777693 -71.5288237)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218311', 'Hawkinson Brook', 'Stream', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.6812116, -71.5267276, ST_GeomFromText('POINT(41.6812116 -71.5267276)', 4326), 41.6622222, -71.5269444, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218313', 'Cedar Brook', 'Stream', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.6951006, -71.5039491, ST_GeomFromText('POINT(41.6951006 -71.5039491)', 4326), 41.6730556, -71.5063889, '1976-05-21', NULL, 'Official', 'Board Decision', '1972-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218316', 'Matteson Pond', 'Lake', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.692803, -71.5315296, ST_GeomFromText('POINT(41.692803 -71.5315296)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1972-01-01'),
  ('1218317', 'Saw Mill Hill', 'Summit', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.6870363, -71.5461721, ST_GeomFromText('POINT(41.6870363 -71.5461721)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218319', 'Middle Dam Pond', 'Reservoir', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.7017949, -71.5536817, ST_GeomFromText('POINT(41.7017949 -71.5536817)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218321', 'Mishnock River', 'Stream', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.6901002, -71.5722849, ST_GeomFromText('POINT(41.6901002 -71.5722849)', 4326), 41.6555556, -71.5913889, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218322', 'Flat River Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.6977624, -71.6180599, ST_GeomFromText('POINT(41.6977624 -71.6180599)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218323', 'Raymonds Point', 'Cape', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.6973222, -71.607564, ST_GeomFromText('POINT(41.6973222 -71.607564)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218324', 'Poor Farm Brook', 'Stream', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.7092667, -71.6158976, ST_GeomFromText('POINT(41.7092667 -71.6158976)', 4326), 41.7252778, -71.6097222, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218325', 'Burlingame Pond', 'Reservoir', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.7260768, -71.5717185, ST_GeomFromText('POINT(41.7260768 -71.5717185)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218326', 'Burlingame Brook', 'Stream', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.7312112, -71.5656181, ST_GeomFromText('POINT(41.7312112 -71.5656181)', 4326), 41.7211111, -71.57, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218327', 'Upper Dam Pond', 'Reservoir', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.7062523, -71.5528557, ST_GeomFromText('POINT(41.7062523 -71.5528557)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218328', 'Boston Hill', 'Summit', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.7045096, -71.5485447, ST_GeomFromText('POINT(41.7045096 -71.5485447)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218329', 'Black Rock Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.7188663, -71.5549, ST_GeomFromText('POINT(41.7188663 -71.5549)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218330', 'Black Rock Brook', 'Stream', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.724267, -71.5372838, ST_GeomFromText('POINT(41.724267 -71.5372838)', 4326), 41.72, -71.5541667, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218331', 'Fones Pond', 'Lake', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.7160588, -71.539843, ST_GeomFromText('POINT(41.7160588 -71.539843)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218332', 'Pearce Pond', 'Reservoir', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.7234707, -71.5396442, ST_GeomFromText('POINT(41.7234707 -71.5396442)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218333', 'Conley Pond', 'Lake', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.7170483, -71.5291611, ST_GeomFromText('POINT(41.7170483 -71.5291611)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218335', 'Natick Hill', 'Summit', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.706732, -71.5126254, ST_GeomFromText('POINT(41.706732 -71.5126254)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218336', 'South Branch Pawtuxet River', 'Stream', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.7164893, -71.5106161, ST_GeomFromText('POINT(41.7164893 -71.5106161)', 4326), 41.6972222, -71.595, '1976-05-21', NULL, 'Official', 'Board Decision', '1972-01-01'),
  ('1218337', 'Flat River', 'Stream', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.7150998, -71.6458987, ST_GeomFromText('POINT(41.7150998 -71.6458987)', 4326), 41.7277778, -71.7125, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1972-01-01'),
  ('1218338', 'Natick Pond', 'Lake', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.7153783, -71.5036714, ST_GeomFromText('POINT(41.7153783 -71.5036714)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218339', 'Lippitt Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Crompton', 41.7498139, -71.537561, ST_GeomFromText('POINT(41.7498139 -71.537561)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218341', 'Clarke Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Crompton', 41.7345446, -71.5495064, ST_GeomFromText('POINT(41.7345446 -71.5495064)', 4326), 41.7542669, -71.539784, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218343', 'Pine Swamp', 'Swamp', 'Rhode Island', 'RI', 'Providence', 'Crompton', 41.7454065, -71.5597403, ST_GeomFromText('POINT(41.7454065 -71.5597403)', 4326), NULL, NULL, '1976-05-21', '2022-08-03', 'Official', 'Board Decision', '1930-01-01'),
  ('1218344', 'Cranberry Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Crompton', 41.7351002, -71.5567289, ST_GeomFromText('POINT(41.7351002 -71.5567289)', 4326), 41.7642667, -71.5570068, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218347', 'Colvin Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Crompton', 41.7409334, -71.573674, ST_GeomFromText('POINT(41.7409334 -71.573674)', 4326), 41.7413889, -71.5980556, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218348', 'Burnt Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Crompton', 41.7478693, -71.5931185, ST_GeomFromText('POINT(41.7478693 -71.5931185)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218350', 'Fry Brook', 'Stream', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6295454, -71.4792255, ST_GeomFromText('POINT(41.6295454 -71.4792255)', 4326), 41.6623228, -71.5120048, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218351', 'Frenchtown Brook', 'Stream', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6267677, -71.4786699, ST_GeomFromText('POINT(41.6267677 -71.4786699)', 4326), 41.6164895, -71.5483949, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218353', 'Potowomut Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'East Greenwich', 41.633422, -71.4550201, ST_GeomFromText('POINT(41.633422 -71.4550201)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218354', 'The Mount', 'Summit', 'Rhode Island', 'RI', 'Washington', 'East Greenwich', 41.6298149, -71.4353338, ST_GeomFromText('POINT(41.6298149 -71.4353338)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218356', 'Calf Pasture Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'East Greenwich', 41.625657, -71.4025552, ST_GeomFromText('POINT(41.625657 -71.4025552)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218357', 'Calf Pasture Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'East Greenwich', 41.6270458, -71.3978327, ST_GeomFromText('POINT(41.6270458 -71.3978327)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218359', 'Tibbets Creek', 'Stream', 'Rhode Island', 'RI', 'Washington', 'East Greenwich', 41.641768, -71.4083888, ST_GeomFromText('POINT(41.641768 -71.4083888)', 4326), 41.6438889, -71.4191667, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218360', 'Pojac Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'East Greenwich', 41.6517679, -71.4078332, ST_GeomFromText('POINT(41.6517679 -71.4078332)', 4326), NULL, NULL, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1930-01-01'),
  ('1218361', 'Potowomut River', 'Stream', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6542679, -71.4086666, ST_GeomFromText('POINT(41.6542679 -71.4086666)', 4326), 41.6408333, -71.4455556, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218362', 'Potowomut Neck', 'Cape', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6556567, -71.4358902, ST_GeomFromText('POINT(41.6556567 -71.4358902)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218363', 'Hunt River', 'Stream', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6409344, -71.4450573, ST_GeomFromText('POINT(41.6409344 -71.4450573)', 4326), 41.5939899, -71.4958928, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218364', 'Maskerchugg River', 'Stream', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.647601, -71.4545021, ST_GeomFromText('POINT(41.647601 -71.4545021)', 4326), 41.6847222, -71.495, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218365', 'Bleachery Pond', 'Reservoir', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6538397, -71.4616349, ST_GeomFromText('POINT(41.6538397 -71.4616349)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218367', 'Dark Entry Brook', 'Stream', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6570453, -71.4645027, ST_GeomFromText('POINT(41.6570453 -71.4645027)', 4326), 41.6825, -71.4705556, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218368', 'Greenwich Cove', 'Bay', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6573232, -71.4442239, ST_GeomFromText('POINT(41.6573232 -71.4442239)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218369', 'Long Point', 'Cape', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6667677, -71.4403348, ST_GeomFromText('POINT(41.6667677 -71.4403348)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218370', 'Potowomut Rocks', 'Pillar', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6712122, -71.4264452, ST_GeomFromText('POINT(41.6712122 -71.4264452)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218371', 'Sally Rock Point', 'Cape', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6706567, -71.4253341, ST_GeomFromText('POINT(41.6706567 -71.4253341)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218372', 'Clump Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'East Greenwich', 41.6684344, -71.4172782, ST_GeomFromText('POINT(41.6684344 -71.4172782)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218374', 'Sandy Point', 'Cape', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.662879, -71.4089444, ST_GeomFromText('POINT(41.662879 -71.4089444)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218375', 'Marsh Point', 'Cape', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6576012, -71.4095, ST_GeomFromText('POINT(41.6576012 -71.4095)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218376', 'Flat Rock', 'Pillar', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.656768, -71.3947771, ST_GeomFromText('POINT(41.656768 -71.3947771)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218377', 'Crack Rock', 'Pillar', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6576013, -71.3936659, ST_GeomFromText('POINT(41.6576013 -71.3936659)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218378', 'Round Rock', 'Pillar', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6570457, -71.3931103, ST_GeomFromText('POINT(41.6570457 -71.3931103)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218379', 'Spring Rock', 'Pillar', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6681569, -71.3844988, ST_GeomFromText('POINT(41.6681569 -71.3844988)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218380', 'Warwick Point', 'Cape', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.666768, -71.3786652, ST_GeomFromText('POINT(41.666768 -71.3786652)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218381', 'Warwick Neck', 'Cape', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6803791, -71.3822765, ST_GeomFromText('POINT(41.6803791 -71.3822765)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218383', 'Buttonwoods Cove', 'Bay', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.68649, -71.4072777, ST_GeomFromText('POINT(41.68649 -71.4072777)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218385', 'Greenwich Bay', 'Bay', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6745455, -71.4139446, ST_GeomFromText('POINT(41.6745455 -71.4139446)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1898-01-01'),
  ('1218386', 'Sally Rock', 'Pillar', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6742678, -71.4247786, ST_GeomFromText('POINT(41.6742678 -71.4247786)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218388', 'Hitch Up Rock', 'Pillar', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.683712, -71.4486687, ST_GeomFromText('POINT(41.683712 -71.4486687)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218389', 'Haul Rock', 'Pillar', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6842676, -71.4489464, ST_GeomFromText('POINT(41.6842676 -71.4489464)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218391', 'Drum Rock Hill', 'Summit', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6752687, -71.4617015, ST_GeomFromText('POINT(41.6752687 -71.4617015)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1972-01-01'),
  ('1218392', 'Spencer Hill', 'Summit', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6773144, -71.4967258, ST_GeomFromText('POINT(41.6773144 -71.4967258)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218393', 'Hardig Brook', 'Stream', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.697323, -71.4578358, ST_GeomFromText('POINT(41.697323 -71.4578358)', 4326), 41.6884338, -71.5178384, '1976-05-21', NULL, 'Official', 'Board Decision', '1972-01-01'),
  ('1218395', 'Arnold Neck', 'Cape', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.691212, -71.4503354, ST_GeomFromText('POINT(41.691212 -71.4503354)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218396', 'Apponaug Cove', 'Bay', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.693712, -71.4486687, ST_GeomFromText('POINT(41.693712 -71.4486687)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218397', 'Cedar Tree Point', 'Cape', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6878787, -71.4431128, ST_GeomFromText('POINT(41.6878787 -71.4431128)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218398', 'Baker Creek', 'Stream', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6873232, -71.4347791, ST_GeomFromText('POINT(41.6873232 -71.4347791)', 4326), 41.6930556, -71.4375, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218400', 'Tuscatucket Brook', 'Stream', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6992677, -71.4161671, ST_GeomFromText('POINT(41.6992677 -71.4161671)', 4326), 41.7111111, -71.4330556, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1959-01-01'),
  ('1218401', 'Brush Neck', 'Cape', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.69149, -71.410889, ST_GeomFromText('POINT(41.69149 -71.410889)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218402', 'Brush Neck Cove', 'Bay', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6923233, -71.405611, ST_GeomFromText('POINT(41.6923233 -71.405611)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218404', 'Horse Neck', 'Cape', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6909344, -71.3983884, ST_GeomFromText('POINT(41.6909344 -71.3983884)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218405', 'Second Point', 'Cape', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6931568, -71.3919992, ST_GeomFromText('POINT(41.6931568 -71.3919992)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218406', 'Warwick Cove', 'Bay', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6839901, -71.3911658, ST_GeomFromText('POINT(41.6839901 -71.3911658)', 4326), NULL, NULL, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1972-01-01'),
  ('1218408', 'Lockwood Brook', 'Stream', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.7120456, -71.3767207, ST_GeomFromText('POINT(41.7120456 -71.3767207)', 4326), 41.7208333, -71.4005556, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218409', 'Buckeye Brook', 'Stream', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.7081568, -71.3800542, ST_GeomFromText('POINT(41.7081568 -71.3800542)', 4326), 41.7180556, -71.4158333, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218410', 'Warner Brook', 'Stream', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.707879, -71.3803319, ST_GeomFromText('POINT(41.707879 -71.3803319)', 4326), 41.7075, -71.3944444, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218411', 'Knowles Brook', 'Stream', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.7042679, -71.3844988, ST_GeomFromText('POINT(41.7042679 -71.3844988)', 4326), 41.7016667, -71.3977778, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218412', 'Little Pond', 'Lake', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.706538, -71.4054211, ST_GeomFromText('POINT(41.706538 -71.4054211)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1959-01-01'),
  ('1218414', 'Gorton Pond', 'Lake', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.7052858, -71.4587622, ST_GeomFromText('POINT(41.7052858 -71.4587622)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218415', 'Bald Hill', 'Summit', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.7062727, -71.4881144, ST_GeomFromText('POINT(41.7062727 -71.4881144)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218418', 'Meshanticut Brook', 'Stream', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.7251005, -71.4836705, ST_GeomFromText('POINT(41.7251005 -71.4836705)', 4326), 41.7876, -71.5106163, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218419', 'Three Ponds', 'Lake', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.7244474, -71.4510333, ST_GeomFromText('POINT(41.7244474 -71.4510333)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218421', 'Warwick Pond', 'Lake', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.7237264, -71.4126394, ST_GeomFromText('POINT(41.7237264 -71.4126394)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218422', 'Lippitt Brook', 'Stream', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.7214893, -71.5253388, ST_GeomFromText('POINT(41.7214893 -71.5253388)', 4326), 41.7497222, -71.535, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218425', 'Occupessatuxet Cove', 'Bay', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.7356566, -71.3853322, ST_GeomFromText('POINT(41.7356566 -71.3853322)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218426', 'Gaspee Point', 'Cape', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.7426011, -71.3761652, ST_GeomFromText('POINT(41.7426011 -71.3761652)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218427', 'Rock Island', 'Island', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.7498232, -71.3806098, ST_GeomFromText('POINT(41.7498232 -71.3806098)', 4326), NULL, NULL, '1976-05-21', '2015-05-28', 'Official', 'Board Decision', '1930-01-01'),
  ('1218428', 'Passeonkquis Cove', 'Bay', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.7470454, -71.3850545, ST_GeomFromText('POINT(41.7470454 -71.3850545)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218430', 'Posneganset Pond', 'Lake', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.7498854, -71.4061648, ST_GeomFromText('POINT(41.7498854 -71.4061648)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218432', 'Spring Green Pond', 'Reservoir', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.7353185, -71.4106955, ST_GeomFromText('POINT(41.7353185 -71.4106955)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218434', 'Sand Pond', 'Lake', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.7453663, -71.4246064, ST_GeomFromText('POINT(41.7453663 -71.4246064)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1959-01-01'),
  ('1218437', 'Three Ponds Brook', 'Stream', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.7403785, -71.4453353, ST_GeomFromText('POINT(41.7403785 -71.4453353)', 4326), 41.7191667, -71.4494444, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218438', 'Slate Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'East Greenwich', 41.7492523, -71.4683588, ST_GeomFromText('POINT(41.7492523 -71.4683588)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218439', 'Pine Hill Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Bristol', 41.6317683, -71.3472748, ST_GeomFromText('POINT(41.6317683 -71.3472748)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218440', 'Pine Hill', 'Summit', 'Rhode Island', 'RI', 'Newport', 'Bristol', 41.633385, -71.3428909, ST_GeomFromText('POINT(41.633385 -71.3428909)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218441', 'Jenny Pond', 'Lake', 'Rhode Island', 'RI', 'Newport', 'Bristol', 41.6317087, -71.336771, ST_GeomFromText('POINT(41.6317087 -71.336771)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218442', 'Nag Pond', 'Lake', 'Rhode Island', 'RI', 'Newport', 'Bristol', 41.6286316, -71.3200153, ST_GeomFromText('POINT(41.6286316 -71.3200153)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218443', 'Northeast Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Bristol', 41.6309351, -71.3169955, ST_GeomFromText('POINT(41.6309351 -71.3169955)', 4326), NULL, NULL, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1930-01-01'),
  ('1218444', 'Mount Tom Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Bristol', 41.6328796, -71.3142176, ST_GeomFromText('POINT(41.6328796 -71.3142176)', 4326), NULL, NULL, '1976-05-21', '2011-08-05', 'Official', 'Board Decision', '1972-01-01'),
  ('1218445', 'Southwest Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Bristol', 41.6373241, -71.2853273, ST_GeomFromText('POINT(41.6373241 -71.2853273)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218448', 'Ferry Cliff', 'Cliff', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.6476021, -71.2581038, ST_GeomFromText('POINT(41.6476021 -71.2581038)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218449', 'Ferry Hill', 'Summit', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.6473525, -71.2637697, ST_GeomFromText('POINT(41.6473525 -71.2637697)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218450', 'Bristol Point', 'Cape', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.6431576, -71.2619929, ST_GeomFromText('POINT(41.6431576 -71.2619929)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218451', 'Hog Island', 'Island', 'Rhode Island', 'RI', 'Newport', 'Bristol', 41.6439908, -71.2800493, ST_GeomFromText('POINT(41.6439908 -71.2800493)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218452', 'Castle Island', 'Island', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.653713, -71.2861607, ST_GeomFromText('POINT(41.653713 -71.2861607)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1972-01-01'),
  ('1218453', 'Popasquash Point', 'Cape', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.6495462, -71.2994947, ST_GeomFromText('POINT(41.6495462 -71.2994947)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218454', 'Gull Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Bristol', 41.6428795, -71.3331074, ST_GeomFromText('POINT(41.6428795 -71.3331074)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218455', 'Shell Island', 'Island', 'Rhode Island', 'RI', 'Newport', 'Bristol', 41.6448238, -71.3375521, ST_GeomFromText('POINT(41.6448238 -71.3375521)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218456', 'Potter Cove', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Bristol', 41.6423238, -71.3414411, ST_GeomFromText('POINT(41.6423238 -71.3414411)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218457', 'Sheep Pen Swamp', 'Swamp', 'Rhode Island', 'RI', 'Newport', 'Bristol', 41.647563, -71.3487307, ST_GeomFromText('POINT(41.647563 -71.3487307)', 4326), NULL, NULL, '1976-05-21', '2022-08-02', 'Official', 'Board Decision', '1978-01-01'),
  ('1218458', 'Sheep Pen Cove', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Bristol', 41.6492683, -71.3483859, ST_GeomFromText('POINT(41.6492683 -71.3483859)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218459', 'Long Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Bristol', 41.6531572, -71.3472748, ST_GeomFromText('POINT(41.6531572 -71.3472748)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218460', 'Coggeshall Cove', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Bristol', 41.6548238, -71.3450525, ST_GeomFromText('POINT(41.6548238 -71.3450525)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218461', 'Patience Island', 'Island', 'Rhode Island', 'RI', 'Newport', 'Bristol', 41.6567682, -71.3594976, ST_GeomFromText('POINT(41.6567682 -71.3594976)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218462', 'Northwest Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Bristol', 41.6601014, -71.3658868, ST_GeomFromText('POINT(41.6601014 -71.3658868)', 4326), NULL, NULL, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1930-01-01'),
  ('1218463', 'Providence Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Bristol', 41.6664904, -71.3444969, ST_GeomFromText('POINT(41.6664904 -71.3444969)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218464', 'Bear Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Bristol', 41.6576016, -71.3375521, ST_GeomFromText('POINT(41.6576016 -71.3375521)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218465', 'Narragansett Bay', 'Bay', 'Rhode Island', 'RI', 'Bristol', 'Prudence Island', 41.5702518, -71.3342285, ST_GeomFromText('POINT(41.5702518 -71.3342285)', 4326), NULL, NULL, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1964-01-01'),
  ('1218466', 'Popasquash Neck', 'Cape', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.6701018, -71.2969945, ST_GeomFromText('POINT(41.6701018 -71.2969945)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218467', 'Usher Cove', 'Bay', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.6603796, -71.2961612, ST_GeomFromText('POINT(41.6603796 -71.2961612)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218468', 'Usher Point', 'Cape', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.6612129, -71.2933833, ST_GeomFromText('POINT(41.6612129 -71.2933833)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218469', 'Bristol Harbor', 'Bay', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.661213, -71.2822716, ST_GeomFromText('POINT(41.661213 -71.2822716)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218470', 'Walker Island', 'Island', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.6581575, -71.2700488, ST_GeomFromText('POINT(41.6581575 -71.2700488)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218471', 'Walker Cove', 'Bay', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.6595464, -71.2683821, ST_GeomFromText('POINT(41.6595464 -71.2683821)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218472', 'Walker Creek', 'Stream', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.6609352, -71.2694932, ST_GeomFromText('POINT(41.6609352 -71.2694932)', 4326), 41.6722222, -71.2672222, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218473', 'Bristol Neck', 'Cape', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.6609353, -71.2597705, ST_GeomFromText('POINT(41.6609353 -71.2597705)', 4326), NULL, NULL, '1976-05-21', '2011-08-05', 'Official', 'Board Decision', '1930-01-01'),
  ('1218474', 'Fox Hill', 'Summit', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.6679674, -71.25964, ST_GeomFromText('POINT(41.6679674 -71.25964)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218475', 'Juniper Hill', 'Summit', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.6809267, -71.2606033, ST_GeomFromText('POINT(41.6809267 -71.2606033)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218476', 'Silver Creek', 'Stream', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.6767685, -71.2792159, ST_GeomFromText('POINT(41.6767685 -71.2792159)', 4326), 41.6969444, -71.2691667, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218477', 'Mill Pond', 'Lake', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.6820187, -71.2825998, ST_GeomFromText('POINT(41.6820187 -71.2825998)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218478', 'Fort Hill', 'Summit', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.68426, -71.2797709, ST_GeomFromText('POINT(41.68426 -71.2797709)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218480', 'North Point', 'Cape', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.6814906, -71.3025504, ST_GeomFromText('POINT(41.6814906 -71.3025504)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218481', 'Sand Point', 'Cape', 'Rhode Island', 'RI', 'Kent', 'Bristol', 41.6728791, -71.3733872, ST_GeomFromText('POINT(41.6728791 -71.3733872)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218484', 'Rocky Point', 'Cape', 'Rhode Island', 'RI', 'Kent', 'Bristol', 41.6914902, -71.3633867, ST_GeomFromText('POINT(41.6914902 -71.3633867)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218487', 'Halfmile Hill', 'Summit', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7045376, -71.2797709, ST_GeomFromText('POINT(41.7045376 -71.2797709)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218489', 'Warren River', 'Stream', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7042683, -71.2967167, ST_GeomFromText('POINT(41.7042683 -71.2967167)', 4326), 41.7325, -71.2894444, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1971-01-01'),
  ('1218490', 'Adams Point', 'Cape', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7162127, -71.2933832, ST_GeomFromText('POINT(41.7162127 -71.2933832)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218491', 'Allen Rock', 'Pillar', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7134349, -71.2931054, ST_GeomFromText('POINT(41.7134349 -71.2931054)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218492', 'Jacobs Point', 'Cape', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7123238, -71.2908831, ST_GeomFromText('POINT(41.7123238 -71.2908831)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218493', 'Rumstick Point', 'Cape', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7062127, -71.3022726, ST_GeomFromText('POINT(41.7062127 -71.3022726)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218494', 'Rumstick Neck', 'Cape', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7173238, -71.3017169, ST_GeomFromText('POINT(41.7173238 -71.3017169)', 4326), NULL, NULL, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1930-01-01'),
  ('1218495', 'Smith Cove', 'Bay', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7192683, -71.2967167, ST_GeomFromText('POINT(41.7192683 -71.2967167)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218496', 'Hyde Hole', 'Bay', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7198237, -71.3078284, ST_GeomFromText('POINT(41.7198237 -71.3078284)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218497', 'Barrington Beach', 'Beach', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7234348, -71.3128286, ST_GeomFromText('POINT(41.7234348 -71.3128286)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218499', 'Conimicut Point', 'Cape', 'Rhode Island', 'RI', 'Kent', 'Bristol', 41.7173235, -71.3569975, ST_GeomFromText('POINT(41.7173235 -71.3569975)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218500', 'Nayatt Point', 'Cape', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7251013, -71.338941, ST_GeomFromText('POINT(41.7251013 -71.338941)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218502', 'Mussachuck Creek', 'Stream', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7303791, -71.3414411, ST_GeomFromText('POINT(41.7303791 -71.3414411)', 4326), 41.7344444, -71.3238889, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218503', 'Echo Lake', 'Reservoir', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7353993, -71.3345079, ST_GeomFromText('POINT(41.7353993 -71.3345079)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218505', 'Little Island', 'Island', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7337127, -71.2889385, ST_GeomFromText('POINT(41.7337127 -71.2889385)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218507', 'Warren Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7377901, -71.2612578, ST_GeomFromText('POINT(41.7377901 -71.2612578)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218508', 'Heath Brook', 'Stream', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.743435, -71.2561591, ST_GeomFromText('POINT(41.743435 -71.2561591)', 4326), 41.7639905, -71.2506035, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218509', 'Belcher Cove', 'Bay', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.737046, -71.280327, ST_GeomFromText('POINT(41.737046 -71.280327)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218510', 'Upper Grinnell Point', 'Cape', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7392683, -71.286994, ST_GeomFromText('POINT(41.7392683 -71.286994)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218512', 'Prince Hill', 'Summit', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7428707, -71.3156059, ST_GeomFromText('POINT(41.7428707 -71.3156059)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1972-01-01'),
  ('1218513', 'Prince Pond', 'Lake', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7436891, -71.3187125, ST_GeomFromText('POINT(41.7436891 -71.3187125)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218516', 'Drown Cove', 'Bay', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7442679, -71.346997, ST_GeomFromText('POINT(41.7442679 -71.346997)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218517', 'Annawomscutt Brook', 'Stream', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7462123, -71.3458859, ST_GeomFromText('POINT(41.7462123 -71.3458859)', 4326), 41.7798231, -71.3467196, '1976-05-21', NULL, 'Official', 'Board Decision', '1971-01-01'),
  ('1218519', 'Allen Neck', 'Cape', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7459345, -71.3500528, ST_GeomFromText('POINT(41.7459345 -71.3500528)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218520', 'North Branch Pawtuxet River', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Crompton', 41.7330556, -71.5105556, ST_GeomFromText('POINT(41.7330556 -71.5105556)', 4326), 41.7522969, -71.5839958, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1972-01-01'),
  ('1218521', 'Bullock Point', 'Cape', 'Rhode Island', 'RI', 'Providence', 'Bristol', 41.7451011, -71.358942, ST_GeomFromText('POINT(41.7451011 -71.358942)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218522', 'Founders Brook', 'Stream', 'Rhode Island', 'RI', 'Newport', 'Fall River', 41.6387133, -71.2453255, ST_GeomFromText('POINT(41.6387133 -71.2453255)', 4326), 41.625, -71.2486111, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218523', 'Town Pond', 'Lake', 'Rhode Island', 'RI', 'Newport', 'Fall River', 41.6356578, -71.2411587, ST_GeomFromText('POINT(41.6356578 -71.2411587)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218524', 'Old Orchard Cove', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Fall River', 41.6306579, -71.2322696, ST_GeomFromText('POINT(41.6306579 -71.2322696)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218525', 'Big River', 'Stream', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.6970444, -71.6064528, ST_GeomFromText('POINT(41.6970444 -71.6064528)', 4326), 41.6206557, -71.6208975, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218526', 'Tommy Island', 'Island', 'Rhode Island', 'RI', 'Newport', 'Fall River', 41.6345467, -71.2278249, ST_GeomFromText('POINT(41.6345467 -71.2278249)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218527', 'The Cove', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Fall River', 41.6312134, -71.2258805, ST_GeomFromText('POINT(41.6312134 -71.2258805)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218528', 'Spectacle Island', 'Island', 'Rhode Island', 'RI', 'Newport', 'Fall River', 41.6328801, -71.2244915, ST_GeomFromText('POINT(41.6328801 -71.2244915)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218529', 'Hen Island', 'Island', 'Rhode Island', 'RI', 'Newport', 'Fall River', 41.6287134, -71.2231026, ST_GeomFromText('POINT(41.6287134 -71.2231026)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218530', 'Blue Bill Cove', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Fall River', 41.626769, -71.2247693, ST_GeomFromText('POINT(41.626769 -71.2247693)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218531', 'Long Neck Cove', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Fall River', 41.6373245, -71.2236582, ST_GeomFromText('POINT(41.6373245 -71.2236582)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218532', 'Almy Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Fall River', 41.6289912, -71.2192136, ST_GeomFromText('POINT(41.6289912 -71.2192136)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218533', 'Hummock Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Fall River', 41.6306579, -71.2192136, ST_GeomFromText('POINT(41.6306579 -71.2192136)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218535', 'Anthony Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Fall River', 41.6348245, -71.2122689, ST_GeomFromText('POINT(41.6348245 -71.2122689)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218536', 'Creamer Pond', 'Lake', 'Rhode Island', 'RI', 'Newport', 'Fall River', 41.6362705, -71.2036047, ST_GeomFromText('POINT(41.6362705 -71.2036047)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218537', 'Stafford Pond', 'Lake', 'Rhode Island', 'RI', 'Newport', 'Fall River', 41.6401491, -71.1561441, ST_GeomFromText('POINT(41.6401491 -71.1561441)', 4326), NULL, NULL, '1976-05-21', '2023-04-06', 'Official', 'Board Decision', '1930-01-01'),
  ('1218540', 'Pocasset Cedar Swamp', 'Swamp', 'Rhode Island', 'RI', 'Newport', 'Fall River', 41.6614913, -71.1711566, ST_GeomFromText('POINT(41.6614913 -71.1711566)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218541', 'Pocasset Hill', 'Summit', 'Rhode Island', 'RI', 'Newport', 'Fall River', 41.6530588, -71.1914749, ST_GeomFromText('POINT(41.6530588 -71.1914749)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218542', 'Cook Hill', 'Summit', 'Rhode Island', 'RI', 'Newport', 'Fall River', 41.662733, -71.1881462, ST_GeomFromText('POINT(41.662733 -71.1881462)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218544', 'Common Fence Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Fall River', 41.65538, -71.2206025, ST_GeomFromText('POINT(41.65538 -71.2206025)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218545', 'Church Cove', 'Bay', 'Rhode Island', 'RI', 'Bristol', 'Fall River', 41.6681576, -71.2444921, ST_GeomFromText('POINT(41.6681576 -71.2444921)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218546', 'Seal Island', 'Island', 'Rhode Island', 'RI', 'Bristol', 'Fall River', 41.6653799, -71.2439365, ST_GeomFromText('POINT(41.6653799 -71.2439365)', 4326), NULL, NULL, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1967-12-12'),
  ('1218547', 'Mount Hope Point', 'Cape', 'Rhode Island', 'RI', 'Bristol', 'Fall River', 41.666491, -71.2389363, ST_GeomFromText('POINT(41.666491 -71.2389363)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218548', 'King Phillips Chair', 'Summit', 'Rhode Island', 'RI', 'Bristol', 'Fall River', 41.6747516, -71.2388499, ST_GeomFromText('POINT(41.6747516 -71.2388499)', 4326), NULL, NULL, '2002-08-27', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218551', 'Sucker Brook', 'Stream', 'Rhode Island', 'RI', 'Newport', 'Fall River', 41.6731581, -71.1419891, ST_GeomFromText('POINT(41.6731581 -71.1419891)', 4326), 41.6544444, -71.1608333, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218554', 'Little Neck', 'Cape', 'Rhode Island', 'RI', 'Bristol', 'Fall River', 41.7028797, -71.2397697, ST_GeomFromText('POINT(41.7028797 -71.2397697)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218555', 'Chase Cove', 'Bay', 'Rhode Island', 'RI', 'Bristol', 'Fall River', 41.7039908, -71.2397697, ST_GeomFromText('POINT(41.7039908 -71.2397697)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218556', 'Toweset Point', 'Cape', 'Rhode Island', 'RI', 'Bristol', 'Fall River', 41.7020464, -71.232825, ST_GeomFromText('POINT(41.7020464 -71.232825)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218557', 'Spar Island', 'Island', 'Rhode Island', 'RI', 'Bristol', 'Fall River', 41.6887132, -71.2203247, ST_GeomFromText('POINT(41.6887132 -71.2203247)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218558', 'Kickamuit River', 'Stream', 'Rhode Island', 'RI', 'Bristol', 'Fall River', 41.6973241, -71.2439364, ST_GeomFromText('POINT(41.6973241 -71.2439364)', 4326), 41.7773237, -71.2286587, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1967-01-01'),
  ('1218562', 'Cucumber Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'East Killingly', 41.7567574, -71.7700689, ST_GeomFromText('POINT(41.7567574 -71.7700689)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218563', 'Clark Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'East Killingly', 41.7725713, -71.7764346, ST_GeomFromText('POINT(41.7725713 -71.7764346)', 4326), NULL, NULL, '1976-05-21', '2018-05-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1218564', 'Honeypot Swamp', 'Swamp', 'Rhode Island', 'RI', 'Providence', 'East Killingly', 41.8008677, -71.7693922, ST_GeomFromText('POINT(41.8008677 -71.7693922)', 4326), NULL, NULL, '1976-05-21', '2022-08-03', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218566', 'Moran Swamp', 'Swamp', 'Rhode Island', 'RI', 'Providence', 'East Killingly', 41.8330549, -71.7748216, ST_GeomFromText('POINT(41.8330549 -71.7748216)', 4326), NULL, NULL, '1976-05-21', '2022-08-02', 'Official', 'Board Decision', '1930-01-01'),
  ('1218567', 'Shippee Sawmill Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'East Killingly', 41.8346521, -71.7517582, ST_GeomFromText('POINT(41.8346521 -71.7517582)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218568', 'Huntington Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'East Killingly', 41.8387099, -71.756736, ST_GeomFromText('POINT(41.8387099 -71.756736)', 4326), 41.835, -71.77, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218569', 'Balm of Gilead Swamp', 'Swamp', 'Rhode Island', 'RI', 'Providence', 'East Killingly', 41.8377399, -71.7767212, ST_GeomFromText('POINT(41.8377399 -71.7767212)', 4326), NULL, NULL, '1976-05-21', '2022-08-02', 'Official', 'Board Decision', '1930-01-01'),
  ('1218570', 'Mount Hygeia', 'Summit', 'Rhode Island', 'RI', 'Providence', 'East Killingly', 41.8519866, -71.760989, ST_GeomFromText('POINT(41.8519866 -71.760989)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218572', 'Mowry Meadow', 'Swamp', 'Rhode Island', 'RI', 'Providence', 'East Killingly', 41.8689627, -71.7836483, ST_GeomFromText('POINT(41.8689627 -71.7836483)', 4326), NULL, NULL, '1976-05-21', '2023-04-03', 'Official', 'Board Decision', '1930-01-01'),
  ('1218573', 'Howard Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.7603687, -71.7164561, ST_GeomFromText('POINT(41.7603687 -71.7164561)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218574', 'Big Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.7592681, -71.6750026, ST_GeomFromText('POINT(41.7592681 -71.6750026)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218575', 'Potterville Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.7553775, -71.657566, ST_GeomFromText('POINT(41.7553775 -71.657566)', 4326), 41.7389885, -71.6720108, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218576', 'Field Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.76898, -71.6503427, ST_GeomFromText('POINT(41.76898 -71.6503427)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218577', 'Wilbur Hollow Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.7695441, -71.6303427, ST_GeomFromText('POINT(41.7695441 -71.6303427)', 4326), 41.755, -71.6747222, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218579', 'Bear Tree Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.7823216, -71.6733999, ST_GeomFromText('POINT(41.7823216 -71.6733999)', 4326), 41.7791667, -71.6961111, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218581', 'Hemlock Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.7906549, -71.6828446, ST_GeomFromText('POINT(41.7906549 -71.6828446)', 4326), 41.7741667, -71.7319444, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218583', 'Bennett Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.778266, -71.741555, ST_GeomFromText('POINT(41.778266 -71.741555)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218584', 'Spear Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.803442, -71.7300115, ST_GeomFromText('POINT(41.803442 -71.7300115)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218585', 'Paine Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.8048213, -71.724235, ST_GeomFromText('POINT(41.8048213 -71.724235)', 4326), 41.8106545, -71.7614583, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218586', 'Barden Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.7969995, -71.6876462, ST_GeomFromText('POINT(41.7969995 -71.6876462)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218587', 'Ponaganset River', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.7934327, -71.6678441, ST_GeomFromText('POINT(41.7934327 -71.6678441)', 4326), 41.8680556, -71.7436111, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218589', 'Cork Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.7923217, -71.6450656, ST_GeomFromText('POINT(41.7923217 -71.6450656)', 4326), 41.8230556, -71.6538889, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218590', 'Round Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.8236945, -71.682888, ST_GeomFromText('POINT(41.8236945 -71.682888)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218591', 'Dolly Cole Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.8159324, -71.6997897, ST_GeomFromText('POINT(41.8159324 -71.6997897)', 4326), 41.8611111, -71.6916667, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218593', 'Hopkins Mills Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.8253601, -71.7099464, ST_GeomFromText('POINT(41.8253601 -71.7099464)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218595', 'Shippee Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.8348211, -71.7350688, ST_GeomFromText('POINT(41.8348211 -71.7350688)', 4326), 41.8550987, -71.7664584, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1972-01-01'),
  ('1218596', 'Oak Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.8437014, -71.7150673, ST_GeomFromText('POINT(41.8437014 -71.7150673)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218597', 'Witch Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.8427983, -71.7065644, ST_GeomFromText('POINT(41.8427983 -71.7065644)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218598', 'Chopmist Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.8409619, -71.6700872, ST_GeomFromText('POINT(41.8409619 -71.6700872)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218599', 'Killy Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.8514878, -71.7217349, ST_GeomFromText('POINT(41.8514878 -71.7217349)', 4326), 41.878432, -71.7328464, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1972-01-01'),
  ('1218600', 'Cherry Valley Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.8736456, -71.6712873, ST_GeomFromText('POINT(41.8736456 -71.6712873)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218601', 'Schwindel Swamp', 'Swamp', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.8703614, -71.6851277, ST_GeomFromText('POINT(41.8703614 -71.6851277)', 4326), NULL, NULL, '1976-05-21', '2022-08-02', 'Official', 'Board Decision', '1930-01-01'),
  ('1218602', 'Peckham Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.86669, -71.69337, ST_GeomFromText('POINT(41.86669 -71.69337)', 4326), NULL, NULL, '1976-05-21', '2024-10-02', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218603', 'Peckham Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.8737099, -71.6914561, ST_GeomFromText('POINT(41.8737099 -71.6914561)', 4326), 41.8800987, -71.7120124, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218604', 'Stone Dam Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.8656567, -71.699067, ST_GeomFromText('POINT(41.8656567 -71.699067)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218605', 'Allan Richard Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.8575988, -71.7192348, ST_GeomFromText('POINT(41.8575988 -71.7192348)', 4326), 41.8711111, -71.7288889, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218606', 'Hannah Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.8514878, -71.7217349, ST_GeomFromText('POINT(41.8514878 -71.7217349)', 4326), 41.8778765, -71.7217349, '1976-05-21', NULL, 'Official', 'Board Decision', '1972-01-01'),
  ('1218607', 'Pray Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.8562013, -71.7386792, ST_GeomFromText('POINT(41.8562013 -71.7386792)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218608', 'King Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.772318, -71.6605335, ST_GeomFromText('POINT(41.772318 -71.6605335)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218609', 'Swamp Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.7942661, -71.6678441, ST_GeomFromText('POINT(41.7942661 -71.6678441)', 4326), 41.8205556, -71.6783333, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218610', 'Tunk Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.7562024, -71.622564, ST_GeomFromText('POINT(41.7562024 -71.622564)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218611', 'Indian Rock', 'Pillar', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.751211, -71.5956193, ST_GeomFromText('POINT(41.751211 -71.5956193)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218613', 'John L Curran Upper Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.7526076, -71.5490536, ST_GeomFromText('POINT(41.7526076 -71.5490536)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218614', 'Applehouse Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.7834249, -71.5081155, ST_GeomFromText('POINT(41.7834249 -71.5081155)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218616', 'Bald Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.7719182, -71.5551451, ST_GeomFromText('POINT(41.7719182 -71.5551451)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218617', 'Betty Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.7821677, -71.5665925, ST_GeomFromText('POINT(41.7821677 -71.5665925)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1972-01-01'),
  ('1218618', 'Kent Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.7684332, -71.5756186, ST_GeomFromText('POINT(41.7684332 -71.5756186)', 4326), 41.7791667, -71.5688889, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218619', 'Spruce Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.7859329, -71.6195091, ST_GeomFromText('POINT(41.7859329 -71.6195091)', 4326), 41.8062105, -71.6333985, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218620', 'Quonopaug Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.7987107, -71.589508, ST_GeomFromText('POINT(41.7987107 -71.589508)', 4326), 41.7869444, -71.57, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218622', 'Scituate Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.7724732, -71.6108501, ST_GeomFromText('POINT(41.7724732 -71.6108501)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218623', 'Horn Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.7853692, -71.5556172, ST_GeomFromText('POINT(41.7853692 -71.5556172)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218624', 'Peck Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.8021555, -71.5598044, ST_GeomFromText('POINT(41.8021555 -71.5598044)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218625', 'Lawton Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.7913511, -71.5422666, ST_GeomFromText('POINT(41.7913511 -71.5422666)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218626', 'Simmons Upper Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.7999834, -71.5225953, ST_GeomFromText('POINT(41.7999834 -71.5225953)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218627', 'Simmons Lower Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.7930266, -71.5134952, ST_GeomFromText('POINT(41.7930266 -71.5134952)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218629', 'Hughesdale Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.807957, -71.5033352, ST_GeomFromText('POINT(41.807957 -71.5033352)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218630', 'Suckatunkanuc Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.814396, -71.5057896, ST_GeomFromText('POINT(41.814396 -71.5057896)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218631', 'Sutamachute Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.8070283, -71.5141887, ST_GeomFromText('POINT(41.8070283 -71.5141887)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218632', 'Almy Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.8170913, -71.5221073, ST_GeomFromText('POINT(41.8170913 -71.5221073)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218633', 'Round Rocks', 'Summit', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.8099675, -71.5249736, ST_GeomFromText('POINT(41.8099675 -71.5249736)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218634', 'Cedar Swamp Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.8028776, -71.5275615, ST_GeomFromText('POINT(41.8028776 -71.5275615)', 4326), 41.8116667, -71.5502778, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218635', 'Duck Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.8097029, -71.5639245, ST_GeomFromText('POINT(41.8097029 -71.5639245)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218636', 'Madison Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.8101707, -71.5694875, ST_GeomFromText('POINT(41.8101707 -71.5694875)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1972-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218638', 'Bullhead Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.8187106, -71.6022863, ST_GeomFromText('POINT(41.8187106 -71.6022863)', 4326), 41.8144444, -71.6227778, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218639', 'Dexter Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.8301767, -71.60779, ST_GeomFromText('POINT(41.8301767 -71.60779)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218640', 'Brandy Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.8192662, -71.5864524, ST_GeomFromText('POINT(41.8192662 -71.5864524)', 4326), 41.8102778, -71.5730556, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218641', 'Pine Swamp', 'Swamp', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.8224261, -71.5659571, ST_GeomFromText('POINT(41.8224261 -71.5659571)', 4326), NULL, NULL, '1976-05-21', '2022-08-03', 'Official', 'Board Decision', '1930-01-01'),
  ('1218642', 'Pine Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.8209243, -71.5542284, ST_GeomFromText('POINT(41.8209243 -71.5542284)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218645', 'Pocasset Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.8264602, -71.5068348, ST_GeomFromText('POINT(41.8264602 -71.5068348)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218648', 'Secesakut Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.8364739, -71.5054022, ST_GeomFromText('POINT(41.8364739 -71.5054022)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218649', 'Duck Ponds', 'Lake', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.8401735, -71.5170237, ST_GeomFromText('POINT(41.8401735 -71.5170237)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218650', 'Snake Den', 'Summit', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.8473131, -71.5253385, ST_GeomFromText('POINT(41.8473131 -71.5253385)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218651', 'Sickkibunkiaut Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.8487019, -71.5578397, ST_GeomFromText('POINT(41.8487019 -71.5578397)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218652', 'Kimball Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.8370574, -71.5631028, ST_GeomFromText('POINT(41.8370574 -71.5631028)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218653', 'Moswansicut Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.8438256, -71.5761494, ST_GeomFromText('POINT(41.8438256 -71.5761494)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218654', 'Peeptoad Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.8467659, -71.6047865, ST_GeomFromText('POINT(41.8467659 -71.6047865)', 4326), 41.8959321, -71.6386766, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218655', 'Huntinghouse Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.841766, -71.6070087, ST_GeomFromText('POINT(41.841766 -71.6070087)', 4326), 41.8639879, -71.6625663, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1972-01-01'),
  ('1218656', 'Rush Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.839266, -71.6100644, ST_GeomFromText('POINT(41.839266 -71.6100644)', 4326), 41.8642657, -71.6625663, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218657', 'Mosquitohawk Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.8903766, -71.6536771, ST_GeomFromText('POINT(41.8903766 -71.6536771)', 4326), 41.89, -71.6541667, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1972-01-01'),
  ('1218658', 'Peeptoad Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.8540287, -71.6060454, ST_GeomFromText('POINT(41.8540287 -71.6060454)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218659', 'Cat Rocks', 'Summit', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.855379, -71.5190296, ST_GeomFromText('POINT(41.855379 -71.5190296)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218660', 'Tracy Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.8609241, -71.5220052, ST_GeomFromText('POINT(41.8609241 -71.5220052)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218661', 'Hawkins Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.8608538, -71.5455326, ST_GeomFromText('POINT(41.8608538 -71.5455326)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218662', 'Snake Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.865806, -71.5828191, ST_GeomFromText('POINT(41.865806 -71.5828191)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218664', 'Winsor Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.830099, -71.7184015, ST_GeomFromText('POINT(41.830099 -71.7184015)', 4326), 41.8513889, -71.7222222, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1972-01-01'),
  ('1218666', 'Slack Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.8612238, -71.5532533, ST_GeomFromText('POINT(41.8612238 -71.5532533)', 4326), NULL, NULL, '1976-05-21', '2023-04-06', 'Official', 'Board Decision', '1930-01-01'),
  ('1218668', 'Bare Rock', 'Summit', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.8670352, -71.5067269, ST_GeomFromText('POINT(41.8670352 -71.5067269)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1972-01-01'),
  ('1218669', 'Sebille Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.8717108, -71.5129977, ST_GeomFromText('POINT(41.8717108 -71.5129977)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218670', 'Soakhide Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.8320437, -71.6220092, ST_GeomFromText('POINT(41.8320437 -71.6220092)', 4326), 41.8198216, -71.6283983, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218671', 'Rocky Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.8521972, -71.6154026, ST_GeomFromText('POINT(41.8521972 -71.6154026)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1972-01-01'),
  ('1218672', 'Hawkins Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.8737105, -71.5006163, ST_GeomFromText('POINT(41.8737105 -71.5006163)', 4326), 41.8708333, -71.5269444, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218673', 'Furnace Hill Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.755656, -71.4822817, ST_GeomFromText('POINT(41.755656 -71.4822817)', 4326), 41.7956554, -71.5525623, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218677', 'Pocasset River', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7578784, -71.4406129, ST_GeomFromText('POINT(41.7578784 -71.4406129)', 4326), 41.8462106, -71.5406176, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218679', 'Cranberry Bog', 'Swamp', 'Rhode Island', 'RI', 'Kent', 'Providence', 41.7519798, -71.4219161, ST_GeomFromText('POINT(41.7519798 -71.4219161)', 4326), NULL, NULL, '1976-05-21', '2022-08-03', 'Official', 'Board Decision', '1930-01-01'),
  ('1218682', 'Pawtuxet River', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7645452, -71.3894993, ST_GeomFromText('POINT(41.7645452 -71.3894993)', 4326), 41.7164893, -71.5106161, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218683', 'Pawtuxet Neck', 'Cape', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7639898, -71.3856102, ST_GeomFromText('POINT(41.7639898 -71.3856102)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1971-01-01'),
  ('1218684', 'Marsh Island', 'Island', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7581565, -71.3836657, ST_GeomFromText('POINT(41.7581565 -71.3836657)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218687', 'Sockanosset Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7693066, -71.4644369, ST_GeomFromText('POINT(41.7693066 -71.4644369)', 4326), NULL, NULL, '1976-05-21', '2018-03-30', 'Official', 'Board Decision', '1930-01-01'),
  ('1218691', 'Fenner Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.771984, -71.419873, ST_GeomFromText('POINT(41.771984 -71.419873)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1971-01-01'),
  ('1218692', 'Bellefont Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7691843, -71.4141833, ST_GeomFromText('POINT(41.7691843 -71.4141833)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1971-01-01'),
  ('1218694', 'Deep Spring Lake', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7763333, -71.4157858, ST_GeomFromText('POINT(41.7763333 -71.4157858)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1971-01-01'),
  ('1218695', 'Cunliff Lake', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.779545, -71.4125562, ST_GeomFromText('POINT(41.779545 -71.4125562)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218696', 'Edgewood Lake', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.781441, -71.405532, ST_GeomFromText('POINT(41.781441 -71.405532)', 4326), NULL, NULL, '1976-05-21', '2024-10-02', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218698', 'Fields Point', 'Cape', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7876007, -71.3803324, ST_GeomFromText('POINT(41.7876007 -71.3803324)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1963-01-01'),
  ('1218699', 'Kettle Point', 'Cape', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.792045, -71.3811659, ST_GeomFromText('POINT(41.792045 -71.3811659)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218700', 'Pleasure Lake', 'Cape', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7856561, -71.4103338, ST_GeomFromText('POINT(41.7856561 -71.4103338)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218701', 'Roosevelt Lake', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7828025, -71.4169715, ST_GeomFromText('POINT(41.7828025 -71.4169715)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1971-01-01'),
  ('1218702', 'Polo Lake', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7868551, -71.415366, ST_GeomFromText('POINT(41.7868551 -71.415366)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218704', 'Spectacle Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7903907, -71.4427117, ST_GeomFromText('POINT(41.7903907 -71.4427117)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218705', 'Tongue Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.798335, -71.4429497, ST_GeomFromText('POINT(41.798335 -71.4429497)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218706', 'Print Works Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.797175, -71.4602754, ST_GeomFromText('POINT(41.797175 -71.4602754)', 4326), NULL, NULL, '1976-05-21', '2015-04-27', 'Official', 'Board Decision', '1930-01-01'),
  ('1218707', 'Randall Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7885168, -71.4687973, ST_GeomFromText('POINT(41.7885168 -71.4687973)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218708', 'Dyer Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7953925, -71.4656909, ST_GeomFromText('POINT(41.7953925 -71.4656909)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218710', 'Stone Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7899707, -71.4888036, ST_GeomFromText('POINT(41.7899707 -71.4888036)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218711', 'Dugaway Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7836547, -71.4832206, ST_GeomFromText('POINT(41.7836547 -71.4832206)', 4326), NULL, NULL, '1976-05-21', '2018-04-06', 'Official', 'Board Decision', '1930-01-01'),
  ('1218712', 'Simmons Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7978779, -71.4811707, ST_GeomFromText('POINT(41.7978779 -71.4811707)', 4326), 41.7931556, -71.5106164, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218713', 'Dry Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8078777, -71.4897823, ST_GeomFromText('POINT(41.8078777 -71.4897823)', 4326), 41.8256552, -71.5381174, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218715', 'Neutaconkanut Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8050915, -71.4725787, ST_GeomFromText('POINT(41.8050915 -71.4725787)', 4326), NULL, NULL, '1976-05-21', '2018-04-06', 'Official', 'Board Decision', '1930-01-01'),
  ('1218716', 'Rocky Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8018106, -71.453584, ST_GeomFromText('POINT(41.8018106 -71.453584)', 4326), NULL, NULL, '1976-05-21', '2018-04-06', 'Official', 'Board Decision', '1930-01-01'),
  ('1218717', 'Sassafras Point', 'Cape', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8001005, -71.3928331, ST_GeomFromText('POINT(41.8001005 -71.3928331)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218718', 'Watchemoket Cove', 'Bay', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.799545, -71.3756101, ST_GeomFromText('POINT(41.799545 -71.3756101)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218719', 'Fort Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8139867, -71.3867155, ST_GeomFromText('POINT(41.8139867 -71.3867155)', 4326), NULL, NULL, '1976-05-21', '2018-04-07', 'Official', 'Board Decision', '1930-01-01'),
  ('1218720', 'Providence Harbor', 'Bay', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8112115, -71.3972779, ST_GeomFromText('POINT(41.8112115 -71.3972779)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218723', 'Mount Pleasant', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8264182, -71.4480475, ST_GeomFromText('POINT(41.8264182 -71.4480475)', 4326), NULL, NULL, '1976-05-21', '2018-05-01', 'Official', 'Board Decision', '1930-01-01'),
  ('1218724', 'Fox Point', 'Cape', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8145447, -71.3989447, ST_GeomFromText('POINT(41.8145447 -71.3989447)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218725', 'India Point', 'Cape', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8170448, -71.3894998, ST_GeomFromText('POINT(41.8170448 -71.3894998)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218726', 'Crook Point', 'Cape', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8231559, -71.3833885, ST_GeomFromText('POINT(41.8231559 -71.3833885)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218728', 'Cold Spring Point', 'Cape', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8256559, -71.3836664, ST_GeomFromText('POINT(41.8256559 -71.3836664)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218729', 'Blackstone Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8306105, -71.3799857, ST_GeomFromText('POINT(41.8306105 -71.3799857)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218730', 'York Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8353799, -71.3795423, ST_GeomFromText('POINT(41.8353799 -71.3795423)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218731', 'Goose Point', 'Cape', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8417669, -71.3778329, ST_GeomFromText('POINT(41.8417669 -71.3778329)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218732', 'Seekonk River', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8139892, -71.4003336, ST_GeomFromText('POINT(41.8139892 -71.4003336)', 4326), 41.8995441, -71.3858894, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1930-02-05'),
  ('1218733', 'Moshassuck River', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8264891, -71.412001, ST_GeomFromText('POINT(41.8264891 -71.412001)', 4326), 41.9234324, -71.4542257, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1972-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218734', 'Bradley Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8434187, -71.4352287, ST_GeomFromText('POINT(41.8434187 -71.4352287)', 4326), NULL, NULL, '1976-05-21', '2018-05-01', 'Official', 'Board Decision', '1930-01-01'),
  ('1218737', 'Assapumpset Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8437108, -71.479782, ST_GeomFromText('POINT(41.8437108 -71.479782)', 4326), 41.8573216, -71.5242281, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218741', 'Longview Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.862044, -71.4625591, ST_GeomFromText('POINT(41.862044 -71.4625591)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218743', 'Canada Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8595874, -71.4277742, ST_GeomFromText('POINT(41.8595874 -71.4277742)', 4326), NULL, NULL, '1976-05-21', '2015-04-27', 'Official', 'Board Decision', '1971-01-01'),
  ('1218744', 'Windmill Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8591864, -71.4176602, ST_GeomFromText('POINT(41.8591864 -71.4176602)', 4326), NULL, NULL, '1976-05-21', '2018-05-01', 'Official', 'Board Decision', '1930-01-01'),
  ('1218745', 'Swan Point', 'Cape', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8487112, -71.3767218, ST_GeomFromText('POINT(41.8487112 -71.3767218)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218746', 'Stony Point', 'Cape', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8573223, -71.3789442, ST_GeomFromText('POINT(41.8573223 -71.3789442)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218747', 'Bensley Point', 'Cape', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8628778, -71.3792221, ST_GeomFromText('POINT(41.8628778 -71.3792221)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218752', 'Pawtuxet Cove', 'Bay', 'Rhode Island', 'RI', 'Kent', 'Providence', 41.7614898, -71.3878325, ST_GeomFromText('POINT(41.7614898 -71.3878325)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218753', 'Woonasquatucket River', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8139892, -71.4006114, ST_GeomFromText('POINT(41.8139892 -71.4006114)', 4326), 41.97069, -71.56004, '1976-05-21', '2012-06-07', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218754', 'Mashapaug Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7939326, -71.4325253, ST_GeomFromText('POINT(41.7939326 -71.4325253)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218755', 'Bold Point', 'Cape', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.815656, -71.3914443, ST_GeomFromText('POINT(41.815656 -71.3914443)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218756', 'Sabin Point', 'Cape', 'Rhode Island', 'RI', 'Providence', 'East Providence', 41.7653787, -71.3697761, ST_GeomFromText('POINT(41.7653787 -71.3697761)', 4326), NULL, NULL, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1929-03-06'),
  ('1218757', 'Bullock Neck', 'Cape', 'Rhode Island', 'RI', 'Providence', 'East Providence', 41.7559344, -71.3606089, ST_GeomFromText('POINT(41.7559344 -71.3606089)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218758', 'Primrose Hill', 'Summit', 'Rhode Island', 'RI', 'Bristol', 'East Providence', 41.7598148, -71.3322736, ST_GeomFromText('POINT(41.7598148 -71.3322736)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1971-01-01'),
  ('1218759', 'The Tongue', 'Cape', 'Rhode Island', 'RI', 'Bristol', 'East Providence', 41.7623235, -71.3131066, ST_GeomFromText('POINT(41.7623235 -71.3131066)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218760', 'Hundred Acre Cove', 'Bay', 'Rhode Island', 'RI', 'Bristol', 'East Providence', 41.7626013, -71.3061618, ST_GeomFromText('POINT(41.7626013 -71.3061618)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218761', 'New Meadow Neck', 'Cape', 'Rhode Island', 'RI', 'Bristol', 'East Providence', 41.7612125, -71.296439, ST_GeomFromText('POINT(41.7612125 -71.296439)', 4326), NULL, NULL, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1971-01-01'),
  ('1218762', 'Nockum Hill', 'Summit', 'Rhode Island', 'RI', 'Bristol', 'East Providence', 41.7698148, -71.3128283, ST_GeomFromText('POINT(41.7698148 -71.3128283)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218763', 'Runnins River', 'Stream', 'Rhode Island', 'RI', 'Providence', 'East Providence', 41.7773233, -71.3231073, ST_GeomFromText('POINT(41.7773233 -71.3231073)', 4326), 41.8612513, -71.3104534, '1976-05-21', '2018-11-15', 'Official', 'Board Decision', '1971-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218765', 'Willett Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'East Providence', 41.7765068, -71.3561101, ST_GeomFromText('POINT(41.7765068 -71.3561101)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218766', 'Pomham Rocks', 'Pillar', 'Rhode Island', 'RI', 'Providence', 'East Providence', 41.7778786, -71.3689428, ST_GeomFromText('POINT(41.7778786 -71.3689428)', 4326), NULL, NULL, '1976-05-21', '2011-09-14', 'Official', 'Board Decision', '1971-01-01'),
  ('1218767', 'Squantum Point', 'Cape', 'Rhode Island', 'RI', 'Providence', 'East Providence', 41.7901007, -71.3731099, ST_GeomFromText('POINT(41.7901007 -71.3731099)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218772', 'Walker Point', 'Cape', 'Rhode Island', 'RI', 'Providence', 'East Providence', 41.8337114, -71.372277, ST_GeomFromText('POINT(41.8337114 -71.372277)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218773', 'Omega Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'East Providence', 41.8367033, -71.3635587, ST_GeomFromText('POINT(41.8367033 -71.3635587)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218775', 'James V Turner Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'East Providence', 41.8378438, -71.3392839, ST_GeomFromText('POINT(41.8378438 -71.3392839)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218776', 'Central Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'East Providence', 41.8423226, -71.3428313, ST_GeomFromText('POINT(41.8423226 -71.3428313)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218779', 'Bucklin Point', 'Cape', 'Rhode Island', 'RI', 'Providence', 'East Providence', 41.8498224, -71.3697771, ST_GeomFromText('POINT(41.8498224 -71.3697771)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1971-01-01'),
  ('1218780', 'Bishop Cove', 'Bay', 'Rhode Island', 'RI', 'Providence', 'East Providence', 41.8534334, -71.3697771, ST_GeomFromText('POINT(41.8534334 -71.3697771)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218782', 'Herring Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9656539, -71.6625664, ST_GeomFromText('POINT(41.9656539 -71.6625664)', 4326), 41.9783333, -71.6666667, '1976-05-21', NULL, 'Official', 'Board Decision', '1971-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218784', 'Duck Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9628755, -71.6858313, ST_GeomFromText('POINT(41.9628755 -71.6858313)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218786', 'Nipmuc River', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9709316, -71.6789558, ST_GeomFromText('POINT(41.9709316 -71.6789558)', 4326), 41.9955556, -71.6905556, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1971-01-01'),
  ('1218787', 'Pascoag River', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9662094, -71.7003454, ST_GeomFromText('POINT(41.9662094 -71.7003454)', 4326), 41.955, -71.7033333, '1976-05-21', NULL, 'Official', 'Board Decision', '1971-01-01'),
  ('1218789', 'Mowry Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9673204, -71.6989564, ST_GeomFromText('POINT(41.9673204 -71.6989564)', 4326), 41.9955556, -71.7222222, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1971-01-01'),
  ('1218791', 'Ross Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9624373, -71.718056, ST_GeomFromText('POINT(41.9624373 -71.718056)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218792', 'Wilson Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9687122, -71.7288613, ST_GeomFromText('POINT(41.9687122 -71.7288613)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218793', 'Leland Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9662093, -71.7303464, ST_GeomFromText('POINT(41.9662093 -71.7303464)', 4326), 41.9436111, -71.7413889, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218794', 'Iron Mine Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.973987, -71.7406245, ST_GeomFromText('POINT(41.973987 -71.7406245)', 4326), 41.96, -71.7488889, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218795', 'Dry Arm Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9750981, -71.7414578, ST_GeomFromText('POINT(41.9750981 -71.7414578)', 4326), 41.9723202, -71.7703474, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218796', 'Spring Lake', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9839738, -71.6624418, ST_GeomFromText('POINT(41.9839738 -71.6624418)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1971-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218797', 'Tucker Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9862094, -71.6256207, ST_GeomFromText('POINT(41.9862094 -71.6256207)', 4326), 42.0017648, -71.6308987, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218800', 'Garvy Ledges', 'Bench', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9500983, -71.700901, ST_GeomFromText('POINT(41.9500983 -71.700901)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218801', 'Steere Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.8852733, -71.6158852, ST_GeomFromText('POINT(41.8852733 -71.6158852)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218802', 'Cutler Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.8839879, -71.5964529, ST_GeomFromText('POINT(41.8839879 -71.5964529)', 4326), 41.9066667, -71.615, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218803', 'Oak Island', 'Island', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.8784324, -71.585897, ST_GeomFromText('POINT(41.8784324 -71.585897)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218804', 'Waterman Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.877425, -71.5837994, ST_GeomFromText('POINT(41.877425 -71.5837994)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218805', 'Nine Foot Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.8825991, -71.5800635, ST_GeomFromText('POINT(41.8825991 -71.5800635)', 4326), 41.9194444, -71.5875, '1976-05-21', NULL, 'Official', 'Board Decision', '1971-01-01'),
  ('1218806', 'Sprague Upper Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.8933275, -71.5646638, ST_GeomFromText('POINT(41.8933275 -71.5646638)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218807', 'Sprague Lower Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.8874654, -71.5493875, ST_GeomFromText('POINT(41.8874654 -71.5493875)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218809', 'Mountaindale Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.88203, -71.53638, ST_GeomFromText('POINT(41.88203 -71.53638)', 4326), NULL, NULL, '1976-05-21', '2024-10-02', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218810', 'Reaper Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.8787103, -71.5361731, ST_GeomFromText('POINT(41.8787103 -71.5361731)', 4326), 41.8628771, -71.5450623, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218811', 'Wolf Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.8860278, -71.527467, ST_GeomFromText('POINT(41.8860278 -71.527467)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218813', 'Georgiaville Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.8941558, -71.5118511, ST_GeomFromText('POINT(41.8941558 -71.5118511)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218814', 'Capron Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9036335, -71.5223336, ST_GeomFromText('POINT(41.9036335 -71.5223336)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218815', 'Stillwater Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9083872, -71.5303822, ST_GeomFromText('POINT(41.9083872 -71.5303822)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218816', 'Wionkhiege Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9020348, -71.5575621, ST_GeomFromText('POINT(41.9020348 -71.5575621)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218817', 'Shinscot Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.8945434, -71.5817302, ST_GeomFromText('POINT(41.8945434 -71.5817302)', 4326), 41.9130556, -71.6033333, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218818', 'Absalona Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.905368, -71.6220087, ST_GeomFromText('POINT(41.905368 -71.6220087)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218819', 'Keech Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9178679, -71.6156196, ST_GeomFromText('POINT(41.9178679 -71.6156196)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218820', 'Latham Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9145433, -71.5570072, ST_GeomFromText('POINT(41.9145433 -71.5570072)', 4326), 41.9275, -71.5727778, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218821', 'Stillwater River', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9089879, -71.5436734, ST_GeomFromText('POINT(41.9089879 -71.5436734)', 4326), 41.8780556, -71.5772222, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1972-01-01'),
  ('1218822', 'Stillwater Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9069922, -71.5466334, ST_GeomFromText('POINT(41.9069922 -71.5466334)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1972-01-01'),
  ('1218823', 'Harris Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9150556, -71.5057112, ST_GeomFromText('POINT(41.9150556 -71.5057112)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218824', 'Rocky Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9306459, -71.5097828, ST_GeomFromText('POINT(41.9306459 -71.5097828)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1971-01-01'),
  ('1218825', 'Forge Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9305915, -71.5562161, ST_GeomFromText('POINT(41.9305915 -71.5562161)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218826', 'Nipsachuck Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9417568, -71.568118, ST_GeomFromText('POINT(41.9417568 -71.568118)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218827', 'Nipsachuck Swamp', 'Swamp', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9379328, -71.578998, ST_GeomFromText('POINT(41.9379328 -71.578998)', 4326), NULL, NULL, '1976-05-21', '2022-08-03', 'Official', 'Board Decision', '1930-01-01'),
  ('1218828', 'Mowry Paine Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.932043, -71.6131202, ST_GeomFromText('POINT(41.932043 -71.6131202)', 4326), 41.9045432, -71.6283985, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218829', 'Nichols Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.95286, -71.6014918, ST_GeomFromText('POINT(41.95286 -71.6014918)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218830', 'Lake Bel Air', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9548937, -71.581704, ST_GeomFromText('POINT(41.9548937 -71.581704)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218831', 'Sayles Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9578679, -71.5033937, ST_GeomFromText('POINT(41.9578679 -71.5033937)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218832', 'Whortleberry Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9671461, -71.524955, ST_GeomFromText('POINT(41.9671461 -71.524955)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218833', 'Todds Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9660357, -71.5397295, ST_GeomFromText('POINT(41.9660357 -71.5397295)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218834', 'Cat Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9585539, -71.5762812, ST_GeomFromText('POINT(41.9585539 -71.5762812)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218835', 'Black Plain Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9712009, -71.5742294, ST_GeomFromText('POINT(41.9712009 -71.5742294)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218836', 'Ridge Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9722097, -71.5894207, ST_GeomFromText('POINT(41.9722097 -71.5894207)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218837', 'Rankin Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Georgiaville', 41.9631541, -71.5892306, ST_GeomFromText('POINT(41.9631541 -71.5892306)', 4326), 41.9430556, -71.5847222, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218838', 'Tarkiln Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.975654, -71.5997866, ST_GeomFromText('POINT(41.975654 -71.5997866)', 4326), 41.9197222, -71.6097222, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218839', 'Tarkiln Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9637445, -71.594679, ST_GeomFromText('POINT(41.9637445 -71.594679)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218840', 'Trout Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9923205, -71.5833972, ST_GeomFromText('POINT(41.9923205 -71.5833972)', 4326), 41.9786111, -71.5658333, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1971-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218841', 'Trout Brook Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9883, -71.58197, ST_GeomFromText('POINT(41.9883 -71.58197)', 4326), NULL, NULL, '1976-05-21', '2024-10-02', 'Official', 'Board Decision', '1930-01-01'),
  ('1218842', 'Woonsocket Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9778769, -71.5538235, ST_GeomFromText('POINT(41.9778769 -71.5538235)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218843', 'Premisy Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9908499, -71.5521578, ST_GeomFromText('POINT(41.9908499 -71.5521578)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218844', 'Cedar Swamp', 'Swamp', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9761335, -71.5358404, ST_GeomFromText('POINT(41.9761335 -71.5358404)', 4326), NULL, NULL, '1976-05-21', '2022-08-02', 'Official', 'Board Decision', '1930-01-01'),
  ('1218845', 'Booth Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9820143, -71.5054186, ST_GeomFromText('POINT(41.9820143 -71.5054186)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218848', 'Wenscott Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8745715, -71.4662897, ST_GeomFromText('POINT(41.8745715 -71.4662897)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218849', 'Slatersville Reservoirs', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9873994, -71.5957494, ST_GeomFromText('POINT(41.9873994 -71.5957494)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1971-01-01'),
  ('1218850', 'Den Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9589179, -71.6088681, ST_GeomFromText('POINT(41.9589179 -71.6088681)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218851', 'Hunt Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.8803768, -71.6231205, ST_GeomFromText('POINT(41.8803768 -71.6231205)', 4326), 41.8933333, -71.6194444, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218852', 'Harris Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.8970435, -71.5117278, ST_GeomFromText('POINT(41.8970435 -71.5117278)', 4326), 41.9272222, -71.5027778, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218853', 'Primrose Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9571182, -71.5560144, ST_GeomFromText('POINT(41.9571182 -71.5560144)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218855', 'Whites Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Thompson', 41.8773121, -71.7747912, ST_GeomFromText('POINT(41.8773121 -71.7747912)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218856', 'Pine Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Thompson', 41.8802782, -71.7614228, ST_GeomFromText('POINT(41.8802782 -71.7614228)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218857', 'Dark Swamp', 'Swamp', 'Rhode Island', 'RI', 'Providence', 'Thompson', 41.8873576, -71.7630383, ST_GeomFromText('POINT(41.8873576 -71.7630383)', 4326), NULL, NULL, '1976-05-21', '2023-04-03', 'Official', 'Board Decision', '1930-01-01'),
  ('1218858', 'Whites Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Thompson', 41.8885116, -71.7734426, ST_GeomFromText('POINT(41.8885116 -71.7734426)', 4326), NULL, NULL, '1976-05-21', '2018-05-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1218859', 'Williams Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Thompson', 41.89618, -71.7901, ST_GeomFromText('POINT(41.89618 -71.7901)', 4326), NULL, NULL, '1976-05-21', '2024-10-03', 'Official', 'Board Decision', '1930-01-01'),
  ('1218860', 'Grist Mill Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Thompson', 41.8978054, -71.7935452, ST_GeomFromText('POINT(41.8978054 -71.7935452)', 4326), NULL, NULL, '1976-05-21', '2018-05-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1218861', 'Shady Oak Brook', 'Stream', 'Connecticut', 'CT', 'Northeastern Connecticut', 'Thompson', 41.8984316, -71.7992369, ST_GeomFromText('POINT(41.8984316 -71.7992369)', 4326), 41.8662097, -71.7831255, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218862', 'Tepee Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.8996201, -71.7496383, ST_GeomFromText('POINT(41.8996201 -71.7496383)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218863', 'Hemlock Ledges', 'Bench', 'Rhode Island', 'RI', 'Providence', 'Thompson', 41.9095427, -71.7909034, ST_GeomFromText('POINT(41.9095427 -71.7909034)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218866', 'Hawkins Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Thompson', 41.9189706, -71.793934, ST_GeomFromText('POINT(41.9189706 -71.793934)', 4326), NULL, NULL, '1976-05-21', '2018-05-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1218867', 'Clarkville Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Thompson', 41.9228079, -71.788279, ST_GeomFromText('POINT(41.9228079 -71.788279)', 4326), NULL, NULL, '1976-05-21', '2018-05-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1218868', 'Bowdish Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Thompson', 41.9227026, -71.7699861, ST_GeomFromText('POINT(41.9227026 -71.7699861)', 4326), NULL, NULL, '1976-05-21', '2021-03-06', 'Official', 'Board Decision', '1930-01-01'),
  ('1218869', 'Wilbur Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Thompson', 41.9315509, -71.7608727, ST_GeomFromText('POINT(41.9315509 -71.7608727)', 4326), NULL, NULL, '1976-05-21', '2018-05-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1218872', 'Wakefield Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Thompson', 41.9638722, -71.7921925, ST_GeomFromText('POINT(41.9638722 -71.7921925)', 4326), NULL, NULL, '1976-05-21', '2023-03-29', 'Official', 'Board Decision', '1930-01-01'),
  ('1218873', 'Cedar Swamp Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Thompson', 41.9641007, -71.7835232, ST_GeomFromText('POINT(41.9641007 -71.7835232)', 4326), NULL, NULL, '1976-05-21', '2018-05-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1218874', 'Round Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Thompson', 41.9718348, -71.7715222, ST_GeomFromText('POINT(41.9718348 -71.7715222)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218875', 'Badger Mountain', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Thompson', 41.9816538, -71.7709856, ST_GeomFromText('POINT(41.9816538 -71.7709856)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218876', 'Buck Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Thompson', 41.9759557, -71.7775539, ST_GeomFromText('POINT(41.9759557 -71.7775539)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218878', 'Cold Spring Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Thompson', 41.9850979, -71.7831255, ST_GeomFromText('POINT(41.9850979 -71.7831255)', 4326), 41.9927778, -71.7738889, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218879', 'Leeson Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Thompson', 41.9828758, -71.7806254, ST_GeomFromText('POINT(41.9828758 -71.7806254)', 4326), 42, -71.7875, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1972-01-01'),
  ('1218880', 'Benson Mountain', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Thompson', 41.9995036, -71.7948942, ST_GeomFromText('POINT(41.9995036 -71.7948942)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218882', 'Ponaganset Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.8784214, -71.7444637, ST_GeomFromText('POINT(41.8784214 -71.7444637)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218883', 'Saunders Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.8856543, -71.6961786, ST_GeomFromText('POINT(41.8856543 -71.6961786)', 4326), 41.8936111, -71.7358333, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1971-01-01'),
  ('1218885', 'Keech Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.8834202, -71.6915508, ST_GeomFromText('POINT(41.8834202 -71.6915508)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218887', 'Lake Aldersgate', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.8787259, -71.6639007, ST_GeomFromText('POINT(41.8787259 -71.6639007)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218888', 'Coomer Lake', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.8810452, -71.6249334, ST_GeomFromText('POINT(41.8810452 -71.6249334)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218889', 'Tourtellotte Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.8946757, -71.6541879, ST_GeomFromText('POINT(41.8946757 -71.6541879)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218890', 'Smith and Sayles Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.8942516, -71.6799928, ST_GeomFromText('POINT(41.8942516 -71.6799928)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218891', 'Shingle Mill Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9013425, -71.6884759, ST_GeomFromText('POINT(41.9013425 -71.6884759)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218892', 'Elbow Rock', 'Pillar', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9045429, -71.7272907, ST_GeomFromText('POINT(41.9045429 -71.7272907)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218893', 'Durfee Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.8915171, -71.7438725, ST_GeomFromText('POINT(41.8915171 -71.7438725)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218894', 'Burlingame Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9098463, -71.7452773, ST_GeomFromText('POINT(41.9098463 -71.7452773)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218895', 'Sprague Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9042886, -71.7294919, ST_GeomFromText('POINT(41.9042886 -71.7294919)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1971-01-01'),
  ('1218896', 'Stingo Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9070431, -71.6778446, ST_GeomFromText('POINT(41.9070431 -71.6778446)', 4326), 41.9183333, -71.7041667, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218898', 'Acote Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9098123, -71.6608988, ST_GeomFromText('POINT(41.9098123 -71.6608988)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218899', 'New Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9086042, -71.6559919, ST_GeomFromText('POINT(41.9086042 -71.6559919)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218900', 'Spring Grove Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9090131, -71.6492984, ST_GeomFromText('POINT(41.9090131 -71.6492984)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1971-01-01'),
  ('1218901', 'Cooper Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9389693, -71.6345305, ST_GeomFromText('POINT(41.9389693 -71.6345305)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218902', 'Gazza Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.932772, -71.6483305, ST_GeomFromText('POINT(41.932772 -71.6483305)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218903', 'Sucker Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9209319, -71.6600663, ST_GeomFromText('POINT(41.9209319 -71.6600663)', 4326), 41.9363889, -71.6708333, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218904', 'Steeres Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9258459, -71.6646087, ST_GeomFromText('POINT(41.9258459 -71.6646087)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218905', 'Sucker Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9374873, -71.6681845, ST_GeomFromText('POINT(41.9374873 -71.6681845)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218906', 'Malavary Swamp', 'Swamp', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9400984, -71.6914561, ST_GeomFromText('POINT(41.9400984 -71.6914561)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218907', 'Pascoag Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9269787, -71.7173387, ST_GeomFromText('POINT(41.9269787 -71.7173387)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218908', 'Page Island', 'Island', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9348206, -71.7109013, ST_GeomFromText('POINT(41.9348206 -71.7109013)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218909', 'Brandy Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9262095, -71.7192349, ST_GeomFromText('POINT(41.9262095 -71.7192349)', 4326), 41.9144444, -71.7430556, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218910', 'Wolf Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9503556, -71.7319677, ST_GeomFromText('POINT(41.9503556 -71.7319677)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218911', 'Snake Island', 'Island', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.943154, -71.7134014, ST_GeomFromText('POINT(41.943154 -71.7134014)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218913', 'Oak Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9561689, -71.6921612, ST_GeomFromText('POINT(41.9561689 -71.6921612)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218915', 'Gilleran Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9448207, -71.6464547, ST_GeomFromText('POINT(41.9448207 -71.6464547)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218916', 'Snake Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9550898, -71.6389536, ST_GeomFromText('POINT(41.9550898 -71.6389536)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218918', 'Clear River', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9539873, -71.646177, ST_GeomFromText('POINT(41.9539873 -71.646177)', 4326), 41.9956536, -71.7528471, '1976-05-21', NULL, 'Official', 'Board Decision', '1971-01-01'),
  ('1218919', 'Lapham Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9655572, -71.6433302, ST_GeomFromText('POINT(41.9655572 -71.6433302)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218920', 'Whipple Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.8849629, -71.4921318, ST_GeomFromText('POINT(41.8849629 -71.4921318)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218921', 'Gould Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.8766632, -71.4718865, ST_GeomFromText('POINT(41.8766632 -71.4718865)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218922', 'Cobble Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.8798035, -71.4336695, ST_GeomFromText('POINT(41.8798035 -71.4336695)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218924', 'Stump Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.8875884, -71.4231779, ST_GeomFromText('POINT(41.8875884 -71.4231779)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218925', 'Spectacle Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.8807637, -71.4130891, ST_GeomFromText('POINT(41.8807637 -71.4130891)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218927', 'Happy Hollow Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9050017, -71.38471, ST_GeomFromText('POINT(41.9050017 -71.38471)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218929', 'Blackstone River', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.8764888, -71.3833891, ST_GeomFromText('POINT(41.8764888 -71.3833891)', 4326), 42.2420378, -71.8042378, '1976-05-21', '2018-08-30', 'Official', 'Board Decision', '1930-02-05'),
  ('1218932', 'Valley Falls Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.8950996, -71.3986677, ST_GeomFromText('POINT(41.8950996 -71.3986677)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218934', 'Scott Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.8989823, -71.4069739, ST_GeomFromText('POINT(41.8989823 -71.4069739)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218935', 'Bleachery Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.8948232, -71.4106885, ST_GeomFromText('POINT(41.8948232 -71.4106885)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1983-01-01'),
  ('1218937', 'Barney Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.8984552, -71.4179034, ST_GeomFromText('POINT(41.8984552 -71.4179034)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218938', 'Threadmill Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.8967662, -71.4183907, ST_GeomFromText('POINT(41.8967662 -71.4183907)', 4326), 41.8947222, -71.4272222, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218939', 'Olney Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.8912103, -71.432005, ST_GeomFromText('POINT(41.8912103 -71.432005)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218940', 'Tablerock Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.8994554, -71.4324309, ST_GeomFromText('POINT(41.8994554 -71.4324309)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218941', 'Butterfly Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.907669, -71.4326795, ST_GeomFromText('POINT(41.907669 -71.4326795)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218942', 'Quinsnicket Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9030791, -71.4393304, ST_GeomFromText('POINT(41.9030791 -71.4393304)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218943', 'Gilbanes Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.8946036, -71.4562664, ST_GeomFromText('POINT(41.8946036 -71.4562664)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218944', 'Jenckes Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.903424, -71.4600585, ST_GeomFromText('POINT(41.903424 -71.4600585)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1972-01-01'),
  ('1218945', 'Monastery Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9221027, -71.4145592, ST_GeomFromText('POINT(41.9221027 -71.4145592)', 4326), 41.9426902, -71.40877, '1976-05-21', '2021-05-19', 'Official', 'Board Decision', '1972-01-01'),
  ('1218946', 'New Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9189353, -71.4111248, ST_GeomFromText('POINT(41.9189353 -71.4111248)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218950', 'Scott Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9362102, -71.4314471, ST_GeomFromText('POINT(41.9362102 -71.4314471)', 4326), 41.9663889, -71.4327778, '1976-05-21', NULL, 'Official', 'Board Decision', '1972-01-01'),
  ('1218952', 'Molasses Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9258601, -71.4401459, ST_GeomFromText('POINT(41.9258601 -71.4401459)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218954', 'Town Line Swamp', 'Swamp', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9325245, -71.4870228, ST_GeomFromText('POINT(41.9325245 -71.4870228)', 4326), NULL, NULL, '1976-05-21', '2022-08-02', 'Official', 'Board Decision', '1930-01-01'),
  ('1218955', 'Woonsocket Reservoir Number Three', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.943845, -71.4992433, ST_GeomFromText('POINT(41.943845 -71.4992433)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218956', 'Rochambeau Ponds', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9576034, -71.4722244, ST_GeomFromText('POINT(41.9576034 -71.4722244)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218957', 'Meaders Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9496125, -71.4680818, ST_GeomFromText('POINT(41.9496125 -71.4680818)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218958', 'Mussey Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9575988, -71.462004, ST_GeomFromText('POINT(41.9575988 -71.462004)', 4326), 41.9505556, -71.4683333, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1972-01-01'),
  ('1218960', 'West Sneech Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9484323, -71.4445033, ST_GeomFromText('POINT(41.9484323 -71.4445033)', 4326), 41.9738889, -71.4452778, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218962', 'Hunting Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9544231, -71.4154624, ST_GeomFromText('POINT(41.9544231 -71.4154624)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218963', 'Bear Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9456207, -71.3891583, ST_GeomFromText('POINT(41.9456207 -71.3891583)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218965', 'Howard Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9567674, -71.386924, ST_GeomFromText('POINT(41.9567674 -71.386924)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1972-01-01'),
  ('1218966', 'Rawson Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9661629, -71.3884952, ST_GeomFromText('POINT(41.9661629 -71.3884952)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218967', 'Thompson Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9642571, -71.4031122, ST_GeomFromText('POINT(41.9642571 -71.4031122)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218968', 'Little Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9624283, -71.4215602, ST_GeomFromText('POINT(41.9624283 -71.4215602)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218970', 'Laportes Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9655829, -71.4788391, ST_GeomFromText('POINT(41.9655829 -71.4788391)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218971', 'Spring Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9681542, -71.4878383, ST_GeomFromText('POINT(41.9681542 -71.4878383)', 4326), 41.9637097, -71.5111725, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1972-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218972', 'Woonsocket Reservoir Number Two', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9701533, -71.4871071, ST_GeomFromText('POINT(41.9701533 -71.4871071)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218973', 'Woonsocket Reservoir Number One', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9751754, -71.4893282, ST_GeomFromText('POINT(41.9751754 -71.4893282)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218974', 'Crookfall Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9787097, -71.4878384, ST_GeomFromText('POINT(41.9787097 -71.4878384)', 4326), 41.9487098, -71.5245062, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1971-01-01'),
  ('1218976', 'Sneech Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9818829, -71.4521964, ST_GeomFromText('POINT(41.9818829 -71.4521964)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218977', 'Copper Mine Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9839697, -71.445055, ST_GeomFromText('POINT(41.9839697 -71.445055)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1972-01-01'),
  ('1218978', 'Brush Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.988979, -71.4245021, ST_GeomFromText('POINT(41.988979 -71.4245021)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218979', 'Ash Swamp', 'Swamp', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9845856, -71.4245275, ST_GeomFromText('POINT(41.9845856 -71.4245275)', 4326), NULL, NULL, '1976-05-21', '2022-08-02', 'Official', 'Board Decision', '1930-01-01'),
  ('1218980', 'Ash Swamp Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9834321, -71.4211694, ST_GeomFromText('POINT(41.9834321 -71.4211694)', 4326), 41.9886111, -71.4477778, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218981', 'Long Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9820432, -71.4131135, ST_GeomFromText('POINT(41.9820432 -71.4131135)', 4326), 41.9530556, -71.4125, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218982', 'Catamint Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9998208, -71.4275586, ST_GeomFromText('POINT(41.9998208 -71.4275586)', 4326), 41.995, -71.4444444, '1976-05-21', NULL, 'Official', 'Board Decision', '1971-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1218983', 'East Sneech Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9834321, -71.4095023, ST_GeomFromText('POINT(41.9834321 -71.4095023)', 4326), 41.9819444, -71.4494444, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1218985', 'Diamond Hill Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9981774, -71.3993445, ST_GeomFromText('POINT(41.9981774 -71.3993445)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1971-01-01'),
  ('1218986', 'Arnold Mills Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9851171, -71.3954459, ST_GeomFromText('POINT(41.9851171 -71.3954459)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1972-01-01'),
  ('1218988', 'Diamond Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Franklin', 42.0001631, -71.4136256, ST_GeomFromText('POINT(42.0001631 -71.4136256)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1218989', 'Beacon Pole Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9950355, -71.44993, ST_GeomFromText('POINT(41.9950355 -71.44993)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1972-01-01'),
  ('1218992', 'Big Round Top Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Uxbridge', 42.0039346, -71.700389, ST_GeomFromText('POINT(42.0039346 -71.700389)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218993', 'Little Round Top Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Uxbridge', 42.0019742, -71.698237, ST_GeomFromText('POINT(42.0019742 -71.698237)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218996', 'Pratt Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Blackstone', 42.0116938, -71.5773049, ST_GeomFromText('POINT(42.0116938 -71.5773049)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1218997', 'Branch River', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Blackstone', 42.0095425, -71.5508962, ST_GeomFromText('POINT(42.0095425 -71.5508962)', 4326), 41.9539873, -71.646177, '1976-05-21', NULL, 'Official', 'Board Decision', '1971-01-01'),
  ('1218999', 'Cherry Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Blackstone', 42.0012094, -71.5231174, ST_GeomFromText('POINT(42.0012094 -71.5231174)', 4326), 41.9675985, -71.53784, '1976-05-21', NULL, 'Official', 'Board Decision', '1971-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1219002', 'Social Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Blackstone', 42.0053761, -71.5095059, ST_GeomFromText('POINT(42.0053761 -71.5095059)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219005', 'Sylvestre Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Franklin', 42.0029037, -71.4944367, ST_GeomFromText('POINT(42.0029037 -71.4944367)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1971-01-01'),
  ('1219006', 'Cobble Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Franklin', 42.014039, -71.4791234, ST_GeomFromText('POINT(42.014039 -71.4791234)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1219007', 'Darling Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Franklin', 42.0150494, -71.4742446, ST_GeomFromText('POINT(42.0150494 -71.4742446)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1219008', 'Carls Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Franklin', 42.01303, -71.4475069, ST_GeomFromText('POINT(42.01303 -71.4475069)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1219009', 'Catamint Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Franklin', 42.004135, -71.4267133, ST_GeomFromText('POINT(42.004135 -71.4267133)', 4326), NULL, NULL, '1976-05-21', '2023-11-21', 'Official', 'Board Decision', '1971-01-01'),
  ('1219010', 'Pine Swamp', 'Swamp', 'Rhode Island', 'RI', 'Providence', 'Franklin', 42.0076242, -71.4353826, ST_GeomFromText('POINT(42.0076242 -71.4353826)', 4326), NULL, NULL, '1976-05-21', '2022-08-02', 'Official', 'Board Decision', '1930-01-01'),
  ('1219011', 'Burnt Swamp Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Franklin', 42.0042654, -71.398391, ST_GeomFromText('POINT(42.0042654 -71.398391)', 4326), 42.0433333, -71.39, '1976-05-21', '2021-05-19', 'Official', 'Board Decision', '1971-01-01'),
  ('1219035', 'Mill Tail Swamp', 'Reservoir', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1689609, -71.5646411, ST_GeomFromText('POINT(41.1689609 -71.5646411)', 4326), NULL, NULL, '2002-08-27', '2024-12-05', NULL, NULL, NULL),
  ('1219044', 'Woodville Pond', 'Reservoir', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.4600998, -71.7195111, ST_GeomFromText('POINT(41.4600998 -71.7195111)', 4326), NULL, NULL, '2002-08-27', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1219067', 'Carr Pond', 'Reservoir', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5234808, -71.4506109, ST_GeomFromText('POINT(41.5234808 -71.4506109)', 4326), NULL, NULL, '2002-08-27', '2018-05-17', 'Official', 'Board Decision', '1972-01-01'),
  ('1219078', 'Wertz and Viall Pond', 'Reservoir', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5398105, -71.4442192, ST_GeomFromText('POINT(41.5398105 -71.4442192)', 4326), NULL, NULL, '2002-08-27', '2018-05-17', NULL, NULL, NULL),
  ('1219080', 'Watson Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5389355, -71.1790306, ST_GeomFromText('POINT(41.5389355 -71.1790306)', 4326), NULL, NULL, '2002-08-27', '2024-12-05', NULL, NULL, NULL),
  ('1219082', 'The Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.540257, -71.522048, ST_GeomFromText('POINT(41.540257 -71.522048)', 4326), NULL, NULL, '2002-08-27', '2024-12-05', NULL, NULL, NULL),
  ('1219090', 'Metcalf Wildlife Marsh', 'Reservoir', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5586506, -71.6141979, ST_GeomFromText('POINT(41.5586506 -71.6141979)', 4326), NULL, NULL, '2002-08-27', '2021-02-18', NULL, NULL, NULL),
  ('1219094', 'Mount Tom Club Wildlife Marsh', 'Reservoir', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.5579491, -71.735836, ST_GeomFromText('POINT(41.5579491 -71.735836)', 4326), NULL, NULL, '2002-08-27', '2021-02-18', NULL, NULL, NULL),
  ('1219100', 'Boon Lake', 'Reservoir', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.5829956, -71.6738003, ST_GeomFromText('POINT(41.5829956 -71.6738003)', 4326), NULL, NULL, '2002-08-27', '2024-12-09', NULL, NULL, NULL),
  ('1219108', 'Potowomut Pond', 'Reservoir', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.6217678, -71.4545021, ST_GeomFromText('POINT(41.6217678 -71.4545021)', 4326), NULL, NULL, '2002-08-27', NULL, NULL, NULL, NULL),
  ('1219116', 'Pawtuxet River', 'Reservoir', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.6851005, -71.5245054, ST_GeomFromText('POINT(41.6851005 -71.5245054)', 4326), NULL, NULL, '2002-08-27', NULL, NULL, NULL, NULL),
  ('1219122', 'Pawtuxet River', 'Reservoir', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.6901003, -71.5661736, ST_GeomFromText('POINT(41.6901003 -71.5661736)', 4326), NULL, NULL, '2002-08-27', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1219124', 'Pawtuxet River', 'Reservoir', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.6951003, -71.5478395, ST_GeomFromText('POINT(41.6951003 -71.5478395)', 4326), NULL, NULL, '2002-08-27', '2011-08-26', 'Official', 'Board Decision', '1930-02-05'),
  ('1219128', 'Pawtuxet River', 'Reservoir', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.6967672, -71.521172, ST_GeomFromText('POINT(41.6967672 -71.521172)', 4326), NULL, NULL, '2002-08-27', NULL, NULL, NULL, NULL),
  ('1219130', 'Stump Pond', 'Reservoir', 'Rhode Island', 'RI', 'Kent', 'Coventry Center', 41.6931271, -71.642536, ST_GeomFromText('POINT(41.6931271 -71.642536)', 4326), NULL, NULL, '2002-08-27', '2024-12-09', NULL, NULL, NULL),
  ('1219136', 'Pawtuxet River-South Branch', 'Reservoir', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.7067671, -71.521172, ST_GeomFromText('POINT(41.7067671 -71.521172)', 4326), NULL, NULL, '2002-08-27', NULL, NULL, NULL, NULL),
  ('1219140', 'Natick Pond', 'Reservoir', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.7184338, -71.4911709, ST_GeomFromText('POINT(41.7184338 -71.4911709)', 4326), NULL, NULL, '2002-08-27', NULL, NULL, NULL, NULL),
  ('1219144', 'Pawtuxet River', 'Reservoir', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.7267673, -71.4711699, ST_GeomFromText('POINT(41.7267673 -71.4711699)', 4326), NULL, NULL, '2002-08-27', NULL, NULL, NULL, NULL),
  ('1219148', 'Pawtuxet River', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Crompton', 41.7301001, -71.564507, ST_GeomFromText('POINT(41.7301001 -71.564507)', 4326), NULL, NULL, '2002-08-27', NULL, NULL, NULL, NULL),
  ('1219150', 'Warren Reservoir Upper', 'Reservoir', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.741417, -71.2599411, ST_GeomFromText('POINT(41.741417 -71.2599411)', 4326), NULL, NULL, '2002-08-27', '2018-05-17', NULL, NULL, NULL),
  ('1219152', 'Gorham Farm Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Oneco', 41.7400993, -71.7595138, ST_GeomFromText('POINT(41.7400993 -71.7595138)', 4326), NULL, NULL, '2002-08-27', NULL, NULL, NULL, NULL),
  ('1219154', 'Curran Upper Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.7526076, -71.5490536, ST_GeomFromText('POINT(41.7526076 -71.5490536)', 4326), NULL, NULL, '2002-08-27', '2015-04-27', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1219159', 'Westconnaug Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.7644755, -71.6820899, ST_GeomFromText('POINT(41.7644755 -71.6820899)', 4326), NULL, NULL, '2002-08-27', '2018-05-17', 'Official', 'Board Decision', '1930-02-05'),
  ('1219165', 'Cranston Print Works Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.79671, -71.46078, ST_GeomFromText('POINT(41.79671 -71.46078)', 4326), NULL, NULL, '2002-08-27', '2024-10-03', NULL, NULL, NULL),
  ('1219171', 'Keech Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.8234324, -71.7078455, ST_GeomFromText('POINT(41.8234324 -71.7078455)', 4326), NULL, NULL, '2002-08-27', NULL, NULL, NULL, NULL),
  ('1219185', 'Lyman Mill Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8465091, -71.481374, ST_GeomFromText('POINT(41.8465091 -71.481374)', 4326), NULL, NULL, '2002-08-27', '2018-05-17', NULL, NULL, NULL),
  ('1219201', 'Ten Mile River Reservation', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Attleboro', 41.8764959, -71.3406072, ST_GeomFromText('POINT(41.8764959 -71.3406072)', 4326), NULL, NULL, '2002-08-27', '2018-05-17', NULL, NULL, NULL),
  ('1219213', 'Blackstone River Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.8867665, -71.3795001, ST_GeomFromText('POINT(41.8867665 -71.3795001)', 4326), NULL, NULL, '2002-08-27', NULL, NULL, NULL, NULL),
  ('1219217', 'Upper Sprague Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.8917657, -71.5628406, ST_GeomFromText('POINT(41.8917657 -71.5628406)', 4326), NULL, NULL, '2002-08-27', NULL, NULL, NULL, NULL),
  ('1219223', 'Curran Lower Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.89277, -71.53757, ST_GeomFromText('POINT(41.89277 -71.53757)', 4326), NULL, NULL, '2002-08-27', '2024-10-03', NULL, NULL, NULL),
  ('1219229', 'Spring Grove Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.903432, -71.6761779, ST_GeomFromText('POINT(41.903432 -71.6761779)', 4326), NULL, NULL, '2002-08-27', NULL, NULL, NULL, NULL),
  ('1219236', 'Blackstone River Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9134327, -71.4078349, ST_GeomFromText('POINT(41.9134327 -71.4078349)', 4326), NULL, NULL, '2002-08-27', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1219238', 'Lake Washington', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Thompson', 41.9162743, -71.7570484, ST_GeomFromText('POINT(41.9162743 -71.7570484)', 4326), NULL, NULL, '2002-08-27', '2018-05-18', NULL, NULL, NULL),
  ('1219254', 'Blackstone River Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9400991, -71.4378363, ST_GeomFromText('POINT(41.9400991 -71.4378363)', 4326), NULL, NULL, '2002-08-27', NULL, NULL, NULL, NULL),
  ('1219260', 'Blackstone River Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9534322, -71.4528369, ST_GeomFromText('POINT(41.9534322 -71.4528369)', 4326), NULL, NULL, '2002-08-27', NULL, NULL, NULL, NULL),
  ('1219266', 'Branch River', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9600984, -71.6411768, ST_GeomFromText('POINT(41.9600984 -71.6411768)', 4326), NULL, NULL, '2002-08-27', NULL, NULL, NULL, NULL),
  ('1219268', 'Aldersgate Lake', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.961765, -71.6628441, ST_GeomFromText('POINT(41.961765 -71.6628441)', 4326), NULL, NULL, '2002-08-27', NULL, NULL, NULL, NULL),
  ('1219279', 'Blackstone River Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9717654, -71.4695044, ST_GeomFromText('POINT(41.9717654 -71.4695044)', 4326), NULL, NULL, '2002-08-27', NULL, NULL, NULL, NULL),
  ('1219283', 'Pawtucket Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9802436, -71.3914092, ST_GeomFromText('POINT(41.9802436 -71.3914092)', 4326), NULL, NULL, '2002-08-27', '2018-05-17', NULL, NULL, NULL),
  ('1219287', 'Buck Hill Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Thompson', 41.9900979, -71.7878477, ST_GeomFromText('POINT(41.9900979 -71.7878477)', 4326), NULL, NULL, '2002-08-27', NULL, NULL, NULL, NULL),
  ('1219291', 'Forestdale Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9976497, -71.5681206, ST_GeomFromText('POINT(41.9976497 -71.5681206)', 4326), NULL, NULL, '2002-08-27', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1219293', 'Slattersville Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9984315, -71.5795082, ST_GeomFromText('POINT(41.9984315 -71.5795082)', 4326), NULL, NULL, '2002-08-27', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1219301', 'Burges Cove', 'Bay', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8062115, -71.3983891, ST_GeomFromText('POINT(41.8062115 -71.3983891)', 4326), NULL, NULL, '2002-08-27', NULL, NULL, NULL, NULL),
  ('1219302', 'Corliss Cove', 'Bay', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8014894, -71.3989445, ST_GeomFromText('POINT(41.8014894 -71.3989445)', 4326), NULL, NULL, '2002-08-27', NULL, NULL, NULL, NULL),
  ('1219303', 'Benedict Pond (historical)', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.807878, -71.4397799, ST_GeomFromText('POINT(41.807878 -71.4397799)', 4326), NULL, NULL, '2002-08-27', NULL, NULL, NULL, NULL),
  ('1219304', 'Long Pond (historical)', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.806767, -71.4292238, ST_GeomFromText('POINT(41.806767 -71.4292238)', 4326), NULL, NULL, '2002-08-27', NULL, NULL, NULL, NULL),
  ('1219307', 'Fruit Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8571302, -71.4603157, ST_GeomFromText('POINT(41.8571302 -71.4603157)', 4326), NULL, NULL, '2002-08-27', '2018-05-01', 'Official', 'Board Decision', '1930-01-01'),
  ('1219316', 'Starve Goat Island (historical)', 'Island', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7801008, -71.3747766, ST_GeomFromText('POINT(41.7801008 -71.3747766)', 4326), NULL, NULL, '2002-08-27', NULL, NULL, NULL, NULL),
  ('1219318', 'Pawtucket Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.8867663, -71.4228353, ST_GeomFromText('POINT(41.8867663 -71.4228353)', 4326), NULL, NULL, '2002-08-27', NULL, NULL, NULL, NULL),
  ('1219322', 'Clark Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.600657, -71.4147779, ST_GeomFromText('POINT(41.600657 -71.4147779)', 4326), NULL, NULL, '2002-08-27', '2011-08-05', 'Official', 'Board Decision', '1930-02-05'),
  ('1219323', 'Chepiwanoxet Point', 'Cape', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6734343, -71.4417238, ST_GeomFromText('POINT(41.6734343 -71.4417238)', 4326), NULL, NULL, '2002-08-27', '2008-11-13', 'Official', 'Board Decision', '2008-11-13'),
  ('1219324', 'Duck Pond (historical)', 'Lake', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.7409341, -71.4278344, ST_GeomFromText('POINT(41.7409341 -71.4278344)', 4326), NULL, NULL, '2002-08-27', '2010-02-16', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1219325', 'Eldridge Creek (historical)', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.6028792, -71.4175559, ST_GeomFromText('POINT(41.6028792 -71.4175559)', 4326), 41.5986111, -71.4283333, '2002-08-27', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219327', 'Greene Island', 'Island', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.7326011, -71.3786653, ST_GeomFromText('POINT(41.7326011 -71.3786653)', 4326), NULL, NULL, '2002-08-27', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219328', 'Halls Creek', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.6087125, -71.4175559, ST_GeomFromText('POINT(41.6087125 -71.4175559)', 4326), 41.6130556, -71.4297222, '2002-08-27', NULL, NULL, NULL, NULL),
  ('1219337', 'Sapowet Cove', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5806582, -71.2100467, ST_GeomFromText('POINT(41.5806582 -71.2100467)', 4326), NULL, NULL, '2002-08-27', NULL, 'Official', 'Board Decision', '1982-01-01'),
  ('1219338', 'Blackamore Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7743871, -71.446568, ST_GeomFromText('POINT(41.7743871 -71.446568)', 4326), NULL, NULL, '2002-08-27', '2018-05-17', 'Official', 'Board Decision', '1971-01-01'),
  ('1219349', 'Star Island', 'Island', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7812117, -71.4100561, ST_GeomFromText('POINT(41.7812117 -71.4100561)', 4326), NULL, NULL, '1991-04-01', '2011-08-26', 'Official', 'Board Decision', '1971-01-01'),
  ('1219352', 'Streeter Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Franklin', 42.0025507, -71.3859067, ST_GeomFromText('POINT(42.0025507 -71.3859067)', 4326), NULL, NULL, '1991-04-01', '2021-01-25', 'Official', 'Board Decision', '1971-01-01'),
  ('1219353', 'Manton Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8371337, -71.4729088, ST_GeomFromText('POINT(41.8371337 -71.4729088)', 4326), NULL, NULL, '1991-04-01', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1219354', 'Mashapaug Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7778784, -71.4161674, ST_GeomFromText('POINT(41.7778784 -71.4161674)', 4326), 41.7894444, -71.4333333, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219355', 'Manville Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9737097, -71.4745046, ST_GeomFromText('POINT(41.9737097 -71.4745046)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1219356', 'Stump Hill Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.8866639, -71.4229454, ST_GeomFromText('POINT(41.8866639 -71.4229454)', 4326), NULL, NULL, '1991-04-01', '2018-05-17', 'Official', 'Board Decision', '1972-01-01'),
  ('1219357', 'Sylvys Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9828766, -71.411169, ST_GeomFromText('POINT(41.9828766 -71.411169)', 4326), 42.0078764, -71.4175584, '1991-04-01', '2011-08-26', 'Official', 'Board Decision', '1971-01-01'),
  ('1219358', 'Mill Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.939446, -71.428771, ST_GeomFromText('POINT(41.939446 -71.428771)', 4326), NULL, NULL, '1991-04-01', '2024-10-03', 'Official', 'Board Decision', '1972-01-01'),
  ('1219359', 'Mount Pleasant', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3384487, -71.8171381, ST_GeomFromText('POINT(41.3384487 -71.8171381)', 4326), NULL, NULL, '1991-04-01', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1219360', 'Pine Tree Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4153798, -71.5022799, ST_GeomFromText('POINT(41.4153798 -71.5022799)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219361', 'Pine Swamp Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.8182679, -71.5708541, ST_GeomFromText('POINT(41.8182679 -71.5708541)', 4326), NULL, NULL, '1991-04-01', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1219362', 'Pine Hill Ledge', 'Bench', 'Rhode Island', 'RI', 'Newport', 'Bristol', 41.6298239, -71.3458858, ST_GeomFromText('POINT(41.6298239 -71.3458858)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219363', 'Penivs Rock', 'Pillar', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.719546, -71.2861607, ST_GeomFromText('POINT(41.719546 -71.2861607)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219364', 'Pebbly Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1667704, -71.5508881, ST_GeomFromText('POINT(41.1667704 -71.5508881)', 4326), NULL, NULL, '1991-04-01', '2014-10-28', NULL, NULL, NULL),
  ('1219365', 'Pawtuxet Valley', 'Valley', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.719814, -71.4772512, ST_GeomFromText('POINT(41.719814 -71.4772512)', 4326), 41.6902823, -71.5692086, '1991-04-01', '2018-07-21', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1219366', 'Pawtucket Falls', 'Falls', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.8764888, -71.3833891, ST_GeomFromText('POINT(41.8764888 -71.3833891)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219367', 'Paquantuck Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Thompson', 41.8828764, -71.7522915, ST_GeomFromText('POINT(41.8828764 -71.7522915)', 4326), 41.8863889, -71.7602778, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219368', 'Pancake Island', 'Island', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8212115, -71.3847775, ST_GeomFromText('POINT(41.8212115 -71.3847775)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219370', 'Metacomet Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8045449, -71.375888, ST_GeomFromText('POINT(41.8045449 -71.375888)', 4326), 41.8114894, -71.3703322, '1991-04-01', NULL, 'Official', 'Board Decision', '1966-01-01'),
  ('1219372', 'Napatree Point Ledge', 'Bench', 'Rhode Island', 'RI', 'Washington', 'Mystic', 41.3000996, -71.8884032, ST_GeomFromText('POINT(41.3000996 -71.8884032)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219375', 'Beach Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4587138, -71.323384, ST_GeomFromText('POINT(41.4587138 -71.323384)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219376', 'Betty Hull Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.417602, -71.5003353, ST_GeomFromText('POINT(41.417602 -71.5003353)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219377', 'Birch Hill (historical)', 'Summit', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.7084337, -71.5272834, ST_GeomFromText('POINT(41.7084337 -71.5272834)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219379', 'Bishop Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5181577, -71.3314406, ST_GeomFromText('POINT(41.5181577 -71.3314406)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219380', 'Bear Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3080388, -71.8553369, ST_GeomFromText('POINT(41.3080388 -71.8553369)', 4326), NULL, NULL, '1991-04-01', '2021-01-25', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1219381', 'Boiling Spring', 'Spring', 'Rhode Island', 'RI', 'Providence', 'Thompson', 41.983449, -71.7773133, ST_GeomFromText('POINT(41.983449 -71.7773133)', 4326), NULL, NULL, '1991-04-01', '2011-07-21', 'Official', 'Board Decision', '1930-01-01'),
  ('1219382', 'Boiling Spring', 'Spring', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1687148, -71.5536661, ST_GeomFromText('POINT(41.1687148 -71.5536661)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219383', 'Boiling Spring', 'Spring', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9600984, -71.6156204, ST_GeomFromText('POINT(41.9600984 -71.6156204)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219385', 'Box Rock (historical)', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4603817, -71.1789336, ST_GeomFromText('POINT(41.4603817 -71.1789336)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219389', 'The Brothers', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Bristol', 41.6667682, -71.3481081, ST_GeomFromText('POINT(41.6667682 -71.3481081)', 4326), NULL, NULL, '1991-04-01', '2011-08-05', 'Official', 'Board Decision', '1930-02-05'),
  ('1219390', 'Brown Creek (historical)', 'Stream', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5951026, -71.2028241, ST_GeomFromText('POINT(41.5951026 -71.2028241)', 4326), 41.5951026, -71.2028241, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219391', 'Browning Isles (historical)', 'Island', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.3834343, -71.6411735, ST_GeomFromText('POINT(41.3834343 -71.6411735)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219392', 'Brush Meadow Swamp', 'Swamp', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.8574119, -71.6910866, ST_GeomFromText('POINT(41.8574119 -71.6910866)', 4326), NULL, NULL, '1991-04-01', '2022-08-03', 'Official', 'Board Decision', '1930-01-01'),
  ('1219395', 'Buttonwoods Beach', 'Beach', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6862121, -71.4217228, ST_GeomFromText('POINT(41.6862121 -71.4217228)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219396', 'Bush Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.3773235, -71.61395, ST_GeomFromText('POINT(41.3773235 -71.61395)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1219397', 'Carder Creek', 'Stream', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6917679, -71.3939437, ST_GeomFromText('POINT(41.6917679 -71.3939437)', 4326), 41.6986111, -71.4027778, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219401', 'Castle Hill', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4648247, -71.360608, ST_GeomFromText('POINT(41.4648247 -71.360608)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219402', 'Cedar Island Peninsula', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Fall River', 41.646769, -71.2183802, ST_GeomFromText('POINT(41.646769 -71.2183802)', 4326), NULL, NULL, '1991-04-01', '2011-09-14', 'Official', 'Board Decision', '1930-02-05'),
  ('1219403', 'Centerdale Mill Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8606551, -71.4961716, ST_GeomFromText('POINT(41.8606551 -71.4961716)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219404', 'Charles Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.575657, -71.4389456, ST_GeomFromText('POINT(41.575657 -71.4389456)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219407', 'Cumberland Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9598828, -71.4577292, ST_GeomFromText('POINT(41.9598828 -71.4577292)', 4326), NULL, NULL, '1991-04-01', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1219409', 'Copps Cove', 'Bay', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7814896, -71.3917218, ST_GeomFromText('POINT(41.7814896 -71.3917218)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219411', 'Crescent Lake', 'Lake', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6842679, -71.3967216, ST_GeomFromText('POINT(41.6842679 -71.3967216)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219415', 'Coronation Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.3826009, -71.6550629, ST_GeomFromText('POINT(41.3826009 -71.6550629)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219416', 'Crying Rocks', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.4112117, -71.663397, ST_GeomFromText('POINT(41.4112117 -71.663397)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1219418', 'Collins Beach', 'Beach', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4598247, -71.3606079, ST_GeomFromText('POINT(41.4598247 -71.3606079)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219420', 'Concord Gulf Cove', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4764912, -71.3703308, ST_GeomFromText('POINT(41.4764912 -71.3703308)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219421', 'Creek Rock (historical)', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4773259, -71.1694892, ST_GeomFromText('POINT(41.4773259 -71.1694892)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219422', 'Church Rocks', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4959363, -71.2078242, ST_GeomFromText('POINT(41.4959363 -71.2078242)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219424', 'Deep Hole', 'Bay', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6584347, -71.3747761, ST_GeomFromText('POINT(41.6584347 -71.3747761)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219425', 'Ellison Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4762138, -71.2967164, ST_GeomFromText('POINT(41.4762138 -71.2967164)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219429', 'Dennison Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3175997, -71.8703472, ST_GeomFromText('POINT(41.3175997 -71.8703472)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219432', 'Deyer Rock', 'Pillar', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.6931573, -71.2933833, ST_GeomFromText('POINT(41.6931573 -71.2933833)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219434', 'Drum Rock', 'Pillar', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6912119, -71.4647806, ST_GeomFromText('POINT(41.6912119 -71.4647806)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219436', 'Dyer Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4964912, -71.3222735, ST_GeomFromText('POINT(41.4964912 -71.3222735)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1219437', 'Elbow Ledge', 'Bench', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.463992, -71.2592146, ST_GeomFromText('POINT(41.463992 -71.2592146)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219438', 'Elisha Ledge', 'Bench', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4445487, -71.1583771, ST_GeomFromText('POINT(41.4445487 -71.1583771)', 4326), NULL, NULL, '1991-04-01', '2011-08-11', 'Official', 'Board Decision', '1930-02-05'),
  ('1219440', 'Dead Man Spring', 'Spring', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.3992683, -71.563393, ST_GeomFromText('POINT(41.3992683 -71.563393)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219444', 'Blackstone Rock', 'Pillar', 'Rhode Island', 'RI', 'Kent', 'Bristol', 41.684268, -71.3697759, ST_GeomFromText('POINT(41.684268 -71.3697759)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1972-01-01'),
  ('1219445', 'Bliss Hill', 'Summit', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5086842, -71.2997887, ST_GeomFromText('POINT(41.5086842 -71.2997887)', 4326), NULL, NULL, '1991-04-01', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1219446', 'Bluff Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'East Greenwich', 41.6537123, -71.416167, ST_GeomFromText('POINT(41.6537123 -71.416167)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219447', 'Boat House Gully', 'Lake', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4520473, -71.3106055, ST_GeomFromText('POINT(41.4520473 -71.3106055)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219448', 'Bill Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4170464, -71.5022799, ST_GeomFromText('POINT(41.4170464 -71.5022799)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219449', 'Academy Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5701013, -71.4547797, ST_GeomFromText('POINT(41.5701013 -71.4547797)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219450', 'Albro Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4045465, -71.5033908, ST_GeomFromText('POINT(41.4045465 -71.5033908)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1219451', 'Allendale Mill Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8528692, -71.4836505, ST_GeomFromText('POINT(41.8528692 -71.4836505)', 4326), NULL, NULL, '1991-04-01', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1219452', 'Allen Ledge', 'Bench', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7323234, -71.3497749, ST_GeomFromText('POINT(41.7323234 -71.3497749)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219453', 'Almy Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5512138, -71.2169913, ST_GeomFromText('POINT(41.5512138 -71.2169913)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219454', 'Angell Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.8870438, -71.4736708, ST_GeomFromText('POINT(41.8870438 -71.4736708)', 4326), 41.905, -71.4722222, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219457', 'Atlantic Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3251001, -71.791178, ST_GeomFromText('POINT(41.3251001 -71.791178)', 4326), NULL, NULL, '1991-04-01', '2011-08-26', 'Official', 'Board Decision', '1930-01-01'),
  ('1219458', 'Barden Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Bristol', 41.6537126, -71.3653312, ST_GeomFromText('POINT(41.6537126 -71.3653312)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219459', 'Great Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.39038, -71.5036683, ST_GeomFromText('POINT(41.39038 -71.5036683)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219461', 'Goose Neck', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4556583, -71.3356067, ST_GeomFromText('POINT(41.4556583 -71.3356067)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219462', 'Gooseberry Beach', 'Beach', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4601027, -71.3211617, ST_GeomFromText('POINT(41.4601027 -71.3211617)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1971-01-01'),
  ('1219466', 'Gates Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.5292667, -71.6661766, ST_GeomFromText('POINT(41.5292667 -71.6661766)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1219467', 'Gates Cove', 'Bay', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6959344, -71.4064443, ST_GeomFromText('POINT(41.6959344 -71.4064443)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219468', 'Gangway Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3014887, -71.8592355, ST_GeomFromText('POINT(41.3014887 -71.8592355)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219469', 'Fuller Rock', 'Pillar', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7939895, -71.3794991, ST_GeomFromText('POINT(41.7939895 -71.3794991)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219470', 'Fort Neck', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.3806566, -71.6467291, ST_GeomFromText('POINT(41.3806566 -71.6467291)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219473', 'Fogland', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5612138, -71.2133801, ST_GeomFromText('POINT(41.5612138 -71.2133801)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219474', 'Flower Island', 'Island', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7853783, -71.4092227, ST_GeomFromText('POINT(41.7853783 -71.4092227)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219475', 'Flint Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.480103, -71.2378251, ST_GeomFromText('POINT(41.480103 -71.2378251)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219476', 'Flat Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4606596, -71.1678221, ST_GeomFromText('POINT(41.4606596 -71.1678221)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219477', 'Goat Rock Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Thompson', 41.9828758, -71.7806254, ST_GeomFromText('POINT(41.9828758 -71.7806254)', 4326), 41.9847222, -71.775, '1991-04-01', NULL, 'Official', 'Board Decision', '1972-01-01'),
  ('1219478', 'Goose Nest Spring', 'Spring', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5651011, -71.5061709, ST_GeomFromText('POINT(41.5651011 -71.5061709)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1972-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1219482', 'Robin Hollow', 'Valley', 'Massachusetts', 'MA', 'Bristol', 'Pawtucket', 41.9224611, -71.3811251, ST_GeomFromText('POINT(41.9224611 -71.3811251)', 4326), 41.9135874, -71.3832821, '1991-04-01', '2016-12-09', 'Official', 'Board Decision', '1972-01-01'),
  ('1219483', 'Nannaquaket Hill', 'Summit', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.6121358, -71.1682587, ST_GeomFromText('POINT(41.6121358 -71.1682587)', 4326), NULL, NULL, '1991-04-01', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1219485', 'Barker Hill', 'Summit', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5134274, -71.2411583, ST_GeomFromText('POINT(41.5134274 -71.2411583)', 4326), NULL, NULL, '1991-04-01', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1219490', 'Cranberry Island', 'Island', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7917674, -71.3747767, ST_GeomFromText('POINT(41.7917674 -71.3747767)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219491', 'Coblin Rock', 'Pillar', 'Rhode Island', 'RI', 'Providence', 'Blackstone', 42.0009316, -71.536729, ST_GeomFromText('POINT(42.0009316 -71.536729)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219492', 'Billington Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4214909, -71.5031133, ST_GeomFromText('POINT(41.4214909 -71.5031133)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219494', 'Flat Meadow Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Kingston OE S', 41.3667681, -71.6050606, ST_GeomFromText('POINT(41.3667681 -71.6050606)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219495', 'Browning Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Kingston OE S', 41.3695458, -71.6086719, ST_GeomFromText('POINT(41.3695458 -71.6086719)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219497', 'Card Ponds', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Kingston OE S', 41.3741147, -71.5675687, ST_GeomFromText('POINT(41.3741147 -71.5675687)', 4326), NULL, NULL, '1991-04-01', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1219500', 'Worden Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1601698, -71.6058415, ST_GeomFromText('POINT(41.1601698 -71.6058415)', 4326), NULL, NULL, '2002-08-27', '2021-02-10', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1219504', 'Weekapaug Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Quonochontaug', 41.3302589, -71.7384052, ST_GeomFromText('POINT(41.3302589 -71.7384052)', 4326), NULL, NULL, '1976-05-21', '2021-02-04', 'Official', 'Board Decision', '1930-01-01'),
  ('1219566', 'Jerimoth Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'East Killingly', 41.8494158, -71.7788736, ST_GeomFromText('POINT(41.8494158 -71.7788736)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-02-05'),
  ('1219568', 'Quonochontaug Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Quonochontaug', 41.3417672, -71.7217313, ST_GeomFromText('POINT(41.3417672 -71.7217313)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219569', 'Beaver River', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.4487118, -71.6300631, ST_GeomFromText('POINT(41.4487118 -71.6300631)', 4326), 41.5742668, -71.6425648, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219570', 'Whaleboat Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.3951019, -71.535614, ST_GeomFromText('POINT(41.3951019 -71.535614)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1983-01-01'),
  ('1219571', 'Barber Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5022102, -71.5646011, ST_GeomFromText('POINT(41.5022102 -71.5646011)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1219572', 'Mount Pleasant', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5059257, -71.5514493, ST_GeomFromText('POINT(41.5059257 -71.5514493)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1219573', 'Hundred Acre Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5001713, -71.542137, ST_GeomFromText('POINT(41.5001713 -71.542137)', 4326), NULL, NULL, '1976-05-21', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1219574', 'Ida Lewis Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4778803, -71.3253288, ST_GeomFromText('POINT(41.4778803 -71.3253288)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1924-01-01'),
  ('1219575', 'Sachuest Bay', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4826028, -71.2592149, ST_GeomFromText('POINT(41.4826028 -71.2592149)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1219576', 'Second Beach', 'Beach', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.484825, -71.256437, ST_GeomFromText('POINT(41.484825 -71.256437)', 4326), NULL, NULL, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1972-01-01'),
  ('1219577', 'Paradise Brook', 'Stream', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4912138, -71.2614373, ST_GeomFromText('POINT(41.4912138 -71.2614373)', 4326), 41.5228803, -71.2578262, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1972-01-01'),
  ('1219578', 'Little Tree Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5617682, -71.4339453, ST_GeomFromText('POINT(41.5617682 -71.4339453)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219579', 'Carr Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.571491, -71.2942167, ST_GeomFromText('POINT(41.571491 -71.2942167)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219580', 'Hessians Hole', 'Swamp', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.6046698, -71.2639378, ST_GeomFromText('POINT(41.6046698 -71.2639378)', 4326), NULL, NULL, '1976-05-21', '2022-08-02', 'Official', 'Board Decision', '1930-01-01'),
  ('1219581', 'Sandhill Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.6012122, -71.4750586, ST_GeomFromText('POINT(41.6012122 -71.4750586)', 4326), 41.5861111, -71.4858333, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219584', 'Mill Creek', 'Stream', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.6145463, -71.3156066, ST_GeomFromText('POINT(41.6145463 -71.3156066)', 4326), 41.6144444, -71.3163889, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219585', 'Old Mill Creek', 'Stream', 'Rhode Island', 'RI', 'Kent', 'Bristol', 41.7120456, -71.3661647, ST_GeomFromText('POINT(41.7120456 -71.3661647)', 4326), 41.707879, -71.3803319, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219586', 'Providence River', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Bristol', 41.8139892, -71.4003336, ST_GeomFromText('POINT(41.8139892 -71.4003336)', 4326), 41.73399, -71.3767207, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219587', 'Barrington River', 'Stream', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.732046, -71.2903275, ST_GeomFromText('POINT(41.732046 -71.2903275)', 4326), 41.7770455, -71.3231073, '1976-05-21', NULL, 'Official', 'Board Decision', '1971-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1219589', 'Bullock Cove', 'Bay', 'Rhode Island', 'RI', 'Providence', 'East Providence', 41.7562122, -71.3544975, ST_GeomFromText('POINT(41.7562122 -71.3544975)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219601', 'Tree Point Rocks', 'Cliff', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7217683, -71.2917164, ST_GeomFromText('POINT(41.7217683 -71.2917164)', 4326), NULL, NULL, '1991-12-01', '2011-08-26', 'Official', 'Board Decision', '1930-02-05'),
  ('1219605', 'Longmeadow Rock', 'Pillar', 'Rhode Island', 'RI', 'Kent', 'Bristol', 41.7053791, -71.3617199, ST_GeomFromText('POINT(41.7053791 -71.3617199)', 4326), NULL, NULL, '1991-12-01', '2011-08-11', 'Official', 'Board Decision', '1930-02-05'),
  ('1219608', 'Rumstick Rock', 'Pillar', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7042683, -71.308384, ST_GeomFromText('POINT(41.7042683 -71.308384)', 4326), NULL, NULL, '1991-12-01', '2011-08-26', 'Official', 'Board Decision', '1930-02-05'),
  ('1219609', 'Turner Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.407602, -71.5095022, ST_GeomFromText('POINT(41.407602 -71.5095022)', 4326), NULL, NULL, '1991-12-01', '2011-08-26', 'Official', 'Board Decision', '1930-02-05'),
  ('1219610', 'South Jerry Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.3964909, -71.5153355, ST_GeomFromText('POINT(41.3964909 -71.5153355)', 4326), NULL, NULL, '1991-12-01', NULL, NULL, NULL, NULL),
  ('1219611', 'Stallion Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.3906578, -71.5075574, ST_GeomFromText('POINT(41.3906578 -71.5075574)', 4326), NULL, NULL, '1991-12-01', '2011-08-26', 'Official', 'Board Decision', '1930-02-05'),
  ('1219616', 'Usher Rocks', 'Cliff', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.659824, -71.2914387, ST_GeomFromText('POINT(41.659824 -71.2914387)', 4326), NULL, NULL, '1991-12-01', '2011-08-26', 'Official', 'Board Decision', '1930-02-05'),
  ('1219618', 'South Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.604824, -71.3314406, ST_GeomFromText('POINT(41.604824 -71.3314406)', 4326), NULL, NULL, '1991-12-01', NULL, NULL, NULL, NULL),
  ('1219619', 'Old Bay Rock', 'Pillar', 'Rhode Island', 'RI', 'Bristol', 'Fall River', 41.6967687, -71.2253248, ST_GeomFromText('POINT(41.6967687 -71.2253248)', 4326), NULL, NULL, '1991-12-01', '2011-08-26', 'Official', 'Board Decision', '1930-02-05');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1219621', 'Cedar Island Pond', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Fall River', 41.6462134, -71.2192135, ST_GeomFromText('POINT(41.6462134 -71.2192135)', 4326), NULL, NULL, '1991-12-01', '2011-08-05', 'Official', 'Board Decision', '1930-02-05'),
  ('1219627', 'Point Wharf', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5753791, -71.4478349, ST_GeomFromText('POINT(41.5753791 -71.4478349)', 4326), NULL, NULL, '1991-12-01', NULL, NULL, NULL, NULL),
  ('1219749', 'Perry Healy Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.3803783, -71.7036758, ST_GeomFromText('POINT(41.3803783 -71.7036758)', 4326), 41.3763889, -71.7388889, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219753', 'Maiford River', 'Stream', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4903805, -71.2589372, ST_GeomFromText('POINT(41.4903805 -71.2589372)', 4326), 41.5292692, -71.2544927, '1992-07-01', NULL, NULL, NULL, NULL),
  ('1219755', 'Copps Cave', 'Bay', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7753785, -71.3906106, ST_GeomFromText('POINT(41.7753785 -71.3906106)', 4326), NULL, NULL, '1992-07-01', NULL, NULL, NULL, NULL),
  ('1219769', 'Supp Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4912132, -71.3642197, ST_GeomFromText('POINT(41.4912132 -71.3642197)', 4326), NULL, NULL, '1992-10-01', NULL, NULL, NULL, NULL),
  ('1219770', 'Old Salt Work Beach', 'Beach', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4814912, -71.3600527, ST_GeomFromText('POINT(41.4814912 -71.3600527)', 4326), NULL, NULL, '1992-10-01', NULL, NULL, NULL, NULL),
  ('1219774', 'Atlantic Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3259335, -71.7817332, ST_GeomFromText('POINT(41.3259335 -71.7817332)', 4326), NULL, NULL, '1992-10-01', NULL, NULL, NULL, NULL),
  ('1219775', 'Quicksand Pond', 'Lake', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.506408, -71.1304441, ST_GeomFromText('POINT(41.506408 -71.1304441)', 4326), NULL, NULL, '1976-05-21', '2018-05-16', 'Official', 'Board Decision', '1930-01-01'),
  ('1219818', 'Sapowet Creek', 'Stream', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.582047, -71.2086577, ST_GeomFromText('POINT(41.582047 -71.2086577)', 4326), 41.575, -71.1933333, '2002-08-27', NULL, 'Official', 'Board Decision', '1982-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1219819', 'Reel Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4039909, -71.5092243, ST_GeomFromText('POINT(41.4039909 -71.5092243)', 4326), NULL, NULL, '1991-12-01', '2011-08-26', 'Official', 'Board Decision', '1930-02-05'),
  ('1219824', 'Balls Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.2081588, -71.5556112, ST_GeomFromText('POINT(41.2081588 -71.5556112)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1963-01-01'),
  ('1219827', 'Harbor Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1633703, -71.5531503, ST_GeomFromText('POINT(41.1633703 -71.5531503)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1972-01-01'),
  ('1219828', 'Mohegan Bluffs', 'Cliff', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1517705, -71.5567214, ST_GeomFromText('POINT(41.1517705 -71.5567214)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219834', 'Lone Tree Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5612126, -71.4347788, ST_GeomFromText('POINT(41.5612126 -71.4347788)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1978-01-01'),
  ('1219837', 'Beacon Hill', 'Summit', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5122149, -71.3137246, ST_GeomFromText('POINT(41.5122149 -71.3137246)', 4326), NULL, NULL, '2002-08-27', '2021-01-25', NULL, NULL, NULL),
  ('1219840', 'Kingston Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4815666, -71.5219693, ST_GeomFromText('POINT(41.4815666 -71.5219693)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1219841', 'Escoheag Hill', 'Summit', 'Rhode Island', 'RI', 'Kent', 'Voluntown', 41.6086025, -71.773638, ST_GeomFromText('POINT(41.6086025 -71.773638)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1219842', 'Goat Island', 'Island', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4884357, -71.3272736, ST_GeomFromText('POINT(41.4884357 -71.3272736)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219843', 'Cold Brook', 'Stream', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5195479, -71.1372662, ST_GeomFromText('POINT(41.5195479 -71.1372662)', 4326), 41.5644444, -71.1563889, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1219844', 'Tyler Point', 'Cape', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7337127, -71.2919943, ST_GeomFromText('POINT(41.7337127 -71.2919943)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219845', 'Bishop Point', 'Cape', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8573223, -71.3747774, ST_GeomFromText('POINT(41.8573223 -71.3747774)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219846', 'Miscoe Lake', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Franklin', 42.0143081, -71.418458, ST_GeomFromText('POINT(42.0143081 -71.418458)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1971-01-01'),
  ('1219847', 'Mount Hope', 'Summit', 'Rhode Island', 'RI', 'Bristol', 'Fall River', 41.6739824, -71.2400469, ST_GeomFromText('POINT(41.6739824 -71.2400469)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1219849', 'Brickyard Pond', 'Reservoir', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7345534, -71.319303, ST_GeomFromText('POINT(41.7345534 -71.319303)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1219852', 'John L Curran Lower Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Crompton', 41.7433114, -71.5458333, ST_GeomFromText('POINT(41.7433114 -71.5458333)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1219855', 'Yawgoo Mill Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5223432, -71.5217464, ST_GeomFromText('POINT(41.5223432 -71.5217464)', 4326), NULL, NULL, '2002-08-27', '2021-02-18', 'Official', 'Board Decision', '1930-01-01'),
  ('1219857', 'Beverage Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8545445, -71.3758885, ST_GeomFromText('POINT(41.8545445 -71.3758885)', 4326), 41.8545445, -71.3758885, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219860', 'Rhode Island Sound', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4334372, -71.2161569, ST_GeomFromText('POINT(41.4334372 -71.2161569)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1954-01-01'),
  ('1219861', 'Sand Hill Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Kingston OE S', 41.3731579, -71.5047791, ST_GeomFromText('POINT(41.3731579 -71.5047791)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1219862', 'Point Judith Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.3998243, -71.5064463, ST_GeomFromText('POINT(41.3998243 -71.5064463)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219864', 'Saugatucket River', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4628796, -71.4750575, ST_GeomFromText('POINT(41.4628796 -71.4750575)', 4326), 41.5162125, -71.4864476, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1961-01-01'),
  ('1219865', 'Locke Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.39788, -71.4945014, ST_GeomFromText('POINT(41.39788 -71.4945014)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219867', 'Money Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier OE S', 41.3640566, -71.4822333, ST_GeomFromText('POINT(41.3640566 -71.4822333)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1219868', 'Point Judith', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier OE S', 41.3612137, -71.4806112, ST_GeomFromText('POINT(41.3612137 -71.4806112)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219870', 'Champlin Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier OE S', 41.3676026, -71.4800558, ST_GeomFromText('POINT(41.3676026 -71.4800558)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219871', 'Peaked Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier OE S', 41.3726025, -71.4778335, ST_GeomFromText('POINT(41.3726025 -71.4778335)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219872', 'Bluff Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.3798242, -71.4909581, ST_GeomFromText('POINT(41.3798242 -71.4909581)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1219873', 'Little League Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.3798247, -71.4736668, ST_GeomFromText('POINT(41.3798247 -71.4736668)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219874', 'Point Judith Neck', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.3964912, -71.4833898, ST_GeomFromText('POINT(41.3964912 -71.4833898)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1219876', 'League Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.3887136, -71.4661667, ST_GeomFromText('POINT(41.3887136 -71.4661667)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219877', 'Black Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.3951024, -71.4650557, ST_GeomFromText('POINT(41.3951024 -71.4650557)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219878', 'Rye Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.3945467, -71.4917234, ST_GeomFromText('POINT(41.3945467 -71.4917234)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219879', 'Welcome Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.3970466, -71.4922791, ST_GeomFromText('POINT(41.3970466 -71.4922791)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219880', 'Horseshoe Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.3987133, -71.4975571, ST_GeomFromText('POINT(41.3987133 -71.4975571)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219881', 'Ram Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4028799, -71.4981127, ST_GeomFromText('POINT(41.4028799 -71.4981127)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219882', 'The Brothers', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4003802, -71.4592221, ST_GeomFromText('POINT(41.4003802 -71.4592221)', 4326), NULL, NULL, '1976-05-21', '2011-08-05', NULL, NULL, NULL),
  ('1219883', 'Gunning Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4053802, -71.4553332, ST_GeomFromText('POINT(41.4053802 -71.4553332)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219884', 'Dead Man Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4028802, -71.4595, ST_GeomFromText('POINT(41.4028802 -71.4595)', 4326), 41.425, -71.4694444, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219885', 'Champlin Cove (historical)', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.3919444, -71.5311111, ST_GeomFromText('POINT(41.3919444 -71.5311111)', 4326), NULL, NULL, '1976-05-21', '2011-08-05', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1219886', 'Harbour Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4126021, -71.496724, ST_GeomFromText('POINT(41.4126021 -71.496724)', 4326), NULL, NULL, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1972-01-01'),
  ('1219887', 'Long Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4151021, -71.492835, ST_GeomFromText('POINT(41.4151021 -71.492835)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219888', 'Indian Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4145468, -71.4519999, ST_GeomFromText('POINT(41.4145468 -71.4519999)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219890', 'Upper Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4237131, -71.4945019, ST_GeomFromText('POINT(41.4237131 -71.4945019)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219891', 'Ram Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4264909, -71.4970021, ST_GeomFromText('POINT(41.4264909 -71.4970021)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219892', 'Silver Spring Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.426213, -71.4989466, ST_GeomFromText('POINT(41.426213 -71.4989466)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219893', 'Sprague Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4331851, -71.4714718, ST_GeomFromText('POINT(41.4331851 -71.4714718)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1219894', 'Crooked Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4420465, -71.4625565, ST_GeomFromText('POINT(41.4420465 -71.4625565)', 4326), 41.4172222, -71.4708333, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219896', 'Silver Lake', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4348288, -71.4882092, ST_GeomFromText('POINT(41.4348288 -71.4882092)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1219897', 'Crying Bog', 'Swamp', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4381576, -71.4831128, ST_GeomFromText('POINT(41.4381576 -71.4831128)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1219899', 'Lake Canonchet', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4348611, -71.4576453, ST_GeomFromText('POINT(41.4348611 -71.4576453)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1219901', 'Little Neck', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4401021, -71.4553339, ST_GeomFromText('POINT(41.4401021 -71.4553339)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219902', 'Little Neck Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4380452, -71.4546998, ST_GeomFromText('POINT(41.4380452 -71.4546998)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1219903', 'Pettaquamscutt Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4459354, -71.4581119, ST_GeomFromText('POINT(41.4459354 -71.4581119)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219904', 'Gooseberry Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4473242, -71.4595009, ST_GeomFromText('POINT(41.4473242 -71.4595009)', 4326), NULL, NULL, '1976-05-21', '2011-08-11', 'Official', 'Board Decision', '1930-01-01'),
  ('1219905', 'Meetinghouse Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4452908, -71.4755714, ST_GeomFromText('POINT(41.4452908 -71.4755714)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1219906', 'Indian Run Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4456454, -71.4855519, ST_GeomFromText('POINT(41.4456454 -71.4855519)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1219907', 'River Ledge', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4359356, -71.4367219, ST_GeomFromText('POINT(41.4359356 -71.4367219)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219908', 'Clump Rocks', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4389911, -71.439222, ST_GeomFromText('POINT(41.4389911 -71.439222)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219909', 'Cormorant Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4381578, -71.4411666, ST_GeomFromText('POINT(41.4381578 -71.4411666)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1219910', 'River Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4398244, -71.4425556, ST_GeomFromText('POINT(41.4398244 -71.4425556)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219911', 'Whale Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4437134, -71.4236659, ST_GeomFromText('POINT(41.4437134 -71.4236659)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219912', 'Cormorant Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4401022, -71.439222, ST_GeomFromText('POINT(41.4401022 -71.439222)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219913', 'Thule Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4409355, -71.4381109, ST_GeomFromText('POINT(41.4409355 -71.4381109)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219915', 'Little Whale', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4453801, -71.4231103, ST_GeomFromText('POINT(41.4453801 -71.4231103)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219916', 'Boston Neck', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4570465, -71.4370001, ST_GeomFromText('POINT(41.4570465 -71.4370001)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219918', 'Saugatucket Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.454239, -71.4942713, ST_GeomFromText('POINT(41.454239 -71.4942713)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1219919', 'Indian Run', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4492685, -71.4958914, ST_GeomFromText('POINT(41.4492685 -71.4958914)', 4326), 41.475, -71.4194444, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219920', 'Indian Lake', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4800179, -71.4680084, ST_GeomFromText('POINT(41.4800179 -71.4680084)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1961-01-01'),
  ('1219924', 'Rose Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4891954, -71.4974951, ST_GeomFromText('POINT(41.4891954 -71.4974951)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1219926', 'McSparran Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.496482, -71.4564454, ST_GeomFromText('POINT(41.496482 -71.4564454)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1219927', 'Pettaquamscutt Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4709351, -71.4545011, ST_GeomFromText('POINT(41.4709351 -71.4545011)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219928', 'Tower Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.468265, -71.4592767, ST_GeomFromText('POINT(41.468265 -71.4592767)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1219929', 'Pettaquamscutt River', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4420466, -71.4408889, ST_GeomFromText('POINT(41.4420466 -71.4408889)', 4326), 41.5203794, -71.4447791, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219932', 'Jones Ledge', 'Bench', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4626021, -71.420055, ST_GeomFromText('POINT(41.4626021 -71.420055)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219933', 'Bonnet Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4701021, -71.4208885, ST_GeomFromText('POINT(41.4701021 -71.4208885)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219934', 'Bonnet Shores Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4723242, -71.4264443, ST_GeomFromText('POINT(41.4723242 -71.4264443)', 4326), NULL, NULL, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1961-01-01'),
  ('1219935', 'The Bonnet', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4781576, -71.4194997, ST_GeomFromText('POINT(41.4781576 -71.4194997)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219936', 'Wesquage Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4776385, -71.4256462, ST_GeomFromText('POINT(41.4776385 -71.4256462)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1219938', 'Fox Hill', 'Summit', 'Rhode Island', 'RI', 'Newport', 'Narragansett Pier', 41.4913332, -71.3987735, ST_GeomFromText('POINT(41.4913332 -71.3987735)', 4326), NULL, NULL, '1976-05-21', '2021-01-25', 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1219939', 'Fox Hill Pond', 'Lake', 'Rhode Island', 'RI', 'Newport', 'Narragansett Pier', 41.4903192, -71.3960041, ST_GeomFromText('POINT(41.4903192 -71.3960041)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1219940', 'Dutch Island Harbor', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Narragansett Pier', 41.4973241, -71.3925545, ST_GeomFromText('POINT(41.4973241 -71.3925545)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219941', 'Austin Hollow', 'Valley', 'Rhode Island', 'RI', 'Newport', 'Narragansett Pier', 41.4667427, -71.3943749, ST_GeomFromText('POINT(41.4667427 -71.3943749)', 4326), 41.4651963, -71.3900879, '1976-05-21', '2017-01-23', 'Official', 'Board Decision', '1930-01-01'),
  ('1219942', 'Newton Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Narragansett Pier', 41.4473246, -71.4003316, ST_GeomFromText('POINT(41.4473246 -71.4003316)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219943', 'Beavertail Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Narragansett Pier', 41.4489913, -71.3994983, ST_GeomFromText('POINT(41.4489913 -71.3994983)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219944', 'Lion Head', 'Cliff', 'Rhode Island', 'RI', 'Newport', 'Narragansett Pier', 41.455658, -71.3900536, ST_GeomFromText('POINT(41.455658 -71.3900536)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219946', 'Hull Cove', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Narragansett Pier', 41.4648245, -71.3886648, ST_GeomFromText('POINT(41.4648245 -71.3886648)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219947', 'Southwest Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Narragansett Pier', 41.4748245, -71.3750533, ST_GeomFromText('POINT(41.4748245 -71.3750533)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219948', 'Cedar Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Narragansett Pier', 41.4792689, -71.3778312, ST_GeomFromText('POINT(41.4792689 -71.3778312)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219949', 'Mackerel Cove', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Narragansett Pier', 41.4784355, -71.3806091, ST_GeomFromText('POINT(41.4784355 -71.3806091)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1219950', 'Mackeral Cove Beach', 'Beach', 'Rhode Island', 'RI', 'Newport', 'Narragansett Pier', 41.488991, -71.3828316, ST_GeomFromText('POINT(41.488991 -71.3828316)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1972-01-01'),
  ('1219951', 'Sheffield Cove', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Narragansett Pier', 41.4906576, -71.3836651, ST_GeomFromText('POINT(41.4906576 -71.3836651)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219953', 'Dutch Island', 'Island', 'Rhode Island', 'RI', 'Newport', 'Wickford', 41.5039908, -71.4000549, ST_GeomFromText('POINT(41.5039908 -71.4000549)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219954', 'Conanicut Island', 'Island', 'Rhode Island', 'RI', 'Newport', 'Wickford', 41.5376018, -71.3758871, ST_GeomFromText('POINT(41.5376018 -71.3758871)', 4326), NULL, NULL, '1976-05-21', '2019-08-13', 'Official', 'Board Decision', '1930-01-01'),
  ('1219956', 'Beaverhead', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Narragansett Pier', 41.493713, -71.3972768, ST_GeomFromText('POINT(41.493713 -71.3972768)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219962', 'Great Swamp Goose Marsh', 'Reservoir', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4501008, -71.6111736, ST_GeomFromText('POINT(41.4501008 -71.6111736)', 4326), NULL, NULL, '2002-08-27', NULL, NULL, NULL, NULL),
  ('1219970', 'Scarborough State Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.3898246, -71.4731114, ST_GeomFromText('POINT(41.3898246 -71.4731114)', 4326), NULL, NULL, '1991-04-01', '2011-08-26', 'Official', 'Board Decision', '1972-01-01'),
  ('1219972', 'Pickerel Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4501018, -71.4967248, ST_GeomFromText('POINT(41.4501018 -71.4967248)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219973', 'Bass Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Narragansett Pier', 41.4542688, -71.4314442, ST_GeomFromText('POINT(41.4542688 -71.4314442)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219974', 'Beach Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4403801, -71.4278327, ST_GeomFromText('POINT(41.4403801 -71.4278327)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1219975', 'Big White Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4200702, -71.4927575, ST_GeomFromText('POINT(41.4200702 -71.4927575)', 4326), NULL, NULL, '1991-04-01', '2021-01-25', 'Official', 'Board Decision', '1930-01-01'),
  ('1219976', 'Boiling Lot Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.418991, -71.4920017, ST_GeomFromText('POINT(41.418991 -71.4920017)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219977', 'Bog Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4034357, -71.4583889, ST_GeomFromText('POINT(41.4034357 -71.4583889)', 4326), NULL, NULL, '1991-04-01', '2011-08-11', 'Official', 'Board Decision', '1930-01-01'),
  ('1219978', 'Cedar Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4042689, -71.4933904, ST_GeomFromText('POINT(41.4042689 -71.4933904)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219981', 'Black Point Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.3964914, -71.462, ST_GeomFromText('POINT(41.3964914 -71.462)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219982', 'Frank Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.3931578, -71.4953346, ST_GeomFromText('POINT(41.3931578 -71.4953346)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219983', 'Goose Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.3923244, -71.497557, ST_GeomFromText('POINT(41.3923244 -71.497557)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219984', 'Gin Spring', 'Spring', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4431576, -71.4689456, ST_GeomFromText('POINT(41.4431576 -71.4689456)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219985', 'Fresh Meadow Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4792683, -71.4850582, ST_GeomFromText('POINT(41.4792683 -71.4850582)', 4326), 41.4755556, -71.4744444, '1991-04-01', NULL, 'Official', 'Board Decision', '1972-01-01'),
  ('1219989', 'Wheatfield Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4095465, -71.4983907, ST_GeomFromText('POINT(41.4095465 -71.4983907)', 4326), NULL, NULL, '1991-12-01', '2011-08-26', 'Official', 'Board Decision', '1930-02-05');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1219993', 'Lake Mishnock', 'Lake', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.6536222, -71.5906609, ST_GeomFromText('POINT(41.6536222 -71.5906609)', 4326), NULL, NULL, '2002-08-27', '2018-05-17', 'Official', 'Board Decision', '1972-01-01'),
  ('1219994', 'Middle Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.2157643, -71.5746747, ST_GeomFromText('POINT(41.2157643 -71.5746747)', 4326), NULL, NULL, '1976-05-21', '2021-02-10', 'Official', 'Board Decision', '1930-01-01'),
  ('1219995', 'Charlestown Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Quonochontaug', 41.3584344, -71.6481177, ST_GeomFromText('POINT(41.3584344 -71.6481177)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1972-01-01'),
  ('1219996', 'Gooseberry Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Kingston OE S', 41.3734346, -71.6170056, ST_GeomFromText('POINT(41.3734346 -71.6170056)', 4326), NULL, NULL, '1976-05-21', '2011-08-11', 'Official', 'Board Decision', '1930-01-01'),
  ('1219997', 'Horseshoe Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Kingston OE S', 41.3681569, -71.620339, ST_GeomFromText('POINT(41.3681569 -71.620339)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219998', 'Cedar Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.376768, -71.6120055, ST_GeomFromText('POINT(41.376768 -71.6120055)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1219999', 'Gardner Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.3798242, -71.5383916, ST_GeomFromText('POINT(41.3798242 -71.5383916)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1220000', 'Gooseberry Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.3848243, -71.5161687, ST_GeomFromText('POINT(41.3848243 -71.5161687)', 4326), NULL, NULL, '1976-05-21', '2011-08-11', 'Official', 'Board Decision', '1930-01-01'),
  ('1220001', 'Point Judith Harbor of Refuge', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Kingston OE S', 41.3653802, -71.5064456, ST_GeomFromText('POINT(41.3653802 -71.5064456)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1220002', 'Bluff Hill Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.3845467, -71.5011681, ST_GeomFromText('POINT(41.3845467 -71.5011681)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1220003', 'Gardner Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4064909, -71.5070021, ST_GeomFromText('POINT(41.4064909 -71.5070021)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1220004', 'Short Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4195464, -71.4981131, ST_GeomFromText('POINT(41.4195464 -71.4981131)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1220006', 'Stony Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4626038, -71.1856006, ST_GeomFromText('POINT(41.4626038 -71.1856006)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1220007', 'Stony Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4945481, -71.1353215, ST_GeomFromText('POINT(41.4945481 -71.1353215)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1220008', 'Bear Swamp', 'Swamp', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5534695, -71.5534761, ST_GeomFromText('POINT(41.5534695 -71.5534761)', 4326), NULL, NULL, '1976-05-21', '2018-05-16', 'Official', 'Board Decision', '1930-01-01'),
  ('1220010', 'Bear Swamp', 'Swamp', 'Rhode Island', 'RI', 'Kent', 'Slocum', 41.6134056, -71.5176547, ST_GeomFromText('POINT(41.6134056 -71.5176547)', 4326), NULL, NULL, '1976-05-21', '2022-08-02', 'Official', 'Board Decision', '1930-01-01'),
  ('1220011', 'Bass Rock', 'Cape', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8620444, -71.3769998, ST_GeomFromText('POINT(41.8620444 -71.3769998)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1971-01-01'),
  ('1220012', 'Short Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Narragansett Pier', 41.4645467, -71.3839423, ST_GeomFromText('POINT(41.4645467 -71.3839423)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1220015', 'The Gut', 'Lake', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.6180446, -71.2035851, ST_GeomFromText('POINT(41.6180446 -71.2035851)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1220020', 'Westconnaug Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Clayville', 41.7856551, -71.661455, ST_GeomFromText('POINT(41.7856551 -71.661455)', 4326), 41.7569444, -71.7152778, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1972-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1220022', 'Oak Swamp Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.8281527, -71.5437748, ST_GeomFromText('POINT(41.8281527 -71.5437748)', 4326), NULL, NULL, '1976-05-21', '2018-05-17', 'Official', 'Board Decision', '1930-01-01'),
  ('1220023', 'Elm Lake', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7759339, -71.4111672, ST_GeomFromText('POINT(41.7759339 -71.4111672)', 4326), NULL, NULL, '1976-05-21', '2011-08-26', 'Official', 'Board Decision', '1930-01-01'),
  ('1220024', 'Twin Islands', 'Island', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8220447, -71.3856108, ST_GeomFromText('POINT(41.8220447 -71.3856108)', 4326), NULL, NULL, '1976-05-21', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1220025', 'Chepachet River', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9539873, -71.646177, ST_GeomFromText('POINT(41.9539873 -71.646177)', 4326), 41.9008333, -71.6763889, '1976-05-21', NULL, 'Official', 'Board Decision', '1971-01-01'),
  ('1220045', 'Cedar Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4037132, -71.5028352, ST_GeomFromText('POINT(41.4037132 -71.5028352)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1972-01-01'),
  ('1220046', 'Flat Cove', 'Bay', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6253791, -71.414778, ST_GeomFromText('POINT(41.6253791 -71.414778)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('1220047', 'Gingerbread Island', 'Island', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8220447, -71.3856108, ST_GeomFromText('POINT(41.8220447 -71.3856108)', 4326), NULL, NULL, '1991-04-01', '2020-03-30', 'Official', 'Board Decision', '1930-01-01'),
  ('1220049', 'Flat Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.3833333, -71.4741667, ST_GeomFromText('POINT(41.3833333 -71.4741667)', 4326), NULL, NULL, '1991-04-01', '2011-08-11', 'Official', 'Board Decision', '1930-01-01'),
  ('1220050', 'Flat Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.416769, -71.461167, ST_GeomFromText('POINT(41.416769 -71.461167)', 4326), NULL, NULL, '1991-04-01', '2011-08-11', 'Official', 'Board Decision', '1930-01-01'),
  ('1220051', 'Flat Cove (historical)', 'Bay', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6945455, -71.4106112, ST_GeomFromText('POINT(41.6945455 -71.4106112)', 4326), NULL, NULL, '1991-04-01', NULL, 'Official', 'Board Decision', '1930-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1802656', 'Smith Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8307612, -71.4148583, ST_GeomFromText('POINT(41.8307612 -71.4148583)', 4326), NULL, NULL, '1998-07-30', '2018-05-01', NULL, NULL, NULL),
  ('1829115', 'Children Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Quonochontaug', 41.3712122, -71.6447845, ST_GeomFromText('POINT(41.3712122 -71.6447845)', 4326), NULL, NULL, '1999-04-14', '2010-02-16', 'Official', 'Board Decision', '1930-02-05'),
  ('1901402', 'Bristol Town Beach', 'Beach', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.700935, -71.2919943, ST_GeomFromText('POINT(41.700935 -71.2919943)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1901418', 'Crab Island', 'Island', 'Rhode Island', 'RI', 'Bristol', 'East Providence', 41.7631569, -71.3008838, ST_GeomFromText('POINT(41.7631569 -71.3008838)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1901441', 'Juniper Trail Beach', 'Beach', 'Rhode Island', 'RI', 'Bristol', 'Fall River', 41.701213, -71.2467143, ST_GeomFromText('POINT(41.701213 -71.2467143)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1901450', 'Little Island', 'Island', 'Rhode Island', 'RI', 'Bristol', 'East Providence', 41.7656569, -71.3008838, ST_GeomFromText('POINT(41.7656569 -71.3008838)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1901479', 'Phebes Neck', 'Cape', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7445457, -71.3306073, ST_GeomFromText('POINT(41.7445457 -71.3306073)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1901482', 'Pomham Rocks Island', 'Island', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7378789, -71.3642201, ST_GeomFromText('POINT(41.7378789 -71.3642201)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1901528', 'Volpes Pond', 'Reservoir', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7393998, -71.3300708, ST_GeomFromText('POINT(41.7393998 -71.3300708)', 4326), NULL, NULL, '2001-05-03', '2018-05-17', NULL, NULL, NULL),
  ('1901536', 'Warren Town Beach', 'Beach', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7170461, -71.2850495, ST_GeomFromText('POINT(41.7170461 -71.2850495)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1901541', 'Windmill Hill', 'Summit', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7391478, -71.2673989, ST_GeomFromText('POINT(41.7391478 -71.2673989)', 4326), NULL, NULL, '2001-05-03', '2021-01-25', NULL, NULL, NULL),
  ('1901557', 'Atlantic Beach', 'Beach', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4889915, -71.2847717, ST_GeomFromText('POINT(41.4889915 -71.2847717)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1901582', 'Brickhouse Swamp (historical)', 'Swamp', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5842687, -71.31894, ST_GeomFromText('POINT(41.5842687 -71.31894)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1901588', 'Bullock Cove', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5828798, -71.3172733, ST_GeomFromText('POINT(41.5828798 -71.3172733)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1901599', 'Chase Point', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4837149, -71.1394881, ST_GeomFromText('POINT(41.4837149 -71.1394881)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1901662', 'Grimmells Beach', 'Beach', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.6223245, -71.2289361, ST_GeomFromText('POINT(41.6223245 -71.2289361)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1901691', 'Island Park Beach', 'Beach', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.6212134, -71.235603, ST_GeomFromText('POINT(41.6212134 -71.235603)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1901714', 'King Park Beach', 'Beach', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4776026, -71.3181063, ST_GeomFromText('POINT(41.4776026 -71.3181063)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1901725', 'Little Cormorant Rock', 'Island', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4528815, -71.2022678, ST_GeomFromText('POINT(41.4528815 -71.2022678)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1901727', 'Long Neck Goose', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Fall River', 41.6362134, -71.2281027, ST_GeomFromText('POINT(41.6362134 -71.2281027)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1901736', 'Mary C Donovan Marsh', 'Swamp', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5448069, -71.2074465, ST_GeomFromText('POINT(41.5448069 -71.2074465)', 4326), NULL, NULL, '2001-05-03', '2022-08-02', NULL, NULL, NULL),
  ('1901764', 'Navy Beach', 'Beach', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4926028, -71.2469923, ST_GeomFromText('POINT(41.4926028 -71.2469923)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1901816', 'Peckham Beach', 'Beach', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.518436, -71.2319918, ST_GeomFromText('POINT(41.518436 -71.2319918)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1901858', 'Round Pond', 'Lake', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4631651, -71.1866, ST_GeomFromText('POINT(41.4631651 -71.1866)', 4326), NULL, NULL, '2001-05-03', '2018-05-16', 'Official', 'Board Decision', '1930-02-05'),
  ('1901859', 'Rye Island', 'Island', 'Rhode Island', 'RI', 'Newport', 'Fall River', 41.63538, -71.2306028, ST_GeomFromText('POINT(41.63538 -71.2306028)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1901893', 'Sandy Point Beach', 'Beach', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.549547, -71.2347697, ST_GeomFromText('POINT(41.549547 -71.2347697)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1901908', 'Sunset Beach', 'Beach', 'Rhode Island', 'RI', 'Newport', 'Wickford', 41.5528795, -71.3858876, ST_GeomFromText('POINT(41.5528795 -71.3858876)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1901910', 'Tank Swamp', 'Swamp', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5848242, -71.3208846, ST_GeomFromText('POINT(41.5848242 -71.3208846)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1901913', 'Teddy Beach', 'Beach', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.6228801, -71.2228248, ST_GeomFromText('POINT(41.6228801 -71.2228248)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1901933', 'Town Pond', 'Reservoir', 'Rhode Island', 'RI', 'Newport', 'Fall River', 41.6306578, -71.2456033, ST_GeomFromText('POINT(41.6306578 -71.2456033)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1901962', 'A B Carpenters Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Kingston OE S', 41.3739908, -71.5481141, ST_GeomFromText('POINT(41.3739908 -71.5481141)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1901991', 'Ballards Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1737147, -71.5575552, ST_GeomFromText('POINT(41.1737147 -71.5575552)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1902007', 'Black Rock Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1470479, -71.595334, ST_GeomFromText('POINT(41.1470479 -71.595334)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1902023', 'Browning Mill Pond Area Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.5559331, -71.6892331, ST_GeomFromText('POINT(41.5559331 -71.6892331)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1902029', 'Burlingame State Park Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.3812116, -71.7003423, ST_GeomFromText('POINT(41.3812116 -71.7003423)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1902032', 'Calf Pasture Point Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'East Greenwich', 41.628157, -71.4039441, ST_GeomFromText('POINT(41.628157 -71.4039441)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1902037', 'Captain Roger W Wheeler State Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier OE S', 41.3709357, -71.4967231, ST_GeomFromText('POINT(41.3709357 -71.4967231)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1902090', 'Cooky Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Ashaway', 41.3767578, -71.8300682, ST_GeomFromText('POINT(41.3767578 -71.8300682)', 4326), NULL, NULL, '2001-05-03', '2021-01-25', NULL, NULL, NULL),
  ('1902116', 'Dees Tug Hole', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.20031, -71.5659, ST_GeomFromText('POINT(41.20031 -71.5659)', 4326), NULL, NULL, '2001-05-03', '2024-10-03', NULL, NULL, NULL),
  ('1902120', 'Dunes Club Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4417689, -71.4422778, ST_GeomFromText('POINT(41.4417689 -71.4422778)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1902124', 'Dunes Park Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3289892, -71.7645105, ST_GeomFromText('POINT(41.3289892 -71.7645105)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1902126', 'East Matunuck State Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.376491, -71.528669, ST_GeomFromText('POINT(41.376491 -71.528669)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1902141', 'Fenway Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3287114, -71.7611771, ST_GeomFromText('POINT(41.3287114 -71.7611771)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1902172', 'Galilee Beach Club Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Kingston OE S', 41.3748245, -71.5086682, ST_GeomFromText('POINT(41.3748245 -71.5086682)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1902174', 'Galilee Salt Pond Harbor', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.3789911, -71.5122795, ST_GeomFromText('POINT(41.3789911 -71.5122795)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1902205', 'Hannah Robinson Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5301014, -71.4678357, ST_GeomFromText('POINT(41.5301014 -71.4678357)', 4326), NULL, NULL, '2001-05-03', '2011-08-11', 'Official', 'Board Decision', '1930-02-05'),
  ('1902216', 'High Neck', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Kingston OE S', 41.374268, -71.6150612, ST_GeomFromText('POINT(41.374268 -71.6150612)', 4326), NULL, NULL, '2001-05-03', '2011-08-11', 'Official', 'Board Decision', '1930-02-05'),
  ('1902217', 'High Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.38993, -71.515117, ST_GeomFromText('POINT(41.38993 -71.515117)', 4326), NULL, NULL, '2001-05-03', '2024-07-10', 'Official', 'Board Decision', '1930-02-05'),
  ('1902228', 'Horseshoe Falls', 'Falls', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.4481563, -71.6286742, ST_GeomFromText('POINT(41.4481563 -71.6286742)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1902239', 'Indian Cedar Swamp', 'Swamp', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.4171687, -71.6757083, ST_GeomFromText('POINT(41.4171687 -71.6757083)', 4326), NULL, NULL, '2001-05-03', '2021-06-30', 'Official', 'Board Decision', '1930-02-05');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1902247', 'Ishmael Lake', 'Reservoir', 'Rhode Island', 'RI', 'Washington', 'East Greenwich', 41.6474847, -71.4266477, ST_GeomFromText('POINT(41.6474847 -71.4266477)', 4326), NULL, NULL, '2001-05-03', '2018-05-17', NULL, NULL, NULL),
  ('1902287', 'Maple Lake', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4424453, -71.6216276, ST_GeomFromText('POINT(41.4424453 -71.6216276)', 4326), NULL, NULL, '2001-05-03', '2021-02-18', NULL, NULL, NULL),
  ('1902289', 'Matunuck Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Kingston OE S', 41.373713, -71.5450585, ST_GeomFromText('POINT(41.373713 -71.5450585)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1902300', 'Misquamicut Fire District Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3206556, -71.8136787, ST_GeomFromText('POINT(41.3206556 -71.8136787)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1902301', 'Misquamicut State Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3237112, -71.802845, ST_GeomFromText('POINT(41.3237112 -71.802845)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1902302', 'Money Swamp', 'Swamp', 'Rhode Island', 'RI', 'Washington', 'Slocum', 41.5918252, -71.6109502, ST_GeomFromText('POINT(41.5918252 -71.6109502)', 4326), NULL, NULL, '2001-05-03', '2022-08-03', NULL, NULL, NULL),
  ('1902303', 'Monhegan Bluffs Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1509371, -71.5600549, ST_GeomFromText('POINT(41.1509371 -71.5600549)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1902304', 'Ball Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1727337, -71.5794226, ST_GeomFromText('POINT(41.1727337 -71.5794226)', 4326), NULL, NULL, '2001-05-03', '2021-02-10', 'Official', 'Board Decision', '1930-02-05'),
  ('1902307', 'The Naps', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3114886, -71.8686804, ST_GeomFromText('POINT(41.3114886 -71.8686804)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1902333', 'Niles Spring', 'Spring', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.2309361, -71.5717234, ST_GeomFromText('POINT(41.2309361 -71.5717234)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1902334', 'Ninigret Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.3806566, -71.6475625, ST_GeomFromText('POINT(41.3806566 -71.6475625)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1902338', 'North Kingstown Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.6098236, -71.4147779, ST_GeomFromText('POINT(41.6098236 -71.4147779)', 4326), NULL, NULL, '2001-05-03', '2011-08-26', 'Official', 'Board Decision', '1930-02-05'),
  ('1902345', 'North Kingstown Town Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5651014, -71.4428347, ST_GeomFromText('POINT(41.5651014 -71.4428347)', 4326), NULL, NULL, '2001-05-03', '2011-08-26', NULL, NULL, NULL),
  ('1902351', 'Ocean House Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3067665, -71.8559021, ST_GeomFromText('POINT(41.3067665 -71.8559021)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1902446', 'Rodman Mill Pond', 'Reservoir', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5733953, -71.4872658, ST_GeomFromText('POINT(41.5733953 -71.4872658)', 4326), NULL, NULL, '2001-05-03', '2018-05-17', NULL, NULL, NULL),
  ('1902450', 'Rossis Swamp', 'Swamp', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1724165, -71.5762658, ST_GeomFromText('POINT(41.1724165 -71.5762658)', 4326), NULL, NULL, '2001-05-03', '2018-05-16', NULL, NULL, NULL),
  ('1902452', 'Roy Carpenters Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Kingston OE S', 41.3726018, -71.5606145, ST_GeomFromText('POINT(41.3726018 -71.5606145)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1902475', 'Salty Brine State Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.37538, -71.5117238, ST_GeomFromText('POINT(41.37538 -71.5117238)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1902476', 'Sam Ferretti Blue Shutters Town Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Quonochontaug', 41.3392675, -71.6981193, ST_GeomFromText('POINT(41.3392675 -71.6981193)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1902478', 'Sand Hill Cove State Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.3759356, -71.5017234, ST_GeomFromText('POINT(41.3759356 -71.5017234)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1902486', 'Scarborough South State Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.3803803, -71.4778336, ST_GeomFromText('POINT(41.3803803 -71.4778336)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1902490', 'Seaside Beach Club Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3289891, -71.7675662, ST_GeomFromText('POINT(41.3289891 -71.7675662)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1902535', 'Spring House Ice Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1690523, -71.553813, ST_GeomFromText('POINT(41.1690523 -71.553813)', 4326), NULL, NULL, '2001-05-03', '2021-02-10', NULL, NULL, NULL),
  ('1902583', 'Watch Hill Beach Association Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3089887, -71.8595134, ST_GeomFromText('POINT(41.3089887 -71.8595134)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1902590', 'Weekapaug Inn Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3267671, -71.7506211, ST_GeomFromText('POINT(41.3267671 -71.7506211)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1902596', 'West Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.2217696, -71.5764456, ST_GeomFromText('POINT(41.2217696 -71.5764456)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1902607', 'Westerly Town Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3281558, -71.7720107, ST_GeomFromText('POINT(41.3281558 -71.7720107)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1902637', 'Willow Dell Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Kingston OE S', 41.3731574, -71.5578366, ST_GeomFromText('POINT(41.3731574 -71.5578366)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1902638', 'Wine Brook', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Ashaway', 41.455655, -71.7856244, ST_GeomFromText('POINT(41.455655 -71.7856244)', 4326), 41.4694444, -71.7936111, '2001-05-03', '2011-08-26', 'Official', 'Board Decision', '1930-02-05'),
  ('1902664', 'Conochet Club Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4398244, -71.4467224, ST_GeomFromText('POINT(41.4398244 -71.4467224)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1902726', 'Brayton Meadows', 'Swamp', 'Rhode Island', 'RI', 'Kent', 'Crompton', 41.6398229, -71.5245052, ST_GeomFromText('POINT(41.6398229 -71.5245052)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1902765', 'Cranberry Pond', 'Reservoir', 'Rhode Island', 'RI', 'Kent', 'Providence', 41.752008, -71.4195481, ST_GeomFromText('POINT(41.752008 -71.4195481)', 4326), NULL, NULL, '2001-05-03', '2018-05-17', NULL, NULL, NULL),
  ('1902849', 'Goddard Memorial State Park Beach', 'Beach', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6662121, -71.4356124, ST_GeomFromText('POINT(41.6662121 -71.4356124)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1902915', 'Longmeadow Beach', 'Beach', 'Rhode Island', 'RI', 'Kent', 'Bristol', 41.7023235, -71.3644979, ST_GeomFromText('POINT(41.7023235 -71.3644979)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1902989', 'Rocky Point Beach', 'Beach', 'Rhode Island', 'RI', 'Kent', 'Bristol', 41.6720457, -71.3733872, ST_GeomFromText('POINT(41.6720457 -71.3733872)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1903011', 'Sandy Beach', 'Beach', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.7048232, -71.4072778, ST_GeomFromText('POINT(41.7048232 -71.4072778)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1903012', 'Sandy Point Beach', 'Beach', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.660379, -71.4106112, ST_GeomFromText('POINT(41.660379 -71.4106112)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1903096', 'Albion Falls', 'Falls', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9489879, -71.4481145, ST_GeomFromText('POINT(41.9489879 -71.4481145)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1903126', 'Antushantuck Neck', 'Cape', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7992668, -71.4636699, ST_GeomFromText('POINT(41.7992668 -71.4636699)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1903161', 'Baileys Butts', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8487112, -71.395056, ST_GeomFromText('POINT(41.8487112 -71.395056)', 4326), NULL, NULL, '2001-05-03', '2024-03-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1903162', 'Baileys Lower Cove', 'Bay', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8376002, -71.3786663, ST_GeomFromText('POINT(41.8376002 -71.3786663)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1903163', 'Baileys Upper Cove', 'Bay', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8406558, -71.3783885, ST_GeomFromText('POINT(41.8406558 -71.3783885)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1903177', 'Benjamin Pond (historical)', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8642664, -71.4514474, ST_GeomFromText('POINT(41.8642664 -71.4514474)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1903199', 'Blackstone Gorge', 'Valley', 'Massachusetts', 'MA', 'Worcester', 'Blackstone', 42.0158521, -71.5536781, ST_GeomFromText('POINT(42.0158521 -71.5536781)', 4326), 42.0096318, -71.5513356, '2001-05-03', '2016-12-03', NULL, NULL, NULL),
  ('1903205', 'The Blunders', 'Pillar', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9400987, -71.5489514, ST_GeomFromText('POINT(41.9400987 -71.5489514)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1903210', 'Box Pond (historical)', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8503777, -71.4236684, ST_GeomFromText('POINT(41.8503777 -71.4236684)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1903254', 'Cat Swamp (historical)', 'Swamp', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8326002, -71.388111, ST_GeomFromText('POINT(41.8326002 -71.388111)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1903326', 'College Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8316648, -71.4060118, ST_GeomFromText('POINT(41.8316648 -71.4060118)', 4326), NULL, NULL, '2001-05-03', '2018-05-01', NULL, NULL, NULL),
  ('1903390', 'Dexters Ledge', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.8878813, -71.3889003, ST_GeomFromText('POINT(41.8878813 -71.3889003)', 4326), NULL, NULL, '2001-05-03', '2021-01-25', NULL, NULL, NULL),
  ('1903426', 'Edgewood Beach', 'Beach', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.778434, -71.3908884, ST_GeomFromText('POINT(41.778434 -71.3908884)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1903487', 'Flynns Beach', 'Beach', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9817649, -71.6611775, ST_GeomFromText('POINT(41.9817649 -71.6611775)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1903491', 'Forestack Meadow (historical)', 'Swamp', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8298223, -71.4189457, ST_GeomFromText('POINT(41.8298223 -71.4189457)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1903510', 'Frank Moody State Beach', 'Beach', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.8889884, -71.4342246, ST_GeomFromText('POINT(41.8889884 -71.4342246)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1903518', 'Fruit Hill Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8548219, -71.4550587, ST_GeomFromText('POINT(41.8548219 -71.4550587)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1903532', 'Geneva Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8560727, -71.4439727, ST_GeomFromText('POINT(41.8560727 -71.4439727)', 4326), NULL, NULL, '2001-05-03', '2018-05-17', NULL, NULL, NULL),
  ('1903539', 'Georgiaville Beach', 'Beach', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.8884325, -71.5089499, ST_GeomFromText('POINT(41.8884325 -71.5089499)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1903545', 'Gillerans Pond Beach', 'Beach', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9467652, -71.6250651, ST_GeomFromText('POINT(41.9467652 -71.6250651)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1903578', 'Great Swamp (historical)', 'Swamp', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8548222, -71.3883891, ST_GeomFromText('POINT(41.8548222 -71.3883891)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1903588', 'Greenwood Point', 'Cape', 'Rhode Island', 'RI', 'Providence', 'East Providence', 41.839267, -71.3703325, ST_GeomFromText('POINT(41.839267 -71.3703325)', 4326), NULL, NULL, '2001-05-03', '2011-08-11', 'Official', 'Board Decision', '1930-02-05'),
  ('1903589', 'Greystone Mill Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8686492, -71.495243, ST_GeomFromText('POINT(41.8686492 -71.495243)', 4326), NULL, NULL, '2001-05-03', '2018-05-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1903611', 'Harrisville Mill Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9678337, -71.6760759, ST_GeomFromText('POINT(41.9678337 -71.6760759)', 4326), NULL, NULL, '2001-05-03', '2018-05-17', NULL, NULL, NULL),
  ('1903688', 'Iron Rock Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Franklin', 42.0010282, -71.4572846, ST_GeomFromText('POINT(42.0010282 -71.4572846)', 4326), NULL, NULL, '2001-05-03', '2021-01-25', 'Official', 'Board Decision', '1971-11-09'),
  ('1903722', 'Jongue Pond (historical)', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7953781, -71.4445022, ST_GeomFromText('POINT(41.7953781 -71.4445022)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1903757', 'Leonard Pond (historical)', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8451, -71.4197793, ST_GeomFromText('POINT(41.8451 -71.4197793)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1903784', 'Long Pond (historical)', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.804267, -71.4278348, ST_GeomFromText('POINT(41.804267 -71.4278348)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1903791', 'Lower Rochambeau Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.95934, -71.4721274, ST_GeomFromText('POINT(41.95934 -71.4721274)', 4326), NULL, NULL, '2001-05-03', '2018-05-17', NULL, NULL, NULL),
  ('1903853', 'Mile End Cove', 'Bay', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8162114, -71.4011671, ST_GeomFromText('POINT(41.8162114 -71.4011671)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1903870', 'Moshassuck', 'Cape', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8378779, -71.3970004, ST_GeomFromText('POINT(41.8378779 -71.3970004)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1903878', 'Mountaindale Beach', 'Beach', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.8837103, -71.5356175, ST_GeomFromText('POINT(41.8837103 -71.5356175)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1904045', 'Ralphs Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7614516, -71.4796664, ST_GeomFromText('POINT(41.7614516 -71.4796664)', 4326), NULL, NULL, '2001-05-03', '2018-05-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1904054', 'Reservoir Number 1', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9740791, -71.4887009, ST_GeomFromText('POINT(41.9740791 -71.4887009)', 4326), NULL, NULL, '2001-05-03', '2015-04-15', NULL, NULL, NULL),
  ('1904055', 'Reservoir Number 2', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9701533, -71.4871071, ST_GeomFromText('POINT(41.9701533 -71.4871071)', 4326), NULL, NULL, '2001-05-03', '2015-04-15', NULL, NULL, NULL),
  ('1904092', 'Richmond Point', 'Cape', 'Rhode Island', 'RI', 'Providence', 'East Providence', 41.75649, -71.3539418, ST_GeomFromText('POINT(41.75649 -71.3539418)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1904113', 'Round Cove', 'Bay', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8223226, -71.3822774, ST_GeomFromText('POINT(41.8223226 -71.3822774)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1904231', 'Sassafras Cove', 'Bay', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8006561, -71.3950555, ST_GeomFromText('POINT(41.8006561 -71.3950555)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1904265', 'Slacks Pond Beach', 'Beach', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.8628771, -71.5517291, ST_GeomFromText('POINT(41.8628771 -71.5517291)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1904304', 'Spring Lake Beach', 'Beach', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9875982, -71.6589551, ST_GeomFromText('POINT(41.9875982 -71.6589551)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1904309', 'State Park Beach', 'Beach', 'Rhode Island', 'RI', 'Providence', 'Blackstone', 42.0087093, -71.5103393, ST_GeomFromText('POINT(42.0087093 -71.5103393)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1904311', 'Steers Beach', 'Beach', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.8820435, -71.5803412, ST_GeomFromText('POINT(41.8820435 -71.5803412)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1904315', 'Stillhouse Cove', 'Bay', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7689897, -71.3883882, ST_GeomFromText('POINT(41.7689897 -71.3883882)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1904323', 'Sunshine Island (historical)', 'Island', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7866667, -71.3819444, ST_GeomFromText('POINT(41.7866667 -71.3819444)', 4326), NULL, NULL, '2001-05-03', '2011-08-26', NULL, NULL, NULL),
  ('1904362', 'Twin Rivers Beach', 'Beach', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8689884, -71.4675593, ST_GeomFromText('POINT(41.8689884 -71.4675593)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1904363', 'Twin Rivers Beach East', 'Beach', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8728773, -71.463948, ST_GeomFromText('POINT(41.8728773 -71.463948)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1904388', 'Upper Canada Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.859509, -71.428041, ST_GeomFromText('POINT(41.859509 -71.428041)', 4326), NULL, NULL, '2001-05-03', '2024-12-10', NULL, NULL, NULL),
  ('1904389', 'Upper Slatersville Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.998268, -71.5813836, ST_GeomFromText('POINT(41.998268 -71.5813836)', 4326), NULL, NULL, '2001-05-03', '2018-05-17', NULL, NULL, NULL),
  ('1904419', 'Wanskuck Pond (historical)', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.855418, -71.432312, ST_GeomFromText('POINT(41.855418 -71.432312)', 4326), NULL, NULL, '2001-05-03', '2024-12-10', NULL, NULL, NULL),
  ('1904425', 'Watchemoket Point', 'Cape', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8167671, -71.389222, ST_GeomFromText('POINT(41.8167671 -71.389222)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1904430', 'Wayboussett Hill (historical)', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8217669, -71.409223, ST_GeomFromText('POINT(41.8217669 -71.409223)', 4326), NULL, NULL, '2001-05-03', '2018-04-13', NULL, NULL, NULL),
  ('1904431', 'Waybaussett Neck', 'Cape', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8237113, -71.4078341, ST_GeomFromText('POINT(41.8237113 -71.4078341)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1904448', 'Whipple Pond (historical)', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8531553, -71.4725595, ST_GeomFromText('POINT(41.8531553 -71.4725595)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1904450', 'Whipples Pond', 'Reservoir', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8560727, -71.4439727, ST_GeomFromText('POINT(41.8560727 -71.4439727)', 4326), NULL, NULL, '2001-05-03', '2015-04-27', NULL, NULL, NULL),
  ('1904484', 'Woonsocket Falls', 'Falls', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9991667, -71.5177778, ST_GeomFromText('POINT(41.9991667 -71.5177778)', 4326), NULL, NULL, '2001-05-03', '2011-08-26', 'Official', 'Board Decision', '1930-02-05'),
  ('1904492', 'YWCA Beach', 'Beach', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9842649, -71.6661777, ST_GeomFromText('POINT(41.9842649 -71.6661777)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1904500', 'Cowpen Point', 'Cape', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8178781, -71.4039449, ST_GeomFromText('POINT(41.8178781 -71.4039449)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1904523', 'Massasoit Spring', 'Spring', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7309349, -71.2864384, ST_GeomFromText('POINT(41.7309349 -71.2864384)', 4326), NULL, NULL, '2001-05-03', '2011-08-11', 'Official', 'Board Decision', '1930-02-05'),
  ('1904528', 'North Ligth Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.2301028, -71.5753346, ST_GeomFromText('POINT(41.2301028 -71.5753346)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1904539', 'Fogland Beach', 'Beach', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.5581583, -71.2169913, ST_GeomFromText('POINT(41.5581583 -71.2169913)', 4326), NULL, NULL, '2001-05-03', NULL, NULL, NULL, NULL),
  ('1988988', 'Plum Point Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5312128, -71.4172779, ST_GeomFromText('POINT(41.5312128 -71.4172779)', 4326), NULL, NULL, '2003-07-03', NULL, NULL, NULL, NULL),
  ('2026504', 'Grassy Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Quonochontaug', 41.3606566, -71.6531179, ST_GeomFromText('POINT(41.3606566 -71.6531179)', 4326), NULL, NULL, '2002-08-27', NULL, NULL, NULL, NULL),
  ('2090042', 'Marys Creek', 'Stream', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6881685, -71.4504218, ST_GeomFromText('POINT(41.6881685 -71.4504218)', 4326), 41.6905556, -71.4522222, '2006-06-26', '2011-12-09', 'Official', 'Board Decision', '2006-06-06');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2567562', 'Gould Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.89424, -71.50754, ST_GeomFromText('POINT(41.89424 -71.50754)', 4326), 41.915946, -71.480913, '2009-08-15', NULL, 'Official', 'Board Decision', '2009-08-13'),
  ('2567563', 'Whipple Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.88637, -71.50525, ST_GeomFromText('POINT(41.88637 -71.50525)', 4326), 41.89953, -71.48284, '2009-08-15', NULL, 'Official', 'Board Decision', '2009-08-13'),
  ('2567564', 'Airport Creek', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.91285, -71.50679, ST_GeomFromText('POINT(41.91285 -71.50679)', 4326), 41.9141918, -71.4937391, '2009-08-15', NULL, 'Official', 'Board Decision', '2009-08-13'),
  ('2567565', 'Hanton Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.90997, -71.52782, ST_GeomFromText('POINT(41.90997 -71.52782)', 4326), 41.93044, -71.52138, '2009-08-15', NULL, 'Official', 'Board Decision', '2009-08-13'),
  ('2567566', 'Mattetokomitt Swamp', 'Swamp', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.9639178, -71.567505, ST_GeomFromText('POINT(41.9639178 -71.567505)', 4326), NULL, NULL, '2009-08-15', '2012-09-01', 'Official', 'Board Decision', '2009-08-13'),
  ('2567567', 'Mattetee Swamp Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.954457, -71.552857, ST_GeomFromText('POINT(41.954457 -71.552857)', 4326), 41.96244, -71.56478, '2009-08-15', '2012-06-11', 'Official', 'Board Decision', '2009-08-13'),
  ('2567568', 'Pleasant Valley Stream', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8288, -71.42864, ST_GeomFromText('POINT(41.8288 -71.42864)', 4326), 41.84108, -71.4498, '2009-08-15', NULL, 'Official', 'Board Decision', '2009-08-13'),
  ('2567569', 'Sprague Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.88475, -71.54149, ST_GeomFromText('POINT(41.88475 -71.54149)', 4326), 41.89174, -71.56329, '2009-08-15', NULL, 'Official', 'Board Decision', '2009-08-13'),
  ('2575242', 'Kings Rocks', 'Pillar', 'Rhode Island', 'RI', 'Bristol', 'East Providence', 41.7561111, -71.2713889, ST_GeomFromText('POINT(41.7561111 -71.2713889)', 4326), NULL, NULL, '2010-01-20', NULL, 'Official', 'Board Decision', '1930-12-31'),
  ('2575243', 'Martin Point', 'Cape', 'Rhode Island', 'RI', 'Bristol', 'Bristol', 41.7486111, -71.3111111, ST_GeomFromText('POINT(41.7486111 -71.3111111)', 4326), NULL, NULL, '2010-01-20', '2010-02-16', 'Official', 'Board Decision', '1971-10-12');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2575244', 'Old Pier Rock', 'Island', 'Rhode Island', 'RI', 'Kent', 'East Greenwich', 41.6686111, -71.3755556, ST_GeomFromText('POINT(41.6686111 -71.3755556)', 4326), NULL, NULL, '2010-01-20', '2011-08-05', 'Official', 'Board Decision', '1930-02-05'),
  ('2575253', 'Honeyman Hill', 'Summit', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5010453, -71.2791875, ST_GeomFromText('POINT(41.5010453 -71.2791875)', 4326), NULL, NULL, '2010-01-21', '2021-01-25', 'Official', 'Board Decision', '1930-02-05'),
  ('2575254', 'Lanquissy Rocks (historical)', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Narragansett Pier', 41.4936111, -71.3905556, ST_GeomFromText('POINT(41.4936111 -71.3905556)', 4326), NULL, NULL, '2010-01-21', '2010-02-16', 'Official', 'Board Decision', '1930-02-05'),
  ('2575255', 'Little Brook (historical)', 'Stream', 'Rhode Island', 'RI', 'Newport', 'Fall River', 41.6258333, -71.2408333, ST_GeomFromText('POINT(41.6258333 -71.2408333)', 4326), 41.6272222, -71.2408333, '2010-01-21', '2011-08-05', NULL, NULL, NULL),
  ('2575256', 'Little Ida Lewis Rock', 'Island', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.48, -71.32, ST_GeomFromText('POINT(41.48 -71.32)', 4326), NULL, NULL, '2010-01-21', '2011-08-26', 'Official', 'Board Decision', '1972-08-08'),
  ('2575259', 'Sakonnat Rocks (historical)', 'Island', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4527778, -71.1958333, ST_GeomFromText('POINT(41.4527778 -71.1958333)', 4326), NULL, NULL, '2010-01-21', NULL, NULL, NULL, NULL),
  ('2575260', 'Sand Beach Cove', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4777778, -71.3638889, ST_GeomFromText('POINT(41.4777778 -71.3638889)', 4326), NULL, NULL, '2010-01-21', '2010-02-16', 'Official', 'Board Decision', '1930-02-05'),
  ('2575261', 'Shreeves Creek (historical)', 'Stream', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5791667, -71.2847222, ST_GeomFromText('POINT(41.5791667 -71.2847222)', 4326), 41.5694444, -71.2791667, '2010-01-21', '2010-02-16', 'Official', 'Board Decision', '1930-02-05'),
  ('2575289', 'Stony Reef', 'Island', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4577778, -71.3008333, ST_GeomFromText('POINT(41.4577778 -71.3008333)', 4326), NULL, NULL, '2010-01-21', '2010-02-16', 'Official', 'Board Decision', '1930-02-05'),
  ('2575293', 'Logee Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Georgiaville', 41.995123, -71.5048039, ST_GeomFromText('POINT(41.995123 -71.5048039)', 4326), NULL, NULL, '2010-01-21', '2021-01-25', 'Official', 'Board Decision', '1930-02-05');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2575295', 'Lymansville Pond', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8411111, -71.4797222, ST_GeomFromText('POINT(41.8411111 -71.4797222)', 4326), NULL, NULL, '2010-01-21', NULL, NULL, NULL, NULL),
  ('2575298', 'Quinsnicket Lake', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9051604, -71.4362898, ST_GeomFromText('POINT(41.9051604 -71.4362898)', 4326), NULL, NULL, '2010-01-21', '2018-05-17', 'Official', 'Board Decision', '1930-02-05'),
  ('2575300', 'Roger Williams Spring (historical)', 'Spring', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.83, -71.4108333, ST_GeomFromText('POINT(41.83 -71.4108333)', 4326), NULL, NULL, '2010-01-21', '2011-08-26', NULL, NULL, NULL),
  ('2575304', 'Vals Creek', 'Stream', 'Rhode Island', 'RI', 'Providence', 'East Providence', 41.7677778, -71.3633333, ST_GeomFromText('POINT(41.7677778 -71.3633333)', 4326), 41.7841667, -71.3538889, '2010-01-21', '2010-02-16', NULL, NULL, NULL),
  ('2575306', 'Whortleberry Island', 'Island', 'Rhode Island', 'RI', 'Providence', 'East Providence', 41.8219444, -71.3730556, ST_GeomFromText('POINT(41.8219444 -71.3730556)', 4326), NULL, NULL, '2010-01-21', '2010-02-16', 'Official', 'Board Decision', '1930-02-05'),
  ('2575309', 'Iron Mine Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.3930556, -71.4911111, ST_GeomFromText('POINT(41.3930556 -71.4911111)', 4326), NULL, NULL, '2010-01-21', '2010-02-16', 'Official', 'Board Decision', '1930-02-05'),
  ('2575310', 'Moscow Ponds', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Hope Valley', 41.5221991, -71.7435423, ST_GeomFromText('POINT(41.5221991 -71.7435423)', 4326), NULL, NULL, '2010-01-21', '2021-02-18', NULL, NULL, NULL),
  ('2575311', 'Quonochontaug Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Quonochontaug', 41.331767, -71.721731, ST_GeomFromText('POINT(41.331767 -71.721731)', 4326), NULL, NULL, '2010-01-21', '2011-09-14', NULL, NULL, NULL),
  ('2575312', 'Sand Hill (historical)', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier OE S', 41.3625, -71.4958333, ST_GeomFromText('POINT(41.3625 -71.4958333)', 4326), NULL, NULL, '2010-01-21', '2010-02-16', NULL, NULL, NULL),
  ('2575313', 'Scotch Pond (historical)', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.4875, -71.6666667, ST_GeomFromText('POINT(41.4875 -71.6666667)', 4326), NULL, NULL, '2010-01-21', '2011-08-26', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2575314', 'Shewatuck Brook (historical)', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5694444, -71.4519444, ST_GeomFromText('POINT(41.5694444 -71.4519444)', 4326), 41.5694444, -71.4519444, '2010-01-21', NULL, NULL, NULL, NULL),
  ('2575315', 'Slocum Point (historical)', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5744444, -71.4477778, ST_GeomFromText('POINT(41.5744444 -71.4477778)', 4326), NULL, NULL, '2010-01-21', '2011-08-26', NULL, NULL, NULL),
  ('2575317', 'Spring Gutter Brook (historical)', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Watch Hill', 41.3388889, -71.7583333, ST_GeomFromText('POINT(41.3388889 -71.7583333)', 4326), 41.3944444, -71.7527778, '2010-01-21', '2010-02-16', 'Official', 'Board Decision', '1930-02-05'),
  ('2575318', 'Stub Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.3777778, -71.65, ST_GeomFromText('POINT(41.3777778 -71.65)', 4326), NULL, NULL, '2010-01-21', '2010-02-16', NULL, NULL, NULL),
  ('2575320', 'Sugarloaf Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.2144444, -71.5541667, ST_GeomFromText('POINT(41.2144444 -71.5541667)', 4326), NULL, NULL, '2010-01-21', '2010-02-16', NULL, NULL, NULL),
  ('2575322', 'Teal Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.3855556, -71.505, ST_GeomFromText('POINT(41.3855556 -71.505)', 4326), NULL, NULL, '2010-01-21', '2010-02-16', 'Official', 'Board Decision', '1930-02-05'),
  ('2575323', 'Viall Creek (historical)', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5875, -71.4083333, ST_GeomFromText('POINT(41.5875 -71.4083333)', 4326), 41.5875, -71.4083333, '2010-01-21', '2010-02-16', 'Official', 'Board Decision', '1930-02-05'),
  ('2575326', 'Wakefield Mill Reservoir', 'Reservoir', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4402314, -71.4987658, ST_GeomFromText('POINT(41.4402314 -71.4987658)', 4326), NULL, NULL, '2010-01-26', '2021-06-30', 'Official', 'Board Decision', '1930-02-05'),
  ('2575329', 'Red Brook (historical)', 'Stream', 'Rhode Island', 'RI', 'Washington', 'Ashaway', 41.3758333, -71.7952778, ST_GeomFromText('POINT(41.3758333 -71.7952778)', 4326), 41.3555556, -71.8083333, '2010-01-21', '2010-02-16', 'Official', 'Board Decision', '1930-02-05'),
  ('2702233', 'Beaver Neck', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Narragansett Pier', 41.4741667, -71.3911111, ST_GeomFromText('POINT(41.4741667 -71.3911111)', 4326), NULL, NULL, '2011-07-28', '2017-11-08', 'Official', 'Board Decision', '1930-02-05');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2702759', 'The Brothers', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5486111, -71.4136111, ST_GeomFromText('POINT(41.5486111 -71.4136111)', 4326), NULL, NULL, '2011-08-05', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2702760', 'The Brothers', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5747222, -71.4380556, ST_GeomFromText('POINT(41.5747222 -71.4380556)', 4326), NULL, NULL, '2011-08-05', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2703777', 'Catch Pond', 'Lake', 'Rhode Island', 'RI', 'Washington', 'Block Island', 41.1617723, -71.6035782, ST_GeomFromText('POINT(41.1617723 -71.6035782)', 4326), NULL, NULL, '2011-08-26', '2021-02-10', 'Official', 'Board Decision', '1930-02-05'),
  ('2703783', 'Flat Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5802683, -71.4131927, ST_GeomFromText('POINT(41.5802683 -71.4131927)', 4326), NULL, NULL, '2011-08-26', NULL, NULL, NULL, NULL),
  ('2704580', 'Happy Islet', 'Island', 'Rhode Island', 'RI', 'Kent', 'East Providence', 41.7777778, -71.3697222, ST_GeomFromText('POINT(41.7777778 -71.3697222)', 4326), NULL, NULL, '2011-09-09', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704586', 'Harvey Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.3763889, -71.6477778, ST_GeomFromText('POINT(41.3763889 -71.6477778)', 4326), NULL, NULL, '2011-09-09', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704587', 'Hell Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.3763889, -71.6452778, ST_GeomFromText('POINT(41.3763889 -71.6452778)', 4326), NULL, NULL, '2011-09-09', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704588', 'Hipses Rock', 'Pillar', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.8019444, -71.48, ST_GeomFromText('POINT(41.8019444 -71.48)', 4326), NULL, NULL, '2011-09-09', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704592', 'Horton Island', 'Island', 'Rhode Island', 'RI', 'Providence', 'Chepachet', 41.9263889, -71.7125, ST_GeomFromText('POINT(41.9263889 -71.7125)', 4326), NULL, NULL, '2011-09-09', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704620', 'Ladd Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4158333, -71.5083333, ST_GeomFromText('POINT(41.4158333 -71.5083333)', 4326), NULL, NULL, '2011-09-09', NULL, 'Official', 'Board Decision', '1930-02-05');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2704623', 'Little Neck Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4419444, -71.4413889, ST_GeomFromText('POINT(41.4419444 -71.4413889)', 4326), NULL, NULL, '2011-09-09', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704625', 'Little Orchard Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.8955211, -71.4360666, ST_GeomFromText('POINT(41.8955211 -71.4360666)', 4326), 41.90111, -71.436111, '2011-09-09', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704626', 'Long Bar Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.42, -71.4955556, ST_GeomFromText('POINT(41.42 -71.4955556)', 4326), NULL, NULL, '2011-09-09', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704627', 'Longmeadow Rock', 'Pillar', 'Rhode Island', 'RI', 'Kent', 'Bristol', 41.7019444, -71.3577778, ST_GeomFromText('POINT(41.7019444 -71.3577778)', 4326), NULL, NULL, '2011-09-09', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704628', 'Lovett Rock', 'Pillar', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7905556, -71.3755556, ST_GeomFromText('POINT(41.7905556 -71.3755556)', 4326), NULL, NULL, '2011-09-09', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704629', 'Manney Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.579605, -71.4250374, ST_GeomFromText('POINT(41.579605 -71.4250374)', 4326), NULL, NULL, '2011-09-09', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704630', 'Meshanticut Lake', 'Lake', 'Rhode Island', 'RI', 'Providence', 'Providence', 41.7686868, -71.476144, ST_GeomFromText('POINT(41.7686868 -71.476144)', 4326), NULL, NULL, '2011-09-09', '2018-05-17', 'Official', 'Board Decision', '1930-02-05'),
  ('2704631', 'Little Point Judith', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4088889, -71.5058333, ST_GeomFromText('POINT(41.4088889 -71.5058333)', 4326), NULL, NULL, '2011-09-09', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704641', 'Old Bull Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4922222, -71.2097222, ST_GeomFromText('POINT(41.4922222 -71.2097222)', 4326), NULL, NULL, '2011-09-09', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704646', 'Old Daniel Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4027778, -71.4555556, ST_GeomFromText('POINT(41.4027778 -71.4555556)', 4326), NULL, NULL, '2011-09-09', NULL, 'Official', 'Board Decision', '1930-02-05');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2704650', 'Old Gay Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5716002, -71.4377832, ST_GeomFromText('POINT(41.5716002 -71.4377832)', 4326), NULL, NULL, '2011-09-09', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704652', 'Poker Hill', 'Summit', 'Rhode Island', 'RI', 'Providence', 'Pawtucket', 41.9481994, -71.4319031, ST_GeomFromText('POINT(41.9481994 -71.4319031)', 4326), NULL, NULL, '2011-09-09', '2021-01-25', 'Official', 'Board Decision', '1930-02-05'),
  ('2704656', 'Pork Barrel Island', 'Island', 'Rhode Island', 'RI', 'Providence', 'Kingston', 41.4077778, -71.5047222, ST_GeomFromText('POINT(41.4077778 -71.5047222)', 4326), NULL, NULL, '2011-09-09', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704657', 'Potato Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Kingston OE S', 41.3680556, -71.6152778, ST_GeomFromText('POINT(41.3680556 -71.6152778)', 4326), NULL, NULL, '2011-09-09', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704658', 'Quahaug Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.3961111, -71.4630556, ST_GeomFromText('POINT(41.3961111 -71.4630556)', 4326), NULL, NULL, '2011-09-09', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704677', 'Ram Head Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.3902778, -71.4980556, ST_GeomFromText('POINT(41.3902778 -71.4980556)', 4326), NULL, NULL, '2011-09-09', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704678', 'Regatta Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Providence', 41.8327778, -71.3783333, ST_GeomFromText('POINT(41.8327778 -71.3783333)', 4326), NULL, NULL, '2011-09-09', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704685', 'Rocky Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4213889, -71.495, ST_GeomFromText('POINT(41.4213889 -71.495)', 4326), NULL, NULL, '2011-09-09', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704692', 'Round Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4397222, -71.4416667, ST_GeomFromText('POINT(41.4397222 -71.4416667)', 4326), NULL, NULL, '2011-09-09', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704906', 'Sachuest Peninsula', 'Cape', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4802778, -71.2419444, ST_GeomFromText('POINT(41.4802778 -71.2419444)', 4326), NULL, NULL, '2011-09-14', NULL, 'Official', 'Board Decision', '1930-02-05');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2704907', 'Saint Patrick Rock', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Newport', 41.4986111, -71.325, ST_GeomFromText('POINT(41.4986111 -71.325)', 4326), NULL, NULL, '2011-09-14', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704919', 'Sakonnet Rocks', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Sakonnet Point', 41.4527778, -71.1958333, ST_GeomFromText('POINT(41.4527778 -71.1958333)', 4326), NULL, NULL, '2011-09-14', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704922', 'Sassafras Point', 'Cape', 'Rhode Island', 'RI', 'Washington', 'Kingston', 41.4027778, -71.5008333, ST_GeomFromText('POINT(41.4027778 -71.5008333)', 4326), NULL, NULL, '2011-09-14', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704939', 'Sassamore Rock', 'Pillar', 'Rhode Island', 'RI', 'Washington', 'Wickford', 41.5638889, -71.4388889, ST_GeomFromText('POINT(41.5638889 -71.4388889)', 4326), NULL, NULL, '2011-09-14', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704942', 'Seaweed Beach', 'Beach', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier OE S', 41.3708333, -71.4902778, ST_GeomFromText('POINT(41.3708333 -71.4902778)', 4326), NULL, NULL, '2011-09-14', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704943', 'Sedge Beds Island', 'Island', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.45, -71.4541667, ST_GeomFromText('POINT(41.45 -71.4541667)', 4326), NULL, NULL, '2011-09-14', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704946', 'The Sisters', 'Pillar', 'Rhode Island', 'RI', 'Newport', 'Prudence Island', 41.5222222, -71.3297222, ST_GeomFromText('POINT(41.5222222 -71.3297222)', 4326), NULL, NULL, '2011-09-14', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704950', 'Spring Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4166667, -71.4986111, ST_GeomFromText('POINT(41.4166667 -71.4986111)', 4326), NULL, NULL, '2011-09-14', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704953', 'Stone Water Fence Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.4277778, -71.4938889, ST_GeomFromText('POINT(41.4277778 -71.4938889)', 4326), NULL, NULL, '2011-09-14', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704961', 'Tallow Hill', 'Summit', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.426952, -71.4934388, ST_GeomFromText('POINT(41.426952 -71.4934388)', 4326), NULL, NULL, '2011-09-14', '2021-01-25', 'Official', 'Board Decision', '1930-02-05');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2704965', 'Twin Islands', 'Island', 'Rhode Island', 'RI', 'Washington', 'Carolina', 41.3763889, -71.6466667, ST_GeomFromText('POINT(41.3763889 -71.6466667)', 4326), NULL, NULL, '2011-09-14', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704966', 'Uptown Creek', 'Stream', 'Rhode Island', 'RI', 'Kent', 'Bristol', 41.7130556, -71.3652778, ST_GeomFromText('POINT(41.7130556 -71.3652778)', 4326), 41.7166667, -71.3661111, '2011-09-14', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704970', 'Wanton Cove', 'Bay', 'Rhode Island', 'RI', 'Newport', 'Tiverton', 41.6194444, -71.2083333, ST_GeomFromText('POINT(41.6194444 -71.2083333)', 4326), NULL, NULL, '2011-09-14', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2704984', 'Champlin Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.408424, -71.4912128, ST_GeomFromText('POINT(41.408424 -71.4912128)', 4326), NULL, NULL, '2011-09-14', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2705126', 'Tunk Brook', 'Stream', 'Rhode Island', 'RI', 'Providence', 'North Scituate', 41.7652778, -71.6111111, ST_GeomFromText('POINT(41.7652778 -71.6111111)', 4326), 41.7569444, -71.6166667, '2011-09-14', NULL, 'Official', 'Board Decision', '1930-02-05'),
  ('2705127', 'Wolcott Cove', 'Bay', 'Rhode Island', 'RI', 'Washington', 'Narragansett Pier', 41.3991667, -71.4938889, ST_GeomFromText('POINT(41.3991667 -71.4938889)', 4326), NULL, NULL, '2011-09-14', NULL, 'Official', 'Board Decision', '1930-02-05');


COMMIT;
SET unique_checks = 1;
SET autocommit = 1;

-- RI complete: 1,836 features loaded
