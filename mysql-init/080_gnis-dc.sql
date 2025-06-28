USE kin;

-- GNIS Geographic Features for DC
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
  ('528562', 'Bald Eagle Hill', 'Summit', 'District of Columbia', 'DC', 'District of Columbia', 'Alexandria', 38.8202341, -77.0102514, ST_GeomFromText('POINT(38.8202341 -77.0102514)', 4326), NULL, NULL, '1979-12-18', '2018-06-13', NULL, NULL, NULL),
  ('528572', 'Broad Branch', 'Stream', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9439998, -77.0488661, ST_GeomFromText('POINT(38.9439998 -77.0488661)', 4326), 38.9558333, -77.0683333, '1979-12-18', NULL, NULL, NULL, NULL),
  ('528596', 'Fenwick Branch', 'Stream', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9838889, -77.0422222, ST_GeomFromText('POINT(38.9838889 -77.0422222)', 4326), 38.9961111, -77.0419444, '1979-12-18', '2006-01-05', NULL, NULL, NULL),
  ('528607', 'Goose Island', 'Island', 'District of Columbia', 'DC', 'District of Columbia', 'Alexandria', 38.8084466, -77.0299765, ST_GeomFromText('POINT(38.8084466 -77.0299765)', 4326), NULL, NULL, '1979-12-18', NULL, NULL, NULL, NULL),
  ('528617', 'Hickey Hill', 'Summit', 'District of Columbia', 'DC', 'District of Columbia', 'Washington East', 38.9126372, -76.9575166, ST_GeomFromText('POINT(38.9126372 -76.9575166)', 4326), NULL, NULL, '1979-12-18', '2020-04-08', NULL, NULL, NULL),
  ('528618', 'Hickey Run', 'Stream', 'District of Columbia', 'DC', 'District of Columbia', 'Washington East', 38.9081673, -76.957197, ST_GeomFromText('POINT(38.9081673 -76.957197)', 4326), 38.9166667, -76.9691667, '1979-12-18', NULL, NULL, NULL, NULL),
  ('528623', 'Hoover Hill', 'Summit', 'District of Columbia', 'DC', 'District of Columbia', 'Washington East', 38.9387222, -76.9705308, ST_GeomFromText('POINT(38.9387222 -76.9705308)', 4326), NULL, NULL, '1979-12-18', NULL, NULL, NULL, NULL),
  ('528636', 'Little Falls', 'Falls', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9334443, -77.1180342, ST_GeomFromText('POINT(38.9334443 -77.1180342)', 4326), NULL, NULL, '1979-12-18', NULL, NULL, NULL, NULL),
  ('528646', 'Mount Hamilton', 'Summit', 'District of Columbia', 'DC', 'District of Columbia', 'Washington East', 38.9086649, -76.9753796, ST_GeomFromText('POINT(38.9086649 -76.9753796)', 4326), NULL, NULL, '1979-12-18', '2020-04-08', NULL, NULL, NULL),
  ('528659', 'Piney Branch', 'Stream', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9351111, -77.0469216, ST_GeomFromText('POINT(38.9351111 -77.0469216)', 4326), 38.9391667, -77.035, '1979-12-18', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('528665', 'Roaches Run', 'Stream', 'District of Columbia', 'DC', 'District of Columbia', 'Alexandria', 38.863168, -77.0363657, ST_GeomFromText('POINT(38.863168 -77.0363657)', 4326), 38.8638889, -77.0416667, '1979-12-18', '2015-07-08', NULL, NULL, NULL),
  ('528687', 'Three Sisters Islands', 'Island', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9040005, -77.0799779, ST_GeomFromText('POINT(38.9040005 -77.0799779)', 4326), NULL, NULL, '1979-12-18', NULL, 'Official', 'Board Decision', '1977-01-01'),
  ('528879', 'Pinehurst Branch', 'Stream', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9712216, -77.0438661, ST_GeomFromText('POINT(38.9712216 -77.0438661)', 4326), 38.9769444, -77.0675, '1993-04-01', NULL, NULL, NULL, NULL),
  ('528942', 'Georgetown Reservoir', 'Reservoir', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9133262, -77.0944006, ST_GeomFromText('POINT(38.9133262 -77.0944006)', 4326), NULL, NULL, '1979-12-18', '2019-10-22', NULL, NULL, NULL),
  ('528944', 'Kingman Lake', 'Lake', 'District of Columbia', 'DC', 'District of Columbia', 'Washington East', 38.9013983, -76.9640894, ST_GeomFromText('POINT(38.9013983 -76.9640894)', 4326), NULL, NULL, '1979-12-18', '2019-10-22', 'Official', 'Board Decision', '1977-01-01'),
  ('528947', 'Marbury Point', 'Cape', 'District of Columbia', 'DC', 'District of Columbia', 'Alexandria', 38.815391, -77.0283098, ST_GeomFromText('POINT(38.815391 -77.0283098)', 4326), NULL, NULL, '1979-12-18', '2011-01-12', 'Official', 'Board Decision', '1960-01-01'),
  ('528951', 'Little Island', 'Island', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.8912229, -77.0594218, ST_GeomFromText('POINT(38.8912229 -77.0594218)', 4326), NULL, NULL, '1993-04-01', NULL, NULL, NULL, NULL),
  ('529002', 'Tete Du Pont', 'Cape', 'District of Columbia', 'DC', 'District of Columbia', 'Washington East', 38.890112, -76.9613637, ST_GeomFromText('POINT(38.890112 -76.9613637)', 4326), NULL, NULL, '1991-03-01', NULL, NULL, NULL, NULL),
  ('529008', 'Soapstone Valley', 'Valley', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.945469, -77.05125, ST_GeomFromText('POINT(38.945469 -77.05125)', 4326), 38.9475664, -77.0642681, '1991-03-01', '2017-02-03', NULL, NULL, NULL),
  ('529019', 'Reno Reservoir', 'Reservoir', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9538878, -77.0775811, ST_GeomFromText('POINT(38.9538878 -77.0775811)', 4326), NULL, NULL, '1991-03-01', '2019-06-03', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('529035', 'Poplar Point', 'Cape', 'District of Columbia', 'DC', 'District of Columbia', 'Alexandria', 38.8698345, -77.0016425, ST_GeomFromText('POINT(38.8698345 -77.0016425)', 4326), NULL, NULL, '1991-03-01', NULL, NULL, NULL, NULL),
  ('529040', 'Gravel Point', 'Cape', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.8895563, -77.0635886, ST_GeomFromText('POINT(38.8895563 -77.0635886)', 4326), NULL, NULL, '1991-03-01', NULL, NULL, NULL, NULL),
  ('529048', 'Good Hope Hill', 'Summit', 'District of Columbia', 'DC', 'District of Columbia', 'Anacostia', 38.8678824, -76.9624725, ST_GeomFromText('POINT(38.8678824 -76.9624725)', 4326), NULL, NULL, '1991-03-01', '2020-04-08', NULL, NULL, NULL),
  ('529075', 'Gibsons Spring (historical)', 'Spring', 'District of Columbia', 'DC', 'District of Columbia', 'Washington East', 38.8976119, -76.9821977, ST_GeomFromText('POINT(38.8976119 -76.9821977)', 4326), NULL, NULL, '1991-04-01', NULL, NULL, NULL, NULL),
  ('529274', 'Pope Branch', 'Stream', 'District of Columbia', 'DC', 'District of Columbia', 'Washington East', 38.8787233, -76.9716417, ST_GeomFromText('POINT(38.8787233 -76.9716417)', 4326), 38.8728902, -76.9527523, '1991-04-01', NULL, NULL, NULL, NULL),
  ('529315', 'Jumpin'' Jack Spring', 'Spring', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9728882, -77.0474772, ST_GeomFromText('POINT(38.9728882 -77.0474772)', 4326), NULL, NULL, '1991-04-01', NULL, NULL, NULL, NULL),
  ('529317', 'Spring Branch (historical)', 'Stream', 'District of Columbia', 'DC', 'District of Columbia', 'Washington East', 38.8878899, -76.9683083, ST_GeomFromText('POINT(38.8878899 -76.9683083)', 4326), 38.8975, -76.9825, '1991-04-01', NULL, NULL, NULL, NULL),
  ('529320', 'Jackson Hill', 'Summit', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9250928, -77.0470051, ST_GeomFromText('POINT(38.9250928 -77.0470051)', 4326), NULL, NULL, '1991-04-01', '2020-04-08', NULL, NULL, NULL),
  ('529327', 'Deep Branch (historical)', 'Stream', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9042783, -77.0705332, ST_GeomFromText('POINT(38.9042783 -77.0705332)', 4326), 38.925, -77.0736111, '1991-04-01', NULL, NULL, NULL, NULL),
  ('529369', 'Oxon Creek', 'Bay', 'District of Columbia', 'DC', 'District of Columbia', 'Alexandria', 38.8073356, -77.0263653, ST_GeomFromText('POINT(38.8073356 -77.0263653)', 4326), NULL, NULL, '1979-12-18', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('529407', 'Buzzard Point', 'Cape', 'District of Columbia', 'DC', 'District of Columbia', 'Alexandria', 38.8640013, -77.012754, ST_GeomFromText('POINT(38.8640013 -77.012754)', 4326), NULL, NULL, '1979-12-18', '2009-06-02', NULL, NULL, NULL),
  ('529435', 'Saint James Creek (historical)', 'Stream', 'District of Columbia', 'DC', 'District of Columbia', 'Alexandria', 38.8645568, -77.0141428, ST_GeomFromText('POINT(38.8645568 -77.0141428)', 4326), 38.8645568, -77.0141428, '1993-04-01', NULL, NULL, NULL, NULL),
  ('529455', 'Easby Point', 'Cape', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.8942785, -77.0563662, ST_GeomFromText('POINT(38.8942785 -77.0563662)', 4326), NULL, NULL, '1991-01-01', NULL, NULL, NULL, NULL),
  ('529578', 'The Mole', 'Cape', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9001117, -77.0577552, ST_GeomFromText('POINT(38.9001117 -77.0577552)', 4326), NULL, NULL, '1991-04-01', NULL, NULL, NULL, NULL),
  ('529673', 'Caffreys Spring (historical)', 'Spring', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.8970562, -77.0246988, ST_GeomFromText('POINT(38.8970562 -77.0246988)', 4326), NULL, NULL, '1991-05-01', NULL, NULL, NULL, NULL),
  ('529689', 'Silver Spring Branch (historical)', 'Stream', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9828881, -77.0405326, ST_GeomFromText('POINT(38.9828881 -77.0405326)', 4326), 38.985, -77.0241667, '1991-05-01', NULL, NULL, NULL, NULL),
  ('529701', 'Georgetown Heights', 'Summit', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9157501, -77.0791422, ST_GeomFromText('POINT(38.9157501 -77.0791422)', 4326), NULL, NULL, '1991-05-01', '2020-04-08', NULL, NULL, NULL),
  ('529702', 'Peters Point', 'Cape', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.8917785, -77.0555328, ST_GeomFromText('POINT(38.8917785 -77.0555328)', 4326), NULL, NULL, '1991-05-01', NULL, NULL, NULL, NULL),
  ('529703', 'Peters Hill', 'Summit', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.895104, -77.0516415, ST_GeomFromText('POINT(38.895104 -77.0516415)', 4326), NULL, NULL, '1991-05-01', '2020-04-08', NULL, NULL, NULL),
  ('529707', 'Linnean Hill', 'Summit', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.936193, -77.049932, ST_GeomFromText('POINT(38.936193 -77.049932)', 4326), NULL, NULL, '1991-05-01', '2020-04-08', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('529715', 'Ripps Island (historical)', 'Island', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.8906675, -77.0380324, ST_GeomFromText('POINT(38.8906675 -77.0380324)', 4326), NULL, NULL, '1991-05-01', NULL, NULL, NULL, NULL),
  ('529727', 'Camp Hill', 'Summit', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9214924, -77.0669197, ST_GeomFromText('POINT(38.9214924 -77.0669197)', 4326), NULL, NULL, '1991-05-01', '2020-04-08', NULL, NULL, NULL),
  ('529894', 'Bathing Beach', 'Beach', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.8817787, -77.034699, ST_GeomFromText('POINT(38.8817787 -77.034699)', 4326), NULL, NULL, '1991-05-01', NULL, NULL, NULL, NULL),
  ('529895', 'Reedy Branch (historical)', 'Stream', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9126115, -77.0230321, ST_GeomFromText('POINT(38.9126115 -77.0230321)', 4326), 38.9319444, -77.0269444, '1991-05-01', NULL, NULL, NULL, NULL),
  ('529979', 'Fishing Shore', 'Beach', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9112225, -77.0969227, ST_GeomFromText('POINT(38.9112225 -77.0969227)', 4326), NULL, NULL, '1991-05-01', NULL, NULL, NULL, NULL),
  ('529984', 'Federal Spring (historical)', 'Spring', 'District of Columbia', 'DC', 'District of Columbia', 'Washington East', 38.8956675, -76.9835866, ST_GeomFromText('POINT(38.8956675 -76.9835866)', 4326), NULL, NULL, '1991-05-01', NULL, NULL, NULL, NULL),
  ('530001', 'Franklin Park Springs (historical)', 'Spring', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9020561, -77.03081, ST_GeomFromText('POINT(38.9020561 -77.03081)', 4326), NULL, NULL, '1991-05-01', NULL, NULL, NULL, NULL),
  ('530002', 'Evans Point', 'Cape', 'District of Columbia', 'DC', 'District of Columbia', 'Washington East', 38.8790011, -76.9744196, ST_GeomFromText('POINT(38.8790011 -76.9744196)', 4326), NULL, NULL, '1991-05-01', NULL, NULL, NULL, NULL),
  ('530019', 'Babcock Lakes (historical)', 'Lake', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.8901119, -77.038588, ST_GeomFromText('POINT(38.8901119 -77.038588)', 4326), NULL, NULL, '1991-05-01', '2015-08-24', NULL, NULL, NULL),
  ('530034', 'High Service Reservoir (historical)', 'Reservoir', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.913167, -77.0655331, ST_GeomFromText('POINT(38.913167 -77.0655331)', 4326), NULL, NULL, '1991-05-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('530148', 'Klingle Valley', 'Valley', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9335879, -77.0517875, ST_GeomFromText('POINT(38.9335879 -77.0517875)', 4326), 38.9339094, -77.0631004, '1991-06-01', '2016-10-26', NULL, NULL, NULL),
  ('530151', 'Piney Branch Valley', 'Valley', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9352457, -77.047792, ST_GeomFromText('POINT(38.9352457 -77.047792)', 4326), 38.938563, -77.0352438, '1991-06-01', '2016-10-27', NULL, NULL, NULL),
  ('530156', 'Mount Alto', 'Summit', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9235643, -77.0742256, ST_GeomFromText('POINT(38.9235643 -77.0742256)', 4326), NULL, NULL, '1991-06-01', '2020-04-08', NULL, NULL, NULL),
  ('530178', 'The Potomac Gorge', 'Valley', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9026579, -77.0708525, ST_GeomFromText('POINT(38.9026579 -77.0708525)', 4326), 38.9783406, -77.2369673, '1991-07-01', '2017-02-16', NULL, NULL, NULL),
  ('530408', 'Wisconsin Avenue Reservoir (historical)', 'Reservoir', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9134447, -77.0658109, ST_GeomFromText('POINT(38.9134447 -77.0658109)', 4326), NULL, NULL, '1991-07-01', NULL, NULL, NULL, NULL),
  ('530435', 'Mount Saint Sepulchre', 'Summit', 'District of Columbia', 'DC', 'District of Columbia', 'Washington East', 38.9375739, -76.9850455, ST_GeomFromText('POINT(38.9375739 -76.9850455)', 4326), NULL, NULL, '1991-07-01', '2020-04-08', NULL, NULL, NULL),
  ('530713', 'Duck Creek (historical)', 'Stream', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.8928896, -77.0416436, ST_GeomFromText('POINT(38.8928896 -77.0416436)', 4326), 38.895, -77.0383333, '1991-06-01', NULL, NULL, NULL, NULL),
  ('530732', 'Greenleaf Point', 'Cape', 'District of Columbia', 'DC', 'District of Columbia', 'Alexandria', 38.8617791, -77.0174763, ST_GeomFromText('POINT(38.8617791 -77.0174763)', 4326), NULL, NULL, '1979-12-18', '2011-01-12', 'Official', 'Board Decision', '1891-05-25'),
  ('530826', 'Reflecting Pool', 'Reservoir', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.8893505, -77.0446529, ST_GeomFromText('POINT(38.8893505 -77.0446529)', 4326), NULL, NULL, '1991-08-01', '2019-10-22', NULL, NULL, NULL),
  ('530967', 'Round Hill', 'Summit', 'District of Columbia', 'DC', 'District of Columbia', 'Washington East', 38.9261144, -76.9884988, ST_GeomFromText('POINT(38.9261144 -76.9884988)', 4326), NULL, NULL, '1993-02-01', '2020-04-08', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('530968', 'Bennings Branch (historical)', 'Stream', 'District of Columbia', 'DC', 'District of Columbia', 'Washington East', 38.8912231, -76.9585859, ST_GeomFromText('POINT(38.8912231 -76.9585859)', 4326), 38.8777778, -76.9397222, '1993-02-01', NULL, NULL, NULL, NULL),
  ('530978', 'Carp Pond (historical)', 'Lake', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.8909274, -77.0424669, ST_GeomFromText('POINT(38.8909274 -77.0424669)', 4326), NULL, NULL, '1993-02-01', '2015-08-24', NULL, NULL, NULL),
  ('530999', 'Sixteenth Street Reservoir (historical)', 'Reservoir', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.954833, -77.0371992, ST_GeomFromText('POINT(38.954833 -77.0371992)', 4326), NULL, NULL, '1993-02-01', NULL, NULL, NULL, NULL),
  ('531049', 'Davis Branch (historical)', 'Stream', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9245556, -77.1069229, ST_GeomFromText('POINT(38.9245556 -77.1069229)', 4326), 38.9355556, -77.09, '1993-02-01', NULL, NULL, NULL, NULL),
  ('531050', 'Gillam Branch (historical)', 'Stream', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9315, -77.1124786, ST_GeomFromText('POINT(38.9315 -77.1124786)', 4326), 38.9327778, -77.0991667, '1993-02-01', NULL, NULL, NULL, NULL),
  ('531051', 'Brightwood Reservoir (historical)', 'Reservoir', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9570551, -77.0344213, ST_GeomFromText('POINT(38.9570551 -77.0344213)', 4326), NULL, NULL, '1993-02-01', NULL, NULL, NULL, NULL),
  ('531053', 'First High Reservoir (historical)', 'Reservoir', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9351111, -77.0149765, ST_GeomFromText('POINT(38.9351111 -77.0149765)', 4326), NULL, NULL, '1993-03-01', NULL, NULL, NULL, NULL),
  ('531058', 'Burnham Barrier', 'Island', 'District of Columbia', 'DC', 'District of Columbia', 'Washington East', 38.8959452, -76.9644193, ST_GeomFromText('POINT(38.8959452 -76.9644193)', 4326), NULL, NULL, '1993-03-01', '2018-02-13', NULL, NULL, NULL),
  ('531060', 'Anacostia First High Reservoir', 'Reservoir', 'District of Columbia', 'DC', 'District of Columbia', 'Anacostia', 38.8604437, -76.9779296, ST_GeomFromText('POINT(38.8604437 -76.9779296)', 4326), NULL, NULL, '1993-03-01', '2019-10-22', NULL, NULL, NULL),
  ('531070', 'Bunker Hill', 'Summit', 'District of Columbia', 'DC', 'District of Columbia', 'Washington East', 38.9353812, -76.9883068, ST_GeomFromText('POINT(38.9353812 -76.9883068)', 4326), NULL, NULL, '1993-03-01', '2020-04-08', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('531074', 'Giesboro Point', 'Cape', 'District of Columbia', 'DC', 'District of Columbia', 'Alexandria', 38.8478905, -77.0196985, ST_GeomFromText('POINT(38.8478905 -77.0196985)', 4326), NULL, NULL, '1979-12-18', '2011-01-12', 'Official', 'Board Decision', '1891-12-31'),
  ('531302', 'Maddox Branch', 'Stream', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9190002, -77.1027562, ST_GeomFromText('POINT(38.9190002 -77.1027562)', 4326), 38.9288889, -77.0941667, '1993-02-01', NULL, NULL, NULL, NULL),
  ('531303', 'Stickfoot Branch', 'Stream', 'District of Columbia', 'DC', 'District of Columbia', 'Alexandria', 38.8651124, -77.0021981, ST_GeomFromText('POINT(38.8651124 -77.0021981)', 4326), 38.850946, -76.9777529, '1993-02-01', NULL, NULL, NULL, NULL),
  ('531309', 'Hains Point', 'Cape', 'District of Columbia', 'DC', 'District of Columbia', 'Alexandria', 38.8573347, -77.021643, ST_GeomFromText('POINT(38.8573347 -77.021643)', 4326), NULL, NULL, '1979-12-18', NULL, NULL, NULL, NULL),
  ('531312', 'Tiber Creek (historical)', 'Stream', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.8906675, -77.0391435, ST_GeomFromText('POINT(38.8906675 -77.0391435)', 4326), 38.9155556, -77.0202778, '1993-04-01', NULL, NULL, NULL, NULL),
  ('531316', 'Capitol Hill', 'Summit', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.8897341, -77.0089892, ST_GeomFromText('POINT(38.8897341 -77.0089892)', 4326), NULL, NULL, '1993-04-01', '2021-08-16', NULL, NULL, NULL),
  ('531432', 'Cherry Hill', 'Summit', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9151036, -77.0619196, ST_GeomFromText('POINT(38.9151036 -77.0619196)', 4326), NULL, NULL, '1993-06-01', '2021-01-15', NULL, NULL, NULL),
  ('531433', 'Fairview Hill', 'Summit', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9153814, -77.0633085, ST_GeomFromText('POINT(38.9153814 -77.0633085)', 4326), NULL, NULL, '1993-06-01', '2021-01-15', NULL, NULL, NULL),
  ('531434', 'Forsythia Hill', 'Summit', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9148258, -77.062753, ST_GeomFromText('POINT(38.9148258 -77.062753)', 4326), NULL, NULL, '1993-06-01', '2021-01-15', NULL, NULL, NULL),
  ('531435', 'Crabapple Hill', 'Summit', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9142558, -77.0638879, ST_GeomFromText('POINT(38.9142558 -77.0638879)', 4326), NULL, NULL, '1993-06-01', '2021-01-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('531460', 'McMillan Reservoir', 'Reservoir', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9248611, -77.016997, ST_GeomFromText('POINT(38.9248611 -77.016997)', 4326), NULL, NULL, '1979-12-18', '2019-10-22', NULL, NULL, NULL),
  ('531463', 'Rock Creek', 'Stream', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.8995561, -77.0571996, ST_GeomFromText('POINT(38.8995561 -77.0571996)', 4326), 39.1987175, -77.1388696, '1979-12-18', '2015-07-08', NULL, NULL, NULL),
  ('531468', 'Theodore Roosevelt Island', 'Island', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.8956674, -77.0619219, ST_GeomFromText('POINT(38.8956674 -77.0619219)', 4326), NULL, NULL, '1979-12-18', '2016-06-20', NULL, NULL, NULL),
  ('531475', 'Foundry Branch', 'Stream', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9051116, -77.0791445, ST_GeomFromText('POINT(38.9051116 -77.0791445)', 4326), 38.9425, -77.0758333, '1993-04-01', NULL, NULL, NULL, NULL),
  ('531569', 'Slash Run (historical)', 'Stream', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9190003, -77.0413659, ST_GeomFromText('POINT(38.9190003 -77.0413659)', 4326), 38.9091667, -77.0336111, '1993-04-01', NULL, NULL, NULL, NULL),
  ('531728', 'Rock Creek Valley', 'Valley', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.8996572, -77.057878, ST_GeomFromText('POINT(38.8996572 -77.057878)', 4326), 39.1958558, -77.1399612, '1991-02-01', '2018-08-01', NULL, NULL, NULL),
  ('531829', 'Columbia Island', 'Island', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.8823342, -77.0571996, ST_GeomFromText('POINT(38.8823342 -77.0571996)', 4326), NULL, NULL, '1979-12-18', '2016-06-21', 'Official', 'Board Decision', '1920-01-01'),
  ('531843', 'Tidal Basin', 'Reservoir', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.8837231, -77.0388658, ST_GeomFromText('POINT(38.8837231 -77.0388658)', 4326), NULL, NULL, '1979-12-18', '2009-06-02', NULL, NULL, NULL),
  ('531875', 'Pulpit Rock', 'Pillar', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9451109, -77.0466438, ST_GeomFromText('POINT(38.9451109 -77.0466438)', 4326), NULL, NULL, '1993-04-01', NULL, NULL, NULL, NULL),
  ('531895', 'Capitol Reflecting Pool', 'Reservoir', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.8897924, -77.0136485, ST_GeomFromText('POINT(38.8897924 -77.0136485)', 4326), NULL, NULL, '1991-03-01', '2019-10-22', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('531907', 'Lees Hill', 'Summit', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9133367, -77.0655093, ST_GeomFromText('POINT(38.9133367 -77.0655093)', 4326), NULL, NULL, '1991-04-01', '2020-04-08', NULL, NULL, NULL),
  ('531914', 'Mount Saint Alban', 'Summit', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9306589, -77.0705309, ST_GeomFromText('POINT(38.9306589 -77.0705309)', 4326), NULL, NULL, '1991-05-01', '2020-04-08', NULL, NULL, NULL),
  ('532032', 'Anacostia River', 'Stream', 'District of Columbia', 'DC', 'District of Columbia', 'Alexandria', 38.8537237, -77.0202541, ST_GeomFromText('POINT(38.8537237 -77.0202541)', 4326), 38.9426111, -76.9438634, '1979-12-18', '2013-12-10', 'Official', 'Board Decision', '1890-01-01'),
  ('532034', 'Beaverdam Creek', 'Stream', 'District of Columbia', 'DC', 'District of Columbia', 'Washington East', 38.9167783, -76.9427522, ST_GeomFromText('POINT(38.9167783 -76.9427522)', 4326), 38.9537221, -76.8619166, '1979-12-18', NULL, NULL, NULL, NULL),
  ('532037', 'Piney Run', 'Stream', 'District of Columbia', 'DC', 'District of Columbia', 'Washington East', 38.8923342, -76.9441409, ST_GeomFromText('POINT(38.8923342 -76.9441409)', 4326), 38.8769444, -76.9236111, '1979-12-18', NULL, NULL, NULL, NULL),
  ('532039', 'Watts Branch', 'Stream', 'District of Columbia', 'DC', 'District of Columbia', 'Washington East', 38.9056674, -76.957197, ST_GeomFromText('POINT(38.9056674 -76.957197)', 4326), 38.8706432, -76.9045399, '1979-12-18', '2015-07-08', NULL, NULL, NULL),
  ('597850', 'Oxon Creek', 'Stream', 'Maryland', 'MD', 'Prince George''s', 'Alexandria', 38.8073356, -77.026643, ST_GeomFromText('POINT(38.8073356 -77.026643)', 4326), 38.8166667, -77.0063889, '1979-09-12', '2006-06-23', 'Official', 'Board Decision', '1892-01-01'),
  ('597915', 'Potomac River', 'Stream', 'Maryland', 'MD', 'St. Mary''s', 'Burgess', 37.9982645, -76.3338878, ST_GeomFromText('POINT(37.9982645 -76.3338878)', 4326), 39.52833, -78.58778, '2024-01-12', '2024-01-12', 'Official', 'Board Decision', '1931-01-01'),
  ('1468388', 'Hunter Point', 'Cape', 'Virginia', 'VA', 'Arlington', 'Alexandria', 38.8420571, -77.0335878, ST_GeomFromText('POINT(38.8420571 -77.0335878)', 4326), NULL, NULL, '1979-09-28', '2014-04-14', NULL, NULL, NULL),
  ('1478084', 'Four Mile Run', 'Stream', 'Virginia', 'VA', 'Arlington', 'Alexandria', 38.8401128, -77.0446992, ST_GeomFromText('POINT(38.8401128 -77.0446992)', 4326), 38.8987226, -77.1705357, '1979-09-28', '2017-07-31', 'Official', 'Board Decision', '1975-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2085363', 'Fletchers Cove', 'Bay', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9186, -77.103, ST_GeomFromText('POINT(38.9186 -77.103)', 4326), NULL, NULL, '2006-03-17', NULL, NULL, NULL, NULL),
  ('2496982', 'Point Reno', 'Summit', 'District of Columbia', 'DC', 'District of Columbia', 'Washington West', 38.9517864, -77.076023, ST_GeomFromText('POINT(38.9517864 -77.076023)', 4326), NULL, NULL, '2008-09-08', '2020-04-08', 'Official', 'Board Decision', '2008-09-03'),
  ('2790960', 'Heritage Island', 'Island', 'District of Columbia', 'DC', 'District of Columbia', 'Washington East', 38.8925183, -76.9662432, ST_GeomFromText('POINT(38.8925183 -76.9662432)', 4326), NULL, NULL, '2018-02-13', NULL, NULL, NULL, NULL);


COMMIT;
SET unique_checks = 1;
SET autocommit = 1;

-- DC complete: 103 features loaded
