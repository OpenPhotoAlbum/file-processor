USE kin;

-- GNIS Geographic Features for NJ
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
  ('216373', 'Delaware Bay', 'Bay', 'Delaware', 'DE', 'Sussex', NULL, 39.0501128, -75.1496285, ST_GeomFromText('POINT(39.0501128 -75.1496285)', 4326), NULL, NULL, '1979-08-02', '2016-09-23', 'Official', 'Board Decision', '1963-01-01'),
  ('217887', 'Delaware River', 'Stream', 'Delaware', 'DE', 'New Castle', 'Taylors Bridge', 39.4326121, -75.528813, ST_GeomFromText('POINT(39.4326121 -75.528813)', 4326), 41.9389755, -75.2790615, '1979-08-02', '2016-09-23', 'Official', 'Board Decision', '1963-01-01'),
  ('873763', 'Ben Davis Island (historical)', 'Island', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.2890029, -75.2882475, ST_GeomFromText('POINT(39.2890029 -75.2882475)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('873764', 'Fortescue Island (historical)', 'Island', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.2562254, -75.1651857, ST_GeomFromText('POINT(39.2562254 -75.1651857)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('873765', 'Egg Island (historical)', 'Island', 'New Jersey', 'NJ', 'Cumberland', 'Fortescue', 39.1792805, -75.1371283, ST_GeomFromText('POINT(39.1792805 -75.1371283)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('873767', 'Dators Pond', 'Lake', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0913088, -74.1760858, ST_GeomFromText('POINT(41.0913088 -74.1760858)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', 'Official', 'Board Decision', '1987-01-01'),
  ('873768', 'East Branch Mingamahone Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.203526, -74.1652679, ST_GeomFromText('POINT(40.203526 -74.1652679)', 4326), 40.245926, -74.1453552, '1981-07-01', '2013-03-21', 'Official', 'Board Decision', '1980-01-01'),
  ('873770', 'Hesters Branch', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Woodbury', 39.8408815, -75.1466131, ST_GeomFromText('POINT(39.8408815 -75.1466131)', 4326), 39.8150138, -75.1430726, '1989-11-01', '2013-03-21', 'Official', 'Board Decision', '1982-01-01'),
  ('873771', 'Windy Cove', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'Forked River', 39.8673411, -74.1406936, ST_GeomFromText('POINT(39.8673411 -74.1406936)', 4326), NULL, NULL, '1990-03-01', '2015-02-06', NULL, NULL, NULL),
  ('873772', 'Sloop Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Forked River', 39.8681746, -74.1343045, ST_GeomFromText('POINT(39.8681746 -74.1343045)', 4326), NULL, NULL, '1990-03-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('873773', 'Wire Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Forked River', 39.8476197, -74.1447222, ST_GeomFromText('POINT(39.8476197 -74.1447222)', 4326), 39.8496893, -74.1474232, '1990-03-01', '2013-03-21', NULL, NULL, NULL),
  ('873774', 'Wire Pond', 'Lake', 'New Jersey', 'NJ', 'Ocean', 'Forked River', 39.8509858, -74.1476594, ST_GeomFromText('POINT(39.8509858 -74.1476594)', 4326), NULL, NULL, '1990-03-01', '2018-12-18', NULL, NULL, NULL),
  ('873780', 'Bridge Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Forked River', 39.8270137, -74.171606, ST_GeomFromText('POINT(39.8270137 -74.171606)', 4326), 39.837129, -74.1868544, '1990-03-01', '2013-03-21', NULL, NULL, NULL),
  ('873784', 'High Bar Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Forked River', 39.7545645, -74.1326365, ST_GeomFromText('POINT(39.7545645 -74.1326365)', 4326), NULL, NULL, '1990-03-01', NULL, NULL, NULL, NULL),
  ('873785', 'Lochiel Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Forked River', 39.7657964, -74.2007884, ST_GeomFromText('POINT(39.7657964 -74.2007884)', 4326), 39.7673128, -74.2488295, '1990-03-01', '2013-03-21', NULL, NULL, NULL),
  ('873792', 'Huckleberry Branch', 'Swamp', 'New Jersey', 'NJ', 'Ocean', 'Toms River', 39.8790075, -74.2279196, ST_GeomFromText('POINT(39.8790075 -74.2279196)', 4326), NULL, NULL, '1990-03-01', NULL, NULL, NULL, NULL),
  ('873801', 'Applegate Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Seaside Park', 39.9813006, -74.1223016, ST_GeomFromText('POINT(39.9813006 -74.1223016)', 4326), 39.9785013, -74.129498, '1990-03-01', '2013-03-21', NULL, NULL, NULL),
  ('873803', 'Crossway Creek', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'Toms River', 39.9862289, -74.1284723, ST_GeomFromText('POINT(39.9862289 -74.1284723)', 4326), NULL, NULL, '1990-03-01', NULL, NULL, NULL, NULL),
  ('873818', 'Stooling Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Seaside Park', 39.9567848, -74.087637, ST_GeomFromText('POINT(39.9567848 -74.087637)', 4326), NULL, NULL, '1990-03-01', NULL, NULL, NULL, NULL),
  ('873821', 'Gap Cove', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'Seaside Park', 39.9859511, -74.0715255, ST_GeomFromText('POINT(39.9859511 -74.0715255)', 4326), NULL, NULL, '1990-03-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('873825', 'Tide Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0026925, -74.114542, ST_GeomFromText('POINT(40.0026925 -74.114542)', 4326), 40.0144356, -74.1332102, '1990-03-01', '2013-03-21', NULL, NULL, NULL),
  ('873829', 'Sedge Island', 'Island', 'New Jersey', 'NJ', 'Monmouth', 'Point Pleasant', 40.1078931, -74.0454147, ST_GeomFromText('POINT(40.1078931 -74.0454147)', 4326), NULL, NULL, '1990-03-01', NULL, NULL, NULL, NULL),
  ('873842', 'Reedy Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0289289, -74.0774202, ST_GeomFromText('POINT(40.0289289 -74.0774202)', 4326), 40.0403965, -74.0987062, '1990-03-01', '2013-03-21', NULL, NULL, NULL),
  ('873844', 'Kingfisher Cove', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0490054, -74.1023608, ST_GeomFromText('POINT(40.0490054 -74.1023608)', 4326), NULL, NULL, '1990-03-01', NULL, NULL, NULL, NULL),
  ('873846', 'Jones Tide Pond', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0378946, -74.0620813, ST_GeomFromText('POINT(40.0378946 -74.0620813)', 4326), NULL, NULL, '1990-03-01', NULL, NULL, NULL, NULL),
  ('873847', 'Winter Yacht Basin', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0395612, -74.0587479, ST_GeomFromText('POINT(40.0395612 -74.0587479)', 4326), NULL, NULL, '1990-03-01', NULL, NULL, NULL, NULL),
  ('873849', 'Long Point Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0134506, -74.0995825, ST_GeomFromText('POINT(40.0134506 -74.0995825)', 4326), NULL, NULL, '1990-03-01', NULL, NULL, NULL, NULL),
  ('873851', 'Long Island Cove', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0109508, -74.0623588, ST_GeomFromText('POINT(40.0109508 -74.0623588)', 4326), NULL, NULL, '1990-03-01', '2021-05-24', NULL, NULL, NULL),
  ('873852', 'Swamp Cove', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0225824, -74.0592526, ST_GeomFromText('POINT(40.0225824 -74.0592526)', 4326), NULL, NULL, '1990-03-01', '2021-07-20', NULL, NULL, NULL),
  ('873869', 'Long Beach', 'Beach', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.6832714, -74.1464976, ST_GeomFromText('POINT(39.6832714 -74.1464976)', 4326), NULL, NULL, '1990-03-01', '2015-02-06', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('873898', 'Slab Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Lakewood', 40.0222222, -74.2433333, ST_GeomFromText('POINT(40.0222222 -74.2433333)', 4326), 40.0482787, -74.2288708, '1990-03-01', '2015-05-28', NULL, NULL, NULL),
  ('873900', 'Long Swamp Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Toms River', 39.9497287, -74.1659184, ST_GeomFromText('POINT(39.9497287 -74.1659184)', 4326), 40.0058729, -74.1957593, '1990-03-01', '2013-03-21', NULL, NULL, NULL),
  ('873910', 'Lakes Bay', 'Bay', 'New Jersey', 'NJ', 'Atlantic', 'Oceanville', 39.3778944, -74.4968187, ST_GeomFromText('POINT(39.3778944 -74.4968187)', 4326), NULL, NULL, '1990-03-01', NULL, NULL, NULL, NULL),
  ('873918', 'Hammock Cove', 'Bay', 'New Jersey', 'NJ', 'Atlantic', 'Oceanville', 39.4751174, -74.4032034, ST_GeomFromText('POINT(39.4751174 -74.4032034)', 4326), NULL, NULL, '1990-03-01', NULL, NULL, NULL, NULL),
  ('873935', 'Conovers Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Pleasantville', 39.4209488, -74.5041329, ST_GeomFromText('POINT(39.4209488 -74.5041329)', 4326), 39.4023919, -74.5197261, '1990-03-01', '2015-04-30', NULL, NULL, NULL),
  ('873938', 'Ables Run', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Pleasantville', 39.4284988, -74.5194992, ST_GeomFromText('POINT(39.4284988 -74.5194992)', 4326), 39.4310968, -74.5355201, '1990-03-01', '2013-03-21', NULL, NULL, NULL),
  ('873960', 'Hoffman Point', 'Cape', 'New Jersey', 'NJ', 'Atlantic', 'Brigantine Inlet', 39.435395, -74.3584793, ST_GeomFromText('POINT(39.435395 -74.3584793)', 4326), NULL, NULL, '1990-03-01', NULL, NULL, NULL, NULL),
  ('873962', 'Sluice Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Marmora', 39.2584552, -74.7043732, ST_GeomFromText('POINT(39.2584552 -74.7043732)', 4326), 39.2575788, -74.6904445, '1990-03-01', '2013-03-21', NULL, NULL, NULL),
  ('873963', 'Bridge Creek (historical)', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Marmora', 39.2628929, -74.6671042, ST_GeomFromText('POINT(39.2628929 -74.6671042)', 4326), 39.2686111, -74.6658333, '1990-03-01', '2013-06-05', NULL, NULL, NULL),
  ('873967', 'Landing Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3159489, -74.6301581, ST_GeomFromText('POINT(39.3159489 -74.6301581)', 4326), 39.3362807, -74.6332705, '1990-03-01', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('873969', 'Clubhouse Lagoon', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Ocean City', 39.2576153, -74.6176576, ST_GeomFromText('POINT(39.2576153 -74.6176576)', 4326), NULL, NULL, '1990-10-01', NULL, NULL, NULL, NULL),
  ('873970', 'South Harbor', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Ocean City', 39.2715043, -74.6018235, ST_GeomFromText('POINT(39.2715043 -74.6018235)', 4326), NULL, NULL, '1990-10-01', NULL, NULL, NULL, NULL),
  ('873972', 'The Lagoon', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Ocean City', 39.2937268, -74.5626551, ST_GeomFromText('POINT(39.2937268 -74.5626551)', 4326), NULL, NULL, '1990-10-01', NULL, NULL, NULL, NULL),
  ('873985', 'Isaacs Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Ocean City', 39.3474739, -74.5441782, ST_GeomFromText('POINT(39.3474739 -74.5441782)', 4326), 39.3546793, -74.5418447, '1990-10-01', '2013-06-05', NULL, NULL, NULL),
  ('873986', 'Lone Cedar Island', 'Island', 'New Jersey', 'NJ', 'Atlantic', 'Ocean City', 39.3309494, -74.530987, ST_GeomFromText('POINT(39.3309494 -74.530987)', 4326), NULL, NULL, '1990-10-01', '2015-06-03', NULL, NULL, NULL),
  ('873989', 'Seaview Harbor', 'Bay', 'New Jersey', 'NJ', 'Atlantic', 'Ocean City', 39.3131716, -74.5357094, ST_GeomFromText('POINT(39.3131716 -74.5357094)', 4326), NULL, NULL, '1990-10-01', NULL, NULL, NULL, NULL),
  ('873990', 'Kepwel Spring', 'Spring', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.2425982, -74.0634601, ST_GeomFromText('POINT(40.2425982 -74.0634601)', 4326), NULL, NULL, '1990-10-01', '2011-04-19', NULL, NULL, NULL),
  ('874021', 'Huckleberry Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Toms River', 39.8851186, -74.218197, ST_GeomFromText('POINT(39.8851186 -74.218197)', 4326), 39.8752778, -74.2338889, '1991-11-01', NULL, NULL, NULL, NULL),
  ('874036', 'Chadwick Beach', 'Beach', 'New Jersey', 'NJ', 'Ocean', 'Seaside Park', 39.9912289, -74.0626364, ST_GeomFromText('POINT(39.9912289 -74.0626364)', 4326), NULL, NULL, '1991-11-01', NULL, NULL, NULL, NULL),
  ('874074', 'South Branch Newton Creek', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Camden', 39.8981768, -75.1116586, ST_GeomFromText('POINT(39.8981768 -75.1116586)', 4326), 39.8791152, -75.0639582, '1991-11-01', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('874084', 'Lone Cedar Island', 'Island', 'New Jersey', 'NJ', 'Atlantic', 'Ocean City', 39.3306717, -74.5307092, ST_GeomFromText('POINT(39.3306717 -74.5307092)', 4326), NULL, NULL, '1991-11-01', NULL, NULL, NULL, NULL),
  ('874108', 'Money Island', 'Cape', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.2781699, -75.2363008, ST_GeomFromText('POINT(39.2781699 -75.2363008)', 4326), NULL, NULL, '1991-11-01', NULL, NULL, NULL, NULL),
  ('874113', 'Little Beach', 'Beach', 'New Jersey', 'NJ', 'Atlantic', 'Brigantine Inlet', 39.4792842, -74.3251444, ST_GeomFromText('POINT(39.4792842 -74.3251444)', 4326), NULL, NULL, '1991-11-01', NULL, NULL, NULL, NULL),
  ('874118', 'Coon Trap', 'Swamp', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.2865033, -75.1824086, ST_GeomFromText('POINT(39.2865033 -75.1824086)', 4326), NULL, NULL, '1991-11-01', NULL, NULL, NULL, NULL),
  ('874123', 'Piersons Ditch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Fortescue', 39.2252055, -75.1373675, ST_GeomFromText('POINT(39.2252055 -75.1373675)', 4326), 39.2215817, -75.142343, '1991-11-01', '2013-03-21', NULL, NULL, NULL),
  ('874135', 'Anderson Creek', 'Stream', 'New Jersey', 'NJ', 'Hudson', 'Weehawken', 40.780314, -74.0862608, ST_GeomFromText('POINT(40.780314 -74.0862608)', 4326), 40.7808745, -74.081744, '1991-12-01', '2013-03-21', NULL, NULL, NULL),
  ('874160', 'Cranberry Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3309489, -74.6751602, ST_GeomFromText('POINT(39.3309489 -74.6751602)', 4326), 39.355, -74.6541667, '1992-07-01', NULL, NULL, NULL, NULL),
  ('874169', 'Bridge Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Marmora', 39.2792163, -74.6667445, ST_GeomFromText('POINT(39.2792163 -74.6667445)', 4326), 39.2725264, -74.6586657, '1992-07-01', '2013-03-21', NULL, NULL, NULL),
  ('874192', 'Mohingson Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Keyport', 40.4323296, -74.2184777, ST_GeomFromText('POINT(40.4323296 -74.2184777)', 4326), 40.3898, -74.1927, '1992-07-01', '2014-10-10', 'Official', 'Board Decision', '1990-01-01'),
  ('874193', 'Belvedero Beach', 'Beach', 'New Jersey', 'NJ', 'Monmouth', 'Keyport', 40.454545, -74.1309599, ST_GeomFromText('POINT(40.454545 -74.1309599)', 4326), NULL, NULL, '1992-07-01', '2015-02-06', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('874195', 'Cooks Beach', 'Beach', 'New Jersey', 'NJ', 'Cape May', 'Rio Grande', 39.1090024, -74.8940598, ST_GeomFromText('POINT(39.1090024 -74.8940598)', 4326), NULL, NULL, '1992-07-01', NULL, NULL, NULL, NULL),
  ('874198', 'Rubes Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Oceanville', 39.4770618, -74.4134817, ST_GeomFromText('POINT(39.4770618 -74.4134817)', 4326), 39.4748003, -74.4278133, '1992-07-01', '2013-03-21', NULL, NULL, NULL),
  ('874204', 'Weir Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.2600211, -75.1452935, ST_GeomFromText('POINT(39.2600211 -75.1452935)', 4326), 39.2468177, -75.1223364, '1992-07-01', '2013-03-21', NULL, NULL, NULL),
  ('874207', 'Penns Neck', 'Cape', 'New Jersey', 'NJ', 'Salem', 'Delaware City', 39.6209462, -75.5149218, ST_GeomFromText('POINT(39.6209462 -75.5149218)', 4326), NULL, NULL, '1992-07-01', NULL, NULL, NULL, NULL),
  ('874210', 'Tide Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Toms River', 39.9784511, -74.1265276, ST_GeomFromText('POINT(39.9784511 -74.1265276)', 4326), 40.0145617, -74.1329172, '1992-07-01', NULL, NULL, NULL, NULL),
  ('874213', 'Deep Hollow Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Toms River', 39.8942852, -74.2245863, ST_GeomFromText('POINT(39.8942852 -74.2245863)', 4326), 39.8726186, -74.2490315, '1992-07-01', NULL, NULL, NULL, NULL),
  ('874220', 'Allendale Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0184305, -74.1312542, ST_GeomFromText('POINT(41.0184305 -74.1312542)', 4326), 41.0502786, -74.1210651, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874221', 'Bear Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Hightstown', 40.3249046, -74.6173596, ST_GeomFromText('POINT(40.3249046 -74.6173596)', 4326), 40.2348371, -74.5383096, '1979-09-08', '2013-03-21', 'Official', 'Board Decision', '1977-01-01'),
  ('874223', 'Boonton Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.882513, -74.408142, ST_GeomFromText('POINT(40.882513 -74.408142)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('874224', 'Fiddlers Creek', 'Stream', 'New Jersey', 'NJ', 'Mercer', 'Lambertville', 40.3103762, -74.8857093, ST_GeomFromText('POINT(40.3103762 -74.8857093)', 4326), 40.3300738, -74.8502183, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('874225', 'Gander Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Freehold', 40.2572424, -74.3636441, ST_GeomFromText('POINT(40.2572424 -74.3636441)', 4326), 40.2356233, -74.3714547, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874226', 'Long House Creek', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Greenwood Lake', 41.2495383, -74.310429, ST_GeomFromText('POINT(41.2495383 -74.310429)', 4326), 41.177873, -74.3745977, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874227', 'Makepeace Lake', 'Reservoir', 'New Jersey', 'NJ', 'Atlantic', 'Egg Harbor City', 39.544157, -74.7467788, ST_GeomFromText('POINT(39.544157 -74.7467788)', 4326), NULL, NULL, '1979-09-08', '2018-12-17', NULL, NULL, NULL),
  ('874228', 'Nortons Branch', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Atsion', 39.6270278, -74.6906161, ST_GeomFromText('POINT(39.6270278 -74.6906161)', 4326), 39.5983476, -74.710207, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874229', 'Pacock Brook', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.0953746, -74.5079354, ST_GeomFromText('POINT(41.0953746 -74.5079354)', 4326), 41.1448426, -74.4505906, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874231', 'Raccoon Island', 'Island', 'New Jersey', 'NJ', 'Gloucester', 'Bridgeport', 39.8151129, -75.3671352, ST_GeomFromText('POINT(39.8151129 -75.3671352)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874232', 'Aaron Denny Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0340021, -74.8348903, ST_GeomFromText('POINT(39.0340021 -74.8348903)', 4326), 39.0411111, -74.8408333, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874233', 'Abbot Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.3396414, -75.2749944, ST_GeomFromText('POINT(39.3396414 -75.2749944)', 4326), 39.3679474, -75.2942419, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874234', 'Abbots Meadow', 'Swamp', 'New Jersey', 'NJ', 'Salem', 'Salem', 39.5087234, -75.4946446, ST_GeomFromText('POINT(39.5087234 -75.4946446)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874240', 'Abrams Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3106681, -74.7351301, ST_GeomFromText('POINT(39.3106681 -74.7351301)', 4326), 39.307414, -74.7377425, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('874243', 'Absecon Bay', 'Bay', 'New Jersey', 'NJ', 'Atlantic', 'Oceanville', 39.408728, -74.4729288, ST_GeomFromText('POINT(39.408728 -74.4729288)', 4326), NULL, NULL, '1979-09-08', '2013-12-04', 'Official', 'Board Decision', '1891-01-01'),
  ('874245', 'Absecon Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Oceanville', 39.4203977, -74.4812965, ST_GeomFromText('POINT(39.4203977 -74.4812965)', 4326), 39.4303385, -74.5206124, '1979-09-08', '2013-12-11', NULL, NULL, NULL),
  ('874249', 'Lake Absegami', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Oswego Lake', 39.6255756, -74.428285, ST_GeomFromText('POINT(39.6255756 -74.428285)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('874252', 'Lake Acquackanonk', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.0557906, -74.5693298, ST_GeomFromText('POINT(41.0557906 -74.5693298)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('874255', 'Adams Branch', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Mays Landing', 39.4741502, -74.6785784, ST_GeomFromText('POINT(39.4741502 -74.6785784)', 4326), 39.4593906, -74.6483204, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874256', 'Adams Lake', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Pompton Plains', 40.9217652, -74.2668142, ST_GeomFromText('POINT(40.9217652 -74.2668142)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874264', 'Agros Lake', 'Lake', 'New Jersey', 'NJ', 'Warren', 'Portland', 40.9300397, -75.0013887, ST_GeomFromText('POINT(40.9300397 -75.0013887)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('874266', 'Akimbo Point', 'Cape', 'New Jersey', 'NJ', 'Atlantic', 'New Gretna', 39.5534512, -74.4340379, ST_GeomFromText('POINT(39.5534512 -74.4340379)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874267', 'Alberta Lake', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.2061942, -74.0354407, ST_GeomFromText('POINT(40.2061942 -74.0354407)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('874268', 'Albertson Brook', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Atsion', 39.6823214, -74.7214079, ST_GeomFromText('POINT(39.6823214 -74.7214079)', 4326), 39.6925427, -74.8121738, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('874273', 'Alcyon Lake', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Pitman West', 39.7285901, -75.1416763, ST_GeomFromText('POINT(39.7285901 -75.1416763)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('874277', 'Alder Cove', 'Bay', 'New Jersey', 'NJ', 'Salem', 'Canton', 39.4359458, -75.4682547, ST_GeomFromText('POINT(39.4359458 -75.4682547)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874279', 'Aldrich Lake', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Adelphia', 40.1504251, -74.2521781, ST_GeomFromText('POINT(40.1504251 -74.2521781)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', 'Official', 'Board Decision', '1980-01-01'),
  ('874280', 'Alex Island', 'Island', 'New Jersey', 'NJ', 'Atlantic', 'Ocean City', 39.3665054, -74.5170975, ST_GeomFromText('POINT(39.3665054 -74.5170975)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874282', 'Alexanders Pond', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Pompton Plains', 40.9684312, -74.2670921, ST_GeomFromText('POINT(40.9684312 -74.2670921)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874285', 'Alexauken Creek', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'Stockton', 40.3771433, -74.9524158, ST_GeomFromText('POINT(40.3771433 -74.9524158)', 4326), 40.3917309, -74.8646593, '1979-09-08', '2014-10-24', 'Official', 'Board Decision', '1906-01-01'),
  ('874288', 'Algonkin Lake', 'Reservoir', 'New Jersey', 'NJ', 'Salem', 'Pitman West', 39.6630575, -75.2393246, ST_GeomFromText('POINT(39.6630575 -75.2393246)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('874293', 'Allamuchy Mountain', 'Summit', 'New Jersey', 'NJ', 'Warren', 'Tranquility', 40.9267943, -74.7942702, ST_GeomFromText('POINT(40.9267943 -74.7942702)', 4326), NULL, NULL, '1979-09-08', '2020-04-08', 'Official', 'Board Decision', '1897-01-01'),
  ('874294', 'Allamuchy Pond', 'Reservoir', 'New Jersey', 'NJ', 'Warren', 'Tranquility', 40.9116402, -74.8155845, ST_GeomFromText('POINT(40.9116402 -74.8155845)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', 'Official', 'Board Decision', '1897-01-01'),
  ('874304', 'Allerton Creek', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'Pittstown', 40.5960975, -74.8918676, ST_GeomFromText('POINT(40.5960975 -74.8918676)', 4326), 40.6145551, -74.8797011, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('874309', 'Alloway Creek', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Delaware City', 39.5003899, -75.5282572, ST_GeomFromText('POINT(39.5003899 -75.5282572)', 4326), 39.5999844, -75.2504683, '1979-09-08', '2014-06-13', 'Official', 'Board Decision', '1893-01-01'),
  ('874310', 'Alloway Hope Halfway', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Taylors Bridge', 39.4943463, -75.5111039, ST_GeomFromText('POINT(39.4943463 -75.5111039)', 4326), 39.4770901, -75.5054283, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874311', 'Alloway Lake', 'Reservoir', 'New Jersey', 'NJ', 'Salem', 'Alloway', 39.5657785, -75.3563525, ST_GeomFromText('POINT(39.5657785 -75.3563525)', 4326), NULL, NULL, '1979-09-08', '2022-08-05', NULL, NULL, NULL),
  ('874315', 'Almonesson Creek', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Runnemede', 39.8459469, -75.0940625, ST_GeomFromText('POINT(39.8459469 -75.0940625)', 4326), 39.807547, -75.1062942, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874316', 'Almonesson Lake', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Runnemede', 39.8145597, -75.0973375, ST_GeomFromText('POINT(39.8145597 -75.0973375)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('874317', 'Alpaugh Brook', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'High Bridge', 40.7039037, -74.9454689, ST_GeomFromText('POINT(40.7039037 -74.9454689)', 4326), 40.6970875, -74.9597597, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874327', 'Alquatka Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Medford Lakes', 39.7828499, -74.8060584, ST_GeomFromText('POINT(39.7828499 -74.8060584)', 4326), 39.8045634, -74.8294258, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874329', 'Ambrose Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Bound Brook', 40.559542, -74.5252365, ST_GeomFromText('POINT(40.559542 -74.5252365)', 4326), 40.5229013, -74.3921614, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874332', 'Lake Ames', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.9530908, -74.5021317, ST_GeomFromText('POINT(40.9530908 -74.5021317)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('874339', 'Anchorage Point', 'Cape', 'New Jersey', 'NJ', 'Atlantic', 'Ocean City', 39.3037269, -74.5704332, ST_GeomFromText('POINT(39.3037269 -74.5704332)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('874344', 'Andover Ponds', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9832944, -74.7362552, ST_GeomFromText('POINT(40.9832944 -74.7362552)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('874345', 'Andre Hill', 'Summit', 'New Jersey', 'NJ', 'Bergen', 'Nyack', 41.0206446, -73.9549653, ST_GeomFromText('POINT(41.0206446 -73.9549653)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('874347', 'Andrew Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0017843, -74.1118051, ST_GeomFromText('POINT(40.0017843 -74.1118051)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874350', 'Anglesea Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0212242, -74.8082223, ST_GeomFromText('POINT(39.0212242 -74.8082223)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('874351', 'Anglesea Marsh', 'Swamp', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0134464, -74.8040554, ST_GeomFromText('POINT(39.0134464 -74.8040554)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('874353', 'Annaricken Brook', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Columbus', 40.055945, -74.7029372, ST_GeomFromText('POINT(40.055945 -74.7029372)', 4326), 40.0533333, -74.6388889, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874356', 'Anona Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Park Ridge', 41.0773185, -74.0984758, ST_GeomFromText('POINT(41.0773185 -74.0984758)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874360', 'Apple Pie Hill', 'Summit', 'New Jersey', 'NJ', 'Burlington', 'Chatsworth', 39.8073647, -74.5895556, ST_GeomFromText('POINT(39.8073647 -74.5895556)', 4326), NULL, NULL, '1979-09-08', '2021-11-27', NULL, NULL, NULL),
  ('874362', 'Applegate Cove', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'Seaside Park', 39.9809511, -74.1190274, ST_GeomFromText('POINT(39.9809511 -74.1190274)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874363', 'Applegates Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Adelphia', 40.2255649, -74.2601752, ST_GeomFromText('POINT(40.2255649 -74.2601752)', 4326), 40.2527062, -74.2302418, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('874365', 'Apshawa Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.0137134, -74.3828058, ST_GeomFromText('POINT(41.0137134 -74.3828058)', 4326), 41.0273286, -74.3869257, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874366', 'Arapaho Lake', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.0301453, -74.6020614, ST_GeomFromText('POINT(41.0301453 -74.6020614)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('874378', 'Mount Arlington', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Stanhope', 40.9154839, -74.6280855, ST_GeomFromText('POINT(40.9154839 -74.6280855)', 4326), NULL, NULL, '1979-09-08', '2023-11-15', NULL, NULL, NULL),
  ('874382', 'Arnold Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Jenkins', 39.6398406, -74.5057073, ST_GeomFromText('POINT(39.6398406 -74.5057073)', 4326), 39.668019, -74.4753313, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874383', 'Arnold Point', 'Cape', 'New Jersey', 'NJ', 'Salem', 'Canton', 39.388724, -75.4224194, ST_GeomFromText('POINT(39.388724 -75.4224194)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874384', 'Arnold Pond', 'Lake', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.7390324, -74.1937237, ST_GeomFromText('POINT(39.7390324 -74.1937237)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('874386', 'Arrowhead Lake', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.8901547, -74.4652001, ST_GeomFromText('POINT(40.8901547 -74.4652001)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('874388', 'Artificial Island', 'Island', 'New Jersey', 'NJ', 'Salem', 'Taylors Bridge', 39.4756677, -75.5360354, ST_GeomFromText('POINT(39.4756677 -75.5360354)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874402', 'Lake Ashroe', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Culvers Gap', 41.1806011, -74.8163779, ST_GeomFromText('POINT(41.1806011 -74.8163779)', 4326), NULL, NULL, '1979-09-08', '2023-04-05', NULL, NULL, NULL),
  ('874403', 'Assiscong Creek', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'Flemington', 40.5382645, -74.8419785, ST_GeomFromText('POINT(40.5382645 -74.8419785)', 4326), 40.5654594, -74.8995709, '1979-09-08', '2014-10-24', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('874404', 'Assiscunk Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Columbus', 40.0534717, -74.7400117, ST_GeomFromText('POINT(40.0534717 -74.7400117)', 4326), 40.0404211, -74.7095954, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874405', 'Assiscunk Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Bristol', 40.0817775, -74.8501645, ST_GeomFromText('POINT(40.0817775 -74.8501645)', 4326), 40.0626073, -74.6368057, '1979-09-08', '2019-08-29', NULL, NULL, NULL),
  ('874409', 'Assunpink Creek', 'Stream', 'New Jersey', 'NJ', 'Mercer', 'Trenton West', 40.2165617, -74.7701651, ST_GeomFromText('POINT(40.2165617 -74.7701651)', 4326), 40.202133, -74.4399905, '1979-09-08', '2014-10-24', 'Official', 'Board Decision', '1931-01-01'),
  ('874411', 'Atco Lake', 'Reservoir', 'New Jersey', 'NJ', 'Camden', 'Clementon', 39.7572407, -74.885683, ST_GeomFromText('POINT(39.7572407 -74.885683)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('874416', 'Atlantic City Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Atlantic', 'Pleasantville', 39.4404952, -74.5295297, ST_GeomFromText('POINT(39.4404952 -74.5295297)', 4326), NULL, NULL, '1979-09-08', '2022-08-05', NULL, NULL, NULL),
  ('874419', 'Atsion Lake', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Atsion', 39.7416225, -74.7371792, ST_GeomFromText('POINT(39.7416225 -74.7371792)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('874422', 'Audubon Lake', 'Reservoir', 'New Jersey', 'NJ', 'Camden', 'Camden', 39.8885155, -75.0916152, ST_GeomFromText('POINT(39.8885155 -75.0916152)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('874430', 'Avis Millpond', 'Reservoir', 'New Jersey', 'NJ', 'Salem', 'Woodstown', 39.6302838, -75.2875775, ST_GeomFromText('POINT(39.6302838 -75.2875775)', 4326), NULL, NULL, '1979-09-08', '2022-08-05', NULL, NULL, NULL),
  ('874435', 'Ayres Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.3495579, -75.3554721, ST_GeomFromText('POINT(39.3495579 -75.3554721)', 4326), 39.361069, -75.3382704, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874440', 'Babcock Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3103932, -74.6865495, ST_GeomFromText('POINT(39.3103932 -74.6865495)', 4326), 39.3040185, -74.6899724, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('874441', 'Babcock Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Mays Landing', 39.4545694, -74.7213221, ST_GeomFromText('POINT(39.4545694 -74.7213221)', 4326), 39.4970205, -74.6111155, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874442', 'Babcock Swamp', 'Swamp', 'New Jersey', 'NJ', 'Atlantic', 'Mays Landing', 39.4715055, -74.6787715, ST_GeomFromText('POINT(39.4715055 -74.6787715)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874443', 'Back Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Rocky Hill', 40.4397944, -74.6462202, ST_GeomFromText('POINT(40.4397944 -74.6462202)', 4326), 40.4431259, -74.7073746, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874444', 'Back Brook', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'Hopewell', 40.4648091, -74.7995138, ST_GeomFromText('POINT(40.4648091 -74.7995138)', 4326), 40.4311056, -74.8778129, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874447', 'Back Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.3017808, -75.2843583, ST_GeomFromText('POINT(39.3017808 -75.2843583)', 4326), 39.3388889, -75.2733333, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874448', 'Back Creek', 'Stream', 'New Jersey', 'NJ', 'Mercer', 'Trenton East', 40.1828734, -74.6951652, ST_GeomFromText('POINT(40.1828734 -74.6951652)', 4326), 40.1933972, -74.6076608, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874449', 'Back Creek Point', 'Cape', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.2987252, -75.2824138, ST_GeomFromText('POINT(39.2987252 -75.2824138)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874451', 'Back Neck', 'Cape', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.3337251, -75.2982475, ST_GeomFromText('POINT(39.3337251 -75.2982475)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874452', 'Back o'' th'' Sound', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.088447, -74.7601642, ST_GeomFromText('POINT(39.088447 -74.7601642)', 4326), NULL, NULL, '1979-09-08', '2009-10-22', NULL, NULL, NULL),
  ('874453', 'Back Run', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Tuckahoe', 39.2867816, -74.7857207, ST_GeomFromText('POINT(39.2867816 -74.7857207)', 4326), 39.2593233, -74.7733784, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('874455', 'Bacons Neck', 'Cape', 'New Jersey', 'NJ', 'Cumberland', 'Canton', 39.3909466, -75.3826954, ST_GeomFromText('POINT(39.3909466 -75.3826954)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874457', 'Bacons Run', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Columbus', 40.1095881, -74.6872687, ST_GeomFromText('POINT(40.1095881 -74.6872687)', 4326), 40.0719962, -74.6294618, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874458', 'Baffin Brook', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.949885, -74.5312285, ST_GeomFromText('POINT(39.949885 -74.5312285)', 4326), 39.9329727, -74.4965315, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874463', 'Baker Mill Pond', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.9035869, -74.5985849, ST_GeomFromText('POINT(40.9035869 -74.5985849)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('874464', 'Baker Pond', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0057138, -74.2221511, ST_GeomFromText('POINT(41.0057138 -74.2221511)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('874467', 'Bald Hill', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.9178683, -74.4732092, ST_GeomFromText('POINT(40.9178683 -74.4732092)', 4326), NULL, NULL, '1979-09-08', '2021-11-27', NULL, NULL, NULL),
  ('874468', 'Bald Mountain', 'Summit', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.1209206, -74.2001448, ST_GeomFromText('POINT(41.1209206 -74.2001448)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('874469', 'Baldpate Mountain', 'Summit', 'New Jersey', 'NJ', 'Warren', 'Washington', 40.8170011, -74.9020484, ST_GeomFromText('POINT(40.8170011 -74.9020484)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('874470', 'Baldpate Mountain', 'Summit', 'New Jersey', 'NJ', 'Mercer', 'Pennington', 40.3300986, -74.8726632, ST_GeomFromText('POINT(40.3300986 -74.8726632)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('874471', 'Baldridge Creek', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Delaware City', 39.5762383, -75.5097628, ST_GeomFromText('POINT(39.5762383 -75.5097628)', 4326), 39.5927258, -75.5120802, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('874474', 'Baldwins Creek', 'Stream', 'New Jersey', 'NJ', 'Mercer', 'Pennington', 40.3392735, -74.7779399, ST_GeomFromText('POINT(40.3392735 -74.7779399)', 4326), 40.3405556, -74.8213889, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874476', 'Ballinger Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'New Gretna', 39.5600777, -74.4152284, ST_GeomFromText('POINT(39.5600777 -74.4152284)', 4326), 39.6003646, -74.3813038, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874477', 'Ballingers Lake', 'Reservoir', 'New Jersey', 'NJ', 'Salem', 'Alloway', 39.575941, -75.269351, ST_GeomFromText('POINT(39.575941 -75.269351)', 4326), NULL, NULL, '1979-09-08', '2024-10-30', NULL, NULL, NULL),
  ('874478', 'Balson Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0645579, -74.7965549, ST_GeomFromText('POINT(39.0645579 -74.7965549)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('874480', 'Bamber Lake', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'Keswick Grove', 39.8932467, -74.3186519, ST_GeomFromText('POINT(39.8932467 -74.3186519)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('874482', 'Banks Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Marmora', 39.2845596, -74.6782158, ST_GeomFromText('POINT(39.2845596 -74.6782158)', 4326), 39.2803042, -74.7027719, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874488', 'Barbour Pond', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.89866, -74.1827858, ST_GeomFromText('POINT(40.89866 -74.1827858)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('874489', 'Barbour Pond', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.9614629, -74.2299718, ST_GeomFromText('POINT(40.9614629 -74.2299718)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('874490', 'Barclay Brook', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'Freehold', 40.3541646, -74.3666697, ST_GeomFromText('POINT(40.3541646 -74.3666697)', 4326), 40.3447125, -74.3030691, '1979-09-08', '2013-03-21', 'Official', 'Board Decision', '1954-01-01'),
  ('874493', 'Bard Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Indian Mills', 39.7700032, -74.7108507, ST_GeomFromText('POINT(39.7700032 -74.7108507)', 4326), 39.782718, -74.7056794, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('874494', 'Baremore Quarters', 'Bay', 'New Jersey', 'NJ', 'Atlantic', 'Brigantine Inlet', 39.4087282, -74.3709798, ST_GeomFromText('POINT(39.4087282 -74.3709798)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874496', 'Bargaintown Pond', 'Lake', 'New Jersey', 'NJ', 'Atlantic', 'Ocean City', 39.3642264, -74.5782587, ST_GeomFromText('POINT(39.3642264 -74.5782587)', 4326), NULL, NULL, '1979-09-08', '2018-12-17', NULL, NULL, NULL),
  ('874497', 'Barkers Brook', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Bristol', 40.0550649, -74.7540021, ST_GeomFromText('POINT(40.0550649 -74.7540021)', 4326), 40.0239503, -74.6458554, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874500', 'Barnegat Bay', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'Forked River', 39.8048418, -74.1448598, ST_GeomFromText('POINT(39.8048418 -74.1448598)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874509', 'Lake Barnegat', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'Forked River', 39.843702, -74.203886, ST_GeomFromText('POINT(39.843702 -74.203886)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('874515', 'Barrel Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5578959, -74.2743088, ST_GeomFromText('POINT(39.5578959 -74.2743088)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874516', 'Barrett Run', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Shiloh', 39.4481703, -75.2540777, ST_GeomFromText('POINT(39.4481703 -75.2540777)', 4326), 39.4533434, -75.3326297, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874519', 'Barry Lakes', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Wawayanda', 41.1988469, -74.4381816, ST_GeomFromText('POINT(41.1988469 -74.4381816)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('874521', 'Bartletts Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Oswego Lake', 39.6354064, -74.4422436, ST_GeomFromText('POINT(39.6354064 -74.4422436)', 4326), 39.6601234, -74.4503546, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874524', 'Barton Run', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Mount Holly', 39.889653, -74.8507547, ST_GeomFromText('POINT(39.889653 -74.8507547)', 4326), 39.8656772, -74.9161577, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('874526', 'Lake Basgalore', 'Lake', 'New Jersey', 'NJ', 'Gloucester', 'Woodstown', 39.7328258, -75.2819237, ST_GeomFromText('POINT(39.7328258 -75.2819237)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('874527', 'Bashes Creek', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Weehawken', 40.8078784, -74.0543075, ST_GeomFromText('POINT(40.8078784 -74.0543075)', 4326), 40.8236111, -74.0563889, '1979-09-08', '2007-06-08', 'Official', 'Board Decision', '1959-01-01'),
  ('874529', 'Basket Flat', 'Flat', 'New Jersey', 'NJ', 'Cumberland', 'Port Norris', 39.2201142, -75.0304555, ST_GeomFromText('POINT(39.2201142 -75.0304555)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874530', 'Basking Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Orange', 40.8534329, -74.1873671, ST_GeomFromText('POINT(40.8534329 -74.1873671)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874532', 'Bass Harbor', 'Bay', 'New Jersey', 'NJ', 'Atlantic', 'Ocean City', 39.314838, -74.5871006, ST_GeomFromText('POINT(39.314838 -74.5871006)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874533', 'Bass Lake', 'Reservoir', 'New Jersey', 'NJ', 'Warren', 'Flatbrookville', 41.0262682, -74.9526534, ST_GeomFromText('POINT(41.0262682 -74.9526534)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('874534', 'Bass River', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'New Gretna', 39.5602349, -74.4501185, ST_GeomFromText('POINT(39.5602349 -74.4501185)', 4326), 39.6156067, -74.4468892, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874536', 'Basses Bay', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'New Gretna', 39.555118, -74.4034811, ST_GeomFromText('POINT(39.555118 -74.4034811)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874540', 'Batsto River', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Atsion', 39.6262287, -74.6432128, ST_GeomFromText('POINT(39.6262287 -74.6432128)', 4326), 39.8343279, -74.7080827, '1979-09-08', '2014-12-16', NULL, NULL, NULL),
  ('874543', 'Baum Pond', 'Lake', 'New Jersey', 'NJ', 'Gloucester', 'Pitman East', 39.7329663, -75.0344938, ST_GeomFromText('POINT(39.7329663 -75.0344938)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('874545', 'Bay Head Harbor', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0648384, -74.0501367, ST_GeomFromText('POINT(40.0648384 -74.0501367)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874548', 'Bay Point', 'Cape', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.2956699, -75.2535237, ST_GeomFromText('POINT(39.2956699 -75.2535237)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874549', 'Bay Ponds', 'Lake', 'New Jersey', 'NJ', 'Cumberland', 'Fortescue', 39.193725, -75.1249054, ST_GeomFromText('POINT(39.193725 -75.1249054)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874566', 'Beach Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Sea Isle City', 39.223963, -74.6522015, ST_GeomFromText('POINT(39.223963 -74.6522015)', 4326), 39.2306991, -74.6428192, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874567', 'Beach Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.2751717, -75.2410269, ST_GeomFromText('POINT(39.2751717 -75.2410269)', 4326), 39.277385, -75.2322721, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874579', 'Beadon Cove', 'Bay', 'New Jersey', 'NJ', 'Cumberland', 'Fortescue', 39.245392, -75.1857424, ST_GeomFromText('POINT(39.245392 -75.1857424)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874580', 'Beadon Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Fortescue', 39.2461302, -75.1828659, ST_GeomFromText('POINT(39.2461302 -75.1828659)', 4326), 39.2660851, -75.1664829, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874581', 'Beadon Point', 'Cape', 'New Jersey', 'NJ', 'Cumberland', 'Fortescue', 39.2442809, -75.1910205, ST_GeomFromText('POINT(39.2442809 -75.1910205)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874583', 'Bear Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Five Points', 39.4797246, -74.9649149, ST_GeomFromText('POINT(39.4797246 -74.9649149)', 4326), 39.4875652, -74.9823761, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874584', 'Bear Brook', 'Stream', 'New Jersey', 'NJ', 'Essex', 'Caldwell', 40.768663, -74.3217802, ST_GeomFromText('POINT(40.768663 -74.3217802)', 4326), 40.7900297, -74.2854309, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('874585', 'Bear Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Park Ridge', 41.025985, -74.0437746, ST_GeomFromText('POINT(41.025985 -74.0437746)', 4326), 41.062689, -74.0653825, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874586', 'Bear Brook', 'Stream', 'New Jersey', 'NJ', 'Warren', 'Blairstown', 40.9515757, -74.8756671, ST_GeomFromText('POINT(40.9515757 -74.8756671)', 4326), 41.0154782, -74.8404765, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874587', 'Bear Creek', 'Stream', 'New Jersey', 'NJ', 'Warren', 'Blairstown', 40.9156368, -74.8784351, ST_GeomFromText('POINT(40.9156368 -74.8784351)', 4326), 40.9800277, -74.8616982, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874588', 'Bear Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.6748416, -74.1826385, ST_GeomFromText('POINT(39.6748416 -74.1826385)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874589', 'Bear Pond', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9643463, -74.6629543, ST_GeomFromText('POINT(40.9643463 -74.6629543)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('874590', 'Bear Swamp', 'Swamp', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.2956701, -75.149351, ST_GeomFromText('POINT(39.2956701 -75.149351)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874591', 'Bear Swamp', 'Swamp', 'New Jersey', 'NJ', 'Bergen', 'Park Ridge', 41.0425969, -74.0595852, ST_GeomFromText('POINT(41.0425969 -74.0595852)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874592', 'Bear Swamp', 'Swamp', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.1075958, -74.212091, ST_GeomFromText('POINT(41.1075958 -74.212091)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874593', 'Bear Swamp', 'Swamp', 'New Jersey', 'NJ', 'Sussex', 'Culvers Gap', 41.1362072, -74.8121115, ST_GeomFromText('POINT(41.1362072 -74.8121115)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874594', 'Bear Swamp', 'Swamp', 'New Jersey', 'NJ', 'Burlington', 'Mount Holly', 39.8809478, -74.7573827, ST_GeomFromText('POINT(39.8809478 -74.7573827)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('874595', 'Bear Swamp Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1599352, -74.1526508, ST_GeomFromText('POINT(40.1599352 -74.1526508)', 4326), 40.1721021, -74.1951156, '1979-09-08', '2013-03-21', 'Official', 'Board Decision', '1980-01-01'),
  ('874596', 'Bear Swamp Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0656335, -74.2089987, ST_GeomFromText('POINT(41.0656335 -74.2089987)', 4326), 41.1057916, -74.2121959, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874597', 'Bear Swamp Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.3359405, -75.2715611, ST_GeomFromText('POINT(39.3359405 -75.2715611)', 4326), 39.3387991, -75.2439988, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874598', 'Bear Swamp Hill', 'Summit', 'New Jersey', 'NJ', 'Burlington', 'Woodmansie', 39.7522535, -74.4651052, ST_GeomFromText('POINT(39.7522535 -74.4651052)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('874599', 'Bear Swamp Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0369563, -74.3643195, ST_GeomFromText('POINT(41.0369563 -74.3643195)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('874600', 'Bear Swamp Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0964782, -74.2169546, ST_GeomFromText('POINT(41.0964782 -74.2169546)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', 'Official', 'Board Decision', '1960-01-01'),
  ('874601', 'Bear Swamp River', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Mount Holly', 39.9005678, -74.7858667, ST_GeomFromText('POINT(39.9005678 -74.7858667)', 4326), 39.8586277, -74.72188, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874603', 'Riker Hill', 'Summit', 'New Jersey', 'NJ', 'Essex', 'Caldwell', 40.8188831, -74.2971976, ST_GeomFromText('POINT(40.8188831 -74.2971976)', 4326), NULL, NULL, '1979-09-08', '2021-11-27', NULL, NULL, NULL),
  ('874604', 'Bearfort Mountain', 'Summit', 'New Jersey', 'NJ', 'Passaic', 'Wawayanda', 41.139548, -74.3914109, ST_GeomFromText('POINT(41.139548 -74.3914109)', 4326), NULL, NULL, '1979-09-08', '2022-08-13', 'Official', 'Board Decision', '1911-01-01'),
  ('874605', 'Bearfort Waters', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Wawayanda', 41.1449026, -74.4069133, ST_GeomFromText('POINT(41.1449026 -74.4069133)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('874606', 'Bears Head Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Five Points', 39.3899737, -74.928968, ST_GeomFromText('POINT(39.3899737 -74.928968)', 4326), 39.4226354, -74.9412632, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874609', 'Beaver Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Jenkins', 39.6460147, -74.5136976, ST_GeomFromText('POINT(39.6460147 -74.5136976)', 4326), 39.6853966, -74.4379266, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874610', 'Beaver Brook', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Runnemede', 39.8575406, -75.0995994, ST_GeomFromText('POINT(39.8575406 -75.0995994)', 4326), 39.8610984, -75.0511265, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874611', 'Beaver Brook', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'High Bridge', 40.6330239, -74.9105144, ST_GeomFromText('POINT(40.6330239 -74.9105144)', 4326), 40.6911167, -74.8476219, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874612', 'Beaver Brook', 'Stream', 'New Jersey', 'NJ', 'Warren', 'Belvidere', 40.8414869, -75.0504517, ST_GeomFromText('POINT(40.8414869 -75.0504517)', 4326), 40.9577986, -74.924891, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874613', 'Beaver Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.9761397, -74.5884562, ST_GeomFromText('POINT(40.9761397 -74.5884562)', 4326), 41.0048201, -74.5459915, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874614', 'Beaver Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.9012302, -74.4999245, ST_GeomFromText('POINT(40.9012302 -74.4999245)', 4326), 40.9631539, -74.460155, '1979-09-08', '2013-03-21', 'Official', 'Board Decision', '1897-01-01'),
  ('874615', 'Beaver Creek', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Marcus Hook', 39.7552716, -75.394586, ST_GeomFromText('POINT(39.7552716 -75.394586)', 4326), 39.719913, -75.3821272, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874618', 'Beaver Lake', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.0889092, -74.5616541, ST_GeomFromText('POINT(41.0889092 -74.5616541)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('874621', 'Beaver Run', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Jenkins', 39.6480799, -74.5168948, ST_GeomFromText('POINT(39.6480799 -74.5168948)', 4326), 39.676112, -74.5026898, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('874622', 'Beaver Run', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Hamburg', 41.1767805, -74.5806241, ST_GeomFromText('POINT(41.1767805 -74.5806241)', 4326), 41.1400433, -74.6520138, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874623', 'Beaverdam Branch', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Pitman East', 39.6737503, -75.0815535, ST_GeomFromText('POINT(39.6737503 -75.0815535)', 4326), 39.7096958, -75.0664902, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874624', 'Beaverdam Brook', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'New Brunswick', 40.4314947, -74.4718192, ST_GeomFromText('POINT(40.4314947 -74.4718192)', 4326), 40.4261111, -74.4288889, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874625', 'Beaverdam Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0603533, -74.0642667, ST_GeomFromText('POINT(40.0603533 -74.0642667)', 4326), 40.0942932, -74.1300398, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874626', 'Beaverdam Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Pemberton', 39.9307144, -74.7490078, ST_GeomFromText('POINT(39.9307144 -74.7490078)', 4326), 39.8879407, -74.717803, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874627', 'Beaverdam Lake', 'Reservoir', 'New Jersey', 'NJ', 'Camden', 'Hammonton', 39.7393814, -74.8370089, ST_GeomFromText('POINT(39.7393814 -74.8370089)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('874629', 'Bedbug Island', 'Island', 'New Jersey', 'NJ', 'Morris', 'Stanhope', 40.9270429, -74.6526612, ST_GeomFromText('POINT(40.9270429 -74.6526612)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874630', 'Beden Brook', 'Stream', 'New Jersey', 'NJ', 'Mercer', 'Rocky Hill', 40.420531, -74.630532, ST_GeomFromText('POINT(40.420531 -74.630532)', 4326), 40.3846704, -74.7761893, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874632', 'Bee Meadow Pond', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Morristown', 40.8335728, -74.4102431, ST_GeomFromText('POINT(40.8335728 -74.4102431)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('874633', 'Beebe Run', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Shiloh', 39.4706552, -75.2559185, ST_GeomFromText('POINT(39.4706552 -75.2559185)', 4326), 39.4761543, -75.2880621, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('874634', 'Beech Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Greenwood Lake', 41.1444629, -74.2998022, ST_GeomFromText('POINT(41.1444629 -74.2998022)', 4326), 41.1639232, -74.2781353, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874639', 'Beerskill', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Milford', 41.2558998, -74.7990927, ST_GeomFromText('POINT(41.2558998 -74.7990927)', 4326), 41.2716461, -74.7500163, '1979-09-08', '2013-03-21', 'Official', 'Board Decision', '1960-01-01'),
  ('874640', 'Bees Branch', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Woodbury', 39.7683045, -75.1298118, ST_GeomFromText('POINT(39.7683045 -75.1298118)', 4326), 39.7753962, -75.0927758, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874642', 'Belcher Creek', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Greenwood Lake', 41.1539272, -74.3478405, ST_GeomFromText('POINT(41.1539272 -74.3478405)', 4326), 41.1125961, -74.4047141, '1979-09-08', '2014-06-06', NULL, NULL, NULL),
  ('874647', 'Belle Mountain', 'Summit', 'New Jersey', 'NJ', 'Mercer', 'Lambertville', 40.3353438, -74.9243088, ST_GeomFromText('POINT(40.3353438 -74.9243088)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('874653', 'Bellmans Creek', 'Stream', 'New Jersey', 'NJ', 'Hudson', 'Weehawken', 40.8128876, -74.0301758, ST_GeomFromText('POINT(40.8128876 -74.0301758)', 4326), 40.8379293, -74.0182239, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874655', 'Bellot Mountain', 'Summit', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.1001921, -74.2504791, ST_GeomFromText('POINT(41.1001921 -74.2504791)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('874657', 'Bells Lake', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Runnemede', 39.7525384, -75.0594591, ST_GeomFromText('POINT(39.7525384 -75.0594591)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('874663', 'Ben Davis Point', 'Cape', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.2890029, -75.2882475, ST_GeomFromText('POINT(39.2890029 -75.2882475)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874664', 'Ben Elders Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Marmora', 39.2521704, -74.6291989, ST_GeomFromText('POINT(39.2521704 -74.6291989)', 4326), 39.2583472, -74.6400404, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('874672', 'Bennett Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Cape May', 38.96725, -74.8853864, ST_GeomFromText('POINT(38.96725 -74.8853864)', 4326), 38.9761644, -74.888177, '1979-09-08', '2011-10-03', 'Official', 'Board Decision', '1943-01-01'),
  ('874675', 'Bennetts Pond', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'Adelphia', 40.1281555, -74.2814014, ST_GeomFromText('POINT(40.1281555 -74.2814014)', 4326), NULL, NULL, '1979-09-08', '2022-08-03', 'Official', 'Board Decision', '1954-01-01'),
  ('874700', 'Berryman Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Five Points', 39.3858111, -74.9927831, ST_GeomFromText('POINT(39.3858111 -74.9927831)', 4326), 39.4405069, -74.9962203, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874701', 'Berrys Creek', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Weehawken', 40.7867479, -74.0849626, ST_GeomFromText('POINT(40.7867479 -74.0849626)', 4326), 40.8565715, -74.068644, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874703', 'Bertrand Island', 'Island', 'New Jersey', 'NJ', 'Morris', 'Stanhope', 40.9273207, -74.6498834, ST_GeomFromText('POINT(40.9273207 -74.6498834)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874704', 'Best Lake', 'Lake', 'New Jersey', 'NJ', 'Somerset', 'Chatham', 40.6394892, -74.4489562, ST_GeomFromText('POINT(40.6394892 -74.4489562)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('874723', 'Bethel Lake', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Runnemede', 39.7512232, -75.1194965, ST_GeomFromText('POINT(39.7512232 -75.1194965)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('874726', 'Bethel Run', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Runnemede', 39.7616244, -75.1137829, ST_GeomFromText('POINT(39.7616244 -75.1137829)', 4326), 39.7625811, -75.0822401, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874738', 'Biddle Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Woodmansie', 39.8185243, -74.4734859, ST_GeomFromText('POINT(39.8185243 -74.4734859)', 4326), 39.8497325, -74.4616413, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874740', 'Bidwell Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Heislerville', 39.1276134, -74.8903441, ST_GeomFromText('POINT(39.1276134 -74.8903441)', 4326), 39.1205386, -74.8261213, '1979-09-08', '2012-03-19', 'Official', 'Board Decision', '1959-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('874742', 'Big Bridge Branch', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Williamstown', 39.6284493, -74.8968331, ST_GeomFromText('POINT(39.6284493 -74.8968331)', 4326), 39.6591983, -74.8889279, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874743', 'Big Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Marlboro', 40.3237103, -74.165504, ST_GeomFromText('POINT(40.3237103 -74.165504)', 4326), 40.3444017, -74.2397475, '1979-09-08', '2013-03-21', 'Official', 'Board Decision', '1954-01-01'),
  ('874744', 'Big Cove', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.6962307, -74.1798606, ST_GeomFromText('POINT(39.6962307 -74.1798606)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874745', 'Big Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5456839, -74.3645453, ST_GeomFromText('POINT(39.5456839 -74.3645453)', 4326), 39.5559513, -74.3773688, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874746', 'Big Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'New Gretna', 39.5545623, -74.4984852, ST_GeomFromText('POINT(39.5545623 -74.4984852)', 4326), 39.5362288, -74.5137638, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874748', 'Big Elder Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Sea Isle City', 39.1665908, -74.7036999, ST_GeomFromText('POINT(39.1665908 -74.7036999)', 4326), 39.1682461, -74.7224969, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874750', 'Big Flat Brook', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Culvers Gap', 41.1900952, -74.8460015, ST_GeomFromText('POINT(41.1900952 -74.8460015)', 4326), 41.3034577, -74.6778059, '1979-09-08', '2014-06-11', NULL, NULL, NULL),
  ('874751', 'Big Flat Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.7006752, -74.1729158, ST_GeomFromText('POINT(39.7006752 -74.1729158)', 4326), 39.7144444, -74.1997222, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874752', 'Big Goose Pond', 'Lake', 'New Jersey', 'NJ', 'Atlantic', 'Egg Harbor City', 39.5257814, -74.677724, ST_GeomFromText('POINT(39.5257814 -74.677724)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('874754', 'Big Greaves Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3081708, -74.7279402, ST_GeomFromText('POINT(39.3081708 -74.7279402)', 4326), 39.3030213, -74.7406769, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('874755', 'Big Hill', 'Summit', 'New Jersey', 'NJ', 'Burlington', 'Pemberton', 39.8975409, -74.695778, ST_GeomFromText('POINT(39.8975409 -74.695778)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('874756', 'Big Mannington Hill', 'Summit', 'New Jersey', 'NJ', 'Salem', 'Alloway', 39.6156117, -75.3617078, ST_GeomFromText('POINT(39.6156117 -75.3617078)', 4326), NULL, NULL, '1979-09-08', '2021-11-27', NULL, NULL, NULL),
  ('874757', 'Big Neal Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Five Points', 39.4225028, -74.9115658, ST_GeomFromText('POINT(39.4225028 -74.9115658)', 4326), 39.4364851, -74.9215972, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874759', 'Big Pine Lake', 'Lake', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.9828807, -74.5720855, ST_GeomFromText('POINT(39.9828807 -74.5720855)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('874761', 'Big Spring', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Newton West', 41.0096832, -74.7992418, ST_GeomFromText('POINT(41.0096832 -74.7992418)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('874763', 'Big Thorofare', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5652803, -74.3422884, ST_GeomFromText('POINT(39.5652803 -74.3422884)', 4326), 39.5603838, -74.3632632, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874764', 'Big Timber Creek', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Philadelphia', 39.8784466, -75.1315649, ST_GeomFromText('POINT(39.8784466 -75.1315649)', 4326), 39.8367804, -75.0851731, '1979-09-08', '2016-09-23', NULL, NULL, NULL),
  ('874770', 'Birchwood Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.8958118, -74.4500119, ST_GeomFromText('POINT(40.8958118 -74.4500119)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('874774', 'Bishop Run', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Shiloh', 39.4598897, -75.3652695, ST_GeomFromText('POINT(39.4598897 -75.3652695)', 4326), 39.4467986, -75.3396678, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874776', 'Bishops Rock', 'Cape', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9523205, -74.638772, ST_GeomFromText('POINT(40.9523205 -74.638772)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('874777', 'Bisphams Mill Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.9446209, -74.6071029, ST_GeomFromText('POINT(39.9446209 -74.6071029)', 4326), 39.9105757, -74.578135, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874781', 'Blachleys Hill', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Mendham', 40.7561057, -74.546395, ST_GeomFromText('POINT(40.7561057 -74.546395)', 4326), NULL, NULL, '1979-09-08', '2018-04-17', NULL, NULL, NULL),
  ('874782', 'Black Brook', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'High Bridge', 40.6587121, -74.9473914, ST_GeomFromText('POINT(40.6587121 -74.9473914)', 4326), 40.6695311, -74.9605536, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874783', 'Black Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Morristown', 40.8107398, -74.3946719, ST_GeomFromText('POINT(40.8107398 -74.3946719)', 4326), 40.7771211, -74.4163549, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874784', 'Black Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Bernardsville', 40.6967679, -74.5134888, ST_GeomFromText('POINT(40.6967679 -74.5134888)', 4326), 40.7406566, -74.4198418, '1979-09-08', '2016-09-23', NULL, NULL, NULL),
  ('874785', 'Black Creek', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Wawayanda', 41.2193725, -74.4785285, ST_GeomFromText('POINT(41.2193725 -74.4785285)', 4326), 41.1668793, -74.5305204, '1979-09-08', '2014-06-06', NULL, NULL, NULL),
  ('874787', 'Black Meadows', 'Swamp', 'New Jersey', 'NJ', 'Morris', 'Morristown', 40.8028778, -74.4062634, ST_GeomFromText('POINT(40.8028778 -74.4062634)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874788', 'Black Point', 'Cape', 'New Jersey', 'NJ', 'Atlantic', 'Oceanville', 39.4434505, -74.393203, ST_GeomFromText('POINT(39.4434505 -74.393203)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874789', 'Black Run', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Medford Lakes', 39.8642772, -74.8739505, ST_GeomFromText('POINT(39.8642772 -74.8739505)', 4326), 39.829125, -74.8954323, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874793', 'Blackman Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Sea Isle City', 39.2459484, -74.6340471, ST_GeomFromText('POINT(39.2459484 -74.6340471)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('874794', 'Blackmans Branch', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Pleasantville', 39.4028578, -74.6074247, ST_GeomFromText('POINT(39.4028578 -74.6074247)', 4326), 39.3989862, -74.6255028, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874795', 'Blacks Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Lakehurst', 40.008404, -74.329623, ST_GeomFromText('POINT(40.008404 -74.329623)', 4326), 40.0126278, -74.3838465, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874796', 'Blacks Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Trenton East', 40.1474872, -74.7187686, ST_GeomFromText('POINT(40.1474872 -74.7187686)', 4326), 40.0682605, -74.6161044, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874797', 'Blackwater Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Newfield', 39.5042187, -75.0777179, ST_GeomFromText('POINT(39.5042187 -75.0777179)', 4326), 39.5294541, -74.9577802, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874799', 'Blackwood Lake', 'Reservoir', 'New Jersey', 'NJ', 'Camden', 'Runnemede', 39.7949515, -75.0729971, ST_GeomFromText('POINT(39.7949515 -75.0729971)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('874802', 'Blair Creek', 'Stream', 'New Jersey', 'NJ', 'Warren', 'Blairstown', 40.9817642, -74.9598946, ST_GeomFromText('POINT(40.9817642 -74.9598946)', 4326), 41.0898963, -74.9014378, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874803', 'Blair Lake', 'Reservoir', 'New Jersey', 'NJ', 'Warren', 'Blairstown', 40.9848195, -74.9594274, ST_GeomFromText('POINT(40.9848195 -74.9594274)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('874807', 'Blauguard Island', 'Island', 'New Jersey', 'NJ', 'Mercer', 'Trenton West', 40.2334419, -74.8037738, ST_GeomFromText('POINT(40.2334419 -74.8037738)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874813', 'Blews Run', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.3505001, -75.2582762, ST_GeomFromText('POINT(39.3505001 -75.2582762)', 4326), 39.3551729, -75.2109647, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874816', 'Blood Point', 'Cape', 'New Jersey', 'NJ', 'Burlington', 'New Gretna', 39.5437289, -74.4365381, ST_GeomFromText('POINT(39.5437289 -74.4365381)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('874823', 'Blue Anchor Brook', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Hammonton', 39.6924766, -74.8122811, ST_GeomFromText('POINT(39.6924766 -74.8122811)', 4326), 39.686136, -74.8880053, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874826', 'Blue Brook', 'Stream', 'New Jersey', 'NJ', 'Union', 'Chatham', 40.6667287, -74.4034562, ST_GeomFromText('POINT(40.6667287 -74.4034562)', 4326), 40.7027487, -74.3578076, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874828', 'Blue Heron Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.0141951, -74.6106301, ST_GeomFromText('POINT(41.0141951 -74.6106301)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('874829', 'Blue Hole', 'Lake', 'New Jersey', 'NJ', 'Gloucester', 'Williamstown', 39.6264958, -74.895978, ST_GeomFromText('POINT(39.6264958 -74.895978)', 4326), NULL, NULL, '1979-09-08', '2018-12-17', NULL, NULL, NULL),
  ('874830', 'Blue Lake', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Medford Lakes', 39.8520258, -74.8583712, ST_GeomFromText('POINT(39.8520258 -74.8583712)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('874831', 'Blue Mine Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0569614, -74.3151927, ST_GeomFromText('POINT(41.0569614 -74.3151927)', 4326), 41.0634656, -74.3380237, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874832', 'Bluebird Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Bridgeton', 39.3933732, -75.1652384, ST_GeomFromText('POINT(39.3933732 -75.1652384)', 4326), 39.4016143, -75.1495099, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874835', 'Bobbys Run', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Mount Holly', 39.9629324, -74.8052698, ST_GeomFromText('POINT(39.9629324 -74.8052698)', 4326), 39.9424165, -74.72085, '1979-09-08', '2015-01-08', NULL, NULL, NULL),
  ('874836', 'Bog and Vly Meadows', 'Swamp', 'New Jersey', 'NJ', 'Morris', 'Pompton Plains', 40.9403762, -74.3190384, ST_GeomFromText('POINT(40.9403762 -74.3190384)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874837', 'Bog Branch Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Marmora', 39.278091, -74.7128516, ST_GeomFromText('POINT(39.278091 -74.7128516)', 4326), 39.2797997, -74.7190154, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('874838', 'Bogans Cove', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'New Gretna', 39.5434512, -74.3754243, ST_GeomFromText('POINT(39.5434512 -74.3754243)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874839', 'Bogert Pond', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Hackensack', 40.9858286, -74.0349092, ST_GeomFromText('POINT(40.9858286 -74.0349092)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('874840', 'Boggy Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.3166861, -75.1569343, ST_GeomFromText('POINT(39.3166861 -75.1569343)', 4326), 39.3273265, -75.1535225, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874842', 'Bogues Pond', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0137872, -74.3352167, ST_GeomFromText('POINT(41.0137872 -74.3352167)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('874848', 'Bonds Bar Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Ocean City', 39.2873378, -74.5996012, ST_GeomFromText('POINT(39.2873378 -74.5996012)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874852', 'Bonnet Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.6567859, -74.1854162, ST_GeomFromText('POINT(39.6567859 -74.1854162)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874854', 'Bonygutt Brook', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'Plainfield', 40.5874616, -74.4887424, ST_GeomFromText('POINT(40.5874616 -74.4887424)', 4326), 40.5951362, -74.4475865, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874856', 'Boot Island', 'Island', 'New Jersey', 'NJ', 'Atlantic', 'Oceanville', 39.3967836, -74.4059814, ST_GeomFromText('POINT(39.3967836 -74.4059814)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874857', 'Bordens Mill Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Cassville', 40.0545907, -74.3922177, ST_GeomFromText('POINT(40.0545907 -74.3922177)', 4326), 40.0661052, -74.4586882, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874860', 'Bostwick Lake', 'Reservoir', 'New Jersey', 'NJ', 'Cumberland', 'Alloway', 39.529779, -75.2679177, ST_GeomFromText('POINT(39.529779 -75.2679177)', 4326), NULL, NULL, '1979-09-08', '2022-08-05', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('874862', 'Bottle Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Sea Isle City', 39.1290615, -74.7430801, ST_GeomFromText('POINT(39.1290615 -74.7430801)', 4326), 39.1355862, -74.7392178, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874863', 'Bottom Lake', 'Lake', 'New Jersey', 'NJ', 'Camden', 'Clementon', 39.8076307, -74.985317, ST_GeomFromText('POINT(39.8076307 -74.985317)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('874866', 'Bound Brook', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'Bound Brook', 40.5850173, -74.5072174, ST_GeomFromText('POINT(40.5850173 -74.5072174)', 4326), 40.542333, -74.3878484, '1979-09-08', '2013-03-21', 'Official', 'Board Decision', '1973-01-01'),
  ('874867', 'Boundary Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Beverly', 40.0130305, -74.9056649, ST_GeomFromText('POINT(40.0130305 -74.9056649)', 4326), 40.0100661, -74.9130115, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874869', 'Bowers Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.3198444, -75.2345735, ST_GeomFromText('POINT(39.3198444 -75.2345735)', 4326), 39.3440224, -75.2216721, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874870', 'Bowkers Run', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Port Norris', 39.2475759, -75.01688, ST_GeomFromText('POINT(39.2475759 -75.01688)', 4326), 39.2722149, -75.035677, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874871', 'Bowkers Run', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.9998406, -74.5675135, ST_GeomFromText('POINT(39.9998406 -74.5675135)', 4326), 40.0207788, -74.5709252, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874872', 'Bowlby Pond', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.8959168, -74.559055, ST_GeomFromText('POINT(40.8959168 -74.559055)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('874873', 'Bowling Green Mountain', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Franklin', 41.0076568, -74.5499433, ST_GeomFromText('POINT(41.0076568 -74.5499433)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('874877', 'Boy Scout Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0742824, -74.3468288, ST_GeomFromText('POINT(41.0742824 -74.3468288)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('874882', 'Braddock Lake', 'Reservoir', 'New Jersey', 'NJ', 'Atlantic', 'Buena', 39.60127, -74.8795518, ST_GeomFromText('POINT(39.60127 -74.8795518)', 4326), NULL, NULL, '1979-09-08', '2018-12-17', NULL, NULL, NULL),
  ('874883', 'Braddocks Millpond', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Medford Lakes', 39.8215572, -74.8558985, ST_GeomFromText('POINT(39.8215572 -74.8558985)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('874885', 'Bradford Point', 'Cape', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.2653921, -75.1782418, ST_GeomFromText('POINT(39.2653921 -75.1782418)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874889', 'Bradley Run', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Cape May', 38.9698437, -74.9093482, ST_GeomFromText('POINT(38.9698437 -74.9093482)', 4326), 38.9688157, -74.9164484, '1979-09-08', '2011-10-03', 'Official', 'Board Decision', '1944-01-01'),
  ('874894', 'Brainerd Lake', 'Reservoir', 'New Jersey', 'NJ', 'Middlesex', 'Hightstown', 40.310309, -74.5102802, ST_GeomFromText('POINT(40.310309 -74.5102802)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('874896', 'Bramell Point', 'Cape', 'New Jersey', 'NJ', 'Gloucester', 'Bridgeport', 39.8451131, -75.2682402, ST_GeomFromText('POINT(39.8451131 -75.2682402)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874897', 'Branch of Pond Run', 'Stream', 'New Jersey', 'NJ', 'Mercer', 'Trenton East', 40.2220967, -74.7172062, ST_GeomFromText('POINT(40.2220967 -74.7172062)', 4326), 40.2250078, -74.6698022, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874898', 'Branch Back Brook', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'Hopewell', 40.4232652, -74.8625135, ST_GeomFromText('POINT(40.4232652 -74.8625135)', 4326), 40.4166165, -74.8745728, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874906', 'Branchville Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Branchville', 41.2071513, -74.7258805, ST_GeomFromText('POINT(41.2071513 -74.7258805)', 4326), NULL, NULL, '1979-09-08', '2022-07-21', NULL, NULL, NULL),
  ('874911', 'Brass Castle Creek', 'Stream', 'New Jersey', 'NJ', 'Warren', 'Bloomsbury', 40.7452737, -75.0132751, ST_GeomFromText('POINT(40.7452737 -75.0132751)', 4326), 40.765884, -75.048337, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('874914', 'Broad Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Oceanville', 39.4912498, -74.3955624, ST_GeomFromText('POINT(39.4912498 -74.3955624)', 4326), 39.4941667, -74.405, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874915', 'Bread and Cheese Run', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Indian Mills', 39.8667477, -74.6937919, ST_GeomFromText('POINT(39.8667477 -74.6937919)', 4326), 39.8468166, -74.7332311, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874916', 'Breeches Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Oswego Lake', 39.7345347, -74.4922185, ST_GeomFromText('POINT(39.7345347 -74.4922185)', 4326), 39.7720813, -74.468143, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874924', 'Bridegroom Run', 'Stream', 'New Jersey', 'NJ', 'Mercer', 'Princeton', 40.2615817, -74.6258783, ST_GeomFromText('POINT(40.2615817 -74.6258783)', 4326), 40.2589126, -74.5925331, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874927', 'Bridgepoint Lake', 'Reservoir', 'New Jersey', 'NJ', 'Somerset', 'Rocky Hill', 40.4339942, -74.6448805, ST_GeomFromText('POINT(40.4339942 -74.6448805)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874929', 'Bridges Sticks Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.3456699, -75.2682461, ST_GeomFromText('POINT(39.3456699 -75.2682461)', 4326), 39.3709479, -75.2329662, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874934', 'Bridgewood Lake', 'Reservoir', 'New Jersey', 'NJ', 'Camden', 'Clementon', 39.8329528, -74.9668504, ST_GeomFromText('POINT(39.8329528 -74.9668504)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('874937', 'Brigantine Beach', 'Beach', 'New Jersey', 'NJ', 'Atlantic', 'Oceanville', 39.3928079, -74.3792319, ST_GeomFromText('POINT(39.3928079 -74.3792319)', 4326), NULL, NULL, '1979-09-08', '2015-06-06', NULL, NULL, NULL),
  ('874939', 'Brigantine Inlet', 'Bay', 'New Jersey', 'NJ', 'Atlantic', 'Brigantine Inlet', 39.4465062, -74.3262556, ST_GeomFromText('POINT(39.4465062 -74.3262556)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874946', 'Brindle Lake', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'New Egypt', 40.0322946, -74.5140044, ST_GeomFromText('POINT(40.0322946 -74.5140044)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('874948', 'Brisbane Lake', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.1616185, -74.1234264, ST_GeomFromText('POINT(40.1616185 -74.1234264)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', 'Official', 'Board Decision', '1954-01-01'),
  ('874951', 'Broad Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'New Gretna', 39.5770625, -74.4459829, ST_GeomFromText('POINT(39.5770625 -74.4459829)', 4326), 39.5646517, -74.4322819, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874957', 'Brockaways Branch', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Atsion', 39.6330929, -74.666605, ST_GeomFromText('POINT(39.6330929 -74.666605)', 4326), 39.6007449, -74.6857452, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874960', 'Brookaloo Swamp', 'Stream', 'New Jersey', 'NJ', 'Warren', 'Blairstown', 40.9026371, -74.9960634, ST_GeomFromText('POINT(40.9026371 -74.9960634)', 4326), 40.9145828, -74.9655747, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874983', 'Browns Pond', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Newfoundland', 41.0314555, -74.4550503, ST_GeomFromText('POINT(41.0314555 -74.4550503)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('874984', 'Browns Run', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Shiloh', 39.3900628, -75.3078246, ST_GeomFromText('POINT(39.3900628 -75.3078246)', 4326), 39.413054, -75.2869034, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874986', 'Brownwood Pond', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.8926051, -74.5605159, ST_GeomFromText('POINT(40.8926051 -74.5605159)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('874990', 'Brushwood Pond', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Ramsey', 41.1040689, -74.2329277, ST_GeomFromText('POINT(41.1040689 -74.2329277)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('874992', 'Bryant Pond', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Chester', 40.8295741, -74.6273963, ST_GeomFromText('POINT(40.8295741 -74.6273963)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('874995', 'Bubbling Spring Lake', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.0892632, -74.3829306, ST_GeomFromText('POINT(41.0892632 -74.3829306)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('874996', 'Bubs Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'New Gretna', 39.5572447, -74.4991976, ST_GeomFromText('POINT(39.5572447 -74.4991976)', 4326), 39.5555076, -74.5027757, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('874998', 'Buck Bar', 'Island', 'New Jersey', 'NJ', 'Sussex', 'Lake Maskenozha', 41.1298176, -74.9426713, ST_GeomFromText('POINT(41.1298176 -74.9426713)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('874999', 'Buck Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0528911, -74.8176672, ST_GeomFromText('POINT(39.0528911 -74.8176672)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875000', 'Buck Run', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Jenkins', 39.6999394, -74.5011234, ST_GeomFromText('POINT(39.6999394 -74.5011234)', 4326), 39.70476, -74.4738507, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875001', 'Buckabear Pond', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.1000858, -74.4479377, ST_GeomFromText('POINT(41.1000858 -74.4479377)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875002', 'Buckhole Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Allentown', 40.1640676, -74.514792, ST_GeomFromText('POINT(40.1640676 -74.514792)', 4326), 40.1857422, -74.486382, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875003', 'Buckhorn Creek', 'Stream', 'New Jersey', 'NJ', 'Warren', 'Bangor', 40.7731536, -75.133231, ST_GeomFromText('POINT(40.7731536 -75.133231)', 4326), 40.8086122, -75.0528002, '1979-09-08', '2014-11-19', NULL, NULL, NULL),
  ('875006', 'Buckmire Pond', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Tranquility', 40.967984, -74.7608561, ST_GeomFromText('POINT(40.967984 -74.7608561)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('875009', 'Bucks Pond', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Marlboro', 40.2873343, -74.2003122, ST_GeomFromText('POINT(40.2873343 -74.2003122)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', 'Official', 'Board Decision', '1954-01-01'),
  ('875010', 'Bucks Cove Run', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.9549369, -74.5435855, ST_GeomFromText('POINT(39.9549369 -74.5435855)', 4326), 39.9650827, -74.5111442, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875012', 'Buckshutem Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Dividing Creek', 39.3351936, -75.0145519, ST_GeomFromText('POINT(39.3351936 -75.0145519)', 4326), 39.3586405, -75.1353049, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875013', 'Buckshutem Swamp', 'Swamp', 'New Jersey', 'NJ', 'Cumberland', 'Dividing Creek', 39.3481704, -75.0796243, ST_GeomFromText('POINT(39.3481704 -75.0796243)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875015', 'Budd Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Chester', 40.871596, -74.745731, ST_GeomFromText('POINT(40.871596 -74.745731)', 4326), NULL, NULL, '1979-09-08', '2023-04-05', NULL, NULL, NULL),
  ('875020', 'Bull Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Green Bank', 39.6150695, -74.5944107, ST_GeomFromText('POINT(39.6150695 -74.5944107)', 4326), 39.6733374, -74.6107721, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875021', 'Bull Run', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Runnemede', 39.8041513, -75.0751121, ST_GeomFromText('POINT(39.8041513 -75.0751121)', 4326), 39.7834971, -75.0956109, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875024', 'Bulls Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Jenkins', 39.7240061, -74.584465, ST_GeomFromText('POINT(39.7240061 -74.584465)', 4326), 39.7470415, -74.5792723, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875025', 'Bulls Island', 'Island', 'New Jersey', 'NJ', 'Hunterdon', 'Lumberville', 40.4095494, -75.0354476, ST_GeomFromText('POINT(40.4095494 -75.0354476)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875029', 'Bunker Pond', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0322638, -74.1827677, ST_GeomFromText('POINT(41.0322638 -74.1827677)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875031', 'Bunting Sedge', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5515069, -74.2787535, ST_GeomFromText('POINT(39.5515069 -74.2787535)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875033', 'Burkes Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Adelphia', 40.221983, -74.2609584, ST_GeomFromText('POINT(40.221983 -74.2609584)', 4326), 40.2459424, -74.2297697, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875039', 'Burlington Island', 'Island', 'New Jersey', 'NJ', 'Burlington', 'Bristol', 40.0909439, -74.8446087, ST_GeomFromText('POINT(40.0909439 -74.8446087)', 4326), NULL, NULL, '1979-09-08', '2020-03-11', NULL, NULL, NULL),
  ('875040', 'Burnett Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Chester', 40.7629261, -74.6339464, ST_GeomFromText('POINT(40.7629261 -74.6339464)', 4326), 40.819152, -74.6229172, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875044', 'Burnt Bridge Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Chatsworth', 39.8668465, -74.6022105, ST_GeomFromText('POINT(39.8668465 -74.6022105)', 4326), 39.8802185, -74.5711184, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875045', 'Burnt Fly Bog', 'Swamp', 'New Jersey', 'NJ', 'Middlesex', 'South Amboy', 40.3787194, -74.2834797, ST_GeomFromText('POINT(40.3787194 -74.2834797)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875046', 'Burnt Meadow Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0730791, -74.3108958, ST_GeomFromText('POINT(41.0730791 -74.3108958)', 4326), 41.1006176, -74.3477654, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875047', 'Burnt Meadow Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.9760263, -74.5149636, ST_GeomFromText('POINT(40.9760263 -74.5149636)', 4326), 41.0014385, -74.4812268, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875048', 'Burnt Mill Branch', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Newfield', 39.5243027, -75.0722623, ST_GeomFromText('POINT(39.5243027 -75.0722623)', 4326), 39.5669241, -75.012787, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875052', 'Burrs Mill Brook', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Pemberton', 39.8796092, -74.691453, ST_GeomFromText('POINT(39.8796092 -74.691453)', 4326), 39.86683, -74.6023393, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875053', 'Burt Creek', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'South Amboy', 40.4831234, -74.3298054, ST_GeomFromText('POINT(40.4831234 -74.3298054)', 4326), 40.4748483, -74.3227673, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875054', 'Bushkill Brook', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'Flemington', 40.5212131, -74.8269206, ST_GeomFromText('POINT(40.5212131 -74.8269206)', 4326), 40.5198511, -74.8630929, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875059', 'Butler Pond', 'Lake', 'New Jersey', 'NJ', 'Essex', 'Caldwell', 40.7617562, -74.3248599, ST_GeomFromText('POINT(40.7617562 -74.3248599)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875060', 'Apshawa Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.0295022, -74.3859014, ST_GeomFromText('POINT(41.0295022 -74.3859014)', 4326), NULL, NULL, '1979-09-08', '2020-10-10', 'Official', 'Board Decision', '2020-10-08'),
  ('875061', 'Kakeout Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Pompton Plains', 40.9840307, -74.3732558, ST_GeomFromText('POINT(40.9840307 -74.3732558)', 4326), NULL, NULL, '1979-09-08', '2020-10-10', 'Official', 'Board Decision', '2020-10-08'),
  ('875067', 'Byram Bay', 'Bay', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9575982, -74.6448834, ST_GeomFromText('POINT(40.9575982 -74.6448834)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875069', 'Byram Cove', 'Bay', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9600982, -74.657106, ST_GeomFromText('POINT(40.9600982 -74.657106)', 4326), NULL, NULL, '1979-09-08', '2014-11-19', NULL, NULL, NULL),
  ('875073', 'Cabin Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.3481211, -75.3643656, ST_GeomFromText('POINT(39.3481211 -75.3643656)', 4326), 39.3555048, -75.3810409, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875074', 'Cabin Island', 'Island', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.3367808, -75.2893582, ST_GeomFromText('POINT(39.3367808 -75.2893582)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875075', 'Cabin Ridge', 'Ridge', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.2704738, -75.1772366, ST_GeomFromText('POINT(39.2704738 -75.1772366)', 4326), NULL, NULL, '1979-09-08', '2017-01-28', NULL, NULL, NULL),
  ('875076', 'Cabinfield Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Lakewood', 40.0823378, -74.1520852, ST_GeomFromText('POINT(40.0823378 -74.1520852)', 4326), 40.0958333, -74.1897222, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875077', 'Cable Lake', 'Lake', 'New Jersey', 'NJ', 'Essex', 'Caldwell', 40.7687109, -74.2651584, ST_GeomFromText('POINT(40.7687109 -74.2651584)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875080', 'Cage Hill', 'Summit', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9224443, -74.7363364, ST_GeomFromText('POINT(40.9224443 -74.7363364)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('875081', 'Caille Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0250971, -74.2279242, ST_GeomFromText('POINT(41.0250971 -74.2279242)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875082', 'Cains Mill Lake', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Buena', 39.6031527, -74.8869582, ST_GeomFromText('POINT(39.6031527 -74.8869582)', 4326), NULL, NULL, '1979-09-08', '2022-08-05', NULL, NULL, NULL),
  ('875083', 'Cakepoulin Creek', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'Pittstown', 40.6124009, -74.9105787, ST_GeomFromText('POINT(40.6124009 -74.9105787)', 4326), 40.5611213, -74.9747667, '1979-09-08', '2014-10-24', 'Official', 'Board Decision', '1904-12-07'),
  ('875128', 'Camp Hlond Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0709297, -74.1315323, ST_GeomFromText('POINT(41.0709297 -74.1315323)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875169', 'Campbells Pond', 'Reservoir', 'New Jersey', 'NJ', 'Essex', 'Roselle', 40.7375694, -74.3043154, ST_GeomFromText('POINT(40.7375694 -74.3043154)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875171', 'Campgaw Mountain', 'Summit', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0548213, -74.199697, ST_GeomFromText('POINT(41.0548213 -74.199697)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('875174', 'Canistear Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Newfoundland', 41.1203165, -74.4850071, ST_GeomFromText('POINT(41.1203165 -74.4850071)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875175', 'Canns Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0525606, -74.1300531, ST_GeomFromText('POINT(41.0525606 -74.1300531)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875176', 'Cannonball Lake', 'Lake', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0871047, -74.2281429, ST_GeomFromText('POINT(41.0871047 -74.2281429)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875178', 'Canoe Brook', 'Stream', 'New Jersey', 'NJ', 'Essex', 'Caldwell', 40.7521418, -74.3591112, ST_GeomFromText('POINT(40.7521418 -74.3591112)', 4326), 40.8243806, -74.2682433, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875179', 'Canoe Brook Reservoir Number One (historical)', 'Reservoir', 'New Jersey', 'NJ', 'Essex', 'Roselle', 40.7454893, -74.3529421, ST_GeomFromText('POINT(40.7454893 -74.3529421)', 4326), NULL, NULL, '1979-09-08', '2021-07-22', NULL, NULL, NULL),
  ('875181', 'Mount Canoe', 'Summit', 'New Jersey', 'NJ', 'Mercer', 'Pennington', 40.3329421, -74.85625, ST_GeomFromText('POINT(40.3329421 -74.85625)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('875183', 'Canton Drain', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Canton', 39.450451, -75.4115126, ST_GeomFromText('POINT(39.450451 -75.4115126)', 4326), 39.4865367, -75.3997842, '1979-09-08', '2020-03-30', NULL, NULL, NULL),
  ('875185', 'Canute Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Five Points', 39.4055521, -74.919709, ST_GeomFromText('POINT(39.4055521 -74.919709)', 4326), 39.4147118, -74.9236465, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875186', 'Cape Horn', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5384512, -74.3379227, ST_GeomFromText('POINT(39.5384512 -74.3379227)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875187', 'Cape Island Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Cape May', 38.9495919, -74.912476, ST_GeomFromText('POINT(38.9495919 -74.912476)', 4326), 38.9336086, -74.9340105, '1979-09-08', '2013-03-21', 'Official', 'Board Decision', '1943-01-01'),
  ('875188', 'Cape May', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Cape May', 38.9592793, -74.9273953, ST_GeomFromText('POINT(38.9592793 -74.9273953)', 4326), NULL, NULL, '1979-09-08', '2016-09-23', NULL, NULL, NULL),
  ('875192', 'Cape May Harbor', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Cape May', 38.9501127, -74.8926713, ST_GeomFromText('POINT(38.9501127 -74.8926713)', 4326), NULL, NULL, '1979-09-08', '2011-07-21', 'Official', 'Board Decision', '1987-01-01'),
  ('875193', 'Cape May Inlet', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Wildwood', 38.9390016, -74.8690589, ST_GeomFromText('POINT(38.9390016 -74.8690589)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1987-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875196', 'Capush Island', 'Island', 'New Jersey', 'NJ', 'Warren', 'Belvidere', 40.790098, -75.1090638, ST_GeomFromText('POINT(40.790098 -75.1090638)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875197', 'Lake Carasaljo', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'Lakewood', 40.0926948, -74.2258224, ST_GeomFromText('POINT(40.0926948 -74.2258224)', 4326), NULL, NULL, '1979-09-08', '2013-08-14', 'Official', 'Board Decision', '1954-01-01'),
  ('875200', 'Carino Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0005345, -74.8594666, ST_GeomFromText('POINT(39.0005345 -74.8594666)', 4326), 39.0064937, -74.8655149, '1979-09-08', '2012-03-19', 'Official', 'Board Decision', '1944-01-01'),
  ('875202', 'Carlisle Run', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Alloway', 39.5566864, -75.3297544, ST_GeomFromText('POINT(39.5566864 -75.3297544)', 4326), 39.5509951, -75.3048635, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875210', 'Carnegie Lake', 'Reservoir', 'New Jersey', 'NJ', 'Mercer', 'Princeton', 40.3478655, -74.6282818, ST_GeomFromText('POINT(40.3478655 -74.6282818)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875211', 'Carneys Point', 'Cape', 'New Jersey', 'NJ', 'Salem', 'Penns Grove', 39.714558, -75.4882524, ST_GeomFromText('POINT(39.714558 -75.4882524)', 4326), NULL, NULL, '1979-09-08', '2013-12-04', NULL, NULL, NULL),
  ('875213', 'Carnival Bay', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.048169, -74.7682202, ST_GeomFromText('POINT(39.048169 -74.7682202)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1943-01-01'),
  ('875214', 'Carnival Bayou', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Ocean City', 39.2742822, -74.5912675, ST_GeomFromText('POINT(39.2742822 -74.5912675)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875215', 'Carpenters Point', 'Cape', 'New Jersey', 'NJ', 'Sussex', 'Port Jervis South', 41.3556495, -74.6943298, ST_GeomFromText('POINT(41.3556495 -74.6943298)', 4326), NULL, NULL, '1979-09-08', '2013-12-04', NULL, NULL, NULL),
  ('875217', 'Carpi Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.1103904, -74.3548576, ST_GeomFromText('POINT(41.1103904 -74.3548576)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875221', 'Carslake Pond', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Columbus', 40.0810418, -74.7147602, ST_GeomFromText('POINT(40.0810418 -74.7147602)', 4326), NULL, NULL, '1979-09-08', '2020-07-06', NULL, NULL, NULL),
  ('875229', 'Carters Brook', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'Hightstown', 40.3708252, -74.6023393, ST_GeomFromText('POINT(40.3708252 -74.6023393)', 4326), 40.4059477, -74.5952582, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875230', 'Cartwheel Branch', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Pitman West', 39.6828333, -75.1739073, ST_GeomFromText('POINT(39.6828333 -75.1739073)', 4326), 39.6762689, -75.1641119, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875231', 'Carvel Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.6856752, -74.1668044, ST_GeomFromText('POINT(39.6856752 -74.1668044)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875232', 'Caseys Creek', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'Arthur Kill', 40.5990669, -74.2474025, ST_GeomFromText('POINT(40.5990669 -74.2474025)', 4326), 40.5920017, -74.2530754, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875234', 'Castle Point', 'Cape', 'New Jersey', 'NJ', 'Hudson', 'Jersey City', 40.7478794, -74.0234735, ST_GeomFromText('POINT(40.7478794 -74.0234735)', 4326), NULL, NULL, '1979-09-08', '2007-06-08', NULL, NULL, NULL),
  ('875238', 'Cat Swamp', 'Swamp', 'New Jersey', 'NJ', 'Warren', 'Washington', 40.8117655, -74.9826718, ST_GeomFromText('POINT(40.8117655 -74.9826718)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875239', 'Cat Swamp', 'Swamp', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.1034292, -74.1920903, ST_GeomFromText('POINT(41.1034292 -74.1920903)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875240', 'Cat Tail Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Rocky Hill', 40.4327063, -74.7291541, ST_GeomFromText('POINT(40.4327063 -74.7291541)', 4326), 40.4406926, -74.7673595, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875242', 'Catfish Pond', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Flatbrookville', 41.0344979, -74.8888906, ST_GeomFromText('POINT(41.0344979 -74.8888906)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875243', 'Catfish Pond', 'Reservoir', 'New Jersey', 'NJ', 'Warren', 'Flatbrookville', 41.0395699, -74.9964159, ST_GeomFromText('POINT(41.0395699 -74.9964159)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('875244', 'Catnest Swamp', 'Swamp', 'New Jersey', 'NJ', 'Passaic', 'Ramsey', 41.1017626, -74.2376474, ST_GeomFromText('POINT(41.1017626 -74.2376474)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875246', 'Cattus Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Seaside Park', 39.9903955, -74.1159718, ST_GeomFromText('POINT(39.9903955 -74.1159718)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875247', 'Cave Cabin Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Brookville', 39.8252153, -74.2811823, ST_GeomFromText('POINT(39.8252153 -74.2811823)', 4326), 39.8056678, -74.3316078, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875248', 'Caven Point', 'Cape', 'New Jersey', 'NJ', 'Hudson', 'Jersey City', 40.6851028, -74.0704191, ST_GeomFromText('POINT(40.6851028 -74.0704191)', 4326), NULL, NULL, '1979-09-08', '2011-07-21', 'Official', 'Board Decision', '1893-11-07'),
  ('875252', 'Cedar Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.3191762, -75.1513767, ST_GeomFromText('POINT(39.3191762 -75.1513767)', 4326), 39.3326709, -75.1385236, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875253', 'Cedar Branch', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Pleasantville', 39.3996411, -74.5938849, ST_GeomFromText('POINT(39.3996411 -74.5938849)', 4326), 39.4201656, -74.5926833, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875254', 'Cedar Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Five Points', 39.4055935, -74.9185824, ST_GeomFromText('POINT(39.4055935 -74.9185824)', 4326), 39.3917149, -74.8854733, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875255', 'Cedar Branch', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Mays Landing', 39.4061738, -74.7245193, ST_GeomFromText('POINT(39.4061738 -74.7245193)', 4326), 39.4135182, -74.7679281, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875256', 'Cedar Branch', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Mays Landing', 39.4317121, -74.7378579, ST_GeomFromText('POINT(39.4317121 -74.7378579)', 4326), 39.4560937, -74.7690868, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875257', 'Cedar Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Five Points', 39.4606165, -74.9577427, ST_GeomFromText('POINT(39.4606165 -74.9577427)', 4326), 39.5116893, -74.9591374, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875259', 'Cedar Bridge Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0542273, -74.1208506, ST_GeomFromText('POINT(40.0542273 -74.1208506)', 4326), 40.0670864, -74.1869187, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875261', 'Cedar Brook', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Alloway', 39.562336, -75.35047, ST_GeomFromText('POINT(39.562336 -75.35047)', 4326), 39.5644444, -75.2925, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875262', 'Cedar Brook', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'New Brunswick', 40.3906629, -74.3907053, ST_GeomFromText('POINT(40.3906629 -74.3907053)', 4326), 40.3871711, -74.4253135, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875263', 'Cedar Brook', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Atsion', 39.6826173, -74.749605, ST_GeomFromText('POINT(39.6826173 -74.749605)', 4326), 39.64595, -74.8109965, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875264', 'Cedar Brook', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'Hightstown', 40.3217063, -74.5580506, ST_GeomFromText('POINT(40.3217063 -74.5580506)', 4326), 40.3298653, -74.465674, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875265', 'Cedar Brook Lake', 'Lake', 'New Jersey', 'NJ', 'Union', 'Plainfield', 40.6000454, -74.4086859, ST_GeomFromText('POINT(40.6000454 -74.4086859)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875267', 'Cedar Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Dividing Creek', 39.2703923, -75.0882365, ST_GeomFromText('POINT(39.2703923 -75.0882365)', 4326), 39.3101119, -75.0971103, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875268', 'Cedar Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.6685641, -74.2135048, ST_GeomFromText('POINT(39.6685641 -74.2135048)', 4326), 39.7038355, -74.2395115, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875269', 'Cedar Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.2987549, -75.2512193, ST_GeomFromText('POINT(39.2987549 -75.2512193)', 4326), 39.3649116, -75.1514411, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875270', 'Cedar Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Forked River', 39.8702391, -74.1331673, ST_GeomFromText('POINT(39.8702391 -74.1331673)', 4326), 39.8953658, -74.3179393, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875271', 'Cedar Creek Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Forked River', 39.8642857, -74.1306932, ST_GeomFromText('POINT(39.8642857 -74.1306932)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875285', 'Cedar Grove Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Essex', 'Orange', 40.8595573, -74.2133702, ST_GeomFromText('POINT(40.8595573 -74.2133702)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875286', 'Cedar Hammocks Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3199979, -74.6750593, ST_GeomFromText('POINT(39.3199979 -74.6750593)', 4326), 39.3139008, -74.6695045, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875294', 'Cedar Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Cape May', 38.9545571, -74.8912823, ST_GeomFromText('POINT(38.9545571 -74.8912823)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('875296', 'Cedar Lake', 'Lake', 'New Jersey', 'NJ', 'Gloucester', 'Pitman West', 39.7467784, -75.1479521, ST_GeomFromText('POINT(39.7467784 -75.1479521)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('875297', 'Cedar Lake', 'Reservoir', 'New Jersey', 'NJ', 'Camden', 'Clementon', 39.8461773, -74.9308335, ST_GeomFromText('POINT(39.8461773 -74.9308335)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('875298', 'Cedar Lake', 'Lake', 'New Jersey', 'NJ', 'Warren', 'Blairstown', 40.9719833, -74.9809509, ST_GeomFromText('POINT(40.9719833 -74.9809509)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('875300', 'Cedar Lake', 'Reservoir', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.336071, -75.2007318, ST_GeomFromText('POINT(39.336071 -75.2007318)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('875301', 'Cedar Lake', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Buena', 39.575756, -74.9397574, ST_GeomFromText('POINT(39.575756 -74.9397574)', 4326), NULL, NULL, '1979-09-08', '2018-12-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875302', 'Cedar Lake', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Pitman East', 39.7393903, -75.0994457, ST_GeomFromText('POINT(39.7393903 -75.0994457)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('875303', 'Cedar Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.9111048, -74.4729616, ST_GeomFromText('POINT(40.9111048 -74.4729616)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875306', 'Cedar Point', 'Cape', 'New Jersey', 'NJ', 'Salem', 'Wilmington South', 39.661502, -75.5210328, ST_GeomFromText('POINT(39.661502 -75.5210328)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875307', 'Cedar Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Toms River', 39.9470625, -74.1909744, ST_GeomFromText('POINT(39.9470625 -74.1909744)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875308', 'Cedar Pond', 'Lake', 'New Jersey', 'NJ', 'Atlantic', 'Atsion', 39.7041157, -74.7401972, ST_GeomFromText('POINT(39.7041157 -74.7401972)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('875309', 'Cedar Pond', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.1086534, -74.4261028, ST_GeomFromText('POINT(41.1086534 -74.4261028)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875312', 'Cedar Run', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'West Creek', 39.6431744, -74.2504189, ST_GeomFromText('POINT(39.6431744 -74.2504189)', 4326), 39.7161111, -74.3366667, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875313', 'Cedar Run', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Pemberton', 39.9140034, -74.6859917, ST_GeomFromText('POINT(39.9140034 -74.6859917)', 4326), 39.8980556, -74.6391667, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875316', 'Cedar Swamp', 'Swamp', 'New Jersey', 'NJ', 'Gloucester', 'Bridgeport', 39.8106687, -75.328244, ST_GeomFromText('POINT(39.8106687 -75.328244)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875317', 'Cedar Swamp', 'Swamp', 'New Jersey', 'NJ', 'Ocean', 'Keswick Grove', 39.9312285, -74.3520914, ST_GeomFromText('POINT(39.9312285 -74.3520914)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875318', 'Cedar Swamp', 'Swamp', 'New Jersey', 'NJ', 'Sussex', 'Port Jervis South', 41.3320086, -74.6574385, ST_GeomFromText('POINT(41.3320086 -74.6574385)', 4326), NULL, NULL, '1979-09-08', '2012-12-14', NULL, NULL, NULL),
  ('875319', 'Cedar Swamp Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Marmora', 39.290319, -74.7013235, ST_GeomFromText('POINT(39.290319 -74.7013235)', 4326), 39.2474139, -74.7653103, '1979-09-08', '2014-05-13', NULL, NULL, NULL),
  ('875327', 'Centennial Lake', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Medford Lakes', 39.8341648, -74.8481884, ST_GeomFromText('POINT(39.8341648 -74.8481884)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('875332', 'Centerton Pond', 'Reservoir', 'New Jersey', 'NJ', 'Salem', 'Elmer', 39.5288976, -75.1728316, ST_GeomFromText('POINT(39.5288976 -75.1728316)', 4326), NULL, NULL, '1979-09-08', '2022-08-05', NULL, NULL, NULL),
  ('875357', 'Ceva Lake', 'Reservoir', 'New Jersey', 'NJ', 'Mercer', 'Pennington', 40.2724791, -74.779439, ST_GeomFromText('POINT(40.2724791 -74.779439)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('875360', 'Chamberlain Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Keswick Grove', 39.8897518, -74.3187547, ST_GeomFromText('POINT(39.8897518 -74.3187547)', 4326), 39.8478959, -74.407926, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875361', 'Chambers Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Raritan', 40.6158501, -74.6669, ST_GeomFromText('POINT(40.6158501 -74.6669)', 4326), 40.6310698, -74.6142429, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('875366', 'Channel Cove', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'West Creek', 39.6287298, -74.2520857, ST_GeomFromText('POINT(39.6287298 -74.2520857)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875367', 'Channel Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'West Creek', 39.6328965, -74.2534746, ST_GeomFromText('POINT(39.6328965 -74.2534746)', 4326), 39.6468697, -74.2572463, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875370', 'Charles Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0695462, -74.808526, ST_GeomFromText('POINT(39.0695462 -74.808526)', 4326), 39.0750477, -74.8135981, '1979-09-08', '2012-03-19', 'Official', 'Board Decision', '1944-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875374', 'Charley Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.311741, -74.7353178, ST_GeomFromText('POINT(39.311741 -74.7353178)', 4326), 39.3197137, -74.736954, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875377', 'Chatfield Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Millville', 39.4353929, -75.1037917, ST_GeomFromText('POINT(39.4353929 -75.1037917)', 4326), 39.4292817, -75.1487943, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875381', 'Chatsworth Lake', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Chatsworth', 39.8188668, -74.5463068, ST_GeomFromText('POINT(39.8188668 -74.5463068)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('875384', 'Cheesequake Creek', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'South Amboy', 40.4642733, -74.2576454, ST_GeomFromText('POINT(40.4642733 -74.2576454)', 4326), 40.4383817, -74.2916107, '1979-09-08', '2014-10-24', 'Official', 'Board Decision', '1894-01-01'),
  ('875386', 'Lake Cherokee', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Mendham', 40.8344743, -74.6000789, ST_GeomFromText('POINT(40.8344743 -74.6000789)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875387', 'Cherry Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Park Ridge', 41.016764, -74.0037498, ST_GeomFromText('POINT(41.016764 -74.0037498)', 4326), 41.0561915, -74.0187273, '1979-09-08', '2015-05-01', NULL, NULL, NULL),
  ('875397', 'Cherry Ridge Brook', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Wawayanda', 41.1403739, -74.4665454, ST_GeomFromText('POINT(41.1403739 -74.4665454)', 4326), 41.1622222, -74.4497222, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875398', 'Cherry Tree Creek', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Canton', 39.4006684, -75.4390867, ST_GeomFromText('POINT(39.4006684 -75.4390867)', 4326), 39.4033884, -75.4274887, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875403', 'Chester Island', 'Island', 'New Jersey', 'NJ', 'Gloucester', 'Bridgeport', 39.8381684, -75.3393558, ST_GeomFromText('POINT(39.8381684 -75.3393558)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875405', 'Chestnut Branch', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Woodbury', 39.7893177, -75.159992, ST_GeomFromText('POINT(39.7893177 -75.159992)', 4326), 39.7088962, -75.114904, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875408', 'Chestnut Neck', 'Cape', 'New Jersey', 'NJ', 'Atlantic', 'New Gretna', 39.5392845, -74.4801512, ST_GeomFromText('POINT(39.5392845 -74.4801512)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875410', 'Chestnut Point', 'Cape', 'New Jersey', 'NJ', 'Morris', 'Stanhope', 40.9370429, -74.6348829, ST_GeomFromText('POINT(40.9370429 -74.6348829)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875411', 'Chestnut Run', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Shiloh', 39.4258179, -75.3546667, ST_GeomFromText('POINT(39.4258179 -75.3546667)', 4326), 39.4364416, -75.3419852, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875412', 'Chestnut Run', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Woodstown', 39.6465027, -75.3313013, ST_GeomFromText('POINT(39.6465027 -75.3313013)', 4326), 39.6533333, -75.2836111, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875417', 'Chingarora Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Keyport', 40.4472063, -74.1869885, ST_GeomFromText('POINT(40.4472063 -74.1869885)', 4326), 40.4192466, -74.1876054, '1979-09-08', '2014-10-24', 'Official', 'Board Decision', '1954-01-01'),
  ('875418', 'Chincopin Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Five Points', 39.3762329, -74.9416816, ST_GeomFromText('POINT(39.3762329 -74.9416816)', 4326), 39.3814327, -74.9260283, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875442', 'Clam Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Oceanville', 39.3778946, -74.4209821, ST_GeomFromText('POINT(39.3778946 -74.4209821)', 4326), 39.3712278, -74.4254267, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875443', 'Clam Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Forked River', 39.7634533, -74.1390257, ST_GeomFromText('POINT(39.7634533 -74.1390257)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875445', 'Clamming Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Toms River', 39.8901187, -74.1368048, ST_GeomFromText('POINT(39.8901187 -74.1368048)', 4326), 39.8947402, -74.1546893, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875446', 'Clancy Island', 'Island', 'New Jersey', 'NJ', 'Middlesex', 'New Brunswick', 40.4778831, -74.3893166, ST_GeomFromText('POINT(40.4778831 -74.3893166)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875453', 'Clark Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Alloway', 39.529559, -75.2637996, ST_GeomFromText('POINT(39.529559 -75.2637996)', 4326), 39.535, -75.25, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875454', 'Clark Branch', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Atsion', 39.7115776, -74.7414923, ST_GeomFromText('POINT(39.7115776 -74.7414923)', 4326), 39.7092996, -74.8562533, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875456', 'Clark Pond', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.9010913, -74.5463436, ST_GeomFromText('POINT(40.9010913 -74.5463436)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875457', 'Clark Pond', 'Lake', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0076907, -74.2171824, ST_GeomFromText('POINT(41.0076907 -74.2171824)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875462', 'Clarks Mill Stream', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Green Bank', 39.5157202, -74.5034006, ST_GeomFromText('POINT(39.5157202 -74.5034006)', 4326), 39.4911929, -74.5934477, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875464', 'Clarks Pond', 'Lake', 'New Jersey', 'NJ', 'Essex', 'Orange', 40.8249915, -74.1802616, ST_GeomFromText('POINT(40.8249915 -74.1802616)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875465', 'Clarks Pond', 'Reservoir', 'New Jersey', 'NJ', 'Cumberland', 'Bridgeton', 39.3915042, -75.200737, ST_GeomFromText('POINT(39.3915042 -75.200737)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('875466', 'Clarks Run', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Alloway', 39.5354078, -75.2689648, ST_GeomFromText('POINT(39.5354078 -75.2689648)', 4326), 39.562708, -75.241456, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875471', 'Clay Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Dividing Creek', 39.2729126, -75.0743008, ST_GeomFromText('POINT(39.2729126 -75.0743008)', 4326), 39.2622505, -75.0619599, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875475', 'Cedar Bonnet', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.6537303, -74.19375, ST_GeomFromText('POINT(39.6537303 -74.19375)', 4326), NULL, NULL, '1979-09-08', '2015-06-03', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875476', 'Clear Run', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Port Elizabeth', 39.2802046, -74.9581075, ST_GeomFromText('POINT(39.2802046 -74.9581075)', 4326), 39.2801547, -74.9428725, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875481', 'Clement Lake', 'Lake', 'New Jersey', 'NJ', 'Camden', 'Clementon', 39.8368978, -74.9556531, ST_GeomFromText('POINT(39.8368978 -74.9556531)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('875483', 'Clementon Lake', 'Reservoir', 'New Jersey', 'NJ', 'Camden', 'Clementon', 39.8024494, -74.9862148, ST_GeomFromText('POINT(39.8024494 -74.9862148)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('875485', 'Clems Run', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Pitman West', 39.7074673, -75.2004504, ST_GeomFromText('POINT(39.7074673 -75.2004504)', 4326), 39.6978426, -75.1488018, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875497', 'Cliffwood Beach', 'Beach', 'New Jersey', 'NJ', 'Monmouth', 'Keyport', 40.4514959, -74.2206999, ST_GeomFromText('POINT(40.4514959 -74.2206999)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875502', 'Clint Millpond', 'Lake', 'New Jersey', 'NJ', 'Cape May', 'Woodbine', 39.1552905, -74.8165407, ST_GeomFromText('POINT(39.1552905 -74.8165407)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('875506', 'Clinton Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.0493188, -74.4419619, ST_GeomFromText('POINT(41.0493188 -74.4419619)', 4326), 41.0739121, -74.4476616, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875507', 'Clinton Brook Valley', 'Valley', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.1184981, -74.4087808, ST_GeomFromText('POINT(41.1184981 -74.4087808)', 4326), 41.1475954, -74.3790019, '1979-09-08', '2018-08-01', NULL, NULL, NULL),
  ('875512', 'Clinton Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.0839322, -74.4508784, ST_GeomFromText('POINT(41.0839322 -74.4508784)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875514', 'Clonmell Creek', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Bridgeport', 39.8394769, -75.2829579, ST_GeomFromText('POINT(39.8394769 -75.2829579)', 4326), 39.806591, -75.2390528, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875516', 'Clots Lake', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0591885, -74.2667483, ST_GeomFromText('POINT(41.0591885 -74.2667483)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875517', 'Clove Acres Lake', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Hamburg', 41.21437, -74.6115047, ST_GeomFromText('POINT(41.21437 -74.6115047)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('875518', 'Clove Brook', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Port Jervis South', 41.3600771, -74.6862173, ST_GeomFromText('POINT(41.3600771 -74.6862173)', 4326), 41.3227821, -74.6739435, '1979-09-08', '2015-04-30', NULL, NULL, NULL),
  ('875519', 'Clove Brook', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Hamburg', 41.1991698, -74.610233, ST_GeomFromText('POINT(41.1991698 -74.610233)', 4326), 41.3220388, -74.6365509, '1979-09-08', '2014-06-06', NULL, NULL, NULL),
  ('875524', 'Clubhouse Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0298316, -74.793731, ST_GeomFromText('POINT(39.0298316 -74.793731)', 4326), 39.0318402, -74.7894502, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875526', 'Clyde Potts Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Mendham', 40.8066942, -74.5835173, ST_GeomFromText('POINT(40.8066942 -74.5835173)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875527', 'Coates Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Seaside Park', 39.9451182, -74.1159713, ST_GeomFromText('POINT(39.9451182 -74.1159713)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875528', 'Cobb Hill', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.9877703, -74.462737, ST_GeomFromText('POINT(40.9877703 -74.462737)', 4326), NULL, NULL, '1979-09-08', '2021-11-27', NULL, NULL, NULL),
  ('875529', 'Cobb Island', 'Island', 'New Jersey', 'NJ', 'Salem', 'Salem', 39.6170575, -75.4715863, ST_GeomFromText('POINT(39.6170575 -75.4715863)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875531', 'Cobbs Mill Lake', 'Reservoir', 'New Jersey', 'NJ', 'Salem', 'Alloway', 39.5286457, -75.3194221, ST_GeomFromText('POINT(39.5286457 -75.3194221)', 4326), NULL, NULL, '1979-09-08', '2022-08-05', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875533', 'Coffin Hill', 'Summit', 'New Jersey', 'NJ', 'Salem', 'Shiloh', 39.4889999, -75.3631396, ST_GeomFromText('POINT(39.4889999 -75.3631396)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('875536', 'Cohansey Cove', 'Bay', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.3448358, -75.3468607, ST_GeomFromText('POINT(39.3448358 -75.3468607)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875539', 'Cohansey Point', 'Cape', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.3428913, -75.3560278, ST_GeomFromText('POINT(39.3428913 -75.3560278)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875540', 'Cohansey River', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.3442802, -75.3571389, ST_GeomFromText('POINT(39.3442802 -75.3571389)', 4326), 39.5742577, -75.2693939, '1979-09-08', '2013-03-21', 'Official', 'Board Decision', '1954-01-01'),
  ('875542', 'Cold Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Gladstone', 40.6656168, -74.730978, ST_GeomFromText('POINT(40.6656168 -74.730978)', 4326), 40.7057906, -74.7679925, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875547', 'Cold Spring Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0142854, -74.3513047, ST_GeomFromText('POINT(41.0142854 -74.3513047)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875548', 'Cold Water Run', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Pemberton', 39.8802679, -74.7465134, ST_GeomFromText('POINT(39.8802679 -74.7465134)', 4326), 39.8573244, -74.7487745, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875552', 'Coles Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Hackensack', 40.9119234, -74.0424871, ST_GeomFromText('POINT(40.9119234 -74.0424871)', 4326), 40.8871368, -74.0644598, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875559', 'Colliers Pond', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Columbus', 40.1190619, -74.6964548, ST_GeomFromText('POINT(40.1190619 -74.6964548)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('875564', 'Collins Cove', 'Bay', 'New Jersey', 'NJ', 'Atlantic', 'New Gretna', 39.5490068, -74.4745953, ST_GeomFromText('POINT(39.5490068 -74.4745953)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875565', 'Collins Lower Tide Pond', 'Lake', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.729059, -74.1997269, ST_GeomFromText('POINT(39.729059 -74.1997269)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('875566', 'Collins Point', 'Cape', 'New Jersey', 'NJ', 'Atlantic', 'New Gretna', 39.5565068, -74.4857069, ST_GeomFromText('POINT(39.5565068 -74.4857069)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875567', 'Collins Pond', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.060468, -74.58171, ST_GeomFromText('POINT(41.060468 -74.58171)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('875568', 'Collins Upper Tide Pond', 'Lake', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.7300487, -74.1951365, ST_GeomFromText('POINT(39.7300487 -74.1951365)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('875571', 'Colonial Lake', 'Reservoir', 'New Jersey', 'NJ', 'Mercer', 'Princeton', 40.2558521, -74.724285, ST_GeomFromText('POINT(40.2558521 -74.724285)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('875596', 'Commando Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3081798, -74.6675116, ST_GeomFromText('POINT(39.3081798 -74.6675116)', 4326), 39.3121872, -74.6771085, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875598', 'Lake Como', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.1676672, -74.0222263, ST_GeomFromText('POINT(40.1676672 -74.0222263)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('875599', 'Conaskonk Point', 'Cape', 'New Jersey', 'NJ', 'Monmouth', 'Keyport', 40.4587181, -74.17931, ST_GeomFromText('POINT(40.4587181 -74.17931)', 4326), NULL, NULL, '1979-09-08', '2009-08-04', 'Official', 'Board Decision', '1901-01-01'),
  ('875602', 'Conklin Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.7448421, -74.1873609, ST_GeomFromText('POINT(39.7448421 -74.1873609)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875603', 'Conkling Pond', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Chester', 40.8740584, -74.6852761, ST_GeomFromText('POINT(40.8740584 -74.6852761)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875605', 'Connoley Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Park Ridge', 41.0729894, -74.074502, ST_GeomFromText('POINT(41.0729894 -74.074502)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875608', 'Conrad Pond', 'Lake', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.016959, -74.2246232, ST_GeomFromText('POINT(41.016959 -74.2246232)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875609', 'Constable Hook', 'Cape', 'New Jersey', 'NJ', 'Hudson', 'Jersey City', 40.657881, -74.0990309, ST_GeomFromText('POINT(40.657881 -74.0990309)', 4326), NULL, NULL, '1979-09-08', '2020-03-20', 'Official', 'Board Decision', '1938-01-01'),
  ('875612', 'Conines Millpond', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Allentown', 40.1746993, -74.5835214, ST_GeomFromText('POINT(40.1746993 -74.5835214)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('875617', 'Cooks Pond', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.9129692, -74.4582477, ST_GeomFromText('POINT(40.9129692 -74.4582477)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875618', 'Cooks Pond', 'Reservoir', 'New Jersey', 'NJ', 'Warren', 'Blairstown', 40.9515771, -74.951094, ST_GeomFromText('POINT(40.9515771 -74.951094)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('875619', 'Cooks Pond', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0303672, -74.173202, ST_GeomFromText('POINT(41.0303672 -74.173202)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875621', 'Cookstown Pond', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'New Egypt', 40.0495781, -74.5629022, ST_GeomFromText('POINT(40.0495781 -74.5629022)', 4326), NULL, NULL, '1979-09-08', '2022-08-03', NULL, NULL, NULL),
  ('875622', 'Cool Run', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Alloway', 39.5815029, -75.3171348, ST_GeomFromText('POINT(39.5815029 -75.3171348)', 4326), 39.5771893, -75.2417028, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875623', 'Cooley Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Greenwood Lake', 41.1527114, -74.3567991, ST_GeomFromText('POINT(41.1527114 -74.3567991)', 4326), 41.183943, -74.3489242, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875632', 'Cooper Branch', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Hammonton', 39.7447276, -74.8373652, ST_GeomFromText('POINT(39.7447276 -74.8373652)', 4326), 39.7469136, -74.8683715, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875633', 'Cooper Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.9023415, -74.5563072, ST_GeomFromText('POINT(39.9023415 -74.5563072)', 4326), 39.8652407, -74.5002115, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875635', 'Cooper Lake', 'Lake', 'New Jersey', 'NJ', 'Gloucester', 'Bridgeport', 39.8016346, -75.3317821, ST_GeomFromText('POINT(39.8016346 -75.3317821)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('875636', 'Cooper Lake', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.8923663, -74.4613624, ST_GeomFromText('POINT(40.8923663 -74.4613624)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875638', 'Cooper Point', 'Cape', 'New Jersey', 'NJ', 'Camden', 'Camden', 39.9578905, -75.1193422, ST_GeomFromText('POINT(39.9578905 -75.1193422)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875639', 'Cooper Pond', 'Lake', 'New Jersey', 'NJ', 'Bergen', 'Nyack', 41.0112406, -73.9432828, ST_GeomFromText('POINT(41.0112406 -73.9432828)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875640', 'Cooper River', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Camden', 39.9541289, -75.1103282, ST_GeomFromText('POINT(39.9541289 -75.1103282)', 4326), 39.8207657, -74.9633861, '1979-09-08', '2014-07-09', 'Official', 'Board Decision', '1954-01-01'),
  ('875641', 'Cooper River Lake', 'Lake', 'New Jersey', 'NJ', 'Camden', 'Camden', 39.9261378, -75.0635695, ST_GeomFromText('POINT(39.9261378 -75.0635695)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('875646', 'Coover Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0848359, -74.7651644, ST_GeomFromText('POINT(39.0848359 -74.7651644)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('875647', 'Copper Creek', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'Frenchtown', 40.5043532, -75.0633788, ST_GeomFromText('POINT(40.5043532 -75.0633788)', 4326), 40.5219444, -75.0086111, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875649', 'Copperas Mountain', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.9927153, -74.5011192, ST_GeomFromText('POINT(40.9927153 -74.5011192)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('875651', 'Cordery Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Oceanville', 39.4365825, -74.4627061, ST_GeomFromText('POINT(39.4365825 -74.4627061)', 4326), 39.4437662, -74.4896007, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875653', 'Corn Hill', 'Summit', 'New Jersey', 'NJ', 'Hunterdon', 'Lambertville', 40.3748037, -74.9061038, ST_GeomFromText('POINT(40.3748037 -74.9061038)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('875656', 'Cornwell Run', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Bridgeton', 39.4556546, -75.2443957, ST_GeomFromText('POINT(39.4556546 -75.2443957)', 4326), 39.4688993, -75.2159214, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875660', 'Corson Sound', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Sea Isle City', 39.2190038, -74.6643263, ST_GeomFromText('POINT(39.2190038 -74.6643263)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875661', 'Corys Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Bernardsville', 40.6584223, -74.5033979, ST_GeomFromText('POINT(40.6584223 -74.5033979)', 4326), 40.6346034, -74.4894505, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875662', 'Cossa Boones Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Five Points', 39.4014402, -74.9321866, ST_GeomFromText('POINT(39.4014402 -74.9321866)', 4326), 39.4033884, -74.9484515, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875663', 'Lake Cotoxen', 'Lake', 'New Jersey', 'NJ', 'Burlington', 'Mount Holly', 39.9156692, -74.8057179, ST_GeomFromText('POINT(39.9156692 -74.8057179)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875664', 'Cotterals Brook', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Lakewood', 40.0805178, -74.1704392, ST_GeomFromText('POINT(40.0805178 -74.1704392)', 4326), 40.0744428, -74.2086983, '1981-07-01', '2013-03-21', 'Official', 'Board Decision', '1900-01-01'),
  ('875668', 'Country Lake', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.9493305, -74.5417517, ST_GeomFromText('POINT(39.9493305 -74.5417517)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875673', 'County House Mountain', 'Summit', 'New Jersey', 'NJ', 'Warren', 'Washington', 40.8076882, -74.9590174, ST_GeomFromText('POINT(40.8076882 -74.9590174)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('875674', 'County Island', 'Island', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9687092, -74.6357164, ST_GeomFromText('POINT(40.9687092 -74.6357164)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875676', 'Courtney Ponds', 'Lake', 'New Jersey', 'NJ', 'Cumberland', 'Fortescue', 39.2274526, -75.1459043, ST_GeomFromText('POINT(39.2274526 -75.1459043)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('875678', 'Cow Tongue Point', 'Cape', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.962876, -74.6459945, ST_GeomFromText('POINT(40.962876 -74.6459945)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875679', 'Cow Yard Brook', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'Monmouth Junction', 40.4127649, -74.5144486, ST_GeomFromText('POINT(40.4127649 -74.5144486)', 4326), 40.4118623, -74.5338464, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875680', 'Cowpens Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Ocean City', 39.2823378, -74.5873784, ST_GeomFromText('POINT(39.2823378 -74.5873784)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875681', 'Coxhat Pond', 'Reservoir', 'New Jersey', 'NJ', 'Salem', 'Alloway', 39.5290683, -75.3447008, ST_GeomFromText('POINT(39.5290683 -75.3447008)', 4326), NULL, NULL, '1979-09-08', '2022-08-05', NULL, NULL, NULL),
  ('875685', 'Cozy Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Franklin', 41.0150321, -74.5030359, ST_GeomFromText('POINT(41.0150321 -74.5030359)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875686', 'Crab Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Plainfield', 40.6224547, -74.4362783, ST_GeomFromText('POINT(40.6224547 -74.4362783)', 4326), 40.6362868, -74.4239844, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875687', 'Crab Island', 'Island', 'New Jersey', 'NJ', 'Middlesex', 'South Amboy', 40.4812166, -74.3507041, ST_GeomFromText('POINT(40.4812166 -74.3507041)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875688', 'Crab Point', 'Cape', 'New Jersey', 'NJ', 'Gloucester', 'Bridgeport', 39.8448351, -75.2946308, ST_GeomFromText('POINT(39.8448351 -75.2946308)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875689', 'Crafts Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Bristol', 40.1206658, -74.7629392, ST_GeomFromText('POINT(40.1206658 -74.7629392)', 4326), 40.0726122, -74.6343238, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875692', 'Cramer Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'New Gretna', 39.5665705, -74.4544208, ST_GeomFromText('POINT(39.5665705 -74.4544208)', 4326), 39.5769444, -74.4655556, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875695', 'Cramers Creek', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'Pittstown', 40.603315, -74.9016738, ST_GeomFromText('POINT(40.603315 -74.9016738)', 4326), 40.6195678, -74.8682052, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875697', 'Cranberry Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.9537267, -74.5379314, ST_GeomFromText('POINT(39.9537267 -74.5379314)', 4326), 39.9566667, -74.5155556, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875700', 'Cranberry Hill', 'Summit', 'New Jersey', 'NJ', 'Monmouth', 'Marlboro', 40.2644179, -74.1504603, ST_GeomFromText('POINT(40.2644179 -74.1504603)', 4326), NULL, NULL, '1979-09-08', '2024-10-02', 'Official', 'Board Decision', '1954-01-01'),
  ('875701', 'Cranberry Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9498698, -74.7404771, ST_GeomFromText('POINT(40.9498698 -74.7404771)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('875705', 'Cranbury Brook', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'Hightstown', 40.3239782, -74.6129796, ST_GeomFromText('POINT(40.3239782 -74.6129796)', 4326), 40.2601039, -74.4032174, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875711', 'Crater Lake', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Flatbrookville', 41.1094016, -74.8958033, ST_GeomFromText('POINT(41.1094016 -74.8958033)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('875714', 'Crawford Hill', 'Summit', 'New Jersey', 'NJ', 'Monmouth', 'Keyport', 40.3910809, -74.1846101, ST_GeomFromText('POINT(40.3910809 -74.1846101)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875720', 'Cresse Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0292691, -74.8253703, ST_GeomFromText('POINT(39.0292691 -74.8253703)', 4326), 39.0449777, -74.8566717, '1979-09-08', '2012-03-19', NULL, NULL, NULL),
  ('875721', 'Cresse Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Wildwood', 38.9753906, -74.8476689, ST_GeomFromText('POINT(38.9753906 -74.8476689)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('875724', 'Cresskill Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Yonkers', 40.946894, -73.9649042, ST_GeomFromText('POINT(40.946894 -73.9649042)', 4326), 40.9370088, -73.9317602, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875728', 'Crestmere Lake', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Pompton Plains', 40.9649921, -74.2824743, ST_GeomFromText('POINT(40.9649921 -74.2824743)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875731', 'Crestwood Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0345669, -74.1375165, ST_GeomFromText('POINT(41.0345669 -74.1375165)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875732', 'Criss Brook', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Culvers Gap', 41.2239843, -74.7707214, ST_GeomFromText('POINT(41.2239843 -74.7707214)', 4326), 41.2444444, -74.7544444, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875733', 'Cromakill Creek', 'Stream', 'New Jersey', 'NJ', 'Hudson', 'Weehawken', 40.8062117, -74.039307, ST_GeomFromText('POINT(40.8062117 -74.039307)', 4326), 40.7805556, -74.0461111, '1979-09-08', NULL, 'Official', 'Board Decision', '1959-01-01'),
  ('875734', 'Cromwell Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Mendham', 40.7625235, -74.6046729, ST_GeomFromText('POINT(40.7625235 -74.6046729)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875737', 'Crooked Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.7128975, -74.1679156, ST_GeomFromText('POINT(39.7128975 -74.1679156)', 4326), 39.7175, -74.1941667, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875739', 'Crooked Thorofare Cove', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0565023, -74.801833, ST_GeomFromText('POINT(39.0565023 -74.801833)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875741', 'Cropwell Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Moorestown', 39.8992802, -74.9498892, ST_GeomFromText('POINT(39.8992802 -74.9498892)', 4326), 39.8944444, -74.9219444, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875743', 'Cross Creek', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'Arthur Kill', 40.5991708, -74.2236409, ST_GeomFromText('POINT(40.5991708 -74.2236409)', 4326), 40.5891115, -74.2189135, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875748', 'Crossway Creek', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'South Amboy', 40.4612177, -74.2629233, ST_GeomFromText('POINT(40.4612177 -74.2629233)', 4326), 40.4705556, -74.2966667, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875750', 'Crosswicks Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Trenton East', 40.1492012, -74.7198629, ST_GeomFromText('POINT(40.1492012 -74.7198629)', 4326), 40.0520581, -74.5445986, '1979-09-08', '2014-10-24', NULL, NULL, NULL),
  ('875752', 'Crow Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Woodbine', 39.1736526, -74.864375, ST_GeomFromText('POINT(39.1736526 -74.864375)', 4326), 39.1402778, -74.8430556, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875753', 'Crowder Run', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Port Elizabeth', 39.2750077, -74.9781972, ST_GeomFromText('POINT(39.2750077 -74.9781972)', 4326), 39.264673, -74.9519062, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875756', 'Crows Mill Creek', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'Perth Amboy', 40.5097146, -74.3103111, ST_GeomFromText('POINT(40.5097146 -74.3103111)', 4326), 40.5174858, -74.3181753, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875757', 'Cruser Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Rocky Hill', 40.4556419, -74.6509838, ST_GeomFromText('POINT(40.4556419 -74.6509838)', 4326), 40.4453631, -74.7022247, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875758', 'Crystal Lake', 'Lake', 'New Jersey', 'NJ', 'Essex', 'Orange', 40.8006237, -74.2478418, ST_GeomFromText('POINT(40.8006237 -74.2478418)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875759', 'Crystal Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.8918549, -74.4519481, ST_GeomFromText('POINT(40.8918549 -74.4519481)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875762', 'Crystal Lake', 'Reservoir', 'New Jersey', 'NJ', 'Camden', 'Camden', 39.9048348, -75.0480262, ST_GeomFromText('POINT(39.9048348 -75.0480262)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('875763', 'Crystal Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0336795, -74.2408963, ST_GeomFromText('POINT(41.0336795 -74.2408963)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875764', 'Crystal Lake', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Columbus', 40.1233427, -74.7372865, ST_GeomFromText('POINT(40.1233427 -74.7372865)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('875766', 'Crystal Spring Lake', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Pitman East', 39.7085038, -75.0066005, ST_GeomFromText('POINT(39.7085038 -75.0066005)', 4326), NULL, NULL, '1979-09-08', '2018-12-17', NULL, NULL, NULL),
  ('875767', 'Cub Brook', 'Stream', 'New Jersey', 'NJ', 'Essex', 'Caldwell', 40.7719944, -74.3152356, ST_GeomFromText('POINT(40.7719944 -74.3152356)', 4326), 40.7704181, -74.3019319, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875768', 'Cub Lake', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9671292, -74.7354452, ST_GeomFromText('POINT(40.9671292 -74.7354452)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('875769', 'Cub Swamp', 'Swamp', 'New Jersey', 'NJ', 'Cumberland', 'Dividing Creek', 39.2809478, -75.0651795, ST_GeomFromText('POINT(39.2809478 -75.0651795)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875770', 'Cuckels Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Bound Brook', 40.5520476, -74.5718231, ST_GeomFromText('POINT(40.5520476 -74.5718231)', 4326), 40.5825, -74.5891667, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875772', 'Culliers Run', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Salem', 39.612404, -75.4164541, ST_GeomFromText('POINT(39.612404 -75.4164541)', 4326), 39.6290606, -75.3939986, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875774', 'Culvers Creek', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Branchville', 41.1446325, -74.7449255, ST_GeomFromText('POINT(41.1446325 -74.7449255)', 4326), 41.1581516, -74.7812773, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875775', 'Culvers Gap', 'Gap', 'New Jersey', 'NJ', 'Sussex', 'Culvers Gap', 41.1759291, -74.7890552, ST_GeomFromText('POINT(41.1759291 -74.7890552)', 4326), NULL, NULL, '1979-09-08', '2014-11-19', NULL, NULL, NULL),
  ('875777', 'Culvers Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Culvers Gap', 41.1697957, -74.776127, ST_GeomFromText('POINT(41.1697957 -74.776127)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('875779', 'Cumberland Pond', 'Reservoir', 'New Jersey', 'NJ', 'Cumberland', 'Port Elizabeth', 39.3749421, -74.944091, ST_GeomFromText('POINT(39.3749421 -74.944091)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('875781', 'Cupsaw Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.1089848, -74.2577076, ST_GeomFromText('POINT(41.1089848 -74.2577076)', 4326), 41.1366012, -74.2332566, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('875782', 'Cupsaw Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Ramsey', 41.116671, -74.249133, ST_GeomFromText('POINT(41.116671 -74.249133)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875785', 'Cushetunk Lake', 'Reservoir', 'New Jersey', 'NJ', 'Hunterdon', 'Flemington', 40.6229663, -74.7775322, ST_GeomFromText('POINT(40.6229663 -74.7775322)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875786', 'Cushetunk Mountain', 'Summit', 'New Jersey', 'NJ', 'Hunterdon', 'Flemington', 40.5987052, -74.8246075, ST_GeomFromText('POINT(40.5987052 -74.8246075)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('875787', 'Cushman Lake', 'Reservoir', 'New Jersey', 'NJ', 'Atlantic', 'Newtonville', 39.597986, -74.8723181, ST_GeomFromText('POINT(39.597986 -74.8723181)', 4326), NULL, NULL, '1979-09-08', '2018-12-17', NULL, NULL, NULL),
  ('875790', 'Dahnerts Lake', 'Lake', 'New Jersey', 'NJ', 'Bergen', 'Hackensack', 40.8801637, -74.1028284, ST_GeomFromText('POINT(40.8801637 -74.1028284)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875791', 'Dallis Pond', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9569869, -74.6867448, ST_GeomFromText('POINT(40.9569869 -74.6867448)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875792', 'Dalrymple Pond', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Mendham', 40.8541664, -74.5796399, ST_GeomFromText('POINT(40.8541664 -74.5796399)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875794', 'Daniel Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Beach Haven', 39.6103965, -74.2115284, ST_GeomFromText('POINT(39.6103965 -74.2115284)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875795', 'Daniels Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Keswick Grove', 39.904717, -74.2676532, ST_GeomFromText('POINT(39.904717 -74.2676532)', 4326), 39.8894444, -74.3088889, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875797', 'Dans Bridge Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Oswego Lake', 39.6339853, -74.4255066, ST_GeomFromText('POINT(39.6339853 -74.4255066)', 4326), 39.6841709, -74.4090915, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875798', 'Danville Mountain', 'Summit', 'New Jersey', 'NJ', 'Warren', 'Washington', 40.8698267, -74.9370703, ST_GeomFromText('POINT(40.8698267 -74.9370703)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('875800', 'Dark Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Lakehurst', 40.084023, -74.3562627, ST_GeomFromText('POINT(40.084023 -74.3562627)', 4326), 40.1008732, -74.3709397, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875802', 'Darlington Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0806518, -74.1873677, ST_GeomFromText('POINT(41.0806518 -74.1873677)', 4326), 41.0714736, -74.1645598, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875803', 'Darlington Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0629773, -74.1730448, ST_GeomFromText('POINT(41.0629773 -74.1730448)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875806', 'Davenport Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Toms River', 39.9555105, -74.2231393, ST_GeomFromText('POINT(39.9555105 -74.2231393)', 4326), 39.9489803, -74.3676996, '1979-09-08', '2014-06-11', NULL, NULL, NULL),
  ('875808', 'Daveys Lake', 'Lake', 'New Jersey', 'NJ', 'Cape May', 'Cape May', 38.951617, -74.9652919, ST_GeomFromText('POINT(38.951617 -74.9652919)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875809', 'Davidsons Millpond', 'Reservoir', 'New Jersey', 'NJ', 'Middlesex', 'Monmouth Junction', 40.4080364, -74.5043124, ST_GeomFromText('POINT(40.4080364 -74.5043124)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875811', 'Davis Cove', 'Bay', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9467651, -74.6412721, ST_GeomFromText('POINT(40.9467651 -74.6412721)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875816', 'Dawsons Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Chester', 40.8031554, -74.629882, ST_GeomFromText('POINT(40.8031554 -74.629882)', 4326), 40.8246688, -74.6117002, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875817', 'Days Point', 'Cape', 'New Jersey', 'NJ', 'Hudson', 'Weehawken', 40.7734345, -74.0101397, ST_GeomFromText('POINT(40.7734345 -74.0101397)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875819', 'Dayton Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.3182093, -75.2788568, ST_GeomFromText('POINT(39.3182093 -75.2788568)', 4326), 39.318977, -75.2669692, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875822', 'De Yoe Pond', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0249228, -74.1939145, ST_GeomFromText('POINT(41.0249228 -74.1939145)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875825', 'DeVoe Lake', 'Reservoir', 'New Jersey', 'NJ', 'Middlesex', 'New Brunswick', 40.3871456, -74.3900973, ST_GeomFromText('POINT(40.3871456 -74.3900973)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875829', 'Dead River', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Bernardsville', 40.6481583, -74.5271784, ST_GeomFromText('POINT(40.6481583 -74.5271784)', 4326), 40.6961114, -74.5830703, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875831', 'Dead Thorofare Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0356689, -74.8012775, ST_GeomFromText('POINT(39.0356689 -74.8012775)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('875832', 'Deal Lake', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.2296875, -74.0160314, ST_GeomFromText('POINT(40.2296875 -74.0160314)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875834', 'Deans Pond', 'Reservoir', 'New Jersey', 'NJ', 'Middlesex', 'Monmouth Junction', 40.3955702, -74.5251501, ST_GeomFromText('POINT(40.3955702 -74.5251501)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875835', 'Debbies Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Point Pleasant', 40.1112292, -74.0459847, ST_GeomFromText('POINT(40.1112292 -74.0459847)', 4326), 40.1121482, -74.0562415, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875836', 'Debois Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Adelphia', 40.2068671, -74.2701289, ST_GeomFromText('POINT(40.2068671 -74.2701289)', 4326), 40.2690235, -74.2522573, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875841', 'Decou Pond', 'Lake', 'New Jersey', 'NJ', 'Burlington', 'Woodmansie', 39.8150916, -74.4562287, ST_GeomFromText('POINT(39.8150916 -74.4562287)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('875842', 'Deep Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.9643612, -74.1580153, ST_GeomFromText('POINT(40.9643612 -74.1580153)', 4326), 40.9901352, -74.171083, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875843', 'Deep Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Point Pleasant', 40.1088414, -74.0439731, ST_GeomFromText('POINT(40.1088414 -74.0439731)', 4326), 40.1087634, -74.0365246, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875844', 'Deep Creek', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'Arthur Kill', 40.5992176, -74.2127538, ST_GeomFromText('POINT(40.5992176 -74.2127538)', 4326), 40.5938592, -74.2118901, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875845', 'Deep Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.1112249, -74.7557194, ST_GeomFromText('POINT(39.1112249 -74.7557194)', 4326), 39.1146296, -74.7944927, '1979-09-08', '2013-03-21', 'Official', 'Board Decision', '1943-01-01'),
  ('875846', 'Deep Hollow Branch', 'Swamp', 'New Jersey', 'NJ', 'Ocean', 'Forked River', 39.8895629, -74.2268085, ST_GeomFromText('POINT(39.8895629 -74.2268085)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('875847', 'Deep Hollow Pond', 'Lake', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.9109025, -74.5851479, ST_GeomFromText('POINT(39.9109025 -74.5851479)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875848', 'Deep Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'New Gretna', 39.5517846, -74.4123704, ST_GeomFromText('POINT(39.5517846 -74.4123704)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875849', 'Deep Run', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Salem', 39.5622862, -75.3757167, ST_GeomFromText('POINT(39.5622862 -75.3757167)', 4326), 39.5348824, -75.3055233, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875850', 'Deep Run', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Newtonville', 39.5073387, -74.7784981, ST_GeomFromText('POINT(39.5073387 -74.7784981)', 4326), 39.5115734, -74.9200201, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875851', 'Deep Run', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Atsion', 39.7395179, -74.6832132, ST_GeomFromText('POINT(39.7395179 -74.6832132)', 4326), 39.7951089, -74.6765399, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875852', 'Deep Run', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'South Amboy', 40.4214111, -74.3577647, ST_GeomFromText('POINT(40.4214111 -74.3577647)', 4326), 40.342014, -74.2576969, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875854', 'Deepavaal Brook', 'Stream', 'New Jersey', 'NJ', 'Essex', 'Pompton Plains', 40.8875626, -74.265368, ST_GeomFromText('POINT(40.8875626 -74.265368)', 4326), 40.859509, -74.3109012, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875856', 'Deepwater Point', 'Cape', 'New Jersey', 'NJ', 'Salem', 'Wilmington South', 39.6962246, -75.5074204, ST_GeomFromText('POINT(39.6962246 -75.5074204)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875857', 'Deer Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Whiting', 39.9440053, -74.4715402, ST_GeomFromText('POINT(39.9440053 -74.4715402)', 4326), 39.9325, -74.4480556, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875858', 'Deer Head Lake', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'Forked River', 39.8531169, -74.2129499, ST_GeomFromText('POINT(39.8531169 -74.2129499)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('875860', 'Deer Park Pond', 'Reservoir', 'New Jersey', 'NJ', 'Warren', 'Tranquility', 40.9054831, -74.7954679, ST_GeomFromText('POINT(40.9054831 -74.7954679)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875861', 'Deer Pond', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.9421447, -74.4049856, ST_GeomFromText('POINT(40.9421447 -74.4049856)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875862', 'Deer Trail Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.1178975, -74.5282748, ST_GeomFromText('POINT(41.1178975 -74.5282748)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('875865', 'Mount Defiance', 'Summit', 'New Jersey', 'NJ', 'Passaic', 'Ramsey', 41.1239761, -74.2293124, ST_GeomFromText('POINT(41.1239761 -74.2293124)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('875873', 'Delawanna Creek', 'Stream', 'New Jersey', 'NJ', 'Warren', 'Portland', 40.8927696, -75.0735712, ST_GeomFromText('POINT(40.8927696 -75.0735712)', 4326), 40.9429332, -75.024071, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875879', 'Delaware Lake', 'Reservoir', 'New Jersey', 'NJ', 'Warren', 'Portland', 40.919915, -75.0663033, ST_GeomFromText('POINT(40.919915 -75.0663033)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('875887', 'Demarest Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Yonkers', 40.9509275, -73.9648962, ST_GeomFromText('POINT(40.9509275 -73.9648962)', 4326), 40.9543246, -73.9267203, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875890', 'Den Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.876835, -74.5029742, ST_GeomFromText('POINT(40.876835 -74.5029742)', 4326), 40.8566648, -74.5271435, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875891', 'Lake Denmark', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.9707243, -74.5161196, ST_GeomFromText('POINT(40.9707243 -74.5161196)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875892', 'Denn Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Canton', 39.4484464, -75.4099186, ST_GeomFromText('POINT(39.4484464 -75.4099186)', 4326), 39.4443503, -75.3658515, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875893', 'Dennis Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Heislerville', 39.1663038, -74.8910737, ST_GeomFromText('POINT(39.1663038 -74.8910737)', 4326), 39.2012983, -74.7698164, '1979-09-08', '2014-05-13', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875897', 'Depew Island', 'Island', 'New Jersey', 'NJ', 'Warren', 'Bushkill', 41.0653738, -75.0104517, ST_GeomFromText('POINT(41.0653738 -75.0104517)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875899', 'Devauls Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Sea Isle City', 39.185375, -74.7087747, ST_GeomFromText('POINT(39.185375 -74.7087747)', 4326), 39.1946966, -74.726429, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875900', 'Devils Brook', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'Hightstown', 40.3301352, -74.623109, ST_GeomFromText('POINT(40.3301352 -74.623109)', 4326), 40.3618005, -74.5033497, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875902', 'Devils Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Sea Isle City', 39.2251149, -74.6584927, ST_GeomFromText('POINT(39.2251149 -74.6584927)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875903', 'Devils Tea Table', 'Cliff', 'New Jersey', 'NJ', 'Hunterdon', 'Lumberville', 40.4603816, -75.0665597, ST_GeomFromText('POINT(40.4603816 -75.0665597)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875904', 'Devils Wedge', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0434466, -74.8215562, ST_GeomFromText('POINT(39.0434466 -74.8215562)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('875907', 'Diamond Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Paterson', 40.9418492, -74.1421674, ST_GeomFromText('POINT(40.9418492 -74.1421674)', 4326), 40.9743658, -74.1290474, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875909', 'Diamond Lake', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Buena', 39.6135863, -74.9218353, ST_GeomFromText('POINT(39.6135863 -74.9218353)', 4326), NULL, NULL, '1979-09-08', '2018-12-17', NULL, NULL, NULL),
  ('875910', 'Diamond Mill Pond', 'Reservoir', 'New Jersey', 'NJ', 'Essex', 'Roselle', 40.7320072, -74.3071126, ST_GeomFromText('POINT(40.7320072 -74.3071126)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875912', 'Dias Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Rio Grande', 39.0920493, -74.9002147, ST_GeomFromText('POINT(39.0920493 -74.9002147)', 4326), 39.0901508, -74.8758173, '1979-09-08', '2013-03-21', 'Official', 'Board Decision', '1943-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875914', 'Dickeys Ditch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Port Norris', 39.2334, -75.0460839, ST_GeomFromText('POINT(39.2334 -75.0460839)', 4326), 39.2540397, -75.0443244, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875916', 'Polypod Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1278923, -74.1943094, ST_GeomFromText('POINT(40.1278923 -74.1943094)', 4326), 40.1336111, -74.2216667, '1979-09-08', '2007-12-31', 'Official', 'Board Decision', '1980-01-01'),
  ('875917', 'Dicks Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Lakewood', 40.1181705, -74.1867042, ST_GeomFromText('POINT(40.1181705 -74.1867042)', 4326), 40.1270588, -74.2215326, '1979-09-08', '2013-03-21', 'Official', 'Board Decision', '1980-01-01'),
  ('875919', 'Diehl Point', 'Cape', 'New Jersey', 'NJ', 'Burlington', 'Beverly', 40.0490002, -74.9637798, ST_GeomFromText('POINT(40.0490002 -74.9637798)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875920', 'Dildine Island', 'Island', 'New Jersey', 'NJ', 'Warren', 'Belvidere', 40.8578755, -75.0585078, ST_GeomFromText('POINT(40.8578755 -75.0585078)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875921', 'Dillon Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Toms River', 39.9427578, -74.1334623, ST_GeomFromText('POINT(39.9427578 -74.1334623)', 4326), 39.9471852, -74.1513446, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875923', 'Dinner Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.6231742, -74.2559747, ST_GeomFromText('POINT(39.6231742 -74.2559747)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875924', 'Dinner Point Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.6224745, -74.2602396, ST_GeomFromText('POINT(39.6224745 -74.2602396)', 4326), 39.6581493, -74.2717785, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875925', 'Dipper Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.7115087, -74.1587486, ST_GeomFromText('POINT(39.7115087 -74.1587486)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875927', 'Dividing Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Port Norris', 39.2139678, -75.105114, ST_GeomFromText('POINT(39.2139678 -75.105114)', 4326), 39.3153925, -75.0651793, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875929', 'Division Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.347868, -75.3240895, ST_GeomFromText('POINT(39.347868 -75.3240895)', 4326), 39.3578027, -75.3220671, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875930', 'Dixons Pond', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.93655, -74.4435891, ST_GeomFromText('POINT(40.93655 -74.4435891)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875933', 'Dock Watch Hollow', 'Valley', 'New Jersey', 'NJ', 'Somerset', 'Bound Brook', 40.6025769, -74.5334833, ST_GeomFromText('POINT(40.6025769 -74.5334833)', 4326), 40.6112633, -74.5387967, '1979-09-08', '2018-08-01', NULL, NULL, NULL),
  ('875934', 'Doctor Creek', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Weehawken', 40.8168542, -74.0320158, ST_GeomFromText('POINT(40.8168542 -74.0320158)', 4326), 40.8153459, -74.0468404, '1979-09-08', '2013-03-21', 'Official', 'Board Decision', '1943-01-01'),
  ('875936', 'Doctors Creek', 'Stream', 'New Jersey', 'NJ', 'Mercer', 'Trenton East', 40.1759387, -74.6805525, ST_GeomFromText('POINT(40.1759387 -74.6805525)', 4326), 40.1937578, -74.4377804, '1979-09-08', '2016-10-19', NULL, NULL, NULL),
  ('875937', 'Dog Island', 'Island', 'New Jersey', 'NJ', 'Atlantic', 'Brigantine Inlet', 39.4909508, -74.330978, ST_GeomFromText('POINT(39.4909508 -74.330978)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875938', 'Doles Point', 'Cape', 'New Jersey', 'NJ', 'Atlantic', 'Oceanville', 39.3995613, -74.4429274, ST_GeomFromText('POINT(39.3995613 -74.4429274)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875948', 'Dorotockeys Run', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Yonkers', 40.9834163, -73.9743952, ST_GeomFromText('POINT(40.9834163 -73.9743952)', 4326), 41.0352641, -73.9774355, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875949', 'Double Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.7448389, -74.1970789, ST_GeomFromText('POINT(39.7448389 -74.1970789)', 4326), 39.7577315, -74.1924119, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875950', 'Double Creek Wide Place', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.7451199, -74.19125, ST_GeomFromText('POINT(39.7451199 -74.19125)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875952', 'Doughty Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Oceanville', 39.4573395, -74.4404273, ST_GeomFromText('POINT(39.4573395 -74.4404273)', 4326), 39.47, -74.4794444, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875954', 'Dove Island', 'Island', 'New Jersey', 'NJ', 'Sussex', 'Newton West', 41.0698189, -74.8318344, ST_GeomFromText('POINT(41.0698189 -74.8318344)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875955', 'Dove Mill Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Lakehurst', 40.0663639, -74.2883706, ST_GeomFromText('POINT(40.0663639 -74.2883706)', 4326), 40.1229567, -74.3168584, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875957', 'Dover Cranberry Bog', 'Swamp', 'New Jersey', 'NJ', 'Ocean', 'Keswick Grove', 39.9098403, -74.2845888, ST_GeomFromText('POINT(39.9098403 -74.2845888)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875958', 'Dover Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Mendham', 40.8724449, -74.5720047, ST_GeomFromText('POINT(40.8724449 -74.5720047)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875963', 'Drag Hill', 'Summit', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0979492, -74.2095046, ST_GeomFromText('POINT(41.0979492 -74.2095046)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('875964', 'Drag Island', 'Island', 'New Jersey', 'NJ', 'Atlantic', 'Ocean City', 39.2998378, -74.6162686, ST_GeomFromText('POINT(39.2998378 -74.6162686)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875965', 'Drag Sedge', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5617848, -74.3037545, ST_GeomFromText('POINT(39.5617848 -74.3037545)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1925-01-01'),
  ('875967', 'Drakes Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Chester', 40.8117589, -74.7330379, ST_GeomFromText('POINT(40.8117589 -74.7330379)', 4326), 40.8780478, -74.6532959, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875968', 'Drakes Pond', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Newton East', 41.0436736, -74.737331, ST_GeomFromText('POINT(41.0436736 -74.737331)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875971', 'Dredge Harbor', 'Bay', 'New Jersey', 'NJ', 'Burlington', 'Beverly', 40.0334449, -74.9801694, ST_GeomFromText('POINT(40.0334449 -74.9801694)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875973', 'Drivers Branch', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Atsion', 39.6812284, -74.7393268, ST_GeomFromText('POINT(39.6812284 -74.7393268)', 4326), 39.6605776, -74.770503, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875974', 'Droyers Point', 'Cape', 'New Jersey', 'NJ', 'Hudson', 'Jersey City', 40.7106577, -74.1056979, ST_GeomFromText('POINT(40.7106577 -74.1056979)', 4326), NULL, NULL, '1979-09-08', '2007-06-08', NULL, NULL, NULL),
  ('875976', 'Drum Bed', 'Bay', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.335392, -75.2740797, ST_GeomFromText('POINT(39.335392 -75.2740797)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875978', 'Drum Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0528912, -74.8082222, ST_GeomFromText('POINT(39.0528912 -74.8082222)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('875979', 'Drum Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.6442855, -74.239863, ST_GeomFromText('POINT(39.6442855 -74.239863)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875980', 'Drum Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0151173, -74.1004159, ST_GeomFromText('POINT(40.0151173 -74.1004159)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875982', 'Drumbo Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.3489217, -75.3417277, ST_GeomFromText('POINT(39.3489217 -75.3417277)', 4326), 39.3566807, -75.3344831, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875983', 'Dry Branch', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Newfield', 39.5749483, -75.0797939, ST_GeomFromText('POINT(39.5749483 -75.0797939)', 4326), 39.5849539, -75.1368445, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875984', 'Dry Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Oswego Lake', 39.7462496, -74.3789864, ST_GeomFromText('POINT(39.7462496 -74.3789864)', 4326), 39.7756435, -74.3315434, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875985', 'Dry Brook', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Branchville', 41.1292113, -74.7394967, ST_GeomFromText('POINT(41.1292113 -74.7394967)', 4326), 41.2015673, -74.7473931, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875986', 'Dry Pond', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Flatbrookville', 41.100652, -74.8972084, ST_GeomFromText('POINT(41.100652 -74.8972084)', 4326), NULL, NULL, '1979-09-08', '2019-07-10', NULL, NULL, NULL),
  ('875987', 'Dry Run', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Mays Landing', 39.4565348, -74.7309458, ST_GeomFromText('POINT(39.4565348 -74.7309458)', 4326), 39.4666631, -74.7303987, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875990', 'Duck Island', 'Island', 'New Jersey', 'NJ', 'Mercer', 'Trenton East', 40.177054, -74.7273825, ST_GeomFromText('POINT(40.177054 -74.7273825)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('875991', 'Duck Pond', 'Lake', 'New Jersey', 'NJ', 'Warren', 'Flatbrookville', 41.0054942, -74.9226624, ST_GeomFromText('POINT(41.0054942 -74.9226624)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('875992', 'Duck Pond', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.8958926, -74.624843, ST_GeomFromText('POINT(40.8958926 -74.624843)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875993', 'Duck Pond', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Newton West', 41.0696529, -74.8187922, ST_GeomFromText('POINT(41.0696529 -74.8187922)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('875994', 'Duck Pond', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Yonkers', 40.9785946, -73.9804972, ST_GeomFromText('POINT(40.9785946 -73.9804972)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('875995', 'Duck Pond Run', 'Stream', 'New Jersey', 'NJ', 'Mercer', 'Princeton', 40.3092328, -74.6775511, ST_GeomFromText('POINT(40.3092328 -74.6775511)', 4326), 40.2945353, -74.6227884, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('875997', 'Ducks Nest Stream', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Williamstown', 39.6885633, -74.9302769, ST_GeomFromText('POINT(39.6885633 -74.9302769)', 4326), 39.6860534, -74.9550819, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('875999', 'Duffield Run', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Pitman East', 39.7348874, -75.1124847, ST_GeomFromText('POINT(39.7348874 -75.1124847)', 4326), 39.7243361, -75.0653583, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876000', 'Duhernal Lake', 'Reservoir', 'New Jersey', 'NJ', 'Middlesex', 'South Amboy', 40.4026943, -74.3712768, ST_GeomFromText('POINT(40.4026943 -74.3712768)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876002', 'Dukes Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Bound Brook', 40.5512143, -74.5946016, ST_GeomFromText('POINT(40.5512143 -74.5946016)', 4326), 40.5326035, -74.6732151, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876006', 'Dundee Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Paterson', 40.8879172, -74.1294529, ST_GeomFromText('POINT(40.8879172 -74.1294529)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876007', 'Dune Island', 'Island', 'New Jersey', 'NJ', 'Atlantic', 'Ocean City', 39.3251161, -74.5276535, ST_GeomFromText('POINT(39.3251161 -74.5276535)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876011', 'Dunker Pond', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.089444, -74.4756336, ST_GeomFromText('POINT(41.089444 -74.4756336)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876012', 'Dunks Point', 'Cape', 'New Jersey', 'NJ', 'Cumberland', 'Bombay Hook Island', 39.3642799, -75.3935293, ST_GeomFromText('POINT(39.3642799 -75.3935293)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876013', 'Dunlap Pond', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Stanhope', 40.9094435, -74.6381716, ST_GeomFromText('POINT(40.9094435 -74.6381716)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876015', 'Dunnfield Creek', 'Stream', 'New Jersey', 'NJ', 'Warren', 'Stroudsburg', 40.9700482, -75.1268721, ST_GeomFromText('POINT(40.9700482 -75.1268721)', 4326), 41.0017229, -75.0590605, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876017', 'Durham Pond', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.9940203, -74.4465281, ST_GeomFromText('POINT(40.9940203 -74.4465281)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876018', 'Dutch Neck', 'Cape', 'New Jersey', 'NJ', 'Cumberland', 'Bridgeton', 39.3856702, -75.2432445, ST_GeomFromText('POINT(39.3856702 -75.2432445)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876023', 'Dwars Kill', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Yonkers', 40.9837048, -73.9603472, ST_GeomFromText('POINT(40.9837048 -73.9603472)', 4326), 40.9741147, -73.9199209, '1979-09-08', '2013-03-21', 'Official', 'Board Decision', '1959-01-01'),
  ('876026', 'Dyer Cove', 'Bay', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.2606699, -75.209077, ST_GeomFromText('POINT(39.2606699 -75.209077)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876027', 'Dyer Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.2634913, -75.2109781, ST_GeomFromText('POINT(39.2634913 -75.2109781)', 4326), 39.2722752, -75.2248532, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876028', 'Eagle Bay', 'Bay', 'New Jersey', 'NJ', 'Atlantic', 'Oceanville', 39.4067837, -74.4015367, ST_GeomFromText('POINT(39.4067837 -74.4015367)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876029', 'Eagle Island', 'Island', 'New Jersey', 'NJ', 'Salem', 'Delaware City', 39.519279, -75.5232568, ST_GeomFromText('POINT(39.519279 -75.5232568)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876030', 'Eagle Island', 'Island', 'New Jersey', 'NJ', 'Hunterdon', 'Lumberville', 40.4106607, -74.9996134, ST_GeomFromText('POINT(40.4106607 -74.9996134)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876033', 'Eagle Point', 'Cape', 'New Jersey', 'NJ', 'Gloucester', 'Philadelphia', 39.877891, -75.1651781, ST_GeomFromText('POINT(39.877891 -75.1651781)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876034', 'Eagle Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0512276, -74.096805, ST_GeomFromText('POINT(40.0512276 -74.096805)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876039', 'East Branch Bass River', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'New Gretna', 39.6156739, -74.4465383, ST_GeomFromText('POINT(39.6156739 -74.4465383)', 4326), 39.6509519, -74.4118145, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876040', 'East Branch Middle Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Bound Brook', 40.5844958, -74.5575142, ST_GeomFromText('POINT(40.5844958 -74.5575142)', 4326), 40.6162135, -74.4854318, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876041', 'East Branch Pond (historical)', 'Lake', 'New Jersey', 'NJ', 'Cumberland', 'Port Norris', 39.2109474, -75.0818474, ST_GeomFromText('POINT(39.2109474 -75.0818474)', 4326), NULL, NULL, '1979-09-08', '2020-03-31', NULL, NULL, NULL),
  ('876042', 'East Branch Rahway River', 'Stream', 'New Jersey', 'NJ', 'Union', 'Roselle', 40.7093417, -74.2990968, ST_GeomFromText('POINT(40.7093417 -74.2990968)', 4326), 40.7653785, -74.2507023, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876043', 'East Branch Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Somerset', 'Bound Brook', 40.5863373, -74.5568386, ST_GeomFromText('POINT(40.5863373 -74.5568386)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876046', 'East Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Heislerville', 39.1733407, -74.8997855, ST_GeomFromText('POINT(39.1733407 -74.8997855)', 4326), 39.2216981, -74.885838, '1979-09-08', '2014-05-13', NULL, NULL, NULL),
  ('876047', 'East Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Keyport', 40.4469879, -74.1584605, ST_GeomFromText('POINT(40.4469879 -74.1584605)', 4326), 40.400343, -74.1659546, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876048', 'East Creek Pond', 'Reservoir', 'New Jersey', 'NJ', 'Cape May', 'Heislerville', 39.2276768, -74.8843808, ST_GeomFromText('POINT(39.2276768 -74.8843808)', 4326), NULL, NULL, '1979-09-08', '2022-08-05', NULL, NULL, NULL),
  ('876053', 'East Highland Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Wawayanda', 41.1720968, -74.4531559, ST_GeomFromText('POINT(41.1720968 -74.4531559)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('876054', 'East Lake', 'Reservoir', 'New Jersey', 'NJ', 'Cumberland', 'Bridgeton', 39.4296607, -75.2226849, ST_GeomFromText('POINT(39.4296607 -75.2226849)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('876055', 'East Lake', 'Reservoir', 'New Jersey', 'NJ', 'Salem', 'Woodstown', 39.6446256, -75.3072257, ST_GeomFromText('POINT(39.6446256 -75.3072257)', 4326), NULL, NULL, '1979-09-08', '2020-04-10', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876056', 'East Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Pompton Plains', 40.9746007, -74.3562115, ST_GeomFromText('POINT(40.9746007 -74.3562115)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876062', 'East Point', 'Cape', 'New Jersey', 'NJ', 'Cumberland', 'Port Norris', 39.1948362, -75.0287888, ST_GeomFromText('POINT(39.1948362 -75.0287888)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876066', 'East Sedge', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.569007, -74.2762534, ST_GeomFromText('POINT(39.569007 -74.2762534)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876075', 'Eastern Cross', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.3237253, -75.2782467, ST_GeomFromText('POINT(39.3237253 -75.2782467)', 4326), 39.3254591, -75.2554572, '1979-09-08', '2013-03-21', 'Official', 'Board Decision', '1954-01-01'),
  ('876078', 'Eastmans Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Morristown', 40.8531957, -74.3956375, ST_GeomFromText('POINT(40.8531957 -74.3956375)', 4326), 40.8497061, -74.4297767, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876086', 'Echo Lake', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1323186, -74.2085479, ST_GeomFromText('POINT(40.1323186 -74.2085479)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', 'Official', 'Board Decision', '1980-01-01'),
  ('876087', 'Echo Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.0597274, -74.4099917, ST_GeomFromText('POINT(41.0597274 -74.4099917)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', 'Official', 'Board Decision', '1906-01-01'),
  ('876091', 'Jeddys Pond', 'Reservoir', 'New Jersey', 'NJ', 'Cumberland', 'Bridgeton', 39.4331545, -75.2397116, ST_GeomFromText('POINT(39.4331545 -75.2397116)', 4326), NULL, NULL, '2022-07-26', '2023-06-14', 'Official', 'Board Decision', '2022-07-14'),
  ('876095', 'Edge Cove', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5948405, -74.3154216, ST_GeomFromText('POINT(39.5948405 -74.3154216)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876100', 'Edges Brook', 'Stream', 'New Jersey', 'NJ', 'Mercer', 'Trenton East', 40.1941512, -74.6555758, ST_GeomFromText('POINT(40.1941512 -74.6555758)', 4326), 40.2119819, -74.6212864, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876105', 'Edgewood Lake', 'Lake', 'New Jersey', 'NJ', 'Camden', 'Clementon', 39.8270709, -74.9723682, ST_GeomFromText('POINT(39.8270709 -74.9723682)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('876111', 'Edison Pond', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.0618801, -74.5644684, ST_GeomFromText('POINT(41.0618801 -74.5644684)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876115', 'Edward Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Sea Isle City', 39.22976, -74.6481138, ST_GeomFromText('POINT(39.22976 -74.6481138)', 4326), 39.2435669, -74.6589553, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876116', 'Edwards Run', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Woodbury', 39.8074728, -75.2013624, ST_GeomFromText('POINT(39.8074728 -75.2013624)', 4326), 39.7395014, -75.1645088, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876117', 'Egbert Lake', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.9971132, -74.4778888, ST_GeomFromText('POINT(40.9971132 -74.4778888)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876120', 'Egg Harbor City Lake', 'Lake', 'New Jersey', 'NJ', 'Atlantic', 'Green Bank', 39.560296, -74.6114573, ST_GeomFromText('POINT(39.560296 -74.6114573)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('876121', 'Egg Island', 'Island', 'New Jersey', 'NJ', 'Atlantic', 'Brigantine Inlet', 39.4773396, -74.3554235, ST_GeomFromText('POINT(39.4773396 -74.3554235)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876122', 'Egg Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.6351189, -74.2098617, ST_GeomFromText('POINT(39.6351189 -74.2098617)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876123', 'Egg Island Flats', 'Flat', 'New Jersey', 'NJ', 'Cumberland', 'Fortescue', 39.1359468, -75.1318501, ST_GeomFromText('POINT(39.1359468 -75.1318501)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876124', 'Egg Island Point', 'Cape', 'New Jersey', 'NJ', 'Cumberland', 'Fortescue', 39.1776138, -75.1371283, ST_GeomFromText('POINT(39.1776138 -75.1371283)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876126', 'Eight Day Swamp', 'Swamp', 'New Jersey', 'NJ', 'Bergen', 'Weehawken', 40.8317668, -74.0737525, ST_GeomFromText('POINT(40.8317668 -74.0737525)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876128', 'Eightmile Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'West Creek', 39.7236182, -74.3010682, ST_GeomFromText('POINT(39.7236182 -74.3010682)', 4326), 39.7567862, -74.2956987, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876129', 'Eightmile Point', 'Cape', 'New Jersey', 'NJ', 'Burlington', 'Frankford', 40.0106677, -75.0379497, ST_GeomFromText('POINT(40.0106677 -75.0379497)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876132', 'Elba Point', 'Cape', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9442651, -74.6396053, ST_GeomFromText('POINT(40.9442651 -74.6396053)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876136', 'Elder Island', 'Island', 'New Jersey', 'NJ', 'Atlantic', 'Brigantine Inlet', 39.4501173, -74.3393117, ST_GeomFromText('POINT(39.4501173 -74.3393117)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876137', 'Elder Point', 'Cape', 'New Jersey', 'NJ', 'Cumberland', 'Port Norris', 39.2112252, -75.0468453, ST_GeomFromText('POINT(39.2112252 -75.0468453)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876144', 'Electric Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Hackettstown', 40.7869429, -74.7738075, ST_GeomFromText('POINT(40.7869429 -74.7738075)', 4326), 40.8203861, -74.7893858, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876145', 'Elephant Swamp', 'Swamp', 'New Jersey', 'NJ', 'Gloucester', 'Pitman West', 39.6453923, -75.1624025, ST_GeomFromText('POINT(39.6453923 -75.1624025)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876146', 'Elisha Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Cassville', 40.0367165, -74.4295192, ST_GeomFromText('POINT(40.0367165 -74.4295192)', 4326), 40.0300667, -74.4382793, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876150', 'Elizabeth River', 'Stream', 'New Jersey', 'NJ', 'Union', 'Elizabeth', 40.6439944, -74.1900355, ST_GeomFromText('POINT(40.6439944 -74.1900355)', 4326), 40.7105138, -74.2451964, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876153', 'Elk Lake', 'Reservoir', 'New Jersey', 'NJ', 'Cumberland', 'Shiloh', 39.4129932, -75.3055401, ST_GeomFromText('POINT(39.4129932 -75.3055401)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('876154', 'Elkinton Millpond', 'Lake', 'New Jersey', 'NJ', 'Salem', 'Alloway', 39.5501283, -75.3718484, ST_GeomFromText('POINT(39.5501283 -75.3718484)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('876157', 'Elliots Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Green Bank', 39.552997, -74.6122742, ST_GeomFromText('POINT(39.552997 -74.6122742)', 4326), 39.5134689, -74.6027523, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876160', 'Ellis Point', 'Cape', 'New Jersey', 'NJ', 'Monmouth', 'Point Pleasant', 40.0990044, -74.0595819, ST_GeomFromText('POINT(40.0990044 -74.0595819)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876166', 'Elmer Lake', 'Reservoir', 'New Jersey', 'NJ', 'Salem', 'Elmer', 39.5938621, -75.1651501, ST_GeomFromText('POINT(39.5938621 -75.1651501)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('876174', 'Elsinboro Point', 'Cape', 'New Jersey', 'NJ', 'Salem', 'Delaware City', 39.540668, -75.5304791, ST_GeomFromText('POINT(39.540668 -75.5304791)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876185', 'Emerald Lake', 'Lake', 'New Jersey', 'NJ', 'Gloucester', 'Pitman West', 39.7446078, -75.1481542, ST_GeomFromText('POINT(39.7446078 -75.1481542)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('876191', 'Lake Emma', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.9839277, -74.4796638, ST_GeomFromText('POINT(40.9839277 -74.4796638)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876194', 'Endless Branch', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Newfield', 39.5414148, -75.0877762, ST_GeomFromText('POINT(39.5414148 -75.0877762)', 4326), 39.5714418, -75.1098883, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876200', 'English Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3303934, -74.677938, ST_GeomFromText('POINT(39.3303934 -74.677938)', 4326), 39.3838914, -74.6471804, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876204', 'Ephraim Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Wildwood', 38.983724, -74.8365571, ST_GeomFromText('POINT(38.983724 -74.8365571)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1943-01-01'),
  ('876214', 'Lake Erskine', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0936732, -74.2538971, ST_GeomFromText('POINT(41.0936732 -74.2538971)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876222', 'Lake Estling', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.8803856, -74.4982671, ST_GeomFromText('POINT(40.8803856 -74.4982671)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876224', 'Etra Lake', 'Reservoir', 'New Jersey', 'NJ', 'Mercer', 'Jamesburg', 40.2536757, -74.4998801, ST_GeomFromText('POINT(40.2536757 -74.4998801)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876228', 'Evans Pond', 'Reservoir', 'New Jersey', 'NJ', 'Camden', 'Camden', 39.8959929, -75.0221101, ST_GeomFromText('POINT(39.8959929 -75.0221101)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('876245', 'Ewan Lake', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Pitman West', 39.69449, -75.1914449, ST_GeomFromText('POINT(39.69449 -75.1914449)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('876255', 'Factory Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Toms River', 39.8970285, -74.2264438, ST_GeomFromText('POINT(39.8970285 -74.2264438)', 4326), 39.8289067, -74.3314576, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876284', 'Fairview Lake', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Flatbrookville', 41.0766854, -74.912453, ST_GeomFromText('POINT(41.0766854 -74.912453)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('876293', 'False Egg Island Point', 'Cape', 'New Jersey', 'NJ', 'Cumberland', 'Fortescue', 39.2006695, -75.1676857, ST_GeomFromText('POINT(39.2006695 -75.1676857)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876299', 'Faraway Branch', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Buena', 39.6153505, -74.9252129, ST_GeomFromText('POINT(39.6153505 -74.9252129)', 4326), 39.6202778, -74.9911111, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876307', 'Farrington Lake', 'Reservoir', 'New Jersey', 'NJ', 'Middlesex', 'New Brunswick', 40.4398515, -74.4626019, ST_GeomFromText('POINT(40.4398515 -74.4626019)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876308', 'Farrows Run', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Runnemede', 39.7982495, -75.0751162, ST_GeomFromText('POINT(39.7982495 -75.0751162)', 4326), 39.7972769, -75.0527143, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876309', 'Fawn Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.1148254, -74.527004, ST_GeomFromText('POINT(41.1148254 -74.527004)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('876312', 'Featherbed Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Jenkins', 39.738961, -74.6001506, ST_GeomFromText('POINT(39.738961 -74.6001506)', 4326), 39.7944164, -74.5913744, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876313', 'Federal Hill', 'Summit', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0043692, -74.3082486, ST_GeomFromText('POINT(41.0043692 -74.3082486)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('876314', 'Federal Springs', 'Spring', 'New Jersey', 'NJ', 'Warren', 'Blairstown', 40.968431, -74.8823917, ST_GeomFromText('POINT(40.968431 -74.8823917)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876318', 'Fence Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Green Bank', 39.5610455, -74.5044547, ST_GeomFromText('POINT(39.5610455 -74.5044547)', 4326), 39.5572323, -74.5097306, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876320', 'Fenwick Creek', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Salem', 39.5786034, -75.4736495, ST_GeomFromText('POINT(39.5786034 -75.4736495)', 4326), 39.5796287, -75.4014659, '1979-09-08', '2013-03-21', 'Official', 'Board Decision', '1940-11-01'),
  ('876322', 'Fern Brook', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Columbus', 40.1083244, -74.6851659, ST_GeomFromText('POINT(40.1083244 -74.6851659)', 4326), 40.0992852, -74.6546316, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876327', 'Ferry Point', 'Cape', 'New Jersey', 'NJ', 'Middlesex', 'South Amboy', 40.4995501, -74.2668123, ST_GeomFromText('POINT(40.4995501 -74.2668123)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876340', 'Finley Run', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Alloway', 39.5238351, -75.2657461, ST_GeomFromText('POINT(39.5238351 -75.2657461)', 4326), 39.5117928, -75.2927238, '1979-09-08', '2013-03-21', 'Official', 'Board Decision', '1898-01-01'),
  ('876343', 'Firman Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0117797, -74.819334, ST_GeomFromText('POINT(39.0117797 -74.819334)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1943-01-01'),
  ('876345', 'First Branch', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Egg Harbor City', 39.6115031, -74.6394557, ST_GeomFromText('POINT(39.6115031 -74.6394557)', 4326), 39.593412, -74.6454585, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876346', 'First Neshanic River', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'Hopewell', 40.479802, -74.8582086, ST_GeomFromText('POINT(40.479802 -74.8582086)', 4326), 40.4979776, -74.8841, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876348', 'First Watchung Mountain', 'Ridge', 'New Jersey', 'NJ', 'Essex', 'Orange', 40.829278, -74.2238545, ST_GeomFromText('POINT(40.829278 -74.2238545)', 4326), NULL, NULL, '1979-09-08', '2018-08-01', NULL, NULL, NULL),
  ('876350', 'Fish Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'New Gretna', 39.5695913, -74.4180836, ST_GeomFromText('POINT(39.5695913 -74.4180836)', 4326), 39.567745, -74.4256407, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876351', 'Fish Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5090065, -74.345423, ST_GeomFromText('POINT(39.5090065 -74.345423)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876352', 'Fisher Point', 'Cape', 'New Jersey', 'NJ', 'Camden', 'Camden', 39.9751125, -75.0746179, ST_GeomFromText('POINT(39.9751125 -75.0746179)', 4326), NULL, NULL, '1979-09-08', '2011-07-21', 'Official', 'Board Decision', '1938-01-01'),
  ('876354', 'Fishing Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Fortescue', 39.2112251, -75.1612964, ST_GeomFromText('POINT(39.2112251 -75.1612964)', 4326), 39.2188889, -75.135, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876355', 'Fishing Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Bombay Hook Island', 39.3547581, -75.3813708, ST_GeomFromText('POINT(39.3547581 -75.3813708)', 4326), 39.3623837, -75.3864107, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876356', 'Fishing Creek', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Canton', 39.4422748, -75.4839277, ST_GeomFromText('POINT(39.4422748 -75.4839277)', 4326), 39.4568889, -75.4758811, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876357', 'Fishing Creek', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Taylors Bridge', 39.4814253, -75.5224872, ST_GeomFromText('POINT(39.4814253 -75.5224872)', 4326), 39.4872506, -75.5172944, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876358', 'Fishing Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Rio Grande', 39.039103, -74.9357097, ST_GeomFromText('POINT(39.039103 -74.9357097)', 4326), 39.0338862, -74.8718905, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876370', 'Flat Brook', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Flatbrookville', 41.0969712, -74.9691421, ST_GeomFromText('POINT(41.0969712 -74.9691421)', 4326), 41.1889732, -74.8470908, '1979-09-08', '2014-06-06', NULL, NULL, NULL),
  ('876371', 'Flat Creek', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'South Amboy', 40.4610665, -74.2595959, ST_GeomFromText('POINT(40.4610665 -74.2595959)', 4326), 40.4527111, -74.2678624, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876373', 'Flat Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Marmora', 39.2901154, -74.6446032, ST_GeomFromText('POINT(39.2901154 -74.6446032)', 4326), 39.2747222, -74.6452778, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876374', 'Flat Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Marmora', 39.2920129, -74.7179693, ST_GeomFromText('POINT(39.2920129 -74.7179693)', 4326), 39.291249, -74.7346902, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876375', 'Flat Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3111641, -74.6874136, ST_GeomFromText('POINT(39.3111641 -74.6874136)', 4326), 39.325816, -74.7129294, '1979-09-08', '2013-03-28', NULL, NULL, NULL),
  ('876376', 'Flat Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Oceanville', 39.3881724, -74.4684842, ST_GeomFromText('POINT(39.3881724 -74.4684842)', 4326), 39.3915159, -74.4822541, '1979-09-08', '2013-03-28', NULL, NULL, NULL),
  ('876377', 'Flat Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Keyport', 40.4482942, -74.1649595, ST_GeomFromText('POINT(40.4482942 -74.1649595)', 4326), 40.3952778, -74.1769444, '1979-09-08', '2013-03-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876378', 'Flat Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.6359523, -74.1962501, ST_GeomFromText('POINT(39.6359523 -74.1962501)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876379', 'Flat Rock Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Central Park', 40.8732767, -73.9806274, ST_GeomFromText('POINT(40.8732767 -73.9806274)', 4326), 40.8888796, -73.9534445, '1979-09-08', '2013-03-28', NULL, NULL, NULL),
  ('876382', 'Flatteras Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5210006, -74.3072695, ST_GeomFromText('POINT(39.5210006 -74.3072695)', 4326), 39.5152733, -74.3193018, '1979-09-08', '2013-03-28', NULL, NULL, NULL),
  ('876386', 'Fletcher Lake', 'Lake', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.2077442, -74.007437, ST_GeomFromText('POINT(40.2077442 -74.007437)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', 'Official', 'Board Decision', '1954-01-01'),
  ('876387', 'Floating Island', 'Island', 'New Jersey', 'NJ', 'Morris', 'Stanhope', 40.9087098, -74.6593279, ST_GeomFromText('POINT(40.9087098 -74.6593279)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876396', 'Flower Mound', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Wildwood', 38.9653906, -74.8712813, ST_GeomFromText('POINT(38.9653906 -74.8712813)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('876399', 'Ford Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Cape May', 38.9565453, -74.8907403, ST_GeomFromText('POINT(38.9565453 -74.8907403)', 4326), 38.961366, -74.896414, '1979-09-08', '2011-10-03', 'Official', 'Board Decision', '1944-01-01'),
  ('876406', 'Forest Hill Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.0282907, -74.3970004, ST_GeomFromText('POINT(41.0282907 -74.3970004)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876407', 'Forest Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9739974, -74.728766, ST_GeomFromText('POINT(40.9739974 -74.728766)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('876409', 'Forge Pond', 'Lake', 'New Jersey', 'NJ', 'Ocean', 'Lakewood', 40.0692336, -74.1366551, ST_GeomFromText('POINT(40.0692336 -74.1366551)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', 'Official', 'Board Decision', '1954-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876410', 'Forge Pond', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Morristown', 40.8556251, -74.3980813, ST_GeomFromText('POINT(40.8556251 -74.3980813)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876411', 'Forked Brook', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Whiting', 39.9816418, -74.3923545, ST_GeomFromText('POINT(39.9816418 -74.3923545)', 4326), 39.9625, -74.3794444, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876412', 'Forked Brook', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Branchville', 41.2379029, -74.7443461, ST_GeomFromText('POINT(41.2379029 -74.7443461)', 4326), 41.2736418, -74.7379142, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876414', 'Forked River', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Forked River', 39.8253971, -74.1601385, ST_GeomFromText('POINT(39.8253971 -74.1601385)', 4326), 39.8266667, -74.1758333, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876415', 'Forked River Mountain', 'Summit', 'New Jersey', 'NJ', 'Ocean', 'Brookville', 39.8475918, -74.292058, ST_GeomFromText('POINT(39.8475918 -74.292058)', 4326), NULL, NULL, '1979-09-08', '2021-11-27', NULL, NULL, NULL),
  ('876422', 'Fort Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Wildwood', 38.9815017, -74.8615584, ST_GeomFromText('POINT(38.9815017 -74.8615584)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876424', 'Fortescue Beach', 'Beach', 'New Jersey', 'NJ', 'Cumberland', 'Fortescue', 39.2367809, -75.1732416, ST_GeomFromText('POINT(39.2367809 -75.1732416)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1898-01-01'),
  ('876426', 'Fortescue Neck', 'Cape', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.2562254, -75.1651857, ST_GeomFromText('POINT(39.2562254 -75.1651857)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1898-01-01'),
  ('876428', 'Foster Run', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Bridgeton', 39.4944498, -75.2447109, ST_GeomFromText('POINT(39.4944498 -75.2447109)', 4326), 39.4911111, -75.2133333, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876432', 'Foulertons Brook', 'Stream', 'New Jersey', 'NJ', 'Essex', 'Caldwell', 40.8316627, -74.3286628, ST_GeomFromText('POINT(40.8316627 -74.3286628)', 4326), 40.8091482, -74.3131542, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876435', 'Fountain Spring Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0631568, -74.2673543, ST_GeomFromText('POINT(41.0631568 -74.2673543)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876440', 'Fourmile Branch', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Williamstown', 39.6942681, -74.9357969, ST_GeomFromText('POINT(39.6942681 -74.9357969)', 4326), 39.7230571, -74.9937487, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876441', 'Fourmile Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'West Creek', 39.7052222, -74.2669129, ST_GeomFromText('POINT(39.7052222 -74.2669129)', 4326), 39.7675705, -74.2966747, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876445', 'Fowler Island', 'Island', 'New Jersey', 'NJ', 'Cumberland', 'Port Norris', 39.2156697, -75.0387894, ST_GeomFromText('POINT(39.2156697 -75.0387894)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876446', 'Fox Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0567633, -74.2190352, ST_GeomFromText('POINT(41.0567633 -74.2190352)', 4326), 41.0786111, -74.2413889, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876450', 'Fox Hill Range', 'Range', 'New Jersey', 'NJ', 'Morris', 'Califon', 40.7477437, -74.7821145, ST_GeomFromText('POINT(40.7477437 -74.7821145)', 4326), NULL, NULL, '1979-09-08', '2022-08-13', NULL, NULL, NULL),
  ('876451', 'Fox Hollow Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Newton East', 41.0407085, -74.6644711, ST_GeomFromText('POINT(41.0407085 -74.6644711)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('876453', 'Fox Island', 'Island', 'New Jersey', 'NJ', 'Passaic', 'Greenwood Lake', 41.1692619, -74.3379294, ST_GeomFromText('POINT(41.1692619 -74.3379294)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876455', 'Fox Trail Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.0450978, -74.5676013, ST_GeomFromText('POINT(41.0450978 -74.5676013)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876456', 'Foxboro Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5376179, -74.2984765, ST_GeomFromText('POINT(39.5376179 -74.2984765)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876457', 'Foxs Pond', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.9067622, -74.5171966, ST_GeomFromText('POINT(40.9067622 -74.5171966)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876459', 'Francis Lake', 'Lake', 'New Jersey', 'NJ', 'Warren', 'Tranquility', 40.9712643, -74.8390932, ST_GeomFromText('POINT(40.9712643 -74.8390932)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('876472', 'Franklin Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Paterson', 40.9886757, -74.2215813, ST_GeomFromText('POINT(40.9886757 -74.2215813)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876476', 'Franklin Pond', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.1080488, -74.5857005, ST_GeomFromText('POINT(41.1080488 -74.5857005)', 4326), NULL, NULL, '1979-09-08', '2023-04-05', NULL, NULL, NULL),
  ('876477', 'Franklin Pond Creek', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.1068122, -74.5831266, ST_GeomFromText('POINT(41.1068122 -74.5831266)', 4326), 41.1068789, -74.5522356, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('876496', 'Franklin Swamp', 'Swamp', 'New Jersey', 'NJ', 'Bergen', 'Paterson', 40.9934308, -74.2326465, ST_GeomFromText('POINT(40.9934308 -74.2326465)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876498', 'Franklinville Lake', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Newfield', 39.6207154, -75.0772651, ST_GeomFromText('POINT(39.6207154 -75.0772651)', 4326), NULL, NULL, '1979-09-08', '2022-08-05', NULL, NULL, NULL),
  ('876507', 'French Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Hackensack', 40.9145595, -74.0298492, ST_GeomFromText('POINT(40.9145595 -74.0298492)', 4326), 40.9195931, -74.0157723, '1979-09-08', '2013-03-28', NULL, NULL, NULL),
  ('876509', 'French Lake', 'Lake', 'New Jersey', 'NJ', 'Warren', 'Blairstown', 40.9614232, -74.8968329, ST_GeomFromText('POINT(40.9614232 -74.8968329)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('876510', 'Frenches Pond', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Tranquility', 40.9222579, -74.7719334, ST_GeomFromText('POINT(40.9222579 -74.7719334)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876513', 'Fresh Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.7222484, -74.2003191, ST_GeomFromText('POINT(39.7222484 -74.2003191)', 4326), 39.7130556, -74.2191667, '1979-09-08', '2013-03-28', NULL, NULL, NULL),
  ('876514', 'Fresh Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Forked River', 39.7973675, -74.1811037, ST_GeomFromText('POINT(39.7973675 -74.1811037)', 4326), 39.7991315, -74.1960865, '1979-09-08', '2013-03-28', NULL, NULL, NULL),
  ('876517', 'Fresh Pond (historical)', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0920599, -74.0904163, ST_GeomFromText('POINT(40.0920599 -74.0904163)', 4326), NULL, NULL, '1979-09-08', '2020-03-12', NULL, NULL, NULL),
  ('876530', 'Friendship Cranberry Bogs', 'Swamp', 'New Jersey', 'NJ', 'Burlington', 'Jenkins', 39.7395629, -74.585154, ST_GeomFromText('POINT(39.7395629 -74.585154)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876531', 'Friendship Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Pemberton', 39.9229682, -74.716537, ST_GeomFromText('POINT(39.9229682 -74.716537)', 4326), 39.8571617, -74.6308351, '1979-09-08', '2013-03-28', NULL, NULL, NULL),
  ('876532', 'Friendship Creek Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Pemberton', 39.8809986, -74.6980754, ST_GeomFromText('POINT(39.8809986 -74.6980754)', 4326), 39.9020051, -74.6940078, '1979-09-08', '2013-03-28', NULL, NULL, NULL),
  ('876537', 'Fulling Mill Stream', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Rio Grande', 39.033724, -74.9215614, ST_GeomFromText('POINT(39.033724 -74.9215614)', 4326), 39.0160463, -74.9076417, '1979-09-08', '2013-03-28', 'Official', 'Board Decision', '1944-01-01'),
  ('876541', 'Fyke Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0750963, -74.1970902, ST_GeomFromText('POINT(41.0750963 -74.1970902)', 4326), 41.0519444, -74.1925, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876542', 'Game Branch', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Penns Grove', 39.6916634, -75.4547212, ST_GeomFromText('POINT(39.6916634 -75.4547212)', 4326), 39.7370428, -75.4312813, '1979-09-08', '2013-03-28', NULL, NULL, NULL),
  ('876543', 'Game Creek', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Penns Grove', 39.6778378, -75.4635322, ST_GeomFromText('POINT(39.6778378 -75.4635322)', 4326), 39.7075828, -75.372541, '1979-09-08', '2013-03-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876546', 'Gar Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0097722, -74.851428, ST_GeomFromText('POINT(39.0097722 -74.851428)', 4326), 39.0154659, -74.8609149, '1979-09-08', '2013-03-28', 'Official', 'Board Decision', '1944-01-01'),
  ('876550', 'Garden Pond', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Pompton Plains', 40.9950976, -74.2937598, ST_GeomFromText('POINT(40.9950976 -74.2937598)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876556', 'Gardners Pond', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Newton East', 41.0046521, -74.7387395, ST_GeomFromText('POINT(41.0046521 -74.7387395)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('876565', 'Garrison Lake', 'Lake', 'New Jersey', 'NJ', 'Gloucester', 'Pitman West', 39.6312869, -75.1290188, ST_GeomFromText('POINT(39.6312869 -75.1290188)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('876566', 'Garrison Pond', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0600161, -74.1276062, ST_GeomFromText('POINT(41.0600161 -74.1276062)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876569', 'Gaskin Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Lakehurst', 40.0845729, -74.33532, ST_GeomFromText('POINT(40.0845729 -74.33532)', 4326), 40.0930765, -74.3399334, '1979-09-08', '2013-03-28', NULL, NULL, NULL),
  ('876573', 'Gates Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Chatsworth', 39.8398641, -74.5285892, ST_GeomFromText('POINT(39.8398641 -74.5285892)', 4326), 39.8541885, -74.4850731, '1979-09-08', '2013-03-28', NULL, NULL, NULL),
  ('876576', 'Gaunt Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5765071, -74.3259777, ST_GeomFromText('POINT(39.5765071 -74.3259777)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876577', 'Gaunts Brook', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Browns Mills', 39.9836395, -74.5094168, ST_GeomFromText('POINT(39.9836395 -74.5094168)', 4326), 40.0106064, -74.4471306, '1979-09-08', '2013-03-28', NULL, NULL, NULL),
  ('876580', 'Genesis Bay', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0653912, -74.8046109, ST_GeomFromText('POINT(39.0653912 -74.8046109)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1943-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876581', 'Lake Genevieve', 'Lake', 'New Jersey', 'NJ', 'Warren', 'Blairstown', 40.9942203, -74.9663321, ST_GeomFromText('POINT(40.9942203 -74.9663321)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('876586', 'Lake George', 'Lake', 'New Jersey', 'NJ', 'Camden', 'Runnemede', 39.7607085, -75.0066641, ST_GeomFromText('POINT(39.7607085 -75.0066641)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('876591', 'Lake Gerard', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.1034443, -74.5477508, ST_GeomFromText('POINT(41.1034443 -74.5477508)', 4326), NULL, NULL, '1979-09-08', '2023-04-05', NULL, NULL, NULL),
  ('876592', 'German Valley', 'Valley', 'New Jersey', 'NJ', 'Morris', 'Chester', 40.799403, -74.7464725, ST_GeomFromText('POINT(40.799403 -74.7464725)', 4326), 40.8405186, -74.678683, '1979-09-08', '2022-08-13', NULL, NULL, NULL),
  ('876596', 'Germany Flats', 'Flat', 'New Jersey', 'NJ', 'Sussex', 'Newton East', 41.083708, -74.6551622, ST_GeomFromText('POINT(41.083708 -74.6551622)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876602', 'Gibson Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3470176, -74.7109365, ST_GeomFromText('POINT(39.3470176 -74.7109365)', 4326), 39.3719949, -74.7962952, '1979-09-08', '2013-03-28', NULL, NULL, NULL),
  ('876604', 'Giffords Mill Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.6066801, -74.3522716, ST_GeomFromText('POINT(39.6066801 -74.3522716)', 4326), 39.6237296, -74.3854246, '1979-09-08', '2013-03-28', NULL, NULL, NULL),
  ('876608', 'Mount Gilboa', 'Summit', 'New Jersey', 'NJ', 'Hunterdon', 'Stockton', 40.3889863, -74.9559992, ST_GeomFromText('POINT(40.3889863 -74.9559992)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('876611', 'Gillespie Hill', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Mendham', 40.784127, -74.5098132, ST_GeomFromText('POINT(40.784127 -74.5098132)', 4326), NULL, NULL, '1979-09-08', '2018-04-17', NULL, NULL, NULL),
  ('876614', 'Gilman Lake', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Pitman West', 39.6851806, -75.1819124, ST_GeomFromText('POINT(39.6851806 -75.1819124)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876616', 'Gladstone Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Gladstone', 40.7320414, -74.6671468, ST_GeomFromText('POINT(40.7320414 -74.6671468)', 4326), 40.7636087, -74.6573353, '1979-09-08', '2013-03-28', NULL, NULL, NULL),
  ('876617', 'Glasmere Ponds', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Ramsey', 41.1194708, -74.2270922, ST_GeomFromText('POINT(41.1194708 -74.2270922)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876623', 'Glen Lake', 'Lake', 'New Jersey', 'NJ', 'Gloucester', 'Woodbury', 39.8147062, -75.1415223, ST_GeomFromText('POINT(39.8147062 -75.1415223)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('876624', 'Glen Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.0407206, -74.6072846, ST_GeomFromText('POINT(41.0407206 -74.6072846)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('876625', 'Glen Lake', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Pitman West', 39.7240053, -75.1255364, ST_GeomFromText('POINT(39.7240053 -75.1255364)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('876629', 'Glen Wild Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.023529, -74.3303053, ST_GeomFromText('POINT(41.023529 -74.3303053)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876641', 'Glenwood Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Hamburg', 41.2293973, -74.5167652, ST_GeomFromText('POINT(41.2293973 -74.5167652)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('876646', 'Gloucester Point', 'Cape', 'New Jersey', 'NJ', 'Camden', 'Philadelphia', 39.8940021, -75.1298982, ST_GeomFromText('POINT(39.8940021 -75.1298982)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876648', 'Glovers Pond', 'Lake', 'New Jersey', 'NJ', 'Warren', 'Blairstown', 40.9470386, -74.8905548, ST_GeomFromText('POINT(40.9470386 -74.8905548)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('876651', 'Goat Hill', 'Summit', 'New Jersey', 'NJ', 'Hunterdon', 'Lambertville', 40.3459315, -74.9373874, ST_GeomFromText('POINT(40.3459315 -74.9373874)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876652', 'Godfrey Lake', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0999715, -74.1045087, ST_GeomFromText('POINT(40.0999715 -74.1045087)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', 'Official', 'Board Decision', '1950-09-14'),
  ('876654', 'Goffle Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Paterson', 40.9370503, -74.1633569, ST_GeomFromText('POINT(40.9370503 -74.1633569)', 4326), 41.0064863, -74.1812558, '1979-09-08', '2013-03-28', NULL, NULL, NULL),
  ('876657', 'Gold Run', 'Stream', 'New Jersey', 'NJ', 'Mercer', 'Trenton West', 40.2425008, -74.8229375, ST_GeomFromText('POINT(40.2425008 -74.8229375)', 4326), 40.2640542, -74.8049909, '1979-09-08', '2013-03-28', NULL, NULL, NULL),
  ('876661', 'Golders Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Ocean City', 39.2812266, -74.6151575, ST_GeomFromText('POINT(39.2812266 -74.6151575)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876668', 'Goodluck Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Seaside Park', 39.9309517, -74.1056929, ST_GeomFromText('POINT(39.9309517 -74.1056929)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876669', 'Goodluck Sedge', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5467847, -74.2943096, ST_GeomFromText('POINT(39.5467847 -74.2943096)', 4326), NULL, NULL, '1979-09-08', '2011-07-21', 'Official', 'Board Decision', '1925-11-04'),
  ('876671', 'Goodwater Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Whiting', 39.9795609, -74.3959823, ST_GeomFromText('POINT(39.9795609 -74.3959823)', 4326), 39.9675, -74.3927778, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876672', 'Goodwater Run', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Woodmansie', 39.8212292, -74.4993182, ST_GeomFromText('POINT(39.8212292 -74.4993182)', 4326), 39.8405556, -74.4858333, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876673', 'Goodwater Run', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Browns Mills', 39.988619, -74.5114982, ST_GeomFromText('POINT(39.988619 -74.5114982)', 4326), 40.0031938, -74.4915158, '1979-09-08', '2013-03-28', NULL, NULL, NULL),
  ('876674', 'Goose Cove', 'Bay', 'New Jersey', 'NJ', 'Atlantic', 'New Gretna', 39.5420623, -74.4143149, ST_GeomFromText('POINT(39.5420623 -74.4143149)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876675', 'Goose Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Seaside Park', 39.9637291, -74.1120825, ST_GeomFromText('POINT(39.9637291 -74.1120825)', 4326), 39.9644989, -74.1376707, '1979-09-08', '2013-03-28', NULL, NULL, NULL),
  ('876676', 'Goose Pond (historical)', 'Lake', 'New Jersey', 'NJ', 'Salem', 'Canton', 39.4473346, -75.4782551, ST_GeomFromText('POINT(39.4473346 -75.4782551)', 4326), NULL, NULL, '1979-09-08', '2020-03-30', NULL, NULL, NULL),
  ('876677', 'Goose Pond', 'Lake', 'New Jersey', 'NJ', 'Salem', 'Delaware City', 39.5912238, -75.5304785, ST_GeomFromText('POINT(39.5912238 -75.5304785)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876678', 'Goose Pond', 'Lake', 'New Jersey', 'NJ', 'Burlington', 'Woodmansie', 39.7807503, -74.4827324, ST_GeomFromText('POINT(39.7807503 -74.4827324)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('876679', 'Goose Pond', 'Lake', 'New Jersey', 'NJ', 'Ocean', 'Whiting', 39.9115486, -74.4401899, ST_GeomFromText('POINT(39.9115486 -74.4401899)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('876681', 'Goosebar Sedge', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5401179, -74.2759755, ST_GeomFromText('POINT(39.5401179 -74.2759755)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876682', 'Gordon Lakes', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0535336, -74.3619764, ST_GeomFromText('POINT(41.0535336 -74.3619764)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876683', 'Gordon Pond', 'Reservoir', 'New Jersey', 'NJ', 'Middlesex', 'Hightstown', 40.3332979, -74.6123171, ST_GeomFromText('POINT(40.3332979 -74.6123171)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876686', 'Goshen Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Heislerville', 39.1474438, -74.885323, ST_GeomFromText('POINT(39.1474438 -74.885323)', 4326), 39.1443735, -74.867084, '1979-09-08', '2013-03-28', NULL, NULL, NULL),
  ('876691', 'Governors Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'West Creek', 39.6822306, -74.3487525, ST_GeomFromText('POINT(39.6822306 -74.3487525)', 4326), 39.7072073, -74.391861, '1979-09-08', '2013-03-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876701', 'Grand Sprute Run', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Bridgeport', 39.7592802, -75.3332443, ST_GeomFromText('POINT(39.7592802 -75.3332443)', 4326), 39.7682385, -75.3143477, '1979-09-08', '2013-03-28', NULL, NULL, NULL),
  ('876702', 'Stanley M Levine Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.9115154, -74.1814292, ST_GeomFromText('POINT(40.9115154 -74.1814292)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('876704', 'Grandad Meadows', 'Swamp', 'New Jersey', 'NJ', 'Salem', 'Canton', 39.3984462, -75.4235305, ST_GeomFromText('POINT(39.3984462 -75.4235305)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876713', 'Grass Hollow Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Lakehurst', 40.0398051, -74.2530513, ST_GeomFromText('POINT(40.0398051 -74.2530513)', 4326), 40.0564302, -74.2426738, '1979-09-08', '2013-03-28', NULL, NULL, NULL),
  ('876714', 'Grass Pond', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Tranquility', 40.9864719, -74.8361789, ST_GeomFromText('POINT(40.9864719 -74.8361789)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('876716', 'Grassy Bay', 'Bay', 'New Jersey', 'NJ', 'Atlantic', 'Oceanville', 39.4348394, -74.3970921, ST_GeomFromText('POINT(39.4348394 -74.3970921)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876717', 'Grassy Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0112242, -74.8121114, ST_GeomFromText('POINT(39.0112242 -74.8121114)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('876718', 'Grassy Sound', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0098352, -74.8207229, ST_GeomFromText('POINT(39.0098352 -74.8207229)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('876721', 'Grassy Sound Meadow', 'Swamp', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0267799, -74.8079445, ST_GeomFromText('POINT(39.0267799 -74.8079445)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('876723', 'Gravel Hill', 'Summit', 'New Jersey', 'NJ', 'Hunterdon', 'Riegelsville', 40.5899727, -75.1416357, ST_GeomFromText('POINT(40.5899727 -75.1416357)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876724', 'Graveling Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'New Gretna', 39.5381734, -74.3934807, ST_GeomFromText('POINT(39.5381734 -74.3934807)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876725', 'Granny Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Sea Isle City', 39.1298363, -74.7168287, ST_GeomFromText('POINT(39.1298363 -74.7168287)', 4326), 39.1338889, -74.7269444, '1979-09-08', '2007-08-14', NULL, NULL, NULL),
  ('876726', 'Gravelly Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Keyport', 40.4195366, -74.2277446, ST_GeomFromText('POINT(40.4195366 -74.2277446)', 4326), 40.3741437, -74.219749, '1979-09-08', '2013-03-28', NULL, NULL, NULL),
  ('876728', 'Gravelly Run', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0437244, -74.8123892, ST_GeomFromText('POINT(39.0437244 -74.8123892)', 4326), 39.0506478, -74.8422736, '1979-09-08', '2013-03-28', 'Official', 'Board Decision', '1943-01-01'),
  ('876729', 'Gravelly Run', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Dividing Creek', 39.3379652, -75.0479937, ST_GeomFromText('POINT(39.3379652 -75.0479937)', 4326), 39.3215417, -75.08901, '1979-09-08', '2013-03-28', NULL, NULL, NULL),
  ('876730', 'Gravelly Run', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Mays Landing', 39.4272101, -74.7034049, ST_GeomFromText('POINT(39.4272101 -74.7034049)', 4326), 39.4436111, -74.6472222, '1979-09-08', '2013-03-28', NULL, NULL, NULL),
  ('876731', 'Gravelly Run', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Runnemede', 39.8444113, -75.0533795, ST_GeomFromText('POINT(39.8444113 -75.0533795)', 4326), 39.846275, -75.0281614, '1979-09-08', '2013-03-28', NULL, NULL, NULL),
  ('876734', 'Great Bay', 'Bay', 'New Jersey', 'NJ', 'Atlantic', 'New Gretna', 39.5126177, -74.3770911, ST_GeomFromText('POINT(39.5126177 -74.3770911)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876735', 'Great Bay', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.8882082, -74.4630327, ST_GeomFromText('POINT(40.8882082 -74.4630327)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876736', 'Great Bear Swamp', 'Swamp', 'New Jersey', 'NJ', 'Mercer', 'Princeton', 40.2578865, -74.6893256, ST_GeomFromText('POINT(40.2578865 -74.6893256)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876739', 'Great Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Bernardsville', 40.7055466, -74.5179436, ST_GeomFromText('POINT(40.7055466 -74.5179436)', 4326), 40.7790913, -74.4949678, '1979-09-08', '2013-03-28', NULL, NULL, NULL),
  ('876740', 'Great Cedar Swamp', 'Swamp', 'New Jersey', 'NJ', 'Cape May', 'Woodbine', 39.2037255, -74.7718312, ST_GeomFromText('POINT(39.2037255 -74.7718312)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876742', 'Great Cove', 'Bay', 'New Jersey', 'NJ', 'Morris', 'Stanhope', 40.9423206, -74.6268271, ST_GeomFromText('POINT(40.9423206 -74.6268271)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876745', 'Great Egg Harbor Bay', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Ocean City', 39.2915045, -74.605157, ST_GeomFromText('POINT(39.2915045 -74.605157)', 4326), NULL, NULL, '1979-09-08', '2016-10-19', 'Official', 'Board Decision', '1950-01-01'),
  ('876746', 'Great Egg Harbor Inlet', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Ocean City', 39.2998381, -74.545432, ST_GeomFromText('POINT(39.2998381 -74.545432)', 4326), NULL, NULL, '1979-09-08', '2011-07-21', 'Official', 'Board Decision', '1950-01-01'),
  ('876747', 'Great Egg Harbor River', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3042822, -74.6496034, ST_GeomFromText('POINT(39.3042822 -74.6496034)', 4326), 39.7990048, -74.9362756, '1979-09-08', '2014-07-09', 'Official', 'Board Decision', '1950-01-01'),
  ('876748', 'Great Flat', 'Flat', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0423355, -74.7979439, ST_GeomFromText('POINT(39.0423355 -74.7979439)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1943-01-01'),
  ('876750', 'Great Island', 'Island', 'New Jersey', 'NJ', 'Atlantic', 'Atlantic City', 39.3634499, -74.4823737, ST_GeomFromText('POINT(39.3634499 -74.4823737)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876753', 'Great Notch Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.8812992, -74.1907195, ST_GeomFromText('POINT(40.8812992 -74.1907195)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876754', 'Great Piece Meadows', 'Swamp', 'New Jersey', 'NJ', 'Essex', 'Pompton Plains', 40.8978767, -74.3095935, ST_GeomFromText('POINT(40.8978767 -74.3095935)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876755', 'Great Sound', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0973359, -74.7757205, ST_GeomFromText('POINT(39.0973359 -74.7757205)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1943-01-01'),
  ('876756', 'Great Swamp', 'Swamp', 'New Jersey', 'NJ', 'Atlantic', 'Atsion', 39.6787288, -74.6812692, ST_GeomFromText('POINT(39.6787288 -74.6812692)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876757', 'Great Swamp', 'Swamp', 'New Jersey', 'NJ', 'Morris', 'Chatham', 40.7167678, -74.4529312, ST_GeomFromText('POINT(40.7167678 -74.4529312)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876758', 'Great Swamp Branch', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Atsion', 39.6822719, -74.7215366, ST_GeomFromText('POINT(39.6822719 -74.7215366)', 4326), 39.6651163, -74.857942, '1979-09-08', '2013-03-28', NULL, NULL, NULL),
  ('876762', 'Grebe Pond', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.9428228, -74.201117, ST_GeomFromText('POINT(40.9428228 -74.201117)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876765', 'Green Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Keswick Grove', 39.9759526, -74.2970288, ST_GeomFromText('POINT(39.9759526 -74.2970288)', 4326), 39.9821515, -74.3264151, '1979-09-08', '2013-03-28', NULL, NULL, NULL),
  ('876766', 'Green Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Lakewood', 40.050351, -74.176662, ST_GeomFromText('POINT(40.050351 -74.176662)', 4326), 40.0370615, -74.1844296, '1979-09-08', '2013-03-28', NULL, NULL, NULL),
  ('876767', 'Green Branch', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Tuckahoe', 39.3526012, -74.8608398, ST_GeomFromText('POINT(39.3526012 -74.8608398)', 4326), 39.3726153, -74.8873921, '1979-09-08', '2013-03-28', NULL, NULL, NULL),
  ('876768', 'Green Branch', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Newfield', 39.5242365, -75.0797296, ST_GeomFromText('POINT(39.5242365 -75.0797296)', 4326), 39.5659483, -75.1307356, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('876769', 'Green Brook', 'Stream', 'New Jersey', 'NJ', 'Essex', 'Caldwell', 40.8664882, -74.2851482, ST_GeomFromText('POINT(40.8664882 -74.2851482)', 4326), 40.8644444, -74.2508333, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876770', 'Green Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Yonkers', 40.919658, -73.9270234, ST_GeomFromText('POINT(40.919658 -73.9270234)', 4326), 40.9083234, -73.9385301, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('876771', 'Green Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Greenwood Lake', 41.1502555, -74.3519819, ST_GeomFromText('POINT(41.1502555 -74.3519819)', 4326), 41.1837008, -74.3541706, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('876772', 'Green Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Bound Brook', 40.5839743, -74.5017457, ST_GeomFromText('POINT(40.5839743 -74.5017457)', 4326), 40.6567687, -74.4443195, '1979-09-08', '2013-04-15', 'Official', 'Board Decision', '1973-08-14'),
  ('876777', 'Green Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Rio Grande', 39.0636985, -74.918679, ST_GeomFromText('POINT(39.0636985 -74.918679)', 4326), 39.0419446, -74.8690635, '1979-09-08', '2013-04-15', 'Official', 'Board Decision', '1943-01-01'),
  ('876781', 'Green Hill', 'Summit', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0975068, -74.185572, ST_GeomFromText('POINT(41.0975068 -74.185572)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('876782', 'Green Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0051175, -74.110694, ST_GeomFromText('POINT(40.0051175 -74.110694)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876785', 'Green Pond', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Newfoundland', 41.0058852, -74.4938985, ST_GeomFromText('POINT(41.0058852 -74.4938985)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876787', 'Green Pond Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.9007375, -74.56864, ST_GeomFromText('POINT(40.9007375 -74.56864)', 4326), 40.993415, -74.5122787, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('876789', 'Green Pond Mountain', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.9763825, -74.5331684, ST_GeomFromText('POINT(40.9763825 -74.5331684)', 4326), NULL, NULL, '1979-09-08', '2022-08-13', NULL, NULL, NULL),
  ('876790', 'Green Ridge Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.0414858, -74.5919376, ST_GeomFromText('POINT(41.0414858 -74.5919376)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876792', 'Green Swamp', 'Swamp', 'New Jersey', 'NJ', 'Cumberland', 'Shiloh', 39.3773365, -75.274635, ST_GeomFromText('POINT(39.3773365 -75.274635)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876794', 'Green Valley Lake', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.0971507, -74.389585, ST_GeomFromText('POINT(41.0971507 -74.389585)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876808', 'Greenwich Lake', 'Lake', 'New Jersey', 'NJ', 'Gloucester', 'Bridgeport', 39.8105821, -75.2865869, ST_GeomFromText('POINT(39.8105821 -75.2865869)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('876810', 'Greenwood Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Pemberton', 39.9605805, -74.635883, ST_GeomFromText('POINT(39.9605805 -74.635883)', 4326), 39.9435434, -74.5733285, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('876819', 'Greenwood Pond', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.0563163, -74.4822624, ST_GeomFromText('POINT(41.0563163 -74.4822624)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876823', 'Grenloch Lake', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Runnemede', 39.7812756, -75.0545413, ST_GeomFromText('POINT(39.7812756 -75.0545413)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('876826', 'Griffith Pond', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.9217771, -74.416635, ST_GeomFromText('POINT(40.9217771 -74.416635)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876828', 'Lake Grinnell', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Newton East', 41.0996015, -74.6377217, ST_GeomFromText('POINT(41.0996015 -74.6377217)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('876829', 'Griscom Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3134925, -74.6985796, ST_GeomFromText('POINT(39.3134925 -74.6985796)', 4326), 39.3240399, -74.7289315, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('876830', 'Griscom Swamp', 'Swamp', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.318171, -74.7032169, ST_GeomFromText('POINT(39.318171 -74.7032169)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876831', 'Gropp Lake', 'Reservoir', 'New Jersey', 'NJ', 'Mercer', 'Trenton East', 40.189833, -74.6857937, ST_GeomFromText('POINT(40.189833 -74.6857937)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('876841', 'Gulf Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.7356755, -74.1615264, ST_GeomFromText('POINT(39.7356755 -74.1615264)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876842', 'Gulf Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.7373421, -74.1640266, ST_GeomFromText('POINT(39.7373421 -74.1640266)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876844', 'Gull Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0798358, -74.7779428, ST_GeomFromText('POINT(39.0798358 -74.7779428)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1943-01-01'),
  ('876845', 'Gull Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Sea Isle City', 39.1445586, -74.7176622, ST_GeomFromText('POINT(39.1445586 -74.7176622)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876847', 'Gum Spring', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.9397678, -74.5842505, ST_GeomFromText('POINT(39.9397678 -74.5842505)', 4326), 39.9141667, -74.5319444, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('876848', 'Gum Spring', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Chatsworth', 39.8745785, -74.6051985, ST_GeomFromText('POINT(39.8745785 -74.6051985)', 4326), 39.8837339, -74.5716548, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('876850', 'Gun Branch', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Atsion', 39.6914581, -74.6975268, ST_GeomFromText('POINT(39.6914581 -74.6975268)', 4326), 39.7015057, -74.8090508, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('876852', 'Gunners Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.065669, -74.8082222, ST_GeomFromText('POINT(39.065669 -74.8082222)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('876853', 'Gunning River', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.7176198, -74.1679156, ST_GeomFromText('POINT(39.7176198 -74.1679156)', 4326), 39.7419444, -74.2427778, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876858', 'Hackensack Reservoir Number One', 'Reservoir', 'New Jersey', 'NJ', 'Hudson', 'Weehawken', 40.7723234, -74.0198622, ST_GeomFromText('POINT(40.7723234 -74.0198622)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876859', 'Hackensack Reservoir Number Two', 'Reservoir', 'New Jersey', 'NJ', 'Hudson', 'Weehawken', 40.7638045, -74.0296728, ST_GeomFromText('POINT(40.7638045 -74.0296728)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876860', 'Hackensack River', 'Stream', 'New Jersey', 'NJ', 'Hudson', 'Jersey City', 40.7131577, -74.1129204, ST_GeomFromText('POINT(40.7131577 -74.1129204)', 4326), 41.1827863, -73.9868554, '1979-09-08', '2014-10-24', NULL, NULL, NULL),
  ('876861', 'Hatchery Brook', 'Stream', 'New Jersey', 'NJ', 'Warren', 'Hackettstown', 40.842635, -74.8381671, ST_GeomFromText('POINT(40.842635 -74.8381671)', 4326), 40.8569996, -74.8621836, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('876868', 'Haddon Lake', 'Reservoir', 'New Jersey', 'NJ', 'Camden', 'Camden', 39.8850284, -75.0830769, ST_GeomFromText('POINT(39.8850284 -75.0830769)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('876874', 'Haines Neck', 'Cape', 'New Jersey', 'NJ', 'Salem', 'Penns Grove', 39.6540024, -75.4201944, ST_GeomFromText('POINT(39.6540024 -75.4201944)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876882', 'Hakihokake Creek', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'Frenchtown', 40.5621911, -75.0917459, ST_GeomFromText('POINT(40.5621911 -75.0917459)', 4326), 40.6356564, -75.0565609, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('876885', 'Haledon Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Paterson', 40.9817915, -74.1985756, ST_GeomFromText('POINT(40.9817915 -74.1985756)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876886', 'Haleys Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Dividing Creek', 39.2729417, -75.0211555, ST_GeomFromText('POINT(39.2729417 -75.0211555)', 4326), 39.2863664, -75.0235963, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('876889', 'Halfmile Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0917803, -74.7884989, ST_GeomFromText('POINT(39.0917803 -74.7884989)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1943-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876890', 'Halfmile Point Meadow', 'Swamp', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0862247, -74.7904434, ST_GeomFromText('POINT(39.0862247 -74.7904434)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('876891', 'Halfway Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Marmora', 39.2803929, -74.707106, ST_GeomFromText('POINT(39.2803929 -74.707106)', 4326), 39.261101, -74.7356558, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('876892', 'Hall Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Cape May', 38.9965015, -74.9573968, ST_GeomFromText('POINT(38.9965015 -74.9573968)', 4326), 38.9966667, -74.9325, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876895', 'Halls Run', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Salem', 39.6152926, -75.4252625, ST_GeomFromText('POINT(39.6152926 -75.4252625)', 4326), 39.6361831, -75.4113579, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('876898', 'Halsey Island', 'Island', 'New Jersey', 'NJ', 'Morris', 'Stanhope', 40.9556539, -74.6321052, ST_GeomFromText('POINT(40.9556539 -74.6321052)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876899', 'Ham Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Beach Haven', 39.6015075, -74.2262513, ST_GeomFromText('POINT(39.6015075 -74.2262513)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876901', 'Hamburg Mountains', 'Range', 'New Jersey', 'NJ', 'Sussex', 'Hamburg', 41.1526008, -74.5144533, ST_GeomFromText('POINT(41.1526008 -74.5144533)', 4326), NULL, NULL, '1979-09-08', '2022-08-12', NULL, NULL, NULL),
  ('876916', 'Hammonton Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Atsion', 39.6367843, -74.6587689, ST_GeomFromText('POINT(39.6367843 -74.6587689)', 4326), 39.6303166, -74.7905874, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('876917', 'Hammonton Lake', 'Reservoir', 'New Jersey', 'NJ', 'Atlantic', 'Hammonton', 39.6295547, -74.7797137, ST_GeomFromText('POINT(39.6295547 -74.7797137)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('876924', 'Hances Brook', 'Stream', 'New Jersey', 'NJ', 'Warren', 'Hackettstown', 40.8035123, -74.8615694, ST_GeomFromText('POINT(40.8035123 -74.8615694)', 4326), 40.8241147, -74.8499849, '1979-09-08', '2013-04-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876926', 'Hands Mill Pond', 'Reservoir', 'New Jersey', 'NJ', 'Cumberland', 'Heislerville', 39.2450437, -74.9034632, ST_GeomFromText('POINT(39.2450437 -74.9034632)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('876927', 'Hands Pond', 'Reservoir', 'New Jersey', 'NJ', 'Cumberland', 'Shiloh', 39.4925329, -75.2528402, ST_GeomFromText('POINT(39.4925329 -75.2528402)', 4326), NULL, NULL, '1979-09-08', '2022-08-05', NULL, NULL, NULL),
  ('876928', 'Hankins Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.2106874, -74.0692449, ST_GeomFromText('POINT(40.2106874 -74.0692449)', 4326), 40.2181839, -74.0592724, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('876929', 'Hankins Pond', 'Reservoir', 'New Jersey', 'NJ', 'Cumberland', 'Millville', 39.3962148, -75.019234, ST_GeomFromText('POINT(39.3962148 -75.019234)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('876930', 'Hanks Pond', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.0828797, -74.4374055, ST_GeomFromText('POINT(41.0828797 -74.4374055)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876931', 'Hann Cove', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0142797, -74.8351682, ST_GeomFromText('POINT(39.0142797 -74.8351682)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('876932', 'Hann Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0092797, -74.8335014, ST_GeomFromText('POINT(39.0092797 -74.8335014)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('876933', 'Hannabrand Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.1433374, -74.0518427, ST_GeomFromText('POINT(40.1433374 -74.0518427)', 4326), 40.1605009, -74.1043496, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('876936', 'Hanover Lake', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.9835097, -74.5127477, ST_GeomFromText('POINT(39.9835097 -74.5127477)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('876939', 'Hansey Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Port Norris', 39.2381367, -75.1020724, ST_GeomFromText('POINT(39.2381367 -75.1020724)', 4326), 39.2471522, -75.0726432, '1979-09-08', '2013-04-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876949', 'Harihokake Creek', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'Frenchtown', 40.5453302, -75.0722905, ST_GeomFromText('POINT(40.5453302 -75.0722905)', 4326), 40.6211111, -75.0338889, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('876957', 'Harmony Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Mendham', 40.7936361, -74.5675993, ST_GeomFromText('POINT(40.7936361 -74.5675993)', 4326), 40.8232277, -74.5789933, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('876958', 'Harmony Lake', 'Lake', 'New Jersey', 'NJ', 'Burlington', 'Clementon', 39.8256629, -74.8793644, ST_GeomFromText('POINT(39.8256629 -74.8793644)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('876963', 'Harris Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Cassville', 40.0540836, -74.3914104, ST_GeomFromText('POINT(40.0540836 -74.3914104)', 4326), 40.0241146, -74.4203568, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('876964', 'Harris Harbor', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'Beach Haven', 39.6012297, -74.2151397, ST_GeomFromText('POINT(39.6012297 -74.2151397)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876967', 'Harrison Mountain Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.1064896, -74.3178327, ST_GeomFromText('POINT(41.1064896 -74.3178327)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876970', 'Harrisons Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Bernardsville', 40.6563713, -74.5729423, ST_GeomFromText('POINT(40.6563713 -74.5729423)', 4326), 40.7058333, -74.5702778, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('876973', 'Harrisville Pond', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Jenkins', 39.6706893, -74.521057, ST_GeomFromText('POINT(39.6706893 -74.521057)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('876974', 'Harrow Run', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Shiloh', 39.4872009, -75.2837276, ST_GeomFromText('POINT(39.4872009 -75.2837276)', 4326), 39.4988584, -75.2883196, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('876975', 'Harrow Run', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Shiloh', 39.4964534, -75.2573937, ST_GeomFromText('POINT(39.4964534 -75.2573937)', 4326), 39.517209, -75.2357322, '1979-09-08', '2013-04-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876976', 'Harry Pond', 'Lake', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.7281778, -74.1904083, ST_GeomFromText('POINT(39.7281778 -74.1904083)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('876977', 'Harrys Brook', 'Stream', 'New Jersey', 'NJ', 'Mercer', 'Princeton', 40.3656978, -74.6271926, ST_GeomFromText('POINT(40.3656978 -74.6271926)', 4326), 40.3569096, -74.6473642, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('876978', 'Harsimus Cove', 'Bay', 'New Jersey', 'NJ', 'Hudson', 'Jersey City', 40.7270464, -74.0306958, ST_GeomFromText('POINT(40.7270464 -74.0306958)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876982', 'Hartshorne Mill Stream', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Browns Mills', 39.9880908, -74.5106828, ST_GeomFromText('POINT(39.9880908 -74.5106828)', 4326), 40.0077795, -74.4660616, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('876983', 'Lake Hartung', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Franklin', 41.0416671, -74.5338779, ST_GeomFromText('POINT(41.0416671 -74.5338779)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876985', 'Harvey Sedges', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.6962307, -74.1656933, ST_GeomFromText('POINT(39.6962307 -74.1656933)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876989', 'Hatfield Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5103235, -74.3312699, ST_GeomFromText('POINT(39.5103235 -74.3312699)', 4326), 39.5177811, -74.3270802, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('876990', 'Hatfield Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5112288, -74.3320891, ST_GeomFromText('POINT(39.5112288 -74.3320891)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876991', 'Hatfield Swamp', 'Swamp', 'New Jersey', 'NJ', 'Morris', 'Caldwell', 40.8409329, -74.3279274, ST_GeomFromText('POINT(40.8409329 -74.3279274)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876993', 'Haulover Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0617801, -74.8048887, ST_GeomFromText('POINT(39.0617801 -74.8048887)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('876994', 'Havemeyer Hollow', 'Valley', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0885733, -74.1839622, ST_GeomFromText('POINT(41.0885733 -74.1839622)', 4326), 41.1012018, -74.1993786, '1979-09-08', '2018-08-01', NULL, NULL, NULL),
  ('876995', 'Havemeyer Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0914446, -74.1882976, ST_GeomFromText('POINT(41.0914446 -74.1882976)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('876998', 'Havens Cove', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0237282, -74.0818041, ST_GeomFromText('POINT(40.0237282 -74.0818041)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876999', 'Havens Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0217839, -74.0756927, ST_GeomFromText('POINT(40.0217839 -74.0756927)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877000', 'Hawk Island', 'Island', 'New Jersey', 'NJ', 'Burlington', 'Beverly', 40.0453892, -74.9696133, ST_GeomFromText('POINT(40.0453892 -74.9696133)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877001', 'Hawk Rock', 'Pillar', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0867628, -74.1890344, ST_GeomFromText('POINT(41.0867628 -74.1890344)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877002', 'Hawkins Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3228323, -74.7171754, ST_GeomFromText('POINT(39.3228323 -74.7171754)', 4326), 39.3440058, -74.7387564, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877006', 'Hawthorne Lake', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.0575065, -74.5893243, ST_GeomFromText('POINT(41.0575065 -74.5893243)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('877010', 'Haystack Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Lakewood', 40.1135594, -74.1662765, ST_GeomFromText('POINT(40.1135594 -74.1662765)', 4326), 40.1673471, -74.2028618, '1979-09-08', '2013-04-15', 'Official', 'Board Decision', '1980-01-01'),
  ('877011', 'Haycock Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Pompton Plains', 40.9888071, -74.2608619, ST_GeomFromText('POINT(40.9888071 -74.2608619)', 4326), 40.9756952, -74.2601793, '1979-09-08', '2013-04-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877012', 'Hayes Branch', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Newfield', 39.5956709, -75.0418404, ST_GeomFromText('POINT(39.5956709 -75.0418404)', 4326), 39.5944083, -75.0066581, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877014', 'Haynes Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Mount Holly', 39.8899288, -74.8323977, ST_GeomFromText('POINT(39.8899288 -74.8323977)', 4326), 39.8630255, -74.8279452, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877015', 'Hays Mill Creek', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Hammonton', 39.7447791, -74.8372552, ST_GeomFromText('POINT(39.7447791 -74.8372552)', 4326), 39.7687539, -74.9093825, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877016', 'Haywood Oyster Pond', 'Lake', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.7168669, -74.190335, ST_GeomFromText('POINT(39.7168669 -74.190335)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('877017', 'Hazard Beach', 'Beach', 'New Jersey', 'NJ', 'Bergen', 'Central Park', 40.8537111, -73.9593045, ST_GeomFromText('POINT(40.8537111 -73.9593045)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877027', 'Heards Brook', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'Perth Amboy', 40.5562815, -74.268077, ST_GeomFromText('POINT(40.5562815 -74.268077)', 4326), 40.5501188, -74.2986971, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877028', 'Heaters Pond', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.0695247, -74.5847737, ST_GeomFromText('POINT(41.0695247 -74.5847737)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('877029', 'Heathcote Brook', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'Hightstown', 40.3737178, -74.6198794, ST_GeomFromText('POINT(40.3737178 -74.6198794)', 4326), 40.4089949, -74.559322, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877030', 'Heathcote Brook Branch', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'Monmouth Junction', 40.3767428, -74.5775127, ST_GeomFromText('POINT(40.3767428 -74.5775127)', 4326), 40.4025, -74.5752778, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877034', 'Hedges Branch', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Williamstown', 39.6672716, -74.9430549, ST_GeomFromText('POINT(39.6672716 -74.9430549)', 4326), 39.6752697, -74.9459141, '1979-09-08', '2013-04-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877036', 'Hell Mountain', 'Summit', 'New Jersey', 'NJ', 'Hunterdon', 'Califon', 40.6900928, -74.802663, ST_GeomFromText('POINT(40.6900928 -74.802663)', 4326), NULL, NULL, '1979-09-08', '2021-11-27', NULL, NULL, NULL),
  ('877040', 'Hemlock Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.980311, -74.7312588, ST_GeomFromText('POINT(40.980311 -74.7312588)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('877041', 'Hanby Creek', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Penns Grove', 39.7146849, -75.4832786, ST_GeomFromText('POINT(39.7146849 -75.4832786)', 4326), 39.7032247, -75.4691648, '1979-09-08', '2013-04-15', 'Official', 'Board Decision', '2008-08-14'),
  ('877042', 'Hendershots Point', 'Cape', 'New Jersey', 'NJ', 'Sussex', 'Newton West', 41.0689856, -74.837668, ST_GeomFromText('POINT(41.0689856 -74.837668)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877043', 'Henderson Bay', 'Bay', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9667648, -74.637661, ST_GeomFromText('POINT(40.9667648 -74.637661)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877044', 'Henderson Cove', 'Bay', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9709314, -74.6329386, ST_GeomFromText('POINT(40.9709314 -74.6329386)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877048', 'Hendrickson Millpond', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Bridgeport', 39.7789401, -75.2954015, ST_GeomFromText('POINT(39.7789401 -75.2954015)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('877049', 'Henion Pond', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0217639, -74.3650499, ST_GeomFromText('POINT(41.0217639 -74.3650499)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('877055', 'Hereford Inlet', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.015391, -74.7868323, ST_GeomFromText('POINT(39.015391 -74.7868323)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1943-01-01'),
  ('877059', 'Herman Hill', 'Summit', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.1145156, -74.203565, ST_GeomFromText('POINT(41.1145156 -74.203565)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877060', 'Hermit Hollow', 'Valley', 'New Jersey', 'NJ', 'Hunterdon', 'Frenchtown', 40.6182245, -75.0549121, ST_GeomFromText('POINT(40.6182245 -75.0549121)', 4326), 40.6302017, -75.0570617, '1979-09-08', '2018-08-01', NULL, NULL, NULL),
  ('877061', 'Herring Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Hackensack', 40.9276713, -74.0504265, ST_GeomFromText('POINT(40.9276713 -74.0504265)', 4326), 40.9268688, -74.0616837, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877062', 'Herring Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0501166, -74.0529143, ST_GeomFromText('POINT(40.0501166 -74.0529143)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877063', 'Herring Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.084558, -74.7809986, ST_GeomFromText('POINT(39.084558 -74.7809986)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('877065', 'Hessian Run', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Woodbury', 39.8565, -75.1796, ST_GeomFromText('POINT(39.8565 -75.1796)', 4326), 39.8573512, -75.1476189, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877068', 'Hester Sedge', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5662292, -74.3012544, ST_GeomFromText('POINT(39.5662292 -74.3012544)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877072', 'Hewitt Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Greenwood Lake', 41.1436085, -74.3112579, ST_GeomFromText('POINT(41.1436085 -74.3112579)', 4326), 41.1183289, -74.3330884, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877075', 'Lake Hiawatha', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Pompton Plains', 40.8786611, -74.3709264, ST_GeomFromText('POINT(40.8786611 -74.3709264)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('877077', 'Hibernia Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.9228359, -74.4862962, ST_GeomFromText('POINT(40.9228359 -74.4862962)', 4326), 40.9825668, -74.4812053, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877080', 'Hickory Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Rio Grande', 39.0320573, -74.9176724, ST_GeomFromText('POINT(39.0320573 -74.9176724)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877081', 'Hickory Island', 'Island', 'New Jersey', 'NJ', 'Salem', 'Delaware City', 39.5765016, -75.5015883, ST_GeomFromText('POINT(39.5765016 -75.5015883)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877082', 'Hickory Mountain', 'Summit', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.1215043, -74.2563563, ST_GeomFromText('POINT(41.1215043 -74.2563563)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('877088', 'Hidden Lake (historical)', 'Lake', 'New Jersey', 'NJ', 'Camden', 'Runnemede', 39.801781, -75.0215573, ST_GeomFromText('POINT(39.801781 -75.0215573)', 4326), NULL, NULL, '1979-09-08', '2020-04-29', NULL, NULL, NULL),
  ('877089', 'Higbee Beach', 'Beach', 'New Jersey', 'NJ', 'Cape May', 'Cape May', 38.9590014, -74.9648972, ST_GeomFromText('POINT(38.9590014 -74.9648972)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877092', 'High Crest Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0195969, -74.3740553, ST_GeomFromText('POINT(41.0195969 -74.3740553)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('877094', 'High Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Beach Haven', 39.6234522, -74.2059727, ST_GeomFromText('POINT(39.6234522 -74.2059727)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877095', 'High Mountain', 'Summit', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.9705156, -74.1983709, ST_GeomFromText('POINT(40.9705156 -74.1983709)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('877096', 'High Mountain', 'Summit', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0887151, -74.2349955, ST_GeomFromText('POINT(41.0887151 -74.2349955)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('877097', 'High Mountain Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0770523, -74.269115, ST_GeomFromText('POINT(41.0770523 -74.269115)', 4326), 41.1036432, -74.2335328, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877098', 'High Point', 'Summit', 'New Jersey', 'NJ', 'Sussex', 'Port Jervis South', 41.3208722, -74.6615393, ST_GeomFromText('POINT(41.3208722 -74.6615393)', 4326), NULL, NULL, '1979-09-08', '2020-04-08', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877101', 'High Rock Mountain', 'Summit', 'New Jersey', 'NJ', 'Warren', 'Washington', 40.8468183, -74.9778405, ST_GeomFromText('POINT(40.8468183 -74.9778405)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('877102', 'High Rocks', 'Summit', 'New Jersey', 'NJ', 'Warren', 'Tranquility', 40.9841079, -74.8535929, ST_GeomFromText('POINT(40.9841079 -74.8535929)', 4326), NULL, NULL, '1979-09-08', '2018-06-21', NULL, NULL, NULL),
  ('877104', 'Highland Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.9028513, -74.1900041, ST_GeomFromText('POINT(40.9028513 -74.1900041)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('877105', 'Highland Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Wawayanda', 41.1682834, -74.4641388, ST_GeomFromText('POINT(41.1682834 -74.4641388)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('877112', 'Hildreth Meadow', 'Swamp', 'New Jersey', 'NJ', 'Cape May', 'Wildwood', 38.9951129, -74.8412797, ST_GeomFromText('POINT(38.9951129 -74.8412797)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('877143', 'Hirshfeld Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Hackensack', 40.9464873, -74.0229171, ST_GeomFromText('POINT(40.9464873 -74.0229171)', 4326), 40.9416314, -73.9918604, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877145', 'Hither Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5562291, -74.2959764, ST_GeomFromText('POINT(39.5562291 -74.2959764)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1925-01-01'),
  ('877146', 'Hobb Lake', 'Reservoir', 'New Jersey', 'NJ', 'Camden', 'Hammonton', 39.7068518, -74.8695194, ST_GeomFromText('POINT(39.7068518 -74.8695194)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('877158', 'Hog Islands', 'Island', 'New Jersey', 'NJ', 'Atlantic', 'Green Bank', 39.5770623, -74.5334866, ST_GeomFromText('POINT(39.5770623 -74.5334866)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877159', 'Harvey Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.2434631, -74.0124142, ST_GeomFromText('POINT(40.2434631 -74.0124142)', 4326), 40.2419255, -74.0590498, '1979-09-08', '2013-04-15', 'Official', 'Board Decision', '1984-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877160', 'Hog Wallow Cranberry Bogs', 'Swamp', 'New Jersey', 'NJ', 'Burlington', 'Jenkins', 39.7384522, -74.5298744, ST_GeomFromText('POINT(39.7384522 -74.5298744)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877162', 'Hohokus Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Hackensack', 40.9551167, -74.100219, ST_GeomFromText('POINT(40.9551167 -74.100219)', 4326), 41.0530821, -74.1860229, '1979-09-08', '2014-10-24', NULL, NULL, NULL),
  ('877164', 'Holcombe Island', 'Island', 'New Jersey', 'NJ', 'Hunterdon', 'Lambertville', 40.3706616, -74.9493339, ST_GeomFromText('POINT(40.3706616 -74.9493339)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877166', 'Holiday Lake', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Beverly', 40.03387, -74.9273363, ST_GeomFromText('POINT(40.03387 -74.9273363)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('877171', 'Holland Brook', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'Raritan', 40.5489041, -74.6944624, ST_GeomFromText('POINT(40.5489041 -74.6944624)', 4326), 40.5936698, -74.8043311, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877175', 'Hollow Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.2301126, -74.0143041, ST_GeomFromText('POINT(40.2301126 -74.0143041)', 4326), 40.2210102, -74.0546322, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877177', 'Holly Run', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Runnemede', 39.7797003, -75.0496995, ST_GeomFromText('POINT(39.7797003 -75.0496995)', 4326), 39.780799, -75.01526, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877184', 'Holmes Cove', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0926136, -74.7954437, ST_GeomFromText('POINT(39.0926136 -74.7954437)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877185', 'Holmes Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0926136, -74.7968327, ST_GeomFromText('POINT(39.0926136 -74.7968327)', 4326), 39.1000168, -74.807948, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877188', 'Holstein Lake', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.8886825, -74.5011911, ST_GeomFromText('POINT(40.8886825 -74.5011911)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877221', 'Hominy Hills', 'Summit', 'New Jersey', 'NJ', 'Monmouth', 'Marlboro', 40.2510688, -74.1797188, ST_GeomFromText('POINT(40.2510688 -74.1797188)', 4326), NULL, NULL, '1979-09-08', '2024-10-02', NULL, NULL, NULL),
  ('877222', 'Honey Branch', 'Stream', 'New Jersey', 'NJ', 'Mercer', 'Princeton', 40.3382073, -74.7415137, ST_GeomFromText('POINT(40.3382073 -74.7415137)', 4326), 40.3706167, -74.7679228, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877223', 'Honey Run', 'Stream', 'New Jersey', 'NJ', 'Warren', 'Blairstown', 40.8931538, -74.9760055, ST_GeomFromText('POINT(40.8931538 -74.9760055)', 4326), 40.9256366, -75.0208336, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877224', 'Haney Run Branch', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Clementon', 39.8335329, -74.9646521, ST_GeomFromText('POINT(39.8335329 -74.9646521)', 4326), 39.8284185, -74.9552844, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877226', 'Hood Pond', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.9181967, -74.4202537, ST_GeomFromText('POINT(40.9181967 -74.4202537)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('877227', 'Hooks Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Port Elizabeth', 39.3577197, -74.9583328, ST_GeomFromText('POINT(39.3577197 -74.9583328)', 4326), 39.3705556, -74.9602778, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877228', 'Hooks Creek Lake', 'Lake', 'New Jersey', 'NJ', 'Middlesex', 'South Amboy', 40.4391262, -74.2676908, ST_GeomFromText('POINT(40.4391262 -74.2676908)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', 'Official', 'Board Decision', '1950-01-01'),
  ('877229', 'Hoopstick Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Gladstone', 40.6535367, -74.6866518, ST_GeomFromText('POINT(40.6535367 -74.6866518)', 4326), 40.6927193, -74.6976542, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877231', 'Hoot Owl Lake', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Newfoundland', 41.0007644, -74.4040846, ST_GeomFromText('POINT(41.0007644 -74.4040846)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('877233', 'Hop Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Marlboro', 40.3282928, -74.1681486, ST_GeomFromText('POINT(40.3282928 -74.1681486)', 4326), 40.3928013, -74.1677785, '1979-09-08', '2014-11-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877238', 'Lake Hopatcong', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9486634, -74.6372713, ST_GeomFromText('POINT(40.9486634 -74.6372713)', 4326), NULL, NULL, '1979-09-08', '2023-04-05', NULL, NULL, NULL),
  ('877241', 'Hope Creek', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Taylors Bridge', 39.4505184, -75.5010724, ST_GeomFromText('POINT(39.4505184 -75.5010724)', 4326), 39.4953895, -75.4878974, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877248', 'Hopkins Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0370413, -74.1676445, ST_GeomFromText('POINT(41.0370413 -74.1676445)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877249', 'Hopkins Pond', 'Reservoir', 'New Jersey', 'NJ', 'Camden', 'Camden', 39.9043897, -75.0290708, ST_GeomFromText('POINT(39.9043897 -75.0290708)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('877250', 'Hoppemense Creek (historical)', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Wilmington South', 39.6534463, -75.5274221, ST_GeomFromText('POINT(39.6534463 -75.5274221)', 4326), 39.6480556, -75.5202778, '1979-09-08', '2013-06-05', NULL, NULL, NULL),
  ('877251', 'Hoppers Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0017799, -74.2414796, ST_GeomFromText('POINT(41.0017799 -74.2414796)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', 'Official', 'Board Decision', '1960-01-01'),
  ('877253', 'Horicon Lake', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'Lakehurst', 40.0083951, -74.3230207, ST_GeomFromText('POINT(40.0083951 -74.3230207)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', 'Official', 'Board Decision', '1950-01-01'),
  ('877254', 'Horne Run', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Penns Grove', 39.6316428, -75.4495525, ST_GeomFromText('POINT(39.6316428 -75.4495525)', 4326), 39.6444533, -75.4153275, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877256', 'Horse Foot Cove', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5545624, -74.3231998, ST_GeomFromText('POINT(39.5545624 -74.3231998)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877257', 'Horse Hill', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Morristown', 40.8214137, -74.4596209, ST_GeomFromText('POINT(40.8214137 -74.4596209)', 4326), NULL, NULL, '1979-09-08', '2018-04-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877259', 'Horse Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'West Creek', 39.6331743, -74.2515301, ST_GeomFromText('POINT(39.6331743 -74.2515301)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877260', 'Horse Run', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Shiloh', 39.4950004, -75.3356552, ST_GeomFromText('POINT(39.4950004 -75.3356552)', 4326), 39.5076168, -75.3120303, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877261', 'Horseshoe Lake', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Chester', 40.8574137, -74.6340507, ST_GeomFromText('POINT(40.8574137 -74.6340507)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('877262', 'Hospitality Branch', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Newtonville', 39.5700504, -74.8205665, ST_GeomFromText('POINT(39.5700504 -74.8205665)', 4326), 39.6733043, -75.0100994, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877263', 'Hospitality Brook', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Jenkins', 39.7054141, -74.5532656, ST_GeomFromText('POINT(39.7054141 -74.5532656)', 4326), 39.7376286, -74.5380574, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877264', 'Hospitality Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Ocean City', 39.3203939, -74.5315425, ST_GeomFromText('POINT(39.3203939 -74.5315425)', 4326), 39.314969, -74.5381983, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877265', 'Hospitality Lake', 'Lake', 'New Jersey', 'NJ', 'Gloucester', 'Buena', 39.6031527, -74.8869582, ST_GeomFromText('POINT(39.6031527 -74.8869582)', 4326), NULL, NULL, '1979-09-08', '2013-08-14', NULL, NULL, NULL),
  ('877266', 'Houvenkopf Mountain', 'Summit', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.1057915, -74.1748219, ST_GeomFromText('POINT(41.1057915 -74.1748219)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('877271', 'Howells Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.3165033, -75.2357447, ST_GeomFromText('POINT(39.3165033 -75.2357447)', 4326), 39.3324448, -75.2454981, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877272', 'Howells Pond', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Newton East', 41.0433906, -74.7024839, ST_GeomFromText('POINT(41.0433906 -74.7024839)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877273', 'Hubbard Race Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3109005, -74.7082543, ST_GeomFromText('POINT(39.3109005 -74.7082543)', 4326), 39.2988889, -74.7138889, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877276', 'Huckleberry Hill', 'Summit', 'New Jersey', 'NJ', 'Burlington', 'Indian Mills', 39.8560536, -74.7357123, ST_GeomFromText('POINT(39.8560536 -74.7357123)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('877277', 'Hudson Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Newfield', 39.5322376, -75.0395983, ST_GeomFromText('POINT(39.5322376 -75.0395983)', 4326), 39.540604, -75.0126314, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877278', 'Hudson Lake', 'Reservoir', 'New Jersey', 'NJ', 'Salem', 'Penns Grove', 39.677774, -75.4479604, ST_GeomFromText('POINT(39.677774 -75.4479604)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('877281', 'Hughes Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Marmora', 39.2813506, -74.6832561, ST_GeomFromText('POINT(39.2813506 -74.6832561)', 4326), 39.2663675, -74.6831301, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877283', 'Hughs Pond', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9975824, -74.6881127, ST_GeomFromText('POINT(40.9975824 -74.6881127)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('877287', 'Hunts Pond', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Newton West', 41.0053401, -74.8442646, ST_GeomFromText('POINT(41.0053401 -74.8442646)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('877294', 'Hurleys Pond', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.1785186, -74.0913551, ST_GeomFromText('POINT(40.1785186 -74.0913551)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', 'Official', 'Board Decision', '1950-01-01'),
  ('877299', 'Hutton Hill', 'Summit', 'New Jersey', 'NJ', 'Camden', 'Clementon', 39.874616, -74.9512319, ST_GeomFromText('POINT(39.874616 -74.9512319)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('877304', 'Idle Acres Lake', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Newfield', 39.6107095, -75.0910238, ST_GeomFromText('POINT(39.6107095 -75.0910238)', 4326), NULL, NULL, '1979-09-08', '2022-08-05', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877305', 'Lake Idlewild', 'Lake', 'New Jersey', 'NJ', 'Bergen', 'Nyack', 41.0235464, -73.9724794, ST_GeomFromText('POINT(41.0235464 -73.9724794)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('877306', 'Lake Iliff', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Newton East', 41.0316155, -74.7158405, ST_GeomFromText('POINT(41.0316155 -74.7158405)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('877308', 'Imlaystown Lake', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Allentown', 40.1644376, -74.5102028, ST_GeomFromText('POINT(40.1644376 -74.5102028)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('877321', 'Indian Branch', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Newtonville', 39.5546308, -74.8047549, ST_GeomFromText('POINT(39.5546308 -74.8047549)', 4326), 39.5563889, -74.8522222, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877322', 'India Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Mendham', 40.7803221, -74.6197093, ST_GeomFromText('POINT(40.7803221 -74.6197093)', 4326), 40.8330508, -74.5791757, '1979-09-08', '2013-04-15', 'Official', 'Board Decision', '1964-01-01'),
  ('877323', 'Indian Cabin Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Green Bank', 39.557011, -74.6025968, ST_GeomFromText('POINT(39.557011 -74.6025968)', 4326), 39.5760812, -74.6868289, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877326', 'Indian Fields Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Bridgeton', 39.4328287, -75.2208674, ST_GeomFromText('POINT(39.4328287 -75.2208674)', 4326), 39.4403857, -75.1706886, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877327', 'Indian Grave Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Bernardsville', 40.7407867, -74.5491457, ST_GeomFromText('POINT(40.7407867 -74.5491457)', 4326), 40.7569937, -74.5798945, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877328', 'Indian Harbor', 'Bay', 'New Jersey', 'NJ', 'Morris', 'Stanhope', 40.9612093, -74.6396054, ST_GeomFromText('POINT(40.9612093 -74.6396054)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877329', 'Indian Head', 'Cliff', 'New Jersey', 'NJ', 'Warren', 'Portland', 40.9700957, -75.1179553, ST_GeomFromText('POINT(40.9700957 -75.1179553)', 4326), NULL, NULL, '1979-09-08', '2014-10-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877330', 'Indian Island', 'Island', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9648204, -74.6446056, ST_GeomFromText('POINT(40.9648204 -74.6446056)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877331', 'Indian Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.8870579, -74.4914452, ST_GeomFromText('POINT(40.8870579 -74.4914452)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('877332', 'Indian Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Weehawken', 40.8557809, -74.0360025, ST_GeomFromText('POINT(40.8557809 -74.0360025)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('877334', 'Indian Mills Brook', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Indian Mills', 39.7880769, -74.7436166, ST_GeomFromText('POINT(39.7880769 -74.7436166)', 4326), 39.8270343, -74.7914162, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877335', 'Indian Mills Lake', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Indian Mills', 39.7984886, -74.7408683, ST_GeomFromText('POINT(39.7984886 -74.7408683)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('877336', 'Indian Run', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Elmer', 39.5324248, -75.1764312, ST_GeomFromText('POINT(39.5324248 -75.1764312)', 4326), 39.5821963, -75.2312315, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877337', 'Indian Trail Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0619649, -74.3691239, ST_GeomFromText('POINT(41.0619649 -74.3691239)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('877338', 'Lake Inez', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0084307, -74.2915375, ST_GeomFromText('POINT(41.0084307 -74.2915375)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877339', 'Ingersall Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Five Points', 39.4343037, -74.9084544, ST_GeomFromText('POINT(39.4343037 -74.9084544)', 4326), 39.4372205, -74.8799908, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877341', 'Ingram Cove', 'Bay', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9262096, -74.6590502, ST_GeomFromText('POINT(40.9262096 -74.6590502)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877343', 'Inner Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0903914, -74.7907213, ST_GeomFromText('POINT(39.0903914 -74.7907213)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('877347', 'Lake Intervale', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.890744, -74.4212549, ST_GeomFromText('POINT(40.890744 -74.4212549)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('877350', 'Iona Lake', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Newfield', 39.5973601, -75.0829058, ST_GeomFromText('POINT(39.5973601 -75.0829058)', 4326), NULL, NULL, '1979-09-08', '2022-08-05', NULL, NULL, NULL),
  ('877351', 'Lake Iosco', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0293193, -74.3214919, ST_GeomFromText('POINT(41.0293193 -74.3214919)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('877352', 'Ireland Brook', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'New Brunswick', 40.4207965, -74.4853815, ST_GeomFromText('POINT(40.4207965 -74.4853815)', 4326), 40.4158333, -74.4166667, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877353', 'Iresick Brook', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'South Amboy', 40.3987743, -74.3686008, ST_GeomFromText('POINT(40.3987743 -74.3686008)', 4326), 40.3680541, -74.3224776, '1979-09-08', '2014-10-27', NULL, NULL, NULL),
  ('877354', 'Lake Riviera', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'Lakewood', 40.0482866, -74.1478302, ST_GeomFromText('POINT(40.0482866 -74.1478302)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', 'Official', 'Board Decision', '1985-01-01'),
  ('877355', 'Iron Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.2669365, -75.1465595, ST_GeomFromText('POINT(39.2669365 -75.1465595)', 4326), 39.2815416, -75.1642513, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877356', 'Iron Mine Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Dividing Creek', 39.2709089, -75.0784314, ST_GeomFromText('POINT(39.2709089 -75.0784314)', 4326), 39.2592527, -75.0672305, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877357', 'Iron Point', 'Cape', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.2578921, -75.1540738, ST_GeomFromText('POINT(39.2578921 -75.1540738)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877366', 'Irvin Lake', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Pitman East', 39.7321956, -75.0548776, ST_GeomFromText('POINT(39.7321956 -75.0548776)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('877370', 'Island Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Bridgeton', 39.4102689, -75.2330339, ST_GeomFromText('POINT(39.4102689 -75.2330339)', 4326), 39.4165871, -75.2770731, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877375', 'Ivanhoe Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Roosevelt', 40.1339173, -74.4627678, ST_GeomFromText('POINT(40.1339173 -74.4627678)', 4326), 40.1760575, -74.4279796, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877376', 'Ives Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'New Gretna', 39.6112294, -74.4943181, ST_GeomFromText('POINT(39.6112294 -74.4943181)', 4326), 39.6731516, -74.4620919, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877380', 'Jack Pudding Branch', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Mays Landing', 39.4773965, -74.671492, ST_GeomFromText('POINT(39.4773965 -74.671492)', 4326), 39.4826467, -74.6136689, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877381', 'Jacks Run', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.9921022, -74.5697558, ST_GeomFromText('POINT(39.9921022 -74.5697558)', 4326), 40.0102869, -74.5809111, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877384', 'Jackson Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.8857741, -74.567433, ST_GeomFromText('POINT(40.8857741 -74.567433)', 4326), 40.8581174, -74.6066603, '1979-09-08', '2016-09-23', NULL, NULL, NULL),
  ('877385', 'Jackson Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3672755, -74.7221482, ST_GeomFromText('POINT(39.3672755 -74.7221482)', 4326), 39.3657245, -74.7594309, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877386', 'Jackson Hill', 'Summit', 'New Jersey', 'NJ', 'Burlington', 'Medford Lakes', 39.8451563, -74.8235392, ST_GeomFromText('POINT(39.8451563 -74.8235392)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('877388', 'Jackson Run', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Bridgeton', 39.4323015, -75.222985, ST_GeomFromText('POINT(39.4323015 -75.222985)', 4326), 39.45, -75.2061111, '1979-09-08', '2013-04-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877391', 'Jackson Valley', 'Valley', 'New Jersey', 'NJ', 'Warren', 'Washington', 40.7712516, -74.9976579, ST_GeomFromText('POINT(40.7712516 -74.9976579)', 4326), 40.7998469, -74.9514725, '1979-09-08', '2018-08-01', NULL, NULL, NULL),
  ('877393', 'Jacksonburg Creek', 'Stream', 'New Jersey', 'NJ', 'Warren', 'Blairstown', 40.9790881, -74.9808526, ST_GeomFromText('POINT(40.9790881 -74.9808526)', 4326), 41.0606342, -74.9490738, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877395', 'Jacksons Mills Lake', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'Adelphia', 40.1490194, -74.3260126, ST_GeomFromText('POINT(40.1490194 -74.3260126)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', 'Official', 'Board Decision', '1950-01-01'),
  ('877399', 'Jacobs Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Marmora', 39.2729936, -74.7043544, ST_GeomFromText('POINT(39.2729936 -74.7043544)', 4326), 39.2638132, -74.6857774, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877400', 'Jacobs Creek', 'Stream', 'New Jersey', 'NJ', 'Mercer', 'Pennington', 40.2778856, -74.8546086, ST_GeomFromText('POINT(40.2778856 -74.8546086)', 4326), 40.3579009, -74.8251504, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877401', 'Jacobs Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Bombay Hook Island', 39.3689178, -75.392679, ST_GeomFromText('POINT(39.3689178 -75.392679)', 4326), 39.3863086, -75.3808263, '1979-09-08', '2013-04-15', 'Official', 'Board Decision', '1897-01-01'),
  ('877404', 'Jade Run', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Mount Holly', 39.9386531, -74.7521058, ST_GeomFromText('POINT(39.9386531 -74.7521058)', 4326), 39.9094194, -74.6070439, '1979-09-08', '2014-06-11', NULL, NULL, NULL),
  ('877405', 'Jakes Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Toms River', 39.9469487, -74.1960007, ST_GeomFromText('POINT(39.9469487 -74.1960007)', 4326), 39.9199896, -74.2765903, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877406', 'James Branch', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Dorothy', 39.4027086, -74.7728634, ST_GeomFromText('POINT(39.4027086 -74.7728634)', 4326), 39.3900276, -74.8187359, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877413', 'Ingersolls Branch', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Pleasantville', 39.4273127, -74.5168184, ST_GeomFromText('POINT(39.4273127 -74.5168184)', 4326), 39.4236111, -74.5538889, '1979-09-08', '2013-04-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877414', 'Jarvis Sound', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Wildwood', 38.967335, -74.86767, ST_GeomFromText('POINT(38.967335 -74.86767)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('877416', 'Jayness Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Stanhope', 40.9737583, -74.6306956, ST_GeomFromText('POINT(40.9737583 -74.6306956)', 4326), 40.9811292, -74.6317041, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877420', 'Jefferson Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9268734, -74.7354967, ST_GeomFromText('POINT(40.9268734 -74.7354967)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('877436', 'Jemima Mount', 'Summit', 'New Jersey', 'NJ', 'Burlington', 'Jenkins', 39.7114991, -74.6184871, ST_GeomFromText('POINT(39.7114991 -74.6184871)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('877439', 'Jenkins Neck', 'Cape', 'New Jersey', 'NJ', 'Burlington', 'Jenkins', 39.6890075, -74.5334859, ST_GeomFromText('POINT(39.6890075 -74.5334859)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877440', 'Jenkins Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0509466, -74.8179449, ST_GeomFromText('POINT(39.0509466 -74.8179449)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('877441', 'Jenkins Sound', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0590023, -74.8118335, ST_GeomFromText('POINT(39.0590023 -74.8118335)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('877442', 'Jennings Lake', 'Lake', 'New Jersey', 'NJ', 'Burlington', 'Clementon', 39.864231, -74.8960781, ST_GeomFromText('POINT(39.864231 -74.8960781)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('877443', 'Jenny Jump Brook', 'Stream', 'New Jersey', 'NJ', 'Warren', 'Washington', 40.8634707, -74.9829715, ST_GeomFromText('POINT(40.8634707 -74.9829715)', 4326), 40.8699108, -74.9790287, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877444', 'Jenny Jump Mountain', 'Summit', 'New Jersey', 'NJ', 'Warren', 'Blairstown', 40.9195342, -74.9076683, ST_GeomFromText('POINT(40.9195342 -74.9076683)', 4326), NULL, NULL, '1979-09-08', '2018-06-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877446', 'Jeremy Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5870627, -74.3154216, ST_GeomFromText('POINT(39.5870627 -74.3154216)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877449', 'Jerry Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Green Bank', 39.5615087, -74.5044655, ST_GeomFromText('POINT(39.5615087 -74.5044655)', 4326), 39.5575714, -74.5154464, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877454', 'Jesses Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5970496, -74.3108958, ST_GeomFromText('POINT(39.5970496 -74.3108958)', 4326), 39.6167803, -74.3219304, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877455', 'Jessie Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5956739, -74.3109771, ST_GeomFromText('POINT(39.5956739 -74.3109771)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877458', 'Jimmys Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0562244, -74.8212785, ST_GeomFromText('POINT(39.0562244 -74.8212785)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('877459', 'Job Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Marmora', 39.2889157, -74.6589661, ST_GeomFromText('POINT(39.2889157 -74.6589661)', 4326), 39.2767871, -74.6504152, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877460', 'Job Point', 'Cape', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3090045, -74.6304359, ST_GeomFromText('POINT(39.3090045 -74.6304359)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877461', 'Jobs Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'New Gretna', 39.5831737, -74.4401493, ST_GeomFromText('POINT(39.5831737 -74.4401493)', 4326), 39.5991667, -74.4236111, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877468', 'Johnny Allens Cove', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'Barnegat Light', 39.8070641, -74.0968022, ST_GeomFromText('POINT(39.8070641 -74.0968022)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877469', 'Johnny Sedge', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5584514, -74.284587, ST_GeomFromText('POINT(39.5584514 -74.284587)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1925-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877471', 'Johns Lake', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.024678, -74.3959582, ST_GeomFromText('POINT(41.024678 -74.3959582)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('877472', 'Johnson Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9641742, -74.7241934, ST_GeomFromText('POINT(40.9641742 -74.7241934)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('877475', 'Johnson Pond', 'Reservoir', 'New Jersey', 'NJ', 'Cape May', 'Woodbine', 39.1965263, -74.8249836, ST_GeomFromText('POINT(39.1965263 -74.8249836)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('877480', 'Johnsons Pond (historical)', 'Lake', 'New Jersey', 'NJ', 'Middlesex', 'Plainfield', 40.5051044, -74.4370961, ST_GeomFromText('POINT(40.5051044 -74.4370961)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877481', 'Jonadab Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Sea Isle City', 39.1350598, -74.7481388, ST_GeomFromText('POINT(39.1350598 -74.7481388)', 4326), 39.1403607, -74.7491983, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877482', 'Jonas Island', 'Island', 'New Jersey', 'NJ', 'Atlantic', 'Ocean City', 39.3440052, -74.5129306, ST_GeomFromText('POINT(39.3440052 -74.5129306)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877484', 'Jones Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Wildwood', 38.9878906, -74.8723924, ST_GeomFromText('POINT(38.9878906 -74.8723924)', 4326), 38.9995572, -74.8857264, '1979-09-08', NULL, 'Official', 'Board Decision', '1943-01-01'),
  ('877485', 'Jones Island', 'Island', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.3065033, -75.216577, ST_GeomFromText('POINT(39.3065033 -75.216577)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877486', 'Jones Lake', 'Lake', 'New Jersey', 'NJ', 'Gloucester', 'Pitman East', 39.7419079, -75.0224472, ST_GeomFromText('POINT(39.7419079 -75.0224472)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('877489', 'Jordan Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Hackensack', 40.9487244, -74.1011176, ST_GeomFromText('POINT(40.9487244 -74.1011176)', 4326), 40.9367292, -74.1110015, '1979-09-08', '2013-04-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877492', 'Josh Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0703625, -74.8041219, ST_GeomFromText('POINT(39.0703625 -74.8041219)', 4326), 39.0772222, -74.8122222, '1979-09-08', '2013-04-15', 'Official', 'Board Decision', '1944-01-01'),
  ('877493', 'Joshua Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Dividing Creek', 39.3481704, -75.093514, ST_GeomFromText('POINT(39.3481704 -75.093514)', 4326), 39.3380556, -75.1241667, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877495', 'Judas Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Point Pleasant', 40.1245593, -74.0429148, ST_GeomFromText('POINT(40.1245593 -74.0429148)', 4326), 40.1321004, -74.0874436, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877496', 'Judies Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'New Gretna', 39.5527778, -74.4021285, ST_GeomFromText('POINT(39.5527778 -74.4021285)', 4326), 39.5567898, -74.3882534, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877497', 'Jug Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0742398, -74.781484, ST_GeomFromText('POINT(39.0742398 -74.781484)', 4326), 39.0762637, -74.7773454, '1979-09-08', '2013-04-15', 'Official', 'Board Decision', '1944-01-01'),
  ('877498', 'Lake Juliet', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.9623317, -74.4068569, ST_GeomFromText('POINT(40.9623317 -74.4068569)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('877501', 'Jumping Brook', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'New Egypt', 40.0516404, -74.5449561, ST_GeomFromText('POINT(40.0516404 -74.5449561)', 4326), 40.0591606, -74.4644415, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877502', 'Jumping Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.189914, -74.0577275, ST_GeomFromText('POINT(40.189914 -74.0577275)', 4326), 40.2558013, -74.0790939, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877503', 'Jumping Brook Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.2037242, -74.06625, ST_GeomFromText('POINT(40.2037242 -74.06625)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877507', 'Lake Just-It', 'Reservoir', 'New Jersey', 'NJ', 'Warren', 'Washington', 40.8665568, -74.9674751, ST_GeomFromText('POINT(40.8665568 -74.9674751)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877509', 'Kaighn Point', 'Cape', 'New Jersey', 'NJ', 'Camden', 'Philadelphia', 39.9267796, -75.1304538, ST_GeomFromText('POINT(39.9267796 -75.1304538)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877513', 'Lake Kampfe', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0321302, -74.3464633, ST_GeomFromText('POINT(41.0321302 -74.3464633)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('877514', 'Kandle Lake', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Pitman East', 39.730716, -75.0865988, ST_GeomFromText('POINT(39.730716 -75.0865988)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('877515', 'Kanouse Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.0403968, -74.4351169, ST_GeomFromText('POINT(41.0403968 -74.4351169)', 4326), 41.0944082, -74.4050145, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877516', 'Kanouse Mountain', 'Summit', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.0417071, -74.421819, ST_GeomFromText('POINT(41.0417071 -74.421819)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('877518', 'Kates Creek Meadow', 'Swamp', 'New Jersey', 'NJ', 'Salem', 'Penns Grove', 39.6262243, -75.4685305, ST_GeomFromText('POINT(39.6262243 -75.4685305)', 4326), NULL, NULL, '1979-09-08', '2020-03-31', NULL, NULL, NULL),
  ('877519', 'Lake Kathryn', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Flatbrookville', 41.0973748, -74.88781, ST_GeomFromText('POINT(41.0973748 -74.88781)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('877522', 'Kay Pond', 'Lake', 'New Jersey', 'NJ', 'Cape May', 'Rio Grande', 39.0602592, -74.8914818, ST_GeomFromText('POINT(39.0602592 -74.8914818)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('877525', 'Kearny Point', 'Cape', 'New Jersey', 'NJ', 'Hudson', 'Jersey City', 40.7259351, -74.1112538, ST_GeomFromText('POINT(40.7259351 -74.1112538)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877528', 'Keasbeys Creek', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Salem', 39.5760233, -75.4570413, ST_GeomFromText('POINT(39.5760233 -75.4570413)', 4326), 39.5578341, -75.4157634, '1979-09-08', '2013-04-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877531', 'Kells Pond', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0300604, -74.1786266, ST_GeomFromText('POINT(41.0300604 -74.1786266)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('877532', 'Kelly Point', 'Cape', 'New Jersey', 'NJ', 'Salem', 'Wilmington South', 39.6453907, -75.5418674, ST_GeomFromText('POINT(39.6453907 -75.5418674)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877533', 'Lake Kemah', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Newton West', 41.124085, -74.7881045, ST_GeomFromText('POINT(41.124085 -74.7881045)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('877534', 'Kemble Mountain', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Mendham', 40.7776368, -74.5079819, ST_GeomFromText('POINT(40.7776368 -74.5079819)', 4326), NULL, NULL, '1979-09-08', '2018-04-17', NULL, NULL, NULL),
  ('877535', 'Mount Kemble', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Mendham', 40.7667735, -74.5210318, ST_GeomFromText('POINT(40.7667735 -74.5210318)', 4326), NULL, NULL, '1979-09-08', '2018-04-17', NULL, NULL, NULL),
  ('877537', 'Kendles Run', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Beverly', 40.0087862, -74.8954672, ST_GeomFromText('POINT(40.0087862 -74.8954672)', 4326), 39.9942023, -74.908905, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877539', 'Kenilworth Lake', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Clementon', 39.8440409, -74.9146835, ST_GeomFromText('POINT(39.8440409 -74.9146835)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('877543', 'Kenny Point', 'Cape', 'New Jersey', 'NJ', 'Cumberland', 'Port Norris', 39.2070584, -75.0871255, ST_GeomFromText('POINT(39.2070584 -75.0871255)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('877551', 'Keswick Lake', 'Lake', 'New Jersey', 'NJ', 'Ocean', 'Keswick Grove', 39.9497438, -74.3469967, ST_GeomFromText('POINT(39.9497438 -74.3469967)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('877553', 'Kettle Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0142384, -74.1055083, ST_GeomFromText('POINT(40.0142384 -74.1055083)', 4326), 40.0423387, -74.1995868, '1979-09-08', '2013-04-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877554', 'Kettle Run', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Pitman West', 39.6617808, -75.2207395, ST_GeomFromText('POINT(39.6617808 -75.2207395)', 4326), 39.6447982, -75.2155566, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877555', 'Kettle Run', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Medford Lakes', 39.8181708, -74.8598853, ST_GeomFromText('POINT(39.8181708 -74.8598853)', 4326), 39.8098372, -74.9071088, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877557', 'Keyport Harbor', 'Bay', 'New Jersey', 'NJ', 'Monmouth', 'Keyport', 40.4445517, -74.1993105, ST_GeomFromText('POINT(40.4445517 -74.1993105)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877558', 'Kiahs Island', 'Island', 'New Jersey', 'NJ', 'Atlantic', 'Ocean City', 39.3501163, -74.5307092, ST_GeomFromText('POINT(39.3501163 -74.5307092)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877559', 'Kakeout Mountain', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.9891202, -74.3761763, ST_GeomFromText('POINT(40.9891202 -74.3761763)', 4326), NULL, NULL, '1979-09-08', '2022-08-13', 'Official', 'Board Decision', '2020-10-08'),
  ('877560', 'Kill Van Kull', 'Stream', 'New Jersey', 'NJ', 'Hudson', 'Elizabeth', 40.6414923, -74.1512545, ST_GeomFromText('POINT(40.6414923 -74.1512545)', 4326), 40.6523256, -74.0834749, '1979-09-08', '2020-03-20', 'Official', 'Board Decision', '1897-10-05'),
  ('877565', 'Kimbles Pond', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Newton East', 41.109526, -74.631586, ST_GeomFromText('POINT(41.109526 -74.631586)', 4326), NULL, NULL, '1979-09-08', '2024-10-30', NULL, NULL, NULL),
  ('877568', 'King Cove', 'Bay', 'New Jersey', 'NJ', 'Morris', 'Stanhope', 40.9200986, -74.647661, ST_GeomFromText('POINT(40.9200986 -74.647661)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877570', 'King Pond', 'Lake', 'New Jersey', 'NJ', 'Cumberland', 'Fortescue', 39.2003917, -75.1374061, ST_GeomFromText('POINT(39.2003917 -75.1374061)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877573', 'Kings Bluff', 'Summit', 'New Jersey', 'NJ', 'Hudson', 'Weehawken', 40.7655334, -74.0208193, ST_GeomFromText('POINT(40.7655334 -74.0208193)', 4326), NULL, NULL, '1979-09-08', '2022-08-16', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877574', 'Kings Creek', 'Stream', 'New Jersey', 'NJ', 'Union', 'Arthur Kill', 40.6012439, -74.2496717, ST_GeomFromText('POINT(40.6012439 -74.2496717)', 4326), 40.612799, -74.2574769, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877577', 'Kingsland Creek', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Weehawken', 40.7748232, -74.0915309, ST_GeomFromText('POINT(40.7748232 -74.0915309)', 4326), 40.7886111, -74.1138889, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877590', 'Mount Kipp', 'Summit', 'New Jersey', 'NJ', 'Hunterdon', 'High Bridge', 40.6917926, -74.9251896, ST_GeomFromText('POINT(40.6917926 -74.9251896)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('877594', 'Kirkwood Lake', 'Reservoir', 'New Jersey', 'NJ', 'Camden', 'Clementon', 39.8350423, -74.9942403, ST_GeomFromText('POINT(39.8350423 -74.9942403)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('877597', 'Kitchell Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0894235, -74.3540248, ST_GeomFromText('POINT(41.0894235 -74.3540248)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('877599', 'Kittatinny Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Culvers Gap', 41.1748599, -74.8002737, ST_GeomFromText('POINT(41.1748599 -74.8002737)', 4326), NULL, NULL, '1979-09-08', '2019-07-10', NULL, NULL, NULL),
  ('877600', 'Kittatinny Mountain', 'Summit', 'New Jersey', 'NJ', 'Sussex', 'Port Jervis South', 41.3209193, -74.6615498, ST_GeomFromText('POINT(41.3209193 -74.6615498)', 4326), NULL, NULL, '1979-09-08', '2018-10-23', 'Official', 'Board Decision', '1938-01-01'),
  ('877606', 'Knoll Pond', 'Lake', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.7267198, -74.176069, ST_GeomFromText('POINT(39.7267198 -74.176069)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('877609', 'Kofferls Pond', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9839579, -74.682906, ST_GeomFromText('POINT(40.9839579 -74.682906)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('877610', 'Kohout Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Wawayanda', 41.1925247, -74.3934838, ST_GeomFromText('POINT(41.1925247 -74.3934838)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877612', 'Kressey Lake', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Pitman East', 39.7351042, -75.1124306, ST_GeomFromText('POINT(39.7351042 -75.1124306)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('877614', 'Kresson Lake', 'Lake', 'New Jersey', 'NJ', 'Camden', 'Clementon', 39.8540246, -74.9236925, ST_GeomFromText('POINT(39.8540246 -74.9236925)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('877615', 'Kuser Pond', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Columbus', 40.1068976, -74.6784606, ST_GeomFromText('POINT(40.1068976 -74.6784606)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('877618', 'Labar Island', 'Island', 'New Jersey', 'NJ', 'Warren', 'Bushkill', 41.0156513, -75.0793432, ST_GeomFromText('POINT(41.0156513 -75.0793432)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877619', 'Lake Lackawanna', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9518991, -74.692204, ST_GeomFromText('POINT(40.9518991 -74.692204)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('877620', 'Ladow Millpond', 'Reservoir', 'New Jersey', 'NJ', 'Cumberland', 'Dividing Creek', 39.2794897, -75.0971398, ST_GeomFromText('POINT(39.2794897 -75.0971398)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('877631', 'Lahaway Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'New Egypt', 40.1079562, -74.5408282, ST_GeomFromText('POINT(40.1079562 -74.5408282)', 4326), 40.1560116, -74.4340843, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877633', 'Lake Denmark', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.9477918, -74.5423344, ST_GeomFromText('POINT(40.9477918 -74.5423344)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('877645', 'Lakes Bay', 'Bay', 'New Jersey', 'NJ', 'Atlantic', 'Ocean City', 39.3717833, -74.5051525, ST_GeomFromText('POINT(39.3717833 -74.5051525)', 4326), NULL, NULL, '1979-09-08', '2006-10-31', 'Official', 'Board Decision', '1939-01-01'),
  ('877647', 'Lakes Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3254342, -74.6636975, ST_GeomFromText('POINT(39.3254342 -74.6636975)', 4326), 39.3602778, -74.6294444, '1979-09-08', '2013-04-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877658', 'Lamington River', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Gladstone', 40.6343042, -74.6828941, ST_GeomFromText('POINT(40.6343042 -74.6828941)', 4326), 40.8769445, -74.6031654, '1979-09-08', '2014-10-07', 'Official', 'Board Decision', '1897-01-01'),
  ('877661', 'Landing Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'New Gretna', 39.502062, -74.4076481, ST_GeomFromText('POINT(39.502062 -74.4076481)', 4326), 39.4847334, -74.4088984, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877662', 'Landing Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Green Bank', 39.5820623, -74.5440425, ST_GeomFromText('POINT(39.5820623 -74.5440425)', 4326), 39.5386017, -74.6848226, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877665', 'Lands Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Dividing Creek', 39.2743993, -75.0254738, ST_GeomFromText('POINT(39.2743993 -75.0254738)', 4326), 39.2786111, -75.0347222, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877674', 'Larkins Run', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.9924906, -74.5702386, ST_GeomFromText('POINT(39.9924906 -74.5702386)', 4326), 40.0041882, -74.5970124, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877676', 'Laurel Gully Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.1891969, -74.0571105, ST_GeomFromText('POINT(40.1891969 -74.0571105)', 4326), 40.188992, -74.0709937, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877678', 'Laurel Hill', 'Summit', 'New Jersey', 'NJ', 'Hudson', 'Weehawken', 40.7578236, -74.0891796, ST_GeomFromText('POINT(40.7578236 -74.0891796)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', 'Official', 'Board Decision', '1959-01-01'),
  ('877682', 'Laurel Lake', 'Lake', 'New Jersey', 'NJ', 'Camden', 'Runnemede', 39.8175116, -75.0110022, ST_GeomFromText('POINT(39.8175116 -75.0110022)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('877683', 'Laurel Lake', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Mendham', 40.8625993, -74.5246011, ST_GeomFromText('POINT(40.8625993 -74.5246011)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877685', 'Laurel Lake', 'Reservoir', 'New Jersey', 'NJ', 'Salem', 'Salem', 39.5456689, -75.4026951, ST_GeomFromText('POINT(39.5456689 -75.4026951)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877686', 'Laurel Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Park Ridge', 41.0578744, -74.0540296, ST_GeomFromText('POINT(41.0578744 -74.0540296)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877689', 'Laurel Pond', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Wawayanda', 41.1813149, -74.4247911, ST_GeomFromText('POINT(41.1813149 -74.4247911)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('877690', 'Laurel Run', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Beverly', 40.0276802, -74.9259585, ST_GeomFromText('POINT(40.0276802 -74.9259585)', 4326), 40.0126771, -74.9296036, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877697', 'Lawlin Pond', 'Lake', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.015381, -74.1904437, ST_GeomFromText('POINT(41.015381 -74.1904437)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('877708', 'Lawrence Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Newton East', 41.053767, -74.7031915, ST_GeomFromText('POINT(41.053767 -74.7031915)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('877712', 'Lawrens Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Port Elizabeth', 39.3728637, -74.9425855, ST_GeomFromText('POINT(39.3728637 -74.9425855)', 4326), 39.3722222, -74.9052778, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877714', 'Laytons Lake', 'Reservoir', 'New Jersey', 'NJ', 'Salem', 'Penns Grove', 39.692113, -75.424426, ST_GeomFromText('POINT(39.692113 -75.424426)', 4326), NULL, NULL, '1979-09-08', '2024-10-30', NULL, NULL, NULL),
  ('877715', 'Lazy Acres Pond', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Greenwood Lake', 41.1398177, -74.3179284, ST_GeomFromText('POINT(41.1398177 -74.3179284)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877718', 'Lebanon Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Millville', 39.4353929, -75.1037917, ST_GeomFromText('POINT(39.4353929 -75.1037917)', 4326), 39.4656899, -75.1770669, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877721', 'Ledells Pond', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Mendham', 40.7679908, -74.5561344, ST_GeomFromText('POINT(40.7679908 -74.5561344)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877723', 'Ledgewood Pond', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Stanhope', 40.8815665, -74.6585967, ST_GeomFromText('POINT(40.8815665 -74.6585967)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('877724', 'Lee Meadows', 'Swamp', 'New Jersey', 'NJ', 'Morris', 'Morristown', 40.8400996, -74.4454316, ST_GeomFromText('POINT(40.8400996 -74.4454316)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877729', 'Leeper Pond', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Wawayanda', 41.1539671, -74.3940929, ST_GeomFromText('POINT(41.1539671 -74.3940929)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('877733', 'Lake Lefferts', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Keyport', 40.4108625, -74.2412482, ST_GeomFromText('POINT(40.4108625 -74.2412482)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', 'Official', 'Board Decision', '1950-01-01'),
  ('877736', 'Lake Lenape', 'Lake', 'New Jersey', 'NJ', 'Atlantic', 'Mays Landing', 39.4676555, -74.7407655, ST_GeomFromText('POINT(39.4676555 -74.7407655)', 4326), NULL, NULL, '1979-09-08', '2018-12-17', NULL, NULL, NULL),
  ('877737', 'Lake Lenape', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Newton East', 41.0043629, -74.7296565, ST_GeomFromText('POINT(41.0043629 -74.7296565)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('877742', 'Lewis Brook', 'Stream', 'New Jersey', 'NJ', 'Mercer', 'Pennington', 40.3337869, -74.7819614, ST_GeomFromText('POINT(40.3337869 -74.7819614)', 4326), 40.3290801, -74.7969764, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877755', 'Liffy Island', 'Island', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.9731537, -74.6146047, ST_GeomFromText('POINT(40.9731537 -74.6146047)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877756', 'Lighthouse Pond', 'Lake', 'New Jersey', 'NJ', 'Cape May', 'Cape May', 38.9350947, -74.9597369, ST_GeomFromText('POINT(38.9350947 -74.9597369)', 4326), NULL, NULL, '1979-09-08', '2018-12-17', 'Official', 'Board Decision', '1944-01-01'),
  ('877757', 'Lake of the Lilies', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0830928, -74.0427556, ST_GeomFromText('POINT(40.0830928 -74.0427556)', 4326), NULL, NULL, '1979-09-08', '2022-08-03', 'Official', 'Board Decision', '1959-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877758', 'Lily Lake', 'Reservoir', 'New Jersey', 'NJ', 'Atlantic', 'Oceanville', 39.4677637, -74.4583287, ST_GeomFromText('POINT(39.4677637 -74.4583287)', 4326), NULL, NULL, '1979-09-08', '2018-12-17', NULL, NULL, NULL),
  ('877759', 'Lake Lily', 'Lake', 'New Jersey', 'NJ', 'Cape May', 'Cape May', 38.9389947, -74.9632747, ST_GeomFromText('POINT(38.9389947 -74.9632747)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', 'Official', 'Board Decision', '1944-01-01'),
  ('877808', 'Linden Lake', 'Lake', 'New Jersey', 'NJ', 'Camden', 'Clementon', 39.8275912, -74.9805524, ST_GeomFromText('POINT(39.8275912 -74.9805524)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('877811', 'Lindy Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0765354, -74.3715587, ST_GeomFromText('POINT(41.0765354 -74.3715587)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('877812', 'Linger Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Cape May', 38.9537238, -74.882393, ST_GeomFromText('POINT(38.9537238 -74.882393)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('877813', 'Lingerts Pond', 'Reservoir', 'New Jersey', 'NJ', 'Hunterdon', 'High Bridge', 40.6337043, -74.9261202, ST_GeomFromText('POINT(40.6337043 -74.9261202)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('877818', 'Lion Lake', 'Lake', 'New Jersey', 'NJ', 'Camden', 'Clementon', 39.8501704, -74.9270806, ST_GeomFromText('POINT(39.8501704 -74.9270806)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('877819', 'Lionhead Lake', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Pompton Plains', 40.974503, -74.259853, ST_GeomFromText('POINT(40.974503 -74.259853)', 4326), NULL, NULL, '1979-09-08', '2024-10-30', NULL, NULL, NULL),
  ('877820', 'Little Bay', 'Bay', 'New Jersey', 'NJ', 'Atlantic', 'Oceanville', 39.3812278, -74.4684842, ST_GeomFromText('POINT(39.3812278 -74.4684842)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877821', 'Little Bay', 'Bay', 'New Jersey', 'NJ', 'Atlantic', 'Oceanville', 39.4540062, -74.3784801, ST_GeomFromText('POINT(39.4540062 -74.3784801)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877822', 'Island Beach', 'Beach', 'New Jersey', 'NJ', 'Atlantic', 'Brigantine Inlet', 39.4823397, -74.3262556, ST_GeomFromText('POINT(39.4823397 -74.3262556)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877823', 'Little Beach', 'Beach', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.7398421, -74.1748604, ST_GeomFromText('POINT(39.7398421 -74.1748604)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877824', 'Little Bear Brook', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'Hightstown', 40.3288511, -74.6245104, ST_GeomFromText('POINT(40.3288511 -74.6245104)', 4326), 40.3143849, -74.6454048, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877826', 'Little Brook', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'Califon', 40.7121566, -74.8550731, ST_GeomFromText('POINT(40.7121566 -74.8550731)', 4326), 40.7377778, -74.8622222, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877827', 'Little Bull Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Green Bank', 39.6138256, -74.5930213, ST_GeomFromText('POINT(39.6138256 -74.5930213)', 4326), 39.6241667, -74.5777778, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877828', 'Little Creek', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Canton', 39.4349666, -75.4410982, ST_GeomFromText('POINT(39.4349666 -75.4410982)', 4326), 39.468038, -75.4318982, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877829', 'Little Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Mount Holly', 39.9427866, -74.7990578, ST_GeomFromText('POINT(39.9427866 -74.7990578)', 4326), 39.8813889, -74.7694444, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877832', 'Little Ease Run', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Newfield', 39.5823492, -75.0784206, ST_GeomFromText('POINT(39.5823492 -75.0784206)', 4326), 39.6990478, -75.0930548, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877833', 'Little Egg Harbor', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5901183, -74.2729198, ST_GeomFromText('POINT(39.5901183 -74.2729198)', 4326), NULL, NULL, '1979-09-08', '2016-09-23', NULL, NULL, NULL),
  ('877834', 'Little Egg Inlet', 'Bay', 'New Jersey', 'NJ', 'Atlantic', 'Brigantine Inlet', 39.4981732, -74.3173663, ST_GeomFromText('POINT(39.4981732 -74.3173663)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877838', 'Little Flat Brook', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Culvers Gap', 41.1890297, -74.8470815, ST_GeomFromText('POINT(41.1890297 -74.8470815)', 4326), 41.2923169, -74.738498, '1979-09-08', '2014-06-06', NULL, NULL, NULL),
  ('877839', 'Little Goose Pond', 'Lake', 'New Jersey', 'NJ', 'Atlantic', 'Egg Harbor City', 39.5228627, -74.672571, ST_GeomFromText('POINT(39.5228627 -74.672571)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('877840', 'Little Greaves Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3023373, -74.7332183, ST_GeomFromText('POINT(39.3023373 -74.7332183)', 4326), 39.3058616, -74.7254419, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877841', 'Little Hauken Run', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Jenkins', 39.7049498, -74.5537484, ST_GeomFromText('POINT(39.7049498 -74.5537484)', 4326), 39.7249591, -74.5292571, '1979-09-08', '2013-04-15', 'Official', 'Board Decision', '1897-01-01'),
  ('877842', 'Little Hurricane Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Whiting', 39.9868208, -74.3872905, ST_GeomFromText('POINT(39.9868208 -74.3872905)', 4326), 39.9891667, -74.4175, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877843', 'Little Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5770626, -74.2518078, ST_GeomFromText('POINT(39.5770626 -74.2518078)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877844', 'Little Lebanon Branch', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Runnemede', 39.7564345, -75.035634, ST_GeomFromText('POINT(39.7564345 -75.035634)', 4326), 39.7334249, -75.0348938, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877845', 'Little Mantua Creek', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Woodbury', 39.8557328, -75.2192795, ST_GeomFromText('POINT(39.8557328 -75.2192795)', 4326), 39.8224509, -75.1953489, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877846', 'Little Meadow Run', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Pleasantville', 39.376783, -74.5779335, ST_GeomFromText('POINT(39.376783 -74.5779335)', 4326), 39.3773318, -74.6171477, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877847', 'Little Mill Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Cape May', 38.9684339, -74.9023175, ST_GeomFromText('POINT(38.9684339 -74.9023175)', 4326), 38.9770005, -74.8976332, '1979-09-08', '2013-04-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877848', 'Little Mill Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Port Elizabeth', 39.2834479, -74.9807302, ST_GeomFromText('POINT(39.2834479 -74.9807302)', 4326), 39.2818157, -74.9598992, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877849', 'Little Mill Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Newtonville', 39.509621, -74.7778349, ST_GeomFromText('POINT(39.509621 -74.7778349)', 4326), 39.5241667, -74.7786111, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877851', 'Little Nishisakawick Creek', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'Frenchtown', 40.5232673, -75.0635438, ST_GeomFromText('POINT(40.5232673 -75.0635438)', 4326), 40.5383868, -75.0005507, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877853', 'Little Pine Lake', 'Lake', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.9894225, -74.5701337, ST_GeomFromText('POINT(39.9894225 -74.5701337)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('877854', 'Little Pond Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.2874148, -75.2142061, ST_GeomFromText('POINT(39.2874148 -75.2142061)', 4326), 39.2849257, -75.2028108, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877855', 'Little Robin Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Millville', 39.4820877, -75.0745475, ST_GeomFromText('POINT(39.4820877 -75.0745475)', 4326), 39.4887638, -75.0488225, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877859', 'Little Shabakunk Creek', 'Stream', 'New Jersey', 'NJ', 'Mercer', 'Princeton', 40.2634944, -74.7149652, ST_GeomFromText('POINT(40.2634944 -74.7149652)', 4326), 40.2866463, -74.7467494, '1979-09-08', '2014-12-03', NULL, NULL, NULL),
  ('877861', 'Little Silver Lake', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0911589, -74.0407361, ST_GeomFromText('POINT(40.0911589 -74.0407361)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('877862', 'Little Snake Hill', 'Summit', 'New Jersey', 'NJ', 'Hudson', 'Weehawken', 40.7565521, -74.0785339, ST_GeomFromText('POINT(40.7565521 -74.0785339)', 4326), NULL, NULL, '1979-09-08', '2022-08-13', 'Official', 'Board Decision', '1959-01-01'),
  ('877863', 'Little Sound Meadow', 'Swamp', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.04928, -74.8012775, ST_GeomFromText('POINT(39.04928 -74.8012775)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877864', 'Little Swartswood Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Newton West', 41.0854617, -74.8153761, ST_GeomFromText('POINT(41.0854617 -74.8153761)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('877866', 'Little Timber Creek', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Bridgeport', 39.8079756, -75.3234029, ST_GeomFromText('POINT(39.8079756 -75.3234029)', 4326), 39.7665727, -75.2916884, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877867', 'Little Timber Creek', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Philadelphia', 39.8813889, -75.1269444, ST_GeomFromText('POINT(39.8813889 -75.1269444)', 4326), 39.8708402, -75.0698161, '1979-09-08', '2017-03-01', NULL, NULL, NULL),
  ('877877', 'Livingston Ponds', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Wawayanda', 41.2056598, -74.4336377, ST_GeomFromText('POINT(41.2056598 -74.4336377)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('877879', 'Loantaka Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Chatham', 40.7259342, -74.4657095, ST_GeomFromText('POINT(40.7259342 -74.4657095)', 4326), 40.7844246, -74.4649029, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877881', 'Lockatong Creek', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'Lumberville', 40.4076051, -75.0140581, ST_GeomFromText('POINT(40.4076051 -75.0140581)', 4326), 40.5541825, -74.9469629, '1979-09-08', '2014-10-07', NULL, NULL, NULL),
  ('877888', 'Locust Lake', 'Reservoir', 'New Jersey', 'NJ', 'Warren', 'Portland', 40.9196603, -75.0008531, ST_GeomFromText('POINT(40.9196603 -75.0008531)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('877889', 'Locust Meadow', 'Flat', 'New Jersey', 'NJ', 'Salem', 'Canton', 39.4962238, -75.4565872, ST_GeomFromText('POINT(39.4962238 -75.4565872)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877891', 'Lodge Point', 'Cape', 'New Jersey', 'NJ', 'Gloucester', 'Woodbury', 39.8526132, -75.2304599, ST_GeomFromText('POINT(39.8526132 -75.2304599)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877895', 'Log Creek Pond', 'Lake', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.6894188, -74.1995909, ST_GeomFromText('POINT(39.6894188 -74.1995909)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877896', 'Log Swamp Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'West Creek', 39.6784974, -74.3349713, ST_GeomFromText('POINT(39.6784974 -74.3349713)', 4326), 39.6803967, -74.3904247, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877898', 'Loggerhead Pond', 'Lake', 'New Jersey', 'NJ', 'Salem', 'Pitman West', 39.6442103, -75.17998, ST_GeomFromText('POINT(39.6442103 -75.17998)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('877900', 'London Branch', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Bridgeport', 39.8134037, -75.2910568, ST_GeomFromText('POINT(39.8134037 -75.2910568)', 4326), 39.7791541, -75.2694771, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877902', 'Long Beach', 'Beach', 'New Jersey', 'NJ', 'Ocean', 'Long Beach NE', 39.736509, -74.1154134, ST_GeomFromText('POINT(39.736509 -74.1154134)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877905', 'Long Bog Run', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'New Egypt', 40.1079141, -74.5325214, ST_GeomFromText('POINT(40.1079141 -74.5325214)', 4326), 40.1293575, -74.5056604, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877906', 'Long Branch', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Buena', 39.5178638, -74.9982119, ST_GeomFromText('POINT(39.5178638 -74.9982119)', 4326), 39.53463, -74.9925363, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877907', 'Long Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Brookville', 39.823794, -74.2886013, ST_GeomFromText('POINT(39.823794 -74.2886013)', 4326), 39.7913993, -74.3228316, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877908', 'Long Branch Run', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Shiloh', 39.466572, -75.3599131, ST_GeomFromText('POINT(39.466572 -75.3599131)', 4326), 39.4639153, -75.3239514, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877910', 'Long Brook', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Lakehurst', 40.0728829, -74.310472, ST_GeomFromText('POINT(40.0728829 -74.310472)', 4326), 40.0720701, -74.355619, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877911', 'Long Causeway Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Lakewood', 40.0233751, -74.1282535, ST_GeomFromText('POINT(40.0233751 -74.1282535)', 4326), 40.0321934, -74.1597734, '1979-09-08', '2013-04-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877913', 'Long Hill', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Chester', 40.7656476, -74.6632144, ST_GeomFromText('POINT(40.7656476 -74.6632144)', 4326), NULL, NULL, '1979-09-08', '2021-11-27', NULL, NULL, NULL),
  ('877914', 'Long Hill', 'Ridge', 'New Jersey', 'NJ', 'Morris', 'Chatham', 40.7164424, -74.4103563, ST_GeomFromText('POINT(40.7164424 -74.4103563)', 4326), NULL, NULL, '1979-09-08', '2024-10-02', NULL, NULL, NULL),
  ('877916', 'Long Meadow', 'Swamp', 'New Jersey', 'NJ', 'Essex', 'Caldwell', 40.866766, -74.3043155, ST_GeomFromText('POINT(40.866766 -74.3043155)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877917', 'Long Meadow Swamp', 'Swamp', 'New Jersey', 'NJ', 'Sussex', 'Milford', 41.2951164, -74.7593046, ST_GeomFromText('POINT(41.2951164 -74.7593046)', 4326), NULL, NULL, '1979-09-08', '2012-04-17', NULL, NULL, NULL),
  ('877918', 'Long Neck Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Keyport', 40.4446323, -74.2264277, ST_GeomFromText('POINT(40.4446323 -74.2264277)', 4326), 40.4348244, -74.2403591, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877919', 'Long Pine Pond', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Flatbrookville', 41.1006742, -74.9051667, ST_GeomFromText('POINT(41.1006742 -74.9051667)', 4326), NULL, NULL, '1979-09-08', '2019-07-10', NULL, NULL, NULL),
  ('877920', 'Long Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Wildwood', 38.9709461, -74.8726702, ST_GeomFromText('POINT(38.9709461 -74.8726702)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('877921', 'Long Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5984517, -74.2620861, ST_GeomFromText('POINT(39.5984517 -74.2620861)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877922', 'Long Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Toms River', 39.937896, -74.1381944, ST_GeomFromText('POINT(39.937896 -74.1381944)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877923', 'Long Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0981711, -74.0537483, ST_GeomFromText('POINT(40.0981711 -74.0537483)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877924', 'Long Point Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3379984, -74.7026485, ST_GeomFromText('POINT(39.3379984 -74.7026485)', 4326), 39.3308037, -74.717685, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877927', 'Long Swamp Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1649449, -74.1483164, ST_GeomFromText('POINT(40.1649449 -74.1483164)', 4326), 40.1821439, -74.1317081, '1979-09-08', '2013-04-15', 'Official', 'Board Decision', '1980-01-01'),
  ('877929', 'Long Valley', 'Valley', 'New Jersey', 'NJ', 'Hunterdon', 'Califon', 40.7437057, -74.8374321, ST_GeomFromText('POINT(40.7437057 -74.8374321)', 4326), 40.7050442, -74.8663252, '1979-09-08', '2023-07-21', NULL, NULL, NULL),
  ('877932', 'Longwood Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.9833833, -74.5374571, ST_GeomFromText('POINT(40.9833833 -74.5374571)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('877933', 'Lake Lonnie', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Beverly', 40.0225689, -74.9717582, ST_GeomFromText('POINT(40.0225689 -74.9717582)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('877934', 'Lookout Mountain', 'Summit', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9471015, -74.6583848, ST_GeomFromText('POINT(40.9471015 -74.6583848)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('877935', 'Lake Lookout', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Wawayanda', 41.1571324, -74.4345137, ST_GeomFromText('POINT(41.1571324 -74.4345137)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('877936', 'Lookover Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wawayanda', 41.1518633, -74.4000611, ST_GeomFromText('POINT(41.1518633 -74.4000611)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('877937', 'Lopatcong Creek', 'Stream', 'New Jersey', 'NJ', 'Warren', 'Easton', 40.6790799, -75.1784174, ST_GeomFromText('POINT(40.6790799 -75.1784174)', 4326), 40.7725985, -75.0757295, '1979-09-08', '2014-10-07', NULL, NULL, NULL),
  ('877938', 'Loper Run', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Bridgeton', 39.4739586, -75.2402477, ST_GeomFromText('POINT(39.4739586 -75.2402477)', 4326), 39.4816923, -75.2098703, '1979-09-08', '2013-04-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877940', 'Lores Island', 'Island', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.2826144, -75.2037988, ST_GeomFromText('POINT(39.2826144 -75.2037988)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877941', 'Losen Slofe', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Weehawken', 40.8286022, -74.0370423, ST_GeomFromText('POINT(40.8286022 -74.0370423)', 4326), 40.872978, -74.0591872, '1979-09-08', '2013-04-15', 'Official', 'Board Decision', '1959-01-01'),
  ('877942', 'Lost Lake', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Medford Lakes', 39.830719, -74.868135, ST_GeomFromText('POINT(39.830719 -74.868135)', 4326), NULL, NULL, '1979-09-08', '2024-10-30', NULL, NULL, NULL),
  ('877946', 'Lake Louise', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Stanhope', 40.9087234, -74.6625804, ST_GeomFromText('POINT(40.9087234 -74.6625804)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('877947', 'Lake Louise', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0974541, -74.0397644, ST_GeomFromText('POINT(40.0974541 -74.0397644)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', 'Official', 'Board Decision', '1959-01-01'),
  ('877948', 'Lake Louise', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1292543, -74.1996525, ST_GeomFromText('POINT(40.1292543 -74.1996525)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', 'Official', 'Board Decision', '1980-01-01'),
  ('877950', 'Lovelady Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.7259533, -74.1412479, ST_GeomFromText('POINT(39.7259533 -74.1412479)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1922-01-01'),
  ('877954', 'Lower Aetna Lake', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Medford Lakes', 39.8603117, -74.8011921, ST_GeomFromText('POINT(39.8603117 -74.8011921)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('877959', 'Lower Blauvelt Lake', 'Lake', 'New Jersey', 'NJ', 'Bergen', 'Paterson', 40.9993275, -74.2281199, ST_GeomFromText('POINT(40.9993275 -74.2281199)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', 'Official', 'Board Decision', '1960-01-01'),
  ('877960', 'Lower Brothers Creek (historical)', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Fortescue', 39.184836, -75.1424064, ST_GeomFromText('POINT(39.184836 -75.1424064)', 4326), 39.1825, -75.1375, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877961', 'Lower Brothers Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.2917202, -74.6951102, ST_GeomFromText('POINT(39.2917202 -74.6951102)', 4326), 39.2992085, -74.6961629, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877967', 'Lower Lake', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'Forked River', 39.836816, -74.19724, ST_GeomFromText('POINT(39.836816 -74.19724)', 4326), NULL, NULL, '1979-09-08', '2024-10-28', NULL, NULL, NULL),
  ('877971', 'Lower Pasture Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'New Gretna', 39.5807368, -74.3979335, ST_GeomFromText('POINT(39.5807368 -74.3979335)', 4326), 39.5831865, -74.4031477, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877972', 'Lower Plains', 'Flat', 'New Jersey', 'NJ', 'Burlington', 'Oswego Lake', 39.6953967, -74.4209815, ST_GeomFromText('POINT(39.6953967 -74.4209815)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877979', 'Lubbers Run', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9277321, -74.7250932, ST_GeomFromText('POINT(40.9277321 -74.7250932)', 4326), 40.9888233, -74.6336246, '1979-09-08', '2013-06-05', NULL, NULL, NULL),
  ('877980', 'Lucas Branch', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Egg Harbor City', 39.619396, -74.6273871, ST_GeomFromText('POINT(39.619396 -74.6273871)', 4326), 39.5974051, -74.6766257, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877982', 'Ludlam Bay', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Sea Isle City', 39.1767812, -74.6948833, ST_GeomFromText('POINT(39.1767812 -74.6948833)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1899-01-01'),
  ('877983', 'Ludlam Beach', 'Beach', 'New Jersey', 'NJ', 'Cape May', 'Sea Isle City', 39.1476143, -74.6943277, ST_GeomFromText('POINT(39.1476143 -74.6943277)', 4326), NULL, NULL, '1979-09-08', '2013-12-04', 'Official', 'Board Decision', '1891-01-01'),
  ('877984', 'Ludlam Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Marmora', 39.2839001, -74.6830684, ST_GeomFromText('POINT(39.2839001 -74.6830684)', 4326), 39.286136, -74.6934271, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877986', 'Ludlams Pond', 'Reservoir', 'New Jersey', 'NJ', 'Cape May', 'Woodbine', 39.1981658, -74.8398105, ST_GeomFromText('POINT(39.1981658 -74.8398105)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('877990', 'Ludlum Pond', 'Lake', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0762246, -74.7943326, ST_GeomFromText('POINT(39.0762246 -74.7943326)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('877993', 'Lummis Lakes', 'Reservoir', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.3512287, -75.1755307, ST_GeomFromText('POINT(39.3512287 -75.1755307)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('877994', 'Lummis Marsh Branch', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Millville', 39.4952022, -75.1210141, ST_GeomFromText('POINT(39.4952022 -75.1210141)', 4326), 39.4817772, -75.1557219, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('877996', 'Luse Pond', 'Lake', 'New Jersey', 'NJ', 'Warren', 'Blairstown', 40.9339846, -74.8952883, ST_GeomFromText('POINT(40.9339846 -74.8952883)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('878003', 'Lake Ma-He-Go', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Pompton Plains', 40.993992, -74.3614808, ST_GeomFromText('POINT(40.993992 -74.3614808)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878004', 'MacMillan Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.085442, -74.203128, ST_GeomFromText('POINT(41.085442 -74.203128)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878005', 'Macanippuck Run', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Shiloh', 39.4293731, -75.3494793, ST_GeomFromText('POINT(39.4293731 -75.3494793)', 4326), 39.4438035, -75.3342551, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('878010', 'Macks Island', 'Island', 'New Jersey', 'NJ', 'Warren', 'Belvidere', 40.8484309, -75.076286, ST_GeomFromText('POINT(40.8484309 -75.076286)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878012', 'Macopin Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.0217907, -74.403665, ST_GeomFromText('POINT(41.0217907 -74.403665)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878013', 'Macopin River', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.0243743, -74.4069149, ST_GeomFromText('POINT(41.0243743 -74.4069149)', 4326), 41.0493785, -74.4068384, '1979-09-08', '2013-04-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878015', 'Macs Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Bound Brook', 40.579945, -74.6205246, ST_GeomFromText('POINT(40.579945 -74.6205246)', 4326), 40.5961301, -74.610756, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('878016', 'Mad Horse Creek', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Canton', 39.4165016, -75.4518651, ST_GeomFromText('POINT(39.4165016 -75.4518651)', 4326), 39.4619501, -75.4467094, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('878027', 'Magnolia Lake', 'Reservoir', 'New Jersey', 'NJ', 'Cape May', 'Sea Isle City', 39.1745295, -74.73986, ST_GeomFromText('POINT(39.1745295 -74.73986)', 4326), NULL, NULL, '1979-09-08', '2018-12-17', NULL, NULL, NULL),
  ('878030', 'Mahoras Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Keyport', 40.4197714, -74.1368955, ST_GeomFromText('POINT(40.4197714 -74.1368955)', 4326), 40.3920904, -74.1590881, '1979-09-08', '2014-10-10', NULL, NULL, NULL),
  ('878032', 'Mahwah River', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.1035765, -74.1557086, ST_GeomFromText('POINT(41.1035765 -74.1557086)', 4326), 41.2054198, -74.0545939, '1979-09-08', '2015-05-01', NULL, NULL, NULL),
  ('878035', 'Main Marsh Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Oceanville', 39.4873044, -74.3865234, ST_GeomFromText('POINT(39.4873044 -74.3865234)', 4326), 39.4873106, -74.3954712, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('878037', 'Main Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.6773416, -74.1890275, ST_GeomFromText('POINT(39.6773416 -74.1890275)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878038', 'Major Run', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Penns Grove', 39.6545893, -75.3773046, ST_GeomFromText('POINT(39.6545893 -75.3773046)', 4326), 39.6156693, -75.353525, '1979-09-08', '2013-04-15', 'Official', 'Board Decision', '1897-01-01'),
  ('878039', 'Majors Pond', 'Reservoir', 'New Jersey', 'NJ', 'Middlesex', 'South Amboy', 40.4597591, -74.3640818, ST_GeomFromText('POINT(40.4597591 -74.3640818)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878041', 'Makepeace Stream', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Egg Harbor City', 39.5395611, -74.7376625, ST_GeomFromText('POINT(39.5395611 -74.7376625)', 4326), 39.5661111, -74.6977778, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878043', 'Malaga Branch', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Newfield', 39.576904, -75.0557077, ST_GeomFromText('POINT(39.576904 -75.0557077)', 4326), 39.5831017, -75.0141764, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('878045', 'Malaga Lake', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Newfield', 39.578345, -75.0588022, ST_GeomFromText('POINT(39.578345 -75.0588022)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('878047', 'Malapardis Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Morristown', 40.8228908, -74.4161806, ST_GeomFromText('POINT(40.8228908 -74.4161806)', 4326), 40.8359041, -74.4672954, '1979-09-08', '2014-12-03', NULL, NULL, NULL),
  ('878048', 'Malapartis Creek', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Canton', 39.4346683, -75.4419136, ST_GeomFromText('POINT(39.4346683 -75.4419136)', 4326), 39.4082752, -75.4210514, '1979-09-08', '2013-06-05', NULL, NULL, NULL),
  ('878050', 'Man Killer Branch', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Mays Landing', 39.4831684, -74.6679032, ST_GeomFromText('POINT(39.4831684 -74.6679032)', 4326), 39.5031725, -74.6615484, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('878053', 'Manahawkin Bay', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.6645636, -74.2006947, ST_GeomFromText('POINT(39.6645636 -74.2006947)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878054', 'Manahawkin Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.6709012, -74.2165625, ST_GeomFromText('POINT(39.6709012 -74.2165625)', 4326), 39.6982327, -74.247196, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('878056', 'Manahawkin Lake', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'West Creek', 39.7001748, -74.2634352, ST_GeomFromText('POINT(39.7001748 -74.2634352)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('878058', 'Manalapan Brook', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'New Brunswick', 40.3926073, -74.3826496, ST_GeomFromText('POINT(40.3926073 -74.3826496)', 4326), 40.1906675, -74.3973718, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878059', 'Lake Manalapan', 'Reservoir', 'New Jersey', 'NJ', 'Middlesex', 'Jamesburg', 40.3437554, -74.4316098, ST_GeomFromText('POINT(40.3437554 -74.4316098)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878062', 'Menantico Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Dividing Creek', 39.3380482, -75.0106788, ST_GeomFromText('POINT(39.3380482 -75.0106788)', 4326), 39.4604426, -74.957732, '1979-09-08', '2013-04-15', 'Official', 'Board Decision', '1979-01-01'),
  ('878063', 'Menantico Lake', 'Reservoir', 'New Jersey', 'NJ', 'Cumberland', 'Five Points', 39.4328545, -74.9619711, ST_GeomFromText('POINT(39.4328545 -74.9619711)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('878064', 'Manapaqua Brook', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Lakehurst', 40.0098996, -74.2983162, ST_GeomFromText('POINT(40.0098996 -74.2983162)', 4326), 40.0233135, -74.3720609, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878067', 'Manasquan River', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Point Pleasant', 40.1024981, -74.0343332, ST_GeomFromText('POINT(40.1024981 -74.0343332)', 4326), 40.2005514, -74.3420255, '1979-09-08', '2014-10-10', NULL, NULL, NULL),
  ('878070', 'Lake Manetta', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'Lakewood', 40.0926948, -74.2258224, ST_GeomFromText('POINT(40.0926948 -74.2258224)', 4326), NULL, NULL, '1979-09-08', '2022-08-03', 'Official', 'Board Decision', '1950-01-01'),
  ('878071', 'Mankiller Bay', 'Bay', 'New Jersey', 'NJ', 'Atlantic', 'Oceanville', 39.3978947, -74.432927, ST_GeomFromText('POINT(39.3978947 -74.432927)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878072', 'Mankiller Island', 'Island', 'New Jersey', 'NJ', 'Atlantic', 'Oceanville', 39.3926169, -74.4348716, ST_GeomFromText('POINT(39.3926169 -74.4348716)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878074', 'Mannington Creek', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Salem', 39.6109465, -75.4513077, ST_GeomFromText('POINT(39.6109465 -75.4513077)', 4326), 39.6077778, -75.3811111, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878075', 'Mannington Meadow', 'Swamp', 'New Jersey', 'NJ', 'Salem', 'Salem', 39.604002, -75.4649195, ST_GeomFromText('POINT(39.604002 -75.4649195)', 4326), NULL, NULL, '1979-09-08', '2020-03-31', NULL, NULL, NULL),
  ('878076', 'Mannis Duck Pond', 'Lake', 'New Jersey', 'NJ', 'Burlington', 'Atsion', 39.7440031, -74.6668391, ST_GeomFromText('POINT(39.7440031 -74.6668391)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878082', 'Mantua Creek', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Woodbury', 39.8528624, -75.2301264, ST_GeomFromText('POINT(39.8528624 -75.2301264)', 4326), 39.7026145, -75.1029527, '1979-09-08', '2014-07-09', NULL, NULL, NULL),
  ('878086', 'Manumuskin River', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Port Elizabeth', 39.3107013, -74.9931479, ST_GeomFromText('POINT(39.3107013 -74.9931479)', 4326), 39.4677025, -74.8903602, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('878090', 'Maple Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Dividing Creek', 39.2591468, -75.0986794, ST_GeomFromText('POINT(39.2591468 -75.0986794)', 4326), 39.2742, -75.1179457, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('878091', 'Maple Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Toms River', 39.8812299, -74.139027, ST_GeomFromText('POINT(39.8812299 -74.139027)', 4326), 39.8772421, -74.1598606, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('878095', 'Maple Hill', 'Summit', 'New Jersey', 'NJ', 'Sussex', 'Wawayanda', 41.2055837, -74.3819261, ST_GeomFromText('POINT(41.2055837 -74.3819261)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('878096', 'Maple Hollow Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Bridgeton', 39.3934481, -75.1743516, ST_GeomFromText('POINT(39.3934481 -75.1743516)', 4326), 39.3838889, -75.1744444, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878097', 'Maple Island', 'Island', 'New Jersey', 'NJ', 'Camden', 'Hammonton', 39.7423389, -74.8254393, ST_GeomFromText('POINT(39.7423389 -74.8254393)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878098', 'Maple Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Wanaque', 41.0054847, -74.3682399, ST_GeomFromText('POINT(41.0054847 -74.3682399)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878101', 'Maple Root Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Lakehurst', 40.0772587, -74.3136263, ST_GeomFromText('POINT(40.0772587 -74.3136263)', 4326), 40.0803923, -74.3898713, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('878102', 'Maple Run', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Ocean City', 39.3692081, -74.5799911, ST_GeomFromText('POINT(39.3692081 -74.5799911)', 4326), 39.4058091, -74.5663333, '1979-09-08', '2013-04-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878104', 'Maple Swamp', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Sea Isle City', 39.1767811, -74.7087728, ST_GeomFromText('POINT(39.1767811 -74.7087728)', 4326), 39.1808655, -74.7196014, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('878105', 'Maple Swamp', 'Swamp', 'New Jersey', 'NJ', 'Gloucester', 'Bridgeport', 39.7892799, -75.3738022, ST_GeomFromText('POINT(39.7892799 -75.3738022)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878107', 'Middlebrook Heights', 'Ridge', 'New Jersey', 'NJ', 'Somerset', 'Bound Brook', 40.5861731, -74.5275028, ST_GeomFromText('POINT(40.5861731 -74.5275028)', 4326), NULL, NULL, '1979-09-08', '2022-08-13', NULL, NULL, NULL),
  ('878112', 'Marble Mountain', 'Summit', 'New Jersey', 'NJ', 'Warren', 'Easton', 40.7309235, -75.1610072, ST_GeomFromText('POINT(40.7309235 -75.1610072)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('878115', 'Lake Marcia', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Port Jervis South', 41.3172731, -74.6670516, ST_GeomFromText('POINT(41.3172731 -74.6670516)', 4326), NULL, NULL, '1979-09-08', '2019-07-10', NULL, NULL, NULL),
  ('878116', 'Mare Run', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Dorothy', 39.4861265, -74.7544795, ST_GeomFromText('POINT(39.4861265 -74.7544795)', 4326), 39.49, -74.8266667, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('878119', 'Marine Lake', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.8820495, -74.6213932, ST_GeomFromText('POINT(40.8820495 -74.6213932)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878126', 'Marl Lakes', 'Lake', 'New Jersey', 'NJ', 'Gloucester', 'Pitman West', 39.7477913, -75.1515256, ST_GeomFromText('POINT(39.7477913 -75.1515256)', 4326), NULL, NULL, '1979-09-08', '2019-03-20', NULL, NULL, NULL),
  ('878140', 'Marsh Bog Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1632241, -74.1596568, ST_GeomFromText('POINT(40.1632241 -74.1596568)', 4326), 40.2441244, -74.1845155, '1979-09-08', '2013-04-15', 'Official', 'Board Decision', '1980-01-01'),
  ('878141', 'Marsh Lake', 'Lake', 'New Jersey', 'NJ', 'Gloucester', 'Buena', 39.563449, -74.9762824, ST_GeomFromText('POINT(39.563449 -74.9762824)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878142', 'Marsh Point', 'Cape', 'New Jersey', 'NJ', 'Salem', 'Delaware City', 39.5842793, -75.5274229, ST_GeomFromText('POINT(39.5842793 -75.5274229)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878143', 'Marsh Point', 'Cape', 'New Jersey', 'NJ', 'Middlesex', 'Perth Amboy', 40.5039943, -74.2918132, ST_GeomFromText('POINT(40.5039943 -74.2918132)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878144', 'Marshall Pond', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Wawayanda', 41.1458219, -74.4759731, ST_GeomFromText('POINT(41.1458219 -74.4759731)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878148', 'Marshalls Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Sea Isle City', 39.1988165, -74.6911204, ST_GeomFromText('POINT(39.1988165 -74.6911204)', 4326), 39.2013128, -74.7043557, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('878152', 'Marshelder Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.7056753, -74.1643043, ST_GeomFromText('POINT(39.7056753 -74.1643043)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878153', 'Marshelder Islands', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Beach Haven', 39.5834517, -74.2354182, ST_GeomFromText('POINT(39.5834517 -74.2354182)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1894-01-01'),
  ('878154', 'Marshelder Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5520624, -74.3187552, ST_GeomFromText('POINT(39.5520624 -74.3187552)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878155', 'Marshelder Pond', 'Lake', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.7043014, -74.1896315, ST_GeomFromText('POINT(39.7043014 -74.1896315)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('878156', 'Marshes Creek', 'Stream', 'New Jersey', 'NJ', 'Union', 'Arthur Kill', 40.6008713, -74.2208433, ST_GeomFromText('POINT(40.6008713 -74.2208433)', 4326), 40.6138889, -74.2402778, '1979-09-08', '2013-04-15', 'Official', 'Board Decision', '1967-01-01'),
  ('878158', 'Martha Pond', 'Lake', 'New Jersey', 'NJ', 'Burlington', 'Jenkins', 39.686501, -74.50651, ST_GeomFromText('POINT(39.686501 -74.50651)', 4326), NULL, NULL, '1979-09-08', '2024-10-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878165', 'Mary Ann Creek', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Weehawken', 40.7823231, -74.0893086, ST_GeomFromText('POINT(40.7823231 -74.0893086)', 4326), 40.7873572, -74.0898174, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('878166', 'Mary Elmer Lake', 'Reservoir', 'New Jersey', 'NJ', 'Cumberland', 'Shiloh', 39.4468695, -75.2504714, ST_GeomFromText('POINT(39.4468695 -75.2504714)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('878170', 'Mase Mountain', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.9520132, -74.5846947, ST_GeomFromText('POINT(40.9520132 -74.5846947)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('878171', 'Mashipacong Island', 'Island', 'New Jersey', 'NJ', 'Sussex', 'Port Jervis South', 41.3431496, -74.739053, ST_GeomFromText('POINT(41.3431496 -74.739053)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878172', 'Mashipacong Pond', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Port Jervis South', 41.2673904, -74.7282474, ST_GeomFromText('POINT(41.2673904 -74.7282474)', 4326), NULL, NULL, '1979-09-08', '2019-07-10', NULL, NULL, NULL),
  ('878174', 'Mason Run', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Runnemede', 39.8212437, -75.0279307, ST_GeomFromText('POINT(39.8212437 -75.0279307)', 4326), 39.800302, -75.0064516, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('878176', 'Masonicus Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.1033967, -74.1505024, ST_GeomFromText('POINT(41.1033967 -74.1505024)', 4326), 41.0919444, -74.1266667, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('878177', 'Masons Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3034487, -74.6693265, ST_GeomFromText('POINT(39.3034487 -74.6693265)', 4326), 39.2972044, -74.684844, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('878178', 'Masons Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Mount Holly', 39.986716, -74.8513019, ST_GeomFromText('POINT(39.986716 -74.8513019)', 4326), 39.9233302, -74.877786, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('878180', 'Mastodon Lake', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Wawayanda', 41.1682238, -74.487482, ST_GeomFromText('POINT(41.1682238 -74.487482)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878182', 'Matawan Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Keyport', 40.4389963, -74.2048662, ST_GeomFromText('POINT(40.4389963 -74.2048662)', 4326), 40.4157302, -74.2322052, '1979-09-08', '2014-10-10', 'Official', 'Board Decision', '1896-03-03'),
  ('878183', 'Lake Matawan', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Keyport', 40.4164709, -74.2264482, ST_GeomFromText('POINT(40.4164709 -74.2264482)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', 'Official', 'Board Decision', '1950-01-01'),
  ('878185', 'Matchaponix Brook', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'New Brunswick', 40.3918596, -74.3827307, ST_GeomFromText('POINT(40.3918596 -74.3827307)', 4326), 40.2903876, -74.3673711, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('878186', 'Mathews Run', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3677981, -74.7152013, ST_GeomFromText('POINT(39.3677981 -74.7152013)', 4326), 39.3772281, -74.6961522, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('878190', 'Matthews Branch', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Woodbury', 39.8473644, -75.1734352, ST_GeomFromText('POINT(39.8473644 -75.1734352)', 4326), 39.8166667, -75.1644444, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('878191', 'Matthews Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.050131, -74.3616024, ST_GeomFromText('POINT(41.050131 -74.3616024)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878192', 'Mattix Run', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'New Gretna', 39.5194633, -74.4779545, ST_GeomFromText('POINT(39.5194633 -74.4779545)', 4326), 39.4687283, -74.5118194, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('878193', 'Matty Price Hill', 'Summit', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0794676, -74.208094, ST_GeomFromText('POINT(41.0794676 -74.208094)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('878197', 'Maurice River', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Port Norris', 39.2137252, -75.0440674, ST_GeomFromText('POINT(39.2137252 -75.0440674)', 4326), 39.5501153, -75.0710102, '1979-09-08', '2015-01-08', NULL, NULL, NULL),
  ('878198', 'Maurice River Cove', 'Bay', 'New Jersey', 'NJ', 'Cumberland', 'Port Norris', 39.1965029, -75.0751804, ST_GeomFromText('POINT(39.1965029 -75.0751804)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878199', 'Maurice River Neck', 'Cape', 'New Jersey', 'NJ', 'Cumberland', 'Port Norris', 39.2012251, -75.0198994, ST_GeomFromText('POINT(39.2012251 -75.0198994)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878210', 'McCarthys Lakes', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Buena', 39.5745591, -74.9299769, ST_GeomFromText('POINT(39.5745591 -74.9299769)', 4326), NULL, NULL, '1979-09-08', '2022-08-05', NULL, NULL, NULL),
  ('878211', 'McCormick Pond', 'Lake', 'New Jersey', 'NJ', 'Cumberland', 'Fortescue', 39.2282885, -75.1501693, ST_GeomFromText('POINT(39.2282885 -75.1501693)', 4326), NULL, NULL, '1979-09-08', '2020-03-31', NULL, NULL, NULL),
  ('878215', 'McDonalds Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.9026913, -74.5566773, ST_GeomFromText('POINT(39.9026913 -74.5566773)', 4326), 39.8693992, -74.4819188, '1979-09-08', '2013-04-15', 'Official', 'Board Decision', '1962-01-01'),
  ('878216', 'McGellairds Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Freehold', 40.3034718, -74.3626799, ST_GeomFromText('POINT(40.3034718 -74.3626799)', 4326), 40.2866667, -74.2552778, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('878229', 'McNeals Branch', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Tuckahoe', 39.3065195, -74.8168865, ST_GeomFromText('POINT(39.3065195 -74.8168865)', 4326), 39.3460801, -74.8394251, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('878231', 'McVickers Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Mendham', 40.759267, -74.5887693, ST_GeomFromText('POINT(40.759267 -74.5887693)', 4326), 40.7566667, -74.5872222, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878233', 'Meadow Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0423191, -74.2895933, ST_GeomFromText('POINT(41.0423191 -74.2895933)', 4326), 41.0722222, -74.2569444, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878234', 'Meadow Brook Lake', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0556523, -74.2804263, ST_GeomFromText('POINT(41.0556523 -74.2804263)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878235', 'Meadow Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Wildwood', 38.972797, -74.8653101, ST_GeomFromText('POINT(38.972797 -74.8653101)', 4326), 38.9775799, -74.8675337, '1979-09-08', '2011-10-05', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878237', 'Meadow Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0923378, -74.0806937, ST_GeomFromText('POINT(40.0923378 -74.0806937)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878240', 'Meadows Lake', 'Lake', 'New Jersey', 'NJ', 'Warren', 'Flatbrookville', 41.0361464, -74.9441743, ST_GeomFromText('POINT(41.0361464 -74.9441743)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('878242', 'Mecca Lake', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Culvers Gap', 41.1439819, -74.8410722, ST_GeomFromText('POINT(41.1439819 -74.8410722)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('878251', 'Melody Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.1128113, -74.369377, ST_GeomFromText('POINT(41.1128113 -74.369377)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878254', 'Melvins Creek', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'South Amboy', 40.4497924, -74.2736802, ST_GeomFromText('POINT(40.4497924 -74.2736802)', 4326), 40.4469444, -74.2891667, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('878256', 'Memorial Lake', 'Lake', 'New Jersey', 'NJ', 'Salem', 'Woodstown', 39.6446719, -75.322791, ST_GeomFromText('POINT(39.6446719 -75.322791)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('878268', 'Merrill Creek', 'Stream', 'New Jersey', 'NJ', 'Warren', 'Bloomsbury', 40.6800268, -75.1074354, ST_GeomFromText('POINT(40.6800268 -75.1074354)', 4326), 40.7606183, -75.079987, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('878270', 'Merrygold Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'New Gretna', 39.5962293, -74.4812621, ST_GeomFromText('POINT(39.5962293 -74.4812621)', 4326), 39.6205556, -74.4508333, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878273', 'Metedeconk Neck', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0387279, -74.0831932, ST_GeomFromText('POINT(40.0387279 -74.0831932)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878274', 'Metedeconk River', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0531432, -74.0614557, ST_GeomFromText('POINT(40.0531432 -74.0614557)', 4326), 40.0786379, -74.1511367, '1979-09-08', '2014-10-10', 'Official', 'Board Decision', '1950-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878277', 'Meyers Lakes', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0465425, -74.186888, ST_GeomFromText('POINT(41.0465425 -74.186888)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878278', 'Meyers Pond', 'Lake', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.6537564, -74.2460438, ST_GeomFromText('POINT(39.6537564 -74.2460438)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('878282', 'Michaels Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Keswick Grove', 39.9706731, -74.2854228, ST_GeomFromText('POINT(39.9706731 -74.2854228)', 4326), 39.9664313, -74.3560696, '1979-09-08', '2013-04-15', NULL, NULL, NULL),
  ('878283', 'Mickels Run', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Cape May', 38.9943242, -74.9500072, ST_GeomFromText('POINT(38.9943242 -74.9500072)', 4326), 38.9890982, -74.929837, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878286', 'Middle Branch Indian Branch', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Newfield', 39.607176, -75.0274533, ST_GeomFromText('POINT(39.607176 -75.0274533)', 4326), 39.6054402, -75.0038177, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878287', 'Middle Branch Forked River', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Forked River', 39.8273577, -74.1823268, ST_GeomFromText('POINT(39.8273577 -74.1823268)', 4326), 39.8313084, -74.2590407, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878288', 'Indian Branch', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Newfield', 39.5857146, -75.0590229, ST_GeomFromText('POINT(39.5857146 -75.0590229)', 4326), 39.6180717, -75.0109497, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878289', 'Middle Branch Mount Misery Brook', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.9172124, -74.5144486, ST_GeomFromText('POINT(39.9172124 -74.5144486)', 4326), 39.8973125, -74.4565666, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878290', 'Middle Branch Muskee Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Port Elizabeth', 39.3201149, -74.9193382, ST_GeomFromText('POINT(39.3201149 -74.9193382)', 4326), 39.3463889, -74.8886111, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878291', 'Middle Brook', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.3109337, -75.1885307, ST_GeomFromText('POINT(39.3109337 -75.1885307)', 4326), 39.3330361, -75.1636505, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878292', 'Middle Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Bound Brook', 40.5554664, -74.5432717, ST_GeomFromText('POINT(40.5554664 -74.5432717)', 4326), 40.5858606, -74.557305, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('878293', 'Middle Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Gladstone', 40.6535876, -74.6865177, ST_GeomFromText('POINT(40.6535876 -74.6865177)', 4326), 40.7228193, -74.6879983, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('878294', 'Middle Brothers Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Fortescue', 39.1916491, -75.1518783, ST_GeomFromText('POINT(39.1916491 -75.1518783)', 4326), 39.1934545, -75.1457857, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('878296', 'Middle Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.561507, -74.2881983, ST_GeomFromText('POINT(39.561507 -74.2881983)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1925-01-01'),
  ('878297', 'Middle Marsh Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.339836, -75.3260265, ST_GeomFromText('POINT(39.339836 -75.3260265)', 4326), 39.3571307, -75.3262353, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('878299', 'Middle River', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3080117, -74.6608865, ST_GeomFromText('POINT(39.3080117 -74.6608865)', 4326), 39.3115978, -74.7353554, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878300', 'Middle Ruckels Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Cassville', 40.0126443, -74.3841577, ST_GeomFromText('POINT(40.0126443 -74.3841577)', 4326), 39.9962736, -74.4146276, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('878301', 'Middle Sedge', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5653959, -74.2751422, ST_GeomFromText('POINT(39.5653959 -74.2751422)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878308', 'Middle Thorofare Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0487244, -74.8129447, ST_GeomFromText('POINT(39.0487244 -74.8129447)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878310', 'Middle Valley', 'Valley', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0789627, -74.1960936, ST_GeomFromText('POINT(41.0789627 -74.1960936)', 4326), 41.090768, -74.2099775, '1979-09-08', '2018-08-01', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878314', 'Middlebush Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Monmouth Junction', 40.4726046, -74.5504331, ST_GeomFromText('POINT(40.4726046 -74.5504331)', 4326), 40.4891667, -74.5113889, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878316', 'Middlesex Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Union', 'Perth Amboy', 40.6191169, -74.3118448, ST_GeomFromText('POINT(40.6191169 -74.3118448)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878324', 'Miery Run', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Pitman West', 39.7162323, -75.1990342, ST_GeomFromText('POINT(39.7162323 -75.1990342)', 4326), 39.7215139, -75.1769328, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('878326', 'Mile Beach', 'Beach', 'New Jersey', 'NJ', 'Cape May', 'Wildwood', 38.978724, -74.8204452, ST_GeomFromText('POINT(38.978724 -74.8204452)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878327', 'Mile Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.3180308, -75.1509476, ST_GeomFromText('POINT(39.3180308 -75.1509476)', 4326), 39.317815, -75.1362062, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('878329', 'Mile Run', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Jenkins', 39.7451442, -74.5495319, ST_GeomFromText('POINT(39.7451442 -74.5495319)', 4326), 39.77378, -74.5703888, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('878330', 'Mile Run', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Plainfield', 40.5078819, -74.467375, ST_GeomFromText('POINT(40.5078819 -74.467375)', 4326), 40.4729548, -74.4775629, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('878332', 'Miles Creek', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Wilmington South', 39.6378676, -75.5476181, ST_GeomFromText('POINT(39.6378676 -75.5476181)', 4326), 39.6231769, -75.5271864, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('878334', 'Milford Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Freehold', 40.2967765, -74.3457038, ST_GeomFromText('POINT(40.2967765 -74.3457038)', 4326), 40.3379333, -74.2592633, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('878337', 'Mill Branch', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Ocean City', 39.3720607, -74.5765445, ST_GeomFromText('POINT(39.3720607 -74.5765445)', 4326), 39.4286905, -74.6028382, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878338', 'Mill Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.6050434, -74.3463278, ST_GeomFromText('POINT(39.6050434 -74.3463278)', 4326), 39.6558944, -74.3813467, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('878340', 'Mill Brook', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'Plainfield', 40.5026563, -74.4413316, ST_GeomFromText('POINT(40.5026563 -74.4413316)', 4326), 40.5105018, -74.4148636, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('878341', 'Mill Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Park Ridge', 41.0359398, -74.0393758, ST_GeomFromText('POINT(41.0359398 -74.0393758)', 4326), 41.0587554, -74.0593261, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('878342', 'Mill Brook', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Port Jervis South', 41.3370386, -74.7007189, ST_GeomFromText('POINT(41.3370386 -74.7007189)', 4326), 41.315, -74.7488889, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878343', 'Mill Brook', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'New Brunswick', 40.489276, -74.3816471, ST_GeomFromText('POINT(40.489276 -74.3816471)', 4326), 40.5226077, -74.3511719, '1979-09-08', '2013-03-21', 'Official', 'Board Decision', '1959-01-01'),
  ('878344', 'Mill Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.8803901, -74.5245954, ST_GeomFromText('POINT(40.8803901 -74.5245954)', 4326), 40.8504852, -74.5940566, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('878345', 'Mill Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Cape May', 38.9612356, -74.8891162, ST_GeomFromText('POINT(38.9612356 -74.8891162)', 4326), 38.986834, -74.9154888, '1979-09-08', '2011-10-03', 'Official', 'Board Decision', '1944-01-01'),
  ('878346', 'Mill Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Sea Isle City', 39.152892, -74.719051, ST_GeomFromText('POINT(39.152892 -74.719051)', 4326), 39.1728417, -74.7657824, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('878347', 'Mill Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Sea Isle City', 39.1987874, -74.6883684, ST_GeomFromText('POINT(39.1987874 -74.6883684)', 4326), 39.2099485, -74.689967, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('878348', 'Mill Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Marmora', 39.2633439, -74.7027987, ST_GeomFromText('POINT(39.2633439 -74.7027987)', 4326), 39.2683028, -74.7119129, '1979-09-08', '2013-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878349', 'Mill Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Dividing Creek', 39.2682655, -75.0941008, ST_GeomFromText('POINT(39.2682655 -75.0941008)', 4326), 39.2909875, -75.1015359, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('878350', 'Mill Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Tuckahoe', 39.2994523, -74.7715384, ST_GeomFromText('POINT(39.2994523 -74.7715384)', 4326), 39.2553856, -74.8204994, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('878351', 'Mill Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Ocean City', 39.3293888, -74.6209162, ST_GeomFromText('POINT(39.3293888 -74.6209162)', 4326), 39.3257496, -74.6122742, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('878352', 'Mill Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Bridgeton', 39.3944511, -75.1965237, ST_GeomFromText('POINT(39.3944511 -75.1965237)', 4326), 39.3922953, -75.1637149, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('878353', 'Mill Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Shiloh', 39.397784, -75.3331017, ST_GeomFromText('POINT(39.397784 -75.3331017)', 4326), 39.4310553, -75.3126955, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('878354', 'Mill Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Millville', 39.4178283, -75.0706315, ST_GeomFromText('POINT(39.4178283 -75.0706315)', 4326), 39.4354804, -75.1037407, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('878355', 'Mill Creek', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Delaware City', 39.53674, -75.5298901, ST_GeomFromText('POINT(39.53674 -75.5298901)', 4326), 39.5381549, -75.502274, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('878356', 'Mill Creek', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Delaware City', 39.5915353, -75.5346107, ST_GeomFromText('POINT(39.5915353 -75.5346107)', 4326), 39.6178712, -75.5211782, '1979-09-08', '2013-03-21', NULL, NULL, NULL),
  ('878357', 'Mill Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Toms River', 39.9339599, -74.1516638, ST_GeomFromText('POINT(39.9339599 -74.1516638)', 4326), 39.9147222, -74.1766667, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878358', 'Mill Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.6467857, -74.2181954, ST_GeomFromText('POINT(39.6467857 -74.2181954)', 4326), 39.7701193, -74.3165329, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878359', 'Mill Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Beverly', 40.0245254, -74.9192047, ST_GeomFromText('POINT(40.0245254 -74.9192047)', 4326), 40.0308862, -74.8131797, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878362', 'Mill Pond', 'Lake', 'New Jersey', 'NJ', 'Atlantic', 'Green Bank', 39.5157657, -74.5001009, ST_GeomFromText('POINT(39.5157657 -74.5001009)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('878363', 'Lake Weamaconk', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Freehold', 40.2927932, -74.3571724, ST_GeomFromText('POINT(40.2927932 -74.3571724)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878364', 'Mill Pond', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Park Ridge', 41.0227475, -74.0950576, ST_GeomFromText('POINT(41.0227475 -74.0950576)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878365', 'Mill Run', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.154388, -74.1293049, ST_GeomFromText('POINT(40.154388 -74.1293049)', 4326), 40.1727231, -74.1170445, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878368', 'Millard Creek', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Clementon', 39.8341477, -74.9858348, ST_GeomFromText('POINT(39.8341477 -74.9858348)', 4326), 39.8330556, -74.9688889, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878374', 'Miller Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Marmora', 39.2573374, -74.6301581, ST_GeomFromText('POINT(39.2573374 -74.6301581)', 4326), 39.2640998, -74.6400538, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878376', 'Miller Pond (historical)', 'Lake', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.1073358, -74.8479463, ST_GeomFromText('POINT(39.1073358 -74.8479463)', 4326), NULL, NULL, '1979-09-08', '2020-03-31', NULL, NULL, NULL),
  ('878384', 'Millstone Hill', 'Summit', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0598104, -74.2401457, ST_GeomFromText('POINT(41.0598104 -74.2401457)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('878385', 'Millstone River', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Bound Brook', 40.5428385, -74.5671916, ST_GeomFromText('POINT(40.5428385 -74.5671916)', 4326), 40.1995527, -74.4101121, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878397', 'Milton Lake', 'Reservoir', 'New Jersey', 'NJ', 'Middlesex', 'Perth Amboy', 40.6062146, -74.298203, ST_GeomFromText('POINT(40.6062146 -74.298203)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878399', 'Mimosa Lakes', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Medford Lakes', 39.8434778, -74.8454734, ST_GeomFromText('POINT(39.8434778 -74.8454734)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('878402', 'Mine Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Hackettstown', 40.8327951, -74.8252791, ST_GeomFromText('POINT(40.8327951 -74.8252791)', 4326), 40.8714158, -74.7761732, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878403', 'Mine Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Marlboro', 40.2862219, -74.1756986, ST_GeomFromText('POINT(40.2862219 -74.1756986)', 4326), 40.2437228, -74.190699, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878404', 'Mine Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Gladstone', 40.6817681, -74.6365481, ST_GeomFromText('POINT(40.6817681 -74.6365481)', 4326), 40.7360229, -74.581182, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878406', 'Mine Mountain', 'Summit', 'New Jersey', 'NJ', 'Somerset', 'Bernardsville', 40.7410763, -74.5968313, ST_GeomFromText('POINT(40.7410763 -74.5968313)', 4326), NULL, NULL, '1979-09-08', '2018-04-17', NULL, NULL, NULL),
  ('878407', 'Mingamahone Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1608535, -74.1479301, ST_GeomFromText('POINT(40.1608535 -74.1479301)', 4326), 40.2555966, -74.1518998, '1979-09-08', '2014-10-10', 'Official', 'Board Decision', '1980-01-01'),
  ('878409', 'Minisink Island', 'Island', 'New Jersey', 'NJ', 'Sussex', 'Milford', 41.2884274, -74.8229447, ST_GeomFromText('POINT(41.2884274 -74.8229447)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878410', 'Minneakoning Creek', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'Flemington', 40.5347746, -74.8345649, ST_GeomFromText('POINT(40.5347746 -74.8345649)', 4326), 40.5303693, -74.8574468, '1979-09-08', '2014-10-10', NULL, NULL, NULL),
  ('878413', 'Mirey Run', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Marmora', 39.2911452, -74.7201687, ST_GeomFromText('POINT(39.2911452 -74.7201687)', 4326), 39.2728794, -74.7496676, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878414', 'Mirror Lake', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.9707139, -74.5710051, ST_GeomFromText('POINT(39.9707139 -74.5710051)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('878415', 'Mirror Lake', 'Reservoir', 'New Jersey', 'NJ', 'Middlesex', 'South Amboy', 40.4948273, -74.3687604, ST_GeomFromText('POINT(40.4948273 -74.3687604)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878416', 'Mirror Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0310035, -74.2328484, ST_GeomFromText('POINT(41.0310035 -74.2328484)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878417', 'Mirror Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0520624, -74.1347809, ST_GeomFromText('POINT(41.0520624 -74.1347809)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878418', 'Miry Run', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Mays Landing', 39.4041967, -74.7166979, ST_GeomFromText('POINT(39.4041967 -74.7166979)', 4326), 39.4191667, -74.6405556, '1979-09-08', '2013-12-11', NULL, NULL, NULL),
  ('878419', 'Miry Run', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Allentown', 40.1314442, -74.5516026, ST_GeomFromText('POINT(40.1314442 -74.5516026)', 4326), 40.1454902, -74.4871598, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878420', 'Miry Run', 'Stream', 'New Jersey', 'NJ', 'Mercer', 'Trenton East', 40.2491934, -74.7190744, ST_GeomFromText('POINT(40.2491934 -74.7190744)', 4326), 40.2160927, -74.5798449, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878421', 'Lake Mishe-Mokwa', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Medford Lakes', 39.8575009, -74.8095857, ST_GeomFromText('POINT(39.8575009 -74.8095857)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('878422', 'Mitt Pond', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Franklin', 41.0274811, -74.5156042, ST_GeomFromText('POINT(41.0274811 -74.5156042)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878426', 'Lake Mohawk', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Newton East', 41.0143425, -74.662787, ST_GeomFromText('POINT(41.0143425 -74.662787)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878427', 'Mount Mohepinoke', 'Summit', 'New Jersey', 'NJ', 'Warren', 'Washington', 40.8454889, -74.9578102, ST_GeomFromText('POINT(40.8454889 -74.9578102)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('878428', 'Molly Ann Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.9131558, -74.1885066, ST_GeomFromText('POINT(40.9131558 -74.1885066)', 4326), 40.9761843, -74.1944517, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878429', 'Mommy Teel Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0155659, -74.8479974, ST_GeomFromText('POINT(39.0155659 -74.8479974)', 4326), 39.0211111, -74.8663889, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1944-01-01'),
  ('878430', 'Monds Island', 'Island', 'New Jersey', 'NJ', 'Gloucester', 'Bridgeport', 39.8381685, -75.3190768, ST_GeomFromText('POINT(39.8381685 -75.3190768)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878431', 'Money Island', 'Island', 'New Jersey', 'NJ', 'Salem', 'Delaware City', 39.50789, -75.527146, ST_GeomFromText('POINT(39.50789 -75.527146)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878435', 'Monongahela Brook', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Woodbury', 39.78302, -75.1523772, ST_GeomFromText('POINT(39.78302 -75.1523772)', 4326), 39.790114, -75.1060075, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878440', 'Monroe Ridge', 'Ridge', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0926524, -74.2008717, ST_GeomFromText('POINT(41.0926524 -74.2008717)', 4326), NULL, NULL, '1979-09-08', '2017-01-28', NULL, NULL, NULL),
  ('878452', 'Lake Montowac', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Pompton Plains', 40.9069416, -74.3599878, ST_GeomFromText('POINT(40.9069416 -74.3599878)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878462', 'Moonachie Creek', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Weehawken', 40.8080763, -74.0507685, ST_GeomFromText('POINT(40.8080763 -74.0507685)', 4326), 40.831685, -74.0514739, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1959-01-01'),
  ('878464', 'Moores Creek', 'Stream', 'New Jersey', 'NJ', 'Mercer', 'Lambertville', 40.3233668, -74.9172521, ST_GeomFromText('POINT(40.3233668 -74.9172521)', 4326), 40.360982, -74.855458, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878465', 'Moores Beach', 'Beach', 'New Jersey', 'NJ', 'Cumberland', 'Heislerville', 39.1884722, -74.9498417, ST_GeomFromText('POINT(39.1884722 -74.9498417)', 4326), NULL, NULL, '1979-09-08', '2015-02-06', NULL, NULL, NULL),
  ('878468', 'Moores Pond', 'Lake', 'New Jersey', 'NJ', 'Warren', 'Washington', 40.8559927, -74.9549368, ST_GeomFromText('POINT(40.8559927 -74.9549368)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('878471', 'Moosepac Pond', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Franklin', 41.0279756, -74.5035824, ST_GeomFromText('POINT(41.0279756 -74.5035824)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878473', 'Mordecai Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5587292, -74.2520856, ST_GeomFromText('POINT(39.5587292 -74.2520856)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878490', 'Morris Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.0468075, -74.6067359, ST_GeomFromText('POINT(41.0468075 -74.6067359)', 4326), NULL, NULL, '1979-09-08', '2022-09-20', NULL, NULL, NULL),
  ('878500', 'Morse Creek', 'Stream', 'New Jersey', 'NJ', 'Union', 'Arthur Kill', 40.6248256, -74.2440346, ST_GeomFromText('POINT(40.6248256 -74.2440346)', 4326), 40.6256589, -74.2493125, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878501', 'Morse Lakes', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0216809, -74.3163217, ST_GeomFromText('POINT(41.0216809 -74.3163217)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878503', 'Morses Creek', 'Stream', 'New Jersey', 'NJ', 'Union', 'Elizabeth', 40.6338951, -74.2022395, ST_GeomFromText('POINT(40.6338951 -74.2022395)', 4326), 40.6627664, -74.2711669, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1967-01-01'),
  ('878504', 'Morses Mill Stream', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Green Bank', 39.5129454, -74.5014453, ST_GeomFromText('POINT(39.5129454 -74.5014453)', 4326), 39.4883539, -74.5874798, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878505', 'Morsetown Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Greenwood Lake', 41.1401463, -74.3605435, ST_GeomFromText('POINT(41.1401463 -74.3605435)', 4326), 41.1117628, -74.3598744, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878508', 'Moss Branch', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Bridgeport', 39.8015021, -75.3279662, ST_GeomFromText('POINT(39.8015021 -75.3279662)', 4326), 39.7746437, -75.3287941, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878509', 'Mossmans Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.0972006, -74.4423026, ST_GeomFromText('POINT(41.0972006 -74.4423026)', 4326), 41.1403665, -74.4090486, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878510', 'Mott Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'New Gretna', 39.5190066, -74.4134816, ST_GeomFromText('POINT(39.5190066 -74.4134816)', 4326), 39.5319035, -74.432078, '1979-09-08', '2013-12-11', NULL, NULL, NULL),
  ('878512', 'Mounce Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Shiloh', 39.3881163, -75.3296363, ST_GeomFromText('POINT(39.3881163 -75.3296363)', 4326), 39.4211602, -75.300808, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878539', 'Mount Glen Lakes', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0731412, -74.3676838, ST_GeomFromText('POINT(41.0731412 -74.3676838)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878547', 'Mount Hope Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.9297558, -74.5328782, ST_GeomFromText('POINT(40.9297558 -74.5328782)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878549', 'Mount Hope Pond', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.9298796, -74.5484545, ST_GeomFromText('POINT(40.9298796 -74.5484545)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878552', 'Mount Kemble Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Bernardsville', 40.7427333, -74.5247226, ST_GeomFromText('POINT(40.7427333 -74.5247226)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878555', 'Mount Laurel Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wawayanda', 41.1618788, -74.392459, ST_GeomFromText('POINT(41.1618788 -74.392459)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('878560', 'Mount Misery Brook', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.9428932, -74.5679324, ST_GeomFromText('POINT(39.9428932 -74.5679324)', 4326), 39.9188889, -74.5155556, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878594', 'Mount Tabor Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Morristown', 40.8691848, -74.4844655, ST_GeomFromText('POINT(40.8691848 -74.4844655)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878608', 'Mountain Brook', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9709109, -74.6409416, ST_GeomFromText('POINT(40.9709109 -74.6409416)', 4326), 40.9808333, -74.6491667, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878610', 'Mountain Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.8875169, -74.4434719, ST_GeomFromText('POINT(40.8875169 -74.4434719)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878611', 'Mountain Lake', 'Lake', 'New Jersey', 'NJ', 'Warren', 'Washington', 40.8586306, -74.9847039, ST_GeomFromText('POINT(40.8586306 -74.9847039)', 4326), NULL, NULL, '1979-09-08', '2019-04-11', 'Official', 'Board Decision', '1950-01-01'),
  ('878613', 'Mountain Lake Brook', 'Stream', 'New Jersey', 'NJ', 'Warren', 'Washington', 40.8333248, -74.998641, ST_GeomFromText('POINT(40.8333248 -74.998641)', 4326), 40.8864872, -74.950449, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878615', 'Mountain Springs Lake', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.0378302, -74.3823796, ST_GeomFromText('POINT(41.0378302 -74.3823796)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878626', 'Muckshaw Ponds', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Newton West', 41.03018, -74.7755025, ST_GeomFromText('POINT(41.03018 -74.7755025)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('878627', 'Mud Cove', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.6473411, -74.2351406, ST_GeomFromText('POINT(39.6473411 -74.2351406)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878628', 'Mud Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3131667, -74.7003525, ST_GeomFromText('POINT(39.3131667 -74.7003525)', 4326), 39.3202778, -74.7119444, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878629', 'Mud Creek (historical)', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Oceanville', 39.3853946, -74.4248711, ST_GeomFromText('POINT(39.3853946 -74.4248711)', 4326), 39.3852778, -74.4311111, '1979-09-08', '2013-06-05', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878630', 'Mud Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0021035, -74.8186062, ST_GeomFromText('POINT(39.0021035 -74.8186062)', 4326), 38.9996831, -74.8158932, '1979-09-08', '2011-10-05', 'Official', 'Board Decision', '1944-01-01'),
  ('878633', 'Mud Hole Meadow', 'Swamp', 'New Jersey', 'NJ', 'Salem', 'Salem', 39.6228909, -75.4829757, ST_GeomFromText('POINT(39.6228909 -75.4829757)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878634', 'Mud Pond', 'Lake', 'New Jersey', 'NJ', 'Warren', 'Tranquility', 40.9789011, -74.8636834, ST_GeomFromText('POINT(40.9789011 -74.8636834)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('878635', 'Mud Pond', 'Lake', 'New Jersey', 'NJ', 'Warren', 'Flatbrookville', 41.0230985, -74.9105677, ST_GeomFromText('POINT(41.0230985 -74.9105677)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('878636', 'Mud Pond', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.0925731, -74.6039558, ST_GeomFromText('POINT(41.0925731 -74.6039558)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('878637', 'Mud Pond', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Hamburg', 41.1407221, -74.5164508, ST_GeomFromText('POINT(41.1407221 -74.5164508)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('878640', 'Muddy Brook', 'Stream', 'New Jersey', 'NJ', 'Warren', 'Blairstown', 40.8898204, -74.9968395, ST_GeomFromText('POINT(40.8898204 -74.9968395)', 4326), 40.9213766, -74.9884486, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878641', 'Muddy Creek', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Canton', 39.3894772, -75.4291436, ST_GeomFromText('POINT(39.3894772 -75.4291436)', 4326), 39.3927778, -75.4286111, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878642', 'Muddy Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Park Ridge', 41.044023, -74.0309992, ST_GeomFromText('POINT(41.044023 -74.0309992)', 4326), 41.0870337, -74.0224497, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878643', 'Muddy Ford Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Lakewood', 40.1075777, -74.1612232, ST_GeomFromText('POINT(40.1075777 -74.1612232)', 4326), 40.1367811, -74.1434743, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1980-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878645', 'Muddy Hole Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0653913, -74.7646088, ST_GeomFromText('POINT(39.0653913 -74.7646088)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('878646', 'Muddy Run', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Gladstone', 40.6326494, -74.6969032, ST_GeomFromText('POINT(40.6326494 -74.6969032)', 4326), 40.6525, -74.7027778, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878647', 'Muddy Run', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Bridgeton', 39.4327293, -75.2375722, ST_GeomFromText('POINT(39.4327293 -75.2375722)', 4326), 39.4252253, -75.278783, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878648', 'Muddy Run', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Millville', 39.4574056, -75.0838615, ST_GeomFromText('POINT(39.4574056 -75.0838615)', 4326), 39.640182, -75.1921973, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878649', 'Muddy Run', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'Lumberville', 40.4796919, -75.0147772, ST_GeomFromText('POINT(40.4796919 -75.0147772)', 4326), 40.5037146, -74.978502, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878653', 'Mulford Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0603205, -74.7801912, ST_GeomFromText('POINT(39.0603205 -74.7801912)', 4326), 39.054043, -74.7809207, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1944-01-01'),
  ('878654', 'Mulford Creek Meadow', 'Swamp', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0628913, -74.7851655, ST_GeomFromText('POINT(39.0628913 -74.7851655)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('878656', 'Mulhockaway Creek', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'High Bridge', 40.6472466, -74.9619269, ST_GeomFromText('POINT(40.6472466 -74.9619269)', 4326), 40.6317415, -75.0456427, '1979-09-08', '2014-10-10', 'Official', 'Board Decision', '1904-01-01'),
  ('878658', 'Mullica Hill Pond', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Pitman West', 39.7331316, -75.2209593, ST_GeomFromText('POINT(39.7331316 -75.2209593)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('878659', 'Mullica River', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'New Gretna', 39.5479342, -74.4141769, ST_GeomFromText('POINT(39.5479342 -74.4141769)', 4326), 39.790393, -74.9126643, '1979-09-08', '2014-07-09', 'Official', 'Board Decision', '1894-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878666', 'Musconetcong Mountain', 'Summit', 'New Jersey', 'NJ', 'Hunterdon', 'Bloomsbury', 40.6584259, -75.0096137, ST_GeomFromText('POINT(40.6584259 -75.0096137)', 4326), NULL, NULL, '1979-09-08', '2023-07-22', NULL, NULL, NULL),
  ('878667', 'Musconetcong River', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'Riegelsville', 40.5923228, -75.1887862, ST_GeomFromText('POINT(40.5923228 -75.1887862)', 4326), 40.917084, -74.665913, '1979-09-08', '2014-11-19', NULL, NULL, NULL),
  ('878669', 'Musconetcong Valley', 'Valley', 'New Jersey', 'NJ', 'Hunterdon', 'Bloomsbury', 40.650466, -75.0921229, ST_GeomFromText('POINT(40.650466 -75.0921229)', 4326), 40.7834486, -74.9010143, '1979-09-08', '2018-08-01', NULL, NULL, NULL),
  ('878671', 'Lake Musconetcong', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Stanhope', 40.9072556, -74.6939352, ST_GeomFromText('POINT(40.9072556 -74.6939352)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('878672', 'Muskee Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Port Elizabeth', 39.2967814, -74.9785079, ST_GeomFromText('POINT(39.2967814 -74.9785079)', 4326), 39.32, -74.9197222, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878673', 'Muskee Hill', 'Summit', 'New Jersey', 'NJ', 'Cumberland', 'Port Elizabeth', 39.3123425, -74.9541816, ST_GeomFromText('POINT(39.3123425 -74.9541816)', 4326), NULL, NULL, '1979-09-08', '2023-11-12', NULL, NULL, NULL),
  ('878674', 'Muskingum Brook', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Indian Mills', 39.7921989, -74.7405052, ST_GeomFromText('POINT(39.7921989 -74.7405052)', 4326), 39.8350364, -74.7295243, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878675', 'Musquapsink Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Hackensack', 40.9928562, -74.0220112, ST_GeomFromText('POINT(40.9928562 -74.0220112)', 4326), 41.023986, -74.0601407, '1979-09-08', '2014-10-10', NULL, NULL, NULL),
  ('878676', 'Musquash Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.2009465, -74.0426381, ST_GeomFromText('POINT(40.2009465 -74.0426381)', 4326), 40.2069444, -74.0530556, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878680', 'Naachpunkt Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Pompton Plains', 40.8937185, -74.2656845, ST_GeomFromText('POINT(40.8937185 -74.2656845)', 4326), 40.9264077, -74.2077193, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878681', 'Nacote Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'New Gretna', 39.5416299, -74.4451404, ST_GeomFromText('POINT(39.5416299 -74.4451404)', 4326), 39.5172307, -74.4967702, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878682', 'Namanock Island', 'Island', 'New Jersey', 'NJ', 'Sussex', 'Milford', 41.2631499, -74.8415566, ST_GeomFromText('POINT(41.2631499 -74.8415566)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878685', 'Nantuxent Point', 'Cape', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.2776143, -75.2451902, ST_GeomFromText('POINT(39.2776143 -75.2451902)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878686', 'Nantuxent Cove', 'Bay', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.2940031, -75.2660243, ST_GeomFromText('POINT(39.2940031 -75.2660243)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878687', 'Nantuxent Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.2837254, -75.239912, ST_GeomFromText('POINT(39.2837254 -75.239912)', 4326), 39.2980556, -75.1958333, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878688', 'Lake Narraticon', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Woodstown', 39.7428593, -75.3064918, ST_GeomFromText('POINT(39.7428593 -75.3064918)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('878689', 'Narrows Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Marmora', 39.2819112, -74.7097671, ST_GeomFromText('POINT(39.2819112 -74.7097671)', 4326), 39.2864017, -74.7206944, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878690', 'Narrows Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0615023, -74.7921103, ST_GeomFromText('POINT(39.0615023 -74.7921103)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('878691', 'Nashs Lake (historical)', 'Reservoir', 'New Jersey', 'NJ', 'Camden', 'Runnemede', 39.7692812, -75.0462809, ST_GeomFromText('POINT(39.7692812 -75.0462809)', 4326), NULL, NULL, '1979-09-08', '2020-04-29', NULL, NULL, NULL),
  ('878693', 'Natco Lake', 'Lake', 'New Jersey', 'NJ', 'Monmouth', 'Keyport', 40.4394246, -74.1524049, ST_GeomFromText('POINT(40.4394246 -74.1524049)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', 'Official', 'Board Decision', '1950-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878699', 'Lake Neepaulin', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Branchville', 41.2165258, -74.6263525, ST_GeomFromText('POINT(41.2165258 -74.6263525)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('878700', 'Negro Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Green Bank', 39.6062875, -74.587394, ST_GeomFromText('POINT(39.6062875 -74.587394)', 4326), 39.5916667, -74.6169444, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878701', 'Ashby Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Allentown', 40.170814, -74.577835, ST_GeomFromText('POINT(40.170814 -74.577835)', 4326), 40.1813447, -74.5150226, '1981-07-01', '2018-11-09', 'Official', 'Board Decision', '2018-11-08'),
  ('878702', 'Nehonsey Brook', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Bridgeport', 39.8155257, -75.2943264, ST_GeomFromText('POINT(39.8155257 -75.2943264)', 4326), 39.7957601, -75.2275085, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878703', 'Nejecho Beach', 'Beach', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0484499, -74.0831933, ST_GeomFromText('POINT(40.0484499 -74.0831933)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878704', 'Nell Run', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3413258, -74.6921074, ST_GeomFromText('POINT(39.3413258 -74.6921074)', 4326), 39.3720156, -74.6736538, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878705', 'Lake Nelson', 'Reservoir', 'New Jersey', 'NJ', 'Middlesex', 'Plainfield', 40.5409998, -74.4420927, ST_GeomFromText('POINT(40.5409998 -74.4420927)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878710', 'Nescochague Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Atsion', 39.6428423, -74.6580648, ST_GeomFromText('POINT(39.6428423 -74.6580648)', 4326), 39.6823545, -74.7215259, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1954-01-01'),
  ('878711', 'Nescochague Lake', 'Lake', 'New Jersey', 'NJ', 'Atlantic', 'Atsion', 39.6360602, -74.6637614, ST_GeomFromText('POINT(39.6360602 -74.6637614)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('878714', 'Neshanic River', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Raritan', 40.5017467, -74.7419804, ST_GeomFromText('POINT(40.5017467 -74.7419804)', 4326), 40.4781617, -74.8534048, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878724', 'New Brooklyn Lake', 'Reservoir', 'New Jersey', 'NJ', 'Camden', 'Williamstown', 39.7021537, -74.9386059, ST_GeomFromText('POINT(39.7021537 -74.9386059)', 4326), NULL, NULL, '1979-09-08', '2018-12-17', NULL, NULL, NULL),
  ('878734', 'New England Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Port Norris', 39.2155389, -75.0510728, ST_GeomFromText('POINT(39.2155389 -75.0510728)', 4326), 39.2559121, -75.0575866, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878747', 'New Market Pond', 'Reservoir', 'New Jersey', 'NJ', 'Middlesex', 'Plainfield', 40.5776308, -74.4523854, ST_GeomFromText('POINT(40.5776308 -74.4523854)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878753', 'New Sharon Branch', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Allentown', 40.2179791, -74.5618486, ST_GeomFromText('POINT(40.2179791 -74.5618486)', 4326), 40.1898336, -74.4862633, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878754', 'New Street Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.9006486, -74.1851433, ST_GeomFromText('POINT(40.9006486 -74.1851433)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878758', 'New Wawayanda Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Newton East', 41.0180407, -74.7320359, ST_GeomFromText('POINT(41.0180407 -74.7320359)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('878764', 'Newark Bay', 'Bay', 'New Jersey', 'NJ', 'Essex', 'Elizabeth', 40.6659362, -74.1387543, ST_GeomFromText('POINT(40.6659362 -74.1387543)', 4326), NULL, NULL, '1979-09-08', '2020-03-20', NULL, NULL, NULL),
  ('878771', 'Newbold Island', 'Island', 'New Jersey', 'NJ', 'Burlington', 'Trenton West', 40.1284434, -74.7582168, ST_GeomFromText('POINT(40.1284434 -74.7582168)', 4326), NULL, NULL, '1979-09-08', '2011-07-21', 'Official', 'Board Decision', '1891-12-31'),
  ('878772', 'Newbold Run', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.9907685, -74.570429, ST_GeomFromText('POINT(39.9907685 -74.570429)', 4326), 40.0009471, -74.6068229, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878773', 'Newbolds Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Keswick Grove', 39.9015144, -74.2569351, ST_GeomFromText('POINT(39.9015144 -74.2569351)', 4326), 39.8794444, -74.2983333, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878786', 'Newport Meadows', 'Lake', 'New Jersey', 'NJ', 'Cumberland', 'Canton', 39.4331688, -75.4013071, ST_GeomFromText('POINT(39.4331688 -75.4013071)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878787', 'Newport Neck', 'Cape', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.2723365, -75.1912982, ST_GeomFromText('POINT(39.2723365 -75.1912982)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('878790', 'Newton Creek', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Philadelphia', 39.9074813, -75.1256919, ST_GeomFromText('POINT(39.9074813 -75.1256919)', 4326), 39.9009176, -75.0473875, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878792', 'Newton Lake', 'Lake', 'New Jersey', 'NJ', 'Camden', 'Camden', 39.9085125, -75.078733, ST_GeomFromText('POINT(39.9085125 -75.078733)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('878793', 'Newton Reservoir (historical)', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.0468075, -74.6067359, ST_GeomFromText('POINT(41.0468075 -74.6067359)', 4326), NULL, NULL, '1979-09-08', '2022-09-20', NULL, NULL, NULL),
  ('878800', 'Nichols Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0520578, -74.7968327, ST_GeomFromText('POINT(39.0520578 -74.7968327)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('878801', 'Nicholson Branch', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Clementon', 39.8334876, -74.983394, ST_GeomFromText('POINT(39.8334876 -74.983394)', 4326), 39.8459723, -74.9617177, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878802', 'Nichomus Run', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Woodstown', 39.6553327, -75.361619, ST_GeomFromText('POINT(39.6553327 -75.361619)', 4326), 39.6128317, -75.3109615, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878804', 'Nishisakawick Creek', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'Frenchtown', 40.523723, -75.0635357, ST_GeomFromText('POINT(40.523723 -75.0635357)', 4326), 40.6117738, -75.0017524, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878808', 'Nixons Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Port Elizabeth', 39.3211599, -74.9132931, ST_GeomFromText('POINT(39.3211599 -74.9132931)', 4326), 39.3488889, -74.9166667, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878809', 'No Mans Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0162242, -74.8176673, ST_GeomFromText('POINT(39.0162242 -74.8176673)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('878810', 'Mount No More', 'Summit', 'New Jersey', 'NJ', 'Warren', 'Belvidere', 40.8008084, -75.0264969, ST_GeomFromText('POINT(40.8008084 -75.0264969)', 4326), NULL, NULL, '1979-09-08', '2018-06-21', NULL, NULL, NULL),
  ('878811', 'Noes Creek', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'Arthur Kill', 40.5773048, -74.2124587, ST_GeomFromText('POINT(40.5773048 -74.2124587)', 4326), 40.5781717, -74.2171673, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878812', 'Nolans Point', 'Cape', 'New Jersey', 'NJ', 'Morris', 'Stanhope', 40.945654, -74.6284939, ST_GeomFromText('POINT(40.945654 -74.6284939)', 4326), NULL, NULL, '1979-09-08', '2013-12-04', NULL, NULL, NULL),
  ('878813', 'Nomahegan Brook', 'Stream', 'New Jersey', 'NJ', 'Union', 'Roselle', 40.6751743, -74.3134144, ST_GeomFromText('POINT(40.6751743 -74.3134144)', 4326), 40.6777842, -74.3349203, '1979-09-08', '2014-10-06', NULL, NULL, NULL),
  ('878818', 'Normandy Harbor', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0031732, -74.0670811, ST_GeomFromText('POINT(40.0031732 -74.0670811)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878819', 'Lake Norrsken', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Medford Lakes', 39.8420676, -74.8664916, ST_GeomFromText('POINT(39.8420676 -74.8664916)', 4326), NULL, NULL, '1979-09-08', '2020-05-01', NULL, NULL, NULL),
  ('878825', 'North Branch Absecon Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Pleasantville', 39.4444901, -74.537753, ST_GeomFromText('POINT(39.4444901 -74.537753)', 4326), 39.4601961, -74.5751095, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878826', 'North Branch Beaverdam Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0610185, -74.0744162, ST_GeomFromText('POINT(40.0610185 -74.0744162)', 4326), 40.0854266, -74.0926766, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878827', 'North Branch Big Timber Creek', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Runnemede', 39.8372032, -75.0851476, ST_GeomFromText('POINT(39.8372032 -75.0851476)', 4326), 39.7812261, -74.9593321, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878828', 'North Branch Cooper River', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Camden', 39.9090491, -75.026536, ST_GeomFromText('POINT(39.9090491 -75.026536)', 4326), 39.8493948, -74.9428618, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878830', 'North Branch Forked River', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Forked River', 39.8267974, -74.1767263, ST_GeomFromText('POINT(39.8267974 -74.1767263)', 4326), 39.843452, -74.2948663, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878831', 'North Branch Metedeconk River', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Lakewood', 40.0786707, -74.1512078, ST_GeomFromText('POINT(40.0786707 -74.1512078)', 4326), 40.2012275, -74.3703389, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878832', 'North Branch Mount Misery Brook', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.9193025, -74.515661, ST_GeomFromText('POINT(39.9193025 -74.515661)', 4326), 39.9140063, -74.3798701, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878833', 'North Branch Newton Creek', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Camden', 39.9066459, -75.114314, ST_GeomFromText('POINT(39.9066459 -75.114314)', 4326), 39.9142007, -75.0909466, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878834', 'North Branch Peapack Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Gladstone', 40.6901012, -74.6473819, ST_GeomFromText('POINT(40.6901012 -74.6473819)', 4326), 40.7086111, -74.6369444, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878835', 'North Branch Pennsauken Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Camden', 39.9798989, -75.0096649, ST_GeomFromText('POINT(39.9798989 -75.0096649)', 4326), 39.9032963, -74.8863611, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878836', 'North Branch Rancocas Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Mount Holly', 39.9967787, -74.8601651, ST_GeomFromText('POINT(39.9967787 -74.8601651)', 4326), 39.9680522, -74.5799723, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878837', 'North Branch Raritan River', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Raritan', 40.5555622, -74.6875557, ST_GeomFromText('POINT(40.5555622 -74.6875557)', 4326), 40.7877593, -74.5951483, '1979-09-08', '2016-09-23', NULL, NULL, NULL),
  ('878838', 'North Branch Wreck Pond Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.1429991, -74.0342796, ST_GeomFromText('POINT(40.1429991 -74.0342796)', 4326), 40.1555556, -74.0419444, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878841', 'North Cape', 'Cape', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.1178734, -74.2176468, ST_GeomFromText('POINT(41.1178734 -74.2176468)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878846', 'North Channel Pond', 'Lake', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0678913, -74.7987773, ST_GeomFromText('POINT(39.0678913 -74.7987773)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('878863', 'North Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0881693, -74.7757205, ST_GeomFromText('POINT(39.0881693 -74.7757205)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('878864', 'North Pond', 'Lake', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.691882, -74.189623, ST_GeomFromText('POINT(39.691882 -74.189623)', 4326), NULL, NULL, '1979-09-08', '2024-10-28', NULL, NULL, NULL),
  ('878865', 'North Pond', 'Lake', 'New Jersey', 'NJ', 'Essex', 'Caldwell', 40.7745448, -74.3229271, ST_GeomFromText('POINT(40.7745448 -74.3229271)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878869', 'North Ruckels Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Cassville', 40.0126607, -74.3840718, ST_GeomFromText('POINT(40.0126607 -74.3840718)', 4326), 40.0112494, -74.413214, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878870', 'North Run', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'New Egypt', 40.0516866, -74.5460209, ST_GeomFromText('POINT(40.0516866 -74.5460209)', 4326), 40.0582019, -74.6339679, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878894', 'Nosenzo Pond', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.0821342, -74.3824921, ST_GeomFromText('POINT(41.0821342 -74.3824921)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878897', 'Lake Nummy', 'Reservoir', 'New Jersey', 'NJ', 'Cape May', 'Woodbine', 39.245715, -74.853845, ST_GeomFromText('POINT(39.245715 -74.853845)', 4326), NULL, NULL, '1979-09-08', '2024-10-28', NULL, NULL, NULL),
  ('878898', 'Nummy Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0365022, -74.7904435, ST_GeomFromText('POINT(39.0365022 -74.7904435)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878906', 'Oak Island', 'Island', 'New Jersey', 'NJ', 'Burlington', 'New Gretna', 39.5776181, -74.4359824, ST_GeomFromText('POINT(39.5776181 -74.4359824)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878911', 'Oak Ridge Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.9982719, -74.5185714, ST_GeomFromText('POINT(40.9982719 -74.5185714)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878912', 'Oak Ridge Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.055951, -74.4973186, ST_GeomFromText('POINT(41.055951 -74.4973186)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878917', 'Oakeys Brook', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'New Brunswick', 40.4180949, -74.4916083, ST_GeomFromText('POINT(40.4180949 -74.4916083)', 4326), 40.4322388, -74.545294, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878918', 'Oakford Lake', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'New Egypt', 40.052666, -74.5436137, ST_GeomFromText('POINT(40.052666 -74.5436137)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('878920', 'Oakland Brook', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Williamstown', 39.6476173, -74.9711537, ST_GeomFromText('POINT(39.6476173 -74.9711537)', 4326), 39.6566667, -74.9822222, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878930', 'Oakwood Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0133692, -74.3390112, ST_GeomFromText('POINT(41.0133692 -74.3390112)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878933', 'Lake Oberst', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Pitman East', 39.7126785, -75.0923948, ST_GeomFromText('POINT(39.7126785 -75.0923948)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('878935', 'Obhonan Ridgeway Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Lakehurst', 40.0550649, -74.3580812, ST_GeomFromText('POINT(40.0550649 -74.3580812)', 4326), 40.036782, -74.4051496, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878943', 'Lake Ocquittunk', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Culvers Gap', 41.2278294, -74.764329, ST_GeomFromText('POINT(41.2278294 -74.764329)', 4326), NULL, NULL, '1979-09-08', '2022-07-25', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878945', 'Ogden Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.3450844, -75.2677953, ST_GeomFromText('POINT(39.3450844 -75.2677953)', 4326), 39.3535822, -75.2584881, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878946', 'Ogdens Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Port Norris', 39.2360841, -75.1083219, ST_GeomFromText('POINT(39.2360841 -75.1083219)', 4326), 39.2570588, -75.1235165, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878950', 'Old Bogs', 'Swamp', 'New Jersey', 'NJ', 'Cape May', 'Woodbine', 39.1706698, -74.773498, ST_GeomFromText('POINT(39.1706698 -74.773498)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878955', 'Old Forge Lake', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Pemberton', 39.8895938, -74.7079293, ST_GeomFromText('POINT(39.8895938 -74.7079293)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('878957', 'Old Hatch Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.3302477, -75.2790874, ST_GeomFromText('POINT(39.3302477 -75.2790874)', 4326), 39.3413889, -75.2822222, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878959', 'Old Hurricane Brook', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Lakehurst', 40.0052987, -74.3267302, ST_GeomFromText('POINT(40.0052987 -74.3267302)', 4326), 39.9577906, -74.3974011, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878961', 'Old Mill Pond', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.1446476, -74.0550956, ST_GeomFromText('POINT(40.1446476 -74.0550956)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', 'Official', 'Board Decision', '1950-01-01'),
  ('878962', 'Old Mill Pond', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Park Ridge', 41.0223733, -74.0675006, ST_GeomFromText('POINT(41.0223733 -74.0675006)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878964', 'Old Robins Branch', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Heislerville', 39.174659, -74.8766434, ST_GeomFromText('POINT(39.174659 -74.8766434)', 4326), 39.2284477, -74.8582244, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('878972', 'Old Turtle Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0162241, -74.8423908, ST_GeomFromText('POINT(39.0162241 -74.8423908)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878973', 'Old Turtle Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0915026, -74.7604419, ST_GeomFromText('POINT(39.0915026 -74.7604419)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('878977', 'Oldham Pond', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.9466399, -74.1833797, ST_GeomFromText('POINT(40.9466399 -74.1833797)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('878978', 'Oldman Creek Meadow', 'Swamp', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0801136, -74.7607197, ST_GeomFromText('POINT(39.0801136 -74.7607197)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('878980', 'Oldmans Creek', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Marcus Hook', 39.78346, -75.4291892, ST_GeomFromText('POINT(39.78346 -75.4291892)', 4326), 39.6620587, -75.1932376, '1979-09-08', '2014-07-09', 'Official', 'Board Decision', '1896-01-01'),
  ('878981', 'Oldmans Point', 'Cape', 'New Jersey', 'NJ', 'Salem', 'Marcus Hook', 39.7631692, -75.4601953, ST_GeomFromText('POINT(39.7631692 -75.4601953)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1896-01-01'),
  ('878983', 'Oles Lake', 'Reservoir', 'New Jersey', 'NJ', 'Camden', 'Clementon', 39.8409946, -74.9329036, ST_GeomFromText('POINT(39.8409946 -74.9329036)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('878990', 'Olympia Lakes', 'Lake', 'New Jersey', 'NJ', 'Burlington', 'Beverly', 40.0326467, -74.9215784, ST_GeomFromText('POINT(40.0326467 -74.9215784)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('878992', 'Omary Lake', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Pitman West', 39.6845009, -75.1962341, ST_GeomFromText('POINT(39.6845009 -75.1962341)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('878994', 'Ong Run', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.9765036, -74.5759885, ST_GeomFromText('POINT(39.9765036 -74.5759885)', 4326), 39.9970708, -74.6217906, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1897-01-01'),
  ('878996', 'Openaka Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Mendham', 40.8558949, -74.5279774, ST_GeomFromText('POINT(40.8558949 -74.5279774)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('878998', 'Oradell Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Hackensack', 40.9711059, -74.001343, ST_GeomFromText('POINT(40.9711059 -74.001343)', 4326), NULL, NULL, '1979-09-08', '2020-11-12', NULL, NULL, NULL),
  ('879003', 'Orange Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Essex', 'Caldwell', 40.7630726, -74.2858423, ST_GeomFromText('POINT(40.7630726 -74.2858423)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('879004', 'Oranoaken Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Port Norris', 39.208315, -75.1196837, ST_GeomFromText('POINT(39.208315 -75.1196837)', 4326), 39.2925194, -75.1424503, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1950-01-01'),
  ('879012', 'Ore Spung', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Chatsworth', 39.7672932, -74.5996155, ST_GeomFromText('POINT(39.7672932 -74.5996155)', 4326), 39.79, -74.5997222, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879019', 'Osborn Island', 'Island', 'New Jersey', 'NJ', 'Monmouth', 'Point Pleasant', 40.0917823, -74.0715266, ST_GeomFromText('POINT(40.0917823 -74.0715266)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1900-01-01'),
  ('879021', 'Osborn Pond', 'Reservoir', 'New Jersey', 'NJ', 'Somerset', 'Bernardsville', 40.7234636, -74.5312868, ST_GeomFromText('POINT(40.7234636 -74.5312868)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('879022', 'Osborne Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'New Gretna', 39.5490068, -74.3787578, ST_GeomFromText('POINT(39.5490068 -74.3787578)', 4326), NULL, NULL, '1979-09-08', '2013-12-04', NULL, NULL, NULL),
  ('879023', 'Osborne Pond', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.1551373, -74.0628503, ST_GeomFromText('POINT(40.1551373 -74.0628503)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('879026', 'Oswego Lake', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Oswego Lake', 39.7332256, -74.4857124, ST_GeomFromText('POINT(39.7332256 -74.4857124)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('879027', 'Oswego River', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Jenkins', 39.6580956, -74.5276961, ST_GeomFromText('POINT(39.6580956 -74.5276961)', 4326), 39.8281742, -74.3457013, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('879031', 'Ottens Harbor', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Wildwood', 38.991224, -74.8282234, ST_GeomFromText('POINT(38.991224 -74.8282234)', 4326), NULL, NULL, '1979-09-08', '2013-12-04', 'Official', 'Board Decision', '1944-01-01'),
  ('879032', 'Otter Brook', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Runnemede', 39.8361559, -75.0602809, ST_GeomFromText('POINT(39.8361559 -75.0602809)', 4326), 39.859651, -75.0452672, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879033', 'Otter Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Marmora', 39.2806115, -74.7089168, ST_GeomFromText('POINT(39.2806115 -74.7089168)', 4326), 39.2894444, -74.7180556, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879034', 'Otter Pond', 'Lake', 'New Jersey', 'NJ', 'Atlantic', 'Green Bank', 39.5473104, -74.5042234, ST_GeomFromText('POINT(39.5473104 -74.5042234)', 4326), NULL, NULL, '1979-09-08', '2020-03-12', NULL, NULL, NULL),
  ('879050', 'Outer Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.03678, -74.7846099, ST_GeomFromText('POINT(39.03678 -74.7846099)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('879059', 'Overpeck Creek', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Weehawken', 40.8464192, -74.0291834, ST_GeomFromText('POINT(40.8464192 -74.0291834)', 4326), 40.9228767, -73.9526374, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879061', 'Lake Owassa', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Culvers Gap', 41.1512971, -74.8117095, ST_GeomFromText('POINT(41.1512971 -74.8117095)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('879065', 'Oxford Mountain', 'Summit', 'New Jersey', 'NJ', 'Warren', 'Washington', 40.805207, -74.9702556, ST_GeomFromText('POINT(40.805207 -74.9702556)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('879066', 'Oyster Cove', 'Bay', 'New Jersey', 'NJ', 'Salem', 'Canton', 39.3831686, -75.4185304, ST_GeomFromText('POINT(39.3831686 -75.4185304)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879070', 'Oyster Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Fortescue', 39.2386155, -75.1559056, ST_GeomFromText('POINT(39.2386155 -75.1559056)', 4326), 39.2236856, -75.1608275, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('879071', 'Oyster Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3067644, -74.6687078, ST_GeomFromText('POINT(39.3067644 -74.6687078)', 4326), 39.3080386, -74.6713847, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879072', 'Oyster Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'New Gretna', 39.5073188, -74.4103575, ST_GeomFromText('POINT(39.5073188 -74.4103575)', 4326), 39.5030556, -74.4455556, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879073', 'Oyster Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Forked River', 39.8110683, -74.1705653, ST_GeomFromText('POINT(39.8110683 -74.1705653)', 4326), 39.7820636, -74.3234778, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879075', 'Oyster Creek Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0056686, -74.8137782, ST_GeomFromText('POINT(39.0056686 -74.8137782)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('879077', 'Oyster Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.6445633, -74.2262513, ST_GeomFromText('POINT(39.6445633 -74.2262513)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879078', 'Oyster Pond', 'Lake', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.7310859, -74.1768686, ST_GeomFromText('POINT(39.7310859 -74.1768686)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('879080', 'Oysterbed Point', 'Cape', 'New Jersey', 'NJ', 'Atlantic', 'New Gretna', 39.5353956, -74.4098703, ST_GeomFromText('POINT(39.5353956 -74.4098703)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879081', 'Packanack Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Pompton Plains', 40.9156003, -74.2716685, ST_GeomFromText('POINT(40.9156003 -74.2716685)', 4326), 40.9569519, -74.2588475, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879083', 'Packanack Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Pompton Plains', 40.9373319, -74.2541966, ST_GeomFromText('POINT(40.9373319 -74.2541966)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('879084', 'Packanack Mountain', 'Summit', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.9306943, -74.2421122, ST_GeomFromText('POINT(40.9306943 -74.2421122)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('879085', 'Packanack Mountain', 'Summit', 'New Jersey', 'NJ', 'Passaic', 'Pompton Plains', 40.9842908, -74.2698267, ST_GeomFromText('POINT(40.9842908 -74.2698267)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('879087', 'Packers Island', 'Island', 'New Jersey', 'NJ', 'Hunterdon', 'Flemington', 40.5539918, -74.8551654, ST_GeomFromText('POINT(40.5539918 -74.8551654)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879090', 'Padgetts Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.2623263, -75.2042162, ST_GeomFromText('POINT(39.2623263 -75.2042162)', 4326), 39.2744305, -75.2013288, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879092', 'Pages Run', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.29817, -75.195187, ST_GeomFromText('POINT(39.29817 -75.195187)', 4326), 39.3123345, -75.1562101, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879093', 'Pakim Pond', 'Lake', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.879494, -74.531529, ST_GeomFromText('POINT(39.879494 -74.531529)', 4326), NULL, NULL, '1979-09-08', '2024-10-28', NULL, NULL, NULL),
  ('879095', 'Palatine Branch', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Elmer', 39.5493922, -75.1721343, ST_GeomFromText('POINT(39.5493922 -75.1721343)', 4326), 39.5958333, -75.2194444, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879096', 'Palatine Lake', 'Lake', 'New Jersey', 'NJ', 'Salem', 'Elmer', 39.5463223, -75.1678394, ST_GeomFromText('POINT(39.5463223 -75.1678394)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('879103', 'Palmer Lake', 'Lake', 'New Jersey', 'NJ', 'Mercer', 'Princeton', 40.3620039, -74.676609, ST_GeomFromText('POINT(40.3620039 -74.676609)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('879108', 'Panther Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Five Points', 39.4605503, -74.9576783, ST_GeomFromText('POINT(39.4605503 -74.9576783)', 4326), 39.5157978, -74.9357539, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879109', 'Panther Lake', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9671292, -74.7354452, ST_GeomFromText('POINT(40.9671292 -74.7354452)', 4326), NULL, NULL, '1979-09-08', '2013-08-14', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('879110', 'Papakating Creek', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Hamburg', 41.2013816, -74.5764023, ST_GeomFromText('POINT(41.2013816 -74.5764023)', 4326), 41.2100957, -74.7171088, '1979-09-08', '2014-06-11', 'Official', 'Board Decision', '1897-01-01'),
  ('879111', 'Papoose Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Oswego Lake', 39.7357764, -74.4591978, ST_GeomFromText('POINT(39.7357764 -74.4591978)', 4326), 39.793217, -74.4320619, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879112', 'Papoose Lake', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Medford Lakes', 39.8548487, -74.7955913, ST_GeomFromText('POINT(39.8548487 -74.7955913)', 4326), NULL, NULL, '1979-09-08', '2023-03-24', NULL, NULL, NULL),
  ('879116', 'Pargey Creek', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Bridgeport', 39.8142391, -75.3019828, ST_GeomFromText('POINT(39.8142391 -75.3019828)', 4326), 39.7830869, -75.2829713, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879123', 'Parker Brook', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Branchville', 41.2406903, -74.7414494, ST_GeomFromText('POINT(41.2406903 -74.7414494)', 4326), 41.2792616, -74.7129419, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879124', 'Parker Cove', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.6070628, -74.2812536, ST_GeomFromText('POINT(39.6070628 -74.2812536)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879125', 'Parker Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5590069, -74.3179218, ST_GeomFromText('POINT(39.5590069 -74.3179218)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879126', 'Parker Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Beach Haven', 39.5698404, -74.2462521, ST_GeomFromText('POINT(39.5698404 -74.2462521)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879127', 'Parker Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Wawayanda', 41.1995946, -74.3951605, ST_GeomFromText('POINT(41.1995946 -74.3951605)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('879128', 'Parker Run', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.6089036, -74.2920721, ST_GeomFromText('POINT(39.6089036 -74.2920721)', 4326), 39.632063, -74.3290333, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1941-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('879131', 'Parkers Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Beverly', 40.0002063, -74.8825295, ST_GeomFromText('POINT(40.0002063 -74.8825295)', 4326), 39.93, -74.9013889, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879145', 'Lake Parsippany', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Morristown', 40.8521375, -74.4338334, ST_GeomFromText('POINT(40.8521375 -74.4338334)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('879146', 'Parsonage Run', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Shiloh', 39.4815037, -75.2524107, ST_GeomFromText('POINT(39.4815037 -75.2524107)', 4326), 39.5174335, -75.2141833, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879147', 'Parsons Pond', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0215857, -74.1744567, ST_GeomFromText('POINT(41.0215857 -74.1744567)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('879150', 'Parvin Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Millville', 39.4487952, -75.0727236, ST_GeomFromText('POINT(39.4487952 -75.0727236)', 4326), 39.4761667, -75.0056362, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879151', 'Parvin Lake', 'Reservoir', 'New Jersey', 'NJ', 'Salem', 'Elmer', 39.5089884, -75.1351831, ST_GeomFromText('POINT(39.5089884 -75.1351831)', 4326), NULL, NULL, '1979-09-08', '2022-08-05', NULL, NULL, NULL),
  ('879157', 'Passaic Falls', 'Falls', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.9164876, -74.1820891, ST_GeomFromText('POINT(40.9164876 -74.1820891)', 4326), NULL, NULL, '1979-09-08', '2020-03-20', NULL, NULL, NULL),
  ('879159', 'Passaic River', 'Stream', 'New Jersey', 'NJ', 'Essex', 'Jersey City', 40.7123243, -74.1181983, ST_GeomFromText('POINT(40.7123243 -74.1181983)', 4326), 40.7623248, -74.5777085, '1979-09-08', '2016-09-23', NULL, NULL, NULL),
  ('879162', 'Patcong Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3078207, -74.6277022, ST_GeomFromText('POINT(39.3078207 -74.6277022)', 4326), 39.3610171, -74.5770568, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879163', 'Patcong Lake', 'Reservoir', 'New Jersey', 'NJ', 'Atlantic', 'Pleasantville', 39.3828616, -74.581956, ST_GeomFromText('POINT(39.3828616 -74.581956)', 4326), NULL, NULL, '1979-09-08', '2018-12-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('879168', 'Pattys Fork', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Canton', 39.4560108, -75.4636341, ST_GeomFromText('POINT(39.4560108 -75.4636341)', 4326), 39.4615008, -75.4739633, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879169', 'Mount Paul', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Chester', 40.7647491, -74.6494538, ST_GeomFromText('POINT(40.7647491 -74.6494538)', 4326), NULL, NULL, '1979-09-08', '2021-11-27', NULL, NULL, NULL),
  ('879170', 'Mount Paul', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Franklin', 41.0418691, -74.5399218, ST_GeomFromText('POINT(41.0418691 -74.5399218)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('879174', 'Paulins Kill', 'Stream', 'New Jersey', 'NJ', 'Warren', 'Portland', 40.9199681, -75.0880122, ST_GeomFromText('POINT(40.9199681 -75.0880122)', 4326), 41.0590082, -74.7379518, '1979-09-08', '2014-11-19', 'Official', 'Board Decision', '1898-01-01'),
  ('879175', 'Paulins Kill Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Newton West', 41.0677436, -74.8025746, ST_GeomFromText('POINT(41.0677436 -74.8025746)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('879177', 'Paunpeck Creek', 'Stream', 'New Jersey', 'NJ', 'Hudson', 'Weehawken', 40.8038777, -74.0325683, ST_GeomFromText('POINT(40.8038777 -74.0325683)', 4326), 40.8037559, -74.0263617, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1959-01-01'),
  ('879180', 'Peach Orchard Brook', 'Stream', 'New Jersey', 'NJ', 'Union', 'Elizabeth', 40.6296652, -74.2284045, ST_GeomFromText('POINT(40.6296652 -74.2284045)', 4326), 40.6496378, -74.242541, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879184', 'Peapack Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Gladstone', 40.6902381, -74.6475506, ST_GeomFromText('POINT(40.6902381 -74.6475506)', 4326), 40.7837707, -74.683165, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879185', 'Pearl Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.8978303, -74.1977549, ST_GeomFromText('POINT(40.8978303 -74.1977549)', 4326), 40.894341, -74.1884302, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879187', 'Peck Bay', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Ocean City', 39.2690042, -74.6221022, ST_GeomFromText('POINT(39.2690042 -74.6221022)', 4326), NULL, NULL, '1979-09-08', '2016-09-23', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('879188', 'Peck Beach', 'Beach', 'New Jersey', 'NJ', 'Cape May', 'Sea Isle City', 39.2465041, -74.6123795, ST_GeomFromText('POINT(39.2465041 -74.6123795)', 4326), NULL, NULL, '1979-09-08', '2013-12-04', 'Official', 'Board Decision', '1939-01-01'),
  ('879189', 'Peckman River', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.8935827, -74.2136201, ST_GeomFromText('POINT(40.8935827 -74.2136201)', 4326), 40.8109333, -74.2562582, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879191', 'Peddie Lake', 'Reservoir', 'New Jersey', 'NJ', 'Mercer', 'Hightstown', 40.2668486, -74.5212524, ST_GeomFromText('POINT(40.2668486 -74.5212524)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('879195', 'Pehle Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Hackensack', 40.9082058, -74.0876824, ST_GeomFromText('POINT(40.9082058 -74.0876824)', 4326), 40.9097222, -74.1041667, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879196', 'Pelican Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Seaside Park', 39.9431739, -74.0884702, ST_GeomFromText('POINT(39.9431739 -74.0884702)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879201', 'Penhorn Creek', 'Stream', 'New Jersey', 'NJ', 'Hudson', 'Weehawken', 40.7520458, -74.077364, ST_GeomFromText('POINT(40.7520458 -74.077364)', 4326), 40.7741667, -74.0455556, '1979-09-08', NULL, 'Official', 'Board Decision', '1959-01-01'),
  ('879204', 'Penn Swamp', 'Swamp', 'New Jersey', 'NJ', 'Burlington', 'Atsion', 39.6973403, -74.6282114, ST_GeomFromText('POINT(39.6973403 -74.6282114)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879205', 'Penn Swamp Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Atsion', 39.6793737, -74.6552888, ST_GeomFromText('POINT(39.6793737 -74.6552888)', 4326), 39.7183333, -74.6269444, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879206', 'Penn Swamp Pond', 'Lake', 'New Jersey', 'NJ', 'Burlington', 'Atsion', 39.6911976, -74.6358722, ST_GeomFromText('POINT(39.6911976 -74.6358722)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('879207', 'Penners Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Park Ridge', 41.076763, -74.0848642, ST_GeomFromText('POINT(41.076763 -74.0848642)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('879209', 'Pennington Mountain', 'Summit', 'New Jersey', 'NJ', 'Mercer', 'Pennington', 40.353249, -74.8175819, ST_GeomFromText('POINT(40.353249 -74.8175819)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('879212', 'Penns Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Bernardsville', 40.7107639, -74.5269102, ST_GeomFromText('POINT(40.7107639 -74.5269102)', 4326), 40.7136793, -74.5532441, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879216', 'Pennsauken Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Camden', 39.990668, -75.0543393, ST_GeomFromText('POINT(39.990668 -75.0543393)', 4326), 39.9800202, -75.0102013, '1979-09-08', '2014-07-09', 'Official', 'Board Decision', '1950-01-01'),
  ('879220', 'Pennsylvania Harbor', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Avalon', 39.1065029, -74.7234958, ST_GeomFromText('POINT(39.1065029 -74.7234958)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879221', 'Pennsylvania Ponds', 'Lake', 'New Jersey', 'NJ', 'Cape May', 'Rio Grande', 39.0734425, -74.8794896, ST_GeomFromText('POINT(39.0734425 -74.8794896)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', 'Official', 'Board Decision', '1944-01-01'),
  ('879223', 'Penny Pot Stream', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Newtonville', 39.5743363, -74.8200059, ST_GeomFromText('POINT(39.5743363 -74.8200059)', 4326), 39.6558025, -74.8556203, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879229', 'Pequannock River', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Pompton Plains', 40.9716704, -74.2817375, ST_GeomFromText('POINT(40.9716704 -74.2817375)', 4326), 41.1621301, -74.5041919, '1979-09-08', '2015-01-08', 'Official', 'Board Decision', '1919-01-01'),
  ('879231', 'Pequest River', 'Stream', 'New Jersey', 'NJ', 'Warren', 'Belvidere', 40.8285819, -75.0832379, ST_GeomFromText('POINT(40.8285819 -75.0832379)', 4326), 41.0306065, -74.7532752, '1979-09-08', '2014-11-19', NULL, NULL, NULL),
  ('879233', 'Pequest Valley', 'Valley', 'New Jersey', 'NJ', 'Warren', 'Washington', 40.8015374, -74.9966816, ST_GeomFromText('POINT(40.8015374 -74.9966816)', 4326), 40.8638341, -74.9058408, '1979-09-08', '2018-08-01', NULL, NULL, NULL),
  ('879234', 'Perch Cove', 'Bay', 'New Jersey', 'NJ', 'Atlantic', 'Oceanville', 39.4581729, -74.4034812, ST_GeomFromText('POINT(39.4581729 -74.4034812)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('879235', 'Perch Cove Run', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Mays Landing', 39.3767368, -74.7186291, ST_GeomFromText('POINT(39.3767368 -74.7186291)', 4326), 39.3816667, -74.6977778, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879239', 'Perona Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Newton East', 41.0196215, -74.6947479, ST_GeomFromText('POINT(41.0196215 -74.6947479)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('879241', 'Perrineville Lake', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Roosevelt', 40.2251883, -74.4374162, ST_GeomFromText('POINT(40.2251883 -74.4374162)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('879248', 'Peter Beach', 'Beach', 'New Jersey', 'NJ', 'Atlantic', 'Oceanville', 39.3920613, -74.4007034, ST_GeomFromText('POINT(39.3920613 -74.4007034)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879249', 'Peter Creek', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Camden', 39.9013436, -75.0942242, ST_GeomFromText('POINT(39.9013436 -75.0942242)', 4326), 39.8969444, -75.0697222, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879250', 'Peters Brook', 'Stream', 'New Jersey', 'NJ', 'Mercer', 'Hopewell', 40.392499, -74.8340821, ST_GeomFromText('POINT(40.392499 -74.8340821)', 4326), 40.3769444, -74.8652778, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1960-01-01'),
  ('879251', 'Peters Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Bound Brook', 40.5584824, -74.608739, ST_GeomFromText('POINT(40.5584824 -74.608739)', 4326), 40.6237576, -74.6301082, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879252', 'Peters Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.311714, -74.735527, ST_GeomFromText('POINT(39.311714 -74.735527)', 4326), 39.3201152, -74.7679421, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879257', 'Peterson Run', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Port Elizabeth', 39.2865128, -74.9919999, ST_GeomFromText('POINT(39.2865128 -74.9919999)', 4326), 39.2917813, -75.0160099, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879259', 'Petties Branch', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Atsion', 39.6277426, -74.6944195, ST_GeomFromText('POINT(39.6277426 -74.6944195)', 4326), 39.6052914, -74.7176152, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('879260', 'Pettit Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.6684527, -74.181805, ST_GeomFromText('POINT(39.6684527 -74.181805)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1894-01-01'),
  ('879261', 'Petty Island', 'Island', 'New Jersey', 'NJ', 'Camden', 'Camden', 39.9648349, -75.1029525, ST_GeomFromText('POINT(39.9648349 -75.1029525)', 4326), NULL, NULL, '1979-09-08', '2011-07-21', 'Official', 'Board Decision', '1891-01-01'),
  ('879263', 'Pheasant Hill', 'Summit', 'New Jersey', 'NJ', 'Somerset', 'Rocky Hill', 40.4189043, -74.7378073, ST_GeomFromText('POINT(40.4189043 -74.7378073)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('879267', 'Phillip Shields Islands', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.001224, -74.8376683, ST_GeomFromText('POINT(39.001224 -74.8376683)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879268', 'Phillips Pond', 'Lake', 'New Jersey', 'NJ', 'Gloucester', 'Bridgeport', 39.7904327, -75.3347697, ST_GeomFromText('POINT(39.7904327 -75.3347697)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('879273', 'Picatinny Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.953729, -74.5484794, ST_GeomFromText('POINT(40.953729 -74.5484794)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('879274', 'Pickerel Point', 'Cape', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9373206, -74.6454388, ST_GeomFromText('POINT(40.9373206 -74.6454388)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879275', 'Pickle Factory Pond', 'Reservoir', 'New Jersey', 'NJ', 'Cape May', 'Heislerville', 39.2276704, -74.9108459, ST_GeomFromText('POINT(39.2276704 -74.9108459)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('879276', 'Pier Point Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.3032755, -75.2862784, ST_GeomFromText('POINT(39.3032755 -75.2862784)', 4326), 39.3021475, -75.3004941, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879277', 'Pier Point Neck', 'Cape', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.2953918, -75.2896364, ST_GeomFromText('POINT(39.2953918 -75.2896364)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('879280', 'Pierces Point Pond', 'Lake', 'New Jersey', 'NJ', 'Cape May', 'Rio Grande', 39.081797, -74.9050976, ST_GeomFromText('POINT(39.081797 -74.9050976)', 4326), NULL, NULL, '1979-09-08', '2020-03-30', 'Official', 'Board Decision', '1944-01-01'),
  ('879282', 'Pierson Ridge', 'Ridge', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.1178651, -74.2176453, ST_GeomFromText('POINT(41.1178651 -74.2176453)', 4326), NULL, NULL, '1979-09-08', '2017-01-28', NULL, NULL, NULL),
  ('879283', 'Pigeon Swamp', 'Lake', 'New Jersey', 'NJ', 'Middlesex', 'New Brunswick', 40.3881373, -74.4876479, ST_GeomFromText('POINT(40.3881373 -74.4876479)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('879284', 'Pike Run', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Rocky Hill', 40.4193508, -74.6395281, ST_GeomFromText('POINT(40.4193508 -74.6395281)', 4326), 40.4555848, -74.6508993, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879285', 'Piles Creek', 'Stream', 'New Jersey', 'NJ', 'Union', 'Arthur Kill', 40.6197062, -74.2053187, ST_GeomFromText('POINT(40.6197062 -74.2053187)', 4326), 40.6233333, -74.2238889, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879287', 'Pilling Lake', 'Lake', 'New Jersey', 'NJ', 'Camden', 'Clementon', 39.8007431, -74.9815573, ST_GeomFromText('POINT(39.8007431 -74.9815573)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('879288', 'Pimple Hills', 'Range', 'New Jersey', 'NJ', 'Sussex', 'Newton East', 41.0792419, -74.6281896, ST_GeomFromText('POINT(41.0792419 -74.6281896)', 4326), NULL, NULL, '1979-09-08', '2018-01-10', NULL, NULL, NULL),
  ('879290', 'Pine Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Dividing Creek', 39.3481704, -75.093514, ST_GeomFromText('POINT(39.3481704 -75.093514)', 4326), 39.33, -75.1113889, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879291', 'Pine Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Newfield', 39.5153934, -75.0318422, ST_GeomFromText('POINT(39.5153934 -75.0318422)', 4326), 39.5069444, -75, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879293', 'Pine Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Freehold', 40.3167409, -74.3605971, ST_GeomFromText('POINT(40.3167409 -74.3605971)', 4326), 40.3431271, -74.2938825, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('879294', 'Pine Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Park Ridge', 41.0725574, -74.0849251, ST_GeomFromText('POINT(41.0725574 -74.0849251)', 4326), 41.1035442, -74.0554261, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879297', 'Pine Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Green Bank', 39.5973597, -74.5757532, ST_GeomFromText('POINT(39.5973597 -74.5757532)', 4326), 39.5844444, -74.6097222, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1895-01-01'),
  ('879306', 'Pine Island Meadow', 'Swamp', 'New Jersey', 'NJ', 'Salem', 'Penns Grove', 39.6440022, -75.4688081, ST_GeomFromText('POINT(39.6440022 -75.4688081)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879307', 'Pine Lake', 'Lake', 'New Jersey', 'NJ', 'Camden', 'Clementon', 39.8159009, -74.9878834, ST_GeomFromText('POINT(39.8159009 -74.9878834)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('879308', 'Pine Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Hackensack', 40.9845221, -74.0649078, ST_GeomFromText('POINT(40.9845221 -74.0649078)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('879309', 'Pine Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Park Ridge', 41.0218298, -74.0055221, ST_GeomFromText('POINT(41.0218298 -74.0055221)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('879310', 'Pine Lake', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'Lakehurst', 40.0088118, -74.2539328, ST_GeomFromText('POINT(40.0088118 -74.2539328)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', 'Official', 'Board Decision', '1954-01-01'),
  ('879312', 'Pine Mount', 'Summit', 'New Jersey', 'NJ', 'Cumberland', 'Shiloh', 39.4182443, -75.3363894, ST_GeomFromText('POINT(39.4182443 -75.3363894)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('879313', 'Pine Mount Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Shiloh', 39.3903426, -75.365063, ST_GeomFromText('POINT(39.3903426 -75.365063)', 4326), 39.4268517, -75.3312001, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879314', 'Pine Swamp', 'Swamp', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.0273198, -74.5737704, ST_GeomFromText('POINT(41.0273198 -74.5737704)', 4326), NULL, NULL, '1979-09-08', '2012-12-14', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('879318', 'Pine Tree Point', 'Cape', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9625982, -74.6487724, ST_GeomFromText('POINT(40.9625982 -74.6487724)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879319', 'Pine Tree Run', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Rocky Hill', 40.4292804, -74.6445894, ST_GeomFromText('POINT(40.4292804 -74.6445894)', 4326), 40.4466667, -74.6305556, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879323', 'Pinecliff Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Greenwood Lake', 41.1326821, -74.3744034, ST_GeomFromText('POINT(41.1326821 -74.3744034)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('879324', 'Pinecrest Lake', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.1020602, -74.385919, ST_GeomFromText('POINT(41.1020602 -74.385919)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('879326', 'Pines Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Pompton Plains', 40.9955865, -74.2650984, ST_GeomFromText('POINT(40.9955865 -74.2650984)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('879328', 'Pines Run', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Runnemede', 39.8267805, -75.0826728, ST_GeomFromText('POINT(39.8267805 -75.0826728)', 4326), 39.8058203, -75.0317261, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879331', 'Piney Point', 'Cape', 'New Jersey', 'NJ', 'Cumberland', 'Bridgeton', 39.4478926, -75.2412994, ST_GeomFromText('POINT(39.4478926 -75.2412994)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879340', 'Plains Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Oswego Lake', 39.7394065, -74.4112802, ST_GeomFromText('POINT(39.7394065 -74.4112802)', 4326), 39.8091748, -74.4207054, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879342', 'Plainsboro Pond', 'Reservoir', 'New Jersey', 'NJ', 'Middlesex', 'Hightstown', 40.327735, -74.593263, ST_GeomFromText('POINT(40.327735 -74.593263)', 4326), NULL, NULL, '1979-09-08', '2024-10-30', NULL, NULL, NULL),
  ('879346', 'Plank Run', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Pitman West', 39.718147, -75.137043, ST_GeomFromText('POINT(39.718147 -75.137043)', 4326), 39.7138225, -75.1465032, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('879352', 'Pleasant Hill', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Chester', 40.8303688, -74.6735212, ST_GeomFromText('POINT(40.8303688 -74.6735212)', 4326), NULL, NULL, '1979-09-08', '2022-08-16', NULL, NULL, NULL),
  ('879359', 'Pleasant Point', 'Cape', 'New Jersey', 'NJ', 'Salem', 'Delaware City', 39.6162241, -75.5035324, ST_GeomFromText('POINT(39.6162241 -75.5035324)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879362', 'Pleasant Run', 'Stream', 'New Jersey', 'NJ', 'Mercer', 'Allentown', 40.1406165, -74.6128669, ST_GeomFromText('POINT(40.1406165 -74.6128669)', 4326), 40.1502242, -74.5494327, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879363', 'Pleasant Run', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Raritan', 40.5179732, -74.7293928, ST_GeomFromText('POINT(40.5179732 -74.7293928)', 4326), 40.5832105, -74.8245871, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879368', 'Pleasant Valley Lake', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Mendham', 40.7509101, -74.6236686, ST_GeomFromText('POINT(40.7509101 -74.6236686)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('879374', 'Pleasure Bay', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0498356, -74.7701648, ST_GeomFromText('POINT(39.0498356 -74.7701648)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('879375', 'Ploughshare Point', 'Cape', 'New Jersey', 'NJ', 'Middlesex', 'Perth Amboy', 40.5217721, -74.2520897, ST_GeomFromText('POINT(40.5217721 -74.2520897)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879377', 'Plum Brook', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'Stockton', 40.4587726, -74.9675328, ST_GeomFromText('POINT(40.4587726 -74.9675328)', 4326), 40.5109368, -74.9093333, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879379', 'Plymouth Pond', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Newton West', 41.1170383, -74.8700436, ST_GeomFromText('POINT(41.1170383 -74.8700436)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('879380', 'Lake Pocahontas', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Morristown', 40.8067958, -74.4799467, ST_GeomFromText('POINT(40.8067958 -74.4799467)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('879381', 'Pochack Creek', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Camden', 39.9832181, -75.0615093, ST_GeomFromText('POINT(39.9832181 -75.0615093)', 4326), 39.9741531, -75.044079, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879382', 'Pochuck Creek', 'Stream', 'New York', 'NY', 'Orange', 'Pine Island', 41.3142611, -74.4715467, ST_GeomFromText('POINT(41.3142611 -74.4715467)', 4326), 41.1653737, -74.4973802, '1980-01-23', '2014-11-19', NULL, NULL, NULL),
  ('879383', 'Pochuck Mountain', 'Summit', 'New Jersey', 'NJ', 'Sussex', 'Hamburg', 41.2108915, -74.5303281, ST_GeomFromText('POINT(41.2108915 -74.5303281)', 4326), NULL, NULL, '1979-09-08', '2022-08-13', NULL, NULL, NULL),
  ('879384', 'Lake Pochung', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Hamburg', 41.2039056, -74.5396006, ST_GeomFromText('POINT(41.2039056 -74.5396006)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('879385', 'Pohatcong Creek', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'Riegelsville', 40.622361, -75.1882356, ST_GeomFromText('POINT(40.622361 -75.1882356)', 4326), 40.8472551, -74.8624921, '1979-09-08', '2014-11-19', NULL, NULL, NULL),
  ('879386', 'Pohatcong Mountain', 'Summit', 'New Jersey', 'NJ', 'Warren', 'Bloomsbury', 40.7080073, -75.0511024, ST_GeomFromText('POINT(40.7080073 -75.0511024)', 4326), NULL, NULL, '1979-09-08', '2023-07-22', NULL, NULL, NULL),
  ('879387', 'Pohatcong Valley', 'Valley', 'New Jersey', 'NJ', 'Warren', 'Washington', 40.7998508, -74.9510191, ST_GeomFromText('POINT(40.7998508 -74.9510191)', 4326), 40.8217193, -74.9208719, '1979-09-08', '2018-08-01', NULL, NULL, NULL),
  ('879390', 'Point Breeze', 'Cape', 'New Jersey', 'NJ', 'Morris', 'Stanhope', 40.9595426, -74.6387721, ST_GeomFromText('POINT(40.9595426 -74.6387721)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879392', 'Point Comfort', 'Cape', 'New Jersey', 'NJ', 'Monmouth', 'Keyport', 40.4573294, -74.1362534, ST_GeomFromText('POINT(40.4573294 -74.1362534)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879393', 'Point Mountain', 'Summit', 'New Jersey', 'NJ', 'Hunterdon', 'Washington', 40.7638117, -74.904112, ST_GeomFromText('POINT(40.7638117 -74.904112)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('879398', 'Point View Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.9736547, -74.2479995, ST_GeomFromText('POINT(40.9736547 -74.2479995)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('879400', 'Pole Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Chatsworth', 39.7687297, -74.534319, ST_GeomFromText('POINT(39.7687297 -74.534319)', 4326), 39.8111111, -74.5741667, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879401', 'Pole Bridge Branch', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Tuckahoe', 39.3237412, -74.8269582, ST_GeomFromText('POINT(39.3237412 -74.8269582)', 4326), 39.3352778, -74.8163889, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879402', 'Pole Bridge Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.9398374, -74.5843218, ST_GeomFromText('POINT(39.9398374 -74.5843218)', 4326), 39.9398392, -74.3926486, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879405', 'South Branch Kettle Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Lakewood', 40.0192839, -74.1254169, ST_GeomFromText('POINT(40.0192839 -74.1254169)', 4326), 40.0197641, -74.1966927, '1981-07-01', '2013-06-05', 'Official', 'Board Decision', '1989-01-01'),
  ('879409', 'Polypod Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.1667807, -74.0168033, ST_GeomFromText('POINT(40.1667807 -74.0168033)', 4326), 40.1663889, -74.0461111, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879412', 'Pompeston Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Frankford', 40.0156825, -75.0103194, ST_GeomFromText('POINT(40.0156825 -75.0103194)', 4326), 39.9662237, -74.9532236, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879415', 'Pompton Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0048974, -74.2753203, ST_GeomFromText('POINT(41.0048974 -74.2753203)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('879418', 'Pompton River', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Pompton Plains', 40.8975748, -74.272213, ST_GeomFromText('POINT(40.8975748 -74.272213)', 4326), 40.9713737, -74.2818314, '1979-09-08', '2014-11-19', NULL, NULL, NULL),
  ('879419', 'Ponchantoula Lake', 'Reservoir', 'New Jersey', 'NJ', 'Salem', 'Alloway', 39.557955, -75.3041615, ST_GeomFromText('POINT(39.557955 -75.3041615)', 4326), NULL, NULL, '1979-09-08', '2022-08-05', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('879420', 'Pond Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0324032, -74.2435831, ST_GeomFromText('POINT(41.0324032 -74.2435831)', 4326), 40.9947147, -74.2360246, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879421', 'Pond Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Cape May', 38.9503648, -74.9673101, ST_GeomFromText('POINT(38.9503648 -74.9673101)', 4326), 38.9589082, -74.935298, '1979-09-08', '2013-03-21', 'Official', 'Board Decision', '1944-01-01'),
  ('879422', 'Pond Run', 'Stream', 'New Jersey', 'NJ', 'Mercer', 'Trenton East', 40.2313898, -74.7394659, ST_GeomFromText('POINT(40.2313898 -74.7394659)', 4326), 40.2172008, -74.6493316, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879425', 'Ponds Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.2840205, -75.2167529, ST_GeomFromText('POINT(39.2840205 -75.2167529)', 4326), 39.2752778, -75.2, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879426', 'Poor House Flat', 'Flat', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0690025, -74.7637755, ST_GeomFromText('POINT(39.0690025 -74.7637755)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('879427', 'Pope Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Woodmansie', 39.8184254, -74.4732606, ST_GeomFromText('POINT(39.8184254 -74.4732606)', 4326), 39.8211111, -74.4327778, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879429', 'Pophandusing Brook', 'Stream', 'New Jersey', 'NJ', 'Warren', 'Belvidere', 40.8241127, -75.0829375, ST_GeomFromText('POINT(40.8241127 -75.0829375)', 4326), 40.8061111, -75.0236111, '1979-09-08', '2014-11-19', NULL, NULL, NULL),
  ('879430', 'Popular Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.6440079, -74.22014, ST_GeomFromText('POINT(39.6440079 -74.22014)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879431', 'Porch Branch', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Runnemede', 39.7609475, -75.1140634, ST_GeomFromText('POINT(39.7609475 -75.1140634)', 4326), 39.7448367, -75.0793387, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879434', 'Pork Island', 'Island', 'New Jersey', 'NJ', 'Atlantic', 'Ocean City', 39.3348384, -74.5218199, ST_GeomFromText('POINT(39.3348384 -74.5218199)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('879441', 'Port Newark', 'Bay', 'New Jersey', 'NJ', 'Essex', 'Elizabeth', 40.6942691, -74.1323653, ST_GeomFromText('POINT(40.6942691 -74.1323653)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879455', 'Post Island', 'Summit', 'New Jersey', 'NJ', 'Warren', 'Blairstown', 40.8940622, -74.898657, ST_GeomFromText('POINT(40.8940622 -74.898657)', 4326), NULL, NULL, '1979-09-08', '2018-06-21', NULL, NULL, NULL),
  ('879456', 'Posts Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0043929, -74.294191, ST_GeomFromText('POINT(41.0043929 -74.294191)', 4326), 41.0580556, -74.3502778, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879459', 'Potato Island', 'Summit', 'New Jersey', 'NJ', 'Cape May', 'Rio Grande', 39.0858265, -74.8778808, ST_GeomFromText('POINT(39.0858265 -74.8778808)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', 'Official', 'Board Decision', '1944-01-01'),
  ('879461', 'Potter Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Toms River', 39.8998408, -74.1323604, ST_GeomFromText('POINT(39.8998408 -74.1323604)', 4326), 39.9022592, -74.1715336, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879463', 'Potters Island', 'Island', 'New Jersey', 'NJ', 'Middlesex', 'Arthur Kill', 40.6006596, -74.2173671, ST_GeomFromText('POINT(40.6006596 -74.2173671)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879466', 'Pottersville Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Hunterdon', 'Califon', 40.7226007, -74.7532187, ST_GeomFromText('POINT(40.7226007 -74.7532187)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879468', 'Powder Mill Pond', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Morristown', 40.8658562, -74.478618, ST_GeomFromText('POINT(40.8658562 -74.478618)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('879469', 'Powell Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3510954, -74.7096062, ST_GeomFromText('POINT(39.3510954 -74.7096062)', 4326), 39.3747222, -74.6933333, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879470', 'Powells Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0948359, -74.7926658, ST_GeomFromText('POINT(39.0948359 -74.7926658)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('879471', 'Powells Run', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Pemberton', 39.9826612, -74.7388315, ST_GeomFromText('POINT(39.9826612 -74.7388315)', 4326), 40.0059456, -74.7134931, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879473', 'Poxono Island', 'Island', 'New Jersey', 'NJ', 'Warren', 'Bushkill', 41.0456517, -75.0226745, ST_GeomFromText('POINT(41.0456517 -75.0226745)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879477', 'Preakness Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.9096147, -74.2467146, ST_GeomFromText('POINT(40.9096147 -74.2467146)', 4326), 40.9731264, -74.227066, '1979-09-08', '2013-06-05', NULL, NULL, NULL),
  ('879479', 'Preakness Mountain', 'Summit', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.9704154, -74.1983371, ST_GeomFromText('POINT(40.9704154 -74.1983371)', 4326), NULL, NULL, '1979-09-08', '2022-08-16', NULL, NULL, NULL),
  ('879481', 'Preakness Valley', 'Valley', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.9110664, -74.248902, ST_GeomFromText('POINT(40.9110664 -74.248902)', 4326), 40.961901, -74.2252123, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('879483', 'Prescott Brook', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'Flemington', 40.5678148, -74.8643911, ST_GeomFromText('POINT(40.5678148 -74.8643911)', 4326), 40.6111111, -74.8447222, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879485', 'Presidential Lakes', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.9087544, -74.5747286, ST_GeomFromText('POINT(39.9087544 -74.5747286)', 4326), NULL, NULL, '1979-09-08', '2023-03-24', NULL, NULL, NULL),
  ('879486', 'Price Branch', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Hammonton', 39.7142846, -74.7763395, ST_GeomFromText('POINT(39.7142846 -74.7763395)', 4326), 39.7177209, -74.8309802, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879488', 'Primrose Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Bernardsville', 40.716367, -74.5113534, ST_GeomFromText('POINT(40.716367 -74.5113534)', 4326), 40.772878, -74.5182115, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879493', 'Princeton Harbor', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Avalon', 39.1031695, -74.7243291, ST_GeomFromText('POINT(39.1031695 -74.7243291)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('879548', 'Pulis Pond', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.027597, -74.2023678, ST_GeomFromText('POINT(41.027597 -74.2023678)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879549', 'Pullen Island', 'Island', 'New Jersey', 'NJ', 'Atlantic', 'Brigantine Inlet', 39.4576174, -74.3254222, ST_GeomFromText('POINT(39.4576174 -74.3254222)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879551', 'Pump Branch', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Hammonton', 39.6926252, -74.8124877, ST_GeomFromText('POINT(39.6926252 -74.8124877)', 4326), 39.7331714, -74.9187755, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879552', 'Pumping Station Pond', 'Reservoir', 'New Jersey', 'NJ', 'Cape May', 'Rio Grande', 39.0275577, -74.8937306, ST_GeomFromText('POINT(39.0275577 -74.8937306)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', 'Official', 'Board Decision', '1944-01-01'),
  ('879553', 'Pumpkin Patch Brook', 'Stream', 'New Jersey', 'NJ', 'Union', 'Perth Amboy', 40.6123195, -74.3431091, ST_GeomFromText('POINT(40.6123195 -74.3431091)', 4326), 40.5911111, -74.3397222, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879556', 'Punyard Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Cape May', 38.9698349, -74.8768371, ST_GeomFromText('POINT(38.9698349 -74.8768371)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('879566', 'Quarryville Brook', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Hamburg', 41.2356096, -74.5641862, ST_GeomFromText('POINT(41.2356096 -74.5641862)', 4326), 41.2842756, -74.570653, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879572', 'Quick Pond', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Culvers Gap', 41.1371166, -74.8486253, ST_GeomFromText('POINT(41.1371166 -74.8486253)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('879573', 'Quicks Island', 'Island', 'New Jersey', 'NJ', 'Sussex', 'Milford', 41.3259274, -74.7673873, ST_GeomFromText('POINT(41.3259274 -74.7673873)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879576', 'Raccoon Creek', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Marcus Hook', 39.808536, -75.3808022, ST_GeomFromText('POINT(39.808536 -75.3808022)', 4326), 39.697855, -75.1488179, '1979-09-08', '2016-09-23', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('879578', 'Raccoon Island', 'Island', 'New Jersey', 'NJ', 'Morris', 'Stanhope', 40.9625982, -74.6365497, ST_GeomFromText('POINT(40.9625982 -74.6365497)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879579', 'Race Cove', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0523355, -74.8229452, ST_GeomFromText('POINT(39.0523355 -74.8229452)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('879580', 'Rachael Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.1084471, -74.7751649, ST_GeomFromText('POINT(39.1084471 -74.7751649)', 4326), NULL, NULL, '1979-09-08', '2009-10-22', NULL, NULL, NULL),
  ('879584', 'Ragged Island', 'Island', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.3653913, -75.3601945, ST_GeomFromText('POINT(39.3653913 -75.3601945)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879587', 'Rahway River', 'Stream', 'New Jersey', 'NJ', 'Union', 'Arthur Kill', 40.5935313, -74.2054904, ST_GeomFromText('POINT(40.5935313 -74.2054904)', 4326), 40.7996302, -74.2492318, '1979-09-08', '2014-11-19', NULL, NULL, NULL),
  ('879589', 'Rail Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'West Creek', 39.6691453, -74.3278916, ST_GeomFromText('POINT(39.6691453 -74.3278916)', 4326), 39.6634891, -74.3481892, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879591', 'Rainbow Islands', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Ocean City', 39.2995601, -74.5873784, ST_GeomFromText('POINT(39.2995601 -74.5873784)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879592', 'Rainbow Lake', 'Reservoir', 'New Jersey', 'NJ', 'Salem', 'Millville', 39.4917876, -75.1140798, ST_GeomFromText('POINT(39.4917876 -75.1140798)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('879593', 'Rainbow Lakes', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.8803073, -74.4573461, ST_GeomFromText('POINT(40.8803073 -74.4573461)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('879597', 'Ramapo Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0370104, -74.2655009, ST_GeomFromText('POINT(41.0370104 -74.2655009)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('879599', 'Ramapo River', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Pompton Plains', 40.9715185, -74.2816785, ST_GeomFromText('POINT(40.9715185 -74.2816785)', 4326), 41.2720332, -74.1385666, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879603', 'Ramsey Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0228749, -74.1329209, ST_GeomFromText('POINT(41.0228749 -74.1329209)', 4326), 41.0912072, -74.1229211, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879607', 'Rancocas Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Beverly', 40.0413739, -74.978739, ST_GeomFromText('POINT(40.0413739 -74.978739)', 4326), 39.9963229, -74.8617411, '1979-09-08', '2014-07-09', 'Official', 'Board Decision', '1954-01-01'),
  ('879612', 'Randolph Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Bound Brook', 40.5510114, -74.5479655, ST_GeomFromText('POINT(40.5510114 -74.5479655)', 4326), 40.535, -74.5605556, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879614', 'Raritan Bay', 'Bay', 'New Jersey', 'NJ', 'Monmouth', 'Sandy Hook West', 40.4980617, -74.0998331, ST_GeomFromText('POINT(40.4980617 -74.0998331)', 4326), NULL, NULL, '1979-09-08', '2021-01-14', NULL, NULL, NULL),
  ('879615', 'Raritan Bay Beach', 'Beach', 'New Jersey', 'NJ', 'Middlesex', 'Keyport', 40.452607, -74.2287557, ST_GeomFromText('POINT(40.452607 -74.2287557)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879618', 'Raritan River', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'South Amboy', 40.4947753, -74.2714405, ST_GeomFromText('POINT(40.4947753 -74.2714405)', 4326), 40.5554582, -74.6871936, '1979-09-08', '2020-01-14', NULL, NULL, NULL),
  ('879621', 'Rattling Run', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Bridgeport', 39.7765547, -75.2774727, ST_GeomFromText('POINT(39.7765547 -75.2774727)', 4326), 39.7563438, -75.2247968, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879624', 'Ravine Lake', 'Reservoir', 'New Jersey', 'NJ', 'Somerset', 'Gladstone', 40.7124927, -74.6335178, ST_GeomFromText('POINT(40.7124927 -74.6335178)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('879628', 'Lake Reality', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Pompton Plains', 40.9710269, -74.3731108, ST_GeomFromText('POINT(40.9710269 -74.3731108)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('879640', 'Red Rock Lake', 'Reservoir', 'New Jersey', 'NJ', 'Hunterdon', 'Flemington', 40.5203813, -74.821553, ST_GeomFromText('POINT(40.5203813 -74.821553)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879641', 'Red Root Creek', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'Perth Amboy', 40.5003109, -74.3240547, ST_GeomFromText('POINT(40.5003109 -74.3240547)', 4326), 40.4926052, -74.3568154, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879643', 'Red Valley Lake', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Roosevelt', 40.163209, -74.4662614, ST_GeomFromText('POINT(40.163209 -74.4662614)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('879645', 'Redings Pond', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Newton West', 41.0034649, -74.7852485, ST_GeomFromText('POINT(41.0034649 -74.7852485)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('879647', 'Reed Branch', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Newfield', 39.6069281, -75.0876045, ST_GeomFromText('POINT(39.6069281 -75.0876045)', 4326), 39.6638979, -75.1730624, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879648', 'Reeds Bay', 'Bay', 'New Jersey', 'NJ', 'Atlantic', 'Oceanville', 39.4417839, -74.4376495, ST_GeomFromText('POINT(39.4417839 -74.4376495)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1967-01-01'),
  ('879650', 'Reeds Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Chatsworth', 39.8244707, -74.540509, ST_GeomFromText('POINT(39.8244707 -74.540509)', 4326), 39.8433333, -74.5019444, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879654', 'Reevy Branch', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.2107365, -74.100101, ST_GeomFromText('POINT(40.2107365 -74.100101)', 4326), 40.2455268, -74.1067314, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879661', 'Repaupo Creek', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Bridgeport', 39.8312095, -75.3325787, ST_GeomFromText('POINT(39.8312095 -75.3325787)', 4326), 39.8143679, -75.3020686, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879663', 'Reservoir Number Two', 'Reservoir', 'New Jersey', 'NJ', 'Hudson', 'Jersey City', 40.7414906, -74.05903, ST_GeomFromText('POINT(40.7414906 -74.05903)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('879664', 'Reservoir Number Three', 'Reservoir', 'New Jersey', 'NJ', 'Hudson', 'Jersey City', 40.7402312, -74.0548837, ST_GeomFromText('POINT(40.7402312 -74.0548837)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('879667', 'Reubens Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Dividing Creek', 39.2784886, -75.0681987, ST_GeomFromText('POINT(39.2784886 -75.0681987)', 4326), 39.2730556, -75.0541667, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879672', 'Rhodo Lake', 'Reservoir', 'New Jersey', 'NJ', 'Salem', 'Shiloh', 39.4945234, -75.3391578, ST_GeomFromText('POINT(39.4945234 -75.3391578)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('879673', 'Rich Crow Lake', 'Lake', 'New Jersey', 'NJ', 'Gloucester', 'Pitman West', 39.6708933, -75.1895956, ST_GeomFromText('POINT(39.6708933 -75.1895956)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('879675', 'Richardson Sound', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0087241, -74.8435019, ST_GeomFromText('POINT(39.0087241 -74.8435019)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('879680', 'Lake Rickonda', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.1121239, -74.3044846, ST_GeomFromText('POINT(41.1121239 -74.3044846)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('879688', 'Ridgeway Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Lakehurst', 40.0108919, -74.2609182, ST_GeomFromText('POINT(40.0108919 -74.2609182)', 4326), 40.0548372, -74.391538, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1954-01-01'),
  ('879695', 'Rhinehart Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Gladstone', 40.7440747, -74.7313589, ST_GeomFromText('POINT(40.7440747 -74.7313589)', 4326), 40.7567669, -74.7554412, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879696', 'Ring Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0540023, -74.7848877, ST_GeomFromText('POINT(39.0540023 -74.7848877)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('879699', 'Chimney Rock Gorge', 'Valley', 'New Jersey', 'NJ', 'Somerset', 'Bound Brook', 40.5792329, -74.5574833, ST_GeomFromText('POINT(40.5792329 -74.5574833)', 4326), 40.5903749, -74.5633787, '1979-09-08', '2018-08-01', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('879701', 'Ringwood Mill Pond', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Greenwood Lake', 41.1369593, -74.2579175, ST_GeomFromText('POINT(41.1369593 -74.2579175)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('879702', 'Ringwood Creek', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Greenwood Lake', 41.1261312, -74.2664154, ST_GeomFromText('POINT(41.1261312 -74.2664154)', 4326), 41.1531507, -74.2379254, '1979-09-08', '2013-06-05', NULL, NULL, NULL),
  ('879705', 'Risley Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Chatsworth', 39.7841814, -74.5294261, ST_GeomFromText('POINT(39.7841814 -74.5294261)', 4326), 39.8125, -74.5122222, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879709', 'River Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Raritan', 40.6004986, -74.6725649, ST_GeomFromText('POINT(40.6004986 -74.6725649)', 4326), 40.6055556, -74.6552778, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879711', 'River Styx', 'Bay', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9403762, -74.6498834, ST_GeomFromText('POINT(40.9403762 -74.6498834)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879729', 'Roaring Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Rocky Hill', 40.4564379, -74.6902674, ST_GeomFromText('POINT(40.4564379 -74.6902674)', 4326), 40.4613889, -74.7144444, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879730', 'Roaring Ditch', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Heislerville', 39.1736235, -74.878521, ST_GeomFromText('POINT(39.1736235 -74.878521)', 4326), 39.1930556, -74.8888889, '1979-09-08', '2014-05-13', NULL, NULL, NULL),
  ('879735', 'Roberts Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Indian Mills', 39.7837286, -74.6601566, ST_GeomFromText('POINT(39.7837286 -74.6601566)', 4326), 39.8298392, -74.6057106, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879737', 'Roberts Swamp Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Point Pleasant', 40.1158363, -74.0498874, ST_GeomFromText('POINT(40.1158363 -74.0498874)', 4326), 40.1202729, -74.0698591, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879739', 'Robins Swamp Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.2004777, -74.074384, ST_GeomFromText('POINT(40.2004777 -74.074384)', 4326), 40.1954378, -74.0775838, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('879740', 'Robinsons Branch', 'Stream', 'New Jersey', 'NJ', 'Union', 'Perth Amboy', 40.6110428, -74.2749327, ST_GeomFromText('POINT(40.6110428 -74.2749327)', 4326), 40.6031587, -74.380428, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879741', 'Rocaps Run', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Bridgeton', 39.4033096, -75.2299306, ST_GeomFromText('POINT(39.4033096 -75.2299306)', 4326), 39.4175, -75.1891667, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879744', 'Rock Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Rocky Hill', 40.4111352, -74.6736324, ST_GeomFromText('POINT(40.4111352 -74.6736324)', 4326), 40.4336111, -74.7447222, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879745', 'Rock Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.3506432, -75.2693269, ST_GeomFromText('POINT(39.3506432 -75.2693269)', 4326), 39.362224, -75.2546954, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879746', 'Rock Island Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.0412206, -74.5821429, ST_GeomFromText('POINT(41.0412206 -74.5821429)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('879747', 'Rock Lodge Pond', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.0713302, -74.5338403, ST_GeomFromText('POINT(41.0713302 -74.5338403)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('879749', 'Rock Pear Mountain', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.9725898, -74.3940397, ST_GeomFromText('POINT(40.9725898 -74.3940397)', 4326), NULL, NULL, '1981-07-01', '2021-11-27', NULL, NULL, NULL),
  ('879750', 'Rock Point', 'Cape', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3015044, -74.6487701, ST_GeomFromText('POINT(39.3015044 -74.6487701)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879751', 'Rock Ridge Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.9103042, -74.462765, ST_GeomFromText('POINT(40.9103042 -74.462765)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('879753', 'Rockaway Creek', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'Gladstone', 40.6258361, -74.7121033, ST_GeomFromText('POINT(40.6258361 -74.7121033)', 4326), 40.7486062, -74.771533, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('879755', 'Rockaway River', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Caldwell', 40.8493632, -74.3301353, ST_GeomFromText('POINT(40.8493632 -74.3301353)', 4326), 41.0312086, -74.4723781, '1979-09-08', '2014-11-19', NULL, NULL, NULL),
  ('879757', 'Rockaway Valley', 'Valley', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.8919135, -74.4719691, ST_GeomFromText('POINT(40.8919135 -74.4719691)', 4326), 40.9594449, -74.4052835, '1979-09-08', '2018-08-01', NULL, NULL, NULL),
  ('879760', 'Rocker Pond', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9902416, -74.7267375, ST_GeomFromText('POINT(40.9902416 -74.7267375)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('879766', 'Rocky Brook', 'Stream', 'New Jersey', 'NJ', 'Mercer', 'Hightstown', 40.2886268, -74.5398358, ST_GeomFromText('POINT(40.2886268 -74.5398358)', 4326), 40.2190001, -74.41015, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879768', 'Rocky Hill', 'Summit', 'New Jersey', 'NJ', 'Mercer', 'Princeton', 40.3702251, -74.7139118, ST_GeomFromText('POINT(40.3702251 -74.7139118)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('879770', 'Rocky Mountain', 'Summit', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0916735, -74.2154025, ST_GeomFromText('POINT(41.0916735 -74.2154025)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('879771', 'Rocky Run', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'High Bridge', 40.679381, -74.9205512, ST_GeomFromText('POINT(40.679381 -74.9205512)', 4326), 40.7155556, -74.8925, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879774', 'Lake Rogerene', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Stanhope', 40.8978067, -74.654437, ST_GeomFromText('POINT(40.8978067 -74.654437)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('879776', 'Rolphs Creek', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'Arthur Kill', 40.5991117, -74.2270848, ST_GeomFromText('POINT(40.5991117 -74.2270848)', 4326), 40.595, -74.2305556, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879808', 'Rose Cove', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.6003962, -74.3068102, ST_GeomFromText('POINT(39.6003962 -74.3068102)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('879814', 'Rose Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.6026184, -74.2909762, ST_GeomFromText('POINT(39.6026184 -74.2909762)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879815', 'Mount Rose', 'Summit', 'New Jersey', 'NJ', 'Mercer', 'Princeton', 40.3674512, -74.7248272, ST_GeomFromText('POINT(40.3674512 -74.7248272)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('879831', 'Ross Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Bound Brook', 40.572236, -74.606958, ST_GeomFromText('POINT(40.572236 -74.606958)', 4326), 40.5938889, -74.6030556, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879833', 'Rotary Island', 'Island', 'New Jersey', 'NJ', 'Mercer', 'Trenton West', 40.2373307, -74.8154407, ST_GeomFromText('POINT(40.2373307 -74.8154407)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1954-01-01'),
  ('879835', 'Round Mountain', 'Summit', 'New Jersey', 'NJ', 'Hunterdon', 'Flemington', 40.5673167, -74.8443301, ST_GeomFromText('POINT(40.5673167 -74.8443301)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('879836', 'Round Pond (historical)', 'Lake', 'New Jersey', 'NJ', 'Cumberland', 'Port Norris', 39.2195585, -75.0804584, ST_GeomFromText('POINT(39.2195585 -75.0804584)', 4326), NULL, NULL, '1979-09-08', '2020-03-31', NULL, NULL, NULL),
  ('879838', 'Round Top', 'Summit', 'New Jersey', 'NJ', 'Hunterdon', 'Califon', 40.673982, -74.773773, ST_GeomFromText('POINT(40.673982 -74.773773)', 4326), NULL, NULL, '1979-09-08', '2021-11-27', NULL, NULL, NULL),
  ('879839', 'Round Valley Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Hunterdon', 'Flemington', 40.6158907, -74.8255854, ST_GeomFromText('POINT(40.6158907 -74.8255854)', 4326), NULL, NULL, '1979-09-08', '2023-04-05', NULL, NULL, NULL),
  ('879840', 'Roundabout Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'New Gretna', 39.5565069, -74.4073702, ST_GeomFromText('POINT(39.5565069 -74.4073702)', 4326), 39.5622222, -74.3891667, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879842', 'Roveres Lake', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Pompton Plains', 40.9074792, -74.2583778, ST_GeomFromText('POINT(40.9074792 -74.2583778)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('879843', 'Rowan Lake (historical)', 'Lake', 'New Jersey', 'NJ', 'Mercer', 'Trenton East', 40.1864984, -74.7284936, ST_GeomFromText('POINT(40.1864984 -74.7284936)', 4326), NULL, NULL, '1979-09-08', '2020-07-06', NULL, NULL, NULL),
  ('879844', 'Rowand Lake', 'Lake', 'New Jersey', 'NJ', 'Camden', 'Clementon', 39.8045577, -74.976652, ST_GeomFromText('POINT(39.8045577 -74.976652)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('879848', 'Royce Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Bound Brook', 40.5309156, -74.5876166, ST_GeomFromText('POINT(40.5309156 -74.5876166)', 4326), 40.5021322, -74.6967262, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879849', 'Royce Valley', 'Valley', 'New Jersey', 'NJ', 'Somerset', 'Raritan', 40.5199114, -74.6806133, ST_GeomFromText('POINT(40.5199114 -74.6806133)', 4326), 40.5375407, -74.6272388, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('879853', 'Rubins Run', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Green Bank', 39.5847926, -74.5633426, ST_GeomFromText('POINT(39.5847926 -74.5633426)', 4326), 39.5347222, -74.5572222, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879857', 'Rum Creek', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'South Amboy', 40.4830132, -74.3711409, ST_GeomFromText('POINT(40.4830132 -74.3711409)', 4326), 40.4916381, -74.365055, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879858', 'Rum Point', 'Cape', 'New Jersey', 'NJ', 'Atlantic', 'Oceanville', 39.3834501, -74.4168152, ST_GeomFromText('POINT(39.3834501 -74.4168152)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879859', 'Run Creek', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'Arthur Kill', 40.5899222, -74.2086875, ST_GeomFromText('POINT(40.5899222 -74.2086875)', 4326), 40.5922268, -74.2120242, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879860', 'Run Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Sea Isle City', 39.2455153, -74.6391928, ST_GeomFromText('POINT(39.2455153 -74.6391928)', 4326), 39.2562262, -74.6559926, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879862', 'Runnemede Lake', 'Lake', 'New Jersey', 'NJ', 'Camden', 'Runnemede', 39.8455529, -75.0842323, ST_GeomFromText('POINT(39.8455529 -75.0842323)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('879864', 'Rush Island', 'Island', 'New Jersey', 'NJ', 'Hunterdon', 'Lumberville', 40.4653815, -75.0660042, ST_GeomFromText('POINT(40.4653815 -75.0660042)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879866', 'Russia Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Franklin', 41.0423196, -74.5337692, ST_GeomFromText('POINT(41.0423196 -74.5337692)', 4326), 41.0716667, -74.5427778, '1979-09-08', NULL, NULL, NULL, NULL),
  ('879873', 'Lake Rutherford', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Port Jervis South', 41.2826908, -74.6693779, ST_GeomFromText('POINT(41.2826908 -74.6693779)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('879874', 'Ryker Lake', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.0518991, -74.549911, ST_GeomFromText('POINT(41.0518991 -74.549911)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('879898', 'Saddle Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Hackensack', 40.9921507, -74.0896283, ST_GeomFromText('POINT(40.9921507 -74.0896283)', 4326), 41.0231527, -74.0790301, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('879901', 'Saddle River', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Weehawken', 40.8631401, -74.1068333, ST_GeomFromText('POINT(40.8631401 -74.1068333)', 4326), 41.1072548, -74.0732279, '1979-09-08', '2020-03-20', NULL, NULL, NULL),
  ('879903', 'Lake Saginaw', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.0226976, -74.6237854, ST_GeomFromText('POINT(41.0226976 -74.6237854)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('880008', 'Mount Saint John', 'Summit', 'New Jersey', 'NJ', 'Somerset', 'Gladstone', 40.7331113, -74.655714, ST_GeomFromText('POINT(40.7331113 -74.655714)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('880237', 'Salem River', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Delaware City', 39.5728477, -75.5118227, ST_GeomFromText('POINT(39.5728477 -75.5118227)', 4326), 39.5998366, -75.2290743, '1979-09-08', '2016-09-23', 'Official', 'Board Decision', '1940-01-01'),
  ('880241', 'Salt Island', 'Island', 'New Jersey', 'NJ', 'Atlantic', 'Brigantine Inlet', 39.4817842, -74.3440341, ST_GeomFromText('POINT(39.4817842 -74.3440341)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('880243', 'San Jacinto Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0267862, -74.1384297, ST_GeomFromText('POINT(41.0267862 -74.1384297)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('880244', 'Sand Bar Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.1109484, -74.0956945, ST_GeomFromText('POINT(40.1109484 -74.0956945)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880250', 'Sand Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Beach Haven', 39.6195632, -74.2081949, ST_GeomFromText('POINT(39.6195632 -74.2081949)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880251', 'Sand Marsh', 'Swamp', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0365022, -74.7740538, ST_GeomFromText('POINT(39.0365022 -74.7740538)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('880252', 'Sand Marsh Cove', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0370577, -74.7759984, ST_GeomFromText('POINT(39.0370577 -74.7759984)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('880253', 'Sand Pond', 'Lake', 'New Jersey', 'NJ', 'Warren', 'Flatbrookville', 41.061996, -74.9472064, ST_GeomFromText('POINT(41.061996 -74.9472064)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('880255', 'Sands Point Harbor', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'Forked River', 39.8070638, -74.1704164, ST_GeomFromText('POINT(39.8070638 -74.1704164)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880258', 'Sandy Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.7078976, -74.1498593, ST_GeomFromText('POINT(39.7078976 -74.1498593)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880259', 'Sandy Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0515054, -74.0773598, ST_GeomFromText('POINT(40.0515054 -74.0773598)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880260', 'Sandy Point', 'Cape', 'New Jersey', 'NJ', 'Middlesex', 'Perth Amboy', 40.5012167, -74.2837574, ST_GeomFromText('POINT(40.5012167 -74.2837574)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('880261', 'Sandy Ridge', 'Ridge', 'New Jersey', 'NJ', 'Burlington', 'Chatsworth', 39.7679852, -74.6074996, ST_GeomFromText('POINT(39.7679852 -74.6074996)', 4326), NULL, NULL, '1979-09-08', '2017-01-28', NULL, NULL, NULL),
  ('880266', 'Sapp Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5937294, -74.3159773, ST_GeomFromText('POINT(39.5937294 -74.3159773)', 4326), 39.5869444, -74.3386111, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880267', 'Sarah Run', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Shiloh', 39.490546, -75.342586, ST_GeomFromText('POINT(39.490546 -75.342586)', 4326), 39.5034477, -75.3004684, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880269', 'Sassafras Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Cape May', 38.9498347, -74.9546189, ST_GeomFromText('POINT(38.9498347 -74.9546189)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880270', 'Savages Run', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Heislerville', 39.233105, -74.8851809, ST_GeomFromText('POINT(39.233105 -74.8851809)', 4326), 39.268448, -74.8460015, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1960-01-01'),
  ('880271', 'Sawmill Brook', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'New Brunswick', 40.4593155, -74.430517, ST_GeomFromText('POINT(40.4593155 -74.430517)', 4326), 40.4430556, -74.3994444, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880272', 'Sawmill Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.1030643, -74.0977138, ST_GeomFromText('POINT(40.1030643 -74.0977138)', 4326), 40.1245591, -74.1406963, '1979-09-08', '2016-10-19', NULL, NULL, NULL),
  ('880273', 'Sawmill Creek', 'Stream', 'New Jersey', 'NJ', 'Hudson', 'Weehawken', 40.7624548, -74.0912604, ST_GeomFromText('POINT(40.7624548 -74.0912604)', 4326), 40.7733333, -74.1166667, '1979-09-08', '2013-06-05', NULL, NULL, NULL),
  ('880274', 'Sawmill Pond', 'Lake', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.1032865, -74.1085991, ST_GeomFromText('POINT(40.1032865 -74.1085991)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('880275', 'Sawmill Pond', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Pompton Plains', 40.9726093, -74.3331495, ST_GeomFromText('POINT(40.9726093 -74.3331495)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('880276', 'Sawmill Pond', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Port Jervis South', 41.2949689, -74.6874123, ST_GeomFromText('POINT(41.2949689 -74.6874123)', 4326), NULL, NULL, '1979-09-08', '2019-07-10', NULL, NULL, NULL),
  ('880277', 'Sawmill Pond Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Wawayanda', 41.1720471, -74.3896481, ST_GeomFromText('POINT(41.1720471 -74.3896481)', 4326), 41.1456344, -74.4139409, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880279', 'Saxton Lake', 'Lake', 'New Jersey', 'NJ', 'Warren', 'Tranquility', 40.8988112, -74.78714, ST_GeomFromText('POINT(40.8988112 -74.78714)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('880281', 'Saylors Pond', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Columbus', 40.0289586, -74.6454746, ST_GeomFromText('POINT(40.0289586 -74.6454746)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('880282', 'Sayres Neck', 'Cape', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.3212255, -75.2557458, ST_GeomFromText('POINT(39.3212255 -75.2557458)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1897-01-01'),
  ('880283', 'Sayres Point', 'Cape', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.2984474, -75.2760247, ST_GeomFromText('POINT(39.2984474 -75.2760247)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880287', 'Schaffers Ponds', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.0557288, -74.4671779, ST_GeomFromText('POINT(41.0557288 -74.4671779)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('880289', 'Schellenger Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Cape May', 38.9479868, -74.9056113, ST_GeomFromText('POINT(38.9479868 -74.9056113)', 4326), 38.9493135, -74.9120808, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1944-01-01'),
  ('880290', 'Schlegel Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Hackensack', 40.987205, -74.0589212, ST_GeomFromText('POINT(40.987205 -74.0589212)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('880291', 'Schooner Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Marmora', 39.2878931, -74.6551593, ST_GeomFromText('POINT(39.2878931 -74.6551593)', 4326), 39.2801028, -74.6534903, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('880419', 'Schooleys Mountain', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Hackettstown', 40.8290954, -74.7948487, ST_GeomFromText('POINT(40.8290954 -74.7948487)', 4326), NULL, NULL, '1979-09-08', '2022-08-13', NULL, NULL, NULL),
  ('880420', 'Schoolhouse Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Lakewood', 40.0843821, -74.1616255, ST_GeomFromText('POINT(40.0843821 -74.1616255)', 4326), 40.0958333, -74.1894444, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880431', 'Scotland Run', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Newfield', 39.5563224, -75.0666833, ST_GeomFromText('POINT(39.5563224 -75.0666833)', 4326), 39.7196675, -75.0374982, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880436', 'Scotts Mountain', 'Summit', 'New Jersey', 'NJ', 'Warren', 'Belvidere', 40.7738285, -75.0673285, ST_GeomFromText('POINT(40.7738285 -75.0673285)', 4326), NULL, NULL, '1979-09-08', '2021-11-27', NULL, NULL, NULL),
  ('880438', 'Scraggy Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Sea Isle City', 39.149863, -74.7068998, ST_GeomFromText('POINT(39.149863 -74.7068998)', 4326), 39.1505556, -74.6991667, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880441', 'Scull Bay', 'Bay', 'New Jersey', 'NJ', 'Atlantic', 'Ocean City', 39.3392828, -74.5526547, ST_GeomFromText('POINT(39.3392828 -74.5526547)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880456', 'Seaweed Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0128952, -74.0868042, ST_GeomFromText('POINT(40.0128952 -74.0868042)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880459', 'Second Branch', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Egg Harbor City', 39.6085564, -74.6481621, ST_GeomFromText('POINT(39.6085564 -74.6481621)', 4326), 39.5863889, -74.6808333, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880461', 'Second Neshanic River', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'Hopewell', 40.4782698, -74.8537052, ST_GeomFromText('POINT(40.4782698 -74.8537052)', 4326), 40.4918258, -74.9181104, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880462', 'Second River', 'Stream', 'New Jersey', 'NJ', 'Essex', 'Orange', 40.7797168, -74.1487992, ST_GeomFromText('POINT(40.7797168 -74.1487992)', 4326), 40.8101013, -74.2107904, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('880464', 'Second Watchung Mountain', 'Ridge', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.9684517, -74.2041829, ST_GeomFromText('POINT(40.9684517 -74.2041829)', 4326), NULL, NULL, '1979-09-08', '2018-08-01', NULL, NULL, NULL),
  ('880465', 'Sedge Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Wildwood', 38.9879328, -74.8413455, ST_GeomFromText('POINT(38.9879328 -74.8413455)', 4326), 38.9953273, -74.849824, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1944-01-01'),
  ('880466', 'Sedge Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3112471, -74.6951678, ST_GeomFromText('POINT(39.3112471 -74.6951678)', 4326), 39.3029268, -74.7045314, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880467', 'Sedge Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0440023, -74.7729426, ST_GeomFromText('POINT(39.0440023 -74.7729426)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880468', 'Sedge Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Sea Isle City', 39.1859478, -74.7007168, ST_GeomFromText('POINT(39.1859478 -74.7007168)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880469', 'Sedge Islands', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Barnegat Light', 39.783731, -74.1123582, ST_GeomFromText('POINT(39.783731 -74.1123582)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880471', 'Seeleys Pond', 'Reservoir', 'New Jersey', 'NJ', 'Union', 'Chatham', 40.6682529, -74.4024948, ST_GeomFromText('POINT(40.6682529 -74.4024948)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('880472', 'Seidler Beach', 'Beach', 'New Jersey', 'NJ', 'Middlesex', 'Keyport', 40.456218, -74.2351448, ST_GeomFromText('POINT(40.456218 -74.2351448)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880473', 'Seneca Lake', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Newton East', 41.0012272, -74.646761, ST_GeomFromText('POINT(41.0012272 -74.646761)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('880474', 'Senior Lakes', 'Lake', 'New Jersey', 'NJ', 'Gloucester', 'Pitman East', 39.7243033, -75.0987976, ST_GeomFromText('POINT(39.7243033 -75.0987976)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('880477', 'Settin Pond', 'Lake', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.7201282, -74.1910453, ST_GeomFromText('POINT(39.7201282 -74.1910453)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('880478', 'Seven Islands', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5187288, -74.345423, ST_GeomFromText('POINT(39.5187288 -74.345423)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880479', 'Seven Mile Beach', 'Beach', 'New Jersey', 'NJ', 'Cape May', 'Avalon', 39.0728915, -74.7393298, ST_GeomFromText('POINT(39.0728915 -74.7393298)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('880484', 'Seward Hill', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Chester', 40.7870362, -74.6762705, ST_GeomFromText('POINT(40.7870362 -74.6762705)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('880487', 'Sewell Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Cape May', 38.9440016, -74.8873933, ST_GeomFromText('POINT(38.9440016 -74.8873933)', 4326), NULL, NULL, '1979-09-08', '2013-12-04', NULL, NULL, NULL),
  ('880488', 'Shabakunk Creek', 'Stream', 'New Jersey', 'NJ', 'Mercer', 'Princeton', 40.2506264, -74.7197342, ST_GeomFromText('POINT(40.2506264 -74.7197342)', 4326), 40.3032744, -74.7543669, '1979-09-08', '2014-12-03', NULL, NULL, NULL),
  ('880491', 'Shad Island', 'Island', 'New Jersey', 'NJ', 'Atlantic', 'Oceanville', 39.461784, -74.3895917, ST_GeomFromText('POINT(39.461784 -74.3895917)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880492', 'Shadow Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0305654, -74.1924697, ST_GeomFromText('POINT(41.0305654 -74.1924697)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('880493', 'Shady Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0488718, -74.3679506, ST_GeomFromText('POINT(41.0488718 -74.3679506)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('880497', 'Shallow Brook', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'Hightstown', 40.3475335, -74.5829952, ST_GeomFromText('POINT(40.3475335 -74.5829952)', 4326), 40.3464967, -74.4843192, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('880499', 'Shane Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Chatsworth', 39.7503964, -74.5890429, ST_GeomFromText('POINT(39.7503964 -74.5890429)', 4326), 39.7877778, -74.5772222, '1979-09-08', '2011-07-21', 'Official', 'Board Decision', '1897-10-12'),
  ('880500', 'Shannoc Brook', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Cassville', 40.0567073, -74.3832779, ST_GeomFromText('POINT(40.0567073 -74.3832779)', 4326), 40.0955556, -74.4463889, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880501', 'Shark Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0753914, -74.7651645, ST_GeomFromText('POINT(39.0753914 -74.7651645)', 4326), 39.0813889, -74.7575, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('880502', 'Shark River', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.1876136, -74.0101368, ST_GeomFromText('POINT(40.1876136 -74.0101368)', 4326), 40.2463518, -74.1290903, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880505', 'Shark River Island', 'Island', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.184558, -74.0287485, ST_GeomFromText('POINT(40.184558 -74.0287485)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880510', 'Fenton Island', 'Island', 'New Jersey', 'NJ', 'Burlington', 'Beverly', 40.0292783, -74.9273897, ST_GeomFromText('POINT(40.0292783 -74.9273897)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1983-01-01'),
  ('880511', 'Sharps Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Five Points', 39.4377591, -74.9073279, ST_GeomFromText('POINT(39.4377591 -74.9073279)', 4326), 39.4629658, -74.9151827, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880512', 'Sharps Branch', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Clementon', 39.7550674, -74.9550363, ST_GeomFromText('POINT(39.7550674 -74.9550363)', 4326), 39.7782151, -74.9862827, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880513', 'Sharps Branch', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Tuckahoe', 39.3617761, -74.8598313, ST_GeomFromText('POINT(39.3617761 -74.8598313)', 4326), 39.3873377, -74.8673911, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880515', 'Sharps Point', 'Cape', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9345429, -74.6476611, ST_GeomFromText('POINT(40.9345429 -74.6476611)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('880516', 'Sharps Run', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Mount Holly', 39.9071274, -74.8129772, ST_GeomFromText('POINT(39.9071274 -74.8129772)', 4326), 39.9180556, -74.8733333, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880518', 'Shaw Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Bridgeton', 39.4578705, -75.2455974, ST_GeomFromText('POINT(39.4578705 -75.2455974)', 4326), 39.4640209, -75.2929169, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880520', 'Shaw Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Wildwood', 38.9823351, -74.842113, ST_GeomFromText('POINT(38.9823351 -74.842113)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('880521', 'Lake Shawanni', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Culvers Gap', 41.1692879, -74.8444944, ST_GeomFromText('POINT(41.1692879 -74.8444944)', 4326), NULL, NULL, '1979-09-08', '2023-04-05', 'Official', 'Board Decision', '1954-01-01'),
  ('880524', 'Lake Shawnee', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.975475, -74.5923504, ST_GeomFromText('POINT(40.975475 -74.5923504)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('880525', 'Shaws Mill Pond', 'Reservoir', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.3152163, -75.1545756, ST_GeomFromText('POINT(39.3152163 -75.1545756)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('880528', 'Sheep Hill', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.919551, -74.4061133, ST_GeomFromText('POINT(40.919551 -74.4061133)', 4326), NULL, NULL, '1979-09-08', '2021-11-27', NULL, NULL, NULL),
  ('880529', 'Sheep Pen Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.3436739, -75.2811983, ST_GeomFromText('POINT(39.3436739 -75.2811983)', 4326), 39.3419481, -75.2927238, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880530', 'Sheepkill Pond', 'Lake', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.2648366, -75.1535182, ST_GeomFromText('POINT(39.2648366 -75.1535182)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880532', 'Sheffield Pond', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Pompton Plains', 40.9684312, -74.2709811, ST_GeomFromText('POINT(40.9684312 -74.2709811)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('880533', 'Shell Pile', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Wildwood', 38.9692795, -74.8629474, ST_GeomFromText('POINT(38.9692795 -74.8629474)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('880535', 'Shell Pond', 'Lake', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.7160853, -74.1740332, ST_GeomFromText('POINT(39.7160853 -74.1740332)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('880537', 'Shellbed Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.063081, -74.8192964, ST_GeomFromText('POINT(39.063081 -74.8192964)', 4326), 39.0670264, -74.8236188, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1944-01-01'),
  ('880539', 'Shelter Cove', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'Seaside Park', 39.9692847, -74.1109714, ST_GeomFromText('POINT(39.9692847 -74.1109714)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880540', 'Shelter Haven', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0537246, -74.7629421, ST_GeomFromText('POINT(39.0537246 -74.7629421)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('880541', 'Shelter Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5831739, -74.2548636, ST_GeomFromText('POINT(39.5831739 -74.2548636)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1925-01-01'),
  ('880542', 'Shelter Island', 'Island', 'New Jersey', 'NJ', 'Atlantic', 'Ocean City', 39.3509497, -74.4998745, ST_GeomFromText('POINT(39.3509497 -74.4998745)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880543', 'Shelter Island Bay', 'Bay', 'New Jersey', 'NJ', 'Atlantic', 'Ocean City', 39.3517831, -74.5073748, ST_GeomFromText('POINT(39.3517831 -74.5073748)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880546', 'Sheppard Pond', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Sloatsburg', 41.1372335, -74.2267267, ST_GeomFromText('POINT(41.1372335 -74.2267267)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('880547', 'Sheppards Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Dividing Creek', 39.2745589, -75.0251772, ST_GeomFromText('POINT(39.2745589 -75.0251772)', 4326), 39.2855556, -75.0369444, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('880549', 'Sheppards Millpond', 'Reservoir', 'New Jersey', 'NJ', 'Cumberland', 'Shiloh', 39.4153144, -75.3177764, ST_GeomFromText('POINT(39.4153144 -75.3177764)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('880557', 'Shimers Brook', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Milford', 41.3120385, -74.7907213, ST_GeomFromText('POINT(41.3120385 -74.7907213)', 4326), 41.3031353, -74.6917319, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880558', 'Shinns Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.8995884, -74.5612049, ST_GeomFromText('POINT(39.8995884 -74.5612049)', 4326), 39.8802778, -74.55, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1962-01-01'),
  ('880562', 'Shipetaukin Creek', 'Stream', 'New Jersey', 'NJ', 'Mercer', 'Princeton', 40.2753839, -74.7025922, ST_GeomFromText('POINT(40.2753839 -74.7025922)', 4326), 40.316774, -74.7487723, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880565', 'Shoal Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Chatsworth', 39.7636718, -74.5365071, ST_GeomFromText('POINT(39.7636718 -74.5365071)', 4326), 39.8182503, -74.4739661, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880569', 'Shongum Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Mendham', 40.8469774, -74.5374029, ST_GeomFromText('POINT(40.8469774 -74.5374029)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('880572', 'Shooting Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0145575, -74.8123892, ST_GeomFromText('POINT(39.0145575 -74.8123892)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('880573', 'Shooting Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Ocean City', 39.2753932, -74.6065459, ST_GeomFromText('POINT(39.2753932 -74.6065459)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880576', 'Shore Beach', 'Beach', 'New Jersey', 'NJ', 'Ocean', 'Forked River', 39.7565088, -74.1906944, ST_GeomFromText('POINT(39.7565088 -74.1906944)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880584', 'Shreve Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Woodmansie', 39.7977261, -74.4834879, ST_GeomFromText('POINT(39.7977261 -74.4834879)', 4326), 39.8025358, -74.4345349, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('880586', 'Shuster Pond', 'Lake', 'New Jersey', 'NJ', 'Warren', 'Flatbrookville', 41.0224612, -74.9005817, ST_GeomFromText('POINT(41.0224612 -74.9005817)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('880587', 'Shyhawks Island', 'Island', 'New Jersey', 'NJ', 'Hunterdon', 'Lumberville', 40.4801035, -75.0618375, ST_GeomFromText('POINT(40.4801035 -75.0618375)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880590', 'Side o'' th'' Bay', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0615023, -74.8009996, ST_GeomFromText('POINT(39.0615023 -74.8009996)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('880592', 'Signey Run', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Runnemede', 39.8295452, -75.0388741, ST_GeomFromText('POINT(39.8295452 -75.0388741)', 4326), 39.8358333, -75.0183333, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880596', 'Silver Bay', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'Toms River', 39.9955, -74.128, ST_GeomFromText('POINT(39.9955 -74.128)', 4326), NULL, NULL, '1979-09-08', '2014-06-11', NULL, NULL, NULL),
  ('880598', 'Silver Hill', 'Summit', 'New Jersey', 'NJ', 'Warren', 'Bloomsbury', 40.6437031, -75.1221165, ST_GeomFromText('POINT(40.6437031 -75.1221165)', 4326), NULL, NULL, '1979-09-08', '2021-11-27', NULL, NULL, NULL),
  ('880599', 'Silver Lake', 'Lake', 'New Jersey', 'NJ', 'Cumberland', 'Millville', 39.3894843, -75.0447469, ST_GeomFromText('POINT(39.3894843 -75.0447469)', 4326), NULL, NULL, '1979-09-08', '2020-04-10', NULL, NULL, NULL),
  ('880600', 'Silver Lake', 'Lake', 'New Jersey', 'NJ', 'Camden', 'Clementon', 39.8064026, -74.9804171, ST_GeomFromText('POINT(39.8064026 -74.9804171)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('880601', 'Silver Lake', 'Lake', 'New Jersey', 'NJ', 'Camden', 'Clementon', 39.8391139, -74.9620995, ST_GeomFromText('POINT(39.8391139 -74.9620995)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('880603', 'Silver Lake', 'Lake', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.1152453, -74.1853761, ST_GeomFromText('POINT(41.1152453 -74.1853761)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('880604', 'Silver Lake', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Pitman East', 39.6565668, -75.1126178, ST_GeomFromText('POINT(39.6565668 -75.1126178)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('880605', 'Silver Lake', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.1815235, -74.0166517, ST_GeomFromText('POINT(40.1815235 -74.0166517)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('880606', 'Silver Lake', 'Reservoir', 'New Jersey', 'NJ', 'Middlesex', 'New Brunswick', 40.4947403, -74.3953166, ST_GeomFromText('POINT(40.4947403 -74.3953166)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('880607', 'Silver Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Park Ridge', 41.0383198, -74.0368147, ST_GeomFromText('POINT(41.0383198 -74.0368147)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('880608', 'Silver Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.1216532, -74.532429, ST_GeomFromText('POINT(41.1216532 -74.532429)', 4326), NULL, NULL, '1979-09-08', '2023-04-05', NULL, NULL, NULL),
  ('880609', 'Silver Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Morristown', 40.7514159, -74.4693082, ST_GeomFromText('POINT(40.7514159 -74.4693082)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('880612', 'Silver Lake Meadow', 'Flat', 'New Jersey', 'NJ', 'Salem', 'Canton', 39.4840015, -75.458254, ST_GeomFromText('POINT(39.4840015 -75.458254)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880617', 'Simonson Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Monmouth Junction', 40.4393412, -74.6175796, ST_GeomFromText('POINT(40.4393412 -74.6175796)', 4326), 40.4161111, -74.5913889, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880621', 'Sister Islands', 'Island', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9645426, -74.6515502, ST_GeomFromText('POINT(40.9645426 -74.6515502)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880625', 'Sixmile Run', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Monmouth Junction', 40.4728977, -74.572084, ST_GeomFromText('POINT(40.4728977 -74.572084)', 4326), 40.4592318, -74.48891, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('880626', 'Skeeter Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.1101136, -74.8587803, ST_GeomFromText('POINT(39.1101136 -74.8587803)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880627', 'Skeeter Island Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.1142623, -74.8653245, ST_GeomFromText('POINT(39.1142623 -74.8653245)', 4326), 39.0866667, -74.8597222, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880630', 'Skit Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Indian Mills', 39.7636532, -74.679383, ST_GeomFromText('POINT(39.7636532 -74.679383)', 4326), 39.8070618, -74.611544, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880631', 'Skunk Sound', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Cape May', 38.9587238, -74.8879488, ST_GeomFromText('POINT(38.9587238 -74.8879488)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('880633', 'Skyline Lakes', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0714708, -74.2732624, ST_GeomFromText('POINT(41.0714708 -74.2732624)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('880634', 'Slab Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Port Elizabeth', 39.3200394, -74.9196768, ST_GeomFromText('POINT(39.3200394 -74.9196768)', 4326), 39.3070238, -74.8942763, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880635', 'Slab Bridge Branch', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Pitman East', 39.7475694, -75.0240093, ST_GeomFromText('POINT(39.7475694 -75.0240093)', 4326), 39.7521444, -75.0131518, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880636', 'Slab Causeway Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Chatsworth', 39.8643431, -74.6006441, ST_GeomFromText('POINT(39.8643431 -74.6006441)', 4326), 39.8677317, -74.5434004, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880638', 'Slabtown Lake', 'Reservoir', 'New Jersey', 'NJ', 'Salem', 'Alloway', 39.6165899, -75.2636189, ST_GeomFromText('POINT(39.6165899 -75.2636189)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('880643', 'Sleeper Branch', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Atsion', 39.6460271, -74.6590197, ST_GeomFromText('POINT(39.6460271 -74.6590197)', 4326), 39.7446946, -74.8372525, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1897-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('880644', 'Sloop Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Toms River', 39.9031275, -74.1312146, ST_GeomFromText('POINT(39.9031275 -74.1312146)', 4326), 39.9085635, -74.1386953, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880645', 'Sloop Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0312281, -74.0679147, ST_GeomFromText('POINT(40.0312281 -74.0679147)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880646', 'Sloop Sedge', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.7273421, -74.1531928, ST_GeomFromText('POINT(39.7273421 -74.1531928)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880649', 'Slope Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Marlboro', 40.2982872, -74.1564354, ST_GeomFromText('POINT(40.2982872 -74.1564354)', 4326), 40.2818062, -74.1685013, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880650', 'Slough Brook', 'Stream', 'New Jersey', 'NJ', 'Essex', 'Caldwell', 40.7562117, -74.3576505, ST_GeomFromText('POINT(40.7562117 -74.3576505)', 4326), 40.7863889, -74.3227778, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880653', 'Sluice Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Woodbine', 39.1773974, -74.8456344, ST_GeomFromText('POINT(39.1773974 -74.8456344)', 4326), 39.1347222, -74.7955556, '1979-09-08', '2014-05-13', NULL, NULL, NULL),
  ('880658', 'Smith Creek', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'Perth Amboy', 40.549328, -74.254725, ST_GeomFromText('POINT(40.549328 -74.254725)', 4326), 40.5618243, -74.2475675, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880661', 'Smith Pond', 'Lake', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0133191, -74.2489355, ST_GeomFromText('POINT(41.0133191 -74.2489355)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('880664', 'Smiths Hill', 'Summit', 'New Jersey', 'NJ', 'Sussex', 'Newton East', 41.0827503, -74.7468299, ST_GeomFromText('POINT(41.0827503 -74.7468299)', 4326), NULL, NULL, '1979-09-08', '2018-01-10', NULL, NULL, NULL),
  ('880668', 'Smithville Lake', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Mount Holly', 39.9832588, -74.7517705, ST_GeomFromText('POINT(39.9832588 -74.7517705)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('880671', 'Snake Hill', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.8909241, -74.503805, ST_GeomFromText('POINT(40.8909241 -74.503805)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('880673', 'Snug Harbor', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0587246, -74.7582196, ST_GeomFromText('POINT(39.0587246 -74.7582196)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('880680', 'Soldiers Island', 'Island', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.9690037, -74.5762662, ST_GeomFromText('POINT(39.9690037 -74.5762662)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880681', 'Lake Solitude', 'Reservoir', 'New Jersey', 'NJ', 'Hunterdon', 'High Bridge', 40.6744626, -74.8853286, ST_GeomFromText('POINT(40.6744626 -74.8853286)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('880683', 'Solters Creek', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Canton', 39.4801044, -75.4981649, ST_GeomFromText('POINT(39.4801044 -75.4981649)', 4326), 39.4725849, -75.4798239, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880688', 'Somers Bay', 'Bay', 'New Jersey', 'NJ', 'Atlantic', 'Brigantine Inlet', 39.427895, -74.3737577, ST_GeomFromText('POINT(39.427895 -74.3737577)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880689', 'Somers Cove', 'Bay', 'New Jersey', 'NJ', 'Atlantic', 'Oceanville', 39.4553951, -74.4437608, ST_GeomFromText('POINT(39.4553951 -74.4437608)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880698', 'Lake Sonoma', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0993717, -74.3375834, ST_GeomFromText('POINT(41.0993717 -74.3375834)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('880701', 'Sourland Mountain', 'Summit', 'New Jersey', 'NJ', 'Somerset', 'Rocky Hill', 40.4667631, -74.7259926, ST_GeomFromText('POINT(40.4667631 -74.7259926)', 4326), NULL, NULL, '1979-09-08', '2022-08-13', NULL, NULL, NULL),
  ('880704', 'South Arm', 'Bay', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.1837247, -74.0276373, ST_GeomFromText('POINT(40.1837247 -74.0276373)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('880705', 'South Basin', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0617802, -74.7554417, ST_GeomFromText('POINT(39.0617802 -74.7554417)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('880708', 'South Branch Absecon Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', NULL, 39.4407731, -74.5619667, ST_GeomFromText('POINT(39.4407731 -74.5619667)', 4326), 39.4541667, -74.6211111, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880709', 'South Branch Big Timber Creek', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Runnemede', 39.8368819, -75.0850081, ST_GeomFromText('POINT(39.8368819 -75.0850081)', 4326), 39.7299657, -75.0240697, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880710', 'South Branch Forked River', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Forked River', 39.8257674, -74.1774666, ST_GeomFromText('POINT(39.8257674 -74.1774666)', 4326), 39.818994, -74.2596281, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880711', 'South Branch Metedeconk River', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Lakewood', 40.0787076, -74.1515672, ST_GeomFromText('POINT(40.0787076 -74.1515672)', 4326), 40.1917787, -74.3765378, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1954-01-01'),
  ('880712', 'South Branch Mill Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Beverly', 40.0350736, -74.89021, ST_GeomFromText('POINT(40.0350736 -74.89021)', 4326), 40.0127059, -74.8642999, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880713', 'South Branch Mount Misery Brook', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.9190053, -74.5154305, ST_GeomFromText('POINT(39.9190053 -74.5154305)', 4326), 39.8572853, -74.3998003, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880714', 'South Branch Pennsauken Creek', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Camden', 39.979792, -75.0101584, ST_GeomFromText('POINT(39.979792 -75.0101584)', 4326), 39.8877102, -74.9330664, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1954-01-01'),
  ('880715', 'South Branch Raccoon Creek', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Woodstown', 39.7386104, -75.2551943, ST_GeomFromText('POINT(39.7386104 -75.2551943)', 4326), 39.6813182, -75.2114046, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880716', 'South Branch Rahway River', 'Stream', 'New Jersey', 'NJ', 'Union', 'Perth Amboy', 40.6006593, -74.2729243, ST_GeomFromText('POINT(40.6006593 -74.2729243)', 4326), 40.5487573, -74.3382221, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('880717', 'South Branch Rancocas Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Mount Holly', 39.9961626, -74.8603141, ST_GeomFromText('POINT(39.9961626 -74.8603141)', 4326), 39.9156202, -74.6435487, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880718', 'South Branch Raritan River', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Raritan', 40.5553034, -74.6876174, ST_GeomFromText('POINT(40.5553034 -74.6876174)', 4326), 40.8633876, -74.7519743, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880719', 'South Branch Rockaway Creek', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'Califon', 40.6252844, -74.7632718, ST_GeomFromText('POINT(40.6252844 -74.7632718)', 4326), 40.6385196, -74.8539466, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880720', 'South Branch Burrs Mill Brook', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Chatsworth', 39.8645984, -74.6009767, ST_GeomFromText('POINT(39.8645984 -74.6009767)', 4326), 39.8476774, -74.551785, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880721', 'South Branch Stouts Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Forked River', 39.8462956, -74.1490781, ST_GeomFromText('POINT(39.8462956 -74.1490781)', 4326), 39.8486617, -74.1784859, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880723', 'South Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.1189342, -74.7655007, ST_GeomFromText('POINT(39.1189342 -74.7655007)', 4326), 39.1264409, -74.774749, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880745', 'South Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.7140087, -74.1598598, ST_GeomFromText('POINT(39.7140087 -74.1598598)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880746', 'South Pond', 'Lake', 'New Jersey', 'NJ', 'Essex', 'Caldwell', 40.7737115, -74.3254271, ST_GeomFromText('POINT(40.7737115 -74.3254271)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880749', 'South River', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Mays Landing', 39.3862269, -74.7251625, ST_GeomFromText('POINT(39.3862269 -74.7251625)', 4326), 39.4962272, -74.879058, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880750', 'South River', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'New Brunswick', 40.4770498, -74.3762606, ST_GeomFromText('POINT(40.4770498 -74.3762606)', 4326), 40.4066932, -74.368692, '1979-09-08', '2014-10-10', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('880751', 'South Ruckels Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Lakehurst', 40.0080589, -74.3699956, ST_GeomFromText('POINT(40.0080589 -74.3699956)', 4326), 39.9967829, -74.4104274, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880752', 'South Run', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'New Egypt', 40.0343467, -74.5351902, ST_GeomFromText('POINT(40.0343467 -74.5351902)', 4326), 40.0309334, -74.5895022, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880766', 'Southeast Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.075561, -74.7730216, ST_GeomFromText('POINT(39.075561 -74.7730216)', 4326), 39.0779524, -74.7775707, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1944-01-01'),
  ('880767', 'Southeast Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0734469, -74.7704424, ST_GeomFromText('POINT(39.0734469 -74.7704424)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('880769', 'Southwest Branch South Branch Rancocas Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Mount Holly', 39.9487006, -74.7964883, ST_GeomFromText('POINT(39.9487006 -74.7964883)', 4326), 39.9029053, -74.9255562, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880770', 'Southwest Cove', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Cape May', 38.9662238, -74.8765593, ST_GeomFromText('POINT(38.9662238 -74.8765593)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('880775', 'Sow and Pigs Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.2548365, -75.1985209, ST_GeomFromText('POINT(39.2548365 -75.1985209)', 4326), 39.2711111, -75.1919444, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880776', 'Spa Spring Creek', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'Perth Amboy', 40.5442184, -74.2677163, ST_GeomFromText('POINT(40.5442184 -74.2677163)', 4326), 40.5427142, -74.2872347, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880779', 'Sparta Glen', 'Valley', 'New Jersey', 'NJ', 'Sussex', 'Newton East', 41.0420782, -74.6261344, ST_GeomFromText('POINT(41.0420782 -74.6261344)', 4326), 41.0382324, -74.6089779, '1979-09-08', '2018-08-01', NULL, NULL, NULL),
  ('880781', 'Sparta Mountains', 'Range', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.04308, -74.6163333, ST_GeomFromText('POINT(41.04308 -74.6163333)', 4326), NULL, NULL, '1979-09-08', '2022-08-13', 'Official', 'Board Decision', '1904-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('880783', 'Sparta Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.0459699, -74.5625764, ST_GeomFromText('POINT(41.0459699 -74.5625764)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('880785', 'Speedwell Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Morristown', 40.813833, -74.4855262, ST_GeomFromText('POINT(40.813833 -74.4855262)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('880788', 'Spicer Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Cape May', 38.9509947, -74.9117629, ST_GeomFromText('POINT(38.9509947 -74.9117629)', 4326), 38.9526832, -74.9131372, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880789', 'Splitrock Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.9657854, -74.4548386, ST_GeomFromText('POINT(40.9657854 -74.4548386)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('880793', 'Spring Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Bernardsville', 40.6561434, -74.5929408, ST_GeomFromText('POINT(40.6561434 -74.5929408)', 4326), 40.6466667, -74.6022222, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880794', 'Spring Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.8827101, -74.5761716, ST_GeomFromText('POINT(40.8827101 -74.5761716)', 4326), 40.8854274, -74.5987961, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880795', 'Spring Garden Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Morristown', 40.7627789, -74.3763873, ST_GeomFromText('POINT(40.7627789 -74.3763873)', 4326), 40.755665, -74.4106445, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880797', 'Spring Hill', 'Summit', 'New Jersey', 'NJ', 'Burlington', 'Woodmansie', 39.7733122, -74.4554484, ST_GeomFromText('POINT(39.7733122 -74.4554484)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('880798', 'Spring Lake', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Newton West', 41.0757486, -74.8075804, ST_GeomFromText('POINT(41.0757486 -74.8075804)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('880800', 'Spring Lake', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Pitman East', 39.7183094, -75.0886825, ST_GeomFromText('POINT(39.7183094 -75.0886825)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('880801', 'Spring Lake', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.1488028, -74.0287389, ST_GeomFromText('POINT(40.1488028 -74.0287389)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('880802', 'Spring Lake', 'Reservoir', 'New Jersey', 'NJ', 'Mercer', 'Trenton East', 40.19166, -74.7336723, ST_GeomFromText('POINT(40.19166 -74.7336723)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('880803', 'Spring Lake', 'Reservoir', 'New Jersey', 'NJ', 'Middlesex', 'Plainfield', 40.5839392, -74.412446, ST_GeomFromText('POINT(40.5839392 -74.412446)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('880804', 'Spring Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Morristown', 40.7846157, -74.4803325, ST_GeomFromText('POINT(40.7846157 -74.4803325)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('880805', 'Spring Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.014847, -74.173293, ST_GeomFromText('POINT(41.014847 -74.173293)', 4326), NULL, NULL, '1979-09-08', '2024-10-29', NULL, NULL, NULL),
  ('880809', 'Spring Pond', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Pompton Plains', 40.9956532, -74.2926487, ST_GeomFromText('POINT(40.9956532 -74.2926487)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880816', 'Springers Brook', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Atsion', 39.7294067, -74.6774036, ST_GeomFromText('POINT(39.7294067 -74.6774036)', 4326), 39.8099948, -74.7279713, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880825', 'Sprout Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Hackensack', 40.9058949, -74.0828356, ST_GeomFromText('POINT(40.9058949 -74.0828356)', 4326), 40.9632725, -74.0777582, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880826', 'Spruce Run', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'High Bridge', 40.6740229, -74.9172065, ST_GeomFromText('POINT(40.6740229 -74.9172065)', 4326), 40.7634543, -74.8564142, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880828', 'Spruce Run Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Hunterdon', 'High Bridge', 40.6528198, -74.9316316, ST_GeomFromText('POINT(40.6528198 -74.9316316)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('880829', 'Spruce Swamp', 'Swamp', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.1142624, -74.2182023, ST_GeomFromText('POINT(41.1142624 -74.2182023)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880831', 'Squankum Branch', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Williamstown', 39.6369598, -74.9062014, ST_GeomFromText('POINT(39.6369598 -74.9062014)', 4326), 39.6827879, -74.9860507, '1979-09-08', '2014-06-11', 'Official', 'Board Decision', '1897-01-01'),
  ('880832', 'Squankum Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1562453, -74.1422868, ST_GeomFromText('POINT(40.1562453 -74.1422868)', 4326), 40.1623376, -74.194783, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('880833', 'First Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.9585906, -74.1857359, ST_GeomFromText('POINT(40.9585906 -74.1857359)', 4326), 40.9785697, -74.1848427, '1979-09-08', '2022-09-08', 'Official', 'Secretarial Order', '2022-09-08'),
  ('880834', 'Flying Duck Lake', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Medford Lakes', 39.8443263, -74.7769733, ST_GeomFromText('POINT(39.8443263 -74.7769733)', 4326), NULL, NULL, '1979-09-08', '2023-04-05', 'Official', 'Secretarial Order', '2022-09-08'),
  ('880844', 'Stag Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0958797, -74.1722631, ST_GeomFromText('POINT(41.0958797 -74.1722631)', 4326), 41.1188889, -74.1925, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880845', 'Stag Hill', 'Summit', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.1057945, -74.1748421, ST_GeomFromText('POINT(41.1057945 -74.1748421)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('880846', 'Stag Pond', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9926564, -74.6969063, ST_GeomFromText('POINT(40.9926564 -74.6969063)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('880848', 'Standing Pond', 'Lake', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.6969472, -74.1930179, ST_GeomFromText('POINT(39.6969472 -74.1930179)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('880857', 'Star Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0245913, -74.3492238, ST_GeomFromText('POINT(41.0245913 -74.3492238)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('880862', 'Stathems Neck', 'Cape', 'New Jersey', 'NJ', 'Cumberland', 'Canton', 39.4095577, -75.3888067, ST_GeomFromText('POINT(39.4095577 -75.3888067)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880863', 'Station Rock', 'Pillar', 'New Jersey', 'NJ', 'Bergen', 'Yonkers', 40.9970421, -73.9023579, ST_GeomFromText('POINT(40.9970421 -73.9023579)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880866', 'Steelman Bay', 'Bay', 'New Jersey', 'NJ', 'Atlantic', 'Ocean City', 39.3195603, -74.5762668, ST_GeomFromText('POINT(39.3195603 -74.5762668)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880867', 'Steelman Bay', 'Bay', 'New Jersey', 'NJ', 'Atlantic', 'Brigantine Inlet', 39.4234505, -74.3637573, ST_GeomFromText('POINT(39.4234505 -74.3637573)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880872', 'Steeny Kill Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Port Jervis South', 41.3188087, -74.6760054, ST_GeomFromText('POINT(41.3188087 -74.6760054)', 4326), NULL, NULL, '1979-09-08', '2019-07-10', NULL, NULL, NULL),
  ('880873', 'Steep Run', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Dividing Creek', 39.3069532, -75.0002101, ST_GeomFromText('POINT(39.3069532 -75.0002101)', 4326), 39.3066667, -75.0408333, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880877', 'Stephen Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3717824, -74.7240512, ST_GeomFromText('POINT(39.3717824 -74.7240512)', 4326), 39.4187268, -74.8351674, '1979-09-08', '2014-06-13', NULL, NULL, NULL),
  ('880878', 'Stephen Lake', 'Reservoir', 'New Jersey', 'NJ', 'Atlantic', 'Dorothy', 39.3948602, -74.7505371, ST_GeomFromText('POINT(39.3948602 -74.7505371)', 4326), NULL, NULL, '1979-09-08', '2018-12-17', NULL, NULL, NULL),
  ('880879', 'Stephens Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.9019418, -74.5944643, ST_GeomFromText('POINT(40.9019418 -74.5944643)', 4326), 40.9191667, -74.6238889, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880880', 'Stephens Lake', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0553613, -74.2678217, ST_GeomFromText('POINT(41.0553613 -74.2678217)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('880883', 'Stephensburg Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Hackettstown', 40.7944687, -74.8712415, ST_GeomFromText('POINT(40.7944687 -74.8712415)', 4326), 40.7877714, -74.8430514, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880885', 'Sterling Hill', 'Summit', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.0824725, -74.6094115, ST_GeomFromText('POINT(41.0824725 -74.6094115)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', 'Official', 'Board Decision', '1908-01-01'),
  ('880890', 'Stevens Island', 'Summit', 'New Jersey', 'NJ', 'Warren', 'Blairstown', 40.9086567, -74.8765583, ST_GeomFromText('POINT(40.9086567 -74.8765583)', 4326), NULL, NULL, '1979-09-08', '2018-06-21', NULL, NULL, NULL),
  ('880891', 'Stewart Gap', 'Gap', 'New Jersey', 'NJ', 'Warren', 'Washington', 40.8198211, -74.9396147, ST_GeomFromText('POINT(40.8198211 -74.9396147)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880894', 'Stickle Pond', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.9910597, -74.4115713, ST_GeomFromText('POINT(40.9910597 -74.4115713)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('880895', 'Stickle Pond', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Newton West', 41.0285924, -74.752992, ST_GeomFromText('POINT(41.0285924 -74.752992)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('880896', 'Still House Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Freehold', 40.2628098, -74.3583655, ST_GeomFromText('POINT(40.2628098 -74.3583655)', 4326), 40.2542558, -74.3835837, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880897', 'Still Run', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Bridgeport', 39.8143916, -75.3019291, ST_GeomFromText('POINT(39.8143916 -75.3019291)', 4326), 39.7648903, -75.2192473, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880898', 'Still Run', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Newfield', 39.5591182, -75.0750947, ST_GeomFromText('POINT(39.5591182 -75.0750947)', 4326), 39.6998366, -75.1323993, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880900', 'Stillman Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Ocean City', 39.3535137, -74.5376873, ST_GeomFromText('POINT(39.3535137 -74.5376873)', 4326), 39.3631199, -74.5434192, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('880905', 'Stingaree Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Wildwood', 38.9806835, -74.8479921, ST_GeomFromText('POINT(38.9806835 -74.8479921)', 4326), 38.9918341, -74.8588589, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1944-01-01'),
  ('880906', 'Stingaree Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Wildwood', 38.9806684, -74.8490578, ST_GeomFromText('POINT(38.9806684 -74.8490578)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880907', 'Stipson Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Heislerville', 39.2006698, -74.9101716, ST_GeomFromText('POINT(39.2006698 -74.9101716)', 4326), NULL, NULL, '1979-09-08', '2014-11-19', NULL, NULL, NULL),
  ('880910', 'Stites Sound', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Woodbine', 39.1251139, -74.7537749, ST_GeomFromText('POINT(39.1251139 -74.7537749)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('880912', 'Lake Stockholm', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.0685924, -74.529619, ST_GeomFromText('POINT(41.0685924 -74.529619)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('880914', 'Stockton Lake', 'Lake', 'New Jersey', 'NJ', 'Monmouth', 'Point Pleasant', 40.120943, -74.0388123, ST_GeomFromText('POINT(40.120943 -74.0388123)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', 'Official', 'Board Decision', '1954-01-01'),
  ('880916', 'Lake Stockwell', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Medford Lakes', 39.8499822, -74.788569, ST_GeomFromText('POINT(39.8499822 -74.788569)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('880919', 'Stone Bridge Branch', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Runnemede', 39.7639171, -75.0431228, ST_GeomFromText('POINT(39.7639171 -75.0431228)', 4326), 39.7653191, -75.0137955, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880920', 'Stone Harbor', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0509467, -74.7659978, ST_GeomFromText('POINT(39.0509467 -74.7659978)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('880923', 'Stone Harbor Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0666974, -74.7536373, ST_GeomFromText('POINT(39.0666974 -74.7536373)', 4326), 39.0734943, -74.7546928, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1944-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('880925', 'Stone Hill', 'Summit', 'New Jersey', 'NJ', 'Monmouth', 'Marlboro', 40.3064093, -74.1764696, ST_GeomFromText('POINT(40.3064093 -74.1764696)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('880927', 'Stone House Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Wanaque', 41.0033443, -74.3344161, ST_GeomFromText('POINT(41.0033443 -74.3344161)', 4326), 40.9884123, -74.4073105, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880929', 'Stone Mountain', 'Summit', 'New Jersey', 'NJ', 'Burlington', 'Medford Lakes', 39.8238993, -74.8739876, ST_GeomFromText('POINT(39.8238993 -74.8739876)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('880931', 'Stonebank Creek', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Wilmington South', 39.6460085, -75.5382773, ST_GeomFromText('POINT(39.6460085 -75.5382773)', 4326), 39.6330556, -75.5247222, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880933', 'Stony Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Hackettstown', 40.7940341, -74.7558582, ST_GeomFromText('POINT(40.7940341 -74.7558582)', 4326), 40.8273033, -74.776876, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880934', 'Stony Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.9242211, -74.4404465, ST_GeomFromText('POINT(40.9242211 -74.4404465)', 4326), 40.9640533, -74.3862605, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880935', 'Stony Brook', 'Stream', 'New Jersey', 'NJ', 'Warren', 'Portland', 40.9390674, -75.1047492, ST_GeomFromText('POINT(40.9390674 -75.1047492)', 4326), 40.9880556, -75.0561111, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880936', 'Stony Brook', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Culvers Gap', 41.2152001, -74.7833401, ST_GeomFromText('POINT(41.2152001 -74.7833401)', 4326), 41.2021687, -74.774403, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880937', 'Stony Brook', 'Stream', 'New Jersey', 'NJ', 'Mercer', 'Princeton', 40.3343553, -74.6519977, ST_GeomFromText('POINT(40.3343553 -74.6519977)', 4326), 40.4061315, -74.8571894, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880938', 'Stony Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Plainfield', 40.6078907, -74.4481176, ST_GeomFromText('POINT(40.6078907 -74.4481176)', 4326), 40.6534353, -74.4529309, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('880939', 'Stony Brook Branch', 'Stream', 'New Jersey', 'NJ', 'Mercer', 'Pennington', 40.3518262, -74.7838497, ST_GeomFromText('POINT(40.3518262 -74.7838497)', 4326), 40.3592825, -74.8107362, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880941', 'Stony Brook Mountains', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.9722171, -74.3809205, ST_GeomFromText('POINT(40.9722171 -74.3809205)', 4326), NULL, NULL, '1979-09-08', '2021-11-27', NULL, NULL, NULL),
  ('880945', 'Stony Hill', 'Summit', 'New Jersey', 'NJ', 'Ocean', 'Lakewood', 40.0695671, -74.2007849, ST_GeomFromText('POINT(40.0695671 -74.2007849)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('880946', 'Stony Inlet', 'Bay', 'New Jersey', 'NJ', 'Salem', 'Canton', 39.4409456, -75.4863111, ST_GeomFromText('POINT(39.4409456 -75.4863111)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880947', 'Stony Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Culvers Gap', 41.2000402, -74.7744318, ST_GeomFromText('POINT(41.2000402 -74.7744318)', 4326), NULL, NULL, '1979-09-08', '2019-07-10', NULL, NULL, NULL),
  ('880949', 'Stony Point', 'Cape', 'New Jersey', 'NJ', 'Salem', 'Taylors Bridge', 39.4606678, -75.5163124, ST_GeomFromText('POINT(39.4606678 -75.5163124)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880950', 'Storm Pond', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Park Ridge', 41.0252214, -74.0683066, ST_GeomFromText('POINT(41.0252214 -74.0683066)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('880951', 'Storms Island', 'Island', 'New Jersey', 'NJ', 'Passaic', 'Greenwood Lake', 41.1787061, -74.3259846, ST_GeomFromText('POINT(41.1787061 -74.3259846)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880952', 'Stormy Hill', 'Summit', 'New Jersey', 'NJ', 'Burlington', 'Jenkins', 39.7291425, -74.5456255, ST_GeomFromText('POINT(39.7291425 -74.5456255)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('880953', 'Story Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5503958, -74.3043101, ST_GeomFromText('POINT(39.5503958 -74.3043101)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('880955', 'Stouts Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Forked River', 39.8454328, -74.1436172, ST_GeomFromText('POINT(39.8454328 -74.1436172)', 4326), 39.8552613, -74.16493, '1979-09-08', '2016-10-19', NULL, NULL, NULL),
  ('880957', 'Stow Creek', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Canton', 39.3803909, -75.4068632, ST_GeomFromText('POINT(39.3803909 -75.4068632)', 4326), 39.4953916, -75.3474153, '1979-09-08', '2011-07-21', 'Official', 'Board Decision', '1938-05-13'),
  ('880963', 'Straders Pond', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Newton East', 41.0376906, -74.6849613, ST_GeomFromText('POINT(41.0376906 -74.6849613)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('880964', 'Straight Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Fortescue', 39.2024373, -75.1656675, ST_GeomFromText('POINT(39.2024373 -75.1656675)', 4326), 39.1997222, -75.1402778, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880970', 'Strathmere Bay', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Sea Isle City', 39.2001148, -74.6576594, ST_GeomFromText('POINT(39.2001148 -74.6576594)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880971', 'Strawberry Hill', 'Summit', 'New Jersey', 'NJ', 'Mercer', 'Lambertville', 40.3230729, -74.8952485, ST_GeomFromText('POINT(40.3230729 -74.8952485)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('880972', 'Strawberry Point', 'Cape', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9473204, -74.7437754, ST_GeomFromText('POINT(40.9473204 -74.7437754)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880973', 'Strawbridge Lake', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Moorestown', 39.9493101, -74.9621781, ST_GeomFromText('POINT(39.9493101 -74.9621781)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('880974', 'Stretch Point', 'Cape', 'New Jersey', 'NJ', 'Salem', 'Canton', 39.4142797, -75.420197, ST_GeomFromText('POINT(39.4142797 -75.420197)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880975', 'Stump Creek', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'South Amboy', 40.4619725, -74.2587537, ST_GeomFromText('POINT(40.4619725 -74.2587537)', 4326), 40.4401128, -74.2561814, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('880977', 'Sturgeon Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0803914, -74.7687757, ST_GeomFromText('POINT(39.0803914 -74.7687757)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('880978', 'Sturgeon Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.077058, -74.7662756, ST_GeomFromText('POINT(39.077058 -74.7662756)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('880979', 'Sturgeon Pond', 'Reservoir', 'New Jersey', 'NJ', 'Mercer', 'Trenton East', 40.1880379, -74.748222, ST_GeomFromText('POINT(40.1880379 -74.748222)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('880981', 'Succasunna Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Chester', 40.8467824, -74.6384445, ST_GeomFromText('POINT(40.8467824 -74.6384445)', 4326), 40.8655276, -74.6387824, '1979-09-08', '2014-12-03', NULL, NULL, NULL),
  ('880982', 'Succasunna Plains', 'Flat', 'New Jersey', 'NJ', 'Morris', 'Chester', 40.8667659, -74.6357158, ST_GeomFromText('POINT(40.8667659 -74.6357158)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880983', 'Success Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Cassville', 40.0469344, -74.4245839, ST_GeomFromText('POINT(40.0469344 -74.4245839)', 4326), 40.0325723, -74.4284946, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880984', 'Success Lake', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'Cassville', 40.0586761, -74.3972764, ST_GeomFromText('POINT(40.0586761 -74.3972764)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('880985', 'Sucker Brook', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'New Brunswick', 40.4490556, -74.4476402, ST_GeomFromText('POINT(40.4490556 -74.4476402)', 4326), 40.4608052, -74.451701, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880986', 'Sugar Farm Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0068105, -74.8528375, ST_GeomFromText('POINT(39.0068105 -74.8528375)', 4326), 39.0127139, -74.865637, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('880987', 'Sugar Loaf', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Mendham', 40.7773142, -74.5318644, ST_GeomFromText('POINT(40.7773142 -74.5318644)', 4326), NULL, NULL, '1979-09-08', '2018-04-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('880988', 'Sugar Loaf Hill', 'Summit', 'New Jersey', 'NJ', 'Monmouth', 'Marlboro', 40.317406, -74.1486029, ST_GeomFromText('POINT(40.317406 -74.1486029)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('880994', 'Summit Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.0995533, -74.5353309, ST_GeomFromText('POINT(41.0995533 -74.5353309)', 4326), NULL, NULL, '1979-09-08', '2023-04-05', NULL, NULL, NULL),
  ('880997', 'Sun Rise Point', 'Cape', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.960376, -74.6509947, ST_GeomFromText('POINT(40.960376 -74.6509947)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('880998', 'Sunfish Pond', 'Lake', 'New Jersey', 'NJ', 'Warren', 'Bushkill', 41.0028799, -75.0731788, ST_GeomFromText('POINT(41.0028799 -75.0731788)', 4326), NULL, NULL, '1979-09-08', '2019-07-10', NULL, NULL, NULL),
  ('880999', 'Sunflower Island', 'Island', 'New Jersey', 'NJ', 'Atlantic', 'Oceanville', 39.3951169, -74.4123706, ST_GeomFromText('POINT(39.3951169 -74.4123706)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881000', 'Sunken Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Toms River', 39.9648217, -74.2377922, ST_GeomFromText('POINT(39.9648217 -74.2377922)', 4326), 39.9882131, -74.2921928, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881004', 'Sunray Beach', 'Beach', 'New Jersey', 'NJ', 'Cape May', 'Rio Grande', 39.0440019, -74.9318397, ST_GeomFromText('POINT(39.0440019 -74.9318397)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1943-01-01'),
  ('881006', 'Sunrise Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Mendham', 40.7878601, -74.5450592, ST_GeomFromText('POINT(40.7878601 -74.5450592)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881007', 'Sunrise Mountain', 'Summit', 'New Jersey', 'NJ', 'Sussex', 'Branchville', 41.2182074, -74.7203332, ST_GeomFromText('POINT(41.2182074 -74.7203332)', 4326), NULL, NULL, '1979-09-08', '2018-06-21', NULL, NULL, NULL),
  ('881008', 'Sunset Beach', 'Beach', 'New Jersey', 'NJ', 'Cape May', 'Cape May', 38.9495569, -74.9685085, ST_GeomFromText('POINT(38.9495569 -74.9685085)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881012', 'Sunset Lake', 'Lake', 'New Jersey', 'NJ', 'Cape May', 'Wildwood', 38.9740018, -74.843502, ST_GeomFromText('POINT(38.9740018 -74.843502)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1943-01-01'),
  ('881013', 'Sunset Lake', 'Reservoir', 'New Jersey', 'NJ', 'Cumberland', 'Bridgeton', 39.4491735, -75.2397543, ST_GeomFromText('POINT(39.4491735 -75.2397543)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('881014', 'Sunset Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.0308658, -74.6096148, ST_GeomFromText('POINT(41.0308658 -74.6096148)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('881015', 'Sunset Lake', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.0547736, -74.3862278, ST_GeomFromText('POINT(41.0547736 -74.3862278)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881016', 'Sunset Lake', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Williamstown', 39.6352011, -74.969373, ST_GeomFromText('POINT(39.6352011 -74.969373)', 4326), NULL, NULL, '1979-09-08', '2018-12-17', NULL, NULL, NULL),
  ('881017', 'Sunset Lake', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.2254771, -74.005119, ST_GeomFromText('POINT(40.2254771 -74.005119)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('881018', 'Sunset Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.8884851, -74.4538756, ST_GeomFromText('POINT(40.8884851 -74.4538756)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881019', 'Sunset Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0878171, -74.151889, ST_GeomFromText('POINT(41.0878171 -74.151889)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881020', 'Sunset Lake', 'Reservoir', 'New Jersey', 'NJ', 'Somerset', 'Gladstone', 40.6405672, -74.6265415, ST_GeomFromText('POINT(40.6405672 -74.6265415)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881021', 'Sunshine Park Lake', 'Lake', 'New Jersey', 'NJ', 'Camden', 'Clementon', 39.8320281, -74.93664, ST_GeomFromText('POINT(39.8320281 -74.93664)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881022', 'Suntan Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Pompton Plains', 40.9911363, -74.3285072, ST_GeomFromText('POINT(40.9911363 -74.3285072)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881023', 'Supawna Meadows', 'Swamp', 'New Jersey', 'NJ', 'Salem', 'Delaware City', 39.5817794, -75.5054774, ST_GeomFromText('POINT(39.5817794 -75.5054774)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881025', 'Surprise Lake', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Greenwood Lake', 41.1854517, -74.3469634, ST_GeomFromText('POINT(41.1854517 -74.3469634)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881026', 'Surprise Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Pompton Plains', 40.954098, -74.3541941, ST_GeomFromText('POINT(40.954098 -74.3541941)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', 'Official', 'Board Decision', '2014-08-14'),
  ('881027', 'Lake Surprise', 'Reservoir', 'New Jersey', 'NJ', 'Union', 'Chatham', 40.6874927, -74.3773011, ST_GeomFromText('POINT(40.6874927 -74.3773011)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881028', 'Lake Susquehanna', 'Reservoir', 'New Jersey', 'NJ', 'Warren', 'Blairstown', 40.9675938, -74.998248, ST_GeomFromText('POINT(40.9675938 -74.998248)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('881035', 'Swain Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.1006693, -74.7893323, ST_GeomFromText('POINT(39.1006693 -74.7893323)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('881037', 'Swan Bay', 'Bay', 'New Jersey', 'NJ', 'Burlington', 'New Gretna', 39.5620623, -74.4915404, ST_GeomFromText('POINT(39.5620623 -74.4915404)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881038', 'Swan Creek', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'Lambertville', 40.3636051, -74.9465927, ST_GeomFromText('POINT(40.3636051 -74.9465927)', 4326), 40.3676618, -74.9159431, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881039', 'Swan Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0340058, -74.0590255, ST_GeomFromText('POINT(40.0340058 -74.0590255)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881040', 'Swan Pond', 'Lake', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.2998375, -74.6882162, ST_GeomFromText('POINT(39.2998375 -74.6882162)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881041', 'Swan Pond', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Ramsey', 41.1215007, -74.234759, ST_GeomFromText('POINT(41.1215007 -74.234759)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881042', 'Swan Pond Race', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3065043, -74.6787714, ST_GeomFromText('POINT(39.3065043 -74.6787714)', 4326), 39.3009385, -74.699403, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881043', 'Lake Swannanoa', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Franklin', 41.0097968, -74.5199748, ST_GeomFromText('POINT(41.0097968 -74.5199748)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881045', 'Swartswood Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Newton West', 41.0725838, -74.835936, ST_GeomFromText('POINT(41.0725838 -74.835936)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('881051', 'Swede Run', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Beverly', 40.030192, -74.978283, ST_GeomFromText('POINT(40.030192 -74.978283)', 4326), 39.9754686, -74.9372426, '1979-09-08', '2014-12-24', NULL, NULL, NULL),
  ('881053', 'Swedes Run', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Salem', 39.5976252, -75.3964126, ST_GeomFromText('POINT(39.5976252 -75.3964126)', 4326), 39.611225, -75.3210235, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881055', 'Sweet Hollow', 'Valley', 'New Jersey', 'NJ', 'Hunterdon', 'Frenchtown', 40.6131799, -75.0750927, ST_GeomFromText('POINT(40.6131799 -75.0750927)', 4326), 40.6290195, -75.0855053, '1979-09-08', '2018-08-01', NULL, NULL, NULL),
  ('881056', 'Sweeten Water', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Five Points', 39.3884811, -74.9303734, ST_GeomFromText('POINT(39.3884811 -74.9303734)', 4326), 39.3864081, -74.915514, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881059', 'Swimming Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Sea Isle City', 39.1675432, -74.6870059, ST_GeomFromText('POINT(39.1675432 -74.6870059)', 4326), 39.161999, -74.6931937, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881060', 'Swimming Over Point', 'Cape', 'New Jersey', 'NJ', 'Atlantic', 'New Gretna', 39.5548401, -74.4190373, ST_GeomFromText('POINT(39.5548401 -74.4190373)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881063', 'Swordens Pond', 'Lake', 'New Jersey', 'NJ', 'Ocean', 'Toms River', 39.8832276, -74.2257274, ST_GeomFromText('POINT(39.8832276 -74.2257274)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('881064', 'Sycamore Lake', 'Reservoir', 'New Jersey', 'NJ', 'Salem', 'Alloway', 39.5574618, -75.3350243, ST_GeomFromText('POINT(39.5574618 -75.3350243)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('881065', 'Sykes Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Woodmansie', 39.803174, -74.4776506, ST_GeomFromText('POINT(39.803174 -74.4776506)', 4326), 39.8129968, -74.4306377, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881066', 'Sykes Gap', 'Gap', 'New Jersey', 'NJ', 'Warren', 'Washington', 40.8073211, -74.9660044, ST_GeomFromText('POINT(40.8073211 -74.9660044)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881069', 'Sylvan Lake', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Bristol', 40.0552922, -74.8589154, ST_GeomFromText('POINT(40.0552922 -74.8589154)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('881070', 'Sylvan Lake', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.1954413, -74.0149362, ST_GeomFromText('POINT(40.1954413 -74.0149362)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', 'Official', 'Board Decision', '1954-01-01'),
  ('881073', 'Sylva Lake', 'Reservoir', 'New Jersey', 'NJ', 'Mercer', 'Pennington', 40.2715941, -74.7743319, ST_GeomFromText('POINT(40.2715941 -74.7743319)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('881078', 'Tallmans Pond', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.0545025, -74.4815346, ST_GeomFromText('POINT(41.0545025 -74.4815346)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881080', 'Tamarack Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.0920153, -74.54012, ST_GeomFromText('POINT(41.0920153 -74.54012)', 4326), NULL, NULL, '1979-09-08', '2023-04-05', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881081', 'Lake Tamarack', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0507082, -74.2439555, ST_GeomFromText('POINT(41.0507082 -74.2439555)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881083', 'Mount Tammany', 'Summit', 'New Jersey', 'NJ', 'Warren', 'Portland', 40.9695912, -75.1105314, ST_GeomFromText('POINT(40.9695912 -75.1105314)', 4326), NULL, NULL, '1979-09-08', '2020-04-08', NULL, NULL, NULL),
  ('881084', 'Tanners Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Chester', 40.7892356, -74.7210619, ST_GeomFromText('POINT(40.7892356 -74.7210619)', 4326), 40.7566362, -74.7758675, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881088', 'Tarkiln Branch', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Green Bank', 39.5678957, -74.5115412, ST_GeomFromText('POINT(39.5678957 -74.5115412)', 4326), 39.5397931, -74.5426816, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881089', 'Tarkiln Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Millville', 39.4606227, -75.0615469, ST_GeomFromText('POINT(39.4606227 -75.0615469)', 4326), 39.4776449, -75.0271153, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881090', 'Tarkiln Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Lakewood', 40.0480658, -74.1842754, ST_GeomFromText('POINT(40.0480658 -74.1842754)', 4326), 40.0449632, -74.1968966, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881091', 'Tarkiln Brook', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Tuckahoe', 39.3076838, -74.8282349, ST_GeomFromText('POINT(39.3076838 -74.8282349)', 4326), 39.2905556, -74.8666667, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881092', 'Tarpon Cove', 'Bay', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.3001142, -75.2699133, ST_GeomFromText('POINT(39.3001142 -75.2699133)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881096', 'Taugh Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0239338, -74.813983, ST_GeomFromText('POINT(39.0239338 -74.813983)', 4326), 39.0220615, -74.8211753, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881097', 'Taugh Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0245575, -74.8143337, ST_GeomFromText('POINT(39.0245575 -74.8143337)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881099', 'Taunton Lake', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Medford Lakes', 39.8484028, -74.8519711, ST_GeomFromText('POINT(39.8484028 -74.8519711)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('881101', 'Taylor Brook', 'Stream', 'New Jersey', 'NJ', 'Essex', 'Caldwell', 40.7548787, -74.330374, ST_GeomFromText('POINT(40.7548787 -74.330374)', 4326), 40.741567, -74.3359637, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881102', 'Taylor Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Wildwood', 38.9884461, -74.8690588, ST_GeomFromText('POINT(38.9884461 -74.8690588)', 4326), 39.0095573, -74.8785038, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('881103', 'Taylor Lake', 'Reservoir', 'New Jersey', 'NJ', 'Essex', 'Caldwell', 40.7543534, -74.3331955, ST_GeomFromText('POINT(40.7543534 -74.3331955)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881105', 'Taylor Sound', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Wildwood', 38.9862239, -74.863503, ST_GeomFromText('POINT(38.9862239 -74.863503)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('881107', 'Taylors Mountain', 'Summit', 'New Jersey', 'NJ', 'Burlington', 'New Egypt', 40.0345503, -74.5493194, ST_GeomFromText('POINT(40.0345503 -74.5493194)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('881109', 'Taylortown Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.9605728, -74.3756716, ST_GeomFromText('POINT(40.9605728 -74.3756716)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881110', 'Teal Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Green Bank', 39.578162, -74.5436203, ST_GeomFromText('POINT(39.578162 -74.5436203)', 4326), 39.5665292, -74.5587158, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881112', 'Teaneck Creek', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Weehawken', 40.8662108, -74.0040279, ST_GeomFromText('POINT(40.8662108 -74.0040279)', 4326), 40.8839883, -74.0062502, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881115', 'Telegraph Hill', 'Summit', 'New Jersey', 'NJ', 'Monmouth', 'Keyport', 40.3945447, -74.1723638, ST_GeomFromText('POINT(40.3945447 -74.1723638)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881116', 'Lake Telemark', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.9597642, -74.4998991, ST_GeomFromText('POINT(40.9597642 -74.4998991)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881117', 'Tempe Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.025906, -74.830209, ST_GeomFromText('POINT(39.025906 -74.830209)', 4326), 39.0307838, -74.8497181, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1944-01-01'),
  ('881129', 'Tenakill Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Yonkers', 40.9816688, -73.9648184, ST_GeomFromText('POINT(40.9816688 -73.9648184)', 4326), 40.9228642, -73.9690644, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1959-01-01'),
  ('881131', 'Tenmile Run', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Monmouth Junction', 40.4579195, -74.5913744, ST_GeomFromText('POINT(40.4579195 -74.5913744)', 4326), 40.4108333, -74.5908333, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881133', 'Tennent Brook', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'South Amboy', 40.4315129, -74.3532184, ST_GeomFromText('POINT(40.4315129 -74.3532184)', 4326), 40.4228078, -74.2735434, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1954-01-01'),
  ('881134', 'Tennent Pond', 'Reservoir', 'New Jersey', 'NJ', 'Middlesex', 'South Amboy', 40.4241253, -74.3293307, ST_GeomFromText('POINT(40.4241253 -74.3293307)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', 'Official', 'Board Decision', '1954-01-01'),
  ('881135', 'Tepehemus Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Freehold', 40.2931646, -74.3345314, ST_GeomFromText('POINT(40.2931646 -74.3345314)', 4326), 40.3102207, -74.2572865, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881136', 'Terhune Run', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'Monmouth Junction', 40.389402, -74.530334, ST_GeomFromText('POINT(40.389402 -74.530334)', 4326), 40.4002778, -74.5413889, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881137', 'Terrace Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Wanaque', 41.0099315, -74.3597696, ST_GeomFromText('POINT(41.0099315 -74.3597696)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881138', 'Terrace Pond', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Wawayanda', 41.1389899, -74.3947395, ST_GeomFromText('POINT(41.1389899 -74.3947395)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881145', 'The Glades', 'Flat', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.2598366, -75.142962, ST_GeomFromText('POINT(39.2598366 -75.142962)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881146', 'The Glimmerglass', 'Lake', 'New Jersey', 'NJ', 'Monmouth', 'Point Pleasant', 40.1128604, -74.046999, ST_GeomFromText('POINT(40.1128604 -74.046999)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('881151', 'The Tarn', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.9152192, -74.4411751, ST_GeomFromText('POINT(40.9152192 -74.4411751)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881157', 'Third Neshanic River', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'Hopewell', 40.4781739, -74.8538232, ST_GeomFromText('POINT(40.4781739 -74.8538232)', 4326), 40.4623265, -74.9298893, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881158', 'Third River', 'Stream', 'New Jersey', 'NJ', 'Essex', 'Orange', 40.820382, -74.130367, ST_GeomFromText('POINT(40.820382 -74.130367)', 4326), 40.8774657, -74.1925487, '1979-09-08', '2014-12-03', 'Official', 'Board Decision', '1959-01-01'),
  ('881161', 'Thompsons Beach', 'Beach', 'New Jersey', 'NJ', 'Cumberland', 'Heislerville', 39.1923362, -74.9923979, ST_GeomFromText('POINT(39.1923362 -74.9923979)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881162', 'Thompson Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5986762, -74.3142673, ST_GeomFromText('POINT(39.5986762 -74.3142673)', 4326), 39.608978, -74.3260449, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881163', 'Thompson Point', 'Cape', 'New Jersey', 'NJ', 'Gloucester', 'Bridgeport', 39.8434462, -75.3057426, ST_GeomFromText('POINT(39.8434462 -75.3057426)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1954-01-01'),
  ('881165', 'Thornes Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Keyport', 40.448678, -74.1472757, ST_GeomFromText('POINT(40.448678 -74.1472757)', 4326), 40.4308933, -74.1507947, '1981-07-01', '2016-10-19', 'Official', 'Board Decision', '1990-01-01'),
  ('881167', 'Thorofare Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Wildwood', 38.9595572, -74.8690589, ST_GeomFromText('POINT(38.9595572 -74.8690589)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881168', 'Thorofare Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.647619, -74.2129174, ST_GeomFromText('POINT(39.647619 -74.2129174)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881169', 'Thorofare Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.569007, -74.3379226, ST_GeomFromText('POINT(39.569007 -74.3379226)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881170', 'Thorton Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Trenton East', 40.1533793, -74.7125834, ST_GeomFromText('POINT(40.1533793 -74.7125834)', 4326), 40.1483333, -74.6766667, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881172', 'Three Pond Branch', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Newtonville', 39.5848464, -74.8558295, ST_GeomFromText('POINT(39.5848464 -74.8558295)', 4326), 39.559995, -74.9100423, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881175', 'Through Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.1198582, -74.7517464, ST_GeomFromText('POINT(39.1198582 -74.7517464)', 4326), 39.1227778, -74.7622222, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1944-01-01'),
  ('881176', 'Thundergust Brook', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Elmer', 39.5019173, -75.138191, ST_GeomFromText('POINT(39.5019173 -75.138191)', 4326), 39.502801, -75.1768617, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881177', 'Thundergust Lake', 'Reservoir', 'New Jersey', 'NJ', 'Salem', 'Elmer', 39.5032219, -75.1345352, ST_GeomFromText('POINT(39.5032219 -75.1345352)', 4326), NULL, NULL, '1979-09-08', '2022-08-05', NULL, NULL, NULL),
  ('881178', 'Thundergut Pond', 'Reservoir', 'New Jersey', 'NJ', 'Salem', 'Alloway', 39.532042, -75.3376052, ST_GeomFromText('POINT(39.532042 -75.3376052)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('881179', 'Tibbs Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Chatsworth', 39.8436288, -74.5299947, ST_GeomFromText('POINT(39.8436288 -74.5299947)', 4326), 39.8623397, -74.4918182, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881181', 'Tick Neck', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.1101136, -74.8496131, ST_GeomFromText('POINT(39.1101136 -74.8496131)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881185', 'Tillman Brook', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Lake Maskenozha', 41.157324, -74.8767883, ST_GeomFromText('POINT(41.157324 -74.8767883)', 4326), 41.16066, -74.8256278, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881186', 'Tillman Falls', 'Falls', 'New Jersey', 'NJ', 'Sussex', 'Culvers Gap', 41.1578733, -74.8585019, ST_GeomFromText('POINT(41.1578733 -74.8585019)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881187', 'Tilton Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Seaside Park', 39.9756735, -74.1093047, ST_GeomFromText('POINT(39.9756735 -74.1093047)', 4326), NULL, NULL, '1979-09-08', '2016-10-19', NULL, NULL, NULL),
  ('881188', 'Timber and Beaver Swamp', 'Swamp', 'New Jersey', 'NJ', 'Cape May', 'Woodbine', 39.1570585, -74.7948881, ST_GeomFromText('POINT(39.1570585 -74.7948881)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881189', 'Timber Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Newfoundland', 41.0150451, -74.4410527, ST_GeomFromText('POINT(41.0150451 -74.4410527)', 4326), 41.0073997, -74.4652596, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881190', 'Timber Lakes', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Williamstown', 39.6411185, -74.9564548, ST_GeomFromText('POINT(39.6411185 -74.9564548)', 4326), NULL, NULL, '1979-09-08', '2013-08-14', NULL, NULL, NULL),
  ('881191', 'Timber Run', 'Stream', 'New Jersey', 'NJ', 'Mercer', 'Jamesburg', 40.2584432, -74.49043, ST_GeomFromText('POINT(40.2584432 -74.49043)', 4326), 40.2613889, -74.4838889, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881193', 'Tindale Run', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Camden', 39.8896736, -75.0256884, ST_GeomFromText('POINT(39.8896736 -75.0256884)', 4326), 39.8791646, -74.9960017, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881194', 'Tindall Island', 'Island', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.3628912, -75.3738063, ST_GeomFromText('POINT(39.3628912 -75.3738063)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881195', 'Tinkers Branch', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Clementon', 39.7735821, -74.9480224, ST_GeomFromText('POINT(39.7735821 -74.9480224)', 4326), 39.7760888, -74.9281955, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881198', 'Tocks Island', 'Island', 'New Jersey', 'NJ', 'Warren', 'Bushkill', 41.021207, -75.062676, ST_GeomFromText('POINT(41.021207 -75.062676)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881199', 'Todd Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0475155, -74.241346, ST_GeomFromText('POINT(41.0475155 -74.241346)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881200', 'Tomahawk Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9956305, -74.650296, ST_GeomFromText('POINT(40.9956305 -74.650296)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('881204', 'Tommys Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Oswego Lake', 39.6273459, -74.4323167, ST_GeomFromText('POINT(39.6273459 -74.4323167)', 4326), 39.6461111, -74.4, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881205', 'Toms Branch', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Runnemede', 39.7667871, -75.044378, ST_GeomFromText('POINT(39.7667871 -75.044378)', 4326), 39.7758703, -75.0204635, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881207', 'Toms Island', 'Island', 'New Jersey', 'NJ', 'Atlantic', 'Ocean City', 39.3426163, -74.5248756, ST_GeomFromText('POINT(39.3426163 -74.5248756)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881208', 'Toms Lake', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Pompton Plains', 40.9576817, -74.2592726, ST_GeomFromText('POINT(40.9576817 -74.2592726)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881209', 'Toms Point', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Pompton Plains', 40.9137015, -74.3195923, ST_GeomFromText('POINT(40.9137015 -74.3195923)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('881211', 'Toms River', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Seaside Park', 39.9376183, -74.1106932, ST_GeomFromText('POINT(39.9376183 -74.1106932)', 4326), 40.1973749, -74.419878, '1979-09-08', '2016-10-19', 'Official', 'Board Decision', '1954-01-01'),
  ('881213', 'Lake Topanemus', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Freehold', 40.2760146, -74.2817289, ST_GeomFromText('POINT(40.2760146 -74.2817289)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', 'Official', 'Board Decision', '1954-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881214', 'Torne Mountain', 'Summit', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0366719, -74.3502569, ST_GeomFromText('POINT(41.0366719 -74.3502569)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('881216', 'Tow Island', 'Island', 'New Jersey', 'NJ', 'Atlantic', 'Tuckerton', 39.5040065, -74.3409784, ST_GeomFromText('POINT(39.5040065 -74.3409784)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881218', 'Towackhow Mountain', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Pompton Plains', 40.9015303, -74.3456163, ST_GeomFromText('POINT(40.9015303 -74.3456163)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('881223', 'North Cape May Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Bridgeton', 39.3940037, -75.1729626, ST_GeomFromText('POINT(39.3940037 -75.1729626)', 4326), 39.4119444, -75.1605556, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881227', 'Townsend Sound', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Sea Isle City', 39.1512253, -74.7365518, ST_GeomFromText('POINT(39.1512253 -74.7365518)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881228', 'Townsends Inlet', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Avalon', 39.1178919, -74.7143286, ST_GeomFromText('POINT(39.1178919 -74.7143286)', 4326), NULL, NULL, '1979-09-08', '2013-12-04', NULL, NULL, NULL),
  ('881231', 'Townsend Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0970581, -74.7909991, ST_GeomFromText('POINT(39.0970581 -74.7909991)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('881234', 'Lake Tranquility', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Tranquility', 40.9518855, -74.7815576, ST_GeomFromText('POINT(40.9518855 -74.7815576)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('881237', 'Treasure Island', 'Island', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.9706704, -74.5729327, ST_GeomFromText('POINT(39.9706704 -74.5729327)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881238', 'Treasure Island', 'Island', 'New Jersey', 'NJ', 'Hunterdon', 'Lumberville', 40.4726036, -75.0654486, ST_GeomFromText('POINT(40.4726036 -75.0654486)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881239', 'Treasure Lake', 'Lake', 'New Jersey', 'NJ', 'Monmouth', 'Keyport', 40.4482189, -74.2156605, ST_GeomFromText('POINT(40.4482189 -74.2156605)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', 'Official', 'Board Decision', '1954-01-01'),
  ('881262', 'Triple Lakes', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Chester', 40.8662404, -74.6263614, ST_GeomFromText('POINT(40.8662404 -74.6263614)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881264', 'Trout Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Marlboro', 40.316926, -74.1359755, ST_GeomFromText('POINT(40.316926 -74.1359755)', 4326), 40.3108333, -74.155, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881265', 'Trout Brook', 'Stream', 'New Jersey', 'NJ', 'Warren', 'Hackettstown', 40.8284784, -74.8316118, ST_GeomFromText('POINT(40.8284784 -74.8316118)', 4326), 40.8382885, -74.8316923, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881266', 'Trout Brook', 'Stream', 'New Jersey', 'NJ', 'Warren', 'Tranquility', 40.9221387, -74.8375154, ST_GeomFromText('POINT(40.9221387 -74.8375154)', 4326), 40.9629353, -74.7534013, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881267', 'Trout Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Gladstone', 40.7475496, -74.725163, ST_GeomFromText('POINT(40.7475496 -74.725163)', 4326), 40.7643381, -74.7397032, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881268', 'Trout Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Blairstown', 40.9236141, -74.8803234, ST_GeomFromText('POINT(40.9236141 -74.8803234)', 4326), 40.9505729, -74.8384595, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881269', 'Trout Brook', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Newton West', 41.052625, -74.8549604, ST_GeomFromText('POINT(41.052625 -74.8549604)', 4326), 41.1023183, -74.877947, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881270', 'Trout Run', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Clementon', 39.8103162, -74.9772906, ST_GeomFromText('POINT(39.8103162 -74.9772906)', 4326), 39.8126486, -74.9649471, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881271', 'Troy Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Caldwell', 40.8425996, -74.3562618, ST_GeomFromText('POINT(40.8425996 -74.3562618)', 4326), 40.8539, -74.4118, '1979-09-08', '2008-02-14', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881273', 'Troy Meadows', 'Swamp', 'New Jersey', 'NJ', 'Morris', 'Morristown', 40.8459328, -74.3762625, ST_GeomFromText('POINT(40.8459328 -74.3762625)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881276', 'Tub Mill Branch', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Jenkins', 39.6384387, -74.5044708, ST_GeomFromText('POINT(39.6384387 -74.5044708)', 4326), 39.6556742, -74.4743171, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881279', 'Tuckahoe Lake', 'Reservoir', 'New Jersey', 'NJ', 'Cape May', 'Marmora', 39.2756237, -74.7307066, ST_GeomFromText('POINT(39.2756237 -74.7307066)', 4326), NULL, NULL, '1979-09-08', '2018-12-17', NULL, NULL, NULL),
  ('881280', 'Tuckahoe River', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.2948376, -74.6443254, ST_GeomFromText('POINT(39.2948376 -74.6443254)', 4326), 39.4436336, -74.8630929, '1979-09-08', '2014-06-13', NULL, NULL, NULL),
  ('881281', 'Tuckahoe River Island', 'Island', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.2920598, -74.6543258, ST_GeomFromText('POINT(39.2920598 -74.6543258)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881283', 'Tuckerton Bay', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5826182, -74.3204219, ST_GeomFromText('POINT(39.5826182 -74.3204219)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881284', 'Tuckerton Cove', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5751181, -74.3354225, ST_GeomFromText('POINT(39.5751181 -74.3354225)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881285', 'Tuckerton Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5770626, -74.3376449, ST_GeomFromText('POINT(39.5770626 -74.3376449)', 4326), 39.6027268, -74.3416205, '1979-09-08', '2015-01-28', NULL, NULL, NULL),
  ('881286', 'Tufts Point', 'Cape', 'New Jersey', 'NJ', 'Middlesex', 'Arthur Kill', 40.5601048, -74.2204224, ST_GeomFromText('POINT(40.5601048 -74.2204224)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881287', 'Tulpehocken Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Jenkins', 39.7133438, -74.5631576, ST_GeomFromText('POINT(39.7133438 -74.5631576)', 4326), 39.7859511, -74.6095994, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1897-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881289', 'Tunes Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Lakewood', 40.0290058, -74.1318062, ST_GeomFromText('POINT(40.0290058 -74.1318062)', 4326), 40.0383347, -74.1575512, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881290', 'Turkey Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Chester', 40.837767, -74.743048, ST_GeomFromText('POINT(40.837767 -74.743048)', 4326), 40.8658333, -74.7063889, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881291', 'Turkey Mountain', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Pompton Plains', 40.9489951, -74.3732949, ST_GeomFromText('POINT(40.9489951 -74.3732949)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('881292', 'Turkey Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.1142817, -74.0962501, ST_GeomFromText('POINT(40.1142817 -74.0962501)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881293', 'Turkey Point', 'Cape', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.2587255, -75.1310169, ST_GeomFromText('POINT(39.2587255 -75.1310169)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881296', 'Turner Fork', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Canton', 39.4459286, -75.4479486, ST_GeomFromText('POINT(39.4459286 -75.4479486)', 4326), 39.4669116, -75.4364687, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881298', 'Turtle Brook', 'Stream', 'New Jersey', 'NJ', 'Essex', 'Caldwell', 40.7846115, -74.273302, ST_GeomFromText('POINT(40.7846115 -74.273302)', 4326), 40.7837209, -74.2612588, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881299', 'Turtle Cove', 'Bay', 'New Jersey', 'NJ', 'Atlantic', 'Oceanville', 39.4551173, -74.431538, ST_GeomFromText('POINT(39.4551173 -74.431538)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881300', 'Turtle Cove', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.6826194, -74.1959723, ST_GeomFromText('POINT(39.6826194 -74.1959723)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881302', 'Turtle Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Green Bank', 39.5718553, -74.504723, ST_GeomFromText('POINT(39.5718553 -74.504723)', 4326), 39.5925605, -74.4988167, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881303', 'Turtle Ground Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3142822, -74.6609928, ST_GeomFromText('POINT(39.3142822 -74.6609928)', 4326), 39.3147222, -74.6658333, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881307', 'Turtle Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'New Gretna', 39.5459512, -74.4018143, ST_GeomFromText('POINT(39.5459512 -74.4018143)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881308', 'Turtle Pond', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Tranquility', 40.9805226, -74.7688066, ST_GeomFromText('POINT(40.9805226 -74.7688066)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('881309', 'Turtle Pond', 'Lake', 'New Jersey', 'NJ', 'Warren', 'Flatbrookville', 41.0308532, -74.9184469, ST_GeomFromText('POINT(41.0308532 -74.9184469)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('881312', 'Tweed Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.3142209, -75.2827084, ST_GeomFromText('POINT(39.3142209 -75.2827084)', 4326), 39.3058333, -75.2875, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881313', 'Twilight Lake', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0731509, -74.0461199, ST_GeomFromText('POINT(40.0731509 -74.0461199)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('881314', 'Twilliger Lake', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0195837, -74.3099801, ST_GeomFromText('POINT(41.0195837 -74.3099801)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881315', 'Twin Lakes', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Newton East', 41.015097, -74.7479902, ST_GeomFromText('POINT(41.015097 -74.7479902)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('881316', 'Twin Lakes', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0120689, -74.2972063, ST_GeomFromText('POINT(41.0120689 -74.2972063)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881318', 'Two Mile Beach', 'Beach', 'New Jersey', 'NJ', 'Cape May', 'Wildwood', 38.9484461, -74.8573917, ST_GeomFromText('POINT(38.9484461 -74.8573917)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881319', 'Two Penny Run', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Penns Grove', 39.6902971, -75.4212955, ST_GeomFromText('POINT(39.6902971 -75.4212955)', 4326), 39.6916242, -75.3584218, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881325', 'Uncle Aarons Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Woodbine', 39.1337221, -74.751462, ST_GeomFromText('POINT(39.1337221 -74.751462)', 4326), 39.1413946, -74.7732925, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881333', 'Union Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Toms River', 39.99884, -74.2333169, ST_GeomFromText('POINT(39.99884 -74.2333169)', 4326), 40.0079315, -74.3192697, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1954-01-01'),
  ('881350', 'Union Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Green Bank', 39.5478951, -74.6246018, ST_GeomFromText('POINT(39.5478951 -74.6246018)', 4326), 39.5211495, -74.6479636, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881356', 'Union Lake', 'Reservoir', 'New Jersey', 'NJ', 'Cumberland', 'Millville', 39.4164902, -75.0623145, ST_GeomFromText('POINT(39.4164902 -75.0623145)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('881363', 'Union Valley', 'Valley', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.0444914, -74.43369, ST_GeomFromText('POINT(41.0444914 -74.43369)', 4326), 41.1223999, -74.3812966, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('881374', 'Untermeyer Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Pompton Plains', 40.9698908, -74.3377517, ST_GeomFromText('POINT(40.9698908 -74.3377517)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881376', 'Upper Aetna Lake', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Medford Lakes', 39.8535174, -74.7910082, ST_GeomFromText('POINT(39.8535174 -74.7910082)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('881378', 'Upper Bear Swamp', 'Swamp', 'New Jersey', 'NJ', 'Mercer', 'Princeton', 40.3056635, -74.6532135, ST_GeomFromText('POINT(40.3056635 -74.6532135)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881379', 'Upper Blauvelt Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0014055, -74.2292093, ST_GeomFromText('POINT(41.0014055 -74.2292093)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', 'Official', 'Board Decision', '1960-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881380', 'Upper Brothers Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Fortescue', 39.1956881, -75.1551895, ST_GeomFromText('POINT(39.1956881 -75.1551895)', 4326), 39.1971037, -75.1371396, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881381', 'Upper Brothers Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.290593, -74.6974987, ST_GeomFromText('POINT(39.290593 -74.6974987)', 4326), 39.3001383, -74.7042149, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881384', 'Upper Erskine Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Ramsey', 41.0972841, -74.2462202, ST_GeomFromText('POINT(41.0972841 -74.2462202)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881386', 'Upper Greenwood Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wawayanda', 41.1746954, -74.3809434, ST_GeomFromText('POINT(41.1746954 -74.3809434)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('881387', 'Upper Highland Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Wawayanda', 41.1801062, -74.4670821, ST_GeomFromText('POINT(41.1801062 -74.4670821)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('881388', 'Upper Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.1062249, -74.7662756, ST_GeomFromText('POINT(39.1062249 -74.7662756)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('881394', 'Upper Pohatcong Mountain', 'Summit', 'New Jersey', 'NJ', 'Warren', 'Hackettstown', 40.8420821, -74.8616633, ST_GeomFromText('POINT(40.8420821 -74.8616633)', 4326), NULL, NULL, '1979-09-08', '2022-08-13', NULL, NULL, NULL),
  ('881399', 'Uriah Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'West Creek', 39.6334968, -74.3025917, ST_GeomFromText('POINT(39.6334968 -74.3025917)', 4326), 39.6370589, -74.3339252, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881409', 'Valentine Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0273193, -74.1481992, ST_GeomFromText('POINT(41.0273193 -74.1481992)', 4326), 41.055, -74.1508333, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881410', 'Lake Valhalla', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Pompton Plains', 40.9329266, -74.3742846, ST_GeomFromText('POINT(40.9329266 -74.3742846)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881413', 'Valley Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Pompton Plains', 40.9503759, -74.2543138, ST_GeomFromText('POINT(40.9503759 -74.2543138)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881414', 'Valley Spring Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Pompton Plains', 40.9937088, -74.3215386, ST_GeomFromText('POINT(40.9937088 -74.3215386)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881416', 'Van Dal Lake', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Medford Lakes', 39.8362734, -74.8652081, ST_GeomFromText('POINT(39.8362734 -74.8652081)', 4326), NULL, NULL, '1979-09-08', '2023-03-24', NULL, NULL, NULL),
  ('881418', 'Van Every Cove', 'Bay', 'New Jersey', 'NJ', 'Morris', 'Stanhope', 40.9342652, -74.633494, ST_GeomFromText('POINT(40.9342652 -74.633494)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881420', 'Van Gelders Pond', 'Lake', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0458593, -74.1638329, ST_GeomFromText('POINT(41.0458593 -74.1638329)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881426', 'Van Nostrand Lake', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0360192, -74.374172, ST_GeomFromText('POINT(41.0360192 -74.374172)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881427', 'Van Saun Mill Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Hackensack', 40.9120978, -74.0418608, ST_GeomFromText('POINT(40.9120978 -74.0418608)', 4326), 40.9690437, -74.0371147, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881430', 'Vancampens Brook', 'Stream', 'New Jersey', 'NJ', 'Warren', 'Bushkill', 41.0421629, -75.0196239, ST_GeomFromText('POINT(41.0421629 -75.0196239)', 4326), 41.096757, -74.908374, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881432', 'Vanderbush Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0267892, -74.1500447, ST_GeomFromText('POINT(41.0267892 -74.1500447)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881437', 'Venetian Bayou', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Ocean City', 39.2740044, -74.5937676, ST_GeomFromText('POINT(39.2740044 -74.5937676)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881444', 'Vernon Valley', 'Valley', 'New York', 'NY', 'Orange', 'Pine Island', 41.274786, -74.4721592, ST_GeomFromText('POINT(41.274786 -74.4721592)', 4326), 41.1949004, -74.5108617, '1979-09-08', '2016-11-04', NULL, NULL, NULL),
  ('881450', 'Victory Lakes', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Williamstown', 39.6344693, -74.9561634, ST_GeomFromText('POINT(39.6344693 -74.9561634)', 4326), NULL, NULL, '1979-09-08', '2018-12-17', NULL, NULL, NULL),
  ('881464', 'Lake Vincent', 'Lake', 'New Jersey', 'NJ', 'Essex', 'Caldwell', 40.8031523, -74.2624034, ST_GeomFromText('POINT(40.8031523 -74.2624034)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881469', 'Virginia Lake', 'Lake', 'New Jersey', 'NJ', 'Camden', 'Williamstown', 39.7380621, -74.9172768, ST_GeomFromText('POINT(39.7380621 -74.9172768)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('881470', 'Vitale Pond', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0049464, -74.2177386, ST_GeomFromText('POINT(41.0049464 -74.2177386)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881472', 'Vol Sedge', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.7428979, -74.1281918, ST_GeomFromText('POINT(39.7428979 -74.1281918)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881479', 'Vreeland Pond', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.0761752, -74.3889889, ST_GeomFromText('POINT(41.0761752 -74.3889889)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881480', 'Lake Vreeland', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0631279, -74.2399787, ST_GeomFromText('POINT(41.0631279 -74.2399787)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881481', 'Waackaack Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Keyport', 40.4491495, -74.1475868, ST_GeomFromText('POINT(40.4491495 -74.1475868)', 4326), 40.3944444, -74.1283333, '1979-09-08', '2016-10-19', 'Official', 'Board Decision', '1894-01-01'),
  ('881482', 'Wabash Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.8882379, -74.1312522, ST_GeomFromText('POINT(40.8882379 -74.1312522)', 4326), 40.8872222, -74.1469444, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881485', 'Wading River', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'New Gretna', 39.5573401, -74.4793177, ST_GeomFromText('POINT(39.5573401 -74.4793177)', 4326), 39.6580791, -74.5277283, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881488', 'Walden Swamp', 'Swamp', 'New Jersey', 'NJ', 'Bergen', 'Weehawken', 40.8231559, -74.079586, ST_GeomFromText('POINT(40.8231559 -74.079586)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881492', 'Wallace Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.8776584, -74.579106, ST_GeomFromText('POINT(40.8776584 -74.579106)', 4326), 40.8678785, -74.5693079, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881494', 'Wallace Pond', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.0518594, -74.4804272, ST_GeomFromText('POINT(41.0518594 -74.4804272)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881496', 'Wallens Pond', 'Lake', 'New Jersey', 'NJ', 'Cumberland', 'Cedarville', 39.2553921, -75.1537961, ST_GeomFromText('POINT(39.2553921 -75.1537961)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881499', 'Wallkill Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Hamburg', 41.2368049, -74.5353822, ST_GeomFromText('POINT(41.2368049 -74.5353822)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('881506', 'Wallworth Lake', 'Reservoir', 'New Jersey', 'NJ', 'Camden', 'Camden', 39.9021853, -75.0209185, ST_GeomFromText('POINT(39.9021853 -75.0209185)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('881508', 'Walnut Brook', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'Hopewell', 40.4907447, -74.8636723, ST_GeomFromText('POINT(40.4907447 -74.8636723)', 4326), 40.5414919, -74.8890552, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881519', 'Wanaque Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0853007, -74.2801362, ST_GeomFromText('POINT(41.0853007 -74.2801362)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881520', 'Wanaque River', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Pompton Plains', 40.9879203, -74.292748, ST_GeomFromText('POINT(40.9879203 -74.292748)', 4326), 41.1616333, -74.3330938, '1979-09-08', '2014-12-03', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881522', 'Lake Wanda', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Wawayanda', 41.1817154, -74.4531412, ST_GeomFromText('POINT(41.1817154 -74.4531412)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('881526', 'Lake Wapalanne', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Culvers Gap', 41.225401, -74.7515851, ST_GeomFromText('POINT(41.225401 -74.7515851)', 4326), NULL, NULL, '1979-09-08', '2019-07-10', 'Official', 'Board Decision', '1954-01-01'),
  ('881529', 'Ward Lake', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Pitman East', 39.7173577, -75.0910961, ST_GeomFromText('POINT(39.7173577 -75.0910961)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('881530', 'Wardells Neck', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0570608, -74.0831934, ST_GeomFromText('POINT(40.0570608 -74.0831934)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881531', 'Ware Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Port Norris', 39.2133527, -75.0836349, ST_GeomFromText('POINT(39.2133527 -75.0836349)', 4326), 39.2336285, -75.0940365, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881534', 'Waretown Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Forked River', 39.7938312, -74.1897297, ST_GeomFromText('POINT(39.7938312 -74.1897297)', 4326), 39.7817781, -74.2554116, '1979-09-08', '2014-06-11', NULL, NULL, NULL),
  ('881537', 'Warford Creek', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'Lumberville', 40.4695738, -75.0630489, ST_GeomFromText('POINT(40.4695738 -75.0630489)', 4326), 40.49, -75.0261111, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881540', 'Warners Mill Stream', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Tuckahoe', 39.3074762, -74.803167, ST_GeomFromText('POINT(39.3074762 -74.803167)', 4326), 39.3377778, -74.7991667, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881541', 'Warnes Brook', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'South Amboy', 40.4151073, -74.3037581, ST_GeomFromText('POINT(40.4151073 -74.3037581)', 4326), 40.4161427, -74.2656764, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881542', 'Warren Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Cape May', 38.976922, -74.878183, ST_GeomFromText('POINT(38.976922 -74.878183)', 4326), 38.9854258, -74.8941194, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881545', 'Warren Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0148352, -74.8398906, ST_GeomFromText('POINT(39.0148352 -74.8398906)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('881549', 'Warrington Millpond', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Bridgeport', 39.7806655, -75.2825969, ST_GeomFromText('POINT(39.7806655 -75.2825969)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('881568', 'Washington Point Neck', 'Cape', 'New Jersey', 'NJ', 'Gloucester', 'Woodbury', 39.8645576, -75.193791, ST_GeomFromText('POINT(39.8645576 -75.193791)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881569', 'Washington Pond', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.9037084, -74.5815944, ST_GeomFromText('POINT(40.9037084 -74.5815944)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881603', 'Washington Valley Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Somerset', 'Bound Brook', 40.5932023, -74.566023, ST_GeomFromText('POINT(40.5932023 -74.566023)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881604', 'Lake Washington', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0302655, -74.3028873, ST_GeomFromText('POINT(41.0302655 -74.3028873)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881608', 'Lake Wasigan', 'Reservoir', 'New Jersey', 'NJ', 'Warren', 'Blairstown', 40.959216, -74.9333874, ST_GeomFromText('POINT(40.959216 -74.9333874)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('881610', 'Watchung Lake', 'Reservoir', 'New Jersey', 'NJ', 'Somerset', 'Chatham', 40.6354123, -74.4555102, ST_GeomFromText('POINT(40.6354123 -74.4555102)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881616', 'Watering Place Brook', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Lakewood', 40.0862085, -74.2238152, ST_GeomFromText('POINT(40.0862085 -74.2238152)', 4326), 40.0834689, -74.2481536, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('881617', 'Watering Race Branch', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Mays Landing', 39.450011, -74.7213784, ST_GeomFromText('POINT(39.450011 -74.7213784)', 4326), 39.5487281, -74.6915491, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881619', 'Waterloo Lakes', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Tranquility', 40.9164727, -74.7505622, ST_GeomFromText('POINT(40.9164727 -74.7505622)', 4326), NULL, NULL, '1979-09-08', '2023-04-05', NULL, NULL, NULL),
  ('881621', 'Watnong Mountain', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Morristown', 40.8486555, -74.4941333, ST_GeomFromText('POINT(40.8486555 -74.4941333)', 4326), NULL, NULL, '1979-09-08', '2018-04-14', NULL, NULL, NULL),
  ('881624', 'Watson Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Point Pleasant', 40.1129112, -74.0442628, ST_GeomFromText('POINT(40.1129112 -74.0442628)', 4326), 40.1164845, -74.0346068, '1979-09-08', '2016-10-19', NULL, NULL, NULL),
  ('881625', 'Watson Lake', 'Lake', 'New Jersey', 'NJ', 'Camden', 'Clementon', 39.8100591, -74.9779152, ST_GeomFromText('POINT(39.8100591 -74.9779152)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('881627', 'Waughaw Mountain', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Pompton Plains', 40.9473122, -74.3543159, ST_GeomFromText('POINT(40.9473122 -74.3543159)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('881632', 'Wawayanda Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Wawayanda', 41.1814524, -74.4333523, ST_GeomFromText('POINT(41.1814524 -74.4333523)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('881633', 'Wawayanda Mountain', 'Summit', 'New Jersey', 'NJ', 'Sussex', 'Wawayanda', 41.197587, -74.4570995, ST_GeomFromText('POINT(41.197587 -74.4570995)', 4326), NULL, NULL, '1979-09-08', '2022-08-13', NULL, NULL, NULL),
  ('881635', 'Weakfish Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Sea Isle City', 39.224017, -74.6538484, ST_GeomFromText('POINT(39.224017 -74.6538484)', 4326), 39.2233333, -74.64, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881636', 'Weakfish Island', 'Island', 'New Jersey', 'NJ', 'Atlantic', 'Oceanville', 39.4059502, -74.4590392, ST_GeomFromText('POINT(39.4059502 -74.4590392)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881638', 'Weamaconk Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Freehold', 40.2964604, -74.3613616, ST_GeomFromText('POINT(40.2964604 -74.3613616)', 4326), 40.2623759, -74.2752787, '1979-09-08', '2014-12-03', 'Official', 'Board Decision', '1954-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881639', 'Weasel Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Weehawken', 40.8591986, -74.1193941, ST_GeomFromText('POINT(40.8591986 -74.1193941)', 4326), 40.8809944, -74.1762516, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881641', 'Webbs Mill Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Keswick Grove', 39.8853064, -74.3235934, ST_GeomFromText('POINT(39.8853064 -74.3235934)', 4326), 39.8636102, -74.3962812, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881645', 'Weehawken Cove', 'Bay', 'New Jersey', 'NJ', 'Hudson', 'Weehawken', 40.7559348, -74.0268069, ST_GeomFromText('POINT(40.7559348 -74.0268069)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881651', 'Weequahic Lake', 'Lake', 'New Jersey', 'NJ', 'Essex', 'Elizabeth', 40.7014516, -74.2040553, ST_GeomFromText('POINT(40.7014516 -74.2040553)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881653', 'Weir Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.6116519, -74.2846531, ST_GeomFromText('POINT(39.6116519 -74.2846531)', 4326), 39.6300811, -74.302648, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881657', 'Weldon Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.981437, -74.5889926, ST_GeomFromText('POINT(40.981437 -74.5889926)', 4326), 41.0221646, -74.5917284, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1897-12-07'),
  ('881659', 'Wells Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.2066889, -74.0685904, ST_GeomFromText('POINT(40.2066889 -74.0685904)', 4326), 40.2207603, -74.0939386, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881660', 'Wells Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'New Gretna', 39.5495623, -74.3893138, ST_GeomFromText('POINT(39.5495623 -74.3893138)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881663', 'Wemrock Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Freehold', 40.2715898, -74.3301326, ST_GeomFromText('POINT(40.2715898 -74.3301326)', 4326), 40.2539191, -74.2881788, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1954-01-01'),
  ('881664', 'Wemrock Pond', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Freehold', 40.2572342, -74.3169412, ST_GeomFromText('POINT(40.2572342 -74.3169412)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', 'Official', 'Board Decision', '1954-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881668', 'Wesickaman Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Atsion', 39.739357, -74.7231942, ST_GeomFromText('POINT(39.739357 -74.7231942)', 4326), 39.7886375, -74.7786114, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881679', 'West Branch Bass River', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'New Gretna', 39.6158051, -74.4468355, ST_GeomFromText('POINT(39.6158051 -74.4468355)', 4326), 39.679841, -74.4232038, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881680', 'West Branch Cohansey River', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Shiloh', 39.4856183, -75.2575439, ST_GeomFromText('POINT(39.4856183 -75.2575439)', 4326), 39.4897574, -75.3046864, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881681', 'West Branch Elizabeth River', 'Stream', 'New Jersey', 'NJ', 'Union', 'Elizabeth', 40.6916536, -74.2388919, ST_GeomFromText('POINT(40.6916536 -74.2388919)', 4326), 40.6962965, -74.2839637, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881682', 'West Branch Middle Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Bound Brook', 40.5843043, -74.5576081, ST_GeomFromText('POINT(40.5843043 -74.5576081)', 4326), 40.6250075, -74.6078861, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881683', 'West Branch Papakating Creek', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Branchville', 41.1881557, -74.6324565, ST_GeomFromText('POINT(41.1881557 -74.6324565)', 4326), 41.2250818, -74.6982336, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881684', 'West Branch Shabakunk Creek', 'Stream', 'New Jersey', 'NJ', 'Mercer', 'Princeton', 40.251003, -74.749217, ST_GeomFromText('POINT(40.251003 -74.749217)', 4326), 40.2817479, -74.8149258, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881685', 'West Branch Wading River', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Jenkins', 39.6581411, -74.5277497, ST_GeomFromText('POINT(39.6581411 -74.5277497)', 4326), 39.8143668, -74.5469543, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881686', 'West Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Morristown', 40.8474418, -74.3828863, ST_GeomFromText('POINT(40.8474418 -74.3828863)', 4326), 40.8321984, -74.4186884, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881687', 'West Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0731521, -74.3104276, ST_GeomFromText('POINT(41.0731521 -74.3104276)', 4326), 41.1036111, -74.3625, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881695', 'West Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Heislerville', 39.1786636, -74.9122524, ST_GeomFromText('POINT(39.1786636 -74.9122524)', 4326), 39.2962259, -74.9179493, '1979-09-08', '2014-05-13', NULL, NULL, NULL),
  ('881708', 'West Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0459466, -74.8082222, ST_GeomFromText('POINT(39.0459466 -74.8082222)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('881709', 'West Jersey Cranberry Meadow', 'Lake', 'New Jersey', 'NJ', 'Burlington', 'Medford Lakes', 39.8215849, -74.8212497, ST_GeomFromText('POINT(39.8215849 -74.8212497)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('881713', 'West Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Pompton Plains', 40.9767037, -74.3652245, ST_GeomFromText('POINT(40.9767037 -74.3652245)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881717', 'West Milford Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Greenwood Lake', 41.1302654, -74.3633014, ST_GeomFromText('POINT(41.1302654 -74.3633014)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881723', 'West Point Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Seaside Park', 39.9642848, -74.0823591, ST_GeomFromText('POINT(39.9642848 -74.0823591)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881724', 'West Pond', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Greenwood Lake', 41.1847297, -74.353592, ST_GeomFromText('POINT(41.1847297 -74.353592)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881726', 'West Sedge', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5676181, -74.280698, ST_GeomFromText('POINT(39.5676181 -74.280698)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881738', 'Westecunk Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.6159518, -74.2640306, ST_GeomFromText('POINT(39.6159518 -74.2640306)', 4326), 39.7223414, -74.3668125, '1979-09-08', NULL, 'Official', 'Board Decision', '1954-01-01'),
  ('881739', 'Western Cross', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Ben Davis Point', 39.3240213, -75.2806109, ST_GeomFromText('POINT(39.3240213 -75.2806109)', 4326), 39.3341169, -75.299314, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1954-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881740', 'Western Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Park Ridge', 41.0145417, -74.0684742, ST_GeomFromText('POINT(41.0145417 -74.0684742)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881748', 'Westons Mill Pond', 'Reservoir', 'New Jersey', 'NJ', 'Middlesex', 'New Brunswick', 40.4668543, -74.4248499, ST_GeomFromText('POINT(40.4668543 -74.4248499)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881757', 'Weyble Pond', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Ramsey', 41.112105, -74.226097, ST_GeomFromText('POINT(41.112105 -74.226097)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881759', 'Whale Beach', 'Beach', 'New Jersey', 'NJ', 'Cape May', 'Sea Isle City', 39.188448, -74.6618262, ST_GeomFromText('POINT(39.188448 -74.6618262)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881761', 'Whale Creek', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'Keyport', 40.4527764, -74.2261916, ST_GeomFromText('POINT(40.4527764 -74.2261916)', 4326), 40.4325389, -74.2470914, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881762', 'Whalebone Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.7231754, -74.1637488, ST_GeomFromText('POINT(39.7231754 -74.1637488)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881767', 'Wheaton Run', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Shiloh', 39.3883568, -75.3329971, ST_GeomFromText('POINT(39.3883568 -75.3329971)', 4326), 39.4158333, -75.3344444, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1897-01-01'),
  ('881771', 'Whippany River', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Caldwell', 40.8460032, -74.341591, ST_GeomFromText('POINT(40.8460032 -74.341591)', 4326), 40.7912318, -74.5846367, '1979-09-08', '2016-09-23', NULL, NULL, NULL),
  ('881773', 'Whirlpool Island', 'Island', 'New Jersey', 'NJ', 'Atlantic', 'Ocean City', 39.3528942, -74.5143195, ST_GeomFromText('POINT(39.3528942 -74.5143195)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881774', 'Whirlpool Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5242845, -74.3332003, ST_GeomFromText('POINT(39.5242845 -74.3332003)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881777', 'White Brook', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Milford', 41.3045385, -74.8026662, ST_GeomFromText('POINT(41.3045385 -74.8026662)', 4326), 41.2744444, -74.8030556, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881779', 'White Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0570578, -74.7968327, ST_GeomFromText('POINT(39.0570578 -74.7968327)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('881780', 'White Island Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0615023, -74.7957216, ST_GeomFromText('POINT(39.0615023 -74.7957216)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('881781', 'White Lake', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Newton East', 41.0872406, -74.6491506, ST_GeomFromText('POINT(41.0872406 -74.6491506)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('881782', 'White Lake', 'Lake', 'New Jersey', 'NJ', 'Warren', 'Blairstown', 40.9998852, -74.9138699, ST_GeomFromText('POINT(40.9998852 -74.9138699)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('881784', 'White Marsh Run', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Millville', 39.3895093, -75.0406176, ST_GeomFromText('POINT(39.3895093 -75.0406176)', 4326), 39.3915038, -75.130738, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881785', 'White Meadow Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.91249, -74.4944957, ST_GeomFromText('POINT(40.91249 -74.4944957)', 4326), 40.923535, -74.5117745, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881786', 'White Meadow Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.9247664, -74.5184085, ST_GeomFromText('POINT(40.9247664 -74.5184085)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881788', 'White Oak Branch', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Five Points', 39.3822723, -74.9415408, ST_GeomFromText('POINT(39.3822723 -74.9415408)', 4326), 39.3925, -74.9475, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881789', 'White Oak Branch', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'Buena', 39.6045475, -74.8920178, ST_GeomFromText('POINT(39.6045475 -74.8920178)', 4326), 39.5874426, -74.9736536, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881791', 'White Rock Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Franklin', 41.0345887, -74.5167466, ST_GeomFromText('POINT(41.0345887 -74.5167466)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881795', 'Whitehall Branch', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Williamstown', 39.6329607, -74.9456406, ST_GeomFromText('POINT(39.6329607 -74.9456406)', 4326), 39.6296121, -75.0157481, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881800', 'Whites Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0157351, -74.1311419, ST_GeomFromText('POINT(41.0157351 -74.1311419)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881801', 'Whites Pond', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Newton West', 41.005314, -74.7502754, ST_GeomFromText('POINT(41.005314 -74.7502754)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('881812', 'Whitney Pond', 'Lake', 'New Jersey', 'NJ', 'Middlesex', 'New Brunswick', 40.4787163, -74.4037616, ST_GeomFromText('POINT(40.4787163 -74.4037616)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881816', 'Whooping John Creek', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Penns Grove', 39.7010496, -75.4961318, ST_GeomFromText('POINT(39.7010496 -75.4961318)', 4326), 39.6937108, -75.4699722, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881819', 'Wickecheoke Creek', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'Stockton', 40.4091746, -74.9864611, ST_GeomFromText('POINT(40.4091746 -74.9864611)', 4326), 40.554825, -74.9123894, '1979-09-08', '2014-12-03', NULL, NULL, NULL),
  ('881821', 'Widgeon Bay', 'Bay', 'New Jersey', 'NJ', 'Atlantic', 'Brigantine Inlet', 39.4362283, -74.3470898, ST_GeomFromText('POINT(39.4362283 -74.3470898)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881822', 'Widgeon Ponds (historical)', 'Lake', 'New Jersey', 'NJ', 'Cumberland', 'Fortescue', 39.1992806, -75.1271277, ST_GeomFromText('POINT(39.1992806 -75.1271277)', 4326), NULL, NULL, '1979-09-08', '2020-03-31', NULL, NULL, NULL),
  ('881823', 'Wigwam Creek', 'Stream', 'New Jersey', 'NJ', 'Atlantic', 'New Gretna', 39.5180252, -74.4360369, ST_GeomFromText('POINT(39.5180252 -74.4360369)', 4326), 39.4965569, -74.4576113, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881826', 'Wild Duck Pond', 'Lake', 'New Jersey', 'NJ', 'Bergen', 'Hackensack', 40.9745718, -74.0945013, ST_GeomFromText('POINT(40.9745718 -74.0945013)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881827', 'Wildcat Branch', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Hammonton', 39.7403945, -74.8287728, ST_GeomFromText('POINT(39.7403945 -74.8287728)', 4326), 39.7366667, -74.8708333, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881828', 'Wildcat Branch', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.116769, -74.5966503, ST_GeomFromText('POINT(41.116769 -74.5966503)', 4326), 41.0839858, -74.6265501, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881836', 'Wildwood Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.8947122, -74.4342296, ST_GeomFromText('POINT(40.8947122 -74.4342296)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881837', 'Lake Wildwood', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Hamburg', 41.152299, -74.5237326, ST_GeomFromText('POINT(41.152299 -74.5237326)', 4326), NULL, NULL, '1979-09-08', '2020-11-09', NULL, NULL, NULL),
  ('881843', 'Williams Island', 'Island', 'New Jersey', 'NJ', 'Atlantic', 'Ocean City', 39.3426162, -74.5318203, ST_GeomFromText('POINT(39.3426162 -74.5318203)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881849', 'Willis Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5805252, -74.3557267, ST_GeomFromText('POINT(39.5805252 -74.3557267)', 4326), 39.5938881, -74.3757201, '1979-09-08', '2020-03-12', NULL, NULL, NULL),
  ('881850', 'Wilsons Run', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Heislerville', 39.1925887, -74.8929191, ST_GeomFromText('POINT(39.1925887 -74.8929191)', 4326), 39.2144444, -74.8808333, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1954-01-01'),
  ('881853', 'Willoughby Brook', 'Stream', 'New Jersey', 'NJ', 'Hunterdon', 'High Bridge', 40.6715085, -74.9164876, ST_GeomFromText('POINT(40.6715085 -74.9164876)', 4326), 40.7102881, -74.8838344, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881855', 'Willow Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Marlboro', 40.3270189, -74.1679233, ST_GeomFromText('POINT(40.3270189 -74.1679233)', 4326), 40.3801086, -74.2026439, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881860', 'Willow Grove Lake', 'Reservoir', 'New Jersey', 'NJ', 'Salem', 'Newfield', 39.5549056, -75.0729169, ST_GeomFromText('POINT(39.5549056 -75.0729169)', 4326), NULL, NULL, '1979-09-08', '2022-08-05', NULL, NULL, NULL),
  ('881862', 'Wills Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Stanhope', 40.9152395, -74.7256565, ST_GeomFromText('POINT(40.9152395 -74.7256565)', 4326), 40.8858333, -74.7, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881865', 'Wilmas Pond', 'Lake', 'New Jersey', 'NJ', 'Cumberland', 'Fortescue', 39.2317809, -75.1587964, ST_GeomFromText('POINT(39.2317809 -75.1587964)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881869', 'Wilson Lake', 'Lake', 'New Jersey', 'NJ', 'Gloucester', 'Pitman East', 39.6614647, -75.0478956, ST_GeomFromText('POINT(39.6614647 -75.0478956)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('881886', 'Winkle Island', 'Island', 'New Jersey', 'NJ', 'Atlantic', 'Ocean City', 39.3484496, -74.5212644, ST_GeomFromText('POINT(39.3484496 -74.5212644)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881887', 'Lake Winona', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.9904541, -74.6124973, ST_GeomFromText('POINT(40.9904541 -74.6124973)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('881888', 'Winter Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'New Gretna', 39.5593416, -74.4148743, ST_GeomFromText('POINT(39.5593416 -74.4148743)', 4326), 39.5656318, -74.3932182, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881890', 'Winters Pond', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0926353, -74.1474541, ST_GeomFromText('POINT(41.0926353 -74.1474541)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881891', 'Wishbone Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0053907, -74.8493355, ST_GeomFromText('POINT(39.0053907 -74.8493355)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('881893', 'Wolf Creek', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Weehawken', 40.8234957, -74.0166226, ST_GeomFromText('POINT(40.8234957 -74.0166226)', 4326), 40.835551, -73.9985418, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881895', 'Wolf Lake', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9594289, -74.6986224, ST_GeomFromText('POINT(40.9594289 -74.6986224)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('881896', 'Wolf Run', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'New Gretna', 39.5838087, -74.4333762, ST_GeomFromText('POINT(39.5838087 -74.4333762)', 4326), 39.5822222, -74.4138889, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881898', 'Wonder Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.0335961, -74.3906883, ST_GeomFromText('POINT(41.0335961 -74.3906883)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881908', 'Woodbridge Creek', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'Perth Amboy', 40.5398272, -74.2545899, ST_GeomFromText('POINT(40.5398272 -74.2545899)', 4326), 40.5922222, -74.2577778, '1979-09-08', NULL, 'Official', 'Board Decision', '1959-01-01'),
  ('881911', 'Woodbury Creek', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Woodbury', 39.8650019, -75.1959229, ST_GeomFromText('POINT(39.8650019 -75.1959229)', 4326), 39.8188889, -75.1258333, '1979-09-08', '2014-07-09', NULL, NULL, NULL),
  ('881917', 'Woodcliff Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Park Ridge', 41.0191089, -74.0451039, ST_GeomFromText('POINT(41.0191089 -74.0451039)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881929', 'Woodland Lake', 'Lake', 'New Jersey', 'NJ', 'Camden', 'Clementon', 39.8279828, -74.954889, ST_GeomFromText('POINT(39.8279828 -74.954889)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('881952', 'Woodsville Brook', 'Stream', 'New Jersey', 'NJ', 'Mercer', 'Hopewell', 40.3839948, -74.8151634, ST_GeomFromText('POINT(40.3839948 -74.8151634)', 4326), 40.3689951, -74.8407196, '1979-09-08', NULL, 'Official', 'Board Decision', '1960-01-01'),
  ('881953', 'Woolsey Brook', 'Stream', 'New Jersey', 'NJ', 'Mercer', 'Pennington', 40.3022353, -74.8322582, ST_GeomFromText('POINT(40.3022353 -74.8322582)', 4326), 40.3229946, -74.8076838, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881954', 'Worlds End Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'New Gretna', 39.5695625, -74.4084813, ST_GeomFromText('POINT(39.5695625 -74.4084813)', 4326), 39.5772617, -74.4051808, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881956', 'Lake Worth', 'Lake', 'New Jersey', 'NJ', 'Camden', 'Clementon', 39.8036715, -74.9676233, ST_GeomFromText('POINT(39.8036715 -74.9676233)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('881957', 'Wrangel Brook', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Toms River', 39.9508637, -74.2094707, ST_GeomFromText('POINT(39.9508637 -74.2094707)', 4326), 39.9720613, -74.3598699, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881958', 'Wrangle Creek', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Forked River', 39.8345081, -74.1533965, ST_GeomFromText('POINT(39.8345081 -74.1533965)', 4326), 39.8407703, -74.1704392, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881959', 'Wreck Pond', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.141039, -74.0352309, ST_GeomFromText('POINT(40.141039 -74.0352309)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', 'Official', 'Board Decision', '1954-01-01'),
  ('881960', 'Wreck Pond Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.1381703, -74.0256922, ST_GeomFromText('POINT(40.1381703 -74.0256922)', 4326), 40.1947222, -74.1175, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881961', 'Wright Point', 'Cape', 'New Jersey', 'NJ', 'Burlington', 'Beverly', 40.0267784, -74.9962811, ST_GeomFromText('POINT(40.0267784 -74.9962811)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881962', 'Wright Pond', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9706668, -74.7046007, ST_GeomFromText('POINT(40.9706668 -74.7046007)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('881968', 'Wyckoff Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0489269, -74.1322904, ST_GeomFromText('POINT(41.0489269 -74.1322904)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881977', 'Yards Creek', 'Stream', 'New Jersey', 'NJ', 'Warren', 'Portland', 40.9540876, -75.0584865, ST_GeomFromText('POINT(40.9540876 -75.0584865)', 4326), 41.0467632, -74.984062, '1979-09-08', '2013-06-05', NULL, NULL, NULL),
  ('881981', 'Yellow Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Marlboro', 40.3073327, -74.1304194, ST_GeomFromText('POINT(40.3073327 -74.1304194)', 4326), 40.2760592, -74.2556866, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1954-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('881982', 'Yellow Dam Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Brookville', 39.7786738, -74.3651462, ST_GeomFromText('POINT(39.7786738 -74.3651462)', 4326), 39.8424673, -74.4136834, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('881985', 'York Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Wildwood', 38.9805042, -74.8717283, ST_GeomFromText('POINT(38.9805042 -74.8717283)', 4326), 38.9859921, -74.8822713, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1944-01-01'),
  ('881989', 'Zabriskies Pond', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Hackensack', 40.91121, -74.0401401, ST_GeomFromText('POINT(40.91121 -74.0401401)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('881992', 'Zeliff Pond', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0449527, -74.3660157, ST_GeomFromText('POINT(41.0449527 -74.3660157)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('881999', 'Acid Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0048402, -74.2819467, ST_GeomFromText('POINT(41.0048402 -74.2819467)', 4326), 41.0305556, -74.2722222, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('882000', 'Adler Pool', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Ramsey', 41.1117624, -74.2354251, ST_GeomFromText('POINT(41.1117624 -74.2354251)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('882002', 'Beaver Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0076456, -74.3367898, ST_GeomFromText('POINT(41.0076456 -74.3367898)', 4326), 41.0227778, -74.3369444, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('882004', 'Coles Pond', 'Lake', 'New Jersey', 'NJ', 'Bergen', 'Park Ridge', 41.0063147, -74.1211413, ST_GeomFromText('POINT(41.0063147 -74.1211413)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('882006', 'Echo Lake', 'Lake', 'New Jersey', 'NJ', 'Union', 'Roselle', 40.6733787, -74.3449353, ST_GeomFromText('POINT(40.6733787 -74.3449353)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('882007', 'Green Swamp Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0550967, -74.2801486, ST_GeomFromText('POINT(41.0550967 -74.2801486)', 4326), 41.0505556, -74.2697222, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('882008', 'Hands Lake', 'Lake', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0415497, -74.1866077, ST_GeomFromText('POINT(41.0415497 -74.1866077)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('882010', 'Hartung Lake', 'Lake', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0111228, -74.1747725, ST_GeomFromText('POINT(41.0111228 -74.1747725)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('882012', 'Hillsdale Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Park Ridge', 41.0050974, -74.0070831, ST_GeomFromText('POINT(41.0050974 -74.0070831)', 4326), 41.0413889, -74.0208333, '1979-09-08', NULL, NULL, NULL, NULL),
  ('882013', 'Holdrum Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Park Ridge', 41.0078824, -74.0195596, ST_GeomFromText('POINT(41.0078824 -74.0195596)', 4326), 41.0361111, -74.0258333, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('882014', 'Irish Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0063633, -74.3219277, ST_GeomFromText('POINT(41.0063633 -74.3219277)', 4326), 41.0084512, -74.3285179, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('882015', 'Kings Pond', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0105286, -74.2070893, ST_GeomFromText('POINT(41.0105286 -74.2070893)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('882017', 'Little Pond Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Wanaque', 41.017498, -74.2598212, ST_GeomFromText('POINT(41.017498 -74.2598212)', 4326), 41.005666, -74.2525578, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('882018', 'MacMillan Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0776811, -74.1959202, ST_GeomFromText('POINT(41.0776811 -74.1959202)', 4326), 41.0944728, -74.2064238, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('882019', 'Moores Pond', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Park Ridge', 41.0481466, -74.1000489, ST_GeomFromText('POINT(41.0481466 -74.1000489)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('882020', 'Moss Point', 'Cape', 'New Jersey', 'NJ', 'Atlantic', 'New Gretna', 39.5581735, -74.4495942, ST_GeomFromText('POINT(39.5581735 -74.4495942)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1938-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('882021', 'Mountain Pond', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Stanhope', 40.8967172, -74.6626401, ST_GeomFromText('POINT(40.8967172 -74.6626401)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('882023', 'Pleasant Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Park Ridge', 41.0499246, -74.1004819, ST_GeomFromText('POINT(41.0499246 -74.1004819)', 4326), 41.0801437, -74.113512, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('882024', 'Scarletelli Pond', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.070051, -74.2801855, ST_GeomFromText('POINT(41.070051 -74.2801855)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('882025', 'Slippery Rock Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.9117471, -74.1898316, ST_GeomFromText('POINT(40.9117471 -74.1898316)', 4326), 40.9036852, -74.1904807, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('882026', 'Spring Lake Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0236701, -74.1687226, ST_GeomFromText('POINT(41.0236701 -74.1687226)', 4326), 41.0120184, -74.1740187, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('882028', 'Lake Tappan', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Nyack', 41.0323864, -73.9916654, ST_GeomFromText('POINT(41.0323864 -73.9916654)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', 'Official', 'Board Decision', '1967-01-01'),
  ('882029', 'Upper Lake Mohawk', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Newton East', 41.032745, -74.659695, ST_GeomFromText('POINT(41.032745 -74.659695)', 4326), NULL, NULL, '1979-09-08', '2013-08-14', NULL, NULL, NULL),
  ('882030', 'Valentine Pond', 'Lake', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0235421, -74.2000856, ST_GeomFromText('POINT(41.0235421 -74.2000856)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('882031', 'West Branch Saddle River', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Park Ridge', 41.0645617, -74.0930736, ST_GeomFromText('POINT(41.0645617 -74.0930736)', 4326), 41.1144522, -74.0934357, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('882032', 'Tarkiln Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Lakewood', 40.1210585, -74.169184, ST_GeomFromText('POINT(40.1210585 -74.169184)', 4326), 40.134281, -74.1881981, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1980-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('882033', 'East Fork Mingamahone Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.2384244, -74.1613519, ST_GeomFromText('POINT(40.2384244 -74.1613519)', 4326), 40.2562226, -74.1523645, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-05-08'),
  ('882034', 'Chadwick Beach Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Seaside Park', 39.995951, -74.0704144, ST_GeomFromText('POINT(39.995951 -74.0704144)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('882037', 'Marsh Baywood', 'Swamp', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0273392, -74.0843042, ST_GeomFromText('POINT(40.0273392 -74.0843042)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('882038', 'Middle Sedge', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Seaside Park', 39.995951, -74.0765258, ST_GeomFromText('POINT(39.995951 -74.0765258)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('882285', 'Trowbridge Mountain', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Mendham', 40.8372017, -74.5382545, ST_GeomFromText('POINT(40.8372017 -74.5382545)', 4326), NULL, NULL, '1979-09-08', '2023-07-22', NULL, NULL, NULL),
  ('882286', 'Randall Hill', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.8843385, -74.5929948, ST_GeomFromText('POINT(40.8843385 -74.5929948)', 4326), NULL, NULL, '1979-09-08', '2021-11-20', NULL, NULL, NULL),
  ('882290', 'Silver Lake', 'Reservoir', 'New Jersey', 'NJ', 'Cumberland', 'Bridgeton', 39.4740639, -75.2444133, ST_GeomFromText('POINT(39.4740639 -75.2444133)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('882291', 'Phillips Creek', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Canton', 39.387994, -75.4083672, ST_GeomFromText('POINT(39.387994 -75.4083672)', 4326), 39.4078649, -75.3852224, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('882292', 'Long Pond', 'Lake', 'New Jersey', 'NJ', 'Salem', 'Canton', 39.4575041, -75.4758611, ST_GeomFromText('POINT(39.4575041 -75.4758611)', 4326), NULL, NULL, '1979-09-08', '2020-03-30', NULL, NULL, NULL),
  ('882294', 'Stoney Island Meadow', 'Swamp', 'New Jersey', 'NJ', 'Salem', 'Salem', 39.5931685, -75.4879763, ST_GeomFromText('POINT(39.5931685 -75.4879763)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('882318', 'Great Swan Bay', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'Seaside Park', 39.9806735, -74.0759701, ST_GeomFromText('POINT(39.9806735 -74.0759701)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('882399', 'Watsons Mill Pond', 'Reservoir', 'New Jersey', 'NJ', 'Salem', 'Alloway', 39.5762352, -75.2855648, ST_GeomFromText('POINT(39.5762352 -75.2855648)', 4326), NULL, NULL, '1979-09-08', '2022-08-05', NULL, NULL, NULL),
  ('882403', 'Stewart Lake', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Woodbury', 39.8381819, -75.1401661, ST_GeomFromText('POINT(39.8381819 -75.1401661)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('882405', 'Fayson Lakes', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Pompton Plains', 40.972792, -74.3612905, ST_GeomFromText('POINT(40.972792 -74.3612905)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('882412', 'Daretown Lake', 'Reservoir', 'New Jersey', 'NJ', 'Salem', 'Alloway', 39.6109878, -75.2512221, ST_GeomFromText('POINT(39.6109878 -75.2512221)', 4326), NULL, NULL, '1979-09-08', '2022-08-05', NULL, NULL, NULL),
  ('882413', 'Wentzell-Wilson Pond', 'Reservoir', 'New Jersey', 'NJ', 'Salem', 'Alloway', 39.5828679, -75.2591971, ST_GeomFromText('POINT(39.5828679 -75.2591971)', 4326), NULL, NULL, '1979-09-08', '2018-12-20', NULL, NULL, NULL),
  ('882414', 'Camp Marudy Lake', 'Reservoir', 'New Jersey', 'NJ', 'Hunterdon', 'Frenchtown', 40.6018723, -75.0053171, ST_GeomFromText('POINT(40.6018723 -75.0053171)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('882415', 'Beisler Lake', 'Reservoir', 'New Jersey', 'NJ', 'Hunterdon', 'Hackettstown', 40.7574092, -74.8632711, ST_GeomFromText('POINT(40.7574092 -74.8632711)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('882416', 'George Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Hackettstown', 40.8000609, -74.7852142, ST_GeomFromText('POINT(40.8000609 -74.7852142)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('882417', 'Anchor Lake Two', 'Reservoir', 'New Jersey', 'NJ', 'Camden', 'Hammonton', 39.6876362, -74.8376812, ST_GeomFromText('POINT(39.6876362 -74.8376812)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('882418', 'Anchor Lake One', 'Reservoir', 'New Jersey', 'NJ', 'Camden', 'Hammonton', 39.6877869, -74.8435347, ST_GeomFromText('POINT(39.6877869 -74.8435347)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('882419', 'Harry Wrights Lake', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'Keswick Grove', 39.9303486, -74.3583744, ST_GeomFromText('POINT(39.9303486 -74.3583744)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('882420', 'Whitehead Pond', 'Reservoir', 'New Jersey', 'NJ', 'Mercer', 'Trenton East', 40.2478864, -74.7268269, ST_GeomFromText('POINT(40.2478864 -74.7268269)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('882421', 'Willever Lake', 'Reservoir', 'New Jersey', 'NJ', 'Warren', 'Washington', 40.7934627, -74.9553826, ST_GeomFromText('POINT(40.7934627 -74.9553826)', 4326), NULL, NULL, '1979-09-08', '2018-12-13', NULL, NULL, NULL),
  ('882422', 'Hanover Pond', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'Whiting', 39.9766601, -74.4664919, ST_GeomFromText('POINT(39.9766601 -74.4664919)', 4326), NULL, NULL, '1979-09-08', '2018-12-15', NULL, NULL, NULL),
  ('882426', 'Atlantic Highlands Yacht Harbor', 'Bay', 'New Jersey', 'NJ', 'Monmouth', 'Sandy Hook West', 40.4173307, -74.0337505, ST_GeomFromText('POINT(40.4173307 -74.0337505)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('882427', 'Barley Point', 'Cape', 'New Jersey', 'NJ', 'Monmouth', 'Sandy Hook East', 40.3809427, -73.9937492, ST_GeomFromText('POINT(40.3809427 -73.9937492)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('882430', 'Blackberry Bay', 'Bay', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch West', 40.3262217, -74.0106936, ST_GeomFromText('POINT(40.3262217 -74.0106936)', 4326), NULL, NULL, '1981-07-01', NULL, 'Official', 'Board Decision', '1990-01-01'),
  ('882431', 'Blossom Cove', 'Bay', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch West', 40.3609429, -74.0665288, ST_GeomFromText('POINT(40.3609429 -74.0665288)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('882433', 'Branchport Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch East', 40.3309438, -73.9970822, ST_GeomFromText('POINT(40.3309438 -73.9970822)', 4326), 40.3057301, -74.0100364, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('882439', 'Claypit Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Sandy Hook West', 40.386776, -74.0123608, ST_GeomFromText('POINT(40.386776 -74.0123608)', 4326), 40.3905556, -74.0472222, '1979-09-08', '2014-07-22', NULL, NULL, NULL),
  ('882440', 'Compton Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Sandy Hook West', 40.435589, -74.08198, ST_GeomFromText('POINT(40.435589 -74.08198)', 4326), 40.4163265, -74.1017425, '1979-09-08', '2014-07-22', NULL, NULL, NULL),
  ('882443', 'Cranberry Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch West', 40.2734449, -74.0440276, ST_GeomFromText('POINT(40.2734449 -74.0440276)', 4326), 40.2716667, -74.0680556, '1979-09-08', NULL, NULL, NULL, NULL),
  ('882461', 'Franklin Lake', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch West', 40.2959788, -74.0206855, ST_GeomFromText('POINT(40.2959788 -74.0206855)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('882463', 'Garrett Hill', 'Summit', 'New Jersey', 'NJ', 'Monmouth', 'Sandy Hook West', 40.4076559, -74.0782087, ST_GeomFromText('POINT(40.4076559 -74.0782087)', 4326), NULL, NULL, '1979-09-08', '2018-08-01', 'Official', 'Board Decision', '1901-02-06'),
  ('882465', 'Gooseneck Point', 'Cape', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch West', 40.3292772, -74.0112493, ST_GeomFromText('POINT(40.3292772 -74.0112493)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('882467', 'Gunning Island', 'Island', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch East', 40.3559432, -73.9804152, ST_GeomFromText('POINT(40.3559432 -73.9804152)', 4326), NULL, NULL, '1979-09-08', '2016-04-20', NULL, NULL, NULL),
  ('882470', 'Haskell Pond', 'Lake', 'New Jersey', 'NJ', 'Monmouth', 'Sandy Hook West', 40.385673, -74.0679944, ST_GeomFromText('POINT(40.385673 -74.0679944)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('882474', 'Highlands Beach', 'Beach', 'New Jersey', 'NJ', 'Monmouth', 'Sandy Hook East', 40.3942758, -73.975971, ST_GeomFromText('POINT(40.3942758 -73.975971)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('882476', 'Hockhockson Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch West', 40.2959674, -74.1113073, ST_GeomFromText('POINT(40.2959674 -74.1113073)', 4326), 40.2512228, -74.1390307, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1958-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('882477', 'Horseneck Point', 'Cape', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch West', 40.322055, -74.0223607, ST_GeomFromText('POINT(40.322055 -74.0223607)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('882478', 'Horseshoe Cove', 'Bay', 'New Jersey', 'NJ', 'Monmouth', 'Sandy Hook East', 40.4431637, -73.9968052, ST_GeomFromText('POINT(40.4431637 -73.9968052)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('882480', 'Husky Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch West', 40.3141885, -74.0358353, ST_GeomFromText('POINT(40.3141885 -74.0358353)', 4326), 40.2955071, -74.0604848, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('882481', 'Ideal Beach', 'Beach', 'New Jersey', 'NJ', 'Monmouth', 'Sandy Hook West', 40.443441, -74.1065303, ST_GeomFromText('POINT(40.443441 -74.1065303)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('882483', 'Jones Point', 'Cape', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch West', 40.3667762, -74.0631954, ST_GeomFromText('POINT(40.3667762 -74.0631954)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('882486', 'Leonardo Harbor', 'Bay', 'New Jersey', 'NJ', 'Monmouth', 'Sandy Hook West', 40.4214972, -74.0604179, ST_GeomFromText('POINT(40.4214972 -74.0604179)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('882488', 'Lewis Point', 'Cape', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch West', 40.3676095, -74.0448616, ST_GeomFromText('POINT(40.3676095 -74.0448616)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('882491', 'Little Silver Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch West', 40.339277, -74.0104159, ST_GeomFromText('POINT(40.339277 -74.0104159)', 4326), 40.3319427, -74.0713182, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('882495', 'Locust Point', 'Cape', 'New Jersey', 'NJ', 'Monmouth', 'Sandy Hook West', 40.3837204, -74.0170831, ST_GeomFromText('POINT(40.3837204 -74.0170831)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('882501', 'Manahassett Creek', 'Bay', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch East', 40.3309438, -73.9968044, ST_GeomFromText('POINT(40.3309438 -73.9968044)', 4326), NULL, NULL, '1981-07-01', NULL, 'Official', 'Board Decision', '1990-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('882502', 'Many Mind Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Sandy Hook West', 40.4172975, -74.037749, ST_GeomFromText('POINT(40.4172975 -74.037749)', 4326), 40.4060171, -74.0245485, '1979-09-08', '2014-07-22', NULL, NULL, NULL),
  ('882503', 'Marion Lake', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch West', 40.3684399, -74.0670726, ST_GeomFromText('POINT(40.3684399 -74.0670726)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('882504', 'McClees Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch West', 40.3732936, -74.0445471, ST_GeomFromText('POINT(40.3732936 -74.0445471)', 4326), 40.380388, -74.1060448, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('882506', 'Mill Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Sandy Hook West', 40.4161263, -74.1018498, ST_GeomFromText('POINT(40.4161263 -74.1018498)', 4326), 40.395, -74.1163889, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('882507', 'Mohawk Pond', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch West', 40.3388455, -74.069793, ST_GeomFromText('POINT(40.3388455 -74.069793)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('882513', 'Mount Pleasant Hills', 'Range', 'New Jersey', 'NJ', 'Monmouth', 'Keyport', 40.3910652, -74.1846036, ST_GeomFromText('POINT(40.3910652 -74.1846036)', 4326), NULL, NULL, '1979-09-08', '2022-08-12', NULL, NULL, NULL),
  ('882516', 'Navesink Beach', 'Beach', 'New Jersey', 'NJ', 'Monmouth', 'Sandy Hook East', 40.3895536, -73.9754153, ST_GeomFromText('POINT(40.3895536 -73.9754153)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1892-01-01'),
  ('882518', 'Navesink River', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Sandy Hook East', 40.3834426, -73.980971, ST_GeomFromText('POINT(40.3834426 -73.980971)', 4326), 40.3521696, -74.0796947, '1979-09-08', '2016-10-19', 'Official', 'Board Decision', '1950-01-01'),
  ('882523', 'Nut Swamp Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch West', 40.3528875, -74.0815292, ST_GeomFromText('POINT(40.3528875 -74.0815292)', 4326), 40.3723945, -74.1493464, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('882530', 'Oceanport Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch West', 40.3215345, -74.0206861, ST_GeomFromText('POINT(40.3215345 -74.0206861)', 4326), 40.314164, -74.0357387, '1979-09-08', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('882533', 'Oyster Bay', 'Bay', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch East', 40.3614987, -73.9834709, ST_GeomFromText('POINT(40.3614987 -73.9834709)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('882534', 'Parkers Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch West', 40.3248328, -74.0195828, ST_GeomFromText('POINT(40.3248328 -74.0195828)', 4326), 40.3175, -74.0466667, '1979-09-08', '2016-10-19', NULL, NULL, NULL),
  ('882535', 'Parkers Creek Branch', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch West', 40.3166284, -74.0478221, ST_GeomFromText('POINT(40.3166284 -74.0478221)', 4326), 40.3108282, -74.0891039, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('882536', 'Pews Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Sandy Hook West', 40.4428319, -74.1034913, ST_GeomFromText('POINT(40.4428319 -74.1034913)', 4326), 40.4235654, -74.1222748, '1979-09-08', '2016-10-19', NULL, NULL, NULL),
  ('882537', 'Pine Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch West', 40.3252072, -74.0958792, ST_GeomFromText('POINT(40.3252072 -74.0958792)', 4326), 40.2513889, -74.105, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('882538', 'Pleasure Bay', 'Bay', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch West', 40.3323327, -73.9998601, ST_GeomFromText('POINT(40.3323327 -73.9998601)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('882539', 'Plum Island', 'Island', 'New Jersey', 'NJ', 'Monmouth', 'Sandy Hook East', 40.4070532, -73.9820824, ST_GeomFromText('POINT(40.4070532 -73.9820824)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('882540', 'Poplar Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch East', 40.2561411, -73.9893258, ST_GeomFromText('POINT(40.2561411 -73.9893258)', 4326), 40.2521494, -74.0591383, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1954-01-01'),
  ('882541', 'Poricy Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch West', 40.3550925, -74.0801454, ST_GeomFromText('POINT(40.3550925 -74.0801454)', 4326), 40.3715199, -74.1375071, '1979-09-08', '2014-11-19', NULL, NULL, NULL),
  ('882542', 'Poricy Pond', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch West', 40.3606787, -74.0890689, ST_GeomFromText('POINT(40.3606787 -74.0890689)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('882546', 'Raccoon Island', 'Island', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch East', 40.3376103, -73.9915265, ST_GeomFromText('POINT(40.3376103 -73.9915265)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('882562', 'Sandy Hook', 'Cape', 'New Jersey', 'NJ', 'Monmouth', 'Sandy Hook East', 40.4431637, -73.9898606, ST_GeomFromText('POINT(40.4431637 -73.9898606)', 4326), NULL, NULL, '1979-09-08', '2014-07-22', NULL, NULL, NULL),
  ('882563', 'Sandy Hook Bay', 'Bay', 'New Jersey', 'NJ', 'Monmouth', 'Sandy Hook West', 40.4531632, -74.0637515, ST_GeomFromText('POINT(40.4531632 -74.0637515)', 4326), NULL, NULL, '1979-09-08', '2016-10-19', NULL, NULL, NULL),
  ('882568', 'Sedge Island', 'Island', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch East', 40.3512211, -73.9798597, ST_GeomFromText('POINT(40.3512211 -73.9798597)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('882569', 'Belford Harbor', 'Bay', 'New Jersey', 'NJ', 'Monmouth', 'Sandy Hook West', 40.4348301, -74.0812519, ST_GeomFromText('POINT(40.4348301 -74.0812519)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1980-01-01'),
  ('882571', 'Shrewsbury River', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Sandy Hook West', 40.4187197, -74.0037497, ST_GeomFromText('POINT(40.4187197 -74.0037497)', 4326), 40.3248328, -74.0195828, '1979-09-08', NULL, 'Official', 'Board Decision', '1937-01-01'),
  ('882573', 'Simmons Pond', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch West', 40.3321145, -74.0715941, ST_GeomFromText('POINT(40.3321145 -74.0715941)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', NULL, NULL, NULL),
  ('882574', 'Spermaceti Cove', 'Bay', 'New Jersey', 'NJ', 'Monmouth', 'Sandy Hook East', 40.4242752, -73.9890271, ST_GeomFromText('POINT(40.4242752 -73.9890271)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('882577', 'Swimming River', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch West', 40.3518916, -74.0793514, ST_GeomFromText('POINT(40.3518916 -74.0793514)', 4326), 40.3203239, -74.1169667, '1979-09-08', '2013-06-11', 'Official', 'Board Decision', '1954-01-01'),
  ('882578', 'Swimming River Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Marlboro', 40.3096559, -74.1268235, ST_GeomFromText('POINT(40.3096559 -74.1268235)', 4326), NULL, NULL, '1979-09-08', '2020-08-12', 'Official', 'Board Decision', '1954-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('882579', 'Lake Takanassee', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch East', 40.2769499, -73.9880831, ST_GeomFromText('POINT(40.2769499 -73.9880831)', 4326), NULL, NULL, '1979-09-08', '2018-12-18', NULL, NULL, NULL),
  ('882582', 'Town Brook', 'Stream', 'New Jersey', 'NJ', 'Union', 'Sandy Hook West', 40.4162244, -74.1016245, ST_GeomFromText('POINT(40.4162244 -74.1016245)', 4326), 40.3858636, -74.1269445, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('882584', 'Troutmans Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch East', 40.3176571, -73.9952159, ST_GeomFromText('POINT(40.3176571 -73.9952159)', 4326), 40.3069604, -73.9833015, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('882585', 'Turtle Mill Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch West', 40.3057454, -74.0100646, ST_GeomFromText('POINT(40.3057454 -74.0100646)', 4326), 40.2950754, -74.0465105, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('882587', 'Wagner Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Sandy Hook West', 40.4189873, -74.0480621, ST_GeomFromText('POINT(40.4189873 -74.0480621)', 4326), 40.411944, -74.0524006, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('882588', 'Wampum Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch West', 40.3138276, -74.0508637, ST_GeomFromText('POINT(40.3138276 -74.0508637)', 4326), 40.2883322, -74.0828034, '1979-09-08', '2014-12-03', NULL, NULL, NULL),
  ('882589', 'Ware Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Sandy Hook West', 40.4299786, -74.0719324, ST_GeomFromText('POINT(40.4299786 -74.0719324)', 4326), 40.4126302, -74.0705109, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('882596', 'Whale Pond Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch East', 40.2760091, -73.9832734, ST_GeomFromText('POINT(40.2760091 -73.9832734)', 4326), 40.2631673, -74.0581947, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('882611', 'Guyon Point', 'Cape', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch West', 40.3714983, -74.0526397, ST_GeomFromText('POINT(40.3714983 -74.0526397)', 4326), NULL, NULL, '1992-07-01', NULL, NULL, NULL, NULL),
  ('882618', 'Anderson Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Yonkers', 40.9823279, -73.953352, ST_GeomFromText('POINT(40.9823279 -73.953352)', 4326), 40.9614932, -73.9287615, '1981-07-01', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('882620', 'Beach Creek Meadow', 'Swamp', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0237243, -74.7968328, ST_GeomFromText('POINT(39.0237243 -74.7968328)', 4326), NULL, NULL, '1981-07-01', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('882621', 'Beach Creek Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.005113, -74.8151672, ST_GeomFromText('POINT(39.005113 -74.8151672)', 4326), NULL, NULL, '1981-07-01', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('882622', 'Beaverdam Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Hackensack', 40.9293279, -74.0926445, ST_GeomFromText('POINT(40.9293279 -74.0926445)', 4326), 40.9300504, -74.1046286, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('882623', 'Behnke Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Hackensack', 40.9288669, -74.0529102, ST_GeomFromText('POINT(40.9288669 -74.0529102)', 4326), 40.9648766, -74.041024, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('882626', 'Black River Pond', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Chester', 40.8626833, -74.6267343, ST_GeomFromText('POINT(40.8626833 -74.6267343)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('882629', 'Bridge Pond', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.9395427, -74.1837559, ST_GeomFromText('POINT(40.9395427 -74.1837559)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('882631', 'Butchers Pond', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.8939186, -74.1889167, ST_GeomFromText('POINT(40.8939186 -74.1889167)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('882632', 'Mount Cecchino', 'Summit', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.9654786, -74.1990755, ST_GeomFromText('POINT(40.9654786 -74.1990755)', 4326), NULL, NULL, '1981-07-01', '2021-11-20', 'Official', 'Board Decision', '1978-01-01'),
  ('882633', 'Cedar Bonnet', 'Swamp', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.652897, -74.1954167, ST_GeomFromText('POINT(39.652897 -74.1954167)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('882634', 'Cedar Bonnet Islands', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.652897, -74.1954167, ST_GeomFromText('POINT(39.652897 -74.1954167)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('882636', 'Champagne Island', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0106687, -74.789888, ST_GeomFromText('POINT(39.0106687 -74.789888)', 4326), NULL, NULL, '1981-07-01', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('882637', 'Church Run', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Bridgeport', 39.7502699, -75.3050579, ST_GeomFromText('POINT(39.7502699 -75.3050579)', 4326), 39.7297222, -75.3144444, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('882638', 'Coalberg Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Hackensack', 40.9056415, -74.0829992, ST_GeomFromText('POINT(40.9056415 -74.0829992)', 4326), 40.9033284, -74.0913892, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('882640', 'Country Club Ponds', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.9487037, -74.2355976, ST_GeomFromText('POINT(40.9487037 -74.2355976)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('882641', 'Cox Hall Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Cape May', 38.9964342, -74.9558407, ST_GeomFromText('POINT(38.9964342 -74.9558407)', 4326), 39.0064831, -74.934889, '1981-07-01', '2011-10-03', 'Official', 'Board Decision', '1943-01-01'),
  ('882642', 'Crooked Thorofare Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0584467, -74.8037776, ST_GeomFromText('POINT(39.0584467 -74.8037776)', 4326), NULL, NULL, '1981-07-01', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('882648', 'Echo Lake Channel', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.028745, -74.4193053, ST_GeomFromText('POINT(41.028745 -74.4193053)', 4326), 41.0473172, -74.4123343, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('882649', 'Five Mile Beach', 'Beach', 'New Jersey', 'NJ', 'Cape May', 'Wildwood', 38.9890019, -74.8046111, ST_GeomFromText('POINT(38.9890019 -74.8046111)', 4326), NULL, NULL, '1981-07-01', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('882650', 'Fleischer Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Hackensack', 40.8763686, -74.1155854, ST_GeomFromText('POINT(40.8763686 -74.1155854)', 4326), 40.9160422, -74.1139197, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('882651', 'Folly Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Wildwood', 38.9815017, -74.863503, ST_GeomFromText('POINT(38.9815017 -74.863503)', 4326), NULL, NULL, '1981-07-01', NULL, 'Official', 'Board Decision', '1944-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('882652', 'Genaders Pond', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.0503384, -74.3841204, ST_GeomFromText('POINT(41.0503384 -74.3841204)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('882655', 'Haworth Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Yonkers', 40.9690629, -73.9981945, ST_GeomFromText('POINT(40.9690629 -73.9981945)', 4326), 40.9535214, -73.9990246, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('882657', 'Hinchman Pond', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.9570425, -74.2240349, ST_GeomFromText('POINT(40.9570425 -74.2240349)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('882658', 'Hines Pond', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.1234728, -74.3802948, ST_GeomFromText('POINT(41.1234728 -74.3802948)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('882659', 'Hughes Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Orange', 40.8494603, -74.1375003, ST_GeomFromText('POINT(40.8494603 -74.1375003)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('882660', 'Island Beach', 'Beach', 'New Jersey', 'NJ', 'Ocean', 'Barnegat Light', 39.8334528, -74.0829131, ST_GeomFromText('POINT(39.8334528 -74.0829131)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('882661', 'Jennings Creek', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Greenwood Lake', 41.1624128, -74.3140233, ST_GeomFromText('POINT(41.1624128 -74.3140233)', 4326), 41.2008166, -74.2840684, '1981-07-01', '2015-05-01', NULL, NULL, NULL),
  ('882662', 'Kay Branch', 'Stream', 'New Jersey', 'NJ', 'Camden', 'Williamstown', 39.7310446, -74.9501681, ST_GeomFromText('POINT(39.7310446 -74.9501681)', 4326), 39.7393034, -74.9368215, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1897-01-01'),
  ('882663', 'Kimbles Beach', 'Beach', 'New Jersey', 'NJ', 'Cape May', 'Rio Grande', 39.1056691, -74.8957266, ST_GeomFromText('POINT(39.1056691 -74.8957266)', 4326), NULL, NULL, '1981-07-01', NULL, 'Official', 'Board Decision', '1943-01-01'),
  ('882665', 'Little Diamond Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Paterson', 40.9398353, -74.1428286, ST_GeomFromText('POINT(40.9398353 -74.1428286)', 4326), 40.9497606, -74.1226101, '1981-07-01', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('882666', 'Lotz Pond', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.9498204, -74.1840336, ST_GeomFromText('POINT(40.9498204 -74.1840336)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('882667', 'Luppatatong Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Keyport', 40.4359407, -74.2073663, ST_GeomFromText('POINT(40.4359407 -74.2073663)', 4326), 40.3942751, -74.1879212, '1981-07-01', '2015-09-10', 'Official', 'Board Decision', '1901-01-01'),
  ('882668', 'Matawan Point', 'Cape', 'New Jersey', 'NJ', 'Monmouth', 'Keyport', 40.4412184, -74.2084774, ST_GeomFromText('POINT(40.4412184 -74.2084774)', 4326), NULL, NULL, '1981-07-01', '2011-07-21', 'Official', 'Board Decision', '1896-03-03'),
  ('882670', 'Matthews Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.032735, -74.3847585, ST_GeomFromText('POINT(41.032735 -74.3847585)', 4326), 41.0393063, -74.393363, '1981-07-01', '2013-06-05', NULL, NULL, NULL),
  ('882671', 'Metzler Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Yonkers', 40.8891523, -73.9842564, ST_GeomFromText('POINT(40.8891523 -73.9842564)', 4326), 40.9305556, -73.9816667, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('882672', 'Miami Beach', 'Beach', 'New Jersey', 'NJ', 'Cape May', 'Rio Grande', 39.0306685, -74.9398958, ST_GeomFromText('POINT(39.0306685 -74.9398958)', 4326), NULL, NULL, '1981-07-01', NULL, 'Official', 'Board Decision', '1943-01-01'),
  ('882674', 'Mud Creek Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0034463, -74.817945, ST_GeomFromText('POINT(39.0034463 -74.817945)', 4326), NULL, NULL, '1981-07-01', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('882675', 'Mud Island', 'Island', 'New Jersey', 'NJ', 'Cape May', 'Wildwood', 38.9884462, -74.8321125, ST_GeomFromText('POINT(38.9884462 -74.8321125)', 4326), NULL, NULL, '1981-07-01', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('882676', 'Highlands of Navesink', 'Summit', 'New Jersey', 'NJ', 'Monmouth', 'Sandy Hook West', 40.4005714, -74.000989, ST_GeomFromText('POINT(40.4005714 -74.000989)', 4326), NULL, NULL, '1981-07-01', '2018-08-01', NULL, NULL, NULL),
  ('882677', 'North Basin', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0640025, -74.7540527, ST_GeomFromText('POINT(39.0640025 -74.7540527)', 4326), NULL, NULL, '1981-07-01', NULL, 'Official', 'Board Decision', '1944-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('882682', 'Pettet Pond', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.1145311, -74.3890139, ST_GeomFromText('POINT(41.1145311 -74.3890139)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('882683', 'Plog Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Orange', 40.8728771, -74.1612552, ST_GeomFromText('POINT(40.8728771 -74.1612552)', 4326), 40.8680556, -74.1680556, '1981-07-01', NULL, NULL, NULL, NULL),
  ('882685', 'Rail Swamp Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'West Creek', 39.6517973, -74.3109119, ST_GeomFromText('POINT(39.6517973 -74.3109119)', 4326), 39.6541667, -74.3463889, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('882686', 'Reflection Lake', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.1179884, -74.3823621, ST_GeomFromText('POINT(41.1179884 -74.3823621)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('882689', 'Seven Mile Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0217799, -74.7834988, ST_GeomFromText('POINT(39.0217799 -74.7834988)', 4326), NULL, NULL, '1981-07-01', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('882690', 'Singac Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Pompton Plains', 40.885099, -74.2607028, ST_GeomFromText('POINT(40.885099 -74.2607028)', 4326), 40.9095431, -74.2468135, '1981-07-01', '2014-12-03', NULL, NULL, NULL),
  ('882692', 'Slab Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0675658, -74.8138073, ST_GeomFromText('POINT(39.0675658 -74.8138073)', 4326), 39.070754, -74.8173934, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1944-01-01'),
  ('882694', 'Southwest Cove Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Wildwood', 38.9644981, -74.8742934, ST_GeomFromText('POINT(38.9644981 -74.8742934)', 4326), NULL, NULL, '1981-07-01', '2015-02-16', 'Official', 'Board Decision', '1944-01-01'),
  ('882696', 'Swins Ponds', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.9257709, -74.2329798, ST_GeomFromText('POINT(40.9257709 -74.2329798)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('882697', 'Tuckers Island', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.5126177, -74.2884761, ST_GeomFromText('POINT(39.5126177 -74.2884761)', 4326), NULL, NULL, '1981-07-01', '2013-12-04', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('882698', 'Van Winkles Pond', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.9631619, -74.1589161, ST_GeomFromText('POINT(40.9631619 -74.1589161)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('882700', 'Warners Mill Pond', 'Reservoir', 'New Jersey', 'NJ', 'Atlantic', 'Tuckahoe', 39.3155926, -74.806595, ST_GeomFromText('POINT(39.3155926 -74.806595)', 4326), NULL, NULL, '1981-07-01', '2018-12-17', NULL, NULL, NULL),
  ('882701', 'Washington Rock', 'Pillar', 'New Jersey', 'NJ', 'Somerset', 'Plainfield', 40.6117692, -74.4718202, ST_GeomFromText('POINT(40.6117692 -74.4718202)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('882702', 'Wells Mills Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'Brookville', 39.7925824, -74.2800505, ST_GeomFromText('POINT(39.7925824 -74.2800505)', 4326), NULL, NULL, '1981-07-01', '2022-08-04', NULL, NULL, NULL),
  ('882703', 'Wissahicken Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Pompton Plains', 40.9655894, -74.279652, ST_GeomFromText('POINT(40.9655894 -74.279652)', 4326), 40.9679834, -74.2708704, '1981-07-01', '2015-09-02', NULL, NULL, NULL),
  ('882704', 'Yantacaw Pond', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Orange', 40.829132, -74.1353302, ST_GeomFromText('POINT(40.829132 -74.1353302)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('882705', 'Zabriskie Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Hackensack', 40.9932044, -74.1081101, ST_GeomFromText('POINT(40.9932044 -74.1081101)', 4326), 40.9995398, -74.1101083, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('882706', 'Ziegler Pond', 'Lake', 'New Jersey', 'NJ', 'Bergen', 'Paterson', 40.9959308, -74.1718109, ST_GeomFromText('POINT(40.9959308 -74.1718109)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('882707', 'Yellow Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1991338, -74.2042243, ST_GeomFromText('POINT(40.1991338 -74.2042243)', 4326), 40.2269444, -74.2019444, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882708', 'Woodcock Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1275272, -74.1675116, ST_GeomFromText('POINT(40.1275272 -74.1675116)', 4326), 40.132084, -74.1772306, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('882709', 'Willow Run', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1335728, -74.2373067, ST_GeomFromText('POINT(40.1335728 -74.2373067)', 4326), 40.1338671, -74.2329092, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882710', 'West Fork Yellow Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.2270564, -74.2015326, ST_GeomFromText('POINT(40.2270564 -74.2015326)', 4326), 40.2377778, -74.2027778, '1981-07-01', NULL, 'Official', 'Board Decision', '1980-01-01'),
  ('882711', 'West Fork Turtle Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Adelphia', 40.1792797, -74.2507007, ST_GeomFromText('POINT(40.1792797 -74.2507007)', 4326), 40.1852778, -74.2519444, '1981-07-01', NULL, 'Official', 'Board Decision', '1980-01-01'),
  ('882712', 'West Fork Ridge Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Adelphia', 40.1714708, -74.2622459, ST_GeomFromText('POINT(40.1714708 -74.2622459)', 4326), 40.17807, -74.2624283, '1981-07-01', '2013-06-05', 'Official', 'Board Decision', '1980-01-01'),
  ('882713', 'West Fork Minagamahone Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.2383834, -74.1615129, ST_GeomFromText('POINT(40.2383834 -74.1615129)', 4326), 40.2534595, -74.1767907, '1981-07-01', '2013-06-05', 'Official', 'Board Decision', '1980-01-01'),
  ('882714', 'West Fork Marsh Bog Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.230455, -74.1807014, ST_GeomFromText('POINT(40.230455 -74.1807014)', 4326), 40.2440752, -74.1844994, '1981-07-01', '2013-06-05', 'Official', 'Board Decision', '1980-01-01'),
  ('882715', 'Weasel Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1543593, -74.2462814, ST_GeomFromText('POINT(40.1543593 -74.2462814)', 4326), 40.1511111, -74.2277778, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882716', 'Turtle Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Adelphia', 40.165568, -74.2605078, ST_GeomFromText('POINT(40.165568 -74.2605078)', 4326), 40.1793324, -74.2506695, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882717', 'Toad Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1576393, -74.2403698, ST_GeomFromText('POINT(40.1576393 -74.2403698)', 4326), 40.1592495, -74.2352267, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882718', 'Titmouse Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1302219, -74.2416438, ST_GeomFromText('POINT(40.1302219 -74.2416438)', 4326), 40.1418611, -74.2343187, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('882719', 'Timber Swamp Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1782667, -74.1728961, ST_GeomFromText('POINT(40.1782667 -74.1728961)', 4326), 40.1793324, -74.1926748, '1981-07-01', '2013-06-05', 'Official', 'Board Decision', '1980-01-01'),
  ('882720', 'Tadpole Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.2137516, -74.181726, ST_GeomFromText('POINT(40.2137516 -74.181726)', 4326), 40.2325, -74.1911111, '1981-07-01', '2013-06-05', 'Official', 'Board Decision', '1980-01-01'),
  ('882721', 'Sweetgum Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1347611, -74.236372, ST_GeomFromText('POINT(40.1347611 -74.236372)', 4326), 40.1447316, -74.2261648, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882722', 'Sparrow Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1478918, -74.2009765, ST_GeomFromText('POINT(40.1478918 -74.2009765)', 4326), 40.1527778, -74.2144444, '1981-07-01', NULL, 'Official', 'Board Decision', '1980-01-01'),
  ('882723', 'South Fork Timber Swamp Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1724813, -74.2245045, ST_GeomFromText('POINT(40.1724813 -74.2245045)', 4326), 40.1708345, -74.2287451, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882724', 'South Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Lakewood', 40.1102958, -74.2150095, ST_GeomFromText('POINT(40.1102958 -74.2150095)', 4326), 40.1155556, -74.2202778, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882725', 'South Branch Timber Swamp Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1713735, -74.2009923, ST_GeomFromText('POINT(40.1713735 -74.2009923)', 4326), 40.1694623, -74.2017674, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882726', 'Snipe Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Adelphia', 40.1480551, -74.2539766, ST_GeomFromText('POINT(40.1480551 -74.2539766)', 4326), 40.175123, -74.2422795, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882727', 'Snake Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Lakewood', 40.1120591, -74.2384776, ST_GeomFromText('POINT(40.1120591 -74.2384776)', 4326), 40.1186111, -74.2363889, '1981-07-01', NULL, 'Official', 'Board Decision', '1980-01-01'),
  ('882728', 'Small Branch', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Adelphia', 40.2053902, -74.2537565, ST_GeomFromText('POINT(40.2053902 -74.2537565)', 4326), 40.2104887, -74.2526463, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('882729', 'Sandyhill Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Lakewood', 40.1169809, -74.1674459, ST_GeomFromText('POINT(40.1169809 -74.1674459)', 4326), 40.1334478, -74.1431965, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882730', 'Ridge Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Adelphia', 40.1676586, -74.2628789, ST_GeomFromText('POINT(40.1676586 -74.2628789)', 4326), 40.1798898, -74.2560205, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882731', 'Quail Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Lakewood', 40.1138548, -74.1663784, ST_GeomFromText('POINT(40.1138548 -74.1663784)', 4326), 40.1223547, -74.1456556, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882732', 'Pree Swamp Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1902951, -74.1585571, ST_GeomFromText('POINT(40.1902951 -74.1585571)', 4326), 40.2102778, -74.1491667, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882733', 'Plover Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1519484, -74.2498541, ST_GeomFromText('POINT(40.1519484 -74.2498541)', 4326), 40.1687736, -74.2335033, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882734', 'Pine Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Lakewood', 40.1085542, -74.1519427, ST_GeomFromText('POINT(40.1085542 -74.1519427)', 4326), 40.1118364, -74.1440356, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882735', 'North Fork Timber Swamp Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1857586, -74.2275381, ST_GeomFromText('POINT(40.1857586 -74.2275381)', 4326), 40.1869061, -74.2338252, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882736', 'North Branch Timber Swamp Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1828365, -74.2046964, ST_GeomFromText('POINT(40.1828365 -74.2046964)', 4326), 40.1834062, -74.2056982, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882737', 'North Branch Squankum Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.14956, -74.1553894, ST_GeomFromText('POINT(40.14956 -74.1553894)', 4326), 40.1546698, -74.1807822, '1981-07-01', '2015-04-30', 'Official', 'Board Decision', '1980-01-01'),
  ('882738', 'North Branch Dicks Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Lakewood', 40.1188679, -74.199965, ST_GeomFromText('POINT(40.1188679 -74.199965)', 4326), 40.1243893, -74.209621, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('882739', 'Newt Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.227498, -74.1649461, ST_GeomFromText('POINT(40.227498 -74.1649461)', 4326), 40.2406233, -74.1692215, '1981-07-01', '2013-06-05', 'Official', 'Board Decision', '1980-01-01'),
  ('882740', 'Mink Run', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.2173728, -74.1676712, ST_GeomFromText('POINT(40.2173728 -74.1676712)', 4326), 40.2212304, -74.1699108, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882741', 'Middle Fork Timber Swamp Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1788006, -74.220437, ST_GeomFromText('POINT(40.1788006 -74.220437)', 4326), 40.1796807, -74.2285573, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882742', 'Marlpit Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1958558, -74.1646457, ST_GeomFromText('POINT(40.1958558 -74.1646457)', 4326), 40.1979476, -74.16309, '1981-07-01', '2013-06-05', 'Official', 'Board Decision', '1980-01-01'),
  ('882743', 'Maple Run', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1970953, -74.2006436, ST_GeomFromText('POINT(40.1970953 -74.2006436)', 4326), 40.1891667, -74.2069444, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882744', 'Long Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Adelphia', 40.2041979, -74.2629218, ST_GeomFromText('POINT(40.2041979 -74.2629218)', 4326), 40.2492896, -74.2188196, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882745', 'Kingfisher Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1949707, -74.1518569, ST_GeomFromText('POINT(40.1949707 -74.1518569)', 4326), 40.2058333, -74.1413889, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882746', 'Heron Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.2175039, -74.2002869, ST_GeomFromText('POINT(40.2175039 -74.2002869)', 4326), 40.2325, -74.2194444, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882747', 'Hawk Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1299943, -74.2415473, ST_GeomFromText('POINT(40.1299943 -74.2415473)', 4326), 40.1321773, -74.2345534, '1981-07-01', '2013-06-05', 'Official', 'Board Decision', '1980-01-01'),
  ('882748', 'Grouse Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1284478, -74.1670862, ST_GeomFromText('POINT(40.1284478 -74.1670862)', 4326), 40.1288889, -74.1619444, '1981-07-01', NULL, 'Official', 'Board Decision', '1980-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('882749', 'Ground Hog Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1311243, -74.2004693, ST_GeomFromText('POINT(40.1311243 -74.2004693)', 4326), 40.1427838, -74.2146152, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882750', 'Gravelly Run', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Lakewood', 40.1030725, -74.1561484, ST_GeomFromText('POINT(40.1030725 -74.1561484)', 4326), 40.1201068, -74.1447115, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882751', 'Frog Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.2109168, -74.1815972, ST_GeomFromText('POINT(40.2109168 -74.1815972)', 4326), 40.2177824, -74.1762114, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882752', 'Fox Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.2209454, -74.2287557, ST_GeomFromText('POINT(40.2209454 -74.2287557)', 4326), 40.2272222, -74.2272222, '1981-07-01', NULL, 'Official', 'Board Decision', '1980-01-01'),
  ('882753', 'Finch Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1519074, -74.1635406, ST_GeomFromText('POINT(40.1519074 -74.1635406)', 4326), 40.1560157, -74.166491, '1981-07-01', '2013-06-05', 'Official', 'Board Decision', '1980-01-01'),
  ('882754', 'Fawn Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.199396, -74.1441107, ST_GeomFromText('POINT(40.199396 -74.1441107)', 4326), 40.2016792, -74.128059, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882755', 'East Fork Yellow Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.2251717, -74.2017889, ST_GeomFromText('POINT(40.2251717 -74.2017889)', 4326), 40.2378674, -74.1923475, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882756', 'East Fork Turtle Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Adelphia', 40.1792914, -74.2505944, ST_GeomFromText('POINT(40.1792914 -74.2505944)', 4326), 40.182939, -74.2478907, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882757', 'East Fork Marsh Bog Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.230455, -74.1807014, ST_GeomFromText('POINT(40.230455 -74.1807014)', 4326), 40.2422572, -74.1731483, '1981-07-01', '2013-06-05', 'Official', 'Board Decision', '1980-01-01'),
  ('882758', 'Dove Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.2152017, -74.22521, ST_GeomFromText('POINT(40.2152017 -74.22521)', 4326), 40.228137, -74.2275167, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('882759', 'Crow Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.2049989, -74.237127, ST_GeomFromText('POINT(40.2049989 -74.237127)', 4326), 40.2147092, -74.2380135, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882760', 'Cricket Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Adelphia', 40.2031982, -74.2617202, ST_GeomFromText('POINT(40.2031982 -74.2617202)', 4326), 40.1972981, -74.2712903, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882761', 'Crane Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1788569, -74.1529727, ST_GeomFromText('POINT(40.1788569 -74.1529727)', 4326), 40.194102, -74.143188, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882762', 'Cedar Run', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.2315117, -74.1799235, ST_GeomFromText('POINT(40.2315117 -74.1799235)', 4326), 40.2348534, -74.1728586, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882763', 'Cattail Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Adelphia', 40.2045001, -74.2688093, ST_GeomFromText('POINT(40.2045001 -74.2688093)', 4326), 40.2033333, -74.2944444, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882764', 'Bittern Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.2193554, -74.2078614, ST_GeomFromText('POINT(40.2193554 -74.2078614)', 4326), 40.225, -74.2061111, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882765', 'Birch Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.2058367, -74.2471075, ST_GeomFromText('POINT(40.2058367 -74.2471075)', 4326), 40.2082375, -74.2470056, '1981-07-01', '2013-06-05', 'Official', 'Board Decision', '1980-01-01'),
  ('882766', 'Bass Run', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Adelphia', 40.1600417, -74.2503557, ST_GeomFromText('POINT(40.1600417 -74.2503557)', 4326), 40.1722222, -74.2516667, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01'),
  ('882767', 'Bannen Meadow Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Adelphia', 40.2053902, -74.2529231, ST_GeomFromText('POINT(40.2053902 -74.2529231)', 4326), 40.1866667, -74.2730556, '1981-07-01', NULL, 'Official', 'Board Decision', '1980-01-01'),
  ('882768', 'Ardena Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.2047551, -74.2296195, ST_GeomFromText('POINT(40.2047551 -74.2296195)', 4326), 40.2273629, -74.2214549, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1980-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('882785', 'Bustleton Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Bristol', 40.1028264, -74.8332024, ST_GeomFromText('POINT(40.1028264 -74.8332024)', 4326), 40.0930556, -74.7866667, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('882790', 'Curtis Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.022895, -74.0629144, ST_GeomFromText('POINT(40.022895 -74.0629144)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('882796', 'The Dunes', 'Summit', 'New Jersey', 'NJ', 'Ocean', 'Beach Haven', 39.5890269, -74.2177894, ST_GeomFromText('POINT(39.5890269 -74.2177894)', 4326), NULL, NULL, '1981-07-01', '2022-08-13', NULL, NULL, NULL),
  ('882798', 'Dutchmans Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Point Pleasant', 40.0140063, -74.0640255, ST_GeomFromText('POINT(40.0140063 -74.0640255)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('882811', 'Fourth Creek', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch West', 40.3665439, -74.041889, ST_GeomFromText('POINT(40.3665439 -74.041889)', 4326), 40.361028, -74.0318441, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('882817', 'Gull Island', 'Island', 'New Jersey', 'NJ', 'Monmouth', 'Point Pleasant', 40.1028932, -74.0454147, ST_GeomFromText('POINT(40.1028932 -74.0454147)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('882823', 'Kilpatrick Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Toms River', 39.950118, -74.1945857, ST_GeomFromText('POINT(39.950118 -74.1945857)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('882832', 'Lower Rocky Point', 'Cape', 'New Jersey', 'NJ', 'Monmouth', 'Sandy Hook East', 40.3851093, -73.9829155, ST_GeomFromText('POINT(40.3851093 -73.9829155)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('882833', 'Mallard Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Lakewood', 40.0315058, -74.1351397, ST_GeomFromText('POINT(40.0315058 -74.1351397)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('882836', 'Money Island', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Toms River', 39.9467848, -74.1606954, ST_GeomFromText('POINT(39.9467848 -74.1606954)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('882841', 'Point No Point', 'Cape', 'New Jersey', 'NJ', 'Essex', 'Jersey City', 40.7376015, -74.1193095, ST_GeomFromText('POINT(40.7376015 -74.1193095)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('882849', 'Plum Point', 'Cape', 'New Jersey', 'NJ', 'Burlington', 'Beverly', 40.0317783, -74.9896141, ST_GeomFromText('POINT(40.0317783 -74.9896141)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('882855', 'Riverton Cove', 'Bay', 'New Jersey', 'NJ', 'Burlington', 'Beverly', 40.0237229, -74.999059, ST_GeomFromText('POINT(40.0237229 -74.999059)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('882858', 'Rumson Neck', 'Cape', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch West', 40.3584432, -74.0162496, ST_GeomFromText('POINT(40.3584432 -74.0162496)', 4326), NULL, NULL, '1981-07-01', '2014-07-22', NULL, NULL, NULL),
  ('882860', 'Sandy Hook Point', 'Cape', 'New Jersey', 'NJ', 'Monmouth', 'Sandy Hook West', 40.4695519, -74.015417, ST_GeomFromText('POINT(40.4695519 -74.015417)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('882876', 'Upper Rocky Point', 'Cape', 'New Jersey', 'NJ', 'Monmouth', 'Sandy Hook East', 40.3842761, -73.9948603, ST_GeomFromText('POINT(40.3842761 -73.9948603)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('882880', 'Wright Cove', 'Bay', 'New Jersey', 'NJ', 'Burlington', 'Beverly', 40.025945, -74.9962811, ST_GeomFromText('POINT(40.025945 -74.9962811)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('882928', 'Mount Holly', 'Summit', 'New Jersey', 'NJ', 'Burlington', 'Bristol', 40.002326, -74.7884941, ST_GeomFromText('POINT(40.002326 -74.7884941)', 4326), NULL, NULL, '1981-07-01', '2021-11-27', NULL, NULL, NULL),
  ('882935', 'Little Sound', 'Lake', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0451133, -74.7968327, ST_GeomFromText('POINT(39.0451133 -74.7968327)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('882937', 'Doctors Point', 'Cape', 'New Jersey', 'NJ', 'Burlington', 'New Gretna', 39.5556735, -74.427371, ST_GeomFromText('POINT(39.5556735 -74.427371)', 4326), NULL, NULL, '1981-07-01', '2011-07-21', 'Official', 'Board Decision', '1982-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('882939', 'Five Acre Pond', 'Lake', 'New Jersey', 'NJ', 'Atlantic', 'Tuckahoe', 39.3388017, -74.8062938, ST_GeomFromText('POINT(39.3388017 -74.8062938)', 4326), NULL, NULL, '1981-07-01', '2018-12-17', NULL, NULL, NULL),
  ('882955', 'Sharps Mountain', 'Summit', 'New Jersey', 'NJ', 'Burlington', 'Medford Lakes', 39.8012635, -74.8105008, ST_GeomFromText('POINT(39.8012635 -74.8105008)', 4326), NULL, NULL, '1981-07-01', '2021-11-20', NULL, NULL, NULL),
  ('882966', 'Pine Hill', 'Summit', 'New Jersey', 'NJ', 'Camden', 'Clementon', 39.7979313, -74.9929845, ST_GeomFromText('POINT(39.7979313 -74.9929845)', 4326), NULL, NULL, '1981-07-01', '2021-11-20', NULL, NULL, NULL),
  ('882973', 'Hockhockson Swamp', 'Swamp', 'New Jersey', 'NJ', 'Monmouth', 'Marlboro', 40.2751112, -74.1412531, ST_GeomFromText('POINT(40.2751112 -74.1412531)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('882976', 'Pine Hill (historical)', 'Summit', 'New Jersey', 'NJ', 'Monmouth', 'Roosevelt', 40.234833, -74.4134834, ST_GeomFromText('POINT(40.234833 -74.4134834)', 4326), NULL, NULL, '1981-07-01', '2024-10-01', NULL, NULL, NULL),
  ('882977', 'Disbrows Hill', 'Summit', 'New Jersey', 'NJ', 'Monmouth', 'Roosevelt', 40.2466876, -74.4569654, ST_GeomFromText('POINT(40.2466876 -74.4569654)', 4326), NULL, NULL, '1981-07-01', '2021-11-20', NULL, NULL, NULL),
  ('882980', 'Saddle River Valley', 'Valley', 'New Jersey', 'NJ', 'Bergen', 'Park Ridge', 41.0085487, -74.095993, ST_GeomFromText('POINT(41.0085487 -74.095993)', 4326), 41.0827903, -74.0827096, '1981-07-01', '2017-02-15', NULL, NULL, NULL),
  ('882982', 'Ash Brook Swamp', 'Swamp', 'New Jersey', 'NJ', 'Union', 'Perth Amboy', 40.6084365, -74.3579273, ST_GeomFromText('POINT(40.6084365 -74.3579273)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('882989', 'Pompton Plains', 'Flat', 'New Jersey', 'NJ', 'Morris', 'Pompton Plains', 40.9584314, -74.2995933, ST_GeomFromText('POINT(40.9584314 -74.2995933)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('882991', 'Trout Brook', 'Stream', 'New Jersey', 'NJ', 'Warren', 'Blairstown', 40.9069591, -74.9667603, ST_GeomFromText('POINT(40.9069591 -74.9667603)', 4326), 40.9453927, -74.892844, '1981-07-01', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('883008', 'Helmetta Pond', 'Reservoir', 'New Jersey', 'NJ', 'Middlesex', 'New Brunswick', 40.3800997, -74.4278593, ST_GeomFromText('POINT(40.3800997 -74.4278593)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('883018', 'Mount Laurel', 'Summit', 'New Jersey', 'NJ', 'Burlington', 'Moorestown', 39.9344034, -74.893837, ST_GeomFromText('POINT(39.9344034 -74.893837)', 4326), NULL, NULL, '1981-07-01', '2021-11-20', NULL, NULL, NULL),
  ('883023', 'Bass River Neck', 'Cape', 'New Jersey', 'NJ', 'Burlington', 'New Gretna', 39.5667847, -74.4634837, ST_GeomFromText('POINT(39.5667847 -74.4634837)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('883048', 'Maskells Millpond', 'Reservoir', 'New Jersey', 'NJ', 'Salem', 'Canton', 39.4887359, -75.3961471, ST_GeomFromText('POINT(39.4887359 -75.3961471)', 4326), NULL, NULL, '1981-07-01', '2018-12-20', NULL, NULL, NULL),
  ('883050', 'Prospertown Lake', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'Roosevelt', 40.1334319, -74.4500471, ST_GeomFromText('POINT(40.1334319 -74.4500471)', 4326), NULL, NULL, '1981-07-01', '2018-12-15', NULL, NULL, NULL),
  ('883090', 'Ground Creek', 'Stream', 'New Jersey', 'NJ', 'Cape May', 'Marmora', 39.2957992, -74.6646845, ST_GeomFromText('POINT(39.2957992 -74.6646845)', 4326), 39.295056, -74.6667498, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('883093', 'Laurel Lake', 'Lake', 'New Jersey', 'NJ', 'Cumberland', 'Dividing Creek', 39.3347451, -75.0309506, ST_GeomFromText('POINT(39.3347451 -75.0309506)', 4326), NULL, NULL, '1981-07-01', '2018-12-20', NULL, NULL, NULL),
  ('883106', 'Seeley Pond', 'Reservoir', 'New Jersey', 'NJ', 'Cumberland', 'Shiloh', 39.4913769, -75.2568685, ST_GeomFromText('POINT(39.4913769 -75.2568685)', 4326), NULL, NULL, '1981-07-01', '2018-12-20', NULL, NULL, NULL),
  ('883107', 'Davis Millpond', 'Reservoir', 'New Jersey', 'NJ', 'Cumberland', 'Shiloh', 39.4245918, -75.3645597, ST_GeomFromText('POINT(39.4245918 -75.3645597)', 4326), NULL, NULL, '1981-07-01', '2018-12-20', NULL, NULL, NULL),
  ('883108', 'Woodmere Lake', 'Reservoir', 'New Jersey', 'NJ', 'Salem', 'Salem', 39.5036884, -75.3819221, ST_GeomFromText('POINT(39.5036884 -75.3819221)', 4326), NULL, NULL, '1981-07-01', '2018-12-20', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('883125', 'Wrights Millpond', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Pitman West', 39.6866641, -75.1747728, ST_GeomFromText('POINT(39.6866641 -75.1747728)', 4326), NULL, NULL, '1981-07-01', '2023-03-24', NULL, NULL, NULL),
  ('883129', 'Bass Point', 'Cape', 'New Jersey', 'NJ', 'Monmouth', 'Point Pleasant', 40.1076152, -74.0912499, ST_GeomFromText('POINT(40.1076152 -74.0912499)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('883132', 'Glendola Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.1935402, -74.0832356, ST_GeomFromText('POINT(40.1935402 -74.0832356)', 4326), NULL, NULL, '1981-07-01', '2022-08-03', NULL, NULL, NULL),
  ('883134', 'Shrewsbury Bay', 'Bay', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch West', 40.341777, -73.9995823, ST_GeomFromText('POINT(40.341777 -73.9995823)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('883137', 'Deer Park Branch', 'Stream', 'New Jersey', 'NJ', 'Ocean', 'Whiting', 39.9440053, -74.4715402, ST_GeomFromText('POINT(39.9440053 -74.4715402)', 4326), 39.9318292, -74.4493192, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('883139', 'Clearwater Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Newton East', 41.0186406, -74.7121899, ST_GeomFromText('POINT(41.0186406 -74.7121899)', 4326), NULL, NULL, '1981-07-01', '2018-12-13', NULL, NULL, NULL),
  ('883140', 'Bass Lake Falls', 'Falls', 'New Jersey', 'NJ', 'Warren', 'Flatbrookville', 41.0231526, -74.9529499, ST_GeomFromText('POINT(41.0231526 -74.9529499)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('883143', 'Cliffwood Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Newfoundland', 41.1080366, -74.4801401, ST_GeomFromText('POINT(41.1080366 -74.4801401)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('883145', 'Lake Anne', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Newton West', 41.1089689, -74.8209358, ST_GeomFromText('POINT(41.1089689 -74.8209358)', 4326), NULL, NULL, '1981-07-01', '2018-12-13', NULL, NULL, NULL),
  ('883147', 'Crandon Lakes', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Culvers Gap', 41.1308024, -74.8405537, ST_GeomFromText('POINT(41.1308024 -74.8405537)', 4326), NULL, NULL, '1981-07-01', '2018-12-13', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('883148', 'Clearview Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Newton West', 41.1173056, -74.7695712, ST_GeomFromText('POINT(41.1173056 -74.7695712)', 4326), NULL, NULL, '1981-07-01', '2018-12-13', NULL, NULL, NULL),
  ('883149', 'Lower Crandon Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Newton West', 41.1200045, -74.8432949, ST_GeomFromText('POINT(41.1200045 -74.8432949)', 4326), NULL, NULL, '1981-07-01', '2018-12-13', NULL, NULL, NULL),
  ('883152', 'Mountain Ridge Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Flatbrookville', 41.086318, -74.928663, ST_GeomFromText('POINT(41.086318 -74.928663)', 4326), NULL, NULL, '1981-07-01', '2022-07-25', NULL, NULL, NULL),
  ('883153', 'Blue Mountain Lakes', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Flatbrookville', 41.1016979, -74.9278654, ST_GeomFromText('POINT(41.1016979 -74.9278654)', 4326), NULL, NULL, '1981-07-01', '2022-07-25', NULL, NULL, NULL),
  ('883154', 'Vernon Valley Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Wawayanda', 41.2283938, -74.4866086, ST_GeomFromText('POINT(41.2283938 -74.4866086)', 4326), NULL, NULL, '1981-07-01', '2020-11-09', NULL, NULL, NULL),
  ('883155', 'Pleasant Valley Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Hamburg', 41.1819884, -74.5498434, ST_GeomFromText('POINT(41.1819884 -74.5498434)', 4326), NULL, NULL, '1981-07-01', '2020-11-09', NULL, NULL, NULL),
  ('883157', 'Kittatinny Creek', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Culvers Gap', 41.2223169, -74.8593351, ST_GeomFromText('POINT(41.2223169 -74.8593351)', 4326), 41.2418782, -74.8336557, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('883160', 'Holiday Lake', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Milford', 41.3064906, -74.7595598, ST_GeomFromText('POINT(41.3064906 -74.7595598)', 4326), NULL, NULL, '1981-07-01', '2019-07-10', NULL, NULL, NULL),
  ('883161', 'Montague Lake', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Port Jervis South', 41.3376751, -74.6977314, ST_GeomFromText('POINT(41.3376751 -74.6977314)', 4326), NULL, NULL, '1981-07-01', '2019-07-10', NULL, NULL, NULL),
  ('883167', 'Laurel Hill', 'Summit', 'New Jersey', 'NJ', 'Burlington', 'Bristol', 40.068714, -74.8476628, ST_GeomFromText('POINT(40.068714 -74.8476628)', 4326), NULL, NULL, '1981-07-01', '2021-11-27', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('883171', 'Budd Run', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Pemberton', 39.9751469, -74.6922469, ST_GeomFromText('POINT(39.9751469 -74.6922469)', 4326), 39.9984469, -74.6287681, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('883172', 'Mount Pisgah', 'Summit', 'New Jersey', 'NJ', 'Burlington', 'Columbus', 40.0110875, -74.6721192, ST_GeomFromText('POINT(40.0110875 -74.6721192)', 4326), NULL, NULL, '1981-07-01', '2021-11-20', NULL, NULL, NULL),
  ('883173', 'Marlton Lakes', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Clementon', 39.804283, -74.897447, ST_GeomFromText('POINT(39.804283 -74.897447)', 4326), NULL, NULL, '1981-07-01', '2024-10-29', NULL, NULL, NULL),
  ('883181', 'Little Sedge Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Seaside Park', 39.9815068, -74.0765256, ST_GeomFromText('POINT(39.9815068 -74.0765256)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('883182', 'Mikes Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Seaside Park', 39.9570625, -74.0865257, ST_GeomFromText('POINT(39.9570625 -74.0865257)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('883186', 'Lake Martha', 'Lake', 'New Jersey', 'NJ', 'Gloucester', 'Woodbury', 39.8733909, -75.1348636, ST_GeomFromText('POINT(39.8733909 -75.1348636)', 4326), NULL, NULL, '1981-07-01', '2020-04-29', NULL, NULL, NULL),
  ('883203', 'Houses Pond', 'Lake', 'New Jersey', 'NJ', 'Salem', 'Alloway', 39.5465026, -75.3593596, ST_GeomFromText('POINT(39.5465026 -75.3593596)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('883223', 'Lake Ricabear', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.966253, -74.4105525, ST_GeomFromText('POINT(40.966253 -74.4105525)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('883224', 'Kohlers Pond', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.9510437, -74.4328951, ST_GeomFromText('POINT(40.9510437 -74.4328951)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('883225', 'Piscatells Pond', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.9367539, -74.4033076, ST_GeomFromText('POINT(40.9367539 -74.4033076)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('883230', 'Lake Windsor', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Branchville', 41.1661347, -74.6434499, ST_GeomFromText('POINT(41.1661347 -74.6434499)', 4326), NULL, NULL, '1981-07-01', '2020-11-09', NULL, NULL, NULL),
  ('883235', 'John F Kennedy Lake', 'Lake', 'New Jersey', 'NJ', 'Burlington', 'Bristol', 40.0729875, -74.8621576, ST_GeomFromText('POINT(40.0729875 -74.8621576)', 4326), NULL, NULL, '1981-07-01', '2018-12-15', NULL, NULL, NULL),
  ('883239', 'Manson Lake', 'Lake', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.9255059, -74.5670968, ST_GeomFromText('POINT(39.9255059 -74.5670968)', 4326), NULL, NULL, '1981-07-01', '2018-12-15', NULL, NULL, NULL),
  ('883240', 'Grant Lake', 'Lake', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.9241101, -74.565411, ST_GeomFromText('POINT(39.9241101 -74.565411)', 4326), NULL, NULL, '1981-07-01', '2018-12-15', NULL, NULL, NULL),
  ('883241', 'Adams Lake', 'Lake', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.9232523, -74.5635705, ST_GeomFromText('POINT(39.9232523 -74.5635705)', 4326), NULL, NULL, '1981-07-01', '2018-12-15', NULL, NULL, NULL),
  ('883242', 'Monroe Lake', 'Lake', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.922491, -74.5615825, ST_GeomFromText('POINT(39.922491 -74.5615825)', 4326), NULL, NULL, '1981-07-01', '2018-12-15', NULL, NULL, NULL),
  ('883243', 'New Squankum Branch', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Buena', 39.5732922, -74.9226688, ST_GeomFromText('POINT(39.5732922 -74.9226688)', 4326), 39.5780556, -74.9580556, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('883245', 'Commonwealth Water Company Reservoir Number Three', 'Reservoir', 'New Jersey', 'NJ', 'Essex', 'Caldwell', 40.7852, -74.3578922, ST_GeomFromText('POINT(40.7852 -74.3578922)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('883263', 'Mayapple Hill', 'Summit', 'New Jersey', 'NJ', 'Essex', 'Caldwell', 40.7731478, -74.2882021, ST_GeomFromText('POINT(40.7731478 -74.2882021)', 4326), NULL, NULL, '1981-07-01', '2021-11-27', NULL, NULL, NULL),
  ('883264', 'Fox Hill', 'Summit', 'New Jersey', 'NJ', 'Hunterdon', 'Califon', 40.7328781, -74.805165, ST_GeomFromText('POINT(40.7328781 -74.805165)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('883304', 'Bayshore Lagoon', 'Lake', 'New Jersey', 'NJ', 'Atlantic', 'Ocean City', 39.3398385, -74.5101528, ST_GeomFromText('POINT(39.3398385 -74.5101528)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('883316', 'Stony Hill', 'Summit', 'New Jersey', 'NJ', 'Essex', 'Orange', 40.8120231, -74.2429978, ST_GeomFromText('POINT(40.8120231 -74.2429978)', 4326), NULL, NULL, '1981-07-01', '2018-08-01', NULL, NULL, NULL),
  ('883320', 'Verona Lake', 'Reservoir', 'New Jersey', 'NJ', 'Essex', 'Orange', 40.8271346, -74.2467041, ST_GeomFromText('POINT(40.8271346 -74.2467041)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('883332', 'Kingsland Lake', 'Lake', 'New Jersey', 'NJ', 'Essex', 'Orange', 40.8258618, -74.142474, ST_GeomFromText('POINT(40.8258618 -74.142474)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('883339', 'Hendricks Pond', 'Reservoir', 'New Jersey', 'NJ', 'Essex', 'Orange', 40.7903783, -74.1734778, ST_GeomFromText('POINT(40.7903783 -74.1734778)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('883422', 'Upper Sunset Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Franklin', 41.0288444, -74.6086914, ST_GeomFromText('POINT(41.0288444 -74.6086914)', 4326), NULL, NULL, '1981-07-01', '2020-11-09', NULL, NULL, NULL),
  ('883425', 'Herzog Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Gladstone', 40.7054734, -74.7175241, ST_GeomFromText('POINT(40.7054734 -74.7175241)', 4326), 40.7598381, -74.6988988, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('883427', 'Quail Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Gladstone', 40.675657, -74.7215507, ST_GeomFromText('POINT(40.675657 -74.7215507)', 4326), 40.675, -74.7066667, '1981-07-01', NULL, NULL, NULL, NULL),
  ('883428', 'Axle Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Gladstone', 40.6927518, -74.72085, ST_GeomFromText('POINT(40.6927518 -74.72085)', 4326), 40.7076998, -74.6974397, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('883430', 'Woodruff Gap', 'Gap', 'New Jersey', 'NJ', 'Passaic', 'Greenwood Lake', 41.1578733, -74.3690417, ST_GeomFromText('POINT(41.1578733 -74.3690417)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('883431', 'Green Turtle Lake', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Greenwood Lake', 41.1463448, -74.3297025, ST_GeomFromText('POINT(41.1463448 -74.3297025)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('883436', 'Saint Andrews Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Hackensack', 40.9579343, -74.0725172, ST_GeomFromText('POINT(40.9579343 -74.0725172)', 4326), 40.942607, -74.082908, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('883440', 'Cooper Pond', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Hackensack', 40.9306004, -74.0022729, ST_GeomFromText('POINT(40.9306004 -74.0022729)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('883453', 'Bucks Hill', 'Summit', 'New Jersey', 'NJ', 'Warren', 'Hackettstown', 40.8564939, -74.842303, ST_GeomFromText('POINT(40.8564939 -74.842303)', 4326), NULL, NULL, '1981-07-01', '2021-11-20', NULL, NULL, NULL),
  ('883455', 'Panorama Lake', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Hamburg', 41.2465762, -74.5223206, ST_GeomFromText('POINT(41.2465762 -74.5223206)', 4326), NULL, NULL, '1981-07-01', '2020-11-09', NULL, NULL, NULL),
  ('883461', 'Meadow Lakes', 'Reservoir', 'New Jersey', 'NJ', 'Mercer', 'Hightstown', 40.2585084, -74.5195114, ST_GeomFromText('POINT(40.2585084 -74.5195114)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('883486', 'Lake Shenandoah', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'Lakewood', 40.0874529, -74.1919001, ST_GeomFromText('POINT(40.0874529 -74.1919001)', 4326), NULL, NULL, '1981-07-01', '2022-08-03', NULL, NULL, NULL),
  ('883512', 'Union Hill', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Mendham', 40.8555998, -74.5198117, ST_GeomFromText('POINT(40.8555998 -74.5198117)', 4326), NULL, NULL, '1981-07-01', '2018-04-14', NULL, NULL, NULL),
  ('883550', 'Mirror Pond', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Morristown', 40.8509301, -74.4478535, ST_GeomFromText('POINT(40.8509301 -74.4478535)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('883552', 'Woolman Lake', 'Lake', 'New Jersey', 'NJ', 'Burlington', 'Mount Holly', 39.9954367, -74.7790895, ST_GeomFromText('POINT(39.9954367 -74.7790895)', 4326), NULL, NULL, '1981-07-01', '2018-12-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('883553', 'Buttonwood Lake', 'Lake', 'New Jersey', 'NJ', 'Burlington', 'Mount Holly', 39.9961183, -74.7767188, ST_GeomFromText('POINT(39.9961183 -74.7767188)', 4326), NULL, NULL, '1981-07-01', '2018-12-15', NULL, NULL, NULL),
  ('883554', 'Upper Lake', 'Lake', 'New Jersey', 'NJ', 'Burlington', 'Mount Holly', 39.9974152, -74.7750404, ST_GeomFromText('POINT(39.9974152 -74.7750404)', 4326), NULL, NULL, '1981-07-01', '2018-12-15', NULL, NULL, NULL),
  ('883557', 'Oliphants Lake', 'Lake', 'New Jersey', 'NJ', 'Burlington', 'Medford Lakes', 39.8717293, -74.8319572, ST_GeomFromText('POINT(39.8717293 -74.8319572)', 4326), NULL, NULL, '1981-07-01', '2018-12-15', NULL, NULL, NULL),
  ('883560', 'Ellwell Branch', 'Stream', 'New Jersey', 'NJ', 'Gloucester', 'Newfield', 39.5993582, -75.0848311, ST_GeomFromText('POINT(39.5993582 -75.0848311)', 4326), 39.6, -75.1227778, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('883561', 'Snow Valley Pond', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.0733497, -74.4355091, ST_GeomFromText('POINT(41.0733497 -74.4355091)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('883562', 'Charlotteburg Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.0247279, -74.4311286, ST_GeomFromText('POINT(41.0247279 -74.4311286)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('883563', 'Triangle Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.0825135, -74.4919216, ST_GeomFromText('POINT(41.0825135 -74.4919216)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('883566', 'Beisers Pond', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Newton East', 41.0234422, -74.6359904, ST_GeomFromText('POINT(41.0234422 -74.6359904)', 4326), NULL, NULL, '1981-07-01', '2020-11-09', NULL, NULL, NULL),
  ('883567', 'Laidlaws Pond', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Newton East', 41.0057475, -74.6270686, ST_GeomFromText('POINT(41.0057475 -74.6270686)', 4326), NULL, NULL, '1981-07-01', '2018-12-13', NULL, NULL, NULL),
  ('883568', 'Fowlers Pond', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Newton East', 41.0048048, -74.6371589, ST_GeomFromText('POINT(41.0048048 -74.6371589)', 4326), NULL, NULL, '1981-07-01', '2018-12-13', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('883571', 'Hortons Pond', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Newton West', 41.0673142, -74.7611665, ST_GeomFromText('POINT(41.0673142 -74.7611665)', 4326), NULL, NULL, '1981-07-01', '2018-12-13', NULL, NULL, NULL),
  ('883579', 'Northwest Point Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Seaside Park', 39.9945621, -74.0823594, ST_GeomFromText('POINT(39.9945621 -74.0823594)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('883580', 'Marsh Elder Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Seaside Park', 39.9926178, -74.0798593, ST_GeomFromText('POINT(39.9926178 -74.0798593)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('883583', 'Ortley Cove', 'Bay', 'New Jersey', 'NJ', 'Ocean', 'Seaside Park', 39.9576181, -74.0801367, ST_GeomFromText('POINT(39.9576181 -74.0801367)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('883585', 'Harbor Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Seaside Park', 39.9481738, -74.084859, ST_GeomFromText('POINT(39.9481738 -74.084859)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('883590', 'Sanctuary Bay', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0437245, -74.7704425, ST_GeomFromText('POINT(39.0437245 -74.7704425)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('883591', 'Paradise Bay', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0409467, -74.7712759, ST_GeomFromText('POINT(39.0409467 -74.7712759)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('883623', 'Flag Point', 'Cape', 'New Jersey', 'NJ', 'Ocean', 'Toms River', 39.9459514, -74.1845853, ST_GeomFromText('POINT(39.9459514 -74.1845853)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('883628', 'Brighton Lake (historical)', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Tranquility', 40.9870422, -74.7704433, ST_GeomFromText('POINT(40.9870422 -74.7704433)', 4326), NULL, NULL, '1981-07-01', '2020-03-23', NULL, NULL, NULL),
  ('883638', 'Lower Mount Glen Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.077459, -74.3649366, ST_GeomFromText('POINT(41.077459 -74.3649366)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('883639', 'Upper Mount Glen Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0731412, -74.3676838, ST_GeomFromText('POINT(41.0731412 -74.3676838)', 4326), NULL, NULL, '1981-07-01', '2013-09-06', NULL, NULL, NULL),
  ('883640', 'Upper Morse Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0191263, -74.3165967, ST_GeomFromText('POINT(41.0191263 -74.3165967)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('883641', 'Lower Morse Lake', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0216809, -74.3163217, ST_GeomFromText('POINT(41.0216809 -74.3163217)', 4326), NULL, NULL, '1981-07-01', '2013-09-06', NULL, NULL, NULL),
  ('883642', 'Stephens Ponds', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0786648, -74.3246918, ST_GeomFromText('POINT(41.0786648 -74.3246918)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('883643', 'Hidden Valley Lake', 'Lake', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.0727247, -74.2788003, ST_GeomFromText('POINT(41.0727247 -74.2788003)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('883645', 'Holiday Lake', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'West Creek', 39.7371837, -74.2646866, ST_GeomFromText('POINT(39.7371837 -74.2646866)', 4326), NULL, NULL, '1981-07-01', '2018-12-18', NULL, NULL, NULL),
  ('883651', 'Jeesups Mill Lake (historical)', 'Lake', 'New Jersey', 'NJ', 'Gloucester', 'Woodbury', 39.7812247, -75.1974028, ST_GeomFromText('POINT(39.7812247 -75.1974028)', 4326), NULL, NULL, '1981-07-01', '2020-04-29', NULL, NULL, NULL),
  ('883652', 'Tylers Mill Pond', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Pitman West', 39.7486134, -75.1523775, ST_GeomFromText('POINT(39.7486134 -75.1523775)', 4326), NULL, NULL, '1981-07-01', '2023-03-24', NULL, NULL, NULL),
  ('883655', 'Bell Lake', 'Lake', 'New Jersey', 'NJ', 'Gloucester', 'Woodbury', 39.8379995, -75.1733291, ST_GeomFromText('POINT(39.8379995 -75.1733291)', 4326), NULL, NULL, '1981-07-01', '2018-12-15', NULL, NULL, NULL),
  ('883657', 'Comeys Lake', 'Lake', 'New Jersey', 'NJ', 'Gloucester', 'Woodbury', 39.7873488, -75.1443289, ST_GeomFromText('POINT(39.7873488 -75.1443289)', 4326), NULL, NULL, '1981-07-01', '2018-12-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('883658', 'Greenes Lake (historical)', 'Lake', 'New Jersey', 'NJ', 'Gloucester', 'Woodbury', 39.7834472, -75.1473993, ST_GeomFromText('POINT(39.7834472 -75.1473993)', 4326), NULL, NULL, '1981-07-01', '2020-04-29', NULL, NULL, NULL),
  ('883660', 'Green Brook Pond', 'Lake', 'New Jersey', 'NJ', 'Bergen', 'Yonkers', 40.9177396, -73.9332115, ST_GeomFromText('POINT(40.9177396 -73.9332115)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('883661', 'Pfisters Pond', 'Lake', 'New Jersey', 'NJ', 'Bergen', 'Yonkers', 40.9240217, -73.9422674, ST_GeomFromText('POINT(40.9240217 -73.9422674)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('883667', 'Ackermans Creek', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Weehawken', 40.8241837, -74.0831038, ST_GeomFromText('POINT(40.8241837 -74.0831038)', 4326), 40.8277275, -74.0935323, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('883670', 'Vreeland Ditch', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Weehawken', 40.7764898, -74.1106982, ST_GeomFromText('POINT(40.7764898 -74.1106982)', 4326), 40.7847222, -74.1211111, '1981-07-01', NULL, NULL, NULL, NULL),
  ('883671', 'Cedar Creek', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Weehawken', 40.8062998, -74.0631294, ST_GeomFromText('POINT(40.8062998 -74.0631294)', 4326), 40.8092416, -74.0631214, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('883674', 'Close Creek', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Weehawken', 40.8090183, -74.0422994, ST_GeomFromText('POINT(40.8090183 -74.0422994)', 4326), 40.8129018, -74.0456763, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('883675', 'Skeetkill Creek (historical)', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Weehawken', 40.8189894, -74.0168063, ST_GeomFromText('POINT(40.8189894 -74.0168063)', 4326), 40.8288889, -74.0219444, '1981-07-01', '2013-06-05', NULL, NULL, NULL),
  ('883676', 'Peach Island Creek', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Weehawken', 40.8281141, -74.0763755, ST_GeomFromText('POINT(40.8281141 -74.0763755)', 4326), 40.8216699, -74.0661013, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('883677', 'Riser Ditch', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Weehawken', 40.832235, -74.073865, ST_GeomFromText('POINT(40.832235 -74.073865)', 4326), 40.8657314, -74.0504506, '1981-07-01', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('883710', 'Woodland Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Pompton Plains', 40.9594116, -74.2857066, ST_GeomFromText('POINT(40.9594116 -74.2857066)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('883711', 'McDonalds Ponds', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Pompton Plains', 40.9562292, -74.2864581, ST_GeomFromText('POINT(40.9562292 -74.2864581)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('883719', 'Sturr Pond', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0260318, -74.1947263, ST_GeomFromText('POINT(41.0260318 -74.1947263)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('883723', 'Suraci Pond', 'Lake', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0537538, -74.1630131, ST_GeomFromText('POINT(41.0537538 -74.1630131)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('883724', 'Gatun Pool', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Ramsey', 41.1087801, -74.2310193, ST_GeomFromText('POINT(41.1087801 -74.2310193)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('883741', 'Briant Pond', 'Reservoir', 'New Jersey', 'NJ', 'Union', 'Roselle', 40.7152908, -74.3358604, ST_GeomFromText('POINT(40.7152908 -74.3358604)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('883742', 'Maple Falls', 'Falls', 'New Jersey', 'NJ', 'Essex', 'Roselle', 40.7345455, -74.3037596, ST_GeomFromText('POINT(40.7345455 -74.3037596)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('883744', 'Maple Brook', 'Stream', 'New Jersey', 'NJ', 'Essex', 'Roselle', 40.7356388, -74.305636, ST_GeomFromText('POINT(40.7356388 -74.305636)', 4326), 40.7325, -74.3, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('883745', 'Nook Hill', 'Summit', 'New Jersey', 'NJ', 'Essex', 'Roselle', 40.7370168, -74.308608, ST_GeomFromText('POINT(40.7370168 -74.308608)', 4326), NULL, NULL, '1981-07-01', '2021-11-20', NULL, NULL, NULL),
  ('883746', 'Hawk Hill', 'Cliff', 'New Jersey', 'NJ', 'Essex', 'Roselle', 40.7398232, -74.3051486, ST_GeomFromText('POINT(40.7398232 -74.3051486)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('883748', 'Beech Brook', 'Stream', 'New Jersey', 'NJ', 'Essex', 'Roselle', 40.7428351, -74.3011594, ST_GeomFromText('POINT(40.7428351 -74.3011594)', 4326), 40.7402778, -74.2963889, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('883778', 'Pahaquarry Flat', 'Flat', 'New Jersey', 'NJ', 'Warren', 'Bushkill', 41.052874, -75.0135074, ST_GeomFromText('POINT(41.052874 -75.0135074)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('883779', 'Foul Rift Falls', 'Falls', 'New Jersey', 'NJ', 'Warren', 'Belvidere', 40.811209, -75.0948971, ST_GeomFromText('POINT(40.811209 -75.0948971)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('883780', 'Bulks Lake', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Adelphia', 40.2191726, -74.3638547, ST_GeomFromText('POINT(40.2191726 -74.3638547)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('883781', 'Fish Creek', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Weehawken', 40.793563, -74.0915769, ST_GeomFromText('POINT(40.793563 -74.0915769)', 4326), 40.7994739, -74.0836295, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1982-01-01'),
  ('883782', 'Mill Creek', 'Stream', 'New Jersey', 'NJ', 'Hudson', 'Weehawken', 40.837978, -74.0182292, ST_GeomFromText('POINT(40.837978 -74.0182292)', 4326), 40.8236662, -74.0166628, '1981-07-01', '2013-06-11', 'Official', 'Board Decision', '1982-01-01'),
  ('883789', 'Millhurst Pond', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Adelphia', 40.2449247, -74.3411676, ST_GeomFromText('POINT(40.2449247 -74.3411676)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('883791', 'Indian Lake', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Allentown', 40.1822862, -74.5886585, ST_GeomFromText('POINT(40.1822862 -74.5886585)', 4326), NULL, NULL, '1981-07-01', '2018-12-15', NULL, NULL, NULL),
  ('883793', 'Indian Run', 'Stream', 'New Jersey', 'NJ', 'Mercer', 'Allentown', 40.1802832, -74.5986593, ST_GeomFromText('POINT(40.1802832 -74.5986593)', 4326), 40.199986, -74.5737576, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('883810', 'Batsto Lake', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Atsion', 39.6525186, -74.6522087, ST_GeomFromText('POINT(39.6525186 -74.6522087)', 4326), NULL, NULL, '1981-07-01', '2022-08-03', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('883814', 'Angens Pond', 'Reservoir', 'New Jersey', 'NJ', 'Warren', 'Belvidere', 40.7654409, -75.0372133, ST_GeomFromText('POINT(40.7654409 -75.0372133)', 4326), NULL, NULL, '1981-07-01', '2018-12-13', NULL, NULL, NULL),
  ('883815', 'Van Dorans Mill Pond', 'Reservoir', 'New Jersey', 'NJ', 'Somerset', 'Bernardsville', 40.7337938, -74.5435976, ST_GeomFromText('POINT(40.7337938 -74.5435976)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('883819', 'Hope Lake', 'Reservoir', 'New Jersey', 'NJ', 'Warren', 'Blairstown', 40.9148423, -74.9647897, ST_GeomFromText('POINT(40.9148423 -74.9647897)', 4326), NULL, NULL, '1981-07-01', '2018-12-13', NULL, NULL, NULL),
  ('883823', 'Paulina Lake', 'Reservoir', 'New Jersey', 'NJ', 'Warren', 'Blairstown', 40.9781415, -74.9398078, ST_GeomFromText('POINT(40.9781415 -74.9398078)', 4326), NULL, NULL, '1981-07-01', '2023-04-05', NULL, NULL, NULL),
  ('883825', 'Ingersoll Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Warren', 'Bloomsbury', 40.7346457, -75.1020554, ST_GeomFromText('POINT(40.7346457 -75.1020554)', 4326), NULL, NULL, '1981-07-01', '2022-07-21', NULL, NULL, NULL),
  ('883834', 'Little Mitten Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.9867959, -74.452906, ST_GeomFromText('POINT(40.9867959 -74.452906)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('883841', 'Patex Pond', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.917161, -74.382269, ST_GeomFromText('POINT(40.917161 -74.382269)', 4326), NULL, NULL, '1981-07-01', '2024-10-29', NULL, NULL, NULL),
  ('883851', 'Lake Creighton', 'Reservoir', 'New Jersey', 'NJ', 'Middlesex', 'Bound Brook', 40.566954, -74.5141096, ST_GeomFromText('POINT(40.566954 -74.5141096)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('883853', 'Spooky Brook Pond', 'Reservoir', 'New Jersey', 'NJ', 'Somerset', 'Bound Brook', 40.5095829, -74.564406, ST_GeomFromText('POINT(40.5095829 -74.564406)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('883868', 'Mill Pond', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'Brookville', 39.7799247, -74.2960394, ST_GeomFromText('POINT(39.7799247 -74.2960394)', 4326), NULL, NULL, '1981-07-01', '2020-03-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('883873', 'Deverson Lake', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.9087544, -74.5747286, ST_GeomFromText('POINT(39.9087544 -74.5747286)', 4326), NULL, NULL, '1981-07-01', '2013-08-14', NULL, NULL, NULL),
  ('883878', 'Lebanon Lake', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.9037401, -74.5628674, ST_GeomFromText('POINT(39.9037401 -74.5628674)', 4326), NULL, NULL, '1981-07-01', '2018-12-15', NULL, NULL, NULL),
  ('883879', 'Cranes Lake', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Buena', 39.6216789, -74.9302014, ST_GeomFromText('POINT(39.6216789 -74.9302014)', 4326), NULL, NULL, '1981-07-01', '2018-12-17', NULL, NULL, NULL),
  ('883884', 'Cedar Lake', 'Reservoir', 'New Jersey', 'NJ', 'Atlantic', 'Buena', 39.5835178, -74.9046678, ST_GeomFromText('POINT(39.5835178 -74.9046678)', 4326), NULL, NULL, '1981-07-01', '2018-12-17', NULL, NULL, NULL),
  ('883896', 'Colliers Lake', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'Cassville', 40.070948, -74.4488093, ST_GeomFromText('POINT(40.070948 -74.4488093)', 4326), NULL, NULL, '1981-07-01', '2018-12-18', NULL, NULL, NULL),
  ('883898', 'Cassville Lake', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'Cassville', 40.1096961, -74.3915124, ST_GeomFromText('POINT(40.1096961 -74.3915124)', 4326), NULL, NULL, '1981-07-01', '2018-12-18', NULL, NULL, NULL),
  ('883909', 'Lake Lekau', 'Reservoir', 'New Jersey', 'NJ', 'Camden', 'Clementon', 39.7937898, -74.9694397, ST_GeomFromText('POINT(39.7937898 -74.9694397)', 4326), NULL, NULL, '1981-07-01', '2018-12-15', NULL, NULL, NULL),
  ('883915', 'Lake Pachoango', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Clementon', 39.8070636, -74.8787233, ST_GeomFromText('POINT(39.8070636 -74.8787233)', 4326), NULL, NULL, '1981-07-01', '2018-12-15', NULL, NULL, NULL),
  ('883917', 'Upper Marlton Lake', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Clementon', 39.805268, -74.9005778, ST_GeomFromText('POINT(39.805268 -74.9005778)', 4326), NULL, NULL, '1981-07-01', '2023-03-24', NULL, NULL, NULL),
  ('883920', 'Wallace Mill Pond (historical)', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Columbus', 40.1065006, -74.6312682, ST_GeomFromText('POINT(40.1065006 -74.6312682)', 4326), NULL, NULL, '1981-07-01', '2020-07-06', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('883923', 'Kittatinny Camp Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Culvers Gap', 41.2410023, -74.8330521, ST_GeomFromText('POINT(41.2410023 -74.8330521)', 4326), NULL, NULL, '1981-07-01', '2019-07-10', NULL, NULL, NULL),
  ('883926', 'Lake Robert Rooke', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Culvers Gap', 41.2160067, -74.7983686, ST_GeomFromText('POINT(41.2160067 -74.7983686)', 4326), NULL, NULL, '1981-07-01', '2019-07-10', NULL, NULL, NULL),
  ('883933', 'Beaver Lake', 'Reservoir', 'New Jersey', 'NJ', 'Cumberland', 'Dividing Creek', 39.3380679, -75.0453107, ST_GeomFromText('POINT(39.3380679 -75.0453107)', 4326), NULL, NULL, '1981-07-01', '2018-12-20', NULL, NULL, NULL),
  ('883935', 'Laurel Lake', 'Reservoir', 'New Jersey', 'NJ', 'Cumberland', 'Dividing Creek', 39.3326148, -75.0196209, ST_GeomFromText('POINT(39.3326148 -75.0196209)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('883938', 'Maple Lake', 'Reservoir', 'New Jersey', 'NJ', 'Atlantic', 'Dorothy', 39.4083157, -74.7791677, ST_GeomFromText('POINT(39.4083157 -74.7791677)', 4326), NULL, NULL, '1981-07-01', '2018-12-17', NULL, NULL, NULL),
  ('883948', 'Foxs Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.8977877, -74.5146552, ST_GeomFromText('POINT(40.8977877 -74.5146552)', 4326), 40.9112424, -74.5285463, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('883951', 'Salem River Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Salem', 'Elmer', 39.6043391, -75.2406632, ST_GeomFromText('POINT(39.6043391 -75.2406632)', 4326), NULL, NULL, '1981-07-01', '2022-08-05', NULL, NULL, NULL),
  ('883956', 'Cascade Lake', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Farmingdale', 40.1443883, -74.1988844, ST_GeomFromText('POINT(40.1443883 -74.1988844)', 4326), NULL, NULL, '1981-07-01', '2020-03-30', NULL, NULL, NULL),
  ('883961', 'Memorial Park Pond', 'Reservoir', 'New Jersey', 'NJ', 'Cumberland', 'Five Points', 39.4785215, -74.9636551, ST_GeomFromText('POINT(39.4785215 -74.9636551)', 4326), NULL, NULL, '1981-07-01', '2018-12-20', NULL, NULL, NULL),
  ('883963', 'Youngs Pond', 'Reservoir', 'New Jersey', 'NJ', 'Warren', 'Flatbrookville', 41.0234094, -74.9804088, ST_GeomFromText('POINT(41.0234094 -74.9804088)', 4326), NULL, NULL, '1981-07-01', '2018-12-13', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('883965', 'Lower Blue Mountain Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Flatbrookville', 41.1016979, -74.9278654, ST_GeomFromText('POINT(41.1016979 -74.9278654)', 4326), NULL, NULL, '1981-07-01', '2013-08-14', NULL, NULL, NULL),
  ('883967', 'Upper Blue Mountain Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Flatbrookville', 41.1045152, -74.9224578, ST_GeomFromText('POINT(41.1045152 -74.9224578)', 4326), NULL, NULL, '1981-07-01', '2022-07-25', NULL, NULL, NULL),
  ('883968', 'Lake Success', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Flatbrookville', 41.1069547, -74.8920752, ST_GeomFromText('POINT(41.1069547 -74.8920752)', 4326), NULL, NULL, '1981-07-01', '2018-12-13', NULL, NULL, NULL),
  ('883972', 'Lake Plymouth', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Flatbrookville', 41.1115528, -74.8757919, ST_GeomFromText('POINT(41.1115528 -74.8757919)', 4326), NULL, NULL, '1981-07-01', '2018-12-13', NULL, NULL, NULL),
  ('883974', 'Hemlock Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Flatbrookville', 41.1154988, -74.9033184, ST_GeomFromText('POINT(41.1154988 -74.9033184)', 4326), NULL, NULL, '1981-07-01', '2019-07-10', NULL, NULL, NULL),
  ('883976', 'Spring Valley Lake', 'Reservoir', 'New Jersey', 'NJ', 'Warren', 'Flatbrookville', 41.0048318, -74.9400614, ST_GeomFromText('POINT(41.0048318 -74.9400614)', 4326), NULL, NULL, '1981-07-01', '2018-12-13', NULL, NULL, NULL),
  ('883995', 'Weldon Brook Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Franklin', 41.0057048, -74.5870564, ST_GeomFromText('POINT(41.0057048 -74.5870564)', 4326), NULL, NULL, '1981-07-01', '2018-12-13', NULL, NULL, NULL),
  ('884002', 'Moss Mill Lake', 'Reservoir', 'New Jersey', 'NJ', 'Atlantic', 'Green Bank', 39.5020689, -74.5115894, ST_GeomFromText('POINT(39.5020689 -74.5115894)', 4326), NULL, NULL, '1981-07-01', '2018-12-18', NULL, NULL, NULL),
  ('884012', 'Hackettstown Storage Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Hackettstown', 40.8611875, -74.7868741, ST_GeomFromText('POINT(40.8611875 -74.7868741)', 4326), NULL, NULL, '1981-07-01', '2022-07-21', NULL, NULL, NULL),
  ('884014', 'Mine Hill Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Hackettstown', 40.8416154, -74.800463, ST_GeomFromText('POINT(40.8416154 -74.800463)', 4326), NULL, NULL, '1981-07-01', '2022-07-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('884028', 'Jutland Lake', 'Reservoir', 'New Jersey', 'NJ', 'Hunterdon', 'Pittstown', 40.6244845, -74.9534771, ST_GeomFromText('POINT(40.6244845 -74.9534771)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('884032', 'Grovers Mill Pond', 'Reservoir', 'New Jersey', 'NJ', 'Mercer', 'Hightstown', 40.3115862, -74.6062925, ST_GeomFromText('POINT(40.3115862 -74.6062925)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('884036', 'Hunt Lake', 'Reservoir', 'New Jersey', 'NJ', 'Mercer', 'Hopewell', 40.3793325, -74.8115812, ST_GeomFromText('POINT(40.3793325 -74.8115812)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('884037', 'Indian Mills Sawmill Pond', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Indian Mills', 39.7949471, -74.7478534, ST_GeomFromText('POINT(39.7949471 -74.7478534)', 4326), NULL, NULL, '1981-07-01', '2022-08-03', NULL, NULL, NULL),
  ('884041', 'Camp Inawendiwin Lake', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Indian Mills', 39.8628114, -74.6858966, ST_GeomFromText('POINT(39.8628114 -74.6858966)', 4326), NULL, NULL, '1981-07-01', '2018-12-15', NULL, NULL, NULL),
  ('884049', 'Gliddon Lake', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'Lakehurst', 40.0744526, -74.3251988, ST_GeomFromText('POINT(40.0744526 -74.3251988)', 4326), NULL, NULL, '1981-07-01', '2022-08-03', NULL, NULL, NULL),
  ('884051', 'Bunker Hill Pond (historical)', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'Lakehurst', 40.0084502, -74.2929234, ST_GeomFromText('POINT(40.0084502 -74.2929234)', 4326), NULL, NULL, '1981-07-01', '2020-03-12', NULL, NULL, NULL),
  ('884055', 'Lake Wadill', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'Lakewood', 40.0495598, -74.1822473, ST_GeomFromText('POINT(40.0495598 -74.1822473)', 4326), NULL, NULL, '1981-07-01', '2018-12-18', NULL, NULL, NULL),
  ('884059', 'Shadow Lake', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch West', 40.349773, -74.0942579, ST_GeomFromText('POINT(40.349773 -74.0942579)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('884063', 'Marlu Lake', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Marlboro', 40.3368205, -74.1565515, ST_GeomFromText('POINT(40.3368205 -74.1565515)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('884068', 'English Creek Pond', 'Reservoir', 'New Jersey', 'NJ', 'Atlantic', 'Marmora', 39.3620324, -74.6684425, ST_GeomFromText('POINT(39.3620324 -74.6684425)', 4326), NULL, NULL, '1981-07-01', '2018-12-17', NULL, NULL, NULL),
  ('884072', 'Gravelly Run Pond', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Pemberton', 39.8795442, -74.6966009, ST_GeomFromText('POINT(39.8795442 -74.6966009)', 4326), NULL, NULL, '1981-07-01', '2023-02-23', NULL, NULL, NULL),
  ('884077', 'Lake Pine', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Medford Lakes', 39.8630497, -74.8511251, ST_GeomFromText('POINT(39.8630497 -74.8511251)', 4326), NULL, NULL, '1981-07-01', '2023-03-24', NULL, NULL, NULL),
  ('884079', 'Timber Lake', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Medford Lakes', 39.8694153, -74.8253782, ST_GeomFromText('POINT(39.8694153 -74.8253782)', 4326), NULL, NULL, '1981-07-01', '2018-12-15', NULL, NULL, NULL),
  ('884083', 'Birchwood Lake', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Medford Lakes', 39.866074, -74.8164651, ST_GeomFromText('POINT(39.866074 -74.8164651)', 4326), NULL, NULL, '1981-07-01', '2018-12-15', NULL, NULL, NULL),
  ('884086', 'Upper Stokes Pond', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Medford Lakes', 39.8446807, -74.7983701, ST_GeomFromText('POINT(39.8446807 -74.7983701)', 4326), NULL, NULL, '1981-07-01', '2018-12-15', NULL, NULL, NULL),
  ('884101', 'Jaqui Pond', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Morristown', 40.8255574, -74.4946708, ST_GeomFromText('POINT(40.8255574 -74.4946708)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('884103', 'North Branch Whippany River', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Morristown', 40.8123233, -74.4920307, ST_GeomFromText('POINT(40.8123233 -74.4920307)', 4326), 40.8486876, -74.5152426, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('884110', 'Vincentown Millpond', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Pemberton', 39.9309308, -74.7488095, ST_GeomFromText('POINT(39.9309308 -74.7488095)', 4326), NULL, NULL, '1981-07-01', '2018-12-15', NULL, NULL, NULL),
  ('884123', 'Village Dock Lake', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Newfield', 39.6008221, -75.0608931, ST_GeomFromText('POINT(39.6008221 -75.0608931)', 4326), NULL, NULL, '1981-07-01', '2020-04-29', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('884125', 'Dunker Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Newfoundland', 41.0656527, -74.4857122, ST_GeomFromText('POINT(41.0656527 -74.4857122)', 4326), 41.1133333, -74.4625, '1981-07-01', NULL, NULL, NULL, NULL),
  ('884136', 'Cantys Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Newfoundland', 41.0034324, -74.3856244, ST_GeomFromText('POINT(41.0034324 -74.3856244)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('884142', 'Reynolds Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Newton East', 41.0821851, -74.7238278, ST_GeomFromText('POINT(41.0821851 -74.7238278)', 4326), NULL, NULL, '1981-07-01', '2018-12-13', NULL, NULL, NULL),
  ('884145', 'Upper Mohawk Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Newton East', 41.032745, -74.659695, ST_GeomFromText('POINT(41.032745 -74.659695)', 4326), NULL, NULL, '1981-07-01', '2022-07-21', NULL, NULL, NULL),
  ('884154', 'Willow Crest Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Newton West', 41.1041594, -74.8451671, ST_GeomFromText('POINT(41.1041594 -74.8451671)', 4326), NULL, NULL, '1981-07-01', '2018-12-13', NULL, NULL, NULL),
  ('884158', 'Bales Mill Pond', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Newton West', 41.1051165, -74.7543555, ST_GeomFromText('POINT(41.1051165 -74.7543555)', 4326), NULL, NULL, '1981-07-01', '2022-07-21', NULL, NULL, NULL),
  ('884159', 'Thomas Rich Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Newton West', 41.0730556, -74.7922546, ST_GeomFromText('POINT(41.0730556 -74.7922546)', 4326), NULL, NULL, '1981-07-01', '2018-12-13', NULL, NULL, NULL),
  ('884164', 'Headleys Pond', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Newton West', 41.0418832, -74.8089841, ST_GeomFromText('POINT(41.0418832 -74.8089841)', 4326), NULL, NULL, '1981-07-01', '2018-12-13', NULL, NULL, NULL),
  ('884166', 'Pancoast Mill Pond', 'Reservoir', 'New Jersey', 'NJ', 'Atlantic', 'Buena', 39.5206172, -74.8759977, ST_GeomFromText('POINT(39.5206172 -74.8759977)', 4326), NULL, NULL, '1981-07-01', '2018-12-17', NULL, NULL, NULL),
  ('884168', 'Lake Albert', 'Reservoir', 'New Jersey', 'NJ', 'Atlantic', 'Newtonville', 39.590437, -74.8716151, ST_GeomFromText('POINT(39.590437 -74.8716151)', 4326), NULL, NULL, '1981-07-01', '2018-12-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('884170', 'Lake George', 'Reservoir', 'New Jersey', 'NJ', 'Atlantic', 'Buena', 39.585116, -74.9029456, ST_GeomFromText('POINT(39.585116 -74.9029456)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('884181', 'Rambaut Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Paterson', 40.9984009, -74.1661737, ST_GeomFromText('POINT(40.9984009 -74.1661737)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('884184', 'Maple Lake', 'Reservoir', 'New Jersey', 'NJ', 'Bergen', 'Paterson', 40.9985081, -74.1581265, ST_GeomFromText('POINT(40.9985081 -74.1581265)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('884189', 'Lake Three (historical)', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Pemberton', 39.9067811, -74.7112702, ST_GeomFromText('POINT(39.9067811 -74.7112702)', 4326), NULL, NULL, '1981-07-01', '2020-04-29', NULL, NULL, NULL),
  ('884193', 'Burrs Mill Brook Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.8869347, -74.6241947, ST_GeomFromText('POINT(39.8869347 -74.6241947)', 4326), NULL, NULL, '1981-07-01', '2023-02-23', NULL, NULL, NULL),
  ('884194', 'Curlis Lake', 'Reservoir', 'New Jersey', 'NJ', 'Mercer', 'Pennington', 40.3245508, -74.7742792, ST_GeomFromText('POINT(40.3245508 -74.7742792)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('884197', 'Kelly Pond', 'Reservoir', 'New Jersey', 'NJ', 'Salem', 'Penns Grove', 39.6702647, -75.4034899, ST_GeomFromText('POINT(39.6702647 -75.4034899)', 4326), NULL, NULL, '1981-07-01', '2018-12-20', NULL, NULL, NULL),
  ('884202', 'Louemma Lake', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Pine Island', 41.2575557, -74.4971946, ST_GeomFromText('POINT(41.2575557 -74.4971946)', 4326), NULL, NULL, '1981-07-01', '2020-11-09', NULL, NULL, NULL),
  ('884211', 'Rough Acres Pond (historical)', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Pitman West', 39.7176143, -75.1371214, ST_GeomFromText('POINT(39.7176143 -75.1371214)', 4326), NULL, NULL, '1981-07-01', '2020-04-29', NULL, NULL, NULL),
  ('884233', 'Hoffmans Mill Pond', 'Reservoir', 'New Jersey', 'NJ', 'Cumberland', 'Port Elizabeth', 39.261823, -74.9119808, ST_GeomFromText('POINT(39.261823 -74.9119808)', 4326), NULL, NULL, '1981-07-01', '2022-08-05', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('884235', 'Keller Pond', 'Reservoir', 'New Jersey', 'NJ', 'Sussex', 'Port Jervis South', 41.3025816, -74.7222555, ST_GeomFromText('POINT(41.3025816 -74.7222555)', 4326), NULL, NULL, '1981-07-01', '2019-07-10', NULL, NULL, NULL),
  ('884241', 'Columbia Lake', 'Reservoir', 'New Jersey', 'NJ', 'Warren', 'Portland', 40.9299791, -75.0802927, ST_GeomFromText('POINT(40.9299791 -75.0802927)', 4326), NULL, NULL, '1981-07-01', '2018-12-13', NULL, NULL, NULL),
  ('884247', 'Stony Brook Fourteen Basin', 'Reservoir', 'New Jersey', 'NJ', 'Mercer', 'Princeton', 40.3473387, -74.7465261, ST_GeomFromText('POINT(40.3473387 -74.7465261)', 4326), NULL, NULL, '1981-07-01', '2013-09-06', NULL, NULL, NULL),
  ('884256', 'Sylvan Lake', 'Reservoir', 'New Jersey', 'NJ', 'Somerset', 'Rocky Hill', 40.4120977, -74.6981081, ST_GeomFromText('POINT(40.4120977 -74.6981081)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('884260', 'Switlick Lake', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'Roosevelt', 40.1345219, -74.4363476, ST_GeomFromText('POINT(40.1345219 -74.4363476)', 4326), NULL, NULL, '1981-07-01', '2018-12-15', NULL, NULL, NULL),
  ('884264', 'Shackamaxon Lake', 'Reservoir', 'New Jersey', 'NJ', 'Union', 'Roselle', 40.6273094, -74.3541994, ST_GeomFromText('POINT(40.6273094 -74.3541994)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('884268', 'Jacksons Pond', 'Reservoir', 'New Jersey', 'NJ', 'Union', 'Roselle', 40.6301482, -74.2852534, ST_GeomFromText('POINT(40.6301482 -74.2852534)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('884269', 'Bloodgoods Pond', 'Reservoir', 'New Jersey', 'NJ', 'Union', 'Roselle', 40.6301267, -74.2977654, ST_GeomFromText('POINT(40.6301267 -74.2977654)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('884273', 'Lebanon Lake', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Browns Mills', 39.9049281, -74.5653321, ST_GeomFromText('POINT(39.9049281 -74.5653321)', 4326), NULL, NULL, '1981-07-01', '2020-04-29', NULL, NULL, NULL),
  ('884276', 'Jaggards Pond (historical)', 'Reservoir', 'New Jersey', 'NJ', 'Camden', 'Runnemede', 39.7937255, -75.0126677, ST_GeomFromText('POINT(39.7937255 -75.0126677)', 4326), NULL, NULL, '1981-07-01', '2020-04-29', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('884283', 'Laurel Run', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Salem', 39.5485867, -75.4125743, ST_GeomFromText('POINT(39.5485867 -75.4125743)', 4326), 39.5357843, -75.3791124, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('884286', 'Jericho Pond', 'Reservoir', 'New Jersey', 'NJ', 'Salem', 'Shiloh', 39.4720655, -75.3513063, ST_GeomFromText('POINT(39.4720655 -75.3513063)', 4326), NULL, NULL, '1981-07-01', '2013-08-14', NULL, NULL, NULL),
  ('884304', 'Schiller Pond', 'Reservoir', 'New Jersey', 'NJ', 'Hunterdon', 'Stockton', 40.3796795, -74.8995434, ST_GeomFromText('POINT(40.3796795 -74.8995434)', 4326), NULL, NULL, '1981-07-01', '2018-12-13', NULL, NULL, NULL),
  ('884313', 'Pohatcong Lake', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'Tuckerton', 39.6043931, -74.3451455, ST_GeomFromText('POINT(39.6043931 -74.3451455)', 4326), NULL, NULL, '1981-07-01', '2018-12-18', NULL, NULL, NULL),
  ('884357', 'Spruce Lake', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Williamstown', 39.6411185, -74.9564548, ST_GeomFromText('POINT(39.6411185 -74.9564548)', 4326), NULL, NULL, '1981-07-01', '2022-08-05', NULL, NULL, NULL),
  ('884365', 'Broad Street Lake', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Woodbury', 39.8415178, -75.1488039, ST_GeomFromText('POINT(39.8415178 -75.1488039)', 4326), NULL, NULL, '1981-07-01', '2018-12-15', NULL, NULL, NULL),
  ('884366', 'Porches Mill Pond', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Woodstown', 39.701941, -75.3289964, ST_GeomFromText('POINT(39.701941 -75.3289964)', 4326), NULL, NULL, '1981-07-01', '2018-12-15', NULL, NULL, NULL),
  ('884370', 'Harrisonville Lake', 'Reservoir', 'New Jersey', 'NJ', 'Salem', 'Woodstown', 39.6817903, -75.2632128, ST_GeomFromText('POINT(39.6817903 -75.2632128)', 4326), NULL, NULL, '1981-07-01', '2023-03-24', NULL, NULL, NULL),
  ('884374', 'Kincaid Lake', 'Reservoir', 'New Jersey', 'NJ', 'Gloucester', 'Pitman West', 39.7071664, -75.1891409, ST_GeomFromText('POINT(39.7071664 -75.1891409)', 4326), NULL, NULL, '1981-07-01', '2018-12-15', NULL, NULL, NULL),
  ('884378', 'Amphibious Lake', 'Reservoir', 'New Jersey', 'NJ', 'Burlington', 'Browns Mills', 39.9988138, -74.6035681, ST_GeomFromText('POINT(39.9988138 -74.6035681)', 4326), NULL, NULL, '1981-07-01', '2018-12-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('884393', 'Upper Yards Creek Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Warren', 'Bushkill', 41.0058621, -75.0205937, ST_GeomFromText('POINT(41.0058621 -75.0205937)', 4326), NULL, NULL, '1981-07-01', '2022-07-21', NULL, NULL, NULL),
  ('884396', 'Lower Yards Creek Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Warren', 'Bushkill', 41.0149633, -75.0178156, ST_GeomFromText('POINT(41.0149633 -75.0178156)', 4326), NULL, NULL, '1981-07-01', '2022-07-21', NULL, NULL, NULL),
  ('884400', 'Corson Inlet', 'Bay', 'New Jersey', 'NJ', 'Cape May', 'Sea Isle City', 39.2056704, -74.6490478, ST_GeomFromText('POINT(39.2056704 -74.6490478)', 4326), NULL, NULL, '1979-09-08', '2016-09-23', 'Official', 'Board Decision', '1893-01-01'),
  ('884524', 'Ike''s Point', 'Cape', 'New Jersey', 'NJ', 'Cape May', 'Stone Harbor', 39.0598356, -74.8201673, ST_GeomFromText('POINT(39.0598356 -74.8201673)', 4326), NULL, NULL, '1979-09-08', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('884542', 'Lawrence Brook', 'Stream', 'New Jersey', 'NJ', 'Middlesex', 'New Brunswick', 40.484584, -74.3929285, ST_GeomFromText('POINT(40.484584 -74.3929285)', 4326), 40.3719981, -74.527747, '1979-09-08', '2013-06-11', NULL, NULL, NULL),
  ('884551', 'Swedes Lake', 'Lake', 'New Jersey', 'NJ', 'Burlington', 'Beverly', 40.0262583, -74.9746027, ST_GeomFromText('POINT(40.0262583 -74.9746027)', 4326), NULL, NULL, '1981-07-01', '2018-12-15', 'Official', 'Board Decision', '1980-01-01'),
  ('885011', 'The Palisades', 'Cliff', 'New Jersey', 'NJ', 'Bergen', 'Yonkers', 40.9500984, -73.9204141, ST_GeomFromText('POINT(40.9500984 -73.9204141)', 4326), NULL, NULL, '1981-07-01', '2019-11-22', NULL, NULL, NULL),
  ('956070', 'Lower Bay', 'Bay', 'New York', 'NY', 'Richmond', 'The Narrows', 40.5294922, -74.0419907, ST_GeomFromText('POINT(40.5294922 -74.0419907)', 4326), NULL, NULL, '1979-09-08', '2022-10-21', 'Official', 'Board Decision', '1983-01-01'),
  ('962157', 'Ramapo Mountains', 'Range', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.1208693, -74.2003507, ST_GeomFromText('POINT(41.1208693 -74.2003507)', 4326), NULL, NULL, '1980-01-23', '2024-10-02', NULL, NULL, NULL),
  ('962535', 'Ringwood River', 'Stream', 'New York', 'NY', 'Orange', 'Greenwood Lake', 41.1262066, -74.2662597, ST_GeomFromText('POINT(41.1262066 -74.2662597)', 4326), 41.1537062, -74.2379255, '1980-01-23', '2013-06-05', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('965945', 'Sparkill Brook', 'Stream', 'New York', 'NY', 'Rockland', 'Nyack', 41.0143246, -73.9380983, ST_GeomFromText('POINT(41.0143246 -73.9380983)', 4326), 40.9852922, -73.9206934, '1980-01-23', '2013-06-11', NULL, NULL, NULL),
  ('969869', 'Beech Brook', 'Stream', 'New York', 'NY', 'Orange', 'Greenwood Lake', 41.1384288, -74.3048724, ST_GeomFromText('POINT(41.1384288 -74.3048724)', 4326), 41.1644444, -74.2775, '1980-01-23', NULL, NULL, NULL, NULL),
  ('970226', 'Hudson River', 'Stream', 'New York', 'NY', 'New York', 'Jersey City', 40.6967694, -74.0281957, ST_GeomFromText('POINT(40.6967694 -74.0281957)', 4326), 44.0911111, -74.0558333, '1980-01-23', '2020-02-13', 'Official', 'Board Decision', '1931-01-01'),
  ('970314', 'Long House Creek', 'Stream', 'New York', 'NY', 'Orange', 'Warwick', 41.2706495, -74.3251519, ST_GeomFromText('POINT(41.2706495 -74.3251519)', 4326), 41.1859284, -74.3712643, '1980-01-23', NULL, NULL, NULL, NULL),
  ('970402', 'Neversink River', 'Stream', 'New York', 'NY', 'Orange', 'Port Jervis South', 41.3566143, -74.6954441, ST_GeomFromText('POINT(41.3566143 -74.6954441)', 4326), 41.9152798, -74.5748252, '1980-01-23', '2015-03-30', NULL, NULL, NULL),
  ('970746', 'Wallkill River', 'Stream', 'New York', 'NY', 'Ulster', 'Rosendale', 41.8537039, -74.0484741, ST_GeomFromText('POINT(41.8537039 -74.0484741)', 4326), 41.0329341, -74.6434416, '1980-01-23', '2020-08-26', 'Official', 'Board Decision', '1902-01-01'),
  ('970752', 'Wawayanda Creek', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Wawayanda', 41.2292576, -74.4734162, ST_GeomFromText('POINT(41.2292576 -74.4734162)', 4326), 41.3083095, -74.2703676, '1979-09-08', '2014-12-03', NULL, NULL, NULL),
  ('973972', 'Double Kill', 'Stream', 'New York', 'NY', 'Orange', 'Wawayanda', 41.2383386, -74.4207484, ST_GeomFromText('POINT(41.2383386 -74.4207484)', 4326), 41.1850066, -74.421478, '1992-11-01', '2015-08-14', 'Official', 'Board Decision', '1972-01-01'),
  ('977426', 'Long Island', 'Island', 'New York', 'NY', 'Suffolk', 'Patchogue', 40.8167651, -73.0662203, ST_GeomFromText('POINT(40.8167651 -73.0662203)', 4326), NULL, NULL, '1980-01-23', '2020-03-11', NULL, NULL, NULL),
  ('978408', 'Pascack Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Yonkers', 40.9804326, -73.9913964, ST_GeomFromText('POINT(40.9804326 -73.9913964)', 4326), 41.141934, -74.0375948, '1979-09-08', '2014-10-30', 'Official', 'Board Decision', '1894-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1168423', 'Arrow Island', 'Island', 'Pennsylvania', 'PA', 'Northampton', 'Portland', 40.9617625, -75.1190664, ST_GeomFromText('POINT(40.9617625 -75.1190664)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('1181415', 'Money Island', 'Island', 'Pennsylvania', 'PA', 'Bucks', 'Trenton West', 40.1259434, -74.7923846, ST_GeomFromText('POINT(40.1259434 -74.7923846)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('1182940', 'Old Sow Island', 'Island', 'Pennsylvania', 'PA', 'Northampton', 'Easton', 40.639822, -75.1929534, ST_GeomFromText('POINT(40.639822 -75.1929534)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('1183947', 'Pinkertons Island', 'Island', 'New Jersey', 'NJ', 'Hunterdon', 'Lumberville', 40.4837145, -75.061282, ST_GeomFromText('POINT(40.4837145 -75.061282)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('1187791', 'Slateford Creek', 'Stream', 'Pennsylvania', 'PA', 'Northampton', 'Portland', 40.9489849, -75.1121216, ST_GeomFromText('POINT(40.9489849 -75.1121216)', 4326), 40.9453733, -75.1526784, '1979-08-02', NULL, NULL, NULL, NULL),
  ('1198109', 'Raymondskill Creek', 'Stream', 'Pennsylvania', 'PA', 'Pike', 'Milford', 41.2856497, -74.8307227, ST_GeomFromText('POINT(41.2856497 -74.8307227)', 4326), 41.3542587, -74.9404469, '1979-08-02', NULL, 'Official', 'Board Decision', '1959-01-01'),
  ('1699855', 'Pyramid Mountain', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.9526361, -74.3888284, ST_GeomFromText('POINT(40.9526361 -74.3888284)', 4326), NULL, NULL, '1996-08-20', '2021-11-20', 'Official', 'Board Decision', '1996-01-01'),
  ('1782026', 'Wallkill Valley', 'Valley', 'New York', 'NY', 'Ulster', 'Rosendale', 41.852827, -74.0484761, ST_GeomFromText('POINT(41.852827 -74.0484761)', 4326), 41.0336824, -74.6427961, '1998-02-23', '2021-11-20', NULL, NULL, NULL),
  ('1802621', 'Punkhorn Creek', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9709313, -74.7034965, ST_GeomFromText('POINT(40.9709313 -74.7034965)', 4326), 40.9825, -74.7038889, '1998-07-30', NULL, NULL, NULL, NULL),
  ('1802792', 'Pottersville Falls', 'Falls', 'New Jersey', 'NJ', 'Morris', 'Gladstone', 40.7201007, -74.7265511, ST_GeomFromText('POINT(40.7201007 -74.7265511)', 4326), NULL, NULL, '1998-10-22', '2014-10-07', 'Official', 'Board Decision', '1898-02-02');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1853837', 'Walnut Creek', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Mendham', 40.7894448, -74.5485717, ST_GeomFromText('POINT(40.7894448 -74.5485717)', 4326), 40.7847252, -74.5635867, '2000-03-08', '2013-06-11', 'Official', 'Board Decision', '2000-01-01'),
  ('1989051', 'Beacon Hill', 'Summit', 'New Jersey', 'NJ', 'Monmouth', 'Keyport', 40.3755741, -74.2251239, ST_GeomFromText('POINT(40.3755741 -74.2251239)', 4326), NULL, NULL, '1981-07-01', '2022-08-13', NULL, NULL, NULL),
  ('1989053', 'Birch Swamp Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Keyport', 40.4042831, -74.2485505, ST_GeomFromText('POINT(40.4042831 -74.2485505)', 4326), 40.3886111, -74.2466667, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('1989253', 'Lake Ames', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.9528762, -74.5121012, ST_GeomFromText('POINT(40.9528762 -74.5121012)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('1989370', 'Deal Lake', 'Lake', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.2312237, -74.0051372, ST_GeomFromText('POINT(40.2312237 -74.0051372)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('1989371', 'Wesley Lake', 'Lake', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.2161172, -74.0062177, ST_GeomFromText('POINT(40.2161172 -74.0062177)', 4326), NULL, NULL, '1981-07-01', '2018-12-18', NULL, NULL, NULL),
  ('1989412', 'Canoe Brook Reservoir Number Two', 'Reservoir', 'New Jersey', 'NJ', 'Essex', 'Roselle', 40.7470756, -74.3613543, ST_GeomFromText('POINT(40.7470756 -74.3613543)', 4326), NULL, NULL, '1981-07-01', '2024-10-30', NULL, NULL, NULL),
  ('1989413', 'Canoe Brook Reservoir Number One', 'Reservoir', 'New Jersey', 'NJ', 'Essex', 'Caldwell', 40.751937, -74.3522573, ST_GeomFromText('POINT(40.751937 -74.3522573)', 4326), NULL, NULL, '1981-07-01', '2024-10-30', NULL, NULL, NULL),
  ('1989478', 'Van Horn Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Rocky Hill', 40.3987171, -74.6289092, ST_GeomFromText('POINT(40.3987171 -74.6289092)', 4326), 40.3955556, -74.6527778, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('1989509', 'Fox Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Rocky Hill', 40.4516498, -74.6467406, ST_GeomFromText('POINT(40.4516498 -74.6467406)', 4326), 40.4391667, -74.6791667, '1981-07-01', '2013-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1989515', 'Dead Tree Run', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Rocky Hill', 40.4292721, -74.644047, ST_GeomFromText('POINT(40.4292721 -74.644047)', 4326), 40.4455556, -74.6311111, '1981-07-01', NULL, NULL, NULL, NULL),
  ('1989594', 'Honey Lake', 'Lake', 'New Jersey', 'NJ', 'Mercer', 'Princeton', 40.3473387, -74.7465261, ST_GeomFromText('POINT(40.3473387 -74.7465261)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('1989604', 'Mountain Lake', 'Lake', 'New Jersey', 'NJ', 'Mercer', 'Princeton', 40.3606623, -74.6782146, ST_GeomFromText('POINT(40.3606623 -74.6782146)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('1989620', 'Mercer County Lake', 'Reservoir', 'New Jersey', 'NJ', 'Mercer', 'Princeton', 40.2678165, -74.6495878, ST_GeomFromText('POINT(40.2678165 -74.6495878)', 4326), NULL, NULL, '1981-07-01', '2022-07-21', NULL, NULL, NULL),
  ('1990147', 'Throck Morton Hill', 'Summit', 'New Jersey', 'NJ', 'Monmouth', 'Marlboro', 40.2511647, -74.1797172, ST_GeomFromText('POINT(40.2511647 -74.1797172)', 4326), NULL, NULL, '1981-07-01', '2024-10-02', NULL, NULL, NULL),
  ('1990170', 'Lippincort Hill', 'Summit', 'New Jersey', 'NJ', 'Monmouth', 'Marlboro', 40.2556263, -74.126722, ST_GeomFromText('POINT(40.2556263 -74.126722)', 4326), NULL, NULL, '1981-07-01', '2021-11-20', NULL, NULL, NULL),
  ('1990173', 'Sandy Brook', 'Stream', 'New Jersey', 'NJ', 'Monmouth', 'Freehold', 40.364553, -74.2770906, ST_GeomFromText('POINT(40.364553 -74.2770906)', 4326), 40.3731642, -74.2420895, '1981-07-01', NULL, NULL, NULL, NULL),
  ('2037826', 'Neepaulakating Creek', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Hamburg', 41.1990769, -74.6112294, ST_GeomFromText('POINT(41.1990769 -74.6112294)', 4326), 41.223151, -74.6337733, '2004-04-16', '2013-06-11', 'Official', 'Board Decision', '2004-01-01'),
  ('2042081', 'Robinson Pond (historical)', 'Lake', 'New Jersey', 'NJ', 'Middlesex', 'Perth Amboy', 40.5245492, -74.3332037, ST_GeomFromText('POINT(40.5245492 -74.3332037)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('2042689', 'Fox Hill Spring', 'Spring', 'New Jersey', 'NJ', 'Hunterdon', 'Califon', 40.7239895, -74.7687748, ST_GeomFromText('POINT(40.7239895 -74.7687748)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2042706', 'Echo Lake (historical)', 'Lake', 'New Jersey', 'NJ', 'Hunterdon', 'Pittstown', 40.5814913, -74.8751662, ST_GeomFromText('POINT(40.5814913 -74.8751662)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('2044200', 'Laurence Harbor Beach', 'Beach', 'New Jersey', 'NJ', 'Middlesex', 'Keyport', 40.4587179, -74.2445894, ST_GeomFromText('POINT(40.4587179 -74.2445894)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('2044861', 'L Street Bathing Beach', 'Beach', 'New Jersey', 'NJ', 'Monmouth', 'Asbury Park', 40.1784897, -74.0335464, ST_GeomFromText('POINT(40.1784897 -74.0335464)', 4326), NULL, NULL, '1981-07-01', '2015-02-06', NULL, NULL, NULL),
  ('2044865', 'Barley Point Island', 'Island', 'New Jersey', 'NJ', 'Monmouth', 'Sandy Hook East', 40.3784428, -73.9934713, ST_GeomFromText('POINT(40.3784428 -73.9934713)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('2044866', 'Skeleton Hill Island', 'Island', 'New Jersey', 'NJ', 'Monmouth', 'Sandy Hook East', 40.4226085, -73.9948606, ST_GeomFromText('POINT(40.4226085 -73.9948606)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('2044867', 'South Island', 'Island', 'New Jersey', 'NJ', 'Monmouth', 'Sandy Hook East', 40.4192753, -73.9876382, ST_GeomFromText('POINT(40.4192753 -73.9876382)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('2044947', 'Shippees Pond', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch West', 40.3596725, -74.0512182, ST_GeomFromText('POINT(40.3596725 -74.0512182)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('2045191', 'Shiers Pond (historical)', 'Reservoir', 'New Jersey', 'NJ', 'Monmouth', 'Marlboro', 40.2565003, -74.1984771, ST_GeomFromText('POINT(40.2565003 -74.1984771)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('2045667', 'Lake George', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Hackettstown', 40.7989885, -74.7843313, ST_GeomFromText('POINT(40.7989885 -74.7843313)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('2045934', 'West Carvel Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.689564, -74.1698601, ST_GeomFromText('POINT(39.689564 -74.1698601)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2045935', 'Woods Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.6937308, -74.1490259, ST_GeomFromText('POINT(39.6937308 -74.1490259)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('2047024', 'Lake Hohenstein', 'Reservoir', 'New Jersey', 'NJ', 'Ocean', 'Roosevelt', 40.1615445, -74.4202879, ST_GeomFromText('POINT(40.1615445 -74.4202879)', 4326), NULL, NULL, '1981-07-01', '2022-08-03', NULL, NULL, NULL),
  ('2047216', 'Dover Pond (historical)', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.886488, -74.5609913, ST_GeomFromText('POINT(40.886488 -74.5609913)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('2052572', 'Carters Pond', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.9763419, -74.3952019, ST_GeomFromText('POINT(40.9763419 -74.3952019)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('2052573', 'Jays Pond', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.968081, -74.4019772, ST_GeomFromText('POINT(40.968081 -74.4019772)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('2052574', 'Lake Lillian', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Chester', 40.8329412, -74.6423175, ST_GeomFromText('POINT(40.8329412 -74.6423175)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('2052575', 'Lake Tumble-In', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.9241454, -74.4358868, ST_GeomFromText('POINT(40.9241454 -74.4358868)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('2052576', 'Manor Lake', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.882276, -74.427321, ST_GeomFromText('POINT(40.882276 -74.427321)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('2052623', 'Calais Mountain', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Mendham', 40.8234247, -74.586268, ST_GeomFromText('POINT(40.8234247 -74.586268)', 4326), NULL, NULL, '1981-07-01', '2018-04-17', NULL, NULL, NULL),
  ('2052788', 'Diamond Springs Pond', 'Lake', 'New Jersey', 'NJ', 'Morris', 'Boonton', 40.901295, -74.4672286, ST_GeomFromText('POINT(40.901295 -74.4672286)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2052794', 'Mendham Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Mendham', 40.8114123, -74.6083278, ST_GeomFromText('POINT(40.8114123 -74.6083278)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('2052796', 'Walrus Pond', 'Reservoir', 'New Jersey', 'NJ', 'Morris', 'Morristown', 40.8319706, -74.4668432, ST_GeomFromText('POINT(40.8319706 -74.4668432)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('2054431', 'Willow Lake', 'Lake', 'New Jersey', 'NJ', 'Bergen', 'Weehawken', 40.8484644, -74.0356386, ST_GeomFromText('POINT(40.8484644 -74.0356386)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL),
  ('2056483', 'Oakes Pond (historical)', 'Reservoir', 'New Jersey', 'NJ', 'Essex', 'Orange', 40.8006559, -74.190145, ST_GeomFromText('POINT(40.8006559 -74.190145)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL),
  ('2059574', 'Bunker Hill', 'Summit', 'New Jersey', 'NJ', 'Somerset', 'Monmouth Junction', 40.4321075, -74.557786, ST_GeomFromText('POINT(40.4321075 -74.557786)', 4326), NULL, NULL, '1981-07-01', '2021-11-20', NULL, NULL, NULL),
  ('2059575', 'Tenmile Run Mountain', 'Summit', 'New Jersey', 'NJ', 'Somerset', 'Monmouth Junction', 40.4267641, -74.5993218, ST_GeomFromText('POINT(40.4267641 -74.5993218)', 4326), NULL, NULL, '1981-07-01', '2021-11-20', NULL, NULL, NULL),
  ('2059720', 'Cedar Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Bound Brook', 40.5344036, -74.5050327, ST_GeomFromText('POINT(40.5344036 -74.5050327)', 4326), 40.5110646, -74.5276746, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('2059721', 'Fox Creek', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Bound Brook', 40.5250645, -74.5116591, ST_GeomFromText('POINT(40.5250645 -74.5116591)', 4326), 40.5062457, -74.5183378, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('2059724', 'Ninemile Run', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Monmouth Junction', 40.4666538, -74.5366359, ST_GeomFromText('POINT(40.4666538 -74.5366359)', 4326), 40.4141667, -74.5491667, '1981-07-01', '2013-06-11', NULL, NULL, NULL),
  ('2059760', 'Rosedale Lake', 'Reservoir', 'New Jersey', 'NJ', 'Mercer', 'Pennington', 40.3299532, -74.7561276, ST_GeomFromText('POINT(40.3299532 -74.7561276)', 4326), NULL, NULL, '1981-07-01', '2020-08-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2076400', 'Long Beach Island', 'Island', 'New Jersey', 'NJ', 'Ocean', 'Ship Bottom', 39.6598, -74.1708, ST_GeomFromText('POINT(39.6598 -74.1708)', 4326), NULL, NULL, '2005-11-10', NULL, NULL, NULL, NULL),
  ('2118219', 'Cowboy Creek', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9302773, -74.7061729, ST_GeomFromText('POINT(40.9302773 -74.7061729)', 4326), 40.934865, -74.6806169, '2007-04-13', '2013-06-11', 'Official', 'Board Decision', '2007-04-12'),
  ('2118220', 'Chemy Creek', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Tranquility', 40.9308731, -74.7709751, ST_GeomFromText('POINT(40.9308731 -74.7709751)', 4326), 40.9308333, -74.7794444, '2007-04-13', '2013-06-11', 'Official', 'Board Decision', '2007-04-12'),
  ('2118221', 'Cranberry Bog Run', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Tranquility', 40.9385608, -74.752543, ST_GeomFromText('POINT(40.9385608 -74.752543)', 4326), 40.9322222, -74.7658333, '2007-04-13', '2013-06-11', 'Official', 'Board Decision', '2007-04-12'),
  ('2118235', 'Ghost Pony Brook', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Stanhope', 40.9500118, -74.7362244, ST_GeomFromText('POINT(40.9500118 -74.7362244)', 4326), 40.960529, -74.7266436, '2007-04-13', '2011-12-09', 'Official', 'Board Decision', '2007-04-12'),
  ('2118236', 'Ledge Run', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Tranquility', 40.9483333, -74.7516667, ST_GeomFromText('POINT(40.9483333 -74.7516667)', 4326), 40.9544444, -74.7533333, '2007-04-13', NULL, 'Official', 'Board Decision', '2007-04-12'),
  ('2118237', 'Teeny Creek', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Tranquility', 40.9238889, -74.7786111, ST_GeomFromText('POINT(40.9238889 -74.7786111)', 4326), 40.925, -74.7852778, '2007-04-13', NULL, 'Official', 'Board Decision', '2007-04-12'),
  ('2118238', 'Tiny Creek', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Tranquility', 40.9236111, -74.7741667, ST_GeomFromText('POINT(40.9236111 -74.7741667)', 4326), 40.9227778, -74.7844444, '2007-04-13', NULL, 'Official', 'Board Decision', '2007-04-12'),
  ('2118239', 'Tow Path Creek', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Tranquility', 40.9122356, -74.7675526, ST_GeomFromText('POINT(40.9122356 -74.7675526)', 4326), 40.9189365, -74.7706103, '2007-04-13', '2013-06-11', 'Official', 'Board Decision', '2007-04-12'),
  ('2118240', 'Weaver House Run', 'Stream', 'New Jersey', 'NJ', 'Sussex', 'Tranquility', 40.9483333, -74.7536111, ST_GeomFromText('POINT(40.9483333 -74.7536111)', 4326), 40.9438889, -74.7572222, '2007-04-13', NULL, 'Official', 'Board Decision', '2007-04-12');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2123515', 'Strawberry Run', 'Stream', 'New Jersey', 'NJ', 'Mercer', 'Princeton', 40.3351998, -74.6893206, ST_GeomFromText('POINT(40.3351998 -74.6893206)', 4326), 40.3288889, -74.7125, '2007-05-10', '2011-12-09', 'Official', 'Board Decision', '2007-05-10'),
  ('2339508', 'Fort Nonsense Hill', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Morristown', 40.7936762, -74.4882836, ST_GeomFromText('POINT(40.7936762 -74.4882836)', 4326), NULL, NULL, '2007-08-28', '2018-04-19', NULL, NULL, NULL),
  ('2339509', 'Bloomer Beach', 'Beach', 'New Jersey', 'NJ', 'Bergen', 'Yonkers', 40.8822222, -73.9444444, ST_GeomFromText('POINT(40.8822222 -73.9444444)', 4326), NULL, NULL, '2007-08-24', NULL, NULL, NULL, NULL),
  ('2339510', 'Canoe Beach', 'Beach', 'New Jersey', 'NJ', 'Bergen', 'Yonkers', 40.8966667, -73.9361111, ST_GeomFromText('POINT(40.8966667 -73.9361111)', 4326), NULL, NULL, '2007-08-24', NULL, NULL, NULL, NULL),
  ('2339511', 'Huylers Beach', 'Beach', 'New Jersey', 'NJ', 'Bergen', 'Yonkers', 40.925, -73.9261111, ST_GeomFromText('POINT(40.925 -73.9261111)', 4326), NULL, NULL, '2007-08-28', NULL, NULL, NULL, NULL),
  ('2339512', 'Undercliff Beach', 'Beach', 'New Jersey', 'NJ', 'Bergen', 'Yonkers', 40.8866667, -73.9422222, ST_GeomFromText('POINT(40.8866667 -73.9422222)', 4326), NULL, NULL, '2007-08-31', NULL, NULL, NULL, NULL),
  ('2504629', 'Watchung Mountains', 'Range', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.9705556, -74.1983333, ST_GeomFromText('POINT(40.9705556 -74.1983333)', 4326), NULL, NULL, '2008-10-16', NULL, NULL, NULL, NULL),
  ('2628141', 'Larkspur Lake', 'Reservoir', 'New Jersey', 'NJ', 'Salem', 'Shiloh', 39.4720655, -75.3513063, ST_GeomFromText('POINT(39.4720655 -75.3513063)', 4326), NULL, NULL, '2010-05-11', '2022-08-05', NULL, NULL, NULL),
  ('2628148', 'Little Green Brook', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Greenwood Lake', 41.1613062, -74.3742228, ST_GeomFromText('POINT(41.1613062 -74.3742228)', 4326), 41.1403726, -74.393532, '2010-05-11', '2013-06-05', NULL, NULL, NULL),
  ('2628152', 'Lido Pond (historical)', 'Lake', 'New Jersey', 'NJ', 'Cape May', 'Cape May', 38.9716667, -74.9611111, ST_GeomFromText('POINT(38.9716667 -74.9611111)', 4326), NULL, NULL, '2010-05-11', '2020-03-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2628155', 'Prospect Brook (historical)', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Hackensack', 40.9472222, -74.1055556, ST_GeomFromText('POINT(40.9472222 -74.1055556)', 4326), 40.9472222, -74.1055556, '2010-05-11', '2021-04-19', NULL, NULL, NULL),
  ('2628158', 'Reservoir Brook (historical)', 'Stream', 'New Jersey', 'NJ', 'Passaic', 'Paterson', 40.9027778, -74.2138889, ST_GeomFromText('POINT(40.9027778 -74.2138889)', 4326), 40.9027778, -74.2138889, '2010-05-11', '2021-04-19', NULL, NULL, NULL),
  ('2628159', 'Silver Brook', 'Stream', 'New Jersey', 'NJ', 'Morris', 'Morristown', 40.7583333, -74.4805556, ST_GeomFromText('POINT(40.7583333 -74.4805556)', 4326), 40.7583333, -74.4805556, '2010-05-11', '2021-04-19', NULL, NULL, NULL),
  ('2628165', 'Smokis Voll Brook', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Ramsey', 41.0107605, -74.1270465, ST_GeomFromText('POINT(41.0107605 -74.1270465)', 4326), 41.0226553, -74.1204603, '2010-05-11', '2021-04-19', NULL, NULL, NULL),
  ('2628167', 'Ten Penny Creek', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Weehawken', 40.8430556, -74.025, ST_GeomFromText('POINT(40.8430556 -74.025)', 4326), 40.8430556, -74.025, '2010-05-11', '2021-08-09', NULL, NULL, NULL),
  ('2628168', 'Williams Creek', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Weehawken', 40.7888889, -74.1083333, ST_GeomFromText('POINT(40.7888889 -74.1083333)', 4326), 40.7888889, -74.1083333, '2010-05-11', '2021-04-19', NULL, NULL, NULL),
  ('2634409', 'Cross Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Monmouth Junction', 40.473069, -74.551785, ST_GeomFromText('POINT(40.473069 -74.551785)', 4326), 40.452042, -74.559102, '2010-07-28', NULL, NULL, NULL, NULL),
  ('2634463', 'Steep Hill Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Monmouth Junction', 40.47333, -74.558973, ST_GeomFromText('POINT(40.47333 -74.558973)', 4326), 40.495395, -74.544854, '2010-07-31', NULL, NULL, NULL, NULL),
  ('2651738', 'Seeleys Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Plainfield', 40.5122983, -74.4839573, ST_GeomFromText('POINT(40.5122983 -74.4839573)', 4326), 40.4939594, -74.5181179, '2010-11-17', NULL, NULL, NULL, NULL),
  ('2702129', 'Howell Cove', 'Bay', 'New Jersey', 'NJ', 'Gloucester', 'Philadelphia', 39.8769444, -75.1566667, ST_GeomFromText('POINT(39.8769444 -75.1566667)', 4326), NULL, NULL, '2011-07-21', NULL, 'Official', 'Board Decision', '1891-12-31');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2702160', 'Picatinny Peak', 'Summit', 'New Jersey', 'NJ', 'Morris', 'Dover', 40.9593135, -74.5583531, ST_GeomFromText('POINT(40.9593135 -74.5583531)', 4326), NULL, NULL, '2011-07-21', '2021-11-20', 'Official', 'Board Decision', '1912-11-06'),
  ('2709914', 'Rattlesnake Mountain', 'Summit', 'New Jersey', 'NJ', 'Sussex', 'Culvers Gap', 41.1319284, -74.8634707, ST_GeomFromText('POINT(41.1319284 -74.8634707)', 4326), NULL, NULL, '2011-12-20', '2018-06-21', NULL, NULL, NULL),
  ('2741957', 'Monksville Reservoir', 'Reservoir', 'New Jersey', 'NJ', 'Passaic', 'Wanaque', 41.1222888, -74.3073799, ST_GeomFromText('POINT(41.1222888 -74.3073799)', 4326), NULL, NULL, '2012-10-23', '2020-08-12', NULL, NULL, NULL),
  ('2747444', 'Chambers Brook', 'Stream', 'New Jersey', 'NJ', 'Somerset', 'Raritan', 40.5931973, -74.7006583, ST_GeomFromText('POINT(40.5931973 -74.7006583)', 4326), 40.5967004, -74.7646666, '2013-06-18', NULL, NULL, NULL, NULL),
  ('2764917', 'Big Muckshaw Pond (historical)', 'Lake', 'New Jersey', 'NJ', 'Sussex', 'Culvers Gap', 41.1802778, -74.7755556, ST_GeomFromText('POINT(41.1802778 -74.7755556)', 4326), NULL, NULL, '2014-11-19', '2020-03-23', NULL, NULL, NULL),
  ('2783846', 'Shrewsbury Island', 'Island', 'New Jersey', 'NJ', 'Monmouth', 'Long Branch East', 40.347597, -73.9846, ST_GeomFromText('POINT(40.347597 -73.9846)', 4326), NULL, NULL, '2016-04-19', NULL, NULL, NULL, NULL),
  ('2790920', 'Hooten Creek', 'Stream', 'New Jersey', 'NJ', 'Burlington', 'Moorestown', 39.95655, -74.9416, ST_GeomFromText('POINT(39.95655 -74.9416)', 4326), 39.94603, -74.90864, '2018-01-31', NULL, NULL, NULL, NULL),
  ('2791799', 'Sambo Island Brook', 'Stream', 'New Jersey', 'NJ', 'Warren', 'Flatbrookville', 41.087322, -74.967863, ST_GeomFromText('POINT(41.087322 -74.967863)', 4326), 41.082631, -74.962027, '2018-07-11', NULL, NULL, NULL, NULL),
  ('2791800', 'Sambo Island Pond', 'Lake', 'New Jersey', 'NJ', 'Warren', 'Flatbrookville', 41.082243, -74.962306, ST_GeomFromText('POINT(41.082243 -74.962306)', 4326), NULL, NULL, '2018-07-11', NULL, NULL, NULL, NULL),
  ('2804740', 'Stink Creek', 'Stream', 'New Jersey', 'NJ', 'Bergen', 'Hackensack', 40.877773, -74.08725, ST_GeomFromText('POINT(40.877773 -74.08725)', 4326), 40.88204, -74.06698, '2019-09-19', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2830613', 'Stone Bridge Run', 'Stream', 'New Jersey', 'NJ', 'Cumberland', 'Bridgeton', 39.444478, -75.23356, ST_GeomFromText('POINT(39.444478 -75.23356)', 4326), 39.456143, -75.214634, '2022-04-25', '2022-04-25', NULL, NULL, NULL);


COMMIT;
SET unique_checks = 1;
SET autocommit = 1;

-- NJ complete: 3,391 features loaded
