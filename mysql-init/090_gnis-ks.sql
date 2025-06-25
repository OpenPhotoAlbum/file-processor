USE kin;

-- GNIS Geographic Features for KS
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
  ('78956', 'Arkansas River', 'Stream', 'Arkansas', 'AR', 'Desha', 'Rosedale', 33.7751096, -91.0709427, ST_GeomFromText('POINT(33.7751096 -91.0709427)', 4326), 39.2583225, -106.3439141, '1980-04-30', '2019-08-13', 'Official', 'Board Decision', '1959-01-01'),
  ('183109', 'Cowpe Creek', 'Stream', 'Colorado', 'CO', 'Yuma', 'Hale Ponds', 39.6724937, -102.0329617, ST_GeomFromText('POINT(39.6724937 -102.0329617)', 4326), 39.7972145, -102.1185214, '1978-10-13', NULL, NULL, NULL, NULL),
  ('183110', 'Cherry Creek', 'Stream', 'Kansas', 'KS', 'Cheyenne', 'Saint Francis', 39.787215, -101.8062862, ST_GeomFromText('POINT(39.787215 -101.8062862)', 4326), 39.7672151, -102.0604633, '1978-10-13', NULL, NULL, NULL, NULL),
  ('195062', 'Hell Creek', 'Stream', 'Colorado', 'CO', 'Kit Carson', 'Kirk', 39.5102697, -102.5202001, ST_GeomFromText('POINT(39.5102697 -102.5202001)', 4326), 39.4088775, -103.1516045, '1978-10-13', NULL, NULL, NULL, NULL),
  ('195070', 'Little Beaver Creek', 'Stream', 'Colorado', 'CO', 'Kit Carson', 'Mount Sunflower', 39.0611148, -102.0560133, ST_GeomFromText('POINT(39.0611148 -102.0560133)', 4326), 39.3672187, -102.2112994, '1978-10-13', NULL, 'Official', 'Board Decision', '1972-01-01'),
  ('195240', 'South Fork White Woman Creek', 'Stream', 'Kansas', 'KS', 'Greeley', 'Colony Township West', 38.5688085, -102.015014, ST_GeomFromText('POINT(38.5688085 -102.015014)', 4326), 38.6231087, -102.2132587, '1978-10-13', '2018-03-23', 'Official', 'Board Decision', '1981-01-08'),
  ('196067', 'Beaty Creek', 'Stream', 'Kansas', 'KS', 'Stanton', 'Manter', 37.5286274, -101.9837872, ST_GeomFromText('POINT(37.5286274 -101.9837872)', 4326), 37.5947358, -102.1712936, '1978-10-13', NULL, NULL, NULL, NULL),
  ('196157', 'Bear Creek', 'Stream', 'Kansas', 'KS', 'Kearny', 'Lakin SE', 37.8450178, -101.3307265, ST_GeomFromText('POINT(37.8450178 -101.3307265)', 4326), 37.3680711, -102.9996503, '1978-10-13', '2008-02-19', NULL, NULL, NULL),
  ('203782', 'White Woman Creek', 'Stream', 'Colorado', 'CO', 'Cheyenne', 'Scott City', 38.4380866, -100.897573, ST_GeomFromText('POINT(38.4380866 -100.897573)', 4326), 38.7111196, -102.367132, '1978-10-13', '2018-03-23', 'Official', 'Board Decision', '1981-01-08'),
  ('203953', 'Willow Creek', 'Stream', 'Kansas', 'KS', 'Wallace', 'Weskan NW', 38.9263963, -101.8873969, ST_GeomFromText('POINT(38.9263963 -101.8873969)', 4326), 39.0130597, -102.1243485, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('469035', 'Otter Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Silverdale', 37.0225309, -96.8978114, ST_GeomFromText('POINT(37.0225309 -96.8978114)', 4326), 37.0255868, -96.8391983, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469038', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Arkansas City', 37.0522513, -97.0614273, ST_GeomFromText('POINT(37.0522513 -97.0614273)', 4326), 37.0461111, -97.1038889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469046', 'Lake Louise', 'Reservoir', 'Kansas', 'KS', 'Cowley', 'Arkansas City', 37.0789483, -97.0087978, ST_GeomFromText('POINT(37.0789483 -97.0087978)', 4326), NULL, NULL, '1978-10-13', '2018-09-28', NULL, NULL, NULL),
  ('469064', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Cedar Vale East', 37.0419873, -96.4272277, ST_GeomFromText('POINT(37.0419873 -96.4272277)', 4326), 37.0486452, -96.6583556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469065', 'Donahue Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Dexter SW', 37.0214254, -96.6069628, ST_GeomFromText('POINT(37.0214254 -96.6069628)', 4326), 37.0655895, -96.6505774, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469067', 'Beaver Creek', 'Stream', 'Oklahoma', 'OK', 'Kay', 'Kaw City', 36.84989, -96.76114, ST_GeomFromText('POINT(36.84989 -96.76114)', 4326), 37.1205, -96.64973, '1978-10-13', '2010-11-23', NULL, NULL, NULL),
  ('469068', 'Spring Creek', 'Stream', 'Oklahoma', 'OK', 'Osage', 'Grainola', 36.9736457, -96.7025254, ST_GeomFromText('POINT(36.9736457 -96.7025254)', 4326), 37.077254, -96.7089151, '1978-10-13', '2010-03-24', NULL, NULL, NULL),
  ('469070', 'Little Crabb Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Dexter', 37.1325299, -96.7255836, ST_GeomFromText('POINT(37.1325299 -96.7255836)', 4326), 37.0839202, -96.7208605, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469072', 'Panther Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Maple City', 37.1036409, -96.7914196, ST_GeomFromText('POINT(37.1036409 -96.7914196)', 4326), 37.0816667, -96.7502778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469074', 'Silver Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Maple City', 37.0622525, -96.867255, ST_GeomFromText('POINT(37.0622525 -96.867255)', 4326), 37.3708574, -96.711138, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('469075', 'Shellrock Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Maple City', 37.0100318, -96.8114195, ST_GeomFromText('POINT(37.0100318 -96.8114195)', 4326), 37.0702778, -96.7519444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469078', 'Wildcat Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Eaton', 37.1322513, -96.7766973, ST_GeomFromText('POINT(37.1322513 -96.7766973)', 4326), 37.0758639, -96.7514181, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469079', 'Mud Creek', 'Stream', 'Oklahoma', 'OK', 'Kay', 'Hardy', 36.94586, -96.81479, ST_GeomFromText('POINT(36.94586 -96.81479)', 4326), 37.0053094, -96.8478096, '1978-10-13', '2010-11-23', NULL, NULL, NULL),
  ('469080', 'Myers Creek', 'Stream', 'Oklahoma', 'OK', 'Kay', 'Hardy', 36.96532, -96.80781, ST_GeomFromText('POINT(36.96532 -96.80781)', 4326), 37.0294764, -96.7441949, '1978-10-13', '2010-11-23', NULL, NULL, NULL),
  ('469081', 'Little Beaver Creek', 'Stream', 'Oklahoma', 'OK', 'Kay', 'Kaw City', 36.84528, -96.80828, ST_GeomFromText('POINT(36.84528 -96.80828)', 4326), 37.0736417, -96.7630852, '1978-10-13', '2010-11-23', NULL, NULL, NULL),
  ('469089', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Cedar Vale East', 37.052542, -96.4386176, ST_GeomFromText('POINT(37.052542 -96.4386176)', 4326), 37.1077778, -96.4377778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469090', 'Osro Falls', 'Falls', 'Kansas', 'KS', 'Chautauqua', 'Cedar Vale East', 37.0561527, -96.4438958, ST_GeomFromText('POINT(37.0561527 -96.4438958)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469092', 'Shanghai Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Cedar Vale East', 37.1033759, -96.3933371, ST_GeomFromText('POINT(37.1033759 -96.3933371)', 4326), 37.1658755, -96.3572241, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469094', 'Spring Branch', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Cloverdale', 37.0758731, -96.4663975, ST_GeomFromText('POINT(37.0758731 -96.4663975)', 4326), 37.1511493, -96.4488969, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469095', 'West Branch Grant Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Peru', 37.1247826, -96.0699872, ST_GeomFromText('POINT(37.1247826 -96.0699872)', 4326), 37.2078162, -96.4050056, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('469096', 'East Branch Grant Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Peru', 37.1247826, -96.0699872, ST_GeomFromText('POINT(37.1247826 -96.0699872)', 4326), 37.1908734, -96.3833373, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469097', 'Grant Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Elgin', 37.0375458, -96.3741684, ST_GeomFromText('POINT(37.0375458 -96.3741684)', 4326), 37.1219859, -96.4030602, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469101', 'Bear Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Cedar Vale West', 37.0294826, -96.5444584, ST_GeomFromText('POINT(37.0294826 -96.5444584)', 4326), 37.0747222, -96.5625, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469102', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Cedar Vale West', 37.0278145, -96.5947397, ST_GeomFromText('POINT(37.0278145 -96.5947397)', 4326), 37.0788889, -96.6227778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469103', 'Dog Run', 'Stream', 'Kansas', 'KS', 'Cowley', 'Cedar Vale West', 37.0247592, -96.5866836, ST_GeomFromText('POINT(37.0247592 -96.5866836)', 4326), 36.9911492, -96.584739, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469104', 'Whartenby Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Cedar Vale West', 37.0305934, -96.5580705, ST_GeomFromText('POINT(37.0305934 -96.5580705)', 4326), 36.9861499, -96.5683491, '1978-10-13', NULL, 'Official', 'Board Decision', '1963-01-01'),
  ('469105', 'Acker Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Cedar Vale West', 37.025872, -96.5322352, ST_GeomFromText('POINT(37.025872 -96.5322352)', 4326), 36.967587, -96.544762, '1978-10-13', '2010-11-23', 'Official', 'Board Decision', '1963-01-01'),
  ('469106', 'Rush Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Cedar Vale West', 37.01508, -96.53933, ST_GeomFromText('POINT(37.01508 -96.53933)', 4326), 36.995, -96.5044, '1978-10-13', '2010-11-23', NULL, NULL, NULL),
  ('469107', 'Branson Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Cedar Vale West', 37.0183695, -96.6197414, ST_GeomFromText('POINT(37.0183695 -96.6197414)', 4326), 36.980037, -96.6269645, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469110', 'North Cedar Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Dexter NE', 37.1075363, -96.5297356, ST_GeomFromText('POINT(37.1075363 -96.5297356)', 4326), 37.1636438, -96.5944631, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('469111', 'Cedar Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Cedar Vale East', 37.0755954, -96.4663975, ST_GeomFromText('POINT(37.0755954 -96.4663975)', 4326), 37.1519769, -96.6155757, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469115', 'South Cedar Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Dexter SW', 37.1083679, -96.5864065, ST_GeomFromText('POINT(37.1083679 -96.5864065)', 4326), 37.1105886, -96.6405771, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469120', 'Sycamore Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Elgin', 37.0236585, -96.3519444, ST_GeomFromText('POINT(37.0236585 -96.3519444)', 4326), 37.1419882, -96.341945, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469121', 'West Cedar Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Elgin', 37.0300512, -96.2744388, ST_GeomFromText('POINT(37.0300512 -96.2744388)', 4326), 37.0719444, -96.3030556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469122', 'Buzzard Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Elgin', 37.0244916, -96.3555558, ST_GeomFromText('POINT(37.0244916 -96.3555558)', 4326), 36.9908814, -96.3638897, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469125', 'Cedar Creek', 'Stream', 'Oklahoma', 'OK', 'Osage', 'Whippoorwill', 36.9917216, -96.2369363, ST_GeomFromText('POINT(36.9917216 -96.2369363)', 4326), 37.1219916, -96.286941, '1978-10-13', '2010-11-23', NULL, NULL, NULL),
  ('469126', 'Little Cedar Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Elgin', 37.0175523, -96.2622155, ST_GeomFromText('POINT(37.0175523 -96.2622155)', 4326), 37.0922747, -96.2127698, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469127', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Elgin', 37.1506024, -96.2747182, ST_GeomFromText('POINT(37.1506024 -96.2747182)', 4326), 37.1228245, -96.2969417, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469129', 'Possum Trot Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Cedar Vale East', 37.02663, -96.41411, ST_GeomFromText('POINT(37.02663 -96.41411)', 4326), 36.990899, -96.472578, '1978-10-13', '2010-11-23', NULL, NULL, NULL),
  ('469133', 'Otter Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Chautauqua', 37.0320022, -96.1663779, ST_GeomFromText('POINT(37.0320022 -96.1663779)', 4326), 37.0438889, -96.155, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('469140', 'Niotaze Lake', 'Lake', 'Kansas', 'KS', 'Chautauqua', 'Peru', 37.0872866, -96.0305403, ST_GeomFromText('POINT(37.0872866 -96.0305403)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469141', 'Davis Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Peru', 37.07555, -96.01622, ST_GeomFromText('POINT(37.07555 -96.01622)', 4326), 37.03293, -96.06113, '1978-10-13', '2011-10-20', NULL, NULL, NULL),
  ('469143', 'Lake Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Peru', 37.0459024, -95.971093, ST_GeomFromText('POINT(37.0459024 -95.971093)', 4326), 37.0411765, -96.0427617, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469144', 'Birch Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Peru', 37.0511795, -95.9830378, ST_GeomFromText('POINT(37.0511795 -95.9830378)', 4326), 37.0347875, -96.0483174, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469152', 'Deer Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Sedan', 37.1206086, -96.1894361, ST_GeomFromText('POINT(37.1206086 -96.1894361)', 4326), 37.1978255, -96.2272165, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469155', 'Wolf Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Sedan', 37.1089446, -96.1536011, ST_GeomFromText('POINT(37.1089446 -96.1536011)', 4326), 37.1794958, -96.1788812, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469162', 'Coon Creek', 'Stream', 'Oklahoma', 'OK', 'Osage', 'Whippoorwill', 36.98348, -96.23021, ST_GeomFromText('POINT(36.98348 -96.23021)', 4326), 37.03707, -96.19232, '1978-10-13', '2010-11-23', NULL, NULL, NULL),
  ('469163', 'Turkey Creek', 'Stream', 'Oklahoma', 'OK', 'Osage', 'Whippoorwill', 36.9328434, -96.1349885, ST_GeomFromText('POINT(36.9328434 -96.1349885)', 4326), 37.0478347, -96.1702673, '1979-12-18', NULL, NULL, NULL, NULL),
  ('469164', 'Middle Caney Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Peru', 37.1078399, -96.0538751, ST_GeomFromText('POINT(37.1078399 -96.0538751)', 4326), 37.306981, -96.3666698, '1978-10-13', NULL, 'Official', 'Board Decision', '1963-01-01'),
  ('469168', 'Mallard Pond', 'Lake', 'Kansas', 'KS', 'Labette', 'Valeda', 37.0601419, -95.4527108, ST_GeomFromText('POINT(37.0601419 -95.4527108)', 4326), NULL, NULL, '1978-10-13', '2018-07-05', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('469172', 'Richland Creek', 'Stream', 'Kansas', 'KS', 'Labette', 'Valeda', 37.1234064, -95.4646981, ST_GeomFromText('POINT(37.1234064 -95.4646981)', 4326), 37.1511801, -95.3263601, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469173', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Labette', 'Valeda', 37.1209065, -95.4641426, ST_GeomFromText('POINT(37.1209065 -95.4641426)', 4326), 37.1061827, -95.3588607, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469185', 'Snow Creek', 'Stream', 'Oklahoma', 'OK', 'Nowata', 'South Coffeyville', 36.9423044, -95.5791437, ST_GeomFromText('POINT(36.9423044 -95.5791437)', 4326), 37.03171, -95.34335, '1978-10-13', '2010-11-23', NULL, NULL, NULL),
  ('469186', 'Onion Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'South Coffeyville', 36.992025, -95.5885882, ST_GeomFromText('POINT(36.992025 -95.5885882)', 4326), 37.1761774, -95.9013725, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469187', 'Claymore Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Coffeyville East', 37.0559107, -95.5913664, ST_GeomFromText('POINT(37.0559107 -95.5913664)', 4326), 37.1509056, -95.5035886, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469193', 'Potato Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Coffeyville East', 37.1061859, -95.5944224, ST_GeomFromText('POINT(37.1061859 -95.5944224)', 4326), 37.198403, -95.5069224, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469194', 'Deer Creek', 'Stream', 'Kansas', 'KS', 'Labette', 'Coffeyville East', 37.0731321, -95.5069214, ST_GeomFromText('POINT(37.0731321 -95.5069214)', 4326), 37.0525741, -95.3610824, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469196', 'Pumpkin Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Coffeyville East', 37.0456335, -95.5849774, ST_GeomFromText('POINT(37.0456335 -95.5849774)', 4326), 37.2917307, -95.3944198, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469207', 'Allin Hill', 'Summit', 'Kansas', 'KS', 'Montgomery', 'Coffeyville West', 37.0350962, -95.7338826, ST_GeomFromText('POINT(37.0350962 -95.7338826)', 4326), NULL, NULL, '1978-10-13', '2021-01-01', NULL, NULL, NULL),
  ('469208', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Coffeyville West', 37.0428557, -95.7041451, ST_GeomFromText('POINT(37.0428557 -95.7041451)', 4326), 37.01, -95.7347222, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('469215', 'Big Hill', 'Cliff', 'Kansas', 'KS', 'Montgomery', 'Bartlett', 37.062847, -95.1377412, ST_GeomFromText('POINT(37.062847 -95.1377412)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469219', 'Sycamore Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Coffeyville West', 37.0298008, -95.6522001, ST_GeomFromText('POINT(37.0298008 -95.6522001)', 4326), 37.1038889, -95.6836111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469220', 'Biscuit Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Coffeyville West', 37.0509108, -95.7088674, ST_GeomFromText('POINT(37.0509108 -95.7088674)', 4326), 37.0980556, -95.69, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469221', 'Bluff Run', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Coffeyville West', 37.0736875, -95.73859, ST_GeomFromText('POINT(37.0736875 -95.73859)', 4326), 37.1125, -95.71, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469225', 'Meadow Brook Spring', 'Spring', 'Kansas', 'KS', 'Montgomery', 'Coffeyville West', 37.0822982, -95.6633117, ST_GeomFromText('POINT(37.0822982 -95.6633117)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469240', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Tyro', 37.0959081, -95.7652572, ST_GeomFromText('POINT(37.0959081 -95.7652572)', 4326), 37.0616667, -95.8188889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469244', 'Fawn Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Coffeyville West', 37.0797983, -95.7472012, ST_GeomFromText('POINT(37.0797983 -95.7472012)', 4326), 37.0028561, -95.7855345, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469245', 'Deadman Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Tyro', 37.0564661, -95.7238676, ST_GeomFromText('POINT(37.0564661 -95.7238676)', 4326), 37.0045228, -95.7822011, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469246', 'Cotton Creek', 'Stream', 'Oklahoma', 'OK', 'Washington', 'Copan', 36.940076, -95.9483147, ST_GeomFromText('POINT(36.940076 -95.9483147)', 4326), 37.0005556, -95.7944444, '1978-10-13', '2006-01-05', NULL, NULL, NULL),
  ('469247', 'North Fork Cotton Creek', 'Stream', 'Oklahoma', 'OK', 'Washington', 'Copan', 36.94083, -95.90278, ST_GeomFromText('POINT(36.94083 -95.90278)', 4326), 37.01, -95.86694, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('469250', 'Cotton Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Caney', 37.0739575, -95.9533157, ST_GeomFromText('POINT(37.0739575 -95.9533157)', 4326), 37.1172222, -95.8911111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469251', 'Havana Lake', 'Reservoir', 'Kansas', 'KS', 'Montgomery', 'Caney', 37.0852229, -95.9133498, ST_GeomFromText('POINT(37.0852229 -95.9133498)', 4326), NULL, NULL, '1978-10-13', '2024-10-31', NULL, NULL, NULL),
  ('469252', 'Round Mound', 'Summit', 'Kansas', 'KS', 'Montgomery', 'Caney', 37.1004306, -95.8935223, ST_GeomFromText('POINT(37.1004306 -95.8935223)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('469254', 'Coon Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Caney', 37.1134002, -95.9563723, ST_GeomFromText('POINT(37.1134002 -95.9563723)', 4326), 37.1625652, -95.9488734, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469255', 'Bee Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Caney', 37.0539577, -95.9702599, ST_GeomFromText('POINT(37.0539577 -95.9702599)', 4326), 37.2417272, -95.9919323, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469256', 'Illinois Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Caney', 37.1134002, -95.9566501, ST_GeomFromText('POINT(37.1134002 -95.9566501)', 4326), 37.2000645, -95.9233181, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469257', 'Coon Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Caney', 37.1422888, -95.9316503, ST_GeomFromText('POINT(37.1422888 -95.9316503)', 4326), 37.124236, -95.8794266, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469258', 'Cheyenne Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Caney', 37.0200708, -95.9541477, ST_GeomFromText('POINT(37.0200708 -95.9541477)', 4326), 37.1311804, -95.8702598, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469259', 'Hafer Run', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Caney', 37.0400713, -95.9194255, ST_GeomFromText('POINT(37.0400713 -95.9194255)', 4326), 37.0542415, -95.8158132, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469261', 'Mud Creek', 'Stream', 'Oklahoma', 'OK', 'Washington', 'Copan', 36.990906, -95.9416472, ST_GeomFromText('POINT(36.990906 -95.9416472)', 4326), 37.005911, -95.882664, '1978-10-13', '2010-11-23', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('469263', 'Possum Trot Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Peru', 37.1170047, -96.0763762, ST_GeomFromText('POINT(37.1170047 -96.0763762)', 4326), 37.1394997, -96.1416569, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469264', 'Harper Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Peru', 37.1231153, -96.0816543, ST_GeomFromText('POINT(37.1231153 -96.0816543)', 4326), 37.1795039, -96.0508214, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469267', 'Willow Creek', 'Stream', 'Kansas', 'KS', 'Cherokee', 'Neutral', 37.0370086, -94.7277268, ST_GeomFromText('POINT(37.0370086 -94.7277268)', 4326), 37.0792309, -94.8357872, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469268', 'Potato Creek', 'Stream', 'Oklahoma', 'OK', 'Ottawa', 'Miami NW', 36.9492371, -94.9930139, ST_GeomFromText('POINT(36.9492371 -94.9930139)', 4326), 37.0303458, -94.9746792, '1978-10-13', '2022-09-08', 'Official', 'Secretarial Order', '2022-09-08'),
  ('469276', 'Fourmile Creek', 'Stream', 'Oklahoma', 'OK', 'Ottawa', 'Miami NW', 36.9439593, -94.9805135, ST_GeomFromText('POINT(36.9439593 -94.9805135)', 4326), 37.06355, -94.87083, '1978-10-13', '2010-11-23', NULL, NULL, NULL),
  ('469280', 'Hubbell Lake', 'Lake', 'Kansas', 'KS', 'Cherokee', 'Chetopa', 37.0850595, -95.0435588, ST_GeomFromText('POINT(37.0850595 -95.0435588)', 4326), NULL, NULL, '1978-10-13', '2024-10-31', NULL, NULL, NULL),
  ('469282', 'Short Creek', 'Stream', 'Kansas', 'KS', 'Cherokee', 'Chetopa', 37.0281246, -95.0385704, ST_GeomFromText('POINT(37.0281246 -95.0385704)', 4326), 37.0625, -95.0611111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469283', 'Marvin Lake', 'Lake', 'Kansas', 'KS', 'Cherokee', 'Chetopa', 37.0417083, -95.0324264, ST_GeomFromText('POINT(37.0417083 -95.0324264)', 4326), NULL, NULL, '1978-10-13', '2024-10-31', NULL, NULL, NULL),
  ('469284', 'Boone Lake', 'Lake', 'Kansas', 'KS', 'Cherokee', 'Chetopa', 37.0403466, -95.0505156, ST_GeomFromText('POINT(37.0403466 -95.0505156)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469288', 'Big Candy Lake', 'Lake', 'Kansas', 'KS', 'Cherokee', 'Chetopa', 37.0261802, -95.0391259, ST_GeomFromText('POINT(37.0261802 -95.0391259)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('469289', 'Little Candy Lake', 'Lake', 'Kansas', 'KS', 'Cherokee', 'Chetopa', 37.0200693, -95.0405148, ST_GeomFromText('POINT(37.0200693 -95.0405148)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469291', 'Cherry Creek', 'Stream', 'Kansas', 'KS', 'Cherokee', 'Chetopa', 37.0792344, -95.0696837, ST_GeomFromText('POINT(37.0792344 -95.0696837)', 4326), 37.3150556, -94.8321835, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469292', 'Center Creek', 'Stream', 'Kansas', 'KS', 'Cherokee', 'Chetopa', 37.0984, -95.0444055, ST_GeomFromText('POINT(37.0984 -95.0444055)', 4326), 37.152563, -94.9255145, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469293', 'Fly Creek', 'Stream', 'Kansas', 'KS', 'Cherokee', 'Welch North', 36.993959, -95.0341253, ST_GeomFromText('POINT(36.993959 -95.0341253)', 4326), 37.1116416, -94.8475294, '1978-10-13', '2015-04-22', NULL, NULL, NULL),
  ('469294', 'Little Fly Creek', 'Stream', 'Kansas', 'KS', 'Cherokee', 'Chetopa', 37.0331242, -95.0194032, ST_GeomFromText('POINT(37.0331242 -95.0194032)', 4326), 37.0625664, -94.9396789, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469296', 'Little Caney River', 'Stream', 'Oklahoma', 'OK', 'Washington', 'Bartlesville North', 36.841164, -95.95974, ST_GeomFromText('POINT(36.841164 -95.95974)', 4326), 37.10742, -96.05334, '1978-10-13', '2011-04-29', 'Official', 'Board Decision', '1963-06-11'),
  ('469302', 'Deer Creek', 'Stream', 'Kansas', 'KS', 'Labette', 'Bartlett', 37.1039575, -95.1946882, ST_GeomFromText('POINT(37.1039575 -95.1946882)', 4326), 37.2306211, -95.3099715, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469304', 'Labette Creek', 'Stream', 'Kansas', 'KS', 'Labette', 'Chetopa', 37.04868, -95.0821834, ST_GeomFromText('POINT(37.04868 -95.0821834)', 4326), 37.476446, -95.4560904, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469305', 'Town Creek', 'Stream', 'Kansas', 'KS', 'Labette', 'Bartlett', 37.0209029, -95.06246, ST_GeomFromText('POINT(37.0209029 -95.06246)', 4326), 37.0367372, -95.1596859, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469307', 'Turkey Creek', 'Stream', 'Kansas', 'KS', 'Labette', 'Bartlett', 37.0847906, -95.1327415, ST_GeomFromText('POINT(37.0847906 -95.1327415)', 4326), 36.9845175, -95.2155209, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('469314', 'Elm Creek', 'Stream', 'Kansas', 'KS', 'Labette', 'Edna', 37.0997925, -95.2891359, ST_GeomFromText('POINT(37.0997925 -95.2891359)', 4326), 37.0338889, -95.3430556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469317', 'Hackberry Creek', 'Stream', 'Kansas', 'KS', 'Labette', 'Edna', 37.0992349, -95.1560758, ST_GeomFromText('POINT(37.0992349 -95.1560758)', 4326), 37.0636843, -95.3483044, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469319', 'Lake Creek', 'Stream', 'Kansas', 'KS', 'Labette', 'Bartlett', 37.0981245, -95.2038551, ST_GeomFromText('POINT(37.0981245 -95.2038551)', 4326), 36.986185, -95.2608004, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469329', 'Long Branch', 'Stream', 'Kansas', 'KS', 'Cherokee', 'Crestline', 37.2428344, -94.6677334, ST_GeomFromText('POINT(37.2428344 -94.6677334)', 4326), 37.286722, -94.7488477, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469330', 'Cow Creek', 'Stream', 'Kansas', 'KS', 'Cherokee', 'Crestline', 37.1992246, -94.6377311, ST_GeomFromText('POINT(37.1992246 -94.6377311)', 4326), 37.3875516, -94.7219046, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469332', 'Little Shawnee Creek', 'Stream', 'Kansas', 'KS', 'Cherokee', 'Crestline', 37.1795033, -94.6968985, ST_GeomFromText('POINT(37.1795033 -94.6968985)', 4326), 37.2903336, -94.7866264, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469335', 'Turkey Creek', 'Stream', 'Kansas', 'KS', 'Cherokee', 'Crestline', 37.1297823, -94.6266175, ST_GeomFromText('POINT(37.1297823 -94.6266175)', 4326), 37.01748, -94.38404, '1978-10-13', '2011-11-07', NULL, NULL, NULL),
  ('469336', 'Spring Branch', 'Stream', 'Kansas', 'KS', 'Cherokee', 'Joplin West', 37.09004, -94.62381, ST_GeomFromText('POINT(37.09004 -94.62381)', 4326), 37.0633333, -94.575, '1978-10-13', '2011-11-09', NULL, NULL, NULL),
  ('469337', 'Baxter Springs', 'Spring', 'Kansas', 'KS', 'Cherokee', 'Baxter Springs', 37.0245092, -94.7374486, ST_GeomFromText('POINT(37.0245092 -94.7374486)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469355', 'Shawnee Creek', 'Stream', 'Kansas', 'KS', 'Cherokee', 'Baxter Springs', 37.0917286, -94.6860616, ST_GeomFromText('POINT(37.0917286 -94.6860616)', 4326), 37.2622791, -94.7944037, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('469359', 'Short Creek', 'Stream', 'Kansas', 'KS', 'Cherokee', 'Baxter Springs', 37.09313, -94.68275, ST_GeomFromText('POINT(37.09313 -94.68275)', 4326), 37.0739499, -94.5382811, '1978-10-13', '2011-11-14', NULL, NULL, NULL),
  ('469362', 'Spring River', 'Stream', 'Oklahoma', 'OK', 'Ottawa', 'Miami SE', 36.7920142, -94.7527295, ST_GeomFromText('POINT(36.7920142 -94.7527295)', 4326), 36.9152, -93.7138, '1978-10-13', '2019-08-29', NULL, NULL, NULL),
  ('469363', 'Blue Mound', 'Summit', 'Kansas', 'KS', 'Cherokee', 'Neutral', 37.0042269, -94.8241101, ST_GeomFromText('POINT(37.0042269 -94.8241101)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('469367', 'Bitter Creek', 'Stream', 'Kansas', 'KS', 'Cherokee', 'Neutral', 37.0847851, -94.7596737, ST_GeomFromText('POINT(37.0847851 -94.7596737)', 4326), 37.0933333, -94.8388889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469372', 'Brush Creek', 'Stream', 'Kansas', 'KS', 'Cherokee', 'Baxter Springs', 37.0625633, -94.7282834, ST_GeomFromText('POINT(37.0625633 -94.7282834)', 4326), 37.2264477, -94.8263477, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469374', 'Tar Creek', 'Stream', 'Oklahoma', 'OK', 'Ottawa', 'Miami SE', 36.8528481, -94.858844, ST_GeomFromText('POINT(36.8528481 -94.858844)', 4326), 37.0678426, -94.8482872, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469380', 'Walker Mound', 'Summit', 'Kansas', 'KS', 'Montgomery', 'Bolton', 37.2102501, -95.7871945, ST_GeomFromText('POINT(37.2102501 -95.7871945)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('469382', 'Chetopa Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Bolton', 37.2497884, -95.8083155, ST_GeomFromText('POINT(37.2497884 -95.8083155)', 4326), 37.1911111, -95.8302778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469384', 'Timber Hill', 'Summit', 'Kansas', 'KS', 'Labette', 'Oswego', 37.2297784, -95.1002359, ST_GeomFromText('POINT(37.2297784 -95.1002359)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('469385', 'Bald Mound', 'Summit', 'Kansas', 'KS', 'Montgomery', 'Bolton', 37.2349216, -95.8659155, ST_GeomFromText('POINT(37.2349216 -95.8659155)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('469388', 'Berry Hill', 'Summit', 'Kansas', 'KS', 'Montgomery', 'Caney NW', 37.1332076, -95.8765555, ST_GeomFromText('POINT(37.1332076 -95.8765555)', 4326), NULL, NULL, '1978-10-13', '2021-01-01', NULL, NULL, NULL),
  ('469389', 'Coon Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Bolton', 37.2400645, -95.8730396, ST_GeomFromText('POINT(37.2400645 -95.8730396)', 4326), 37.1995108, -95.8691499, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469390', 'Elk Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Bolton', 37.232023, -95.785933, ST_GeomFromText('POINT(37.232023 -95.785933)', 4326), 37.179827, -95.81593, '1978-10-13', '2022-09-08', 'Official', 'Secretarial Order', '2022-09-08'),
  ('469391', 'Card Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Table Mound', 37.2570088, -95.8508168, ST_GeomFromText('POINT(37.2570088 -95.8508168)', 4326), 37.2064526, -95.9399853, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469392', 'Elk River', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Sycamore', 37.2567342, -95.6941465, ST_GeomFromText('POINT(37.2567342 -95.6941465)', 4326), 37.608635, -96.5250138, '1978-10-13', '2019-08-19', NULL, NULL, NULL),
  ('469396', 'Coal Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Independence', 37.1453508, -95.7263682, ST_GeomFromText('POINT(37.1453508 -95.7263682)', 4326), 37.1508333, -95.6630556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469413', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Independence', 37.212014, -95.6733127, ST_GeomFromText('POINT(37.212014 -95.6733127)', 4326), 37.1559058, -95.7391462, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469415', 'Bloody Run', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Independence', 37.2245133, -95.6627571, ST_GeomFromText('POINT(37.2245133 -95.6627571)', 4326), 37.2439567, -95.6224792, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469416', 'Mouse Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Independence', 37.2095141, -95.6652571, ST_GeomFromText('POINT(37.2095141 -95.6652571)', 4326), 37.2795105, -95.614146, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469417', 'Liberty Lakes', 'Lake', 'Kansas', 'KS', 'Montgomery', 'Liberty', 37.1445172, -95.6058117, ST_GeomFromText('POINT(37.1445172 -95.6058117)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('469420', 'Cotton Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Coffeyville East', 37.1231295, -95.617756, ST_GeomFromText('POINT(37.1231295 -95.617756)', 4326), 37.1792377, -95.6102564, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469425', 'Drum Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Independence', 37.1961813, -95.63109, ST_GeomFromText('POINT(37.1961813 -95.63109)', 4326), 37.4464477, -95.5024797, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469426', 'Mud Creek', 'Stream', 'Kansas', 'KS', 'Labette', 'Mound Valley', 37.167015, -95.4521981, ST_GeomFromText('POINT(37.167015 -95.4521981)', 4326), 37.2297222, -95.4427778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469432', 'Dixon Mound', 'Summit', 'Kansas', 'KS', 'Labette', 'Mound Valley', 37.2261716, -95.4183011, ST_GeomFromText('POINT(37.2261716 -95.4183011)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('469434', 'Wildcat Creek', 'Stream', 'Kansas', 'KS', 'Labette', 'Mound Valley', 37.2484, -95.4771996, ST_GeomFromText('POINT(37.2484 -95.4771996)', 4326), 37.2978418, -95.420254, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469435', 'Idle Hour Lake', 'Lake', 'Kansas', 'KS', 'Labette', 'Altamont', 37.1403465, -95.2877474, ST_GeomFromText('POINT(37.1403465 -95.2877474)', 4326), NULL, NULL, '1978-10-13', '2014-08-29', NULL, NULL, NULL),
  ('469444', 'Little Bachelor Creek', 'Stream', 'Kansas', 'KS', 'Labette', 'Parsons East', 37.2733964, -95.2455259, ST_GeomFromText('POINT(37.2733964 -95.2455259)', 4326), 37.2411761, -95.3049715, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469453', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Labette', 'Labette', 37.2064539, -95.1988567, ST_GeomFromText('POINT(37.2064539 -95.1988567)', 4326), 37.2320096, -95.2874708, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469461', 'Horseshoe Lake', 'Lake', 'Kansas', 'KS', 'Labette', 'Oswego', 37.1681204, -95.0882973, ST_GeomFromText('POINT(37.1681204 -95.0882973)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469470', 'Wolf Creek', 'Stream', 'Kansas', 'KS', 'Cherokee', 'Oswego', 37.1717311, -95.0652411, ST_GeomFromText('POINT(37.1717311 -95.0652411)', 4326), 37.1628414, -94.9877387, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('469471', 'Deer Creek', 'Stream', 'Kansas', 'KS', 'Cherokee', 'Oswego', 37.2014519, -95.0388521, ST_GeomFromText('POINT(37.2014519 -95.0388521)', 4326), 37.241172, -94.9832961, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469472', 'Lightning Creek', 'Stream', 'Kansas', 'KS', 'Cherokee', 'Oswego', 37.176731, -95.0688524, ST_GeomFromText('POINT(37.176731 -95.0688524)', 4326), 37.631713, -94.90358, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469473', 'Denny Branch', 'Stream', 'Kansas', 'KS', 'Cherokee', 'Hallowell', 37.176174, -94.9730164, ST_GeomFromText('POINT(37.176174 -94.9730164)', 4326), 37.1758333, -94.8808333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469493', 'Little Cherry Creek', 'Stream', 'Kansas', 'KS', 'Cherokee', 'Hallowell', 37.2183943, -94.942739, ST_GeomFromText('POINT(37.2183943 -94.942739)', 4326), 37.3131108, -94.8044051, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469497', 'Turkey Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Cloverdale', 37.1508695, -96.4905665, ST_GeomFromText('POINT(37.1508695 -96.4905665)', 4326), 37.2383333, -96.4127778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469498', 'Otter Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Cloverdale', 37.1555914, -96.4947334, ST_GeomFromText('POINT(37.1555914 -96.4947334)', 4326), 37.333918, -96.53557, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469499', 'Union Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Cloverdale', 37.1978124, -96.493067, ST_GeomFromText('POINT(37.1978124 -96.493067)', 4326), 37.2941973, -96.5244583, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469500', 'Hogback Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Cloverdale', 37.2369792, -96.4619541, ST_GeomFromText('POINT(37.2369792 -96.4619541)', 4326), 37.2717023, -96.4183401, '1978-10-13', '2022-09-08', 'Official', 'Secretarial Order', '2022-09-08'),
  ('469501', 'Pool Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Elgin NE', 37.1469917, -96.2663843, ST_GeomFromText('POINT(37.1469917 -96.2663843)', 4326), 37.1827778, -96.3552778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469503', 'Butcher Falls', 'Falls', 'Kansas', 'KS', 'Chautauqua', 'Elgin NE', 37.1472694, -96.2680511, ST_GeomFromText('POINT(37.1472694 -96.2680511)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('469506', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Elgin NE', 37.1672684, -96.2747185, ST_GeomFromText('POINT(37.1672684 -96.2747185)', 4326), 37.2930966, -96.2799975, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469507', 'Bakers Branch', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Elgin NE', 37.2022659, -96.2988873, ST_GeomFromText('POINT(37.2022659 -96.2988873)', 4326), 37.3375363, -96.3475017, '1984-07-01', NULL, NULL, NULL, NULL),
  ('469508', 'Sedan City Lake', 'Reservoir', 'Kansas', 'KS', 'Chautauqua', 'Sedan', 37.1729328, -96.2172364, ST_GeomFromText('POINT(37.1729328 -96.2172364)', 4326), NULL, NULL, '1978-10-13', '2018-07-05', NULL, NULL, NULL),
  ('469509', 'Coon Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Sedan', 37.2094947, -96.1777707, ST_GeomFromText('POINT(37.2094947 -96.1777707)', 4326), 37.1872222, -96.1883333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469510', 'Turkey Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Sedan', 37.2139392, -96.1763818, ST_GeomFromText('POINT(37.2139392 -96.1763818)', 4326), 37.2236111, -96.2402778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469513', 'Tanglewood Lake', 'Reservoir', 'Kansas', 'KS', 'Chautauqua', 'Sedan', 37.2312939, -96.1565904, ST_GeomFromText('POINT(37.2312939 -96.1565904)', 4326), NULL, NULL, '1978-10-13', '2024-10-31', NULL, NULL, NULL),
  ('469515', 'Possum Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Sedan', 37.1472699, -96.2577726, ST_GeomFromText('POINT(37.1472699 -96.2577726)', 4326), 37.1878246, -96.2469393, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469518', 'Fly Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Hale', 37.1528346, -96.1094338, ST_GeomFromText('POINT(37.1528346 -96.1094338)', 4326), 37.2269444, -96.0622222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469520', 'Deadman Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Hale', 37.1872838, -96.0122091, ST_GeomFromText('POINT(37.1872838 -96.0122091)', 4326), 37.2191667, -96.0469444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469522', 'Broker Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Hale', 37.2150531, -96.1308249, ST_GeomFromText('POINT(37.2150531 -96.1308249)', 4326), 37.2314453, -96.0674899, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('469524', 'Bachelor Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Sedan', 37.1967194, -96.1477694, ST_GeomFromText('POINT(37.1967194 -96.1477694)', 4326), 37.2681076, -96.1083247, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469525', 'Coffey Branch', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Hale', 37.2739464, -96.0116548, ST_GeomFromText('POINT(37.2739464 -96.0116548)', 4326), 37.2436668, -96.071657, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469527', 'Deer Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Caney NW', 37.1389563, -95.9124831, ST_GeomFromText('POINT(37.1389563 -95.9124831)', 4326), 37.1483333, -95.8791667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469529', 'Sorghum Hollow', 'Valley', 'Kansas', 'KS', 'Chautauqua', 'Caney NW', 37.1630838, -95.9787641, ST_GeomFromText('POINT(37.1630838 -95.9787641)', 4326), 37.1993768, -95.9467597, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('469530', 'Green Hollow', 'Valley', 'Kansas', 'KS', 'Chautauqua', 'Caney NW', 37.2114987, -95.9719293, ST_GeomFromText('POINT(37.2114987 -95.9719293)', 4326), 37.2325567, -95.9598004, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('469531', 'California Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Caney NW', 37.1725633, -95.9899858, ST_GeomFromText('POINT(37.1725633 -95.9899858)', 4326), 37.2247806, -96.0405445, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469532', 'Bee Creek Lake', 'Reservoir', 'Kansas', 'KS', 'Chautauqua', 'Caney NW', 37.19244, -95.98682, ST_GeomFromText('POINT(37.19244 -95.98682)', 4326), NULL, NULL, '1978-10-13', '2024-10-31', NULL, NULL, NULL),
  ('469539', 'Cup and Saucer Hills', 'Range', 'Kansas', 'KS', 'Cowley', 'Winfield', 37.219965, -96.9615953, ST_GeomFromText('POINT(37.219965 -96.9615953)', 4326), NULL, NULL, '1978-10-13', '2021-08-16', NULL, NULL, NULL),
  ('469541', 'Big Badger Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Winfield', 37.1836386, -96.9547577, ST_GeomFromText('POINT(37.1836386 -96.9547577)', 4326), 37.2047222, -96.9272222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469546', 'Redd Valley', 'Valley', 'Kansas', 'KS', 'Cowley', 'Winfield', 37.1588086, -96.9245777, ST_GeomFromText('POINT(37.1588086 -96.9245777)', 4326), 37.1606353, -96.9131186, '1978-10-13', '2017-08-25', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('469547', 'Baugh Canyon', 'Valley', 'Kansas', 'KS', 'Cowley', 'Winfield', 37.1398247, -96.914621, ST_GeomFromText('POINT(37.1398247 -96.914621)', 4326), 37.1522436, -96.9016415, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('469549', 'Posey Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Winfield', 37.1597501, -96.9525354, ST_GeomFromText('POINT(37.1597501 -96.9525354)', 4326), 37.2122488, -97.0311484, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469551', 'Timber Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Hackney', 37.244193, -97.0030921, ST_GeomFromText('POINT(37.244193 -97.0030921)', 4326), 37.5061326, -96.6639112, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469554', 'West Badger Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Winfield', 37.2047493, -96.9275348, ST_GeomFromText('POINT(37.2047493 -96.9275348)', 4326), 37.2772478, -96.8772559, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469555', 'Black Crook Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Winfield', 37.2203046, -96.9803138, ST_GeomFromText('POINT(37.2203046 -96.9803138)', 4326), 37.267248, -96.9280904, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469573', 'East Badger Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Winfield', 37.2050271, -96.9278126, ST_GeomFromText('POINT(37.2050271 -96.9278126)', 4326), 37.2761367, -96.8650334, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469574', 'Deer Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Eaton', 37.1641951, -96.7533637, ST_GeomFromText('POINT(37.1641951 -96.7533637)', 4326), 37.0666974, -96.772252, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469575', 'Horse Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Eaton', 37.1333623, -96.7941978, ST_GeomFromText('POINT(37.1333623 -96.7941978)', 4326), 37.1788889, -96.7966667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469576', 'Snake Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Burden', 37.2216936, -96.8300326, ST_GeomFromText('POINT(37.2216936 -96.8300326)', 4326), 37.302525, -96.8216989, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469577', 'Pebble Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Eaton', 37.1847499, -96.8450328, ST_GeomFromText('POINT(37.1847499 -96.8450328)', 4326), 37.2333333, -96.7719444, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('469578', 'Harper Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Eaton', 37.1789167, -96.8461439, ST_GeomFromText('POINT(37.1789167 -96.8461439)', 4326), 37.1952778, -96.7941667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469579', 'Turkey Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Dexter', 37.2003063, -96.7144724, ST_GeomFromText('POINT(37.2003063 -96.7144724)', 4326), 37.2578039, -96.7516978, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469582', 'Plum Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Dexter', 37.2247499, -96.7219733, ST_GeomFromText('POINT(37.2247499 -96.7219733)', 4326), 37.1975312, -96.6136315, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469584', 'Bullington Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Dexter', 37.2333611, -96.7083612, ST_GeomFromText('POINT(37.2333611 -96.7083612)', 4326), 37.2616961, -96.6141875, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469590', 'Hogback Hill', 'Summit', 'Kansas', 'KS', 'Cowley', 'Dexter NE', 37.1874065, -96.56909, ST_GeomFromText('POINT(37.1874065 -96.56909)', 4326), NULL, NULL, '1978-10-13', '2021-01-01', NULL, NULL, NULL),
  ('469591', 'Shafer Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Dexter NE', 37.1903109, -96.5497377, ST_GeomFromText('POINT(37.1903109 -96.5497377)', 4326), 37.1883333, -96.6033333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469592', 'Jim Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Dexter NE', 37.205588, -96.5611276, ST_GeomFromText('POINT(37.205588 -96.5611276)', 4326), 37.2436111, -96.5991667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469593', 'Crabb Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Eaton', 37.1333624, -96.7833642, ST_GeomFromText('POINT(37.1333624 -96.7833642)', 4326), 37.1878093, -96.6136314, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469597', 'East Cow Creek', 'Stream', 'Kansas', 'KS', 'Crawford', 'Kirkwood', 37.3578305, -94.684125, ST_GeomFromText('POINT(37.3578305 -94.684125)', 4326), 37.4847706, -94.6541264, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469607', 'Taylor Branch', 'Stream', 'Kansas', 'KS', 'Cherokee', 'Kirkwood', 37.2875551, -94.6702344, ST_GeomFromText('POINT(37.2875551 -94.6702344)', 4326), 37.3807, -94.60346, '1978-10-13', '2012-03-13', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('469618', 'Brush Creek', 'Stream', 'Kansas', 'KS', 'Cherokee', 'Kirkwood', 37.2969992, -94.6802349, ST_GeomFromText('POINT(37.2969992 -94.6802349)', 4326), 37.391719, -94.8021845, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469619', 'Cherokee Tank', 'Reservoir', 'Kansas', 'KS', 'Cherokee', 'Cherokee', 37.3214441, -94.8207946, ST_GeomFromText('POINT(37.3214441 -94.8207946)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469623', 'Wolf Creek', 'Stream', 'Kansas', 'KS', 'Crawford', 'West Mineral', 37.3558885, -94.9110752, ST_GeomFromText('POINT(37.3558885 -94.9110752)', 4326), 37.361165, -94.8332958, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469624', 'Bell Mound', 'Summit', 'Kansas', 'KS', 'Cherokee', 'West Mineral', 37.2948126, -94.9491227, ST_GeomFromText('POINT(37.2948126 -94.9491227)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('469629', 'Plum Creek', 'Stream', 'Kansas', 'KS', 'Cherokee', 'West Mineral', 37.3072807, -94.9957982, ST_GeomFromText('POINT(37.3072807 -94.9957982)', 4326), 37.3019444, -94.9308333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469630', 'Limestone Creek', 'Stream', 'Kansas', 'KS', 'Crawford', 'West Mineral', 37.3497784, -94.9585762, ST_GeomFromText('POINT(37.3497784 -94.9585762)', 4326), 37.435051, -94.8282974, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469631', 'Mulberry Creek', 'Stream', 'Kansas', 'KS', 'Cherokee', 'West Mineral', 37.3339458, -94.9657982, ST_GeomFromText('POINT(37.3339458 -94.9657982)', 4326), 37.4461639, -94.9858018, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469632', 'Service Lake', 'Reservoir', 'Kansas', 'KS', 'Labette', 'McCune', 37.2992269, -95.0996895, ST_GeomFromText('POINT(37.2992269 -95.0996895)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469637', 'Litup Creek', 'Stream', 'Kansas', 'KS', 'Labette', 'McCune', 37.2836719, -95.103578, ST_GeomFromText('POINT(37.2836719 -95.103578)', 4326), 37.355, -95.0291667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469640', 'Hickory Creek', 'Stream', 'Kansas', 'KS', 'Labette', 'McCune', 37.3381143, -95.1046907, ST_GeomFromText('POINT(37.3381143 -95.1046907)', 4326), 37.5392161, -94.9730256, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('469641', 'Stink Branch', 'Stream', 'Kansas', 'KS', 'Cherokee', 'McCune', 37.2592277, -95.0416313, ST_GeomFromText('POINT(37.2592277 -95.0416313)', 4326), 37.2797813, -94.969408, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469649', 'Little Bear Mound', 'Summit', 'Kansas', 'KS', 'Wilson', 'Neodesha', 37.4381302, -95.6984908, ST_GeomFromText('POINT(37.4381302 -95.6984908)', 4326), NULL, NULL, '1978-10-13', '2024-02-15', NULL, NULL, NULL),
  ('469669', 'Chetopa Creek', 'Stream', 'Kansas', 'KS', 'Wilson', 'Neodesha', 37.437281, -95.669147, ST_GeomFromText('POINT(37.437281 -95.669147)', 4326), 37.5839409, -95.514703, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469670', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Wilson', 'Neodesha', 37.3892278, -95.6597023, ST_GeomFromText('POINT(37.3892278 -95.6597023)', 4326), 37.5139443, -95.4527575, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469671', 'Little Chetopa Creek', 'Stream', 'Kansas', 'KS', 'Wilson', 'Morehead', 37.4825569, -95.582758, ST_GeomFromText('POINT(37.4825569 -95.582758)', 4326), 37.5219997, -95.486369, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469675', 'Washington Branch', 'Stream', 'Kansas', 'KS', 'Wilson', 'Neodesha', 37.4047825, -95.6647024, ST_GeomFromText('POINT(37.4047825 -95.6647024)', 4326), 37.4642244, -95.5994247, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469680', 'Big Hill Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Coffeyville East', 37.0617438, -95.6096999, ST_GeomFromText('POINT(37.0617438 -95.6096999)', 4326), 37.4667242, -95.460257, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469683', 'Ogeese Creek', 'Stream', 'Kansas', 'KS', 'Neosho', 'Erie', 37.5147754, -95.2302545, ST_GeomFromText('POINT(37.5147754 -95.2302545)', 4326), 37.4911666, -95.3555338, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469691', 'Tolen Creek', 'Stream', 'Kansas', 'KS', 'Labette', 'Parsons West', 37.3492268, -95.2519172, ST_GeomFromText('POINT(37.3492268 -95.2519172)', 4326), 37.4114462, -95.2219182, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469692', 'Lake Parsons', 'Reservoir', 'Kansas', 'KS', 'Neosho', 'Galesburg', 37.4105154, -95.3426124, ST_GeomFromText('POINT(37.4105154 -95.3426124)', 4326), NULL, NULL, '1978-10-13', '2018-07-05', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('469695', 'Bachelor Creek', 'Stream', 'Kansas', 'KS', 'Neosho', 'South Mound', 37.5008868, -95.2105316, ST_GeomFromText('POINT(37.5008868 -95.2105316)', 4326), 37.4470003, -95.2296972, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469701', 'Murphy Creek', 'Stream', 'Kansas', 'KS', 'Neosho', 'South Mound', 37.4733869, -95.1302508, ST_GeomFromText('POINT(37.4733869 -95.1302508)', 4326), 37.5200509, -95.0580277, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469709', 'Little Halfmoon Lake', 'Lake', 'Kansas', 'KS', 'Neosho', 'McCune NE', 37.3923128, -95.1171127, ST_GeomFromText('POINT(37.3923128 -95.1171127)', 4326), NULL, NULL, '1978-10-13', '2018-07-05', NULL, NULL, NULL),
  ('469710', 'Halfmoon Lake', 'Lake', 'Kansas', 'KS', 'Neosho', 'McCune NE', 37.3906123, -95.1113591, ST_GeomFromText('POINT(37.3906123 -95.1113591)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469719', 'Grindstone Creek', 'Stream', 'Kansas', 'KS', 'Crawford', 'Grindstone Creek', 37.4253308, -94.9385777, ST_GeomFromText('POINT(37.4253308 -94.9385777)', 4326), 37.4869444, -94.9805556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469720', 'Elm Creek', 'Stream', 'Kansas', 'KS', 'Crawford', 'Grindstone Creek', 37.4667178, -94.9210783, ST_GeomFromText('POINT(37.4667178 -94.9210783)', 4326), 37.5447712, -94.9571918, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469729', 'Thunderbolt Creek', 'Stream', 'Kansas', 'KS', 'Crawford', 'Grindstone Creek', 37.41422, -94.9307995, ST_GeomFromText('POINT(37.41422 -94.9307995)', 4326), 37.5158819, -94.8560775, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469746', 'First Cow Creek', 'Stream', 'Kansas', 'KS', 'Crawford', 'Pittsburg', 37.3875516, -94.7221823, ST_GeomFromText('POINT(37.3875516 -94.7221823)', 4326), 37.5644909, -94.7224626, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469756', 'Second Cow Creek', 'Stream', 'Kansas', 'KS', 'Crawford', 'Pittsburg', 37.3875516, -94.7221823, ST_GeomFromText('POINT(37.3875516 -94.7221823)', 4326), 37.6053243, -94.8502447, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469791', 'Tackett Mound', 'Summit', 'Kansas', 'KS', 'Labette', 'Parsons West', 37.2695276, -95.3704365, ST_GeomFromText('POINT(37.2695276 -95.3704365)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('469793', 'Bachelor Creek', 'Stream', 'Kansas', 'KS', 'Labette', 'Parsons East', 37.2803403, -95.22497, ST_GeomFromText('POINT(37.2803403 -95.22497)', 4326), 37.2972861, -95.4044202, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469794', 'Little Labette Creek', 'Stream', 'Kansas', 'KS', 'Neosho', 'Parsons East', 37.3106171, -95.2388601, ST_GeomFromText('POINT(37.3106171 -95.2388601)', 4326), 37.4539467, -95.4366454, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469796', 'Twin Mounds', 'Summit', 'Kansas', 'KS', 'Labette', 'Dennis', 37.3587079, -95.4636809, ST_GeomFromText('POINT(37.3587079 -95.4636809)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('469797', 'Bender Mounds', 'Summit', 'Kansas', 'KS', 'Labette', 'Dennis', 37.3410335, -95.4767007, ST_GeomFromText('POINT(37.3410335 -95.4767007)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('469802', 'Big Hill Lake', 'Reservoir', 'Kansas', 'KS', 'Labette', 'Dennis', 37.2920695, -95.4585709, ST_GeomFromText('POINT(37.2920695 -95.4585709)', 4326), NULL, NULL, '1978-10-13', '2019-09-24', NULL, NULL, NULL),
  ('469808', 'Cherry Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Cherryvale', 37.2836769, -95.5777568, ST_GeomFromText('POINT(37.2836769 -95.5777568)', 4326), 37.3095085, -95.4691445, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469814', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Cherryvale', 37.3570069, -95.530257, ST_GeomFromText('POINT(37.3570069 -95.530257)', 4326), 37.3786723, -95.4635895, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469819', 'Salt Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Sycamore', 37.3736729, -95.6680357, ST_GeomFromText('POINT(37.3736729 -95.6680357)', 4326), 37.3914499, -95.5794242, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469821', 'Prior Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Sycamore', 37.3450632, -95.6844246, ST_GeomFromText('POINT(37.3450632 -95.6844246)', 4326), 37.3600624, -95.6208131, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469827', 'Irish Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Sycamore', 37.2858993, -95.6638686, ST_GeomFromText('POINT(37.2858993 -95.6638686)', 4326), 37.3072222, -95.6355556, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('469828', 'Choteau Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Cherryvale', 37.2858993, -95.6638686, ST_GeomFromText('POINT(37.2858993 -95.6638686)', 4326), 37.3570069, -95.5994241, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469832', 'Rebel Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Sycamore', 37.2606229, -95.6905354, ST_GeomFromText('POINT(37.2606229 -95.6905354)', 4326), 37.2708333, -95.6558333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469841', 'Racket Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Table Mound', 37.2822875, -95.7810923, ST_GeomFromText('POINT(37.2822875 -95.7810923)', 4326), 37.3497222, -95.7852778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469842', 'Gordon Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Table Mound', 37.2839538, -95.7910926, ST_GeomFromText('POINT(37.2839538 -95.7910926)', 4326), 37.3088889, -95.8422222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469844', 'Table Mound', 'Summit', 'Kansas', 'KS', 'Montgomery', 'Table Mound', 37.2677682, -95.7697477, ST_GeomFromText('POINT(37.2677682 -95.7697477)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('469846', 'Sycamore Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Sycamore', 37.2792333, -95.7449803, ST_GeomFromText('POINT(37.2792333 -95.7449803)', 4326), 37.4200573, -95.795259, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469847', 'Elm Branch', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Lafontaine', 37.3658903, -95.8705384, ST_GeomFromText('POINT(37.3658903 -95.8705384)', 4326), 37.4253339, -95.8127592, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469848', 'Mulberry Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Lafontaine', 37.3486692, -95.8688719, ST_GeomFromText('POINT(37.3486692 -95.8688719)', 4326), 37.399779, -95.8285929, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469853', 'Duck Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Elk City', 37.2936709, -95.9163738, ST_GeomFromText('POINT(37.2936709 -95.9163738)', 4326), 37.4033858, -95.9172053, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469854', 'Little Duck Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Buxton', 37.32367, -95.8883171, ST_GeomFromText('POINT(37.32367 -95.8883171)', 4326), 37.3789431, -95.915539, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('469855', 'Bachelor Creek', 'Stream', 'Kansas', 'KS', 'Elk', 'Elk City', 37.3125565, -95.9699859, ST_GeomFromText('POINT(37.3125565 -95.9699859)', 4326), 37.3867191, -95.9441505, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469859', 'Bloody Run', 'Stream', 'Kansas', 'KS', 'Elk', 'Oak Valley', 37.3353308, -96.0116532, ST_GeomFromText('POINT(37.3353308 -96.0116532)', 4326), 37.3427778, -96.0705556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469860', 'Pan Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Oak Valley', 37.2964408, -96.0811009, ST_GeomFromText('POINT(37.2964408 -96.0811009)', 4326), 37.3436111, -96.1027778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469863', 'Little Hickory Creek', 'Stream', 'Kansas', 'KS', 'Elk', 'Oak Valley', 37.3583846, -96.0130416, ST_GeomFromText('POINT(37.3583846 -96.0130416)', 4326), 37.3800513, -95.9777623, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469864', 'Hickory Creek', 'Stream', 'Kansas', 'KS', 'Elk', 'Oak Valley', 37.3539402, -96.0194308, ST_GeomFromText('POINT(37.3539402 -96.0194308)', 4326), 37.4383802, -95.9830388, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469866', 'Salt Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Elk City', 37.2661726, -95.9202633, ST_GeomFromText('POINT(37.2661726 -95.9202633)', 4326), 37.2956068, -96.0933237, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469867', 'South Salt Creek', 'Stream', 'Kansas', 'KS', 'Elk', 'Elk Falls', 37.2956068, -96.0933237, ST_GeomFromText('POINT(37.2956068 -96.0933237)', 4326), 37.3153233, -96.174715, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469870', 'Clear Creek', 'Stream', 'Kansas', 'KS', 'Elk', 'Elk Falls', 37.358378, -96.1447133, ST_GeomFromText('POINT(37.358378 -96.1447133)', 4326), 37.3091667, -96.2155556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469871', 'North Salt Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Oak Valley', 37.2961622, -96.094157, ST_GeomFromText('POINT(37.2961622 -96.094157)', 4326), 37.3142125, -96.1697148, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469876', 'Santa Fe Lake', 'Reservoir', 'Kansas', 'KS', 'Elk', 'Moline', 37.3655431, -96.3301495, ST_GeomFromText('POINT(37.3655431 -96.3301495)', 4326), NULL, NULL, '1978-10-13', '2018-07-05', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('469880', 'Wildcat Creek', 'Stream', 'Kansas', 'KS', 'Elk', 'Elk Falls', 37.3705982, -96.1722142, ST_GeomFromText('POINT(37.3705982 -96.1722142)', 4326), 37.3553122, -96.3758369, '1978-10-13', NULL, 'Official', 'Board Decision', '1963-01-01'),
  ('469881', 'North Fork Wildcat Creek', 'Stream', 'Kansas', 'KS', 'Elk', 'Moline', 37.367815, -96.2952759, ST_GeomFromText('POINT(37.367815 -96.2952759)', 4326), 37.3814223, -96.3758368, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469882', 'South Fork Wildcat Creek', 'Stream', 'Kansas', 'KS', 'Elk', 'Moline', 37.3561503, -96.2574957, ST_GeomFromText('POINT(37.3561503 -96.2574957)', 4326), 37.3247222, -96.2930556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469887', 'Wolf Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Grenola', 37.2589229, -96.4638987, ST_GeomFromText('POINT(37.2589229 -96.4638987)', 4326), 37.3741667, -96.3838889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469888', 'Corum Creek', 'Stream', 'Kansas', 'KS', 'Elk', 'Grenola', 37.3353097, -96.4525086, ST_GeomFromText('POINT(37.3353097 -96.4525086)', 4326), 37.4091978, -96.4097276, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469889', 'East Fork Caney River', 'Stream', 'Kansas', 'KS', 'Elk', 'Howard NW', 37.3608638, -96.4666762, ST_GeomFromText('POINT(37.3608638 -96.4666762)', 4326), 37.4486401, -96.4283399, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469890', 'Schrader Branch', 'Stream', 'Kansas', 'KS', 'Elk', 'Grenola', 37.3608638, -96.4672317, ST_GeomFromText('POINT(37.3608638 -96.4672317)', 4326), 37.3903053, -96.5327917, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469891', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Grenola', 37.271978, -96.4627874, ST_GeomFromText('POINT(37.271978 -96.4627874)', 4326), 37.3547509, -96.5266803, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469893', 'Blue Branch', 'Stream', 'Kansas', 'KS', 'Cowley', 'Cambridge', 37.2950266, -96.6894706, ST_GeomFromText('POINT(37.2950266 -96.6894706)', 4326), 37.3438889, -96.7191667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469899', 'Coon Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Cambridge', 37.2675274, -96.6889153, ST_GeomFromText('POINT(37.2675274 -96.6889153)', 4326), 37.2813889, -96.6494444, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('469900', 'School Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Cambridge', 37.263083, -96.6930823, ST_GeomFromText('POINT(37.263083 -96.6930823)', 4326), 37.2897222, -96.6327778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469902', 'Cedar Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Cambridge', 37.3086376, -96.6797475, ST_GeomFromText('POINT(37.3086376 -96.6797475)', 4326), 37.4022492, -96.5389031, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469911', 'Plum Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Burden', 37.2803033, -96.7805871, ST_GeomFromText('POINT(37.2803033 -96.7805871)', 4326), 37.3180806, -96.7314179, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469925', 'Dutch Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'New Salem', 37.3411351, -96.9417016, ST_GeomFromText('POINT(37.3411351 -96.9417016)', 4326), 37.4472434, -96.8119753, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469928', 'Cedar Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'New Salem', 37.3016917, -96.9572576, ST_GeomFromText('POINT(37.3016917 -96.9572576)', 4326), 37.3247466, -96.8111429, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469930', 'Goose Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Cambridge NW', 37.3908583, -96.6441886, ST_GeomFromText('POINT(37.3908583 -96.6441886)', 4326), 37.4652778, -96.6391667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469932', 'Lower Dutch Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Atlanta', 37.4475212, -96.8119753, ST_GeomFromText('POINT(37.4475212 -96.8119753)', 4326), 37.4633546, -96.7247491, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469933', 'Upper Dutch Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Atlanta', 37.4475212, -96.8119753, ST_GeomFromText('POINT(37.4475212 -96.8119753)', 4326), 37.4725209, -96.7336386, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469938', 'Franklin Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'Latham SE', 37.4533579, -96.581128, ST_GeomFromText('POINT(37.4533579 -96.581128)', 4326), 37.5130783, -96.6050183, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469939', 'Wagoner Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Cambridge NE', 37.4736356, -96.5583486, ST_GeomFromText('POINT(37.4736356 -96.5583486)', 4326), 37.5239137, -96.4989001, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('469940', 'Riley Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Cambridge NE', 37.4641912, -96.5691827, ST_GeomFromText('POINT(37.4641912 -96.5691827)', 4326), 37.4588889, -96.5094444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469941', 'Ferguson Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Cambridge NE', 37.4583579, -96.5733497, ST_GeomFromText('POINT(37.4583579 -96.5733497)', 4326), 37.4455556, -96.5186111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469943', 'Skull Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Howard', 37.4108658, -96.3691695, ST_GeomFromText('POINT(37.4108658 -96.3691695)', 4326), 37.4355821, -96.5172347, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469944', 'Gardners Branch', 'Stream', 'Kansas', 'KS', 'Cowley', 'Cambridge NW', 37.3947473, -96.6341878, ST_GeomFromText('POINT(37.3947473 -96.6341878)', 4326), 37.3903047, -96.5600158, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469960', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Elk', 'Piedmont', 37.454201, -96.272774, ST_GeomFromText('POINT(37.454201 -96.272774)', 4326), 37.5997513, -96.3486144, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469961', 'Clear Creek', 'Stream', 'Kansas', 'KS', 'Elk', 'Howard NW', 37.4872521, -96.3608352, ST_GeomFromText('POINT(37.4872521 -96.3608352)', 4326), 37.4911373, -96.4666755, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469962', 'Bull Creek', 'Stream', 'Kansas', 'KS', 'Elk', 'Howard NW', 37.4736421, -96.3450008, ST_GeomFromText('POINT(37.4736421 -96.3450008)', 4326), 37.4364191, -96.4075052, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469965', 'Polk Daniels Lake', 'Reservoir', 'Kansas', 'KS', 'Elk', 'Longton NW', 37.4646046, -96.2241305, ST_GeomFromText('POINT(37.4646046 -96.2241305)', 4326), NULL, NULL, '1978-10-13', '2024-10-31', NULL, NULL, NULL),
  ('469966', 'Snake Creek', 'Stream', 'Kansas', 'KS', 'Elk', 'Longton NW', 37.4744787, -96.2472166, ST_GeomFromText('POINT(37.4744787 -96.2472166)', 4326), 37.5636436, -96.2474962, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469967', 'Pawpaw Creek', 'Stream', 'Kansas', 'KS', 'Elk', 'Longton NW', 37.4522581, -96.2327717, ST_GeomFromText('POINT(37.4522581 -96.2327717)', 4326), 37.6141969, -96.3086124, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('469968', 'Game Creek', 'Stream', 'Kansas', 'KS', 'Elk', 'Severy South', 37.4505918, -96.2272158, ST_GeomFromText('POINT(37.4505918 -96.2272158)', 4326), 37.5267019, -96.1774916, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469969', 'Mound Branch', 'Stream', 'Kansas', 'KS', 'Elk', 'Longton NW', 37.4211491, -96.2166601, ST_GeomFromText('POINT(37.4211491 -96.2166601)', 4326), 37.4325302, -96.4097275, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469970', 'West Hitchen Creek', 'Stream', 'Kansas', 'KS', 'Elk', 'Longton NW', 37.433651, -96.1561016, ST_GeomFromText('POINT(37.433651 -96.1561016)', 4326), 37.4881092, -95.1749747, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469974', 'Mid Painterhood Creek', 'Stream', 'Kansas', 'KS', 'Elk', 'Fall River', 37.4272669, -96.0499859, ST_GeomFromText('POINT(37.4272669 -96.0499859)', 4326), 37.5136517, -96.0183165, '1984-07-01', NULL, NULL, NULL, NULL),
  ('469975', 'East Hitchen Creek', 'Stream', 'Kansas', 'KS', 'Elk', 'Longton NW', 37.433651, -96.1561016, ST_GeomFromText('POINT(37.433651 -96.1561016)', 4326), 37.4961491, -96.1097096, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469977', 'Painterhood Creek', 'Stream', 'Kansas', 'KS', 'Elk', 'Longton', 37.3764374, -96.0433201, ST_GeomFromText('POINT(37.3764374 -96.0433201)', 4326), 37.4216667, -96.055, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469978', 'West Painterhood Creek', 'Stream', 'Kansas', 'KS', 'Elk', 'Longton', 37.4217116, -96.055264, ST_GeomFromText('POINT(37.4217116 -96.055264)', 4326), 37.4963889, -96.085, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469979', 'East Painterhood Creek', 'Stream', 'Kansas', 'KS', 'Wilson', 'Longton', 37.4217116, -96.055264, ST_GeomFromText('POINT(37.4217116 -96.055264)', 4326), 37.5014312, -95.9849817, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469980', 'Little Hitchen Creek', 'Stream', 'Kansas', 'KS', 'Elk', 'Longton NW', 37.4219851, -96.1536017, ST_GeomFromText('POINT(37.4219851 -96.1536017)', 4326), 37.4603181, -96.1072101, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469981', 'Willow Creek', 'Stream', 'Kansas', 'KS', 'Wilson', 'New Albany', 37.5278228, -95.9224822, ST_GeomFromText('POINT(37.5278228 -95.9224822)', 4326), 37.4969612, -97.975058, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('469988', 'South Duck Creek', 'Stream', 'Kansas', 'KS', 'Wilson', 'Buxton', 37.4033858, -95.9172053, ST_GeomFromText('POINT(37.4033858 -95.9172053)', 4326), 37.4513889, -95.9691667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469989', 'Middle Duck Creek', 'Stream', 'Kansas', 'KS', 'Wilson', 'Buxton', 37.4033858, -95.9172053, ST_GeomFromText('POINT(37.4033858 -95.9172053)', 4326), 37.4608333, -95.9444444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469993', 'Hitchen Creek', 'Stream', 'Kansas', 'KS', 'Elk', 'Longton', 37.3792141, -96.0635986, ST_GeomFromText('POINT(37.3792141 -96.0635986)', 4326), 37.516425, -96.15249, '1978-10-13', NULL, NULL, NULL, NULL),
  ('469999', 'West Rainbow Creek', 'Stream', 'Kansas', 'KS', 'Wilson', 'Lafontaine', 37.4936605, -95.8644258, ST_GeomFromText('POINT(37.4936605 -95.8644258)', 4326), 37.4814331, -95.9755377, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470000', 'East Rainbow Creek', 'Stream', 'Kansas', 'KS', 'Wilson', 'Fredonia', 37.5106044, -95.8619259, ST_GeomFromText('POINT(37.5106044 -95.8619259)', 4326), 37.4481052, -95.9152601, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470002', 'Buff Mound', 'Summit', 'Kansas', 'KS', 'Wilson', 'Neodesha', 37.4782547, -95.6633201, ST_GeomFromText('POINT(37.4782547 -95.6633201)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('470008', 'Lake McKinley', 'Reservoir', 'Kansas', 'KS', 'Neosho', 'South Mound', 37.424209, -95.1999836, ST_GeomFromText('POINT(37.424209 -95.1999836)', 4326), NULL, NULL, '1978-10-13', '2018-07-05', NULL, NULL, NULL),
  ('470011', 'Chigger Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'Wilmot', 37.4847426, -96.9033668, ST_GeomFromText('POINT(37.4847426 -96.9033668)', 4326), 37.5414085, -96.8236417, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470012', 'Swisher Branch', 'Stream', 'Kansas', 'KS', 'Butler', 'Wilmot', 37.4869648, -96.9203117, ST_GeomFromText('POINT(37.4869648 -96.9203117)', 4326), 37.5483528, -96.8747545, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470014', 'Durham Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Wilmot', 37.4672431, -96.9439236, ST_GeomFromText('POINT(37.4672431 -96.9439236)', 4326), 37.4505556, -96.8833333, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470021', 'Stalter Branch', 'Stream', 'Kansas', 'KS', 'Cowley', 'Wilmot', 37.4386327, -96.985036, ST_GeomFromText('POINT(37.4386327 -96.985036)', 4326), 37.4261111, -96.9152778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470030', 'Richland Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Wilmot', 37.3939116, -96.8894779, ST_GeomFromText('POINT(37.3939116 -96.8894779)', 4326), 37.428355, -96.7700297, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470041', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Arkansas City', 37.0847505, -97.0917057, ST_GeomFromText('POINT(37.0847505 -97.0917057)', 4326), 37.0691946, -97.1733743, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470043', 'Negro Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Geuda Springs', 37.080584, -97.08615, ST_GeomFromText('POINT(37.080584 -97.08615)', 4326), 37.0411398, -97.1447625, '1978-10-13', '2020-10-08', NULL, NULL, NULL),
  ('470044', 'Chilocco Creek', 'Stream', 'Oklahoma', 'OK', 'Kay', 'Kaw City NW', 36.95042, -96.95349, ST_GeomFromText('POINT(36.95042 -96.95349)', 4326), 37.0441951, -97.1700408, '1978-10-13', '2010-11-23', NULL, NULL, NULL),
  ('470046', 'Spring Creek', 'Stream', 'Oklahoma', 'OK', 'Kay', 'Peckham', 36.95341, -97.23797, ST_GeomFromText('POINT(36.95341 -97.23797)', 4326), 37.0044735, -97.1761521, '1978-10-13', '2010-11-23', NULL, NULL, NULL),
  ('470048', 'East Bitter Creek', 'Stream', 'Oklahoma', 'OK', 'Kay', 'Braman', 36.9472, -97.25954, ST_GeomFromText('POINT(36.9472 -97.25954)', 4326), 37.06975, -97.1819856, '1978-10-13', '2010-11-23', NULL, NULL, NULL),
  ('470049', 'Middle Bitter Creek', 'Stream', 'Oklahoma', 'OK', 'Kay', 'Peckham', 36.98975, -97.23094, ST_GeomFromText('POINT(36.98975 -97.23094)', 4326), 37.0730832, -97.205875, '1978-10-13', '2010-11-23', NULL, NULL, NULL),
  ('470053', 'Dry Creek', 'Stream', 'Oklahoma', 'OK', 'Kay', 'Blackwell', 36.8522, -97.28853, ST_GeomFromText('POINT(36.8522 -97.28853)', 4326), 37.01242, -97.30127, '1978-10-13', '2010-11-26', NULL, NULL, NULL),
  ('470062', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Arkansas City', 37.1000279, -97.1036503, ST_GeomFromText('POINT(37.1000279 -97.1036503)', 4326), 37.1350278, -97.0458712, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470063', 'Walnut River', 'Stream', 'Kansas', 'KS', 'Cowley', 'Arkansas City', 37.0491964, -97.0005926, ST_GeomFromText('POINT(37.0491964 -97.0005926)', 4326), 38.0214084, -96.5533469, '1978-10-13', '2019-08-29', NULL, NULL, NULL),
  ('470064', 'Salt Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Geuda Springs', 37.1103053, -97.129762, ST_GeomFromText('POINT(37.1103053 -97.129762)', 4326), 37.0944444, -97.2441667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470071', 'Bitter Creek', 'Stream', 'Oklahoma', 'OK', 'Kay', 'Blackwell', 36.8144766, -97.2764317, ST_GeomFromText('POINT(36.8144766 -97.2764317)', 4326), 37.1305815, -97.2728209, '1978-10-13', '2010-11-26', NULL, NULL, NULL),
  ('470078', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'South Haven', 37.0300264, -97.3961566, ST_GeomFromText('POINT(37.0300264 -97.3961566)', 4326), 37.1686354, -97.3667117, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470079', 'East Shoo Fly Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'South Haven', 37.0933582, -97.441991, ST_GeomFromText('POINT(37.0933582 -97.441991)', 4326), 37.1683573, -97.3997679, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470080', 'Middle Shoo Fly Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'South Haven', 37.05697, -97.4292129, ST_GeomFromText('POINT(37.05697 -97.4292129)', 4326), 37.2425225, -97.4417132, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470081', 'West Shoo Fly Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'South Haven', 37.05697, -97.4292129, ST_GeomFromText('POINT(37.05697 -97.4292129)', 4326), 37.2425223, -97.4633804, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470082', 'Shoo Fly Creek', 'Stream', 'Oklahoma', 'OK', 'Kay', 'Blackwell NW', 36.9383618, -97.375045, ST_GeomFromText('POINT(36.9383618 -97.375045)', 4326), 37.05691, -97.42929, '1978-10-13', '2010-11-26', NULL, NULL, NULL),
  ('470083', 'Meridian Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'South Haven', 37.0044715, -97.3808786, ST_GeomFromText('POINT(37.0044715 -97.3808786)', 4326), 37.1586357, -97.357267, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470093', 'Osage Creek', 'Stream', 'Oklahoma', 'OK', 'Grant', 'Pond Creek', 36.71415, -97.781, ST_GeomFromText('POINT(36.71415 -97.781)', 4326), 37.00125, -97.79984, '1978-10-13', '2010-11-26', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470095', 'Fall Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Medford NE', 36.9978034, -97.5594935, ST_GeomFromText('POINT(36.9978034 -97.5594935)', 4326), 37.1989104, -97.819222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470096', 'Spring Branch', 'Stream', 'Kansas', 'KS', 'Harper', 'Bluff City East', 37.0728014, -97.8347782, ST_GeomFromText('POINT(37.0728014 -97.8347782)', 4326), 37.1958547, -97.8545009, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470102', 'Baehr Creek', 'Stream', 'Kansas', 'KS', 'Harper', 'Bluff City East', 37.0847456, -97.8642236, ST_GeomFromText('POINT(37.0847456 -97.8642236)', 4326), 37.2230764, -97.9042245, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470105', 'Silver Creek', 'Stream', 'Kansas', 'KS', 'Harper', 'Bluff City West', 37.0964121, -97.9097804, ST_GeomFromText('POINT(37.0964121 -97.9097804)', 4326), 37.2558534, -97.9406143, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470106', 'Nebo Lake', 'Reservoir', 'Kansas', 'KS', 'Jackson', 'Arrington', 39.4473832, -95.5986856, ST_GeomFromText('POINT(39.4473832 -95.5986856)', 4326), NULL, NULL, '1984-07-01', '2018-09-21', NULL, NULL, NULL),
  ('470107', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Harper', 'Bluff City West', 37.1064118, -97.9733934, ST_GeomFromText('POINT(37.1064118 -97.9733934)', 4326), 37.2444645, -97.9889491, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470109', 'Wildcat Creek', 'Stream', 'Kansas', 'KS', 'Harper', 'Bluff City West', 37.0950232, -97.9503372, ST_GeomFromText('POINT(37.0950232 -97.9503372)', 4326), 37.0289135, -98.0245063, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470112', 'Pond Creek', 'Stream', 'Oklahoma', 'OK', 'Grant', 'Lamont', 36.67456, -97.55316, ST_GeomFromText('POINT(36.67456 -97.55316)', 4326), 37.0425242, -97.8936689, '1978-10-13', '2010-11-26', NULL, NULL, NULL),
  ('470113', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Perth', 37.0769688, -97.5347706, ST_GeomFromText('POINT(37.0769688 -97.5347706)', 4326), 37.195856, -97.50727, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470114', 'Rodgers Branch', 'Stream', 'Kansas', 'KS', 'Sumner', 'Perth', 37.0855799, -97.5467154, ST_GeomFromText('POINT(37.0855799 -97.5467154)', 4326), 37.1747452, -97.522826, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470116', 'Bluff Creek', 'Stream', 'Oklahoma', 'OK', 'Kay', 'Blackwell NW', 36.96714, -97.43146, ST_GeomFromText('POINT(36.96714 -97.43146)', 4326), 37.37882, -98.23822, '1978-10-13', '2010-11-26', NULL, NULL, NULL),
  ('470119', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Doster', 37.0986346, -97.683663, ST_GeomFromText('POINT(37.0986346 -97.683663)', 4326), 37.1683555, -97.7258862, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470120', 'East Branch Fall Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Doster', 37.0886347, -97.6850519, ST_GeomFromText('POINT(37.0886347 -97.6850519)', 4326), 37.1780778, -97.6994967, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470121', 'Wolf Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Doster', 37.0046748, -97.6751855, ST_GeomFromText('POINT(37.0046748 -97.6751855)', 4326), 36.9665027, -97.6806951, '1978-10-13', '2015-07-10', NULL, NULL, NULL),
  ('470123', 'Lone Elm Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Akron', 37.2841918, -97.032815, ST_GeomFromText('POINT(37.2841918 -97.032815)', 4326), 37.3011361, -96.990314, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470124', 'Foos Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Akron', 37.3119689, -97.0275371, ST_GeomFromText('POINT(37.3119689 -97.0275371)', 4326), 37.3550237, -96.9672578, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470125', 'Little Dutch Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Akron', 37.3458569, -97.0425376, ST_GeomFromText('POINT(37.3458569 -97.0425376)', 4326), 37.4061335, -96.955313, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470128', 'Stewart Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Akron', 37.3722451, -97.0475377, ST_GeomFromText('POINT(37.3722451 -97.0475377)', 4326), 37.43391, -97.1230956, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470132', 'Ninnescah River', 'Stream', 'Kansas', 'KS', 'Sumner', 'Oxford', 37.321412, -97.1664297, ST_GeomFromText('POINT(37.321412 -97.1664297)', 4326), 37.5680721, -97.7053279, '1978-10-13', '2019-08-29', 'Official', 'Board Decision', '1912-01-01'),
  ('470138', 'Lost Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Oxford', 37.2614133, -97.1600405, ST_GeomFromText('POINT(37.2614133 -97.1600405)', 4326), 37.2747222, -97.2336111, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470141', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Dalton', 37.345022, -97.2539321, ST_GeomFromText('POINT(37.345022 -97.2539321)', 4326), 37.3313889, -97.3327778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470142', 'Hargis Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Rome', 37.2347452, -97.3881011, ST_GeomFromText('POINT(37.2347452 -97.3881011)', 4326), 37.3369659, -97.3489338, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470145', 'Antelope Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'South Haven NE', 37.2078022, -97.2667097, ST_GeomFromText('POINT(37.2078022 -97.2667097)', 4326), 37.3022445, -97.3189332, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470160', 'Oak Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Wellington', 37.2755776, -97.4347686, ST_GeomFromText('POINT(37.2755776 -97.4347686)', 4326), 37.3633333, -97.4127778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470167', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Wellington', 37.2966882, -97.4592136, ST_GeomFromText('POINT(37.2966882 -97.4592136)', 4326), 37.4014086, -97.4975476, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470175', 'Beaver Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Caldwell NW', 37.203911, -97.6300506, ST_GeomFromText('POINT(37.203911 -97.6300506)', 4326), 37.3436314, -97.6003274, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470183', 'Silver Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Milan', 37.2511322, -97.6872741, ST_GeomFromText('POINT(37.2511322 -97.6872741)', 4326), 37.3705556, -97.7022222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470184', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Milan', 37.2519655, -97.6942187, ST_GeomFromText('POINT(37.2519655 -97.6942187)', 4326), 37.3188889, -97.7227778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470187', 'Paradise Lake', 'Reservoir', 'Kansas', 'KS', 'Harper', 'Argonia', 37.36044, -97.80766, ST_GeomFromText('POINT(37.36044 -97.80766)', 4326), NULL, NULL, '1978-10-13', '2024-10-31', NULL, NULL, NULL),
  ('470189', 'Sandy Creek', 'Stream', 'Kansas', 'KS', 'Harper', 'Argonia', 37.3389084, -97.8589446, ST_GeomFromText('POINT(37.3389084 -97.8589446)', 4326), 37.4505739, -97.8481101, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470190', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Harper', 'Argonia', 37.2808536, -97.8092214, ST_GeomFromText('POINT(37.2808536 -97.8092214)', 4326), 37.3833515, -97.9939482, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470191', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Argonia', 37.2511318, -97.7836653, ST_GeomFromText('POINT(37.2511318 -97.7836653)', 4326), 37.3877966, -98.1545101, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470203', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Udall', 37.3991892, -97.014759, ST_GeomFromText('POINT(37.3991892 -97.014759)', 4326), 37.4030781, -96.9767025, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470204', 'Sanford Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Udall', 37.3983558, -97.0150369, ST_GeomFromText('POINT(37.3983558 -97.0150369)', 4326), 37.4114112, -96.9567019, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470205', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Udall', 37.4208553, -97.0125368, ST_GeomFromText('POINT(37.4208553 -97.0125368)', 4326), 37.5875236, -96.5422369, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470207', 'Muddy Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Udall', 37.4619654, -97.0247594, ST_GeomFromText('POINT(37.4619654 -97.0247594)', 4326), 37.578353, -96.7330824, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470208', 'Eightmile Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Udall', 37.4469657, -97.0358709, ST_GeomFromText('POINT(37.4469657 -97.0358709)', 4326), 37.6305723, -97.1600412, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470209', 'Maple Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'Udall', 37.4927977, -97.1111509, ST_GeomFromText('POINT(37.4927977 -97.1111509)', 4326), 37.5041861, -97.1725416, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470210', 'Coon Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Udall', 37.4716871, -97.0972615, ST_GeomFromText('POINT(37.4716871 -97.0972615)', 4326), 37.4741868, -97.155041, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470212', 'Polecat Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Udall', 37.4294662, -97.0222593, ST_GeomFromText('POINT(37.4294662 -97.0222593)', 4326), 37.5650179, -97.1867087, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470219', 'Turner Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Mulvane', 37.4394648, -97.2211539, ST_GeomFromText('POINT(37.4394648 -97.2211539)', 4326), 37.4719444, -97.1852778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470220', 'Dog Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Mulvane', 37.4183541, -97.2180982, ST_GeomFromText('POINT(37.4183541 -97.2180982)', 4326), 37.5450183, -97.1936533, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470225', 'Bitter Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Mulvane', 37.4144654, -97.2003199, ST_GeomFromText('POINT(37.4144654 -97.2003199)', 4326), 37.4786111, -97.1627778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470226', 'Short Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Mulvane', 37.4127989, -97.1986532, ST_GeomFromText('POINT(37.4127989 -97.1986532)', 4326), 37.4505556, -97.1741667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470230', 'Antelope Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Oxford', 37.4480763, -97.1417073, ST_GeomFromText('POINT(37.4480763 -97.1417073)', 4326), 37.3603, -97.1772635, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470245', 'Elm Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Zyba', 37.4291865, -97.3822679, ST_GeomFromText('POINT(37.4291865 -97.3822679)', 4326), 37.4144444, -97.4733333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470248', 'Garvey Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Zyba', 37.4577969, -97.4258799, ST_GeomFromText('POINT(37.4577969 -97.4258799)', 4326), 37.4211111, -97.4583333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470251', 'Argyle Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Zyba', 37.4283531, -97.3772678, ST_GeomFromText('POINT(37.4283531 -97.3772678)', 4326), 37.4027778, -97.3902778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470252', 'Silver Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Zyba', 37.4725187, -97.4706028, ST_GeomFromText('POINT(37.4725187 -97.4706028)', 4326), 37.4239082, -97.5317149, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470253', 'Turtle Creek', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Zyba', 37.4686298, -97.4939364, ST_GeomFromText('POINT(37.4686298 -97.4939364)', 4326), 37.4314081, -97.5286592, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470257', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Zyba', 37.4600193, -97.3814347, ST_GeomFromText('POINT(37.4600193 -97.3814347)', 4326), 37.5755719, -97.5286587, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470267', 'South Branch Slate Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Conway Springs', 37.4311303, -97.6650503, ST_GeomFromText('POINT(37.4311303 -97.6650503)', 4326), 37.4116667, -97.7486111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470268', 'North Branch State Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Conway Springs', 37.4311303, -97.6650503, ST_GeomFromText('POINT(37.4311303 -97.6650503)', 4326), 37.4044637, -97.7772749, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470272', 'Argonia Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Argonia', 37.2469652, -97.7767207, ST_GeomFromText('POINT(37.2469652 -97.7767207)', 4326), 37.3952972, -97.7747749, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470282', 'Clearwater Creek', 'Stream', 'Kansas', 'KS', 'Harper', 'Adams', 37.3844631, -97.9053345, ST_GeomFromText('POINT(37.3844631 -97.9053345)', 4326), 37.4883333, -97.9213889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470283', 'Big Spring Creek', 'Stream', 'Kansas', 'KS', 'Kingman', 'Adams', 37.417518, -97.953669, ST_GeomFromText('POINT(37.417518 -97.953669)', 4326), 37.5180727, -97.8936664, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470292', 'Shore Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Caldwell NW', 37.2422435, -97.6783851, ST_GeomFromText('POINT(37.2422435 -97.6783851)', 4326), 37.3655756, -97.6656063, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470293', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Caldwell NW', 37.2436322, -97.7314417, ST_GeomFromText('POINT(37.2436322 -97.7314417)', 4326), 37.4077972, -97.7583855, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470303', 'Long Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Perth', 37.1778006, -97.5636602, ST_GeomFromText('POINT(37.1778006 -97.5636602)', 4326), 37.259466, -97.5400486, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470309', 'Jordan Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Perth', 37.1725227, -97.6100502, ST_GeomFromText('POINT(37.1725227 -97.6100502)', 4326), 37.1983552, -97.6978299, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470310', 'West Prairie Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Perth', 37.1522453, -97.5686603, ST_GeomFromText('POINT(37.1522453 -97.5686603)', 4326), 37.3133541, -97.5606045, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470311', 'Prairie Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Perth', 37.1275234, -97.5886608, ST_GeomFromText('POINT(37.1275234 -97.5886608)', 4326), 37.1513889, -97.5852778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470312', 'East Prairie Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Perth', 37.151412, -97.5856052, ST_GeomFromText('POINT(37.151412 -97.5856052)', 4326), 37.2994655, -97.5283817, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470315', 'Beaver Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Rome', 37.2353008, -97.3825453, ST_GeomFromText('POINT(37.2353008 -97.3825453)', 4326), 37.3155776, -97.3361557, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470323', 'Snyder Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'South Haven NE', 37.2200235, -97.3553226, ST_GeomFromText('POINT(37.2200235 -97.3553226)', 4326), 37.1705556, -97.3422222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470328', 'Deer Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'South Haven NE', 37.2191903, -97.3442113, ST_GeomFromText('POINT(37.2191903 -97.3442113)', 4326), 37.2191903, -97.3442113, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470337', 'Badger Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Adamsville', 37.183081, -97.2142085, ST_GeomFromText('POINT(37.183081 -97.2142085)', 4326), 37.1391924, -97.2767099, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470338', 'Slate Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Adamsville', 37.1344713, -97.1444846, ST_GeomFromText('POINT(37.1344713 -97.1444846)', 4326), 37.4311303, -97.6650503, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470339', 'Winser Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Adamsville', 37.1916918, -97.23032, ST_GeomFromText('POINT(37.1916918 -97.23032)', 4326), 37.2880785, -97.2703211, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470346', 'Beaver Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Hackney', 37.1636379, -97.0972612, ST_GeomFromText('POINT(37.1636379 -97.0972612)', 4326), 37.2347222, -97.0638889, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470354', 'Gimlet Creek', 'Stream', 'Nebraska', 'NE', 'Nuckolls', 'Bostwick', 40.04849, -98.22584, ST_GeomFromText('POINT(40.04849 -98.22584)', 4326), 39.9750139, -98.248937, '1978-10-13', '2010-11-26', NULL, NULL, NULL),
  ('470357', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Adamsville', 37.2136365, -97.150318, ST_GeomFromText('POINT(37.2136365 -97.150318)', 4326), 37.3586339, -97.102817, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470358', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Akron', 37.2678033, -97.0280927, ST_GeomFromText('POINT(37.2678033 -97.0280927)', 4326), 37.2478035, -97.0539266, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470366', 'North Elm Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Sawyer', 37.4280763, -98.6848109, ST_GeomFromText('POINT(37.4280763 -98.6848109)', 4326), 37.5702967, -98.7698147, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470367', 'East Branch South Elm Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Sun City NE', 37.4280765, -98.7700925, ST_GeomFromText('POINT(37.4280765 -98.7700925)', 4326), 37.548908, -98.8148167, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470368', 'West Branch South Elm Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Sun City NE', 37.4252988, -98.7750927, ST_GeomFromText('POINT(37.4252988 -98.7750927)', 4326), 37.5633523, -98.8923201, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470373', 'South Elm Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Sawyer', 37.4280763, -98.6848109, ST_GeomFromText('POINT(37.4280763 -98.6848109)', 4326), 37.4244654, -98.7856488, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470375', 'Crooked Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Sawyer', 37.4144652, -98.6509206, ST_GeomFromText('POINT(37.4144652 -98.6509206)', 4326), 37.4969444, -98.6619444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470378', 'Lake Arrowshead', 'Reservoir', 'Kansas', 'KS', 'Barber', 'Isabel', 37.4164852, -98.6078722, ST_GeomFromText('POINT(37.4164852 -98.6078722)', 4326), NULL, NULL, '1978-10-13', '2018-06-27', NULL, NULL, NULL),
  ('470379', 'Amber Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Isabel', 37.3822434, -98.5936956, ST_GeomFromText('POINT(37.3822434 -98.5936956)', 4326), 37.4950195, -98.6425872, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470387', 'Chicken Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Nashville', 37.4041873, -98.4970249, ST_GeomFromText('POINT(37.4041873 -98.4970249)', 4326), 37.4766863, -98.5414718, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470389', 'North Fork Chikaskia River', 'Stream', 'Kansas', 'KS', 'Kingman', 'Zenda', 37.4816854, -98.3642415, ST_GeomFromText('POINT(37.4816854 -98.3642415)', 4326), 37.554741, -98.4911917, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470391', 'Goose Creek', 'Stream', 'Kansas', 'KS', 'Kingman', 'Zenda', 37.4064083, -98.3003494, ST_GeomFromText('POINT(37.4064083 -98.3003494)', 4326), 37.4458333, -98.3491667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470394', 'Skunk Creek', 'Stream', 'Kansas', 'KS', 'Kingman', 'Zenda', 37.3936311, -98.3734082, ST_GeomFromText('POINT(37.3936311 -98.3734082)', 4326), 37.4547417, -98.4356336, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470395', 'Morisse Creek', 'Stream', 'Kansas', 'KS', 'Kingman', 'Willowdale', 37.5633513, -98.3595188, ST_GeomFromText('POINT(37.5633513 -98.3595188)', 4326), 37.426964, -98.3953538, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470398', 'Cross Creek', 'Stream', 'Kansas', 'KS', 'Kingman', 'Zenda', 37.4991851, -98.35313, ST_GeomFromText('POINT(37.4991851 -98.35313)', 4326), 37.5364071, -98.3667415, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470399', 'Peters Creek', 'Stream', 'Kansas', 'KS', 'Kingman', 'Zenda', 37.4952959, -98.2928493, ST_GeomFromText('POINT(37.4952959 -98.2928493)', 4326), 37.5616844, -98.3017382, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470400', 'Allen Creek', 'Stream', 'Kansas', 'KS', 'Kingman', 'Zenda', 37.4744627, -98.2789597, ST_GeomFromText('POINT(37.4744627 -98.2789597)', 4326), 37.5564069, -98.351185, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470404', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Kingman', 'Spivey', 37.444185, -98.199234, ST_GeomFromText('POINT(37.444185 -98.199234)', 4326), 37.5780744, -98.7945381, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470408', 'Wild Horse Creek', 'Stream', 'Kansas', 'KS', 'Kingman', 'Spivey', 37.4389071, -98.1642326, ST_GeomFromText('POINT(37.4389071 -98.1642326)', 4326), 37.5505728, -98.1956223, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470414', 'Copper Creek', 'Stream', 'Kansas', 'KS', 'Kingman', 'Rago', 37.4436286, -98.029227, ST_GeomFromText('POINT(37.4436286 -98.029227)', 4326), 37.4986111, -98.0652778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470416', 'Red Creek', 'Stream', 'Kansas', 'KS', 'Kingman', 'Rago', 37.4500176, -98.0828403, ST_GeomFromText('POINT(37.4500176 -98.0828403)', 4326), 37.5397394, -98.1825662, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470421', 'Bear Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Sun City SW', 37.3566892, -98.8778754, ST_GeomFromText('POINT(37.3566892 -98.8778754)', 4326), 37.3216903, -99.0112153, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470424', 'Mulberry Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Sun City SW', 37.3694667, -98.8906538, ST_GeomFromText('POINT(37.3694667 -98.8906538)', 4326), 37.4975198, -98.8931536, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470425', 'Turkey Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Sun City SW', 37.370578, -98.9212108, ST_GeomFromText('POINT(37.370578 -98.9212108)', 4326), 37.6039075, -98.9892688, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470426', 'Elk Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Sun City SW', 37.3805778, -98.9392672, ST_GeomFromText('POINT(37.3805778 -98.9392672)', 4326), 37.366967, -98.9803803, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470427', 'North Elk Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Sun City SW', 37.366967, -98.9803803, ST_GeomFromText('POINT(37.366967 -98.9803803)', 4326), 37.3503007, -99.0434384, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470428', 'South Elk Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Sun City SW', 37.366967, -98.9803803, ST_GeomFromText('POINT(37.366967 -98.9803803)', 4326), 37.3319677, -99.0395495, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470430', 'Puckett Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Lake City', 37.3508558, -98.8375956, ST_GeomFromText('POINT(37.3508558 -98.8375956)', 4326), 37.3086111, -98.8691667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470432', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Lake City', 37.3439115, -98.8081498, ST_GeomFromText('POINT(37.3439115 -98.8081498)', 4326), 37.4361319, -98.8192614, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470433', 'Cottonwood Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Lake City', 37.3578002, -98.8467628, ST_GeomFromText('POINT(37.3578002 -98.8467628)', 4326), 37.4275211, -98.8478739, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470436', 'Dog Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Lake City', 37.2991901, -98.7939823, ST_GeomFromText('POINT(37.2991901 -98.7939823)', 4326), 37.2505803, -98.8981545, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470437', 'Walnut Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Medicine Lodge SW', 37.2766898, -98.6303633, ST_GeomFromText('POINT(37.2766898 -98.6303633)', 4326), 37.2403016, -98.6567532, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470438', 'Twin Peaks', 'Summit', 'Kansas', 'KS', 'Barber', 'Medicine Lodge SW', 37.2700604, -98.7069609, ST_GeomFromText('POINT(37.2700604 -98.7069609)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('470440', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Lake City', 37.3275227, -98.7631475, ST_GeomFromText('POINT(37.3275227 -98.7631475)', 4326), 37.4022435, -98.7500915, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470445', 'Barber County State Lake', 'Reservoir', 'Kansas', 'KS', 'Barber', 'Medicine Lodge', 37.2977263, -98.5811584, ST_GeomFromText('POINT(37.2977263 -98.5811584)', 4326), NULL, NULL, '1978-10-13', '2018-06-27', NULL, NULL, NULL),
  ('470447', 'Albee Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Medicine Lodge', 37.3269664, -98.5686941, ST_GeomFromText('POINT(37.3269664 -98.5686941)', 4326), 37.3402778, -98.5255556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470448', 'Stolp Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Preston', 37.8469606, -98.578138, ST_GeomFromText('POINT(37.8469606 -98.578138)', 4326), 37.3847432, -98.5303595, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470449', 'Short Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Medicine Lodge', 37.349466, -98.5573049, ST_GeomFromText('POINT(37.349466 -98.5573049)', 4326), 37.3886321, -98.5484159, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470450', 'Threemile Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Medicine Lodge', 37.3505773, -98.5695277, ST_GeomFromText('POINT(37.3505773 -98.5695277)', 4326), 37.404743, -98.5561941, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470451', 'Elm Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Medicine Lodge', 37.2625232, -98.5934171, ST_GeomFromText('POINT(37.2625232 -98.5934171)', 4326), 37.4280763, -98.6848109, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470454', 'West Branch Little Sandy Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Sharon North', 37.3211329, -98.4914684, ST_GeomFromText('POINT(37.3211329 -98.4914684)', 4326), 37.3780766, -98.5017471, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470460', 'Middle Branch Bluff Creek', 'Stream', 'Kansas', 'KS', 'Harper', 'Waldron', 37.0166922, -98.1925669, ST_GeomFromText('POINT(37.0166922 -98.1925669)', 4326), 37.374186, -98.2139568, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470469', 'Ash Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Deerhead', 37.1503047, -98.9887133, ST_GeomFromText('POINT(37.1503047 -98.9887133)', 4326), 37.1997222, -98.9297222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470470', 'Inman Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Indian Creek', 37.1858596, -99.0012144, ST_GeomFromText('POINT(37.1858596 -99.0012144)', 4326), 37.2630802, -98.9367676, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470471', 'Bitter Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Medicine Lodge SW', 37.3119673, -98.7256457, ST_GeomFromText('POINT(37.3119673 -98.7256457)', 4326), 37.2411355, -98.7881486, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470472', 'Little Bear Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Pump Creek', 37.3141897, -98.7556471, ST_GeomFromText('POINT(37.3141897 -98.7556471)', 4326), 37.2164139, -98.8073158, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470473', 'Pump Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Pump Creek', 37.2494688, -98.8109277, ST_GeomFromText('POINT(37.2494688 -98.8109277)', 4326), 37.2191667, -98.8247222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470474', 'Wolf Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Pretty Prairie SW', 37.8527929, -98.246733, ST_GeomFromText('POINT(37.8527929 -98.246733)', 4326), 37.8419444, -98.2438889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470476', 'Oak Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Lake City', 37.2886347, -98.8042607, ST_GeomFromText('POINT(37.2886347 -98.8042607)', 4326), 37.2422222, -98.8777778, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470478', 'Deadman Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Deerhead', 37.1294711, -98.8545394, ST_GeomFromText('POINT(37.1294711 -98.8545394)', 4326), 37.2114144, -98.9117658, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470481', 'Cedar Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Hardtner NW', 37.2811341, -98.6320302, ST_GeomFromText('POINT(37.2811341 -98.6320302)', 4326), 37.2383573, -98.6900881, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470482', 'West Cedar Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Hardtner NW', 37.2383573, -98.6900881, ST_GeomFromText('POINT(37.2383573 -98.6900881)', 4326), 37.1833587, -98.7753693, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470483', 'East Cedar Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Hardtner NW', 37.2383573, -98.6900881, ST_GeomFromText('POINT(37.2383573 -98.6900881)', 4326), 37.1925252, -98.7584241, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470484', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Hardtner NW', 37.1369702, -98.6598076, ST_GeomFromText('POINT(37.1369702 -98.6598076)', 4326), 37.1941667, -98.7194444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470485', 'Antelope Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Medicine Lodge', 37.2425233, -98.5561929, ST_GeomFromText('POINT(37.2425233 -98.5561929)', 4326), 37.3055777, -98.5142471, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470487', 'Wilson Slough', 'Stream', 'Kansas', 'KS', 'Barber', 'Gerlane', 37.166969, -98.5423025, ST_GeomFromText('POINT(37.166969 -98.5423025)', 4326), 37.2313889, -98.5397222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470488', 'Brush Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Hardtner NW', 37.1525249, -98.553414, ST_GeomFromText('POINT(37.1525249 -98.553414)', 4326), 37.2136354, -98.6534194, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470493', 'East Branch Little Sandy Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Sharon South', 37.2386336, -98.4120201, ST_GeomFromText('POINT(37.2386336 -98.4120201)', 4326), 37.3675211, -98.4917466, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470496', 'Bachelor Creek', 'Stream', 'Kansas', 'KS', 'Harper', 'Crisfield', 37.2141891, -98.3267387, ST_GeomFromText('POINT(37.2141891 -98.3267387)', 4326), 37.3041875, -98.3092384, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470497', 'Gene Creek', 'Stream', 'Kansas', 'KS', 'Harper', 'Crisfield', 37.2291888, -98.3322945, ST_GeomFromText('POINT(37.2291888 -98.3322945)', 4326), 37.3058545, -98.3711854, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470498', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Crisfield', 37.1650235, -98.3486837, ST_GeomFromText('POINT(37.1650235 -98.3486837)', 4326), 37.306688, -98.3803525, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470499', 'West Sandy Creek', 'Stream', 'Kansas', 'KS', 'Harper', 'Crisfield', 37.1972449, -98.318405, ST_GeomFromText('POINT(37.1972449 -98.318405)', 4326), 37.3644647, -98.364241, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470500', 'Cottonwood Creek', 'Stream', 'Kansas', 'KS', 'Harper', 'Crisfield', 37.1972449, -98.318405, ST_GeomFromText('POINT(37.1972449 -98.318405)', 4326), 37.3636312, -98.3317395, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470504', 'Rush Creek', 'Stream', 'Kansas', 'KS', 'Harper', 'Anthony', 37.1739109, -98.0964528, ST_GeomFromText('POINT(37.1739109 -98.0964528)', 4326), 37.3583522, -98.0947855, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470509', 'Camp Creek', 'Stream', 'Kansas', 'KS', 'Harper', 'Crystal Springs', 37.1353012, -98.2442354, ST_GeomFromText('POINT(37.1353012 -98.2442354)', 4326), 37.2552989, -98.2450689, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470510', 'East Branch Bluff Creek', 'Stream', 'Kansas', 'KS', 'Harper', 'Attica', 37.2455764, -98.1664551, ST_GeomFromText('POINT(37.2455764 -98.1664551)', 4326), 37.3786302, -98.1909004, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470511', 'West Branch Bluff Creek', 'Stream', 'Kansas', 'KS', 'Harper', 'Attica', 37.2139103, -98.1489545, ST_GeomFromText('POINT(37.2139103 -98.1489545)', 4326), 37.378353, -98.2884044, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470521', 'Mule Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Aetna', 37.0908613, -98.9962128, ST_GeomFromText('POINT(37.0908613 -98.9962128)', 4326), 37.484465, -99.4184501, '1978-10-13', '2008-11-17', NULL, NULL, NULL),
  ('470522', 'East Dry Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Deerhead', 37.0919722, -98.9528773, ST_GeomFromText('POINT(37.0919722 -98.9528773)', 4326), 37.1839149, -98.917599, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470523', 'West Dry Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Aetna', 37.0919722, -98.9528773, ST_GeomFromText('POINT(37.0919722 -98.9528773)', 4326), 37.1819705, -98.9253771, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470524', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Aetna', 37.0714171, -98.9550993, ST_GeomFromText('POINT(37.0714171 -98.9550993)', 4326), 37.0919444, -98.9525, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470525', 'Hackberry Creek', 'Stream', 'Oklahoma', 'OK', 'Woods', 'Tegarden NE', 36.98111, -98.81254, ST_GeomFromText('POINT(36.98111 -98.81254)', 4326), 37.16355, -98.79829, '1978-10-13', '2010-11-26', NULL, NULL, NULL),
  ('470526', 'Big Sandy Creek', 'Stream', 'Kansas', 'KS', 'Barber', 'Pump Creek', 37.0275286, -98.8562047, ST_GeomFromText('POINT(37.0275286 -98.8562047)', 4326), 37.2369692, -98.8681527, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470527', 'Salt Fork Arkansas River', 'Stream', 'Oklahoma', 'OK', 'Kay', 'Ponca City SE', 36.5994847, -97.0530951, ST_GeomFromText('POINT(36.5994847 -97.0530951)', 4326), 37.1778265, -99.3634698, '1978-10-13', '2019-08-29', NULL, NULL, NULL),
  ('470528', 'Cook Lake', 'Lake', 'Kansas', 'KS', 'Barber', 'Hardtner', 37.0946386, -98.6453713, ST_GeomFromText('POINT(37.0946386 -98.6453713)', 4326), NULL, NULL, '1978-10-13', '2018-06-27', NULL, NULL, NULL),
  ('470531', 'Driftwood Creek', 'Stream', 'Oklahoma', 'OK', 'Alfalfa', 'Cherokee North', 36.8380845, -98.3334056, ST_GeomFromText('POINT(36.8380845 -98.3334056)', 4326), 37.1211376, -98.76259, '1978-10-13', '2010-03-04', NULL, NULL, NULL),
  ('470532', 'Scott Canyon', 'Valley', 'Kansas', 'KS', 'Barber', 'Stubbs', 37.1119269, -98.5621775, ST_GeomFromText('POINT(37.1119269 -98.5621775)', 4326), 37.1146145, -98.5717936, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470534', 'Little Driftwood Creek', 'Stream', 'Oklahoma', 'OK', 'Woods', 'Capron', 36.92267, -98.50782, ST_GeomFromText('POINT(36.92267 -98.50782)', 4326), 37.08781, -98.65716, '1978-10-13', '2010-11-26', NULL, NULL, NULL),
  ('470535', 'Little Mule Creek', 'Stream', 'Oklahoma', 'OK', 'Alfalfa', 'Capron', 36.93509, -98.51988, ST_GeomFromText('POINT(36.93509 -98.51988)', 4326), 37.18907, -98.78788, '1978-10-13', '2008-11-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470542', 'Lone Tree Canyon', 'Valley', 'Kansas', 'KS', 'Barber', 'Kiowa', 37.0342641, -98.4458496, ST_GeomFromText('POINT(37.0342641 -98.4458496)', 4326), 37.1569375, -98.4578356, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470545', 'Harqis Lake', 'Lake', 'Kansas', 'KS', 'Barber', 'Corwin', 37.07425, -98.35068, ST_GeomFromText('POINT(37.07425 -98.35068)', 4326), NULL, NULL, '1978-10-13', '2024-10-31', NULL, NULL, NULL),
  ('470546', 'Spicer Lake', 'Lake', 'Kansas', 'KS', 'Barber', 'Kiowa', 37.1035153, -98.3774563, ST_GeomFromText('POINT(37.1035153 -98.3774563)', 4326), NULL, NULL, '1978-10-13', '2023-04-25', NULL, NULL, NULL),
  ('470550', 'Salty Creek', 'Stream', 'Oklahoma', 'OK', 'Alfalfa', 'Amorita', 36.95781, -98.26934, ST_GeomFromText('POINT(36.95781 -98.26934)', 4326), 37.16984, -98.4434, '1978-10-13', '2010-11-26', NULL, NULL, NULL),
  ('470551', 'Little Sandy Creek', 'Stream', 'Oklahoma', 'OK', 'Alfalfa', 'Manchester NW', 36.89187, -98.2214, ST_GeomFromText('POINT(36.89187 -98.2214)', 4326), 37.23839, -98.41235, '1978-10-13', '2010-11-26', NULL, NULL, NULL),
  ('470557', 'Rush Creek', 'Stream', 'Oklahoma', 'OK', 'Alfalfa', 'Manchester NW', 36.97712, -98.21149, ST_GeomFromText('POINT(36.97712 -98.21149)', 4326), 37.0119698, -98.1233982, '1978-10-13', '2010-11-26', NULL, NULL, NULL),
  ('470558', 'Plum Creek', 'Stream', 'Kansas', 'KS', 'Harper', 'Waldron', 37.0630803, -98.2195123, ST_GeomFromText('POINT(37.0630803 -98.2195123)', 4326), 37.1430785, -98.1772887, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470561', 'Beaver Creek', 'Stream', 'Kansas', 'KS', 'Harper', 'Spring', 37.1161341, -98.0553404, ST_GeomFromText('POINT(37.1161341 -98.0553404)', 4326), 37.1664114, -98.1733998, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470562', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Harper', 'Spring', 37.110023, -98.0350619, ST_GeomFromText('POINT(37.110023 -98.0350619)', 4326), 37.3608521, -98.0753404, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470563', 'Cooper Creek', 'Stream', 'Oklahoma', 'OK', 'Grant', 'Manchester', 36.90142, -98.05296, ST_GeomFromText('POINT(36.90142 -98.05296)', 4326), 37.06501, -98.05564, '1978-10-13', '2010-11-26', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470564', 'Hicks Creek', 'Stream', 'Nebraska', 'NE', 'Webster', 'Amboy', 40.07145, -98.42769, ST_GeomFromText('POINT(40.07145 -98.42769)', 4326), 39.98439, -98.47848, '1978-10-13', '2010-11-26', NULL, NULL, NULL),
  ('470570', 'Turkey Gulch', 'Valley', 'Kansas', 'KS', 'Cowley', 'Akron', 37.3499406, -97.0400414, ST_GeomFromText('POINT(37.3499406 -97.0400414)', 4326), 37.3610805, -97.0683672, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470571', 'Crooked Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Akron', 37.306737, -97.042953, ST_GeomFromText('POINT(37.306737 -97.042953)', 4326), 37.367922, -97.095497, '1978-10-13', '2017-07-23', NULL, NULL, NULL),
  ('470582', 'Mitchell Pond', 'Reservoir', 'Kansas', 'KS', 'Seward', 'Sublette SW', 37.3600253, -100.9543459, ST_GeomFromText('POINT(37.3600253 -100.9543459)', 4326), NULL, NULL, '1978-10-13', '2018-07-05', NULL, NULL, NULL),
  ('470589', 'Wildhorse Lake', 'Lake', 'Kansas', 'KS', 'Meade', 'Plains', 37.3580198, -100.6025378, ST_GeomFromText('POINT(37.3580198 -100.6025378)', 4326), NULL, NULL, '1978-10-13', '2024-10-31', NULL, NULL, NULL),
  ('470590', 'Big Springs', 'Spring', 'Kansas', 'KS', 'Meade', 'Missler', 37.2608569, -100.3918137, ST_GeomFromText('POINT(37.2608569 -100.3918137)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470591', 'Hart Draw', 'Valley', 'Kansas', 'KS', 'Meade', 'Missler', 37.2564686, -100.3876489, ST_GeomFromText('POINT(37.2564686 -100.3876489)', 4326), 37.3004959, -100.4190885, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470599', 'Mayberry Lake', 'Reservoir', 'Kansas', 'KS', 'Meade', 'Meade', 37.361135, -100.267088, ST_GeomFromText('POINT(37.361135 -100.267088)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470600', 'Sealock Lake', 'Reservoir', 'Kansas', 'KS', 'Meade', 'Meade', 37.3575239, -100.2537541, ST_GeomFromText('POINT(37.3575239 -100.2537541)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470601', 'Artesian Valley', 'Valley', 'Kansas', 'KS', 'Meade', 'Meade', 37.2975267, -100.3265778, ST_GeomFromText('POINT(37.2975267 -100.3265778)', 4326), 37.3949722, -100.2252444, '1978-10-13', '2017-08-25', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470602', 'McClane Lake', 'Reservoir', 'Kansas', 'KS', 'Meade', 'Fowler SW', 37.3514129, -100.2490318, ST_GeomFromText('POINT(37.3514129 -100.2490318)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470605', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Meade', 'Irish Flats NE', 37.2319686, -100.3607018, ST_GeomFromText('POINT(37.2319686 -100.3607018)', 4326), 37.3839121, -100.519318, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470614', 'Wagon Bed Spring', 'Spring', 'Kansas', 'KS', 'Grant', 'Wagon Bed Spring', 37.3983562, -101.3707193, ST_GeomFromText('POINT(37.3983562 -101.3707193)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470618', 'Ellsaesser Pond', 'Reservoir', 'Kansas', 'KS', 'Haskell', 'Plains NW', 37.462246, -100.7326584, ST_GeomFromText('POINT(37.462246 -100.7326584)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470622', 'Wildhorse Lake', 'Lake', 'Kansas', 'KS', 'Meade', 'Plains NE', 37.387523, -100.5754308, ST_GeomFromText('POINT(37.387523 -100.5754308)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470639', 'Stumpie Arroyo', 'Valley', 'Kansas', 'KS', 'Meade', 'Lake Meade', 37.1333523, -100.3893051, ST_GeomFromText('POINT(37.1333523 -100.3893051)', 4326), 37.21335, -100.514864, '1978-10-13', '2015-09-09', NULL, NULL, NULL),
  ('470640', 'Lake Meade', 'Reservoir', 'Kansas', 'KS', 'Meade', 'Lake Meade', 37.1665751, -100.4342278, ST_GeomFromText('POINT(37.1665751 -100.4342278)', 4326), NULL, NULL, '1984-07-01', '2024-10-31', 'Official', 'Board Decision', '1988-01-01'),
  ('470672', 'Twin Hills', 'Summit', 'Kansas', 'KS', 'Meade', 'Kismet SE', 37.1104705, -100.5972633, ST_GeomFromText('POINT(37.1104705 -100.5972633)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('470674', 'Keefe Canyon', 'Valley', 'Kansas', 'KS', 'Meade', 'Kismet SE', 37.0261602, -100.5863765, ST_GeomFromText('POINT(37.0261602 -100.5863765)', 4326), 37.0505659, -100.5765739, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470675', 'Fox Canyon', 'Valley', 'Kansas', 'KS', 'Meade', 'Kismet SE', 37.0109536, -100.5345975, ST_GeomFromText('POINT(37.0109536 -100.5345975)', 4326), 37.0556955, -100.5567147, '1978-10-13', '2017-08-25', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470676', 'Wolf Canyon', 'Valley', 'Kansas', 'KS', 'Meade', 'Kismet SE', 37.0263242, -100.618969, ST_GeomFromText('POINT(37.0263242 -100.618969)', 4326), 37.0142935, -100.6356057, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470678', 'Shorts Creek', 'Stream', 'Kansas', 'KS', 'Meade', 'Irish Flats', 37.1158586, -100.4120923, ST_GeomFromText('POINT(37.1158586 -100.4120923)', 4326), 37.1772458, -100.510984, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470681', 'Skunkie Arroyo', 'Stream', 'Kansas', 'KS', 'Meade', 'Irish Flats', 37.1244698, -100.3909806, ST_GeomFromText('POINT(37.1244698 -100.3909806)', 4326), 37.0522479, -100.4690386, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470682', 'Irish Flats', 'Flat', 'Kansas', 'KS', 'Meade', 'Irish Flats', 37.0722481, -100.4198703, ST_GeomFromText('POINT(37.0722481 -100.4198703)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470684', 'Remuda Creek', 'Stream', 'Kansas', 'KS', 'Meade', 'Irish Flats NE', 37.0778048, -100.2823662, ST_GeomFromText('POINT(37.0778048 -100.2823662)', 4326), 37.1736363, -100.3351455, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470687', 'Crooked Creek', 'Stream', 'Oklahoma', 'OK', 'Beaver', 'Gate NE', 36.95106, -100.09438, ST_GeomFromText('POINT(36.95106 -100.09438)', 4326), 37.59225, -100.69817, '1978-10-13', '2010-11-26', NULL, NULL, NULL),
  ('470695', 'Brites Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Simmons Creek', 37.4303004, -99.7915174, ST_GeomFromText('POINT(37.4303004 -99.7915174)', 4326), 37.8325177, -99.5140084, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470696', 'Simmons Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Simmons Creek', 37.4322448, -99.7854061, ST_GeomFromText('POINT(37.4322448 -99.7854061)', 4326), 37.4919444, -99.8052778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470697', 'Hargis Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Simmons Creek', 37.4333559, -99.7806838, ST_GeomFromText('POINT(37.4333559 -99.7806838)', 4326), 37.4922222, -99.7830556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470698', 'Clark County State Lake', 'Reservoir', 'Kansas', 'KS', 'Clark', 'Simmons Creek', 37.3855198, -99.781441, ST_GeomFromText('POINT(37.3855198 -99.781441)', 4326), NULL, NULL, '1978-10-13', '2018-06-27', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470702', 'Little Turkey Creek', 'Stream', 'Kansas', 'KS', 'Kiowa', 'Turkey Creek', 37.3903004, -99.5365093, ST_GeomFromText('POINT(37.3903004 -99.5365093)', 4326), 37.485, -99.5652778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470703', 'Turkey Creek', 'Stream', 'Kansas', 'KS', 'Kiowa', 'Turkey Creek', 37.3903004, -99.5365093, ST_GeomFromText('POINT(37.3903004 -99.5365093)', 4326), 37.4933333, -99.5419444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470704', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Kiowa', 'Turkey Creek', 37.3750228, -99.5240089, ST_GeomFromText('POINT(37.3750228 -99.5240089)', 4326), 37.4888889, -99.5194444, '1978-10-13', NULL, 'Official', 'Board Decision', '1975-01-01'),
  ('470705', 'North Branch Medicine Lodge River', 'Stream', 'Kansas', 'KS', 'Kiowa', 'Iron Mountain', 37.4486318, -99.2001099, ST_GeomFromText('POINT(37.4486318 -99.2001099)', 4326), 37.5355749, -99.2776125, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470706', 'South Branch Medicine Lodge River', 'Stream', 'Kansas', 'KS', 'Kiowa', 'Iron Mountain', 37.4397431, -99.1801092, ST_GeomFromText('POINT(37.4397431 -99.1801092)', 4326), 37.3938889, -99.2188889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470708', 'Iron Mountain', 'Summit', 'Kansas', 'KS', 'Kiowa', 'Iron Mountain', 37.4356502, -99.1797145, ST_GeomFromText('POINT(37.4356502 -99.1797145)', 4326), NULL, NULL, '1978-10-13', '2021-01-01', NULL, NULL, NULL),
  ('470709', 'Otter Creek', 'Stream', 'Kansas', 'KS', 'Kiowa', 'Belvidere', 37.4330767, -99.1178849, ST_GeomFromText('POINT(37.4330767 -99.1178849)', 4326), 37.3939107, -99.1612198, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470710', 'Thompson Branch', 'Stream', 'Kansas', 'KS', 'Kiowa', 'Belvidere', 37.4647427, -99.1114957, ST_GeomFromText('POINT(37.4647427 -99.1114957)', 4326), 37.5036309, -99.1101066, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470711', 'Thompson Creek', 'Stream', 'Kansas', 'KS', 'Kiowa', 'Belvidere', 37.4489097, -99.109829, ST_GeomFromText('POINT(37.4489097 -99.109829)', 4326), 37.5494634, -99.1951097, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470712', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Kiowa', 'Belvidere', 37.4602985, -99.0712165, ST_GeomFromText('POINT(37.4602985 -99.0712165)', 4326), 37.6041852, -99.078161, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470713', 'Soldier Creek', 'Stream', 'Kansas', 'KS', 'Kiowa', 'Belvidere', 37.4369656, -99.0373265, ST_GeomFromText('POINT(37.4369656 -99.0373265)', 4326), 37.6086296, -99.0398262, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470716', 'Walker Draw', 'Valley', 'Kansas', 'KS', 'Kiowa', 'Belvidere', 37.417934, -99.0241991, ST_GeomFromText('POINT(37.417934 -99.0241991)', 4326), 37.4014762, -99.0716973, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470718', 'West Indian Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Fowler SE', 37.274192, -100.0351366, ST_GeomFromText('POINT(37.274192 -100.0351366)', 4326), 37.3366667, -100.0280556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470719', 'East Indian Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Fowler SE', 37.274192, -100.0351366, ST_GeomFromText('POINT(37.274192 -100.0351366)', 4326), 37.3483333, -100.0125, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470722', 'Dugout Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Coldwater', 37.3047457, -99.3051134, ST_GeomFromText('POINT(37.3047457 -99.3051134)', 4326), 37.2758583, -99.7592944, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470723', 'Hackberry Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Mount Jesus', 37.3341908, -99.7448494, ST_GeomFromText('POINT(37.3341908 -99.7448494)', 4326), 37.3625237, -99.8462415, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470724', 'Cat Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Mount Jesus', 37.3222463, -99.7029037, ST_GeomFromText('POINT(37.3222463 -99.7029037)', 4326), 37.4378003, -99.7334601, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470725', 'Fish Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Mount Jesus', 37.3025243, -99.6559578, ST_GeomFromText('POINT(37.3025243 -99.6559578)', 4326), 37.4591887, -99.7092926, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470726', 'Granger Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Mount Jesus', 37.3019687, -99.6512353, ST_GeomFromText('POINT(37.3019687 -99.6512353)', 4326), 37.4552997, -99.654013, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470727', 'Mount Lookout', 'Summit', 'Kansas', 'KS', 'Clark', 'Mount Jesus', 37.2766996, -99.6820444, ST_GeomFromText('POINT(37.2766996 -99.6820444)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470728', 'Mount Jesus', 'Summit', 'Kansas', 'KS', 'Clark', 'Mount Jesus', 37.2652964, -99.6920615, ST_GeomFromText('POINT(37.2652964 -99.6920615)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('470729', 'Cavalry Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'Lexington', 37.2653025, -99.5434542, ST_GeomFromText('POINT(37.2653025 -99.5434542)', 4326), 37.3828006, -99.5709549, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470730', 'Nichols Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'Lexington', 37.265858, -99.542343, ST_GeomFromText('POINT(37.265858 -99.542343)', 4326), 37.3688889, -99.5397222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470732', 'Lone Tree Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Lexington', 37.2816912, -99.6051228, ST_GeomFromText('POINT(37.2816912 -99.6051228)', 4326), 37.3975227, -99.6156786, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470734', 'Wiggins Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'East Kiowa Creek South', 37.3691894, -99.4534513, ST_GeomFromText('POINT(37.3691894 -99.4534513)', 4326), 37.4972427, -99.4656737, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470735', 'Middle Kiowa Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'East Kiowa Creek South', 37.3516898, -99.4851189, ST_GeomFromText('POINT(37.3516898 -99.4851189)', 4326), 37.500854, -99.5167864, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470736', 'West Kiowa Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'East Kiowa Creek South', 37.3278013, -99.4753964, ST_GeomFromText('POINT(37.3278013 -99.4753964)', 4326), 37.4625218, -99.6504018, '1978-10-13', NULL, 'Official', 'Board Decision', '1975-01-01'),
  ('470737', 'East Kiowa Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'East Kiowa Creek South', 37.319468, -99.4753964, ST_GeomFromText('POINT(37.319468 -99.4753964)', 4326), 37.4889095, -99.4337282, '1978-10-13', NULL, 'Official', 'Board Decision', '1975-01-01'),
  ('470743', 'Snooks Hollow', 'Valley', 'Kansas', 'KS', 'Comanche', 'Wilmore', 37.3186819, -99.1634362, ST_GeomFromText('POINT(37.3186819 -99.1634362)', 4326), 37.3575169, -99.1733051, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470744', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'Wilmore SE', 37.3191901, -99.1242745, ST_GeomFromText('POINT(37.3191901 -99.1242745)', 4326), 37.3897441, -99.1617754, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470746', 'Jim Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'Wilmore SE', 37.320579, -99.1153853, ST_GeomFromText('POINT(37.320579 -99.1153853)', 4326), 37.3803, -99.1278854, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470749', 'Dunlap Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'Wilmore SE', 37.3158568, -99.0881622, ST_GeomFromText('POINT(37.3158568 -99.0881622)', 4326), 37.3663889, -99.0983333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470750', 'Skelton Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'Wilmore SE', 37.3130792, -99.0778841, ST_GeomFromText('POINT(37.3130792 -99.0778841)', 4326), 37.3605556, -99.0691667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470751', 'Widow Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'Wilmore SE', 37.2919685, -99.0617726, ST_GeomFromText('POINT(37.2919685 -99.0617726)', 4326), 37.3458333, -99.0475, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470752', 'Walnut Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'Wilmore SE', 37.2750245, -99.0389942, ST_GeomFromText('POINT(37.2750245 -99.0389942)', 4326), 37.3252778, -99.0255556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470753', 'Baker Canyon', 'Valley', 'Kansas', 'KS', 'Comanche', 'Wilmore SE', 37.3129896, -99.0963078, ST_GeomFromText('POINT(37.3129896 -99.0963078)', 4326), 37.2905918, -99.1323173, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470754', 'Horse Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'Wilmore SE', 37.2700246, -99.0395499, ST_GeomFromText('POINT(37.2700246 -99.0395499)', 4326), 37.2763889, -99.1238889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470756', 'Proffitt Lake', 'Lake', 'Kansas', 'KS', 'Clark', 'Proffitt Lake', 37.200685, -100.0535602, ST_GeomFromText('POINT(37.200685 -100.0535602)', 4326), NULL, NULL, '1978-10-13', '2024-10-31', NULL, NULL, NULL),
  ('470757', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Proffitt Lake', 37.1722489, -100.0754157, ST_GeomFromText('POINT(37.1722489 -100.0754157)', 4326), 37.2622468, -100.2776438, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470758', 'Johns Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Proffitt Lake', 37.1855822, -100.0393036, ST_GeomFromText('POINT(37.1855822 -100.0393036)', 4326), 37.3719681, -100.0773598, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470759', 'Gyp Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Proffitt Lake', 37.167249, -100.0656933, ST_GeomFromText('POINT(37.167249 -100.0656933)', 4326), 37.369746, -100.1109721, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470760', 'Indian Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Proffitt Lake', 37.1553048, -100.0451371, ST_GeomFromText('POINT(37.1553048 -100.0451371)', 4326), 37.2744697, -100.0354144, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470761', 'Beckys Knob', 'Summit', 'Kansas', 'KS', 'Clark', 'Ashland NW', 37.2069643, -99.8976237, ST_GeomFromText('POINT(37.2069643 -99.8976237)', 4326), NULL, NULL, '1978-10-13', '2021-01-01', NULL, NULL, NULL),
  ('470765', 'Mount Casino', 'Summit', 'Kansas', 'KS', 'Clark', 'Ashland', 37.2290152, -99.7583464, ST_GeomFromText('POINT(37.2290152 -99.7583464)', 4326), NULL, NULL, '1978-10-13', '2021-01-01', NULL, NULL, NULL),
  ('470767', 'West Branch Bear Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Ashland', 37.1883598, -99.7601277, ST_GeomFromText('POINT(37.1883598 -99.7601277)', 4326), 37.357246, -99.870409, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470768', 'East Branch Bear Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Ashland', 37.1883598, -99.7601277, ST_GeomFromText('POINT(37.1883598 -99.7601277)', 4326), 37.3228021, -99.828741, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470771', 'Redhole Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Ashland', 37.1369719, -99.7709613, ST_GeomFromText('POINT(37.1369719 -99.7709613)', 4326), 37.2286111, -99.8394444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470772', 'Casino Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Ashland', 37.2072484, -99.76235, ST_GeomFromText('POINT(37.2072484 -99.76235)', 4326), 37.2633584, -99.7565165, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470774', 'Sugarloaf', 'Summit', 'Kansas', 'KS', 'Clark', 'Sugarloaf', 37.1771054, -99.5868658, ST_GeomFromText('POINT(37.1771054 -99.5868658)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('470781', 'Buzzard Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'Sugarloaf', 37.2250253, -99.5012304, ST_GeomFromText('POINT(37.2250253 -99.5012304)', 4326), 37.3425234, -99.5220645, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470782', 'Kiowa Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'Protection', 37.1791926, -99.472618, ST_GeomFromText('POINT(37.1791926 -99.472618)', 4326), 37.3278013, -99.4753964, '1978-10-13', NULL, 'Official', 'Board Decision', '1975-01-01'),
  ('470785', 'Lake Coldwater', 'Reservoir', 'Kansas', 'KS', 'Comanche', 'Protection NE', 37.2489509, -99.3484891, ST_GeomFromText('POINT(37.2489509 -99.3484891)', 4326), NULL, NULL, '1978-10-13', '2024-10-31', NULL, NULL, NULL),
  ('470788', 'West Branch Nescatunga Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'Nescatunga Creek North', 37.1619703, -99.2070542, ST_GeomFromText('POINT(37.1619703 -99.2070542)', 4326), 37.3000235, -99.2837239, '1978-10-13', NULL, 'Official', 'Board Decision', '1975-01-01'),
  ('470789', 'East Branch Nescatunga Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'Nescatunga Creek North', 37.1750256, -99.2128878, ST_GeomFromText('POINT(37.1750256 -99.2128878)', 4326), 37.2972458, -99.2142773, '1978-10-13', NULL, 'Official', 'Board Decision', '1975-01-01'),
  ('470790', 'Owl Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'Indian Creek', 37.1630821, -99.047049, ST_GeomFromText('POINT(37.1630821 -99.047049)', 4326), 37.2144444, -99.1180556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470791', 'Little Sandy Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Ashland SE', 37.0614178, -99.806518, ST_GeomFromText('POINT(37.0614178 -99.806518)', 4326), 37.3550239, -99.9184661, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470794', 'Mount Helen', 'Summit', 'Kansas', 'KS', 'Clark', 'Mount Helen', 37.0228005, -100.0287393, ST_GeomFromText('POINT(37.0228005 -100.0287393)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('470795', 'Twomile Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Proffitt Lake', 37.1266943, -100.0101361, ST_GeomFromText('POINT(37.1266943 -100.0101361)', 4326), 37.1383601, -100.1554181, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470797', 'Wells Reservoir', 'Reservoir', 'Kansas', 'KS', 'Clark', 'Mount Helen', 37.0262548, -100.0125401, ST_GeomFromText('POINT(37.0262548 -100.0125401)', 4326), NULL, NULL, '1978-10-13', '2018-06-27', NULL, NULL, NULL),
  ('470798', 'Perry Lake', 'Lake', 'Kansas', 'KS', 'Clark', 'Englewood', 37.02861, -99.99184, ST_GeomFromText('POINT(37.02861 -99.99184)', 4326), NULL, NULL, '1978-10-13', '2024-10-31', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470801', 'Blue Hole', 'Reservoir', 'Kansas', 'KS', 'Clark', 'Ashland NW', 37.1886378, -99.9190219, ST_GeomFromText('POINT(37.1886378 -99.9190219)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470802', 'Antelope Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Englewood', 37.0939171, -99.9104106, ST_GeomFromText('POINT(37.0939171 -99.9104106)', 4326), 37.246137, -99.9834685, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470803', 'Fivemile Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Englewood', 37.0275291, -99.9662459, ST_GeomFromText('POINT(37.0275291 -99.9662459)', 4326), 37.107527, -100.2065307, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470805', 'Clark Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Ashland SE', 37.0375294, -99.7654054, ST_GeomFromText('POINT(37.0375294 -99.7654054)', 4326), 36.9547527, -99.7556819, '1979-12-18', '2010-11-22', NULL, NULL, NULL),
  ('470806', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Ashland SE', 37.097806, -99.7562385, ST_GeomFromText('POINT(37.097806 -99.7562385)', 4326), 37.1858598, -99.7426271, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470807', 'Keiger Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Ashland SE', 37.068362, -99.8181851, ST_GeomFromText('POINT(37.068362 -99.8181851)', 4326), 37.3578017, -99.9529116, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470808', 'Stink Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Ashland SE', 37.0444736, -99.7870729, ST_GeomFromText('POINT(37.0444736 -99.7870729)', 4326), 37.0052778, -99.8661111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470809', 'Bullard Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Ashland SE', 37.0625288, -99.8112403, ST_GeomFromText('POINT(37.0625288 -99.8112403)', 4326), 36.9728074, -100.0204141, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470811', 'Redoubt Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Ashland SE', 37.0039189, -99.77235, ST_GeomFromText('POINT(37.0039189 -99.77235)', 4326), 36.9278082, -99.8884643, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470812', 'Big Sandy Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Ashland SE', 37.0419737, -99.7626275, ST_GeomFromText('POINT(37.0419737 -99.7626275)', 4326), 37.203915, -100.1023609, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470814', 'Bear Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Sitka SW', 37.0547511, -99.7140146, ST_GeomFromText('POINT(37.0547511 -99.7140146)', 4326), 37.1886376, -99.7604055, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470815', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Sitka SW', 37.0761393, -99.6456789, ST_GeomFromText('POINT(37.0761393 -99.6456789)', 4326), 37.1697489, -99.708737, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470817', 'Trout', 'Stream', 'Kansas', 'KS', 'Clark', 'Trout Creek', 37.0539171, -99.5462307, ST_GeomFromText('POINT(37.0539171 -99.5462307)', 4326), 37.015, -99.5855556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470818', 'Cave Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'Fancy Canyon', 37.0653062, -98.9751002, ST_GeomFromText('POINT(37.0653062 -98.9751002)', 4326), 37.0189179, -99.0506583, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470819', 'Day Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Trout Creek', 37.0675282, -99.6142888, ST_GeomFromText('POINT(37.0675282 -99.6142888)', 4326), 37.2708582, -99.6795697, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470820', 'Snake Creek', 'Stream', 'Kansas', 'KS', 'Clark', 'Trout Creek', 37.0625283, -99.6076219, ST_GeomFromText('POINT(37.0625283 -99.6076219)', 4326), 36.8964199, -99.7604033, '1978-10-13', '2010-12-10', NULL, NULL, NULL),
  ('470821', 'Willow Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'Trout Creek', 37.0369728, -99.53123, ST_GeomFromText('POINT(37.0369728 -99.53123)', 4326), 36.9172527, -99.6612331, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470823', 'Bluff Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'Protection SW', 37.0253061, -99.4712279, ST_GeomFromText('POINT(37.0253061 -99.4712279)', 4326), 37.5097436, -99.993468, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470824', 'Cavalry Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'Protection SW', 37.0680833, -99.4956734, ST_GeomFromText('POINT(37.0680833 -99.4956734)', 4326), 37.4105773, -99.3667819, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470828', 'Sheele Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'Fancy Canyon', 37.0864165, -99.097883, ST_GeomFromText('POINT(37.0864165 -99.097883)', 4326), 37.0244723, -99.3273346, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470830', 'West Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'Protection SW', 37.00012, -99.41769, ST_GeomFromText('POINT(37.00012 -99.41769)', 4326), 37.10157, -99.366145, '1978-10-13', '2010-11-26', NULL, NULL, NULL),
  ('470831', 'Keno Creek', 'Stream', 'Oklahoma', 'OK', 'Woods', 'Selman SE', 36.86028, -99.31778, ST_GeomFromText('POINT(36.86028 -99.31778)', 4326), 37.00194, -99.29222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470832', 'Anderson Creek', 'Stream', 'Oklahoma', 'OK', 'Woods', 'Selman NW', 36.92639, -99.39778, ST_GeomFromText('POINT(36.92639 -99.39778)', 4326), 37.0375, -99.3375, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470833', 'Cristy Canyon', 'Valley', 'Kansas', 'KS', 'Comanche', 'Nescatunga Creek South', 37.0833398, -99.1311363, ST_GeomFromText('POINT(37.0833398 -99.1311363)', 4326), 37.0316289, -99.13493, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470834', 'Nescatunga Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'Nescatunga Creek South', 37.0875273, -99.1378844, ST_GeomFromText('POINT(37.0875273 -99.1378844)', 4326), 37.2958569, -99.242056, '1978-10-13', NULL, 'Official', 'Board Decision', '1975-01-01'),
  ('470835', 'Cottonwood Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'Nescatunga Creek South', 37.0944713, -99.2003867, ST_GeomFromText('POINT(37.0944713 -99.2003867)', 4326), 36.992806, -99.2373314, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470836', 'Mustang Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'Nescatunga Creek South', 37.0889163, -99.1295509, ST_GeomFromText('POINT(37.0889163 -99.1295509)', 4326), 36.9728065, -99.1931629, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470837', 'Fancy Canyon', 'Valley', 'Kansas', 'KS', 'Comanche', 'Fancy Canyon', 37.0841773, -99.1139889, ST_GeomFromText('POINT(37.0841773 -99.1139889)', 4326), 37.0498907, -99.1170953, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470838', 'Indian Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'Fancy Canyon', 37.119194, -99.038437, ST_GeomFromText('POINT(37.119194 -99.038437)', 4326), 37.2869683, -99.1559423, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470839', 'Dog Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'Fancy Canyon', 37.1186382, -99.0764938, ST_GeomFromText('POINT(37.1186382 -99.0764938)', 4326), 37.1772482, -99.100662, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470840', 'Wildcat Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'Fancy Canyon', 37.1175271, -99.089272, ST_GeomFromText('POINT(37.1175271 -99.089272)', 4326), 37.2261362, -99.1345526, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470841', 'Cave Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'Fancy Canyon', 37.1155827, -99.0939943, ST_GeomFromText('POINT(37.1155827 -99.0939943)', 4326), 37.1811369, -99.1378855, '1978-10-13', NULL, 'Official', 'Board Decision', '1975-01-01'),
  ('470844', 'Wilson Canyon', 'Valley', 'Nebraska', 'NE', 'Dundy', 'Haigler', 40.0105239, -101.8813873, ST_GeomFromText('POINT(40.0105239 -101.8813873)', 4326), 39.9856699, -101.8637065, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470845', 'Colter Canyon', 'Valley', 'Nebraska', 'NE', 'Dundy', 'Rock Creek Lake', 40.0266022, -101.8287404, ST_GeomFromText('POINT(40.0266022 -101.8287404)', 4326), 40.0006628, -101.8139545, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470847', 'Big Timber Creek', 'Stream', 'Nebraska', 'NE', 'Dundy', 'Benkelman', 40.01795, -101.52846, ST_GeomFromText('POINT(40.01795 -101.52846)', 4326), 39.77995, -101.57766, '1978-10-13', '2010-11-26', NULL, NULL, NULL),
  ('470848', 'Elm Creek', 'Stream', 'Nebraska', 'NE', 'Hitchcock', 'Culbertson SE', 40.0936135, -100.7868216, ST_GeomFromText('POINT(40.0936135 -100.7868216)', 4326), 39.993364, -100.834107, '1978-10-13', '2010-11-26', NULL, NULL, NULL),
  ('470850', 'McCann Canyon', 'Valley', 'Nebraska', 'NE', 'Dundy', 'Haigler', 40.0154539, -101.9553968, ST_GeomFromText('POINT(40.0154539 -101.9553968)', 4326), 39.9616376, -101.954493, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470851', 'Devils Canyon', 'Valley', 'Kansas', 'KS', 'Cheyenne', 'Willow Creek Ranch', 39.9903418, -102.0165202, ST_GeomFromText('POINT(39.9903418 -102.0165202)', 4326), 39.943053, -101.9940185, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470852', 'Gilmore Canyon', 'Valley', 'Nebraska', 'NE', 'Dundy', 'Haigler', 40.0175468, -101.9282047, ST_GeomFromText('POINT(40.0175468 -101.9282047)', 4326), 39.9766941, -101.9305538, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470853', 'Carroll Canyon', 'Valley', 'Nebraska', 'NE', 'Dundy', 'Haigler', 40.0193884, -101.9240339, ST_GeomFromText('POINT(40.0193884 -101.9240339)', 4326), 39.9604806, -101.9169508, '1978-10-13', '2017-08-25', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470854', 'Sand Canyon', 'Valley', 'Nebraska', 'NE', 'Dundy', 'Haigler', 40.0237357, -101.8834181, ST_GeomFromText('POINT(40.0237357 -101.8834181)', 4326), 39.9678951, -101.8771246, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470857', 'Hackberry Creek', 'Stream', 'Kansas', 'KS', 'Cheyenne', 'Heinzelman Canyon', 39.9099932, -101.7037826, ST_GeomFromText('POINT(39.9099932 -101.7037826)', 4326), 39.8955472, -101.9807386, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470858', 'Trail Canyon', 'Valley', 'Nebraska', 'NE', 'Dundy', 'Rock Creek Lake', 40.025554, -101.857852, ST_GeomFromText('POINT(40.025554 -101.857852)', 4326), 39.9747623, -101.8475141, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470859', 'Jackson Canyon', 'Valley', 'Nebraska', 'NE', 'Dundy', 'Rock Creek Lake', 40.0089567, -101.8218099, ST_GeomFromText('POINT(40.0089567 -101.8218099)', 4326), 39.977349, -101.828928, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470860', 'Hay Canyon', 'Valley', 'Nebraska', 'NE', 'Dundy', 'Rock Creek Lake', 40.0248577, -101.7532659, ST_GeomFromText('POINT(40.0248577 -101.7532659)', 4326), 39.9695597, -101.8000061, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470861', 'Patterson Canyon', 'Valley', 'Nebraska', 'NE', 'Dundy', 'Rock Creek Lake', 40.006731, -101.7719177, ST_GeomFromText('POINT(40.006731 -101.7719177)', 4326), 39.980408, -101.7586877, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470862', 'White Canyon', 'Valley', 'Kansas', 'KS', 'Cheyenne', 'White Canyon', 39.9942803, -101.7869655, ST_GeomFromText('POINT(39.9942803 -101.7869655)', 4326), 39.9927777, -101.813593, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470863', 'Schwyhart Canyon', 'Valley', 'Kansas', 'KS', 'Cheyenne', 'White Canyon', 39.9961653, -101.7826056, ST_GeomFromText('POINT(39.9961653 -101.7826056)', 4326), 39.9777424, -101.7743123, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470865', 'Cleveland Run', 'Stream', 'Kansas', 'KS', 'Cheyenne', 'Wheeler', 39.8516595, -101.7448949, ST_GeomFromText('POINT(39.8516595 -101.7448949)', 4326), 39.8927702, -101.8212871, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470866', 'Delay Creek', 'Stream', 'Kansas', 'KS', 'Cheyenne', 'Heinzelman Canyon', 39.9324937, -101.6610036, ST_GeomFromText('POINT(39.9324937 -101.6610036)', 4326), 39.8583274, -101.6332248, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470867', 'Hells Canyon', 'Valley', 'Kansas', 'KS', 'Cheyenne', 'Heinzelman Canyon', 39.9104414, -101.7057085, ST_GeomFromText('POINT(39.9104414 -101.7057085)', 4326), 39.9632483, -101.7435455, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470868', 'Dave Harvey Canyon', 'Valley', 'Kansas', 'KS', 'Cheyenne', 'Heinzelman Canyon', 39.9298039, -101.6838375, ST_GeomFromText('POINT(39.9298039 -101.6838375)', 4326), 39.9736441, -101.7330702, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470869', 'Arnold Harvey Canyon', 'Valley', 'Kansas', 'KS', 'Cheyenne', 'Heinzelman Canyon', 39.934709, -101.678217, ST_GeomFromText('POINT(39.934709 -101.678217)', 4326), 39.9625868, -101.7029591, '1978-10-13', '2015-09-09', NULL, NULL, NULL),
  ('470871', 'Heinzelman Canyon', 'Valley', 'Kansas', 'KS', 'Cheyenne', 'Heinzelman Canyon', 39.9446952, -101.652004, ST_GeomFromText('POINT(39.9446952 -101.652004)', 4326), 39.9823026, -101.7026022, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470872', 'Morehouse Canyon', 'Valley', 'Kansas', 'KS', 'Cheyenne', 'Heinzelman Canyon', 39.9466538, -101.6482161, ST_GeomFromText('POINT(39.9466538 -101.6482161)', 4326), 39.9788028, -101.6799846, '1978-10-13', '2015-09-09', NULL, NULL, NULL),
  ('470873', 'Pigg Canyon', 'Valley', 'Kansas', 'KS', 'Cheyenne', 'Heinzelman Canyon', 39.9553899, -101.6336471, ST_GeomFromText('POINT(39.9553899 -101.6336471)', 4326), 39.9791977, -101.6582374, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470874', 'Magnani Canyon', 'Valley', 'Kansas', 'KS', 'Cheyenne', 'Heinzelman Canyon', 39.9604383, -101.6268786, ST_GeomFromText('POINT(39.9604383 -101.6268786)', 4326), 39.9786692, -101.6482437, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470875', 'Will Stafford Canyon', 'Valley', 'Nebraska', 'NE', 'Dundy', 'Parks', 40.0302264, -101.7008616, ST_GeomFromText('POINT(40.0302264 -101.7008616)', 4326), 39.9803771, -101.7165506, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470876', 'Barlett Canyon', 'Valley', 'Nebraska', 'NE', 'Dundy', 'Parks', 40.0113118, -101.7039765, ST_GeomFromText('POINT(40.0113118 -101.7039765)', 4326), 39.9881618, -101.6966843, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470878', 'Jarvis Canyon', 'Valley', 'Nebraska', 'NE', 'Dundy', 'Parks', 40.0273578, -101.684851, ST_GeomFromText('POINT(40.0273578 -101.684851)', 4326), 39.9935259, -101.6868039, '1978-10-13', '2020-04-08', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470881', 'Nesbit Creek', 'Stream', 'Nebraska', 'NE', 'Dundy', 'Parks', 40.02855, -101.68484, ST_GeomFromText('POINT(40.02855 -101.68484)', 4326), 39.99356, -101.68684, '1978-10-13', '2010-11-26', NULL, NULL, NULL),
  ('470883', 'Devils Canyon', 'Valley', 'Kansas', 'KS', 'Cheyenne', 'Henkle Canyon', 39.9497884, -101.6167113, ST_GeomFromText('POINT(39.9497884 -101.6167113)', 4326), 39.8939038, -101.5950895, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470884', 'Sleepy Canyon', 'Valley', 'Kansas', 'KS', 'Cheyenne', 'Henkle Canyon', 39.9628792, -101.5935521, ST_GeomFromText('POINT(39.9628792 -101.5935521)', 4326), 39.9000347, -101.58882, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470885', 'Henkle Canyon', 'Valley', 'Kansas', 'KS', 'Cheyenne', 'Henkle Canyon', 39.9832885, -101.5696587, ST_GeomFromText('POINT(39.9832885 -101.5696587)', 4326), 39.9161051, -101.5601074, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470886', 'Wolfe Canyon', 'Valley', 'Kansas', 'KS', 'Cheyenne', 'Henkle Canyon', 39.891999, -101.5404751, ST_GeomFromText('POINT(39.891999 -101.5404751)', 4326), 39.8227583, -101.5281454, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470887', 'Sawyer Canyon', 'Valley', 'Kansas', 'KS', 'Cheyenne', 'Henkle Canyon', 39.8985651, -101.5320203, ST_GeomFromText('POINT(39.8985651 -101.5320203)', 4326), 39.8425622, -101.5059324, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470888', 'Jones Canyon', 'Valley', 'Nebraska', 'NE', 'Dundy', 'Max', 40.0507929, -101.4883444, ST_GeomFromText('POINT(40.0507929 -101.4883444)', 4326), 39.9068286, -101.4382018, '1978-10-13', '2016-01-27', NULL, NULL, NULL),
  ('470890', 'East Fork Burntwood Creek', 'Stream', 'Kansas', 'KS', 'Rawlins', 'McDonald NW', 39.9911083, -101.3565516, ST_GeomFromText('POINT(39.9911083 -101.3565516)', 4326), 39.8877744, -101.4021077, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470891', 'West Fork Burntwood Creek', 'Stream', 'Kansas', 'KS', 'Rawlins', 'McDonald NE', 39.9911083, -101.3565516, ST_GeomFromText('POINT(39.9911083 -101.3565516)', 4326), 39.9374965, -101.4146081, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470892', 'Burntwood Creek', 'Stream', 'Nebraska', 'NE', 'Hitchcock', 'Max SE', 40.1149962, -101.2879406, ST_GeomFromText('POINT(40.1149962 -101.2879406)', 4326), 39.99121, -101.35641, '1978-10-13', '2010-11-26', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470896', 'North Fork Driftwood Creek', 'Stream', 'Nebraska', 'NE', 'Hitchcock', 'Culbertson SW', 40.037, -100.92685, ST_GeomFromText('POINT(40.037 -100.92685)', 4326), 39.9133309, -101.3134951, '1978-10-13', '2010-12-15', NULL, NULL, NULL),
  ('470897', 'South Fork Driftwood Creek', 'Stream', 'Nebraska', 'NE', 'Hitchcock', 'Culbertson SW', 40.0369463, -100.9268239, ST_GeomFromText('POINT(40.0369463 -100.9268239)', 4326), 39.90932, -101.17507, '1978-10-13', '2010-12-15', NULL, NULL, NULL),
  ('470903', 'Wildhorse Canyon', 'Valley', 'Nebraska', 'NE', 'Hitchcock', 'Trenton SE', 40.0384821, -101.0013901, ST_GeomFromText('POINT(40.0384821 -101.0013901)', 4326), 39.9833476, -101.1099613, '1978-10-13', '2015-09-09', NULL, NULL, NULL),
  ('470916', 'Tipton Canyon', 'Valley', 'Nebraska', 'NE', 'Hitchcock', 'Culbertson SE', 40.0862501, -100.8453636, ST_GeomFromText('POINT(40.0862501 -100.8453636)', 4326), 39.9901226, -100.8425538, '1978-10-13', '2018-07-21', NULL, NULL, NULL),
  ('470928', 'Rock Draw', 'Valley', 'Kansas', 'KS', 'Decatur', 'Kanona', 39.870596, -100.4445682, ST_GeomFromText('POINT(39.870596 -100.4445682)', 4326), 39.9376048, -100.5280941, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470941', 'Long Branch', 'Stream', 'Kansas', 'KS', 'Norton', 'Lyle', 39.9736167, -100.1445793, ST_GeomFromText('POINT(39.9736167 -100.1445793)', 4326), 39.8200049, -100.3109737, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470942', 'Spring Branch', 'Stream', 'Kansas', 'KS', 'Decatur', 'Lyle', 39.9547276, -100.2412503, ST_GeomFromText('POINT(39.9547276 -100.2412503)', 4326), 39.8913889, -100.2402778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470949', 'Rock Branch', 'Stream', 'Kansas', 'KS', 'Norton', 'Devizes', 39.9855613, -100.0790206, ST_GeomFromText('POINT(39.9855613 -100.0790206)', 4326), 39.8813889, -100.0797222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470951', 'Walnut Creek', 'Stream', 'Kansas', 'KS', 'Norton', 'Devizes', 39.9861169, -100.0251292, ST_GeomFromText('POINT(39.9861169 -100.0251292)', 4326), 39.8852778, -100.0291667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470952', 'Horseshoe Branch', 'Stream', 'Kansas', 'KS', 'Norton', 'Devizes', 39.984728, -100.0529083, ST_GeomFromText('POINT(39.984728 -100.0529083)', 4326), 39.9341667, -100.0583333, '1978-10-13', '2022-09-08', 'Official', 'Secretarial Order', '2022-09-08');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470954', 'Browns Pond', 'Reservoir', 'Kansas', 'KS', 'Norton', 'Reager', 39.8740296, -100.0416738, ST_GeomFromText('POINT(39.8740296 -100.0416738)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('470955', 'Boy Creek', 'Stream', 'Kansas', 'KS', 'Norton', 'Devizes', 39.9891725, -100.0034616, ST_GeomFromText('POINT(39.9891725 -100.0034616)', 4326), 39.8972278, -99.9823491, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470956', 'Wildcat Creek', 'Stream', 'Kansas', 'KS', 'Norton', 'Devizes', 39.9991725, -100.0934659, ST_GeomFromText('POINT(39.9991725 -100.0934659)', 4326), 40.0413948, -100.1379126, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470957', 'Clough Valley', 'Valley', 'Kansas', 'KS', 'Cheyenne', 'Armel', 39.8263366, -102.0024134, ST_GeomFromText('POINT(39.8263366 -102.0024134)', 4326), 39.8708822, -102.0377098, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('470965', 'Plum Creek', 'Stream', 'Kansas', 'KS', 'Cheyenne', 'Saint Francis', 39.8505484, -101.7468395, ST_GeomFromText('POINT(39.8505484 -101.7468395)', 4326), 39.8736035, -101.8318431, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470966', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Cheyenne', 'Saint Francis', 39.8194372, -101.7754517, ST_GeomFromText('POINT(39.8194372 -101.7754517)', 4326), 39.8625, -101.8486111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470968', 'Fish Creek', 'Stream', 'Kansas', 'KS', 'Cheyenne', 'Saint Francis', 39.7888817, -101.8032306, ST_GeomFromText('POINT(39.7888817 -101.8032306)', 4326), 39.8508333, -101.8644444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470972', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Cheyenne', 'Saint Francis', 39.8138817, -101.7768406, ST_GeomFromText('POINT(39.8138817 -101.7768406)', 4326), 39.693605, -101.7323946, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470973', 'West Fork Sand Creek', 'Stream', 'Kansas', 'KS', 'Cheyenne', 'Saint Francis', 39.7533262, -101.7510062, ST_GeomFromText('POINT(39.7533262 -101.7510062)', 4326), 39.6586052, -101.7487841, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470974', 'Drury Creek', 'Stream', 'Kansas', 'KS', 'Cheyenne', 'Saint Francis', 39.7527708, -101.8435099, ST_GeomFromText('POINT(39.7527708 -101.8435099)', 4326), 39.6616607, -101.842121, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('470976', 'Valley Creek', 'Stream', 'Kansas', 'KS', 'Cheyenne', 'Wheeler', 39.8452706, -101.7482284, ST_GeomFromText('POINT(39.8452706 -101.7482284)', 4326), 39.7780556, -101.6977778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470977', 'Bluff Creek', 'Stream', 'Kansas', 'KS', 'Cheyenne', 'Wheeler', 39.8972154, -101.7029493, ST_GeomFromText('POINT(39.8972154 -101.7029493)', 4326), 39.8016606, -101.656281, '1978-10-13', NULL, NULL, NULL, NULL),
  ('470984', 'North Beaver Creek', 'Stream', 'Kansas', 'KS', 'Rawlins', 'Atwood', 39.8291669, -101.1162692, ST_GeomFromText('POINT(39.8291669 -101.1162692)', 4326), 39.8083299, -101.4046076, '1978-10-13', NULL, 'Official', 'Board Decision', '1972-01-01'),
  ('470992', 'Atwood Lake', 'Lake', 'Kansas', 'KS', 'Rawlins', 'Atwood', 39.8160731, -101.0418726, ST_GeomFromText('POINT(39.8160731 -101.0418726)', 4326), NULL, NULL, '1978-10-13', '2024-10-31', NULL, NULL, NULL),
  ('471000', 'Lambs Draw', 'Valley', 'Kansas', 'KS', 'Decatur', 'Oberlin SW', 39.7554095, -100.6954099, ST_GeomFromText('POINT(39.7554095 -100.6954099)', 4326), 39.8129618, -100.8101215, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471006', 'North Fork Sappa Creek', 'Stream', 'Kansas', 'KS', 'Decatur', 'Oberlin', 39.7847269, -100.5782018, ST_GeomFromText('POINT(39.7847269 -100.5782018)', 4326), 39.5758328, -101.3007168, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471008', 'Johnson Draw', 'Stream', 'Kansas', 'KS', 'Decatur', 'Kanona', 39.8402832, -100.4979228, ST_GeomFromText('POINT(39.8402832 -100.4979228)', 4326), 39.8594488, -100.6662602, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471012', 'South Fork Sappa Creek', 'Stream', 'Kansas', 'KS', 'Decatur', 'Oberlin', 39.7847269, -100.5782018, ST_GeomFromText('POINT(39.7847269 -100.5782018)', 4326), 39.2566684, -101.702394, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471016', 'Morrison Lake', 'Reservoir', 'Kansas', 'KS', 'Decatur', 'Oberlin', 39.8536163, -100.5345905, ST_GeomFromText('POINT(39.8536163 -100.5345905)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471020', 'Cotton Creek', 'Stream', 'Kansas', 'KS', 'Decatur', 'Kanona', 39.8652832, -100.4445884, ST_GeomFromText('POINT(39.8652832 -100.4445884)', 4326), 39.8227778, -100.4280556, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('471022', 'Big Timber Creek', 'Stream', 'Kansas', 'KS', 'Decatur', 'Clayton', 39.7147265, -100.2429157, ST_GeomFromText('POINT(39.7147265 -100.2429157)', 4326), 39.7338937, -100.5118109, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471023', 'Plum Creek', 'Stream', 'Kansas', 'KS', 'Norton', 'Clayton', 39.7427824, -100.1759685, ST_GeomFromText('POINT(39.7427824 -100.1759685)', 4326), 39.8163938, -100.3037512, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471029', 'Keith Sebelius Lake', 'Reservoir', 'Kansas', 'KS', 'Norton', 'Norton', 39.7971395, -99.9533798, ST_GeomFromText('POINT(39.7971395 -99.9533798)', 4326), NULL, NULL, '1984-07-01', '2018-09-21', NULL, NULL, NULL),
  ('471032', 'Spring Draw', 'Valley', 'Kansas', 'KS', 'Norton', 'Reager', 39.7848967, -100.0340823, ST_GeomFromText('POINT(39.7848967 -100.0340823)', 4326), 39.8468729, -100.0872619, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471035', 'Corder Lake', 'Reservoir', 'Kansas', 'KS', 'Cheyenne', 'Hale Ponds', 39.6579436, -102.0412872, ST_GeomFromText('POINT(39.6579436 -102.0412872)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('471037', 'Cowpe Creek', 'Stream', 'Kansas', 'KS', 'Cheyenne', 'Hale Ponds', 39.6724938, -102.0165721, ST_GeomFromText('POINT(39.6724938 -102.0165721)', 4326), 39.7969367, -102.1187991, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471041', 'Crosby Creek', 'Stream', 'Kansas', 'KS', 'Cheyenne', 'Crosby Creek', 39.7102713, -101.9265687, ST_GeomFromText('POINT(39.7102713 -101.9265687)', 4326), 39.6369444, -101.8866667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471057', 'Long Draw', 'Valley', 'Kansas', 'KS', 'Rawlins', 'Long Draw North', 39.6556378, -100.8942336, ST_GeomFromText('POINT(39.6556378 -100.8942336)', 4326), 39.5972649, -100.9733675, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471069', 'North Fork Prairie Dog Creek', 'Stream', 'Kansas', 'KS', 'Decatur', 'Selden NE', 39.6350044, -100.5165324, ST_GeomFromText('POINT(39.6350044 -100.5165324)', 4326), 39.5347257, -100.8276504, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471082', 'Elk Creek', 'Stream', 'Kansas', 'KS', 'Norton', 'Lenora East', 39.6136155, -99.9945713, ST_GeomFromText('POINT(39.6136155 -99.9945713)', 4326), 39.6541707, -100.2379152, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('471099', 'Middle Fork Sappa Creek', 'Stream', 'Kansas', 'KS', 'Rawlins', 'Achilles', 39.6897255, -100.8462627, ST_GeomFromText('POINT(39.6897255 -100.8462627)', 4326), 39.2811117, -101.8348978, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471115', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Norton', 'Clayton SW', 39.5825039, -100.1556892, ST_GeomFromText('POINT(39.5825039 -100.1556892)', 4326), 39.5341667, -100.1386111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471121', 'Coon Creek', 'Stream', 'Kansas', 'KS', 'Norton', 'Lenora West', 39.593893, -100.0784638, ST_GeomFromText('POINT(39.593893 -100.0784638)', 4326), 39.5644444, -100.08, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471122', 'Marsh Creek', 'Stream', 'Kansas', 'KS', 'Norton', 'Lenora West', 39.5872263, -100.0584629, ST_GeomFromText('POINT(39.5872263 -100.0584629)', 4326), 39.5511111, -100.0525, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471123', 'Horsethief Draw', 'Valley', 'Kansas', 'KS', 'Wallace', 'Horsethief Draw', 39.0487353, -101.9386993, ST_GeomFromText('POINT(39.0487353 -101.9386993)', 4326), 39.0826562, -101.9671393, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471125', 'North Fork Lake Creek', 'Stream', 'Kansas', 'KS', 'Wallace', 'Harris Draw West', 39.0763943, -101.7196157, ST_GeomFromText('POINT(39.0763943 -101.7196157)', 4326), 39.1466698, -101.8948984, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471126', 'Middle Fork Lake Creek', 'Stream', 'Kansas', 'KS', 'Wallace', 'Horsethief Draw SE', 39.0605611, -101.7560055, ST_GeomFromText('POINT(39.0605611 -101.7560055)', 4326), 39.1180589, -101.9504551, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471127', 'South Fork Lake Creek', 'Stream', 'Kansas', 'KS', 'Wallace', 'Harris Draw West', 39.0763943, -101.7196157, ST_GeomFromText('POINT(39.0763943 -101.7196157)', 4326), 39.1075034, -101.9696222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471129', 'Armstrong Draw', 'Valley', 'Kansas', 'KS', 'Wallace', 'Harris Draw West', 39.0907206, -101.7355957, ST_GeomFromText('POINT(39.0907206 -101.7355957)', 4326), 39.118785, -101.7842798, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471130', 'Salt Grass Canyon', 'Valley', 'Kansas', 'KS', 'Wallace', 'Horsethief Draw', 39.0410752, -101.9236934, ST_GeomFromText('POINT(39.0410752 -101.9236934)', 4326), 39.0221173, -101.9313478, '1978-10-13', '2017-08-25', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('471131', 'Meyers Draw', 'Valley', 'Kansas', 'KS', 'Wallace', 'Horsethief Draw', 39.0455683, -101.906598, ST_GeomFromText('POINT(39.0455683 -101.906598)', 4326), 39.0717647, -101.9219337, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471132', 'Big Lagoon', 'Lake', 'Kansas', 'KS', 'Wallace', 'Horsethief Draw', 39.0165511, -101.9846002, ST_GeomFromText('POINT(39.0165511 -101.9846002)', 4326), NULL, NULL, '1978-10-13', '2024-11-01', NULL, NULL, NULL),
  ('471135', 'Turtle Creek', 'Stream', 'Kansas', 'KS', 'Sherman', 'Horsethief Draw NW', 39.1555583, -101.9373995, ST_GeomFromText('POINT(39.1555583 -101.9373995)', 4326), 39.0622247, -102.2215745, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471136', 'Wild Horse Draw', 'Valley', 'Kansas', 'KS', 'Sherman', 'Wild Horse Draw', 39.2010119, -101.7048409, ST_GeomFromText('POINT(39.2010119 -101.7048409)', 4326), 39.2388224, -101.7379466, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471139', 'Kolacny Canyon', 'Valley', 'Kansas', 'KS', 'Wallace', 'Harris Draw West', 39.0761772, -101.6863652, ST_GeomFromText('POINT(39.0761772 -101.6863652)', 4326), 39.1431328, -101.7207885, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471140', 'Blindman Canyon', 'Valley', 'Kansas', 'KS', 'Wallace', 'Harris Draw West', 39.0777742, -101.6973451, ST_GeomFromText('POINT(39.0777742 -101.6973451)', 4326), 39.1244137, -101.7143752, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471141', 'Harris Draw', 'Valley', 'Kansas', 'KS', 'Wallace', 'Harris Draw East', 39.0627466, -101.6148745, ST_GeomFromText('POINT(39.0627466 -101.6148745)', 4326), 39.1216623, -101.6536162, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471142', 'Gardner Draw', 'Valley', 'Kansas', 'KS', 'Wallace', 'Harris Draw East', 39.0652371, -101.5957297, ST_GeomFromText('POINT(39.0652371 -101.5957297)', 4326), 39.1364588, -101.6510071, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471143', 'Ruggles Draw', 'Valley', 'Kansas', 'KS', 'Wallace', 'Harris Draw West', 39.0660573, -101.6949533, ST_GeomFromText('POINT(39.0660573 -101.6949533)', 4326), 39.0356037, -101.7301427, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471144', 'Barrel Spring Draw', 'Valley', 'Kansas', 'KS', 'Wallace', 'Harris Draw West', 39.0639817, -101.6646481, ST_GeomFromText('POINT(39.0639817 -101.6646481)', 4326), 39.034368, -101.6785521, '1978-10-13', '2017-08-25', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('471145', 'Wildcat Canyon', 'Valley', 'Kansas', 'KS', 'Wallace', 'Harris Draw West', 39.0586971, -101.6422864, ST_GeomFromText('POINT(39.0586971 -101.6422864)', 4326), 39.0467801, -101.6530832, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471146', 'Bradshaw Draw', 'Valley', 'Kansas', 'KS', 'Wallace', 'Harris Draw East', 39.0319074, -101.5629674, ST_GeomFromText('POINT(39.0319074 -101.5629674)', 4326), 39.0281771, -101.6501476, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471147', 'Hudkins Draw', 'Valley', 'Kansas', 'KS', 'Wallace', 'Harris Draw East', 39.0255278, -101.5149413, ST_GeomFromText('POINT(39.0255278 -101.5149413)', 4326), 39.0708554, -101.5118673, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471148', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Logan', 'McAllaster', 39.0466744, -101.3840509, ST_GeomFromText('POINT(39.0466744 -101.3840509)', 4326), 39.2175031, -101.6087799, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471149', 'Big Spring', 'Spring', 'Kansas', 'KS', 'Wallace', 'Harris Draw West', 39.0347288, -101.6518358, ST_GeomFromText('POINT(39.0347288 -101.6518358)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471152', 'North Fork Rose Creek', 'Stream', 'Kansas', 'KS', 'Wallace', 'South Flats', 38.829455, -101.6740582, ST_GeomFromText('POINT(38.829455 -101.6740582)', 4326), 38.8338991, -101.7626714, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471153', 'Rock Hill', 'Summit', 'Kansas', 'KS', 'Wallace', 'Weskan', 38.7899696, -101.9717435, ST_GeomFromText('POINT(38.7899696 -101.9717435)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('471154', 'Eagletail Creek', 'Stream', 'Kansas', 'KS', 'Wallace', 'Sharon Springs East', 38.8997313, -101.6954477, ST_GeomFromText('POINT(38.8997313 -101.6954477)', 4326), 38.8688969, -101.9573985, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471158', 'Old Maid Pool', 'Lake', 'Kansas', 'KS', 'Wallace', 'Sharon Springs West', 38.9870329, -101.7971582, ST_GeomFromText('POINT(38.9870329 -101.7971582)', 4326), NULL, NULL, '1978-10-13', '2024-10-31', NULL, NULL, NULL),
  ('471159', 'Rattle Snake Gulch', 'Valley', 'Kansas', 'KS', 'Wallace', 'Sharon Springs West', 38.9551757, -101.7946177, ST_GeomFromText('POINT(38.9551757 -101.7946177)', 4326), 38.9877467, -101.9304674, '1978-10-13', '2017-08-25', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('471160', 'Goose Creek', 'Stream', 'Kansas', 'KS', 'Wallace', 'Sharon Springs West', 38.938983, -101.7531, ST_GeomFromText('POINT(38.938983 -101.7531)', 4326), 39.032003, -102.174289, '1978-10-13', '2025-02-26', NULL, NULL, NULL),
  ('471166', 'Rose Creek', 'Stream', 'Kansas', 'KS', 'Wallace', 'Sharon Springs East', 38.8877874, -101.6329462, ST_GeomFromText('POINT(38.8877874 -101.6329462)', 4326), 38.8227882, -101.7615602, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471167', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Wallace', 'South Flats', 38.86251, -101.6407242, ST_GeomFromText('POINT(38.86251 -101.6407242)', 4326), 38.8277778, -101.6338889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471168', 'Homestead Canyon', 'Valley', 'Kansas', 'KS', 'Wallace', 'Wallace', 38.8942118, -101.5444091, ST_GeomFromText('POINT(38.8942118 -101.5444091)', 4326), 38.8296269, -101.5413156, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471169', 'Coon Creek', 'Stream', 'Kansas', 'KS', 'Wallace', 'Wallace', 38.8902875, -101.5962786, ST_GeomFromText('POINT(38.8902875 -101.5962786)', 4326), 38.8338996, -101.6101678, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471170', 'Big Lagoon', 'Flat', 'Kansas', 'KS', 'Wallace', 'Wallace', 38.936398, -101.5387771, ST_GeomFromText('POINT(38.936398 -101.5387771)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471171', 'Capper Draw', 'Valley', 'Kansas', 'KS', 'Wallace', 'Wallace', 38.9021846, -101.5198814, ST_GeomFromText('POINT(38.9021846 -101.5198814)', 4326), 38.923455, -101.5725385, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471172', 'Headquarters Draw', 'Valley', 'Kansas', 'KS', 'Wallace', 'Wallace', 38.9188775, -101.5548015, ST_GeomFromText('POINT(38.9188775 -101.5548015)', 4326), 38.995639, -101.6141117, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471173', 'Motti Hill', 'Summit', 'Kansas', 'KS', 'Wallace', 'Wallace', 38.9790456, -101.5781705, ST_GeomFromText('POINT(38.9790456 -101.5781705)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('471174', 'Red Hills', 'Summit', 'Kansas', 'KS', 'Wallace', 'Sharon Springs East', 38.9969897, -101.6277855, ST_GeomFromText('POINT(38.9969897 -101.6277855)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('471175', 'Pond Creek', 'Stream', 'Kansas', 'KS', 'Wallace', 'Wallace', 38.8966762, -101.6104457, ST_GeomFromText('POINT(38.8966762 -101.6104457)', 4326), 39.0152844, -101.7448937, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471178', 'Middle Beaver Creek', 'Stream', 'Kansas', 'KS', 'Sherman', 'Goodland NW', 39.4433313, -101.6876716, ST_GeomFromText('POINT(39.4433313 -101.6876716)', 4326), 39.1738879, -102.3343572, '1978-10-13', '2018-03-02', 'Official', 'Board Decision', '1972-01-01'),
  ('471217', 'South Bow Creek', 'Stream', 'Kansas', 'KS', 'Sheridan', 'Lucerne', 39.4502813, -100.2270805, ST_GeomFromText('POINT(39.4502813 -100.2270805)', 4326), 39.3888938, -100.7120915, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471225', 'Cortez Creek', 'Stream', 'Kansas', 'KS', 'Sheridan', 'Hoxie NE', 39.3633375, -100.2912482, ST_GeomFromText('POINT(39.3633375 -100.2912482)', 4326), 39.4113929, -100.320138, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471226', 'Holly Creek', 'Stream', 'Kansas', 'KS', 'Sheridan', 'Hoxie NE', 39.3516707, -100.2506918, ST_GeomFromText('POINT(39.3516707 -100.2506918)', 4326), 39.3925039, -100.2676368, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471227', 'North Creek', 'Stream', 'Kansas', 'KS', 'Sheridan', 'Studley', 39.3502819, -100.2193017, ST_GeomFromText('POINT(39.3502819 -100.2193017)', 4326), 39.3891705, -100.2518032, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471230', 'Foster Creek', 'Stream', 'Kansas', 'KS', 'Sheridan', 'Lucerne', 39.3500041, -100.2143015, ST_GeomFromText('POINT(39.3500041 -100.2143015)', 4326), 39.4030594, -100.2348581, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471231', 'Storer Creek', 'Stream', 'Kansas', 'KS', 'Sheridan', 'Lucerne', 39.3505598, -100.1765222, ST_GeomFromText('POINT(39.3505598 -100.1765222)', 4326), 39.3958372, -100.2109684, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471232', 'Keys Creek', 'Stream', 'Kansas', 'KS', 'Graham', 'Studley', 39.354171, -100.1517991, ST_GeomFromText('POINT(39.354171 -100.1517991)', 4326), 39.3883373, -100.1804115, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471233', 'Antelope Creek', 'Stream', 'Kansas', 'KS', 'Graham', 'Morland', 39.3536155, -100.0776296, ST_GeomFromText('POINT(39.3536155 -100.0776296)', 4326), 39.403615, -100.1859674, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('471236', 'Youngs Creek', 'Stream', 'Kansas', 'KS', 'Graham', 'Morland NE', 39.3541713, -100.0042935, ST_GeomFromText('POINT(39.3541713 -100.0042935)', 4326), 39.4036154, -100.0354059, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471237', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Graham', 'Penokee', 39.3544492, -99.9767924, ST_GeomFromText('POINT(39.3544492 -99.9767924)', 4326), 39.4194487, -100.0054047, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471239', 'South Beaver Creek', 'Stream', 'Kansas', 'KS', 'Sherman', 'Goodland NW', 39.4433313, -101.6876716, ST_GeomFromText('POINT(39.4433313 -101.6876716)', 4326), 39.2391669, -102.0712932, '1978-10-13', NULL, 'Official', 'Board Decision', '1972-01-01'),
  ('471264', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Sheridan', 'Tasco', 39.3413933, -100.3187487, ST_GeomFromText('POINT(39.3413933 -100.3187487)', 4326), 39.3488941, -100.7723705, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471277', 'South Martin Creek', 'Stream', 'Kansas', 'KS', 'Sheridan', 'Tasco', 39.3502819, -100.2612475, ST_GeomFromText('POINT(39.3502819 -100.2612475)', 4326), 39.2825, -100.2827778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471278', 'North Fork Saline River', 'Stream', 'Kansas', 'KS', 'Trego', 'WaKeeney West', 39.1152846, -99.9740135, ST_GeomFromText('POINT(39.1152846 -99.9740135)', 4326), 39.2619497, -100.3684716, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471282', 'Museum Creek', 'Stream', 'Kansas', 'KS', 'Sheridan', 'Studley', 39.3427819, -100.2331911, ST_GeomFromText('POINT(39.3427819 -100.2331911)', 4326), 39.2875, -100.2302778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471283', 'East Creek', 'Stream', 'Kansas', 'KS', 'Sheridan', 'Studley', 39.3497263, -100.2143015, ST_GeomFromText('POINT(39.3497263 -100.2143015)', 4326), 39.3077778, -100.2130556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471284', 'Sheridan County State Lake', 'Reservoir', 'Kansas', 'KS', 'Sheridan', 'Studley', 39.3603407, -100.2290211, ST_GeomFromText('POINT(39.3603407 -100.2290211)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('471285', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Sheridan', 'Studley', 39.3505598, -100.1898561, ST_GeomFromText('POINT(39.3505598 -100.1898561)', 4326), 39.3066667, -100.1972222, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('471286', 'Southwest Fork County Line Creek', 'Stream', 'Kansas', 'KS', 'Sheridan', 'Studley', 39.3152822, -100.1648549, ST_GeomFromText('POINT(39.3152822 -100.1648549)', 4326), 39.2683333, -100.2266667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471287', 'Center Fork', 'Stream', 'Kansas', 'KS', 'Sheridan', 'Studley', 39.33056, -100.1590215, ST_GeomFromText('POINT(39.33056 -100.1590215)', 4326), 39.2730556, -100.1602778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471288', 'County Line Creek', 'Stream', 'Kansas', 'KS', 'Graham', 'Studley', 39.3494487, -100.1551325, ST_GeomFromText('POINT(39.3494487 -100.1551325)', 4326), 39.3305556, -100.1586111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471289', 'Southeast Fork County Line Creek', 'Stream', 'Kansas', 'KS', 'Graham', 'Studley', 39.33056, -100.1590215, ST_GeomFromText('POINT(39.33056 -100.1590215)', 4326), 39.2963889, -100.1488889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471294', 'Jackson Branch', 'Stream', 'Kansas', 'KS', 'Graham', 'Penokee', 39.2922278, -99.9098454, ST_GeomFromText('POINT(39.2922278 -99.9098454)', 4326), 39.2480606, -100.0223495, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471295', 'Brush Creek', 'Stream', 'Kansas', 'KS', 'Graham', 'Hill City South', 39.3483391, -99.8501208, ST_GeomFromText('POINT(39.3483391 -99.8501208)', 4326), 39.2794492, -100.0523506, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471299', 'Sandy Creek', 'Stream', 'Kansas', 'KS', 'Sherman', 'Horsethief Draw NE', 39.1872246, -101.8540644, ST_GeomFromText('POINT(39.1872246 -101.8540644)', 4326), 39.1380549, -102.3738027, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471301', 'North Fork Saline River', 'Stream', 'Kansas', 'KS', 'Sheridan', 'Grinnell North', 39.1594519, -100.7134783, ST_GeomFromText('POINT(39.1594519 -100.7134783)', 4326), 39.2177836, -101.062932, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471302', 'South Fork Saline River', 'Stream', 'Kansas', 'KS', 'Thomas', 'Grinnell North', 39.1594519, -100.7134783, ST_GeomFromText('POINT(39.1594519 -100.7134783)', 4326), 39.2222266, -101.3771069, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471306', 'Spring Brook Creek', 'Stream', 'Kansas', 'KS', 'Sheridan', 'Midway Draw West', 39.1625069, -100.4604169, ST_GeomFromText('POINT(39.1625069 -100.4604169)', 4326), 39.2313953, -100.6295886, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('471316', 'Midway Draw', 'Valley', 'Kansas', 'KS', 'Sheridan', 'Midway Draw East', 39.1657409, -100.3433816, ST_GeomFromText('POINT(39.1657409 -100.3433816)', 4326), 39.2417387, -100.5020686, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471319', 'Gove Creek', 'Stream', 'Kansas', 'KS', 'Sheridan', 'Midway Draw East', 39.1605618, -100.3173581, ST_GeomFromText('POINT(39.1605618 -100.3173581)', 4326), 39.1319444, -100.3580556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471320', 'Leeds Draw', 'Valley', 'Kansas', 'KS', 'Sheridan', 'Midway Draw East', 39.1709083, -100.2973578, ST_GeomFromText('POINT(39.1709083 -100.2973578)', 4326), 39.241904, -100.3618928, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471321', 'Cow Draw', 'Valley', 'Kansas', 'KS', 'Sheridan', 'Midway Draw East', 39.1453419, -100.2644437, ST_GeomFromText('POINT(39.1453419 -100.2644437)', 4326), 39.103656, -100.2907542, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471322', 'Turner Draw', 'Valley', 'Kansas', 'KS', 'Sheridan', 'Quinter NW', 39.1458264, -100.2004049, ST_GeomFromText('POINT(39.1458264 -100.2004049)', 4326), 39.218843, -100.2949425, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471323', 'Plum Creek', 'Stream', 'Kansas', 'KS', 'Trego', 'Quinter NW', 39.1288953, -100.1440194, ST_GeomFromText('POINT(39.1288953 -100.1440194)', 4326), 39.1025066, -100.2556895, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471330', 'Middle Branch Hackberry Creek', 'Stream', 'Kansas', 'KS', 'Gove', 'Orion NE', 38.9652877, -100.5726393, ST_GeomFromText('POINT(38.9652877 -100.5726393)', 4326), 39.0719519, -101.2971043, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471336', 'North Branch Hackberry Creek', 'Stream', 'Kansas', 'KS', 'Gove', 'Orion NE', 38.9652877, -100.5726393, ST_GeomFromText('POINT(38.9652877 -100.5726393)', 4326), 39.1291741, -101.0326526, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471337', 'South Branch Hackberry Creek', 'Stream', 'Kansas', 'KS', 'Gove', 'Orion NE', 38.9511212, -100.5498609, ST_GeomFromText('POINT(38.9511212 -100.5498609)', 4326), 39.026398, -101.0343183, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471342', 'West Spring Creek', 'Stream', 'Kansas', 'KS', 'Gove', 'Sunny Slope Lake', 38.968343, -100.5176381, ST_GeomFromText('POINT(38.968343 -100.5176381)', 4326), 39.02362, -100.5365279, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('471343', 'East Spring Creek', 'Stream', 'Kansas', 'KS', 'Gove', 'Gove NE', 38.9350097, -100.3679126, ST_GeomFromText('POINT(38.9350097 -100.3679126)', 4326), 39.0494531, -100.5665289, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471344', 'North Fork Big Creek', 'Stream', 'Kansas', 'KS', 'Gove', 'Sunny Slope Lake', 39.0475081, -100.4062477, ST_GeomFromText('POINT(39.0475081 -100.4062477)', 4326), 39.1216745, -100.5809747, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471354', 'Coyote Creek', 'Stream', 'Kansas', 'KS', 'Trego', 'Quinter', 39.111951, -100.0879062, ST_GeomFromText('POINT(39.111951 -100.0879062)', 4326), 39.0452852, -100.1267958, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471361', 'Trego Creek', 'Stream', 'Kansas', 'KS', 'Trego', 'WaKeeney East', 39.0986187, -99.8542874, ST_GeomFromText('POINT(39.0986187 -99.8542874)', 4326), 39.0644517, -100.0073475, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471365', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Logan', 'Russell Springs', 38.9013998, -101.1679336, ST_GeomFromText('POINT(38.9013998 -101.1679336)', 4326), 38.9097222, -101.1680556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471366', 'West Spring Creek', 'Stream', 'Kansas', 'KS', 'Logan', 'Russell Springs', 38.909733, -101.1684892, ST_GeomFromText('POINT(38.909733 -101.1684892)', 4326), 39.0305641, -101.2198796, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471367', 'East Spring Creek', 'Stream', 'Kansas', 'KS', 'Logan', 'Russell Springs', 38.909733, -101.1684892, ST_GeomFromText('POINT(38.909733 -101.1684892)', 4326), 39.0022313, -101.1687668, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471373', 'Six Mile Gulch', 'Valley', 'Kansas', 'KS', 'Logan', 'Russell Springs NE', 38.883801, -101.0640289, ST_GeomFromText('POINT(38.883801 -101.0640289)', 4326), 39.0308036, -101.183706, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471374', 'Plum Creek', 'Stream', 'Kansas', 'KS', 'Gove', 'Shields NW', 38.7466802, -100.4545802, ST_GeomFromText('POINT(38.7466802 -100.4545802)', 4326), 38.9822278, -101.9862882, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471378', 'Hackberry Creek', 'Stream', 'Kansas', 'KS', 'Trego', 'Gibson Creek', 38.8083453, -100.050403, ST_GeomFromText('POINT(38.8083453 -100.050403)', 4326), 38.9652877, -100.5726393, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('471379', 'Indian Creek', 'Stream', 'Kansas', 'KS', 'Gove', 'Gove SE', 38.7764013, -100.2706876, ST_GeomFromText('POINT(38.7764013 -100.2706876)', 4326), 38.9111219, -100.5490274, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471382', 'Big Creek', 'Stream', 'Kansas', 'KS', 'Russell', 'Russell SW', 38.7902894, -98.9195318, ST_GeomFromText('POINT(38.7902894 -98.9195318)', 4326), 39.1119526, -100.7490338, '1978-10-13', '2019-08-13', NULL, NULL, NULL),
  ('471384', 'Downer Creek', 'Stream', 'Kansas', 'KS', 'Trego', 'Fort Downer', 38.7869569, -99.9331774, ST_GeomFromText('POINT(38.7869569 -99.9331774)', 4326), 38.9597311, -100.0479037, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471387', 'Lone Butte', 'Summit', 'Kansas', 'KS', 'Logan', 'Lone Butte', 38.7877841, -101.2087594, ST_GeomFromText('POINT(38.7877841 -101.2087594)', 4326), NULL, NULL, '1978-10-13', '2015-02-12', NULL, NULL, NULL),
  ('471388', 'Little Pyramids', 'Pillar', 'Kansas', 'KS', 'Logan', 'Elkader SW', 38.7569584, -100.9490378, ST_GeomFromText('POINT(38.7569584 -100.9490378)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471389', 'Burris Draw', 'Valley', 'Kansas', 'KS', 'Logan', 'Elkader SW', 38.7655808, -100.8867132, ST_GeomFromText('POINT(38.7655808 -100.8867132)', 4326), 38.719398, -100.8907889, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471391', 'Chalk Pyramids', 'Pillar', 'Kansas', 'KS', 'Gove', 'Elkader', 38.7961242, -100.764588, ST_GeomFromText('POINT(38.7961242 -100.764588)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471394', 'Hell Creek', 'Stream', 'Kansas', 'KS', 'Gove', 'Orion SW', 38.7536248, -100.7259759, ST_GeomFromText('POINT(38.7536248 -100.7259759)', 4326), 38.7089036, -100.8440353, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471402', 'Castle Rock', 'Pillar', 'Kansas', 'KS', 'Gove', 'Castle Rock', 38.8611219, -100.1698516, ST_GeomFromText('POINT(38.8611219 -100.1698516)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471404', 'Rattlesnake Creek', 'Stream', 'Kansas', 'KS', 'Trego', 'Gibson Creek', 38.8061231, -100.0537364, ST_GeomFromText('POINT(38.8061231 -100.0537364)', 4326), 38.7339023, -100.0665145, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('471405', 'Gibson Creek', 'Stream', 'Kansas', 'KS', 'Trego', 'Gibson Creek', 38.7897345, -100.0809595, ST_GeomFromText('POINT(38.7897345 -100.0809595)', 4326), 38.7405689, -100.0798482, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471406', 'Wild Horse Creek', 'Stream', 'Kansas', 'KS', 'Trego', 'Gibson Creek', 38.7958455, -100.112905, ST_GeomFromText('POINT(38.7958455 -100.112905)', 4326), 38.6464031, -100.2387431, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471414', 'Battendorf Canyon', 'Valley', 'Kansas', 'KS', 'Scott', 'Lake Scott', 38.6769766, -100.95579, ST_GeomFromText('POINT(38.6769766 -100.95579)', 4326), 38.6853862, -100.9767208, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471415', 'Garvin Canyon', 'Valley', 'Kansas', 'KS', 'Scott', 'Lake Scott', 38.6813979, -100.9476403, ST_GeomFromText('POINT(38.6813979 -100.9476403)', 4326), 38.6913627, -100.9651477, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471420', 'Suicide Bluffs', 'Cliff', 'Kansas', 'KS', 'Scott', 'Lake Scott', 38.6866821, -100.9295933, ST_GeomFromText('POINT(38.6866821 -100.9295933)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471421', 'Lake Scott', 'Lake', 'Kansas', 'KS', 'Scott', 'Lake Scott', 38.6869597, -100.9204264, ST_GeomFromText('POINT(38.6869597 -100.9204264)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471425', 'Horsethief Canyon', 'Valley', 'Kansas', 'KS', 'Scott', 'Lake Scott', 38.6870702, -100.9243632, ST_GeomFromText('POINT(38.6870702 -100.9243632)', 4326), 38.6751277, -100.9297832, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471426', 'Shafer Canyon', 'Valley', 'Kansas', 'KS', 'Scott', 'Lake Scott', 38.6711309, -100.9131498, ST_GeomFromText('POINT(38.6711309 -100.9131498)', 4326), 38.6785783, -100.8999886, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471427', 'Big Springs', 'Spring', 'Kansas', 'KS', 'Scott', 'Lake Scott NE', 38.6669598, -100.8365356, ST_GeomFromText('POINT(38.6669598 -100.8365356)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471428', 'Barrel Springs', 'Spring', 'Kansas', 'KS', 'Scott', 'Lake Scott', 38.6641321, -100.9164073, ST_GeomFromText('POINT(38.6641321 -100.9164073)', 4326), NULL, NULL, '1978-10-13', '2024-10-31', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('471429', 'Epler Canyon', 'Valley', 'Kansas', 'KS', 'Scott', 'Lake Scott', 38.6647885, -100.9162447, ST_GeomFromText('POINT(38.6647885 -100.9162447)', 4326), 38.666902, -100.9304392, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471430', 'Sand Draw', 'Valley', 'Kansas', 'KS', 'Scott', 'Lake Scott', 38.6474366, -100.9061479, ST_GeomFromText('POINT(38.6474366 -100.9061479)', 4326), 38.6472411, -100.8883702, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471431', 'Morgan Draw', 'Valley', 'Kansas', 'KS', 'Scott', 'Lake Scott', 38.6512496, -100.913352, ST_GeomFromText('POINT(38.6512496 -100.913352)', 4326), 38.658064, -100.9331335, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471433', 'Christy Canyon', 'Valley', 'Kansas', 'KS', 'Scott', 'Lake Scott', 38.638209, -100.9036294, ST_GeomFromText('POINT(38.638209 -100.9036294)', 4326), 38.6265605, -100.8788204, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471434', 'Battle Canyon', 'Valley', 'Kansas', 'KS', 'Scott', 'Lake Scott', 38.6397134, -100.9243496, ST_GeomFromText('POINT(38.6397134 -100.9243496)', 4326), 38.6489261, -100.9387844, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471436', 'Landon Draw', 'Valley', 'Kansas', 'KS', 'Scott', 'Lake Scott', 38.6298807, -100.9240499, ST_GeomFromText('POINT(38.6298807 -100.9240499)', 4326), 38.6320929, -100.949016, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471438', 'Devils Backbone', 'Ridge', 'Kansas', 'KS', 'Scott', 'Lake Scott', 38.64307, -100.9176257, ST_GeomFromText('POINT(38.64307 -100.9176257)', 4326), NULL, NULL, '1978-10-13', '2024-02-15', NULL, NULL, NULL),
  ('471441', 'East Salt Creek', 'Stream', 'Kansas', 'KS', 'Lane', 'Healy NW', 38.69557, -100.6193073, ST_GeomFromText('POINT(38.69557 -100.6193073)', 4326), 38.635571, -100.6559761, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471443', 'West Salt Creek', 'Stream', 'Kansas', 'KS', 'Lane', 'Cheyenne Creek', 38.69557, -100.6193073, ST_GeomFromText('POINT(38.69557 -100.6193073)', 4326), 38.6275158, -100.7607012, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471444', 'Salt Creek', 'Stream', 'Kansas', 'KS', 'Lane', 'Cheyenne Creek', 38.7497358, -100.5581937, ST_GeomFromText('POINT(38.7497358 -100.5581937)', 4326), 38.6955556, -100.6188889, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('471445', 'Cheyenne Creek', 'Stream', 'Kansas', 'KS', 'Gove', 'Cheyenne Creek', 38.7419581, -100.5173594, ST_GeomFromText('POINT(38.7419581 -100.5173594)', 4326), 38.6150155, -100.5818077, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471450', 'Wild Horse Creek', 'Stream', 'Kansas', 'KS', 'Ness', 'Utica SW', 38.5566821, -100.239855, ST_GeomFromText('POINT(38.5566821 -100.239855)', 4326), 38.6316814, -100.3468015, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471451', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Gove', 'Castle Rock', 38.7700126, -100.2145749, ST_GeomFromText('POINT(38.7700126 -100.2145749)', 4326), 38.6800138, -100.2201311, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471452', 'Big Windy Creek', 'Stream', 'Kansas', 'KS', 'Gove', 'Castle Rock', 38.771957, -100.1684623, ST_GeomFromText('POINT(38.771957 -100.1684623)', 4326), 38.6816805, -100.198186, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471456', 'North Fork Forrester Creek', 'Stream', 'Kansas', 'KS', 'Ness', 'Utica SE', 38.5558484, -100.0212378, ST_GeomFromText('POINT(38.5558484 -100.0212378)', 4326), 38.6339033, -100.183186, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471460', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Ness', 'Fort Downer', 38.7875125, -99.9126212, ST_GeomFromText('POINT(38.7875125 -99.9126212)', 4326), 38.661403, -100.0456815, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471467', 'North Fork Middle Fork Walnut Creek', 'Stream', 'Kansas', 'KS', 'Lane', 'Shields', 38.5286271, -100.3798591, ST_GeomFromText('POINT(38.5286271 -100.3798591)', 4326), 38.5811273, -100.6629216, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471468', 'Middle Fork Walnut Creek', 'Stream', 'Kansas', 'KS', 'Ness', 'Utica SW', 38.5383488, -100.1384636, ST_GeomFromText('POINT(38.5383488 -100.1384636)', 4326), 38.5258504, -100.6754229, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471475', 'Lane County State Lake', 'Reservoir', 'Kansas', 'KS', 'Lane', 'Shields', 38.5741755, -100.4121965, ST_GeomFromText('POINT(38.5741755 -100.4121965)', 4326), NULL, NULL, '1978-10-13', '2018-09-27', NULL, NULL, NULL),
  ('471477', 'Cottonwood Creek', 'Stream', 'Kansas', 'KS', 'Ness', 'Utica SW', 38.553071, -100.2387439, ST_GeomFromText('POINT(38.553071 -100.2387439)', 4326), 38.5730711, -100.3837475, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('471479', 'Cold Springs Branch', 'Stream', 'Kansas', 'KS', 'Ness', 'Utica SW', 38.5422376, -100.140408, ST_GeomFromText('POINT(38.5422376 -100.140408)', 4326), 38.6361255, -100.2395766, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471484', 'Forrester Creek', 'Stream', 'Kansas', 'KS', 'Ness', 'Ransom SW', 38.5330709, -99.9909596, ST_GeomFromText('POINT(38.5330709 -99.9909596)', 4326), 38.6264034, -100.1490184, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471497', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Wichita', 'Modoc SE', 38.3397436, -101.0896025, ST_GeomFromText('POINT(38.3397436 -101.0896025)', 4326), 38.3761285, -101.482387, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471499', 'Rocky Draw', 'Valley', 'Kansas', 'KS', 'Scott', 'Scott City', 38.3755429, -100.9811312, ST_GeomFromText('POINT(38.3755429 -100.9811312)', 4326), 38.4986147, -101.2998136, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471506', 'Lion Creek', 'Stream', 'Kansas', 'KS', 'Scott', 'Modoc', 38.4422422, -100.9440411, ST_GeomFromText('POINT(38.4422422 -100.9440411)', 4326), 38.4816868, -101.1004316, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471517', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Ness', 'Beeler SW', 38.2869616, -100.2159686, ST_GeomFromText('POINT(38.2869616 -100.2159686)', 4326), 38.3766841, -100.4118065, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471518', 'Buffalo Creek', 'Stream', 'Kansas', 'KS', 'Lane', 'Alamota', 38.4586278, -100.3729154, ST_GeomFromText('POINT(38.4586278 -100.3729154)', 4326), 38.3736289, -100.4776419, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471521', 'Darr Creek', 'Stream', 'Kansas', 'KS', 'Ness', 'Beeler', 38.4314053, -100.2095778, ST_GeomFromText('POINT(38.4314053 -100.2095778)', 4326), 38.4133503, -100.3612489, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471525', 'Guzzlers Gulch', 'Valley', 'Kansas', 'KS', 'Ness', 'Ness City SW', 38.2722484, -99.9036587, ST_GeomFromText('POINT(38.2722484 -99.9036587)', 4326), 38.3737746, -100.1759651, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471531', 'Crozier Draw', 'Valley', 'Kansas', 'KS', 'Finney', 'Wolf NE', 38.2183649, -101.0592107, ST_GeomFromText('POINT(38.2183649 -101.0592107)', 4326), 38.2574657, -101.1362547, '1978-10-13', '2017-08-25', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('471536', 'Dry Lake', 'Reservoir', 'Kansas', 'KS', 'Scott', 'Pawnee Mound', 38.3044152, -100.7599433, ST_GeomFromText('POINT(38.3044152 -100.7599433)', 4326), NULL, NULL, '1978-10-13', '2024-10-31', NULL, NULL, NULL),
  ('471537', 'Pawnee Mound', 'Summit', 'Kansas', 'KS', 'Scott', 'Pawnee Mound', 38.2798369, -100.8241289, ST_GeomFromText('POINT(38.2798369 -100.8241289)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('471539', 'Hackberry Creek', 'Stream', 'Kansas', 'KS', 'Hodgeman', 'Horse Thief Canyon NE', 38.2108511, -100.1037442, ST_GeomFromText('POINT(38.2108511 -100.1037442)', 4326), 38.3197398, -100.3493054, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471543', 'Plum Creek', 'Stream', 'Kansas', 'KS', 'Hodgeman', 'Horse Thief Canyon NE', 38.233351, -100.0448535, ST_GeomFromText('POINT(38.233351 -100.0448535)', 4326), 38.367239, -100.2120786, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471547', 'Cheyenne Creek', 'Stream', 'Kansas', 'KS', 'Hamilton', 'Holly NE', 38.0319568, -102.0479606, ST_GeomFromText('POINT(38.0319568 -102.0479606)', 4326), 38.2127926, -102.0362931, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471550', 'Corrigan Lake', 'Reservoir', 'Kansas', 'KS', 'Finney', 'Tennis', 38.1707391, -100.9063892, ST_GeomFromText('POINT(38.1707391 -100.9063892)', 4326), NULL, NULL, '1978-10-13', '2018-09-27', NULL, NULL, NULL),
  ('471551', 'Sondreagger Lake', 'Reservoir', 'Kansas', 'KS', 'Finney', 'Tennis', 38.2275919, -100.9464433, ST_GeomFromText('POINT(38.2275919 -100.9464433)', 4326), NULL, NULL, '1978-10-13', '2018-09-27', NULL, NULL, NULL),
  ('471555', 'Hay Canyon', 'Valley', 'Kansas', 'KS', 'Finney', 'Hay Canyon', 38.1615711, -100.3207218, ST_GeomFromText('POINT(38.1615711 -100.3207218)', 4326), 38.2211114, -100.3515101, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471556', 'Cottonwood Creek', 'Stream', 'Kansas', 'KS', 'Hodgeman', 'Horse Thief Canyon NW', 38.1844624, -100.1434678, ST_GeomFromText('POINT(38.1844624 -100.1434678)', 4326), 38.2458513, -100.3370838, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471559', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Hodgeman', 'Horse Thief Canyon NW', 38.1633514, -100.1623574, ST_GeomFromText('POINT(38.1633514 -100.1623574)', 4326), 37.9975199, -100.3187529, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('471561', 'Cottonwood Creek', 'Stream', 'Kansas', 'KS', 'Hodgeman', 'Jetmore NW', 38.2361287, -99.9748516, ST_GeomFromText('POINT(38.2361287 -99.9748516)', 4326), 38.1225182, -100.0420767, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471566', 'Bridge Creek', 'Stream', 'Kansas', 'KS', 'Hamilton', 'Holly East', 38.050013, -102.0243487, ST_GeomFromText('POINT(38.050013 -102.0243487)', 4326), 38.0830556, -102.0136111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471568', 'Ackley Lake', 'Reservoir', 'Kansas', 'KS', 'Finney', 'Lowe', 38.0778013, -100.9565518, ST_GeomFromText('POINT(38.0778013 -100.9565518)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471570', 'McCoy Lake', 'Reservoir', 'Kansas', 'KS', 'Finney', 'Lowe', 38.0775275, -100.9485499, ST_GeomFromText('POINT(38.0775275 -100.9485499)', 4326), NULL, NULL, '1978-10-13', '2018-09-27', NULL, NULL, NULL),
  ('471577', 'Horse Thief Canyon', 'Valley', 'Kansas', 'KS', 'Hodgeman', 'Horse Thief Canyon', 38.0551448, -100.0261554, ST_GeomFromText('POINT(38.0551448 -100.0261554)', 4326), 38.0111447, -100.0552724, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471588', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Kearny', 'Lakin NW', 37.9261305, -101.2593367, ST_GeomFromText('POINT(37.9261305 -101.2593367)', 4326), 37.9780732, -101.3832251, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471590', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Kearny', 'Lakin NW', 37.8939053, -101.435726, ST_GeomFromText('POINT(37.8939053 -101.435726)', 4326), 37.9811111, -101.4691667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471594', 'Clear Lake', 'Lake', 'Kansas', 'KS', 'Kearny', 'Lakin', 37.8795151, -101.3246393, ST_GeomFromText('POINT(37.8795151 -101.3246393)', 4326), NULL, NULL, '1978-10-13', '2024-10-31', NULL, NULL, NULL),
  ('471600', 'Lake McKinney', 'Reservoir', 'Kansas', 'KS', 'Kearny', 'Deerfield', 37.986896, -101.203351, ST_GeomFromText('POINT(37.986896 -101.203351)', 4326), NULL, NULL, '1978-10-13', '2024-11-01', NULL, NULL, NULL),
  ('471629', 'South Fork Buckner Creek', 'Stream', 'Kansas', 'KS', 'Hodgeman', 'Dodge City NW', 37.9519642, -100.1956939, ST_GeomFromText('POINT(37.9519642 -100.1956939)', 4326), 37.8327988, -100.2662527, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('471633', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Hodgeman', 'Jetmore', 38.0677961, -99.9459635, ST_GeomFromText('POINT(38.0677961 -99.9459635)', 4326), 37.9600192, -100.0745791, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471635', 'Duck Creek', 'Stream', 'Kansas', 'KS', 'Ford', 'Spearville NW', 37.902797, -99.9420757, ST_GeomFromText('POINT(37.902797 -99.9420757)', 4326), 37.7952983, -100.1012477, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471636', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Hamilton', 'Syracuse West SW', 37.7900122, -101.9774015, ST_GeomFromText('POINT(37.7900122 -101.9774015)', 4326), 37.7900122, -101.9774015, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471637', 'North Bear Creek', 'Stream', 'Kansas', 'KS', 'Hamilton', 'Syracuse West SE', 37.7736237, -101.8282304, ST_GeomFromText('POINT(37.7736237 -101.8282304)', 4326), 37.6955677, -102.2001846, '1978-10-13', '2018-02-28', NULL, NULL, NULL),
  ('471640', 'Little Bear Creek', 'Stream', 'Kansas', 'KS', 'Stanton', 'Big Bow NW', 37.7007144, -101.6519162, ST_GeomFromText('POINT(37.7007144 -101.6519162)', 4326), 37.6341789, -102.3882444, '1978-10-13', '2018-02-28', NULL, NULL, NULL),
  ('471642', 'Wolf Creek', 'Stream', 'Kansas', 'KS', 'Grant', 'Ulysses NW', 37.6855726, -101.4651706, ST_GeomFromText('POINT(37.6855726 -101.4651706)', 4326), 37.7822365, -101.5929495, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471660', 'Saw Log Creek', 'Stream', 'Kansas', 'KS', 'Hodgeman', 'Hanston NW', 38.1252951, -99.6937339, ST_GeomFromText('POINT(38.1252951 -99.6937339)', 4326), 37.8241875, -100.2140288, '1984-07-01', NULL, NULL, NULL, NULL),
  ('471674', 'Boot Hill', 'Summit', 'Kansas', 'KS', 'Ford', 'Dodge City', 37.7536993, -100.0214085, ST_GeomFromText('POINT(37.7536993 -100.0214085)', 4326), NULL, NULL, '1978-10-13', '2021-01-01', NULL, NULL, NULL),
  ('471686', 'Wild Horse Lake', 'Lake', 'Kansas', 'KS', 'Gray', 'Copeland NE', 37.6716898, -100.5282074, ST_GeomFromText('POINT(37.6716898 -100.5282074)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471698', 'Buffalo Creek', 'Stream', 'Kansas', 'KS', 'Stanton', 'Lycan SE', 37.5200161, -102.0237881, ST_GeomFromText('POINT(37.5200161 -102.0237881)', 4326), 37.5823475, -102.3078877, '1978-10-13', '2015-04-22', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('471719', 'Lakin Draw', 'Valley', 'Kansas', 'KS', 'Grant', 'Ulysses', 37.5581542, -101.3272205, ST_GeomFromText('POINT(37.5581542 -101.3272205)', 4326), 37.6839446, -101.3357103, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471725', 'Sappa Creek', 'Stream', 'Nebraska', 'NE', 'Furnas', 'Alma SW', 40.1144545, -99.4795479, ST_GeomFromText('POINT(40.1144545 -99.4795479)', 4326), 39.7847269, -100.5782018, '1979-03-09', '2019-08-29', NULL, NULL, NULL),
  ('471726', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Norton', 'Calvert', 39.8413949, -99.8420645, ST_GeomFromText('POINT(39.8413949 -99.8420645)', 4326), 39.928895, -99.9037342, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471727', 'Spring Branch', 'Stream', 'Kansas', 'KS', 'Norton', 'Calvert', 39.8427839, -99.8331752, ST_GeomFromText('POINT(39.8427839 -99.8331752)', 4326), 39.9347284, -99.8895668, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471728', 'Robinson Creek', 'Stream', 'Kansas', 'KS', 'Norton', 'Norton NW', 39.8250057, -99.8962337, ST_GeomFromText('POINT(39.8250057 -99.8962337)', 4326), 39.9319504, -99.9323467, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471730', 'Deer Creek', 'Stream', 'Kansas', 'KS', 'Norton', 'Norton NW', 39.999451, -99.8865111, ST_GeomFromText('POINT(39.999451 -99.8865111)', 4326), 39.9330618, -99.8979006, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471731', 'Dry Creek', 'Stream', 'Nebraska', 'NE', 'Furnas', 'Beaver City SE', 40.04608, -99.84933, ST_GeomFromText('POINT(40.04608 -99.84933)', 4326), 39.9408397, -99.8731771, '1978-10-13', '2010-12-15', NULL, NULL, NULL),
  ('471732', 'Dutch Creek', 'Stream', 'Nebraska', 'NE', 'Furnas', 'Beaver City SW', 40.021673, -99.9359583, ST_GeomFromText('POINT(40.021673 -99.9359583)', 4326), 39.9341727, -99.9256797, '1979-03-09', NULL, NULL, NULL, NULL),
  ('471733', 'Jones Creek', 'Stream', 'Kansas', 'KS', 'Norton', 'Beaver City SW', 40.0069504, -99.9781825, ST_GeomFromText('POINT(40.0069504 -99.9781825)', 4326), 39.9175058, -99.9481808, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471735', 'North Fork Prairie Dog Creek', 'Stream', 'Kansas', 'KS', 'Norton', 'Norton NE', 39.8847293, -99.7156695, ST_GeomFromText('POINT(39.8847293 -99.7156695)', 4326), 39.981396, -99.7731721, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('471737', 'Horse Creek', 'Stream', 'Kansas', 'KS', 'Norton', 'Almena', 39.8908406, -99.6942796, ST_GeomFromText('POINT(39.8908406 -99.6942796)', 4326), 39.9858333, -99.7447222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471738', 'Maple Creek', 'Stream', 'Nebraska', 'NE', 'Furnas', 'Precept', 40.0700076, -99.7337262, ST_GeomFromText('POINT(40.0700076 -99.7337262)', 4326), 39.9791742, -99.7220585, '1978-10-13', '2010-12-15', NULL, NULL, NULL),
  ('471739', 'Sheep Creek', 'Stream', 'Nebraska', 'NE', 'Furnas', 'Precept', 40.0652858, -99.6976134, ST_GeomFromText('POINT(40.0652858 -99.6976134)', 4326), 39.9922302, -99.68289, '1978-10-13', '2010-12-15', NULL, NULL, NULL),
  ('471741', 'Fancy Creek', 'Stream', 'Kansas', 'KS', 'Norton', 'Almena', 39.9097301, -99.6509442, ST_GeomFromText('POINT(39.9097301 -99.6509442)', 4326), 39.9869444, -99.6966667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471743', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Norton', 'Almena', 39.9038965, -99.6801122, ST_GeomFromText('POINT(39.9038965 -99.6801122)', 4326), 39.9533333, -99.7047222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471746', 'Wildcat Creek', 'Stream', 'Kansas', 'KS', 'Phillips', 'Almena', 39.8758412, -99.6278876, ST_GeomFromText('POINT(39.8758412 -99.6278876)', 4326), 39.8622302, -99.6184428, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471747', 'Buffalo Creek', 'Stream', 'Kansas', 'KS', 'Norton', 'Almena', 39.9038965, -99.672334, ST_GeomFromText('POINT(39.9038965 -99.672334)', 4326), 39.8325075, -99.6509443, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471752', 'Elk Creek', 'Stream', 'Kansas', 'KS', 'Norton', 'Woodruff', 39.9777876, -99.4917701, ST_GeomFromText('POINT(39.9777876 -99.4917701)', 4326), 40.0177862, -99.6442772, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471753', 'South Fork Prairie Dog Creek', 'Stream', 'Kansas', 'KS', 'Norton', 'Almena', 39.8844515, -99.7156695, ST_GeomFromText('POINT(39.8844515 -99.7156695)', 4326), 39.841118, -99.7101137, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471757', 'Hanson Creek', 'Stream', 'Kansas', 'KS', 'Phillips', 'Stuttgart', 39.8683426, -99.4848254, ST_GeomFromText('POINT(39.8683426 -99.4848254)', 4326), 39.8958425, -99.5109378, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('471762', 'Boughton Creek', 'Stream', 'Kansas', 'KS', 'Phillips', 'Woodruff', 39.7747315, -99.4073222, ST_GeomFromText('POINT(39.7747315 -99.4073222)', 4326), 39.9005653, -99.4526018, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471763', 'Bissell Creek', 'Stream', 'Kansas', 'KS', 'Phillips', 'Phillipsburg North', 39.7647316, -99.3756542, ST_GeomFromText('POINT(39.7647316 -99.3756542)', 4326), 39.9141767, -99.4023218, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471764', 'Plotner Creek', 'Stream', 'Kansas', 'KS', 'Phillips', 'Phillipsburg South', 39.7333429, -99.3281524, ST_GeomFromText('POINT(39.7333429 -99.3281524)', 4326), 39.9283435, -99.3823209, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471765', 'Jack Creek', 'Stream', 'Kansas', 'KS', 'Phillips', 'Woodruff', 39.9963993, -99.4184336, ST_GeomFromText('POINT(39.9963993 -99.4184336)', 4326), 39.8922222, -99.4658333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471766', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Phillips', 'Woodruff', 40.0022328, -99.3892656, ST_GeomFromText('POINT(40.0022328 -99.3892656)', 4326), 39.9208434, -99.4042664, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471767', 'Battle Creek', 'Stream', 'Kansas', 'KS', 'Phillips', 'Woodruff', 39.9772321, -99.4823252, ST_GeomFromText('POINT(39.9772321 -99.4823252)', 4326), 39.9069444, -99.4847222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471772', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Phillips', 'Phillipsburg South', 39.7255656, -99.250927, ST_GeomFromText('POINT(39.7255656 -99.250927)', 4326), 39.9152883, -99.3328744, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471773', 'West Big Creek', 'Stream', 'Kansas', 'KS', 'Phillips', 'Gretna', 39.8166771, -99.2475931, ST_GeomFromText('POINT(39.8166771 -99.2475931)', 4326), 39.9350108, -99.3037064, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471774', 'East Big Creek', 'Stream', 'Kansas', 'KS', 'Phillips', 'Gretna', 39.8166771, -99.2475931, ST_GeomFromText('POINT(39.8166771 -99.2475931)', 4326), 39.9347332, -99.2720384, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471775', 'West Crow Creek', 'Stream', 'Kansas', 'KS', 'Phillips', 'Stuttgart NE', 39.9777895, -99.1995352, ST_GeomFromText('POINT(39.9777895 -99.1995352)', 4326), 39.9380665, -99.2795387, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('471779', 'Walnut Creek', 'Stream', 'Nebraska', 'NE', 'Harlan', 'Alma', 40.0113998, -99.3470416, ST_GeomFromText('POINT(40.0113998 -99.3470416)', 4326), 39.9158437, -99.3387079, '1978-10-13', '2010-12-15', NULL, NULL, NULL),
  ('471781', 'Bone Creek', 'Stream', 'Nebraska', 'NE', 'Harlan', 'Alma', 40.02876, -99.25862, ST_GeomFromText('POINT(40.02876 -99.25862)', 4326), 39.98051, -99.24223, '1978-10-13', '2010-12-15', NULL, NULL, NULL),
  ('471783', 'Crow Creek', 'Stream', 'Nebraska', 'NE', 'Franklin', 'Republican City', 40.06865, -99.17863, ST_GeomFromText('POINT(40.06865 -99.17863)', 4326), 39.93463, -99.24057, '1978-10-13', '2010-12-15', NULL, NULL, NULL),
  ('471784', 'Rebecca Creek', 'Stream', 'Nebraska', 'NE', 'Franklin', 'Bloomington', 40.06584, -99.09651, ST_GeomFromText('POINT(40.06584 -99.09651)', 4326), 39.93842, -99.16148, '1978-10-13', '2010-12-15', NULL, NULL, NULL),
  ('471785', 'Patterson Creek', 'Stream', 'Nebraska', 'NE', 'Harlan', 'Republican City', 40.03473, -99.23399, ST_GeomFromText('POINT(40.03473 -99.23399)', 4326), 39.9930672, -99.2275918, '1978-10-13', '2010-12-15', NULL, NULL, NULL),
  ('471786', 'East Plum Creek', 'Stream', 'Kansas', 'KS', 'Phillips', 'Kensington NW', 39.7936217, -99.1925907, ST_GeomFromText('POINT(39.7936217 -99.1925907)', 4326), 39.9147334, -99.2081468, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471787', 'West Plum Creek', 'Stream', 'Kansas', 'KS', 'Phillips', 'Kensington NW', 39.7936217, -99.1925907, ST_GeomFromText('POINT(39.7936217 -99.1925907)', 4326), 39.9291778, -99.2456484, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471788', 'Trap Creek', 'Stream', 'Kansas', 'KS', 'Phillips', 'Kensington NW', 39.8341775, -99.2087024, ST_GeomFromText('POINT(39.8341775 -99.2087024)', 4326), 39.8983444, -99.2189806, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471789', 'West Cedar Creek', 'Stream', 'Kansas', 'KS', 'Smith', 'Kirwin', 39.701678, -99.0050833, ST_GeomFromText('POINT(39.701678 -99.0050833)', 4326), 39.9439005, -99.173423, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471800', 'East Middle Cedar Creek', 'Stream', 'Kansas', 'KS', 'Smith', 'Kensington NE', 39.8802898, -99.055918, ST_GeomFromText('POINT(39.8802898 -99.055918)', 4326), 39.9711111, -99.0566667, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('471801', 'West Middle Cedar Creek', 'Stream', 'Kansas', 'KS', 'Smith', 'Kensington NE', 39.8802898, -99.055918, ST_GeomFromText('POINT(39.8802898 -99.055918)', 4326), 39.9502778, -99.1236111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471802', 'Middle Cedar Creek', 'Stream', 'Kansas', 'KS', 'Smith', 'Kirwin', 39.701678, -99.0050833, ST_GeomFromText('POINT(39.701678 -99.0050833)', 4326), 39.8802898, -99.055918, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471803', 'East Cedar Creek', 'Stream', 'Kansas', 'KS', 'Smith', 'Cedar', 39.6780668, -98.9489703, ST_GeomFromText('POINT(39.6780668 -98.9489703)', 4326), 39.9339015, -99.0106381, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471806', 'Lost Creek', 'Stream', 'Nebraska', 'NE', 'Franklin', 'Bloomington', 40.06996, -99.00544, ST_GeomFromText('POINT(40.06996 -99.00544)', 4326), 39.9547349, -99.012027, '1978-10-13', '2010-12-15', NULL, NULL, NULL),
  ('471807', 'Calumet Creek', 'Stream', 'Nebraska', 'NE', 'Franklin', 'Franklin', 40.0786, -98.91652, ST_GeomFromText('POINT(40.0786 -98.91652)', 4326), 39.9897353, -98.9692475, '1978-10-13', '2011-10-20', NULL, NULL, NULL),
  ('471808', 'Reams Creek', 'Stream', 'Nebraska', 'NE', 'Franklin', 'Franklin', 40.07581, -98.88685, ST_GeomFromText('POINT(40.07581 -98.88685)', 4326), 39.9950132, -98.9400797, '1978-10-13', '2011-10-20', NULL, NULL, NULL),
  ('471811', 'Middle Beaver Creek', 'Stream', 'Kansas', 'KS', 'Smith', 'Smith Center', 39.7511227, -98.8525774, ST_GeomFromText('POINT(39.7511227 -98.8525774)', 4326), 39.973624, -98.9914706, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471812', 'Bachelors Run', 'Stream', 'Kansas', 'KS', 'Smith', 'Bachelors Run', 39.898346, -98.8889671, ST_GeomFromText('POINT(39.898346 -98.8889671)', 4326), 39.9991667, -98.9133333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471813', 'West Beaver Creek', 'Stream', 'Kansas', 'KS', 'Smith', 'Gaylord', 39.7486227, -98.8434105, ST_GeomFromText('POINT(39.7486227 -98.8434105)', 4326), 39.9580684, -98.9970264, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471814', 'Cottonwood Creek', 'Stream', 'Kansas', 'KS', 'Smith', 'Bachelors Run', 39.798623, -98.9739704, ST_GeomFromText('POINT(39.798623 -98.9739704)', 4326), 39.9011236, -98.9734146, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('471816', 'Iowa Creek', 'Stream', 'Kansas', 'KS', 'Smith', 'Bachelors Run', 39.8855682, -98.8792446, ST_GeomFromText('POINT(39.8855682 -98.8792446)', 4326), 39.9925135, -98.8631325, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471817', 'Walnut Creek', 'Stream', 'Nebraska', 'NE', 'Webster', 'Inavale', 40.07873, -98.68722, ST_GeomFromText('POINT(40.07873 -98.68722)', 4326), 39.9727913, -98.8103529, '1978-10-13', '2011-10-20', NULL, NULL, NULL),
  ('471820', 'Bull Creek', 'Stream', 'Kansas', 'KS', 'Smith', 'Reamsville', 39.8625125, -98.8720222, ST_GeomFromText('POINT(39.8625125 -98.8720222)', 4326), 39.9847357, -98.841465, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471822', 'East Beaver Creek', 'Stream', 'Kansas', 'KS', 'Smith', 'Gaylord', 39.7486227, -98.8434105, ST_GeomFromText('POINT(39.7486227 -98.8434105)', 4326), 39.9522355, -98.8081306, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471823', 'West Branch Troublesome Creek', 'Stream', 'Kansas', 'KS', 'Smith', 'Reamsville', 39.8464014, -98.7750743, ST_GeomFromText('POINT(39.8464014 -98.7750743)', 4326), 39.9375133, -98.7792408, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471824', 'East Branch Troublesome Creek', 'Stream', 'Kansas', 'KS', 'Smith', 'Reamsville', 39.8464014, -98.7750743, ST_GeomFromText('POINT(39.8464014 -98.7750743)', 4326), 39.9383466, -98.765907, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471829', 'Pawnee Creek', 'Stream', 'Kansas', 'KS', 'Smith', 'Cora', 39.8989017, -98.5608967, ST_GeomFromText('POINT(39.8989017 -98.5608967)', 4326), 39.9439023, -98.7247938, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471830', 'Wolf Creek', 'Stream', 'Kansas', 'KS', 'Smith', 'Cora', 39.9219575, -98.5950648, ST_GeomFromText('POINT(39.9219575 -98.5950648)', 4326), 39.9511245, -98.6700685, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471832', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Smith', 'Harlan', 39.6030666, -98.8164659, ST_GeomFromText('POINT(39.6030666 -98.8164659)', 4326), 39.9016797, -98.7159047, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471833', 'Buffalo Creek', 'Stream', 'Nebraska', 'NE', 'Webster', 'Inavale', 40.08457, -98.63519, ST_GeomFromText('POINT(40.08457 -98.63519)', 4326), 39.98001, -98.64088, '1978-10-13', '2011-10-20', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('471835', 'North Branch White Rock Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Burr Oak NW', 39.8780683, -98.4778373, ST_GeomFromText('POINT(39.8780683 -98.4778373)', 4326), 39.9783468, -98.5833968, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471836', 'McCracken Branch', 'Stream', 'Kansas', 'KS', 'Smith', 'McCracken Branch', 39.9089018, -98.5100604, ST_GeomFromText('POINT(39.9089018 -98.5100604)', 4326), 40.0375136, -98.5183932, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471837', 'West Penny Creek', 'Stream', 'Nebraska', 'NE', 'Webster', 'Red Cloud', 40.04478, -98.55736, ST_GeomFromText('POINT(40.04478 -98.55736)', 4326), 39.99226, -98.56854, '1978-10-13', '2010-12-15', NULL, NULL, NULL),
  ('471838', 'East Penny Creek', 'Stream', 'Nebraska', 'NE', 'Webster', 'Red Cloud', 40.04478, -98.55736, ST_GeomFromText('POINT(40.04478 -98.55736)', 4326), 39.9875136, -98.5445056, '1978-10-13', '2010-12-15', NULL, NULL, NULL),
  ('471839', 'Louisa Creek', 'Stream', 'Nebraska', 'NE', 'Webster', 'Red Cloud', 40.06076, -98.57697, ST_GeomFromText('POINT(40.06076 -98.57697)', 4326), 39.98266, -98.57614, '1978-10-13', '2010-12-15', NULL, NULL, NULL),
  ('471840', 'State Creek', 'Stream', 'Nebraska', 'NE', 'Webster', 'Red Cloud', 40.0694, -98.59011, ST_GeomFromText('POINT(40.0694 -98.59011)', 4326), 39.99917, -98.608, '1978-10-13', '2010-12-15', NULL, NULL, NULL),
  ('471841', 'Cedar Creek', 'Stream', 'Nebraska', 'NE', 'Webster', 'Red Cloud', 40.0625136, -98.5167266, ST_GeomFromText('POINT(40.0625136 -98.5167266)', 4326), 39.9972358, -98.5092256, '1978-10-13', '2010-12-15', NULL, NULL, NULL),
  ('471852', 'Oak Creek', 'Stream', 'Nebraska', 'NE', 'Webster', 'Amboy', 40.03654, -98.41739, ST_GeomFromText('POINT(40.03654 -98.41739)', 4326), 39.9839025, -98.4383894, '1978-10-13', '2010-12-17', NULL, NULL, NULL),
  ('471853', 'Lost Creek', 'Stream', 'Nebraska', 'NE', 'Webster', 'Amboy', 40.06382, -98.40752, ST_GeomFromText('POINT(40.06382 -98.40752)', 4326), 39.98319, -98.41857, '1978-10-13', '2010-12-16', NULL, NULL, NULL),
  ('471854', 'Advent Creek', 'Stream', 'Nebraska', 'NE', 'Webster', 'Guide Rock', 40.06978, -98.35695, ST_GeomFromText('POINT(40.06978 -98.35695)', 4326), 39.99471, -98.39072, '1978-10-13', '2010-12-16', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('471857', 'Burr Oak Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Burr Oak', 39.8727908, -98.311164, ST_GeomFromText('POINT(39.8727908 -98.311164)', 4326), 39.993347, -98.4520009, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471858', 'Walnut Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Burr Oak NW', 39.8836242, -98.2894963, ST_GeomFromText('POINT(39.8836242 -98.2894963)', 4326), 39.9914027, -98.3917205, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471861', 'Ash Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Burr Oak NW', 39.8755683, -98.4433916, ST_GeomFromText('POINT(39.8755683 -98.4433916)', 4326), 39.9847222, -98.49, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471862', 'Antelope Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Northbranch', 39.89668, -98.2619949, ST_GeomFromText('POINT(39.89668 -98.2619949)', 4326), 39.975, -98.3119444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471864', 'Wolf Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Northbranch', 39.8914021, -98.2778289, ST_GeomFromText('POINT(39.8914021 -98.2778289)', 4326), 39.9438889, -98.3188889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471865', 'Long Branch', 'Stream', 'Kansas', 'KS', 'Jewell', 'Northbranch', 39.8986244, -98.240883, ST_GeomFromText('POINT(39.8986244 -98.240883)', 4326), 39.9766806, -98.2764381, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471866', 'Rankin Creek', 'Stream', 'Nebraska', 'NE', 'Webster', 'Northbranch', 40.0555692, -98.3111614, ST_GeomFromText('POINT(40.0555692 -98.3111614)', 4326), 39.98373, -98.35221, '1978-10-13', '2010-12-16', NULL, NULL, NULL),
  ('471867', 'Ayres Creek', 'Stream', 'Nebraska', 'NE', 'Webster', 'Bostwick', 40.04068, -98.24908, ST_GeomFromText('POINT(40.04068 -98.24908)', 4326), 39.98028, -98.31232, '1978-10-13', '2010-12-16', NULL, NULL, NULL),
  ('471868', 'Crooked Auger Creek', 'Stream', 'Nebraska', 'NE', 'Nuckolls', 'Bostwick', 40.04431, -98.2406, ST_GeomFromText('POINT(40.04431 -98.2406)', 4326), 39.97896, -98.26341, '1978-10-13', '2010-12-16', NULL, NULL, NULL),
  ('471871', 'Porcupine Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Northbranch', 39.8916799, -98.2672729, ST_GeomFromText('POINT(39.8916799 -98.2672729)', 4326), 39.8105682, -98.2558854, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('471872', 'Lovewell Reservoir', 'Reservoir', 'Kansas', 'KS', 'Jewell', 'Webber', 39.8977727, -98.0640461, ST_GeomFromText('POINT(39.8977727 -98.0640461)', 4326), NULL, NULL, '1978-10-13', '2024-11-01', NULL, NULL, NULL),
  ('471875', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Mankato NW', 39.8958463, -98.189493, ST_GeomFromText('POINT(39.8958463 -98.189493)', 4326), 39.8533461, -98.2236613, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471876', 'Troublesome Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Mankato NW', 39.8975133, -98.2439386, ST_GeomFromText('POINT(39.8975133 -98.2439386)', 4326), 39.8508461, -98.2322726, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471877', 'Korb Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Mankato NW', 39.8994575, -98.2069933, ST_GeomFromText('POINT(39.8994575 -98.2069933)', 4326), 39.975, -98.2438889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471878', 'Norway Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Mankato NW', 39.8980685, -98.1581033, ST_GeomFromText('POINT(39.8980685 -98.1581033)', 4326), 39.9680556, -98.2027778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471879', 'Taylor Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Mankato NW', 39.9005685, -98.1444919, ST_GeomFromText('POINT(39.9005685 -98.1444919)', 4326), 39.9697222, -98.1866667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471880', 'Oak Creek', 'Stream', 'Nebraska', 'NE', 'Nuckolls', 'Bostwick', 40.03057, -98.19123, ST_GeomFromText('POINT(40.03057 -98.19123)', 4326), 39.96169, -98.20968, '1978-10-13', '2010-12-17', NULL, NULL, NULL),
  ('471881', 'Dry Creek', 'Stream', 'Nebraska', 'NE', 'Nuckolls', 'Bostwick', 40.03077, -98.2081, ST_GeomFromText('POINT(40.03077 -98.2081)', 4326), 39.969736, -98.1969918, '1978-10-13', '2010-12-17', NULL, NULL, NULL),
  ('471892', 'Johns Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Webber', 39.900846, -98.1058799, ST_GeomFromText('POINT(39.900846 -98.1058799)', 4326), 39.8150116, -98.1200481, '1984-07-01', NULL, NULL, NULL, NULL),
  ('471894', 'Montana Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Webber', 39.9069572, -98.1036575, ST_GeomFromText('POINT(39.9069572 -98.1036575)', 4326), 39.96, -98.1208333, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('471898', 'Bean Creek', 'Stream', 'Kansas', 'KS', 'Republic', 'Scandia NW', 39.8994556, -97.923377, ST_GeomFromText('POINT(39.8994556 -97.923377)', 4326), 39.9416797, -98.0197663, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471900', 'Horseshoe Hill', 'Summit', 'Kansas', 'KS', 'Norton', 'Norton', 39.8054061, -99.8900526, ST_GeomFromText('POINT(39.8054061 -99.8900526)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('471905', 'Walnut Creek', 'Stream', 'Kansas', 'KS', 'Norton', 'Calvert', 39.8438951, -99.8115074, ST_GeomFromText('POINT(39.8438951 -99.8115074)', 4326), 39.7875, -99.8125, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471906', 'Wildcat Creek', 'Stream', 'Kansas', 'KS', 'Norton', 'Calvert', 39.8458397, -99.7770614, ST_GeomFromText('POINT(39.8458397 -99.7770614)', 4326), 39.7972285, -99.7467822, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471907', 'Big Timber Creek', 'Stream', 'Kansas', 'KS', 'Norton', 'Densmore', 39.643062, -99.7284483, ST_GeomFromText('POINT(39.643062 -99.7284483)', 4326), 39.7841727, -99.7917843, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471909', 'Prairie Dog Creek', 'Stream', 'Nebraska', 'NE', 'Harlan', 'Alma', 40.0614004, -99.2537044, ST_GeomFromText('POINT(40.0614004 -99.2537044)', 4326), 39.3125033, -101.3059943, '1979-03-09', '2019-08-29', NULL, NULL, NULL),
  ('471911', 'Scull Creek', 'Stream', 'Kansas', 'KS', 'Norton', 'Almena SW', 39.6477848, -99.6570561, ST_GeomFromText('POINT(39.6477848 -99.6570561)', 4326), 39.769173, -99.7362261, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471917', 'Deer Creek', 'Stream', 'Kansas', 'KS', 'Phillips', 'Kirwin', 39.665844, -99.0998099, ST_GeomFromText('POINT(39.665844 -99.0998099)', 4326), 39.8355638, -99.5878858, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471919', 'Wolf Creek', 'Stream', 'Kansas', 'KS', 'Phillips', 'Speed', 39.6652865, -99.4723254, ST_GeomFromText('POINT(39.6652865 -99.4723254)', 4326), 39.7763973, -99.5381613, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471920', 'Beaver Creek', 'Stream', 'Kansas', 'KS', 'Phillips', 'Prairie View', 39.6719524, -99.5617739, ST_GeomFromText('POINT(39.6719524 -99.5617739)', 4326), 39.7752856, -99.5934417, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('471921', 'Crooked Creek', 'Stream', 'Kansas', 'KS', 'Phillips', 'Prairie View', 39.6619525, -99.5526068, ST_GeomFromText('POINT(39.6619525 -99.5526068)', 4326), 39.7880632, -99.6178873, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471922', 'Starvation Creek', 'Stream', 'Kansas', 'KS', 'Phillips', 'Stuttgart', 39.8050091, -99.4628801, ST_GeomFromText('POINT(39.8050091 -99.4628801)', 4326), 39.9002873, -99.4839921, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471925', 'Ash Creek', 'Stream', 'Kansas', 'KS', 'Phillips', 'Stuttgart', 39.6572313, -99.4014892, ST_GeomFromText('POINT(39.6572313 -99.4014892)', 4326), 39.7758422, -99.4864923, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471930', 'Brushy Draw', 'Valley', 'Kansas', 'KS', 'Phillips', 'Phillipsburg North', 39.8406023, -99.2555381, ST_GeomFromText('POINT(39.8406023 -99.2555381)', 4326), 39.8785711, -99.2496776, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('471933', 'Big Creek', 'Stream', 'Kansas', 'KS', 'Phillips', 'Gretna', 39.7188993, -99.1862019, ST_GeomFromText('POINT(39.7188993 -99.1862019)', 4326), 39.8166771, -99.2475931, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471934', 'Plum Creek', 'Stream', 'Kansas', 'KS', 'Phillips', 'Gretna', 39.6958439, -99.1395336, ST_GeomFromText('POINT(39.6958439 -99.1395336)', 4326), 39.7936217, -99.1925907, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471936', 'Turner Creek', 'Stream', 'Kansas', 'KS', 'Phillips', 'Kirwin Reservoir', 39.6950106, -99.132311, ST_GeomFromText('POINT(39.6950106 -99.132311)', 4326), 39.8211222, -99.1359216, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471940', 'Blue Mound', 'Summit', 'Kansas', 'KS', 'Phillips', 'Gretna', 39.8402822, -99.1445244, ST_GeomFromText('POINT(39.8402822 -99.1445244)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('471955', 'Troublesome Creek', 'Stream', 'Kansas', 'KS', 'Smith', 'Smith Center', 39.81779, -98.8061866, ST_GeomFromText('POINT(39.81779 -98.8061866)', 4326), 39.8463889, -98.7747222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471962', 'Middle Oak Creek', 'Stream', 'Kansas', 'KS', 'Smith', 'Portis NE', 39.7191781, -98.5917335, ST_GeomFromText('POINT(39.7191781 -98.5917335)', 4326), 39.8802906, -98.6939592, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('471963', 'West Oak Creek', 'Stream', 'Kansas', 'KS', 'Smith', 'Portis NE', 39.7191781, -98.5917335, ST_GeomFromText('POINT(39.7191781 -98.5917335)', 4326), 39.8572348, -98.6922926, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471964', 'Frog Creek', 'Stream', 'Kansas', 'KS', 'Smith', 'Portis NE', 39.7480672, -98.6017339, ST_GeomFromText('POINT(39.7480672 -98.6017339)', 4326), 39.8244566, -98.6536799, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471965', 'Monkey Run', 'Stream', 'Kansas', 'KS', 'Smith', 'Bellaire', 39.7466783, -98.6639589, ST_GeomFromText('POINT(39.7466783 -98.6639589)', 4326), 39.8125122, -98.6978488, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471968', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Smith', 'Lebanon', 39.7133447, -98.5859, ST_GeomFromText('POINT(39.7133447 -98.5859)', 4326), 39.841679, -98.5645088, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471969', 'East Oak Creek', 'Stream', 'Kansas', 'KS', 'Smith', 'Lebanon', 39.6797334, -98.5500651, ST_GeomFromText('POINT(39.6797334 -98.5500651)', 4326), 39.8383456, -98.542841, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471970', 'Porcupine Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Cawker City NW', 39.7136226, -98.4161706, ST_GeomFromText('POINT(39.7136226 -98.4161706)', 4326), 39.8397345, -98.5136729, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471976', 'West Limestone Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Glen Elder North', 39.6122332, -98.3433902, ST_GeomFromText('POINT(39.6122332 -98.3433902)', 4326), 39.8402902, -98.4500591, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471977', 'Middle Limestone Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Ionia', 39.6258444, -98.3561684, ST_GeomFromText('POINT(39.6258444 -98.3561684)', 4326), 39.8269568, -98.3942238, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471978', 'Smith Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Esbon', 39.8697349, -98.4211685, ST_GeomFromText('POINT(39.8697349 -98.4211685)', 4326), 39.8283455, -98.4942278, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471989', 'Limestone Creek', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Glen Elder South', 39.4930656, -98.2969996, ST_GeomFromText('POINT(39.4930656 -98.2969996)', 4326), 39.8389017, -98.2864415, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('471990', 'Elm Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Burr Oak', 39.661678, -98.3436679, ST_GeomFromText('POINT(39.661678 -98.3436679)', 4326), 39.8102904, -98.2611633, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471992', 'Middle Buffalo Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Mankato', 39.6700099, -98.1397718, ST_GeomFromText('POINT(39.6700099 -98.1397718)', 4326), 39.8058458, -98.236996, '1978-10-13', NULL, NULL, NULL, NULL),
  ('471993', 'East Fork Big Timber Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Mankato', 39.8625125, -98.1675486, ST_GeomFromText('POINT(39.8625125 -98.1675486)', 4326), 39.8133333, -98.1808333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472000', 'East Buffalo Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Mankato', 39.641676, -98.1258825, ST_GeomFromText('POINT(39.641676 -98.1258825)', 4326), 39.8239007, -98.139493, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472001', 'West Marsh Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Jamestown NW', 39.7069523, -97.9417113, ST_GeomFromText('POINT(39.7069523 -97.9417113)', 4326), 39.8125114, -98.1081034, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472002', 'East Marsh Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Jamestown NW', 39.7375085, -97.9508782, ST_GeomFromText('POINT(39.7375085 -97.9508782)', 4326), 39.8380672, -98.0858802, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472009', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Norton', 'Edmond SE', 39.6108386, -99.8667878, ST_GeomFromText('POINT(39.6108386 -99.8667878)', 4326), 39.7091717, -99.9376244, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472010', 'East Elk Creek', 'Stream', 'Kansas', 'KS', 'Norton', 'Edmond NW', 39.6205606, -99.9206791, ST_GeomFromText('POINT(39.6205606 -99.9206791)', 4326), 39.7041715, -99.9831821, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472012', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Norton', 'Edmond', 39.6391729, -99.7481714, ST_GeomFromText('POINT(39.6391729 -99.7481714)', 4326), 39.714728, -99.8017849, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472013', 'Otter Creek', 'Stream', 'Kansas', 'KS', 'Norton', 'Edmond', 39.6219502, -99.8045628, ST_GeomFromText('POINT(39.6219502 -99.8045628)', 4326), 39.7180611, -99.859843, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('472015', 'Game Creek', 'Stream', 'Kansas', 'KS', 'Norton', 'Edmond', 39.6588945, -99.8253971, ST_GeomFromText('POINT(39.6588945 -99.8253971)', 4326), 39.7175, -99.8327778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472017', 'Big Dutchman Lake', 'Reservoir', 'Kansas', 'KS', 'Norton', 'Densmore', 39.6868602, -99.6882785, ST_GeomFromText('POINT(39.6868602 -99.6882785)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('472019', 'Cactus Creek', 'Stream', 'Kansas', 'KS', 'Phillips', 'Logan', 39.65723, -99.5767746, ST_GeomFromText('POINT(39.65723 -99.5767746)', 4326), 39.7994511, -99.7076136, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472022', 'Logan City Lake', 'Reservoir', 'Kansas', 'KS', 'Phillips', 'Logan', 39.6270675, -99.580397, ST_GeomFromText('POINT(39.6270675 -99.580397)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('472040', 'Kirwin Reservoir', 'Reservoir', 'Kansas', 'KS', 'Phillips', 'Kirwin Reservoir', 39.6560352, -99.1609843, ST_GeomFromText('POINT(39.6560352 -99.1609843)', 4326), NULL, NULL, '1978-10-13', '2019-09-11', NULL, NULL, NULL),
  ('472042', 'Bow Creek', 'Stream', 'Kansas', 'KS', 'Phillips', 'Kirwin Reservoir', 39.6577883, -99.1387005, ST_GeomFromText('POINT(39.6577883 -99.1387005)', 4326), 39.4555596, -100.4112512, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472049', 'Crappie Point', 'Cape', 'Kansas', 'KS', 'Phillips', 'Kirwin Reservoir', 39.6444548, -99.1481455, ST_GeomFromText('POINT(39.6444548 -99.1481455)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472050', 'Bluegill Point', 'Cape', 'Kansas', 'KS', 'Phillips', 'Kirwin Reservoir', 39.6494549, -99.1378672, ST_GeomFromText('POINT(39.6494549 -99.1378672)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472054', 'Cedar Creek', 'Stream', 'Kansas', 'KS', 'Smith', 'Kirwin', 39.6477889, -98.9053578, ST_GeomFromText('POINT(39.6477889 -98.9053578)', 4326), 39.701678, -99.0050833, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472056', 'Honey Creek', 'Stream', 'Kansas', 'KS', 'Smith', 'Corning', 39.6444407, -96.0330527, ST_GeomFromText('POINT(39.6444407 -96.0330527)', 4326), 39.5719551, -99.0228632, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('472057', 'Medicine Creek', 'Stream', 'Kansas', 'KS', 'Smith', 'Kirwin', 39.6513999, -99.0248068, ST_GeomFromText('POINT(39.6513999 -99.0248068)', 4326), 39.5483436, -99.1375904, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472063', 'Glen Rock Creek', 'Stream', 'Kansas', 'KS', 'Smith', 'Cedar', 39.6397333, -98.9375813, ST_GeomFromText('POINT(39.6397333 -98.9375813)', 4326), 39.5569551, -98.949527, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472067', 'Beaver Creek', 'Stream', 'Kansas', 'KS', 'Smith', 'Gaylord', 39.6464, -98.8600783, ST_GeomFromText('POINT(39.6464 -98.8600783)', 4326), 39.7486111, -98.8430556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472070', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Smith', 'Harlan', 39.6038999, -98.7953539, ST_GeomFromText('POINT(39.6038999 -98.7953539)', 4326), 39.7561228, -98.7089608, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472077', 'West Branch Twelvemile Creek', 'Stream', 'Kansas', 'KS', 'Smith', 'Portis NW', 39.6127888, -98.6334025, ST_GeomFromText('POINT(39.6127888 -98.6334025)', 4326), 39.7255671, -98.6989605, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472078', 'East Branch Twelvemile Creek', 'Stream', 'Kansas', 'KS', 'Smith', 'Portis NW', 39.6127888, -98.6334025, ST_GeomFromText('POINT(39.6127888 -98.6334025)', 4326), 39.6991781, -98.6522918, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472086', 'Oak Creek', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Mill Creek', 39.489177, -98.4561727, ST_GeomFromText('POINT(39.489177 -98.4561727)', 4326), 39.7191781, -98.5917335, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472087', 'Buck Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Portis NE', 39.6402889, -98.5239529, ST_GeomFromText('POINT(39.6402889 -98.5239529)', 4326), 39.6683333, -98.5994444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472092', 'Little Oak Creek', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Cawker City', 39.5408439, -98.480618, ST_GeomFromText('POINT(39.5408439 -98.480618)', 4326), 39.7402893, -98.4925624, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472098', 'Ash Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Ionia', 39.6119554, -98.3433902, ST_GeomFromText('POINT(39.6119554 -98.3433902)', 4326), 39.7289009, -98.2589423, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('472101', 'West Buffalo Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Jewell', 39.6413982, -98.1258825, ST_GeomFromText('POINT(39.6413982 -98.1258825)', 4326), 39.7947346, -98.2392185, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472102', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Jewell', 39.6480653, -98.1450497, ST_GeomFromText('POINT(39.6480653 -98.1450497)', 4326), 39.6838889, -98.2052778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472107', 'Browns Creek', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Solomon Rapids', 39.4688969, -98.166995, ST_GeomFromText('POINT(39.4688969 -98.166995)', 4326), 39.7200118, -98.2431085, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472111', 'Prairie Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Randall', 39.6938972, -98.0044898, ST_GeomFromText('POINT(39.6938972 -98.0044898)', 4326), 39.7377778, -98.0780556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472112', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Randall', 39.6361195, -98.0742141, ST_GeomFromText('POINT(39.6361195 -98.0742141)', 4326), 39.7619551, -98.1100486, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472117', 'Norton County Lake', 'Reservoir', 'Kansas', 'KS', 'Norton', 'Lenora East', 39.6029571, -99.9658346, ST_GeomFromText('POINT(39.6029571 -99.9658346)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('472124', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Rooks', 'Webster Dam', 39.4041758, -99.4045469, ST_GeomFromText('POINT(39.4041758 -99.4045469)', 4326), 39.506397, -99.5323287, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472131', 'Borin Creek', 'Stream', 'Kansas', 'KS', 'Rooks', 'Glade SE', 39.4433428, -99.3378773, ST_GeomFromText('POINT(39.4433428 -99.3378773)', 4326), 39.5194536, -99.3751002, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472134', 'Catfish Cove', 'Bay', 'Kansas', 'KS', 'Phillips', 'Kirwin SW', 39.6172325, -99.1837028, ST_GeomFromText('POINT(39.6172325 -99.1837028)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472136', 'Hungry Hollow', 'Valley', 'Kansas', 'KS', 'Phillips', 'Kirwin SW', 39.6052018, -99.178095, ST_GeomFromText('POINT(39.6052018 -99.178095)', 4326), 39.551042, -99.1540071, '1978-10-13', '2017-08-25', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('472137', 'East Branch Jim Creek', 'Stream', 'Kansas', 'KS', 'Rooks', 'Kirwin SW', 39.4533435, -99.2017607, ST_GeomFromText('POINT(39.4533435 -99.2017607)', 4326), 39.5208434, -99.2089825, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472138', 'Douglas Creek', 'Stream', 'Kansas', 'KS', 'Rooks', 'Kirwin SW', 39.4375103, -99.1473141, ST_GeomFromText('POINT(39.4375103 -99.1473141)', 4326), 39.5397324, -99.1759255, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472139', 'Buros Creek', 'Stream', 'Kansas', 'KS', 'Rooks', 'Kirwin SW', 39.4494547, -99.1337023, ST_GeomFromText('POINT(39.4494547 -99.1337023)', 4326), 39.5402881, -99.1420352, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472149', 'Lawrence Creek', 'Stream', 'Kansas', 'KS', 'Smith', 'Portis', 39.5700109, -98.7370184, ST_GeomFromText('POINT(39.5700109 -98.7370184)', 4326), 39.5419551, -98.8795244, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472150', 'Joy Creek', 'Stream', 'Kansas', 'KS', 'Osborne', 'Harlan', 39.5605664, -98.7084061, ST_GeomFromText('POINT(39.5605664 -98.7084061)', 4326), 39.5261218, -98.8131329, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472154', 'Twelvemile Creek', 'Stream', 'Kansas', 'KS', 'Osborne', 'Downs North', 39.5180662, -98.6045126, ST_GeomFromText('POINT(39.5180662 -98.6045126)', 4326), 39.6127888, -98.6334025, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472155', 'Lindley Creek', 'Stream', 'Kansas', 'KS', 'Osborne', 'Portis', 39.5588997, -98.7047947, ST_GeomFromText('POINT(39.5588997 -98.7047947)', 4326), 39.6491779, -98.6964607, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472172', 'Granite Creek', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Glen Elder South', 39.4919545, -98.3570021, ST_GeomFromText('POINT(39.4919545 -98.3570021)', 4326), 39.6238999, -98.4247822, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472177', 'Frog Creek', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Glen Elder North', 39.4841766, -98.2847769, ST_GeomFromText('POINT(39.4841766 -98.2847769)', 4326), 39.5538994, -98.2733875, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472180', 'Disappointment Creek', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Glen Elder North', 39.5541772, -98.323945, ST_GeomFromText('POINT(39.5541772 -98.323945)', 4326), 39.6316778, -98.2933882, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('472181', 'Spring Branch', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Glen Elder North', 39.5516772, -98.3028331, ST_GeomFromText('POINT(39.5516772 -98.3028331)', 4326), 39.5638889, -98.2816667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472187', 'Dog Creek', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Solomon Rapids', 39.4736193, -98.1728284, ST_GeomFromText('POINT(39.4736193 -98.1728284)', 4326), 39.5875094, -98.1731062, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472188', 'Mulberry Creek', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Solomon Rapids', 39.4561182, -98.1269936, ST_GeomFromText('POINT(39.4561182 -98.1269936)', 4326), 39.593065, -98.1692172, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472189', 'Plum Creek', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Beloit', 39.4344503, -98.0692138, ST_GeomFromText('POINT(39.4344503 -98.0692138)', 4326), 39.6116763, -98.1667171, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472195', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Jewell SE', 39.4530613, -98.0567133, ST_GeomFromText('POINT(39.4530613 -98.0567133)', 4326), 39.5297278, -98.0144897, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472196', 'Little Cheyenne Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Jamestown NW', 39.6272292, -97.9933783, ST_GeomFromText('POINT(39.6272292 -97.9933783)', 4326), 39.5508394, -98.0231011, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472197', 'West Asher Creek', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Simpson', 39.4158377, -97.9869888, ST_GeomFromText('POINT(39.4158377 -97.9869888)', 4326), 39.5477838, -98.0169898, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472201', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Graham', 'Mingo', 39.3488937, -100.8962623, ST_GeomFromText('POINT(39.3488937 -100.8962623)', 4326), 39.461671, -99.9806815, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472204', 'Coon Creek', 'Stream', 'Kansas', 'KS', 'Graham', 'Hill City North', 39.366673, -99.7862293, ST_GeomFromText('POINT(39.366673 -99.7862293)', 4326), 39.4502832, -99.8656767, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472205', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Graham', 'Nicodemus', 39.3786187, -99.6134444, ST_GeomFromText('POINT(39.3786187 -99.6134444)', 4326), 39.4847281, -99.8042851, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('472218', 'Webster Reservoir', 'Reservoir', 'Kansas', 'KS', 'Rooks', 'Nicodemus', 39.3916751, -99.5170513, ST_GeomFromText('POINT(39.3916751 -99.5170513)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472221', 'Slate Creek', 'Stream', 'Kansas', 'KS', 'Rooks', 'Nicodemus', 39.3994527, -99.5209403, ST_GeomFromText('POINT(39.3994527 -99.5209403)', 4326), 39.4886111, -99.5772222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472228', 'Ash Creek', 'Stream', 'Kansas', 'KS', 'Rooks', 'Stockton', 39.4127872, -99.3553782, ST_GeomFromText('POINT(39.4127872 -99.3553782)', 4326), 39.5219532, -99.4445473, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472230', 'Lost Creek', 'Stream', 'Kansas', 'KS', 'Rooks', 'Webster Dam', 39.397787, -99.3934354, ST_GeomFromText('POINT(39.397787 -99.3934354)', 4326), 39.2619528, -99.5367755, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472232', 'Cocklebur Creek', 'Stream', 'Kansas', 'KS', 'Rooks', 'Stockton', 39.4433428, -99.3375994, ST_GeomFromText('POINT(39.4433428 -99.3375994)', 4326), 39.5088982, -99.358433, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472234', 'Dibble Creek', 'Stream', 'Kansas', 'KS', 'Rooks', 'Stockton', 39.4291766, -99.2823197, ST_GeomFromText('POINT(39.4291766 -99.2823197)', 4326), 39.5152871, -99.3556551, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472240', 'Boxelder Creek', 'Stream', 'Kansas', 'KS', 'Rooks', 'Stockton', 39.4191764, -99.3103764, ST_GeomFromText('POINT(39.4191764 -99.3103764)', 4326), 39.2513989, -99.3109337, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472241', 'Roberts Roost Creek', 'Stream', 'Kansas', 'KS', 'Rooks', 'Stockton', 39.4161211, -99.2789864, ST_GeomFromText('POINT(39.4161211 -99.2789864)', 4326), 39.2827878, -99.2959329, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472242', 'Lake Stockton', 'Reservoir', 'Kansas', 'KS', 'Rooks', 'Stockton', 39.4020881, -99.3203312, ST_GeomFromText('POINT(39.4020881 -99.3203312)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('472244', 'Medicine Creek', 'Stream', 'Kansas', 'KS', 'Rooks', 'Woodston NW', 39.4313992, -99.1381472, ST_GeomFromText('POINT(39.4313992 -99.1381472)', 4326), 39.2513994, -99.1453716, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('472245', 'Jim Creek', 'Stream', 'Kansas', 'KS', 'Rooks', 'Woodston NW', 39.4325102, -99.1800933, ST_GeomFromText('POINT(39.4325102 -99.1800933)', 4326), 39.526399, -99.2217608, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472246', 'Elm Creek', 'Stream', 'Kansas', 'KS', 'Rooks', 'Woodston NW', 39.4366768, -99.2325955, ST_GeomFromText('POINT(39.4366768 -99.2325955)', 4326), 39.2619547, -99.255376, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472256', 'Lucky Creek', 'Stream', 'Kansas', 'KS', 'Osborne', 'Woodston', 39.440566, -99.0142531, ST_GeomFromText('POINT(39.440566 -99.0142531)', 4326), 39.3330661, -99.0739789, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472264', 'Crooked Creek', 'Stream', 'Kansas', 'KS', 'Osborne', 'Alton', 39.4594549, -98.9364718, ST_GeomFromText('POINT(39.4594549 -98.9364718)', 4326), 39.5427883, -99.028697, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472275', 'Kill Creek', 'Stream', 'Kansas', 'KS', 'Osborne', 'Bloomington', 39.4338995, -98.7797988, ST_GeomFromText('POINT(39.4338995 -98.7797988)', 4326), 39.3186217, -98.9428624, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472276', 'East Kill Creek', 'Stream', 'Kansas', 'KS', 'Osborne', 'Bloomington', 39.4011217, -98.7984111, ST_GeomFromText('POINT(39.4011217 -98.7984111)', 4326), 39.3113995, -98.8703594, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472287', 'Covert Creek', 'Stream', 'Kansas', 'KS', 'Osborne', 'Osborne', 39.4272327, -98.7064623, ST_GeomFromText('POINT(39.4272327 -98.7064623)', 4326), 39.2525106, -98.8509146, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472288', 'Indian Creek', 'Stream', 'Kansas', 'KS', 'Osborne', 'Downs South', 39.4211214, -98.5970128, ST_GeomFromText('POINT(39.4211214 -98.5970128)', 4326), 39.324177, -98.6889623, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472290', 'Twin Creek', 'Stream', 'Kansas', 'KS', 'Osborne', 'Downs South', 39.4261213, -98.5400657, ST_GeomFromText('POINT(39.4261213 -98.5400657)', 4326), 39.2825104, -98.7131304, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472293', 'Center Twin Creek', 'Stream', 'Kansas', 'KS', 'Osborne', 'Downs South', 39.3855657, -98.5572889, ST_GeomFromText('POINT(39.3855657 -98.5572889)', 4326), 39.3041767, -98.5995138, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('472294', 'East Twin Creek', 'Stream', 'Kansas', 'KS', 'Osborne', 'Downs South', 39.4130658, -98.5553443, ST_GeomFromText('POINT(39.4130658 -98.5553443)', 4326), 39.3280655, -98.5500668, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472301', 'North Fork Solomon River', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Mill Creek', 39.4730657, -98.4333942, ST_GeomFromText('POINT(39.4730657 -98.4333942)', 4326), 39.2811151, -101.2818269, '1978-10-13', '2019-08-29', NULL, NULL, NULL),
  ('472303', 'Carr Creek', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Mill Creek', 39.448899, -98.4570064, ST_GeomFromText('POINT(39.448899 -98.4570064)', 4326), 39.2758429, -98.5339553, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472304', 'Mill Creek', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Mill Creek', 39.4716768, -98.4158935, ST_GeomFromText('POINT(39.4716768 -98.4158935)', 4326), 39.3555648, -98.3997824, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472306', 'Great Spirit Spring (historical)', 'Spring', 'Kansas', 'KS', 'Mitchell', 'Mill Creek', 39.4983435, -98.3789473, ST_GeomFromText('POINT(39.4983435 -98.3789473)', 4326), NULL, NULL, '1978-10-13', '2019-07-26', NULL, NULL, NULL),
  ('472317', 'Walnut Creek', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Glen Elder South', 39.4794543, -98.299222, ST_GeomFromText('POINT(39.4794543 -98.299222)', 4326), 39.3408423, -98.3708925, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472318', 'Little Walnut Creek', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Glen Elder South', 39.4797321, -98.3022776, ST_GeomFromText('POINT(39.4797321 -98.3022776)', 4326), 39.3858333, -98.3133333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472326', 'Turkey Creek', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Glen Elder South', 39.4569532, -98.2108855, ST_GeomFromText('POINT(39.4569532 -98.2108855)', 4326), 39.3872311, -98.2686658, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472332', 'Indian Creek', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Solomon Rapids', 39.4483409, -98.153939, ST_GeomFromText('POINT(39.4483409 -98.153939)', 4326), 39.3905556, -98.2144444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472340', 'Leban Creek', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Beloit', 39.4352844, -98.1089374, ST_GeomFromText('POINT(39.4352844 -98.1089374)', 4326), 39.382786, -98.2222751, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('472350', 'Marshall Creek', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Beloit', 39.4041717, -98.0297679, ST_GeomFromText('POINT(39.4041717 -98.0297679)', 4326), 39.3405611, -98.074492, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472356', 'West Branch Wild Horse Creek', 'Stream', 'Kansas', 'KS', 'Graham', 'Hill City South', 39.2991734, -99.7509506, ST_GeomFromText('POINT(39.2991734 -99.7509506)', 4326), 39.2680556, -99.7805556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472357', 'Wild Horse Creek', 'Stream', 'Kansas', 'KS', 'Graham', 'Bogue', 39.3691737, -99.7009481, ST_GeomFromText('POINT(39.3691737 -99.7009481)', 4326), 39.2744512, -99.7487284, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472359', 'Skunk Creek', 'Stream', 'Kansas', 'KS', 'Graham', 'Hill City South', 39.360562, -99.7759513, ST_GeomFromText('POINT(39.360562 -99.7759513)', 4326), 39.2938889, -99.8172222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472362', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Graham', 'Bogue', 39.3594519, -99.6367788, ST_GeomFromText('POINT(39.3594519 -99.6367788)', 4326), 39.2958333, -99.6572222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472365', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Rooks', 'Palco', 39.3686193, -99.5420526, ST_GeomFromText('POINT(39.3686193 -99.5420526)', 4326), 39.2458417, -99.540109, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472381', 'Twin Mound', 'Summit', 'Kansas', 'KS', 'Rooks', 'Twin Mound', 39.2939636, -99.2189539, ST_GeomFromText('POINT(39.2939636 -99.2189539)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('472389', 'Medicine Creek', 'Stream', 'Kansas', 'KS', 'Osborne', 'Bloomington', 39.4525105, -98.8339676, ST_GeomFromText('POINT(39.4525105 -98.8339676)', 4326), 39.3208439, -99.0317551, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472393', 'Eagle Creek', 'Stream', 'Kansas', 'KS', 'Osborne', 'Paradise', 39.1097333, -98.9106405, ST_GeomFromText('POINT(39.1097333 -98.9106405)', 4326), 39.2652884, -99.0387003, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472410', 'Bacon Creek', 'Stream', 'Kansas', 'KS', 'Lincoln', 'Vesper', 39.1100083, -98.3370033, ST_GeomFromText('POINT(39.1100083 -98.3370033)', 4326), 39.2816755, -98.4070055, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('472412', 'Antelope Creek', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Blue Hill', 39.3272303, -98.2497765, ST_GeomFromText('POINT(39.3272303 -98.2497765)', 4326), 39.3675087, -98.2853333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472413', 'Little Creek', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Blue Hill', 39.2794513, -98.2042195, ST_GeomFromText('POINT(39.2794513 -98.2042195)', 4326), 39.291397, -98.3031123, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472414', 'Cole Creek', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Blue Hill', 39.3347304, -98.2550545, ST_GeomFromText('POINT(39.3347304 -98.2550545)', 4326), 39.3575, -98.3102778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472415', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Beloit SW', 39.2688956, -98.1961637, ST_GeomFromText('POINT(39.2688956 -98.1961637)', 4326), 39.2491744, -98.3067239, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472416', 'West Rock Creek', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Blue Hill', 39.2497295, -98.2639444, ST_GeomFromText('POINT(39.2497295 -98.2639444)', 4326), 39.2755639, -98.3553367, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472420', 'Fifth Creek', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Beloit SE', 39.2375052, -98.0847704, ST_GeomFromText('POINT(39.2375052 -98.0847704)', 4326), 39.3441727, -98.1072709, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472421', 'Fourth Creek', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Beloit SE', 39.228894, -98.0736589, ST_GeomFromText('POINT(39.228894 -98.0736589)', 4326), 39.3377829, -98.0522688, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472423', 'Fourth Creek', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Simpson', 39.3880599, -97.9864332, ST_GeomFromText('POINT(39.3880599 -97.9864332)', 4326), 39.3125043, -98.0017113, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472429', 'West Branch Third Creek', 'Stream', 'Kansas', 'KS', 'Lincoln', 'Barnard', 39.1997267, -98.0222682, ST_GeomFromText('POINT(39.1997267 -98.0222682)', 4326), 39.2700039, -97.9828219, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472431', 'Hay Hollow', 'Valley', 'Kansas', 'KS', 'Trego', 'WaKeeney West', 39.1164881, -99.9461766, ST_GeomFromText('POINT(39.1164881 -99.9461766)', 4326), 39.2031459, -99.9921708, '1978-10-13', '2017-08-25', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('472432', 'Happy Creek', 'Stream', 'Kansas', 'KS', 'Trego', 'WaKeeney East', 39.1175074, -99.8495651, ST_GeomFromText('POINT(39.1175074 -99.8495651)', 4326), 39.2208389, -99.9662362, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472433', 'Chalk Creek', 'Stream', 'Kansas', 'KS', 'Trego', 'WaKeeney East', 39.1116743, -99.8178973, ST_GeomFromText('POINT(39.1116743 -99.8178973)', 4326), 39.2052843, -99.8603991, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472438', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Rooks', 'Plainville SE', 39.0902882, -99.3462142, ST_GeomFromText('POINT(39.0902882 -99.3462142)', 4326), 39.2047317, -99.4148268, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472440', 'Plainville Township Lake', 'Reservoir', 'Kansas', 'KS', 'Rooks', 'Plainville', 39.2271843, -99.321905, ST_GeomFromText('POINT(39.2271843 -99.321905)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('472445', 'King Hill', 'Summit', 'Kansas', 'KS', 'Ellis', 'Codell', 39.1318529, -99.1864117, ST_GeomFromText('POINT(39.1318529 -99.1864117)', 4326), NULL, NULL, '1978-10-13', '2021-01-01', NULL, NULL, NULL),
  ('472460', 'Wolf Creek', 'Stream', 'Kansas', 'KS', 'Lincoln', 'Sylvan Grove', 39.0036211, -98.4292293, ST_GeomFromText('POINT(39.0036211 -98.4292293)', 4326), 39.2427884, -98.7706334, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472462', 'West Fork Wolf Creek', 'Stream', 'Kansas', 'KS', 'Russell', 'Luray', 39.112511, -98.7222983, ST_GeomFromText('POINT(39.112511 -98.7222983)', 4326), 39.1683442, -98.8359145, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472467', 'Fourmile Creek', 'Stream', 'Kansas', 'KS', 'Russell', 'Luray', 39.0888997, -98.6275715, ST_GeomFromText('POINT(39.0888997 -98.6275715)', 4326), 39.2144546, -98.645072, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472470', 'Coon Creek', 'Stream', 'Kansas', 'KS', 'Osborne', 'Vincent', 39.1052887, -98.6797962, ST_GeomFromText('POINT(39.1052887 -98.6797962)', 4326), 39.1644551, -98.7059085, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472474', 'East Fork Wolf Creek', 'Stream', 'Kansas', 'KS', 'Russell', 'Lucas', 39.0494552, -98.5153438, ST_GeomFromText('POINT(39.0494552 -98.5153438)', 4326), 39.2019545, -98.5967364, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('472476', 'Lake Hobbie', 'Reservoir', 'Kansas', 'KS', 'Osborne', 'Meades Ranch', 39.2311928, -98.5248226, ST_GeomFromText('POINT(39.2311928 -98.5248226)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('472483', 'South Branch Spillman Creek', 'Stream', 'Kansas', 'KS', 'Lincoln', 'Hunter', 39.1305644, -98.3795049, ST_GeomFromText('POINT(39.1305644 -98.3795049)', 4326), 39.1927778, -98.4727778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472484', 'North Branch Spillman Creek', 'Stream', 'Kansas', 'KS', 'Lincoln', 'Hunter', 39.1305644, -98.3795049, ST_GeomFromText('POINT(39.1305644 -98.3795049)', 4326), 39.2313984, -98.5108989, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472485', 'Spillman Creek', 'Stream', 'Kansas', 'KS', 'Lincoln', 'Lincoln', 39.0288958, -98.2072765, ST_GeomFromText('POINT(39.0288958 -98.2072765)', 4326), 39.1305644, -98.3795049, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472496', 'Rattlesnake Creek', 'Stream', 'Kansas', 'KS', 'Lincoln', 'Barnard', 39.1933381, -98.0433804, ST_GeomFromText('POINT(39.1933381 -98.0433804)', 4326), 39.204452, -98.2875566, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472497', 'Little Timber Creek', 'Stream', 'Kansas', 'KS', 'Lincoln', 'Vesper', 39.0730631, -98.2661673, ST_GeomFromText('POINT(39.0730631 -98.2661673)', 4326), 39.1647293, -98.2383882, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472498', 'Trail Creek', 'Stream', 'Kansas', 'KS', 'Lincoln', 'Ash Grove', 39.0766743, -98.2742232, ST_GeomFromText('POINT(39.0766743 -98.2742232)', 4326), 39.2050078, -98.3056129, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472501', 'Battle Creek', 'Stream', 'Kansas', 'KS', 'Lincoln', 'Barnard', 39.1625055, -98.099494, ST_GeomFromText('POINT(39.1625055 -98.099494)', 4326), 39.1208402, -98.2164431, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472505', 'East Branch Third Creek', 'Stream', 'Kansas', 'KS', 'Lincoln', 'Barnard', 39.1997267, -98.0222682, ST_GeomFromText('POINT(39.1997267 -98.0222682)', 4326), 39.2494482, -97.9853219, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472506', 'Third Creek', 'Stream', 'Kansas', 'KS', 'Lincoln', 'Barnard', 39.1811158, -98.0297688, ST_GeomFromText('POINT(39.1811158 -98.0297688)', 4326), 39.1997222, -98.0219444, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('472507', 'Prosser Creek', 'Stream', 'Kansas', 'KS', 'Lincoln', 'Barnard', 39.2011163, -98.0800483, ST_GeomFromText('POINT(39.2011163 -98.0800483)', 4326), 39.1083396, -98.1556076, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472508', 'West Elkhorn Creek', 'Stream', 'Kansas', 'KS', 'Lincoln', 'Ada', 39.1630599, -97.9903231, ST_GeomFromText('POINT(39.1630599 -97.9903231)', 4326), 39.0847275, -98.0553264, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472509', 'East Elkhorn Creek', 'Stream', 'Kansas', 'KS', 'Lincoln', 'Ada', 39.1630599, -97.9914342, ST_GeomFromText('POINT(39.1630599 -97.9914342)', 4326), 39.0836163, -98.0442149, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472524', 'Sweetwater Creek', 'Stream', 'Kansas', 'KS', 'Ellis', 'Turkville', 39.0625111, -99.0964824, ST_GeomFromText('POINT(39.0625111 -99.0964824)', 4326), 39.0316778, -99.1773194, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472531', 'Paradise Creek', 'Stream', 'Kansas', 'KS', 'Russell', 'Russell', 38.9839003, -98.7911911, ST_GeomFromText('POINT(38.9839003 -98.7911911)', 4326), 39.2283433, -99.3164897, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472532', 'Boswell Creek', 'Stream', 'Kansas', 'KS', 'Russell', 'Russell', 38.9908448, -98.7978581, ST_GeomFromText('POINT(38.9908448 -98.7978581)', 4326), 39.0569557, -98.8806394, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472533', 'Wilson Lake', 'Reservoir', 'Kansas', 'KS', 'Russell', 'Dorrance NE', 38.9401464, -98.5567638, ST_GeomFromText('POINT(38.9401464 -98.5567638)', 4326), NULL, NULL, '1978-10-13', '2024-11-01', 'Official', 'Board Decision', '1971-01-01'),
  ('472538', 'Blue Stem Creek', 'Stream', 'Kansas', 'KS', 'Lincoln', 'Sylvan Grove', 39.0263995, -98.4775644, ST_GeomFromText('POINT(39.0263995 -98.4775644)', 4326), 39.015289, -98.584514, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472556', 'Lost Creek', 'Stream', 'Kansas', 'KS', 'Lincoln', 'Lincoln', 39.035562, -98.1572748, ST_GeomFromText('POINT(39.035562 -98.1572748)', 4326), 39.1222222, -98.1666667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472557', 'Yauger Creek', 'Stream', 'Kansas', 'KS', 'Lincoln', 'Lincoln', 39.0269507, -98.1483858, ST_GeomFromText('POINT(39.0269507 -98.1483858)', 4326), 39.105, -98.1497222, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('472559', 'Bullfoot Creek', 'Stream', 'Kansas', 'KS', 'Lincoln', 'Lincoln', 39.0083395, -98.136441, ST_GeomFromText('POINT(39.0083395 -98.136441)', 4326), 38.9025092, -98.3500604, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472562', 'Brush Creek', 'Stream', 'Kansas', 'KS', 'Lincoln', 'Juniata', 38.9983382, -97.9925474, ST_GeomFromText('POINT(38.9983382 -97.9925474)', 4326), 38.8627846, -98.078662, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472563', 'Beaver Creek', 'Stream', 'Kansas', 'KS', 'Lincoln', 'Shady Bend', 39.0194502, -98.0967174, ST_GeomFromText('POINT(39.0194502 -98.0967174)', 4326), 39.0844444, -98.0619444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472564', 'Twelvemile Creek', 'Stream', 'Kansas', 'KS', 'Lincoln', 'Shady Bend', 39.0133384, -98.0125479, ST_GeomFromText('POINT(39.0133384 -98.0125479)', 4326), 39.0777778, -98.0552778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472565', 'Elkhorn Creek', 'Stream', 'Kansas', 'KS', 'Lincoln', 'Shady Bend', 39.0163947, -98.0897727, ST_GeomFromText('POINT(39.0163947 -98.0897727)', 4326), 38.9577841, -98.1022735, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472566', 'Spring Creek', 'Stream', 'Nebraska', 'NE', 'Richardson', 'Humboldt SE', 40.0544452, -95.8647158, ST_GeomFromText('POINT(40.0544452 -95.8647158)', 4326), 39.998334, -95.8688819, '1979-03-09', NULL, NULL, NULL, NULL),
  ('472567', 'Rabbit Creek', 'Stream', 'Nebraska', 'NE', 'Richardson', 'Humboldt SE', 40.0255569, -95.777489, ST_GeomFromText('POINT(40.0255569 -95.777489)', 4326), 39.995279, -95.7741552, '1979-03-09', NULL, NULL, NULL, NULL),
  ('472572', 'Crosby Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Scandia NW', 39.995847, -97.9750432, ST_GeomFromText('POINT(39.995847 -97.9750432)', 4326), 40.0864009, -97.9894866, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472573', 'Forsha Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Scandia NW', 39.9911237, -97.9072652, ST_GeomFromText('POINT(39.9911237 -97.9072652)', 4326), 40.0905669, -97.947542, '1978-10-13', '2015-04-22', NULL, NULL, NULL),
  ('472576', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Republic', 'Scandia NW', 39.9411222, -97.8625431, ST_GeomFromText('POINT(39.9411222 -97.8625431)', 4326), 39.9619577, -97.9914324, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('472583', 'White Rock Creek', 'Stream', 'Kansas', 'KS', 'Republic', 'Republic', 39.919455, -97.8558765, ST_GeomFromText('POINT(39.919455 -97.8558765)', 4326), 39.9552912, -98.6670128, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472587', 'Otter Creek', 'Stream', 'Kansas', 'KS', 'Republic', 'Republic', 39.9069546, -97.8397653, ST_GeomFromText('POINT(39.9069546 -97.8397653)', 4326), 40.0077885, -97.7719869, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472588', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Republic', 'Scandia', 39.84112, -97.8303212, ST_GeomFromText('POINT(39.84112 -97.8303212)', 4326), 39.8994525, -97.7089312, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472597', 'Dry Creek', 'Stream', 'Nebraska', 'NE', 'Thayer', 'Hebron', 40.1594479, -97.5180977, ST_GeomFromText('POINT(40.1594479 -97.5180977)', 4326), 39.97265, -97.71526, '1978-10-13', '2010-12-15', NULL, NULL, NULL),
  ('472598', 'Rose Creek', 'Stream', 'Nebraska', 'NE', 'Jefferson', 'Endicott', 40.0763922, -97.1144779, ST_GeomFromText('POINT(40.0763922 -97.1144779)', 4326), 39.9633426, -97.7194868, '1978-10-13', '2019-07-17', NULL, NULL, NULL),
  ('472606', 'North Fork Mill Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Haddam', 39.8483367, -97.3322585, ST_GeomFromText('POINT(39.8483367 -97.3322585)', 4326), 39.9016725, -97.5803192, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472607', 'Salt Creek', 'Stream', 'Kansas', 'KS', 'Cloud', 'Rice', 39.5958337, -97.5258705, ST_GeomFromText('POINT(39.5958337 -97.5258705)', 4326), 39.9041731, -97.6100417, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472611', 'Humphrey Branch', 'Stream', 'Nebraska', 'NE', 'Thayer', 'Hubbell', 40.02796, -97.44498, ST_GeomFromText('POINT(40.02796 -97.44498)', 4326), 39.975838, -97.408373, '1978-10-13', '2010-12-15', NULL, NULL, NULL),
  ('472613', 'Cherry Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Haddam', 39.8513924, -97.3494812, ST_GeomFromText('POINT(39.8513924 -97.3494812)', 4326), 39.960838, -97.4453181, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472614', 'Elm Creek', 'Stream', 'Kansas', 'KS', 'Republic', 'Narka', 39.8969484, -97.3944829, ST_GeomFromText('POINT(39.8969484 -97.3944829)', 4326), 39.9719444, -97.3983333, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('472622', 'Bowman Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Morrowville', 39.868059, -97.2425343, ST_GeomFromText('POINT(39.868059 -97.2425343)', 4326), 39.999449, -97.3203158, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472623', 'Stanley Branch', 'Stream', 'Kansas', 'KS', 'Washington', 'Mahaska', 39.9430597, -97.2889255, ST_GeomFromText('POINT(39.9430597 -97.2889255)', 4326), 39.9702778, -97.3255556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472624', 'Myer Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Mahaska', 39.8566701, -97.2925354, ST_GeomFromText('POINT(39.8566701 -97.2925354)', 4326), 39.9866713, -97.3589276, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472626', 'Gray Branch', 'Stream', 'Kansas', 'KS', 'Washington', 'Morrowville', 39.8622256, -97.2278116, ST_GeomFromText('POINT(39.8622256 -97.2278116)', 4326), 39.9908375, -97.2475363, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472629', 'Dry Branch', 'Stream', 'Kansas', 'KS', 'Washington', 'Buckeye', 39.0694415, -97.1364067, ST_GeomFromText('POINT(39.0694415 -97.1364067)', 4326), 39.9977821, -97.175868, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472630', 'Silver Creek', 'Stream', 'Nebraska', 'NE', 'Jefferson', 'Fairbury SW', 40.07057, -97.234, ST_GeomFromText('POINT(40.07057 -97.234)', 4326), 39.99259, -97.23478, '1978-10-13', '2011-10-20', NULL, NULL, NULL),
  ('472631', 'Jones Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Washington NW', 39.8661146, -97.2175335, ST_GeomFromText('POINT(39.8661146 -97.2175335)', 4326), 39.9536151, -97.2303131, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472632', 'Salt Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Washington NW', 39.8500035, -97.1766987, ST_GeomFromText('POINT(39.8500035 -97.1766987)', 4326), 39.9911153, -97.2136465, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472633', 'Riddle Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Morrowville', 39.8422257, -97.1361416, ST_GeomFromText('POINT(39.8422257 -97.1361416)', 4326), 40.0044486, -97.1961463, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472634', 'Devils Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Washington NW', 39.8875039, -97.0066941, ST_GeomFromText('POINT(39.8875039 -97.0066941)', 4326), 39.9955598, -97.1322556, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('472639', 'Joy Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Hanover West', 39.9427817, -96.9728058, ST_GeomFromText('POINT(39.9427817 -96.9728058)', 4326), 40.0019486, -97.1083662, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472640', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Washington NE', 39.9091706, -97.1025308, ST_GeomFromText('POINT(39.9091706 -97.1025308)', 4326), 39.9627778, -97.1130556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472641', 'School Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Endicott', 40.000282, -97.0130859, ST_GeomFromText('POINT(40.000282 -97.0130859)', 4326), 40.0056075, -97.0826946, '1978-10-13', '2015-04-22', NULL, NULL, NULL),
  ('472645', 'Mill Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Hanover West', 39.9222259, -96.9275267, ST_GeomFromText('POINT(39.9222259 -96.9275267)', 4326), 39.8483367, -97.3322585, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472652', 'Horseshoe Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Herkimer', 39.8944466, -96.6627989, ST_GeomFromText('POINT(39.8944466 -96.6627989)', 4326), 40.0380591, -96.9239173, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472654', 'Cottonwood Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Hanover SW', 39.8633365, -96.8866915, ST_GeomFromText('POINT(39.8633365 -96.8866915)', 4326), 39.9088919, -96.8030799, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472658', 'Raemer Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Herkimer', 39.9022246, -96.6980776, ST_GeomFromText('POINT(39.9022246 -96.6980776)', 4326), 39.8716694, -96.7897457, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472659', 'Meadow Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Herkimer', 39.9416697, -96.7489126, ST_GeomFromText('POINT(39.9416697 -96.7489126)', 4326), 39.9997255, -96.7408578, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472660', 'Little Indian Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Hanover East', 39.9491698, -96.765302, ST_GeomFromText('POINT(39.9491698 -96.765302)', 4326), 40.0288918, -96.7569694, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472674', 'Nieman Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Herkimer', 39.9161135, -96.6672437, ST_GeomFromText('POINT(39.9161135 -96.6672437)', 4326), 39.9808333, -96.6847222, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('472675', 'Deer Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Herkimer', 39.9013911, -96.6516876, ST_GeomFromText('POINT(39.9013911 -96.6516876)', 4326), 40.0036139, -96.6530781, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472676', 'Indian Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Herkimer', 39.9280583, -96.7239119, ST_GeomFromText('POINT(39.9280583 -96.7239119)', 4326), 40.0283359, -96.6805788, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472681', 'Scotch Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Herkimer', 39.9025021, -96.6336316, ST_GeomFromText('POINT(39.9025021 -96.6336316)', 4326), 39.913335, -96.5530744, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472684', 'Blodgett Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Oketo', 39.8958353, -96.6280759, ST_GeomFromText('POINT(39.8958353 -96.6280759)', 4326), 39.8811128, -96.5802967, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472685', 'Lily Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Oketo', 39.8241681, -96.6036296, ST_GeomFromText('POINT(39.8241681 -96.6036296)', 4326), 39.8875016, -96.5691854, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472686', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Marysville', 39.8294462, -96.6572421, ST_GeomFromText('POINT(39.8294462 -96.6572421)', 4326), 39.9300013, -96.4691836, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472687', 'Bommer Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Oketo', 39.9286133, -96.6225207, ST_GeomFromText('POINT(39.9286133 -96.6225207)', 4326), 39.9222222, -96.5580556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472688', 'North Elm Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Oketo', 39.9719468, -96.6027987, ST_GeomFromText('POINT(39.9719468 -96.6027987)', 4326), 39.9538902, -96.4519613, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472689', 'Mission Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Barneston', 40.0005581, -96.5969658, ST_GeomFromText('POINT(40.0005581 -96.5969658)', 4326), 40.05455, -96.3639355, '1978-10-13', '2015-04-22', NULL, NULL, NULL),
  ('472697', 'Robidoux Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Frankfort', 39.6905548, -96.4441779, ST_GeomFromText('POINT(39.6905548 -96.4441779)', 4326), 40.006112, -96.3541809, '1978-10-13', NULL, 'Official', 'Board Decision', '1947-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('472698', 'Wolf Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Beattie', 39.8572228, -96.4325145, ST_GeomFromText('POINT(39.8572228 -96.4325145)', 4326), 39.8888892, -96.3630685, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472699', 'Murdock Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Axtell NW', 40.0033349, -96.4572399, ST_GeomFromText('POINT(40.0033349 -96.4572399)', 4326), 39.970001, -96.3877927, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472704', 'Pole Creek', 'Stream', 'Kansas', 'KS', 'Nemaha', 'Seneca NW', 39.9758332, -96.1461168, ST_GeomFromText('POINT(39.9758332 -96.1461168)', 4326), 40.0025009, -96.3439027, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472708', 'Manley Creek', 'Stream', 'Kansas', 'KS', 'Nemaha', 'Washington NW', 39.9655597, -97.2161462, ST_GeomFromText('POINT(39.9655597 -97.2161462)', 4326), 39.9869452, -96.3441804, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472709', 'Clear Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Summerfield', 39.9580553, -96.1338939, ST_GeomFromText('POINT(39.9580553 -96.1338939)', 4326), 39.9472228, -96.3469577, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472710', 'North Fork Black Vermillion River', 'Stream', 'Kansas', 'KS', 'Marshall', 'Vermillion', 39.7244434, -96.3294539, ST_GeomFromText('POINT(39.7244434 -96.3294539)', 4326), 39.9333338, -96.3469575, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472711', 'Snipe Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Frankfort', 39.7480556, -96.4500131, ST_GeomFromText('POINT(39.7480556 -96.4500131)', 4326), 39.8986114, -96.3505683, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472722', 'Negro Creek', 'Stream', 'Kansas', 'KS', 'Nemaha', 'Seneca NW', 39.9330553, -96.2027856, ST_GeomFromText('POINT(39.9330553 -96.2027856)', 4326), 39.8911111, -96.2108333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472723', 'North Fork Wildcat Creek', 'Stream', 'Kansas', 'KS', 'Nemaha', 'Seneca NW', 39.879999, -96.1202815, ST_GeomFromText('POINT(39.879999 -96.1202815)', 4326), 39.9149995, -96.1852847, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472724', 'Wildcat Creek', 'Stream', 'Nebraska', 'NE', 'Pawnee', 'Pawnee City', 40.01772, -96.21794, ST_GeomFromText('POINT(40.01772 -96.21794)', 4326), 40.01521, -96.35218, '1978-10-13', '2010-12-16', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('472725', 'Turkey Creek', 'Stream', 'Kansas', 'KS', 'Nemaha', 'Saint Benedict', 39.9536105, -96.0350006, ST_GeomFromText('POINT(39.9536105 -96.0350006)', 4326), 40.2344445, -96.4555728, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472728', 'Deer Creek', 'Stream', 'Kansas', 'KS', 'Nemaha', 'Saint Benedict', 39.9188879, -96.0330558, ST_GeomFromText('POINT(39.9188879 -96.0330558)', 4326), 39.9322223, -95.8480472, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472729', 'Wildcat Creek', 'Stream', 'Kansas', 'KS', 'Nemaha', 'Saint Benedict', 39.8786098, -96.0436115, ST_GeomFromText('POINT(39.8786098 -96.0436115)', 4326), 39.88, -96.12, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472731', 'Burger Creek', 'Stream', 'Kansas', 'KS', 'Nemaha', 'Saint Benedict', 39.943055, -96.0758357, ST_GeomFromText('POINT(39.943055 -96.0758357)', 4326), 39.9925, -96.1133333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472735', 'Harris Creek', 'Stream', 'Kansas', 'KS', 'Nemaha', 'Saint Benedict', 39.9102768, -96.0319446, ST_GeomFromText('POINT(39.9102768 -96.0319446)', 4326), 39.86417, -96.8944695, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472736', 'South Fork Big Nemaha River', 'Stream', 'Nebraska', 'NE', 'Richardson', 'Salem', 40.0616684, -95.702765, ST_GeomFromText('POINT(40.0616684 -95.702765)', 4326), 39.660552, -96.0294418, '1978-10-13', '2010-12-16', NULL, NULL, NULL),
  ('472737', 'South Fork Wildcat Creek', 'Stream', 'Kansas', 'KS', 'Nemaha', 'Saint Benedict', 39.879999, -96.1202815, ST_GeomFromText('POINT(39.879999 -96.1202815)', 4326), 39.8302766, -96.1586161, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472738', 'Sabetha City Lake', 'Reservoir', 'Kansas', 'KS', 'Nemaha', 'Bern', 39.9074929, -95.8994787, ST_GeomFromText('POINT(39.9074929 -95.8994787)', 4326), NULL, NULL, '1978-10-13', '2024-11-01', NULL, NULL, NULL),
  ('472741', 'Wolf Pen Creek', 'Stream', 'Kansas', 'KS', 'Nemaha', 'Bern', 39.9216657, -95.9888871, ST_GeomFromText('POINT(39.9216657 -95.9888871)', 4326), 39.9552778, -95.9133333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472748', 'Fourmile Creek', 'Stream', 'Nebraska', 'NE', 'Richardson', 'Humboldt SE', 40.08341, -95.86985, ST_GeomFromText('POINT(40.08341 -95.86985)', 4326), 39.9535, -95.87363, '1978-10-13', '2010-12-16', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('472749', 'Easly Creek', 'Stream', 'Nebraska', 'NE', 'Richardson', 'Humboldt SE', 40.0672231, -95.8591602, ST_GeomFromText('POINT(40.0672231 -95.8591602)', 4326), 39.98855, -95.90659, '1978-10-13', '2010-12-16', NULL, NULL, NULL),
  ('472754', 'Webster Creek', 'Stream', 'Kansas', 'KS', 'Nemaha', 'Sabetha', 39.8763887, -95.8016557, ST_GeomFromText('POINT(39.8763887 -95.8016557)', 4326), 39.9280556, -95.8372222, '1984-07-01', NULL, NULL, NULL, NULL),
  ('472755', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Brown', 'Fairview', 39.8347236, -95.6463731, ST_GeomFromText('POINT(39.8347236 -95.6463731)', 4326), 39.897778, -95.7644319, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472758', 'Mulberry Creek', 'Stream', 'Kansas', 'KS', 'Brown', 'Fairview', 39.8711129, -95.6313731, ST_GeomFromText('POINT(39.8711129 -95.6313731)', 4326), 39.9069447, -95.7658209, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472763', 'Rock Creek', 'Stream', 'Nebraska', 'NE', 'Richardson', 'Salem', 40.05615, -95.72323, ST_GeomFromText('POINT(40.05615 -95.72323)', 4326), 39.942778, -95.8491584, '1978-10-13', '2010-12-16', NULL, NULL, NULL),
  ('472764', 'Honey Creek', 'Stream', 'Nebraska', 'NE', 'Richardson', 'Sabetha', 40.0677791, -95.7936015, ST_GeomFromText('POINT(40.0677791 -95.7936015)', 4326), 39.9783338, -95.8655483, '1978-10-13', '2010-12-16', NULL, NULL, NULL),
  ('472765', 'Rattlesnake Creek', 'Stream', 'Nebraska', 'NE', 'Richardson', 'Humboldt SE', 40.07848, -95.859, ST_GeomFromText('POINT(40.07848 -95.859)', 4326), 39.98827, -95.88078, '1978-10-13', '2010-12-16', NULL, NULL, NULL),
  ('472767', 'Pony Creek', 'Stream', 'Nebraska', 'NE', 'Richardson', 'Falls City', 40.03278, -95.5891511, ST_GeomFromText('POINT(40.03278 -95.5891511)', 4326), 39.912778, -95.8011003, '1978-10-13', '2010-12-17', NULL, NULL, NULL),
  ('472772', 'Terrapin Creek', 'Stream', 'Kansas', 'KS', 'Brown', 'Morrill', 39.9044469, -95.5888725, ST_GeomFromText('POINT(39.9044469 -95.5888725)', 4326), 39.9188896, -95.7366533, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472774', 'Pedee Creek', 'Stream', 'Kansas', 'KS', 'Brown', 'Morrill', 39.9752795, -95.6838748, ST_GeomFromText('POINT(39.9752795 -95.6838748)', 4326), 40.0163903, -95.756099, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('472778', 'Walnut Creek', 'Stream', 'Nebraska', 'NE', 'Richardson', 'Falls City', 40.0263913, -95.5591505, ST_GeomFromText('POINT(40.0263913 -95.5591505)', 4326), 39.8172227, -95.6927629, '1978-10-13', '2010-12-17', NULL, NULL, NULL),
  ('472779', 'Euchre Creek', 'Stream', 'Kansas', 'KS', 'Brown', 'Reserve', 39.914725, -95.5658166, ST_GeomFromText('POINT(39.914725 -95.5658166)', 4326), 39.8575031, -95.5485936, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472780', 'Spring Branch', 'Stream', 'Kansas', 'KS', 'Brown', 'Reserve', 39.9177806, -95.5658166, ST_GeomFromText('POINT(39.9177806 -95.5658166)', 4326), 39.8847222, -95.5238889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472789', 'Roys Creek', 'Stream', 'Nebraska', 'NE', 'Richardson', 'Rulo', 40.01659, -95.38733, ST_GeomFromText('POINT(40.01659 -95.38733)', 4326), 39.85887, -95.44379, '1978-10-13', '2010-12-17', NULL, NULL, NULL),
  ('472795', 'Mill Creek', 'Stream', 'Kansas', 'KS', 'Doniphan', 'Oregon', 39.9452755, -95.2460875, ST_GeomFromText('POINT(39.9452755 -95.2460875)', 4326), 39.8669432, -95.2783099, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472796', 'Cedar Creek', 'Stream', 'Kansas', 'KS', 'Doniphan', 'White Cloud', 39.9477756, -95.2510876, ST_GeomFromText('POINT(39.9477756 -95.2510876)', 4326), 39.8327769, -95.2849764, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472797', 'Fox Creek', 'Stream', 'Kansas', 'KS', 'Doniphan', 'White Cloud', 39.8908329, -95.3191443, ST_GeomFromText('POINT(39.8908329 -95.3191443)', 4326), 39.8647228, -95.3569228, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472798', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Brown', 'White Cloud', 39.9133324, -95.3027552, ST_GeomFromText('POINT(39.9133324 -95.3027552)', 4326), 39.9283333, -95.3633333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472800', 'Nolands Creek', 'Stream', 'Kansas', 'KS', 'Doniphan', 'White Cloud', 39.9922212, -95.3135894, ST_GeomFromText('POINT(39.9922212 -95.3135894)', 4326), 39.995, -95.3613889, '1978-10-13', '2016-06-13', 'Official', 'Board Decision', '2016-06-09'),
  ('472807', 'Noharts Creek', 'Stream', 'Nebraska', 'NE', 'Richardson', 'Rulo', 40.0138906, -95.4472036, ST_GeomFromText('POINT(40.0138906 -95.4472036)', 4326), 39.91755, -95.45426, '1978-10-13', '2010-12-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('472811', 'Lookout Mountain', 'Summit', 'Kansas', 'KS', 'Doniphan', 'Oregon', 39.8913107, -95.1676375, ST_GeomFromText('POINT(39.8913107 -95.1676375)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('472812', 'Wolf River', 'Stream', 'Kansas', 'KS', 'Doniphan', 'Oregon', 39.8986082, -95.1916418, ST_GeomFromText('POINT(39.8986082 -95.1916418)', 4326), 39.7938903, -95.641095, '1978-10-13', '2019-08-29', NULL, NULL, NULL),
  ('472814', 'Mission Creek', 'Stream', 'Kansas', 'KS', 'Doniphan', 'Oregon', 39.901664, -95.2008087, ST_GeomFromText('POINT(39.901664 -95.2008087)', 4326), 39.8333321, -95.2719206, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472827', 'Beaver Creek', 'Stream', 'Kansas', 'KS', 'Republic', 'Kackley', 39.7111175, -97.8017099, ST_GeomFromText('POINT(39.7111175 -97.8017099)', 4326), 39.8516769, -97.9189328, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472829', 'Mud Creek', 'Stream', 'Kansas', 'KS', 'Republic', 'Courtland', 39.8150083, -97.8114322, ST_GeomFromText('POINT(39.8150083 -97.8114322)', 4326), 39.8613993, -97.918655, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472834', 'School Creek', 'Stream', 'Kansas', 'KS', 'Republic', 'Kackley', 39.7419512, -97.7875433, ST_GeomFromText('POINT(39.7419512 -97.7875433)', 4326), 39.8863971, -97.7214313, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472842', 'Riley Creek', 'Stream', 'Kansas', 'KS', 'Republic', 'Wayne', 39.7330594, -97.5939293, ST_GeomFromText('POINT(39.7330594 -97.5939293)', 4326), 39.8930625, -97.6478197, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472844', 'Coal Creek', 'Stream', 'Kansas', 'KS', 'Republic', 'Wayne', 39.6819468, -97.5605947, ST_GeomFromText('POINT(39.6819468 -97.5605947)', 4326), 39.7886151, -97.5544849, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472845', 'East Creek', 'Stream', 'Kansas', 'KS', 'Republic', 'Wayne', 39.6577799, -97.5636499, ST_GeomFromText('POINT(39.6577799 -97.5636499)', 4326), 39.8086144, -97.4989288, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472849', 'South Fork Mill Creek', 'Stream', 'Kansas', 'KS', 'Republic', 'Haddam', 39.8483367, -97.3322585, ST_GeomFromText('POINT(39.8483367 -97.3322585)', 4326), 39.8536152, -97.5186516, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('472861', 'Davis Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Haddam', 39.8383367, -97.3472587, ST_GeomFromText('POINT(39.8383367 -97.3472587)', 4326), 39.7572222, -97.3441667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472862', 'Hay Valley', 'Valley', 'Kansas', 'KS', 'Washington', 'Haddam', 39.8494995, -97.3078169, ST_GeomFromText('POINT(39.8494995 -97.3078169)', 4326), 39.8147264, -97.3240245, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('472863', 'Mulberry Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Haddam', 39.8547256, -97.2894798, ST_GeomFromText('POINT(39.8547256 -97.2894798)', 4326), 39.7847222, -97.3161111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472864', 'Turkey Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Haddam', 39.8638923, -97.2322561, ST_GeomFromText('POINT(39.8638923 -97.2322561)', 4326), 39.8094475, -97.2750343, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472869', 'Buffalo Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Morrowville', 39.8397257, -97.1386416, ST_GeomFromText('POINT(39.8397257 -97.1386416)', 4326), 39.7783333, -97.1891667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472870', 'Melvin Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Morrowville', 39.8480591, -97.1639204, ST_GeomFromText('POINT(39.8480591 -97.1639204)', 4326), 39.79, -97.1986111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472871', 'Iowa Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Morrowville', 39.8597257, -97.2025329, ST_GeomFromText('POINT(39.8597257 -97.2025329)', 4326), 39.797503, -97.2561448, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472872', 'Stub Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Morrowville', 39.8452811, -97.216422, ST_GeomFromText('POINT(39.8452811 -97.216422)', 4326), 39.8222222, -97.2375, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472877', 'Camp Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Washington', 39.8113925, -97.0647497, ST_GeomFromText('POINT(39.8113925 -97.0647497)', 4326), 39.7419473, -97.1453067, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472884', 'Plum Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Washington', 39.8138925, -97.0378045, ST_GeomFromText('POINT(39.8138925 -97.0378045)', 4326), 39.8438889, -97.0611111, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('472887', 'Mormon Spring', 'Spring', 'Kansas', 'KS', 'Washington', 'Washington', 39.7733368, -97.0578042, ST_GeomFromText('POINT(39.7733368 -97.0578042)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472888', 'Ash Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Washington', 39.8080592, -97.0425267, ST_GeomFromText('POINT(39.8080592 -97.0425267)', 4326), 39.7311138, -97.1339171, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472890', 'Malone Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Hanover SW', 39.7766695, -96.8697452, ST_GeomFromText('POINT(39.7766695 -96.8697452)', 4326), 39.7211137, -96.9286333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472891', 'Beaver Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Hanover SW', 39.7922251, -96.8783568, ST_GeomFromText('POINT(39.7922251 -96.8783568)', 4326), 39.7077804, -96.9625222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472892', 'Jonah Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Hanover SW', 39.7961141, -96.8994682, ST_GeomFromText('POINT(39.7961141 -96.8994682)', 4326), 39.8080556, -96.93, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472893', 'Lane Branch', 'Stream', 'Kansas', 'KS', 'Washington', 'Hanover SW', 39.8061141, -96.8930794, ST_GeomFromText('POINT(39.8061141 -96.8930794)', 4326), 39.8338889, -96.9758333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472896', 'Cedar Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Hanover SW', 39.8647254, -96.8836359, ST_GeomFromText('POINT(39.8647254 -96.8836359)', 4326), 39.862225, -96.8091903, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472897', 'Mountain Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Herkimer', 39.9216694, -96.7194673, ST_GeomFromText('POINT(39.9216694 -96.7194673)', 4326), 39.8686139, -96.8061348, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472898', 'Tuttle Creek Lake', 'Reservoir', 'Kansas', 'KS', 'Pottawatomie', 'Olsburg SW', 39.3446836, -96.6649992, ST_GeomFromText('POINT(39.3446836 -96.6649992)', 4326), NULL, NULL, '1978-10-13', '2023-04-05', 'Official', 'Board Decision', '1971-01-01'),
  ('472899', 'Walnut Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Hanover SE', 39.7194459, -96.7683537, ST_GeomFromText('POINT(39.7194459 -96.7683537)', 4326), 39.8708361, -96.7966903, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('472900', 'Bolling Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Hanover SE', 39.7444466, -96.8150217, ST_GeomFromText('POINT(39.7444466 -96.8150217)', 4326), 39.8116694, -96.8291898, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472901', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Hanover SE', 39.7916696, -96.8750233, ST_GeomFromText('POINT(39.7916696 -96.8750233)', 4326), 39.8386139, -96.8300235, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472902', 'Mercer Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Hanover SE', 39.7538913, -96.828911, ST_GeomFromText('POINT(39.7538913 -96.828911)', 4326), 39.7163912, -96.8944662, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472903', 'Knedlik Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Hanover SE', 39.7727804, -96.8508561, ST_GeomFromText('POINT(39.7727804 -96.8508561)', 4326), 39.8088889, -96.8422222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472904', 'Hop Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Hanover SE', 39.8005573, -96.68002, ST_GeomFromText('POINT(39.8005573 -96.68002)', 4326), 39.865836, -96.7822455, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472909', 'East Fork Walnut Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Barnes', 39.747224, -96.7572434, ST_GeomFromText('POINT(39.747224 -96.7572434)', 4326), 39.8077799, -96.7475219, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472918', 'Rocky Run', 'Stream', 'Kansas', 'KS', 'Marshall', 'Marysville', 39.8688908, -96.6458537, ST_GeomFromText('POINT(39.8688908 -96.6458537)', 4326), 39.8675018, -96.6152973, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472919', 'Dutch Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Marysville', 39.7755572, -96.6858532, ST_GeomFromText('POINT(39.7755572 -96.6858532)', 4326), 39.8177778, -96.7386111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472926', 'Schell Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Home', 39.8194459, -96.6161298, ST_GeomFromText('POINT(39.8194459 -96.6161298)', 4326), 39.7875, -96.565, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472928', 'Elm Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Blue Rapids', 39.6747223, -96.6283488, ST_GeomFromText('POINT(39.6747223 -96.6283488)', 4326), 39.7833343, -96.5627945, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('472929', 'Perkins Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Beattie', 39.7597224, -96.4647359, ST_GeomFromText('POINT(39.7597224 -96.4647359)', 4326), 39.7311115, -96.545015, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472933', 'Skeeter Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Beattie', 39.7491668, -96.4497353, ST_GeomFromText('POINT(39.7491668 -96.4497353)', 4326), 39.8219448, -96.4369586, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472934', 'Little Timber Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Frankfort', 39.7005547, -96.4108441, ST_GeomFromText('POINT(39.7005547 -96.4108441)', 4326), 39.8227777, -96.3602897, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472938', 'Ackerman Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Axtell', 39.7030545, -96.3650097, ST_GeomFromText('POINT(39.7030545 -96.3650097)', 4326), 39.833611, -96.3441783, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472942', 'Weyer Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Baileyville', 39.7724988, -96.2411191, ST_GeomFromText('POINT(39.7724988 -96.2411191)', 4326), 39.7430533, -96.1027795, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472945', 'Fisher Creek', 'Stream', 'Kansas', 'KS', 'Nemaha', 'Baileyville', 39.8230538, -96.0602784, ST_GeomFromText('POINT(39.8230538 -96.0602784)', 4326), 39.7783315, -96.1300033, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472951', 'Maxwell Spring', 'Spring', 'Kansas', 'KS', 'Nemaha', 'Seneca', 39.8369426, -96.0344441, ST_GeomFromText('POINT(39.8369426 -96.0344441)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472952', 'Tennessee Creek', 'Stream', 'Kansas', 'KS', 'Nemaha', 'Seneca', 39.8066647, -96.0600005, ST_GeomFromText('POINT(39.8066647 -96.0600005)', 4326), 39.7308305, -95.9408279, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472953', 'Illinois Creek', 'Stream', 'Kansas', 'KS', 'Nemaha', 'Seneca', 39.7827755, -96.0497221, ST_GeomFromText('POINT(39.7827755 -96.0497221)', 4326), 39.6769411, -96.049165, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472961', 'Wolfley Creek', 'Stream', 'Kansas', 'KS', 'Jackson', 'Wetmore', 39.6388855, -95.7583187, ST_GeomFromText('POINT(39.6388855 -95.7583187)', 4326), 39.7627756, -95.9155492, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('472962', 'Muddy Creek', 'Stream', 'Kansas', 'KS', 'Jackson', 'Horton', 39.637777, -95.6241487, ST_GeomFromText('POINT(39.637777 -95.6241487)', 4326), 39.8286097, -95.8961043, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472965', 'Craig Creek', 'Stream', 'Kansas', 'KS', 'Nemaha', 'Horton NW', 39.6772215, -95.6610943, ST_GeomFromText('POINT(39.6772215 -95.6610943)', 4326), 39.8499989, -95.8902708, '1978-10-13', NULL, 'Official', 'Board Decision', '1968-01-01'),
  ('472966', 'Plum Creek', 'Stream', 'Kansas', 'KS', 'Brown', 'Fairview', 39.792222, -95.7188743, ST_GeomFromText('POINT(39.792222 -95.7188743)', 4326), 39.8102778, -95.7722222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472970', 'Cedar Creek', 'Stream', 'Kansas', 'KS', 'Nemaha', 'Sabetha', 39.8441662, -95.791655, ST_GeomFromText('POINT(39.8441662 -95.791655)', 4326), 39.909722, -95.848047, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472971', 'Oaks Creek', 'Stream', 'Kansas', 'KS', 'Brown', 'Fairview', 39.7113887, -95.6691505, ST_GeomFromText('POINT(39.7113887 -95.6691505)', 4326), 39.7936115, -95.6913738, '1978-10-13', '2022-09-08', 'Official', 'Secretarial Order', '2022-09-08'),
  ('472981', 'Little Delaware River', 'Stream', 'Kansas', 'KS', 'Atchison', 'Whiting', 39.5624993, -95.5355345, ST_GeomFromText('POINT(39.5624993 -95.5355345)', 4326), 39.7805569, -95.6399837, '1978-10-13', NULL, 'Official', 'Board Decision', '1963-01-01'),
  ('472982', 'North Fork Wolf River', 'Stream', 'Kansas', 'KS', 'Brown', 'Hiawatha', 39.8052815, -95.4813696, ST_GeomFromText('POINT(39.8052815 -95.4813696)', 4326), 39.8372251, -95.5599825, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472986', 'Lake Hiawatha', 'Reservoir', 'Kansas', 'KS', 'Brown', 'Hiawatha', 39.8258835, -95.5283703, ST_GeomFromText('POINT(39.8258835 -95.5283703)', 4326), NULL, NULL, '1978-10-13', '2024-10-31', NULL, NULL, NULL),
  ('472992', 'South Fork Wolf River', 'Stream', 'Kansas', 'KS', 'Brown', 'Robinson', 39.8050014, -95.3785894, ST_GeomFromText('POINT(39.8050014 -95.3785894)', 4326), 39.6499997, -95.3413644, '1978-10-13', NULL, NULL, NULL, NULL),
  ('472993', 'Buttermilk Creek', 'Stream', 'Kansas', 'KS', 'Brown', 'Robinson', 39.7986127, -95.3883119, ST_GeomFromText('POINT(39.7986127 -95.3883119)', 4326), 39.7244472, -95.4560904, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('472994', 'Middle Fork Wolf River', 'Stream', 'Kansas', 'KS', 'Brown', 'Robinson', 39.8116695, -95.4447021, ST_GeomFromText('POINT(39.8116695 -95.4447021)', 4326), 39.741392, -95.5463704, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473005', 'Brown Creek', 'Stream', 'Kansas', 'KS', 'Doniphan', 'Highland', 39.782065, -95.326738, ST_GeomFromText('POINT(39.782065 -95.326738)', 4326), 39.705969, -95.348282, '1978-10-13', '2022-09-20', 'Official', 'Secretarial Order', '2022-09-08'),
  ('473006', 'Halling Creek', 'Stream', 'Kansas', 'KS', 'Doniphan', 'Highland', 39.7755551, -95.2891427, ST_GeomFromText('POINT(39.7755551 -95.2891427)', 4326), 39.6991666, -95.3230314, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473012', 'Rittenhouse Branch', 'Stream', 'Kansas', 'KS', 'Doniphan', 'Highland', 39.8030534, -95.213308, ST_GeomFromText('POINT(39.8030534 -95.213308)', 4326), 39.8252765, -95.2663648, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473014', 'Nelson Creek', 'Stream', 'Kansas', 'KS', 'Doniphan', 'Sparks', 39.7908313, -95.2213636, ST_GeomFromText('POINT(39.7908313 -95.2213636)', 4326), 39.7822222, -95.175, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473015', 'Springs Branch', 'Stream', 'Kansas', 'KS', 'Doniphan', 'Sparks', 39.7627758, -95.2171966, ST_GeomFromText('POINT(39.7627758 -95.2171966)', 4326), 39.7480524, -95.1555286, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473016', 'Cold Ryan Branch', 'Stream', 'Kansas', 'KS', 'Doniphan', 'Sparks', 39.7872203, -95.2235858, ST_GeomFromText('POINT(39.7872203 -95.2235858)', 4326), 39.7449976, -95.1946959, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473017', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Doniphan', 'Atchison NE', 39.6361072, -95.1058033, ST_GeomFromText('POINT(39.6361072 -95.1058033)', 4326), 39.7708299, -95.1438619, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473023', 'Kenney Creek', 'Stream', 'Kansas', 'KS', 'Doniphan', 'Sparks', 39.8191641, -95.1949744, ST_GeomFromText('POINT(39.8191641 -95.1949744)', 4326), 39.7897222, -95.1719444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473024', 'Pennell Creek', 'Stream', 'Kansas', 'KS', 'Doniphan', 'Sparks', 39.8305527, -95.1769187, ST_GeomFromText('POINT(39.8305527 -95.1769187)', 4326), 39.7727778, -95.1525, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('473025', 'Coon Creek', 'Stream', 'Kansas', 'KS', 'Doniphan', 'Sparks', 39.8372191, -95.1691408, ST_GeomFromText('POINT(39.8372191 -95.1691408)', 4326), 39.7755517, -95.1224726, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473032', 'Striker Branch', 'Stream', 'Kansas', 'KS', 'Doniphan', 'Sparks', 39.858886, -95.1849746, ST_GeomFromText('POINT(39.858886 -95.1849746)', 4326), 39.8427778, -95.2433333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473035', 'Walnut Creek', 'Stream', 'Kansas', 'KS', 'Doniphan', 'Halls', 39.732494, -94.9716354, ST_GeomFromText('POINT(39.732494 -94.9716354)', 4326), 39.7616615, -95.0535822, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473036', 'Brush Creek', 'Stream', 'Kansas', 'KS', 'Doniphan', 'Troy', 39.6736057, -95.0194132, ST_GeomFromText('POINT(39.6736057 -95.0194132)', 4326), 39.7544394, -95.0663601, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473037', 'Cottonwood Creek', 'Stream', 'Kansas', 'KS', 'Doniphan', 'Troy', 39.7147183, -95.114416, ST_GeomFromText('POINT(39.7147183 -95.114416)', 4326), 39.7686066, -95.0916386, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473038', 'Peters Creek', 'Stream', 'Kansas', 'KS', 'Doniphan', 'Halls', 39.7466607, -94.9483016, ST_GeomFromText('POINT(39.7466607 -94.9483016)', 4326), 39.7736067, -95.0933054, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473044', 'Mosquito Creek', 'Stream', 'Kansas', 'KS', 'Doniphan', 'Troy', 39.8680514, -95.1055289, ST_GeomFromText('POINT(39.8680514 -95.1055289)', 4326), 39.7741667, -95.1147222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473065', 'Smith Creek', 'Stream', 'Kansas', 'KS', 'Doniphan', 'Wathena', 39.8491608, -94.9383028, ST_GeomFromText('POINT(39.8491608 -94.9383028)', 4326), 39.8208275, -95.0116377, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473070', 'Sportsmans Lake', 'Reservoir', 'Kansas', 'KS', 'Cloud', 'Jamestown NW', 39.6467787, -97.8954731, ST_GeomFromText('POINT(39.6467787 -97.8954731)', 4326), NULL, NULL, '1978-10-13', '2024-10-31', NULL, NULL, NULL),
  ('473073', 'Saint Johns Creek', 'Stream', 'Kansas', 'KS', 'Republic', 'Jamestown NW', 39.6666734, -97.9042107, ST_GeomFromText('POINT(39.6666734 -97.9042107)', 4326), 39.7188889, -97.8886111, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('473074', 'Skunk Creek', 'Stream', 'Kansas', 'KS', 'Cloud', 'Jamestown NW', 39.6450062, -97.8869882, ST_GeomFromText('POINT(39.6450062 -97.8869882)', 4326), 39.6800064, -97.8530991, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473075', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Jamestown NW', 39.6319509, -97.9411554, ST_GeomFromText('POINT(39.6319509 -97.9411554)', 4326), 39.6675, -97.9644444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473078', 'Marsh Creek', 'Stream', 'Kansas', 'KS', 'Cloud', 'Jamestown', 39.61945, -97.8736545, ST_GeomFromText('POINT(39.61945 -97.8736545)', 4326), 39.7063967, -97.9411557, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473081', 'Salt Creek', 'Stream', 'Kansas', 'KS', 'Republic', 'Kackley', 39.6711176, -97.8747659, ST_GeomFromText('POINT(39.6711176 -97.8747659)', 4326), 39.6966667, -97.8616667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473087', 'Oak Creek', 'Stream', 'Kansas', 'KS', 'Republic', 'Kackley', 39.66695, -97.7958762, ST_GeomFromText('POINT(39.66695 -97.7958762)', 4326), 39.6944444, -97.85, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473099', 'Little Upton Creek', 'Stream', 'Kansas', 'KS', 'Cloud', 'Rice', 39.5958337, -97.5253149, ST_GeomFromText('POINT(39.5958337 -97.5253149)', 4326), 39.6752794, -97.516705, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473100', 'Turkey Creek', 'Stream', 'Kansas', 'KS', 'Republic', 'Wayne', 39.698058, -97.5428169, ST_GeomFromText('POINT(39.698058 -97.5428169)', 4326), 39.7347246, -97.485872, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473101', 'Upton Creek', 'Stream', 'Kansas', 'KS', 'Cloud', 'Clyde', 39.6075002, -97.4919811, ST_GeomFromText('POINT(39.6075002 -97.4919811)', 4326), 39.699724, -97.4961494, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473103', 'West Fork Elk Creek', 'Stream', 'Kansas', 'KS', 'Cloud', 'Agenda', 39.6344448, -97.4247575, ST_GeomFromText('POINT(39.6344448 -97.4247575)', 4326), 39.7811141, -97.4550385, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473104', 'Elk Creek', 'Stream', 'Kansas', 'KS', 'Cloud', 'Clyde', 39.5861104, -97.3772555, ST_GeomFromText('POINT(39.5861104 -97.3772555)', 4326), 39.773614, -97.392259, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('473113', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Clay', 'Clifton', 39.5486094, -97.3250314, ST_GeomFromText('POINT(39.5486094 -97.3250314)', 4326), 39.7411136, -97.3553132, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473114', 'Scribner Creek', 'Stream', 'Kansas', 'KS', 'Clay', 'Clifton', 39.5541648, -97.2694747, ST_GeomFromText('POINT(39.5541648 -97.2694747)', 4326), 39.7177797, -97.3080894, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473115', 'West Branch Scribner Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Brantford', 39.6208331, -97.3239215, ST_GeomFromText('POINT(39.6208331 -97.3239215)', 4326), 39.7230576, -97.3103117, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473116', 'Parsons Creek', 'Stream', 'Kansas', 'KS', 'Clay', 'Clifton', 39.5580538, -97.2628079, ST_GeomFromText('POINT(39.5580538 -97.2628079)', 4326), 39.7536138, -97.3417019, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473117', 'East Branch Parsons Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Clifton', 39.6230553, -97.2611422, ST_GeomFromText('POINT(39.6230553 -97.2611422)', 4326), 39.7550028, -97.2239208, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473130', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Palmer', 39.5799991, -97.188083, ST_GeomFromText('POINT(39.5799991 -97.188083)', 4326), 39.6647232, -97.1841955, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473136', 'Coon Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Barnes', 39.6955568, -96.7647417, ST_GeomFromText('POINT(39.6955568 -96.7647417)', 4326), 39.6983356, -97.0750253, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473145', 'Camp Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Greenleaf', 39.6591677, -96.8141856, ST_GeomFromText('POINT(39.6591677 -96.8141856)', 4326), 39.7069469, -96.956411, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473155', 'Sulphur Creek', 'Stream', 'Kansas', 'KS', 'Washington', 'Barnes', 39.6372229, -96.8244628, ST_GeomFromText('POINT(39.6372229 -96.8244628)', 4326), 39.5977779, -96.8066834, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473166', 'Alcove Spring', 'Spring', 'Kansas', 'KS', 'Marshall', 'Blue Rapids', 39.7488903, -96.6769637, ST_GeomFromText('POINT(39.7488903 -96.6769637)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('473167', 'Little Blue River', 'Stream', 'Kansas', 'KS', 'Marshall', 'Blue Rapids', 39.6977785, -96.6777953, ST_GeomFromText('POINT(39.6977785 -96.6777953)', 4326), 40.4466806, -98.9425813, '1978-10-13', '2019-07-17', NULL, NULL, NULL),
  ('473170', 'Fawn Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Blue Rapids', 39.6866674, -96.7025177, ST_GeomFromText('POINT(39.6866674 -96.7025177)', 4326), 39.599722, -96.7389046, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473175', 'Johnson Fork', 'Stream', 'Kansas', 'KS', 'Marshall', 'Blue Rapids NE', 39.6605545, -96.4719555, ST_GeomFromText('POINT(39.6605545 -96.4719555)', 4326), 39.7286114, -96.5405705, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473176', 'Corndodger Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Blue Rapids NE', 39.6199986, -96.5347335, ST_GeomFromText('POINT(39.6199986 -96.5347335)', 4326), 39.7244447, -96.5505706, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473177', 'Black Vermillion River', 'Stream', 'Kansas', 'KS', 'Marshall', 'Blue Rapids SE', 39.5849984, -96.5694556, ST_GeomFromText('POINT(39.5849984 -96.5694556)', 4326), 39.6711078, -96.0577763, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473178', 'Dog Walk Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Beattie', 39.7536112, -96.4566801, ST_GeomFromText('POINT(39.7536112 -96.4566801)', 4326), 39.7352781, -96.5302926, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473180', 'Game Fork', 'Stream', 'Kansas', 'KS', 'Marshall', 'Blue Rapids SE', 39.6205545, -96.5766791, ST_GeomFromText('POINT(39.6205545 -96.5766791)', 4326), 39.603333, -96.7222376, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473181', 'Indian Mound', 'Summit', 'Kansas', 'KS', 'Marshall', 'Blue Rapids NE', 39.6252799, -96.6126504, ST_GeomFromText('POINT(39.6252799 -96.6126504)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('473189', 'Clear Fork', 'Stream', 'Kansas', 'KS', 'Marshall', 'Frankfort', 39.648332, -96.4794553, ST_GeomFromText('POINT(39.648332 -96.4794553)', 4326), 39.515552, -96.3036139, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473190', 'De Shazer Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Frankfort', 39.6458321, -96.4922333, ST_GeomFromText('POINT(39.6458321 -96.4922333)', 4326), 39.5661085, -96.4594524, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('473191', 'Cedar Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Frankfort', 39.6716657, -96.4544554, ST_GeomFromText('POINT(39.6716657 -96.4544554)', 4326), 39.6394425, -96.3677857, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473194', 'Irish Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Frankfort', 39.6966656, -96.3825099, ST_GeomFromText('POINT(39.6966656 -96.3825099)', 4326), 39.5569413, -96.3152821, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473199', 'Jim Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Frankfort SW', 39.6233315, -96.4433426, ST_GeomFromText('POINT(39.6233315 -96.4433426)', 4326), 39.610831, -96.357229, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473202', 'Kearney Branch', 'Stream', 'Kansas', 'KS', 'Marshall', 'Vermillion', 39.638609, -96.3233402, ST_GeomFromText('POINT(39.638609 -96.3233402)', 4326), 39.6519421, -96.2422273, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473211', 'French Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Duluth', 39.5011067, -96.1488871, ST_GeomFromText('POINT(39.5011067 -96.1488871)', 4326), 39.6516639, -96.1663912, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473212', 'Mulberry Creek', 'Stream', 'Kansas', 'KS', 'Nemaha', 'Centralia', 39.597219, -96.1958354, ST_GeomFromText('POINT(39.597219 -96.1958354)', 4326), 39.6411086, -96.2300044, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473224', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Jackson', 'Netawaka', 39.5480515, -95.6969274, ST_GeomFromText('POINT(39.5480515 -95.6969274)', 4326), 39.6619407, -95.9802731, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473226', 'Barnes Creek', 'Stream', 'Kansas', 'KS', 'Nemaha', 'Goff', 39.6891638, -95.8588791, ST_GeomFromText('POINT(39.6891638 -95.8588791)', 4326), 39.6874967, -95.9497165, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473231', 'Elk Creek', 'Stream', 'Kansas', 'KS', 'Atchison', 'Arrington', 39.45472, -95.5413668, ST_GeomFromText('POINT(39.45472 -95.5413668)', 4326), 39.6247183, -95.9266591, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473241', 'Mission Creek', 'Stream', 'Kansas', 'KS', 'Atchison', 'Horton', 39.6322235, -95.518035, ST_GeomFromText('POINT(39.6322235 -95.518035)', 4326), 39.7213889, -95.5222222, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('473242', 'Otter Creek', 'Stream', 'Kansas', 'KS', 'Atchison', 'Horton', 39.6450015, -95.518313, ST_GeomFromText('POINT(39.6450015 -95.518313)', 4326), 39.711669, -95.4394232, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473243', 'Clear Creek', 'Stream', 'Kansas', 'KS', 'Atchison', 'Whiting', 39.6197232, -95.5163681, ST_GeomFromText('POINT(39.6197232 -95.5163681)', 4326), 39.6591671, -95.3849767, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473246', 'Mission Lake', 'Reservoir', 'Kansas', 'KS', 'Brown', 'Horton', 39.678747, -95.5172749, ST_GeomFromText('POINT(39.678747 -95.5172749)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('473261', 'Hazel Creek', 'Stream', 'Kansas', 'KS', 'Brown', 'Everest', 39.7533375, -95.4944251, ST_GeomFromText('POINT(39.7533375 -95.4944251)', 4326), 39.7183369, -95.4985913, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473262', 'Independence Creek', 'Stream', 'Kansas', 'KS', 'Atchison', 'Atchison East', 39.5797184, -95.1024687, ST_GeomFromText('POINT(39.5797184 -95.1024687)', 4326), 39.6711109, -95.3344202, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473271', 'North Branch Independence Creek', 'Stream', 'Kansas', 'KS', 'Doniphan', 'Denton', 39.6688865, -95.2024726, ST_GeomFromText('POINT(39.6688865 -95.2024726)', 4326), 39.6969441, -95.3152534, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473274', 'Jordan Creek', 'Stream', 'Kansas', 'KS', 'Doniphan', 'Bendena', 39.6594418, -95.1877499, ST_GeomFromText('POINT(39.6594418 -95.1877499)', 4326), 39.7405556, -95.1569444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473296', 'Whites Creek', 'Stream', 'Kansas', 'KS', 'Cloud', 'Jamestown', 39.5950044, -97.8039313, ST_GeomFromText('POINT(39.5950044 -97.8039313)', 4326), 39.4744477, -97.8730981, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473297', 'East Asher Creek', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Scottsville', 39.4158377, -97.9869888, ST_GeomFromText('POINT(39.4158377 -97.9869888)', 4326), 39.5300047, -97.9405995, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473299', 'Cheyenne Creek', 'Stream', 'Kansas', 'KS', 'Cloud', 'Scottsville', 39.6144497, -97.8575432, ST_GeomFromText('POINT(39.6144497 -97.8575432)', 4326), 39.511393, -97.9128212, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('473300', 'Little Cheyenne Creek', 'Stream', 'Kansas', 'KS', 'Cloud', 'Scottsville', 39.5930608, -97.8772655, ST_GeomFromText('POINT(39.5930608 -97.8772655)', 4326), 39.5541667, -97.9844444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473305', 'West Branch Wolf Creek', 'Stream', 'Kansas', 'KS', 'Cloud', 'Concordia', 39.5402804, -97.7272629, ST_GeomFromText('POINT(39.5402804 -97.7272629)', 4326), 39.4652804, -97.8108748, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473306', 'Buffalo Creek', 'Stream', 'Kansas', 'KS', 'Cloud', 'Concordia', 39.5944477, -97.7142076, ST_GeomFromText('POINT(39.5944477 -97.7142076)', 4326), 39.6700099, -98.1397718, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473307', 'Salt Marsh', 'Swamp', 'Kansas', 'KS', 'Cloud', 'Jamestown', 39.6188936, -97.7944869, ST_GeomFromText('POINT(39.6188936 -97.7944869)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473322', 'Coal Creek', 'Stream', 'Kansas', 'KS', 'Cloud', 'Concordia', 39.5005575, -97.7286514, ST_GeomFromText('POINT(39.5005575 -97.7286514)', 4326), 39.4416686, -97.7711515, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473324', 'Lost Creek', 'Stream', 'Kansas', 'KS', 'Cloud', 'Concordia', 39.589169, -97.6594842, ST_GeomFromText('POINT(39.589169 -97.6594842)', 4326), 39.5141667, -97.6780556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473325', 'West Branch Oak Creek', 'Stream', 'Kansas', 'KS', 'Cheyenne', 'Rice', 39.5230561, -97.6133713, ST_GeomFromText('POINT(39.5230561 -97.6133713)', 4326), 39.4458333, -97.6358704, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473327', 'Wolf Creek', 'Stream', 'Kansas', 'KS', 'Cloud', 'Concordia', 39.584725, -97.6939293, ST_GeomFromText('POINT(39.584725 -97.6939293)', 4326), 39.439167, -97.6619821, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473333', 'Oak Creek', 'Stream', 'Kansas', 'KS', 'Cloud', 'Rice', 39.5777786, -97.5739267, ST_GeomFromText('POINT(39.5777786 -97.5739267)', 4326), 39.5230556, -97.6130556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473334', 'West Branch Elm Creek', 'Stream', 'Kansas', 'KS', 'Cheyenne', 'Rice', 39.5052767, -97.528369, ST_GeomFromText('POINT(39.5052767 -97.528369)', 4326), 39.4402774, -97.6130919, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('473335', 'East Branch Oak Creek', 'Stream', 'Kansas', 'KS', 'Cloud', 'Rice', 39.5230561, -97.6133713, ST_GeomFromText('POINT(39.5230561 -97.6133713)', 4326), 39.4416665, -97.6258701, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473336', 'Elm Creek', 'Stream', 'Kansas', 'KS', 'Cheyenne', 'Clyde', 39.5736105, -97.4433682, ST_GeomFromText('POINT(39.5736105 -97.4433682)', 4326), 39.42361, -97.5803129, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473338', 'Twin Mounds', 'Summit', 'Kansas', 'KS', 'Cloud', 'Rice', 39.5090297, -97.5114374, ST_GeomFromText('POINT(39.5090297 -97.5114374)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('473342', 'Plum Creek', 'Stream', 'Kansas', 'KS', 'Cloud', 'Rice', 39.5758339, -97.5628153, ST_GeomFromText('POINT(39.5758339 -97.5628153)', 4326), 39.5047222, -97.5933333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473345', 'Beaver Creek', 'Stream', 'Kansas', 'KS', 'Cloud', 'Clyde', 39.559721, -97.3764218, ST_GeomFromText('POINT(39.559721 -97.3764218)', 4326), 39.4963868, -97.4336443, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473354', 'East Branch Elm Creek', 'Stream', 'Kansas', 'KS', 'Cheyenne', 'Clyde', 39.5288875, -97.4647567, ST_GeomFromText('POINT(39.5288875 -97.4647567)', 4326), 39.4122201, -97.5183665, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473357', 'Mulberry Creek', 'Stream', 'Kansas', 'KS', 'Clay', 'Clay Center NW', 39.4591631, -97.2269713, ST_GeomFromText('POINT(39.4591631 -97.2269713)', 4326), 39.3994422, -97.5166994, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473358', 'Mud Creek', 'Stream', 'Kansas', 'KS', 'Clay', 'Clifton', 39.546665, -97.3380873, ST_GeomFromText('POINT(39.546665 -97.3380873)', 4326), 39.4911084, -97.3572534, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473368', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Clay', 'Clay Center NW', 39.3799962, -97.1361322, ST_GeomFromText('POINT(39.3799962 -97.1361322)', 4326), 39.5616659, -97.1203018, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473373', 'Carter Creek', 'Stream', 'Kansas', 'KS', 'Clay', 'Linn SE', 39.5141659, -97.0125179, ST_GeomFromText('POINT(39.5141659 -97.0125179)', 4326), 39.6475015, -97.0366892, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('473374', 'Deadman Creek', 'Stream', 'Kansas', 'KS', 'Clay', 'Kimeo', 39.5041658, -96.9858502, ST_GeomFromText('POINT(39.5041658 -96.9858502)', 4326), 39.6205556, -96.9619444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473375', 'North Fork Fancy Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Lasita', 39.4916654, -96.8802925, ST_GeomFromText('POINT(39.4916654 -96.8802925)', 4326), 39.6216677, -96.9433529, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473381', 'North Otter Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Randolph', 39.466665, -96.7725122, ST_GeomFromText('POINT(39.466665 -96.7725122)', 4326), 39.5830556, -96.8405724, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473382', 'School Branch', 'Stream', 'Kansas', 'KS', 'Riley', 'Randolph', 39.4738873, -96.8166799, ST_GeomFromText('POINT(39.4738873 -96.8166799)', 4326), 39.578611, -96.8477945, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473391', 'Swede Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Olsburg NW', 39.4980534, -96.6588993, ST_GeomFromText('POINT(39.4980534 -96.6588993)', 4326), 39.5938889, -96.7914053, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473392', 'Little Swede Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Blue Rapids SW', 39.5274984, -96.6827897, ST_GeomFromText('POINT(39.5274984 -96.6827897)', 4326), 39.560555, -96.7572369, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473406', 'Timber Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Blue Rapids SE', 39.537498, -96.6161218, ST_GeomFromText('POINT(39.537498 -96.6161218)', 4326), 39.5880548, -96.6755694, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473407', 'Shannon Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Blue Rapids SW', 39.5011088, -96.63751, ST_GeomFromText('POINT(39.5011088 -96.63751)', 4326), 39.4333304, -96.60723, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473408', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Blue Rapids SE', 39.5483313, -96.5886215, ST_GeomFromText('POINT(39.5483313 -96.5886215)', 4326), 39.4336077, -96.5169502, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473409', 'Fourmile Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Blue Rapids SE', 39.5538869, -96.5794548, ST_GeomFromText('POINT(39.5538869 -96.5794548)', 4326), 39.4744414, -96.5600076, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('473410', 'Bluff Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Blue Rapids SE', 39.5427753, -96.545287, ST_GeomFromText('POINT(39.5427753 -96.545287)', 4326), 39.495552, -96.4055602, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473413', 'Twin Mounds', 'Summit', 'Kansas', 'KS', 'Marshall', 'Blue Rapids SE', 39.6160925, -96.5070281, ST_GeomFromText('POINT(39.6160925 -96.5070281)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('473421', 'Hise Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Onaga', 39.4799957, -96.1580538, ST_GeomFromText('POINT(39.4799957 -96.1580538)', 4326), 39.5194408, -96.2833358, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473422', 'Mud Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Wheaton', 39.5527743, -96.2094458, ST_GeomFromText('POINT(39.5527743 -96.2094458)', 4326), 39.5672191, -96.2727814, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473434', 'Cow Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Duluth', 39.5088845, -96.133609, ST_GeomFromText('POINT(39.5088845 -96.133609)', 4326), 39.4641622, -96.1049965, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473437', 'Coal Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Havensville', 39.5347179, -96.0994419, ST_GeomFromText('POINT(39.5347179 -96.0994419)', 4326), 39.6472192, -96.1366678, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473438', 'Gilson Creek', 'Stream', 'Kansas', 'KS', 'Nemaha', 'Duluth', 39.5761079, -96.2213912, ST_GeomFromText('POINT(39.5761079 -96.2213912)', 4326), 39.6397197, -96.2386158, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473440', 'Straight Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Havensville', 39.5019397, -96.0922187, ST_GeomFromText('POINT(39.5019397 -96.0922187)', 4326), 39.5219444, -96.0244444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473441', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Havensville', 39.5222178, -96.1136087, ST_GeomFromText('POINT(39.5222178 -96.1136087)', 4326), 39.4599954, -96.0891627, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473444', 'Wolf Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Havensville', 39.5505511, -96.0430515, ST_GeomFromText('POINT(39.5505511 -96.0430515)', 4326), 39.6072222, -96.0052778, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('473449', 'Mosquito Creek', 'Stream', 'Kansas', 'KS', 'Jackson', 'Netawaka', 39.5761069, -95.7330396, ST_GeomFromText('POINT(39.5761069 -95.7330396)', 4326), 39.6172182, -95.8888796, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473462', 'Negro Creek', 'Stream', 'Kansas', 'KS', 'Atchison', 'Whiting', 39.5349988, -95.5299784, ST_GeomFromText('POINT(39.5349988 -95.5299784)', 4326), 39.5944423, -95.6444265, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473466', 'Lake of the Oaks', 'Reservoir', 'Kansas', 'KS', 'Jackson', 'Whiting', 39.6059362, -95.6125834, ST_GeomFromText('POINT(39.6059362 -95.6125834)', 4326), NULL, NULL, '1978-10-13', '2024-10-31', NULL, NULL, NULL),
  ('473469', 'Brush Creek', 'Stream', 'Kansas', 'KS', 'Atchison', 'Whiting', 39.6036116, -95.5238681, ST_GeomFromText('POINT(39.6036116 -95.5238681)', 4326), 39.6219449, -95.4280327, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473470', 'South Creek', 'Stream', 'Kansas', 'KS', 'Atchison', 'Whiting', 39.5494439, -95.5105337, ST_GeomFromText('POINT(39.5494439 -95.5105337)', 4326), 39.5372212, -95.428587, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473471', 'Little Grasshopper Creek', 'Stream', 'Kansas', 'KS', 'Atchison', 'Whiting', 39.5430547, -95.5247005, ST_GeomFromText('POINT(39.5430547 -95.5247005)', 4326), 39.6374994, -95.3335862, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473475', 'Figge Lake', 'Reservoir', 'Kansas', 'KS', 'Atchison', 'Effingham', 39.5427122, -95.4451017, ST_GeomFromText('POINT(39.5427122 -95.4451017)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('473479', 'Little Stranger Creek', 'Stream', 'Kansas', 'KS', 'Atchison', 'Lancaster', 39.5191648, -95.3330289, ST_GeomFromText('POINT(39.5191648 -95.3330289)', 4326), 39.4158315, -95.3441397, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473480', 'North Fork Stranger Creek', 'Stream', 'Kansas', 'KS', 'Atchison', 'Lancaster', 39.5311095, -95.347196, ST_GeomFromText('POINT(39.5311095 -95.347196)', 4326), 39.6019444, -95.3411111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473481', 'Camp Creek', 'Stream', 'Kansas', 'KS', 'Atchison', 'Potter', 39.4791643, -95.2305261, ST_GeomFromText('POINT(39.4791643 -95.2305261)', 4326), 39.5680539, -95.2916398, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('473490', 'Whiskey Creek', 'Stream', 'Kansas', 'KS', 'Atchison', 'Atchison West', 39.5366631, -95.1083014, ST_GeomFromText('POINT(39.5366631 -95.1083014)', 4326), 39.5180524, -95.1402463, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473491', 'White Clay Creek', 'Stream', 'Kansas', 'KS', 'Atchison', 'Atchison West', 39.5594408, -95.1146908, ST_GeomFromText('POINT(39.5594408 -95.1146908)', 4326), 39.5149973, -95.20247, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473492', 'Deer Creek', 'Stream', 'Kansas', 'KS', 'Atchison', 'Atchison West', 39.6211072, -95.0988583, ST_GeomFromText('POINT(39.6211072 -95.0988583)', 4326), 39.5691646, -95.2463609, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473514', 'Walnut Creek', 'Stream', 'Kansas', 'KS', 'Atchison', 'Oak Mills', 39.469441, -95.044688, ST_GeomFromText('POINT(39.469441 -95.044688)', 4326), 39.5191639, -95.1869142, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473515', 'Brewery Creek', 'Stream', 'Kansas', 'KS', 'Atchison', 'Atchison West', 39.5586077, -95.1294135, ST_GeomFromText('POINT(39.5586077 -95.1294135)', 4326), 39.5233333, -95.1866667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473517', 'Lang Hollow', 'Valley', 'Kansas', 'KS', 'Atchison', 'Atchison East', 39.5101902, -95.0856782, ST_GeomFromText('POINT(39.5101902 -95.0856782)', 4326), 39.5109953, -95.1102771, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('473531', 'Elm Creek', 'Stream', 'Kansas', 'KS', 'Ford', 'Spearville NW', 37.9011302, -99.8848519, ST_GeomFromText('POINT(37.9011302 -99.8848519)', 4326), 37.7522423, -99.9348541, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473561', 'Little Wild Horse Creek', 'Stream', 'Kansas', 'KS', 'Stafford', 'Saint John North', 38.0441813, -98.8437032, ST_GeomFromText('POINT(38.0441813 -98.8437032)', 4326), 37.9508487, -98.9750992, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473568', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Stafford', 'Saint John South', 37.9722374, -98.8087024, ST_GeomFromText('POINT(37.9722374 -98.8087024)', 4326), 37.9205712, -98.9073186, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473573', 'Bear Creek', 'Stream', 'Kansas', 'KS', 'Stafford', 'Saint John North', 38.0516812, -98.8170353, ST_GeomFromText('POINT(38.0516812 -98.8170353)', 4326), 37.9794595, -98.896762, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('473585', 'Pilot Knob', 'Summit', 'Kansas', 'KS', 'Stafford', 'Stafford', 37.8882748, -98.6081078, ST_GeomFromText('POINT(37.8882748 -98.6081078)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('473586', 'Allens Lake', 'Reservoir', 'Kansas', 'KS', 'Stafford', 'Stafford', 37.9003658, -98.5504991, ST_GeomFromText('POINT(37.9003658 -98.5504991)', 4326), NULL, NULL, '1978-10-13', '2015-09-23', NULL, NULL, NULL),
  ('473587', 'Rosacker Lake', 'Reservoir', 'Kansas', 'KS', 'Stafford', 'Stafford', 37.9084523, -98.5053144, ST_GeomFromText('POINT(37.9084523 -98.5053144)', 4326), NULL, NULL, '1978-10-13', '2018-09-27', NULL, NULL, NULL),
  ('473590', 'Dooleyville Creek', 'Stream', 'Kansas', 'KS', 'Stafford', 'Stafford', 37.9108488, -98.522579, ST_GeomFromText('POINT(37.9108488 -98.522579)', 4326), 37.9602929, -98.6364725, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473594', 'Brownlee Lake', 'Reservoir', 'Kansas', 'KS', 'Reno', 'Sylvia', 37.9125088, -98.4635136, ST_GeomFromText('POINT(37.9125088 -98.4635136)', 4326), NULL, NULL, '1978-10-13', '2015-09-23', NULL, NULL, NULL),
  ('473596', 'Zenithscah Creek', 'Stream', 'Kansas', 'KS', 'Reno', 'Sylvia', 37.9350149, -98.4231295, ST_GeomFromText('POINT(37.9350149 -98.4231295)', 4326), 37.9422222, -98.4355556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473597', 'Sunset Lakes', 'Reservoir', 'Kansas', 'KS', 'Reno', 'Sylvia', 37.9579641, -98.3864972, ST_GeomFromText('POINT(37.9579641 -98.3864972)', 4326), NULL, NULL, '1978-10-13', '2018-09-27', NULL, NULL, NULL),
  ('473620', 'Skinnawah Creek', 'Stream', 'Kansas', 'KS', 'Reno', 'Arlington', 37.8764031, -98.1728406, ST_GeomFromText('POINT(37.8764031 -98.1728406)', 4326), 37.9094444, -98.2247222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473623', 'Lake Cable', 'Reservoir', 'Kansas', 'KS', 'Reno', 'Arlington', 37.9083472, -98.1792295, ST_GeomFromText('POINT(37.9083472 -98.1792295)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473629', 'Sugar Creek', 'Stream', 'Kansas', 'KS', 'Reno', 'Yaggy', 38.0308457, -98.1200591, ST_GeomFromText('POINT(38.0308457 -98.1200591)', 4326), 37.9897357, -98.2331198, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('473633', 'Irish Creek', 'Stream', 'Kansas', 'KS', 'Reno', 'Pretty Prairie', 37.8489028, -98.1136716, ST_GeomFromText('POINT(37.8489028 -98.1136716)', 4326), 37.9355691, -98.1564504, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473645', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Reno', 'Elmer', 37.9991784, -97.8958849, ST_GeomFromText('POINT(37.9991784 -97.8958849)', 4326), 38.0297341, -98.0395002, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473648', 'Devils Ditch', 'Stream', 'Kansas', 'KS', 'Reno', 'Haven', 37.9541782, -97.8189388, ST_GeomFromText('POINT(37.9541782 -97.8189388)', 4326), 37.8794444, -97.8436111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473659', 'Cow Creek', 'Stream', 'Kansas', 'KS', 'Reno', 'Haven', 37.9797338, -97.8400502, ST_GeomFromText('POINT(37.9797338 -97.8400502)', 4326), 38.6436222, -98.6528543, '1978-10-13', '2019-08-19', NULL, NULL, NULL),
  ('473661', 'Greenfield Lake', 'Lake', 'Kansas', 'KS', 'Harvey', 'Patterson', 37.9228136, -97.6994875, ST_GeomFromText('POINT(37.9228136 -97.6994875)', 4326), NULL, NULL, '1978-10-13', '2024-10-31', NULL, NULL, NULL),
  ('473662', 'West Lake', 'Reservoir', 'Kansas', 'KS', 'Harvey', 'Patterson', 37.9266874, -97.6667595, ST_GeomFromText('POINT(37.9266874 -97.6667595)', 4326), NULL, NULL, '1978-10-13', '2018-09-27', NULL, NULL, NULL),
  ('473664', 'Patterson Lake', 'Reservoir', 'Kansas', 'KS', 'Harvey', 'Patterson', 37.9414003, -97.6442122, ST_GeomFromText('POINT(37.9414003 -97.6442122)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473666', 'Saucer Lake', 'Lake', 'Kansas', 'KS', 'Harvey', 'Patterson', 37.9684531, -97.6504448, ST_GeomFromText('POINT(37.9684531 -97.6504448)', 4326), NULL, NULL, '1978-10-13', '2018-09-27', NULL, NULL, NULL),
  ('473667', 'Boyle Lakes', 'Reservoir', 'Kansas', 'KS', 'Harvey', 'Patterson', 37.9736226, -97.6558788, ST_GeomFromText('POINT(37.9736226 -97.6558788)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473668', 'Meadow Lake', 'Reservoir', 'Kansas', 'KS', 'Harvey', 'Patterson', 37.9794559, -97.648934, ST_GeomFromText('POINT(37.9794559 -97.648934)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('473676', 'North Branch Kisiwa Creek', 'Stream', 'Kansas', 'KS', 'Harvey', 'Bentley', 37.9561227, -97.5539318, ST_GeomFromText('POINT(37.9561227 -97.5539318)', 4326), 38.0425111, -97.6758788, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473683', 'Kisiwa Creek', 'Stream', 'Kansas', 'KS', 'Harvey', 'Sedgwick', 37.9589005, -97.4714297, ST_GeomFromText('POINT(37.9589005 -97.4714297)', 4326), 38.0258446, -97.8144938, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473684', 'Emma Creek', 'Stream', 'Kansas', 'KS', 'Harvey', 'Sedgwick', 37.9350117, -97.4408742, ST_GeomFromText('POINT(37.9350117 -97.4408742)', 4326), 37.9977778, -97.4458333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473685', 'Mud Creek', 'Stream', 'Kansas', 'KS', 'Harvey', 'Sedgwick', 37.9805671, -97.389483, ST_GeomFromText('POINT(37.9805671 -97.389483)', 4326), 38.0791778, -97.3628143, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473688', 'Gooseberry Creek', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Sedgwick NE', 37.9069562, -97.3522622, ST_GeomFromText('POINT(37.9069562 -97.3522622)', 4326), 37.9547222, -97.2977778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473697', 'West Fork Jester Creek', 'Stream', 'Kansas', 'KS', 'Harvey', 'Sedgwick NE', 37.9658449, -97.3180931, ST_GeomFromText('POINT(37.9658449 -97.3180931)', 4326), 38.0539002, -97.2822571, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473698', 'East Fork Jester Creek', 'Stream', 'Kansas', 'KS', 'Harvey', 'Sedgwick NE', 37.9658449, -97.3180931, ST_GeomFromText('POINT(37.9658449 -97.3180931)', 4326), 38.0633446, -97.2755902, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473699', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Harvey', 'Sedgwick', 37.9180673, -97.4358746, ST_GeomFromText('POINT(37.9180673 -97.4358746)', 4326), 38.2300109, -97.2803103, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473700', 'Gast Lake', 'Reservoir', 'Kansas', 'KS', 'Harvey', 'Sedgwick NE', 37.9900425, -97.2905934, ST_GeomFromText('POINT(37.9900425 -97.2905934)', 4326), NULL, NULL, '1978-10-13', '2018-09-27', NULL, NULL, NULL),
  ('473701', 'West Wildcat Creek', 'Stream', 'Kansas', 'KS', 'Harvey', 'Whitewater', 37.9266793, -97.2172591, ST_GeomFromText('POINT(37.9266793 -97.2172591)', 4326), 37.9797337, -97.2647581, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('473702', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Whitewater', 37.9019576, -97.191704, ST_GeomFromText('POINT(37.9019576 -97.191704)', 4326), 37.9072222, -97.2494444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473710', 'Gypsum Creek', 'Stream', 'Kansas', 'KS', 'Harvey', 'Whitewater', 37.9286252, -97.1525358, ST_GeomFromText('POINT(37.9286252 -97.1525358)', 4326), 38.038067, -97.2525344, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473712', 'West Branch Whitewater Creek', 'Stream', 'Kansas', 'KS', 'Harvey', 'Whitewater', 37.9680696, -97.1575348, ST_GeomFromText('POINT(37.9680696 -97.1575348)', 4326), 38.136956, -97.2380883, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473713', 'East Branch Whitewater Creek', 'Stream', 'Kansas', 'KS', 'Harvey', 'Whitewater', 37.9680696, -97.1575348, ST_GeomFromText('POINT(37.9680696 -97.1575348)', 4326), 38.1011241, -97.189477, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473714', 'Brush Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'Potwin', 37.9255725, -97.0386452, ST_GeomFromText('POINT(37.9255725 -97.0386452)', 4326), 37.9466847, -96.9916995, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473728', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'Potwin', 37.9275168, -97.0430897, ST_GeomFromText('POINT(37.9275168 -97.0430897)', 4326), 38.0416813, -97.1339217, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473729', 'Henry Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'Potwin', 37.9852953, -97.0283661, ST_GeomFromText('POINT(37.9852953 -97.0283661)', 4326), 38.115293, -97.1072531, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473734', 'South Fork Duck Creek', 'Stream', 'Kansas', 'KS', 'Ford', 'Wright', 37.8372418, -99.9670767, ST_GeomFromText('POINT(37.8372418 -99.9670767)', 4326), 37.7736111, -99.9711111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473736', 'Hains Lake', 'Reservoir', 'Kansas', 'KS', 'Ford', 'Spearville', 37.8540331, -99.8577659, ST_GeomFromText('POINT(37.8540331 -99.8577659)', 4326), NULL, NULL, '1978-10-13', '2023-04-25', NULL, NULL, NULL),
  ('473741', 'Cow Creek', 'Stream', 'Kansas', 'KS', 'Ford', 'Offerle SE', 37.7677963, -99.6115114, ST_GeomFromText('POINT(37.7677963 -99.6115114)', 4326), 37.843908, -99.7615156, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('473742', 'Little Coon Creek', 'Stream', 'Kansas', 'KS', 'Edwards', 'Kinsley', 37.9622387, -99.3792818, ST_GeomFromText('POINT(37.9622387 -99.3792818)', 4326), 37.8452967, -99.7059585, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473743', 'White Woman Creek', 'Stream', 'Kansas', 'KS', 'Hodgeman', 'Offerle', 37.9202957, -99.5828992, ST_GeomFromText('POINT(37.9202957 -99.5828992)', 4326), 37.8616857, -99.7476262, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473777', 'Wolf Creek', 'Stream', 'Kansas', 'KS', 'Reno', 'Langdon', 37.8291824, -98.3222924, ST_GeomFromText('POINT(37.8291824 -98.3222924)', 4326), 37.8330716, -98.4089634, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473783', 'Goose Creek', 'Stream', 'Kansas', 'KS', 'Reno', 'Pretty Prairie SW', 37.8297369, -98.1786746, ST_GeomFromText('POINT(37.8297369 -98.1786746)', 4326), 37.7127948, -98.355073, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473784', 'Silver Creek', 'Stream', 'Kansas', 'KS', 'Reno', 'Pretty Prairie SW', 37.8414032, -98.1481177, ST_GeomFromText('POINT(37.8414032 -98.1481177)', 4326), 37.757795, -98.5911952, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473791', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Reno', 'Waterloo', 37.6958474, -97.9803342, ST_GeomFromText('POINT(37.6958474 -97.9803342)', 4326), 37.7822356, -98.0011673, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473792', 'Crow Creek', 'Stream', 'Kansas', 'KS', 'Reno', 'Castleton', 37.8461234, -97.9203313, ST_GeomFromText('POINT(37.8461234 -97.9203313)', 4326), 37.9175121, -97.9253308, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473793', 'Red Rock Creek', 'Stream', 'Kansas', 'KS', 'Reno', 'Castleton', 37.8664016, -97.9872772, ST_GeomFromText('POINT(37.8664016 -97.9872772)', 4326), 37.973624, -98.1206152, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473800', 'North Fork Ninnescah River', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Lake Afton', 37.5680721, -97.7053279, ST_GeomFromText('POINT(37.5680721 -97.7053279)', 4326), 37.8352942, -98.7489793, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473801', 'Cheney Reservoir', 'Reservoir', 'Kansas', 'KS', 'Reno', 'Haven SE', 37.7597113, -97.8350121, ST_GeomFromText('POINT(37.7597113 -97.8350121)', 4326), NULL, NULL, '1978-10-13', '2018-09-27', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('473802', 'Gar Creek', 'Stream', 'Kansas', 'KS', 'Reno', 'Patterson', 37.8972335, -97.6892139, ST_GeomFromText('POINT(37.8972335 -97.6892139)', 4326), 37.8583449, -97.8297732, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473813', 'South Fork Big Slough', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Colwich', 37.8319559, -97.5997685, ST_GeomFromText('POINT(37.8319559 -97.5997685)', 4326), 37.7694553, -97.725327, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473815', 'Big Slough', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Wichita West', 37.6819584, -97.4092123, ST_GeomFromText('POINT(37.6819584 -97.4092123)', 4326), 37.7819553, -97.7314381, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473818', 'Jester Creek', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Maize', 37.8505676, -97.401987, ST_GeomFromText('POINT(37.8505676 -97.401987)', 4326), 37.9658449, -97.3180931, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473819', 'Cowskin Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'Oxford', 37.3677998, -97.1869861, ST_GeomFromText('POINT(37.3677998 -97.1869861)', 4326), 37.738067, -97.6908824, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473823', 'Little Slough', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Maize', 37.7566789, -97.4342122, ST_GeomFromText('POINT(37.7566789 -97.4342122)', 4326), 37.8241667, -97.4797222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473824', 'Wilson Lake', 'Lake', 'Kansas', 'KS', 'Sedgwick', 'Maize', 37.8080895, -97.4298104, ST_GeomFromText('POINT(37.8080895 -97.4298104)', 4326), NULL, NULL, '1978-10-13', '2018-09-27', NULL, NULL, NULL),
  ('473832', 'Little Arkansas River', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Wichita East', 37.6914028, -97.3492116, ST_GeomFromText('POINT(37.6914028 -97.3492116)', 4326), 38.5294539, -98.1550566, '1978-10-13', '2019-08-19', NULL, NULL, NULL),
  ('473833', 'Middle Fork Chisholm Creek', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Valley Center', 37.7539013, -97.3500447, ST_GeomFromText('POINT(37.7539013 -97.3500447)', 4326), 37.8347346, -97.2417072, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473834', 'West Fork Chisholm Creek', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Valley Center', 37.81279, -97.3158758, ST_GeomFromText('POINT(37.81279 -97.3158758)', 4326), 37.9075118, -97.2842054, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('473864', 'Chisholm Creek', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Wichita East', 37.6316822, -97.3047667, ST_GeomFromText('POINT(37.6316822 -97.3047667)', 4326), 37.8925119, -97.2536498, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473870', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Santa Fe Lake', 37.6750177, -97.0014255, ST_GeomFromText('POINT(37.6750177 -97.0014255)', 4326), 37.7472354, -97.222543, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473877', 'East Fork Chisholm Creek', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Wichita East', 37.7180689, -97.3228224, ST_GeomFromText('POINT(37.7180689 -97.3228224)', 4326), 37.7861237, -97.2433757, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473880', 'Whitewater Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'Benton', 37.8280709, -97.0961485, ST_GeomFromText('POINT(37.8280709 -97.0961485)', 4326), 37.7927904, -97.2389308, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473881', 'Prairie Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'Benton', 37.8416816, -97.1153153, ST_GeomFromText('POINT(37.8416816 -97.1153153)', 4326), 37.8639012, -97.2392062, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473882', 'Wildcat Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'Benton', 37.853626, -97.1200373, ST_GeomFromText('POINT(37.853626 -97.1200373)', 4326), 37.9939003, -97.261702, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473883', 'West Branch Whitewater River', 'Stream', 'Kansas', 'KS', 'Butler', 'Benton', 37.8139056, -97.022536, ST_GeomFromText('POINT(37.8139056 -97.022536)', 4326), 37.9680696, -97.157257, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473884', 'Badger Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'Benton', 37.7386278, -97.008648, ST_GeomFromText('POINT(37.7386278 -97.008648)', 4326), 37.7736266, -97.0778161, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473890', 'Coon Creek', 'Stream', 'Kansas', 'KS', 'Ford', 'Garfield', 38.0691814, -99.2403871, ST_GeomFromText('POINT(38.0691814 -99.2403871)', 4326), 37.7405756, -99.9054089, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473891', 'Home for Boys Water Tank', 'Reservoir', 'Kansas', 'KS', 'Ford', 'Fort Dodge', 37.7372425, -99.9945781, ST_GeomFromText('POINT(37.7372425 -99.9945781)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('473905', 'South Branch Rattlesnake Creek', 'Stream', 'Kansas', 'KS', 'Kiowa', 'Greensburg NE', 37.7083502, -99.2631681, ST_GeomFromText('POINT(37.7083502 -99.2631681)', 4326), 37.490854, -99.4787296, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473907', 'East Fork Rattlesnake Creek', 'Stream', 'Kansas', 'KS', 'Kiowa', 'Haviland NW', 37.717239, -99.1870542, ST_GeomFromText('POINT(37.717239 -99.1870542)', 4326), 37.5247419, -99.3401143, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473911', 'Lost Lake', 'Lake', 'Kansas', 'KS', 'Kiowa', 'Haviland NE', 37.67637, -99.04358, ST_GeomFromText('POINT(37.67637 -99.04358)', 4326), NULL, NULL, '1978-10-13', '2024-10-31', NULL, NULL, NULL),
  ('473915', 'Texas Lake', 'Lake', 'Kansas', 'KS', 'Pratt', 'Cullison', 37.6555735, -98.9809351, ST_GeomFromText('POINT(37.6555735 -98.9809351)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473918', 'Pilot Knob', 'Summit', 'Kansas', 'KS', 'Pratt', 'Coats NE', 37.6784065, -98.8729318, ST_GeomFromText('POINT(37.6784065 -98.8729318)', 4326), NULL, NULL, '1978-10-13', '2021-01-01', NULL, NULL, NULL),
  ('473931', 'Pratt County Lake', 'Reservoir', 'Kansas', 'KS', 'Pratt', 'Pratt', 37.6282695, -98.682144, ST_GeomFromText('POINT(37.6282695 -98.682144)', 4326), NULL, NULL, '1978-10-13', '2018-09-28', NULL, NULL, NULL),
  ('473938', 'Coon Creek', 'Stream', 'Kansas', 'KS', 'Pratt', 'Cairo', 37.6561292, -98.5309153, ST_GeomFromText('POINT(37.6561292 -98.5309153)', 4326), 37.6064074, -98.5803621, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473950', 'Mead Creek', 'Stream', 'Kansas', 'KS', 'Kingman', 'Penalosa', 37.6302952, -98.3259056, ST_GeomFromText('POINT(37.6302952 -98.3259056)', 4326), 37.5555737, -98.3731306, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473951', 'Painter Creek', 'Stream', 'Kansas', 'KS', 'Kingman', 'Penalosa', 37.6375174, -98.3439619, ST_GeomFromText('POINT(37.6375174 -98.3439619)', 4326), 37.5730744, -98.6531431, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473952', 'Pat Creek', 'Stream', 'Kansas', 'KS', 'Kingman', 'Penalosa', 37.6272395, -98.3067379, ST_GeomFromText('POINT(37.6272395 -98.3067379)', 4326), 37.5550179, -98.3306285, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('473957', 'Petyt Creek', 'Stream', 'Kansas', 'KS', 'Kingman', 'Kingman NW', 37.6283502, -98.2322899, ST_GeomFromText('POINT(37.6283502 -98.2322899)', 4326), 37.5605732, -98.2864597, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473967', 'Smoots Creek', 'Stream', 'Kansas', 'KS', 'Kingman', 'Cheney SE', 37.5744605, -97.8114414, ST_GeomFromText('POINT(37.5744605 -97.8114414)', 4326), 37.7050165, -98.2359006, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473974', 'Nester Creek', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Cheney SE', 37.5958489, -97.8064411, ST_GeomFromText('POINT(37.5958489 -97.8064411)', 4326), 37.702791, -97.87172, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473980', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Cheney', 37.7033458, -97.7842176, ST_GeomFromText('POINT(37.7033458 -97.7842176)', 4326), 37.7833442, -97.7386604, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473983', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Lake Afton', 37.6161261, -97.736717, ST_GeomFromText('POINT(37.6161261 -97.736717)', 4326), 37.7016792, -97.7031049, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473984', 'Clear Creek', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Garden Plain', 37.6014044, -97.6361601, ST_GeomFromText('POINT(37.6014044 -97.6361601)', 4326), 37.7191788, -97.658382, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473985', 'Middle Branch Clearwater Creek', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Garden Plain', 37.5964046, -97.6344935, ST_GeomFromText('POINT(37.5964046 -97.6344935)', 4326), 37.6880687, -97.6322706, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473986', 'Polecat Creek', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Garden Plain', 37.6241816, -97.6547713, ST_GeomFromText('POINT(37.6241816 -97.6547713)', 4326), 37.7264007, -97.6775489, '1978-10-13', NULL, NULL, NULL, NULL),
  ('473987', 'Sunnebuhl Lake', 'Reservoir', 'Kansas', 'KS', 'Sedgwick', 'Garden Plain', 37.6268785, -97.665277, ST_GeomFromText('POINT(37.6268785 -97.665277)', 4326), NULL, NULL, '1978-10-13', '2018-09-27', NULL, NULL, NULL),
  ('473988', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Garden Plain', 37.6544582, -97.7258833, ST_GeomFromText('POINT(37.6544582 -97.7258833)', 4326), 37.7319444, -97.6902778, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('473995', 'Lake Forty-eight', 'Reservoir', 'Kansas', 'KS', 'Sedgwick', 'Garden Plain', 37.6862483, -97.7194406, ST_GeomFromText('POINT(37.6862483 -97.7194406)', 4326), NULL, NULL, '1978-10-13', '2018-09-27', NULL, NULL, NULL),
  ('473999', 'Afton Creek', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Lake Afton', 37.5964046, -97.6344935, ST_GeomFromText('POINT(37.5964046 -97.6344935)', 4326), 37.662514, -97.5853257, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474000', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Bayneville', 37.6125157, -97.4097681, ST_GeomFromText('POINT(37.6125157 -97.4097681)', 4326), 37.6602919, -97.5522697, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474007', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Wichita West', 37.7230683, -97.4919909, ST_GeomFromText('POINT(37.7230683 -97.4919909)', 4326), 37.6983461, -97.6336595, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474035', 'Horseshoe Lake', 'Lake', 'Kansas', 'KS', 'Sedgwick', 'Wichita West', 37.721767, -97.4135078, ST_GeomFromText('POINT(37.721767 -97.4135078)', 4326), NULL, NULL, '1978-10-13', '2018-09-27', NULL, NULL, NULL),
  ('474039', 'Cadillac Lake', 'Reservoir', 'Kansas', 'KS', 'Sedgwick', 'Wichita West', 37.7348039, -97.458948, ST_GeomFromText('POINT(37.7348039 -97.458948)', 4326), NULL, NULL, '1978-10-13', '2018-09-27', NULL, NULL, NULL),
  ('474182', 'Big Slough', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Derby', 37.5769614, -97.3042113, ST_GeomFromText('POINT(37.5769614 -97.3042113)', 4326), 37.642515, -97.4036568, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474206', 'Beech Lake', 'Reservoir', 'Kansas', 'KS', 'Sedgwick', 'Andover', 37.7063336, -97.2237599, ST_GeomFromText('POINT(37.7063336 -97.2237599)', 4326), NULL, NULL, '1978-10-13', '2018-09-27', NULL, NULL, NULL),
  ('474216', 'Seltzer Spring', 'Spring', 'Kansas', 'KS', 'Butler', 'Andover', 37.6616828, -97.15643, ST_GeomFromText('POINT(37.6616828 -97.15643)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474220', 'Spring Branch', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Andover', 37.6616828, -97.1497631, ST_GeomFromText('POINT(37.6616828 -97.1497631)', 4326), 37.6905556, -97.2125, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('474231', 'Gypsum Creek', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Wichita East', 37.6394597, -97.3072667, ST_GeomFromText('POINT(37.6394597 -97.3072667)', 4326), 37.7214023, -97.2550438, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474234', 'Fourmile Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'Douglass', 37.6050186, -97.0083702, ST_GeomFromText('POINT(37.6050186 -97.0083702)', 4326), 37.737236, -97.1967089, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474235', 'Republican Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'Santa Fe Lake', 37.6575168, -97.0992062, ST_GeomFromText('POINT(37.6575168 -97.0992062)', 4326), 37.7316811, -97.1672636, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474242', 'Santa Fe Lake', 'Reservoir', 'Kansas', 'KS', 'Butler', 'Santa Fe Lake', 37.709438, -97.0568248, ST_GeomFromText('POINT(37.709438 -97.0568248)', 4326), NULL, NULL, '1978-10-13', '2018-09-27', NULL, NULL, NULL),
  ('474256', 'Cossell Lake', 'Reservoir', 'Kansas', 'KS', 'Kiowa', 'Mullinville', 37.581742, -99.380994, ST_GeomFromText('POINT(37.581742 -99.380994)', 4326), NULL, NULL, '1978-10-13', '2024-10-31', NULL, NULL, NULL),
  ('474286', 'Wild Run Creek', 'Stream', 'Kansas', 'KS', 'Kingman', 'Cleveland', 37.6205723, -98.2003442, ST_GeomFromText('POINT(37.6205723 -98.2003442)', 4326), 37.5380556, -98.2222222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474287', 'Coon Creek', 'Stream', 'Kansas', 'KS', 'Kingman', 'Murdock', 37.5536274, -97.8992219, ST_GeomFromText('POINT(37.5536274 -97.8992219)', 4326), 37.5333333, -97.9977778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474294', 'Fish Creek', 'Stream', 'Kansas', 'KS', 'Kingman', 'Cheney SE', 37.5725161, -97.8328309, ST_GeomFromText('POINT(37.5725161 -97.8328309)', 4326), 37.5125, -97.8588889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474301', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Lake Afton', 37.5447394, -97.6917167, ST_GeomFromText('POINT(37.5447394 -97.6917167)', 4326), 37.5080725, -97.9442236, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474302', 'Jocelyn Creek', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Lake Afton', 37.5491837, -97.698939, ST_GeomFromText('POINT(37.5491837 -97.698939)', 4326), 37.5155736, -97.7703294, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('474303', 'Mod Creek', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Lake Afton', 37.5700164, -97.7175503, ST_GeomFromText('POINT(37.5700164 -97.7175503)', 4326), 37.5402949, -97.8014413, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474305', 'Clearwater Creek', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Lake Afton', 37.5480726, -97.6311603, ST_GeomFromText('POINT(37.5480726 -97.6311603)', 4326), 37.6013889, -97.6358333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474309', 'Lake Afton', 'Reservoir', 'Kansas', 'KS', 'Sedgwick', 'Lake Afton', 37.6113223, -97.6272605, ST_GeomFromText('POINT(37.6113223 -97.6272605)', 4326), NULL, NULL, '1978-10-13', '2024-11-01', NULL, NULL, NULL),
  ('474310', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Clearwater', 37.5094624, -97.5633818, ST_GeomFromText('POINT(37.5094624 -97.5633818)', 4326), 37.6155556, -97.5763889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474316', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Bayneville', 37.5130738, -97.4192131, ST_GeomFromText('POINT(37.5130738 -97.4192131)', 4326), 37.5875, -97.4586111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474317', 'Wattles Lake', 'Reservoir', 'Kansas', 'KS', 'Sedgwick', 'Bayneville', 37.551723, -97.454887, ST_GeomFromText('POINT(37.551723 -97.454887)', 4326), NULL, NULL, '1978-10-13', '2024-11-01', NULL, NULL, NULL),
  ('474323', 'Wise Lake', 'Reservoir', 'Kansas', 'KS', 'Sedgwick', 'Bayneville', 37.5594612, -97.4844916, ST_GeomFromText('POINT(37.5594612 -97.4844916)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474341', 'Meadow Lake', 'Lake', 'Kansas', 'KS', 'Sedgwick', 'Derby', 37.5941343, -97.2987396, ST_GeomFromText('POINT(37.5941343 -97.2987396)', 4326), NULL, NULL, '1978-10-13', '2018-09-27', NULL, NULL, NULL),
  ('474359', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Rose Hill', 37.5102966, -97.2680998, ST_GeomFromText('POINT(37.5102966 -97.2680998)', 4326), 37.6141835, -97.183653, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474364', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Rose Hill', 37.5411292, -97.2536551, ST_GeomFromText('POINT(37.5411292 -97.2536551)', 4326), 37.6052943, -97.2450437, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('474370', 'Little Walnut River', 'Stream', 'Kansas', 'KS', 'Butler', 'Douglass', 37.5430751, -97.0164259, ST_GeomFromText('POINT(37.5430751 -97.0164259)', 4326), 37.709741, -96.7447492, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474379', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'Benton', 37.8536277, -97.038369, ST_GeomFromText('POINT(37.8536277 -97.038369)', 4326), 37.936129, -96.9486424, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474380', 'Fourmile Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'El Dorado NW', 37.8864054, -97.0503129, ST_GeomFromText('POINT(37.8864054 -97.0503129)', 4326), 37.9877959, -96.9119735, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474381', 'Diamond Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'Potwin', 37.9355727, -97.0342005, ST_GeomFromText('POINT(37.9355727 -97.0342005)', 4326), 38.016407, -96.9155841, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474382', 'East Branch Whitewater River', 'Stream', 'Kansas', 'KS', 'Butler', 'Potwin', 37.9814065, -97.0236438, ST_GeomFromText('POINT(37.9814065 -97.0236438)', 4326), 38.1005735, -96.8966923, '1978-10-13', NULL, 'Official', 'Board Decision', '1963-01-01'),
  ('474385', 'Cole Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'De Graff', 37.9258513, -96.7822475, ST_GeomFromText('POINT(37.9258513 -96.7822475)', 4326), 38.0791842, -96.7541875, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474386', 'West Branch Walnut River', 'Stream', 'Kansas', 'KS', 'Butler', 'El Dorado', 37.8169623, -96.8397515, ST_GeomFromText('POINT(37.8169623 -96.8397515)', 4326), 38.0555735, -96.8519696, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474395', 'Gilmore Branch', 'Stream', 'Kansas', 'KS', 'Butler', 'De Graff', 37.9455736, -96.785025, ST_GeomFromText('POINT(37.9455736 -96.785025)', 4326), 37.9866667, -96.8172222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474398', 'Battle Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Rosalia NE', 37.9764094, -96.5136235, ST_GeomFromText('POINT(37.9764094 -96.5136235)', 4326), 38.0236307, -96.545013, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474401', 'Cat Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Rosalia NE', 37.9491876, -96.5102903, ST_GeomFromText('POINT(37.9491876 -96.5102903)', 4326), 38.0114086, -96.5566805, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('474402', 'Durechen Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'De Graff', 37.9041847, -96.7875258, ST_GeomFromText('POINT(37.9041847 -96.7875258)', 4326), 38.0130752, -96.5600139, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474403', 'Satchel Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'El Dorado', 37.857518, -96.8097497, ST_GeomFromText('POINT(37.857518 -96.8097497)', 4326), 37.9055762, -96.5769606, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474404', 'Bemis Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'El Dorado', 37.8272402, -96.8178061, ST_GeomFromText('POINT(37.8272402 -96.8178061)', 4326), 37.8916872, -96.5914059, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474405', 'Hog Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Rosalia NE', 37.932799, -96.5075125, ST_GeomFromText('POINT(37.932799 -96.5075125)', 4326), 37.9372222, -96.5808333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474406', 'Ivanpah Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Lapland', 37.9014117, -96.4469547, ST_GeomFromText('POINT(37.9014117 -96.4469547)', 4326), 37.884743, -96.5766831, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474408', 'Otis Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Lapland', 37.9211333, -96.4600106, ST_GeomFromText('POINT(37.9211333 -96.4600106)', 4326), 38.0283537, -96.4672318, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474409', 'Oleson Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Lapland', 37.9505786, -96.3922296, ST_GeomFromText('POINT(37.9505786 -96.3922296)', 4326), 38.0294652, -96.4336193, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474414', 'Otis Creek Reservoir', 'Reservoir', 'Kansas', 'KS', 'Greenwood', 'Lapland', 37.9398506, -96.4647538, ST_GeomFromText('POINT(37.9398506 -96.4647538)', 4326), NULL, NULL, '1978-10-13', '2024-11-01', NULL, NULL, NULL),
  ('474418', 'West Branch Fall River', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Eureka', 37.8566922, -96.3575065, ST_GeomFromText('POINT(37.8566922 -96.3575065)', 4326), 38.015576, -96.4822327, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474422', 'Bachelor Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Neal', 37.8380873, -96.1011066, ST_GeomFromText('POINT(37.8380873 -96.1011066)', 4326), 37.9694681, -96.3286157, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('474423', 'Swing Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Lapland', 37.9658561, -96.3841737, ST_GeomFromText('POINT(37.9658561 -96.3841737)', 4326), 38.0161339, -96.3194483, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474424', 'East Branch Fall River', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Eureka', 37.8566922, -96.3575065, ST_GeomFromText('POINT(37.8566922 -96.3575065)', 4326), 38.0916868, -96.3944501, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474425', 'Eureka City Lake', 'Reservoir', 'Kansas', 'KS', 'Greenwood', 'Eureka NE', 37.8990382, -96.2976965, ST_GeomFromText('POINT(37.8990382 -96.2976965)', 4326), NULL, NULL, '1978-10-13', '2024-10-31', NULL, NULL, NULL),
  ('474427', 'Munger Lake', 'Reservoir', 'Kansas', 'KS', 'Greenwood', 'Eureka NE', 37.9408713, -96.2781552, ST_GeomFromText('POINT(37.9408713 -96.2781552)', 4326), NULL, NULL, '1978-10-13', '2024-11-01', NULL, NULL, NULL),
  ('474429', 'Homer Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Virgil', 37.9714162, -96.1011067, ST_GeomFromText('POINT(37.9714162 -96.1011067)', 4326), 37.9908573, -96.2794469, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474430', 'Onion Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Hamilton', 37.999748, -96.1424972, ST_GeomFromText('POINT(37.999748 -96.1424972)', 4326), 38.0547453, -96.2147214, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474434', 'Chelsea Township', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Hamilton', 37.9097502, -96.1752763, ST_GeomFromText('POINT(37.9097502 -96.1752763)', 4326), 37.9702778, -96.22, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474439', 'Slate Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Virgil', 37.9728049, -96.109996, ST_GeomFromText('POINT(37.9728049 -96.109996)', 4326), 38.059744, -96.3105584, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474440', 'Willow Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Virgil', 37.9728049, -96.109996, ST_GeomFromText('POINT(37.9728049 -96.109996)', 4326), 38.0727996, -96.2844461, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474441', 'Greenhall Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Virgil', 37.9891946, -96.0230483, ST_GeomFromText('POINT(37.9891946 -96.0230483)', 4326), 38.0455822, -95.9549906, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('474442', 'West Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Virgil', 37.8855876, -96.0074918, ST_GeomFromText('POINT(37.8855876 -96.0074918)', 4326), 37.9727778, -96.1097222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474453', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Toronto', 37.8561448, -95.9761017, ST_GeomFromText('POINT(37.8561448 -95.9761017)', 4326), 37.9889179, -95.9224899, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474459', 'Turkey Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'Le Roy', 38.0700278, -95.669985, ST_GeomFromText('POINT(38.0700278 -95.669985)', 4326), 37.9189213, -95.8860995, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474460', 'Yates Center Reservoir', 'Reservoir', 'Kansas', 'KS', 'Woodson', 'Toronto SE', 37.8662648, -95.7514815, ST_GeomFromText('POINT(37.8662648 -95.7514815)', 4326), NULL, NULL, '1978-10-13', '2024-10-31', NULL, NULL, NULL),
  ('474467', 'Owl Creek', 'Stream', 'Kansas', 'KS', 'Allen', 'Humboldt', 37.7903192, -95.4505375, ST_GeomFromText('POINT(37.7903192 -95.4505375)', 4326), 37.92531, -95.8797105, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474468', 'North Owl Creek', 'Stream', 'Kansas', 'KS', 'Woodson', 'Yates Center', 37.9080905, -95.7163732, ST_GeomFromText('POINT(37.9080905 -95.7163732)', 4326), 37.9411433, -95.8241536, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474471', 'Bloody Run', 'Stream', 'Kansas', 'KS', 'Woodson', 'Yates Center', 38.0150296, -95.7491523, ST_GeomFromText('POINT(38.0150296 -95.7491523)', 4326), 37.9819756, -95.7385964, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474474', 'School Creek', 'Stream', 'Kansas', 'KS', 'Woodson', 'Yates Center', 37.9036463, -95.7066509, ST_GeomFromText('POINT(37.9036463 -95.7066509)', 4326), 37.9563889, -95.7066667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474477', 'Plum Creek', 'Stream', 'Kansas', 'KS', 'Woodson', 'Piqua', 37.8661486, -95.5883165, ST_GeomFromText('POINT(37.8661486 -95.5883165)', 4326), 37.9414229, -95.5960949, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474478', 'Cherry Creek', 'Stream', 'Kansas', 'KS', 'Woodson', 'Yates Center SE', 37.8503161, -95.5758164, ST_GeomFromText('POINT(37.8503161 -95.5758164)', 4326), 38.0158633, -95.691374, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('474485', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Allen', 'Piqua', 37.9772551, -95.5166501, ST_GeomFromText('POINT(37.9772551 -95.5166501)', 4326), 37.9502778, -95.5963889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474486', 'Leonards Lake', 'Lake', 'Kansas', 'KS', 'Woodson', 'Five Mounds', 37.6236609, -95.5380368, ST_GeomFromText('POINT(37.6236609 -95.5380368)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474488', 'Onion Creek', 'Stream', 'Kansas', 'KS', 'Allen', 'Humboldt', 37.84615, -95.4733157, ST_GeomFromText('POINT(37.84615 -95.4733157)', 4326), 37.9183689, -95.5085941, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474489', 'Liberty Creek', 'Stream', 'Kansas', 'KS', 'Allen', 'Iola', 37.9675334, -95.4958165, ST_GeomFromText('POINT(37.9675334 -95.4958165)', 4326), 37.9475343, -95.4869273, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474500', 'Coon Creek', 'Stream', 'Kansas', 'KS', 'Allen', 'Iola', 37.9186468, -95.4216484, ST_GeomFromText('POINT(37.9186468 -95.4216484)', 4326), 37.9458333, -95.3888889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474501', 'Lake Bassola', 'Reservoir', 'Kansas', 'KS', 'Allen', 'Iola', 37.9065888, -95.4074522, ST_GeomFromText('POINT(37.9065888 -95.4074522)', 4326), NULL, NULL, '1978-10-13', '2024-10-31', NULL, NULL, NULL),
  ('474504', 'Boyers Lake', 'Lake', 'Kansas', 'KS', 'Allen', 'Iola', 37.9527315, -95.4125941, ST_GeomFromText('POINT(37.9527315 -95.4125941)', 4326), NULL, NULL, '1978-10-13', '2018-07-05', NULL, NULL, NULL),
  ('474507', 'Greaser Creek', 'Stream', 'Kansas', 'KS', 'Allen', 'Iola', 37.9519786, -95.4435932, ST_GeomFromText('POINT(37.9519786 -95.4435932)', 4326), 37.6283827, -95.4427584, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474515', 'Elm Creek', 'Stream', 'Kansas', 'KS', 'Allen', 'Iola', 37.8997588, -95.4205373, ST_GeomFromText('POINT(37.8997588 -95.4205373)', 4326), 37.9489238, -95.2099776, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474516', 'Big Creek', 'Stream', 'Kansas', 'KS', 'Neosho', 'Rollin', 37.6253268, -95.3369243, ST_GeomFromText('POINT(37.6253268 -95.3369243)', 4326), 37.9069811, -95.172477, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('474520', 'Katy Lake', 'Reservoir', 'Kansas', 'KS', 'Allen', 'Moran', 37.9595107, -95.1736763, ST_GeomFromText('POINT(37.9595107 -95.1736763)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('474521', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Allen', 'Iola', 37.9119805, -95.3891479, ST_GeomFromText('POINT(37.9119805 -95.3891479)', 4326), 37.9661453, -95.2044217, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474523', 'Sweet Branch', 'Stream', 'Kansas', 'KS', 'Allen', 'Bronson', 37.8672607, -95.1110868, ST_GeomFromText('POINT(37.8672607 -95.1110868)', 4326), 37.9214252, -95.1058083, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474524', 'Bronson Reservoir', 'Reservoir', 'Kansas', 'KS', 'Bourbon', 'Bronson', 37.8869728, -95.0340246, ST_GeomFromText('POINT(37.8869728 -95.0340246)', 4326), NULL, NULL, '1978-10-13', '2023-04-05', NULL, NULL, NULL),
  ('474528', 'Dawson Lake', 'Reservoir', 'Kansas', 'KS', 'Allen', 'Bronson', 37.9887664, -95.0890123, ST_GeomFromText('POINT(37.9887664 -95.0890123)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('474529', 'Spring Valley', 'Valley', 'Kansas', 'KS', 'Allen', 'Bronson', 37.9978526, -95.0831373, ST_GeomFromText('POINT(37.9978526 -95.0831373)', 4326), 37.9621489, -95.102067, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('474531', 'Walnut Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Xenia', 37.8358736, -94.9024691, ST_GeomFromText('POINT(37.8358736 -94.9024691)', 4326), 37.9017046, -94.9135799, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474532', 'Opossum Hollow', 'Valley', 'Kansas', 'KS', 'Bourbon', 'Uniontown', 37.8673822, -94.9559765, ST_GeomFromText('POINT(37.8673822 -94.9559765)', 4326), 37.8951483, -95.0025518, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('474533', 'Turkey Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Uniontown', 37.8467065, -94.949693, ST_GeomFromText('POINT(37.8467065 -94.949693)', 4326), 37.929203, -95.0058054, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474534', 'Limestone Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Xenia', 37.9875344, -94.9580251, ST_GeomFromText('POINT(37.9875344 -94.9580251)', 4326), 37.9264251, -95.1002525, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('474543', 'Tippie Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Xenia', 37.9880906, -94.8905225, ST_GeomFromText('POINT(37.9880906 -94.8905225)', 4326), 37.9530556, -94.9030556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474544', 'Reagan Branch', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Xenia', 37.9861458, -94.9285795, ST_GeomFromText('POINT(37.9861458 -94.9285795)', 4326), 37.9347222, -94.9458333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474545', 'Dyer Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Xenia', 37.901982, -94.9716377, ST_GeomFromText('POINT(37.901982 -94.9716377)', 4326), 37.9302778, -94.9486111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474546', 'Little Mill Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Devon', 37.9083715, -94.813576, ST_GeomFromText('POINT(37.9083715 -94.813576)', 4326), 37.9477778, -94.8694444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474547', 'Mill Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Fort Scott', 37.8486513, -94.7035725, ST_GeomFromText('POINT(37.8486513 -94.7035725)', 4326), 37.9480919, -94.9096903, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474558', 'Wolverine Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Hammond', 37.8658729, -94.6846828, ST_GeomFromText('POINT(37.8658729 -94.6846828)', 4326), 37.9330934, -94.7399618, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474560', 'Little Osage River', 'Stream', 'Missouri', 'MO', 'Vernon', 'Papinville', 38.0275321, -94.2441147, ST_GeomFromText('POINT(38.0275321 -94.2441147)', 4326), 38.0256, -95.08972, '1980-10-24', '2016-03-16', NULL, NULL, NULL),
  ('474561', 'Fish Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Prescott', 38.0100353, -94.7044042, ST_GeomFromText('POINT(38.0100353 -94.7044042)', 4326), 37.9333712, -94.7474621, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474578', 'Spring Branch', 'Stream', 'Kansas', 'KS', 'Butler', 'El Dorado SW', 37.8105725, -97.0128136, ST_GeomFromText('POINT(37.8105725 -97.0128136)', 4326), 37.8730733, -96.9380877, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474580', 'Sutton Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'El Dorado SW', 37.7550176, -96.8797542, ST_GeomFromText('POINT(37.7550176 -96.8797542)', 4326), 37.8188889, -96.9311111, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('474584', 'Turkey Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'Augusta', 37.718351, -96.8997551, ST_GeomFromText('POINT(37.718351 -96.8997551)', 4326), 37.7600187, -96.7391931, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474589', 'Constant Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'El Dorado', 37.7966845, -96.8628084, ST_GeomFromText('POINT(37.7966845 -96.8628084)', 4326), 37.844462, -96.9197541, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474604', 'Bird Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'Pontiac', 37.8286291, -96.8169728, ST_GeomFromText('POINT(37.8286291 -96.8169728)', 4326), 37.8050205, -96.6336313, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474609', 'Shady Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'Pontiac', 37.8452963, -96.733358, ST_GeomFromText('POINT(37.8452963 -96.733358)', 4326), 37.8183333, -96.6544444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474610', 'Harrison Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'Pontiac', 37.8514077, -96.7172459, ST_GeomFromText('POINT(37.8514077 -96.7172459)', 4326), 37.8508333, -96.6458333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474613', 'De Haas Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'Rosalia', 37.7566874, -96.6447437, ST_GeomFromText('POINT(37.7566874 -96.6447437)', 4326), 37.7591893, -96.5516833, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474614', 'Middle Branch Little Walnut River', 'Stream', 'Kansas', 'KS', 'Butler', 'Rosalia', 37.7658541, -96.6355765, ST_GeomFromText('POINT(37.7658541 -96.6355765)', 4326), 37.8114108, -96.5555718, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474615', 'Lower Branch', 'Stream', 'Kansas', 'KS', 'Butler', 'Rosalia', 37.8508533, -96.6461313, ST_GeomFromText('POINT(37.8508533 -96.6461313)', 4326), 37.8314101, -96.5852953, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474616', 'Upper Branch', 'Stream', 'Kansas', 'KS', 'Butler', 'Rosalia', 37.8508533, -96.6461313, ST_GeomFromText('POINT(37.8508533 -96.6461313)', 4326), 37.8366883, -96.5555715, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474617', 'North Branch Little Walnut River', 'Stream', 'Kansas', 'KS', 'Butler', 'Keighley', 37.709741, -96.7447492, ST_GeomFromText('POINT(37.709741 -96.7447492)', 4326), 37.8250218, -96.5530715, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('474618', 'Windy Hill', 'Summit', 'Kansas', 'KS', 'Greenwood', 'Rosalia', 37.7633501, -96.5086176, ST_GeomFromText('POINT(37.7633501 -96.5086176)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('474622', 'Rogers Pond', 'Reservoir', 'Kansas', 'KS', 'Butler', 'Rosalia', 37.7662981, -96.5461277, ST_GeomFromText('POINT(37.7662981 -96.5461277)', 4326), NULL, NULL, '1978-10-13', '2018-07-05', NULL, NULL, NULL),
  ('474626', 'Watson Branch', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Reece', 37.6916941, -96.3816738, ST_GeomFromText('POINT(37.6916941 -96.3816738)', 4326), 37.7591929, -96.4044539, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474627', 'Silver Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Reece', 37.7761348, -96.4891799, ST_GeomFromText('POINT(37.7761348 -96.4891799)', 4326), 37.8227998, -96.5414043, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474628', 'Burnt Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Reece', 37.7878033, -96.4127873, ST_GeomFromText('POINT(37.7878033 -96.4127873)', 4326), 37.8575, -96.4727778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474631', 'Coon Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Reece', 37.8703022, -96.3969527, ST_GeomFromText('POINT(37.8703022 -96.3969527)', 4326), 37.8566667, -96.4638889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474634', 'Honey Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Severy North', 37.7264211, -96.2008325, ST_GeomFromText('POINT(37.7264211 -96.2008325)', 4326), 37.7439175, -96.328339, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474635', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Eureka', 37.807806, -96.2894482, ST_GeomFromText('POINT(37.807806 -96.2894482)', 4326), 37.7028015, -96.5141809, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474636', 'Kitty Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Eureka', 37.783083, -96.3427841, ST_GeomFromText('POINT(37.783083 -96.3427841)', 4326), 37.7533598, -96.4000092, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474646', 'Fall River', 'Stream', 'Kansas', 'KS', 'Wilson', 'Neodesha', 37.3892278, -95.6624801, ST_GeomFromText('POINT(37.3892278 -95.6624801)', 4326), 37.8569699, -96.3580621, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('474647', 'Fall River Lake', 'Reservoir', 'Kansas', 'KS', 'Greenwood', 'Fall River Lake', 37.659771, -96.078701, ST_GeomFromText('POINT(37.659771 -96.078701)', 4326), NULL, NULL, '1978-10-13', '2024-11-01', 'Official', 'Board Decision', '1971-01-01'),
  ('474650', 'Tonovay Draw', 'Valley', 'Kansas', 'KS', 'Greenwood', 'Tonovay', 37.8489955, -96.196024, ST_GeomFromText('POINT(37.8489955 -96.196024)', 4326), 37.8572051, -96.1756852, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('474654', 'Fancy Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Neal', 37.8017012, -96.0352704, ST_GeomFromText('POINT(37.8017012 -96.0352704)', 4326), 37.7572222, -96.0691667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474655', 'Kuntz Branch', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Neal', 37.8175331, -96.070272, ST_GeomFromText('POINT(37.8175331 -96.070272)', 4326), 37.7597222, -96.0819444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474656', 'Rocky Mound', 'Summit', 'Kansas', 'KS', 'Greenwood', 'Neal', 37.8083604, -96.0574859, ST_GeomFromText('POINT(37.8083604 -96.0574859)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('474660', 'Tar Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Neal', 37.8172556, -96.0597159, ST_GeomFromText('POINT(37.8172556 -96.0597159)', 4326), 37.8538889, -96.0513889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474661', 'Tipperary Hill', 'Summit', 'Kansas', 'KS', 'Greenwood', 'Neal', 37.8630195, -96.0618865, ST_GeomFromText('POINT(37.8630195 -96.0618865)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('474664', 'Miller Creek', 'Stream', 'Kansas', 'KS', 'Woodson', 'Toronto', 37.7730932, -95.9397113, ST_GeomFromText('POINT(37.7730932 -95.9397113)', 4326), 37.8364251, -95.8733208, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474665', 'Walnut Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Toronto', 37.7805924, -95.9647121, ST_GeomFromText('POINT(37.7805924 -95.9647121)', 4326), 37.8378095, -96.1011066, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474666', 'Brazil Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Toronto', 37.8447565, -95.9638791, ST_GeomFromText('POINT(37.8447565 -95.9638791)', 4326), 37.9128103, -95.9002666, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('474667', 'Cedar Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Toronto', 37.8092024, -95.9655457, ST_GeomFromText('POINT(37.8092024 -95.9655457)', 4326), 37.9128106, -95.8794327, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474670', 'Negro Hollow', 'Valley', 'Kansas', 'KS', 'Woodson', 'Toronto', 37.7777636, -95.9062061, ST_GeomFromText('POINT(37.7777636 -95.9062061)', 4326), 37.7930995, -95.8970458, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('474673', 'Snag Hollow', 'Valley', 'Kansas', 'KS', 'Woodson', 'Toronto', 37.8014665, -95.9433412, ST_GeomFromText('POINT(37.8014665 -95.9433412)', 4326), 37.816825, -95.9236404, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('474676', 'Biscuit Mound', 'Summit', 'Kansas', 'KS', 'Woodson', 'Toronto', 37.8642855, -95.9279954, ST_GeomFromText('POINT(37.8642855 -95.9279954)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('474677', 'Toronto Lake', 'Reservoir', 'Kansas', 'KS', 'Woodson', 'Toronto', 37.7635764, -95.9360638, ST_GeomFromText('POINT(37.7635764 -95.9360638)', 4326), NULL, NULL, '1978-10-13', '2018-07-05', 'Official', 'Board Decision', '1971-01-01'),
  ('474679', 'Sandy Creek', 'Stream', 'Kansas', 'KS', 'Woodson', 'Middletown', 37.6755992, -95.8372064, ST_GeomFromText('POINT(37.6755992 -95.8372064)', 4326), 37.8994782, -95.842487, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474680', 'Little Sandy Creek', 'Stream', 'Kansas', 'KS', 'Woodson', 'Toronto SE', 37.6822656, -95.8344288, ST_GeomFromText('POINT(37.6822656 -95.8344288)', 4326), 37.7630964, -95.7974843, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474685', 'West Buffalo Creek', 'Stream', 'Kansas', 'KS', 'Woodson', 'Buffalo', 37.6750463, -95.7408155, ST_GeomFromText('POINT(37.6750463 -95.7408155)', 4326), 37.7961511, -95.7588724, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474694', 'Bloody Run', 'Stream', 'Kansas', 'KS', 'Wilson', 'Buffalo', 37.7219884, -95.7077601, ST_GeomFromText('POINT(37.7219884 -95.7077601)', 4326), 37.7608753, -95.6974826, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474695', 'East Buffalo Creek', 'Stream', 'Kansas', 'KS', 'Woodson', 'Buffalo', 37.6814349, -95.733871, ST_GeomFromText('POINT(37.6814349 -95.733871)', 4326), 37.7867079, -95.5910937, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('474696', 'South Owl Creek', 'Stream', 'Kansas', 'KS', 'Woodson', 'Yates Center SE', 37.8483717, -95.5833164, ST_GeomFromText('POINT(37.8483717 -95.5833164)', 4326), 37.8642031, -95.7808183, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474701', 'Otter Springs Creek', 'Stream', 'Kansas', 'KS', 'Woodson', 'Yates Center SE', 37.8119847, -95.5127602, ST_GeomFromText('POINT(37.8119847 -95.5127602)', 4326), 37.8083333, -95.5580556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474709', 'Scatter Creek', 'Stream', 'Kansas', 'KS', 'Allen', 'Humboldt', 37.7505987, -95.4663708, ST_GeomFromText('POINT(37.7505987 -95.4663708)', 4326), 37.7928188, -95.5785937, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474710', 'Bloody Run', 'Stream', 'Kansas', 'KS', 'Allen', 'Humboldt', 37.8111515, -95.4938712, ST_GeomFromText('POINT(37.8111515 -95.4938712)', 4326), 37.8797595, -95.519705, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474713', 'Mud Creek', 'Stream', 'Kansas', 'KS', 'Allen', 'Humboldt', 37.7764309, -95.4516486, ST_GeomFromText('POINT(37.7764309 -95.4516486)', 4326), 37.7825417, -95.5163712, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474719', 'Charles Branch', 'Stream', 'Kansas', 'KS', 'Allen', 'Humboldt', 37.8228177, -95.3913704, ST_GeomFromText('POINT(37.8228177 -95.3913704)', 4326), 37.8747222, -95.3958333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474723', 'Vegetarian Creek', 'Stream', 'Kansas', 'KS', 'Neosho', 'Chanute', 37.7242111, -95.4283149, ST_GeomFromText('POINT(37.7242111 -95.4283149)', 4326), 37.7497653, -95.3608149, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474724', 'Turkey Branch', 'Stream', 'Kansas', 'KS', 'Allen', 'Iola SE', 37.7083783, -95.3147029, ST_GeomFromText('POINT(37.7083783 -95.3147029)', 4326), 37.7661535, -95.339148, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474725', 'Goose Creek', 'Stream', 'Kansas', 'KS', 'Allen', 'Iola SE', 37.7408767, -95.2755366, ST_GeomFromText('POINT(37.7408767 -95.2755366)', 4326), 37.8164291, -95.2688693, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474726', 'Slack Creek', 'Stream', 'Kansas', 'KS', 'Allen', 'Iola SE', 37.8017076, -95.4016483, ST_GeomFromText('POINT(37.8017076 -95.4016483)', 4326), 37.8039297, -95.3083142, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('474727', 'Coal Creek', 'Stream', 'Kansas', 'KS', 'Allen', 'Iola SE', 37.7694867, -95.4508153, ST_GeomFromText('POINT(37.7694867 -95.4508153)', 4326), 37.8608717, -95.259702, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474733', 'Mud Creek', 'Stream', 'Kansas', 'KS', 'Allen', 'Elsmore', 37.7922635, -95.2219242, ST_GeomFromText('POINT(37.7922635 -95.2219242)', 4326), 37.8572608, -95.2430352, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474734', 'Little Creek', 'Stream', 'Kansas', 'KS', 'Allen', 'Elsmore', 37.8000411, -95.1899787, ST_GeomFromText('POINT(37.8000411 -95.1899787)', 4326), 37.8830932, -95.1944224, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474742', 'Wolfpen Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Moran SE', 37.8033745, -95.0621971, ST_GeomFromText('POINT(37.8033745 -95.0621971)', 4326), 37.7433768, -95.0821982, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474743', 'Jackie Branch Marmaton River', 'Stream', 'Kansas', 'KS', 'Allen', 'Moran SE', 37.8111519, -95.0935869, ST_GeomFromText('POINT(37.8111519 -95.0935869)', 4326), 37.7853196, -95.1302549, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474747', 'Bunion Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Uniontown', 37.7844865, -94.9016363, ST_GeomFromText('POINT(37.7844865 -94.9016363)', 4326), 37.7147664, -94.8983029, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474757', 'Pawnee Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Marmaton', 37.7917086, -94.8238555, ST_GeomFromText('POINT(37.7917086 -94.8238555)', 4326), 37.6389347, -94.8613565, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474759', 'Robinson Branch', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Marmaton', 37.8250408, -94.8669123, ST_GeomFromText('POINT(37.8250408 -94.8669123)', 4326), 37.8805945, -94.8710785, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474762', 'Paint Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Marmaton', 37.8028194, -94.8149661, ST_GeomFromText('POINT(37.8028194 -94.8149661)', 4326), 37.6869897, -95.0196956, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474765', 'Cedar Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Marmaton', 37.817819, -94.7921873, ST_GeomFromText('POINT(37.817819 -94.7921873)', 4326), 37.8805946, -94.8419108, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('474769', 'Rock Creek Lake', 'Reservoir', 'Kansas', 'KS', 'Bourbon', 'Marmaton', 37.8101627, -94.7538514, ST_GeomFromText('POINT(37.8101627 -94.7538514)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('474770', 'Elm Creek Lake', 'Reservoir', 'Kansas', 'KS', 'Bourbon', 'Marmaton', 37.7568428, -94.8542971, ST_GeomFromText('POINT(37.7568428 -94.8542971)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('474771', 'Elm Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Marmaton', 37.7805979, -94.8280225, ST_GeomFromText('POINT(37.7805979 -94.8280225)', 4326), 37.7292105, -94.8699686, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474773', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Marmaton', 37.8000417, -94.7557973, ST_GeomFromText('POINT(37.8000417 -94.7557973)', 4326), 37.7364324, -94.7627425, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474799', 'Lath Branch', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Fort Scott', 37.8522621, -94.6557931, ST_GeomFromText('POINT(37.8522621 -94.6557931)', 4326), 37.8138889, -94.6819444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474801', 'Buck Run', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Fort Scott', 37.8472624, -94.6994058, ST_GeomFromText('POINT(37.8472624 -94.6994058)', 4326), 37.8013889, -94.7027778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474805', 'Whitewater River', 'Stream', 'Kansas', 'KS', 'Butler', 'Augusta', 37.6569624, -96.991703, ST_GeomFromText('POINT(37.6569624 -96.991703)', 4326), 38.1152935, -97.0894751, '1978-10-13', '2019-08-29', NULL, NULL, NULL),
  ('474807', 'Elm Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'Augusta', 37.6830733, -96.9928141, ST_GeomFromText('POINT(37.6830733 -96.9928141)', 4326), 37.787795, -96.9517008, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474817', 'Augusta Lake', 'Reservoir', 'Kansas', 'KS', 'Butler', 'Augusta', 37.703688, -96.9781695, ST_GeomFromText('POINT(37.703688 -96.9781695)', 4326), NULL, NULL, '1978-10-13', '2018-09-27', NULL, NULL, NULL),
  ('474838', 'Hickory Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'Gordon', 37.6072411, -96.9097556, ST_GeomFromText('POINT(37.6072411 -96.9097556)', 4326), 37.6097436, -96.6433546, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('474839', 'Honey Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'Latham', 37.6222425, -96.6933577, ST_GeomFromText('POINT(37.6222425 -96.6933577)', 4326), 37.6680772, -96.6222423, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474840', 'Eagle Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'Keighley', 37.6280754, -96.7164145, ST_GeomFromText('POINT(37.6280754 -96.7164145)', 4326), 37.6738889, -96.655, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474847', 'North Branch Hickory Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'Latham', 37.6097436, -96.6433546, ST_GeomFromText('POINT(37.6097436 -96.6433546)', 4326), 37.660857, -96.5194586, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474848', 'South Branch Little Walnut River', 'Stream', 'Kansas', 'KS', 'Butler', 'Keighley', 37.709741, -96.7447492, ST_GeomFromText('POINT(37.709741 -96.7447492)', 4326), 37.6747461, -96.5100137, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474849', 'Stony Branch', 'Stream', 'Kansas', 'KS', 'Butler', 'Beaumont', 37.6261316, -96.6839126, ST_GeomFromText('POINT(37.6261316 -96.6839126)', 4326), 37.6550222, -96.5936295, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474850', 'Nicholas Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'Keighley', 37.7433536, -96.6647448, ST_GeomFromText('POINT(37.7433536 -96.6647448)', 4326), 37.7530777, -96.5766847, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474860', 'Temple Knob', 'Summit', 'Kansas', 'KS', 'Greenwood', 'Piedmont NW', 37.6994109, -96.4941923, ST_GeomFromText('POINT(37.6994109 -96.4941923)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('474861', 'North Branch Otter Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Piedmont NE', 37.6850298, -96.3025028, ST_GeomFromText('POINT(37.6850298 -96.3025028)', 4326), 37.6178018, -96.5158468, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474862', 'South Branch Otter Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Piedmont NE', 37.6850298, -96.3025028, ST_GeomFromText('POINT(37.6850298 -96.3025028)', 4326), 37.610304, -96.439731, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474863', 'Tadpole Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Piedmont NE', 37.7016971, -96.2744463, ST_GeomFromText('POINT(37.7016971 -96.2744463)', 4326), 37.740305, -96.3780636, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('474864', 'Salt Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Fall River', 37.6133717, -96.0377655, ST_GeomFromText('POINT(37.6133717 -96.0377655)', 4326), 37.6541976, -96.2736115, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474867', 'Plum Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Severy South', 37.606978, -96.2002731, ST_GeomFromText('POINT(37.606978 -96.2002731)', 4326), 37.6578088, -96.2672224, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474868', 'Otter Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Severy North', 37.7194779, -96.1586081, ST_GeomFromText('POINT(37.7194779 -96.1586081)', 4326), 37.6850298, -96.3025028, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474871', 'Snake Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Severy North', 37.7053098, -96.216388, ST_GeomFromText('POINT(37.7053098 -96.216388)', 4326), 37.6558333, -96.2286111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474875', 'Casner Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Fall River Lake', 37.6644804, -96.0955478, ST_GeomFromText('POINT(37.6644804 -96.0955478)', 4326), 37.6405888, -96.2008298, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474877', 'Shawnee Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'New Albany', 37.6117065, -95.9952636, ST_GeomFromText('POINT(37.6117065 -95.9952636)', 4326), 37.6783717, -96.0035995, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474878', 'Durham Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Severy North', 37.6980898, -96.140551, ST_GeomFromText('POINT(37.6980898 -96.140551)', 4326), 37.769478, -96.1183296, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474880', 'Crain Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Fall River Lake', 37.6328156, -96.049989, ST_GeomFromText('POINT(37.6328156 -96.049989)', 4326), 37.6994444, -96.0294444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474882', 'Badger Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Fall River Lake', 37.6875365, -96.0641583, ST_GeomFromText('POINT(37.6875365 -96.0641583)', 4326), 37.7366667, -96.0611111, '1978-10-13', '2009-07-20', 'Official', 'Board Decision', '1975-08-12'),
  ('474883', 'Van Horn Branch', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Fall River Lake', 37.6833686, -96.1116603, ST_GeomFromText('POINT(37.6833686 -96.1116603)', 4326), 37.7530905, -96.0891616, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('474885', 'Silver Creek', 'Stream', 'Kansas', 'KS', 'Elk', 'New Albany', 37.5917083, -95.9610956, ST_GeomFromText('POINT(37.5917083 -95.9610956)', 4326), 37.6422631, -95.9505415, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474886', 'Cedar Hollow', 'Valley', 'Kansas', 'KS', 'Greenwood', 'New Albany', 37.6113824, -95.9887183, ST_GeomFromText('POINT(37.6113824 -95.9887183)', 4326), 37.6503155, -95.9772201, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('474888', 'Ross Branch', 'Stream', 'Kansas', 'KS', 'Wilson', 'Coyville', 37.688653, -95.8758188, ST_GeomFromText('POINT(37.688653 -95.8758188)', 4326), 37.6953158, -96.0094338, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474890', 'Carlisle Branch', 'Stream', 'Kansas', 'KS', 'Woodson', 'Coyville', 37.7380946, -95.931655, ST_GeomFromText('POINT(37.7380946 -95.931655)', 4326), 37.7055928, -96.0322129, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474892', 'Brush Creek', 'Stream', 'Kansas', 'KS', 'Wilson', 'Coyville', 37.6814311, -95.8769298, ST_GeomFromText('POINT(37.6814311 -95.8769298)', 4326), 37.6536111, -95.9533333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474896', 'Meadow Creek', 'Stream', 'Kansas', 'KS', 'Wilson', 'Coyville', 37.7092077, -95.8849862, ST_GeomFromText('POINT(37.7092077 -95.8849862)', 4326), 37.7488889, -95.8925, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474897', 'Woodson Cove', 'Bay', 'Kansas', 'KS', 'Woodson', 'Coyville', 37.7450392, -95.9141546, ST_GeomFromText('POINT(37.7450392 -95.9141546)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474898', 'Pig Creek', 'Stream', 'Kansas', 'KS', 'Wilson', 'Coyville', 37.7278174, -95.9185987, ST_GeomFromText('POINT(37.7278174 -95.9185987)', 4326), 37.73, -95.9688889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474904', 'Snake Creek', 'Stream', 'Kansas', 'KS', 'Wilson', 'Fredonia', 37.6172709, -95.7649819, ST_GeomFromText('POINT(37.6172709 -95.7649819)', 4326), 37.6091667, -95.8716667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474905', 'Greathouse Creek', 'Stream', 'Kansas', 'KS', 'Wilson', 'Coyville', 37.6775423, -95.8763741, ST_GeomFromText('POINT(37.6775423 -95.8763741)', 4326), 37.6497629, -95.9499862, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('474909', 'Shafer Lake', 'Lake', 'Kansas', 'KS', 'Wilson', 'Middletown', 37.6600444, -95.8308172, ST_GeomFromText('POINT(37.6600444 -95.8308172)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474911', 'Walnut Creek', 'Stream', 'Kansas', 'KS', 'Wilson', 'Middletown', 37.7175424, -95.8194289, ST_GeomFromText('POINT(37.7175424 -95.8194289)', 4326), 37.7397222, -95.7744444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474912', 'Round Top', 'Summit', 'Kansas', 'KS', 'Wilson', 'Middletown', 37.7218029, -95.8677978, ST_GeomFromText('POINT(37.7218029 -95.8677978)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('474915', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Wilson', 'Middletown', 37.6400466, -95.7922049, ST_GeomFromText('POINT(37.6400466 -95.7922049)', 4326), 37.6133791, -95.842761, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474919', 'Woodruff Branch', 'Stream', 'Kansas', 'KS', 'Wilson', 'Buffalo', 37.6747686, -95.7322043, ST_GeomFromText('POINT(37.6747686 -95.7322043)', 4326), 37.6906015, -95.6191486, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474920', 'Buffalo Creek', 'Stream', 'Kansas', 'KS', 'Wilson', 'Buffalo', 37.6356039, -95.7519263, ST_GeomFromText('POINT(37.6356039 -95.7519263)', 4326), 37.6747686, -95.7322043, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474921', 'Elder Branch', 'Stream', 'Kansas', 'KS', 'Wilson', 'Buffalo', 37.6444923, -95.7474819, ST_GeomFromText('POINT(37.6444923 -95.7474819)', 4326), 37.6750468, -95.6030373, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474940', 'Little Turkey Creek', 'Stream', 'Kansas', 'KS', 'Neosho', 'Chanute', 37.6403265, -95.4169251, ST_GeomFromText('POINT(37.6403265 -95.4169251)', 4326), 37.6566667, -95.4905556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474943', 'Turkey Creek', 'Stream', 'Kansas', 'KS', 'Neosho', 'Chanute', 37.6350489, -95.4130361, ST_GeomFromText('POINT(37.6350489 -95.4130361)', 4326), 37.6064396, -95.5283144, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474944', 'Village Creek', 'Stream', 'Kansas', 'KS', 'Neosho', 'Chanute', 37.7078231, -95.4183147, ST_GeomFromText('POINT(37.7078231 -95.4183147)', 4326), 37.631438, -95.5997036, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('474945', 'Santa Fe Lake', 'Lake', 'Kansas', 'KS', 'Neosho', 'Chanute', 37.6551567, -95.4567113, ST_GeomFromText('POINT(37.6551567 -95.4567113)', 4326), NULL, NULL, '1978-10-13', '2024-11-01', NULL, NULL, NULL),
  ('474960', 'Mud Creek', 'Stream', 'Kansas', 'KS', 'Neosho', 'Chanute', 37.705601, -95.4519259, ST_GeomFromText('POINT(37.705601 -95.4519259)', 4326), 37.7288889, -95.4988889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474961', 'Allen Lake', 'Lake', 'Kansas', 'KS', 'Neosho', 'Chanute', 37.7220375, -95.440299, ST_GeomFromText('POINT(37.7220375 -95.440299)', 4326), NULL, NULL, '1978-10-13', '2018-07-05', NULL, NULL, NULL),
  ('474964', 'Nyman Lake', 'Reservoir', 'Kansas', 'KS', 'Allen', 'Rollin', 37.7385466, -95.2563103, ST_GeomFromText('POINT(37.7385466 -95.2563103)', 4326), NULL, NULL, '1978-10-13', '2018-07-05', NULL, NULL, NULL),
  ('474966', 'Draw Creek', 'Stream', 'Kansas', 'KS', 'Neosho', 'Rollin', 37.6539366, -95.342758, ST_GeomFromText('POINT(37.6539366 -95.342758)', 4326), 37.7158333, -95.36, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474968', 'Mud Creek', 'Stream', 'Kansas', 'KS', 'Neosho', 'Rollin', 37.6269934, -95.3613689, ST_GeomFromText('POINT(37.6269934 -95.3613689)', 4326), 37.5944954, -95.423869, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474969', 'Pecan Creek', 'Stream', 'Kansas', 'KS', 'Neosho', 'Shaw', 37.6028276, -95.2952569, ST_GeomFromText('POINT(37.6028276 -95.2952569)', 4326), 37.710878, -95.2397023, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474970', 'Sutton Creek', 'Stream', 'Kansas', 'KS', 'Neosho', 'Chanute', 37.7083785, -95.4133147, ST_GeomFromText('POINT(37.7083785 -95.4133147)', 4326), 37.7414324, -95.365537, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474971', 'Rocky Branch', 'Stream', 'Kansas', 'KS', 'Allen', 'Rollin', 37.7355993, -95.2783143, ST_GeomFromText('POINT(37.7355993 -95.2783143)', 4326), 37.7236553, -95.2374802, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474974', 'Little Canville Creek', 'Stream', 'Kansas', 'KS', 'Neosho', 'Stark', 37.6719907, -95.1958116, ST_GeomFromText('POINT(37.6719907 -95.1958116)', 4326), 37.7405992, -95.0969209, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('474975', 'Canville Creek', 'Stream', 'Kansas', 'KS', 'Neosho', 'Shaw', 37.5622739, -95.2980341, ST_GeomFromText('POINT(37.5622739 -95.2980341)', 4326), 37.7711535, -95.1144213, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474977', 'Timber Lake', 'Reservoir', 'Kansas', 'KS', 'Neosho', 'Stark', 37.6592136, -95.2147008, ST_GeomFromText('POINT(37.6592136 -95.2147008)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474985', 'Little Walnut Creek', 'Stream', 'Kansas', 'KS', 'Neosho', 'Walnut', 37.5664386, -95.0930293, ST_GeomFromText('POINT(37.5664386 -95.0930293)', 4326), 37.6911563, -95.0269182, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474986', 'Flat Rock Creek', 'Stream', 'Kansas', 'KS', 'Neosho', 'Erie', 37.5008862, -95.1577523, ST_GeomFromText('POINT(37.5008862 -95.1577523)', 4326), 37.7064336, -95.0219182, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474990', 'Pony Creek', 'Stream', 'Kansas', 'KS', 'Crawford', 'Porterville', 37.5783825, -95.0819181, ST_GeomFromText('POINT(37.5783825 -95.0819181)', 4326), 37.6453247, -95.0819191, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474992', 'Prong Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Hepler', 37.7328217, -94.9655278, ST_GeomFromText('POINT(37.7328217 -94.9655278)', 4326), 37.6967117, -95.0241404, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474995', 'Owl Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Hepler', 37.7458768, -94.9544164, ST_GeomFromText('POINT(37.7458768 -94.9544164)', 4326), 37.6741667, -94.9280556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('474997', 'Walnut Creek', 'Stream', 'Kansas', 'KS', 'Neosho', 'Erie', 37.5583837, -95.1313636, ST_GeomFromText('POINT(37.5583837 -95.1313636)', 4326), 37.661157, -94.9766384, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475003', 'Little Pawnee Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Hiattville', 37.7169884, -94.8346894, ST_GeomFromText('POINT(37.7169884 -94.8346894)', 4326), 37.6319444, -94.8491667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475005', 'Bone Creek', 'Stream', 'Kansas', 'KS', 'Crawford', 'Cato', 37.6700445, -94.7121848, ST_GeomFromText('POINT(37.6700445 -94.7121848)', 4326), 37.5994907, -94.8057989, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('475006', 'Cox Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Garland', 37.685044, -94.6219038, ST_GeomFromText('POINT(37.685044 -94.6219038)', 4326), 37.5356027, -94.6627382, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475007', 'Buck Run', 'Stream', 'Missouri', 'MO', 'Vernon', 'Cato', 37.6967104, -94.6035697, ST_GeomFromText('POINT(37.6967104 -94.6035697)', 4326), 37.7355989, -94.7224632, '1978-10-13', '2012-01-24', NULL, NULL, NULL),
  ('475008', 'Walnut Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Cato', 37.6842109, -94.6946842, ST_GeomFromText('POINT(37.6842109 -94.6946842)', 4326), 37.7305992, -94.7649647, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475009', 'Richland Creek', 'Stream', 'Kansas', 'KS', 'Crawford', 'Cato', 37.6714334, -94.7157961, ST_GeomFromText('POINT(37.6714334 -94.7157961)', 4326), 37.6894889, -94.8091328, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475010', 'Bunker Hill', 'Summit', 'Kansas', 'KS', 'Crawford', 'Arma', 37.6211371, -94.690424, ST_GeomFromText('POINT(37.6211371 -94.690424)', 4326), NULL, NULL, '1978-10-13', '2021-01-01', NULL, NULL, NULL),
  ('475025', 'West Fork Dry Wood Creek', 'Stream', 'Missouri', 'MO', 'Vernon', 'Garland', 37.71587, -94.55426, ST_GeomFromText('POINT(37.71587 -94.55426)', 4326), 37.6008796, -94.8169103, '1978-10-13', '2010-12-17', NULL, NULL, NULL),
  ('475040', 'North Branch Rock Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'Augusta SE', 37.5083531, -96.7864184, ST_GeomFromText('POINT(37.5083531 -96.7864184)', 4326), 37.5669667, -96.6116857, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475042', 'Lake Clymer', 'Reservoir', 'Kansas', 'KS', 'Butler', 'Latham', 37.5491657, -96.6883847, ST_GeomFromText('POINT(37.5491657 -96.6883847)', 4326), NULL, NULL, '1978-10-13', '2018-09-28', NULL, NULL, NULL),
  ('475044', 'Plum Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'Latham', 37.6222418, -96.7308599, ST_GeomFromText('POINT(37.6222418 -96.7308599)', 4326), 37.5852778, -96.6402778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475047', 'Grouse Creek', 'Stream', 'Kansas', 'KS', 'Cowley', 'Silverdale', 37.0033644, -96.9219789, ST_GeomFromText('POINT(37.0033644 -96.9219789)', 4326), 37.5839127, -96.5347364, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('475051', 'South Branch Hickory Creek', 'Stream', 'Kansas', 'KS', 'Butler', 'Latham SE', 37.6097436, -96.6433546, ST_GeomFromText('POINT(37.6097436 -96.6433546)', 4326), 37.6000236, -96.5414037, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475052', 'South Branch Elk River', 'Stream', 'Kansas', 'KS', 'Elk', 'Piedmont SW', 37.510028, -96.4022269, ST_GeomFromText('POINT(37.510028 -96.4022269)', 4326), 37.5425, -96.4986111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475053', 'Rowe Branch Elk River', 'Stream', 'Kansas', 'KS', 'Elk', 'Piedmont SW', 37.5483598, -96.4416746, ST_GeomFromText('POINT(37.5483598 -96.4416746)', 4326), 37.5991667, -96.3977778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475061', 'Severy Municipal Reservoir', 'Reservoir', 'Kansas', 'KS', 'Greenwood', 'Severy South', 37.6214023, -96.1732548, ST_GeomFromText('POINT(37.6214023 -96.1732548)', 4326), NULL, NULL, '1978-10-13', '2018-07-05', NULL, NULL, NULL),
  ('475062', 'Little Indian Creek', 'Stream', 'Kansas', 'KS', 'Elk', 'Fall River', 37.5419828, -96.0716535, ST_GeomFromText('POINT(37.5419828 -96.0716535)', 4326), 37.4944828, -96.0999869, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475066', 'Little Salt Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Fall River', 37.6161487, -96.062489, ST_GeomFromText('POINT(37.6161487 -96.062489)', 4326), 37.5869444, -96.1233333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475069', 'Coon Creek', 'Stream', 'Kansas', 'KS', 'Wilson', 'New Albany', 37.5578212, -95.9397054, ST_GeomFromText('POINT(37.5578212 -95.9397054)', 4326), 37.5092079, -96.0044268, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475070', 'Indian Creek', 'Stream', 'Kansas', 'KS', 'Wilson', 'New Albany', 37.5683759, -95.9499837, ST_GeomFromText('POINT(37.5683759 -95.9499837)', 4326), 37.5780903, -96.1730486, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475071', 'Teeters Branch', 'Stream', 'Kansas', 'KS', 'Wilson', 'New Albany', 37.5453239, -95.890538, ST_GeomFromText('POINT(37.5453239 -95.890538)', 4326), 37.6172222, -95.9063889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475076', 'Delaware Springs', 'Spring', 'Kansas', 'KS', 'Wilson', 'New Albany', 37.6217096, -95.9099846, ST_GeomFromText('POINT(37.6217096 -95.9099846)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('475077', 'Clear Creek', 'Stream', 'Kansas', 'KS', 'Wilson', 'Fredonia', 37.5017178, -95.8255367, ST_GeomFromText('POINT(37.5017178 -95.8255367)', 4326), 37.5194988, -95.7424809, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475078', 'Plum Branch Fall River', 'Stream', 'Kansas', 'KS', 'Wilson', 'Fredonia', 37.512272, -95.8419259, ST_GeomFromText('POINT(37.512272 -95.8419259)', 4326), 37.5592124, -95.8897049, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475080', 'South Mound', 'Summit', 'Kansas', 'KS', 'Wilson', 'Fredonia', 37.5267101, -95.8277517, ST_GeomFromText('POINT(37.5267101 -95.8277517)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('475081', 'West Mound', 'Summit', 'Kansas', 'KS', 'Wilson', 'Fredonia', 37.5317992, -95.8507634, ST_GeomFromText('POINT(37.5317992 -95.8507634)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('475083', 'Salt Creek', 'Stream', 'Kansas', 'KS', 'Wilson', 'Fredonia', 37.5186603, -95.8491482, ST_GeomFromText('POINT(37.5186603 -95.8491482)', 4326), 37.605, -95.8744444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475084', 'Sutton Branch', 'Stream', 'Kansas', 'KS', 'Wilson', 'Fredonia', 37.6144933, -95.7627597, ST_GeomFromText('POINT(37.6144933 -95.7627597)', 4326), 37.6122222, -95.8475, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475088', 'Crooked Creek', 'Stream', 'Kansas', 'KS', 'Wilson', 'Altoona', 37.5861622, -95.7144258, ST_GeomFromText('POINT(37.5861622 -95.7144258)', 4326), 37.6239384, -95.6185925, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475094', 'Big Cedar Creek', 'Stream', 'Kansas', 'KS', 'Wilson', 'Altoona', 37.509222, -95.6655362, ST_GeomFromText('POINT(37.509222 -95.6655362)', 4326), 37.6308827, -95.5347034, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475095', 'Little Cedar Creek', 'Stream', 'Kansas', 'KS', 'Wilson', 'Five Mounds', 37.5156106, -95.6541474, ST_GeomFromText('POINT(37.5156106 -95.6541474)', 4326), 37.6222719, -95.5927591, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475096', 'Five Mounds', 'Summit', 'Kansas', 'KS', 'Wilson', 'Five Mounds', 37.5231379, -95.5891814, ST_GeomFromText('POINT(37.5231379 -95.5891814)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('475097', 'Pumpkin Creek', 'Stream', 'Kansas', 'KS', 'Wilson', 'Five Mounds', 37.5497756, -95.6074808, ST_GeomFromText('POINT(37.5497756 -95.6074808)', 4326), 37.5730556, -95.53, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475098', 'Three Mounds', 'Summit', 'Kansas', 'KS', 'Wilson', 'Five Mounds', 37.5541564, -95.534073, ST_GeomFromText('POINT(37.5541564 -95.534073)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('475099', 'Long Mound', 'Summit', 'Kansas', 'KS', 'Neosho', 'Five Mounds', 37.5714349, -95.5121954, ST_GeomFromText('POINT(37.5714349 -95.5121954)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('475103', 'Dewey Mound', 'Summit', 'Kansas', 'KS', 'Wilson', 'Five Mounds', 37.5970626, -95.5612765, ST_GeomFromText('POINT(37.5970626 -95.5612765)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('475105', 'Little Elk Creek', 'Stream', 'Kansas', 'KS', 'Neosho', 'Earlton', 37.5683855, -95.4058131, ST_GeomFromText('POINT(37.5683855 -95.4058131)', 4326), 37.505, -95.42, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475109', 'Veterans of Foreign Wars Lake', 'Reservoir', 'Kansas', 'KS', 'Neosho', 'Earlton', 37.6192166, -95.4463695, ST_GeomFromText('POINT(37.6192166 -95.4463695)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475111', 'Elk River', 'Stream', 'Kansas', 'KS', 'Neosho', 'Shaw', 37.5964392, -95.3255349, ST_GeomFromText('POINT(37.5964392 -95.3255349)', 4326), 37.4897788, -95.4608129, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475114', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Neosho', 'Shaw', 37.5733846, -95.3113677, ST_GeomFromText('POINT(37.5733846 -95.3113677)', 4326), 37.5191667, -95.3680556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475118', 'Fourmile Creek', 'Stream', 'Kansas', 'KS', 'Neosho', 'Erie', 37.5336633, -95.2130322, ST_GeomFromText('POINT(37.5336633 -95.2130322)', 4326), 37.6533802, -95.1630326, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475125', 'Brogan Creek', 'Stream', 'Kansas', 'KS', 'Neosho', 'South Mound', 37.4992194, -95.1394185, ST_GeomFromText('POINT(37.4992194 -95.1394185)', 4326), 37.5244953, -95.0646945, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('475140', 'Frisco Lake', 'Reservoir', 'Kansas', 'KS', 'Crawford', 'Girard', 37.6206, -94.8303639, ST_GeomFromText('POINT(37.6206 -94.8303639)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('475141', 'Clear Creek', 'Stream', 'Kansas', 'KS', 'Crawford', 'Girard', 37.5122703, -94.8091318, ST_GeomFromText('POINT(37.5122703 -94.8091318)', 4326), 37.5819444, -94.7597222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475143', 'Dry Branch', 'Stream', 'Kansas', 'KS', 'Crawford', 'Arma', 37.5917127, -94.6424598, ST_GeomFromText('POINT(37.5917127 -94.6424598)', 4326), 37.556991, -94.7577416, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475149', 'Breezy Hill', 'Summit', 'Kansas', 'KS', 'Crawford', 'Arma', 37.5363897, -94.6473121, ST_GeomFromText('POINT(37.5363897 -94.6473121)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('475160', 'East Branch Downer Creek', 'Stream', 'Kansas', 'KS', 'Trego', 'Trego Center', 38.8997324, -99.9892904, ST_GeomFromText('POINT(38.8997324 -99.9892904)', 4326), 38.9588978, -100.0056801, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475171', 'Round Mound', 'Pillar', 'Kansas', 'KS', 'Trego', 'Ogallah', 38.9163995, -99.6487252, ST_GeomFromText('POINT(38.9163995 -99.6487252)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475189', 'Chetolah Creek', 'Stream', 'Kansas', 'KS', 'Ellis', 'Hays North', 38.8514007, -99.3126031, ST_GeomFromText('POINT(38.8514007 -99.3126031)', 4326), 38.942789, -99.3256589, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475196', 'North Fork Big Creek', 'Stream', 'Kansas', 'KS', 'Ellis', 'Walker', 38.7977897, -99.084261, ST_GeomFromText('POINT(38.7977897 -99.084261)', 4326), 39.0075107, -99.3637156, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475210', 'Walker Creek', 'Stream', 'Kansas', 'KS', 'Russell', 'Russell SW', 38.8086229, -98.9798121, ST_GeomFromText('POINT(38.8086229 -98.9798121)', 4326), 39.0041779, -99.1581522, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475211', 'Mud Creek', 'Stream', 'Kansas', 'KS', 'Ellis', 'Walker', 38.8216786, -99.1045395, ST_GeomFromText('POINT(38.8216786 -99.1045395)', 4326), 38.9597336, -99.1700973, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('475212', 'Salt Creek', 'Stream', 'Kansas', 'KS', 'Ellis', 'Gorham', 38.9591782, -98.8823067, ST_GeomFromText('POINT(38.9591782 -98.8823067)', 4326), 38.9722336, -99.0684263, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475214', 'Blue Hills', 'Summit', 'Kansas', 'KS', 'Ellis', 'Gorham', 38.9905622, -99.1176106, ST_GeomFromText('POINT(38.9905622 -99.1176106)', 4326), NULL, NULL, '1978-10-13', '2025-02-26', NULL, NULL, NULL),
  ('475218', 'Fossil Creek', 'Stream', 'Kansas', 'KS', 'Russell', 'Homer', 38.7914002, -98.803693, ST_GeomFromText('POINT(38.7914002 -98.803693)', 4326), 38.8911227, -98.964811, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475225', 'Cedar Creek', 'Stream', 'Kansas', 'KS', 'Russell', 'Dorrance NW', 38.964178, -98.6761856, ST_GeomFromText('POINT(38.964178 -98.6761856)', 4326), 38.8619557, -98.7870252, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475230', 'Elm Creek', 'Stream', 'Kansas', 'KS', 'Russell', 'Dorrance NW', 38.9411223, -98.62785, ST_GeomFromText('POINT(38.9411223 -98.62785)', 4326), 38.8763889, -98.6363889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475236', 'Hell Creek', 'Stream', 'Kansas', 'KS', 'Russell', 'Dorrance NE', 38.9469555, -98.5033993, ST_GeomFromText('POINT(38.9469555 -98.5033993)', 4326), 38.8963988, -98.4106184, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475237', 'Highland Lake', 'Reservoir', 'Kansas', 'KS', 'Lincoln', 'Wilson NW', 38.9284618, -98.3857807, ST_GeomFromText('POINT(38.9284618 -98.3857807)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('475238', 'West Twin Creek', 'Stream', 'Kansas', 'KS', 'Lincoln', 'Wilson NW', 38.991676, -98.3775607, ST_GeomFromText('POINT(38.991676 -98.3775607)', 4326), 38.9030556, -98.4041667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475245', 'East Twin Creek', 'Stream', 'Kansas', 'KS', 'Lincoln', 'Wilson NE', 38.9925092, -98.3725606, ST_GeomFromText('POINT(38.9925092 -98.3725606)', 4326), 38.9027872, -98.365061, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475246', 'Buffalo Creek', 'Stream', 'Kansas', 'KS', 'Ellsworth', 'Holyrood NE', 38.7386207, -98.3028376, ST_GeomFromText('POINT(38.7386207 -98.3028376)', 4326), 38.8905645, -98.3181149, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('475247', 'Cow Creek', 'Stream', 'Kansas', 'KS', 'Lincoln', 'Black Wolf', 38.7602877, -98.3681178, ST_GeomFromText('POINT(38.7602877 -98.3681178)', 4326), 38.8886201, -98.3275596, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475253', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Lincoln', 'Westfall NW', 38.9919513, -98.2081102, ST_GeomFromText('POINT(38.9919513 -98.2081102)', 4326), 38.8497303, -98.208111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475254', 'West Elkhorn Creek', 'Stream', 'Kansas', 'KS', 'Lincoln', 'Westfall', 38.9577841, -98.1025513, ST_GeomFromText('POINT(38.9577841 -98.1025513)', 4326), 38.843897, -98.200333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475255', 'East Elkhorn Creek', 'Stream', 'Kansas', 'KS', 'Lincoln', 'Westfall', 38.9577841, -98.1025513, ST_GeomFromText('POINT(38.9577841 -98.1025513)', 4326), 38.8377857, -98.1814435, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475260', 'Owl Creek', 'Stream', 'Kansas', 'KS', 'Lincoln', 'Westfall', 38.9902824, -97.9622684, ST_GeomFromText('POINT(38.9902824 -97.9622684)', 4326), 38.8830617, -98.0189377, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475263', 'Cedar Bluff Reservoir', 'Reservoir', 'Kansas', 'KS', 'Trego', 'Cedar Bluff', 38.7863569, -99.7784154, ST_GeomFromText('POINT(38.7863569 -99.7784154)', 4326), NULL, NULL, '1978-10-13', '2019-09-24', NULL, NULL, NULL),
  ('475264', 'Cedar Gorge', 'Valley', 'Kansas', 'KS', 'Trego', 'Cedar Bluff', 38.7679958, -99.7935592, ST_GeomFromText('POINT(38.7679958 -99.7935592)', 4326), 38.7382546, -99.8089638, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('475265', 'Cedar Bluff', 'Cliff', 'Kansas', 'KS', 'Trego', 'Cedar Bluff', 38.7766795, -99.8073408, ST_GeomFromText('POINT(38.7766795 -99.8073408)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475267', 'Page Creek', 'Stream', 'Kansas', 'KS', 'Trego', 'Cedar Bluff Dam', 38.7819571, -99.7492839, ST_GeomFromText('POINT(38.7819571 -99.7492839)', 4326), 38.645292, -99.9170671, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475268', 'Wildon Draw', 'Valley', 'Kansas', 'KS', 'Trego', 'Ellis SE', 38.7808122, -99.601488, ST_GeomFromText('POINT(38.7808122 -99.601488)', 4326), 38.711111, -99.6430212, '1978-10-13', '2017-08-25', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('475269', 'Tunnel Creek', 'Stream', 'Kansas', 'KS', 'Trego', 'Cedar Bluff Dam', 38.7864015, -99.7048381, ST_GeomFromText('POINT(38.7864015 -99.7048381)', 4326), 38.7466799, -99.7087272, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475281', 'Lookout Hollow', 'Valley', 'Kansas', 'KS', 'Ellis', 'Liebenthal', 38.7165681, -99.337216, ST_GeomFromText('POINT(38.7165681 -99.337216)', 4326), 38.8585602, -99.4750332, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('475318', 'Landon Creek', 'Stream', 'Kansas', 'KS', 'Russell', 'Homer', 38.7764003, -98.8450839, ST_GeomFromText('POINT(38.7764003 -98.8450839)', 4326), 38.6130675, -98.8998103, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475319', 'Sellens Creek', 'Stream', 'Kansas', 'KS', 'Russell', 'Homer', 38.7911223, -98.7734139, ST_GeomFromText('POINT(38.7911223 -98.7734139)', 4326), 38.6030674, -98.8586975, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475320', 'Fossil Lake', 'Reservoir', 'Kansas', 'KS', 'Russell', 'Homer', 38.8613326, -98.8508634, ST_GeomFromText('POINT(38.8613326 -98.8508634)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('475326', 'Goose Creek', 'Stream', 'Kansas', 'KS', 'Russell', 'Dorrance SW', 38.7908444, -98.7036883, ST_GeomFromText('POINT(38.7908444 -98.7036883)', 4326), 38.6305669, -98.7620263, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475327', 'Beaver Creek', 'Stream', 'Kansas', 'KS', 'Russell', 'Dorrance', 38.7983442, -98.5911827, ST_GeomFromText('POINT(38.7983442 -98.5911827)', 4326), 38.6405668, -98.6850781, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475334', 'Coal Creek', 'Stream', 'Kansas', 'KS', 'Russell', 'Wilson', 38.786955, -98.4878446, ST_GeomFromText('POINT(38.786955 -98.4878446)', 4326), 38.6236221, -98.5697952, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475340', 'Wilson Creek', 'Stream', 'Kansas', 'KS', 'Ellsworth', 'Wilson', 38.7897326, -98.4511764, ST_GeomFromText('POINT(38.7897326 -98.4511764)', 4326), 38.8611111, -98.4877778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475342', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Ellsworth', 'Wilson', 38.784177, -98.4328424, ST_GeomFromText('POINT(38.784177 -98.4328424)', 4326), 38.7400106, -98.4834005, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('475343', 'Blood Creek', 'Stream', 'Kansas', 'KS', 'Ellsworth', 'Wilson', 38.7816769, -98.4183974, ST_GeomFromText('POINT(38.7816769 -98.4183974)', 4326), 38.6255665, -98.5242376, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475355', 'Oak Creek', 'Stream', 'Kansas', 'KS', 'Ellsworth', 'Westfall SW', 38.705009, -98.2011674, ST_GeomFromText('POINT(38.705009 -98.2011674)', 4326), 38.8547305, -98.2311673, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475358', 'West Oak Creek', 'Stream', 'Kansas', 'KS', 'Ellsworth', 'Westfall SW', 38.7630645, -98.2175563, ST_GeomFromText('POINT(38.7630645 -98.2175563)', 4326), 38.8311198, -98.2547794, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475359', 'East Oak Creek', 'Stream', 'Kansas', 'KS', 'Ellsworth', 'Westfall SW', 38.7666755, -98.2150562, ST_GeomFromText('POINT(38.7666755 -98.2150562)', 4326), 38.8269444, -98.1894444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475361', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Ellsworth', 'Westfall SW', 38.6988977, -98.1739443, ST_GeomFromText('POINT(38.6988977 -98.1739443)', 4326), 38.8180636, -98.1742212, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475362', 'East Spring Creek', 'Stream', 'Kansas', 'KS', 'Ellsworth', 'Westfall SW', 38.7502863, -98.1686658, ST_GeomFromText('POINT(38.7502863 -98.1686658)', 4326), 38.812508, -98.1647764, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475364', 'Clear Creek', 'Stream', 'Kansas', 'KS', 'Ellsworth', 'Carneiro', 38.6775082, -98.0786633, ST_GeomFromText('POINT(38.6775082 -98.0786633)', 4326), 38.7955635, -98.1361644, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475368', 'Alum Creek', 'Stream', 'Kansas', 'KS', 'Ellsworth', 'Westfall SE', 38.6708412, -98.0308839, ST_GeomFromText('POINT(38.6708412 -98.0308839)', 4326), 38.837229, -98.0533836, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475369', 'Table Rock Creek', 'Stream', 'Kansas', 'KS', 'Ellsworth', 'Brookville SW', 38.8633389, -97.9489352, ST_GeomFromText('POINT(38.8633389 -97.9489352)', 4326), 38.8086179, -98.0317162, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475370', 'East Branch Sand Creek', 'Stream', 'Kansas', 'KS', 'Trego', 'Ransom', 38.7325134, -99.9417887, ST_GeomFromText('POINT(38.7325134 -99.9417887)', 4326), 38.6391667, -99.9583333, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('475376', 'Goat Canyon', 'Valley', 'Kansas', 'KS', 'Trego', 'Osgood', 38.728049, -99.7655987, ST_GeomFromText('POINT(38.728049 -99.7655987)', 4326), 38.6945641, -99.7485141, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('475378', 'Big Rimber Creek', 'Stream', 'Kansas', 'KS', 'Ness', 'Osgood', 38.7152913, -99.7823405, ST_GeomFromText('POINT(38.7152913 -99.7823405)', 4326), 38.6691667, -99.7511111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475379', 'Big Timber Creek', 'Stream', 'Kansas', 'KS', 'Ellis', 'Liebenthal', 38.7075125, -99.2689908, ST_GeomFromText('POINT(38.7075125 -99.2689908)', 4326), 38.6691805, -99.7462289, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475381', 'Snake Creek', 'Stream', 'Kansas', 'KS', 'Rush', 'Hargrave', 38.598069, -99.4770549, ST_GeomFromText('POINT(38.598069 -99.4770549)', 4326), 38.6683467, -99.6045582, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475394', 'Hungry Hollow', 'Valley', 'Kansas', 'KS', 'Rush', 'Pfeifer', 38.6922573, -99.2404304, ST_GeomFromText('POINT(38.6922573 -99.2404304)', 4326), 38.5929115, -99.2630315, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('475397', 'Shelter Creek', 'Stream', 'Kansas', 'KS', 'Ellis', 'Pfeifer', 38.6980681, -99.2150999, ST_GeomFromText('POINT(38.6980681 -99.2150999)', 4326), 38.5852907, -99.2120449, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475398', 'Duck Creek', 'Stream', 'Kansas', 'KS', 'Ellis', 'Otis NE', 38.7100122, -99.0834282, ST_GeomFromText('POINT(38.7100122 -99.0834282)', 4326), 38.5966794, -99.1700988, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475402', 'Eagle Creek', 'Stream', 'Kansas', 'KS', 'Ellis', 'Otis NE', 38.7147344, -99.0692609, ST_GeomFromText('POINT(38.7147344 -99.0692609)', 4326), 38.559457, -99.0648176, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475421', 'Deception Creek', 'Stream', 'Kansas', 'KS', 'Barton', 'Redwing', 38.5061225, -98.7156368, ST_GeomFromText('POINT(38.5061225 -98.7156368)', 4326), 38.6514003, -98.7861937, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475450', 'Wolf Creek', 'Stream', 'Kansas', 'KS', 'Ellsworth', 'Holyrood NW', 38.7461209, -98.3467282, ST_GeomFromText('POINT(38.7461209 -98.3467282)', 4326), 38.6552883, -98.4350665, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('475451', 'Loss Creek', 'Stream', 'Kansas', 'KS', 'Ellsworth', 'Holyrood NW', 38.7427875, -98.3239495, ST_GeomFromText('POINT(38.7427875 -98.3239495)', 4326), 38.6516769, -98.3820088, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475454', 'Holyrood Lake', 'Reservoir', 'Kansas', 'KS', 'Ellsworth', 'Holyrood NW', 38.6872324, -98.3986756, ST_GeomFromText('POINT(38.6872324 -98.3986756)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475457', 'Oxide Creek', 'Stream', 'Kansas', 'KS', 'Ellsworth', 'Ellsworth', 38.7058424, -98.2075566, ST_GeomFromText('POINT(38.7058424 -98.2075566)', 4326), 38.5994543, -98.2945058, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475458', 'Turkey Creek', 'Stream', 'Kansas', 'KS', 'Ellsworth', 'Holyrood NE', 38.733065, -98.2647806, ST_GeomFromText('POINT(38.733065 -98.2647806)', 4326), 38.6233432, -98.3178398, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475459', 'Little Wolf Creek', 'Stream', 'Kansas', 'KS', 'Ellsworth', 'Holyrood NE', 38.7377875, -98.308949, ST_GeomFromText('POINT(38.7377875 -98.308949)', 4326), 38.6791667, -98.3486111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475466', 'Mud Creek', 'Stream', 'Kansas', 'KS', 'Ellsworth', 'Ellsworth', 38.66862, -98.1725557, ST_GeomFromText('POINT(38.66862 -98.1725557)', 4326), 38.6352778, -98.2233333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475467', 'Ash Creek', 'Stream', 'Kansas', 'KS', 'Ellsworth', 'Ellsworth', 38.665009, -98.1745003, ST_GeomFromText('POINT(38.665009 -98.1745003)', 4326), 38.5566763, -98.2086695, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475468', 'Skunk Creek', 'Stream', 'Kansas', 'KS', 'Ellsworth', 'Ellsworth', 38.6780642, -98.136721, ST_GeomFromText('POINT(38.6780642 -98.136721)', 4326), 38.6025091, -98.1533891, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475470', 'Kanopolis Lake', 'Reservoir', 'Kansas', 'KS', 'Ellsworth', 'Venango', 38.6327013, -97.9980411, ST_GeomFromText('POINT(38.6327013 -97.9980411)', 4326), NULL, NULL, '1978-10-13', '2019-09-11', 'Official', 'Board Decision', '1971-01-01'),
  ('475472', 'Thompson Creek', 'Stream', 'Kansas', 'KS', 'Ellsworth', 'Carneiro', 38.6472305, -98.0700522, ST_GeomFromText('POINT(38.6472305 -98.0700522)', 4326), 38.5250096, -98.1822799, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('475489', 'Mule Creek', 'Stream', 'Kansas', 'KS', 'Rush', 'La Crosse', 38.52418, -99.3026041, ST_GeomFromText('POINT(38.52418 -99.3026041)', 4326), 38.5427778, -99.3161111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475498', 'Blood Creek', 'Stream', 'Kansas', 'KS', 'Barton', 'Ellinwood NW', 38.4755671, -98.7014699, ST_GeomFromText('POINT(38.4755671 -98.7014699)', 4326), 38.5902903, -99.041761, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475544', 'Plum Creek', 'Stream', 'Kansas', 'KS', 'Rice', 'Chase NE', 38.4386218, -98.357844, ST_GeomFromText('POINT(38.4386218 -98.357844)', 4326), 38.6125106, -98.455068, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475545', 'Calf Creek', 'Stream', 'Kansas', 'KS', 'Rice', 'Chase NW', 38.4419554, -98.4295139, ST_GeomFromText('POINT(38.4419554 -98.4295139)', 4326), 38.5911219, -98.4884032, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475551', 'Lost Creek', 'Stream', 'Kansas', 'KS', 'Rice', 'Chase NE', 38.4155662, -98.3306207, ST_GeomFromText('POINT(38.4155662 -98.3306207)', 4326), 38.6066766, -98.3025616, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475577', 'Bluff Creek', 'Stream', 'Kansas', 'KS', 'Ellsworth', 'Crawford', 38.6133416, -98.0122725, ST_GeomFromText('POINT(38.6133416 -98.0122725)', 4326), 38.5236111, -98.0813889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475579', 'Horse Creek', 'Stream', 'Kansas', 'KS', 'Rice', 'Little River', 38.4155652, -98.0189411, ST_GeomFromText('POINT(38.4155652 -98.0189411)', 4326), 38.521676, -98.0808872, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475580', 'Goose Lake', 'Reservoir', 'Kansas', 'KS', 'Ness', 'Ness City', 38.3961273, -99.929015, ST_GeomFromText('POINT(38.3961273 -99.929015)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475586', 'Long Branch', 'Stream', 'Kansas', 'KS', 'Ness', 'Ness City', 38.4250159, -99.8856801, ST_GeomFromText('POINT(38.4250159 -99.8856801)', 4326), 38.6091812, -99.935957, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475587', 'North Fork Walnut Creek', 'Stream', 'Kansas', 'KS', 'Ness', 'Ness City', 38.4094604, -99.8792912, ST_GeomFromText('POINT(38.4094604 -99.8792912)', 4326), 38.6152928, -100.4029142, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('475588', 'South Fork Walnut Creek', 'Stream', 'Kansas', 'KS', 'Lane', 'Ness City', 38.4094604, -99.8792912, ST_GeomFromText('POINT(38.4094604 -99.8792912)', 4326), 38.3630742, -100.6073681, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475589', 'Wild Horse Creek', 'Stream', 'Kansas', 'KS', 'Ness', 'Ness City', 38.4794602, -99.9834601, ST_GeomFromText('POINT(38.4794602 -99.9834601)', 4326), 38.6419587, -100.0040138, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475593', 'Bazine Dry Creek', 'Stream', 'Kansas', 'KS', 'Ness', 'Bazine', 38.4355707, -99.6892853, ST_GeomFromText('POINT(38.4355707 -99.6892853)', 4326), 38.6286255, -99.944568, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475602', 'Alexander Dry Creek', 'Stream', 'Kansas', 'KS', 'Rush', 'Alexander', 38.4719589, -99.5848372, ST_GeomFromText('POINT(38.4719589 -99.5848372)', 4326), 38.5897365, -99.7453963, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475607', 'Old Maids Fork', 'Stream', 'Kansas', 'KS', 'Rush', 'Nekoma', 38.4744581, -99.3914971, ST_GeomFromText('POINT(38.4744581 -99.3914971)', 4326), 38.3533478, -99.4945589, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475613', 'Otter Creek', 'Stream', 'Kansas', 'KS', 'Rush', 'Rush Center', 38.4539022, -99.2873268, ST_GeomFromText('POINT(38.4539022 -99.2873268)', 4326), 38.3752917, -99.4017772, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475621', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Barton', 'Albert', 38.4602906, -99.0178726, ST_GeomFromText('POINT(38.4602906 -99.0178726)', 4326), 38.4005686, -99.1659345, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475623', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Rush', 'Timken', 38.4880686, -99.1350985, ST_GeomFromText('POINT(38.4880686 -99.1350985)', 4326), 38.5683467, -99.4131638, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475624', 'Dry Walnut Creek', 'Stream', 'Kansas', 'KS', 'Barton', 'Ellinwood NW', 38.3786232, -98.7348058, ST_GeomFromText('POINT(38.3786232 -98.7348058)', 4326), 38.3916797, -99.1962135, '1978-10-13', NULL, 'Official', 'Board Decision', '1961-01-01'),
  ('475634', 'Boot Creek', 'Stream', 'Kansas', 'KS', 'Barton', 'Heizer', 38.4505683, -98.9620372, ST_GeomFromText('POINT(38.4505683 -98.9620372)', 4326), 38.5625126, -99.0531505, '1978-10-13', NULL, 'Official', 'Board Decision', '1961-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('475647', 'Barton Lake', 'Reservoir', 'Kansas', 'KS', 'Barton', 'Great Bend NE', 38.4527824, -98.7780204, ST_GeomFromText('POINT(38.4527824 -98.7780204)', 4326), NULL, NULL, '1978-10-13', '2018-09-28', NULL, NULL, NULL),
  ('475655', 'Walnut Creek', 'Stream', 'Kansas', 'KS', 'Barton', 'Ellinwood SW', 38.3544565, -98.6823038, ST_GeomFromText('POINT(38.3544565 -98.6823038)', 4326), 38.4094604, -99.8792912, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475656', 'Little Cheyenne Creek', 'Stream', 'Kansas', 'KS', 'Barton', 'Chase NW', 38.4466779, -98.4811828, ST_GeomFromText('POINT(38.4466779 -98.4811828)', 4326), 38.4500115, -98.6386897, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475677', 'Owl Creek', 'Stream', 'Kansas', 'KS', 'Rice', 'Lyons NW', 38.3100104, -98.1828374, ST_GeomFromText('POINT(38.3100104 -98.1828374)', 4326), 38.4266766, -98.1608912, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475678', 'Little Cow Creek', 'Stream', 'Kansas', 'KS', 'Rice', 'Lyons', 38.3083438, -98.193949, ST_GeomFromText('POINT(38.3083438 -98.193949)', 4326), 38.5652875, -98.2408929, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475682', 'Jarvis Creek', 'Stream', 'Kansas', 'KS', 'Rice', 'Little River', 38.2683437, -98.1158907, ST_GeomFromText('POINT(38.2683437 -98.1158907)', 4326), 38.3991766, -98.1200564, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475687', 'North Branch Sharps Creek', 'Stream', 'Kansas', 'KS', 'McPherson', 'Great Bend NE', 38.4486233, -98.8486988, ST_GeomFromText('POINT(38.4486233 -98.8486988)', 4326), 38.5064012, -98.930924, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475688', 'North Fork Little Arkansas River', 'Stream', 'Kansas', 'KS', 'Rice', 'Pawnee Rock', 38.3186242, -98.9464826, ST_GeomFromText('POINT(38.3186242 -98.9464826)', 4326), 38.4761237, -98.9575922, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475692', 'Lone Tree Creek', 'Stream', 'Kansas', 'KS', 'McPherson', 'Windom', 38.2722318, -97.9197728, ST_GeomFromText('POINT(38.2722318 -97.9197728)', 4326), 38.4141757, -97.9078266, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475693', 'Salt Creek', 'Stream', 'Kansas', 'KS', 'Rice', 'Windom', 38.3477874, -97.974218, ST_GeomFromText('POINT(38.3477874 -97.974218)', 4326), 38.4291759, -97.9583835, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('475695', 'Clear Pond', 'Reservoir', 'Kansas', 'KS', 'McPherson', 'McPherson North', 38.4031402, -97.7499753, ST_GeomFromText('POINT(38.4031402 -97.7499753)', 4326), NULL, NULL, '1978-10-13', '2018-09-27', NULL, NULL, NULL),
  ('475706', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Hodgeman', 'Bazine SW', 38.2505717, -99.6828989, ST_GeomFromText('POINT(38.2505717 -99.6828989)', 4326), 38.2205728, -99.8356812, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475716', 'Sandy Creek', 'Stream', 'Kansas', 'KS', 'Rush', 'Rush Center SW', 38.4700138, -99.3998308, ST_GeomFromText('POINT(38.4700138 -99.3998308)', 4326), 38.3536253, -99.4440014, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475725', 'Ash Creek', 'Stream', 'Kansas', 'KS', 'Pawnee', 'Pawnee Rock', 38.2547355, -98.9439832, ST_GeomFromText('POINT(38.2547355 -98.9439832)', 4326), 38.3436246, -99.3373309, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475726', 'Cocklebur Creek', 'Stream', 'Kansas', 'KS', 'Pawnee', 'Sanford', 38.1852918, -99.3203885, ST_GeomFromText('POINT(38.1852918 -99.3203885)', 4326), 38.3633473, -99.4184448, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475748', 'Antelope Creek', 'Stream', 'Kansas', 'KS', 'Barton', 'Great Bend', 38.333068, -98.7506405, ST_GeomFromText('POINT(38.333068 -98.7506405)', 4326), 38.2325131, -98.8312007, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475782', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Rice', 'Raymond', 38.3469552, -98.2942308, ST_GeomFromText('POINT(38.3469552 -98.2942308)', 4326), 38.3164004, -98.4178481, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475797', 'Salt Creek', 'Stream', 'Kansas', 'KS', 'Rice', 'Lyons', 38.3130661, -98.2061717, ST_GeomFromText('POINT(38.3130661 -98.2061717)', 4326), 38.3936212, -98.1822811, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475815', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Rice', 'Lyons SE', 38.2427882, -98.0870008, ST_GeomFromText('POINT(38.2427882 -98.0870008)', 4326), 38.3744543, -98.0794995, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475816', 'Lone Tree Creek', 'Stream', 'Kansas', 'KS', 'Rice', 'Lyons SE', 38.3380652, -97.9636622, ST_GeomFromText('POINT(38.3380652 -97.9636622)', 4326), 38.3297321, -98.0303311, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('475817', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Rice', 'Lyons SE', 38.3402874, -97.9681068, ST_GeomFromText('POINT(38.3402874 -97.9681068)', 4326), 38.3505655, -98.0644991, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475818', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Rice', 'Windom SW', 38.2577874, -97.9125506, ST_GeomFromText('POINT(38.2577874 -97.9125506)', 4326), 38.3177878, -98.0528321, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475820', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Hodgeman', 'Burdett', 38.1833493, -99.5734524, ST_GeomFromText('POINT(38.1833493 -99.5734524)', 4326), 38.1491846, -99.9626298, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475829', 'Buckner Creek', 'Stream', 'Kansas', 'KS', 'Pawnee', 'Burdett', 38.1833492, -99.5642855, ST_GeomFromText('POINT(38.1833492 -99.5642855)', 4326), 37.9286318, -100.4009786, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475850', 'Jenkins Hill', 'Summit', 'Kansas', 'KS', 'Pawnee', 'Fort Larned', 38.1752569, -99.1600665, ST_GeomFromText('POINT(38.1752569 -99.1600665)', 4326), NULL, NULL, '1978-10-13', '2018-06-16', NULL, NULL, NULL),
  ('475862', 'Pickle Creek', 'Stream', 'Kansas', 'KS', 'Pawnee', 'Radium', 38.2108469, -98.982041, ST_GeomFromText('POINT(38.2108469 -98.982041)', 4326), 38.0036264, -99.1739962, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475864', 'Hubbard Creek', 'Stream', 'Kansas', 'KS', 'Pawnee', 'Larned', 38.1366809, -99.0028761, ST_GeomFromText('POINT(38.1366809 -99.0028761)', 4326), 38.0475148, -99.0548238, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475880', 'Salt Creek', 'Stream', 'Kansas', 'KS', 'Stafford', 'Alden NW', 38.2166793, -98.4947972, ST_GeomFromText('POINT(38.2166793 -98.4947972)', 4326), 38.2027905, -98.5184096, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475884', 'Big Salt Marsh', 'Swamp', 'Kansas', 'KS', 'Stafford', 'Big Salt Marsh', 38.197235, -98.5309102, ST_GeomFromText('POINT(38.197235 -98.5309102)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475885', 'Boiling Springs', 'Spring', 'Kansas', 'KS', 'Stafford', 'Big Salt Marsh', 38.1608428, -98.5548019, ST_GeomFromText('POINT(38.1608428 -98.5548019)', 4326), NULL, NULL, '1978-10-13', '2011-04-18', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('475886', 'Rattlesnake Creek', 'Stream', 'Kansas', 'KS', 'Stafford', 'Alden NW', 38.2164015, -98.5000753, ST_GeomFromText('POINT(38.2164015 -98.5000753)', 4326), 37.4750219, -99.7765169, '1978-10-13', '2019-08-29', NULL, NULL, NULL),
  ('475887', 'Lake Darrynane', 'Reservoir', 'Kansas', 'KS', 'Stafford', 'Alden NW', 38.1401584, -98.4783726, ST_GeomFromText('POINT(38.1401584 -98.4783726)', 4326), NULL, NULL, '1978-10-13', '2018-09-27', NULL, NULL, NULL),
  ('475888', 'Park Smith Lake', 'Reservoir', 'Kansas', 'KS', 'Stafford', 'Alden NW', 38.1443078, -98.4903169, ST_GeomFromText('POINT(38.1443078 -98.4903169)', 4326), NULL, NULL, '1978-10-13', '2018-09-27', NULL, NULL, NULL),
  ('475893', 'Peace Creek', 'Stream', 'Kansas', 'KS', 'Rice', 'Sterling', 38.174456, -98.2295071, ST_GeomFromText('POINT(38.174456 -98.2295071)', 4326), 37.9664039, -98.6467507, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475911', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Reno', 'Yaggy', 38.103067, -98.0692232, ST_GeomFromText('POINT(38.103067 -98.0692232)', 4326), 38.1475116, -98.1728383, '1978-10-13', NULL, 'Official', 'Board Decision', '1961-01-01'),
  ('475912', 'Bull Creek', 'Stream', 'Kansas', 'KS', 'Reno', 'Yaggy', 38.1219554, -98.0044982, ST_GeomFromText('POINT(38.1219554 -98.0044982)', 4326), 38.2500109, -98.2345068, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475920', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Hodgeman', 'Jetmore SE', 38.0855736, -99.7859591, ST_GeomFromText('POINT(38.0855736 -99.7859591)', 4326), 38.0016853, -99.8887403, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475929', 'Sawmill Creek', 'Stream', 'Kansas', 'KS', 'Pawnee', 'Fort Larned', 38.1691805, -99.1598268, ST_GeomFromText('POINT(38.1691805 -99.1598268)', 4326), 38.0439062, -99.5867876, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475944', 'James Lake', 'Reservoir', 'Kansas', 'KS', 'Pawnee', 'Saint John SW', 38.0519591, -98.9475968, ST_GeomFromText('POINT(38.0519591 -98.9475968)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475947', 'Eppley Lake', 'Reservoir', 'Kansas', 'KS', 'Stafford', 'Saint John North', 38.0547367, -98.8120351, ST_GeomFromText('POINT(38.0547367 -98.8120351)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('475948', 'Gilmore Lake', 'Reservoir', 'Kansas', 'KS', 'Stafford', 'Saint John North', 38.0611255, -98.8117572, ST_GeomFromText('POINT(38.0611255 -98.8117572)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475951', 'Wild Horse Creek', 'Stream', 'Kansas', 'KS', 'Stafford', 'Hudson', 38.05807, -98.744532, ST_GeomFromText('POINT(38.05807 -98.744532)', 4326), 37.9519598, -99.0492691, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475955', 'Little Salt Marsh', 'Lake', 'Kansas', 'KS', 'Stafford', 'Little Salt Marsh', 38.08884, -98.49076, ST_GeomFromText('POINT(38.08884 -98.49076)', 4326), NULL, NULL, '1978-10-13', '2024-11-01', NULL, NULL, NULL),
  ('475959', 'Horseshoe Lake', 'Lake', 'Kansas', 'KS', 'Stafford', 'Little Salt Marsh', 38.1099508, -98.4764041, ST_GeomFromText('POINT(38.1099508 -98.4764041)', 4326), NULL, NULL, '1978-10-13', '2018-09-27', NULL, NULL, NULL),
  ('475961', 'Salt Creek', 'Stream', 'Kansas', 'KS', 'Reno', 'Yaggy', 38.0450114, -97.9642197, ST_GeomFromText('POINT(38.0450114 -97.9642197)', 4326), 38.0533464, -98.2770102, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475968', 'Slough Creek', 'Stream', 'Kansas', 'KS', 'Reno', 'Yaggy', 38.0608448, -98.0156101, ST_GeomFromText('POINT(38.0608448 -98.0156101)', 4326), 38.1033333, -98.0688889, '1978-10-13', NULL, 'Official', 'Board Decision', '1961-01-01'),
  ('475971', 'Asher Creek', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Simpson', 39.4002822, -97.9892111, ST_GeomFromText('POINT(39.4002822 -97.9892111)', 4326), 39.4158333, -97.9866667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475975', 'Lost Creek', 'Stream', 'Kansas', 'KS', 'Cloud', 'Glasco', 39.3600026, -97.8697638, ST_GeomFromText('POINT(39.3600026 -97.8697638)', 4326), 39.4725034, -97.8797648, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475986', 'Cris Creek', 'Stream', 'Kansas', 'KS', 'Cloud', 'Glasco NE', 39.3380576, -97.8350406, ST_GeomFromText('POINT(39.3380576 -97.8350406)', 4326), 39.463058, -97.7942078, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475987', 'Mortimer Creek', 'Stream', 'Kansas', 'KS', 'Ottawa', 'Glasco', 39.2930566, -97.7958726, ST_GeomFromText('POINT(39.2930566 -97.7958726)', 4326), 39.4388908, -97.7664292, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('475988', 'Fisher Creek', 'Stream', 'Kansas', 'KS', 'Cloud', 'Glasco NE', 39.3483354, -97.8422631, ST_GeomFromText('POINT(39.3483354 -97.8422631)', 4326), 39.4891699, -97.8483756, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475989', 'Yockey Creek', 'Stream', 'Kansas', 'KS', 'Ottawa', 'Glasco', 39.2805565, -97.7914278, ST_GeomFromText('POINT(39.2805565 -97.7914278)', 4326), 39.4075009, -97.7217054, '1978-10-13', NULL, NULL, NULL, NULL),
  ('475996', 'West Pipe Creek', 'Stream', 'Kansas', 'KS', 'Ottawa', 'Minneapolis North', 39.2205542, -97.6339222, ST_GeomFromText('POINT(39.2205542 -97.6339222)', 4326), 39.4238883, -97.6075358, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476005', 'East Pipe Creek', 'Stream', 'Kansas', 'KS', 'Ottawa', 'Lamar', 39.2608306, -97.5572528, ST_GeomFromText('POINT(39.2608306 -97.5572528)', 4326), 39.3933311, -97.5239217, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476006', 'Middle Pipe Creek', 'Stream', 'Kansas', 'KS', 'Ottawa', 'Wells', 39.2408311, -97.5919762, ST_GeomFromText('POINT(39.2408311 -97.5919762)', 4326), 39.429166, -97.5994802, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476016', 'North Branch Five Creek', 'Stream', 'Kansas', 'KS', 'Clay', 'Clay Center SW', 39.3547177, -97.1816893, ST_GeomFromText('POINT(39.3547177 -97.1816893)', 4326), 39.4124967, -97.3905857, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476019', 'Peats Creek', 'Stream', 'Kansas', 'KS', 'Clay', 'Linn SW', 39.5055526, -97.2322503, ST_GeomFromText('POINT(39.5055526 -97.2322503)', 4326), 39.7927809, -97.2053097, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476024', 'East Branch Dry Creek', 'Stream', 'Kansas', 'KS', 'Clay', 'Clay Center NW', 39.4666638, -97.1697465, ST_GeomFromText('POINT(39.4666638 -97.1697465)', 4326), 39.5433323, -97.1036339, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476029', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Clay', 'Clay Center NW', 39.3799962, -97.1355767, ST_GeomFromText('POINT(39.3799962 -97.1355767)', 4326), 39.5158319, -97.084188, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476032', 'Huntress Creek', 'Stream', 'Kansas', 'KS', 'Clay', 'Clay Center NW', 39.3588849, -97.1308539, ST_GeomFromText('POINT(39.3588849 -97.1308539)', 4326), 39.3799962, -97.1355767, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476039', 'Finney Creek', 'Stream', 'Kansas', 'KS', 'Clay', 'Clay Center NE', 39.3566629, -97.1077973, ST_GeomFromText('POINT(39.3566629 -97.1077973)', 4326), 39.4591647, -97.0519632, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476042', 'Lincoln Creek', 'Stream', 'Kansas', 'KS', 'Clay', 'Clay Center NE', 39.3269404, -97.0819624, ST_GeomFromText('POINT(39.3269404 -97.0819624)', 4326), 39.429998, -97.0150166, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476043', 'West Branch Mall Creek', 'Stream', 'Kansas', 'KS', 'Clay', 'Bala', 39.3105521, -96.9950142, ST_GeomFromText('POINT(39.3105521 -96.9950142)', 4326), 39.4322203, -96.9933492, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476048', 'May Day Spring', 'Spring', 'Kansas', 'KS', 'Riley', 'Lasita', 39.4777764, -96.9183485, ST_GeomFromText('POINT(39.4777764 -96.9183485)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476049', 'West Fancy Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Lasita', 39.4916654, -96.8802925, ST_GeomFromText('POINT(39.4916654 -96.8802925)', 4326), 39.6358343, -97.0775239, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476050', 'Fancy Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Olsburg NW', 39.4441645, -96.7222329, ST_GeomFromText('POINT(39.4441645 -96.7222329)', 4326), 39.4916654, -96.8802925, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476053', 'Otter Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Lasita', 39.4722206, -96.8352913, ST_GeomFromText('POINT(39.4722206 -96.8352913)', 4326), 39.3891642, -96.9239027, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476060', 'Crooked Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Randolph', 39.4722206, -96.8277912, ST_GeomFromText('POINT(39.4722206 -96.8277912)', 4326), 39.4333333, -96.8638889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476061', 'Walnut Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Randolph', 39.4641649, -96.7658455, ST_GeomFromText('POINT(39.4641649 -96.7658455)', 4326), 39.3583304, -96.8261223, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476067', 'Baldwin Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Olsburg NW', 39.3819416, -96.7069535, ST_GeomFromText('POINT(39.3819416 -96.7069535)', 4326), 39.3655527, -96.770288, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476072', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Olsburg NW', 39.3702748, -96.6836193, ST_GeomFromText('POINT(39.3702748 -96.6836193)', 4326), 39.4297195, -96.6463975, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476073', 'Booth Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Olsburg SW', 39.3430523, -96.6308398, ST_GeomFromText('POINT(39.3430523 -96.6308398)', 4326), 39.4288859, -96.6030632, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476076', 'Bucksnort Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Olsburg', 39.4949967, -96.5258407, ST_GeomFromText('POINT(39.4949967 -96.5258407)', 4326), 39.4772186, -96.4494497, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476079', 'Carnahan Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Olsburg SW', 39.3166632, -96.6344504, ST_GeomFromText('POINT(39.3166632 -96.6344504)', 4326), 39.447219, -96.5486178, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476082', 'McIntire Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Olsburg', 39.2805519, -96.5961153, ST_GeomFromText('POINT(39.2805519 -96.5961153)', 4326), 39.4161078, -96.5405614, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476083', 'Pleasant Run Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Flush', 39.2686074, -96.3963888, ST_GeomFromText('POINT(39.2686074 -96.3963888)', 4326), 39.4311078, -96.5313949, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476091', 'Wilson Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Westmoreland', 39.3411075, -96.4333354, ST_GeomFromText('POINT(39.3411075 -96.4333354)', 4326), 39.4713853, -96.4505607, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476092', 'Lazy Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Flush', 39.3519408, -96.4383357, ST_GeomFromText('POINT(39.3519408 -96.4383357)', 4326), 39.436941, -96.5091723, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476093', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Belvue', 39.2380519, -96.2383302, ST_GeomFromText('POINT(39.2380519 -96.2383302)', 4326), 39.4922184, -96.3166692, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476094', 'Darnells Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Westmoreland', 39.4030519, -96.3966692, ST_GeomFromText('POINT(39.4030519 -96.3966692)', 4326), 39.4430518, -96.324724, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476097', 'Mount Ephraim', 'Summit', 'Kansas', 'KS', 'Pottawatomie', 'Westmoreland', 39.3886005, -96.4008278, ST_GeomFromText('POINT(39.3886005 -96.4008278)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('476098', 'Scott Spring', 'Spring', 'Kansas', 'KS', 'Pottawatomie', 'Westmoreland', 39.3827741, -96.406669, ST_GeomFromText('POINT(39.3827741 -96.406669)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476099', 'Dutch Hollow', 'Valley', 'Kansas', 'KS', 'Pottawatomie', 'Westmoreland', 39.3895383, -96.3982309, ST_GeomFromText('POINT(39.3895383 -96.3982309)', 4326), 39.4097625, -96.3449754, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('476106', 'Jim Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Westmoreland NE', 39.3919404, -96.178331, ST_GeomFromText('POINT(39.3919404 -96.178331)', 4326), 39.475274, -96.2733347, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476109', 'Coal Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Laclede', 39.3358294, -96.2280536, ST_GeomFromText('POINT(39.3358294 -96.2280536)', 4326), 39.4655518, -96.2722233, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476110', 'Indian Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Laclede', 39.3330517, -96.2169422, ST_GeomFromText('POINT(39.3330517 -96.2169422)', 4326), 39.4786073, -96.2958352, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476112', 'East Fork Adams Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Westmoreland NE', 39.3438851, -96.2933329, ST_GeomFromText('POINT(39.3438851 -96.2933329)', 4326), 39.4349962, -96.3263906, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476113', 'Mill Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Onaga', 39.4694401, -96.157498, ST_GeomFromText('POINT(39.4694401 -96.157498)', 4326), 39.4980518, -96.3180582, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476114', 'Adams Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Westmoreland NE', 39.2652739, -96.2530531, ST_GeomFromText('POINT(39.2652739 -96.2530531)', 4326), 39.425274, -96.3294461, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476119', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Onaga', 39.4063848, -96.1658308, ST_GeomFromText('POINT(39.4063848 -96.1658308)', 4326), 39.3647181, -96.1413852, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476124', 'Little Noxie Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Onaga NE', 39.3624958, -96.0541608, ST_GeomFromText('POINT(39.3624958 -96.0541608)', 4326), 39.4605511, -96.0969407, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476125', 'Bartlett Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Onaga NE', 39.318885, -96.0591605, ST_GeomFromText('POINT(39.318885 -96.0591605)', 4326), 39.3988847, -96.1113848, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476126', 'Big Noxie Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Emmett', 39.3688847, -96.055272, ST_GeomFromText('POINT(39.3688847 -96.055272)', 4326), 39.4569396, -96.0388834, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476127', 'Cross Creek', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Willard', 39.1094434, -95.9669344, ST_GeomFromText('POINT(39.1094434 -95.9669344)', 4326), 39.5016617, -96.0383283, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476128', 'Riley Lakes', 'Reservoir', 'Kansas', 'KS', 'Jackson', 'Onaga NE', 39.488606, -96.0041605, ST_GeomFromText('POINT(39.488606 -96.0041605)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476136', 'Third Creek', 'Stream', 'Kansas', 'KS', 'Cloud', 'Glasco SW', 39.3611143, -97.9128204, ST_GeomFromText('POINT(39.3611143 -97.9128204)', 4326), 39.3241667, -97.9744444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476137', 'Second Creek', 'Stream', 'Kansas', 'KS', 'Cloud', 'Glasco SW', 39.3583362, -97.8905977, ST_GeomFromText('POINT(39.3583362 -97.8905977)', 4326), 39.2788889, -97.9733333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476138', 'First Creek', 'Stream', 'Kansas', 'KS', 'Cloud', 'Glasco', 39.3500025, -97.8675415, ST_GeomFromText('POINT(39.3500025 -97.8675415)', 4326), 39.26528, -97.8808746, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476143', 'Henry Creek', 'Stream', 'Kansas', 'KS', 'Ottawa', 'Glasco', 39.2650004, -97.7714271, ST_GeomFromText('POINT(39.2650004 -97.7714271)', 4326), 39.3541666, -97.6808701, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476149', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Ottawa', 'Tescott NE', 39.2458334, -97.7605933, ST_GeomFromText('POINT(39.2458334 -97.7605933)', 4326), 39.3016659, -97.6647574, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476156', 'Pipe Creek', 'Stream', 'Kansas', 'KS', 'Ottawa', 'Minneapolis South', 39.1216672, -97.7125363, ST_GeomFromText('POINT(39.1216672 -97.7125363)', 4326), 39.3344417, -97.5169756, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476160', 'Five Creek', 'Stream', 'Kansas', 'KS', 'Cloud', 'Clay Center SW', 39.3611068, -97.1616886, ST_GeomFromText('POINT(39.3611068 -97.1616886)', 4326), 39.3763854, -97.4053073, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476161', 'West Chapman Creek', 'Stream', 'Kansas', 'KS', 'Clay', 'Longford', 39.2063837, -97.301135, ST_GeomFromText('POINT(39.2063837 -97.301135)', 4326), 39.2749965, -97.492251, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476163', 'Chapman Creek', 'Stream', 'Kansas', 'KS', 'Dickinson', 'Chapman', 38.960555, -97.0064023, ST_GeomFromText('POINT(38.960555 -97.0064023)', 4326), 39.3719416, -97.4858646, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476166', 'Tobyne Hill', 'Summit', 'Kansas', 'KS', 'Clay', 'Idana', 39.331887, -97.2774734, ST_GeomFromText('POINT(39.331887 -97.2774734)', 4326), NULL, NULL, '1978-10-13', '2021-01-01', NULL, NULL, NULL),
  ('476168', 'Table Mounds', 'Summit', 'Kansas', 'KS', 'Clay', 'Idana', 39.3124424, -97.2774108, ST_GeomFromText('POINT(39.3124424 -97.2774108)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('476169', 'Potato Hill', 'Summit', 'Kansas', 'KS', 'Clay', 'Idana', 39.3044322, -97.2947393, ST_GeomFromText('POINT(39.3044322 -97.2947393)', 4326), NULL, NULL, '1978-10-13', '2021-01-01', NULL, NULL, NULL),
  ('476173', 'Pinkerton Branch', 'Stream', 'Kansas', 'KS', 'Clay', 'Idana', 39.3494395, -97.2803039, ST_GeomFromText('POINT(39.3494395 -97.2803039)', 4326), 39.2855556, -97.2741667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476176', 'Twin Mounds', 'Summit', 'Kansas', 'KS', 'Clay', 'Clay Center SW', 39.3336954, -97.1982193, ST_GeomFromText('POINT(39.3336954 -97.1982193)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('476180', 'Milford Lake', 'Reservoir', 'Kansas', 'KS', 'Clay', 'Milford', 39.2008988, -96.9881697, ST_GeomFromText('POINT(39.2008988 -96.9881697)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', 'Official', 'Board Decision', '1971-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476181', 'Chestnut Branch', 'Stream', 'Kansas', 'KS', 'Clay', 'Clay Center SW', 39.3422171, -97.225302, ST_GeomFromText('POINT(39.3422171 -97.225302)', 4326), 39.2705556, -97.2452778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476182', 'Reeder Branch Five Creek', 'Stream', 'Kansas', 'KS', 'Clay', 'Clay Center SW', 39.3547177, -97.1747445, ST_GeomFromText('POINT(39.3547177 -97.1747445)', 4326), 39.265, -97.2122222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476185', 'Otter Creek', 'Stream', 'Kansas', 'KS', 'Clay', 'Clay Center SE', 39.311107, -97.0705728, ST_GeomFromText('POINT(39.311107 -97.0705728)', 4326), 39.2216615, -97.1497413, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476190', 'Cane Creek', 'Stream', 'Kansas', 'KS', 'Clay', 'Clay Center SE', 39.2555513, -97.0080695, ST_GeomFromText('POINT(39.2555513 -97.0080695)', 4326), 39.1938843, -97.1222401, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476191', 'Mall Creek', 'Stream', 'Kansas', 'KS', 'Clay', 'Clay Center SE', 39.2594401, -97.0077917, ST_GeomFromText('POINT(39.2594401 -97.0077917)', 4326), 39.4358315, -96.9639042, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476195', 'Timber Creek', 'Stream', 'Kansas', 'KS', 'Clay', 'Milford', 39.2058295, -96.9886242, ST_GeomFromText('POINT(39.2058295 -96.9886242)', 4326), 39.3880531, -96.8975132, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476198', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Bala', 39.222496, -96.9144558, ST_GeomFromText('POINT(39.222496 -96.9144558)', 4326), 39.2797183, -96.9139007, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476199', 'Madison Creek', 'Stream', 'Kansas', 'KS', 'Geary', 'Bala', 39.1649967, -96.9155668, ST_GeomFromText('POINT(39.1649967 -96.9155668)', 4326), 39.3294411, -96.8908455, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476202', 'Mill Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Riley', 39.3013853, -96.6472281, ST_GeomFromText('POINT(39.3013853 -96.6472281)', 4326), 39.3580527, -96.8430672, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476206', 'Wildcat Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Manhattan', 39.1597196, -96.5611134, ST_GeomFromText('POINT(39.1597196 -96.5611134)', 4326), 39.376664, -96.887235, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476209', 'Silver Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Keats', 39.2233295, -96.7208399, ST_GeomFromText('POINT(39.2233295 -96.7208399)', 4326), 39.3019408, -96.7786202, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476210', 'Little Arkansas Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Riley', 39.2380516, -96.7669522, ST_GeomFromText('POINT(39.2380516 -96.7669522)', 4326), 39.2855518, -96.8552883, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476217', 'Kitten Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Olsburg SW', 39.2147186, -96.7025061, ST_GeomFromText('POINT(39.2147186 -96.7025061)', 4326), 39.2694406, -96.6963953, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476218', 'Tuttle Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Olsburg SW', 39.2838852, -96.6338941, ST_GeomFromText('POINT(39.2838852 -96.6338941)', 4326), 39.2713889, -96.6822222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476225', 'Cedar Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Tuttle Creek Dam', 39.240552, -96.5661138, ST_GeomFromText('POINT(39.240552 -96.5661138)', 4326), 39.3413854, -96.538893, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476228', 'Mud Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Flush', 39.3202742, -96.463891, ST_GeomFromText('POINT(39.3202742 -96.463891)', 4326), 39.3416632, -96.5294484, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476231', 'Hopkins Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Flush', 39.2763852, -96.4236116, ST_GeomFromText('POINT(39.2763852 -96.4236116)', 4326), 39.3127742, -96.5166697, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476232', 'Elm Slough', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Flush', 39.2705519, -96.4188892, ST_GeomFromText('POINT(39.2705519 -96.4188892)', 4326), 39.2511075, -96.4702785, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476235', 'Brush Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Louisville', 39.2599962, -96.3380543, ST_GeomFromText('POINT(39.2599962 -96.3380543)', 4326), 39.3769406, -96.3350008, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476236', 'Boxelder Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Louisville', 39.2858295, -96.3438882, ST_GeomFromText('POINT(39.2858295 -96.3438882)', 4326), 39.3516667, -96.3255556, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476239', 'Elm Slough', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Louisville', 39.2516629, -96.3302763, ST_GeomFromText('POINT(39.2516629 -96.3302763)', 4326), 39.2069412, -96.3863879, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476244', 'Pomeroy Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Laclede', 39.3394405, -96.2152755, ST_GeomFromText('POINT(39.3394405 -96.2152755)', 4326), 39.3527778, -96.1580556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476246', 'Lost Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Laclede', 39.1955526, -96.1611059, ST_GeomFromText('POINT(39.1955526 -96.1611059)', 4326), 39.3413849, -96.1577742, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476247', 'Polly Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Laclede', 39.2752739, -96.2436085, ST_GeomFromText('POINT(39.2752739 -96.2436085)', 4326), 39.2736111, -96.2175, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476254', 'Long Branch', 'Stream', 'Kansas', 'KS', 'Jackson', 'Emmett', 39.3149961, -96.0230485, ST_GeomFromText('POINT(39.3149961 -96.0230485)', 4326), 39.3961066, -96.0061042, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476255', 'Little Cross Creek', 'Stream', 'Kansas', 'KS', 'Jackson', 'Emmett', 39.284163, -96.0349929, ST_GeomFromText('POINT(39.284163 -96.0349929)', 4326), 39.4177731, -95.9808258, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476256', 'Illinois Creek', 'Stream', 'Kansas', 'KS', 'Jackson', 'Emmett', 39.2663853, -96.015548, ST_GeomFromText('POINT(39.2663853 -96.015548)', 4326), 39.3458291, -95.9733251, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476258', 'Bourbonnais Creek', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Maple Hill', 39.1205543, -96.0155469, ST_GeomFromText('POINT(39.1205543 -96.0155469)', 4326), 39.2702741, -96.0788827, '1978-10-13', '2014-06-13', 'Official', 'Board Decision', '2014-06-12'),
  ('476260', 'Riley Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Saint Marys', 39.2024971, -96.1124939, ST_GeomFromText('POINT(39.2024971 -96.1124939)', 4326), 39.2705519, -96.0933275, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476261', 'Deep Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Saint Marys', 39.1938862, -96.08666, ST_GeomFromText('POINT(39.1938862 -96.08666)', 4326), 39.2824962, -96.1149947, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476264', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Ottawa', 'Ada', 39.1475033, -97.9230989, ST_GeomFromText('POINT(39.1475033 -97.9230989)', 4326), 39.0594492, -98.0011581, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476266', 'Second Creek', 'Stream', 'Kansas', 'KS', 'Lincoln', 'Ada', 39.1541702, -97.935877, ST_GeomFromText('POINT(39.1541702 -97.935877)', 4326), 39.2750036, -97.9664325, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476267', 'First Creek', 'Stream', 'Kansas', 'KS', 'Ottawa', 'Ada', 39.1483362, -97.8983759, ST_GeomFromText('POINT(39.1483362 -97.8983759)', 4326), 39.260558, -97.8930971, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476270', 'Cow Creek', 'Stream', 'Kansas', 'KS', 'Ottawa', 'Ada', 39.1761141, -97.910876, ST_GeomFromText('POINT(39.1761141 -97.910876)', 4326), 39.2630578, -97.8822635, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476275', 'Limestone Creek', 'Stream', 'Kansas', 'KS', 'Ottawa', 'Tescott NE', 39.1569455, -97.7811497, ST_GeomFromText('POINT(39.1569455 -97.7811497)', 4326), 39.2722243, -97.8730967, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476276', 'Lost Creek', 'Stream', 'Kansas', 'KS', 'Ottawa', 'Tescott NE', 39.1247232, -97.758649, ST_GeomFromText('POINT(39.1247232 -97.758649)', 4326), 39.2472241, -97.8675408, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476281', 'Lindsey Creek', 'Stream', 'Kansas', 'KS', 'Ottawa', 'Minneapolis South', 39.0988894, -97.6944802, ST_GeomFromText('POINT(39.0988894 -97.6944802)', 4326), 39.2586075, -97.4980841, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476294', 'Vine Creek', 'Stream', 'Kansas', 'KS', 'Ottawa', 'Vine Creek', 39.1122198, -97.4580834, ST_GeomFromText('POINT(39.1122198 -97.4580834)', 4326), 39.1016639, -97.3850257, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476296', 'Coal Creek', 'Stream', 'Kansas', 'KS', 'Ottawa', 'Niles', 38.9824996, -97.4955852, ST_GeomFromText('POINT(38.9824996 -97.4955852)', 4326), 39.21583, -97.4922505, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476306', 'Badger Creek', 'Stream', 'Kansas', 'KS', 'Clay', 'Industry', 39.1849946, -97.2489114, ST_GeomFromText('POINT(39.1849946 -97.2489114)', 4326), 39.1711073, -97.3883593, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476310', 'Basket Creek', 'Stream', 'Kansas', 'KS', 'Clay', 'Longford', 39.1583287, -97.1972426, ST_GeomFromText('POINT(39.1583287 -97.1972426)', 4326), 39.1266628, -97.2991901, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476327', 'Quimby Creek', 'Stream', 'Kansas', 'KS', 'Clay', 'Wakefield', 39.2011073, -96.9827908, ST_GeomFromText('POINT(39.2011073 -96.9827908)', 4326), 39.1508295, -97.0933501, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476337', 'Farnum Creek', 'Stream', 'Kansas', 'KS', 'Geary', 'Milford', 39.1433302, -96.9227892, ST_GeomFromText('POINT(39.1433302 -96.9227892)', 4326), 39.2255517, -96.8497319, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476339', 'School Creek', 'Stream', 'Kansas', 'KS', 'Geary', 'Milford', 39.1258304, -96.9169557, ST_GeomFromText('POINT(39.1258304 -96.9169557)', 4326), 39.1352747, -97.0014022, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476340', 'Rush Creek', 'Stream', 'Kansas', 'KS', 'Geary', 'Milford Dam', 39.1088862, -96.9139, ST_GeomFromText('POINT(39.1088862 -96.9139)', 4326), 39.1711077, -96.8441762, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476341', 'Wind Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Fort Riley NE', 39.237496, -96.7669522, ST_GeomFromText('POINT(39.237496 -96.7669522)', 4326), 39.2513847, -96.8458431, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476344', 'Sevenmile Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Keats', 39.135553, -96.6572269, ST_GeomFromText('POINT(39.135553 -96.6572269)', 4326), 39.2052741, -96.8211201, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476345', 'Honey Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Fort Riley NE', 39.2213852, -96.7188954, ST_GeomFromText('POINT(39.2213852 -96.7188954)', 4326), 39.1999964, -96.7988973, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476347', 'Threemile Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Ogden', 39.0849977, -96.7313954, ST_GeomFromText('POINT(39.0849977 -96.7313954)', 4326), 39.1738855, -96.8388983, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476352', 'Little Kitten Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Keats', 39.1841636, -96.6247262, ST_GeomFromText('POINT(39.1841636 -96.6247262)', 4326), 39.2297186, -96.6363933, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476353', 'Dry Branch', 'Stream', 'Kansas', 'KS', 'Riley', 'Ogden', 39.1074976, -96.7072281, ST_GeomFromText('POINT(39.1074976 -96.7072281)', 4326), 39.15472, -96.1186047, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476356', 'Eureka Lake', 'Lake', 'Kansas', 'KS', 'Riley', 'Keats', 39.1624971, -96.6461156, ST_GeomFromText('POINT(39.1624971 -96.6461156)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476364', 'Phiel Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Manhattan', 39.2472184, -96.590559, ST_GeomFromText('POINT(39.2472184 -96.590559)', 4326), 39.2344407, -96.6500048, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476367', 'Elbo Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Manhattan', 39.1977748, -96.520557, ST_GeomFromText('POINT(39.1977748 -96.520557)', 4326), 39.2683297, -96.4875013, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476373', 'Fairman Lake', 'Reservoir', 'Kansas', 'KS', 'Riley', 'Manhattan', 39.1797192, -96.6238929, ST_GeomFromText('POINT(39.1797192 -96.6238929)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476375', 'Longview Hill', 'Summit', 'Kansas', 'KS', 'Riley', 'Manhattan', 39.1788791, -96.5911062, ST_GeomFromText('POINT(39.1788791 -96.5911062)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('476376', 'Rock Hill', 'Summit', 'Kansas', 'KS', 'Riley', 'Manhattan', 39.1751316, -96.5892163, ST_GeomFromText('POINT(39.1751316 -96.5892163)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('476388', 'Sand Lake', 'Lake', 'Kansas', 'KS', 'Riley', 'Manhattan', 39.1736083, -96.5577801, ST_GeomFromText('POINT(39.1736083 -96.5577801)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476392', 'Prospect Hill', 'Summit', 'Kansas', 'KS', 'Riley', 'Manhattan', 39.1701164, -96.5519511, ST_GeomFromText('POINT(39.1701164 -96.5519511)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('476396', 'Stagg Hill', 'Summit', 'Kansas', 'KS', 'Riley', 'Manhattan', 39.1527682, -96.6072177, ST_GeomFromText('POINT(39.1527682 -96.6072177)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476401', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Saint George', 39.1805528, -96.3983325, ST_GeomFromText('POINT(39.1805528 -96.3983325)', 4326), 39.2044444, -96.3805556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476402', 'Blood Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Saint George', 39.1869415, -96.4163883, ST_GeomFromText('POINT(39.1869415 -96.4163883)', 4326), 39.2044444, -96.3925, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476403', 'Blackjack Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Saint George', 39.1872193, -96.4230551, ST_GeomFromText('POINT(39.1872193 -96.4230551)', 4326), 39.2363889, -96.4122222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476404', 'Plum Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Saint George', 39.1916638, -96.4536112, ST_GeomFromText('POINT(39.1916638 -96.4536112)', 4326), 39.2166667, -96.4411111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476405', 'Lake Elbo', 'Reservoir', 'Kansas', 'KS', 'Pottawatomie', 'Saint George', 39.2356465, -96.4885482, ST_GeomFromText('POINT(39.2356465 -96.4885482)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('476406', 'School Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Saint George', 39.214719, -96.4952787, ST_GeomFromText('POINT(39.214719 -96.4952787)', 4326), 39.2430556, -96.47, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476408', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Saint George', 39.1877749, -96.4625002, ST_GeomFromText('POINT(39.1877749 -96.4625002)', 4326), 39.2322222, -96.4583333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476410', 'Blackjack Spring', 'Spring', 'Kansas', 'KS', 'Pottawatomie', 'Saint George', 39.1922192, -96.4216663, ST_GeomFromText('POINT(39.1922192 -96.4216663)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476414', 'School Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Saint George', 39.122498, -96.4544443, ST_GeomFromText('POINT(39.122498 -96.4544443)', 4326), 39.1366644, -96.5397239, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476416', 'Deep Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Wamego', 39.1655528, -96.3294423, ST_GeomFromText('POINT(39.1655528 -96.3294423)', 4326), 39.0772208, -96.4961114, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476417', 'Emmons Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Saint George', 39.1577752, -96.3766652, ST_GeomFromText('POINT(39.1577752 -96.3766652)', 4326), 39.0941649, -96.4044431, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476421', 'Coldwater Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Wamego', 39.1788859, -96.267219, ST_GeomFromText('POINT(39.1788859 -96.267219)', 4326), 39.1377778, -96.2691667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476422', 'Antelope Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Wamego', 39.1619417, -96.3283311, ST_GeomFromText('POINT(39.1619417 -96.3283311)', 4326), 39.0763874, -96.4080542, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476431', 'Roberts Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Belvue', 39.1872194, -96.1580503, ST_GeomFromText('POINT(39.1872194 -96.1580503)', 4326), 39.1261111, -96.1813889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476432', 'Wells Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Belvue', 39.1880527, -96.1547168, ST_GeomFromText('POINT(39.1880527 -96.1547168)', 4326), 39.1236088, -96.2622184, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476437', 'Little Wells Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Belvue', 39.1747194, -96.2072178, ST_GeomFromText('POINT(39.1747194 -96.2072178)', 4326), 39.1305556, -96.2122222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476439', 'Doyle Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Saint Marys', 39.1563869, -96.0544368, ST_GeomFromText('POINT(39.1563869 -96.0544368)', 4326), 39.2594407, -96.0841605, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476440', 'Willard Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Saint Marys', 39.1913862, -96.0808265, ST_GeomFromText('POINT(39.1913862 -96.0808265)', 4326), 39.2172222, -96.0672222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476445', 'College Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Saint Marys', 39.1749976, -96.0669372, ST_GeomFromText('POINT(39.1749976 -96.0669372)', 4326), 39.2191667, -96.0580556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476447', 'Turkey Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Saint Marys', 39.1322206, -96.0494365, ST_GeomFromText('POINT(39.1322206 -96.0494365)', 4326), 39.1219425, -96.1572163, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476460', 'Salt Creek', 'Stream', 'Kansas', 'KS', 'Ottawa', 'Minneapolis South', 39.0722228, -97.6817021, ST_GeomFromText('POINT(39.0722228 -97.6817021)', 4326), 39.3041754, -98.374504, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476463', 'Battle Creek', 'Stream', 'Kansas', 'KS', 'Ottawa', 'Minneapolis South', 39.059445, -97.6736462, ST_GeomFromText('POINT(39.059445 -97.6736462)', 4326), 39.0241667, -97.7355556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476464', 'Antelope Creek', 'Stream', 'Kansas', 'KS', 'Ottawa', 'Minneapolis South', 39.0283336, -97.6247558, ST_GeomFromText('POINT(39.0283336 -97.6247558)', 4326), 39.0108346, -97.6953138, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476466', 'State Lake', 'Reservoir', 'Kansas', 'KS', 'Ottawa', 'Bennington', 39.1094752, -97.5696722, ST_GeomFromText('POINT(39.1094752 -97.5696722)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('476469', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Ottawa', 'Bennington', 39.0155559, -97.603644, ST_GeomFromText('POINT(39.0155559 -97.603644)', 4326), 39.1847197, -97.5264185, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476471', 'Cole Creek', 'Stream', 'Kansas', 'KS', 'Ottawa', 'Narka', 39.9319488, -97.423095, ST_GeomFromText('POINT(39.9319488 -97.423095)', 4326), 39.0236095, -97.3986372, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476473', 'Buckeye Creek', 'Stream', 'Kansas', 'KS', 'Saline', 'Niles', 38.928611, -97.4228054, ST_GeomFromText('POINT(38.928611 -97.4228054)', 4326), 39.0944416, -97.3800256, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476480', 'Mud Creek', 'Stream', 'Kansas', 'KS', 'Dickinson', 'Abilene', 38.8883332, -97.2139096, ST_GeomFromText('POINT(38.8883332 -97.2139096)', 4326), 39.1288852, -97.3308577, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476495', 'Curtis Creek', 'Stream', 'Kansas', 'KS', 'Geary', 'Milford Dam', 39.0830531, -96.9052886, ST_GeomFromText('POINT(39.0830531 -96.9052886)', 4326), 39.1341636, -97.0052913, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476505', 'Fourmile Creek', 'Stream', 'Kansas', 'KS', 'Geary', 'Junction City', 39.0699977, -96.8594542, ST_GeomFromText('POINT(39.0699977 -96.8594542)', 4326), 39.1155556, -96.8227778, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476506', 'Dixon Creek', 'Stream', 'Kansas', 'KS', 'Geary', 'Junction City', 39.098053, -96.8544541, ST_GeomFromText('POINT(39.098053 -96.8544541)', 4326), 39.1427748, -96.8458429, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476507', 'Breakneck Canyon', 'Valley', 'Kansas', 'KS', 'Geary', 'Junction City', 39.0736401, -96.8530145, ST_GeomFromText('POINT(39.0736401 -96.8530145)', 4326), 39.0888935, -96.8491589, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('476508', 'Arnold Divide', 'Ridge', 'Kansas', 'KS', 'Riley', 'Junction City', 39.1012867, -96.8262969, ST_GeomFromText('POINT(39.1012867 -96.8262969)', 4326), NULL, NULL, '1978-10-13', '2021-01-01', NULL, NULL, NULL),
  ('476509', 'Harvey Hill', 'Summit', 'Kansas', 'KS', 'Riley', 'Junction City', 39.0933253, -96.8258748, ST_GeomFromText('POINT(39.0933253 -96.8258748)', 4326), NULL, NULL, '1978-10-13', '2021-01-01', NULL, NULL, NULL),
  ('476510', 'Randolph Hill', 'Summit', 'Kansas', 'KS', 'Riley', 'Junction City', 39.1213792, -96.7969447, ST_GeomFromText('POINT(39.1213792 -96.7969447)', 4326), NULL, NULL, '1978-10-13', '2021-01-01', NULL, NULL, NULL),
  ('476511', 'Morris Hill', 'Summit', 'Kansas', 'KS', 'Riley', 'Junction City', 39.0958239, -96.7963891, ST_GeomFromText('POINT(39.0958239 -96.7963891)', 4326), NULL, NULL, '1978-10-13', '2021-01-01', NULL, NULL, NULL),
  ('476512', 'Four Way Divide', 'Ridge', 'Kansas', 'KS', 'Riley', 'Junction City', 39.1041572, -96.8177785, ST_GeomFromText('POINT(39.1041572 -96.8177785)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('476513', 'Long Draw', 'Valley', 'Kansas', 'KS', 'Riley', 'Junction City', 39.0906088, -96.8154265, ST_GeomFromText('POINT(39.0906088 -96.8154265)', 4326), 39.0998082, -96.8137666, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('476514', 'Pumphouse Canyon', 'Valley', 'Kansas', 'KS', 'Geary', 'Junction City', 39.0646702, -96.797834, ST_GeomFromText('POINT(39.0646702 -96.797834)', 4326), 39.100224, -96.8240787, '1984-07-01', '2017-08-25', NULL, NULL, NULL),
  ('476515', 'Cameron Springs Lake', 'Reservoir', 'Kansas', 'KS', 'Riley', 'Junction City', 39.1036058, -96.7940939, ST_GeomFromText('POINT(39.1036058 -96.7940939)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476516', 'Carpenter Hill', 'Summit', 'Kansas', 'KS', 'Riley', 'Junction City', 39.1191571, -96.7822221, ST_GeomFromText('POINT(39.1191571 -96.7822221)', 4326), NULL, NULL, '1978-10-13', '2021-01-01', NULL, NULL, NULL),
  ('476517', 'Deep Canyon', 'Valley', 'Kansas', 'KS', 'Riley', 'Junction City', 39.1111977, -96.7564441, ST_GeomFromText('POINT(39.1111977 -96.7564441)', 4326), 39.1203806, -96.7779327, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('476518', 'Saddle Back', 'Ridge', 'Kansas', 'KS', 'Riley', 'Junction City', 39.1120068, -96.7818143, ST_GeomFromText('POINT(39.1120068 -96.7818143)', 4326), NULL, NULL, '1978-10-13', '2021-01-01', NULL, NULL, NULL),
  ('476519', 'Taylor Point', 'Summit', 'Kansas', 'KS', 'Riley', 'Junction City', 39.1103516, -96.7751928, ST_GeomFromText('POINT(39.1103516 -96.7751928)', 4326), NULL, NULL, '1978-10-13', '2021-01-01', NULL, NULL, NULL),
  ('476520', 'Wolf Canyon', 'Valley', 'Kansas', 'KS', 'Riley', 'Junction City', 39.0993452, -96.7617828, ST_GeomFromText('POINT(39.0993452 -96.7617828)', 4326), 39.1195555, -96.7981927, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('476521', 'Caisson Hill', 'Summit', 'Kansas', 'KS', 'Riley', 'Junction City', 39.0972128, -96.7864723, ST_GeomFromText('POINT(39.0972128 -96.7864723)', 4326), NULL, NULL, '1978-10-13', '2021-01-01', NULL, NULL, NULL),
  ('476522', 'Coyote Canyon', 'Valley', 'Kansas', 'KS', 'Riley', 'Junction City', 39.0991291, -96.7622277, ST_GeomFromText('POINT(39.0991291 -96.7622277)', 4326), 39.0957139, -96.7820545, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('476523', 'Williston Point', 'Cliff', 'Kansas', 'KS', 'Riley', 'Junction City', 39.0972197, -96.7680631, ST_GeomFromText('POINT(39.0972197 -96.7680631)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476524', 'Sheridan Point', 'Cliff', 'Kansas', 'KS', 'Riley', 'Junction City', 39.0938865, -96.7552849, ST_GeomFromText('POINT(39.0938865 -96.7552849)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476525', 'Forsyth Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Junction City', 39.0999975, -96.7455625, ST_GeomFromText('POINT(39.0999975 -96.7455625)', 4326), 39.1197194, -96.7988972, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476526', 'Wild Glen', 'Flat', 'Kansas', 'KS', 'Riley', 'Junction City', 39.1005531, -96.7625073, ST_GeomFromText('POINT(39.1005531 -96.7625073)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476527', 'Artillery Hill', 'Summit', 'Kansas', 'KS', 'Riley', 'Junction City', 39.0910453, -96.7750883, ST_GeomFromText('POINT(39.0910453 -96.7750883)', 4326), NULL, NULL, '1978-10-13', '2021-01-01', NULL, NULL, NULL),
  ('476529', 'Pawnee Flats', 'Flat', 'Kansas', 'KS', 'Riley', 'Junction City', 39.0908309, -96.7522293, ST_GeomFromText('POINT(39.0908309 -96.7522293)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476530', 'Pawnee Point', 'Cliff', 'Kansas', 'KS', 'Riley', 'Junction City', 39.0877754, -96.764174, ST_GeomFromText('POINT(39.0877754 -96.764174)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476533', 'Backstop Ridge', 'Cliff', 'Kansas', 'KS', 'Geary', 'Junction City', 39.0772199, -96.8419538, ST_GeomFromText('POINT(39.0772199 -96.8419538)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476534', 'Governor Harvey Canyon', 'Valley', 'Kansas', 'KS', 'Geary', 'Junction City', 39.0737763, -96.8335826, ST_GeomFromText('POINT(39.0737763 -96.8335826)', 4326), 39.0832968, -96.829086, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('476535', 'Republican Point', 'Cliff', 'Kansas', 'KS', 'Geary', 'Junction City', 39.0738866, -96.8319535, ST_GeomFromText('POINT(39.0738866 -96.8319535)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476536', 'Republican Flats', 'Flat', 'Kansas', 'KS', 'Geary', 'Junction City', 39.0555535, -96.8280645, ST_GeomFromText('POINT(39.0555535 -96.8280645)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476537', 'Price Ravine', 'Valley', 'Kansas', 'KS', 'Geary', 'Junction City', 39.0477331, -96.8401224, ST_GeomFromText('POINT(39.0477331 -96.8401224)', 4326), 39.0325133, -96.8578796, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('476539', 'Sherman Heights', 'Cliff', 'Kansas', 'KS', 'Geary', 'Junction City', 39.0749977, -96.8169531, ST_GeomFromText('POINT(39.0749977 -96.8169531)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476540', 'Grant Ridge', 'Ridge', 'Kansas', 'KS', 'Geary', 'Junction City', 39.0421087, -96.7592715, ST_GeomFromText('POINT(39.0421087 -96.7592715)', 4326), NULL, NULL, '1978-10-13', '2021-01-01', NULL, NULL, NULL),
  ('476541', 'Macomb Hill', 'Summit', 'Kansas', 'KS', 'Geary', 'Junction City', 39.0772684, -96.8194249, ST_GeomFromText('POINT(39.0772684 -96.8194249)', 4326), NULL, NULL, '1978-10-13', '2021-01-01', NULL, NULL, NULL),
  ('476542', 'The Island', 'Flat', 'Kansas', 'KS', 'Geary', 'Junction City', 39.0619423, -96.7947303, ST_GeomFromText('POINT(39.0619423 -96.7947303)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476543', 'Ogden Hill', 'Summit', 'Kansas', 'KS', 'Geary', 'Junction City', 39.0666859, -96.7929698, ST_GeomFromText('POINT(39.0666859 -96.7929698)', 4326), NULL, NULL, '1978-10-13', '2021-01-01', NULL, NULL, NULL),
  ('476544', 'Rock Springs Canyon', 'Valley', 'Kansas', 'KS', 'Geary', 'Junction City', 39.0763407, -96.8051807, ST_GeomFromText('POINT(39.0763407 -96.8051807)', 4326), 39.0930397, -96.7998276, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('476545', 'Machine Gun Ridge', 'Summit', 'Kansas', 'KS', 'Geary', 'Junction City', 39.0751161, -96.7903171, ST_GeomFromText('POINT(39.0751161 -96.7903171)', 4326), NULL, NULL, '1978-10-13', '2021-01-01', NULL, NULL, NULL),
  ('476546', 'Magazine Canyon', 'Valley', 'Kansas', 'KS', 'Geary', 'Junction City', 39.0753273, -96.7733223, ST_GeomFromText('POINT(39.0753273 -96.7733223)', 4326), 39.0878033, -96.7929062, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('476547', 'Onemile Creek', 'Stream', 'Kansas', 'KS', 'Geary', 'Junction City', 39.0788866, -96.7650074, ST_GeomFromText('POINT(39.0788866 -96.7650074)', 4326), 39.0961111, -96.7894444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476550', 'Whiskey Lake', 'Lake', 'Kansas', 'KS', 'Geary', 'Ogden', 39.0638868, -96.7475069, ST_GeomFromText('POINT(39.0638868 -96.7475069)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476559', 'Grand View Hill', 'Summit', 'Kansas', 'KS', 'Geary', 'Junction City', 39.0124916, -96.8058336, ST_GeomFromText('POINT(39.0124916 -96.8058336)', 4326), NULL, NULL, '1978-10-13', '2021-01-01', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476561', 'Franks Creek', 'Stream', 'Kansas', 'KS', 'Geary', 'Junction City', 39.0372204, -96.7786187, ST_GeomFromText('POINT(39.0372204 -96.7786187)', 4326), 38.975277, -96.7877857, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476562', 'Franks Hill', 'Summit', 'Kansas', 'KS', 'Geary', 'Junction City', 39.0252917, -96.7691504, ST_GeomFromText('POINT(39.0252917 -96.7691504)', 4326), NULL, NULL, '1978-10-13', '2021-01-01', NULL, NULL, NULL),
  ('476563', 'Idle Hour Lake', 'Reservoir', 'Kansas', 'KS', 'Geary', 'Junction City', 39.0062827, -96.7835568, ST_GeomFromText('POINT(39.0062827 -96.7835568)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('476564', 'Junction City Reservoir', 'Reservoir', 'Kansas', 'KS', 'Geary', 'Junction City', 39.0214191, -96.8501266, ST_GeomFromText('POINT(39.0214191 -96.8501266)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('476565', 'Campbell Hill', 'Summit', 'Kansas', 'KS', 'Riley', 'Ogden', 39.1222126, -96.7411099, ST_GeomFromText('POINT(39.1222126 -96.7411099)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('476567', 'Rodney Hill', 'Summit', 'Kansas', 'KS', 'Riley', 'Ogden', 39.1127674, -96.7461936, ST_GeomFromText('POINT(39.1127674 -96.7461936)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('476568', 'Packers Hill', 'Summit', 'Kansas', 'KS', 'Riley', 'Ogden', 39.1082489, -96.7454246, ST_GeomFromText('POINT(39.1082489 -96.7454246)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('476569', 'Sumner Hill', 'Summit', 'Kansas', 'KS', 'Riley', 'Ogden', 39.1074906, -96.7355543, ST_GeomFromText('POINT(39.1074906 -96.7355543)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('476581', 'McDowell Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Manhattan', 39.1319421, -96.582225, ST_GeomFromText('POINT(39.1319421 -96.582225)', 4326), 39.0294432, -96.6083365, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476582', 'Pressee Branch', 'Stream', 'Kansas', 'KS', 'Geary', 'Ogden', 39.0683315, -96.645282, ST_GeomFromText('POINT(39.0683315 -96.645282)', 4326), 39.0758316, -96.5905584, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476583', 'West McDowell Creek', 'Stream', 'Kansas', 'KS', 'Geary', 'Swede Creek', 39.0294432, -96.6083365, ST_GeomFromText('POINT(39.0294432 -96.6083365)', 4326), 39.0075, -96.5972222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476584', 'Swede Creek', 'Stream', 'Kansas', 'KS', 'Geary', 'Swede Creek', 39.0336099, -96.5977806, ST_GeomFromText('POINT(39.0336099 -96.5977806)', 4326), 39.0822222, -96.5572222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476585', 'Briggs Branch', 'Stream', 'Kansas', 'KS', 'Geary', 'Swede Creek', 39.0436098, -96.5825025, ST_GeomFromText('POINT(39.0436098 -96.5825025)', 4326), 39.0491667, -96.5361111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476586', 'East McDowell Creek', 'Stream', 'Kansas', 'KS', 'Geary', 'Swede Creek', 39.0294432, -96.6083365, ST_GeomFromText('POINT(39.0294432 -96.6083365)', 4326), 39.0166667, -96.5572222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476587', 'Deadman Creek', 'Stream', 'Kansas', 'KS', 'Geary', 'Swede Creek', 39.0186102, -96.5497237, ST_GeomFromText('POINT(39.0186102 -96.5497237)', 4326), 39.0174993, -96.4836109, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476592', 'Tabor Hill', 'Summit', 'Kansas', 'KS', 'Riley', 'Wamego SW', 39.1121043, -96.412076, ST_GeomFromText('POINT(39.1121043 -96.412076)', 4326), NULL, NULL, '1978-10-13', '2024-02-15', NULL, NULL, NULL),
  ('476593', 'South Branch Deep Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Wamego SW', 39.0772208, -96.4961114, ST_GeomFromText('POINT(39.0772208 -96.4961114)', 4326), 39.0194444, -96.4758333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476594', 'East Branch Deep Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Wamego SW', 39.0772208, -96.4961114, ST_GeomFromText('POINT(39.0772208 -96.4961114)', 4326), 39.0669444, -96.4086111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476596', 'Tabor Valley', 'Valley', 'Kansas', 'KS', 'Riley', 'Wamego SW', 39.1244985, -96.4385942, ST_GeomFromText('POINT(39.1244985 -96.4385942)', 4326), 39.1026388, -96.4168643, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('476597', 'Hendricks Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Alma', 39.0333321, -96.2691622, ST_GeomFromText('POINT(39.0333321 -96.2691622)', 4326), 39.0680542, -96.4036096, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476600', 'Mill Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Willard', 39.1088879, -95.9927685, ST_GeomFromText('POINT(39.1088879 -95.9927685)', 4326), 39.0038881, -96.2813843, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476601', 'Phillips Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Alma', 39.0355544, -96.3122186, ST_GeomFromText('POINT(39.0355544 -96.3122186)', 4326), 39.0369433, -96.3758311, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476602', 'Clapboard Canyon', 'Valley', 'Kansas', 'KS', 'Wabaunsee', 'Alma', 39.0218499, -96.2665002, ST_GeomFromText('POINT(39.0218499 -96.2665002)', 4326), 39.0197537, -96.2453976, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('476603', 'Pretty Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Alma', 39.0452764, -96.2461062, ST_GeomFromText('POINT(39.0452764 -96.2461062)', 4326), 39.0763872, -96.3180524, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476605', 'Paw Paw Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Alma', 39.0524986, -96.2297171, ST_GeomFromText('POINT(39.0524986 -96.2297171)', 4326), 39.1083312, -96.3011079, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476606', 'Pierce Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'McFarland', 39.028888, -96.2063831, ST_GeomFromText('POINT(39.028888 -96.2063831)', 4326), 39.0130556, -96.1775, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476611', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'McFarland', 39.0611098, -96.1949943, ST_GeomFromText('POINT(39.0611098 -96.1949943)', 4326), 39.105, -96.2302778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476613', 'Mulberry Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'McFarland', 39.07111, -96.1408267, ST_GeomFromText('POINT(39.07111 -96.1408267)', 4326), 39.1169444, -96.2466667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476615', 'Buffalo Mound', 'Summit', 'Kansas', 'KS', 'Wabaunsee', 'Maple Hill', 39.0617703, -96.0737443, ST_GeomFromText('POINT(39.0617703 -96.0737443)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('476618', 'Dog Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Maple Hill', 39.071388, -96.1055483, ST_GeomFromText('POINT(39.071388 -96.1055483)', 4326), 39.0152778, -96.0686111, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476619', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Maple Hill', 39.0674997, -96.0174909, ST_GeomFromText('POINT(39.0674997 -96.0174909)', 4326), 38.9905566, -96.021935, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476623', 'Eff Creek', 'Stream', 'Kansas', 'KS', 'Saline', 'Culver', 38.8755595, -97.7933738, ST_GeomFromText('POINT(38.8755595 -97.7933738)', 4326), 38.7877839, -97.939213, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476624', 'Shaw Creek', 'Stream', 'Kansas', 'KS', 'Saline', 'Culver', 38.9575027, -97.7719835, ST_GeomFromText('POINT(38.9575027 -97.7719835)', 4326), 38.9208333, -97.8038889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476625', 'Table Rock Creek', 'Stream', 'Kansas', 'KS', 'Ottawa', 'Culver', 38.9736143, -97.8294856, ST_GeomFromText('POINT(38.9736143 -97.8294856)', 4326), 38.8869503, -98.0053261, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476636', 'Wary Lake', 'Reservoir', 'Kansas', 'KS', 'Saline', 'Trenton', 38.9509849, -97.6461606, ST_GeomFromText('POINT(38.9509849 -97.6461606)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('476640', 'Mulberry Creek', 'Stream', 'Kansas', 'KS', 'Saline', 'New Cambria', 38.8919463, -97.602534, ST_GeomFromText('POINT(38.8919463 -97.602534)', 4326), 38.7819513, -98.0242161, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476647', 'North Pole Mound', 'Summit', 'Kansas', 'KS', 'Saline', 'New Cambria', 38.9527721, -97.6088917, ST_GeomFromText('POINT(38.9527721 -97.6088917)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('476658', 'Redbud Lake', 'Reservoir', 'Kansas', 'KS', 'Dickinson', 'Solomon', 38.914015, -97.2820961, ST_GeomFromText('POINT(38.914015 -97.2820961)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('476662', 'Magnolia Lake', 'Reservoir', 'Kansas', 'KS', 'Dickinson', 'Solomon', 38.9248267, -97.2820803, ST_GeomFromText('POINT(38.9248267 -97.2820803)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('476668', 'Turkey Creek', 'Stream', 'Kansas', 'KS', 'Dickinson', 'Abilene', 38.8830558, -97.1922422, ST_GeomFromText('POINT(38.8830558 -97.1922422)', 4326), 38.6938936, -97.1627984, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476678', 'Holland Creek', 'Stream', 'Kansas', 'KS', 'Dickinson', 'Abilene', 38.8799998, -97.2491886, ST_GeomFromText('POINT(38.8799998 -97.2491886)', 4326), 38.7438912, -97.2886356, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476681', 'Terrapin Lake', 'Lake', 'Kansas', 'KS', 'Dickinson', 'Chapman', 38.9384573, -97.0699938, ST_GeomFromText('POINT(38.9384573 -97.0699938)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('476682', 'Deer Creek', 'Stream', 'Kansas', 'KS', 'Dickinson', 'Potwin', 37.9130711, -97.0947575, ST_GeomFromText('POINT(37.9130711 -97.0947575)', 4326), 37.8186265, -97.0900375, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476683', 'Swenson Creek', 'Stream', 'Kansas', 'KS', 'Dickinson', 'Potwin', 37.945572, -97.0630896, ST_GeomFromText('POINT(37.945572 -97.0630896)', 4326), 37.844461, -97.0367024, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476691', 'Lone Tree Creek', 'Stream', 'Kansas', 'KS', 'Dickinson', 'Chapman', 38.9449995, -97.0844606, ST_GeomFromText('POINT(38.9449995 -97.0844606)', 4326), 38.9975, -97.1197222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476692', 'Kansas Falls', 'Falls', 'Kansas', 'KS', 'Geary', 'Kansas Falls', 38.9608328, -96.9111222, ST_GeomFromText('POINT(38.9608328 -96.9111222)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476697', 'Schuler Branch', 'Stream', 'Kansas', 'KS', 'Geary', 'Kansas Falls', 38.9177785, -96.9083447, ST_GeomFromText('POINT(38.9177785 -96.9083447)', 4326), 38.9058333, -96.9613889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476699', 'Seven Springs', 'Spring', 'Kansas', 'KS', 'Geary', 'Kansas Falls', 38.990832, -96.9086219, ST_GeomFromText('POINT(38.990832 -96.9086219)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476702', 'Otter Creek', 'Stream', 'Kansas', 'KS', 'Geary', 'Wreford', 38.9530554, -96.8491763, ST_GeomFromText('POINT(38.9530554 -96.8491763)', 4326), 38.8933333, -96.8163889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476703', 'Goose Creek', 'Stream', 'Kansas', 'KS', 'Geary', 'Wreford', 38.9911098, -96.8702877, ST_GeomFromText('POINT(38.9911098 -96.8702877)', 4326), 39.0197204, -96.896955, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476704', 'Lyon Creek', 'Stream', 'Kansas', 'KS', 'Geary', 'Wreford', 38.9791658, -96.8447315, ST_GeomFromText('POINT(38.9791658 -96.8447315)', 4326), 38.5527898, -96.9905719, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476711', 'Davis Creek', 'Stream', 'Kansas', 'KS', 'Geary', 'Wreford', 38.9605553, -96.7516738, ST_GeomFromText('POINT(38.9605553 -96.7516738)', 4326), 38.8519472, -96.6475053, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476712', 'West Branch Davis Creek', 'Stream', 'Kansas', 'KS', 'Geary', 'White City NW', 38.8952794, -96.7050064, ST_GeomFromText('POINT(38.8952794 -96.7050064)', 4326), 38.8411142, -96.6955622, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476713', 'West Branch Dry Creek', 'Stream', 'Kansas', 'KS', 'Geary', 'White City NW', 38.9258342, -96.6669497, ST_GeomFromText('POINT(38.9258342 -96.6669497)', 4326), 38.8705579, -96.6350048, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476714', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Geary', 'White City NW', 38.9916656, -96.7397288, ST_GeomFromText('POINT(38.9916656 -96.7397288)', 4326), 38.8725023, -96.6044485, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476715', 'Thomas Creek', 'Stream', 'Kansas', 'KS', 'Geary', 'White City NW', 38.9472223, -96.742507, ST_GeomFromText('POINT(38.9472223 -96.742507)', 4326), 38.8333366, -96.6927844, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476716', 'Clarks Creek', 'Stream', 'Kansas', 'KS', 'Geary', 'Ogden', 39.0888867, -96.7113949, ST_GeomFromText('POINT(39.0888867 -96.7113949)', 4326), 38.6761187, -96.8016772, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476719', 'Poole Branch', 'Stream', 'Kansas', 'KS', 'Geary', 'Swede Creek', 39.018888, -96.549446, ST_GeomFromText('POINT(39.018888 -96.549446)', 4326), 38.9833332, -96.4972224, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476720', 'Horne Branch', 'Stream', 'Kansas', 'KS', 'Geary', 'White City NE', 39.0166658, -96.5575017, ST_GeomFromText('POINT(39.0166658 -96.5575017)', 4326), 38.9772222, -96.5125007, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476726', 'Moss Spring', 'Spring', 'Kansas', 'KS', 'Geary', 'White City NE', 38.8986129, -96.5241684, ST_GeomFromText('POINT(38.8986129 -96.5241684)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476727', 'West Branch Humboldt Creek', 'Stream', 'Kansas', 'KS', 'Geary', 'White City NE', 38.932223, -96.6036146, ST_GeomFromText('POINT(38.932223 -96.6036146)', 4326), 38.8647248, -96.5772256, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476728', 'East Branch Humboldt Creek', 'Stream', 'Kansas', 'KS', 'Geary', 'White City NE', 38.932223, -96.6036146, ST_GeomFromText('POINT(38.932223 -96.6036146)', 4326), 38.8761111, -96.5366667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476730', 'Humboldt Creek', 'Stream', 'Kansas', 'KS', 'Geary', 'Ogden', 39.0480537, -96.730562, ST_GeomFromText('POINT(39.0480537 -96.730562)', 4326), 38.932223, -96.6036146, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476731', 'Thierer Branch', 'Stream', 'Kansas', 'KS', 'Geary', 'White City NE', 39.0074991, -96.5988917, ST_GeomFromText('POINT(39.0074991 -96.5988917)', 4326), 38.9394452, -96.5436129, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476732', 'MacArthur Branch', 'Stream', 'Kansas', 'KS', 'Geary', 'White City NE', 39.0072213, -96.5977806, ST_GeomFromText('POINT(39.0072213 -96.5977806)', 4326), 38.945834, -96.5302792, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476741', 'Illinois Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Allendorph', 38.9744443, -96.3397191, ST_GeomFromText('POINT(38.9744443 -96.3397191)', 4326), 38.837781, -96.3469427, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476742', 'South Branch Mill Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Alma', 39.0038881, -96.2811065, ST_GeomFromText('POINT(39.0038881 -96.2811065)', 4326), 38.8244479, -96.296386, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476743', 'West Branch Mill Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Alma', 39.0038881, -96.2811065, ST_GeomFromText('POINT(39.0038881 -96.2811065)', 4326), 38.8605583, -96.5400024, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476744', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Allendorph', 38.9730556, -96.3497193, ST_GeomFromText('POINT(38.9730556 -96.3497193)', 4326), 38.9866664, -96.4213874, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476745', 'Loire Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Allendorph', 38.9844441, -96.3274965, ST_GeomFromText('POINT(38.9844441 -96.3274965)', 4326), 39.0636097, -96.4016651, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476748', 'Alma City Reservoir', 'Reservoir', 'Kansas', 'KS', 'Wabaunsee', 'Allendorph', 38.978333, -96.2630508, ST_GeomFromText('POINT(38.978333 -96.2630508)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476752', 'East Branch Mill Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Allendorph', 38.9600002, -96.2669399, ST_GeomFromText('POINT(38.9600002 -96.2669399)', 4326), 38.888336, -96.1113816, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476754', 'Nehring Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Hessdale', 38.9497226, -96.2441617, ST_GeomFromText('POINT(38.9497226 -96.2441617)', 4326), 38.8938915, -96.1163817, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476758', 'Kuenzli Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Hessdale', 39.0549988, -96.2033278, ST_GeomFromText('POINT(39.0549988 -96.2033278)', 4326), 38.944168, -96.1302706, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476759', 'Joe Woody Branch', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Hessdale', 39.0108332, -96.1299926, ST_GeomFromText('POINT(39.0108332 -96.1299926)', 4326), 38.9844447, -96.1469374, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476762', 'South Branch Mission Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Keene', 38.9500018, -96.0386021, ST_GeomFromText('POINT(38.9500018 -96.0386021)', 4326), 38.8841667, -96.1005556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476763', 'North Branch Mission Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Keene', 38.9500018, -96.0386021, ST_GeomFromText('POINT(38.9500018 -96.0386021)', 4326), 38.9380556, -96.1122222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476764', 'Wildcat Hollow', 'Valley', 'Kansas', 'KS', 'Wabaunsee', 'Keene', 38.9256071, -96.0574696, ST_GeomFromText('POINT(38.9256071 -96.0574696)', 4326), 38.918295, -96.0514082, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('476765', 'Allen Branch', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Keene', 38.9555575, -96.0083238, ST_GeomFromText('POINT(38.9555575 -96.0083238)', 4326), 38.9041667, -96.0425, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476766', 'Higby Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Keene', 38.9569459, -96.0586025, ST_GeomFromText('POINT(38.9569459 -96.0586025)', 4326), 38.9738889, -96.0833333, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476767', 'Beach Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Keene', 38.9536129, -96.0302686, ST_GeomFromText('POINT(38.9536129 -96.0302686)', 4326), 38.9783333, -96.0588889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476768', 'Johnson Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Keene', 38.9575018, -96.0158239, ST_GeomFromText('POINT(38.9575018 -96.0158239)', 4326), 39.0052782, -96.0613802, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476772', 'Snokomo Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'McFarland', 39.0611101, -96.1455489, ST_GeomFromText('POINT(39.0611101 -96.1455489)', 4326), 38.9455569, -96.1227705, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476785', 'West Spring Creek', 'Stream', 'Kansas', 'KS', 'Saline', 'Brookville', 38.7655609, -97.7986525, ST_GeomFromText('POINT(38.7655609 -97.7986525)', 4326), 38.7386182, -98.0042156, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476786', 'Ralston Creek', 'Stream', 'Kansas', 'KS', 'Saline', 'Brookville', 38.7627832, -97.801986, ST_GeomFromText('POINT(38.7627832 -97.801986)', 4326), 38.6294514, -97.8422665, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476789', 'West Dry Creek', 'Stream', 'Kansas', 'KS', 'Saline', 'Salina SW', 38.7558373, -97.6261472, ST_GeomFromText('POINT(38.7558373 -97.6261472)', 4326), 38.5872293, -97.7961543, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476790', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Saline', 'Salina SW', 38.8388925, -97.7039265, ST_GeomFromText('POINT(38.8388925 -97.7039265)', 4326), 38.6383404, -97.866434, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476799', 'East Dry Creek', 'Stream', 'Kansas', 'KS', 'Saline', 'Salina', 38.8511129, -97.534199, ST_GeomFromText('POINT(38.8511129 -97.534199)', 4326), 38.7602778, -97.5316667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476800', 'Iron Mound', 'Summit', 'Kansas', 'KS', 'Saline', 'Salina', 38.8083622, -97.5117979, ST_GeomFromText('POINT(38.8083622 -97.5117979)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('476807', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Saline', 'Salina', 38.8736133, -97.6130901, ST_GeomFromText('POINT(38.8736133 -97.6130901)', 4326), 38.5608402, -97.7130963, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476833', 'Gypsum Creek', 'Stream', 'Kansas', 'KS', 'Saline', 'Kipp', 38.8605565, -97.4122502, ST_GeomFromText('POINT(38.8605565 -97.4122502)', 4326), 38.4375073, -97.4944795, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476834', 'West Branch Gypsum Creek', 'Stream', 'Kansas', 'KS', 'Saline', 'Kipp', 38.786391, -97.4350296, ST_GeomFromText('POINT(38.786391 -97.4350296)', 4326), 38.6875039, -97.5086442, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476835', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Saline', 'Kipp', 38.7808355, -97.4330852, ST_GeomFromText('POINT(38.7808355 -97.4330852)', 4326), 38.6255606, -97.5233673, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476849', 'West Branch Turkey Creek', 'Stream', 'Kansas', 'KS', 'Dickinson', 'Abilene SW', 38.804724, -97.1822425, ST_GeomFromText('POINT(38.804724 -97.1822425)', 4326), 38.625283, -97.2500243, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476863', 'West Branch Lyon Creek', 'Stream', 'Kansas', 'KS', 'Dickinson', 'Woodbine', 38.7811155, -96.9611244, ST_GeomFromText('POINT(38.7811155 -96.9611244)', 4326), 38.6425074, -97.0927965, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476866', 'Carry Creek', 'Stream', 'Kansas', 'KS', 'Geary', 'Woodbine', 38.8708353, -96.9216786, ST_GeomFromText('POINT(38.8708353 -96.9216786)', 4326), 38.6994498, -97.1052964, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476871', 'Mulberry Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Skiddy', 38.8291699, -96.8244543, ST_GeomFromText('POINT(38.8291699 -96.8244543)', 4326), 38.7527778, -96.7902778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476878', 'Parkers Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'White City', 38.7616719, -96.6675065, ST_GeomFromText('POINT(38.7616719 -96.6675065)', 4326), 38.8255556, -96.6822222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476879', 'Ramseys Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'White City', 38.7547275, -96.648895, ST_GeomFromText('POINT(38.7547275 -96.648895)', 4326), 38.7805556, -96.6444444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476880', 'West Fork Neosho River', 'Stream', 'Kansas', 'KS', 'Morris', 'White City', 38.7613941, -96.7119521, ST_GeomFromText('POINT(38.7613941 -96.7119521)', 4326), 38.6694522, -96.7919548, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476881', 'Level Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'White City', 38.7625052, -96.7344526, ST_GeomFromText('POINT(38.7625052 -96.7344526)', 4326), 38.7100066, -96.8050102, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476882', 'Ralls Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'White City', 38.8591692, -96.7900088, ST_GeomFromText('POINT(38.8591692 -96.7900088)', 4326), 38.8036152, -96.7355634, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476884', 'Haun Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'White City', 38.7513943, -96.6500061, ST_GeomFromText('POINT(38.7513943 -96.6500061)', 4326), 38.6380642, -96.7166754, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476892', 'West Branch Short Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Dwight', 38.7647272, -96.5216696, ST_GeomFromText('POINT(38.7647272 -96.5216696)', 4326), 38.8275, -96.5408333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476893', 'East Branch Short Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Dwight', 38.7647272, -96.5216696, ST_GeomFromText('POINT(38.7647272 -96.5216696)', 4326), 38.8369444, -96.5263889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476894', 'Short Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Dwight', 38.7286169, -96.5019472, ST_GeomFromText('POINT(38.7286169 -96.5019472)', 4326), 38.7647272, -96.5216696, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476895', 'Slough Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Dwight', 38.6986178, -96.5297257, ST_GeomFromText('POINT(38.6986178 -96.5297257)', 4326), 38.8611138, -96.5641698, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476896', 'Lairds Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Council Grove Lake', 38.7294503, -96.5744489, ST_GeomFromText('POINT(38.7294503 -96.5744489)', 4326), 38.8625026, -96.5850036, '1978-10-13', NULL, 'Official', 'Board Decision', '1966-01-01'),
  ('476901', 'Munkers Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Council Grove Lake', 38.7212445, -96.5074253, ST_GeomFromText('POINT(38.7212445 -96.5074253)', 4326), 38.8478466, -96.5348268, '1978-10-13', '2020-05-27', 'Official', 'Board Decision', '1970-12-08'),
  ('476903', 'Wildcat Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Alta Vista', 38.7555607, -96.472224, ST_GeomFromText('POINT(38.7555607 -96.472224)', 4326), 38.745561, -96.4294454, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476904', 'Elkhorn Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Alta Vista', 38.7752825, -96.4363897, ST_GeomFromText('POINT(38.7752825 -96.4363897)', 4326), 38.7733333, -96.3794444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476905', 'Council Grove Lake', 'Reservoir', 'Kansas', 'KS', 'Morris', 'Council Grove Lake', 38.6997978, -96.5195795, ST_GeomFromText('POINT(38.6997978 -96.5195795)', 4326), NULL, NULL, '1978-10-13', '2020-05-27', 'Official', 'Board Decision', '1971-07-27'),
  ('476910', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Lake Kahola', 38.5730655, -96.3816674, ST_GeomFromText('POINT(38.5730655 -96.3816674)', 4326), 38.7547274, -96.3038868, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476911', 'East Branch Munkers Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Alta Vista', 38.7723874, -96.4535236, ST_GeomFromText('POINT(38.7723874 -96.4535236)', 4326), 38.828375, -96.3268375, '1978-10-13', '2013-06-04', NULL, NULL, NULL),
  ('476912', 'West Branch Rock Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Alta Vista SE', 38.7547274, -96.3038868, ST_GeomFromText('POINT(38.7547274 -96.3038868)', 4326), 38.8230592, -96.2297178, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476913', 'Middle Branch Munkers Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Alta Vista', 38.7723874, -96.4535236, ST_GeomFromText('POINT(38.7723874 -96.4535236)', 4326), 38.8313922, -96.3538873, '1978-10-13', '2013-06-04', NULL, NULL, NULL),
  ('476914', 'Horse Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Alta Vista SE', 38.7463943, -96.3119426, ST_GeomFromText('POINT(38.7463943 -96.3119426)', 4326), 38.8202814, -96.3219422, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476920', 'Lake Wabaunsee', 'Reservoir', 'Kansas', 'KS', 'Wabaunsee', 'Lake Wabaunsee', 38.8669471, -96.1961057, ST_GeomFromText('POINT(38.8669471 -96.1961057)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476921', 'Gun Barrel Hill', 'Summit', 'Kansas', 'KS', 'Wabaunsee', 'Lake Wabaunsee', 38.818153, -96.2059709, ST_GeomFromText('POINT(38.818153 -96.2059709)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('476922', 'East Branch Rock Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Lake Wabaunsee', 38.7547274, -96.3038868, ST_GeomFromText('POINT(38.7547274 -96.3038868)', 4326), 38.8150039, -96.2122175, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476923', 'Locust Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Lake Wabaunsee', 38.7677833, -96.1163823, ST_GeomFromText('POINT(38.7677833 -96.1163823)', 4326), 38.7925045, -96.1999952, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476924', 'Elm Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Reading', 38.5680663, -95.9744351, ST_GeomFromText('POINT(38.5680663 -95.9744351)', 4326), 38.855559, -96.1263821, '1978-10-13', NULL, 'Official', 'Board Decision', '1973-01-01'),
  ('476928', 'Hungry Hollow', 'Valley', 'Kansas', 'KS', 'Wabaunsee', 'Eskridge', 38.7822157, -96.1237816, ST_GeomFromText('POINT(38.7822157 -96.1237816)', 4326), 38.8249306, -96.11729, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('476929', 'Chicken Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Admire', 38.6913966, -96.0458254, ST_GeomFromText('POINT(38.6913966 -96.0458254)', 4326), 38.8091714, -96.0944372, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476932', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Ellsworth', 'Venango', 38.6097302, -97.959493, ST_GeomFromText('POINT(38.6097302 -97.959493)', 4326), 38.7047294, -97.979215, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476933', 'Wiley Creek', 'Stream', 'Kansas', 'KS', 'Ellsworth', 'Venango', 38.6091745, -97.9283809, ST_GeomFromText('POINT(38.6091745 -97.9283809)', 4326), 38.6858404, -97.9381027, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476937', 'Potato Hill', 'Summit', 'Kansas', 'KS', 'Saline', 'Falun', 38.6778709, -97.8055684, ST_GeomFromText('POINT(38.6778709 -97.8055684)', 4326), NULL, NULL, '1978-10-13', '2021-01-01', NULL, NULL, NULL),
  ('476939', 'Coiner Dome', 'Summit', 'Kansas', 'KS', 'Saline', 'Falun', 38.6877776, -97.8572581, ST_GeomFromText('POINT(38.6877776 -97.8572581)', 4326), NULL, NULL, '1978-10-13', '2021-01-01', NULL, NULL, NULL),
  ('476940', 'Weston Hill', 'Summit', 'Kansas', 'KS', 'Saline', 'Falun', 38.6925834, -97.8493514, ST_GeomFromText('POINT(38.6925834 -97.8493514)', 4326), NULL, NULL, '1978-10-13', '2021-01-01', NULL, NULL, NULL),
  ('476941', 'Castle Creek', 'Stream', 'Kansas', 'KS', 'Saline', 'Falun', 38.7075064, -97.8681, ST_GeomFromText('POINT(38.7075064 -97.8681)', 4326), 38.6344516, -97.8786566, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476942', 'Soldier Cap Mound', 'Summit', 'Kansas', 'KS', 'Saline', 'Falun', 38.7162943, -97.7979506, ST_GeomFromText('POINT(38.7162943 -97.7979506)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('476944', 'Smoky Hills', 'Range', 'Kansas', 'KS', 'Saline', 'Smolan', 38.6665866, -97.6922715, ST_GeomFromText('POINT(38.6665866 -97.6922715)', 4326), NULL, NULL, '1978-10-13', '2025-02-27', NULL, NULL, NULL),
  ('476955', 'Middle Dry Creek', 'Stream', 'Kansas', 'KS', 'Saline', 'Smolan', 38.7425041, -97.6267029, ST_GeomFromText('POINT(38.7425041 -97.6267029)', 4326), 38.6047288, -97.7417079, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476961', 'Stag Creek', 'Stream', 'Kansas', 'KS', 'Saline', 'Gypsum', 38.6819483, -97.4197521, ST_GeomFromText('POINT(38.6819483 -97.4197521)', 4326), 38.5888944, -97.5261453, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476962', 'Hobbs Creek', 'Stream', 'Kansas', 'KS', 'Saline', 'Gypsum', 38.6938926, -97.4214188, ST_GeomFromText('POINT(38.6938926 -97.4214188)', 4326), 38.5941724, -97.3511392, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476964', 'Harvey Creek', 'Stream', 'Kansas', 'KS', 'Saline', 'Roxbury', 38.6236161, -97.4394755, ST_GeomFromText('POINT(38.6236161 -97.4394755)', 4326), 38.5963889, -97.4861111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476967', 'East Holland Creek', 'Stream', 'Kansas', 'KS', 'Dickinson', 'Carlton', 38.7438912, -97.2886356, ST_GeomFromText('POINT(38.7438912 -97.2886356)', 4326), 38.5952837, -97.297804, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476968', 'West Holland Creek', 'Stream', 'Kansas', 'KS', 'Dickinson', 'Carlton', 38.7438912, -97.2886356, ST_GeomFromText('POINT(38.7438912 -97.2886356)', 4326), 38.5916726, -97.3105823, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476971', 'McAllister Creek', 'Stream', 'Kansas', 'KS', 'Saline', 'Carlton', 38.7277808, -97.4228075, ST_GeomFromText('POINT(38.7277808 -97.4228075)', 4326), 38.70417, -97.3519717, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476975', 'East Turkey Creek', 'Stream', 'Kansas', 'KS', 'Dickinson', 'Elmo', 38.6938936, -97.1627984, ST_GeomFromText('POINT(38.6938936 -97.1627984)', 4326), 38.5663987, -97.0930752, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('476976', 'West Turkey Creek', 'Stream', 'Kansas', 'KS', 'Dickinson', 'Elmo', 38.6938936, -97.1627984, ST_GeomFromText('POINT(38.6938936 -97.1627984)', 4326), 38.5869506, -97.2497469, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476985', 'Kohls Creek', 'Stream', 'Kansas', 'KS', 'Dickinson', 'Herington', 38.6730634, -96.9994597, ST_GeomFromText('POINT(38.6730634 -96.9994597)', 4326), 38.5761222, -96.9619599, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476986', 'Lime Creek', 'Stream', 'Kansas', 'KS', 'Dickinson', 'Herington', 38.7377834, -96.9614025, ST_GeomFromText('POINT(38.7377834 -96.9614025)', 4326), 38.600288, -96.9119584, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476990', 'Lake Herington', 'Reservoir', 'Kansas', 'KS', 'Dickinson', 'Herington', 38.663469, -96.9942961, ST_GeomFromText('POINT(38.663469 -96.9942961)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('476995', 'Diamond Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Strong City', 38.391403, -96.6250091, ST_GeomFromText('POINT(38.391403 -96.6250091)', 4326), 38.6413975, -96.7397315, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476996', 'Threemile Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Delavan', 38.5641775, -96.7663995, ST_GeomFromText('POINT(38.5641775 -96.7663995)', 4326), 38.6561194, -96.8216778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('476997', 'Mile-and-a-Half Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Delavan', 38.5791771, -96.7775107, ST_GeomFromText('POINT(38.5791771 -96.7775107)', 4326), 38.665008, -96.8025106, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477003', 'Crooked Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Wilsey', 38.7461166, -96.6372281, ST_GeomFromText('POINT(38.7461166 -96.6372281)', 4326), 38.6825, -96.6719444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477004', 'Fourmile Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Lake Kahola', 38.6205643, -96.4563911, ST_GeomFromText('POINT(38.6205643 -96.4563911)', 4326), 38.6363976, -96.7058418, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477008', 'Gilmore Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Council Grove Lake', 38.717784, -96.5577819, ST_GeomFromText('POINT(38.717784 -96.5577819)', 4326), 38.6619523, -96.6488957, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('477009', 'Canning Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Council Grove Lake', 38.6869514, -96.5216701, ST_GeomFromText('POINT(38.6869514 -96.5216701)', 4326), 38.6711111, -96.6191667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477018', 'Elm Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Council Grove', 38.6527857, -96.4836138, ST_GeomFromText('POINT(38.6527857 -96.4836138)', 4326), 38.66473, -96.6663961, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477019', 'Little John Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Council Grove', 38.6258419, -96.4425019, ST_GeomFromText('POINT(38.6258419 -96.4425019)', 4326), 38.69, -96.4047222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477020', 'Big John Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Council Grove', 38.6191754, -96.4400018, ST_GeomFromText('POINT(38.6191754 -96.4400018)', 4326), 38.7436165, -96.4038892, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477023', 'Ritchey Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Council Grove Lake', 38.6986178, -96.5080586, ST_GeomFromText('POINT(38.6986178 -96.5080586)', 4326), 38.7166729, -96.4650019, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477028', 'Wrights Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Bushong', 38.5508438, -96.3474999, ST_GeomFromText('POINT(38.5508438 -96.3474999)', 4326), 38.6419525, -96.2813868, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477032', 'Admire-Allen City Lake', 'Reservoir', 'Kansas', 'KS', 'Lyon', 'Allen', 38.6672044, -96.158081, ST_GeomFromText('POINT(38.6672044 -96.158081)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('477034', 'Bluff Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Bushong', 38.6313973, -96.3686111, ST_GeomFromText('POINT(38.6313973 -96.3686111)', 4326), 38.7241728, -96.212218, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477035', 'Allen Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Emporia', 38.4289025, -96.1641622, ST_GeomFromText('POINT(38.4289025 -96.1641622)', 4326), 38.6883403, -96.2269408, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477036', 'Dow Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Emporia', 38.4414022, -96.1872183, ST_GeomFromText('POINT(38.4414022 -96.1872183)', 4326), 38.6466749, -96.1874955, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('477039', 'Onion Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Admire', 38.694452, -96.037214, ST_GeomFromText('POINT(38.694452 -96.037214)', 4326), 38.7647281, -96.0452696, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477041', 'Hill Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Allen SE', 38.6036208, -96.0508257, ST_GeomFromText('POINT(38.6036208 -96.0508257)', 4326), 38.6902849, -96.195829, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477045', 'Log Chain Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Admire', 38.68973, -96.0288805, ST_GeomFromText('POINT(38.68973 -96.0288805)', 4326), 38.7405556, -96.0258333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477048', 'Hoover Creek', 'Stream', 'Kansas', 'KS', 'McPherson', 'Langley', 38.5483415, -97.9019917, ST_GeomFromText('POINT(38.5483415 -97.9019917)', 4326), 38.5094444, -97.9266667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477056', 'Sharps Creek', 'Stream', 'Kansas', 'KS', 'McPherson', 'Marquette', 38.5269519, -97.7630984, ST_GeomFromText('POINT(38.5269519 -97.7630984)', 4326), 38.4958422, -97.943938, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477057', 'Edwards Creek', 'Stream', 'Kansas', 'KS', 'McPherson', 'Marquette', 38.5208409, -97.7758767, ST_GeomFromText('POINT(38.5208409 -97.7758767)', 4326), 38.4716752, -97.8553243, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477059', 'Wolf Creek', 'Stream', 'Kansas', 'KS', 'McPherson', 'Marquette', 38.5469523, -97.8639348, ST_GeomFromText('POINT(38.5469523 -97.8639348)', 4326), 38.4680647, -97.9639389, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477064', 'Paint Creek', 'Stream', 'Kansas', 'KS', 'McPherson', 'Lindsborg', 38.5230629, -97.7103188, ST_GeomFromText('POINT(38.5230629 -97.7103188)', 4326), 38.4400079, -97.7153203, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477065', 'Indian Creek', 'Stream', 'Kansas', 'KS', 'McPherson', 'Lindsborg', 38.5311182, -97.6850401, ST_GeomFromText('POINT(38.5311182 -97.6850401)', 4326), 38.4461188, -97.648929, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477078', 'Kentucky Creek', 'Stream', 'Kansas', 'KS', 'Saline', 'Lindsborg SE', 38.6166724, -97.6158704, ST_GeomFromText('POINT(38.6166724 -97.6158704)', 4326), 38.4550073, -97.5630926, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('477079', 'West Kentucky Creek', 'Stream', 'Kansas', 'KS', 'McPherson', 'Lindsborg SE', 38.5238957, -97.6092042, ST_GeomFromText('POINT(38.5238957 -97.6092042)', 4326), 38.468063, -97.6211498, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477080', 'East Kentucky Creek', 'Stream', 'Kansas', 'KS', 'McPherson', 'Lindsborg SE', 38.5750062, -97.6114261, ST_GeomFromText('POINT(38.5750062 -97.6114261)', 4326), 38.5230556, -97.5511111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477081', 'Black Canyon', 'Valley', 'Kansas', 'KS', 'McPherson', 'Lindsborg SE', 38.515164, -97.5153202, ST_GeomFromText('POINT(38.515164 -97.5153202)', 4326), 38.5095675, -97.5152516, '1978-10-13', '2015-10-21', NULL, NULL, NULL),
  ('477085', 'Gas Lake', 'Reservoir', 'Kansas', 'KS', 'McPherson', 'Lindsborg SE', 38.5835247, -97.557023, ST_GeomFromText('POINT(38.5835247 -97.557023)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('477086', 'Pewee Creek', 'Stream', 'Kansas', 'KS', 'Saline', 'Assaria', 38.6338942, -97.5903138, ST_GeomFromText('POINT(38.6338942 -97.5903138)', 4326), 38.5688948, -97.5483685, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477089', 'South Gypsum Creek', 'Stream', 'Kansas', 'KS', 'McPherson', 'Roxbury', 38.5422286, -97.4500319, ST_GeomFromText('POINT(38.5422286 -97.4500319)', 4326), 38.3925083, -97.4258671, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477090', 'Battle Creek', 'Stream', 'Kansas', 'KS', 'McPherson', 'Roxbury', 38.5397286, -97.4508654, ST_GeomFromText('POINT(38.5397286 -97.4508654)', 4326), 38.4180633, -97.4758682, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477092', 'Twin Mounds', 'Summit', 'Kansas', 'KS', 'McPherson', 'Roxbury', 38.5215198, -97.4981751, ST_GeomFromText('POINT(38.5215198 -97.4981751)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('477099', 'North Gypsum Creek', 'Stream', 'Kansas', 'KS', 'McPherson', 'Roxbury', 38.5336175, -97.4750328, ST_GeomFromText('POINT(38.5336175 -97.4750328)', 4326), 38.5513951, -97.5450351, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477115', 'Elm Springs', 'Spring', 'Kansas', 'KS', 'Marion', 'Gypsum SE', 38.5966724, -97.3341942, ST_GeomFromText('POINT(38.5966724 -97.3341942)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('477119', 'Perry Creek', 'Stream', 'Kansas', 'KS', 'Marion', 'Gypsum SE', 38.5105635, -97.3036383, ST_GeomFromText('POINT(38.5105635 -97.3036383)', 4326), 38.4261198, -97.3339189, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477124', 'Middle Branch', 'Stream', 'Kansas', 'KS', 'Dickinson', 'Tampa', 38.6169509, -97.189189, ST_GeomFromText('POINT(38.6169509 -97.189189)', 4326), 38.5463889, -97.1952778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477131', 'Cress Creek', 'Stream', 'Kansas', 'KS', 'Marion', 'Ramona', 38.5819551, -97.0155724, ST_GeomFromText('POINT(38.5819551 -97.0155724)', 4326), 38.5480556, -97.0155556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477132', 'Lost Spring', 'Spring', 'Kansas', 'KS', 'Marion', 'Ramona', 38.566678, -97.0127946, ST_GeomFromText('POINT(38.566678 -97.0127946)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477138', 'East Branch Clear Creek', 'Stream', 'Kansas', 'KS', 'Marion', 'Lincolnville', 38.4366814, -96.962796, ST_GeomFromText('POINT(38.4366814 -96.962796)', 4326), 38.5291791, -96.9002921, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477144', 'Sixmile Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Burdick', 38.5602887, -96.7552882, ST_GeomFromText('POINT(38.5602887 -96.7552882)', 4326), 38.6119541, -96.8927911, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477145', 'Camp Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Burdick', 38.5805661, -96.8122338, ST_GeomFromText('POINT(38.5805661 -96.8122338)', 4326), 38.5758442, -96.8964026, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477146', 'Mulberry Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Burdick', 38.5658441, -96.774733, ST_GeomFromText('POINT(38.5658441 -96.774733)', 4326), 38.5166667, -96.8069444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477147', 'Middle Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Hymer', 38.3777921, -96.6350096, ST_GeomFromText('POINT(38.3777921 -96.6350096)', 4326), 38.5544559, -96.8850137, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477149', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Burdick', 38.5669552, -96.7822332, ST_GeomFromText('POINT(38.5669552 -96.7822332)', 4326), 38.5447222, -96.8419444, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('477150', 'Diamond Spring', 'Spring', 'Kansas', 'KS', 'Morris', 'Burdick', 38.6161204, -96.7627879, ST_GeomFromText('POINT(38.6161204 -96.7627879)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477152', 'Dodds Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Diamond Springs', 38.5461223, -96.7405657, ST_GeomFromText('POINT(38.5461223 -96.7405657)', 4326), 38.6294533, -96.7113975, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477154', 'School Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Diamond Springs', 38.515012, -96.7111207, ST_GeomFromText('POINT(38.515012 -96.7111207)', 4326), 38.5730556, -96.6777778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477155', 'Silver Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Diamond Springs', 38.5411225, -96.7330655, ST_GeomFromText('POINT(38.5411225 -96.7330655)', 4326), 38.5897222, -96.69, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477156', 'Schaffer Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Diamond Springs', 38.4786239, -96.6913985, ST_GeomFromText('POINT(38.4786239 -96.6913985)', 4326), 38.5508442, -96.6491744, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477157', 'Pickett Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Diamond Springs', 38.5014013, -96.7050095, ST_GeomFromText('POINT(38.5014013 -96.7050095)', 4326), 38.4852907, -96.7647336, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477161', 'Palmer Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Strong City', 38.4894567, -96.5647281, ST_GeomFromText('POINT(38.4894567 -96.5647281)', 4326), 38.5122341, -96.6336186, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477162', 'Fox Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Strong City', 38.3939028, -96.5511178, ST_GeomFromText('POINT(38.3939028 -96.5511178)', 4326), 38.5247338, -96.626674, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477163', 'East Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Wilsey SE', 38.5708435, -96.5633387, ST_GeomFromText('POINT(38.5708435 -96.5633387)', 4326), 38.5366779, -96.6275072, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477164', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Wilsey SE', 38.5988982, -96.5122259, ST_GeomFromText('POINT(38.5988982 -96.5122259)', 4326), 38.5355556, -96.5302778, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('477165', 'Paddy Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Wilsey SE', 38.5852877, -96.6100064, ST_GeomFromText('POINT(38.5852877 -96.6100064)', 4326), 38.5586218, -96.6525077, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477167', 'Lake Kahola', 'Reservoir', 'Kansas', 'KS', 'Morris', 'Lake Kahola', 38.5217496, -96.4243164, ST_GeomFromText('POINT(38.5217496 -96.4243164)', 4326), NULL, NULL, '1978-10-13', '2018-07-05', NULL, NULL, NULL),
  ('477168', 'Indian Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Lake Kahola', 38.5175114, -96.4661142, ST_GeomFromText('POINT(38.5175114 -96.4661142)', 4326), 38.505, -96.4916667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477169', 'Wolf Creek', 'Stream', 'Kansas', 'KS', 'Morris', 'Lake Kahola', 38.6005648, -96.4908366, ST_GeomFromText('POINT(38.6005648 -96.4908366)', 4326), 38.5419444, -96.4983333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477170', 'Walker Branch', 'Stream', 'Kansas', 'KS', 'Morris', 'Lake Kahola', 38.5858429, -96.4041678, ST_GeomFromText('POINT(38.5858429 -96.4041678)', 4326), 38.5694444, -96.4566667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477172', 'Kahola Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Americus', 38.5352887, -96.3341664, ST_GeomFromText('POINT(38.5352887 -96.3341664)', 4326), 38.5344554, -96.5091708, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477174', 'Troublesome Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Emporia', 38.4461242, -96.1922184, ST_GeomFromText('POINT(38.4461242 -96.1922184)', 4326), 38.5791765, -96.2733313, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477175', 'Pester Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Emporia', 38.4877899, -96.2441643, ST_GeomFromText('POINT(38.4877899 -96.2441643)', 4326), 38.5544548, -96.2552754, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477181', 'Stillman Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Allen SW', 38.4675127, -96.1697178, ST_GeomFromText('POINT(38.4675127 -96.1697178)', 4326), 38.5541773, -96.1772178, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477185', 'Badger Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Allen SE', 38.3939037, -96.0611037, ST_GeomFromText('POINT(38.3939037 -96.0611037)', 4326), 38.5241782, -96.0886046, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('477187', 'Taylor Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Emporia', 38.4361246, -96.1624954, ST_GeomFromText('POINT(38.4361246 -96.1624954)', 4326), 38.5175117, -96.1008272, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477188', 'Lyon County State Lake', 'Reservoir', 'Kansas', 'KS', 'Lyon', 'Allen SE', 38.5438197, -96.0632065, ST_GeomFromText('POINT(38.5438197 -96.0632065)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('477191', 'South Sharps Creek', 'Stream', 'Kansas', 'KS', 'McPherson', 'Windom NE', 38.4483416, -97.8050453, ST_GeomFromText('POINT(38.4483416 -97.8050453)', 4326), 38.417231, -97.8781035, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477192', 'Bull Creek', 'Stream', 'Kansas', 'KS', 'McPherson', 'McPherson North', 38.3522305, -97.6530976, ST_GeomFromText('POINT(38.3522305 -97.6530976)', 4326), 38.4450078, -97.6914305, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477201', 'Dry Turkey Creek', 'Stream', 'Kansas', 'KS', 'McPherson', 'Halstead NW', 38.2466758, -97.6469881, ST_GeomFromText('POINT(38.2466758 -97.6469881)', 4326), 38.4508407, -97.5755931, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477202', 'Turkey Creek', 'Stream', 'Kansas', 'KS', 'Harvey', 'Halstead', 38.1230659, -97.6008762, ST_GeomFromText('POINT(38.1230659 -97.6008762)', 4326), 38.4500073, -97.5544813, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477220', 'McPherson County State Lake', 'Reservoir', 'Kansas', 'KS', 'McPherson', 'Canton', 38.4792808, -97.4696086, ST_GeomFromText('POINT(38.4792808 -97.4696086)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('477221', 'Running Turkey Creek', 'Stream', 'Kansas', 'KS', 'McPherson', 'McPherson SE', 38.274731, -97.6228202, ST_GeomFromText('POINT(38.274731 -97.6228202)', 4326), 38.4166744, -97.4694791, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477228', 'French Creek', 'Stream', 'Kansas', 'KS', 'Marion', 'Waldeck', 38.3930681, -97.130858, ST_GeomFromText('POINT(38.3930681 -97.130858)', 4326), 38.4336197, -97.3255852, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477229', 'Silver Creek', 'Stream', 'Kansas', 'KS', 'Marion', 'Waldeck', 38.4527881, -97.1928026, ST_GeomFromText('POINT(38.4527881 -97.1928026)', 4326), 38.4325089, -97.2986398, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('477240', 'South Cottonwood River', 'Stream', 'Kansas', 'KS', 'Marion', 'Marion', 38.3569589, -97.0705796, ST_GeomFromText('POINT(38.3569589 -97.0705796)', 4326), 38.4061199, -97.3419752, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477241', 'North Cottonwood River', 'Stream', 'Kansas', 'KS', 'Marion', 'Marion', 38.3569589, -97.0705796, ST_GeomFromText('POINT(38.3569589 -97.0705796)', 4326), 38.3850088, -97.3686431, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477252', 'Wildcat Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Lincolnville NE', 38.4094587, -96.7891806, ST_GeomFromText('POINT(38.4094587 -96.7891806)', 4326), 38.3672374, -96.825016, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477254', 'Stribby Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Lincolnville NE', 38.4083476, -96.784736, ST_GeomFromText('POINT(38.4083476 -96.784736)', 4326), 38.5114013, -96.7855671, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477257', 'Collett Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Hymer', 38.3955698, -96.7072338, ST_GeomFromText('POINT(38.3955698 -96.7072338)', 4326), 38.4688889, -96.7469444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477258', 'Mulvane Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Hymer', 38.4389023, -96.6647317, ST_GeomFromText('POINT(38.4389023 -96.6647317)', 4326), 38.5055677, -96.6427856, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477260', 'Prather Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Strong City', 38.3855696, -96.5469512, ST_GeomFromText('POINT(38.3855696 -96.5469512)', 4326), 38.3255708, -96.6208434, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477261', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Strong City', 38.3786252, -96.5469513, ST_GeomFromText('POINT(38.3786252 -96.5469513)', 4326), 38.3250152, -96.6127875, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477266', 'Gannon Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Strong City', 38.4164026, -96.6497317, ST_GeomFromText('POINT(38.4164026 -96.6497317)', 4326), 38.4766793, -96.5922291, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477267', 'Peyton Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Saffordville', 38.381403, -96.4208363, ST_GeomFromText('POINT(38.381403 -96.4208363)', 4326), 38.5005675, -96.5083377, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('477268', 'Bull Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Saffordville', 38.3930696, -96.3788905, ST_GeomFromText('POINT(38.3930696 -96.3788905)', 4326), 38.4619444, -96.4522222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477271', 'Stout Run', 'Stream', 'Kansas', 'KS', 'Chase', 'Gladstone', 38.3680699, -96.483616, ST_GeomFromText('POINT(38.3680699 -96.483616)', 4326), 38.4416797, -96.5100049, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477272', 'Jacob Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Plymouth', 38.3877919, -96.3275001, ST_GeomFromText('POINT(38.3877919 -96.3275001)', 4326), 38.275572, -96.3461122, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477273', 'Beaver Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Plymouth', 38.3964029, -96.3144442, ST_GeomFromText('POINT(38.3964029 -96.3144442)', 4326), 38.4713889, -96.3483333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477276', 'Phenis Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Plymouth', 38.3791811, -96.2630538, ST_GeomFromText('POINT(38.3791811 -96.2630538)', 4326), 38.2822386, -96.2947216, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477283', 'Linck Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Plymouth', 38.4019583, -96.2913879, ST_GeomFromText('POINT(38.4019583 -96.2913879)', 4326), 38.47, -96.3166667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477284', 'Ludy Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Plymouth', 38.3983473, -96.2863878, ST_GeomFromText('POINT(38.3983473 -96.2863878)', 4326), 38.4508333, -96.2983333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477285', 'Moon Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Plymouth', 38.3964029, -96.2736096, ST_GeomFromText('POINT(38.3964029 -96.2736096)', 4326), 38.4719444, -96.3041667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477294', 'Wolf Creek', 'Stream', 'Kansas', 'KS', 'McPherson', 'Buhler', 38.2111209, -97.864772, ST_GeomFromText('POINT(38.2111209 -97.864772)', 4326), 38.3530647, -97.8675484, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477295', 'Blaze Fork', 'Stream', 'Kansas', 'KS', 'Harvey', 'Burrton', 38.1211214, -97.6592113, ST_GeomFromText('POINT(38.1211214 -97.6592113)', 4326), 38.3883421, -97.8561587, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('477318', 'Lake Inman', 'Lake', 'Kansas', 'KS', 'McPherson', 'Halstead NW', 38.2472036, -97.7191383, ST_GeomFromText('POINT(38.2472036 -97.7191383)', 4326), NULL, NULL, '1978-10-13', '2018-09-27', NULL, NULL, NULL),
  ('477325', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Harvey', 'Halstead', 38.1222325, -97.5964315, ST_GeomFromText('POINT(38.1222325 -97.5964315)', 4326), 38.3550084, -97.4567021, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477331', 'West Emma Creek', 'Stream', 'Kansas', 'KS', 'Harvey', 'Sedgwick', 37.9977893, -97.4461504, ST_GeomFromText('POINT(37.9977893 -97.4461504)', 4326), 38.4127853, -97.5030913, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477335', 'Black Kettle Creek', 'Stream', 'Kansas', 'KS', 'Harvey', 'Halstead', 38.0086225, -97.5072628, ST_GeomFromText('POINT(38.0086225 -97.5072628)', 4326), 38.262509, -97.4861493, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477344', 'Stony Brook', 'Stream', 'Kansas', 'KS', 'Marion', 'Lehigh', 38.3150104, -97.2622524, ST_GeomFromText('POINT(38.3150104 -97.2622524)', 4326), 38.2405662, -97.3136445, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477345', 'Middle Emma Creek', 'Stream', 'Kansas', 'KS', 'Harvey', 'Zimmerdale', 38.0358445, -97.423094, ST_GeomFromText('POINT(38.0358445 -97.423094)', 4326), 38.2833432, -97.3572561, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477357', 'Antelope Creek', 'Stream', 'Kansas', 'KS', 'Marion', 'Hillsboro', 38.3236241, -97.1472492, ST_GeomFromText('POINT(38.3236241 -97.1472492)', 4326), 38.2222333, -97.2586431, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477360', 'Spring Branch', 'Stream', 'Kansas', 'KS', 'Marion', 'Hillsboro', 38.3061278, -97.0158575, ST_GeomFromText('POINT(38.3061278 -97.0158575)', 4326), 38.2511246, -97.1641961, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477367', 'Mud Creek', 'Stream', 'Kansas', 'KS', 'Marion', 'Marion', 38.3386271, -97.0219677, ST_GeomFromText('POINT(38.3386271 -97.0219677)', 4326), 38.5705635, -97.1836337, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477374', 'Catlin Creek', 'Stream', 'Kansas', 'KS', 'Marion', 'Lincolnville SW', 38.2683509, -96.973913, ST_GeomFromText('POINT(38.2683509 -96.973913)', 4326), 38.2430695, -97.1500292, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('477375', 'Martin Creek', 'Stream', 'Kansas', 'KS', 'Marion', 'Wonsevu', 38.2408507, -96.872521, ST_GeomFromText('POINT(38.2408507 -96.872521)', 4326), 38.3914041, -96.9194628, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477377', 'Marion County Lake', 'Reservoir', 'Kansas', 'KS', 'Marion', 'Lincolnville SW', 38.3206708, -96.9852588, ST_GeomFromText('POINT(38.3206708 -96.9852588)', 4326), NULL, NULL, '1978-10-13', '2018-07-05', NULL, NULL, NULL),
  ('477382', 'Bruno Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Cedar Point', 38.2602948, -96.8341858, ST_GeomFromText('POINT(38.2602948 -96.8341858)', 4326), 38.3664044, -96.8894626, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477383', 'French Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Cedar Point', 38.273072, -96.7694608, ST_GeomFromText('POINT(38.273072 -96.7694608)', 4326), 38.3622222, -96.8280556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477388', 'Coyne Branch', 'Stream', 'Kansas', 'KS', 'Chase', 'Elmdale', 38.2866828, -96.7430707, ST_GeomFromText('POINT(38.2866828 -96.7430707)', 4326), 38.2239057, -96.7016816, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477391', 'Silver Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Elmdale', 38.3077935, -96.7186249, ST_GeomFromText('POINT(38.3077935 -96.7186249)', 4326), 38.3689038, -96.7875148, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477392', 'Holmes Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Elmdale', 38.3211265, -96.6905681, ST_GeomFromText('POINT(38.3211265 -96.6905681)', 4326), 38.2761111, -96.6783333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477393', 'Gould Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Elmdale', 38.3286264, -96.6908458, ST_GeomFromText('POINT(38.3286264 -96.6908458)', 4326), 38.3713889, -96.7088889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477397', 'Den Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Cottonwood Falls', 38.2655717, -96.5630643, ST_GeomFromText('POINT(38.2655717 -96.5630643)', 4326), 38.3175, -96.6172222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477398', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Cottonwood Falls', 38.2647383, -96.5369523, ST_GeomFromText('POINT(38.2647383 -96.5369523)', 4326), 38.1769616, -96.6536253, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('477399', 'Yeager Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Cottonwood Falls', 38.2569607, -96.5988991, ST_GeomFromText('POINT(38.2569607 -96.5988991)', 4326), 38.3050156, -96.6377887, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477400', 'Folsom Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Matfield Green', 38.2494609, -96.6141776, ST_GeomFromText('POINT(38.2494609 -96.6141776)', 4326), 38.2783494, -96.6677903, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477401', 'Sharpes Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Cottonwood Falls', 38.2733492, -96.5180626, ST_GeomFromText('POINT(38.2733492 -96.5180626)', 4326), 38.1477963, -96.4427842, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477402', 'Buck Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Cottonwood Falls', 38.3714031, -96.525284, ST_GeomFromText('POINT(38.3714031 -96.525284)', 4326), 38.3166667, -96.6111111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477403', 'Chase County State Lake', 'Reservoir', 'Kansas', 'KS', 'Chase', 'Cottonwood Falls', 38.3668086, -96.5873213, ST_GeomFromText('POINT(38.3668086 -96.5873213)', 4326), NULL, NULL, '1978-10-13', '2018-07-26', NULL, NULL, NULL),
  ('477407', 'Bloody Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Gladstone', 38.3702921, -96.4469482, ST_GeomFromText('POINT(38.3702921 -96.4469482)', 4326), 38.2408502, -96.4025033, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477408', 'Little Bloody Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Gladstone', 38.3041822, -96.440004, ST_GeomFromText('POINT(38.3041822 -96.440004)', 4326), 38.2508333, -96.42, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477409', 'Norton Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Gladstone', 38.2955711, -96.4994506, ST_GeomFromText('POINT(38.2955711 -96.4994506)', 4326), 38.235017, -96.4069481, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477410', 'South Fork Cottonwood River', 'Stream', 'Kansas', 'KS', 'Chase', 'Gladstone', 38.3633477, -96.4775047, ST_GeomFromText('POINT(38.3633477 -96.4775047)', 4326), 38.0252975, -96.5316791, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477412', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Gladstone', 38.3739031, -96.4300032, ST_GeomFromText('POINT(38.3739031 -96.4300032)', 4326), 38.32, -96.4041667, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('477415', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Madison', 38.1636311, -96.2099978, ST_GeomFromText('POINT(38.1636311 -96.2099978)', 4326), 38.2866829, -96.3311117, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477416', 'Shaw Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Shaw Creek', 38.180019, -96.2816667, ST_GeomFromText('POINT(38.180019 -96.2816667)', 4326), 38.2639054, -96.3725021, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477425', 'Olpe City Lake', 'Reservoir', 'Kansas', 'KS', 'Lyon', 'Madison', 38.2483294, -96.1849069, ST_GeomFromText('POINT(38.2483294 -96.1849069)', 4326), NULL, NULL, '1978-10-13', '2018-07-05', NULL, NULL, NULL),
  ('477426', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Olpe', 38.3714039, -96.1397169, ST_GeomFromText('POINT(38.3714039 -96.1397169)', 4326), 38.2772222, -96.2480556, '1978-10-13', NULL, 'Official', 'Board Decision', '1974-01-01'),
  ('477430', 'Hoosier Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Emporia SE', 38.2600181, -96.0602701, ST_GeomFromText('POINT(38.2600181 -96.0602701)', 4326), 38.2019641, -96.101105, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477431', 'Harper Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Emporia SE', 38.2583512, -96.0930489, ST_GeomFromText('POINT(38.2583512 -96.0930489)', 4326), 38.2183522, -96.1344393, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477433', 'South Eagle Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Emporia SE', 38.2664069, -96.0411029, ST_GeomFromText('POINT(38.2664069 -96.0411029)', 4326), 38.2169633, -96.1430507, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477434', 'Coal Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Emporia SE', 38.3644598, -96.0816598, ST_GeomFromText('POINT(38.3644598 -96.0816598)', 4326), 38.2836277, -96.2361086, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477436', 'Eagle Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'Hartford', 38.2805741, -95.8769332, ST_GeomFromText('POINT(38.2805741 -95.8769332)', 4326), 38.2619613, -96.2674985, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477437', 'Fourmile Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'Hartford', 38.2677963, -95.9477675, ST_GeomFromText('POINT(38.2677963 -95.9477675)', 4326), 38.1791878, -96.0163803, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('477448', 'Jacobs Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'Ottumwa', 38.272241, -95.866933, ST_GeomFromText('POINT(38.272241 -95.866933)', 4326), 38.2394641, -95.8858222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477455', 'Kennedy Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'Ottumwa', 38.2825187, -95.826099, ST_GeomFromText('POINT(38.2825187 -95.826099)', 4326), 38.3536111, -95.8086111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477456', 'Benedict Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'Ottumwa', 38.2883516, -95.873322, ST_GeomFromText('POINT(38.2883516 -95.873322)', 4326), 38.3577778, -95.8138889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477458', 'Hickory Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'La Cygne', 38.2761344, -94.7885709, ST_GeomFromText('POINT(38.2761344 -94.7885709)', 4326), 38.2877966, -95.7877651, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477459', 'West Hickory Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'Ottumwa', 38.2877966, -95.7877651, ST_GeomFromText('POINT(38.2877966 -95.7877651)', 4326), 38.3611111, -95.7913889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477461', 'Jordan Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'Hartford', 38.351961, -95.8808223, ST_GeomFromText('POINT(38.351961 -95.8808223)', 4326), 38.3961268, -95.8344327, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477465', 'Wolf Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'New Strawn', 38.1472466, -95.7060968, ST_GeomFromText('POINT(38.1472466 -95.7060968)', 4326), 38.3375178, -95.6855411, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477467', 'John Redmond Reservoir', 'Reservoir', 'Kansas', 'KS', 'Coffey', 'Ottumwa', 38.2515043, -95.8029017, ST_GeomFromText('POINT(38.2515043 -95.8029017)', 4326), NULL, NULL, '1984-07-01', '2019-09-11', 'Official', 'Congressional Legislation', '1968-01-01'),
  ('477471', 'School Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'New Strawn', 38.2986301, -95.6355404, ST_GeomFromText('POINT(38.2986301 -95.6355404)', 4326), 38.3594444, -95.6563889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477473', 'East Hickory Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'New Strawn', 38.2877966, -95.7877651, ST_GeomFromText('POINT(38.2877966 -95.7877651)', 4326), 38.3389066, -95.7191529, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('477477', 'Scott Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'Burlington', 38.1830788, -95.6419294, ST_GeomFromText('POINT(38.1830788 -95.6419294)', 4326), 38.2836307, -95.5755394, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477478', 'Long Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'Le Roy', 38.1069707, -95.6677629, ST_GeomFromText('POINT(38.1069707 -95.6677629)', 4326), 38.3661283, -95.6102619, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477479', 'Thomas Creek', 'Stream', 'Kansas', 'KS', 'Anderson', 'Harris', 38.2666877, -95.4022019, ST_GeomFromText('POINT(38.2666877 -95.4022019)', 4326), 38.1650245, -95.5297056, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477485', 'Snake Lake', 'Reservoir', 'Kansas', 'KS', 'Anderson', 'Harris', 38.321224, -95.4449758, ST_GeomFromText('POINT(38.321224 -95.4449758)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('477486', 'Andrews Lake', 'Reservoir', 'Kansas', 'KS', 'Anderson', 'Harris', 38.3364908, -95.4174349, ST_GeomFromText('POINT(38.3364908 -95.4174349)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('477489', 'Elm Creek', 'Stream', 'Kansas', 'KS', 'Anderson', 'Harris', 38.3200195, -95.3833121, ST_GeomFromText('POINT(38.3200195 -95.3833121)', 4326), 38.3566843, -95.5347049, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477492', 'Fish Creek', 'Stream', 'Kansas', 'KS', 'Anderson', 'Garnett West', 38.3422415, -95.3027539, ST_GeomFromText('POINT(38.3422415 -95.3027539)', 4326), 38.2119677, -95.3780349, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477493', 'Buckeye Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Plymouth', 38.3991806, -96.3625011, ST_GeomFromText('POINT(38.3991806 -96.3625011)', 4326), 38.4969564, -96.4713923, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477494', 'East Buckeye Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Saffordville', 38.4286244, -96.3863905, ST_GeomFromText('POINT(38.4286244 -96.3863905)', 4326), 38.5055673, -96.3852789, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477503', 'East Lake', 'Lake', 'Kansas', 'KS', 'Lyon', 'Emporia', 38.4179587, -96.1393993, ST_GeomFromText('POINT(38.4179587 -96.1393993)', 4326), NULL, NULL, '1978-10-13', '2018-07-05', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('477526', 'Cottonwood River', 'Stream', 'Kansas', 'KS', 'Lyon', 'Emporia SE', 38.3858483, -96.0563814, ST_GeomFromText('POINT(38.3858483 -96.0563814)', 4326), 38.3569589, -97.0705796, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477528', 'Plumb Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Lang', 38.4252916, -96.1202721, ST_GeomFromText('POINT(38.4252916 -96.1202721)', 4326), 38.5047342, -96.0919381, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477529', 'Coon Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Lang', 38.4097366, -96.060826, ST_GeomFromText('POINT(38.4097366 -96.060826)', 4326), 38.46, -96.0816667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477537', 'Puleston Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Lebo NW', 38.4955684, -95.8994339, ST_GeomFromText('POINT(38.4955684 -95.8994339)', 4326), 38.4455556, -95.9425, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477538', 'Winnifred Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Lebo NW', 38.4927907, -95.8811002, ST_GeomFromText('POINT(38.4927907 -95.8811002)', 4326), 38.4441667, -95.9044444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477539', 'Bebo Hill', 'Summit', 'Kansas', 'KS', 'Osage', 'Lebo NW', 38.464729, -95.9083152, ST_GeomFromText('POINT(38.464729 -95.9083152)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('477540', 'Logwater Branch', 'Stream', 'Kansas', 'KS', 'Coffey', 'Lebo NW', 38.3511277, -95.8869335, ST_GeomFromText('POINT(38.3511277 -95.8869335)', 4326), 38.4102928, -95.9027671, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477541', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Emporia SE', 38.3725155, -96.0008243, ST_GeomFromText('POINT(38.3725155 -96.0008243)', 4326), 38.4777907, -95.9927688, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477542', 'Plum Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Lebo NW', 38.3441831, -95.9788793, ST_GeomFromText('POINT(38.3441831 -95.9788793)', 4326), 38.4300143, -95.9558237, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477543', 'Troublesome Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'Lebo NW', 38.3055733, -95.9044336, ST_GeomFromText('POINT(38.3055733 -95.9044336)', 4326), 38.4008484, -95.9344343, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('477552', 'Lebo Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'Hartford', 38.2964069, -95.9052669, ST_GeomFromText('POINT(38.2964069 -95.9052669)', 4326), 38.4108486, -95.8444329, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477553', 'Coal Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Lebo', 38.4830689, -95.8516553, ST_GeomFromText('POINT(38.4830689 -95.8516553)', 4326), 38.4341809, -95.9483236, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477556', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'Waverly NW', 38.426682, -95.695819, ST_GeomFromText('POINT(38.426682 -95.695819)', 4326), 38.3780556, -95.6433333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477558', 'Joe Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'Waverly NW', 38.4297374, -95.6960967, ST_GeomFromText('POINT(38.4297374 -95.6960967)', 4326), 38.3905718, -95.7516535, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477559', 'Frog Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Waverly NW', 38.4630699, -95.6858187, ST_GeomFromText('POINT(38.4630699 -95.6858187)', 4326), 38.3639057, -95.7830429, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477565', 'South Branch Tequa Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Waverly', 38.4869581, -95.5185925, ST_GeomFromText('POINT(38.4869581 -95.5185925)', 4326), 38.4202778, -95.5144444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477566', 'Lane Hollow', 'Valley', 'Kansas', 'KS', 'Osage', 'Waverly', 38.4838158, -95.5805095, ST_GeomFromText('POINT(38.4838158 -95.5805095)', 4326), 38.4794411, -95.5619891, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('477571', 'Rocky Run', 'Stream', 'Kansas', 'KS', 'Anderson', 'Harris', 38.373906, -95.4969263, ST_GeomFromText('POINT(38.373906 -95.4969263)', 4326), 38.4066828, -95.5244266, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477572', 'Little Rock Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Waverly', 38.4480704, -95.5866499, ST_GeomFromText('POINT(38.4480704 -95.5866499)', 4326), 38.3969444, -95.5452778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477573', 'East Branch Tequa Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Waverly', 38.4869581, -95.5185925, ST_GeomFromText('POINT(38.4869581 -95.5185925)', 4326), 38.4786254, -95.4463683, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('477574', 'Iantha Creek', 'Stream', 'Kansas', 'KS', 'Anderson', 'Garnett West', 38.3397414, -95.3355327, ST_GeomFromText('POINT(38.3397414 -95.3355327)', 4326), 38.420849, -95.505815, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477579', 'Mill Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Williamsburg', 38.4819583, -95.4905363, ST_GeomFromText('POINT(38.4819583 -95.4905363)', 4326), 38.4827778, -95.4566667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477580', 'Kenoma Creek', 'Stream', 'Kansas', 'KS', 'Anderson', 'Williamsburg', 38.3127973, -95.4127575, ST_GeomFromText('POINT(38.3127973 -95.4127575)', 4326), 38.384739, -95.491926, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477583', 'Sac Creek', 'Stream', 'Kansas', 'KS', 'Anderson', 'Garnett West', 38.3422415, -95.3027539, ST_GeomFromText('POINT(38.3422415 -95.3027539)', 4326), 38.4716812, -95.4397015, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477592', 'Dry Branch', 'Stream', 'Kansas', 'KS', 'Anderson', 'Garnett East', 38.358075, -95.1969175, ST_GeomFromText('POINT(38.358075 -95.1969175)', 4326), 38.4030734, -95.2366404, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477593', 'Richmond Lake', 'Reservoir', 'Kansas', 'KS', 'Franklin', 'Garnett NW', 38.3940807, -95.2247389, ST_GeomFromText('POINT(38.3940807 -95.2247389)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('477594', 'Gilkey Lake', 'Reservoir', 'Kansas', 'KS', 'Franklin', 'Garnett NW', 38.405986, -95.2117251, ST_GeomFromText('POINT(38.405986 -95.2117251)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('477595', 'South Fork Sac Branch', 'Stream', 'Kansas', 'KS', 'Franklin', 'Garnett NW', 38.4269617, -95.1424711, ST_GeomFromText('POINT(38.4269617 -95.1424711)', 4326), 38.4297222, -95.2, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477596', 'North Fork Sac Branch', 'Stream', 'Kansas', 'KS', 'Franklin', 'Garnett NW', 38.4269617, -95.1424711, ST_GeomFromText('POINT(38.4269617 -95.1424711)', 4326), 38.4625, -95.2005556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477605', 'Cockers Branch', 'Stream', 'Kansas', 'KS', 'Miami', 'Lane', 38.4744602, -95.0260787, ST_GeomFromText('POINT(38.4744602 -95.0260787)', 4326), 38.5016815, -95.0519126, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('477606', 'Hahn Branch', 'Stream', 'Kansas', 'KS', 'Franklin', 'Lane', 38.463905, -95.0733023, ST_GeomFromText('POINT(38.463905 -95.0733023)', 4326), 38.4955556, -95.0738889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477607', 'East Branch Mosquito Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Lane', 38.4855709, -95.1038585, ST_GeomFromText('POINT(38.4855709 -95.1038585)', 4326), 38.516681, -95.1166365, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477609', 'Mosquito Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Lane', 38.4527943, -95.0719135, ST_GeomFromText('POINT(38.4527943 -95.0719135)', 4326), 38.4855556, -95.1036111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477610', 'West Branch Mosquito Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Lane', 38.4855709, -95.1038585, ST_GeomFromText('POINT(38.4855709 -95.1038585)', 4326), 38.5125144, -95.1360814, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477611', 'Little Sac Branch', 'Stream', 'Kansas', 'KS', 'Franklin', 'Lane', 38.435943, -95.100789, ST_GeomFromText('POINT(38.435943 -95.100789)', 4326), 38.4691, -95.12776, '1978-10-13', '2010-12-17', NULL, NULL, NULL),
  ('477614', 'Sac Branch', 'Stream', 'Kansas', 'KS', 'Franklin', 'Lane', 38.42616, -95.108213, ST_GeomFromText('POINT(38.42616 -95.108213)', 4326), 38.4269617, -95.1424711, '1978-10-13', '2010-12-17', NULL, NULL, NULL),
  ('477618', 'Mound Creek', 'Stream', 'Kansas', 'KS', 'Miami', 'Osawatomie', 38.392519, -94.9591328, ST_GeomFromText('POINT(38.392519 -94.9591328)', 4326), 38.3889078, -95.0527468, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477627', 'Pottawatomie Creek', 'Stream', 'Kansas', 'KS', 'Miami', 'Osawatomie', 38.4966818, -94.9271865, ST_GeomFromText('POINT(38.4966818 -94.9271865)', 4326), 38.3466845, -95.5763724, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477628', 'Jordan Branch', 'Stream', 'Kansas', 'KS', 'Miami', 'Osawatomie', 38.4758492, -94.911075, ST_GeomFromText('POINT(38.4758492 -94.911075)', 4326), 38.4491667, -94.9727778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477631', 'Hunters Lake', 'Reservoir', 'Kansas', 'KS', 'Miami', 'Fontana', 38.4347423, -94.7874191, ST_GeomFromText('POINT(38.4347423 -94.7874191)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('477635', 'Hushpuckney Creek', 'Stream', 'Kansas', 'KS', 'Miami', 'Fontana', 38.404463, -94.8674626, ST_GeomFromText('POINT(38.404463 -94.8674626)', 4326), 38.4369617, -94.9338538, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477636', 'Middle Creek', 'Stream', 'Kansas', 'KS', 'Linn', 'La Cygne', 38.3666867, -94.8102384, ST_GeomFromText('POINT(38.3666867 -94.8102384)', 4326), 38.3436315, -95.0971927, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477642', 'Elm Creek', 'Stream', 'Kansas', 'KS', 'Miami', 'New Lancaster', 38.4072403, -94.6569008, ST_GeomFromText('POINT(38.4072403 -94.6569008)', 4326), 38.5116807, -94.6305113, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477643', 'La Cygne Lake', 'Reservoir', 'Kansas', 'KS', 'Linn', 'Boicourt', 38.3624653, -94.6548112, ST_GeomFromText('POINT(38.3624653 -94.6548112)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('477644', 'North Sugar Creek', 'Stream', 'Kansas', 'KS', 'Linn', 'Boicourt', 38.277801, -94.7194021, ST_GeomFromText('POINT(38.277801 -94.7194021)', 4326), 38.513347, -94.5938437, '1978-10-13', '2011-11-23', NULL, NULL, NULL),
  ('477649', 'Cedar Creek', 'Stream', 'Kansas', 'KS', 'Anderson', 'Garnett West', 38.3339087, -95.2580304, ST_GeomFromText('POINT(38.3339087 -95.2580304)', 4326), 38.1616916, -95.4716489, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477654', 'Crystal Lake', 'Reservoir', 'Kansas', 'KS', 'Anderson', 'Garnett East', 38.2683291, -95.2460745, ST_GeomFromText('POINT(38.2683291 -95.2460745)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('477656', 'South Fork Pottawatomie Creek', 'Stream', 'Kansas', 'KS', 'Anderson', 'Garnett NW', 38.3772412, -95.1371935, ST_GeomFromText('POINT(38.3772412 -95.1371935)', 4326), 38.1325279, -95.1455293, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477658', 'Lake Garnett', 'Reservoir', 'Kansas', 'KS', 'Anderson', 'Garnett East', 38.3027783, -95.2429731, ST_GeomFromText('POINT(38.3027783 -95.2429731)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('477664', 'Saline Creek', 'Stream', 'Kansas', 'KS', 'Anderson', 'Centerville', 38.212248, -95.0094139, ST_GeomFromText('POINT(38.212248 -95.0094139)', 4326), 38.2508565, -95.1591395, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('477673', 'Davis Creek', 'Stream', 'Kansas', 'KS', 'Linn', 'Parker', 38.2483577, -94.8777414, ST_GeomFromText('POINT(38.2483577 -94.8777414)', 4326), 38.3191885, -94.946355, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477674', 'North Sugar Creek', 'Stream', 'Kansas', 'KS', 'Linn', 'Parker', 38.2391916, -94.9213544, ST_GeomFromText('POINT(38.2391916 -94.9213544)', 4326), 38.278079, -94.9863569, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477677', 'Landers Creek', 'Stream', 'Kansas', 'KS', 'Linn', 'Parker', 38.278079, -94.9863569, ST_GeomFromText('POINT(38.278079 -94.9863569)', 4326), 38.3080772, -95.0985819, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477678', 'Goodrich Creek', 'Stream', 'Kansas', 'KS', 'Linn', 'Parker', 38.278079, -94.9863569, ST_GeomFromText('POINT(38.278079 -94.9863569)', 4326), 38.3208549, -95.0352469, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477691', 'Stave Lake', 'Reservoir', 'Kansas', 'KS', 'Linn', 'La Cygne', 38.362798, -94.8535733, ST_GeomFromText('POINT(38.362798 -94.8535733)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477695', 'Elm Creek', 'Stream', 'Kansas', 'KS', 'Linn', 'La Cygne', 38.359187, -94.8277391, ST_GeomFromText('POINT(38.359187 -94.8277391)', 4326), 38.3402988, -94.9571885, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477696', 'Twin Springs Creek', 'Stream', 'Kansas', 'KS', 'Linn', 'La Cygne', 38.3583536, -94.8507955, ST_GeomFromText('POINT(38.3583536 -94.8507955)', 4326), 38.386686, -94.8680183, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477698', 'Richland Creek', 'Stream', 'Kansas', 'KS', 'Linn', 'La Cygne', 38.2514131, -94.8149609, ST_GeomFromText('POINT(38.2514131 -94.8149609)', 4326), 38.3130556, -94.8530556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477699', 'Turkey Creek', 'Stream', 'Kansas', 'KS', 'Linn', 'La Cygne', 38.2625238, -94.8263502, ST_GeomFromText('POINT(38.2625238 -94.8263502)', 4326), 38.2980556, -94.8275, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477701', 'Graveyard Mound', 'Summit', 'Kansas', 'KS', 'Linn', 'La Cygne', 38.2642673, -94.764031, ST_GeomFromText('POINT(38.2642673 -94.764031)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('477702', 'Big Sugar Creek', 'Stream', 'Kansas', 'KS', 'Linn', 'Pleasanton', 38.2355805, -94.6838459, ST_GeomFromText('POINT(38.2355805 -94.6838459)', 4326), 38.2047484, -94.9983025, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477703', 'Boicourt Lake', 'Reservoir', 'Kansas', 'KS', 'Linn', 'Boicourt', 38.2580814, -94.7302348, ST_GeomFromText('POINT(38.2580814 -94.7302348)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('477709', 'Middle Creek', 'Stream', 'Kansas', 'KS', 'Linn', 'Boicourt', 38.2794675, -94.7216243, ST_GeomFromText('POINT(38.2794675 -94.7216243)', 4326), 38.5439023, -94.6457894, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477714', 'Marais des Cygnes River', 'Stream', 'Missouri', 'MO', 'Vernon', 'Papinville', 38.0275321, -94.2441147, ST_GeomFromText('POINT(38.0275321 -94.2441147)', 4326), 38.5680663, -95.9744351, '1980-10-24', '2019-11-06', 'Official', 'Board Decision', '1971-01-01'),
  ('477715', 'Hog Branch', 'Stream', 'Kansas', 'KS', 'Linn', 'Amoret', 38.2688, -94.56452, ST_GeomFromText('POINT(38.2688 -94.56452)', 4326), 38.3013889, -94.6136111, '1978-10-13', '2011-11-21', NULL, NULL, NULL),
  ('477720', 'Dirks Lake', 'Lake', 'Kansas', 'KS', 'Reno', 'Buhler', 38.1569943, -97.7541125, ST_GeomFromText('POINT(38.1569943 -97.7541125)', 4326), NULL, NULL, '1978-10-13', '2018-09-27', NULL, NULL, NULL),
  ('477726', 'Little Sinkhole', 'Reservoir', 'Kansas', 'KS', 'McPherson', 'Buhler', 38.204116, -97.758304, ST_GeomFromText('POINT(38.204116 -97.758304)', 4326), NULL, NULL, '1978-10-13', '2018-09-27', NULL, NULL, NULL),
  ('477733', 'Big Sinkhole', 'Reservoir', 'Kansas', 'KS', 'McPherson', 'Halstead NW', 38.2027722, -97.7395026, ST_GeomFromText('POINT(38.2027722 -97.7395026)', 4326), NULL, NULL, '1978-10-13', '2018-09-27', NULL, NULL, NULL),
  ('477761', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Harvey', 'Hesston', 38.0430667, -97.4592059, ST_GeomFromText('POINT(38.0430667 -97.4592059)', 4326), 38.1516771, -97.4250375, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477766', 'East Emma Creek', 'Stream', 'Kansas', 'KS', 'Harvey', 'Sedgwick', 37.9977893, -97.4461504, ST_GeomFromText('POINT(37.9977893 -97.4461504)', 4326), 38.2261216, -97.3294785, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('477769', 'Beaver Creek', 'Stream', 'Kansas', 'KS', 'Harvey', 'Newton', 38.1141777, -97.3222573, ST_GeomFromText('POINT(38.1141777 -97.3222573)', 4326), 38.1441782, -97.2422549, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477775', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Marion', 'Peabody NW', 38.1616819, -97.1058633, ST_GeomFromText('POINT(38.1616819 -97.1058633)', 4326), 38.2208457, -97.2061419, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477784', 'Lee Spring', 'Spring', 'Kansas', 'KS', 'Marion', 'Florence', 38.1766847, -96.985027, ST_GeomFromText('POINT(38.1766847 -96.985027)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477785', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Marion', 'Florence', 38.2344621, -96.9344681, ST_GeomFromText('POINT(38.2344621 -96.9344681)', 4326), 38.1202957, -96.923915, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477786', 'Doyle Creek', 'Stream', 'Kansas', 'KS', 'Marion', 'Florence', 38.239462, -96.9139115, ST_GeomFromText('POINT(38.239462 -96.9139115)', 4326), 38.2008444, -97.2633658, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477791', 'Middle Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Wonsevu', 38.151684, -96.7961316, ST_GeomFromText('POINT(38.151684 -96.7961316)', 4326), 38.078351, -96.7239085, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477792', 'Bills Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Wonsevu', 38.151684, -96.7961316, ST_GeomFromText('POINT(38.151684 -96.7961316)', 4326), 38.0758511, -96.8689141, '1978-10-13', NULL, 'Official', 'Board Decision', '1963-01-01'),
  ('477796', 'Turkey Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Wonsevu', 38.189184, -96.8208538, ST_GeomFromText('POINT(38.189184 -96.8208538)', 4326), 38.0889067, -96.8805809, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477801', 'Brush Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Wonsevu', 38.1491839, -96.760297, ST_GeomFromText('POINT(38.1491839 -96.760297)', 4326), 38.1069621, -96.6780725, '1978-10-13', NULL, 'Official', 'Board Decision', '1974-01-01'),
  ('477802', 'Cedar Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Cedar Point', 38.2608501, -96.7930731, ST_GeomFromText('POINT(38.2608501 -96.7930731)', 4326), 38.1514062, -96.7939093, '1978-10-13', NULL, 'Official', 'Board Decision', '1974-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('477805', 'Coon Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Homestead', 38.241406, -96.8122409, ST_GeomFromText('POINT(38.241406 -96.8122409)', 4326), 38.2230724, -96.6875144, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477806', 'Little Cedar Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Matfield Green', 38.1539066, -96.5536217, ST_GeomFromText('POINT(38.1539066 -96.5536217)', 4326), 38.1394631, -96.4305617, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477809', 'Jack Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Matfield Green', 38.1319623, -96.5891793, ST_GeomFromText('POINT(38.1319623 -96.5891793)', 4326), 38.1272399, -96.6408482, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477810', 'Mercer Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Matfield Green', 38.1500178, -96.5558442, ST_GeomFromText('POINT(38.1500178 -96.5558442)', 4326), 38.0791852, -96.5919584, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477811', 'Crocker Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Matfield Green', 38.181684, -96.5627882, ST_GeomFromText('POINT(38.181684 -96.5627882)', 4326), 38.1491842, -96.6450145, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477812', 'Corn Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Matfield Green', 38.1683508, -96.5547326, ST_GeomFromText('POINT(38.1683508 -96.5547326)', 4326), 38.1627955, -96.4966748, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477813', 'Steak Bake Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Matfield Green', 38.1850173, -96.5594547, ST_GeomFromText('POINT(38.1850173 -96.5594547)', 4326), 38.2041667, -96.5275, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477815', 'Kirk Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Matfield Green', 38.2127947, -96.5633432, ST_GeomFromText('POINT(38.2127947 -96.5633432)', 4326), 38.1961111, -96.6205556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477816', 'Nickel Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Matfield Green', 38.2194612, -96.5666764, ST_GeomFromText('POINT(38.2194612 -96.5666764)', 4326), 38.2058333, -96.6147222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477818', 'Baker Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Matfield Green', 38.2364055, -96.5602869, ST_GeomFromText('POINT(38.2364055 -96.5602869)', 4326), 38.2311111, -96.5972222, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('477819', 'Shaw Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Thrall NW', 38.140018, -96.5288988, ST_GeomFromText('POINT(38.140018 -96.5288988)', 4326), 38.1419629, -96.4519514, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477820', 'Bull Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Thrall NW', 38.156963, -96.3972268, ST_GeomFromText('POINT(38.156963 -96.3972268)', 4326), 38.1452778, -96.4319444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477821', 'Camp Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Thrall NW', 38.1869624, -96.4013931, ST_GeomFromText('POINT(38.1869624 -96.4013931)', 4326), 38.1936111, -96.4455556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477822', 'East Branch Sharpes Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Thrall NW', 38.2250167, -96.5033406, ST_GeomFromText('POINT(38.2250167 -96.5033406)', 4326), 38.2283503, -96.4338935, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477824', 'Wolf Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Shaw Creek', 38.1880742, -96.3133344, ST_GeomFromText('POINT(38.1880742 -96.3133344)', 4326), 38.2358503, -96.395281, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477825', 'South Branch Verdigris River', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Madison', 38.1522429, -96.166941, ST_GeomFromText('POINT(38.1522429 -96.166941)', 4326), 38.1286306, -96.3669484, '1978-10-13', NULL, 'Official', 'Board Decision', '1974-01-01'),
  ('477826', 'North Branch Verdigris River', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Madison', 38.1522429, -96.166941, ST_GeomFromText('POINT(38.1522429 -96.166941)', 4326), 38.0950204, -96.3558374, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477827', 'Kelly Branch', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Madison', 38.1480766, -96.1561073, ST_GeomFromText('POINT(38.1480766 -96.1561073)', 4326), 38.2183333, -96.1655556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477831', 'Moon Branch', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Madison', 38.1680756, -96.1949972, ST_GeomFromText('POINT(38.1680756 -96.1949972)', 4326), 38.2533505, -96.2572204, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477836', 'Tate Branch Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Madison', 38.1491879, -96.1272174, ST_GeomFromText('POINT(38.1491879 -96.1272174)', 4326), 38.2119636, -96.1197166, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('477841', 'Birk Lake', 'Reservoir', 'Kansas', 'KS', 'Coffey', 'Gridley NW', 38.1534563, -95.9019558, ST_GeomFromText('POINT(38.1534563 -95.9019558)', 4326), NULL, NULL, '1978-10-13', '2018-07-05', NULL, NULL, NULL),
  ('477845', 'Buffalo Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'John Redmond Dam', 38.230576, -95.8163766, ST_GeomFromText('POINT(38.230576 -95.8163766)', 4326), 38.2402778, -95.8675, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477850', 'Otter Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'John Redmond Dam', 38.2197431, -95.8113765, ST_GeomFromText('POINT(38.2197431 -95.8113765)', 4326), 38.190299, -95.946101, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477851', 'North Big Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'Le Roy', 38.0947487, -95.7266524, ST_GeomFromText('POINT(38.0947487 -95.7266524)', 4326), 38.1650217, -96.0122136, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477857', 'Mathias Lake', 'Lake', 'Kansas', 'KS', 'Coffey', 'Burlington', 38.1786717, -95.7171703, ST_GeomFromText('POINT(38.1786717 -95.7171703)', 4326), NULL, NULL, '1978-10-13', '2018-07-05', NULL, NULL, NULL),
  ('477859', 'Jackrabbit Hill', 'Summit', 'Kansas', 'KS', 'Coffey', 'Burlington', 38.2341806, -95.7291453, ST_GeomFromText('POINT(38.2341806 -95.7291453)', 4326), NULL, NULL, '1978-10-13', '2021-01-01', NULL, NULL, NULL),
  ('477860', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'Burlington', 38.1900225, -95.7341529, ST_GeomFromText('POINT(38.1900225 -95.7341529)', 4326), 38.1894664, -95.8263767, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477867', 'Silver Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'Aliceville', 38.1444695, -95.592762, ST_GeomFromText('POINT(38.1444695 -95.592762)', 4326), 38.1694444, -95.5441667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477868', 'Tauckett Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'Aliceville', 38.1714129, -95.5830397, ST_GeomFromText('POINT(38.1714129 -95.5830397)', 4326), 38.1988889, -95.5338889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477872', 'Badger Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'Aliceville', 38.149469, -95.6547072, ST_GeomFromText('POINT(38.149469 -95.6547072)', 4326), 38.1978006, -95.6019289, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('477876', 'Spencer Lake', 'Reservoir', 'Kansas', 'KS', 'Anderson', 'Westphalia', 38.2095204, -95.4003875, ST_GeomFromText('POINT(38.2095204 -95.4003875)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('477878', 'Cherry Creek', 'Stream', 'Kansas', 'KS', 'Anderson', 'Westphalia', 38.2408548, -95.4716487, ST_GeomFromText('POINT(38.2408548 -95.4716487)', 4326), 38.2150223, -95.5299833, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477879', 'Lake Welda', 'Reservoir', 'Kansas', 'KS', 'Anderson', 'Welda', 38.1641008, -95.2605607, ST_GeomFromText('POINT(38.1641008 -95.2605607)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('477880', 'Bradshaw Creek', 'Stream', 'Kansas', 'KS', 'Anderson', 'Welda', 38.2111351, -95.2544202, ST_GeomFromText('POINT(38.2111351 -95.2544202)', 4326), 38.1472222, -95.2758333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477888', 'Skunk Branch', 'Stream', 'Kansas', 'KS', 'Anderson', 'Welda', 38.2339119, -95.2660869, ST_GeomFromText('POINT(38.2339119 -95.2660869)', 4326), 38.1869444, -95.2772222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477889', 'Garrison Lake', 'Reservoir', 'Kansas', 'KS', 'Anderson', 'Bush City', 38.1985253, -95.1359598, ST_GeomFromText('POINT(38.1985253 -95.1359598)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('477895', 'Little Gus Creek', 'Stream', 'Kansas', 'KS', 'Linn', 'Centerville', 38.136695, -95.0502489, ST_GeomFromText('POINT(38.136695 -95.0502489)', 4326), 38.1294726, -94.1443899, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477896', 'South Fork Sugar Creek', 'Stream', 'Kansas', 'KS', 'Linn', 'Mound City NW', 38.2047484, -94.9983025, ST_GeomFromText('POINT(38.2047484 -94.9983025)', 4326), 38.0872521, -95.0908061, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477899', 'Sugar Creek', 'Stream', 'Kansas', 'KS', 'Linn', 'Mound City NW', 38.2047484, -94.9983025, ST_GeomFromText('POINT(38.2047484 -94.9983025)', 4326), 38.2450233, -95.1780289, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477900', 'North Fork Little Sugar Creek', 'Stream', 'Kansas', 'KS', 'Linn', 'Mound City NW', 38.139751, -94.9146885, ST_GeomFromText('POINT(38.139751 -94.9146885)', 4326), 38.091697, -94.9844141, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('477901', 'South Fork Little Sugar Creek', 'Stream', 'Kansas', 'KS', 'Linn', 'Mound City NW', 38.139751, -94.9146885, ST_GeomFromText('POINT(38.139751 -94.9146885)', 4326), 38.078642, -94.9638578, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477902', 'Buck Creek', 'Stream', 'Kansas', 'KS', 'Linn', 'Mound City NW', 38.1389178, -94.887743, ST_GeomFromText('POINT(38.1389178 -94.887743)', 4326), 38.0950305, -94.9296895, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477903', 'Doe Creek', 'Stream', 'Kansas', 'KS', 'Linn', 'Mound City NW', 38.1333625, -94.8871874, ST_GeomFromText('POINT(38.1333625 -94.8871874)', 4326), 38.1100302, -94.8660757, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477904', 'Alexander Branch', 'Stream', 'Kansas', 'KS', 'Linn', 'Mound City NW', 38.1450287, -94.8677421, ST_GeomFromText('POINT(38.1450287 -94.8677421)', 4326), 38.1819715, -94.9130214, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477907', 'Coffeebean Creek', 'Stream', 'Kansas', 'KS', 'Linn', 'Mound City NW', 38.2025263, -94.9616343, ST_GeomFromText('POINT(38.2025263 -94.9616343)', 4326), 38.1494444, -94.9830556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477915', 'Hazel Branch', 'Stream', 'Kansas', 'KS', 'Linn', 'Mound City', 38.2464133, -94.8010714, ST_GeomFromText('POINT(38.2464133 -94.8010714)', 4326), 38.1969444, -94.8455556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477918', 'Turkey Creek', 'Stream', 'Kansas', 'KS', 'Linn', 'Mound City', 38.2353028, -94.8469069, ST_GeomFromText('POINT(38.2353028 -94.8469069)', 4326), 38.1872491, -94.910799, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477927', 'Pleasanton Lake', 'Reservoir', 'Kansas', 'KS', 'Linn', 'Pleasanton', 38.1740962, -94.7288995, ST_GeomFromText('POINT(38.1740962 -94.7288995)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('477935', 'Mine Creek', 'Stream', 'Missouri', 'MO', 'Bates', 'Worland', 38.1983598, -94.5810662, ST_GeomFromText('POINT(38.1983598 -94.5810662)', 4326), 38.1075306, -94.8019066, '1978-10-13', '2012-02-09', NULL, NULL, NULL),
  ('477936', 'Muddy Creek', 'Stream', 'Kansas', 'KS', 'Linn', 'Pleasanton', 38.2233587, -94.669679, ST_GeomFromText('POINT(38.2233587 -94.669679)', 4326), 38.1761388, -94.7521814, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('477937', 'Little Sugar Creek', 'Stream', 'Kansas', 'KS', 'Linn', 'Pleasanton', 38.2408579, -94.7427359, ST_GeomFromText('POINT(38.2408579 -94.7427359)', 4326), 38.139751, -94.9146885, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477944', 'Panorama Lake', 'Reservoir', 'Kansas', 'KS', 'Reno', 'Hutchinson', 38.0959229, -97.8912364, ST_GeomFromText('POINT(38.0959229 -97.8912364)', 4326), NULL, NULL, '1978-10-13', '2018-09-27', NULL, NULL, NULL),
  ('477975', 'Brandy Lake', 'Reservoir', 'Kansas', 'KS', 'Reno', 'Tescott SE', 39.0250022, -97.7897615, ST_GeomFromText('POINT(39.0250022 -97.7897615)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('477979', 'Magwire Lake', 'Lake', 'Kansas', 'KS', 'Reno', 'Hutchinson SE', 38.0147336, -97.8383834, ST_GeomFromText('POINT(38.0147336 -97.8383834)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478023', 'Walnut Creek', 'Stream', 'Kansas', 'KS', 'Harvey', 'Elbing', 38.0291795, -97.197256, ST_GeomFromText('POINT(38.0291795 -97.197256)', 4326), 38.0647335, -97.264201, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478040', 'School Branch', 'Stream', 'Kansas', 'KS', 'Butler', 'Cassoday', 38.006407, -96.7233548, ST_GeomFromText('POINT(38.006407 -96.7233548)', 4326), 38.0833333, -96.7069444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478043', 'Fox Lake', 'Reservoir', 'Kansas', 'KS', 'Butler', 'Matfield Green SE', 38.0368661, -96.6128962, ST_GeomFromText('POINT(38.0368661 -96.6128962)', 4326), NULL, NULL, '1978-10-13', '2018-09-27', NULL, NULL, NULL),
  ('478046', 'Thurman Creek', 'Stream', 'Kansas', 'KS', 'Chase', 'Matfield Green SE', 38.1041852, -96.5416779, ST_GeomFromText('POINT(38.1041852 -96.5416779)', 4326), 38.0325208, -96.4341749, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478047', 'Texaco Hill', 'Summit', 'Kansas', 'KS', 'Chase', 'Teterville', 38.0897358, -96.3797194, ST_GeomFromText('POINT(38.0897358 -96.3797194)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('478049', 'Cities Service Lake', 'Reservoir', 'Kansas', 'KS', 'Greenwood', 'Teterville', 38.0624375, -96.3843727, ST_GeomFromText('POINT(38.0624375 -96.3843727)', 4326), NULL, NULL, '1978-10-13', '2018-07-05', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('478052', 'Sinclair Lake', 'Reservoir', 'Kansas', 'KS', 'Greenwood', 'Thrall', 38.0037675, -96.3303632, ST_GeomFromText('POINT(38.0037675 -96.3303632)', 4326), NULL, NULL, '1978-10-13', '2018-07-05', NULL, NULL, NULL),
  ('478058', 'Bernard Branch', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Thrall', 38.1227983, -96.2758339, ST_GeomFromText('POINT(38.1227983 -96.2758339)', 4326), 38.09, -96.3486111, '1978-10-13', NULL, 'Official', 'Board Decision', '1974-01-01'),
  ('478059', 'Indian Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Madison SW', 38.000858, -96.2122219, ST_GeomFromText('POINT(38.000858 -96.2122219)', 4326), 38.0622443, -96.2772236, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478063', 'Long Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Lamont', 38.0644693, -96.0502711, ST_GeomFromText('POINT(38.0644693 -96.0502711)', 4326), 38.1411339, -95.9891576, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478064', 'Van Horn Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Lamont', 38.0572473, -96.0511045, ST_GeomFromText('POINT(38.0572473 -96.0511045)', 4326), 38.063635, -96.1302739, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478065', 'Holderman Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Lamont', 38.1230779, -96.0983279, ST_GeomFromText('POINT(38.1230779 -96.0983279)', 4326), 38.1122438, -96.1986091, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478071', 'Gridley Lake', 'Reservoir', 'Kansas', 'KS', 'Coffey', 'Gridley', 38.0958586, -95.8766554, ST_GeomFromText('POINT(38.0958586 -95.8766554)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478074', 'Duck Creek', 'Stream', 'Kansas', 'KS', 'Woodson', 'Le Roy', 38.0175295, -95.7499856, ST_GeomFromText('POINT(38.0175295 -95.7499856)', 4326), 37.999751, -95.8986004, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478076', 'Dinner Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'Gridley SE', 38.06336, -95.8563772, ST_GeomFromText('POINT(38.06336 -95.8563772)', 4326), 38.1203014, -95.9791575, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478077', 'Varvel Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'Gridley SE', 38.0689156, -95.8297099, ST_GeomFromText('POINT(38.0689156 -95.8297099)', 4326), 38.1153022, -95.8988781, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('478081', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Woodson', 'Neosho Falls', 38.0314188, -95.6055399, ST_GeomFromText('POINT(38.0314188 -95.6055399)', 4326), 38.0055863, -95.6497069, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478082', 'Duck Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'Le Roy', 38.0625282, -95.6577627, ST_GeomFromText('POINT(38.0625282 -95.6577627)', 4326), 38.0341667, -95.6977778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478088', 'South Big Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'Le Roy', 38.0947487, -95.7266524, ST_GeomFromText('POINT(38.0947487 -95.7266524)', 4326), 37.9872511, -95.9413793, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478089', 'Big Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'Le Roy', 38.0708611, -95.6694295, ST_GeomFromText('POINT(38.0708611 -95.6694295)', 4326), 38.0947222, -95.7263889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478096', 'Crooked Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'Neosho Falls', 38.0616952, -95.6247067, ST_GeomFromText('POINT(38.0616952 -95.6247067)', 4326), 38.2605759, -95.5674838, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478097', 'Bowmans Branch', 'Stream', 'Kansas', 'KS', 'Coffey', 'Neosho Falls', 38.1172484, -95.60554, ST_GeomFromText('POINT(38.1172484 -95.60554)', 4326), 38.1653023, -95.5352613, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478101', 'Circle Lake', 'Lake', 'Kansas', 'KS', 'Woodson', 'Neosho Falls', 38.021029, -95.5520877, ST_GeomFromText('POINT(38.021029 -95.5520877)', 4326), NULL, NULL, '1978-10-13', '2018-07-05', NULL, NULL, NULL),
  ('478104', 'Twiss Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'Neosho Falls', 38.027808, -95.5758174, ST_GeomFromText('POINT(38.027808 -95.5758174)', 4326), 38.1219444, -95.5236111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478106', 'Loss Creek', 'Stream', 'Kansas', 'KS', 'Coffey', 'Neosho Falls', 38.0547512, -95.5794286, ST_GeomFromText('POINT(38.0547512 -95.5794286)', 4326), 38.1141667, -95.5608333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478108', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Woodson', 'Neosho Falls', 38.0069757, -95.5499838, ST_GeomFromText('POINT(38.0069757 -95.5499838)', 4326), 38.1233333, -95.5166667, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('478110', 'Crystal Lake', 'Reservoir', 'Kansas', 'KS', 'Allen', 'Geneva', 38.00031, -95.3852587, ST_GeomFromText('POINT(38.00031 -95.3852587)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478112', 'Carlyle Creek', 'Stream', 'Kansas', 'KS', 'Allen', 'Iola', 37.9839218, -95.3927589, ST_GeomFromText('POINT(37.9839218 -95.3927589)', 4326), 38.0519745, -95.3747026, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478113', 'Cottonwood Creek', 'Stream', 'Kansas', 'KS', 'Allen', 'Geneva', 37.9655893, -95.4147038, ST_GeomFromText('POINT(37.9655893 -95.4147038)', 4326), 38.0216979, -95.416926, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478114', 'Martin Creek', 'Stream', 'Kansas', 'KS', 'Allen', 'Iola', 37.9819772, -95.4794273, ST_GeomFromText('POINT(37.9819772 -95.4794273)', 4326), 38.095306, -95.3747023, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478115', 'Indian Creek', 'Stream', 'Kansas', 'KS', 'Allen', 'Piqua', 37.9800328, -95.5005388, ST_GeomFromText('POINT(37.9800328 -95.5005388)', 4326), 38.1428036, -95.4627599, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478116', 'Little Indian Creek', 'Stream', 'Kansas', 'KS', 'Anderson', 'Geneva', 38.0639181, -95.4805384, ST_GeomFromText('POINT(38.0639181 -95.4805384)', 4326), 38.1558582, -95.5294279, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478127', 'Deer Creek', 'Stream', 'Kansas', 'KS', 'Allen', 'Iola', 37.9508676, -95.4424821, ST_GeomFromText('POINT(37.9508676 -95.4424821)', 4326), 38.1205839, -95.1563631, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478128', 'Little Deer Creek', 'Stream', 'Kansas', 'KS', 'Allen', 'La Harpe', 37.9994768, -95.3469246, ST_GeomFromText('POINT(37.9994768 -95.3469246)', 4326), 38.0397533, -95.228866, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478130', 'Mildred Lake', 'Reservoir', 'Kansas', 'KS', 'Allen', 'Kincaid', 38.0267518, -95.1802351, ST_GeomFromText('POINT(38.0267518 -95.1802351)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('478131', 'Coal Creek', 'Stream', 'Kansas', 'KS', 'Allen', 'Kincaid', 38.0375314, -95.1746978, ST_GeomFromText('POINT(38.0375314 -95.1746978)', 4326), 37.9867, -95.2174773, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('478141', 'North Fork Little Osage River', 'Stream', 'Kansas', 'KS', 'Allen', 'Blue Mound', 38.0258655, -95.0902511, ST_GeomFromText('POINT(38.0258655 -95.0902511)', 4326), 38.0753077, -95.1849754, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478142', 'Middle Fork Little Osage River', 'Stream', 'Kansas', 'KS', 'Allen', 'Blue Mound', 38.0258655, -95.0902511, ST_GeomFromText('POINT(38.0258655 -95.0902511)', 4326), 38.046142, -95.2152544, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478143', 'South Fork Little Osage River', 'Stream', 'Kansas', 'KS', 'Crawford', 'Blue Mound', 38.0061441, -95.0774732, ST_GeomFromText('POINT(38.0061441 -95.0774732)', 4326), 37.9511459, -95.2058108, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478150', 'Blue Mound Reservoir', 'Reservoir', 'Kansas', 'KS', 'Linn', 'Blue Mound', 38.1046391, -95.0264655, ST_GeomFromText('POINT(38.1046391 -95.0264655)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('478153', 'Baker Branch', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Mapleton', 38.0044788, -94.8888556, ST_GeomFromText('POINT(38.0044788 -94.8888556)', 4326), 38.0438889, -94.8902778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478154', 'Owl Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Mapleton', 38.0189219, -94.9902483, ST_GeomFromText('POINT(38.0189219 -94.9902483)', 4326), 38.0769444, -94.9888889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478155', 'Bell Branch', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Mapleton', 38.0125335, -94.960525, ST_GeomFromText('POINT(38.0125335 -94.960525)', 4326), 38.0633333, -94.9427778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478156', 'Bradley Lake', 'Reservoir', 'Kansas', 'KS', 'Linn', 'Mapleton', 38.0566629, -94.9939285, ST_GeomFromText('POINT(38.0566629 -94.9939285)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('478158', 'Johnson Lake', 'Reservoir', 'Kansas', 'KS', 'Linn', 'Mapleton', 38.1058018, -94.9775657, ST_GeomFromText('POINT(38.1058018 -94.9775657)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('478161', 'Lost Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Mantey', 38.0175347, -94.7982964, ST_GeomFromText('POINT(38.0175347 -94.7982964)', 4326), 38.075309, -94.9508018, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('478164', 'Elk Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Mantey', 38.0214236, -94.7719065, ST_GeomFromText('POINT(38.0214236 -94.7719065)', 4326), 38.1038889, -94.8572222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478167', 'Indian Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Prescott', 38.00198, -94.6410687, ST_GeomFromText('POINT(38.00198 -94.6410687)', 4326), 38.1080556, -94.6972222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478168', 'Laberdie Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Prescott', 38.0197571, -94.7224602, ST_GeomFromText('POINT(38.0197571 -94.7224602)', 4326), 38.0286111, -94.7252778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478169', 'East Laberdie Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Prescott', 38.0286456, -94.7255158, ST_GeomFromText('POINT(38.0286456 -94.7255158)', 4326), 38.1063889, -94.7011111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478170', 'West Laberdie Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Prescott', 38.0286456, -94.7255158, ST_GeomFromText('POINT(38.0286456 -94.7255158)', 4326), 38.0980869, -94.7616273, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478182', 'Walnut Creek', 'Stream', 'Missouri', 'MO', 'Bates', 'New Home', 38.1947487, -94.4810641, ST_GeomFromText('POINT(38.1947487 -94.4810641)', 4326), 38.1125305, -94.6680133, '1980-10-24', NULL, NULL, NULL, NULL),
  ('478190', 'Little Soldier Creek', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Grove', 39.1266657, -95.7949849, ST_GeomFromText('POINT(39.1266657 -95.7949849)', 4326), 39.4133284, -95.8399871, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478191', 'Banner Creek', 'Stream', 'Kansas', 'KS', 'Jackson', 'Holton', 39.4713838, -95.7183163, ST_GeomFromText('POINT(39.4713838 -95.7183163)', 4326), 39.4508282, -95.8830445, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478203', 'North Cedar Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Holton SE', 39.3422199, -95.5633114, ST_GeomFromText('POINT(39.3422199 -95.5633114)', 4326), 39.392218, -95.7030379, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478204', 'Morgan Creek', 'Stream', 'Kansas', 'KS', 'Jackson', 'Holton', 39.387219, -95.6280357, ST_GeomFromText('POINT(39.387219 -95.6280357)', 4326), 39.38, -95.6672222, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('478206', 'South Cedar Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Holton SE', 39.3422199, -95.5633114, ST_GeomFromText('POINT(39.3422199 -95.5633114)', 4326), 39.4024952, -95.7869296, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478207', 'Bills Creek', 'Stream', 'Kansas', 'KS', 'Jackson', 'Holton', 39.4688849, -95.6485921, ST_GeomFromText('POINT(39.4688849 -95.6485921)', 4326), 39.4055508, -95.7883185, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478210', 'Elk Horn Lake', 'Reservoir', 'Kansas', 'KS', 'Jackson', 'Holton', 39.4727722, -95.7424836, ST_GeomFromText('POINT(39.4727722 -95.7424836)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478212', 'Prairie Lake', 'Reservoir', 'Kansas', 'KS', 'Jackson', 'Holton', 39.4898803, -95.6885041, ST_GeomFromText('POINT(39.4898803 -95.6885041)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('478215', 'Nebo Creek', 'Stream', 'Kansas', 'KS', 'Atchison', 'Holton', 39.4491646, -95.5391445, ST_GeomFromText('POINT(39.4491646 -95.5391445)', 4326), 39.4252741, -95.6474808, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478216', 'Catamount Creek', 'Stream', 'Kansas', 'KS', 'Atchison', 'Arrington', 39.4208315, -95.5169215, ST_GeomFromText('POINT(39.4208315 -95.5169215)', 4326), 39.3930556, -95.5716667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478224', 'North Walnut Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Half Mound', 39.3872205, -95.3927518, ST_GeomFromText('POINT(39.3872205 -95.3927518)', 4326), 39.4416667, -95.4269444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478229', 'Coal Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Half Mound', 39.3844427, -95.4941429, ST_GeomFromText('POINT(39.3844427 -95.4941429)', 4326), 39.5063873, -95.4355312, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478233', 'Johannes Branch', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Half Mound', 39.386665, -95.3894184, ST_GeomFromText('POINT(39.386665 -95.3894184)', 4326), 39.4266667, -95.3769444, '1978-10-13', NULL, 'Official', 'Board Decision', '1961-01-01'),
  ('478234', 'Walnut Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Valley Falls', 39.3508316, -95.4560863, ST_GeomFromText('POINT(39.3508316 -95.4560863)', 4326), 39.4044427, -95.3363617, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('478244', 'Crooked Creek', 'Stream', 'Kansas', 'KS', 'Atchison', 'Potter', 39.4586087, -95.1902473, ST_GeomFromText('POINT(39.4586087 -95.1902473)', 4326), 39.2897209, -95.3205277, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478245', 'Hulls Branch', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Nortonville', 39.3980539, -95.259971, ST_GeomFromText('POINT(39.3980539 -95.259971)', 4326), 39.3377765, -95.2441373, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478246', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Atchison', 'Nortonville', 39.4736087, -95.2260815, ST_GeomFromText('POINT(39.4736087 -95.2260815)', 4326), 39.4430537, -95.3213615, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478248', 'Mooney Creek', 'Stream', 'Kansas', 'KS', 'Atchison', 'Potter', 39.4291647, -95.2369151, ST_GeomFromText('POINT(39.4291647 -95.2369151)', 4326), 39.3547208, -95.2127477, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478249', 'Howard Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Potter', 39.4113871, -95.2444152, ST_GeomFromText('POINT(39.4113871 -95.2444152)', 4326), 39.3561097, -95.225248, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478265', 'Branch Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Oak Mills', 39.3991647, -95.1049674, ST_GeomFromText('POINT(39.3991647 -95.1049674)', 4326), 39.4152778, -95.0641667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478269', 'Plum Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Oak Mills', 39.3841651, -94.9477418, ST_GeomFromText('POINT(39.3841651 -94.9477418)', 4326), 39.4022201, -95.0599664, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478270', 'Little Plum Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Soldier Creek NW', 39.3933288, -95.9894371, ST_GeomFromText('POINT(39.3933288 -95.9894371)', 4326), 39.4102755, -95.0463549, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478272', 'Big Eight Lake', 'Reservoir', 'Kansas', 'KS', 'Atchison', 'Oak Mills', 39.4243218, -95.0811749, ST_GeomFromText('POINT(39.4243218 -95.0811749)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('478273', 'Little Walnut Creek', 'Stream', 'Kansas', 'KS', 'Atchison', 'Oak Mills', 39.45833, -95.0321877, ST_GeomFromText('POINT(39.45833 -95.0321877)', 4326), 39.4341667, -95.0777778, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('478277', 'Owl Creek', 'Stream', 'Kansas', 'KS', 'Atchison', 'Oak Mills', 39.4758298, -95.0530216, ST_GeomFromText('POINT(39.4758298 -95.0530216)', 4326), 39.4369444, -95.0908333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478282', 'Salt Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Weston', 39.3888872, -94.9432973, ST_GeomFromText('POINT(39.3888872 -94.9432973)', 4326), 39.3008331, -95.0385772, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478284', 'Crow Creek', 'Stream', 'Kansas', 'KS', 'Jackson', 'Soldier Creek SW', 39.321385, -95.907767, ST_GeomFromText('POINT(39.321385 -95.907767)', 4326), 39.4130508, -95.8499875, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478288', 'South Branch Soldier Creek', 'Stream', 'Kansas', 'KS', 'Jackson', 'Soldier Creek SW', 39.3152739, -95.9047112, ST_GeomFromText('POINT(39.3152739 -95.9047112)', 4326), 39.3605513, -95.8383203, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478291', 'James Creek', 'Stream', 'Kansas', 'KS', 'Jackson', 'Soldier Creek SW', 39.2572188, -95.8885993, ST_GeomFromText('POINT(39.2572188 -95.8885993)', 4326), 39.332496, -95.8219307, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478293', 'Salt Creek', 'Stream', 'Kansas', 'KS', 'Jackson', 'Soldier Creek SW', 39.2369412, -95.9677685, ST_GeomFromText('POINT(39.2369412 -95.9677685)', 4326), 39.3047184, -95.9461015, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478294', 'Sullivan Creek', 'Stream', 'Kansas', 'KS', 'Jackson', 'Soldier Creek SW', 39.2466633, -95.9883249, ST_GeomFromText('POINT(39.2466633 -95.9883249)', 4326), 39.3433292, -95.964158, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478300', 'Big Elm Creek', 'Stream', 'Kansas', 'KS', 'Jackson', 'Soldier Creek SE', 39.2744411, -95.7583172, ST_GeomFromText('POINT(39.2744411 -95.7583172)', 4326), 39.3452738, -95.7335942, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478301', 'Walnut Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Soldier Creek SE', 39.1605539, -95.8558202, ST_GeomFromText('POINT(39.1605539 -95.8558202)', 4326), 39.2805521, -95.8080411, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478302', 'Dutch Creek', 'Stream', 'Kansas', 'KS', 'Jackson', 'Rossville', 39.2427746, -95.8844325, ST_GeomFromText('POINT(39.2427746 -95.8844325)', 4326), 39.3130518, -95.825264, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('478312', 'Little Elm Creek', 'Stream', 'Kansas', 'KS', 'Jackson', 'Mayetta', 39.2813855, -95.7510947, ST_GeomFromText('POINT(39.2813855 -95.7510947)', 4326), 39.3127743, -95.7147047, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478315', 'East Fork Muddy Creek', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Meriden', 39.2158313, -95.6155348, ST_GeomFromText('POINT(39.2158313 -95.6155348)', 4326), 39.302219, -95.6944263, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478316', 'Middle Fork Muddy Creek', 'Stream', 'Kansas', 'KS', 'Jackson', 'Mayetta', 39.2249978, -95.6372021, ST_GeomFromText('POINT(39.2249978 -95.6372021)', 4326), 39.2630529, -95.653036, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478317', 'West Fork Muddy Creek', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Meriden', 39.2158313, -95.6155348, ST_GeomFromText('POINT(39.2158313 -95.6155348)', 4326), 39.29833, -95.7105379, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478319', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Jackson', 'Mayetta', 39.2502748, -95.7530392, ST_GeomFromText('POINT(39.2502748 -95.7530392)', 4326), 39.2641636, -95.720816, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478321', 'Booker Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Holton SE', 39.3702751, -95.5955347, ST_GeomFromText('POINT(39.3702751 -95.5955347)', 4326), 39.3549969, -95.6302578, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478322', 'Cedar Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Holton SE', 39.3486094, -95.4660865, ST_GeomFromText('POINT(39.3486094 -95.4660865)', 4326), 39.3422199, -95.5633114, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478324', 'Peter Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Holton SE', 39.3486094, -95.4621975, ST_GeomFromText('POINT(39.3486094 -95.4621975)', 4326), 39.3094424, -95.5244211, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478325', 'Duck Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Holton SE', 39.2608315, -95.4752528, ST_GeomFromText('POINT(39.2608315 -95.4752528)', 4326), 39.2783312, -95.5430326, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478326', 'French Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Valley Falls', 39.2572204, -95.4755306, ST_GeomFromText('POINT(39.2572204 -95.4755306)', 4326), 39.2249983, -95.5108093, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('478327', 'Tick Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Meriden', 39.1988873, -95.554144, ST_GeomFromText('POINT(39.1988873 -95.554144)', 4326), 39.2713868, -95.5474771, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478328', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Meriden', 39.1674989, -95.5180319, ST_GeomFromText('POINT(39.1674989 -95.5180319)', 4326), 39.2888864, -95.6066457, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478333', 'Bowies Branch', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Valley Falls', 39.2922206, -95.4296965, ST_GeomFromText('POINT(39.2922206 -95.4296965)', 4326), 39.3013889, -95.3794444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478335', 'Fishpond Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Ozawkie', 39.2349986, -95.4094182, ST_GeomFromText('POINT(39.2349986 -95.4094182)', 4326), 39.2944431, -95.3308057, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478338', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Valley Falls', 39.3174984, -95.4385857, ST_GeomFromText('POINT(39.3174984 -95.4385857)', 4326), 39.3280541, -95.3419171, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478339', 'Brush Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Valley Falls', 39.3361094, -95.4474749, ST_GeomFromText('POINT(39.3361094 -95.4474749)', 4326), 39.3463873, -95.3602509, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478340', 'Walnut Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Easton', 39.2813887, -95.1063565, ST_GeomFromText('POINT(39.2813887 -95.1063565)', 4326), 39.320832, -95.2630265, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478348', 'Honey Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Winchester', 39.2413879, -95.3077495, ST_GeomFromText('POINT(39.2413879 -95.3077495)', 4326), 39.3036099, -95.2758046, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478349', 'Buttermilk Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Easton', 39.3586097, -95.1119121, ST_GeomFromText('POINT(39.3586097 -95.1119121)', 4326), 39.3763873, -95.1863582, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478352', 'Dawson Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Easton SW', 39.3338879, -95.1144122, ST_GeomFromText('POINT(39.3338879 -95.1144122)', 4326), 39.3508319, -95.2091365, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('478353', 'West Brush Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Easton', 39.3138882, -95.1102455, ST_GeomFromText('POINT(39.3138882 -95.1102455)', 4326), 39.3299988, -95.1919139, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478354', 'Prairie Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Easton SW', 39.2786105, -95.1744135, ST_GeomFromText('POINT(39.2786105 -95.1744135)', 4326), 39.2108331, -95.2188591, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478358', 'Indian Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Easton SW', 39.2891659, -95.1985806, ST_GeomFromText('POINT(39.2891659 -95.1985806)', 4326), 39.3483333, -95.2213889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478360', 'Scatter Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Easton SW', 39.2822213, -95.2208034, ST_GeomFromText('POINT(39.2822213 -95.2208034)', 4326), 39.2422214, -95.2496928, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478365', 'Lake Stellamaris', 'Reservoir', 'Kansas', 'KS', 'Leavenworth', 'Easton', 39.3181862, -95.0354291, ST_GeomFromText('POINT(39.3181862 -95.0354291)', 4326), NULL, NULL, '1978-10-13', '2018-07-05', NULL, NULL, NULL),
  ('478367', 'Brush Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Easton', 39.2500005, -95.0833006, ST_GeomFromText('POINT(39.2500005 -95.0833006)', 4326), 39.2922222, -95.0625, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478372', 'Cramer Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Easton', 39.3302769, -95.1099676, ST_GeomFromText('POINT(39.3302769 -95.1099676)', 4326), 39.3116667, -95.0669444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478375', 'Happy Hollow Lake', 'Reservoir', 'Kansas', 'KS', 'Leavenworth', 'Easton', 39.3491243, -95.0373505, ST_GeomFromText('POINT(39.3491243 -95.0373505)', 4326), NULL, NULL, '1978-10-13', '2018-07-05', NULL, NULL, NULL),
  ('478378', 'Buckhorn Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Easton', 39.3630542, -95.1063564, ST_GeomFromText('POINT(39.3630542 -95.1063564)', 4326), 39.3725, -95.0541667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478379', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Natoma', 39.2363995, -99.0809247, ST_GeomFromText('POINT(39.2363995 -99.0809247)', 4326), 39.3041664, -95.0616333, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('478380', 'Little Stranger Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Jarbalo', 39.1438909, -95.0205227, ST_GeomFromText('POINT(39.1438909 -95.0205227)', 4326), 39.2969444, -95.0219103, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478381', 'Stigers Island', 'Island', 'Kansas', 'KS', 'Leavenworth', 'Platte City', 39.2527794, -94.8502402, ST_GeomFromText('POINT(39.2527794 -94.8502402)', 4326), NULL, NULL, '1978-10-13', NULL, 'Official', 'Board Decision', '1938-01-01'),
  ('478382', 'Sevenmile Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Wolcott', 39.223891, -94.8363511, ST_GeomFromText('POINT(39.223891 -94.8363511)', 4326), 39.2452791, -94.9696871, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478383', 'Fivemile Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Leavenworth', 39.3016671, -94.9027412, ST_GeomFromText('POINT(39.3016671 -94.9027412)', 4326), 39.2888889, -94.9761111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478384', 'Threemile Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Leavenworth', 39.3147223, -94.9077412, ST_GeomFromText('POINT(39.3147223 -94.9077412)', 4326), 39.33, -94.9738889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478385', 'Corral Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Leavenworth', 39.3347218, -94.9102412, ST_GeomFromText('POINT(39.3347218 -94.9102412)', 4326), 39.3397222, -94.9438889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478386', 'Quarry Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Leavenworth', 39.3522215, -94.9119079, ST_GeomFromText('POINT(39.3522215 -94.9119079)', 4326), 39.3536111, -94.9355556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478387', 'Smith Lake', 'Reservoir', 'Kansas', 'KS', 'Leavenworth', 'Leavenworth', 39.3462881, -94.9181208, ST_GeomFromText('POINT(39.3462881 -94.9181208)', 4326), NULL, NULL, '1978-10-13', '2018-07-05', NULL, NULL, NULL),
  ('478388', 'Merritt Lake', 'Reservoir', 'Kansas', 'KS', 'Leavenworth', 'Leavenworth', 39.3478855, -94.9213377, ST_GeomFromText('POINT(39.3478855 -94.9213377)', 4326), NULL, NULL, '1978-10-13', '2018-07-05', NULL, NULL, NULL),
  ('478389', 'Hancock Hill', 'Summit', 'Kansas', 'KS', 'Leavenworth', 'Leavenworth', 39.3700913, -94.939123, ST_GeomFromText('POINT(39.3700913 -94.939123)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('478390', 'Government Hill', 'Summit', 'Kansas', 'KS', 'Leavenworth', 'Leavenworth', 39.3444367, -94.947478, ST_GeomFromText('POINT(39.3444367 -94.947478)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('478391', 'Sentinel Hill', 'Summit', 'Kansas', 'KS', 'Leavenworth', 'Leavenworth', 39.3533253, -94.9557901, ST_GeomFromText('POINT(39.3533253 -94.9557901)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('478392', 'Salt Creek Valley', 'Valley', 'Kansas', 'KS', 'Leavenworth', 'Weston', 39.3840155, -94.9478801, ST_GeomFromText('POINT(39.3840155 -94.9478801)', 4326), 39.3188814, -95.0341251, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('478393', 'Bell Point', 'Cliff', 'Kansas', 'KS', 'Leavenworth', 'Leavenworth', 39.3624989, -94.9435751, ST_GeomFromText('POINT(39.3624989 -94.9435751)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478394', 'Wagner Point', 'Summit', 'Kansas', 'KS', 'Leavenworth', 'Leavenworth', 39.3559581, -94.9400626, ST_GeomFromText('POINT(39.3559581 -94.9400626)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('478396', 'Opossum Hollow', 'Valley', 'Kansas', 'KS', 'Leavenworth', 'Leavenworth', 39.3391717, -94.9927544, ST_GeomFromText('POINT(39.3391717 -94.9927544)', 4326), 39.3027601, -94.9872296, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('478398', 'Valley Lakes', 'Reservoir', 'Kansas', 'KS', 'Leavenworth', 'Leavenworth', 39.2962261, -94.9683641, ST_GeomFromText('POINT(39.2962261 -94.9683641)', 4326), NULL, NULL, '1978-10-13', '2018-07-05', NULL, NULL, NULL),
  ('478400', 'Pilot Knob Ridge', 'Ridge', 'Kansas', 'KS', 'Leavenworth', 'Leavenworth', 39.3003965, -94.9538044, ST_GeomFromText('POINT(39.3003965 -94.9538044)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('478418', 'Pilot Knob', 'Summit', 'Kansas', 'KS', 'Leavenworth', 'Leavenworth', 39.2971159, -94.9363025, ST_GeomFromText('POINT(39.2971159 -94.9363025)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('478421', 'Lake Jeanette', 'Reservoir', 'Kansas', 'KS', 'Leavenworth', 'Leavenworth', 39.2759996, -94.8927202, ST_GeomFromText('POINT(39.2759996 -94.8927202)', 4326), NULL, NULL, '1978-10-13', '2022-06-01', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('478430', 'Ninemile Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Leavenworth', 39.2627791, -94.8766296, ST_GeomFromText('POINT(39.2627791 -94.8766296)', 4326), 39.1811133, -94.9274646, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478437', 'Toad Hollow', 'Valley', 'Kansas', 'KS', 'Shawnee', 'Rossville', 39.1317991, -95.9253674, ST_GeomFromText('POINT(39.1317991 -95.9253674)', 4326), 39.150065, -95.9104083, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('478438', 'Peanaz Hill', 'Summit', 'Kansas', 'KS', 'Shawnee', 'Rossville', 39.1608246, -95.9535931, ST_GeomFromText('POINT(39.1608246 -95.9535931)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('478439', 'Peanaz Creek', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Rossville', 39.167498, -95.9594345, ST_GeomFromText('POINT(39.167498 -95.9594345)', 4326), 39.1677778, -95.9127778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478448', 'Coryell Creek', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Rossville', 39.2111084, -95.9494345, ST_GeomFromText('POINT(39.2111084 -95.9494345)', 4326), 39.2480556, -95.9191667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478449', 'Snake Creek', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Rossville', 39.1644425, -95.9602679, ST_GeomFromText('POINT(39.1644425 -95.9602679)', 4326), 39.2136082, -96.0116586, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478450', 'Ensign Creek', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Silver Lake', 39.0861107, -95.8672091, ST_GeomFromText('POINT(39.0861107 -95.8672091)', 4326), 39.1436096, -95.9436005, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478459', 'Messhoss Creek', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Silver Lake', 39.1108325, -95.7741509, ST_GeomFromText('POINT(39.1108325 -95.7741509)', 4326), 39.1897202, -95.7438722, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478470', 'Halfday Creek', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Elmont', 39.103055, -95.6972042, ST_GeomFromText('POINT(39.103055 -95.6972042)', 4326), 39.2422195, -95.7058155, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478471', 'Indian Creek', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Elmont', 39.096944, -95.6502584, ST_GeomFromText('POINT(39.096944 -95.6502584)', 4326), 39.2055536, -95.6716477, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('478473', 'Fin and Feather Lake', 'Reservoir', 'Kansas', 'KS', 'Jefferson', 'Meriden', 39.1713876, -95.5788671, ST_GeomFromText('POINT(39.1713876 -95.5788671)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478475', 'Claywell Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Meriden', 39.178332, -95.5321989, ST_GeomFromText('POINT(39.178332 -95.5321989)', 4326), 39.235, -95.5305556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478476', 'Elm Creek', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Meriden', 39.1644431, -95.5947009, ST_GeomFromText('POINT(39.1644431 -95.5947009)', 4326), 39.202498, -95.6619252, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478480', 'Muddy Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Grantville', 39.0683332, -95.5177545, ST_GeomFromText('POINT(39.0683332 -95.5177545)', 4326), 39.2158313, -95.6155348, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478481', 'Little Muddy Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Grantville', 39.0877775, -95.5952567, ST_GeomFromText('POINT(39.0877775 -95.5952567)', 4326), 39.1674986, -95.6383135, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478490', 'Little Slough Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Ozawkie', 39.2147208, -95.4546969, ST_GeomFromText('POINT(39.2147208 -95.4546969)', 4326), 39.2616654, -95.3413613, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478491', 'Perry Lake', 'Reservoir', 'Kansas', 'KS', 'Jefferson', 'Ozawkie', 39.1773424, -95.4516964, ST_GeomFromText('POINT(39.1773424 -95.4516964)', 4326), NULL, NULL, '1978-10-13', '2019-09-11', 'Official', 'Board Decision', '1971-01-01'),
  ('478492', 'Round Mound', 'Pillar', 'Kansas', 'KS', 'Jefferson', 'Ozawkie', 39.1255553, -95.4063632, ST_GeomFromText('POINT(39.1255553 -95.4063632)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478501', 'Little Wild Horse Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Perry', 39.0833334, -95.3974744, ST_GeomFromText('POINT(39.0833334 -95.3974744)', 4326), 39.1702773, -95.3363616, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478502', 'West Stone House Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Oskaloosa', 39.0936114, -95.3244175, ST_GeomFromText('POINT(39.0936114 -95.3244175)', 4326), 39.1486108, -95.3355285, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('478503', 'East Stone House Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Oskaloosa', 39.0936114, -95.3244175, ST_GeomFromText('POINT(39.0936114 -95.3244175)', 4326), 39.1538886, -95.3246948, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478504', 'Little Buck Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Oskaloosa', 39.1516666, -95.2960832, ST_GeomFromText('POINT(39.1516666 -95.2960832)', 4326), 39.1852778, -95.3194444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478505', 'Buck Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Williamstown', 39.0430564, -95.2924728, ST_GeomFromText('POINT(39.0430564 -95.2924728)', 4326), 39.1902776, -95.2427487, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478506', 'Plum Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Oskaloosa', 39.0952783, -95.2566385, ST_GeomFromText('POINT(39.0952783 -95.2566385)', 4326), 39.1647221, -95.2519157, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478516', 'Evans Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Oskaloosa', 39.1488884, -95.3996962, ST_GeomFromText('POINT(39.1488884 -95.3996962)', 4326), 39.1774995, -95.3330282, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478517', 'Burr Oak Branch', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Oskaloosa', 39.2219435, -95.3385836, ST_GeomFromText('POINT(39.2219435 -95.3385836)', 4326), 39.1852778, -95.3266667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478518', 'Slough Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Perry', 39.1186107, -95.4383083, ST_GeomFromText('POINT(39.1186107 -95.4383083)', 4326), 39.2061109, -95.2199703, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478527', 'South Fork Fall Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'McLouth', 39.230278, -95.1430242, ST_GeomFromText('POINT(39.230278 -95.1430242)', 4326), 39.2147222, -95.1855556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478529', 'Ninemile Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Tonganoxie', 39.00667, -95.0294132, ST_GeomFromText('POINT(39.00667 -95.0294132)', 4326), 39.196111, -95.2183037, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478531', 'State Lake', 'Reservoir', 'Kansas', 'KS', 'Leavenworth', 'Midland', 39.1247064, -95.1499627, ST_GeomFromText('POINT(39.1247064 -95.1499627)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('478539', 'Jarbalo Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Jarbalo', 39.1869457, -95.0496894, ST_GeomFromText('POINT(39.1869457 -95.0496894)', 4326), 39.1925005, -95.1446911, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478542', 'Flinner Lake', 'Reservoir', 'Kansas', 'KS', 'Leavenworth', 'Jarbalo', 39.215279, -95.0346888, ST_GeomFromText('POINT(39.215279 -95.0346888)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478547', 'Fall Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Jarbalo', 39.2244451, -95.0799674, ST_GeomFromText('POINT(39.2244451 -95.0799674)', 4326), 39.2008333, -95.2019145, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478548', 'Murray Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Jarbalo', 39.229168, -95.0049659, ST_GeomFromText('POINT(39.229168 -95.0049659)', 4326), 39.2744448, -95.0221881, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478549', 'Tonganoxie Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Tonganoxie', 39.0961135, -95.0244122, ST_GeomFromText('POINT(39.0961135 -95.0244122)', 4326), 39.1980557, -95.1910809, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478563', 'Little Sandy Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Basehor', 39.1794463, -94.9882994, ST_GeomFromText('POINT(39.1794463 -94.9882994)', 4326), 39.2344444, -94.9666667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478564', 'Wolf Creek', 'Stream', 'Kansas', 'KS', 'Wyandotte', 'Bonner Springs', 39.0488929, -94.8857979, ST_GeomFromText('POINT(39.0488929 -94.8857979)', 4326), 39.1833355, -94.9077419, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478565', 'Piper Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Basehor', 39.1400028, -94.9013532, ST_GeomFromText('POINT(39.1400028 -94.9013532)', 4326), 39.1297253, -94.8605189, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478566', 'Hog Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Jarbalo', 39.1286133, -95.011356, ST_GeomFromText('POINT(39.1286133 -95.011356)', 4326), 39.0855586, -94.9602441, '1978-10-13', '2010-03-24', NULL, NULL, NULL),
  ('478570', 'Island Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Wolcott', 39.205558, -94.8141285, ST_GeomFromText('POINT(39.205558 -94.8141285)', 4326), 39.1738913, -94.8944084, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('478571', 'Little Snell Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Wolcott', 39.218891, -94.8357957, ST_GeomFromText('POINT(39.218891 -94.8357957)', 4326), 39.1997244, -94.8810745, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478572', 'Honey Creek', 'Stream', 'Kansas', 'KS', 'Wyandotte', 'Wolcott', 39.1930581, -94.8327401, ST_GeomFromText('POINT(39.1930581 -94.8327401)', 4326), 39.1580556, -94.8644444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478574', 'Connor Creek', 'Stream', 'Kansas', 'KS', 'Wyandotte', 'Wolcott', 39.183614, -94.7691276, ST_GeomFromText('POINT(39.183614 -94.7691276)', 4326), 39.1213922, -94.8452408, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478575', 'Marshall Creek', 'Stream', 'Kansas', 'KS', 'Wyandotte', 'Wolcott', 39.1511144, -94.7871836, ST_GeomFromText('POINT(39.1511144 -94.7871836)', 4326), 39.1391667, -94.8086111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478580', 'Diamond Island', 'Flat', 'Kansas', 'KS', 'Leavenworth', 'Wolcott', 39.1972248, -94.7863501, ST_GeomFromText('POINT(39.1972248 -94.7863501)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478584', 'Wyandotte County Lake', 'Reservoir', 'Kansas', 'KS', 'Wyandotte', 'Wolcott', 39.163479, -94.7818721, ST_GeomFromText('POINT(39.163479 -94.7818721)', 4326), NULL, NULL, '1978-10-13', '2018-07-05', NULL, NULL, NULL),
  ('478592', 'Mill Creek', 'Stream', 'Kansas', 'KS', 'Wyandotte', 'Shawnee', 39.0786156, -94.7441271, ST_GeomFromText('POINT(39.0786156 -94.7441271)', 4326), 39.1330545, -95.7702619, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478593', 'Eddy Creek', 'Stream', 'Kansas', 'KS', 'Wyandotte', 'Parkville', 39.1597256, -94.6619024, ST_GeomFromText('POINT(39.1597256 -94.6619024)', 4326), 39.1366667, -94.6755556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478598', 'Malone Hollow', 'Valley', 'Kansas', 'KS', 'Wyandotte', 'Parkville', 39.1675673, -94.742774, ST_GeomFromText('POINT(39.1675673 -94.742774)', 4326), 39.1474058, -94.7372612, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('478603', 'Nearman Creek', 'Stream', 'Kansas', 'KS', 'Wyandotte', 'Parkville', 39.1794475, -94.6935699, ST_GeomFromText('POINT(39.1794475 -94.6935699)', 4326), 39.1508333, -94.7141667, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('478604', 'Happy Hollow', 'Valley', 'Kansas', 'KS', 'Wyandotte', 'Parkville', 39.1620453, -94.6999129, ST_GeomFromText('POINT(39.1620453 -94.6999129)', 4326), 39.1485364, -94.7019412, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('478607', 'Lake Welborn', 'Reservoir', 'Kansas', 'KS', 'Wyandotte', 'Parkville', 39.1423307, -94.6908745, ST_GeomFromText('POINT(39.1423307 -94.6908745)', 4326), NULL, NULL, '1978-10-13', '2018-07-05', NULL, NULL, NULL),
  ('478630', 'Muncie Creek', 'Stream', 'Kansas', 'KS', 'Wyandotte', 'Parkville', 39.1030598, -94.7035703, ST_GeomFromText('POINT(39.1030598 -94.7035703)', 4326), 39.1422258, -94.7432937, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478631', 'Brenner Heights Creek', 'Stream', 'Kansas', 'KS', 'Wyandotte', 'Parkville', 39.1044486, -94.7085704, ST_GeomFromText('POINT(39.1044486 -94.7085704)', 4326), 39.1425036, -94.7080149, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478633', 'Jersey Creek', 'Stream', 'Kansas', 'KS', 'Wyandotte', 'Kansas City', 39.1208374, -94.6077342, ST_GeomFromText('POINT(39.1208374 -94.6077342)', 4326), 39.1219484, -94.6705138, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478645', 'Vassar Creek', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Willard', 39.0844439, -95.9074881, ST_GeomFromText('POINT(39.0844439 -95.9074881)', 4326), 39.0033333, -95.9580556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478647', 'Post Creek', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Willard', 39.0888884, -95.9191551, ST_GeomFromText('POINT(39.0888884 -95.9191551)', 4326), 39.0125, -95.9705556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478650', 'Silver Lake', 'Lake', 'Kansas', 'KS', 'Shawnee', 'Silver Lake', 39.1013882, -95.8627646, ST_GeomFromText('POINT(39.1013882 -95.8627646)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478654', 'Hickory Knob', 'Summit', 'Kansas', 'KS', 'Shawnee', 'Silver Lake', 39.05851, -95.8488385, ST_GeomFromText('POINT(39.05851 -95.8488385)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('478656', 'Sherwood Lake', 'Reservoir', 'Kansas', 'KS', 'Shawnee', 'Silver Lake', 39.0025011, -95.7758177, ST_GeomFromText('POINT(39.0025011 -95.7758177)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('478657', 'Blacksmith Creek', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Silver Lake', 39.0638889, -95.841375, ST_GeomFromText('POINT(39.0638889 -95.841375)', 4326), 38.9738905, -95.8483197, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478664', 'Franks Island', 'Island', 'Kansas', 'KS', 'Jefferson', 'Grantville', 39.0652778, -95.5485887, ST_GeomFromText('POINT(39.0652778 -95.5485887)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478670', 'Indian Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Grantville', 39.0894441, -95.6005347, ST_GeomFromText('POINT(39.0894441 -95.6005347)', 4326), 39.0922222, -95.6191667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478671', 'Elm Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Grantville', 39.0755554, -95.5296992, ST_GeomFromText('POINT(39.0755554 -95.5296992)', 4326), 39.1380547, -95.5458107, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478672', 'Prairie Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Grantville', 39.0672221, -95.5108099, ST_GeomFromText('POINT(39.0672221 -95.5108099)', 4326), 39.1522212, -95.5485884, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478675', 'Burnett Mound', 'Summit', 'Kansas', 'KS', 'Shawnee', 'Topeka', 39.0096495, -95.7367077, ST_GeomFromText('POINT(39.0096495 -95.7367077)', 4326), NULL, NULL, '1978-10-13', '2018-07-21', NULL, NULL, NULL),
  ('478733', 'Ward Creek', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Topeka', 39.0733332, -95.7016488, ST_GeomFromText('POINT(39.0733332 -95.7016488)', 4326), 39.0480556, -95.7155556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478793', 'Lake Jivaro', 'Reservoir', 'Kansas', 'KS', 'Shawnee', 'Grantville', 39.0075006, -95.5516446, ST_GeomFromText('POINT(39.0075006 -95.5516446)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478798', 'Stinson Creek', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Grantville', 39.0516668, -95.5838676, ST_GeomFromText('POINT(39.0516668 -95.5838676)', 4326), 38.9872232, -95.5947015, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478799', 'Whetstone Creek', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Grantville', 39.065, -95.5335883, ST_GeomFromText('POINT(39.065 -95.5335883)', 4326), 38.9861121, -95.5455335, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('478800', 'Shunganunga Creek', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Grantville', 39.0530557, -95.5813675, ST_GeomFromText('POINT(39.0530557 -95.5813675)', 4326), 38.9747238, -95.8138743, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478806', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Douglas', 'Perry', 39.0644445, -95.4644201, ST_GeomFromText('POINT(39.0644445 -95.4644201)', 4326), 39.0158333, -95.4988889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478807', 'Coon Creek', 'Stream', 'Kansas', 'KS', 'Douglas', 'Perry', 39.0569448, -95.3996967, ST_GeomFromText('POINT(39.0569448 -95.3996967)', 4326), 39.0286111, -95.4647222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478816', 'Oakley Creek', 'Stream', 'Kansas', 'KS', 'Douglas', 'Williamstown', 39.0372229, -95.3635851, ST_GeomFromText('POINT(39.0372229 -95.3635851)', 4326), 38.9869457, -95.3633078, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478818', 'Lake View Lake', 'Lake', 'Kansas', 'KS', 'Douglas', 'Williamstown', 39.0122233, -95.3016399, ST_GeomFromText('POINT(39.0122233 -95.3016399)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478826', 'Nolan Hill', 'Summit', 'Kansas', 'KS', 'Jefferson', 'Williamstown', 39.1088822, -95.3021871, ST_GeomFromText('POINT(39.1088822 -95.3021871)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('478827', 'Stone Horse Creek', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Williamstown', 39.0333341, -95.3308069, ST_GeomFromText('POINT(39.0333341 -95.3308069)', 4326), 39.0936111, -95.3241667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478836', 'Pony Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Midland', 39.0547241, -95.1358034, ST_GeomFromText('POINT(39.0547241 -95.1358034)', 4326), 39.1019505, -94.2088355, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478845', 'Cow Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Tonganoxie', 39.0291691, -95.0966363, ST_GeomFromText('POINT(39.0291691 -95.0966363)', 4326), 39.0775, -95.1044444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478855', 'Stranger Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Eudora', 38.9997256, -95.0227465, ST_GeomFromText('POINT(38.9997256 -95.0227465)', 4326), 39.5958324, -95.3496971, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('478862', 'Little Kaw Creek', 'Stream', 'Kansas', 'KS', 'Wyandotte', 'Bonner Springs', 39.0372263, -94.8902425, ST_GeomFromText('POINT(39.0372263 -94.8902425)', 4326), 39.0858333, -94.9530556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478871', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Wyandotte', 'Bonner Springs', 39.0491706, -94.8871867, ST_GeomFromText('POINT(39.0491706 -94.8871867)', 4326), 39.0758333, -94.8816667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478881', 'Nelson Island', 'Island', 'Kansas', 'KS', 'Johnson', 'Edwardsville', 39.0433379, -94.8030177, ST_GeomFromText('POINT(39.0433379 -94.8030177)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478882', 'Quivira Lake', 'Reservoir', 'Kansas', 'KS', 'Johnson', 'Edwardsville', 39.0394533, -94.7719077, ST_GeomFromText('POINT(39.0394533 -94.7719077)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('478885', 'Lake of the Forest', 'Reservoir', 'Kansas', 'KS', 'Wyandotte', 'Edwardsville', 39.0683558, -94.8409321, ST_GeomFromText('POINT(39.0683558 -94.8409321)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('478891', 'West Mission Creek', 'Stream', 'Kansas', 'KS', 'Wyandotte', 'Edwardsville', 39.0569487, -94.831074, ST_GeomFromText('POINT(39.0569487 -94.831074)', 4326), 39.0977778, -94.8697222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478892', 'East Mission Creek', 'Stream', 'Kansas', 'KS', 'Wyandotte', 'Edwardsville', 39.0647263, -94.8402409, ST_GeomFromText('POINT(39.0647263 -94.8402409)', 4326), 39.115, -94.8461111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478894', 'Betts Creek', 'Stream', 'Kansas', 'KS', 'Wyandotte', 'Edwardsville', 39.0483378, -94.8110735, ST_GeomFromText('POINT(39.0483378 -94.8110735)', 4326), 39.1019444, -94.8333333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478903', 'Little Turkey Creek', 'Stream', 'Kansas', 'KS', 'Wyandotte', 'Edwardsville', 39.0619491, -94.7663499, ST_GeomFromText('POINT(39.0619491 -94.7663499)', 4326), 39.1180556, -94.8397222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('478977', 'Mattoon Creek', 'Stream', 'Kansas', 'KS', 'Wyandotte', 'Shawnee', 39.0950044, -94.6705139, ST_GeomFromText('POINT(39.0950044 -94.6705139)', 4326), 39.1152778, -94.6722222, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('479003', 'Big Eleven Lake', 'Reservoir', 'Kansas', 'KS', 'Wyandotte', 'Shawnee', 39.1176234, -94.6372831, ST_GeomFromText('POINT(39.1176234 -94.6372831)', 4326), NULL, NULL, '1978-10-13', '2018-07-05', NULL, NULL, NULL),
  ('479044', 'Haskell Creek', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Dover', 38.9897234, -95.9172102, ST_GeomFromText('POINT(38.9897234 -95.9172102)', 4326), 38.9619444, -95.8772222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479049', 'Massasoit Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Dover', 38.9519464, -95.9744341, ST_GeomFromText('POINT(38.9519464 -95.9744341)', 4326), 38.8941667, -95.9986111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479050', 'Lomis Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Dover', 38.9494465, -95.9716562, ST_GeomFromText('POINT(38.9494465 -95.9716562)', 4326), 38.9222222, -95.9733333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479051', 'Gladden Ravine', 'Valley', 'Kansas', 'KS', 'Wabaunsee', 'Dover', 38.9554271, -95.9719064, ST_GeomFromText('POINT(38.9554271 -95.9719064)', 4326), 38.981796, -95.9925831, '1978-10-13', '2017-01-20', NULL, NULL, NULL),
  ('479052', 'South Branch Wakarusa River', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Auburn', 38.8925031, -95.8183192, ST_GeomFromText('POINT(38.8925031 -95.8183192)', 4326), 38.8991696, -96.0408246, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479056', 'North Branch Wakarusa River', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Auburn', 38.8980586, -95.8163747, ST_GeomFromText('POINT(38.8980586 -95.8163747)', 4326), 38.9763889, -95.8733333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479057', 'Middle Branch Wakarusa River', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Auburn', 38.8997252, -95.8530423, ST_GeomFromText('POINT(38.8997252 -95.8530423)', 4326), 38.9286136, -95.9330442, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479063', 'Sixmile Creek', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Auburn', 38.8897253, -95.7241502, ST_GeomFromText('POINT(38.8897253 -95.7241502)', 4326), 38.9716683, -95.8497085, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479072', 'South Branch Shunganunga Creek', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Wakarusa', 39.0169452, -95.7130381, ST_GeomFromText('POINT(39.0169452 -95.7130381)', 4326), 38.9383354, -95.6997048, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('479074', 'Burys Creek', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Wakarusa', 38.8861142, -95.6291478, ST_GeomFromText('POINT(38.8861142 -95.6291478)', 4326), 38.8172266, -95.7033168, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479078', 'Towhead Creek', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Wakarusa', 38.886392, -95.7105388, ST_GeomFromText('POINT(38.886392 -95.7105388)', 4326), 38.8116712, -95.7397065, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479084', 'Colly Creek', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Wakarusa', 38.9952789, -95.7155382, ST_GeomFromText('POINT(38.9952789 -95.7155382)', 4326), 38.965835, -95.757484, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479087', 'Camp Creek', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Richland', 38.891114, -95.5283119, ST_GeomFromText('POINT(38.891114 -95.5283119)', 4326), 38.7797273, -95.5880367, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479089', 'Lynn Creek', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Richland', 38.9011138, -95.5819243, ST_GeomFromText('POINT(38.9011138 -95.5819243)', 4326), 38.9686126, -95.6688704, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479099', 'Tecumseh Creek', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Richland', 39.0544445, -95.5713672, ST_GeomFromText('POINT(39.0544445 -95.5713672)', 4326), 38.9600016, -95.5802569, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479100', 'Deer Creek', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Topeka', 39.0527779, -95.626091, ST_GeomFromText('POINT(39.0527779 -95.626091)', 4326), 38.961946, -95.621647, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479101', 'Lake Shawnee', 'Reservoir', 'Kansas', 'KS', 'Shawnee', 'Topeka', 39.0130563, -95.6308136, ST_GeomFromText('POINT(39.0130563 -95.6308136)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479104', 'Elk Creek', 'Stream', 'Kansas', 'KS', 'Douglas', 'Clinton', 38.8880586, -95.4835886, ST_GeomFromText('POINT(38.8880586 -95.4835886)', 4326), 38.7769496, -95.5444247, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479105', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Douglas', 'Clinton', 38.9405577, -95.4233092, ST_GeomFromText('POINT(38.9405577 -95.4233092)', 4326), 38.9441685, -95.5013661, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('479110', 'Deer Creek', 'Stream', 'Kansas', 'KS', 'Douglas', 'Clinton', 38.9297246, -95.4060867, ST_GeomFromText('POINT(38.9297246 -95.4060867)', 4326), 38.9547238, -95.5608121, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479111', 'Coon Creek', 'Stream', 'Kansas', 'KS', 'Douglas', 'Clinton', 38.9333357, -95.3924753, ST_GeomFromText('POINT(38.9333357 -95.3924753)', 4326), 38.9877778, -95.3769444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479115', 'Baldwin Creek', 'Stream', 'Kansas', 'KS', 'Douglas', 'Lawrence West', 39.0119456, -95.2699727, ST_GeomFromText('POINT(39.0119456 -95.2699727)', 4326), 38.9686128, -95.3577522, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479118', 'Shank Hill', 'Summit', 'Kansas', 'KS', 'Douglas', 'Lawrence West', 38.8890864, -95.2616965, ST_GeomFromText('POINT(38.8890864 -95.2616965)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('479120', 'Yankee Tank Creek', 'Stream', 'Kansas', 'KS', 'Douglas', 'Lawrence West', 38.9188921, -95.2721953, ST_GeomFromText('POINT(38.9188921 -95.2721953)', 4326), 38.9666667, -95.3491667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479131', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Douglas', 'Lawrence East', 38.9277817, -95.1385816, ST_GeomFromText('POINT(38.9277817 -95.1385816)', 4326), 38.8672273, -95.159693, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479132', 'Blue Mound', 'Summit', 'Kansas', 'KS', 'Douglas', 'Lawrence East', 38.9044416, -95.1821859, ST_GeomFromText('POINT(38.9044416 -95.1821859)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('479154', 'Potter Lake', 'Lake', 'Kansas', 'KS', 'Douglas', 'Lawrence East', 38.9603201, -95.2487298, ST_GeomFromText('POINT(38.9603201 -95.2487298)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('479158', 'Mud Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Lawrence East', 38.9813914, -95.1633044, ST_GeomFromText('POINT(38.9813914 -95.1633044)', 4326), 39.1725, -95.2377487, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479159', 'Little Wakarusa Creek', 'Stream', 'Kansas', 'KS', 'Douglas', 'Lawrence East', 38.9261151, -95.1360815, ST_GeomFromText('POINT(38.9261151 -95.1360815)', 4326), 38.8250062, -95.123581, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('479164', 'Captain Creek', 'Stream', 'Kansas', 'KS', 'Johnson', 'Eudora', 38.9727816, -95.0399688, ST_GeomFromText('POINT(38.9727816 -95.0399688)', 4326), 38.7591743, -95.1338589, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479166', 'Kent Creek', 'Stream', 'Kansas', 'KS', 'Douglas', 'Eudora', 38.9708364, -95.1216369, ST_GeomFromText('POINT(38.9708364 -95.1216369)', 4326), 39.0180577, -95.1488595, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479175', 'Cedar Creek', 'Stream', 'Kansas', 'KS', 'Johnson', 'De Soto', 38.9825046, -94.9182991, ST_GeomFromText('POINT(38.9825046 -94.9182991)', 4326), 38.8183409, -94.8771853, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479176', 'Camp Creek', 'Stream', 'Kansas', 'KS', 'Johnson', 'De Soto', 38.963616, -94.9185766, ST_GeomFromText('POINT(38.963616 -94.9185766)', 4326), 38.8816667, -94.915, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479177', 'Kill Creek', 'Stream', 'Kansas', 'KS', 'Johnson', 'De Soto', 38.9811154, -94.9566335, ST_GeomFromText('POINT(38.9811154 -94.9566335)', 4326), 38.8161183, -94.9671881, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479179', 'Spoon Creek', 'Stream', 'Kansas', 'KS', 'Johnson', 'De Soto', 38.9200052, -94.9844117, ST_GeomFromText('POINT(38.9200052 -94.9844117)', 4326), 38.807785, -95.0121894, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479181', 'Clear Creek', 'Stream', 'Kansas', 'KS', 'Johnson', 'Edwardsville', 39.0172271, -94.815796, ST_GeomFromText('POINT(39.0172271 -94.815796)', 4326), 38.9575054, -94.8649638, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479183', 'Elmers Lake', 'Reservoir', 'Kansas', 'KS', 'Johnson', 'Olathe', 38.9953994, -94.8644662, ST_GeomFromText('POINT(38.9953994 -94.8644662)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('479185', 'Coon Creek', 'Stream', 'Kansas', 'KS', 'Johnson', 'Olathe', 38.9725055, -94.8185736, ST_GeomFromText('POINT(38.9725055 -94.8185736)', 4326), 38.9377778, -94.8352778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479193', 'New Olathe Lake', 'Reservoir', 'Kansas', 'KS', 'Johnson', 'Olathe', 38.8762894, -94.8714943, ST_GeomFromText('POINT(38.8762894 -94.8714943)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('479195', 'Mill Creek', 'Stream', 'Kansas', 'KS', 'Johnson', 'Edwardsville', 39.0425046, -94.8046844, ST_GeomFromText('POINT(39.0425046 -94.8046844)', 4326), 38.8647294, -94.8002389, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479197', 'Little Cedar Creek', 'Stream', 'Kansas', 'KS', 'Johnson', 'De Soto', 38.9169503, -94.8869087, ST_GeomFromText('POINT(38.9169503 -94.8869087)', 4326), 38.8544517, -94.8257952, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479200', 'Shawnee Mission Lake', 'Reservoir', 'Kansas', 'KS', 'Johnson', 'Olathe', 38.9839422, -94.8033095, ST_GeomFromText('POINT(38.9839422 -94.8033095)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('479219', 'James Branch', 'Stream', 'Kansas', 'KS', 'Johnson', 'Lenexa', 38.9383399, -94.6099564, ST_GeomFromText('POINT(38.9383399 -94.6099564)', 4326), 38.9541731, -94.6288459, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479228', 'Tomahawk Creek', 'Stream', 'Kansas', 'KS', 'Johnson', 'Grandview', 38.93084, -94.6205122, ST_GeomFromText('POINT(38.93084 -94.6205122)', 4326), 38.8647297, -94.7577376, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479229', 'Indian Creek', 'Stream', 'Missouri', 'MO', 'Jackson', 'Grandview', 38.95252, -94.56285, ST_GeomFromText('POINT(38.95252 -94.56285)', 4326), 38.83369, -94.8021, '1978-10-13', '2010-12-16', NULL, NULL, NULL),
  ('479235', 'Nagwika Lake', 'Lake', 'Kansas', 'KS', 'Johnson', 'Lenexa', 38.9888948, -94.6882922, ST_GeomFromText('POINT(38.9888948 -94.6882922)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479243', 'Brush Creek', 'Stream', 'Missouri', 'MO', 'Jackson', 'Kansas City', 39.0388943, -94.5205097, ST_GeomFromText('POINT(39.0388943 -94.5205097)', 4326), 38.98453, -94.65938, '1978-10-13', '2018-06-22', NULL, NULL, NULL),
  ('479260', 'Turkey Creek', 'Stream', 'Kansas', 'KS', 'Wyandotte', 'Kansas City', 39.0772269, -94.6188457, ST_GeomFromText('POINT(39.0772269 -94.6188457)', 4326), 38.9677839, -94.7177373, '1978-10-13', '2012-04-24', NULL, NULL, NULL),
  ('479263', 'Little Mill Creek', 'Stream', 'Kansas', 'KS', 'Johnson', 'Edwardsville', 39.007505, -94.8152404, ST_GeomFromText('POINT(39.007505 -94.8152404)', 4326), 38.9513952, -94.7527382, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('479281', 'Dyke Branch', 'Stream', 'Missouri', 'MO', 'Jackson', 'Grandview', 38.95215, -94.57767, ST_GeomFromText('POINT(38.95215 -94.57767)', 4326), 38.98935, -94.61887, '1978-10-13', '2012-11-08', NULL, NULL, NULL),
  ('479284', 'Swede Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Miller', 38.6383424, -95.894711, ST_GeomFromText('POINT(38.6383424 -95.894711)', 4326), 38.6894444, -95.9383333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479289', 'Jersey Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Lyndon', 38.6005658, -95.7369302, ST_GeomFromText('POINT(38.6005658 -95.7369302)', 4326), 38.6488976, -95.7866531, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479290', 'Kibbie Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Osage City', 38.6302871, -95.8530435, ST_GeomFromText('POINT(38.6302871 -95.8530435)', 4326), 38.6675083, -95.8777661, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479291', 'Smith Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Osage City', 38.706396, -95.8080421, ST_GeomFromText('POINT(38.706396 -95.8080421)', 4326), 38.6902855, -95.9202669, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479292', 'Mud Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Osage City', 38.696674, -95.7774859, ST_GeomFromText('POINT(38.696674 -95.7774859)', 4326), 38.6377778, -95.815, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479293', 'Plum Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Osage City', 38.7225067, -95.8588765, ST_GeomFromText('POINT(38.7225067 -95.8588765)', 4326), 38.6947298, -95.9363783, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479299', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Osage City', 38.6927852, -95.7724858, ST_GeomFromText('POINT(38.6927852 -95.7724858)', 4326), 38.6672222, -95.7522222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479300', 'Elkhorn Knob', 'Summit', 'Kansas', 'KS', 'Osage', 'Osage City', 38.6991673, -95.8591467, ST_GeomFromText('POINT(38.6991673 -95.8591467)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('479301', 'Salt Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Quenemo', 38.5950104, -95.5138696, ST_GeomFromText('POINT(38.5950104 -95.5138696)', 4326), 38.7272292, -95.9947129, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('479302', 'Switzler Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Osage City', 38.7102847, -95.7877638, ST_GeomFromText('POINT(38.7102847 -95.7877638)', 4326), 38.845282, -95.9113772, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479306', 'Willow Brook', 'Stream', 'Kansas', 'KS', 'Osage', 'Lyndon NW', 38.6041768, -95.6652619, ST_GeomFromText('POINT(38.6041768 -95.6652619)', 4326), 38.6427867, -95.69054, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479309', 'Wolf Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Lyndon NW', 38.7100068, -95.7335959, ST_GeomFromText('POINT(38.7100068 -95.7335959)', 4326), 38.7438889, -95.7077778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479310', 'Opossum Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Lyndon NW', 38.6827855, -95.6885951, ST_GeomFromText('POINT(38.6827855 -95.6885951)', 4326), 38.7236111, -95.6936111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479311', 'Coyote Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Lyndon NW', 38.6827855, -95.7191514, ST_GeomFromText('POINT(38.6827855 -95.7191514)', 4326), 38.6436111, -95.7302778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479312', 'Pomona Lake', 'Reservoir', 'Kansas', 'KS', 'Osage', 'Vassar', 38.6639003, -95.6089151, ST_GeomFromText('POINT(38.6639003 -95.6089151)', 4326), NULL, NULL, '1984-07-01', '2019-09-11', 'Official', 'Board Decision', '1971-01-01'),
  ('479324', 'Coon Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Vassar', 38.6588974, -95.5580369, ST_GeomFromText('POINT(38.6588974 -95.5580369)', 4326), 38.6977778, -95.5122222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479329', 'Lost Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Ottawa NW', 38.5938995, -95.4777575, ST_GeomFromText('POINT(38.5938995 -95.4777575)', 4326), 38.6497311, -95.4774794, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479330', 'Kelsey Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Ottawa NW', 38.5975109, -95.4060888, ST_GeomFromText('POINT(38.5975109 -95.4060888)', 4326), 38.6611198, -95.4627568, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479331', 'Blue Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Ottawa South', 38.600289, -95.3502539, ST_GeomFromText('POINT(38.600289 -95.3502539)', 4326), 38.6344543, -95.3991441, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('479344', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Ottawa North', 38.646399, -95.3016413, ST_GeomFromText('POINT(38.646399 -95.3016413)', 4326), 38.6938889, -95.2913889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479345', 'Wilson Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Ottawa North', 38.6202888, -95.2771962, ST_GeomFromText('POINT(38.6202888 -95.2771962)', 4326), 38.6872314, -95.2585845, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479348', 'Natural Springs Lake', 'Reservoir', 'Kansas', 'KS', 'Franklin', 'Ottawa North', 38.6899873, -95.2879064, ST_GeomFromText('POINT(38.6899873 -95.2879064)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('479349', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Ottawa North', 38.6897308, -95.3377533, ST_GeomFromText('POINT(38.6897308 -95.3377533)', 4326), 38.7058411, -95.393588, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479351', 'Minneola Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Ottawa North', 38.7083413, -95.3424756, ST_GeomFromText('POINT(38.7083413 -95.3424756)', 4326), 38.7294444, -95.3144444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479354', 'Cole Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Ottawa North', 38.7122301, -95.3488646, ST_GeomFromText('POINT(38.7122301 -95.3488646)', 4326), 38.7161185, -95.3955326, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479356', 'Ottawa Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Le Loup', 38.5905678, -95.1591376, ST_GeomFromText('POINT(38.5905678 -95.1591376)', 4326), 38.6277889, -95.1944163, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479358', 'East Fork Tauy Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Le Loup', 38.6683431, -95.2263615, ST_GeomFromText('POINT(38.6683431 -95.2263615)', 4326), 38.8013953, -95.1910826, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479368', 'Tauy Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Le Loup', 38.6275111, -95.1944163, ST_GeomFromText('POINT(38.6275111 -95.1944163)', 4326), 38.6683333, -95.2258333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479372', 'Fowler Hill', 'Summit', 'Kansas', 'KS', 'Franklin', 'Le Loup', 38.7027799, -95.1835749, ST_GeomFromText('POINT(38.7027799 -95.1835749)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('479375', 'Hickory Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Rantoul', 38.5791793, -95.1116363, ST_GeomFromText('POINT(38.5791793 -95.1116363)', 4326), 38.6800101, -95.0308008, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479377', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Douglas', 'Wellsville', 38.6588991, -95.1841381, ST_GeomFromText('POINT(38.6588991 -95.1841381)', 4326), 38.7027871, -95.0941357, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479384', 'Wolf Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Le Loup', 38.6277889, -95.1944163, ST_GeomFromText('POINT(38.6277889 -95.1944163)', 4326), 38.7283418, -95.1185807, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479385', 'Little Bull Creek', 'Stream', 'Kansas', 'KS', 'Miami', 'Antioch', 38.6508445, -94.9002412, ST_GeomFromText('POINT(38.6508445 -94.9002412)', 4326), 38.8258407, -94.8938526, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479386', 'Smith Branch', 'Stream', 'Kansas', 'KS', 'Miami', 'Antioch', 38.6927878, -94.9469093, ST_GeomFromText('POINT(38.6927878 -94.9469093)', 4326), 38.7341667, -94.9175, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479391', 'Tuggle Branch', 'Stream', 'Kansas', 'KS', 'Miami', 'Antioch', 38.6838992, -94.8996855, ST_GeomFromText('POINT(38.6838992 -94.8996855)', 4326), 38.7072222, -94.9216667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479396', 'Ten Mile Creek', 'Stream', 'Kansas', 'KS', 'Miami', 'Antioch', 38.6330673, -94.8755182, ST_GeomFromText('POINT(38.6330673 -94.8755182)', 4326), 38.7438981, -94.7102355, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479397', 'Granny Branch', 'Stream', 'Kansas', 'KS', 'Miami', 'Antioch', 38.6094566, -94.8855185, ST_GeomFromText('POINT(38.6094566 -94.8855185)', 4326), 38.6261228, -94.9207974, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479398', 'Wade Branch', 'Stream', 'Kansas', 'KS', 'Miami', 'Antioch', 38.6630664, -94.9205196, ST_GeomFromText('POINT(38.6630664 -94.9205196)', 4326), 38.6297337, -94.9891329, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479402', 'Drummond Branch', 'Stream', 'Kansas', 'KS', 'Miami', 'Spring Hill', 38.6872326, -94.8332946, ST_GeomFromText('POINT(38.6872326 -94.8332946)', 4326), 38.7166667, -94.8369444, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('479403', 'Wolf Creek', 'Stream', 'Kansas', 'KS', 'Miami', 'Spring Hill', 38.6986213, -94.8057937, ST_GeomFromText('POINT(38.6986213 -94.8057937)', 4326), 38.6819444, -94.7605556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479404', 'Elm Branch', 'Stream', 'Kansas', 'KS', 'Miami', 'Spring Hill', 38.7066767, -94.800238, ST_GeomFromText('POINT(38.7066767 -94.800238)', 4326), 38.6927883, -94.7449584, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479405', 'Cottonwood Creek', 'Stream', 'Kansas', 'KS', 'Miami', 'Spring Hill', 38.6700108, -94.8466283, ST_GeomFromText('POINT(38.6700108 -94.8466283)', 4326), 38.7030556, -94.8588889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479406', 'Sweetwater Creek', 'Stream', 'Kansas', 'KS', 'Miami', 'Spring Hill', 38.6938992, -94.8194053, ST_GeomFromText('POINT(38.6938992 -94.8194053)', 4326), 38.7683419, -94.8010715, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479407', 'Tucker Branch', 'Stream', 'Kansas', 'KS', 'Miami', 'Spring Hill', 38.7169542, -94.7899598, ST_GeomFromText('POINT(38.7169542 -94.7899598)', 4326), 38.7619533, -94.7510698, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479408', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Miami', 'Spring Hill', 38.737509, -94.8649622, ST_GeomFromText('POINT(38.737509 -94.8649622)', 4326), 38.7780641, -94.816072, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479410', 'Dorsey Branch', 'Stream', 'Kansas', 'KS', 'Miami', 'Spring Hill', 38.5647357, -94.8455172, ST_GeomFromText('POINT(38.5647357 -94.8455172)', 4326), 38.6305674, -94.8374613, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479411', 'Sixmile Creek', 'Stream', 'Kansas', 'KS', 'Miami', 'Spring Hill', 38.6502891, -94.853573, ST_GeomFromText('POINT(38.6502891 -94.853573)', 4326), 38.6488889, -94.8041667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479412', 'Wagstaff Lake', 'Reservoir', 'Kansas', 'KS', 'Miami', 'Spring Hill', 38.6508448, -94.7774594, ST_GeomFromText('POINT(38.6508448 -94.7774594)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479422', 'Poney Creek', 'Stream', 'Missouri', 'MO', 'Cass', 'Everett', 38.6116781, -94.4718963, ST_GeomFromText('POINT(38.6116781 -94.4718963)', 4326), 38.6755556, -94.6338889, '1980-10-24', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('479423', 'North Wea Creek', 'Stream', 'Kansas', 'KS', 'Miami', 'Paola East', 38.6027904, -94.7841263, ST_GeomFromText('POINT(38.6027904 -94.7841263)', 4326), 38.7447314, -94.6752346, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479427', 'Dragoon Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Vassar', 38.6625084, -95.5741483, ST_GeomFromText('POINT(38.6625084 -95.5741483)', 4326), 38.8600034, -96.1188819, '1978-10-13', '2011-04-08', 'Official', 'Board Decision', '1940-11-19'),
  ('479428', 'Soldier Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Osage City', 38.741673, -95.8741545, ST_GeomFromText('POINT(38.741673 -95.8741545)', 4326), 38.7769501, -96.0430473, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479430', 'Smith Lake', 'Reservoir', 'Kansas', 'KS', 'Osage', 'Harveyville', 38.7565085, -95.9425649, ST_GeomFromText('POINT(38.7565085 -95.9425649)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('479432', 'Batch Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Harveyville', 38.7983386, -95.9688788, ST_GeomFromText('POINT(38.7983386 -95.9688788)', 4326), 38.8675036, -96.0411024, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479433', 'Coon Creek', 'Stream', 'Kansas', 'KS', 'Wabaunsee', 'Harveyville', 38.7913943, -95.9502672, ST_GeomFromText('POINT(38.7913943 -95.9502672)', 4326), 38.8569444, -95.9608333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479435', 'Major Draw', 'Valley', 'Kansas', 'KS', 'Osage', 'Burlingame', 38.7672593, -95.8391979, ST_GeomFromText('POINT(38.7672593 -95.8391979)', 4326), 38.8166492, -95.8324675, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('479436', 'Armstrong Branch', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Wakarusa', 38.8769477, -95.7405396, ST_GeomFromText('POINT(38.8769477 -95.7405396)', 4326), 38.824171, -95.7605403, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479439', 'Hoover Branch', 'Stream', 'Kansas', 'KS', 'Osage', 'Burlingame', 38.7552836, -95.8285978, ST_GeomFromText('POINT(38.7552836 -95.8285978)', 4326), 38.8077778, -95.8108333, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479442', 'Stenger Hill', 'Summit', 'Kansas', 'KS', 'Osage', 'Burlingame', 38.8316073, -95.7532231, ST_GeomFromText('POINT(38.8316073 -95.7532231)', 4326), NULL, NULL, '1978-10-13', '2020-12-31', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('479446', 'Hundred and Ten Mile Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Quenemo', 38.5980659, -95.5091473, ST_GeomFromText('POINT(38.5980659 -95.5091473)', 4326), 38.8355599, -95.8599871, '1978-10-13', NULL, 'Official', 'Board Decision', '1940-01-01'),
  ('479450', 'Strowbridge Creek', 'Stream', 'Kansas', 'KS', 'Norton', 'Carbondale', 38.8555592, -95.5744245, ST_GeomFromText('POINT(38.8555592 -95.5744245)', 4326), 38.7955604, -95.6635938, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479451', 'Osage County Lake', 'Reservoir', 'Kansas', 'KS', 'Osage', 'Carbondale', 38.7677145, -95.6720815, ST_GeomFromText('POINT(38.7677145 -95.6720815)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('479452', 'Popcorn Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Carbondale', 38.6947295, -95.7283182, ST_GeomFromText('POINT(38.6947295 -95.7283182)', 4326), 38.7661164, -95.726651, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479459', 'Strowbridge Reservoir', 'Reservoir', 'Kansas', 'KS', 'Osage', 'Carbondale', 38.8107306, -95.648398, ST_GeomFromText('POINT(38.8107306 -95.648398)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('479461', 'Appanoose Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Ottawa South', 38.6200107, -95.3310866, ST_GeomFromText('POINT(38.6200107 -95.3310866)', 4326), 38.7758385, -95.5069239, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479462', 'Valley Brook', 'Stream', 'Kansas', 'KS', 'Osage', 'Overbrook', 38.6625084, -95.5702594, ST_GeomFromText('POINT(38.6625084 -95.5702594)', 4326), 38.7780608, -95.572203, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479463', 'Jim Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Overbrook', 38.7350062, -95.5755368, ST_GeomFromText('POINT(38.7350062 -95.5755368)', 4326), 38.7661165, -95.5397024, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479464', 'Wolf Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Vassar', 38.6819522, -95.5752593, ST_GeomFromText('POINT(38.6819522 -95.5752593)', 4326), 38.7530613, -95.5355358, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479468', 'Plummer Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Vassar', 38.7041738, -95.6216491, ST_GeomFromText('POINT(38.7041738 -95.6216491)', 4326), 38.7938937, -95.6130371, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('479473', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Douglas', 'Lawrence West', 38.9222251, -95.326363, ST_GeomFromText('POINT(38.9222251 -95.326363)', 4326), 38.7722275, -95.531091, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479474', 'West Fork Eightmile Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Ottawa North', 38.7313961, -95.3558093, ST_GeomFromText('POINT(38.7313961 -95.3558093)', 4326), 38.774728, -95.4080325, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479475', 'East Appanoose Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Ottawa NW', 38.6822304, -95.4330337, ST_GeomFromText('POINT(38.6822304 -95.4330337)', 4326), 38.7786167, -95.4369221, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479477', 'Lone Star Lake', 'Reservoir', 'Kansas', 'KS', 'Douglas', 'Globe', 38.8336276, -95.3815692, ST_GeomFromText('POINT(38.8336276 -95.3815692)', 4326), NULL, NULL, '1978-10-13', '2019-08-29', NULL, NULL, NULL),
  ('479478', 'Eightmile Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Ottawa South', 38.621122, -95.2860854, ST_GeomFromText('POINT(38.621122 -95.2860854)', 4326), 38.7950054, -95.3963654, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479481', 'Twin Mounds', 'Summit', 'Kansas', 'KS', 'Douglas', 'Globe', 38.8577451, -95.4908467, ST_GeomFromText('POINT(38.8577451 -95.4908467)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('479494', 'Washington Creek', 'Stream', 'Kansas', 'KS', 'Douglas', 'Lawrence West', 38.9183364, -95.2921957, ST_GeomFromText('POINT(38.9183364 -95.2921957)', 4326), 38.7952832, -95.4102546, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479509', 'Chicken Creek', 'Stream', 'Kansas', 'KS', 'Douglas', 'Lone Star', 38.8677819, -95.3385858, ST_GeomFromText('POINT(38.8677819 -95.3385858)', 4326), 38.8105556, -95.3311111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479515', 'Walnut Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Le Loup', 38.6277889, -95.1944163, ST_GeomFromText('POINT(38.6277889 -95.1944163)', 4326), 38.7563966, -95.1388591, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479527', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Baldwin City', 38.7183418, -95.2002496, ST_GeomFromText('POINT(38.7183418 -95.2002496)', 4326), 38.7713961, -95.1616375, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('479529', 'Middle Fork Tauy Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Le Loup', 38.7105642, -95.2158056, ST_GeomFromText('POINT(38.7105642 -95.2158056)', 4326), 38.8075061, -95.2249723, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479531', 'Coal Creek', 'Stream', 'Kansas', 'KS', 'Douglas', 'Baldwin City', 38.9127817, -95.1844159, ST_GeomFromText('POINT(38.9127817 -95.1844159)', 4326), 38.7802849, -95.1438592, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479532', 'South Lake', 'Reservoir', 'Kansas', 'KS', 'Johnson', 'Edgerton', 38.7510726, -95.0144628, ST_GeomFromText('POINT(38.7510726 -95.0144628)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('479533', 'Santa Fe Lake', 'Reservoir', 'Kansas', 'KS', 'Johnson', 'Edgerton', 38.762901, -95.00453, ST_GeomFromText('POINT(38.762901 -95.00453)', 4326), NULL, NULL, '1978-10-13', '2024-10-30', NULL, NULL, NULL),
  ('479538', 'Wymore Creek', 'Stream', 'Kansas', 'KS', 'Douglas', 'Edgerton', 38.8288953, -95.0727465, ST_GeomFromText('POINT(38.8288953 -95.0727465)', 4326), 38.7994444, -95.0538889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479545', 'Martin Creek', 'Stream', 'Kansas', 'KS', 'Johnson', 'Gardner', 38.7636192, -94.9813549, ST_GeomFromText('POINT(38.7636192 -94.9813549)', 4326), 38.7702855, -95.0635794, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479546', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Douglas', 'Antioch', 38.7036207, -94.9716323, ST_GeomFromText('POINT(38.7036207 -94.9716323)', 4326), 38.7666743, -95.1069139, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479554', 'Gardner Lake', 'Reservoir', 'Kansas', 'KS', 'Johnson', 'Gardner', 38.8473938, -94.927465, ST_GeomFromText('POINT(38.8473938 -94.927465)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('479562', 'Olathe Lake', 'Reservoir', 'Kansas', 'KS', 'Johnson', 'Ocheltree', 38.8448236, -94.8418962, ST_GeomFromText('POINT(38.8448236 -94.8418962)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('479566', 'Coffee Creek', 'Stream', 'Kansas', 'KS', 'Johnson', 'Stilwell', 38.8086194, -94.680513, ST_GeomFromText('POINT(38.8086194 -94.680513)', 4326), 38.8222301, -94.8019053, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('479567', 'Camp Branch', 'Stream', 'Kansas', 'KS', 'Johnson', 'Stilwell', 38.8288969, -94.6349564, ST_GeomFromText('POINT(38.8288969 -94.6349564)', 4326), 38.7444536, -94.6632899, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479571', 'Wolf Creek', 'Stream', 'Kansas', 'KS', 'Johnson', 'Stilwell', 38.8086194, -94.680513, ST_GeomFromText('POINT(38.8086194 -94.680513)', 4326), 38.8133412, -94.8113499, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479576', 'Blue River', 'Stream', 'Missouri', 'MO', 'Jackson', 'Liberty', 39.1300042, -94.470786, ST_GeomFromText('POINT(39.1300042 -94.470786)', 4326), 38.8086194, -94.680513, '1978-10-13', '2018-06-22', 'Official', 'Board Decision', '1963-01-01'),
  ('479578', 'Negro Creek', 'Stream', 'Kansas', 'KS', 'Johnson', 'Stilwell', 38.8605632, -94.608567, ST_GeomFromText('POINT(38.8605632 -94.608567)', 4326), 38.8497299, -94.6941247, '1978-10-13', '2020-10-08', NULL, NULL, NULL),
  ('479583', 'Standifred Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Reading', 38.5014015, -95.9108231, ST_GeomFromText('POINT(38.5014015 -95.9108231)', 4326), 38.4741798, -95.9674906, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479584', 'Mud Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Reading', 38.5133455, -95.9244343, ST_GeomFromText('POINT(38.5133455 -95.9244343)', 4326), 38.4866793, -96.0069359, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479588', 'Morse Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Reading', 38.5119567, -95.9219343, ST_GeomFromText('POINT(38.5119567 -95.9219343)', 4326), 38.585, -95.9141667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479589', 'Duck Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Reading', 38.5361227, -95.9527681, ST_GeomFromText('POINT(38.5361227 -95.9527681)', 4326), 38.6391752, -96.1602727, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479590', 'One Hundred and Fortytwo Mile Creek', 'Stream', 'Kansas', 'KS', 'Lyon', 'Reading', 38.5680663, -95.9744351, ST_GeomFromText('POINT(38.5680663 -95.9744351)', 4326), 38.7744494, -96.1972174, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479591', 'Cherry Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Reading', 38.493624, -95.881378, ST_GeomFromText('POINT(38.493624 -95.881378)', 4326), 38.5866771, -95.9030448, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('479595', 'Turkey Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Osage City SE', 38.5327899, -95.8010986, ST_GeomFromText('POINT(38.5327899 -95.8010986)', 4326), 38.5505556, -95.8361111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479596', 'Little Cable Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Osage City SE', 38.4950131, -95.8330439, ST_GeomFromText('POINT(38.4950131 -95.8330439)', 4326), 38.5569557, -95.8633219, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479597', 'Cable Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Osage City SE', 38.4936242, -95.826377, ST_GeomFromText('POINT(38.4936242 -95.826377)', 4326), 38.5466783, -95.8469328, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479600', 'Mute Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Osage City SE', 38.6044544, -95.8052649, ST_GeomFromText('POINT(38.6044544 -95.8052649)', 4326), 38.5894547, -95.9105449, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479601', 'Osage City Reservoir', 'Reservoir', 'Kansas', 'KS', 'Osage', 'Osage City SE', 38.6178448, -95.8320664, ST_GeomFromText('POINT(38.6178448 -95.8320664)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('479604', 'Melvern Lake', 'Reservoir', 'Kansas', 'KS', 'Osage', 'Lebo', 38.4896432, -95.79926, ST_GeomFromText('POINT(38.4896432 -95.79926)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', 'Official', 'Board Decision', '1971-01-01'),
  ('479606', 'Chicken Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Lyndon', 38.5150128, -95.6727627, ST_GeomFromText('POINT(38.5150128 -95.6727627)', 4326), 38.5680556, -95.6805556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479616', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Quenemo', 38.5255681, -95.5785937, ST_GeomFromText('POINT(38.5255681 -95.5785937)', 4326), 38.3539065, -95.5660944, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479617', 'Willow Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Quenemo', 38.5066798, -95.592483, ST_GeomFromText('POINT(38.5066798 -95.592483)', 4326), 38.4297375, -95.6280398, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479618', 'Long Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Quenemo', 38.5202905, -95.610539, ST_GeomFromText('POINT(38.5202905 -95.610539)', 4326), 38.3380733, -95.7113749, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('479620', 'Tequa Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Quenemo', 38.5419564, -95.540815, ST_GeomFromText('POINT(38.5419564 -95.540815)', 4326), 38.4869581, -95.5185925, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479621', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Quenemo', 38.563067, -95.5158143, ST_GeomFromText('POINT(38.563067 -95.5158143)', 4326), 38.5855556, -95.6222222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479625', 'Wolf Creek', 'Stream', 'Kansas', 'KS', 'Osage', 'Quenemo', 38.5233459, -95.6216503, ST_GeomFromText('POINT(38.5233459 -95.6216503)', 4326), 38.5791776, -95.6538729, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479632', 'Whisky Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Pomona', 38.5816781, -95.4060889, ST_GeomFromText('POINT(38.5816781 -95.4060889)', 4326), 38.5480556, -95.3888889, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479633', 'Coal Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Pomona', 38.5864002, -95.4016443, ST_GeomFromText('POINT(38.5864002 -95.4016443)', 4326), 38.4858473, -95.445535, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479637', 'Hard Fish Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Pomona', 38.5875109, -95.4672017, ST_GeomFromText('POINT(38.5875109 -95.4672017)', 4326), 38.5130556, -95.4697222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479643', 'Payne Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Richmond', 38.4875147, -95.3238646, ST_GeomFromText('POINT(38.4875147 -95.3238646)', 4326), 38.5161244, -95.4122004, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479647', 'Sand Hills', 'Range', 'Kansas', 'KS', 'Franklin', 'Ottawa South', 38.5575208, -95.3037362, ST_GeomFromText('POINT(38.5575208 -95.3037362)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('479651', 'Chippewa Hills', 'Summit', 'Kansas', 'KS', 'Franklin', 'Ottawa South', 38.5680565, -95.369028, ST_GeomFromText('POINT(38.5680565 -95.369028)', 4326), NULL, NULL, '1978-10-13', '2025-02-26', NULL, NULL, NULL),
  ('479653', 'Harrison Branch', 'Stream', 'Kansas', 'KS', 'Franklin', 'Ottawa South', 38.5869561, -95.3280311, ST_GeomFromText('POINT(38.5869561 -95.3280311)', 4326), 38.5591667, -95.3538889, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('479654', 'Capps Lake', 'Reservoir', 'Kansas', 'KS', 'Franklin', 'Ottawa South', 38.582124, -95.352724, ST_GeomFromText('POINT(38.582124 -95.352724)', 4326), NULL, NULL, '1978-10-13', '2024-10-28', NULL, NULL, NULL),
  ('479659', 'Robinson Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Ottawa South', 38.5975115, -95.3171974, ST_GeomFromText('POINT(38.5975115 -95.3171974)', 4326), 38.5636111, -95.3022222, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479660', 'Mud Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Ottawa South', 38.5969558, -95.3230309, ST_GeomFromText('POINT(38.5969558 -95.3230309)', 4326), 38.539735, -95.3838662, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479661', 'Nugent Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Ottawa South', 38.6183443, -95.2927522, ST_GeomFromText('POINT(38.6183443 -95.2927522)', 4326), 38.5677778, -95.2830556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479666', 'Island Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Ottawa South', 38.6183442, -95.3013636, ST_GeomFromText('POINT(38.6183442 -95.3013636)', 4326), 38.6177778, -95.3311111, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479673', 'Middle Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Peoria', 38.565013, -95.1296923, ST_GeomFromText('POINT(38.565013 -95.1296923)', 4326), 38.4836253, -95.4352569, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479678', 'Rock Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Peoria', 38.5994562, -95.2344174, ST_GeomFromText('POINT(38.5994562 -95.2344174)', 4326), 38.5333465, -95.3391427, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479698', 'Turkey Creek', 'Stream', 'Kansas', 'KS', 'Franklin', 'Rantoul', 38.5772349, -95.0924691, ST_GeomFromText('POINT(38.5772349 -95.0924691)', 4326), 38.6016789, -94.9957999, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479703', 'Osawatomie Lake', 'Reservoir', 'Kansas', 'KS', 'Miami', 'Paola West', 38.5283091, -94.9927251, ST_GeomFromText('POINT(38.5283091 -94.9927251)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('479704', 'Paola Lake', 'Reservoir', 'Kansas', 'KS', 'Miami', 'Paola West', 38.614675, -94.893429, ST_GeomFromText('POINT(38.614675 -94.893429)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('479711', 'Plum Creek', 'Stream', 'Kansas', 'KS', 'Miami', 'Paola West', 38.5044592, -94.9491317, ST_GeomFromText('POINT(38.5044592 -94.9491317)', 4326), 38.5938889, -94.9894444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479716', 'McFadden Branch', 'Stream', 'Kansas', 'KS', 'Miami', 'Paola West', 38.5489025, -94.96441, ST_GeomFromText('POINT(38.5489025 -94.96441)', 4326), 38.5669444, -94.9877778, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479717', 'Walnut Creek', 'Stream', 'Kansas', 'KS', 'Miami', 'Paola West', 38.5772352, -94.8927409, ST_GeomFromText('POINT(38.5772352 -94.8927409)', 4326), 38.6163889, -94.9855556, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479718', 'Bell Branch', 'Stream', 'Kansas', 'KS', 'Miami', 'Paola West', 38.5941792, -94.9263531, ST_GeomFromText('POINT(38.5941792 -94.9263531)', 4326), 38.6300116, -94.9316311, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479722', 'Scott Branch Bull Creek', 'Stream', 'Kansas', 'KS', 'Miami', 'Paola West', 38.655011, -94.9130194, ST_GeomFromText('POINT(38.655011 -94.9130194)', 4326), 38.623345, -94.968299, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479723', 'Bull Creek', 'Stream', 'Kansas', 'KS', 'Miami', 'Paola East', 38.5016818, -94.8469062, ST_GeomFromText('POINT(38.5016818 -94.8469062)', 4326), 38.8244514, -94.9827443, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479726', 'South Wea Creek', 'Stream', 'Kansas', 'KS', 'Miami', 'Paola East', 38.5483472, -94.8599621, ST_GeomFromText('POINT(38.5483472 -94.8599621)', 4326), 38.5855684, -94.6813458, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479743', 'Elm Branch', 'Stream', 'Kansas', 'KS', 'Miami', 'Paola East', 38.4750161, -94.8121827, ST_GeomFromText('POINT(38.4750161 -94.8121827)', 4326), 38.5397364, -94.7766261, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479744', 'Miola Lake', 'Reservoir', 'Kansas', 'KS', 'Miami', 'Paola East', 38.5902049, -94.8439097, ST_GeomFromText('POINT(38.5902049 -94.8439097)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('479749', 'Walnut Creek', 'Stream', 'Kansas', 'KS', 'Miami', 'New Lancaster', 38.4889045, -94.7460695, ST_GeomFromText('POINT(38.4889045 -94.7460695)', 4326), 38.5386253, -94.7371804, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('479750', 'Rabbit Creek', 'Stream', 'Kansas', 'KS', 'Miami', 'Louisburg', 38.585846, -94.681068, ST_GeomFromText('POINT(38.585846 -94.681068)', 4326), 38.5908333, -94.6325, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479759', 'Jake Branch', 'Stream', 'Kansas', 'KS', 'Miami', 'Louisburg', 38.5016816, -94.713291, ST_GeomFromText('POINT(38.5016816 -94.713291)', 4326), 38.5519444, -94.7094444, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479760', 'Rodgers Branch', 'Stream', 'Kansas', 'KS', 'Miami', 'Louisburg', 38.504737, -94.7027352, ST_GeomFromText('POINT(38.504737 -94.7027352)', 4326), 38.5544444, -94.7016667, '1978-10-13', NULL, NULL, NULL, NULL),
  ('479764', 'Louisburg Lake', 'Reservoir', 'Kansas', 'KS', 'Miami', 'Louisburg', 38.6086405, -94.6724958, ST_GeomFromText('POINT(38.6086405 -94.6724958)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('479789', 'Ford County Lake', 'Reservoir', 'Kansas', 'KS', 'Ford', 'Wright', 37.824083, -99.9182246, ST_GeomFromText('POINT(37.824083 -99.9182246)', 4326), NULL, NULL, '1984-07-01', '2023-04-25', NULL, NULL, NULL),
  ('479836', 'Waconda Lake', 'Reservoir', 'Kansas', 'KS', 'Mitchell', 'Glen Elder South', 39.4909653, -98.3728538, ST_GeomFromText('POINT(39.4909653 -98.3728538)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('479837', 'Clinton Lake', 'Reservoir', 'Kansas', 'KS', 'Douglas', 'Clinton', 38.8975653, -95.3883465, ST_GeomFromText('POINT(38.8975653 -95.3883465)', 4326), NULL, NULL, '1984-07-01', '2018-09-21', NULL, NULL, NULL),
  ('479838', 'Elk City Lake', 'Reservoir', 'Kansas', 'KS', 'Montgomery', 'Table Mound', 37.2574246, -95.8022572, ST_GeomFromText('POINT(37.2574246 -95.8022572)', 4326), NULL, NULL, '1984-07-01', '2019-09-11', NULL, NULL, NULL),
  ('479839', 'El Dorado Lake', 'Reservoir', 'Kansas', 'KS', 'Butler', 'El Dorado', 37.8472402, -96.8230838, ST_GeomFromText('POINT(37.8472402 -96.8230838)', 4326), NULL, NULL, '1984-07-01', '2019-09-11', NULL, NULL, NULL),
  ('479850', 'Breakneck Lake', 'Reservoir', 'Kansas', 'KS', 'Riley', 'Junction City', 39.0901574, -96.8482622, ST_GeomFromText('POINT(39.0901574 -96.8482622)', 4326), NULL, NULL, '1984-07-01', '2018-09-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('479851', 'Camp Moon Lake', 'Reservoir', 'Kansas', 'KS', 'Geary', 'Junction City', 39.073811, -96.80351, ST_GeomFromText('POINT(39.073811 -96.80351)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('479867', 'Lake Wynds', 'Reservoir', 'Kansas', 'KS', 'Cowley', 'Silverdale', 37.072379, -96.9747741, ST_GeomFromText('POINT(37.072379 -96.9747741)', 4326), NULL, NULL, '1984-07-01', '2018-06-27', NULL, NULL, NULL),
  ('479869', 'Bourbon County State Lake', 'Reservoir', 'Kansas', 'KS', 'Bourbon', 'Moran SE', 37.7924861, -95.0674362, ST_GeomFromText('POINT(37.7924861 -95.0674362)', 4326), NULL, NULL, '1984-07-01', '2023-04-05', NULL, NULL, NULL),
  ('479871', 'Brown County State Lake', 'Reservoir', 'Kansas', 'KS', 'Brown', 'Highland', 39.8485871, -95.3746113, ST_GeomFromText('POINT(39.8485871 -95.3746113)', 4326), NULL, NULL, '1984-07-01', '2018-07-05', NULL, NULL, NULL),
  ('479876', 'Cowley County State Lake', 'Reservoir', 'Kansas', 'KS', 'Cowley', 'Maple City', 37.0985852, -96.8007507, ST_GeomFromText('POINT(37.0985852 -96.8007507)', 4326), NULL, NULL, '1984-07-01', '2018-06-27', NULL, NULL, NULL),
  ('479878', 'Finney Lake', 'Reservoir', 'Kansas', 'KS', 'Finney', 'Hay Canyon', 38.1780542, -100.3384484, ST_GeomFromText('POINT(38.1780542 -100.3384484)', 4326), NULL, NULL, '1984-07-01', '2018-09-27', NULL, NULL, NULL),
  ('479881', 'Hodgeman County State Lake', 'Reservoir', 'Kansas', 'KS', 'Hodgeman', 'Jetmore SE', 38.0477801, -99.8243861, ST_GeomFromText('POINT(38.0477801 -99.8243861)', 4326), NULL, NULL, '1984-07-01', '2023-04-25', NULL, NULL, NULL),
  ('479882', 'Jewell County State Lake', 'Reservoir', 'Kansas', 'KS', 'Jewell', 'Ionia', 39.6996175, -98.2785277, ST_GeomFromText('POINT(39.6996175 -98.2785277)', 4326), NULL, NULL, '1984-07-01', '2018-09-21', NULL, NULL, NULL),
  ('479885', 'Kingman County State Lake', 'Reservoir', 'Kansas', 'KS', 'Kingman', 'Penalosa', 37.6552268, -98.2604277, ST_GeomFromText('POINT(37.6552268 -98.2604277)', 4326), NULL, NULL, '1984-07-01', '2018-09-28', NULL, NULL, NULL),
  ('479886', 'Kiowa County State Lake', 'Reservoir', 'Kansas', 'KS', 'Kiowa', 'Greensburg', 37.6118889, -99.3012348, ST_GeomFromText('POINT(37.6118889 -99.3012348)', 4326), NULL, NULL, '1984-07-01', '2018-09-27', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('479893', 'Miami County State Lake', 'Reservoir', 'Kansas', 'KS', 'Miami', 'Fontana', 38.4210185, -94.7916001, ST_GeomFromText('POINT(38.4210185 -94.7916001)', 4326), NULL, NULL, '1984-07-01', '2018-09-21', NULL, NULL, NULL),
  ('479895', 'Montgomery County State Lake', 'Reservoir', 'Kansas', 'KS', 'Montgomery', 'Independence', 37.1635462, -95.6927101, ST_GeomFromText('POINT(37.1635462 -95.6927101)', 4326), NULL, NULL, '1984-07-01', '2018-07-05', NULL, NULL, NULL),
  ('479897', 'Nemaha County State Lake', 'Reservoir', 'Kansas', 'KS', 'Nemaha', 'Seneca', 39.7733309, -96.0369438, ST_GeomFromText('POINT(39.7733309 -96.0369438)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('479903', 'Saline County State Lake', 'Reservoir', 'Kansas', 'KS', 'Saline', 'Trenton', 38.9022817, -97.6551542, ST_GeomFromText('POINT(38.9022817 -97.6551542)', 4326), NULL, NULL, '1984-07-01', '2018-09-21', NULL, NULL, NULL),
  ('479905', 'Scott County State Lake', 'Reservoir', 'Kansas', 'KS', 'Scott', 'Lake Scott', 38.6916819, -100.9254265, ST_GeomFromText('POINT(38.6916819 -100.9254265)', 4326), NULL, NULL, '1984-07-01', '2019-11-19', NULL, NULL, NULL),
  ('479909', 'Washington County State Lake', 'Reservoir', 'Kansas', 'KS', 'Washington', 'Washington NE', 39.9260112, -97.1192371, ST_GeomFromText('POINT(39.9260112 -97.1192371)', 4326), NULL, NULL, '1984-07-01', '2018-09-21', NULL, NULL, NULL),
  ('479910', 'Sherman County State Lake', 'Reservoir', 'Kansas', 'KS', 'Sherman', 'Horsethief Draw NE', 39.1868838, -101.782477, ST_GeomFromText('POINT(39.1868838 -101.782477)', 4326), NULL, NULL, '1984-07-01', '2018-09-21', NULL, NULL, NULL),
  ('479913', 'Wilson County State Lake', 'Reservoir', 'Kansas', 'KS', 'Wilson', 'Buffalo', 37.697892, -95.6728456, ST_GeomFromText('POINT(37.697892 -95.6728456)', 4326), NULL, NULL, '1984-07-01', '2018-07-05', NULL, NULL, NULL),
  ('479916', 'Roberts Lake', 'Reservoir', 'Kansas', 'KS', 'Johnson', 'Eudora', 38.8980361, -95.0263004, ST_GeomFromText('POINT(38.8980361 -95.0263004)', 4326), NULL, NULL, '1984-07-01', '2018-09-21', NULL, NULL, NULL),
  ('479929', 'Baldwin City Lake', 'Reservoir', 'Kansas', 'KS', 'Douglas', 'Baldwin City', 38.7551882, -95.1619949, ST_GeomFromText('POINT(38.7551882 -95.1619949)', 4326), NULL, NULL, '1984-07-01', '2018-09-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('479934', 'Anthony Municipal Lake', 'Reservoir', 'Kansas', 'KS', 'Harper', 'Anthony', 37.1799949, -98.0513512, ST_GeomFromText('POINT(37.1799949 -98.0513512)', 4326), NULL, NULL, '1984-07-01', '2018-07-05', NULL, NULL, NULL),
  ('479950', 'Idlewild Lake', 'Reservoir', 'Kansas', 'KS', 'Marshall', 'Blue Rapids', 39.7090684, -96.7446175, ST_GeomFromText('POINT(39.7090684 -96.7446175)', 4326), NULL, NULL, '1984-07-01', '2018-09-21', NULL, NULL, NULL),
  ('479958', 'City Lake', 'Reservoir', 'Kansas', 'KS', 'Neosho', 'Thayer', 37.482132, -95.4858187, ST_GeomFromText('POINT(37.482132 -95.4858187)', 4326), NULL, NULL, '1984-07-01', '2018-07-05', NULL, NULL, NULL),
  ('479959', 'Almena City Lake', 'Reservoir', 'Kansas', 'KS', 'Norton', 'Almena', 39.8850075, -99.68039, ST_GeomFromText('POINT(39.8850075 -99.68039)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('479967', 'Spriggs Rock Lake', 'Reservoir', 'Kansas', 'KS', 'Rice', 'Little River', 38.4006734, -98.0530413, ST_GeomFromText('POINT(38.4006734 -98.0530413)', 4326), NULL, NULL, '1984-07-01', '2018-09-27', NULL, NULL, NULL),
  ('479970', 'Lucas City Lake', 'Reservoir', 'Kansas', 'KS', 'Russell', 'Lucas', 39.0450109, -98.5236775, ST_GeomFromText('POINT(39.0450109 -98.5236775)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('479972', 'Wellington Lake', 'Reservoir', 'Kansas', 'KS', 'Sumner', 'Perth', 37.2182849, -97.5227147, ST_GeomFromText('POINT(37.2182849 -97.5227147)', 4326), NULL, NULL, '1984-07-01', '2018-07-05', NULL, NULL, NULL),
  ('479979', 'Clear Creek Lake', 'Reservoir', 'Kansas', 'KS', 'Atchison', 'Everest', 39.6376591, -95.4569159, ST_GeomFromText('POINT(39.6376591 -95.4569159)', 4326), NULL, NULL, '1984-07-01', '2018-09-21', NULL, NULL, NULL),
  ('479983', 'Clay County Lake', 'Reservoir', 'Kansas', 'KS', 'Clay', 'Wakefield', 39.211532, -97.0301355, ST_GeomFromText('POINT(39.211532 -97.0301355)', 4326), NULL, NULL, '1984-07-01', '2018-09-21', NULL, NULL, NULL),
  ('479989', 'Antelope Lake', 'Reservoir', 'Kansas', 'KS', 'Graham', 'Morland', 39.3744583, -100.1125431, ST_GeomFromText('POINT(39.3744583 -100.1125431)', 4326), NULL, NULL, '1984-07-01', '2018-09-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('479992', 'Jewell County Lake', 'Reservoir', 'Kansas', 'KS', 'Jewell', 'Swede Creek', 39.0427766, -96.5655576, ST_GeomFromText('POINT(39.0427766 -96.5655576)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('480005', 'Lowell Reservoir', 'Reservoir', 'Kansas', 'KS', 'Cherokee', 'Baxter Springs', 37.0550633, -94.7018939, ST_GeomFromText('POINT(37.0550633 -94.7018939)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('480011', 'Forty and Eight Lake', 'Reservoir', 'Kansas', 'KS', 'Sedgwick', 'Topeka', 39.0366672, -95.724705, ST_GeomFromText('POINT(39.0366672 -95.724705)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('480015', 'Black Swan Lake', 'Reservoir', 'Kansas', 'KS', 'Johnson', 'Shawnee', 39.0428425, -94.7319338, ST_GeomFromText('POINT(39.0428425 -94.7319338)', 4326), NULL, NULL, '1984-07-01', '2018-09-21', NULL, NULL, NULL),
  ('480019', 'Hidden Valley Lake', 'Reservoir', 'Kansas', 'KS', 'Bourbon', 'Topeka', 39.0144453, -95.7419278, ST_GeomFromText('POINT(39.0144453 -95.7419278)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('480021', 'Lake De Lago', 'Reservoir', 'Kansas', 'KS', 'Linn', 'Mound City', 38.2047685, -94.8720886, ST_GeomFromText('POINT(38.2047685 -94.8720886)', 4326), NULL, NULL, '1984-07-01', '2018-09-21', NULL, NULL, NULL),
  ('480024', 'Timber Lake', 'Reservoir', 'Kansas', 'KS', 'Linn', 'Mound City', 38.2081639, -94.8661128, ST_GeomFromText('POINT(38.2081639 -94.8661128)', 4326), NULL, NULL, '1984-07-01', '2018-09-21', NULL, NULL, NULL),
  ('480026', 'Lake Chaparral', 'Reservoir', 'Kansas', 'KS', 'Linn', 'Mound City NW', 38.2035741, -94.8791821, ST_GeomFromText('POINT(38.2035741 -94.8791821)', 4326), NULL, NULL, '1984-07-01', '2018-09-21', NULL, NULL, NULL),
  ('480069', 'Flint Hills', 'Range', 'Kansas', 'KS', 'Cowley', 'Cambridge', 37.2833606, -96.675303, ST_GeomFromText('POINT(37.2833606 -96.675303)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('480164', 'Chautauqua Hills', 'Range', 'Kansas', 'KS', 'Chautauqua', 'Peru', 37.0395053, -96.1141536, ST_GeomFromText('POINT(37.0395053 -96.1141536)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('480166', 'Blue Hills', 'Range', 'Kansas', 'KS', 'Mitchell', 'Tipton', 39.2862336, -98.424475, ST_GeomFromText('POINT(39.2862336 -98.424475)', 4326), NULL, NULL, '1984-07-01', '2025-02-27', NULL, NULL, NULL),
  ('480170', 'Red Hills', 'Range', 'Kansas', 'KS', 'Comanche', 'Wilmore SE', 37.3416897, -99.0795507, ST_GeomFromText('POINT(37.3416897 -99.0795507)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('480180', 'Albany Hill', 'Summit', 'Kansas', 'KS', 'Nemaha', 'Sabetha', 39.9369379, -95.7979297, ST_GeomFromText('POINT(39.9369379 -95.7979297)', 4326), NULL, NULL, '1984-07-01', '2021-01-08', NULL, NULL, NULL),
  ('480232', 'Duncan Creek', 'Stream', 'Kansas', 'KS', 'Doniphan', 'Troy', 39.7811049, -95.001637, ST_GeomFromText('POINT(39.7811049 -95.001637)', 4326), 39.816383, -95.0077487, '1984-07-01', NULL, NULL, NULL, NULL),
  ('480263', 'Hermes Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Glen Elder North', 39.5638995, -98.3295008, ST_GeomFromText('POINT(39.5638995 -98.3295008)', 4326), 39.5858333, -98.3291667, '1984-07-01', NULL, NULL, NULL, NULL),
  ('480274', 'Stevensons Lake', 'Reservoir', 'Kansas', 'KS', 'Graham', 'Bogue NW', 39.4458399, -99.7287265, ST_GeomFromText('POINT(39.4458399 -99.7287265)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('480279', 'Robbers Roost Creek', 'Stream', 'Kansas', 'KS', 'Rooks', 'Stockton', 39.4163987, -99.2970427, ST_GeomFromText('POINT(39.4163987 -99.2970427)', 4326), 39.2852878, -99.297044, '1984-07-01', NULL, NULL, NULL, NULL),
  ('480298', 'Antelope County Lake', 'Reservoir', 'Kansas', 'KS', 'Graham', 'Morland NE', 39.3805598, -100.108742, ST_GeomFromText('POINT(39.3805598 -100.108742)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('480361', 'Sixmile Creek', 'Stream', 'Kansas', 'KS', 'Logan', 'Russell Springs NE', 38.8830672, -101.0645969, ST_GeomFromText('POINT(38.8830672 -101.0645969)', 4326), 39.0388973, -101.2015458, '1984-07-01', NULL, NULL, NULL, NULL),
  ('480383', 'Sweetwater Canyon', 'Valley', 'Kansas', 'KS', 'Ellis', 'Fairport', 39.0533829, -99.0680385, ST_GeomFromText('POINT(39.0533829 -99.0680385)', 4326), 39.0480803, -99.0824702, '1978-10-13', '2017-08-25', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('480384', 'South Branch', 'Stream', 'Kansas', 'KS', 'Riley', 'Swede Creek', 39.1013869, -96.5919474, ST_GeomFromText('POINT(39.1013869 -96.5919474)', 4326), 39.0808333, -96.5741667, '1984-07-01', NULL, NULL, NULL, NULL),
  ('480385', 'North Branch', 'Stream', 'Kansas', 'KS', 'Riley', 'Swede Creek', 39.1013869, -96.5919474, ST_GeomFromText('POINT(39.1013869 -96.5919474)', 4326), 39.0936111, -96.5666667, '1984-07-01', NULL, NULL, NULL, NULL),
  ('480388', 'Sappa Creek', 'Stream', 'Kansas', 'KS', 'Sherman', 'Ruleton', 39.2577785, -101.9499007, ST_GeomFromText('POINT(39.2577785 -101.9499007)', 4326), 39.2244448, -102.085738, '1978-10-13', NULL, NULL, NULL, NULL),
  ('480390', 'Rose Dome', 'Summit', 'Kansas', 'KS', 'Woodson', 'Rose', 37.7798795, -95.7082431, ST_GeomFromText('POINT(37.7798795 -95.7082431)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('480393', 'Mineral Lake', 'Lake', 'Kansas', 'KS', 'Cherokee', 'West Mineral', 37.2875579, -94.9127402, ST_GeomFromText('POINT(37.2875579 -94.9127402)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('480401', 'Lake Dabanawa', 'Reservoir', 'Kansas', 'KS', 'Jefferson', 'McLouth', 39.1361155, -95.2390731, ST_GeomFromText('POINT(39.1361155 -95.2390731)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('480403', 'Geary County State Lake', 'Reservoir', 'Kansas', 'KS', 'Geary', 'Wreford', 38.9021417, -96.8632863, ST_GeomFromText('POINT(38.9021417 -96.8632863)', 4326), NULL, NULL, '1978-10-13', '2018-09-21', NULL, NULL, NULL),
  ('480826', 'Prescott City Lake', 'Reservoir', 'Kansas', 'KS', 'Linn', 'Prescott', 38.0604967, -94.6794099, ST_GeomFromText('POINT(38.0604967 -94.6794099)', 4326), NULL, NULL, '1984-07-01', '2018-09-21', NULL, NULL, NULL),
  ('480853', 'Charlie Creek', 'Stream', 'Kansas', 'KS', 'Doniphan', 'Highland', 39.7777774, -95.2949762, ST_GeomFromText('POINT(39.7777774 -95.2949762)', 4326), 39.8202778, -95.3055556, '1978-10-13', NULL, 'Official', 'Board Decision', '1982-01-01'),
  ('480854', 'North Branch Kings Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Swede Creek', 39.1013869, -96.5922251, ST_GeomFromText('POINT(39.1013869 -96.5922251)', 4326), 39.0861111, -96.5577778, '1978-10-13', NULL, 'Official', 'Board Decision', '1979-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('480855', 'Kings Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Swede Creek', 39.1197199, -96.6150036, ST_GeomFromText('POINT(39.1197199 -96.6150036)', 4326), 39.1016667, -96.5919444, '1978-10-13', NULL, 'Official', 'Board Decision', '1979-01-01'),
  ('480856', 'South Branch Kings Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Swede Creek', 39.1013869, -96.5922251, ST_GeomFromText('POINT(39.1013869 -96.5922251)', 4326), 39.0772222, -96.5680556, '1978-10-13', NULL, 'Official', 'Board Decision', '1979-01-01'),
  ('480910', 'Sand Spring', 'Spring', 'Kansas', 'KS', 'Dickinson', 'Solomon', 38.9069439, -97.2841897, ST_GeomFromText('POINT(38.9069439 -97.2841897)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('480947', 'Douglas Lake', 'Reservoir', 'Kansas', 'KS', 'Douglas', 'Baldwin City', 38.8006143, -95.1591795, ST_GeomFromText('POINT(38.8006143 -95.1591795)', 4326), NULL, NULL, '1984-07-01', '2018-09-21', NULL, NULL, NULL),
  ('480959', 'Round House Rock', 'Summit', 'Kansas', 'KS', 'Trego', 'Brownell', 38.7338954, -99.6523281, ST_GeomFromText('POINT(38.7338954 -99.6523281)', 4326), NULL, NULL, '1984-07-01', '2021-01-01', NULL, NULL, NULL),
  ('480983', 'Lake Fort Scott', 'Reservoir', 'Kansas', 'KS', 'Bourbon', 'Marmaton', 37.7807818, -94.7572595, ST_GeomFromText('POINT(37.7807818 -94.7572595)', 4326), NULL, NULL, '1984-07-01', '2018-09-21', NULL, NULL, NULL),
  ('481008', 'Ulysses City Lake', 'Reservoir', 'Kansas', 'KS', 'Grant', 'Ulysses', 37.5647434, -101.3329473, ST_GeomFromText('POINT(37.5647434 -101.3329473)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481013', 'Lake Waltanna', 'Reservoir', 'Kansas', 'KS', 'Sedgwick', 'Clearwater', 37.5981238, -97.61275, ST_GeomFromText('POINT(37.5981238 -97.61275)', 4326), NULL, NULL, '1984-07-01', '2018-09-27', NULL, NULL, NULL),
  ('481028', 'Kemp Creek', 'Stream', 'Kansas', 'KS', 'Kingman', 'Zenda', 37.4633516, -98.2542363, ST_GeomFromText('POINT(37.4633516 -98.2542363)', 4326), 37.5125178, -98.2659035, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481091', 'Timber Creek Lake', 'Reservoir', 'Kansas', 'KS', 'Cowley', 'Burden', 37.3542026, -96.8739903, ST_GeomFromText('POINT(37.3542026 -96.8739903)', 4326), NULL, NULL, '1984-07-01', '2018-09-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('481104', 'Pasture Number Fortyseven', 'Flat', 'Kansas', 'KS', 'Morton', 'Midway NE', 37.2083546, -102.0337839, ST_GeomFromText('POINT(37.2083546 -102.0337839)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481105', 'Pasture Number Six', 'Flat', 'Kansas', 'KS', 'Morton', 'Midway NE', 37.2402992, -102.0129501, ST_GeomFromText('POINT(37.2402992 -102.0129501)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481106', 'Pasture Number Five', 'Flat', 'Kansas', 'KS', 'Morton', 'Midway NE', 37.2472435, -102.0226727, ST_GeomFromText('POINT(37.2472435 -102.0226727)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481107', 'Pasture Number Four', 'Flat', 'Kansas', 'KS', 'Morton', 'Midway NE', 37.2389101, -102.0310063, ST_GeomFromText('POINT(37.2389101 -102.0310063)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481108', 'Pasture Number Seventeen', 'Flat', 'Kansas', 'KS', 'Morton', 'Midway NE', 37.1819661, -102.0129496, ST_GeomFromText('POINT(37.1819661 -102.0129496)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481109', 'Pasture Number Eighteen', 'Flat', 'Kansas', 'KS', 'Morton', 'Midway NE', 37.1486327, -102.0296167, ST_GeomFromText('POINT(37.1486327 -102.0296167)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481110', 'Pasture Number Nineteen', 'Flat', 'Kansas', 'KS', 'Morton', 'Midway NE', 37.1486329, -102.0087825, ST_GeomFromText('POINT(37.1486329 -102.0087825)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481111', 'North Lowe Pasture', 'Flat', 'Kansas', 'KS', 'Morton', 'Rolla NW', 37.1847464, -101.7184969, ST_GeomFromText('POINT(37.1847464 -101.7184969)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481112', 'South Pasture', 'Flat', 'Kansas', 'KS', 'Morton', 'Rolla NW', 37.19308, -101.6365505, ST_GeomFromText('POINT(37.19308 -101.6365505)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481113', 'Rollo Pasture', 'Flat', 'Kansas', 'KS', 'Morton', 'Rolla NW', 37.1750245, -101.6643288, ST_GeomFromText('POINT(37.1750245 -101.6643288)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('481114', 'Bridge Pasture', 'Flat', 'Kansas', 'KS', 'Morton', 'Rolla NW', 37.1514135, -101.6823845, ST_GeomFromText('POINT(37.1514135 -101.6823845)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481123', 'Pasture Number Twentyfour', 'Flat', 'Kansas', 'KS', 'Morton', 'Rolla NE', 37.2041911, -101.5782157, ST_GeomFromText('POINT(37.2041911 -101.5782157)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481124', 'Pasture Number Fortyfour', 'Flat', 'Kansas', 'KS', 'Stevens', 'Rolla NE', 37.2472462, -101.5296031, ST_GeomFromText('POINT(37.2472462 -101.5296031)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481125', 'Pasture Number Twentythree', 'Flat', 'Kansas', 'KS', 'Morton', 'Rolla NE', 37.2000244, -101.6129388, ST_GeomFromText('POINT(37.2000244 -101.6129388)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481140', 'Stateline Pasture', 'Flat', 'Kansas', 'KS', 'Morton', 'Midway SE', 37.0055779, -102.0171152, ST_GeomFromText('POINT(37.0055779 -102.0171152)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481141', 'Steer Pasture', 'Flat', 'Kansas', 'KS', 'Morton', 'Midway SE', 37.0486333, -102.0171155, ST_GeomFromText('POINT(37.0486333 -102.0171155)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481142', 'Unit One Pasture', 'Flat', 'Kansas', 'KS', 'Morton', 'Midway SE', 37.1194664, -102.0018377, ST_GeomFromText('POINT(37.1194664 -102.0018377)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481143', 'Unit One Pasture', 'Flat', 'Kansas', 'KS', 'Morton', 'Midway SE', 37.1069661, -102.03795, ST_GeomFromText('POINT(37.1069661 -102.03795)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481144', 'Pasture Number Fortyone', 'Flat', 'Kansas', 'KS', 'Morton', 'Wilburton', 37.0472464, -101.8129421, ST_GeomFromText('POINT(37.0472464 -101.8129421)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481145', 'Pasture Number Fortyeight', 'Flat', 'Kansas', 'KS', 'Morton', 'Wilburton', 37.0500244, -101.7948859, ST_GeomFromText('POINT(37.0500244 -101.7948859)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('481146', 'Pasture Number Fortythree', 'Flat', 'Kansas', 'KS', 'Morton', 'Wilburton', 37.0347469, -101.7754407, ST_GeomFromText('POINT(37.0347469 -101.7754407)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481147', 'Pasture Number Thirtysix', 'Flat', 'Kansas', 'KS', 'Morton', 'Wilburton', 37.0416913, -101.7768297, ST_GeomFromText('POINT(37.0416913 -101.7768297)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481148', 'Pasture Number Fortynine', 'Flat', 'Kansas', 'KS', 'Morton', 'Wilburton', 37.0875246, -101.7587742, ST_GeomFromText('POINT(37.0875246 -101.7587742)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481149', 'Coen Pasture', 'Flat', 'Kansas', 'KS', 'Morton', 'Wilburton', 37.104191, -101.7754416, ST_GeomFromText('POINT(37.104191 -101.7754416)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481150', 'Sandhills Pasture', 'Flat', 'Kansas', 'KS', 'Morton', 'Wilburton', 37.1083578, -101.7546077, ST_GeomFromText('POINT(37.1083578 -101.7546077)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481151', 'Artesian Pasture', 'Flat', 'Kansas', 'KS', 'Morton', 'Wilburton', 37.1125237, -101.8337768, ST_GeomFromText('POINT(37.1125237 -101.8337768)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481152', 'Pasture Number Thirtyseven', 'Flat', 'Kansas', 'KS', 'Morton', 'Wilburton', 37.0611351, -101.8296095, ST_GeomFromText('POINT(37.0611351 -101.8296095)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481153', 'Pasture Number Thirtythree', 'Flat', 'Kansas', 'KS', 'Morton', 'Wilburton', 37.0208571, -101.8671103, ST_GeomFromText('POINT(37.0208571 -101.8671103)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481189', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Labette', 'Coffeyville East', 37.0797984, -95.5674775, ST_GeomFromText('POINT(37.0797984 -95.5674775)', 4326), 37.0980556, -95.52, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481191', 'Pasture Number Twentynine', 'Flat', 'Kansas', 'KS', 'Morton', 'Rolla', 37.0403033, -101.6865504, ST_GeomFromText('POINT(37.0403033 -101.6865504)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('481192', 'Watson Pasture', 'Flat', 'Kansas', 'KS', 'Morton', 'Rolla', 37.0625255, -101.6546058, ST_GeomFromText('POINT(37.0625255 -101.6546058)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481193', 'Pasture Number Twentyeight', 'Flat', 'Kansas', 'KS', 'Morton', 'Rolla', 37.0875255, -101.6323833, ST_GeomFromText('POINT(37.0875255 -101.6323833)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481194', 'Tucker Pasture', 'Flat', 'Kansas', 'KS', 'Morton', 'Rolla', 37.083358, -101.7448849, ST_GeomFromText('POINT(37.083358 -101.7448849)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481195', 'South East Wilberton Pasture', 'Flat', 'Kansas', 'KS', 'Morton', 'Rolla', 37.0625251, -101.7087731, ST_GeomFromText('POINT(37.0625251 -101.7087731)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481196', 'Pasture Number Thirty', 'Flat', 'Kansas', 'KS', 'Morton', 'Rolla', 37.029192, -101.7129394, ST_GeomFromText('POINT(37.029192 -101.7129394)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481197', 'Pasture Number Thirtyone', 'Flat', 'Kansas', 'KS', 'Morton', 'Rolla', 37.0208587, -101.7087726, ST_GeomFromText('POINT(37.0208587 -101.7087726)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481200', 'Highway Pasture', 'Flat', 'Kansas', 'KS', 'Morton', 'Rolla', 37.0930805, -101.70044, ST_GeomFromText('POINT(37.0930805 -101.70044)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481201', 'County Line Pasture', 'Flat', 'Kansas', 'KS', 'Morton', 'Rolla SE', 37.0916926, -101.5629379, ST_GeomFromText('POINT(37.0916926 -101.5629379)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481202', 'Pasture Number Twentyfive', 'Flat', 'Kansas', 'KS', 'Morton', 'Rolla SE', 37.1166921, -101.5879383, ST_GeomFromText('POINT(37.1166921 -101.5879383)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481203', 'South East Rollo Pasture', 'Flat', 'Kansas', 'KS', 'Morton', 'Rolla SE', 37.1000255, -101.6004385, ST_GeomFromText('POINT(37.1000255 -101.6004385)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('481204', 'Pasture Number Twentysix', 'Flat', 'Kansas', 'KS', 'Morton', 'Rolla SE', 37.0694703, -101.5962717, ST_GeomFromText('POINT(37.0694703 -101.5962717)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481228', 'Pleasanton City Lake', 'Reservoir', 'Kansas', 'KS', 'Linn', 'Pleasanton', 38.1956517, -94.6892289, ST_GeomFromText('POINT(38.1956517 -94.6892289)', 4326), NULL, NULL, '1984-07-01', '2018-09-21', NULL, NULL, NULL),
  ('481818', 'Antelope Creek', 'Stream', 'Kansas', 'KS', 'Sumner', 'South Haven', 37.0464151, -97.3919899, ST_GeomFromText('POINT(37.0464151 -97.3919899)', 4326), 37.1528023, -97.3767119, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481832', 'Big Slough', 'Stream', 'Kansas', 'KS', 'Harvey', 'Halstead NW', 38.1730654, -97.6400437, ST_GeomFromText('POINT(38.1730654 -97.6400437)', 4326), 38.2416667, -97.6541667, '1984-07-01', NULL, NULL, NULL, NULL),
  ('481834', 'Black Marsh (historical)', 'Swamp', 'Kansas', 'KS', 'Rice', 'Alden NW', 38.1708458, -98.3961817, ST_GeomFromText('POINT(38.1708458 -98.3961817)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('482201', 'Pullers Peak', 'Summit', 'Kansas', 'KS', 'Ford', 'Spearville NW', 37.8934952, -99.9162556, ST_GeomFromText('POINT(37.8934952 -99.9162556)', 4326), NULL, NULL, '1984-07-01', '2021-01-08', NULL, NULL, NULL),
  ('482297', 'Long Canyon (historical)', 'Valley', 'Kansas', 'KS', 'Gove', 'Shields NW', 38.7339024, -100.38569, ST_GeomFromText('POINT(38.7339024 -100.38569)', 4326), 38.6263889, -100.4111111, '1984-07-01', NULL, NULL, NULL, NULL),
  ('482379', 'Williams Butte', 'Summit', 'Kansas', 'KS', 'Mitchell', 'Tipton', 39.2561964, -98.4535346, ST_GeomFromText('POINT(39.2561964 -98.4535346)', 4326), NULL, NULL, '1984-07-01', '2021-01-08', NULL, NULL, NULL),
  ('482655', 'Observation Bluff', 'Summit', 'Kansas', 'KS', 'Johnson', 'Eudora', 38.9070078, -95.0477795, ST_GeomFromText('POINT(38.9070078 -95.0477795)', 4326), NULL, NULL, '1984-07-01', '2021-01-08', NULL, NULL, NULL),
  ('482657', 'Coon Point', 'Summit', 'Kansas', 'KS', 'Douglas', 'Perry', 39.0054279, -95.4254576, ST_GeomFromText('POINT(39.0054279 -95.4254576)', 4326), NULL, NULL, '1984-07-01', '2021-01-08', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('482706', 'Mission Creek', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Silver Lake', 39.0644444, -95.8349859, ST_GeomFromText('POINT(39.0644444 -95.8349859)', 4326), 39.9499994, -96.0386118, '1978-10-13', '2019-08-19', NULL, NULL, NULL),
  ('482716', 'Marion Reservoir', 'Reservoir', 'Kansas', 'KS', 'Marion', 'Marion', 38.3689029, -97.085024, ST_GeomFromText('POINT(38.3689029 -97.085024)', 4326), NULL, NULL, '1984-07-01', '2009-07-20', 'Official', 'Congressional Legislation', '1989-01-01'),
  ('482726', 'Tennyson Creek', 'Stream', 'Kansas', 'KS', 'Crawford', 'Bronson', 37.8283736, -95.0021951, ST_GeomFromText('POINT(37.8283736 -95.0021951)', 4326), 37.9064261, -95.020806, '1978-10-13', NULL, NULL, NULL, NULL),
  ('482727', 'Schubert Creek', 'Stream', 'Kansas', 'KS', 'Crawford', 'Bronson', 37.8430953, -95.0108064, ST_GeomFromText('POINT(37.8430953 -95.0108064)', 4326), 37.8878156, -95.0610851, '1978-10-13', NULL, NULL, NULL, NULL),
  ('482728', 'Opossum Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Xenia', 37.9978126, -94.8813554, ST_GeomFromText('POINT(37.9978126 -94.8813554)', 4326), 38.057532, -94.9294122, '1978-10-13', NULL, NULL, NULL, NULL),
  ('482729', 'Guthrie Mountain', 'Summit', 'Kansas', 'KS', 'Bourbon', 'Xenia', 37.991289, -94.8902373, ST_GeomFromText('POINT(37.991289 -94.8902373)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('482730', 'Clever Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Devon', 38.0208682, -94.7549613, ST_GeomFromText('POINT(38.0208682 -94.7549613)', 4326), 37.9467039, -94.7946859, '1978-10-13', NULL, NULL, NULL, NULL),
  ('482732', 'Hinton Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Uniontown', 37.7705982, -94.9594165, ST_GeomFromText('POINT(37.7705982 -94.9594165)', 4326), 37.7361549, -95.0585863, '1978-10-13', NULL, NULL, NULL, NULL),
  ('482735', 'Moores Branch', 'Stream', 'Missouri', 'MO', 'Vernon', 'Deerfield', 37.767475, -94.529607, ST_GeomFromText('POINT(37.767475 -94.529607)', 4326), 37.75309, -94.69603, '1978-10-13', '2010-12-17', NULL, NULL, NULL),
  ('482742', 'Clear Creek', 'Stream', 'Kansas', 'KS', 'Marion', 'Marion', 38.3616823, -97.0216892, ST_GeomFromText('POINT(38.3616823 -97.0216892)', 4326), 38.5952881, -96.9158474, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('482747', 'Irish Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Blue Mound', 38.0183662, -95.0044155, ST_GeomFromText('POINT(38.0183662 -95.0044155)', 4326), 38.0864194, -94.9827474, '1978-10-13', NULL, NULL, NULL, NULL),
  ('482749', 'Hines Lake', 'Lake', 'Kansas', 'KS', 'Cherokee', 'Chetopa', 37.0748761, -95.017282, ST_GeomFromText('POINT(37.0748761 -95.017282)', 4326), NULL, NULL, '1978-10-13', '2018-07-05', NULL, NULL, NULL),
  ('482752', 'Mulberry Creek', 'Stream', 'Kansas', 'KS', 'Ford', 'Ford', 37.657798, -99.7587383, ST_GeomFromText('POINT(37.657798 -99.7587383)', 4326), 37.6130777, -100.2420866, '1978-10-13', NULL, NULL, NULL, NULL),
  ('482753', 'Soldier Creek', 'Stream', 'Kansas', 'KS', 'Shawnee', 'Topeka', 39.0769442, -95.6494251, ST_GeomFromText('POINT(39.0769442 -95.6494251)', 4326), 39.6530518, -95.9830509, '1978-10-13', NULL, NULL, NULL, NULL),
  ('482754', 'Vermillion Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Belvue', 39.2049967, -96.2202739, ST_GeomFromText('POINT(39.2049967 -96.2202739)', 4326), 39.6555518, -95.9930514, '1978-10-13', NULL, 'Official', 'Board Decision', '1938-01-01'),
  ('482755', 'Solomon River', 'Stream', 'Kansas', 'KS', 'Dickinson', 'Solomon', 38.9036111, -97.3691927, ST_GeomFromText('POINT(38.9036111 -97.3691927)', 4326), 39.4730657, -98.4333942, '1978-10-13', '2019-09-24', NULL, NULL, NULL),
  ('482756', 'Wakarusa River', 'Stream', 'Kansas', 'KS', 'Douglas', 'Eudora', 38.9561149, -95.0821917, ST_GeomFromText('POINT(38.9561149 -95.0821917)', 4326), 38.8955588, -95.9599894, '1978-10-13', '2019-08-29', NULL, NULL, NULL),
  ('482757', 'Lake Crawford', 'Reservoir', 'Kansas', 'KS', 'Crawford', 'Hiattville', 37.6364734, -94.8128409, ST_GeomFromText('POINT(37.6364734 -94.8128409)', 4326), NULL, NULL, '1984-07-01', '2018-09-21', 'Official', 'Board Decision', '1991-01-01'),
  ('482758', 'Lost Branch', 'Stream', 'Kansas', 'KS', 'Labette', 'Mound Valley', 37.1900688, -95.4152526, ST_GeomFromText('POINT(37.1900688 -95.4152526)', 4326), 37.2247222, -95.4252778, '1989-06-01', NULL, 'Official', 'Board Decision', '1984-01-01'),
  ('482759', 'Lost Shirt Creek', 'Stream', 'Kansas', 'KS', 'Brown', 'Highland NW', 39.9225016, -95.4122022, ST_GeomFromText('POINT(39.9225016 -95.4122022)', 4326), 39.8986111, -95.3816667, '1989-05-01', NULL, 'Official', 'Board Decision', '1985-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('482830', 'Chambers Branch', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Marmaton', 37.810597, -94.7807981, ST_GeomFromText('POINT(37.810597 -94.7807981)', 4326), 37.7555556, -94.7808333, '1990-10-01', NULL, NULL, NULL, NULL),
  ('482836', 'Elm Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Hammond', 37.9953138, -94.732183, ST_GeomFromText('POINT(37.9953138 -94.732183)', 4326), 37.9388889, -94.7305556, '1990-10-01', NULL, NULL, NULL, NULL),
  ('482845', 'Hickory Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Fort Scott', 37.8728174, -94.7444071, ST_GeomFromText('POINT(37.8728174 -94.7444071)', 4326), 37.9200382, -94.7485734, '1990-10-01', NULL, NULL, NULL, NULL),
  ('482846', 'Honey Creek', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Devon', 37.8869835, -94.7735747, ST_GeomFromText('POINT(37.8869835 -94.7735747)', 4326), 37.9355556, -94.77, '1990-10-01', NULL, NULL, NULL, NULL),
  ('482854', 'Moores Branch', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Prescott', 38.0011467, -94.6602361, ST_GeomFromText('POINT(38.0011467 -94.6602361)', 4326), 37.9411486, -94.6913489, '1990-10-01', NULL, NULL, NULL, NULL),
  ('482871', 'Ross Branch', 'Stream', 'Kansas', 'KS', 'Bourbon', 'Blue Mound', 38.0144773, -95.0316385, ST_GeomFromText('POINT(38.0144773 -95.0316385)', 4326), 37.985034, -95.0502504, '1990-10-01', NULL, NULL, NULL, NULL),
  ('482938', 'City Spring', 'Spring', 'Kansas', 'KS', 'Marion', 'Lincolnville SW', 38.265573, -96.937245, ST_GeomFromText('POINT(38.265573 -96.937245)', 4326), NULL, NULL, '1990-10-01', NULL, NULL, NULL, NULL),
  ('482943', 'Coyne Spring', 'Spring', 'Kansas', 'KS', 'Marion', 'Florence', 38.22224, -96.9522467, ST_GeomFromText('POINT(38.22224 -96.9522467)', 4326), NULL, NULL, '1990-10-01', NULL, NULL, NULL, NULL),
  ('482993', 'Robinson Spring', 'Spring', 'Kansas', 'KS', 'Marion', 'Cedar Point', 38.3286271, -96.8600182, ST_GeomFromText('POINT(38.3286271 -96.8600182)', 4326), NULL, NULL, '1990-10-01', NULL, NULL, NULL, NULL),
  ('483092', 'Benningtons Lake', 'Reservoir', 'Kansas', 'KS', 'Kingman', 'Rago', 37.41671, -98.05678, ST_GeomFromText('POINT(37.41671 -98.05678)', 4326), NULL, NULL, '1990-10-01', '2024-10-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('483093', 'Mckenna Lake', 'Reservoir', 'Kansas', 'KS', 'Kingman', 'Cleveland', 37.614461, -98.1870103, ST_GeomFromText('POINT(37.614461 -98.1870103)', 4326), NULL, NULL, '1990-10-01', NULL, NULL, NULL, NULL),
  ('483094', 'Bock Lake', 'Reservoir', 'Kansas', 'KS', 'Kingman', 'Kingman NW', 37.6261877, -98.1276529, ST_GeomFromText('POINT(37.6261877 -98.1276529)', 4326), NULL, NULL, '1990-10-01', '2018-09-28', NULL, NULL, NULL),
  ('483155', 'Wooster Lake', 'Reservoir', 'Kansas', 'KS', 'Lyon', 'Emporia', 38.4157042, -96.1793204, ST_GeomFromText('POINT(38.4157042 -96.1793204)', 4326), NULL, NULL, '1990-10-01', '2018-07-05', NULL, NULL, NULL),
  ('483373', 'Beaumaster Pond (historical)', 'Lake', 'Kansas', 'KS', 'Cheyenne', 'Wheeler', 39.8380486, -101.7335057, ST_GeomFromText('POINT(39.8380486 -101.7335057)', 4326), NULL, NULL, '1990-03-01', NULL, NULL, NULL, NULL),
  ('483374', 'Cole Pond (historical)', 'Lake', 'Kansas', 'KS', 'Cheyenne', 'Bird City North', 39.8344387, -101.6210022, ST_GeomFromText('POINT(39.8344387 -101.6210022)', 4326), NULL, NULL, '1990-03-01', NULL, NULL, NULL, NULL),
  ('483378', 'Leach Pond', 'Lake', 'Kansas', 'KS', 'Cheyenne', 'Wheeler', 39.7997803, -101.6270206, ST_GeomFromText('POINT(39.7997803 -101.6270206)', 4326), NULL, NULL, '1990-03-01', '2018-09-21', NULL, NULL, NULL),
  ('483392', 'McMurray Creek', 'Stream', 'Kansas', 'KS', 'Clay', 'Industry', 39.1369402, -97.1802975, ST_GeomFromText('POINT(39.1369402 -97.1802975)', 4326), 39.2177778, -97.155, '1990-03-01', NULL, NULL, NULL, NULL),
  ('483394', 'Stillwater Lake', 'Lake', 'Kansas', 'KS', 'Clay', 'Clay Center NW', 39.4456122, -97.2049919, ST_GeomFromText('POINT(39.4456122 -97.2049919)', 4326), NULL, NULL, '1990-03-01', '2018-09-21', NULL, NULL, NULL),
  ('483832', 'Yllier Lake', 'Reservoir', 'Kansas', 'KS', 'Leavenworth', 'Easton', 39.2776053, -95.1231528, ST_GeomFromText('POINT(39.2776053 -95.1231528)', 4326), NULL, NULL, '1990-03-01', '2018-09-21', NULL, NULL, NULL),
  ('483891', 'Black Lake (historical)', 'Lake', 'Kansas', 'KS', 'Neosho', 'McCune NE', 37.3967233, -95.1224706, ST_GeomFromText('POINT(37.3967233 -95.1224706)', 4326), NULL, NULL, '1990-03-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('483897', 'Brush Lake (historical)', 'Lake', 'Kansas', 'KS', 'Neosho', 'McCune NE', 37.39339, -95.123304, ST_GeomFromText('POINT(37.39339 -95.123304)', 4326), NULL, NULL, '1990-03-01', NULL, NULL, NULL, NULL),
  ('483910', 'Grass Lake (historical)', 'Lake', 'Kansas', 'KS', 'Neosho', 'South Mound', 37.4214448, -95.1446941, ST_GeomFromText('POINT(37.4214448 -95.1446941)', 4326), NULL, NULL, '1990-03-01', NULL, NULL, NULL, NULL),
  ('483911', 'Halfmoon Lake (historical)', 'Lake', 'Kansas', 'KS', 'Neosho', 'South Mound', 37.4220003, -95.1480276, ST_GeomFromText('POINT(37.4220003 -95.1480276)', 4326), NULL, NULL, '1990-03-01', NULL, NULL, NULL, NULL),
  ('484063', 'Christy Lake (historical)', 'Reservoir', 'Kansas', 'KS', 'Scott', 'Lake Scott', 38.6414051, -100.9065375, ST_GeomFromText('POINT(38.6414051 -100.9065375)', 4326), NULL, NULL, '1990-03-01', NULL, NULL, NULL, NULL),
  ('484082', 'Upper Christy Lake (historical)', 'Reservoir', 'Kansas', 'KS', 'Scott', 'Lake Scott', 38.6375163, -100.9184823, ST_GeomFromText('POINT(38.6375163 -100.9184823)', 4326), NULL, NULL, '1990-03-01', NULL, NULL, NULL, NULL),
  ('484304', 'Harvey County East Park Lake', 'Reservoir', 'Kansas', 'KS', 'Harvey', 'Elbing', 38.0499111, -97.2015434, ST_GeomFromText('POINT(38.0499111 -97.2015434)', 4326), NULL, NULL, '1990-04-01', '2018-09-27', NULL, NULL, NULL),
  ('484305', 'Catfish Point', 'Cape', 'Kansas', 'KS', 'Harvey', 'Elbing', 38.0477906, -97.1986446, ST_GeomFromText('POINT(38.0477906 -97.1986446)', 4326), NULL, NULL, '1990-04-01', NULL, NULL, NULL, NULL),
  ('484306', 'Crown Point', 'Cape', 'Kansas', 'KS', 'Harvey', 'Elbing', 38.0511237, -97.2061446, ST_GeomFromText('POINT(38.0511237 -97.2061446)', 4326), NULL, NULL, '1990-04-01', NULL, NULL, NULL, NULL),
  ('484308', 'Needle Point', 'Cape', 'Kansas', 'KS', 'Harvey', 'Elbing', 38.0511238, -97.2017002, ST_GeomFromText('POINT(38.0511238 -97.2017002)', 4326), NULL, NULL, '1990-04-01', NULL, NULL, NULL, NULL),
  ('484322', 'Natalies Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Keats', 39.2005522, -96.6791721, ST_GeomFromText('POINT(39.2005522 -96.6791721)', 4326), 39.2472222, -96.6658333, '1991-06-01', NULL, 'Official', 'Board Decision', '1991-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('484324', 'Bear Creek', 'Stream', 'Kansas', 'KS', 'Meade', 'Chautauqua', 37.0872816, -96.1080434, ST_GeomFromText('POINT(37.0872816 -96.1080434)', 4326), 37.077835, -96.1480448, '1978-10-13', NULL, NULL, NULL, NULL),
  ('484331', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'Nescatunga Creek North', 37.1305823, -99.1337181, ST_GeomFromText('POINT(37.1305823 -99.1337181)', 4326), 37.2283333, -99.1527778, '1978-10-13', NULL, 'Official', 'Board Decision', '1975-01-01'),
  ('484334', 'South Fork Guzzlers Gulch', 'Valley', 'Kansas', 'KS', 'Ness', 'Ness City SW', 38.3044186, -99.9797472, ST_GeomFromText('POINT(38.3044186 -99.9797472)', 4326), 38.3109194, -100.1071076, '1978-10-13', '2015-09-10', NULL, NULL, NULL),
  ('484338', 'Big Timber Creek', 'Stream', 'Kansas', 'KS', 'Jewell', 'Mankato NW', 39.8916795, -98.1600479, ST_GeomFromText('POINT(39.8916795 -98.1600479)', 4326), 39.8064015, -98.2483852, '1978-10-13', NULL, NULL, NULL, NULL),
  ('484345', 'Dutch Creek', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Wheaton', 39.5363851, -96.1919448, ST_GeomFromText('POINT(39.5363851 -96.1919448)', 4326), 39.5449968, -96.3133373, '1978-10-13', NULL, NULL, NULL, NULL),
  ('484352', 'Rohr Jacobs Lake', 'Reservoir', 'Kansas', 'KS', 'Ellis', 'Ellis SE', 38.7664014, -99.5128882, ST_GeomFromText('POINT(38.7664014 -99.5128882)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('484357', 'Halderman Creek', 'Stream', 'Kansas', 'KS', 'Greenwood', 'Lamont', 38.1094676, -96.0636045, ST_GeomFromText('POINT(38.1094676 -96.0636045)', 4326), 38.2025197, -96.0958271, '1978-10-13', NULL, NULL, NULL, NULL),
  ('484931', 'Stony Point', 'Summit', 'Kansas', 'KS', 'Montgomery', 'Tyro', 37.0521445, -95.8018104, ST_GeomFromText('POINT(37.0521445 -95.8018104)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('484932', 'Table Mesa', 'Summit', 'Kansas', 'KS', 'Meade', 'Kismet SE', 37.036813, -100.5703782, ST_GeomFromText('POINT(37.036813 -100.5703782)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('484933', 'Mount Sunflower', 'Summit', 'Kansas', 'KS', 'Wallace', 'Mount Sunflower', 39.0219757, -102.0372428, ST_GeomFromText('POINT(39.0219757 -102.0372428)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('484939', 'Custer Hill', 'Summit', 'Kansas', 'KS', 'Riley', 'Junction City', 39.1152682, -96.8127784, ST_GeomFromText('POINT(39.1152682 -96.8127784)', 4326), NULL, NULL, '1978-10-13', '2021-01-01', NULL, NULL, NULL),
  ('484940', '22nd Battery Hill', 'Summit', 'Kansas', 'KS', 'Riley', 'Junction City', 39.108103, -96.7705416, ST_GeomFromText('POINT(39.108103 -96.7705416)', 4326), NULL, NULL, '2024-02-14', '2025-02-26', NULL, NULL, NULL),
  ('484941', 'Buzzard Roost', 'Summit', 'Kansas', 'KS', 'Ellsworth', 'Venango', 38.7494444, -97.9650177, ST_GeomFromText('POINT(38.7494444 -97.9650177)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('484946', 'Gypsum Hills', 'Summit', 'Kansas', 'KS', 'Barber', 'Medicine Lodge SW', 37.3666883, -98.6295305, ST_GeomFromText('POINT(37.3666883 -98.6295305)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('484951', 'Silver City Dome', 'Summit', 'Kansas', 'KS', 'Woodson', 'Toronto SE', 37.7517015, -95.7919209, ST_GeomFromText('POINT(37.7517015 -95.7919209)', 4326), NULL, NULL, '1978-10-13', '2021-08-16', NULL, NULL, NULL),
  ('484964', 'South Lowe Pasture', 'Flat', 'Kansas', 'KS', 'Morton', 'Rolla NW', 37.1416912, -101.7254409, ST_GeomFromText('POINT(37.1416912 -101.7254409)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('485066', 'Lakin Lake', 'Lake', 'Kansas', 'KS', 'Kingman', 'Kingman', 37.6623927, -98.0420809, ST_GeomFromText('POINT(37.6623927 -98.0420809)', 4326), NULL, NULL, '1992-11-01', '2018-09-28', 'Official', 'Board Decision', '1992-01-01'),
  ('485074', 'North Fork Cimarron River', 'Stream', 'Kansas', 'KS', 'Grant', 'Ryus', 37.4205797, -101.1209995, ST_GeomFromText('POINT(37.4205797 -101.1209995)', 4326), 37.1494629, -102.6526959, '1978-10-13', '2019-08-13', NULL, NULL, NULL),
  ('485079', 'Sand Arroyo Creek', 'Stream', 'Kansas', 'KS', 'Grant', 'Wagon Bed Spring NW', 37.4764154, -101.4875094, ST_GeomFromText('POINT(37.4764154 -101.4875094)', 4326), 37.2077956, -102.7860336, '1978-10-13', '2018-02-28', NULL, NULL, NULL),
  ('485085', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Morton', 'Manter', 37.6097373, -101.9171201, ST_GeomFromText('POINT(37.6097373 -101.9171201)', 4326), 37.1297448, -101.9343357, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('485087', 'Point of Rocks', 'Cliff', 'Kansas', 'KS', 'Morton', 'Elkhart North', 37.1039116, -101.93878, ST_GeomFromText('POINT(37.1039116 -101.93878)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('485100', 'Pasture Number Three', 'Flat', 'Kansas', 'KS', 'Morton', 'Stonington SE', 37.2541878, -102.0296175, ST_GeomFromText('POINT(37.2541878 -102.0296175)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('485102', 'New Pasture Number Thirteen', 'Flat', 'Kansas', 'KS', 'Morton', 'Richfield', 37.2541895, -101.8504457, ST_GeomFromText('POINT(37.2541895 -101.8504457)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('485103', 'Pasture Number Forty', 'Flat', 'Kansas', 'KS', 'Stevens', 'Shore Airport SE', 37.2541906, -101.5476592, ST_GeomFromText('POINT(37.2541906 -101.5476592)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('485104', 'Mills Pasture', 'Flat', 'Kansas', 'KS', 'Morton', 'Elkhart NE', 37.1722461, -101.7823872, ST_GeomFromText('POINT(37.1722461 -101.7823872)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('485105', 'Pasture Number Sixteen', 'Flat', 'Kansas', 'KS', 'Morton', 'Elkhart NE', 37.1805789, -101.8379445, ST_GeomFromText('POINT(37.1805789 -101.8379445)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('485106', 'Yoder Pasture', 'Flat', 'Kansas', 'KS', 'Morton', 'Elkhart NE', 37.165301, -101.8546115, ST_GeomFromText('POINT(37.165301 -101.8546115)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('485107', 'Eightyone Pasture', 'Flat', 'Kansas', 'KS', 'Morton', 'Elkhart NE', 37.1472453, -101.8740563, ST_GeomFromText('POINT(37.1472453 -101.8740563)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('485108', 'North Fork Pasture', 'Flat', 'Kansas', 'KS', 'Morton', 'Elkhart NW', 37.2458551, -101.9782268, ST_GeomFromText('POINT(37.2458551 -101.9782268)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('485109', 'Pasture Number Eleven', 'Flat', 'Kansas', 'KS', 'Morton', 'Elkhart NW', 37.2111334, -101.931003, ST_GeomFromText('POINT(37.2111334 -101.931003)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('485110', 'Pasture Number Twelve', 'Flat', 'Kansas', 'KS', 'Morton', 'Elkhart NW', 37.2111337, -101.8962798, ST_GeomFromText('POINT(37.2111337 -101.8962798)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('485111', 'Greenwood Pasture', 'Flat', 'Kansas', 'KS', 'Morton', 'Elkhart NW', 37.1833562, -101.8823902, ST_GeomFromText('POINT(37.1833562 -101.8823902)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('485112', 'Pasture Number Thirtyeight', 'Flat', 'Kansas', 'KS', 'Morton', 'Elkhart NW', 37.1736338, -101.904613, ST_GeomFromText('POINT(37.1736338 -101.904613)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('485113', 'Pasture Number Twentytwo', 'Flat', 'Kansas', 'KS', 'Morton', 'Elkhart NW', 37.1444669, -101.937947, ST_GeomFromText('POINT(37.1444669 -101.937947)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('485114', 'Pasture Number Twentyone', 'Flat', 'Kansas', 'KS', 'Morton', 'Elkhart NW', 37.1528001, -101.958781, ST_GeomFromText('POINT(37.1528001 -101.958781)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('485115', 'Pasture Number Twenty', 'Flat', 'Kansas', 'KS', 'Morton', 'Elkhart NW', 37.1375221, -101.9837817, ST_GeomFromText('POINT(37.1375221 -101.9837817)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('485116', 'Pasture Number Ten', 'Flat', 'Kansas', 'KS', 'Morton', 'Elkhart NW', 37.1889111, -101.9490589, ST_GeomFromText('POINT(37.1889111 -101.9490589)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('485117', 'Pasture Number Nine', 'Flat', 'Kansas', 'KS', 'Morton', 'Elkhart NW', 37.188911, -101.967115, ST_GeomFromText('POINT(37.188911 -101.967115)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('485118', 'Pasture Number Eight', 'Flat', 'Kansas', 'KS', 'Morton', 'Elkhart NW', 37.1958552, -101.985171, ST_GeomFromText('POINT(37.1958552 -101.985171)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('485119', 'Pasture Number Seven', 'Flat', 'Kansas', 'KS', 'Morton', 'Elkhart NW', 37.2069662, -101.9962825, ST_GeomFromText('POINT(37.2069662 -101.9962825)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('485120', 'Moore Pasture', 'Flat', 'Kansas', 'KS', 'Morton', 'Elkhart North', 37.0250228, -101.9629468, ST_GeomFromText('POINT(37.0250228 -101.9629468)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('485121', 'Pasture Number Thirtynine', 'Flat', 'Kansas', 'KS', 'Morton', 'Elkhart North', 37.0055783, -101.9754471, ST_GeomFromText('POINT(37.0055783 -101.9754471)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('485126', 'East Headquarters Pasture', 'Flat', 'Kansas', 'KS', 'Morton', 'Elkhart North', 37.0444678, -101.8907224, ST_GeomFromText('POINT(37.0444678 -101.8907224)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('485128', 'West Headquarters Pasture', 'Flat', 'Kansas', 'KS', 'Morton', 'Elkhart North', 37.0514121, -101.9087786, ST_GeomFromText('POINT(37.0514121 -101.9087786)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('485129', 'Pasture Number Thirtyfive', 'Flat', 'Kansas', 'KS', 'Morton', 'Elkhart North', 37.0528012, -101.8865556, ST_GeomFromText('POINT(37.0528012 -101.8865556)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('485130', 'College Green Pasture', 'Flat', 'Kansas', 'KS', 'Morton', 'Elkhart North', 37.0889118, -101.9240572, ST_GeomFromText('POINT(37.0889118 -101.9240572)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('485133', 'Point Pasture', 'Flat', 'Kansas', 'KS', 'Morton', 'Elkhart North', 37.105578, -101.9629475, ST_GeomFromText('POINT(37.105578 -101.9629475)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('485134', 'Pasture Number Thirtyfour', 'Flat', 'Kansas', 'KS', 'Morton', 'Elkhart North', 37.0694672, -101.9393353, ST_GeomFromText('POINT(37.0694672 -101.9393353)', 4326), NULL, NULL, '1984-07-01', NULL, NULL, NULL, NULL),
  ('485146', 'Mallard Ponds', 'Lake', 'Kansas', 'KS', 'Morton', 'Elkhart NE', 37.1450239, -101.7940538, ST_GeomFromText('POINT(37.1450239 -101.7940538)', 4326), NULL, NULL, '1992-09-01', NULL, NULL, NULL, NULL),
  ('485147', 'Wilburton Pond', 'Lake', 'Kansas', 'KS', 'Morton', 'Elkhart NE', 37.1561413, -101.761863, ST_GeomFromText('POINT(37.1561413 -101.761863)', 4326), NULL, NULL, '1992-09-01', '2023-04-25', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('485157', 'City Lake (historical)', 'Reservoir', 'Kansas', 'KS', 'Cheyenne', 'Saint Francis', 39.7622152, -101.8476767, ST_GeomFromText('POINT(39.7622152 -101.8476767)', 4326), NULL, NULL, '1990-03-01', NULL, NULL, NULL, NULL),
  ('485184', 'Kansas River', 'Stream', 'Kansas', 'KS', 'Wyandotte', 'Kansas City', 39.1152819, -94.6105121, ST_GeomFromText('POINT(39.1152819 -94.6105121)', 4326), 39.0597201, -96.8011193, '1978-10-13', '2019-07-26', 'Official', 'Board Decision', '1895-01-01'),
  ('485185', 'West Fork Tauy Creek', 'Stream', 'Kansas', 'KS', 'Douglas', 'Le Loup', 38.6683431, -95.2263615, ST_GeomFromText('POINT(38.6683431 -95.2263615)', 4326), 38.8297275, -95.2716401, '1984-07-01', NULL, NULL, NULL, NULL),
  ('485186', 'Hillsdale Lake', 'Reservoir', 'Kansas', 'KS', 'Miami', 'Antioch', 38.6800411, -94.9229632, ST_GeomFromText('POINT(38.6800411 -94.9229632)', 4326), NULL, NULL, '1978-10-13', '2023-04-05', NULL, NULL, NULL),
  ('485199', 'Little Beaver Creek', 'Stream', 'Kansas', 'KS', 'Rawlins', 'Atwood', 39.8208348, -101.0334902, ST_GeomFromText('POINT(39.8208348 -101.0334902)', 4326), 39.3672187, -102.2112994, '1978-10-13', '2018-04-18', 'Official', 'Board Decision', '1972-01-01'),
  ('485201', 'Battle Creek', 'Stream', 'Kansas', 'KS', 'Cheyenne', 'Crosby Creek', 39.6966604, -101.9387914, ST_GeomFromText('POINT(39.6966604 -101.9387914)', 4326), 39.539439, -102.0696291, '1978-10-13', NULL, NULL, NULL, NULL),
  ('485205', 'North Fork Middle Ladder Creek', 'Stream', 'Kansas', 'KS', 'Wallace', 'Middle Ladder Creek West', 38.746678, -101.848229, ST_GeomFromText('POINT(38.746678 -101.848229)', 4326), 38.7875097, -101.9543429, '1978-10-13', NULL, NULL, NULL, NULL),
  ('485206', 'South Fork Middle Ladder Creek', 'Stream', 'Kansas', 'KS', 'Wallace', 'Middle Ladder Creek West', 38.746678, -101.848229, ST_GeomFromText('POINT(38.746678 -101.848229)', 4326), 38.7513989, -102.0001773, '1978-10-13', NULL, NULL, NULL, NULL),
  ('485208', 'South Flats', 'Flat', 'Kansas', 'KS', 'Wallace', 'South Flats', 38.7736227, -101.7046144, ST_GeomFromText('POINT(38.7736227 -101.7046144)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('485209', 'Wallace Bluffs', 'Cliff', 'Kansas', 'KS', 'Wallace', 'Harrison Flats', 38.8427885, -101.5454441, ST_GeomFromText('POINT(38.8427885 -101.5454441)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('485211', 'Twin Butte Creek', 'Stream', 'Kansas', 'KS', 'Logan', 'Elkader SW', 38.7750136, -100.9295928, ST_GeomFromText('POINT(38.7750136 -100.9295928)', 4326), 38.8014003, -101.5807228, '1978-10-13', NULL, NULL, NULL, NULL),
  ('485212', 'Harrison Flats', 'Flat', 'Kansas', 'KS', 'Wallace', 'Harrison Flats', 38.7750118, -101.6004454, ST_GeomFromText('POINT(38.7750118 -101.6004454)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('485213', 'Chalk Creek', 'Stream', 'Kansas', 'KS', 'Logan', 'Elkader SW', 38.7689026, -100.9276483, ST_GeomFromText('POINT(38.7689026 -100.9276483)', 4326), 38.7605676, -101.6193347, '1978-10-13', NULL, NULL, NULL, NULL),
  ('485215', 'Depperschmidt Draw', 'Valley', 'Kansas', 'KS', 'Logan', 'Mouth of Lake Creek', 38.9109419, -101.4802869, ST_GeomFromText('POINT(38.9109419 -101.4802869)', 4326), 39.008234, -101.6305254, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('485218', 'North Fork Smoky Hill River', 'Stream', 'Kansas', 'KS', 'Logan', 'West of Russell Springs', 38.920288, -101.2807148, ST_GeomFromText('POINT(38.920288 -101.2807148)', 4326), 39.0349974, -102.8077048, '1984-07-01', '2019-08-13', NULL, NULL, NULL),
  ('485220', 'Lake Creek', 'Stream', 'Kansas', 'KS', 'Logan', 'Mouth of Lake Creek', 38.9822308, -101.4671086, ST_GeomFromText('POINT(38.9822308 -101.4671086)', 4326), 39.0761165, -101.7187823, '1978-10-13', '2009-07-20', NULL, NULL, NULL),
  ('485221', 'Turkey Creek', 'Stream', 'Kansas', 'KS', 'Logan', 'Mouth of Lake Creek', 38.9244542, -101.4073848, ST_GeomFromText('POINT(38.9244542 -101.4073848)', 4326), 39.0347298, -101.4682198, '1978-10-13', NULL, NULL, NULL, NULL),
  ('485227', 'Twin Butte', 'Summit', 'Kansas', 'KS', 'Logan', 'Twin Butte', 38.7854777, -101.3858208, ST_GeomFromText('POINT(38.7854777 -101.3858208)', 4326), NULL, NULL, '1978-10-13', '2021-01-08', NULL, NULL, NULL),
  ('485228', 'Nickel Mine Spring', 'Spring', 'Kansas', 'KS', 'Logan', 'Nickel Mine Spring', 38.8572311, -101.2865447, ST_GeomFromText('POINT(38.8572311 -101.2865447)', 4326), NULL, NULL, '1978-10-13', '2011-04-18', NULL, NULL, NULL),
  ('485230', 'South Ladder Creek', 'Stream', 'Kansas', 'KS', 'Greeley', 'West Bethany Church', 38.6761921, -101.569743, ST_GeomFromText('POINT(38.6761921 -101.569743)', 4326), 38.7849963, -102.5483369, '1978-10-13', '2018-03-01', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('485233', 'Middle Ladder Creek', 'Stream', 'Kansas', 'KS', 'Greeley', 'Middle Ladder Creek East', 38.6922351, -101.7071147, ST_GeomFromText('POINT(38.6922351 -101.7071147)', 4326), 38.746678, -101.848229, '1978-10-13', NULL, NULL, NULL, NULL),
  ('485238', 'Timber Canyon', 'Valley', 'Kansas', 'KS', 'Scott', 'Lake Scott', 38.6901353, -100.9276115, ST_GeomFromText('POINT(38.6901353 -100.9276115)', 4326), 38.6625003, -101.0284001, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('485247', 'James Draw', 'Valley', 'Kansas', 'KS', 'Kearny', 'Wolf SW', 38.1127951, -101.1264248, ST_GeomFromText('POINT(38.1127951 -101.1264248)', 4326), 38.2843731, -101.5930196, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('485248', 'Campbell Draw', 'Valley', 'Kansas', 'KS', 'Finney', 'Wolf NE', 38.1519484, -101.0393466, ST_GeomFromText('POINT(38.1519484 -101.0393466)', 4326), 38.2489691, -101.3040876, '1978-10-13', '2017-08-25', NULL, NULL, NULL),
  ('485253', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Hamilton', 'Holly East', 38.038346, -102.0346269, ST_GeomFromText('POINT(38.038346 -102.0346269)', 4326), 38.1900153, -101.992125, '1978-10-13', NULL, NULL, NULL, NULL),
  ('485254', 'West Bridge Creek', 'Stream', 'Kansas', 'KS', 'Hamilton', 'East Bridge Creek North', 38.0172352, -101.967958, ST_GeomFromText('POINT(38.0172352 -101.967958)', 4326), 38.1836263, -101.967124, '1978-10-13', NULL, NULL, NULL, NULL),
  ('485255', 'East Bridge Creek', 'Stream', 'Kansas', 'KS', 'Hamilton', 'East Bridge Creek North', 38.0130686, -101.9110113, ST_GeomFromText('POINT(38.0130686 -101.9110113)', 4326), 38.2030711, -101.9190665, '1978-10-13', NULL, NULL, NULL, NULL),
  ('485256', 'Plum Creek', 'Stream', 'Kansas', 'KS', 'Hamilton', 'Plum Creek North', 38.0022352, -101.819341, ST_GeomFromText('POINT(38.0022352 -101.819341)', 4326), 38.1397369, -101.8296188, '1978-10-13', NULL, NULL, NULL, NULL),
  ('485258', 'Mattox Draw', 'Valley', 'Kansas', 'KS', 'Kearny', 'Wolf SW', 38.0239722, -101.1842997, ST_GeomFromText('POINT(38.0239722 -101.1842997)', 4326), 38.2231625, -101.8707451, '1978-10-13', '2017-08-24', NULL, NULL, NULL),
  ('485272', 'Syracuse Creek', 'Stream', 'Kansas', 'KS', 'Hamilton', 'Syracuse West', 37.9869574, -101.7660057, ST_GeomFromText('POINT(37.9869574 -101.7660057)', 4326), 38.0439026, -101.7396159, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('485277', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Hamilton', 'Syracuse East', 37.9658471, -101.6751712, ST_GeomFromText('POINT(37.9658471 -101.6751712)', 4326), 38.1602927, -101.7985064, '1978-10-13', NULL, NULL, NULL, NULL),
  ('485279', 'Shirley Creek', 'Stream', 'Kansas', 'KS', 'Hamilton', 'Wallace', 38.9327869, -101.5476663, ST_GeomFromText('POINT(38.9327869 -101.5476663)', 4326), 38.1211266, -101.6387808, '1978-10-13', NULL, NULL, NULL, NULL),
  ('485289', 'Wild Horse Lake', 'Reservoir', 'Kansas', 'KS', 'Haskell', 'Wild Horse Lake', 37.6971395, -100.7915196, ST_GeomFromText('POINT(37.6971395 -100.7915196)', 4326), NULL, NULL, '1978-10-13', '2018-10-02', NULL, NULL, NULL),
  ('485293', 'South Fork Solomon River', 'Stream', 'Kansas', 'KS', 'Mitchell', 'Mill Creek', 39.4730657, -98.4333942, ST_GeomFromText('POINT(39.4730657 -98.4333942)', 4326), 39.2458369, -101.4459977, '1978-10-13', '2019-08-29', NULL, NULL, NULL),
  ('485301', 'Wild Horse Creek', 'Stream', 'Kansas', 'KS', 'Ellis', 'Mouth of Wild Horse Creek', 39.1136204, -99.5434433, ST_GeomFromText('POINT(39.1136204 -99.5434433)', 4326), 39.2172305, -99.5764995, '1978-10-13', NULL, NULL, NULL, NULL),
  ('485302', 'Tomcat Creek', 'Stream', 'Kansas', 'KS', 'Ellis', 'Mouth of Wild Horse Creek', 39.0880653, -99.5012197, ST_GeomFromText('POINT(39.0880653 -99.5012197)', 4326), 39.2166754, -99.516775, '1978-10-13', NULL, NULL, NULL, NULL),
  ('485306', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Trego', 'Ellis', 38.9366772, -99.6092795, ST_GeomFromText('POINT(38.9366772 -99.6092795)', 4326), 39.0297304, -99.8637318, '1978-10-13', NULL, 'Official', 'Board Decision', '1964-01-01'),
  ('485307', 'Shaw Creek', 'Stream', 'Kansas', 'KS', 'Trego', 'WaKeeney East', 39.1072303, -99.7267832, ST_GeomFromText('POINT(39.1072303 -99.7267832)', 4326), 39.0611193, -99.7878962, '1978-10-13', NULL, 'Official', 'Board Decision', '1964-01-01'),
  ('485308', 'East Spring Creek', 'Stream', 'Kansas', 'KS', 'Ellis', 'Plainville SW', 39.0827876, -99.4906639, ST_GeomFromText('POINT(39.0827876 -99.4906639)', 4326), 39.0444534, -99.6737258, '1978-10-13', NULL, 'Official', 'Board Decision', '1964-01-01'),
  ('485313', 'Pawnee River', 'Stream', 'Kansas', 'KS', 'Pawnee', 'Larned', 38.1686249, -99.0956575, ST_GeomFromText('POINT(38.1686249 -99.0956575)', 4326), 37.9658545, -100.598485, '1978-10-13', '2019-08-29', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('485314', 'Smoky Hill River', 'Stream', 'Kansas', 'KS', 'Geary', 'Junction City', 39.0599979, -96.8011193, ST_GeomFromText('POINT(39.0599979 -96.8011193)', 4326), 38.9502787, -102.5801964, '1978-10-13', '2019-08-13', NULL, NULL, NULL),
  ('485315', 'Saline River', 'Stream', 'Kansas', 'KS', 'Saline', 'Salina', 38.8577792, -97.5061425, ST_GeomFromText('POINT(38.8577792 -97.5061425)', 4326), 39.1605631, -100.713756, '1978-10-13', '2019-08-29', NULL, NULL, NULL),
  ('485317', 'Hamilton County State Lake', 'Reservoir', 'Kansas', 'KS', 'Hamilton', 'Plum Creek South', 38.0296841, -101.8200017, ST_GeomFromText('POINT(38.0296841 -101.8200017)', 4326), NULL, NULL, '1984-07-01', '2018-09-27', NULL, NULL, NULL),
  ('485353', 'Ladder Creek', 'Stream', 'Kansas', 'KS', 'Logan', 'Elkader', 38.7991798, -100.8598685, ST_GeomFromText('POINT(38.7991798 -100.8598685)', 4326), 38.8061156, -102.5218587, '1978-10-13', '2019-07-26', NULL, NULL, NULL),
  ('485361', 'North Caney Creek', 'Stream', 'Kansas', 'KS', 'Chautauqua', 'Peru', 37.1075621, -96.0533195, ST_GeomFromText('POINT(37.1075621 -96.0533195)', 4326), 37.3194853, -96.2555514, '1978-10-13', '2011-04-08', 'Official', 'Board Decision', '1963-01-01'),
  ('485365', 'Delaware River', 'Stream', 'Kansas', 'KS', 'Jefferson', 'Perry', 39.059167, -95.3977523, ST_GeomFromText('POINT(39.059167 -95.3977523)', 4326), 39.9277779, -95.8374911, '1978-10-13', '2019-08-19', 'Official', 'Board Decision', '1968-01-01'),
  ('485369', 'Jug Motte Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'Fancy Canyon', 37.0219731, -99.0878819, ST_GeomFromText('POINT(37.0219731 -99.0878819)', 4326), 36.9541958, -99.1639948, '1978-10-13', NULL, 'Official', 'Board Decision', '1975-01-01'),
  ('485428', 'Mount Nebo', 'Summit', 'Kansas', 'KS', 'Clark', 'Bloom SE', 37.2805943, -99.7619865, ST_GeomFromText('POINT(37.2805943 -99.7619865)', 4326), NULL, NULL, '1984-07-01', '2024-02-15', NULL, NULL, NULL),
  ('485429', 'West Creek', 'Stream', 'Kansas', 'KS', 'Cloud', 'Wayne', 39.648613, -97.5642054, ST_GeomFromText('POINT(39.648613 -97.5642054)', 4326), 39.8994523, -97.6961533, '1978-10-13', NULL, NULL, NULL, NULL),
  ('485435', 'Grave Creek', 'Stream', 'Kansas', 'KS', 'Cloud', 'Concordia NW', 39.6366712, -97.7478198, ST_GeomFromText('POINT(39.6366712 -97.7478198)', 4326), 39.6841711, -97.6903192, '1978-10-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('485436', 'Lost Creek', 'Stream', 'Kansas', 'KS', 'Republic', 'Kackley', 39.6591623, -97.7555174, ST_GeomFromText('POINT(39.6591623 -97.7555174)', 4326), 39.7458392, -97.7144869, '1978-10-13', '2012-01-17', NULL, NULL, NULL),
  ('485440', 'Hay Creek', 'Stream', 'Kansas', 'KS', 'Cloud', 'Concordia', 39.5911136, -97.6694845, ST_GeomFromText('POINT(39.5911136 -97.6694845)', 4326), 39.6783376, -97.6889302, '1978-10-13', NULL, NULL, NULL, NULL),
  ('485441', 'Cool Creek', 'Stream', 'Kansas', 'KS', 'Republic', 'Concordia NW', 39.59528, -97.6408728, ST_GeomFromText('POINT(39.59528 -97.6408728)', 4326), 39.6702816, -97.6655964, '1978-10-13', NULL, NULL, NULL, NULL),
  ('485443', 'Republican River', 'Stream', 'Kansas', 'KS', 'Geary', 'Junction City', 39.0599979, -96.8013971, ST_GeomFromText('POINT(39.0599979 -96.8013971)', 4326), 40.01999, -101.93785, '1978-10-13', '2011-04-01', 'Official', 'Board Decision', '1934-03-07'),
  ('485458', 'Duck Creek', 'Stream', 'Kansas', 'KS', 'Kingman', 'Adams', 37.4269621, -97.9711694, ST_GeomFromText('POINT(37.4269621 -97.9711694)', 4326), 37.5297385, -98.0228372, '1978-10-13', NULL, NULL, NULL, NULL),
  ('485460', 'Rose Bud Creek', 'Stream', 'Kansas', 'KS', 'Kingman', 'Rago', 37.4436288, -98.073951, ST_GeomFromText('POINT(37.4436288 -98.073951)', 4326), 37.5375166, -98.0889511, '1978-10-13', NULL, NULL, NULL, NULL),
  ('485462', 'Negro Creek', 'Stream', 'Kansas', 'KS', 'Kingman', 'Kingman', 37.6272376, -98.0456151, ST_GeomFromText('POINT(37.6272376 -98.0456151)', 4326), 37.5722384, -98.0778392, '1978-10-13', NULL, NULL, NULL, NULL),
  ('485463', 'Hunter Creek', 'Stream', 'Kansas', 'KS', 'Kingman', 'Kingman', 37.6402934, -98.0856168, ST_GeomFromText('POINT(37.6402934 -98.0856168)', 4326), 37.5547394, -98.1997891, '1978-10-13', NULL, NULL, NULL, NULL),
  ('485471', 'Christopher Lake', 'Reservoir', 'Kansas', 'KS', 'Kingman', 'Alameda', 37.5800895, -98.0185765, ST_GeomFromText('POINT(37.5800895 -98.0185765)', 4326), NULL, NULL, '1978-10-13', '2018-09-28', NULL, NULL, NULL),
  ('485474', 'Johnson Lake', 'Reservoir', 'Kansas', 'KS', 'Kingman', 'Alameda', 37.5950786, -98.0569422, ST_GeomFromText('POINT(37.5950786 -98.0569422)', 4326), NULL, NULL, '1978-10-13', '2018-09-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('485475', 'Sand Creek', 'Stream', 'Kansas', 'KS', 'Kingman', 'Murdock', 37.5919599, -97.9497786, ST_GeomFromText('POINT(37.5919599 -97.9497786)', 4326), 37.5464055, -98.1022849, '1978-10-13', NULL, NULL, NULL, NULL),
  ('485476', 'South Fork Ninnescah River', 'Stream', 'Kansas', 'KS', 'Pratt', 'Lake Afton', 37.5680721, -97.7053279, ST_GeomFromText('POINT(37.5680721 -97.7053279)', 4326), 37.6055741, -98.9284328, '1978-10-13', NULL, NULL, NULL, NULL),
  ('485478', 'Blue Stem Creek', 'Stream', 'Kansas', 'KS', 'Kingman', 'Rago', 37.4452952, -98.0150597, ST_GeomFromText('POINT(37.4452952 -98.0150597)', 4326), 37.5283498, -98.0425603, '1978-10-13', NULL, NULL, NULL, NULL),
  ('485485', 'Mann Lake', 'Reservoir', 'Kansas', 'KS', 'Kingman', 'Alameda', 37.6016824, -98.0470043, ST_GeomFromText('POINT(37.6016824 -98.0470043)', 4326), NULL, NULL, '1990-10-01', NULL, NULL, NULL, NULL),
  ('485488', 'Sandy Creek', 'Stream', 'Oklahoma', 'OK', 'Alfalfa', 'Manchester SW', 36.7597516, -98.174234, ST_GeomFromText('POINT(36.7597516 -98.174234)', 4326), 37.1972449, -98.318405, '1979-12-18', NULL, NULL, NULL, NULL),
  ('485499', 'Red Fork Creek', 'Stream', 'Kansas', 'KS', 'Comanche', 'Fancy Canyon', 37.1125274, -99.0517707, ST_GeomFromText('POINT(37.1125274 -99.0517707)', 4326), 36.9444739, -99.1153818, '1978-10-13', NULL, 'Official', 'Board Decision', '1975-01-01'),
  ('485500', 'Lost Creek', 'Stream', 'Kansas', 'KS', 'Norton', 'Lenora West', 39.6088934, -99.9837374, ST_GeomFromText('POINT(39.6088934 -99.9837374)', 4326), 39.5644486, -100.0115163, '1978-10-13', NULL, NULL, NULL, NULL),
  ('485501', 'School Creek', 'Stream', 'Nebraska', 'NE', 'Franklin', 'Riverton', 40.07369, -98.80108, ST_GeomFromText('POINT(40.07369 -98.80108)', 4326), 39.9780692, -98.794519, '1978-10-13', '2011-10-20', NULL, NULL, NULL),
  ('485502', 'Lohff Creek', 'Stream', 'Nebraska', 'NE', 'Franklin', 'Riverton', 40.08823, -98.79262, ST_GeomFromText('POINT(40.08823 -98.79262)', 4326), 39.9886247, -98.8336869, '1978-10-13', '2011-10-20', NULL, NULL, NULL),
  ('485503', 'Rock Creek', 'Stream', 'Nebraska', 'NE', 'Franklin', 'Riverton', 40.06833, -98.75746, ST_GeomFromText('POINT(40.06833 -98.75746)', 4326), 39.98396, -98.76917, '1978-10-13', '2010-12-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('485504', 'Wortham Creek', 'Stream', 'Nebraska', 'NE', 'Franklin', 'Riverton', 40.0873, -98.86837, ST_GeomFromText('POINT(40.0873 -98.86837)', 4326), 40.002208, -98.856354, '1978-10-13', '2011-10-20', NULL, NULL, NULL),
  ('485505', 'Big Blue River', 'Stream', 'Kansas', 'KS', 'Pottawatomie', 'Manhattan', 39.1880527, -96.5277794, ST_GeomFromText('POINT(39.1880527 -96.5277794)', 4326), 40.9500129, -98.0753349, '1978-10-13', '2019-07-17', 'Official', 'Board Decision', '1964-01-01'),
  ('485506', 'Straight Creek', 'Stream', 'Kansas', 'KS', 'Atchison', 'Arrington', 39.4805533, -95.5472004, ST_GeomFromText('POINT(39.4805533 -95.5472004)', 4326), 39.5738843, -95.8560999, '1978-10-13', NULL, NULL, NULL, NULL),
  ('485509', 'Coleman Creek', 'Stream', 'Kansas', 'KS', 'Douglas', 'Eudora', 38.9233379, -95.0580245, ST_GeomFromText('POINT(38.9233379 -95.0580245)', 4326), 38.8530615, -95.07358, '1978-10-13', NULL, NULL, NULL, NULL),
  ('485514', 'Cedar Point Lake', 'Reservoir', 'Kansas', 'KS', 'Chase', 'Wonsevu', 38.2333502, -96.7750175, ST_GeomFromText('POINT(38.2333502 -96.7750175)', 4326), NULL, NULL, '1978-10-13', NULL, NULL, NULL, NULL),
  ('715546', 'Cave Spring Creek', 'Stream', 'Missouri', 'MO', 'Cass', 'Freeman', 38.555846, -94.579399, ST_GeomFromText('POINT(38.555846 -94.579399)', 4326), 38.5763889, -94.6130556, '1980-10-24', NULL, NULL, NULL, NULL),
  ('719098', 'Harless Creek', 'Stream', 'Missouri', 'MO', 'Cass', 'Freeman', 38.5708456, -94.5566206, ST_GeomFromText('POINT(38.5708456 -94.5566206)', 4326), 38.5897222, -94.6197222, '1980-10-24', NULL, NULL, NULL, NULL),
  ('721891', 'Marmaton River', 'Stream', 'Missouri', 'MO', 'Vernon', 'Horton', 37.9992004, -94.3188383, ST_GeomFromText('POINT(37.9992004 -94.3188383)', 4326), 37.9458686, -95.1308087, '1980-10-24', '2018-07-13', NULL, NULL, NULL),
  ('728547', 'West Elm Branch', 'Stream', 'Missouri', 'MO', 'Barton', 'Liberal', 37.5942127, -94.5699572, ST_GeomFromText('POINT(37.5942127 -94.5699572)', 4326), 37.5736111, -94.6194444, '1980-10-24', NULL, NULL, NULL, NULL),
  ('729961', 'Shiloh Creek', 'Stream', 'Missouri', 'MO', 'Vernon', 'Deerfield', 37.8630949, -94.586346, ST_GeomFromText('POINT(37.8630949 -94.586346)', 4326), 37.9542037, -94.6724592, '1980-10-24', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('729963', 'Shoal Creek', 'Stream', 'Kansas', 'KS', 'Cherokee', 'Baxter Springs', 37.0547855, -94.7007827, ST_GeomFromText('POINT(37.0547855 -94.7007827)', 4326), 36.6475685, -93.962425, '1978-10-13', '2018-07-13', NULL, NULL, NULL),
  ('756398', 'Missouri River', 'Stream', 'Missouri', 'MO', 'St. Charles', 'Wood River', 38.8136597, -90.1198297, ST_GeomFromText('POINT(38.8136597 -90.1198297)', 4326), 45.9268, -111.50558, '1980-10-24', '2020-10-20', 'Official', 'Board Decision', '1953-01-01'),
  ('827254', 'Beaver Creek', 'Stream', 'Nebraska', 'NE', 'Furnas', 'Precept', 40.1211197, -99.6434446, ST_GeomFromText('POINT(40.1211197 -99.6434446)', 4326), 39.4433313, -101.6876716, '1979-03-09', NULL, 'Official', 'Board Decision', '1972-01-01'),
  ('828479', 'Crosby Creek', 'Stream', 'Nebraska', 'NE', 'Nuckolls', 'Scandia NW', 39.9950135, -97.9675432, ST_GeomFromText('POINT(39.9950135 -97.9675432)', 4326), 40.0880676, -97.9900421, '1979-03-09', NULL, NULL, NULL, NULL),
  ('828498', 'Crystal Creek', 'Stream', 'Nebraska', 'NE', 'Harlan', 'Alma', 40.0214001, -99.2928726, ST_GeomFromText('POINT(40.0214001 -99.2928726)', 4326), 39.9325108, -99.2900947, '1979-03-09', NULL, NULL, NULL, NULL),
  ('828793', 'Dry Creek', 'Stream', 'Nebraska', 'NE', 'Webster', 'Inavale', 40.076403, -98.676735, ST_GeomFromText('POINT(40.076403 -98.676735)', 4326), 40.000662, -98.657141, '1979-03-09', '2010-07-12', NULL, NULL, NULL),
  ('833512', 'Smutz Canyon', 'Valley', 'Nebraska', 'NE', 'Dundy', 'Parks', 40.004615, -101.7011853, ST_GeomFromText('POINT(40.004615 -101.7011853)', 4326), 39.9932255, -101.6902749, '1979-03-09', '2018-07-21', NULL, NULL, NULL),
  ('833592', 'South Fork Republican River', 'Stream', 'Nebraska', 'NE', 'Dundy', 'Benkelman', 40.0416617, -101.5212772, ST_GeomFromText('POINT(40.0416617 -101.5212772)', 4326), 39.2147113, -103.3371638, '1979-03-09', '2019-07-26', 'Official', 'Board Decision', '1979-01-01'),
  ('833702', 'Spring Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Oketo', 39.9888, -96.604, ST_GeomFromText('POINT(39.9888 -96.604)', 4326), 40.026, -96.672, '1979-03-09', '2006-06-29', NULL, NULL, NULL),
  ('835484', 'Arikaree River', 'Stream', 'Nebraska', 'NE', 'Dundy', 'Haigler', 40.0202688, -101.9379595, ST_GeomFromText('POINT(40.0202688 -101.9379595)', 4326), 39.3766528, -103.7788429, '1979-03-09', '2019-07-17', 'Official', 'Board Decision', '1977-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1089939', 'Beaver Creek', 'Stream', 'Oklahoma', 'OK', 'Kay', 'Kaw City', 36.7675361, -96.8264225, ST_GeomFromText('POINT(36.7675361 -96.8264225)', 4326), 37.1183333, -96.6333333, '1979-12-18', '2006-01-19', NULL, NULL, NULL),
  ('1090106', 'Big Creek', 'Stream', 'Oklahoma', 'OK', 'Nowata', 'Nowata East', 36.7369, -95.5479, ST_GeomFromText('POINT(36.7369 -95.5479)', 4326), 37.0255556, -95.3138889, '1979-12-18', '2006-06-20', NULL, NULL, NULL),
  ('1090928', 'Caney River', 'Stream', 'Oklahoma', 'OK', 'Rogers', 'Sageeyah', 36.3378738, -95.6991483, ST_GeomFromText('POINT(36.3378738 -95.6991483)', 4326), 37.4872222, -96.4761111, '1979-12-18', '2019-08-13', 'Official', 'Board Decision', '1963-06-11'),
  ('1091288', 'Chikaskia River', 'Stream', 'Oklahoma', 'OK', 'Kay', 'Marland', 36.6230925, -97.2439328, ST_GeomFromText('POINT(36.6230925 -97.2439328)', 4326), 37.5166859, -98.5786957, '1979-12-18', '2019-08-13', 'Official', 'Board Decision', '1897-01-01'),
  ('1091369', 'Cimarron River', 'Stream', 'Oklahoma', 'OK', 'Pawnee', 'Keystone Dam', 36.1706361, -96.2719547, ST_GeomFromText('POINT(36.1706361 -96.2719547)', 4326), 36.9066874, -102.9865963, '1979-12-18', '2019-07-26', 'Official', 'Board Decision', '1969-01-01'),
  ('1091644', 'Coon Creek', 'Stream', 'Oklahoma', 'OK', 'Osage', 'Bowring', 36.9003529, -96.0335952, ST_GeomFromText('POINT(36.9003529 -96.0335952)', 4326), 37.0283978, -96.0641512, '1979-12-18', NULL, NULL, NULL, NULL),
  ('1091839', 'Crooked Creek', 'Stream', 'Oklahoma', 'OK', 'Grant', 'Pond Creek NW', 36.7207, -97.9708, ST_GeomFromText('POINT(36.7207 -97.9708)', 4326), 37.0414, -97.9212, '1979-12-18', '2006-10-04', NULL, NULL, NULL),
  ('1092405', 'East Hickory Creek', 'Stream', 'Oklahoma', 'OK', 'Osage', 'Bowring', 36.9950629, -96.1119305, ST_GeomFromText('POINT(36.9950629 -96.1119305)', 4326), 37.0428402, -96.0877637, '1979-12-18', NULL, NULL, NULL, NULL),
  ('1095291', 'Medicine Lodge River', 'Stream', 'Oklahoma', 'OK', 'Alfalfa', 'Cherokee North', 36.8278068, -98.3272943, ST_GeomFromText('POINT(36.8278068 -98.3272943)', 4326), 37.5141865, -99.3395588, '1979-12-18', '2019-08-19', 'Official', 'Board Decision', '1968-01-01'),
  ('1095788', 'Neosho River', 'Stream', 'Oklahoma', 'OK', 'Muskogee', 'Northeast Muskogee', 35.792321, -95.2944087, ST_GeomFromText('POINT(35.792321 -95.2944087)', 4326), 38.7895, -96.7443, '1979-12-18', '2019-09-24', 'Official', 'Board Decision', '1971-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1098099', 'Skull Creek', 'Stream', 'Oklahoma', 'OK', 'Osage', 'Bowring', 36.9617326, -96.1010973, ST_GeomFromText('POINT(36.9617326 -96.1010973)', 4326), 37.0092322, -96.0602616, '1979-12-18', NULL, NULL, NULL, NULL),
  ('1098881', 'Thunderbolt Creek', 'Stream', 'Oklahoma', 'OK', 'Osage', 'Bowring', 36.9931186, -96.1116528, ST_GeomFromText('POINT(36.9931186 -96.1116528)', 4326), 37.0233972, -96.0769294, '1979-12-18', NULL, NULL, NULL, NULL),
  ('1099243', 'Verdigris River', 'Stream', 'Oklahoma', 'OK', 'Muskogee', 'Northeast Muskogee', 35.8003767, -95.3077426, ST_GeomFromText('POINT(35.8003767 -95.3077426)', 4326), 38.1522429, -96.166941, '1979-12-18', '2019-08-29', NULL, NULL, NULL),
  ('1099567', 'West Hickory Creek', 'Stream', 'Oklahoma', 'OK', 'Osage', 'Bowring', 36.9947851, -96.1119305, ST_GeomFromText('POINT(36.9947851 -96.1119305)', 4326), 37.0383917, -96.1522107, '1979-12-18', NULL, NULL, NULL, NULL),
  ('1962828', 'Barrel Springs Trout Pond', 'Reservoir', 'Kansas', 'KS', 'Scott', 'Lake Scott', 38.6647379, -100.9165376, ST_GeomFromText('POINT(38.6647379 -100.9165376)', 4326), NULL, NULL, '2002-09-11', NULL, NULL, NULL, NULL),
  ('2025955', 'Burroughs Creek', 'Stream', 'Kansas', 'KS', 'Douglas', 'Lawrence East', 38.96476, -95.19681, ST_GeomFromText('POINT(38.96476 -95.19681)', 4326), 38.9482246, -95.2319813, '2004-01-16', '2011-06-25', 'Official', 'Board Decision', '2004-01-01'),
  ('2027071', 'Shane Creek', 'Stream', 'Kansas', 'KS', 'Riley', 'Manhattan', 39.141942, -96.5600022, ST_GeomFromText('POINT(39.141942 -96.5600022)', 4326), 39.1005538, -96.5411127, '2004-02-05', NULL, NULL, NULL, NULL),
  ('2093034', 'Medicine Peak', 'Summit', 'Kansas', 'KS', 'Osborne', 'Osborne SE', 39.3603273, -98.6138057, ST_GeomFromText('POINT(39.3603273 -98.6138057)', 4326), NULL, NULL, '2006-08-31', '2021-01-08', NULL, NULL, NULL),
  ('2093035', 'Sand Mound', 'Summit', 'Kansas', 'KS', 'Osborne', 'Covert', 39.2509671, -98.768964, ST_GeomFromText('POINT(39.2509671 -98.768964)', 4326), NULL, NULL, '2006-08-31', '2024-02-15', NULL, NULL, NULL),
  ('2093036', 'Round Mound', 'Summit', 'Kansas', 'KS', 'Osborne', 'Alton SW', 39.2513933, -98.9581914, ST_GeomFromText('POINT(39.2513933 -98.9581914)', 4326), NULL, NULL, '2006-08-31', '2021-01-08', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2095295', 'Cheyenne Gap', 'Gap', 'Kansas', 'KS', 'Osborne', 'Vincent', 39.2200102, -98.648127, ST_GeomFromText('POINT(39.2200102 -98.648127)', 4326), NULL, NULL, '2006-09-27', NULL, NULL, NULL, NULL),
  ('2098898', 'Tomahawk Parkway Middle Pond', 'Lake', 'Kansas', 'KS', 'Johnson', 'Lenexa', 38.9198132, -94.6268296, ST_GeomFromText('POINT(38.9198132 -94.6268296)', 4326), NULL, NULL, '2006-11-16', '2018-09-21', NULL, NULL, NULL),
  ('2098899', 'Tomahawk Parkway North Pond', 'Lake', 'Kansas', 'KS', 'Johnson', 'Lenexa', 38.9241083, -94.6252365, ST_GeomFromText('POINT(38.9241083 -94.6252365)', 4326), NULL, NULL, '2006-11-16', '2018-09-21', NULL, NULL, NULL),
  ('2098900', 'Tomahawk Parkway South Pond', 'Lake', 'Kansas', 'KS', 'Johnson', 'Lenexa', 38.9174477, -94.6328574, ST_GeomFromText('POINT(38.9174477 -94.6328574)', 4326), NULL, NULL, '2006-11-16', '2018-09-21', NULL, NULL, NULL),
  ('2098901', 'Waterworks Lake North', 'Lake', 'Kansas', 'KS', 'Johnson', 'Olathe', 38.8751, -94.8105, ST_GeomFromText('POINT(38.8751 -94.8105)', 4326), NULL, NULL, '2006-11-16', NULL, NULL, NULL, NULL),
  ('2098902', 'Waterworks Lake South', 'Lake', 'Kansas', 'KS', 'Johnson', 'Ocheltree', 38.872, -94.8105, ST_GeomFromText('POINT(38.872 -94.8105)', 4326), NULL, NULL, '2006-11-16', NULL, NULL, NULL, NULL),
  ('2098903', 'Wilderness Lake', 'Lake', 'Kansas', 'KS', 'Johnson', 'Stilwell', 38.8375, -94.6409, ST_GeomFromText('POINT(38.8375 -94.6409)', 4326), NULL, NULL, '2006-11-16', NULL, NULL, NULL, NULL),
  ('2098913', 'Antioch Lake North', 'Lake', 'Kansas', 'KS', 'Johnson', 'Shawnee', 39.0111, -94.6837, ST_GeomFromText('POINT(39.0111 -94.6837)', 4326), NULL, NULL, '2006-11-16', NULL, NULL, NULL, NULL),
  ('2098914', 'Antioch Lake South', 'Reservoir', 'Kansas', 'KS', 'Johnson', 'Shawnee', 39.0087, -94.6839, ST_GeomFromText('POINT(39.0087 -94.6839)', 4326), NULL, NULL, '2006-11-16', NULL, NULL, NULL, NULL),
  ('2098915', 'Amesbury Lake', 'Lake', 'Kansas', 'KS', 'Johnson', 'Stilwell', 38.8710038, -94.7313323, ST_GeomFromText('POINT(38.8710038 -94.7313323)', 4326), NULL, NULL, '2006-11-16', '2018-09-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2098916', 'Blackbob Park Pond', 'Lake', 'Kansas', 'KS', 'Johnson', 'Ocheltree', 38.8556552, -94.752254, ST_GeomFromText('POINT(38.8556552 -94.752254)', 4326), NULL, NULL, '2006-11-16', '2018-09-21', NULL, NULL, NULL),
  ('2098917', 'Bluestem and Mid-Am Nazarene Pond', 'Lake', 'Kansas', 'KS', 'Johnson', 'Olathe', 38.87581, -94.77995, ST_GeomFromText('POINT(38.87581 -94.77995)', 4326), NULL, NULL, '2006-11-16', '2024-10-28', NULL, NULL, NULL),
  ('2098918', 'Edgerton City Lake', 'Lake', 'Kansas', 'KS', 'Johnson', 'Edgerton', 38.7635, -95.0041, ST_GeomFromText('POINT(38.7635 -95.0041)', 4326), NULL, NULL, '2006-11-16', NULL, NULL, NULL, NULL),
  ('2098919', 'Frisco Lake', 'Lake', 'Kansas', 'KS', 'Johnson', 'Ocheltree', 38.8706, -94.8051, ST_GeomFromText('POINT(38.8706 -94.8051)', 4326), NULL, NULL, '2006-11-16', NULL, NULL, NULL, NULL),
  ('2098920', 'Gardner City Lake', 'Lake', 'Kansas', 'KS', 'Johnson', 'Gardner', 38.8535, -94.9335, ST_GeomFromText('POINT(38.8535 -94.9335)', 4326), NULL, NULL, '2006-11-16', NULL, NULL, NULL, NULL),
  ('2098921', 'Heatherstone Pond', 'Lake', 'Kansas', 'KS', 'Johnson', 'Lenexa', 38.9040612, -94.7446392, ST_GeomFromText('POINT(38.9040612 -94.7446392)', 4326), NULL, NULL, '2006-11-16', '2018-09-21', NULL, NULL, NULL),
  ('2098922', 'Heritage Lake', 'Lake', 'Kansas', 'KS', 'Johnson', 'Stilwell', 38.834871, -94.7489976, ST_GeomFromText('POINT(38.834871 -94.7489976)', 4326), NULL, NULL, '2006-11-16', '2018-09-21', NULL, NULL, NULL),
  ('2098923', 'Kingston Lake', 'Lake', 'Kansas', 'KS', 'Johnson', 'Stilwell', 38.8497987, -94.6787589, ST_GeomFromText('POINT(38.8497987 -94.6787589)', 4326), NULL, NULL, '2006-11-16', '2018-09-21', NULL, NULL, NULL),
  ('2098924', 'Kill Creek Park Lake', 'Reservoir', 'Kansas', 'KS', 'Johnson', 'De Soto', 38.912647, -94.9745752, ST_GeomFromText('POINT(38.912647 -94.9745752)', 4326), NULL, NULL, '2006-11-16', '2017-07-24', NULL, NULL, NULL),
  ('2098925', 'Kill Creek Pond North', 'Lake', 'Kansas', 'KS', 'Johnson', 'De Soto', 38.9223, -94.9714, ST_GeomFromText('POINT(38.9223 -94.9714)', 4326), NULL, NULL, '2006-11-16', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2098926', 'Kill Creek Pond South', 'Lake', 'Kansas', 'KS', 'Johnson', 'De Soto', 38.9196, -94.9703, ST_GeomFromText('POINT(38.9196 -94.9703)', 4326), NULL, NULL, '2006-11-16', NULL, NULL, NULL, NULL),
  ('2098927', 'Lenexa Resurrection Pond', 'Lake', 'Kansas', 'KS', 'Johnson', 'Lenexa', 38.976, -94.7303, ST_GeomFromText('POINT(38.976 -94.7303)', 4326), NULL, NULL, '2006-11-16', NULL, NULL, NULL, NULL),
  ('2098928', 'Lenexa Rose''s Pond', 'Lake', 'Kansas', 'KS', 'Johnson', 'Olathe', 38.9696, -94.7581, ST_GeomFromText('POINT(38.9696 -94.7581)', 4326), NULL, NULL, '2006-11-16', NULL, NULL, NULL, NULL),
  ('2098931', 'Mahaffie Farmstead Pond', 'Lake', 'Kansas', 'KS', 'Johnson', 'Olathe', 38.8931, -94.8036, ST_GeomFromText('POINT(38.8931 -94.8036)', 4326), NULL, NULL, '2006-11-16', NULL, NULL, NULL, NULL),
  ('2098932', 'Olathe East High School Pond', 'Lake', 'Kansas', 'KS', 'Johnson', 'Ocheltree', 38.7778527, -94.7838159, ST_GeomFromText('POINT(38.7778527 -94.7838159)', 4326), NULL, NULL, '2006-11-16', '2018-09-21', NULL, NULL, NULL),
  ('2098933', 'Overland Park South Lake', 'Lake', 'Kansas', 'KS', 'Johnson', 'Lenexa', 38.9721543, -94.673568, ST_GeomFromText('POINT(38.9721543 -94.673568)', 4326), NULL, NULL, '2006-11-16', '2018-09-21', NULL, NULL, NULL),
  ('2098934', 'Olathe Kansas City Road Park Pond', 'Lake', 'Kansas', 'KS', 'Johnson', 'Olathe', 38.8884, -94.8007, ST_GeomFromText('POINT(38.8884 -94.8007)', 4326), NULL, NULL, '2006-11-16', NULL, NULL, NULL, NULL),
  ('2098935', 'Prairie Center Pond', 'Reservoir', 'Kansas', 'KS', 'Johnson', 'De Soto', 38.8792, -94.896, ST_GeomFromText('POINT(38.8792 -94.896)', 4326), NULL, NULL, '2006-11-16', NULL, NULL, NULL, NULL),
  ('2098936', 'Regency Park Lake', 'Lake', 'Kansas', 'KS', 'Johnson', 'Stilwell', 38.85952, -94.6607, ST_GeomFromText('POINT(38.85952 -94.6607)', 4326), NULL, NULL, '2006-11-16', '2024-10-28', NULL, NULL, NULL),
  ('2098937', 'Spring Hill City Lake', 'Reservoir', 'Kansas', 'KS', 'Johnson', 'Ocheltree', 38.7615101, -94.8410123, ST_GeomFromText('POINT(38.7615101 -94.8410123)', 4326), NULL, NULL, '2006-11-16', '2023-04-06', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2098938', 'Shawnee Mission Park Pond', 'Lake', 'Kansas', 'KS', 'Johnson', 'Olathe', 38.9957, -94.7891, ST_GeomFromText('POINT(38.9957 -94.7891)', 4326), NULL, NULL, '2006-11-16', NULL, NULL, NULL, NULL),
  ('2098939', 'Sunflower Park Lake', 'Lake', 'Kansas', 'KS', 'Johnson', 'Eudora', 38.9412, -95.0154, ST_GeomFromText('POINT(38.9412 -95.0154)', 4326), NULL, NULL, '2006-11-16', NULL, NULL, NULL, NULL),
  ('2098940', 'Sunflower Park Lake', 'Reservoir', 'Kansas', 'KS', 'Johnson', 'Eudora', 38.9703, -95.0088, ST_GeomFromText('POINT(38.9703 -95.0088)', 4326), NULL, NULL, '2006-11-16', NULL, NULL, NULL, NULL),
  ('2098941', 'Stoll Park Lake', 'Lake', 'Kansas', 'KS', 'Johnson', 'Lenexa', 38.9169375, -94.7290836, ST_GeomFromText('POINT(38.9169375 -94.7290836)', 4326), NULL, NULL, '2006-11-16', '2018-09-21', NULL, NULL, NULL),
  ('2098949', 'Summercrest Lake', 'Lake', 'Kansas', 'KS', 'Johnson', 'Lenexa', 38.9257384, -94.6720124, ST_GeomFromText('POINT(38.9257384 -94.6720124)', 4326), NULL, NULL, '2006-11-16', '2018-09-21', NULL, NULL, NULL),
  ('2099162', 'Johnson County Kill Creek Park North', 'Lake', 'Kansas', 'KS', 'Johnson', 'De Soto', 38.9118, -94.9731, ST_GeomFromText('POINT(38.9118 -94.9731)', 4326), NULL, NULL, '2006-11-16', NULL, NULL, NULL, NULL),
  ('2099163', 'Johnson County Kill Creek Park South', 'Lake', 'Kansas', 'KS', 'Johnson', 'De Soto', 38.9054, -94.9715, ST_GeomFromText('POINT(38.9054 -94.9715)', 4326), NULL, NULL, '2006-11-16', NULL, NULL, NULL, NULL),
  ('2420612', 'Benoits Dusty Creek', 'Stream', 'Kansas', 'KS', 'Rooks', 'Palco', 39.3302778, -99.5980556, ST_GeomFromText('POINT(39.3302778 -99.5980556)', 4326), 39.2988889, -99.6361111, '2008-04-16', '2011-08-12', 'Official', 'Board Decision', '2008-04-10'),
  ('2420613', 'Dusty Creek', 'Stream', 'Kansas', 'KS', 'Rooks', 'Palco', 39.3736111, -99.5847222, ST_GeomFromText('POINT(39.3736111 -99.5847222)', 4326), 39.2322222, -99.6113889, '2008-04-16', '2011-08-12', 'Official', 'Board Decision', '2008-04-10'),
  ('2475025', 'Trails View Slough', 'Stream', 'Kansas', 'KS', 'Sedgwick', 'Valley Center', 37.831378, -97.362385, ST_GeomFromText('POINT(37.831378 -97.362385)', 4326), 37.8872338, -97.3228812, '2008-07-16', '2011-08-16', 'Official', 'Board Decision', '2009-09-09');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2563442', 'Clear Creek', 'Stream', 'Kansas', 'KS', 'Montgomery', 'Independence', 37.1438889, -95.6625, ST_GeomFromText('POINT(37.1438889 -95.6625)', 4326), 37.1291667, -95.7061111, '2009-07-20', NULL, NULL, NULL, NULL),
  ('2563523', 'May Branch Whitewater River', 'Stream', 'Kansas', 'KS', 'Butler', 'Peabody SE', 38.0191667, -97.0183333, ST_GeomFromText('POINT(38.0191667 -97.0183333)', 4326), 38.1302778, -96.975, '2009-07-20', NULL, 'Official', 'Board Decision', '1963-10-08'),
  ('2652257', 'Alton Bluffs', 'Cliff', 'Kansas', 'KS', 'Osborne', 'Alton', 39.4525, -98.9477778, ST_GeomFromText('POINT(39.4525 -98.9477778)', 4326), NULL, NULL, '2010-12-12', NULL, 'Official', 'Board Decision', '2010-12-09'),
  ('2652258', 'Dry Creek', 'Stream', 'Kansas', 'KS', 'Osborne', 'Downs South', 39.4944444, -98.5702778, ST_GeomFromText('POINT(39.4944444 -98.5702778)', 4326), 39.62551, -98.57841, '2010-12-12', NULL, 'Official', 'Board Decision', '2010-12-09'),
  ('2652259', 'Elm Creek', 'Stream', 'Kansas', 'KS', 'Osborne', 'Mill Creek', 39.495, -98.495, ST_GeomFromText('POINT(39.495 -98.495)', 4326), 39.6115166, -98.5565177, '2010-12-12', NULL, 'Official', 'Board Decision', '2010-12-09'),
  ('2652260', 'Gimblet Creek', 'Stream', 'Kansas', 'KS', 'Osborne', 'Osborne SW', 39.31, -98.6522222, ST_GeomFromText('POINT(39.31 -98.6522222)', 4326), 39.2358182, -98.6954749, '2010-12-12', '2012-03-15', 'Official', 'Board Decision', '2010-12-09'),
  ('2652261', 'Higgins Bluff', 'Cliff', 'Kansas', 'KS', 'Osborne', 'Downs North', 39.5569444, -98.5211111, ST_GeomFromText('POINT(39.5569444 -98.5211111)', 4326), NULL, NULL, '2010-12-12', NULL, 'Official', 'Board Decision', '2010-12-09'),
  ('2652262', 'North Hill', 'Summit', 'Kansas', 'KS', 'Osborne', 'Osborne', 39.4766637, -98.6962094, ST_GeomFromText('POINT(39.4766637 -98.6962094)', 4326), NULL, NULL, '2010-12-12', '2021-01-08', 'Official', 'Board Decision', '2010-12-09'),
  ('2652263', 'Pilot Mound', 'Summit', 'Kansas', 'KS', 'Osborne', 'Alton SW', 39.3441644, -98.9770307, ST_GeomFromText('POINT(39.3441644 -98.9770307)', 4326), NULL, NULL, '2010-12-12', '2021-01-08', 'Official', 'Board Decision', '2010-12-09'),
  ('2652264', 'Skunk Creek', 'Stream', 'Kansas', 'KS', 'Osborne', 'Alton', 39.4594444, -98.8952778, ST_GeomFromText('POINT(39.4594444 -98.8952778)', 4326), 39.55389, -98.93309, '2010-12-12', '2012-03-26', 'Official', 'Board Decision', '2010-12-09');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2652265', 'South Hill', 'Summit', 'Kansas', 'KS', 'Osborne', 'Osborne', 39.3853125, -98.6986431, ST_GeomFromText('POINT(39.3853125 -98.6986431)', 4326), NULL, NULL, '2010-12-12', '2021-01-08', 'Official', 'Board Decision', '2010-12-09'),
  ('2652266', 'Sunny Slope Mound', 'Summit', 'Kansas', 'KS', 'Osborne', 'Osborne SW', 39.2765981, -98.7355244, ST_GeomFromText('POINT(39.2765981 -98.7355244)', 4326), NULL, NULL, '2010-12-12', '2021-01-08', 'Official', 'Board Decision', '2010-12-09'),
  ('2652267', 'Tabletop Hill', 'Summit', 'Kansas', 'KS', 'Osborne', 'Paradise NE', 39.1599933, -98.7994359, ST_GeomFromText('POINT(39.1599933 -98.7994359)', 4326), NULL, NULL, '2010-12-12', '2021-01-08', 'Official', 'Board Decision', '2010-12-09'),
  ('2680027', 'Mount Os', 'Summit', 'Kansas', 'KS', 'Osborne', 'Natoma', 39.1473542, -99.0408635, ST_GeomFromText('POINT(39.1473542 -99.0408635)', 4326), NULL, NULL, '2011-05-12', '2021-01-08', 'Official', 'Board Decision', '2011-05-12'),
  ('2740448', 'Badger Ridge', 'Ridge', 'Kansas', 'KS', 'Wyandotte', 'Shawnee', 39.0575871, -94.6537562, ST_GeomFromText('POINT(39.0575871 -94.6537562)', 4326), NULL, NULL, '2012-08-25', '2021-01-08', 'Official', 'Board Decision', '2012-08-20'),
  ('2740449', 'Cottonwood Creek', 'Stream', 'Kansas', 'KS', 'Wyandotte', 'Shawnee', 39.0485481, -94.6491952, ST_GeomFromText('POINT(39.0485481 -94.6491952)', 4326), 39.0666508, -94.6546028, '2012-08-25', NULL, 'Official', 'Board Decision', '2012-08-20'),
  ('2740585', 'Bone Creek Reservoir', 'Reservoir', 'Kansas', 'KS', 'Crawford', 'Arma', 37.6212152, -94.7481123, ST_GeomFromText('POINT(37.6212152 -94.7481123)', 4326), NULL, NULL, '2012-08-27', '2018-09-21', NULL, NULL, NULL),
  ('2741085', 'Coffey County Lake', 'Reservoir', 'Kansas', 'KS', 'Coffey', 'Burlington', 38.2254375, -95.6920338, ST_GeomFromText('POINT(38.2254375 -95.6920338)', 4326), NULL, NULL, '2012-09-19', NULL, NULL, NULL, NULL),
  ('2741345', 'Cedar Valley Reservoir', 'Reservoir', 'Kansas', 'KS', 'Anderson', 'Garnett West', 38.2525671, -95.3133376, ST_GeomFromText('POINT(38.2525671 -95.3133376)', 4326), NULL, NULL, '2012-09-26', '2023-04-06', NULL, NULL, NULL),
  ('2741465', 'Herington Reservoir', 'Reservoir', 'Kansas', 'KS', 'Dickinson', 'Hope', 38.6520697, -97.0139551, ST_GeomFromText('POINT(38.6520697 -97.0139551)', 4326), NULL, NULL, '2012-10-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2761659', 'Pool 1B', 'Lake', 'Kansas', 'KS', 'Barton', 'Ellinwood NW', 38.4616602, -98.6672422, ST_GeomFromText('POINT(38.4616602 -98.6672422)', 4326), NULL, NULL, '2014-05-21', NULL, NULL, NULL, NULL),
  ('2761660', 'Pool 1A', 'Lake', 'Kansas', 'KS', 'Barton', 'Ellinwood NW', 38.4613914, -98.6442395, ST_GeomFromText('POINT(38.4613914 -98.6442395)', 4326), NULL, NULL, '2014-05-21', NULL, NULL, NULL, NULL),
  ('2761661', 'Pool 1C', 'Lake', 'Kansas', 'KS', 'Barton', 'Ellinwood NW', 38.4756381, -98.6528226, ST_GeomFromText('POINT(38.4756381 -98.6528226)', 4326), NULL, NULL, '2014-05-21', NULL, NULL, NULL, NULL),
  ('2761662', 'Pool 2', 'Swamp', 'Kansas', 'KS', 'Barton', 'Ellinwood NW', 38.4741598, -98.6813184, ST_GeomFromText('POINT(38.4741598 -98.6813184)', 4326), NULL, NULL, '2014-05-21', NULL, NULL, NULL, NULL),
  ('2761663', 'Pool 3A', 'Swamp', 'Kansas', 'KS', 'Barton', 'Ellinwood NW', 38.4910911, -98.6485311, ST_GeomFromText('POINT(38.4910911 -98.6485311)', 4326), NULL, NULL, '2014-05-21', NULL, NULL, NULL, NULL),
  ('2761664', 'Pool 3B', 'Swamp', 'Kansas', 'KS', 'Barton', 'Ellinwood NW', 38.4948531, -98.6313649, ST_GeomFromText('POINT(38.4948531 -98.6313649)', 4326), NULL, NULL, '2014-05-21', NULL, NULL, NULL, NULL),
  ('2761665', 'Pool 4A', 'Swamp', 'Kansas', 'KS', 'Barton', 'Ellinwood NE', 38.4721439, -98.6143704, ST_GeomFromText('POINT(38.4721439 -98.6143704)', 4326), NULL, NULL, '2014-05-21', NULL, NULL, NULL, NULL),
  ('2761666', 'Pool 4B', 'Swamp', 'Kansas', 'KS', 'Barton', 'Ellinwood NE', 38.4556113, -98.6220952, ST_GeomFromText('POINT(38.4556113 -98.6220952)', 4326), NULL, NULL, '2014-05-21', NULL, NULL, NULL, NULL),
  ('2761667', 'Pool 5', 'Swamp', 'Kansas', 'KS', 'Barton', 'Ellinwood NW', 38.4440497, -98.6809571, ST_GeomFromText('POINT(38.4440497 -98.6809571)', 4326), NULL, NULL, '2014-05-21', NULL, NULL, NULL, NULL),
  ('2772323', 'Klinefelter Creek', 'Stream', 'Kansas', 'KS', 'Brown', 'Robinson', 39.8336111, -95.4761111, ST_GeomFromText('POINT(39.8336111 -95.4761111)', 4326), 39.873, -95.47045, '2015-09-11', NULL, 'Official', 'Board Decision', '2015-09-10');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2785169', 'Red Rut Creek', 'Stream', 'Kansas', 'KS', 'Kingman', 'Kingman', 37.636667, -98.060833, ST_GeomFromText('POINT(37.636667 -98.060833)', 4326), 37.6675, -98.070556, '2016-09-09', NULL, 'Official', 'Board Decision', '2016-09-08'),
  ('2786715', 'HorseThief Reservoir', 'Reservoir', 'Kansas', 'KS', 'Hodgeman', 'Horse Thief Canyon', 38.0580899, -100.0560174, ST_GeomFromText('POINT(38.0580899 -100.0560174)', 4326), NULL, NULL, '2017-05-17', '2023-04-25', NULL, NULL, NULL),
  ('2813396', 'Ne con He con Creek', 'Stream', 'Kansas', 'KS', 'Leavenworth', 'Bonner Springs', 39.088261, -94.918474, ST_GeomFromText('POINT(39.088261 -94.918474)', 4326), 39.112013, -94.860982, '2020-08-13', NULL, 'Official', 'Board Decision', '2020-08-13'),
  ('2829555', 'Swart Creek', 'Stream', 'Kansas', 'KS', 'Nemaha', 'Oneida', 39.77336, -95.95994, ST_GeomFromText('POINT(39.77336 -95.95994)', 4326), 39.76234, -95.92896, '2021-03-11', NULL, 'Official', 'Board Decision', '2021-03-11'),
  ('2831010', 'Piper Lake', 'Reservoir', 'Kansas', 'KS', 'Wyandotte', 'Wolcott', 39.1746468, -94.8674259, ST_GeomFromText('POINT(39.1746468 -94.8674259)', 4326), NULL, NULL, '2023-02-10', '2023-03-24', NULL, NULL, NULL),
  ('2831031', 'Little Mission Creek', 'Stream', 'Kansas', 'KS', 'Marshall', 'Oketo', 39.993593, -96.510239, ST_GeomFromText('POINT(39.993593 -96.510239)', 4326), 40.034014, -96.469406, '2023-03-16', '2023-03-16', 'Official', 'Board Decision', '2023-03-09'),
  ('2831233', 'Lake Gary', 'Reservoir', 'Kansas', 'KS', 'Wyandotte', 'Wolcott', 39.1710609, -94.8298431, ST_GeomFromText('POINT(39.1710609 -94.8298431)', 4326), NULL, NULL, '2023-06-09', '2023-06-09', 'Official', 'Board Decision', '2023-06-08'),
  ('2831271', 'Mount Mitchell', 'Summit', 'Kansas', 'KS', 'Wabaunsee', 'Wamego', 39.1454111, -96.2978229, ST_GeomFromText('POINT(39.1454111 -96.2978229)', 4326), NULL, NULL, '2023-08-16', '2023-08-16', 'Official', 'Board Decision', '2023-08-10');


COMMIT;
SET unique_checks = 1;
SET autocommit = 1;

-- KS complete: 3,358 features loaded
