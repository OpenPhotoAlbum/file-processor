USE kin;

-- GNIS Geographic Features for DE
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
  ('213542', 'Bright Haines Glade Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Burrsville', 38.8853913, -75.6404833, ST_GeomFromText('POINT(38.8853913 -75.6404833)', 4326), 38.9115023, -75.5932594, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213543', 'Collins Pond', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Seaford East', 38.7128876, -75.5126788, ST_GeomFromText('POINT(38.7128876 -75.5126788)', 4326), NULL, NULL, '1979-08-02', '2018-12-17', NULL, NULL, NULL),
  ('213544', 'Cow Bridge Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Millsboro', 38.6059467, -75.2982465, ST_GeomFromText('POINT(38.6059467 -75.2982465)', 4326), 38.6395577, -75.3160251, '1979-08-02', NULL, 'Official', 'Board Decision', '1965-01-01'),
  ('213547', 'Savannah Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Harbeson', 38.7184464, -75.374639, ST_GeomFromText('POINT(38.7184464 -75.374639)', 4326), 38.69928, -75.3810282, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213548', 'Abbotts Pond', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Milford', 38.8832748, -75.4766175, ST_GeomFromText('POINT(38.8832748 -75.4766175)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('213549', 'Agricultural Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Selbyville', 38.4923349, -75.1287952, ST_GeomFromText('POINT(38.4923349 -75.1287952)', 4326), 38.5103908, -75.1774083, '1979-08-02', NULL, 'Official', 'Board Decision', '1965-01-01'),
  ('213550', 'Ake Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Seaford East', 38.7198361, -75.561592, ST_GeomFromText('POINT(38.7198361 -75.561592)', 4326), 38.7225, -75.6011111, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213551', 'Alapocas Run', 'Stream', 'Delaware', 'DE', 'New Castle', 'Wilmington North', 39.768724, -75.5588125, ST_GeomFromText('POINT(39.768724 -75.5588125)', 4326), 39.7805556, -75.5466667, '1979-08-02', NULL, 'Official', 'Board Decision', '1959-01-01'),
  ('213555', 'Allabands Mill Stream', 'Stream', 'Delaware', 'DE', 'Kent', 'Wyoming', 39.1153903, -75.6038155, ST_GeomFromText('POINT(39.1153903 -75.6038155)', 4326), 39.0947222, -75.6083333, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213557', 'Alms House Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Harbeson', 38.6401135, -75.3507489, ST_GeomFromText('POINT(38.6401135 -75.3507489)', 4326), 38.6740025, -75.3951956, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('213558', 'Almshouse Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Wyoming', 39.1228903, -75.5857593, ST_GeomFromText('POINT(39.1228903 -75.5857593)', 4326), 39.0855556, -75.5986111, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213559', 'Alston Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Dover', 39.2431674, -75.5715925, ST_GeomFromText('POINT(39.2431674 -75.5715925)', 4326), 39.2208333, -75.5952778, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213560', 'Alvin Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5665019, -75.2004645, ST_GeomFromText('POINT(38.5665019 -75.2004645)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213561', 'Andrews Lake', 'Reservoir', 'Delaware', 'DE', 'Kent', 'Wyoming', 39.024135, -75.512531, ST_GeomFromText('POINT(39.024135 -75.512531)', 4326), NULL, NULL, '1979-08-02', '2024-09-11', NULL, NULL, NULL),
  ('213562', 'Angle Rod Creek', 'Stream', 'Delaware', 'DE', 'New Castle', 'Taylors Bridge', 39.4337231, -75.5613143, ST_GeomFromText('POINT(39.4337231 -75.5613143)', 4326), 39.4208333, -75.5744444, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213566', 'Angola Neck', 'Cape', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6665012, -75.146295, ST_GeomFromText('POINT(38.6665012 -75.146295)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213568', 'Appoquinimink River', 'Stream', 'Delaware', 'DE', 'New Castle', 'Taylors Bridge', 39.4478898, -75.580204, ST_GeomFromText('POINT(39.4478898 -75.580204)', 4326), 39.3812224, -75.7371547, '1979-08-02', '2014-07-09', 'Official', 'Board Decision', '1950-01-01'),
  ('213572', 'Army Creek', 'Stream', 'Delaware', 'DE', 'New Castle', 'Wilmington South', 39.6515015, -75.5871477, ST_GeomFromText('POINT(39.6515015 -75.5871477)', 4326), 39.6345566, -75.6427065, '1979-08-02', NULL, 'Official', 'Board Decision', '1964-01-01'),
  ('213573', 'Arnell Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6901122, -75.1349055, ST_GeomFromText('POINT(38.6901122 -75.1349055)', 4326), 38.7152778, -75.1386111, '1979-08-02', NULL, 'Official', 'Board Decision', '1961-01-01'),
  ('213574', 'Arrowhead Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6490012, -75.1268497, ST_GeomFromText('POINT(38.6490012 -75.1268497)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('213575', 'Artificial Island', 'Island', 'Delaware', 'DE', 'New Castle', 'Taylors Bridge', 39.4992788, -75.5396466, ST_GeomFromText('POINT(39.4992788 -75.5396466)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213578', 'Ash Gut', 'Stream', 'Delaware', 'DE', 'Kent', 'Milford', 38.9951128, -75.4704766, ST_GeomFromText('POINT(38.9951128 -75.4704766)', 4326), 39.0126128, -75.4977001, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213579', 'Asketum Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Trap Pond', 38.6234477, -75.477977, ST_GeomFromText('POINT(38.6234477 -75.477977)', 4326), 38.6002778, -75.4361111, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213582', 'Augustine Creek', 'Stream', 'Delaware', 'DE', 'New Castle', 'Taylors Bridge', 39.4956676, -75.5868708, ST_GeomFromText('POINT(39.4956676 -75.5868708)', 4326), 39.5017786, -75.6588184, '1979-08-02', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('213583', 'Aydelotte Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5753906, -75.1726855, ST_GeomFromText('POINT(38.5753906 -75.1726855)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213584', 'Back Creek', 'Stream', 'Maryland', 'MD', 'Cecil', 'North East', 39.516781, -75.8857742, ST_GeomFromText('POINT(39.516781 -75.8857742)', 4326), 39.509834, -75.7193765, '1979-08-02', '2010-11-04', NULL, NULL, NULL),
  ('213586', 'Bacon Island Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.6401121, -75.0812923, ST_GeomFromText('POINT(38.6401121 -75.0812923)', 4326), 38.6422222, -75.0691667, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213588', 'Baker Mill Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Seaford East', 38.6423367, -75.5421465, ST_GeomFromText('POINT(38.6423367 -75.5421465)', 4326), 38.624559, -75.5224235, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213589', 'Bald Cypress Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Whaleyville', 38.4656704, -75.3471377, ST_GeomFromText('POINT(38.4656704 -75.3471377)', 4326), 38.5165036, -75.4035289, '1979-08-02', '2014-07-17', NULL, NULL, NULL),
  ('213590', 'Bald Eagle Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.6909282, -75.1055025, ST_GeomFromText('POINT(38.6909282 -75.1055025)', 4326), 38.703805, -75.1047659, '1979-08-02', '2020-04-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('213591', 'Bald Eagle Point', 'Cape', 'Delaware', 'DE', 'Kent', 'Dover', 39.2184455, -75.5260352, ST_GeomFromText('POINT(39.2184455 -75.5260352)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL),
  ('213592', 'Balders Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.613886, -75.07385, ST_GeomFromText('POINT(38.613886 -75.07385)', 4326), NULL, NULL, '1979-08-02', '2024-09-14', NULL, NULL, NULL),
  ('213593', 'Ballast Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5642797, -75.1954643, ST_GeomFromText('POINT(38.5642797 -75.1954643)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213594', 'Ballast Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5884464, -75.2324103, ST_GeomFromText('POINT(38.5884464 -75.2324103)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213600', 'Old Baptist Church Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Milford', 38.9687239, -75.4165853, ST_GeomFromText('POINT(38.9687239 -75.4165853)', 4326), 38.9772222, -75.4352778, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213601', 'Bark Pond (historical)', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Millsboro', 38.6042802, -75.3118582, ST_GeomFromText('POINT(38.6042802 -75.3118582)', 4326), NULL, NULL, '1979-08-02', '2020-04-30', NULL, NULL, NULL),
  ('213602', 'Barlow Branch', 'Stream', 'Delaware', 'DE', 'New Castle', 'Clayton', 39.3723338, -75.662985, ST_GeomFromText('POINT(39.3723338 -75.662985)', 4326), 39.3683333, -75.7266667, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213604', 'Batson Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Selbyville', 38.4806685, -75.1354622, ST_GeomFromText('POINT(38.4806685 -75.1354622)', 4326), 38.501224, -75.1624077, '1979-08-02', '2009-06-12', 'Official', 'Board Decision', '1965-03-09'),
  ('213608', 'Beach Cove', 'Bay', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.585112, -75.0665697, ST_GeomFromText('POINT(38.585112 -75.0665697)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213609', 'Peach Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8182794, -75.2664808, ST_GeomFromText('POINT(38.8182794 -75.2664808)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', 'Official', 'Board Decision', '1965-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('213610', 'Beachy Neidig Ditch', 'Stream', 'Delaware', 'DE', 'Kent', 'Marydel', 39.0826128, -75.6596507, ST_GeomFromText('POINT(39.0826128 -75.6596507)', 4326), 39.0988889, -75.6302778, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213611', 'Bearhole Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Selbyville', 38.4806685, -75.1362957, ST_GeomFromText('POINT(38.4806685 -75.1362957)', 4326), 38.4886111, -75.2186111, '1979-08-02', NULL, 'Official', 'Board Decision', '1965-01-01'),
  ('213612', 'Beaver Branch', 'Stream', 'Delaware', 'DE', 'New Castle', 'Taylors Bridge', 39.3956674, -75.6190944, ST_GeomFromText('POINT(39.3956674 -75.6190944)', 4326), 39.4087228, -75.6582626, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213613', 'Beaver Creek', 'Stream', 'Delaware', 'DE', 'New Castle', 'Wilmington North', 39.8345558, -75.5765934, ST_GeomFromText('POINT(39.8345558 -75.5765934)', 4326), 39.8611111, -75.5447222, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213614', 'Beaver Dam Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Sharptown', 38.5642819, -75.6802077, ST_GeomFromText('POINT(38.5642819 -75.6802077)', 4326), 38.5466667, -75.6669444, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213616', 'Beaver Gut Ditch', 'Stream', 'Delaware', 'DE', 'Kent', 'Frederica', 39.085946, -75.4654767, ST_GeomFromText('POINT(39.085946 -75.4654767)', 4326), 39.0738889, -75.4841667, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213617', 'Beaverdam Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.7381677, -75.1124042, ST_GeomFromText('POINT(38.7381677 -75.1124042)', 4326), 38.7275, -75.1230556, '1979-08-02', '2009-06-12', 'Official', 'Board Decision', '1965-01-12'),
  ('213618', 'Beaverdam Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Burrsville', 38.9062246, -75.6463169, ST_GeomFromText('POINT(38.9062246 -75.6463169)', 4326), 38.935, -75.6708333, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213619', 'Beaverdam Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Milford', 38.960946, -75.3818615, ST_GeomFromText('POINT(38.960946 -75.3818615)', 4326), 38.9744681, -75.3952551, '1979-08-02', '2020-08-25', 'Official', 'Board Decision', '1965-01-01'),
  ('213620', 'Beaverdam Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Mispillion River', 38.9087237, -75.336026, ST_GeomFromText('POINT(38.9087237 -75.336026)', 4326), 38.9020572, -75.3863062, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('213621', 'Beaverdam Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Harrington', 38.9959465, -75.5832587, ST_GeomFromText('POINT(38.9959465 -75.5832587)', 4326), 39.0076133, -75.6132598, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213622', 'Beaverdam Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Laurel', 38.5765039, -75.5282568, ST_GeomFromText('POINT(38.5765039 -75.5282568)', 4326), 38.5998365, -75.4288081, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213623', 'Beaverdam Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Milford', 38.906502, -75.4935336, ST_GeomFromText('POINT(38.906502 -75.4935336)', 4326), 38.8959466, -75.5499246, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213626', 'Beaverdam Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Milton', 38.7890011, -75.253244, ST_GeomFromText('POINT(38.7890011 -75.253244)', 4326), 38.6976128, -75.2924127, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213627', 'Bee Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Greenwood', 38.7712247, -75.5938155, ST_GeomFromText('POINT(38.7712247 -75.5938155)', 4326), 38.7936111, -75.6205556, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213629', 'Bellevue Lake', 'Reservoir', 'Delaware', 'DE', 'New Castle', 'Marcus Hook', 39.7802301, -75.4885645, ST_GeomFromText('POINT(39.7802301 -75.4885645)', 4326), NULL, NULL, '1979-08-02', '2018-12-18', NULL, NULL, NULL),
  ('213631', 'Belltown Run', 'Stream', 'Delaware', 'DE', 'New Castle', 'Newark East', 39.6303897, -75.6974317, ST_GeomFromText('POINT(39.6303897 -75.6974317)', 4326), 39.5865006, -75.737989, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213634', 'Bennett Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.4812234, -75.0651816, ST_GeomFromText('POINT(38.4812234 -75.0651816)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213635', 'Bennett Pond (historical)', 'Lake', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8703902, -75.2643558, ST_GeomFromText('POINT(38.8703902 -75.2643558)', 4326), NULL, NULL, '1979-08-02', '2020-08-24', NULL, NULL, NULL),
  ('213650', 'Betts Pond', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Millsboro', 38.5962968, -75.3078963, ST_GeomFromText('POINT(38.5962968 -75.3078963)', 4326), NULL, NULL, '1979-08-02', '2018-12-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('213652', 'Biddle Point', 'Cape', 'Delaware', 'DE', 'New Castle', 'Delaware City', 39.554001, -75.6163164, ST_GeomFromText('POINT(39.554001 -75.6163164)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213653', 'Big Bacon Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.6362232, -75.077681, ST_GeomFromText('POINT(38.6362232 -75.077681)', 4326), NULL, NULL, '1979-08-02', NULL, 'Official', 'Board Decision', '1965-01-01'),
  ('213654', 'Big Cedar Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.6217788, -75.0735142, ST_GeomFromText('POINT(38.6217788 -75.0735142)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213655', 'Big Cove', 'Bay', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5853908, -75.222132, ST_GeomFromText('POINT(38.5853908 -75.222132)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213657', 'Big Ditch Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.6184455, -75.1004599, ST_GeomFromText('POINT(38.6184455 -75.1004599)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213658', 'Big Marsh Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.58039, -75.096571, ST_GeomFromText('POINT(38.58039 -75.096571)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213659', 'Big Newfound Neck', 'Cape', 'Delaware', 'DE', 'Sussex', 'Whaleyville', 38.469559, -75.3288037, ST_GeomFromText('POINT(38.469559 -75.3288037)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213660', 'Big Nose Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.6556677, -75.0757363, ST_GeomFromText('POINT(38.6556677 -75.0757363)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213662', 'Big Reedy Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.6445565, -75.0796255, ST_GeomFromText('POINT(38.6445565 -75.0796255)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213663', 'Big Round Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Milton', 38.859839, -75.256909, ST_GeomFromText('POINT(38.859839 -75.256909)', 4326), NULL, NULL, '1979-08-02', '2024-09-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('213664', 'Big Sheep Hammock', 'Island', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5012232, -75.0754595, ST_GeomFromText('POINT(38.5012232 -75.0754595)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213665', 'Big Stone Beach', 'Beach', 'Delaware', 'DE', 'Kent', 'Mispillion River', 38.9942792, -75.3218587, ST_GeomFromText('POINT(38.9942792 -75.3218587)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213667', 'Black Arm Prong', 'Stream', 'Delaware', 'DE', 'Kent', 'Burrsville', 38.9351135, -75.6304828, ST_GeomFromText('POINT(38.9351135 -75.6304828)', 4326), 38.9670578, -75.6113154, '1979-08-02', NULL, 'Official', 'Board Decision', '1965-01-01'),
  ('213670', 'Black Savannah Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Harbeson', 38.7163829, -75.3673812, ST_GeomFromText('POINT(38.7163829 -75.3673812)', 4326), 38.709523, -75.3809463, '1979-08-02', '2020-08-24', 'Official', 'Board Decision', '1965-03-09'),
  ('213671', 'Black Stallion Ditch', 'Stream', 'Delaware', 'DE', 'New Castle', 'Clayton', 39.3240001, -75.7349322, ST_GeomFromText('POINT(39.3240001 -75.7349322)', 4326), 39.3272222, -75.7097222, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213672', 'Black Swamp', 'Swamp', 'Delaware', 'DE', 'Kent', 'Marydel', 39.0045579, -75.6504833, ST_GeomFromText('POINT(39.0045579 -75.6504833)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213673', 'Black Swamp Creek', 'Stream', 'Delaware', 'DE', 'Kent', 'Harrington', 38.9759465, -75.5668693, ST_GeomFromText('POINT(38.9759465 -75.5668693)', 4326), 39.0031691, -75.6518723, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213674', 'Blackbird Creek', 'Stream', 'Delaware', 'DE', 'New Castle', 'Taylors Bridge', 39.4387231, -75.5740925, ST_GeomFromText('POINT(39.4387231 -75.5740925)', 4326), 39.3237224, -75.6960418, '1979-08-02', '2014-12-12', NULL, NULL, NULL),
  ('213677', 'Blackwater Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Hebron', 38.45595, -75.6807626, ST_GeomFromText('POINT(38.45595 -75.6807626)', 4326), 38.4619444, -75.6252778, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213678', 'Blackwater Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.578446, -75.160185, ST_GeomFromText('POINT(38.578446 -75.160185)', 4326), 38.5016667, -75.1819444, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('213679', 'Blackwater Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5798349, -75.1621295, ST_GeomFromText('POINT(38.5798349 -75.1621295)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213681', 'Blairs Pond', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Milford', 38.89956, -75.487584, ST_GeomFromText('POINT(38.89956 -75.487584)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('213684', 'Blanco Ditch', 'Stream', 'Delaware', 'DE', 'Kent', 'Sudlersville', 39.246222, -75.7502103, ST_GeomFromText('POINT(39.246222 -75.7502103)', 4326), 39.230389, -75.7340985, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213686', 'Bluff Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.6356678, -75.1032377, ST_GeomFromText('POINT(38.6356678 -75.1032377)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213688', 'Boat House Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.6183133, -75.1234336, ST_GeomFromText('POINT(38.6183133 -75.1234336)', 4326), NULL, NULL, '1979-08-02', '2020-04-30', NULL, NULL, NULL),
  ('213689', 'Bookhammers Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Lewes', 38.7537644, -75.128963, ST_GeomFromText('POINT(38.7537644 -75.128963)', 4326), NULL, NULL, '1979-08-02', '2018-12-17', NULL, NULL, NULL),
  ('213690', 'Booth Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Greenwood', 38.8373357, -75.5785369, ST_GeomFromText('POINT(38.8373357 -75.5785369)', 4326), 38.8522222, -75.6125, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213693', 'Bowman Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Milford', 38.9090019, -75.4488092, ST_GeomFromText('POINT(38.9090019 -75.4488092)', 4326), 38.8819444, -75.4513889, '1979-08-02', '2014-07-17', NULL, NULL, NULL),
  ('213694', 'Branch Gut', 'Lake', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5072541, -75.073528, ST_GeomFromText('POINT(38.5072541 -75.073528)', 4326), NULL, NULL, '1979-08-02', '2018-12-17', NULL, NULL, NULL),
  ('213695', 'Branch Gut Cove', 'Bay', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.505112, -75.0676815, ST_GeomFromText('POINT(38.505112 -75.0676815)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('213697', 'Brandywine Creek', 'Stream', 'Delaware', 'DE', 'New Castle', 'Wilmington South', 39.7320579, -75.5313104, ST_GeomFromText('POINT(39.7320579 -75.5313104)', 4326), 39.9226091, -75.6493792, '1979-08-02', '2014-07-15', 'Official', 'Board Decision', '1959-01-01'),
  ('213702', 'Brasures Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.4953903, -75.1054608, ST_GeomFromText('POINT(38.4953903 -75.1054608)', 4326), 38.5, -75.1058333, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213703', 'Bread and Cheese Island', 'Island', 'Delaware', 'DE', 'New Castle', 'Newark East', 39.7065013, -75.6388173, ST_GeomFromText('POINT(39.7065013 -75.6388173)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213704', 'Breakwater Harbor', 'Bay', 'Delaware', 'DE', 'Sussex', 'Cape Henlopen', 38.7923343, -75.1146264, ST_GeomFromText('POINT(38.7923343 -75.1146264)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213705', 'Brickbat Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5059456, -75.0935159, ST_GeomFromText('POINT(38.5059456 -75.0935159)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213707', 'Bridgeville Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Seaford East', 38.7412248, -75.5746481, ST_GeomFromText('POINT(38.7412248 -75.5746481)', 4326), 38.7281694, -75.6513176, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213708', 'Brights Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Seaford West', 38.7278915, -75.71882, ST_GeomFromText('POINT(38.7278915 -75.71882)', 4326), 38.7262515, -75.6552208, '1979-08-02', '2015-07-08', NULL, NULL, NULL),
  ('213710', 'Brittingham Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Milton', 38.7731683, -75.342693, ST_GeomFromText('POINT(38.7731683 -75.342693)', 4326), 38.7792796, -75.3776948, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213711', 'Broad Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Sharptown', 38.5690041, -75.6746518, ST_GeomFromText('POINT(38.5690041 -75.6746518)', 4326), 38.5587262, -75.567425, '1979-08-02', NULL, 'Official', 'Board Decision', '1961-01-01'),
  ('213712', 'Broadkill Beach', 'Beach', 'Delaware', 'DE', 'Sussex', 'Lewes', 38.8190011, -75.2004638, ST_GeomFromText('POINT(38.8190011 -75.2004638)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('213714', 'Broadkill Neck', 'Cape', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8090012, -75.2704671, ST_GeomFromText('POINT(38.8090012 -75.2704671)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213715', 'Broadkill River', 'Stream', 'Delaware', 'DE', 'Sussex', 'Lewes', 38.79039, -75.1621286, ST_GeomFromText('POINT(38.79039 -75.1621286)', 4326), 38.7770569, -75.3129692, '1979-08-02', NULL, 'Official', 'Board Decision', '1961-01-01'),
  ('213716', 'Broadkill Sound', 'Bay', 'Delaware', 'DE', 'Sussex', 'Lewes', 38.8176122, -75.2024084, ST_GeomFromText('POINT(38.8176122 -75.2024084)', 4326), NULL, NULL, '1979-08-02', NULL, 'Official', 'Board Decision', '1961-01-01'),
  ('213719', 'Broken Marshes', 'Swamp', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8451123, -75.2590777, ST_GeomFromText('POINT(38.8451123 -75.2590777)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213723', 'Browns Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Milford', 38.9867795, -75.4754768, ST_GeomFromText('POINT(38.9867795 -75.4754768)', 4326), 38.8959466, -75.563814, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213724', 'Bucks Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Seaford East', 38.6834474, -75.6132605, ST_GeomFromText('POINT(38.6834474 -75.6132605)', 4326), 38.7145583, -75.6621512, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213725', 'Bull Island', 'Flat', 'Delaware', 'DE', 'Sussex', 'Seaford East', 38.7190028, -75.5579808, ST_GeomFromText('POINT(38.7190028 -75.5579808)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213727', 'Bullock Prong', 'Stream', 'Delaware', 'DE', 'Kent', 'Burrsville', 38.932336, -75.7227084, ST_GeomFromText('POINT(38.932336 -75.7227084)', 4326), 38.9161111, -75.7072222, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213728', 'Bullseye Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5895574, -75.2224098, ST_GeomFromText('POINT(38.5895574 -75.2224098)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213729', 'Bundicks Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.7184456, -75.1901856, ST_GeomFromText('POINT(38.7184456 -75.1901856)', 4326), 38.7001127, -75.2799121, '1979-08-02', '2014-07-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('213730', 'Burnt Swamp', 'Swamp', 'Delaware', 'DE', 'Sussex', 'Millsboro', 38.5140218, -75.3294516, ST_GeomFromText('POINT(38.5140218 -75.3294516)', 4326), NULL, NULL, '1979-08-02', '2018-12-17', NULL, NULL, NULL),
  ('213731', 'Burrsville Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Burrsville', 38.889836, -75.7477094, ST_GeomFromText('POINT(38.889836 -75.7477094)', 4326), 38.8964496, -75.7180549, '1979-08-02', '2015-07-08', NULL, NULL, NULL),
  ('213732', 'Burton Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5853909, -75.2310213, ST_GeomFromText('POINT(38.5853909 -75.2310213)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213733', 'Burton Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.6126121, -75.0835147, ST_GeomFromText('POINT(38.6126121 -75.0835147)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213734', 'Burton Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6428901, -75.1260164, ST_GeomFromText('POINT(38.6428901 -75.1260164)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213735', 'Burton Pond', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6712118, -75.1919423, ST_GeomFromText('POINT(38.6712118 -75.1919423)', 4326), NULL, NULL, '1979-08-02', '2018-12-17', NULL, NULL, NULL),
  ('213736', 'Burton Prong', 'Stream', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6573346, -75.1676849, ST_GeomFromText('POINT(38.6573346 -75.1676849)', 4326), 38.6688889, -75.1830556, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213737', 'Bush Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.4823345, -75.0646259, ST_GeomFromText('POINT(38.4823345 -75.0646259)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213738', 'Bush Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.6320565, -75.0768476, ST_GeomFromText('POINT(38.6320565 -75.0768476)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213740', 'Butler Mill Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Sharptown', 38.6156703, -75.6418727, ST_GeomFromText('POINT(38.6156703 -75.6418727)', 4326), 38.6356702, -75.6696516, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('213742', 'Buzzard Swamp', 'Swamp', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8357992, -75.2948502, ST_GeomFromText('POINT(38.8357992 -75.2948502)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('213744', 'Cubbage Pond', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Ellendale', 38.8643649, -75.3958713, ST_GeomFromText('POINT(38.8643649 -75.3958713)', 4326), NULL, NULL, '1979-08-02', '2018-12-17', NULL, NULL, NULL),
  ('213745', 'Cahoon Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Dover', 39.1917788, -75.5593697, ST_GeomFromText('POINT(39.1917788 -75.5593697)', 4326), 39.135668, -75.6424281, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213750', 'Canal Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5117924, -75.0652385, ST_GeomFromText('POINT(38.5117924 -75.0652385)', 4326), NULL, NULL, '1979-08-02', '2018-12-17', NULL, NULL, NULL),
  ('213753', 'Cape Henlopen', 'Cape', 'Delaware', 'DE', 'Sussex', 'Cape Henlopen', 38.8031678, -75.0946255, ST_GeomFromText('POINT(38.8031678 -75.0946255)', 4326), NULL, NULL, '1979-08-02', '2016-09-23', NULL, NULL, NULL),
  ('213759', 'Carney Run', 'Stream', 'Delaware', 'DE', 'New Castle', 'Wilmington North', 39.817334, -75.5693701, ST_GeomFromText('POINT(39.817334 -75.5693701)', 4326), 39.8241667, -75.5605556, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213763', 'Cart Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Greenwood', 38.7892802, -75.5857595, ST_GeomFromText('POINT(38.7892802 -75.5857595)', 4326), 38.84, -75.6177778, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213765', 'Cat Hill', 'Summit', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5201042, -75.0646239, ST_GeomFromText('POINT(38.5201042 -75.0646239)', 4326), NULL, NULL, '1979-08-02', '2021-07-17', NULL, NULL, NULL),
  ('213767', 'Cattail Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Hickman', 38.8384469, -75.6918742, ST_GeomFromText('POINT(38.8384469 -75.6918742)', 4326), 38.9073359, -75.7093746, '1979-08-02', '2014-07-15', NULL, NULL, NULL),
  ('213769', 'Cave Neck', 'Cape', 'Delaware', 'DE', 'Sussex', 'Milton', 38.7737234, -75.2715782, ST_GeomFromText('POINT(38.7737234 -75.2715782)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('213772', 'Cedar Creek', 'Stream', 'Delaware', 'DE', 'New Castle', 'Delaware City', 39.589279, -75.6038156, ST_GeomFromText('POINT(39.589279 -75.6038156)', 4326), 39.5869444, -75.6169444, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213773', 'Cedar Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Mispillion River', 38.945671, -75.3148724, ST_GeomFromText('POINT(38.945671 -75.3148724)', 4326), 38.8209548, -75.4534031, '1979-08-02', '2020-08-24', NULL, NULL, NULL),
  ('213777', 'Cedar Neck', 'Cape', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5720565, -75.0799038, ST_GeomFromText('POINT(38.5720565 -75.0799038)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213778', 'Cedar Neck', 'Cape', 'Delaware', 'DE', 'Sussex', 'Mispillion River', 38.9195571, -75.362694, ST_GeomFromText('POINT(38.9195571 -75.362694)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213780', 'Cedar Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5077236, -75.0607013, ST_GeomFromText('POINT(38.5077236 -75.0607013)', 4326), NULL, NULL, '1979-08-02', '2020-04-30', NULL, NULL, NULL),
  ('213781', 'Cedar Swamp', 'Swamp', 'Delaware', 'DE', 'New Castle', 'Taylors Bridge', 39.4057112, -75.5562369, ST_GeomFromText('POINT(39.4057112 -75.5562369)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('213784', 'Champlin Neck', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5565017, -75.1724078, ST_GeomFromText('POINT(38.5565017 -75.1724078)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213785', 'Chapel Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Sharptown', 38.6203925, -75.6377059, ST_GeomFromText('POINT(38.6203925 -75.6377059)', 4326), 38.6895585, -75.676874, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213786', 'Chapel Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6690014, -75.1826855, ST_GeomFromText('POINT(38.6690014 -75.1826855)', 4326), 38.6967794, -75.2735229, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213788', 'Cherry Island', 'Island', 'Delaware', 'DE', 'New Castle', 'Wilmington South', 39.729558, -75.5165872, ST_GeomFromText('POINT(39.729558 -75.5165872)', 4326), NULL, NULL, '1979-08-02', '2014-08-13', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('213790', 'Cherry Walk Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6878901, -75.1446281, ST_GeomFromText('POINT(38.6878901 -75.1446281)', 4326), 38.6822222, -75.165, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213791', 'Cherrybush Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.4798345, -75.0649038, ST_GeomFromText('POINT(38.4798345 -75.0649038)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213793', 'Chestnut Hill', 'Summit', 'Delaware', 'DE', 'New Castle', 'Newark West', 39.6512839, -75.7700816, ST_GeomFromText('POINT(39.6512839 -75.7700816)', 4326), NULL, NULL, '1979-08-02', '2021-07-17', NULL, NULL, NULL),
  ('213794', 'Chestnut Run', 'Stream', 'Delaware', 'DE', 'New Castle', 'Wilmington South', 39.7367795, -75.6065929, ST_GeomFromText('POINT(39.7367795 -75.6065929)', 4326), 39.7595571, -75.5996482, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213796', 'Chipman Pond', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Laurel', 38.5661997, -75.5360504, ST_GeomFromText('POINT(38.5661997 -75.5360504)', 4326), NULL, NULL, '1979-08-02', '2018-12-17', NULL, NULL, NULL),
  ('213797', 'Choptank River', 'Stream', 'Maryland', 'MD', 'Dorchester', 'Tilghman', 38.6345644, -76.3266152, ST_GeomFromText('POINT(38.6345644 -76.3266152)', 4326), 39.0678909, -75.7368756, '1979-08-02', '2014-07-09', NULL, NULL, NULL),
  ('213799', 'Christina River', 'Stream', 'Delaware', 'DE', 'New Castle', 'Wilmington South', 39.7159468, -75.5121427, ST_GeomFromText('POINT(39.7159468 -75.5121427)', 4326), 39.7464997, -75.8146605, '1979-08-02', '2014-07-22', 'Official', 'Board Decision', '1939-01-01'),
  ('213801', 'Church Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Ellendale', 38.8676128, -75.3765835, ST_GeomFromText('POINT(38.8676128 -75.3765835)', 4326), 38.8061111, -75.4177778, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213802', 'Clark Point', 'Cape', 'Delaware', 'DE', 'Kent', 'Bennetts Pier', 39.0231683, -75.3438043, ST_GeomFromText('POINT(39.0231683 -75.3438043)', 4326), NULL, NULL, '1979-08-02', '2011-04-01', 'Official', 'Board Decision', '1899-12-31'),
  ('213803', 'Clarksville Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.563446, -75.1543514, ST_GeomFromText('POINT(38.563446 -75.1543514)', 4326), 38.5497222, -75.1455556, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('213807', 'Clear Brook', 'Stream', 'Delaware', 'DE', 'Sussex', 'Seaford East', 38.6409478, -75.606038, ST_GeomFromText('POINT(38.6409478 -75.606038)', 4326), 38.7320581, -75.6382615, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213808', 'Clendaniel Pond', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Ellendale', 38.8556284, -75.4093725, ST_GeomFromText('POINT(38.8556284 -75.4093725)', 4326), NULL, NULL, '1979-08-02', '2018-12-17', NULL, NULL, NULL),
  ('213810', 'Cod Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Sharptown', 38.5562264, -75.6940971, ST_GeomFromText('POINT(38.5562264 -75.6940971)', 4326), 38.5002778, -75.6519444, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213811', 'Cohee Prong', 'Stream', 'Delaware', 'DE', 'Kent', 'Marydel', 39.0531687, -75.6738178, ST_GeomFromText('POINT(39.0531687 -75.6738178)', 4326), 39.0636111, -75.6841667, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213816', 'Collins Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5823345, -75.1074049, ST_GeomFromText('POINT(38.5823345 -75.1074049)', 4326), 38.5655556, -75.1130556, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213819', 'Lake Comegys', 'Lake', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.7030274, -75.0775446, ST_GeomFromText('POINT(38.7030274 -75.0775446)', 4326), NULL, NULL, '1979-08-02', '2020-05-14', NULL, NULL, NULL),
  ('213820', 'Lake Como', 'Reservoir', 'Delaware', 'DE', 'Kent', 'Smyrna', 39.290716, -75.6044789, ST_GeomFromText('POINT(39.290716 -75.6044789)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('213822', 'Conch Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.4712236, -75.0724041, ST_GeomFromText('POINT(38.4712236 -75.0724041)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213824', 'Concord Pond', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Seaford East', 38.6435938, -75.5468745, ST_GeomFromText('POINT(38.6435938 -75.5468745)', 4326), NULL, NULL, '1979-08-02', '2018-12-17', NULL, NULL, NULL),
  ('213826', 'Conwell Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8420867, -75.2520016, ST_GeomFromText('POINT(38.8420867 -75.2520016)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('213828', 'Cool Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Seaford East', 38.632059, -75.5607583, ST_GeomFromText('POINT(38.632059 -75.5607583)', 4326), 38.6067814, -75.5274236, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213830', 'Cooper Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Laurel', 38.5576151, -75.5679806, ST_GeomFromText('POINT(38.5576151 -75.5679806)', 4326), 38.5286111, -75.5438889, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213832', 'Corks Point Ditch', 'Stream', 'Delaware', 'DE', 'New Castle', 'Smyrna', 39.3392786, -75.5582587, ST_GeomFromText('POINT(39.3392786 -75.5582587)', 4326), 39.3497222, -75.6030556, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213833', 'Cottonpatch Hill', 'Summit', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5796553, -75.0585969, ST_GeomFromText('POINT(38.5796553 -75.0585969)', 4326), NULL, NULL, '1979-08-02', '2021-07-17', NULL, NULL, NULL),
  ('213834', 'Coursey Pond', 'Reservoir', 'Delaware', 'DE', 'Kent', 'Harrington', 38.9887501, -75.518014, ST_GeomFromText('POINT(38.9887501 -75.518014)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('213835', 'Covington Neck', 'Cape', 'Delaware', 'DE', 'Sussex', 'Lewes', 38.7912233, -75.2312986, ST_GeomFromText('POINT(38.7912233 -75.2312986)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213837', 'Cow Marsh Creek', 'Stream', 'Delaware', 'DE', 'Kent', 'Marydel', 39.0501133, -75.7321532, ST_GeomFromText('POINT(39.0501133 -75.7321532)', 4326), 39.0625, -75.6361111, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213840', 'Cowhouse Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Millsboro', 38.5156701, -75.3685274, ST_GeomFromText('POINT(38.5156701 -75.3685274)', 4326), 38.5381702, -75.4143627, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213842', 'Big Cripple Swamp', 'Swamp', 'Delaware', 'DE', 'Kent', 'Milford', 38.9881684, -75.4763103, ST_GeomFromText('POINT(38.9881684 -75.4763103)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213843', 'Crony Pond Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Greenwood', 38.8078913, -75.5552029, ST_GeomFromText('POINT(38.8078913 -75.5552029)', 4326), 38.8080556, -75.5269444, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('213844', 'Crooked Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Lewes', 38.80539, -75.2196313, ST_GeomFromText('POINT(38.80539 -75.2196313)', 4326), 38.7847222, -75.2266667, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213846', 'Crystal Run', 'Stream', 'Delaware', 'DE', 'New Castle', 'Saint Georges', 39.5420562, -75.6999314, ST_GeomFromText('POINT(39.5420562 -75.6999314)', 4326), 39.5327778, -75.7238889, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213847', 'Culbreth Marsh Ditch', 'Stream', 'Delaware', 'DE', 'Kent', 'Marydel', 39.0715019, -75.7343755, ST_GeomFromText('POINT(39.0715019 -75.7343755)', 4326), 39.1086111, -75.6541667, '1979-08-02', '2014-07-15', NULL, NULL, NULL),
  ('213849', 'Cupboard Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.50661, -75.0674917, ST_GeomFromText('POINT(38.50661 -75.0674917)', 4326), NULL, NULL, '1979-08-02', '2020-04-30', NULL, NULL, NULL),
  ('213850', 'Cypress Branch', 'Stream', 'Maryland', 'MD', 'Kent', 'Millington', 39.253724, -75.834739, ST_GeomFromText('POINT(39.253724 -75.834739)', 4326), 39.3601113, -75.7313211, '1979-08-02', '2014-09-03', NULL, NULL, NULL),
  ('213851', 'Cypress Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Frederica', 39.1015015, -75.4710326, ST_GeomFromText('POINT(39.1015015 -75.4710326)', 4326), 39.0890015, -75.5121454, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213853', 'Cypress Pond', 'Lake', 'Delaware', 'DE', 'Kent', 'Frederica', 39.095597, -75.491652, ST_GeomFromText('POINT(39.095597 -75.491652)', 4326), NULL, NULL, '1979-08-02', '2024-09-14', NULL, NULL, NULL),
  ('213854', 'Cypress Swamp', 'Swamp', 'Delaware', 'DE', 'Sussex', 'Whaleyville', 38.4834476, -75.2996357, ST_GeomFromText('POINT(38.4834476 -75.2996357)', 4326), NULL, NULL, '1979-08-02', NULL, 'Official', 'Board Decision', '1942-01-01'),
  ('213856', 'Daisy Marsh', 'Swamp', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.4815453, -75.0560246, ST_GeomFromText('POINT(38.4815453 -75.0560246)', 4326), NULL, NULL, '1979-08-02', '2022-08-05', NULL, NULL, NULL),
  ('213857', 'Davidson Marsh', 'Swamp', 'Delaware', 'DE', 'Sussex', 'Lewes', 38.8034455, -75.2376878, ST_GeomFromText('POINT(38.8034455 -75.2376878)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('213860', 'Deans Hole', 'Bay', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.584835, -75.1840748, ST_GeomFromText('POINT(38.584835 -75.1840748)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213861', 'Deemers Beach', 'Beach', 'Delaware', 'DE', 'New Castle', 'Wilmington South', 39.6523349, -75.5832586, ST_GeomFromText('POINT(39.6523349 -75.5832586)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213862', 'Deep Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Harbeson', 38.6467799, -75.3126916, ST_GeomFromText('POINT(38.6467799 -75.3126916)', 4326), 38.6619444, -75.3, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213863', 'Deep Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Milford', 38.9165017, -75.409085, ST_GeomFromText('POINT(38.9165017 -75.409085)', 4326), 38.8833333, -75.41, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213864', 'Deep Creek', 'Stream', 'Delaware', 'DE', 'New Castle', 'Middletown', 39.4390006, -75.6788191, ST_GeomFromText('POINT(39.4390006 -75.6788191)', 4326), 39.4216667, -75.7494444, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213865', 'Deep Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Seaford East', 38.6442812, -75.5882595, ST_GeomFromText('POINT(38.6442812 -75.5882595)', 4326), 38.7337244, -75.4196414, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213867', 'Deep Hole', 'Bay', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5873353, -75.2371327, ST_GeomFromText('POINT(38.5873353 -75.2371327)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213868', 'Deep Hole Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5317798, -75.1976868, ST_GeomFromText('POINT(38.5317798 -75.1976868)', 4326), 38.4987243, -75.1901867, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213869', 'Deepwater Point', 'Cape', 'Delaware', 'DE', 'Kent', 'Little Creek', 39.2009463, -75.3910296, ST_GeomFromText('POINT(39.2009463 -75.3910296)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213876', 'Delaware Point', 'Cape', 'Delaware', 'DE', 'New Castle', 'Taylors Bridge', 39.3776121, -75.5154791, ST_GeomFromText('POINT(39.3776121 -75.5154791)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('213879', 'Derby Pond', 'Reservoir', 'Delaware', 'DE', 'Kent', 'Wyoming', 39.0855515, -75.5614783, ST_GeomFromText('POINT(39.0855515 -75.5614783)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('213880', 'Derickson Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5678907, -75.1937976, ST_GeomFromText('POINT(38.5678907 -75.1937976)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213881', 'Derrickson Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5765011, -75.0946266, ST_GeomFromText('POINT(38.5765011 -75.0946266)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213885', 'Diamond Pond', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Milton', 38.764902, -75.3219844, ST_GeomFromText('POINT(38.764902 -75.3219844)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('213887', 'Dirickson Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.4840013, -75.081571, ST_GeomFromText('POINT(38.4840013 -75.081571)', 4326), 38.4806685, -75.1354622, '1979-08-02', '2014-04-14', 'Official', 'Board Decision', '1965-01-01'),
  ('213888', 'Dirickson Neck', 'Cape', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.4706683, -75.0899049, ST_GeomFromText('POINT(38.4706683 -75.0899049)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213889', 'Ditch Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Lewes', 38.7920566, -75.1860187, ST_GeomFromText('POINT(38.7920566 -75.1860187)', 4326), 38.7902778, -75.1705556, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213892', 'Dodd Marsh', 'Swamp', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.6942229, -75.0908521, ST_GeomFromText('POINT(38.6942229 -75.0908521)', 4326), NULL, NULL, '1979-08-02', '2022-08-05', NULL, NULL, NULL),
  ('213893', 'Dogwood Branch', 'Stream', 'Delaware', 'DE', 'New Castle', 'Clayton', 39.3187222, -75.7393768, ST_GeomFromText('POINT(39.3187222 -75.7393768)', 4326), 39.342889, -75.7535441, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213894', 'Doll Run', 'Stream', 'Delaware', 'DE', 'New Castle', 'Saint Georges', 39.6059454, -75.6549293, ST_GeomFromText('POINT(39.6059454 -75.6549293)', 4326), 39.5825, -75.6716667, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('213895', 'Dorman Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6940012, -75.1440725, ST_GeomFromText('POINT(38.6940012 -75.1440725)', 4326), 38.7083333, -75.1519444, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213896', 'Doty Glade', 'Stream', 'Delaware', 'DE', 'Sussex', 'Lewes', 38.8051122, -75.2232426, ST_GeomFromText('POINT(38.8051122 -75.2232426)', 4326), 38.7901882, -75.2378743, '1979-08-02', '2020-08-25', NULL, NULL, NULL),
  ('213897', 'Double Fork Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Hickman', 38.8067803, -75.6893742, ST_GeomFromText('POINT(38.8067803 -75.6893742)', 4326), 38.8152778, -75.6275, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213898', 'Double Run', 'Stream', 'Delaware', 'DE', 'Kent', 'Frederica', 39.0281683, -75.4804771, ST_GeomFromText('POINT(39.0281683 -75.4804771)', 4326), 39.0622094, -75.5442235, '1979-08-02', '2020-08-25', NULL, NULL, NULL),
  ('213902', 'Dragon Creek', 'Stream', 'Delaware', 'DE', 'New Castle', 'Delaware City', 39.5834456, -75.5915928, ST_GeomFromText('POINT(39.5834456 -75.5915928)', 4326), 39.5790007, -75.7052096, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213905', 'Drawyer Creek', 'Stream', 'Delaware', 'DE', 'New Castle', 'Middletown', 39.4659452, -75.6260392, ST_GeomFromText('POINT(39.4659452 -75.6260392)', 4326), 39.5037229, -75.7052093, '1979-08-02', '2014-07-15', 'Official', 'Board Decision', '1950-01-01'),
  ('213906', 'Drum Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.4603906, -75.0954607, ST_GeomFromText('POINT(38.4603906 -75.0954607)', 4326), 38.4656687, -75.1310177, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213908', 'Drum Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.4623347, -75.0624038, ST_GeomFromText('POINT(38.4623347 -75.0624038)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213911', 'Duck Creek', 'Stream', 'Delaware', 'DE', 'Kent', 'Smyrna', 39.3128896, -75.5746482, ST_GeomFromText('POINT(39.3128896 -75.5746482)', 4326), 39.3077778, -75.6227778, '1979-08-02', NULL, 'Official', 'Board Decision', '1965-01-01'),
  ('213912', 'Duck Creek Pond', 'Reservoir', 'Delaware', 'DE', 'New Castle', 'Clayton', 39.3060599, -75.625509, ST_GeomFromText('POINT(39.3060599 -75.625509)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('213913', 'Dukes and Jobs Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Laurel', 38.5876149, -75.5177009, ST_GeomFromText('POINT(38.5876149 -75.5177009)', 4326), 38.5937259, -75.4974223, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213914', 'Dukes Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Trap Pond', 38.5937259, -75.4974223, ST_GeomFromText('POINT(38.5937259 -75.4974223)', 4326), 38.5913889, -75.4536111, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213915', 'Dumpling Neck', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5465021, -75.2176876, ST_GeomFromText('POINT(38.5465021 -75.2176876)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213918', 'Dutton Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Harbeson', 38.732335, -75.3407484, ST_GeomFromText('POINT(38.732335 -75.3407484)', 4326), 38.7363889, -75.3669444, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213919', 'Dyke Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Dover', 39.2453899, -75.5193684, ST_GeomFromText('POINT(39.2453899 -75.5193684)', 4326), 39.2138889, -75.5716667, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213920', 'East Branch Christina River', 'Stream', 'Delaware', 'DE', 'New Castle', 'Newark West', 39.7006669, -75.78577, ST_GeomFromText('POINT(39.7006669 -75.78577)', 4326), 39.7384, -75.8056, '1979-08-02', '2006-09-27', NULL, NULL, NULL),
  ('213923', 'Easter Hill', 'Summit', 'Delaware', 'DE', 'Sussex', 'Laurel', 38.6096163, -75.5927677, ST_GeomFromText('POINT(38.6096163 -75.5927677)', 4326), NULL, NULL, '1979-08-02', '2021-07-17', NULL, NULL, NULL),
  ('213924', 'Ebenezer Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Lewes', 38.7659454, -75.1579617, ST_GeomFromText('POINT(38.7659454 -75.1579617)', 4326), 38.7527778, -75.1555556, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213928', 'Edgar Prong', 'Bay', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5809456, -75.1074049, ST_GeomFromText('POINT(38.5809456 -75.1074049)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213933', 'Eli Walls Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Harbeson', 38.6476133, -75.3182474, ST_GeomFromText('POINT(38.6476133 -75.3182474)', 4326), 38.6883333, -75.3705556, '1979-08-02', '2014-07-17', 'Official', 'Board Decision', '1965-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('213936', 'Ellendale Swamp', 'Swamp', 'Delaware', 'DE', 'Sussex', 'Ellendale', 38.7856687, -75.424086, ST_GeomFromText('POINT(38.7856687 -75.424086)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213937', 'Elliott Pond Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Laurel', 38.5573373, -75.5446463, ST_GeomFromText('POINT(38.5573373 -75.5446463)', 4326), 38.5875, -75.5180556, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213938', 'Ellis Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5931681, -75.1340726, ST_GeomFromText('POINT(38.5931681 -75.1340726)', 4326), NULL, NULL, '1979-08-02', NULL, 'Official', 'Board Decision', '1961-01-01'),
  ('213939', 'Ellis Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Laurel', 38.5072158, -75.5079433, ST_GeomFromText('POINT(38.5072158 -75.5079433)', 4326), NULL, NULL, '1979-08-02', '2018-12-17', NULL, NULL, NULL),
  ('213947', 'Falling Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5684461, -75.1824082, ST_GeomFromText('POINT(38.5684461 -75.1824082)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213948', 'Fan Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Harrington', 38.9920576, -75.5810364, ST_GeomFromText('POINT(38.9920576 -75.5810364)', 4326), 39.019002, -75.5827032, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213953', 'Fenwick Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.4534458, -75.0482366, ST_GeomFromText('POINT(38.4534458 -75.0482366)', 4326), NULL, NULL, '1979-08-02', '2014-07-17', 'Official', 'Board Decision', '1942-01-01'),
  ('213956', 'Ferry Cove', 'Bay', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5920575, -75.246022, ST_GeomFromText('POINT(38.5920575 -75.246022)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213958', 'First Hill', 'Island', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8620568, -75.2663004, ST_GeomFromText('POINT(38.8620568 -75.2663004)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213959', 'Fisher Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Lewes', 38.7851122, -75.1929634, ST_GeomFromText('POINT(38.7851122 -75.1929634)', 4326), 38.7752778, -75.2208333, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('213961', 'Fishing Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Milford', 38.9556683, -75.3935287, ST_GeomFromText('POINT(38.9556683 -75.3935287)', 4326), 38.9686111, -75.4169444, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213962', 'Fishing Creek', 'Stream', 'Delaware', 'DE', 'New Castle', 'Taylors Bridge', 39.4290008, -75.5971491, ST_GeomFromText('POINT(39.4290008 -75.5971491)', 4326), 39.4136111, -75.5883333, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213963', 'Fivefoot Prong', 'Stream', 'Delaware', 'DE', 'Kent', 'Marydel', 39.0553908, -75.646039, ST_GeomFromText('POINT(39.0553908 -75.646039)', 4326), 39.0419444, -75.6288889, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213965', 'Flat Sands', 'Flat', 'Delaware', 'DE', 'Sussex', 'Cape Henlopen', 38.7681677, -75.0957366, ST_GeomFromText('POINT(38.7681677 -75.0957366)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213967', 'Flaxhole Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8168558, -75.2724676, ST_GeomFromText('POINT(38.8168558 -75.2724676)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', 'Official', 'Board Decision', '1965-01-01'),
  ('213968', 'Fleetwood Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8180197, -75.2629434, ST_GeomFromText('POINT(38.8180197 -75.2629434)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('213969', 'Fleetwood Pond', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Seaford East', 38.6413399, -75.5046391, ST_GeomFromText('POINT(38.6413399 -75.5046391)', 4326), NULL, NULL, '1979-08-02', '2018-12-17', NULL, NULL, NULL),
  ('213972', 'Fork Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Dover', 39.1826122, -75.5429801, ST_GeomFromText('POINT(39.1826122 -75.5429801)', 4326), 39.1965007, -75.6615956, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213975', 'Fork Number One Pepper Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5512244, -75.2376885, ST_GeomFromText('POINT(38.5512244 -75.2376885)', 4326), 38.5398358, -75.2704676, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213977', 'Fowler Beach', 'Beach', 'Delaware', 'DE', 'Sussex', 'Mispillion River', 38.880668, -75.2679671, ST_GeomFromText('POINT(38.880668 -75.2679671)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('213978', 'Frames Cove', 'Bay', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5934461, -75.1912974, ST_GeomFromText('POINT(38.5934461 -75.1912974)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213979', 'Frames Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5915017, -75.1954642, ST_GeomFromText('POINT(38.5915017 -75.1954642)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213982', 'Freidel Prong', 'Stream', 'Delaware', 'DE', 'Sussex', 'Seaford West', 38.691503, -75.6332613, ST_GeomFromText('POINT(38.691503 -75.6332613)', 4326), 38.7191667, -75.6522222, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213983', 'Fresh Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5694583, -75.0642551, ST_GeomFromText('POINT(38.5694583 -75.0642551)', 4326), NULL, NULL, '1979-08-02', '2018-12-17', NULL, NULL, NULL),
  ('213994', 'Georgetown-Vaughn Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Georgetown', 38.7076137, -75.4521429, ST_GeomFromText('POINT(38.7076137 -75.4521429)', 4326), 38.6972222, -75.3958333, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213995', 'Lake Gerar', 'Lake', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.7199534, -75.0805387, ST_GeomFromText('POINT(38.7199534 -75.0805387)', 4326), NULL, NULL, '1979-08-02', '2020-05-14', NULL, NULL, NULL),
  ('213996', 'Gilbert Trivitts Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Seaford West', 38.6892808, -75.6252055, ST_GeomFromText('POINT(38.6892808 -75.6252055)', 4326), 38.7219444, -75.6441667, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213997', 'Gill Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Laurel', 38.5065044, -75.5652026, ST_GeomFromText('POINT(38.5065044 -75.5652026)', 4326), 38.5, -75.5419444, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213998', 'Gills Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Harbeson', 38.6506689, -75.3238032, ST_GeomFromText('POINT(38.6506689 -75.3238032)', 4326), 38.6642802, -75.3782502, '1979-08-02', NULL, NULL, NULL, NULL),
  ('213999', 'Gills Neck', 'Cape', 'Delaware', 'DE', 'Sussex', 'Cape Henlopen', 38.7609454, -75.1221267, ST_GeomFromText('POINT(38.7609454 -75.1221267)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214001', 'Glade Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Greenwood', 38.7767803, -75.5863152, ST_GeomFromText('POINT(38.7767803 -75.5863152)', 4326), 38.7983333, -75.5725, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214005', 'Goose Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5020564, -75.0654591, ST_GeomFromText('POINT(38.5020564 -75.0654591)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214006', 'Goose Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.4938896, -75.0669376, ST_GeomFromText('POINT(38.4938896 -75.0669376)', 4326), NULL, NULL, '1979-08-02', '2018-12-17', NULL, NULL, NULL),
  ('214007', 'Goose Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8191344, -75.2736118, ST_GeomFromText('POINT(38.8191344 -75.2736118)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('214008', 'Goose Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8526123, -75.2657447, ST_GeomFromText('POINT(38.8526123 -75.2657447)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214009', 'Gordon Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Laurel', 38.5376152, -75.5129781, ST_GeomFromText('POINT(38.5376152 -75.5129781)', 4326), 38.5534482, -75.4776989, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214010', 'Goslee Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.7240011, -75.1876855, ST_GeomFromText('POINT(38.7240011 -75.1876855)', 4326), 38.7363889, -75.1825, '1979-08-02', NULL, 'Official', 'Board Decision', '1961-01-01'),
  ('214011', 'Goslee Mill Pond', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.7184229, -75.1886782, ST_GeomFromText('POINT(38.7184229 -75.1886782)', 4326), NULL, NULL, '1979-08-02', '2018-12-17', 'Official', 'Board Decision', '1961-01-01'),
  ('214014', 'Graham Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Seaford East', 38.632059, -75.5610361, ST_GeomFromText('POINT(38.632059 -75.5610361)', 4326), 38.5995592, -75.5588137, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214016', 'Gravelly Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Denton', 38.9959471, -75.7849327, ST_GeomFromText('POINT(38.9959471 -75.7849327)', 4326), 38.9806695, -75.7346531, '1979-08-02', '2015-07-08', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214017', 'Gravelly Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Seaford East', 38.686503, -75.5557584, ST_GeomFromText('POINT(38.686503 -75.5557584)', 4326), 38.8056686, -75.4096408, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214018', 'Gravelly Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Ellendale', 38.7534465, -75.4204747, ST_GeomFromText('POINT(38.7534465 -75.4204747)', 4326), 38.7392798, -75.3863064, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214020', 'Grays Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Trap Pond', 38.5448371, -75.4679762, ST_GeomFromText('POINT(38.5448371 -75.4679762)', 4326), 38.5891667, -75.4163889, '1979-08-02', '2014-07-17', NULL, NULL, NULL),
  ('214021', 'Grays Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5865015, -75.1529623, ST_GeomFromText('POINT(38.5865015 -75.1529623)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214024', 'Great Bohemia Creek', 'Stream', 'Maryland', 'MD', 'Cecil', 'Cecilton', 39.4598356, -75.857439, ST_GeomFromText('POINT(39.4598356 -75.857439)', 4326), 39.4812228, -75.7390994, '1979-08-02', '2010-11-04', NULL, NULL, NULL),
  ('214025', 'Great Marsh', 'Swamp', 'Delaware', 'DE', 'Sussex', 'Lewes', 38.7959455, -75.1951858, ST_GeomFromText('POINT(38.7959455 -75.1951858)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214026', 'Green Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Hickman', 38.8509469, -75.6688178, ST_GeomFromText('POINT(38.8509469 -75.6688178)', 4326), 38.9115026, -75.7118747, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214027', 'Green Briar Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Seaford West', 38.6361111, -75.6691667, ST_GeomFromText('POINT(38.6361111 -75.6691667)', 4326), 38.6491667, -75.7136111, '1979-08-02', '2005-11-29', NULL, NULL, NULL),
  ('214028', 'Green Creek', 'Stream', 'Delaware', 'DE', 'Kent', 'Little Creek', 39.2128905, -75.4296424, ST_GeomFromText('POINT(39.2128905 -75.4296424)', 4326), 39.2386111, -75.4680556, '1979-08-02', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('214031', 'Green Spring Branch', 'Stream', 'Delaware', 'DE', 'New Castle', 'Clayton', 39.3081672, -75.6279836, ST_GeomFromText('POINT(39.3081672 -75.6279836)', 4326), 39.3363889, -75.6494444, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214032', 'Greenlees Ditch', 'Stream', 'Delaware', 'DE', 'Kent', 'Burrsville', 38.982336, -75.7157635, ST_GeomFromText('POINT(38.982336 -75.7157635)', 4326), 38.9983333, -75.6858333, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214033', 'Greens Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Smyrna', 39.3095786, -75.6160237, ST_GeomFromText('POINT(39.3095786 -75.6160237)', 4326), 39.2712356, -75.6674267, '1979-08-02', '2020-04-20', 'Official', 'Board Decision', '1965-01-01'),
  ('214037', 'Greys Neck', 'Cape', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.4542797, -75.1046278, ST_GeomFromText('POINT(38.4542797 -75.1046278)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214038', 'Grubby Neck Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Greenwood', 38.7712247, -75.5913154, ST_GeomFromText('POINT(38.7712247 -75.5913154)', 4326), 38.8103913, -75.6290943, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214039', 'Guinea Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6434457, -75.1471285, ST_GeomFromText('POINT(38.6434457 -75.1471285)', 4326), 38.6302778, -75.205, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214040', 'Gull Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.60289, -75.0879594, ST_GeomFromText('POINT(38.60289 -75.0879594)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214042', 'Gully Camp Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Seaford East', 38.7428915, -75.552703, ST_GeomFromText('POINT(38.7428915 -75.552703)', 4326), 38.7441667, -75.5261111, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214043', 'Gum Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Whaleyville', 38.4656704, -75.3471377, ST_GeomFromText('POINT(38.4656704 -75.3471377)', 4326), 38.5, -75.4058333, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214044', 'Gum Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Sharptown', 38.6042815, -75.6521509, ST_GeomFromText('POINT(38.6042815 -75.6521509)', 4326), 38.5878927, -75.5579802, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214045', 'Gum Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Seaford East', 38.7301138, -75.5610365, ST_GeomFromText('POINT(38.7301138 -75.5610365)', 4326), 38.8345577, -75.4854778, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214046', 'Gum Island', 'Island', 'Delaware', 'DE', 'Kent', 'Hickman', 38.8731691, -75.6510393, ST_GeomFromText('POINT(38.8731691 -75.6510393)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214050', 'Hamburg Cove', 'Bay', 'Delaware', 'DE', 'New Castle', 'Delaware City', 39.6126123, -75.6093713, ST_GeomFromText('POINT(39.6126123 -75.6093713)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214053', 'Hangmans Run', 'Stream', 'Delaware', 'DE', 'New Castle', 'Taylors Bridge', 39.4470563, -75.6018715, ST_GeomFromText('POINT(39.4470563 -75.6018715)', 4326), 39.4215006, -75.6518735, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214055', 'Harbor of Refuge', 'Bay', 'Delaware', 'DE', 'Sussex', 'Cape Henlopen', 38.8237233, -75.1076818, ST_GeomFromText('POINT(38.8237233 -75.1076818)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214063', 'Haven Lake', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Milford', 38.9111563, -75.4518556, ST_GeomFromText('POINT(38.9111563 -75.4518556)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('214064', 'Hawkins Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.6201122, -75.0865703, ST_GeomFromText('POINT(38.6201122 -75.0865703)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214066', 'Hay Hummock', 'Island', 'Delaware', 'DE', 'Sussex', 'Milton', 38.854279, -75.250744, ST_GeomFromText('POINT(38.854279 -75.250744)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214068', 'Hazard Cove', 'Bay', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6551124, -75.151573, ST_GeomFromText('POINT(38.6551124 -75.151573)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214071', 'Head of the Gut', 'Bay', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.621501, -75.080459, ST_GeomFromText('POINT(38.621501 -75.080459)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214072', 'Head of Bay Cove', 'Bay', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.6942788, -75.0787918, ST_GeomFromText('POINT(38.6942788 -75.0787918)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214073', 'Hearns Pond', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Seaford East', 38.681859, -75.599112, ST_GeomFromText('POINT(38.681859 -75.599112)', 4326), NULL, NULL, '1979-08-02', '2024-09-14', NULL, NULL, NULL),
  ('214075', 'Hells Neck', 'Cape', 'Delaware', 'DE', 'Sussex', 'Lewes', 38.766501, -75.1732402, ST_GeomFromText('POINT(38.766501 -75.1732402)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214076', 'Helms Cove', 'Bay', 'Delaware', 'DE', 'New Castle', 'Penns Grove', 39.7167804, -75.4801965, ST_GeomFromText('POINT(39.7167804 -75.4801965)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214081', 'Herring Branch', 'Stream', 'Delaware', 'DE', 'New Castle', 'Cecilton', 39.3765006, -75.8066024, ST_GeomFromText('POINT(39.3765006 -75.8066024)', 4326), 39.3570923, -75.7554149, '1979-08-02', '2015-07-08', NULL, NULL, NULL),
  ('214082', 'Herring Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5531686, -75.2007424, ST_GeomFromText('POINT(38.5531686 -75.2007424)', 4326), 38.5186111, -75.2352778, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214083', 'Herring Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Little Creek', 39.2128905, -75.4296424, ST_GeomFromText('POINT(39.2128905 -75.4296424)', 4326), 39.1852778, -75.4808333, '1979-08-02', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('214084', 'Herring Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Milford', 38.9006685, -75.4151965, ST_GeomFromText('POINT(38.9006685 -75.4151965)', 4326), 38.8620575, -75.4438091, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214085', 'Herring Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6420567, -75.133239, ST_GeomFromText('POINT(38.6420567 -75.133239)', 4326), 38.6572222, -75.1680556, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214086', 'Herring Run', 'Stream', 'Delaware', 'DE', 'Sussex', 'Seaford East', 38.6523366, -75.5974265, ST_GeomFromText('POINT(38.6523366 -75.5974265)', 4326), 38.6823364, -75.6521509, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214087', 'Herron Run', 'Stream', 'Delaware', 'DE', 'Kent', 'Denton', 38.9878917, -75.7568761, ST_GeomFromText('POINT(38.9878917 -75.7568761)', 4326), 38.9904602, -75.7110854, '1979-08-02', '2015-07-09', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214089', 'Hetty Fisher Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.7131567, -75.1591535, ST_GeomFromText('POINT(38.7131567 -75.1591535)', 4326), NULL, NULL, '1979-08-02', '2020-04-30', NULL, NULL, NULL),
  ('214091', 'Hickman Ditch', 'Stream', 'Delaware', 'DE', 'Kent', 'Hickman', 38.8317803, -75.7227087, ST_GeomFromText('POINT(38.8317803 -75.7227087)', 4326), 38.8473238, -75.7441235, '1979-08-02', '2015-07-09', NULL, NULL, NULL),
  ('214093', 'Hickory Cove', 'Bay', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5881686, -75.2129649, ST_GeomFromText('POINT(38.5881686 -75.2129649)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214095', 'Highgrass Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.587335, -75.1879639, ST_GeomFromText('POINT(38.587335 -75.1879639)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214096', 'Hill Savannah Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Trap Pond', 38.5262257, -75.3951953, ST_GeomFromText('POINT(38.5262257 -75.3951953)', 4326), 38.5461111, -75.4061111, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214098', 'Hitch Pond Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Laurel', 38.5359485, -75.5118669, ST_GeomFromText('POINT(38.5359485 -75.5118669)', 4326), 38.5276152, -75.4829767, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214101', 'Holland Glade', 'Stream', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.7409454, -75.0901809, ST_GeomFromText('POINT(38.7409454 -75.0901809)', 4326), 38.7380556, -75.1127778, '1979-08-02', NULL, 'Official', 'Board Decision', '1965-01-01'),
  ('214102', 'Holland Neck', 'Cape', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.7362232, -75.0987924, ST_GeomFromText('POINT(38.7362232 -75.0987924)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214103', 'Holland Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5606687, -75.2176876, ST_GeomFromText('POINT(38.5606687 -75.2176876)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214104', 'Holland Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Lewes', 38.7930029, -75.2205316, ST_GeomFromText('POINT(38.7930029 -75.2205316)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214106', 'Holly Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Laurel', 38.5212266, -75.5782587, ST_GeomFromText('POINT(38.5212266 -75.5782587)', 4326), 38.4895602, -75.5660358, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214108', 'Holly Island', 'Island', 'Delaware', 'DE', 'New Castle', 'Wilmington North', 39.7756682, -75.5765916, ST_GeomFromText('POINT(39.7756682 -75.5765916)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214110', 'Holly Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5098342, -75.0671258, ST_GeomFromText('POINT(38.5098342 -75.0671258)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214114', 'Hoods Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6462235, -75.1457395, ST_GeomFromText('POINT(38.6462235 -75.1457395)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214115', 'Hoopes Reservoir', 'Reservoir', 'Delaware', 'DE', 'New Castle', 'Kennett Square', 39.7834445, -75.6272368, ST_GeomFromText('POINT(39.7834445 -75.6272368)', 4326), NULL, NULL, '1979-08-02', '2018-12-18', NULL, NULL, NULL),
  ('214117', 'Hopkins Prong', 'Stream', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6573346, -75.1676849, ST_GeomFromText('POINT(38.6573346 -75.1676849)', 4326), 38.6588889, -75.1886111, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214118', 'Hopkins Prong', 'Stream', 'Delaware', 'DE', 'Kent', 'Burrsville', 38.9312249, -75.7243751, ST_GeomFromText('POINT(38.9312249 -75.7243751)', 4326), 38.9208333, -75.7144444, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214119', 'Horse Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6728901, -75.1346277, ST_GeomFromText('POINT(38.6728901 -75.1346277)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214120', 'Horse Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Milton', 38.826779, -75.2613001, ST_GeomFromText('POINT(38.826779 -75.2613001)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214121', 'Horse Pen Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Seaford West', 38.6356702, -75.6696516, ST_GeomFromText('POINT(38.6356702 -75.6696516)', 4326), 38.6805556, -75.6933333, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214122', 'Horse Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5012233, -75.0804597, ST_GeomFromText('POINT(38.5012233 -75.0804597)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214123', 'Horsepen Arm', 'Stream', 'Delaware', 'DE', 'Kent', 'Burrsville', 38.9215024, -75.6393721, ST_GeomFromText('POINT(38.9215024 -75.6393721)', 4326), 38.9811111, -75.6694444, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214124', 'Horsepen Ditch', 'Stream', 'Delaware', 'DE', 'Kent', 'Marydel', 39.0312245, -75.6827069, ST_GeomFromText('POINT(39.0312245 -75.6827069)', 4326), 39.0158333, -75.6533333, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214125', 'Horseshoe Hill', 'Summit', 'Delaware', 'DE', 'New Castle', 'Kennett Square', 39.7923124, -75.6649272, ST_GeomFromText('POINT(39.7923124 -75.6649272)', 4326), NULL, NULL, '1979-08-02', '2021-07-17', NULL, NULL, NULL),
  ('214126', 'Horseshoe Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Milton', 38.816556, -75.264673, ST_GeomFromText('POINT(38.816556 -75.264673)', 4326), NULL, NULL, '1979-08-02', '2024-09-14', NULL, NULL, NULL),
  ('214128', 'Houston Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Federalsburg', 38.7423358, -75.7521544, ST_GeomFromText('POINT(38.7423358 -75.7521544)', 4326), 38.7076139, -75.6852077, '1979-08-02', '2015-07-09', NULL, NULL, NULL),
  ('214129', 'Houston-Thorogood Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Millsboro', 38.5615027, -75.3160252, ST_GeomFromText('POINT(38.5615027 -75.3160252)', 4326), 38.5475, -75.3344444, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214130', 'Huckleberry Swamp', 'Swamp', 'Delaware', 'DE', 'Sussex', 'Milton', 38.84785, -75.2959681, ST_GeomFromText('POINT(38.84785 -75.2959681)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('214131', 'Hudson Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Frederica', 39.0290016, -75.4999225, ST_GeomFromText('POINT(39.0290016 -75.4999225)', 4326), 39.0275674, -75.5940351, '1979-08-02', '2020-08-25', NULL, NULL, NULL),
  ('214132', 'Hunters Millpond', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Harbeson', 38.7388359, -75.2696662, ST_GeomFromText('POINT(38.7388359 -75.2696662)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214133', 'Hurley Drain', 'Stream', 'Delaware', 'DE', 'Sussex', 'Seaford East', 38.6681699, -75.5596473, ST_GeomFromText('POINT(38.6681699 -75.5596473)', 4326), 38.6705556, -75.5216667, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214134', 'Hurricane Run', 'Stream', 'Delaware', 'DE', 'New Castle', 'Wilmington North', 39.8167787, -75.5590916, ST_GeomFromText('POINT(39.8167787 -75.5590916)', 4326), 39.8277778, -75.5472222, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214135', 'Husbands Run', 'Stream', 'Delaware', 'DE', 'New Castle', 'Wilmington North', 39.7820569, -75.5699247, ST_GeomFromText('POINT(39.7820569 -75.5699247)', 4326), 39.8047222, -75.5516667, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214136', 'Hyde Run', 'Stream', 'Delaware', 'DE', 'New Castle', 'Newark East', 39.7440014, -75.6335391, ST_GeomFromText('POINT(39.7440014 -75.6335391)', 4326), 39.7787228, -75.662153, '1979-08-02', '2014-07-15', NULL, NULL, NULL),
  ('214137', 'Ice House Point', 'Cape', 'Delaware', 'DE', 'New Castle', 'Delaware City', 39.5548344, -75.5996489, ST_GeomFromText('POINT(39.5548344 -75.5996489)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214141', 'Indian River', 'Stream', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5917793, -75.1596293, ST_GeomFromText('POINT(38.5917793 -75.1596293)', 4326), 38.5942801, -75.291024, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214142', 'Indian River Bay', 'Bay', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5965011, -75.1229792, ST_GeomFromText('POINT(38.5965011 -75.1229792)', 4326), NULL, NULL, '1979-08-02', '2022-08-05', NULL, NULL, NULL),
  ('214145', 'Ingram Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8203904, -75.3157472, ST_GeomFromText('POINT(38.8203904 -75.3157472)', 4326), 38.7982187, -75.3474135, '1979-08-02', '2020-08-25', NULL, NULL, NULL),
  ('214146', 'Ingram Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Burrsville', 38.9331694, -75.731042, ST_GeomFromText('POINT(38.9331694 -75.731042)', 4326), 38.9313889, -75.725, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214147', 'Ingram Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Milton', 38.7723348, -75.3179695, ST_GeomFromText('POINT(38.7723348 -75.3179695)', 4326), 38.7322955, -75.3408434, '1979-08-02', '2020-08-25', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214148', 'Ingram Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8718435, -75.268303, ST_GeomFromText('POINT(38.8718435 -75.268303)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('214149', 'Iron Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Millsboro', 38.5798356, -75.2715786, ST_GeomFromText('POINT(38.5798356 -75.2715786)', 4326), 38.5613889, -75.3163889, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214151', 'Iron Hill', 'Summit', 'Delaware', 'DE', 'New Castle', 'Newark West', 39.6400861, -75.7523707, ST_GeomFromText('POINT(39.6400861 -75.7523707)', 4326), NULL, NULL, '1979-08-02', '2021-07-17', NULL, NULL, NULL),
  ('214153', 'Iron Mine Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Hickman', 38.7826136, -75.7029859, ST_GeomFromText('POINT(38.7826136 -75.7029859)', 4326), 38.77, -75.6425, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214154', 'Iron Mine Prong', 'Stream', 'Delaware', 'DE', 'Kent', 'Marydel', 39.0517798, -75.6593727, ST_GeomFromText('POINT(39.0517798 -75.6593727)', 4326), 39.0173354, -75.6132598, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214155', 'Isaac Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Dover', 39.1292792, -75.5021451, ST_GeomFromText('POINT(39.1292792 -75.5021451)', 4326), 39.140597, -75.6410941, '1979-08-02', '2015-07-10', 'Official', 'Board Decision', '1898-01-01'),
  ('214156', 'Island in the Narrows', 'Island', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6424896, -75.1364438, ST_GeomFromText('POINT(38.6424896 -75.1364438)', 4326), NULL, NULL, '1979-08-02', '2015-10-28', NULL, NULL, NULL),
  ('214157', 'Island Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5873351, -75.2051869, ST_GeomFromText('POINT(38.5873351 -75.2051869)', 4326), 38.5840021, -75.252689, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214158', 'Island Pond Marsh Ditch', 'Stream', 'Delaware', 'DE', 'Kent', 'Kenton', 39.1667788, -75.6563176, ST_GeomFromText('POINT(39.1667788 -75.6563176)', 4326), 39.1938889, -75.6797222, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214159', 'Israel Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5723351, -75.1860194, ST_GeomFromText('POINT(38.5723351 -75.1860194)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214160', 'Jack Roach Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8275132, -75.272401, ST_GeomFromText('POINT(38.8275132 -75.272401)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('214161', 'Jackson Branch', 'Stream', 'Maryland', 'MD', 'Wicomico', 'Delmar', 38.43345, -75.554368, ST_GeomFromText('POINT(38.43345 -75.554368)', 4326), 38.45675, -75.55212, '1979-08-02', '2010-11-05', NULL, NULL, NULL),
  ('214162', 'Jackson Prong', 'Stream', 'Delaware', 'DE', 'Kent', 'Marydel', 39.0492799, -75.6921517, ST_GeomFromText('POINT(39.0492799 -75.6921517)', 4326), 39.0627778, -75.6925, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214163', 'James Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Laurel', 38.556504, -75.5460352, ST_GeomFromText('POINT(38.556504 -75.5460352)', 4326), 38.460116, -75.5038107, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214164', 'Jamison Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Kenton', 39.2034448, -75.7396541, ST_GeomFromText('POINT(39.2034448 -75.7396541)', 4326), 39.1816667, -75.7052778, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214165', 'Jay Patch', 'Swamp', 'Delaware', 'DE', 'Sussex', 'Selbyville', 38.4915127, -75.2167686, ST_GeomFromText('POINT(38.4915127 -75.2167686)', 4326), NULL, NULL, '1979-08-02', '2022-08-05', NULL, NULL, NULL),
  ('214169', 'Jobs Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Trap Pond', 38.5937259, -75.4974223, ST_GeomFromText('POINT(38.5937259 -75.4974223)', 4326), 38.5972222, -75.4725, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214173', 'Johnson Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.7006678, -75.1201825, ST_GeomFromText('POINT(38.7006678 -75.1201825)', 4326), 38.7177778, -75.1072222, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214174', 'Johnson Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Milford', 38.9095574, -75.4604764, ST_GeomFromText('POINT(38.9095574 -75.4604764)', 4326), 38.8448354, -75.4640878, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214175', 'Johnson Neck', 'Cape', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.6959455, -75.1101821, ST_GeomFromText('POINT(38.6959455 -75.1101821)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214176', 'Jones Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Hickman', 38.7681691, -75.7143752, ST_GeomFromText('POINT(38.7681691 -75.7143752)', 4326), 38.7495579, -75.6879854, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214177', 'Jones Mill Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Hickman', 38.7753913, -75.7079861, ST_GeomFromText('POINT(38.7753913 -75.7079861)', 4326), 38.7536111, -75.6597222, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214178', 'Jones Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8498216, -75.2603348, ST_GeomFromText('POINT(38.8498216 -75.2603348)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('214180', 'Jordan Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Kenton', 39.2470554, -75.7321541, ST_GeomFromText('POINT(39.2470554 -75.7321541)', 4326), 39.1919444, -75.6933333, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214181', 'Joshia Cove', 'Bay', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5792788, -75.0732367, ST_GeomFromText('POINT(38.5792788 -75.0732367)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214182', 'Joshia Prong', 'Bay', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5837234, -75.1076827, ST_GeomFromText('POINT(38.5837234 -75.1076827)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214183', 'Joy Run', 'Stream', 'Delaware', 'DE', 'New Castle', 'Saint Georges', 39.541223, -75.6902088, ST_GeomFromText('POINT(39.541223 -75.6902088)', 4326), 39.5147222, -75.7086111, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214185', 'Kelly Island', 'Island', 'Delaware', 'DE', 'Kent', 'Little Creek', 39.2034462, -75.3985299, ST_GeomFromText('POINT(39.2034462 -75.3985299)', 4326), NULL, NULL, '1979-08-02', NULL, 'Official', 'Board Decision', '1897-01-01'),
  ('214187', 'Caleb Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8558435, -75.2586254, ST_GeomFromText('POINT(38.8558435 -75.2586254)', 4326), NULL, NULL, '1979-08-02', '2015-06-04', 'Official', 'Board Decision', '1965-01-01'),
  ('214189', 'Kent Island', 'Island', 'Delaware', 'DE', 'Kent', 'Little Creek', 39.2301128, -75.426309, ST_GeomFromText('POINT(39.2301128 -75.426309)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214190', 'Kent-Sussex Line Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Greenwood', 38.835669, -75.5543693, ST_GeomFromText('POINT(38.835669 -75.5543693)', 4326), 38.8702778, -75.5347222, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214193', 'Kildee Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5637242, -75.2087983, ST_GeomFromText('POINT(38.5637242 -75.2087983)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214195', 'Kings Causeway Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Milford', 38.960946, -75.3776947, ST_GeomFromText('POINT(38.960946 -75.3776947)', 4326), 38.9927778, -75.39, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214200', 'Labens Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.6234455, -75.0926818, ST_GeomFromText('POINT(38.6234455 -75.0926818)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214208', 'Laws Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.4823346, -75.0807377, ST_GeomFromText('POINT(38.4823346 -75.0807377)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214209', 'Layton-Vaughn Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Georgetown', 38.6881695, -75.4707548, ST_GeomFromText('POINT(38.6881695 -75.4707548)', 4326), 38.6816667, -75.3969444, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214211', 'Lee Joseph Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.6337234, -75.1199051, ST_GeomFromText('POINT(38.6337234 -75.1199051)', 4326), 38.6278902, -75.1324057, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214217', 'Lewes Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Sharptown', 38.6156703, -75.6399282, ST_GeomFromText('POINT(38.6156703 -75.6399282)', 4326), 38.6278924, -75.628261, '1979-08-02', '2014-07-22', NULL, NULL, NULL),
  ('214219', 'Lewis Neck', 'Cape', 'Delaware', 'DE', 'Sussex', 'Whaleyville', 38.4712254, -75.2824129, ST_GeomFromText('POINT(38.4712254 -75.2824129)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214220', 'Lighthouse Cove', 'Bay', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.454557, -75.0593481, ST_GeomFromText('POINT(38.454557 -75.0593481)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214223', 'Lingo Cove', 'Bay', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6345567, -75.1274054, ST_GeomFromText('POINT(38.6345567 -75.1274054)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214224', 'Lingo Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.6106681, -75.1576847, ST_GeomFromText('POINT(38.6106681 -75.1576847)', 4326), 38.6267793, -75.1779632, '1979-08-02', NULL, 'Official', 'Board Decision', '1943-01-01'),
  ('214225', 'Lingo Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.6062236, -75.1543512, ST_GeomFromText('POINT(38.6062236 -75.1543512)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214226', 'Little Assawoman Bay', 'Bay', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.4749769, -75.0644924, ST_GeomFromText('POINT(38.4749769 -75.0644924)', 4326), NULL, NULL, '1979-08-02', '2022-08-05', NULL, NULL, NULL),
  ('214227', 'Little Bacon Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.6401121, -75.0829589, ST_GeomFromText('POINT(38.6401121 -75.0829589)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214228', 'Little Bay', 'Bay', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5037231, -75.0579588, ST_GeomFromText('POINT(38.5037231 -75.0579588)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214229', 'Little Bombay Hook', 'Cape', 'Delaware', 'DE', 'Kent', 'Little Creek', 39.2356686, -75.3990856, ST_GeomFromText('POINT(39.2356686 -75.3990856)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214230', 'Little Cedar Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.6251121, -75.0749032, ST_GeomFromText('POINT(38.6251121 -75.0749032)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214232', 'Little Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Laurel', 38.5609484, -75.5877037, ST_GeomFromText('POINT(38.5609484 -75.5877037)', 4326), 38.5211111, -75.5783333, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214235', 'Little Mill Creek', 'Stream', 'Delaware', 'DE', 'New Castle', 'Wilmington South', 39.7187242, -75.5674239, ST_GeomFromText('POINT(39.7187242 -75.5674239)', 4326), 39.7778901, -75.6040935, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214236', 'Little Neck', 'Cape', 'Delaware', 'DE', 'Sussex', 'Milton', 38.838168, -75.2726896, ST_GeomFromText('POINT(38.838168 -75.2726896)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214237', 'Little Newfound Neck', 'Cape', 'Delaware', 'DE', 'Sussex', 'Whaleyville', 38.4834479, -75.3443598, ST_GeomFromText('POINT(38.4834479 -75.3443598)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214238', 'Little Rabbit Swamp', 'Swamp', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8370806, -75.2992374, ST_GeomFromText('POINT(38.8370806 -75.2992374)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('214239', 'Little Reedy Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.6426121, -75.0743474, ST_GeomFromText('POINT(38.6426121 -75.0743474)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214240', 'Little River', 'Stream', 'Delaware', 'DE', 'Kent', 'Little Creek', 39.1601128, -75.4076968, ST_GeomFromText('POINT(39.1601128 -75.4076968)', 4326), 39.1937233, -75.5265907, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214241', 'Little Round Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Milton', 38.864279, -75.2528783, ST_GeomFromText('POINT(38.864279 -75.2528783)', 4326), NULL, NULL, '1979-08-02', '2015-06-04', NULL, NULL, NULL),
  ('214242', 'Little Sheep Hammock', 'Island', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.50289, -75.0854599, ST_GeomFromText('POINT(38.50289 -75.0854599)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214245', 'Logwood Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Millsboro', 38.60306, -75.2575206, ST_GeomFromText('POINT(38.60306 -75.2575206)', 4326), NULL, NULL, '1979-08-02', '2024-09-11', NULL, NULL, NULL),
  ('214247', 'Long Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Greenwood', 38.7865024, -75.5546473, ST_GeomFromText('POINT(38.7865024 -75.5546473)', 4326), 38.8088889, -75.5722222, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214251', 'Long Drain Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Millsboro', 38.5912247, -75.3185252, ST_GeomFromText('POINT(38.5912247 -75.3185252)', 4326), 38.6048363, -75.4026958, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214252', 'Long Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.504279, -75.0915713, ST_GeomFromText('POINT(38.504279 -75.0915713)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214253', 'Long Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5876131, -75.2274101, ST_GeomFromText('POINT(38.5876131 -75.2274101)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214256', 'Love Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6937234, -75.1501839, ST_GeomFromText('POINT(38.6937234 -75.1501839)', 4326), 38.7186111, -75.1886111, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214259', 'Lums Pond', 'Lake', 'Delaware', 'DE', 'New Castle', 'Saint Georges', 39.554287, -75.714942, ST_GeomFromText('POINT(39.554287 -75.714942)', 4326), NULL, NULL, '1979-08-02', '2024-09-14', 'Official', 'Board Decision', '1965-01-01'),
  ('214260', 'Luther Marvel Prong', 'Stream', 'Delaware', 'DE', 'Kent', 'Marydel', 39.0815017, -75.669651, ST_GeomFromText('POINT(39.0815017 -75.669651)', 4326), 39.1147222, -75.6675, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214265', 'Mahon River', 'Stream', 'Delaware', 'DE', 'Kent', 'Little Creek', 39.1845573, -75.3976965, ST_GeomFromText('POINT(39.1845573 -75.3976965)', 4326), 39.2208333, -75.41, '1979-08-02', '2011-04-01', 'Official', 'Board Decision', '1891-12-31'),
  ('214266', 'Maidstone Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Dover', 39.1773344, -75.5749258, ST_GeomFromText('POINT(39.1773344 -75.5749258)', 4326), 39.1481679, -75.6440948, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214268', 'Maple Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Ellendale', 38.7553912, -75.4593656, ST_GeomFromText('POINT(38.7553912 -75.4593656)', 4326), 38.8044444, -75.4227778, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214269', 'Maple Marsh and Beaver Dam Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Ellendale', 38.7615023, -75.4660327, ST_GeomFromText('POINT(38.7615023 -75.4660327)', 4326), 38.8286111, -75.4736111, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214270', 'Mare Marsh', 'Swamp', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.6034453, -75.0643473, ST_GeomFromText('POINT(38.6034453 -75.0643473)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214271', 'Marsh Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.669279, -75.1271274, ST_GeomFromText('POINT(38.669279 -75.1271274)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214272', 'Marshall Island', 'Island', 'Delaware', 'DE', 'Kent', 'Little Creek', 39.2470572, -75.4240867, ST_GeomFromText('POINT(39.2470572 -75.4240867)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214273', 'Marshall Millpond', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Milford', 38.9073589, -75.4134395, ST_GeomFromText('POINT(38.9073589 -75.4134395)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('214277', 'Marshyhope Ditch', 'Stream', 'Delaware', 'DE', 'Kent', 'Burrsville', 38.9477922, -75.6291201, ST_GeomFromText('POINT(38.9477922 -75.6291201)', 4326), 38.9783884, -75.6204636, '1979-08-02', '2020-08-25', 'Official', 'Board Decision', '1965-01-01'),
  ('214278', 'Martin Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.7459455, -75.2282427, ST_GeomFromText('POINT(38.7459455 -75.2282427)', 4326), 38.7297222, -75.2486111, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214280', 'Massey Branch', 'Stream', 'Delaware', 'DE', 'New Castle', 'Clayton', 39.3212227, -75.6410397, ST_GeomFromText('POINT(39.3212227 -75.6410397)', 4326), 39.3305556, -75.675, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214283', 'Massey Marsh', 'Swamp', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6501332, -75.1519812, ST_GeomFromText('POINT(38.6501332 -75.1519812)', 4326), NULL, NULL, '1979-08-02', '2022-08-05', NULL, NULL, NULL),
  ('214284', 'Masseys Millpond', 'Reservoir', 'Delaware', 'DE', 'Kent', 'Dover', 39.2381437, -75.6237018, ST_GeomFromText('POINT(39.2381437 -75.6237018)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('214286', 'Matson Run', 'Stream', 'Delaware', 'DE', 'New Castle', 'Wilmington North', 39.7617803, -75.517824, ST_GeomFromText('POINT(39.7617803 -75.517824)', 4326), 39.7845157, -75.5396313, '1979-08-02', '2020-03-25', NULL, NULL, NULL),
  ('214289', 'McCrays Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5270576, -75.2037982, ST_GeomFromText('POINT(38.5270576 -75.2037982)', 4326), 38.4942801, -75.206854, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214291', 'McGee Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Harbeson', 38.6684466, -75.3507489, ST_GeomFromText('POINT(38.6684466 -75.3507489)', 4326), 38.6815024, -75.3926955, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214292', 'McGinnis Pond', 'Reservoir', 'Delaware', 'DE', 'Kent', 'Wyoming', 39.0354704, -75.5151682, ST_GeomFromText('POINT(39.0354704 -75.5151682)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('214294', 'Meadow Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Laurel', 38.5212266, -75.5782587, ST_GeomFromText('POINT(38.5212266 -75.5782587)', 4326), 38.4670605, -75.549646, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214297', 'Melson Island', 'Cape', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.6050693, -75.0754781, ST_GeomFromText('POINT(38.6050693 -75.0754781)', 4326), NULL, NULL, '1979-08-02', '2015-02-16', NULL, NULL, NULL),
  ('214298', 'Meredith Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Marydel', 39.0473355, -75.7052078, ST_GeomFromText('POINT(39.0473355 -75.7052078)', 4326), 38.9856692, -75.6604837, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214300', 'Middle Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.6192789, -75.0946263, ST_GeomFromText('POINT(38.6192789 -75.0946263)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214301', 'Middle Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5085268, -75.0662455, ST_GeomFromText('POINT(38.5085268 -75.0662455)', 4326), NULL, NULL, '1979-08-02', '2018-12-17', NULL, NULL, NULL),
  ('214302', 'Middle Run', 'Stream', 'Delaware', 'DE', 'New Castle', 'Newark East', 39.693445, -75.7196555, ST_GeomFromText('POINT(39.693445 -75.7196555)', 4326), 39.7458333, -75.7397222, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214307', 'Mifflin Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Georgetown', 38.707336, -75.4654769, ST_GeomFromText('POINT(38.707336 -75.4654769)', 4326), 38.735, -75.395, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214310', 'Milford Neck', 'Cape', 'Delaware', 'DE', 'Kent', 'Frederica', 39.0001126, -75.3829726, ST_GeomFromText('POINT(39.0001126 -75.3829726)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214311', 'Mill Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Sharptown', 38.5206711, -75.6332611, ST_GeomFromText('POINT(38.5206711 -75.6332611)', 4326), 38.5008333, -75.6444444, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214312', 'Mill Creek', 'Stream', 'Delaware', 'DE', 'New Castle', 'Taylors Bridge', 39.4306675, -75.5840929, ST_GeomFromText('POINT(39.4306675 -75.5840929)', 4326), 39.4166667, -75.5761111, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214313', 'Mill Creek', 'Stream', 'Delaware', 'DE', 'Kent', 'Smyrna', 39.3128896, -75.5746482, ST_GeomFromText('POINT(39.3128896 -75.5746482)', 4326), 39.2448335, -75.6696517, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214314', 'Mill Creek', 'Stream', 'Delaware', 'DE', 'New Castle', 'Newark East', 39.7072002, -75.6526885, ST_GeomFromText('POINT(39.7072002 -75.6526885)', 4326), 39.798219, -75.7165736, '1979-08-02', '2020-03-25', NULL, NULL, NULL),
  ('214315', 'Mill Creek Cove', 'Bay', 'Delaware', 'DE', 'New Castle', 'Delaware City', 39.5331679, -75.5285347, ST_GeomFromText('POINT(39.5331679 -75.5285347)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214317', 'Miller Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.504001, -75.0685148, ST_GeomFromText('POINT(38.504001 -75.0685148)', 4326), 38.5113889, -75.1086111, '1979-08-02', '2014-04-14', NULL, NULL, NULL),
  ('214318', 'Miller Neck', 'Cape', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.4928903, -75.1015718, ST_GeomFromText('POINT(38.4928903 -75.1015718)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214322', 'Millsboro Pond', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Millsboro', 38.5993599, -75.2973653, ST_GeomFromText('POINT(38.5993599 -75.2973653)', 4326), NULL, NULL, '1979-08-02', '2018-12-17', NULL, NULL, NULL),
  ('214328', 'Miry Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8472416, -75.2688378, ST_GeomFromText('POINT(38.8472416 -75.2688378)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('214330', 'Mispillion River', 'Stream', 'Delaware', 'DE', 'Sussex', 'Mispillion River', 38.9515014, -75.3132471, ST_GeomFromText('POINT(38.9515014 -75.3132471)', 4326), 38.9115216, -75.4328401, '1979-08-02', '2020-08-25', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214331', 'Mockingbird Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Hebron', 38.4628944, -75.7077083, ST_GeomFromText('POINT(38.4628944 -75.7077083)', 4326), 38.4746934, -75.6427252, '1979-08-02', '2015-07-09', NULL, NULL, NULL),
  ('214334', 'Moores Lake', 'Reservoir', 'Delaware', 'DE', 'Kent', 'Dover', 39.1279145, -75.5235583, ST_GeomFromText('POINT(39.1279145 -75.5235583)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('214336', 'Morgan Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Little Creek', 39.1637236, -75.4760331, ST_GeomFromText('POINT(39.1637236 -75.4760331)', 4326), 39.1419444, -75.4833333, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214337', 'Morgan Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Seaford East', 38.6256702, -75.6227053, ST_GeomFromText('POINT(38.6256702 -75.6227053)', 4326), 38.6187258, -75.5749256, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214338', 'Morgan Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Seaford East', 38.6395589, -75.6052046, ST_GeomFromText('POINT(38.6395589 -75.6052046)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214339', 'Morris Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Delmar', 38.4863506, -75.5041525, ST_GeomFromText('POINT(38.4863506 -75.5041525)', 4326), 38.4292595, -75.4706271, '1979-08-02', '2015-07-09', NULL, NULL, NULL),
  ('214340', 'Morris Millpond', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Harbeson', 38.6434, -75.3160307, ST_GeomFromText('POINT(38.6434 -75.3160307)', 4326), NULL, NULL, '1979-08-02', '2018-12-17', NULL, NULL, NULL),
  ('214356', 'Mud Millpond', 'Reservoir', 'Delaware', 'DE', 'Kent', 'Marydel', 39.0710764, -75.7397398, ST_GeomFromText('POINT(39.0710764 -75.7397398)', 4326), NULL, NULL, '1979-08-02', '2019-01-29', NULL, NULL, NULL),
  ('214357', 'Muddy Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Little Creek', 39.2387236, -75.4679774, ST_GeomFromText('POINT(39.2387236 -75.4679774)', 4326), 39.2026122, -75.5357577, '1979-08-02', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('214358', 'Muddy Neck', 'Cape', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5195566, -75.0843487, ST_GeomFromText('POINT(38.5195566 -75.0843487)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214359', 'Muddy Run', 'Stream', 'Delaware', 'DE', 'New Castle', 'Newark East', 39.6317786, -75.6974317, ST_GeomFromText('POINT(39.6317786 -75.6974317)', 4326), 39.6417783, -75.7710467, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214360', 'Mulberry Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.4884546, -75.0805737, ST_GeomFromText('POINT(38.4884546 -75.0805737)', 4326), NULL, NULL, '1979-08-02', '2018-12-17', NULL, NULL, NULL),
  ('214361', 'Mullet Run', 'Stream', 'Delaware', 'DE', 'Kent', 'Milford', 38.9123351, -75.4318639, ST_GeomFromText('POINT(38.9123351 -75.4318639)', 4326), 38.9302778, -75.4527778, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214362', 'Munchy Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.7337232, -75.1124042, ST_GeomFromText('POINT(38.7337232 -75.1124042)', 4326), 38.7284454, -75.1268493, '1979-08-02', NULL, 'Official', 'Board Decision', '1965-01-01'),
  ('214363', 'Murderkill Neck', 'Cape', 'Delaware', 'DE', 'Kent', 'Frederica', 39.0431683, -75.432975, ST_GeomFromText('POINT(39.0431683 -75.432975)', 4326), NULL, NULL, '1979-08-02', NULL, 'Official', 'Board Decision', '1967-01-01'),
  ('214364', 'Murderkill River', 'Stream', 'Delaware', 'DE', 'Kent', 'Frederica', 39.058446, -75.3965846, ST_GeomFromText('POINT(39.058446 -75.3965846)', 4326), 39.0176131, -75.5918702, '1979-08-02', '2014-12-16', NULL, NULL, NULL),
  ('214366', 'Naaman Creek', 'Stream', 'Delaware', 'DE', 'New Castle', 'Marcus Hook', 39.8053907, -75.4363059, ST_GeomFromText('POINT(39.8053907 -75.4363059)', 4326), 39.8427778, -75.4922222, '1979-08-02', '2014-12-24', NULL, NULL, NULL),
  ('214373', 'Nats Cove', 'Bay', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.6345566, -75.1087935, ST_GeomFromText('POINT(38.6345566 -75.1087935)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214374', 'Nats Marsh', 'Swamp', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.6320077, -75.1129614, ST_GeomFromText('POINT(38.6320077 -75.1129614)', 4326), NULL, NULL, '1979-08-02', '2022-08-05', NULL, NULL, NULL),
  ('214376', 'Needhams Island', 'Island', 'Delaware', 'DE', 'Kent', 'Little Creek', 39.2412236, -75.4624217, ST_GeomFromText('POINT(39.2412236 -75.4624217)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214377', 'Negro Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8587234, -75.2551887, ST_GeomFromText('POINT(38.8587234 -75.2551887)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214381', 'New Castle Reservoir (historical)', 'Reservoir', 'Delaware', 'DE', 'New Castle', 'Wilmington South', 39.6798349, -75.5890921, ST_GeomFromText('POINT(39.6798349 -75.5890921)', 4326), NULL, NULL, '1979-08-02', '2020-03-24', NULL, NULL, NULL),
  ('214382', 'New Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Georgetown', 38.6840027, -75.4407533, ST_GeomFromText('POINT(38.6840027 -75.4407533)', 4326), 38.6675, -75.3983333, '1979-08-02', NULL, 'Official', 'Board Decision', '1965-01-01'),
  ('214387', 'Newell Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Wyoming', 39.0987237, -75.5279793, ST_GeomFromText('POINT(39.0987237 -75.5279793)', 4326), 39.1008333, -75.5541667, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214390', 'Noah Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8262078, -75.2802634, ST_GeomFromText('POINT(38.8262078 -75.2802634)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('214391', 'Nonesuch Creek', 'Stream', 'Delaware', 'DE', 'New Castle', 'Wilmington South', 39.6920569, -75.6204828, ST_GeomFromText('POINT(39.6920569 -75.6204828)', 4326), 39.6838889, -75.595, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214392', 'North Fork Green Run', 'Stream', 'Maryland', 'MD', 'Wicomico', 'Whaleyville', 38.4370596, -75.3526936, ST_GeomFromText('POINT(38.4370596 -75.3526936)', 4326), 38.4790042, -75.4299188, '1979-08-02', '2010-11-05', NULL, NULL, NULL),
  ('214393', 'North Prong', 'Stream', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8234459, -75.3163028, ST_GeomFromText('POINT(38.8234459 -75.3163028)', 4326), 38.8277778, -75.3591667, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214395', 'Noxontown Lake', 'Reservoir', 'Delaware', 'DE', 'New Castle', 'Middletown', 39.4242324, -75.6868966, ST_GeomFromText('POINT(39.4242324 -75.6868966)', 4326), NULL, NULL, '1979-08-02', '2020-03-27', 'Official', 'Board Decision', '1965-01-01'),
  ('214402', 'Oak Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8201104, -75.2619548, ST_GeomFromText('POINT(38.8201104 -75.2619548)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214406', 'Old Basin Cove', 'Bay', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.596501, -75.0679586, ST_GeomFromText('POINT(38.596501 -75.0679586)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214412', 'Old Forge Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Laurel', 38.5448374, -75.5260343, ST_GeomFromText('POINT(38.5448374 -75.5260343)', 4326), 38.5225, -75.5355556, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214413', 'Old Inlet Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.4628903, -75.056848, ST_GeomFromText('POINT(38.4628903 -75.056848)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214414', 'Old Mill Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Lewes', 38.8037233, -75.1954635, ST_GeomFromText('POINT(38.8037233 -75.1954635)', 4326), 38.76, -75.2038889, '1979-08-02', NULL, 'Official', 'Board Decision', '1943-01-01'),
  ('214416', 'Old Slaughter Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8665013, -75.2732451, ST_GeomFromText('POINT(38.8665013 -75.2732451)', 4326), 38.8616667, -75.2508333, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214421', 'Owens Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Sharptown', 38.5387266, -75.6857634, ST_GeomFromText('POINT(38.5387266 -75.6857634)', 4326), 38.5080556, -75.6747222, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214422', 'Owens Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Greenwood', 38.7690025, -75.5388135, ST_GeomFromText('POINT(38.7690025 -75.5388135)', 4326), 38.8019444, -75.5297222, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214423', 'Oyster Rocks Neck', 'Cape', 'Delaware', 'DE', 'Sussex', 'Lewes', 38.7926122, -75.2135199, ST_GeomFromText('POINT(38.7926122 -75.2135199)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214424', 'Parker and Sampson Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Hickman', 38.8092803, -75.6821518, ST_GeomFromText('POINT(38.8092803 -75.6821518)', 4326), 38.795, -75.6355556, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214425', 'Parker Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Greenwood', 38.7762247, -75.5118681, ST_GeomFromText('POINT(38.7762247 -75.5118681)', 4326), 38.8048356, -75.4849224, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214426', 'Parnell Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Milford', 38.9687239, -75.4165853, ST_GeomFromText('POINT(38.9687239 -75.4165853)', 4326), 38.9797222, -75.4166667, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214427', 'Pasture Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5842789, -75.0876818, ST_GeomFromText('POINT(38.5842789 -75.0876818)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214428', 'Pasture Point Cove', 'Bay', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5812233, -75.0837928, ST_GeomFromText('POINT(38.5812233 -75.0837928)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214429', 'Patricks Pond', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Sharptown', 38.6008439, -75.6436575, ST_GeomFromText('POINT(38.6008439 -75.6436575)', 4326), NULL, NULL, '1979-08-02', '2018-12-17', NULL, NULL, NULL),
  ('214430', 'Paw Paw Branch', 'Stream', 'Delaware', 'DE', 'New Castle', 'Clayton', 39.3009448, -75.641873, ST_GeomFromText('POINT(39.3009448 -75.641873)', 4326), 39.3205556, -75.6922222, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214432', 'Pea Patch Island', 'Island', 'Delaware', 'DE', 'New Castle', 'Delaware City', 39.5898347, -75.5710362, ST_GeomFromText('POINT(39.5898347 -75.5710362)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214434', 'Pemberton Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Milton', 38.7781682, -75.3251921, ST_GeomFromText('POINT(38.7781682 -75.3251921)', 4326), 38.7532751, -75.3918556, '1979-08-02', '2020-08-25', NULL, NULL, NULL),
  ('214437', 'Penrose Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Dover', 39.1620566, -75.6146494, ST_GeomFromText('POINT(39.1620566 -75.6146494)', 4326), 39.1646297, -75.6496657, '1979-08-02', '2020-08-25', NULL, NULL, NULL),
  ('214439', 'Pepper Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5878905, -75.1674075, ST_GeomFromText('POINT(38.5878905 -75.1674075)', 4326), 38.5353916, -75.287135, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214440', 'Pepper Pond', 'Swamp', 'Delaware', 'DE', 'Sussex', 'Trap Pond', 38.5451204, -75.4699113, ST_GeomFromText('POINT(38.5451204 -75.4699113)', 4326), NULL, NULL, '1979-08-02', '2020-07-09', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214441', 'Pershing Cove', 'Bay', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.579835, -75.1840748, ST_GeomFromText('POINT(38.579835 -75.1840748)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214442', 'Persimmon Run', 'Stream', 'Delaware', 'DE', 'New Castle', 'Newark West', 39.654556, -75.7771582, ST_GeomFromText('POINT(39.654556 -75.7771582)', 4326), 39.6469444, -75.8, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214443', 'Peterkins Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Harbeson', 38.6473354, -75.310747, ST_GeomFromText('POINT(38.6473354 -75.310747)', 4326), 38.6897222, -75.35, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214445', 'Petersfield Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Lewes', 38.82039, -75.2226871, ST_GeomFromText('POINT(38.82039 -75.2226871)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214446', 'Phillips Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6615014, -75.1943527, ST_GeomFromText('POINT(38.6615014 -75.1943527)', 4326), 38.6530556, -75.2341667, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214447', 'Phillips Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Millsboro', 38.584836, -75.3349149, ST_GeomFromText('POINT(38.584836 -75.3349149)', 4326), 38.5408333, -75.3741667, '1979-08-02', NULL, 'Official', 'Board Decision', '1965-01-01'),
  ('214448', 'Pickering Beach', 'Beach', 'Delaware', 'DE', 'Kent', 'Little Creek', 39.1370572, -75.4096412, ST_GeomFromText('POINT(39.1370572 -75.4096412)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214449', 'Pigeon Point', 'Cape', 'Delaware', 'DE', 'New Castle', 'Wilmington South', 39.6992801, -75.5226991, ST_GeomFromText('POINT(39.6992801 -75.5226991)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214450', 'Pike Creek', 'Stream', 'Delaware', 'DE', 'New Castle', 'Newark East', 39.6992786, -75.6915982, ST_GeomFromText('POINT(39.6992786 -75.6915982)', 4326), 39.7731668, -75.7271572, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214451', 'Pikes Neck', 'Cape', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8170568, -75.2876903, ST_GeomFromText('POINT(38.8170568 -75.2876903)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214454', 'Pine Hill', 'Summit', 'Delaware', 'DE', 'Sussex', 'Georgetown', 38.7043899, -75.4920602, ST_GeomFromText('POINT(38.7043899 -75.4920602)', 4326), NULL, NULL, '1979-08-02', '2021-07-17', NULL, NULL, NULL),
  ('214457', 'Pine Water Neck', 'Cape', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6615014, -75.1810188, ST_GeomFromText('POINT(38.6615014 -75.1810188)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214459', 'Piney Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8142794, -75.3549158, ST_GeomFromText('POINT(38.8142794 -75.3549158)', 4326), 38.7969444, -75.3713889, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214460', 'Piney Neck', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.575113, -75.2079648, ST_GeomFromText('POINT(38.575113 -75.2079648)', 4326), NULL, NULL, '1979-08-02', NULL, 'Official', 'Board Decision', '1943-01-01'),
  ('214461', 'Pingally Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5690011, -75.0937933, ST_GeomFromText('POINT(38.5690011 -75.0937933)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214462', 'Pinks Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Kenton', 39.232056, -75.6363172, ST_GeomFromText('POINT(39.232056 -75.6363172)', 4326), 39.1947222, -75.6805556, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214463', 'Pipe Elm Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Little Creek', 39.1576126, -75.4485318, ST_GeomFromText('POINT(39.1576126 -75.4485318)', 4326), 39.1313889, -75.455, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214467', 'Point Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Burrsville', 38.8795579, -75.6438169, ST_GeomFromText('POINT(38.8795579 -75.6438169)', 4326), 38.8548357, -75.6135381, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214469', 'Point of Ridge', 'Cape', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.4682442, -75.066189, ST_GeomFromText('POINT(38.4682442 -75.066189)', 4326), NULL, NULL, '1979-08-02', '2015-02-16', NULL, NULL, NULL),
  ('214470', 'Poke Hill', 'Summit', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5123006, -75.0674808, ST_GeomFromText('POINT(38.5123006 -75.0674808)', 4326), NULL, NULL, '1979-08-02', '2021-07-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214472', 'Polk Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Greenwood', 38.7676136, -75.5902043, ST_GeomFromText('POINT(38.7676136 -75.5902043)', 4326), 38.792058, -75.638817, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214474', 'Pools Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5698351, -75.1890751, ST_GeomFromText('POINT(38.5698351 -75.1890751)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214475', 'Poplar Woods Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8422301, -75.2730479, ST_GeomFromText('POINT(38.8422301 -75.2730479)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('214478', 'Porter Reservoir', 'Reservoir', 'Delaware', 'DE', 'New Castle', 'Wilmington North', 39.7730148, -75.5428502, ST_GeomFromText('POINT(39.7730148 -75.5428502)', 4326), NULL, NULL, '1979-08-02', '2018-12-18', NULL, NULL, NULL),
  ('214479', 'Portsville Millpond', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Sharptown', 38.5592726, -75.6304419, ST_GeomFromText('POINT(38.5592726 -75.6304419)', 4326), NULL, NULL, '1979-08-02', '2018-12-17', NULL, NULL, NULL),
  ('214480', 'Possum Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Millsboro', 38.5840022, -75.2626894, ST_GeomFromText('POINT(38.5840022 -75.2626894)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214481', 'Pot Hook Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.7476121, -75.1254602, ST_GeomFromText('POINT(38.7476121 -75.1254602)', 4326), 38.7472222, -75.1461111, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214482', 'Pot Nets Cove', 'Bay', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.6106681, -75.1432396, ST_GeomFromText('POINT(38.6106681 -75.1432396)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214483', 'Pot Nets Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.6098347, -75.1457397, ST_GeomFromText('POINT(38.6098347 -75.1457397)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214485', 'Powell Ditch', 'Stream', 'Delaware', 'DE', 'Kent', 'Marydel', 39.1087237, -75.6535395, ST_GeomFromText('POINT(39.1087237 -75.6535395)', 4326), 39.1267791, -75.6682623, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214487', 'Pratt Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Frederica', 39.028446, -75.4990891, ST_GeomFromText('POINT(39.028446 -75.4990891)', 4326), 39.0037242, -75.5752029, '1979-08-02', '2014-07-15', NULL, NULL, NULL),
  ('214488', 'Presbyterian Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Milford', 38.9106685, -75.4376976, ST_GeomFromText('POINT(38.9106685 -75.4376976)', 4326), 38.9009635, -75.4412572, '1979-08-02', '2020-08-24', NULL, NULL, NULL),
  ('214489', 'Price Prong', 'Stream', 'Delaware', 'DE', 'Kent', 'Burrsville', 38.9315027, -75.7249307, ST_GeomFromText('POINT(38.9315027 -75.7249307)', 4326), 38.9530556, -75.6861111, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214493', 'Prickley Pear Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Sharptown', 38.5606709, -75.6854856, ST_GeomFromText('POINT(38.5606709 -75.6854856)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214494', 'Primehook Beach', 'Beach', 'Delaware', 'DE', 'Sussex', 'Lewes', 38.844279, -75.2318542, ST_GeomFromText('POINT(38.844279 -75.2318542)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214496', 'Primehook Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Lewes', 38.8345567, -75.2221315, ST_GeomFromText('POINT(38.8345567 -75.2221315)', 4326), 38.8256681, -75.3060245, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214497', 'Primehook Neck', 'Cape', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8467791, -75.2749119, ST_GeomFromText('POINT(38.8467791 -75.2749119)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214499', 'Prong Number One', 'Stream', 'Delaware', 'DE', 'Sussex', 'Ellendale', 38.7526134, -75.4585323, ST_GeomFromText('POINT(38.7526134 -75.4585323)', 4326), 38.7997222, -75.4677778, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214500', 'Prong Number Two', 'Stream', 'Delaware', 'DE', 'Kent', 'Burrsville', 38.8878913, -75.6340942, ST_GeomFromText('POINT(38.8878913 -75.6340942)', 4326), 38.8617801, -75.5774257, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214501', 'Prospect Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Burrsville', 38.8756691, -75.6488171, ST_GeomFromText('POINT(38.8756691 -75.6488171)', 4326), 38.9209467, -75.6071487, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214504', 'Providence Creek', 'Stream', 'Delaware', 'DE', 'Kent', 'Clayton', 39.3042783, -75.6277058, ST_GeomFromText('POINT(39.3042783 -75.6277058)', 4326), 39.2991667, -75.6944444, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214507', 'Quarter Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Hickman', 38.8328914, -75.6854851, ST_GeomFromText('POINT(38.8328914 -75.6854851)', 4326), 38.8392802, -75.6224273, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214508', 'Quillens Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5898343, -75.0749034, ST_GeomFromText('POINT(38.5898343 -75.0749034)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214510', 'Raccoon Cove', 'Bay', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.6270566, -75.0901816, ST_GeomFromText('POINT(38.6270566 -75.0901816)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214511', 'Raccoon Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Georgetown', 38.6851139, -75.4615877, ST_GeomFromText('POINT(38.6851139 -75.4615877)', 4326), 38.6630556, -75.4327778, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214512', 'Raccoon Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.6287233, -75.091015, ST_GeomFromText('POINT(38.6287233 -75.091015)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214513', 'Raccoon Prong', 'Stream', 'Delaware', 'DE', 'Sussex', 'Trap Pond', 38.5198373, -75.4638093, ST_GeomFromText('POINT(38.5198373 -75.4638093)', 4326), 38.4578934, -75.4413082, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214514', 'Rack Turn Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.6054088, -75.076885, ST_GeomFromText('POINT(38.6054088 -75.076885)', 4326), NULL, NULL, '1979-08-02', '2015-02-16', NULL, NULL, NULL),
  ('214515', 'Ragged Island', 'Island', 'Delaware', 'DE', 'Kent', 'Little Creek', 39.2415015, -75.4532546, ST_GeomFromText('POINT(39.2415015 -75.4532546)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214516', 'Ramsey Run', 'Stream', 'Delaware', 'DE', 'New Castle', 'Wilmington North', 39.8287227, -75.5724263, ST_GeomFromText('POINT(39.8287227 -75.5724263)', 4326), 39.8275, -75.5555556, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214517', 'Rattlesnake Hill', 'Summit', 'Delaware', 'DE', 'Sussex', 'Milton', 38.7795927, -75.2980096, ST_GeomFromText('POINT(38.7795927 -75.2980096)', 4326), NULL, NULL, '1979-08-02', '2021-07-17', NULL, NULL, NULL),
  ('214518', 'Rawley Island', 'Island', 'Delaware', 'DE', 'Kent', 'Mispillion River', 38.9681682, -75.3235254, ST_GeomFromText('POINT(38.9681682 -75.3235254)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214521', 'Records Pond', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Laurel', 38.5587467, -75.5594469, ST_GeomFromText('POINT(38.5587467 -75.5594469)', 4326), NULL, NULL, '1979-08-02', '2018-12-17', NULL, NULL, NULL),
  ('214523', 'Red Clay Creek', 'Stream', 'Delaware', 'DE', 'New Castle', 'Newark East', 39.70795, -75.64585, ST_GeomFromText('POINT(39.70795 -75.64585)', 4326), 39.81788, -75.69252, '1979-08-02', '2014-07-15', NULL, NULL, NULL),
  ('214525', 'Red House Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Wyoming', 39.0881683, -75.5635361, ST_GeomFromText('POINT(39.0881683 -75.5635361)', 4326), 39.0977778, -75.5788889, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214526', 'Red Lion Creek', 'Stream', 'Delaware', 'DE', 'New Castle', 'Delaware City', 39.6048345, -75.6138161, ST_GeomFromText('POINT(39.6048345 -75.6138161)', 4326), 39.5909452, -75.6940979, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214527', 'Red Mill Pond', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Lewes', 38.751955, -75.2202073, ST_GeomFromText('POINT(38.751955 -75.2202073)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('214529', 'Reedy Island', 'Island', 'Delaware', 'DE', 'New Castle', 'Delaware City', 39.5153899, -75.5629808, ST_GeomFromText('POINT(39.5153899 -75.5629808)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214530', 'Reedy Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.500112, -75.0632368, ST_GeomFromText('POINT(38.500112 -75.0632368)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214532', 'Reedy Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5015009, -75.062959, ST_GeomFromText('POINT(38.5015009 -75.062959)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214533', 'Reedy Point', 'Cape', 'Delaware', 'DE', 'New Castle', 'Delaware City', 39.5626124, -75.5618692, ST_GeomFromText('POINT(39.5626124 -75.5618692)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214534', 'Rehoboth Bay', 'Bay', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.6605547, -75.1046176, ST_GeomFromText('POINT(38.6605547 -75.1046176)', 4326), NULL, NULL, '1979-08-02', '2022-08-05', NULL, NULL, NULL),
  ('214536', 'Rehoboth Flats', 'Lake', 'Delaware', 'DE', 'Sussex', 'Cape Henlopen', 38.7503796, -75.0880865, ST_GeomFromText('POINT(38.7503796 -75.0880865)', 4326), NULL, NULL, '1979-08-02', '2018-12-17', NULL, NULL, NULL),
  ('214537', 'Rehoboth Marsh', 'Swamp', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.6726121, -75.0726806, ST_GeomFromText('POINT(38.6726121 -75.0726806)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214539', 'Reybold Cove', 'Bay', 'Delaware', 'DE', 'New Castle', 'Delaware City', 39.5903901, -75.6038156, ST_GeomFromText('POINT(39.5903901 -75.6038156)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214541', 'Reynolds Pond', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8138385, -75.3492765, ST_GeomFromText('POINT(38.8138385 -75.3492765)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('214549', 'Roach Marsh', 'Swamp', 'Delaware', 'DE', 'Sussex', 'Lewes', 38.8506679, -75.2462994, ST_GeomFromText('POINT(38.8506679 -75.2462994)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214550', 'Rock Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5809461, -75.1804636, ST_GeomFromText('POINT(38.5809461 -75.1804636)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214553', 'Rocky Run', 'Stream', 'Delaware', 'DE', 'New Castle', 'Wilmington North', 39.8112231, -75.5663143, ST_GeomFromText('POINT(39.8112231 -75.5663143)', 4326), 39.825, -75.5336111, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214556', 'Rogers Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Laurel', 38.5595595, -75.5518688, ST_GeomFromText('POINT(38.5595595 -75.5518688)', 4326), 38.5833333, -75.5625, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214558', 'Roman T Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.6295566, -75.1015709, ST_GeomFromText('POINT(38.6295566 -75.1015709)', 4326), NULL, NULL, '1979-08-02', NULL, 'Official', 'Board Decision', '1943-01-01'),
  ('214565', 'Ross Prong', 'Stream', 'Delaware', 'DE', 'Kent', 'Marydel', 39.0903905, -75.6532616, ST_GeomFromText('POINT(39.0903905 -75.6532616)', 4326), 39.1301124, -75.6532618, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214566', 'Rossakatum Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Laurel', 38.555393, -75.5649249, ST_GeomFromText('POINT(38.555393 -75.5649249)', 4326), 38.5, -75.5213889, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214567', 'Round Pole Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Milton', 38.7762236, -75.3032465, ST_GeomFromText('POINT(38.7762236 -75.3032465)', 4326), 38.7156684, -75.3238032, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214568', 'Roy Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.4570572, -75.0896272, ST_GeomFromText('POINT(38.4570572 -75.0896272)', 4326), 38.4645575, -75.136018, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214569', 'Rum Bridge Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Georgetown', 38.676503, -75.4868667, ST_GeomFromText('POINT(38.676503 -75.4868667)', 4326), 38.6672222, -75.4422222, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214570', 'Rye Hole', 'Bay', 'Delaware', 'DE', 'Sussex', 'Greenwood', 38.764558, -75.5446471, ST_GeomFromText('POINT(38.764558 -75.5446471)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214576', 'Saint Georges Creek', 'Stream', 'Delaware', 'DE', 'New Castle', 'Delaware City', 39.5401122, -75.569092, ST_GeomFromText('POINT(39.5401122 -75.569092)', 4326), 39.5519444, -75.6022222, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214586', 'Saint Jones Neck', 'Cape', 'Delaware', 'DE', 'Kent', 'Frederica', 39.0878905, -75.4274195, ST_GeomFromText('POINT(39.0878905 -75.4274195)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214598', 'Salem Cove', 'Bay', 'Delaware', 'DE', 'New Castle', 'Delaware City', 39.5676126, -75.5196449, ST_GeomFromText('POINT(39.5676126 -75.5196449)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214600', 'Sally Burton Ponds', 'Lake', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6734456, -75.139628, ST_GeomFromText('POINT(38.6734456 -75.139628)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214601', 'Sally Cove', 'Bay', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6515012, -75.1274053, ST_GeomFromText('POINT(38.6515012 -75.1274053)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214602', 'Salt Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5497388, -75.0663277, ST_GeomFromText('POINT(38.5497388 -75.0663277)', 4326), NULL, NULL, '1979-08-02', '2018-12-17', NULL, NULL, NULL),
  ('214604', 'Sand Hill', 'Summit', 'Delaware', 'DE', 'Sussex', 'Cape Henlopen', 38.7767771, -75.087189, ST_GeomFromText('POINT(38.7767771 -75.087189)', 4326), NULL, NULL, '1979-08-02', '2021-07-17', NULL, NULL, NULL),
  ('214605', 'Sand Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.6042789, -75.0962932, ST_GeomFromText('POINT(38.6042789 -75.0962932)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214606', 'Sand Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.6190012, -75.106849, ST_GeomFromText('POINT(38.6190012 -75.106849)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214607', 'Sandom Branch', 'Stream', 'Delaware', 'DE', 'New Castle', 'Clayton', 39.3742783, -75.6527069, ST_GeomFromText('POINT(39.3742783 -75.6527069)', 4326), 39.3436111, -75.6727778, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214608', 'Sandtown Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Marydel', 39.0390024, -75.7446536, ST_GeomFromText('POINT(39.0390024 -75.7446536)', 4326), 38.9989747, -75.7132825, '1979-08-02', '2015-07-09', NULL, NULL, NULL),
  ('214609', 'Sandy Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Selbyville', 38.4615028, -75.2171325, ST_GeomFromText('POINT(38.4615028 -75.2171325)', 4326), 38.4712253, -75.2754681, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214610', 'Sandy Branch', 'Stream', 'Delaware', 'DE', 'New Castle', 'Cecilton', 39.4609454, -75.7816015, ST_GeomFromText('POINT(39.4609454 -75.7816015)', 4326), 39.4452158, -75.7472692, '1979-08-02', '2015-07-09', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214612', 'Sandy Point', 'Cape', 'Delaware', 'DE', 'Kent', 'Bennetts Pier', 39.0426127, -75.3696389, ST_GeomFromText('POINT(39.0426127 -75.3696389)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214614', 'Sangston Prong', 'Stream', 'Delaware', 'DE', 'Kent', 'Burrsville', 38.9803917, -75.7349309, ST_GeomFromText('POINT(38.9803917 -75.7349309)', 4326), 38.9561111, -75.7063889, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214615', 'Sarah Run', 'Stream', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6690013, -75.1821299, ST_GeomFromText('POINT(38.6690013 -75.1821299)', 4326), 38.69, -75.185, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214616', 'Sassafras River', 'Stream', 'Maryland', 'MD', 'Cecil', 'Spesutie', 39.3873346, -76.0535588, ST_GeomFromText('POINT(39.3873346 -76.0535588)', 4326), 39.3651113, -75.7329877, '1979-09-12', NULL, NULL, NULL, NULL),
  ('214617', 'Saulsbury Creek', 'Stream', 'Delaware', 'DE', 'Kent', 'Hickman', 38.8340025, -75.6854851, ST_GeomFromText('POINT(38.8340025 -75.6854851)', 4326), 38.8525, -75.7408333, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214618', 'Saunders Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Trap Pond', 38.5167816, -75.4363081, ST_GeomFromText('POINT(38.5167816 -75.4363081)', 4326), 38.5463889, -75.4130556, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214619', 'Blind Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8427339, -75.3010241, ST_GeomFromText('POINT(38.8427339 -75.3010241)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('214620', 'Sawmill Branch', 'Stream', 'Delaware', 'DE', 'New Castle', 'Smyrna', 39.3487231, -75.5574253, ST_GeomFromText('POINT(39.3487231 -75.5574253)', 4326), 39.3628894, -75.6404841, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214621', 'Sawmill Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.4886433, -75.0755299, ST_GeomFromText('POINT(38.4886433 -75.0755299)', 4326), NULL, NULL, '1979-08-02', '2024-09-19', NULL, NULL, NULL),
  ('214622', 'Sawpit Cove', 'Bay', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.6184454, -75.0810146, ST_GeomFromText('POINT(38.6184454 -75.0810146)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214624', 'Scott Run', 'Stream', 'Delaware', 'DE', 'New Castle', 'Delaware City', 39.5517788, -75.6190942, ST_GeomFromText('POINT(39.5517788 -75.6190942)', 4326), 39.5142785, -75.6918753, '1979-08-02', '2014-07-15', NULL, NULL, NULL),
  ('214627', 'Seal Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.465668, -75.0568479, ST_GeomFromText('POINT(38.465668 -75.0568479)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214628', 'Second Hill', 'Island', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8603901, -75.2613001, ST_GeomFromText('POINT(38.8603901 -75.2613001)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214631', 'Serverson Neck', 'Cape', 'Delaware', 'DE', 'Kent', 'Smyrna', 39.314001, -75.5165904, ST_GeomFromText('POINT(39.314001 -75.5165904)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214632', 'Shallcross Lake', 'Reservoir', 'Delaware', 'DE', 'New Castle', 'Middletown', 39.4850705, -75.6780522, ST_GeomFromText('POINT(39.4850705 -75.6780522)', 4326), NULL, NULL, '1979-08-02', '2018-12-18', NULL, NULL, NULL),
  ('214633', 'Sheep Pen Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Millsboro', 38.6040023, -75.3035245, ST_GeomFromText('POINT(38.6040023 -75.3035245)', 4326), 38.6415028, -75.4132519, '1979-08-02', '2014-07-17', 'Official', 'Board Decision', '1965-01-01'),
  ('214634', 'Shell Beach Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Lewes', 38.8355241, -75.2497132, ST_GeomFromText('POINT(38.8355241 -75.2497132)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('214636', 'Shell Landing Cove', 'Bay', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6659456, -75.1349056, ST_GeomFromText('POINT(38.6659456 -75.1349056)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214637', 'Shellpot Creek', 'Stream', 'Delaware', 'DE', 'New Castle', 'Wilmington South', 39.7348359, -75.5043641, ST_GeomFromText('POINT(39.7348359 -75.5043641)', 4326), 39.8220565, -75.5318677, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214638', 'Sheppards Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Mispillion River', 38.9242793, -75.3224143, ST_GeomFromText('POINT(38.9242793 -75.3224143)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214639', 'Shields Prong', 'Stream', 'Delaware', 'DE', 'Kent', 'Burrsville', 38.9806695, -75.7390977, ST_GeomFromText('POINT(38.9806695 -75.7390977)', 4326), 38.9519444, -75.7247222, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214642', 'Short and Hall Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Hickman', 38.8076136, -75.689652, ST_GeomFromText('POINT(38.8076136 -75.689652)', 4326), 38.8316667, -75.7230556, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214643', 'Shorts Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Seaford East', 38.6737253, -75.5052009, ST_GeomFromText('POINT(38.6737253 -75.5052009)', 4326), 38.6998362, -75.4982563, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214646', 'Silver Lake', 'Lake', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.7067636, -75.0792838, ST_GeomFromText('POINT(38.7067636 -75.0792838)', 4326), NULL, NULL, '1979-08-02', '2020-05-14', NULL, NULL, NULL),
  ('214647', 'Silver Lake', 'Reservoir', 'Delaware', 'DE', 'Kent', 'Dover', 39.1761491, -75.5314299, ST_GeomFromText('POINT(39.1761491 -75.5314299)', 4326), NULL, NULL, '1979-08-02', '2018-12-17', NULL, NULL, NULL),
  ('214648', 'Silver Lake', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Milford', 38.911441, -75.4363391, ST_GeomFromText('POINT(38.911441 -75.4363391)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('214649', 'Silver Lake', 'Reservoir', 'Delaware', 'DE', 'New Castle', 'Middletown', 39.4368511, -75.7007929, ST_GeomFromText('POINT(39.4368511 -75.7007929)', 4326), NULL, NULL, '1979-08-02', '2018-12-18', NULL, NULL, NULL),
  ('214650', 'Silver Run', 'Stream', 'Delaware', 'DE', 'New Castle', 'Taylors Bridge', 39.4787231, -75.5921489, ST_GeomFromText('POINT(39.4787231 -75.5921489)', 4326), 39.4931675, -75.6485401, '1979-08-02', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('214655', 'Simon Glade', 'Flat', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.580668, -75.1171275, ST_GeomFromText('POINT(38.580668 -75.1171275)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214656', 'Simons River', 'Stream', 'Delaware', 'DE', 'Kent', 'Little Creek', 39.2231685, -75.4040858, ST_GeomFromText('POINT(39.2231685 -75.4040858)', 4326), 39.2127778, -75.43, '1979-08-02', NULL, 'Official', 'Board Decision', '1950-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214657', 'Simpler Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Harbeson', 38.6620574, -75.2996354, ST_GeomFromText('POINT(38.6620574 -75.2996354)', 4326), 38.6916667, -75.2811111, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214659', 'Sipps Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.7078901, -75.167129, ST_GeomFromText('POINT(38.7078901 -75.167129)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214660', 'Sixty Five Acre Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.4948288, -75.0730761, ST_GeomFromText('POINT(38.4948288 -75.0730761)', 4326), NULL, NULL, '1979-08-02', '2018-12-17', NULL, NULL, NULL),
  ('214661', 'Skid Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5009454, -75.0776819, ST_GeomFromText('POINT(38.5009454 -75.0776819)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214664', 'Slaughter Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Mispillion River', 38.9212237, -75.3265811, ST_GeomFromText('POINT(38.9212237 -75.3265811)', 4326), 38.8465016, -75.34936, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214665', 'Slaughter Neck', 'Cape', 'Delaware', 'DE', 'Sussex', 'Mispillion River', 38.8762237, -75.3338037, ST_GeomFromText('POINT(38.8762237 -75.3338037)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214667', 'Sloan Cove', 'Bay', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6559456, -75.1293498, ST_GeomFromText('POINT(38.6559456 -75.1293498)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214670', 'Smith-Short and Willin Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Seaford East', 38.7206695, -75.5007565, ST_GeomFromText('POINT(38.7206695 -75.5007565)', 4326), 38.7551136, -75.4949231, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214672', 'Smyrna River', 'Stream', 'Delaware', 'DE', 'New Castle', 'Smyrna', 39.3651121, -75.5132569, ST_GeomFromText('POINT(39.3651121 -75.5132569)', 4326), 39.3127778, -75.575, '1979-08-02', '2011-04-01', 'Official', 'Board Decision', '1965-01-01'),
  ('214673', 'Sockorockets Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Harbeson', 38.667613, -75.2971352, ST_GeomFromText('POINT(38.667613 -75.2971352)', 4326), 38.6986111, -75.3208333, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214677', 'South Branch Naaman Creek', 'Stream', 'Delaware', 'DE', 'New Castle', 'Marcus Hook', 39.8142794, -75.4460288, ST_GeomFromText('POINT(39.8142794 -75.4460288)', 4326), 39.8478896, -75.5054776, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214678', 'Southwest Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5995565, -75.0718476, ST_GeomFromText('POINT(38.5995565 -75.0718476)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214679', 'Southwest Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8673067, -75.2635191, ST_GeomFromText('POINT(38.8673067 -75.2635191)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('214680', 'Sowbridge Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8209459, -75.3171361, ST_GeomFromText('POINT(38.8209459 -75.3171361)', 4326), 38.7990019, -75.4024182, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214681', 'Spatterdock Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8449657, -75.2603535, ST_GeomFromText('POINT(38.8449657 -75.2603535)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('214682', 'Spring Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Harrington', 38.9898352, -75.5238122, ST_GeomFromText('POINT(38.9898352 -75.5238122)', 4326), 38.9922222, -75.5663889, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214683', 'Spring Creek', 'Stream', 'Delaware', 'DE', 'Kent', 'Frederica', 39.0117795, -75.4610318, ST_GeomFromText('POINT(39.0117795 -75.4610318)', 4326), 39.0283333, -75.4994444, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214686', 'Stallion Head Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Greenwood', 38.8237245, -75.5004786, ST_GeomFromText('POINT(38.8237245 -75.5004786)', 4326), 38.825669, -75.4979785, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214691', 'Station Cove', 'Bay', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.6326121, -75.0749031, ST_GeomFromText('POINT(38.6326121 -75.0749031)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214692', 'Steels Cove', 'Bay', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.6212234, -75.108238, ST_GeomFromText('POINT(38.6212234 -75.108238)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214693', 'Stickweed Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8400359, -75.2640935, ST_GeomFromText('POINT(38.8400359 -75.2640935)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('214695', 'Stockley Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Harbeson', 38.6331689, -75.3143583, ST_GeomFromText('POINT(38.6331689 -75.3143583)', 4326), 38.6402778, -75.3511111, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214696', 'Stockley Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.6919873, -75.0888495, ST_GeomFromText('POINT(38.6919873 -75.0888495)', 4326), 38.6948261, -75.0947611, '1979-08-02', '2020-04-30', NULL, NULL, NULL),
  ('214698', 'Stoney Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Trap Pond', 38.6234477, -75.477977, ST_GeomFromText('POINT(38.6234477 -75.477977)', 4326), 38.6392807, -75.4196411, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214699', 'Stoney Creek', 'Stream', 'Delaware', 'DE', 'New Castle', 'Marcus Hook', 39.7740023, -75.4799188, ST_GeomFromText('POINT(39.7740023 -75.4799188)', 4326), 39.8051127, -75.5018652, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214701', 'Strawberry Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5028899, -75.068237, ST_GeomFromText('POINT(38.5028899 -75.068237)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214702', 'Streak Ponds', 'Lake', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8257253, -75.2745082, ST_GeomFromText('POINT(38.8257253 -75.2745082)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('214704', 'Stump Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.567335, -75.1815748, ST_GeomFromText('POINT(38.567335 -75.1815748)', 4326), 38.5411111, -75.1808333, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214706', 'Sugar Hill', 'Summit', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8576946, -75.3166884, ST_GeomFromText('POINT(38.8576946 -75.3166884)', 4326), NULL, NULL, '1979-08-02', '2021-07-17', NULL, NULL, NULL),
  ('214711', 'Swan Creek', 'Stream', 'Delaware', 'DE', 'Kent', 'Milford', 38.937335, -75.4029736, ST_GeomFromText('POINT(38.937335 -75.4029736)', 4326), 38.9422222, -75.4277778, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214712', 'Swan Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Millsboro', 38.5895576, -75.2504666, ST_GeomFromText('POINT(38.5895576 -75.2504666)', 4326), 38.6509462, -75.2715784, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214714', 'Swiggetts Pond', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Ellendale', 38.8670519, -75.3812061, ST_GeomFromText('POINT(38.8670519 -75.3812061)', 4326), NULL, NULL, '1979-08-02', '2018-12-17', NULL, NULL, NULL),
  ('214717', 'Tantrough Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Milford', 38.9037242, -75.484922, ST_GeomFromText('POINT(38.9037242 -75.484922)', 4326), 38.859997, -75.5143424, '1979-08-02', '2020-08-25', NULL, NULL, NULL),
  ('214718', 'Tanyard Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Federalsburg', 38.6865032, -75.7724329, ST_GeomFromText('POINT(38.6865032 -75.7724329)', 4326), 38.695114, -75.6904856, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214719', 'Tappahanna Ditch', 'Stream', 'Delaware', 'DE', 'Kent', 'Marydel', 39.1073348, -75.740487, ST_GeomFromText('POINT(39.1073348 -75.740487)', 4326), 39.178723, -75.6918745, '1979-08-02', '2014-07-15', NULL, NULL, NULL),
  ('214721', 'Taylor Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Kenton', 39.2317783, -75.6363172, ST_GeomFromText('POINT(39.2317783 -75.6363172)', 4326), 39.2055556, -75.6488889, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214726', 'Teal Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8144215, -75.2766149, ST_GeomFromText('POINT(38.8144215 -75.2766149)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('214729', 'The Hub', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5651414, -75.1857538, ST_GeomFromText('POINT(38.5651414 -75.1857538)', 4326), NULL, NULL, '1979-08-02', '2015-02-16', NULL, NULL, NULL),
  ('214730', 'The Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Seaford East', 38.6440034, -75.5985377, ST_GeomFromText('POINT(38.6440034 -75.5985377)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214731', 'The Island', 'Island', 'Delaware', 'DE', 'New Castle', 'Taylors Bridge', 39.457612, -75.5904821, ST_GeomFromText('POINT(39.457612 -75.5904821)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214734', 'The Pullover', 'Cape', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.63289, -75.1007376, ST_GeomFromText('POINT(38.63289 -75.1007376)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214735', 'The Rocks', 'Island', 'Delaware', 'DE', 'New Castle', 'Taylors Bridge', 39.4395563, -75.5968713, ST_GeomFromText('POINT(39.4395563 -75.5968713)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214740', 'Thompson Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Trap Pond', 38.5206707, -75.4660316, ST_GeomFromText('POINT(38.5206707 -75.4660316)', 4326), 38.5, -75.4286111, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214742', 'Thompson Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.6901121, -75.0932369, ST_GeomFromText('POINT(38.6901121 -75.0932369)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214743', 'Thoroughfare Neck', 'Cape', 'Delaware', 'DE', 'New Castle', 'Taylors Bridge', 39.3756676, -75.5371467, ST_GeomFromText('POINT(39.3756676 -75.5371467)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214744', 'Three Points', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5826128, -75.1807414, ST_GeomFromText('POINT(38.5826128 -75.1807414)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214745', 'Tidbury Creek', 'Stream', 'Delaware', 'DE', 'Kent', 'Frederica', 39.1153903, -75.4990894, ST_GeomFromText('POINT(39.1153903 -75.4990894)', 4326), 39.0506685, -75.5740919, '1979-08-02', NULL, 'Official', 'Board Decision', '1898-01-01'),
  ('214746', 'Tidy Island Creek', 'Stream', 'Delaware', 'DE', 'Kent', 'Marydel', 39.0798352, -75.748265, ST_GeomFromText('POINT(39.0798352 -75.748265)', 4326), 39.1072804, -75.7408423, '1979-08-02', '2015-07-09', NULL, NULL, NULL),
  ('214747', 'Timmons Cove', 'Bay', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.567613, -75.2018534, ST_GeomFromText('POINT(38.567613 -75.2018534)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214749', 'Todds Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Mispillion River', 38.9112237, -75.3251922, ST_GeomFromText('POINT(38.9112237 -75.3251922)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214750', 'Tom Creek', 'Stream', 'Delaware', 'DE', 'New Castle', 'Delaware City', 39.6195567, -75.6140938, ST_GeomFromText('POINT(39.6195567 -75.6140938)', 4326), 39.6315011, -75.6365949, '1979-08-02', '2014-07-15', NULL, NULL, NULL),
  ('214751', 'Tomahawk Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Hickman', 38.862058, -75.6560396, ST_GeomFromText('POINT(38.862058 -75.6560396)', 4326), 38.8434468, -75.6115935, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214752', 'Toms Dam Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Greenwood', 38.7548358, -75.5510362, ST_GeomFromText('POINT(38.7548358 -75.5510362)', 4326), 38.8422222, -75.5133333, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214753', 'Tonys Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.4894671, -75.0730074, ST_GeomFromText('POINT(38.4894671 -75.0730074)', 4326), NULL, NULL, '1979-08-02', '2018-12-17', NULL, NULL, NULL),
  ('214758', 'Trap Pond', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Trap Pond', 38.5245921, -75.4743265, ST_GeomFromText('POINT(38.5245921 -75.4743265)', 4326), NULL, NULL, '1979-08-02', '2018-12-17', NULL, NULL, NULL),
  ('214763', 'Trussum Pond', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Trap Pond', 38.5253928, -75.4621425, ST_GeomFromText('POINT(38.5253928 -75.4621425)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214764', 'Tubbs Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Seaford East', 38.6426145, -75.5643696, ST_GeomFromText('POINT(38.6426145 -75.5643696)', 4326), 38.6319444, -75.5611111, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214765', 'Tubbs Cove', 'Bay', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.4631682, -75.0693485, ST_GeomFromText('POINT(38.4631682 -75.0693485)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214766', 'Tubmill Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Milford', 38.9431684, -75.4304749, ST_GeomFromText('POINT(38.9431684 -75.4304749)', 4326), 38.9433333, -75.4636111, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214767', 'Tubmill Pond', 'Reservoir', 'Delaware', 'DE', 'Kent', 'Milford', 38.9423543, -75.4295498, ST_GeomFromText('POINT(38.9423543 -75.4295498)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214768', 'Tunnel Goose Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5056677, -75.0729594, ST_GeomFromText('POINT(38.5056677 -75.0729594)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214769', 'Turkey Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Seaford East', 38.727336, -75.5602032, ST_GeomFromText('POINT(38.727336 -75.5602032)', 4326), 38.7288889, -75.6125, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214770', 'Turkey Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Sharptown', 38.5556708, -75.6304832, ST_GeomFromText('POINT(38.5556708 -75.6304832)', 4326), 38.5423375, -75.6227052, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214771', 'Turkey Run', 'Stream', 'Delaware', 'DE', 'New Castle', 'Wilmington North', 39.7681689, -75.5190876, ST_GeomFromText('POINT(39.7681689 -75.5190876)', 4326), 39.7883333, -75.5338889, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214772', 'Turkle Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8233353, -75.2595619, ST_GeomFromText('POINT(38.8233353 -75.2595619)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('214773', 'Turnip Patch Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5709462, -75.1954643, ST_GeomFromText('POINT(38.5709462 -75.1954643)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214774', 'Turtle Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Sharptown', 38.6026149, -75.6549288, ST_GeomFromText('POINT(38.6026149 -75.6549288)', 4326), 38.633195, -75.7090021, '1979-08-02', '2015-07-09', NULL, NULL, NULL),
  ('214775', 'Tussocky Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Seaford East', 38.716225, -75.524924, ST_GeomFromText('POINT(38.716225 -75.524924)', 4326), 38.7408333, -75.5188889, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214776', 'Tussocky Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Sharptown', 38.5631708, -75.6296499, ST_GeomFromText('POINT(38.5631708 -75.6296499)', 4326), 38.4698384, -75.6227048, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214777', 'Twiford Meadow Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Federalsburg', 38.7234472, -75.7652104, ST_GeomFromText('POINT(38.7234472 -75.7652104)', 4326), 38.697614, -75.6999305, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214778', 'Twin Ponds', 'Lake', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8410864, -75.2608851, ST_GeomFromText('POINT(38.8410864 -75.2608851)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('214780', 'Tyndall Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Seaford East', 38.6542811, -75.5243681, ST_GeomFromText('POINT(38.6542811 -75.5243681)', 4326), 38.6234477, -75.477977, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214786', 'Unity Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6590014, -75.1882413, ST_GeomFromText('POINT(38.6590014 -75.1882413)', 4326), 38.6837238, -75.270745, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214793', 'Vance Neck', 'Cape', 'Delaware', 'DE', 'New Castle', 'Taylors Bridge', 39.4753897, -75.6177055, ST_GeomFromText('POINT(39.4753897 -75.6177055)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214794', 'Vena Gains Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Delmar', 38.4984489, -75.5624246, ST_GeomFromText('POINT(38.4984489 -75.5624246)', 4326), 38.4705556, -75.5291667, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214795', 'Vines Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5695573, -75.1926864, ST_GeomFromText('POINT(38.5695573 -75.1926864)', 4326), 38.5078917, -75.2843572, '1979-08-02', NULL, 'Official', 'Board Decision', '1965-01-01'),
  ('214799', 'Voshell Pond', 'Reservoir', 'Delaware', 'DE', 'Kent', 'Wyoming', 39.0910084, -75.535099, ST_GeomFromText('POINT(39.0910084 -75.535099)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('214800', 'Wagamons Pond', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Milton', 38.775832, -75.3156991, ST_GeomFromText('POINT(38.775832 -75.3156991)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', 'Official', 'Board Decision', '1961-01-01'),
  ('214801', 'Wall Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6859458, -75.2182425, ST_GeomFromText('POINT(38.6859458 -75.2182425)', 4326), 38.6991667, -75.2283333, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214802', 'Wall Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Lewes', 38.8162233, -75.2115754, ST_GeomFromText('POINT(38.8162233 -75.2115754)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214803', 'Walter Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5851123, -75.1049048, ST_GeomFromText('POINT(38.5851123 -75.1049048)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214804', 'Waples Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Millsboro', 38.6060057, -75.2536169, ST_GeomFromText('POINT(38.6060057 -75.2536169)', 4326), NULL, NULL, '1979-08-02', '2020-05-14', NULL, NULL, NULL),
  ('214805', 'Waples Pond (historical)', 'Lake', 'Delaware', 'DE', 'Sussex', 'Milton', 38.873168, -75.2729673, ST_GeomFromText('POINT(38.873168 -75.2729673)', 4326), NULL, NULL, '1979-08-02', '2020-08-24', NULL, NULL, NULL),
  ('214806', 'Waples Pond', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8226646, -75.313507, ST_GeomFromText('POINT(38.8226646 -75.313507)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('214807', 'Ward Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Milford', 38.9706685, -75.4874219, ST_GeomFromText('POINT(38.9706685 -75.4874219)', 4326), 38.9430556, -75.4852778, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214808', 'Wards Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Laurel', 38.5048377, -75.5088111, ST_GeomFromText('POINT(38.5048377 -75.5088111)', 4326), 38.4665047, -75.4754761, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214809', 'Ware Cove', 'Bay', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5848351, -75.1993533, ST_GeomFromText('POINT(38.5848351 -75.1993533)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214810', 'Warrington Neck', 'Cape', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6926122, -75.1285163, ST_GeomFromText('POINT(38.6926122 -75.1285163)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214811', 'Warwick Cove', 'Bay', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5956685, -75.2035201, ST_GeomFromText('POINT(38.5956685 -75.2035201)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214812', 'Warwick Gut', 'Stream', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5912241, -75.2190763, ST_GeomFromText('POINT(38.5912241 -75.2190763)', 4326), 38.6091667, -75.2272222, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214813', 'Warwick Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5890018, -75.2068536, ST_GeomFromText('POINT(38.5890018 -75.2068536)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214816', 'Welches Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.71789, -75.1668512, ST_GeomFromText('POINT(38.71789 -75.1668512)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214817', 'Welsh Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Harbeson', 38.6640019, -75.2960241, ST_GeomFromText('POINT(38.6640019 -75.2960241)', 4326), 38.6861111, -75.2955556, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214824', 'West Branch Gum Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Greenwood', 38.7648358, -75.5438137, ST_GeomFromText('POINT(38.7648358 -75.5438137)', 4326), 38.8277778, -75.5083333, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214825', 'West Branch Christina River', 'Stream', 'Delaware', 'DE', 'New Castle', 'Newark West', 39.6592782, -75.7671578, ST_GeomFromText('POINT(39.6592782 -75.7671578)', 4326), 39.6955556, -75.8113889, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214826', 'West Pond', 'Swamp', 'Delaware', 'DE', 'Sussex', 'Trap Pond', 38.5603926, -75.4601982, ST_GeomFromText('POINT(38.5603926 -75.4601982)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214829', 'Whartons Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Millsboro', 38.5826133, -75.2688008, ST_GeomFromText('POINT(38.5826133 -75.2688008)', 4326), 38.5463889, -75.2844444, '1979-08-02', '2014-07-17', NULL, NULL, NULL),
  ('214831', 'Wheeling Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Delmar', 38.4998379, -75.6190938, ST_GeomFromText('POINT(38.4998379 -75.6190938)', 4326), 38.4844444, -75.6205556, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214832', 'White Clay Creek', 'Stream', 'Delaware', 'DE', 'New Castle', 'Wilmington South', 39.6976125, -75.6218718, ST_GeomFromText('POINT(39.6976125 -75.6218718)', 4326), 39.7664995, -75.7946602, '1979-08-02', '2014-07-15', NULL, NULL, NULL),
  ('214833', 'White Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5787233, -75.0951822, ST_GeomFromText('POINT(38.5787233 -75.0951822)', 4326), 38.5451125, -75.1254614, '1979-08-02', '2014-04-14', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214834', 'White House Cove', 'Bay', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.6137235, -75.1257388, ST_GeomFromText('POINT(38.6137235 -75.1257388)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214835', 'White House Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.6117791, -75.1332391, ST_GeomFromText('POINT(38.6117791 -75.1332391)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214836', 'White Marsh Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Greenwood', 38.8201135, -75.5774258, ST_GeomFromText('POINT(38.8201135 -75.5774258)', 4326), 38.8613889, -75.5688889, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214837', 'White Marsh Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Burrsville', 38.9803917, -75.7346531, ST_GeomFromText('POINT(38.9803917 -75.7346531)', 4326), 38.9719444, -75.6647222, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214838', 'White Neck', 'Cape', 'Delaware', 'DE', 'Sussex', 'Lewes', 38.7976122, -75.2337987, ST_GeomFromText('POINT(38.7976122 -75.2337987)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214839', 'White Neck', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5720569, -75.1382396, ST_GeomFromText('POINT(38.5720569 -75.1382396)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214840', 'White Oak Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.6934455, -75.1218493, ST_GeomFromText('POINT(38.6934455 -75.1218493)', 4326), 38.7167789, -75.1301829, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214842', 'White Oak Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.6848344, -75.118238, ST_GeomFromText('POINT(38.6848344 -75.118238)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214844', 'White Oak Swamp Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Harbeson', 38.6620574, -75.2996354, ST_GeomFromText('POINT(38.6620574 -75.2996354)', 4326), 38.6936111, -75.3358333, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214847', 'Whitney Swamp', 'Swamp', 'Delaware', 'DE', 'Sussex', 'Seaford West', 38.7434469, -75.6721516, ST_GeomFromText('POINT(38.7434469 -75.6721516)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214848', 'Wildcat Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Marydel', 39.0376133, -75.6949296, ST_GeomFromText('POINT(39.0376133 -75.6949296)', 4326), 39.0013889, -75.6825, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214849', 'Wiley Branch Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Millsboro', 38.5617805, -75.3160252, ST_GeomFromText('POINT(38.5617805 -75.3160252)', 4326), 38.5452778, -75.35, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214850', 'Wileys Pond', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Laurel', 38.5740039, -75.5193675, ST_GeomFromText('POINT(38.5740039 -75.5193675)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214852', 'Wilkins Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6445568, -75.1471285, ST_GeomFromText('POINT(38.6445568 -75.1471285)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214853', 'William H Newton Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Seaford East', 38.6656699, -75.5788148, ST_GeomFromText('POINT(38.6656699 -75.5788148)', 4326), 38.7044444, -75.5880556, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214855', 'Williams Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.4878903, -75.1024053, ST_GeomFromText('POINT(38.4878903 -75.1024053)', 4326), 38.4952778, -75.1058333, '1979-08-02', NULL, 'Official', 'Board Decision', '1967-01-01'),
  ('214857', 'Willis Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Dover', 39.2440006, -75.5952046, ST_GeomFromText('POINT(39.2440006 -75.5952046)', 4326), 39.2119444, -75.6163889, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214860', 'Willow Grove Prong', 'Stream', 'Delaware', 'DE', 'Kent', 'Marydel', 39.0626129, -75.6357608, ST_GeomFromText('POINT(39.0626129 -75.6357608)', 4326), 39.0976127, -75.6229827, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214861', 'Willow Run', 'Stream', 'Delaware', 'DE', 'New Castle', 'Wilmington North', 39.7873347, -75.5607576, ST_GeomFromText('POINT(39.7873347 -75.5607576)', 4326), 39.7986111, -75.5497222, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214866', 'Wilson Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6392245, -75.1342785, ST_GeomFromText('POINT(38.6392245 -75.1342785)', 4326), 38.6307085, -75.1449537, '1979-08-02', '2020-04-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214867', 'Wilson Hill', 'Summit', 'Delaware', 'DE', 'Sussex', 'Georgetown', 38.708806, -75.4791547, ST_GeomFromText('POINT(38.708806 -75.4791547)', 4326), NULL, NULL, '1979-08-02', '2021-07-17', NULL, NULL, NULL),
  ('214868', 'Wilson Marsh', 'Swamp', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6340383, -75.1393176, ST_GeomFromText('POINT(38.6340383 -75.1393176)', 4326), NULL, NULL, '1979-08-02', '2022-08-05', NULL, NULL, NULL),
  ('214869', 'Wilson Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8528584, -75.26291, ST_GeomFromText('POINT(38.8528584 -75.26291)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('214870', 'Wilson Run', 'Stream', 'Delaware', 'DE', 'New Castle', 'Wilmington North', 39.7967789, -75.5752033, ST_GeomFromText('POINT(39.7967789 -75.5752033)', 4326), 39.8169444, -75.6202778, '1979-08-02', '2014-07-15', NULL, NULL, NULL),
  ('214871', 'Wingate Cove', 'Bay', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.571224, -75.1979644, ST_GeomFromText('POINT(38.571224 -75.1979644)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214874', 'Wolfe Neck', 'Cape', 'Delaware', 'DE', 'Sussex', 'Cape Henlopen', 38.7501121, -75.108515, ST_GeomFromText('POINT(38.7501121 -75.108515)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214875', 'Wolfpit Marsh', 'Swamp', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6528196, -75.1437136, ST_GeomFromText('POINT(38.6528196 -75.1437136)', 4326), NULL, NULL, '1979-08-02', '2022-08-05', NULL, NULL, NULL),
  ('214876', 'Wolfpit Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6488855, -75.1419327, ST_GeomFromText('POINT(38.6488855 -75.1419327)', 4326), NULL, NULL, '1979-08-02', '2020-04-30', NULL, NULL, NULL),
  ('214884', 'Wright Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Sharptown', 38.561782, -75.7010418, ST_GeomFromText('POINT(38.561782 -75.7010418)', 4326), 38.6119444, -75.6930556, '1979-08-02', NULL, NULL, NULL, NULL),
  ('214885', 'Wyoming Lake', 'Reservoir', 'Delaware', 'DE', 'Kent', 'Wyoming', 39.1239357, -75.5624793, ST_GeomFromText('POINT(39.1239357 -75.5624793)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('214887', 'Yellowbank Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5940017, -75.185186, ST_GeomFromText('POINT(38.5940017 -75.185186)', 4326), NULL, NULL, '1979-08-02', NULL, 'Official', 'Board Decision', '1961-01-01'),
  ('214889', 'Zigzag Marsh', 'Swamp', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.4901812, -75.0890732, ST_GeomFromText('POINT(38.4901812 -75.0890732)', 4326), NULL, NULL, '1979-08-02', '2022-08-05', NULL, NULL, NULL),
  ('214912', 'Cove Number Two', 'Bay', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5912241, -75.2165762, ST_GeomFromText('POINT(38.5912241 -75.2165762)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('215155', 'Bogy Run', 'Stream', 'Delaware', 'DE', 'New Castle', 'Newark West', 39.6931238, -75.7558436, ST_GeomFromText('POINT(39.6931238 -75.7558436)', 4326), 39.6959595, -75.763386, '1982-07-01', '2020-03-25', NULL, NULL, NULL),
  ('215273', 'Cods Hammocks (historical)', 'Island', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8620568, -75.2663004, ST_GeomFromText('POINT(38.8620568 -75.2663004)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL),
  ('215292', 'Hawks Inlet (historical)', 'Stream', 'Delaware', 'DE', 'Kent', 'Bennetts Pier', 39.0040015, -75.3351927, ST_GeomFromText('POINT(39.0040015 -75.3351927)', 4326), 39.0036111, -75.3355556, '1982-07-01', NULL, NULL, NULL, NULL),
  ('215293', 'Coopers Island', 'Island', 'Delaware', 'DE', 'New Castle', 'Wilmington South', 39.7181686, -75.5732575, ST_GeomFromText('POINT(39.7181686 -75.5732575)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL),
  ('215326', 'Kitts Hummock', 'Island', 'Delaware', 'DE', 'Kent', 'Frederica', 39.1026128, -75.4021407, ST_GeomFromText('POINT(39.1026128 -75.4021407)', 4326), NULL, NULL, '1990-08-01', NULL, 'Official', 'Board Decision', '1897-01-01'),
  ('215359', 'Terrapin Hill', 'Summit', 'Delaware', 'DE', 'Sussex', 'Trap Pond', 38.5181628, -75.4504735, ST_GeomFromText('POINT(38.5181628 -75.4504735)', 4326), NULL, NULL, '1989-10-01', '2021-07-17', NULL, NULL, NULL),
  ('215442', 'Craigs Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Seaford West', 38.629038, -75.6494426, ST_GeomFromText('POINT(38.629038 -75.6494426)', 4326), NULL, NULL, '1989-10-01', '2018-12-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('215509', 'Old Inlet Beach', 'Beach', 'Delaware', 'DE', 'Sussex', 'Lewes', 38.8170566, -75.2001861, ST_GeomFromText('POINT(38.8170566 -75.2001861)', 4326), NULL, NULL, '1989-10-01', NULL, NULL, NULL, NULL),
  ('215527', 'Blockhouse Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Lewes', 38.7712068, -75.1458904, ST_GeomFromText('POINT(38.7712068 -75.1458904)', 4326), NULL, NULL, '1989-10-01', '2023-05-19', NULL, NULL, NULL),
  ('215611', 'Tailings Pond', 'Lake', 'Delaware', 'DE', 'New Castle', 'Delaware City', 39.5601964, -75.6212145, ST_GeomFromText('POINT(39.5601964 -75.6212145)', 4326), NULL, NULL, '1989-11-01', '2020-03-24', NULL, NULL, NULL),
  ('215632', 'Prong Number Two', 'Stream', 'Delaware', 'DE', 'Kent', 'Burrsville', 38.8867802, -75.629094, ST_GeomFromText('POINT(38.8867802 -75.629094)', 4326), 38.8823356, -75.602982, '1989-11-01', NULL, NULL, NULL, NULL),
  ('215644', 'The Big Ditch', 'Stream', 'Delaware', 'DE', 'New Castle', 'Taylors Bridge', 39.4381676, -75.5815928, ST_GeomFromText('POINT(39.4381676 -75.5815928)', 4326), 39.4408333, -75.5969444, '1989-11-01', NULL, NULL, NULL, NULL),
  ('215674', 'Bohemia Manor', 'Flat', 'Delaware', 'DE', 'New Castle', 'Cecilton', 39.4831676, -75.7685454, ST_GeomFromText('POINT(39.4831676 -75.7685454)', 4326), NULL, NULL, '1989-11-01', NULL, NULL, NULL, NULL),
  ('215693', 'Deemers Beach', 'Beach', 'Delaware', 'DE', 'New Castle', 'Wilmington South', 39.6412236, -75.5954816, ST_GeomFromText('POINT(39.6412236 -75.5954816)', 4326), NULL, NULL, '1989-11-01', NULL, NULL, NULL, NULL),
  ('215712', 'Newport Marsh', 'Swamp', 'Delaware', 'DE', 'New Castle', 'Wilmington South', 39.7120668, -75.5928925, ST_GeomFromText('POINT(39.7120668 -75.5928925)', 4326), NULL, NULL, '1989-11-01', '2018-12-18', NULL, NULL, NULL),
  ('216013', 'Grays Prong', 'Stream', 'Delaware', 'DE', 'Sussex', 'Whaleyville', 38.4853923, -75.338804, ST_GeomFromText('POINT(38.4853923 -75.338804)', 4326), 38.5201144, -75.363805, '1979-08-02', NULL, NULL, NULL, NULL),
  ('216314', 'Drummond Hill', 'Summit', 'Delaware', 'DE', 'New Castle', 'Newark East', 39.7127661, -75.7108297, ST_GeomFromText('POINT(39.7127661 -75.7108297)', 4326), NULL, NULL, '1979-08-02', '2021-07-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('216315', 'Sunset Lake', 'Reservoir', 'Delaware', 'DE', 'New Castle', 'Saint Georges', 39.6212282, -75.7332923, ST_GeomFromText('POINT(39.6212282 -75.7332923)', 4326), NULL, NULL, '1982-07-01', '2018-12-18', 'Official', 'Board Decision', '1991-01-01'),
  ('216340', 'Oak Hill', 'Island', 'Delaware', 'DE', 'Sussex', 'Milton', 38.8634457, -75.2757452, ST_GeomFromText('POINT(38.8634457 -75.2757452)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('216349', 'Salt Works Marsh', 'Swamp', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5923045, -75.065335, ST_GeomFromText('POINT(38.5923045 -75.065335)', 4326), NULL, NULL, '1979-08-02', '2022-08-05', NULL, NULL, NULL),
  ('216359', 'Goose Point', 'Cape', 'Delaware', 'DE', 'New Castle', 'Elkton', 39.5367788, -75.774935, ST_GeomFromText('POINT(39.5367788 -75.774935)', 4326), NULL, NULL, '1991-12-01', NULL, NULL, NULL, NULL),
  ('216360', 'Bakeoven Point', 'Cape', 'Delaware', 'DE', 'Kent', 'Bombay Hook Island', 39.3515012, -75.4918671, ST_GeomFromText('POINT(39.3515012 -75.4918671)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('216362', 'Bay Pond (historical)', 'Lake', 'Delaware', 'DE', 'Kent', 'Bombay Hook Island', 39.2745572, -75.4246423, ST_GeomFromText('POINT(39.2745572 -75.4246423)', 4326), NULL, NULL, '1979-08-02', '2020-08-24', NULL, NULL, NULL),
  ('216363', 'Bear Swamp', 'Swamp', 'Delaware', 'DE', 'Kent', 'Bombay Hook Island', 39.2890013, -75.4732554, ST_GeomFromText('POINT(39.2890013 -75.4732554)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('216365', 'Bombay Hook Island', 'Island', 'Delaware', 'DE', 'Kent', 'Bombay Hook Island', 39.2862238, -75.4346426, ST_GeomFromText('POINT(39.2862238 -75.4346426)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('216367', 'Bombay Hook Point', 'Cape', 'Delaware', 'DE', 'Kent', 'Bombay Hook Island', 39.3117794, -75.4371426, ST_GeomFromText('POINT(39.3117794 -75.4371426)', 4326), NULL, NULL, '1979-08-02', NULL, 'Official', 'Board Decision', '1897-01-01'),
  ('216370', 'Broadway Meadows', 'Swamp', 'Delaware', 'DE', 'Kent', 'Smyrna', 39.3403899, -75.5077012, ST_GeomFromText('POINT(39.3403899 -75.5077012)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('216371', 'Collins Island', 'Island', 'Delaware', 'DE', 'Kent', 'Bombay Hook Island', 39.2762235, -75.4746444, ST_GeomFromText('POINT(39.2762235 -75.4746444)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('216373', 'Delaware Bay', 'Bay', 'Delaware', 'DE', 'Sussex', NULL, 39.0501128, -75.1496285, ST_GeomFromText('POINT(39.0501128 -75.1496285)', 4326), NULL, NULL, '1979-08-02', '2016-09-23', 'Official', 'Board Decision', '1963-01-01'),
  ('216374', 'Duck Creek', 'Stream', 'Delaware', 'DE', 'Kent', 'Little Creek', 39.2443468, -75.4264748, ST_GeomFromText('POINT(39.2443468 -75.4264748)', 4326), 39.3242478, -75.4910135, '1979-08-02', '2020-04-20', 'Official', 'Board Decision', '1898-01-01'),
  ('216375', 'Dutch Neck', 'Cape', 'Delaware', 'DE', 'Kent', 'Bombay Hook Island', 39.2815011, -75.4913117, ST_GeomFromText('POINT(39.2815011 -75.4913117)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('216377', 'Finis Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Bombay Hook Island', 39.2715012, -75.4902006, ST_GeomFromText('POINT(39.2715012 -75.4902006)', 4326), 39.2812232, -75.5246463, '1979-08-02', NULL, NULL, NULL, NULL),
  ('216378', 'Fraland Beach', 'Beach', 'Delaware', 'DE', 'Kent', 'Bombay Hook Island', 39.3153904, -75.4496432, ST_GeomFromText('POINT(39.3153904 -75.4496432)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('216379', 'Fraland Cove', 'Bay', 'Delaware', 'DE', 'Kent', 'Bombay Hook Island', 39.3178904, -75.4490875, ST_GeomFromText('POINT(39.3178904 -75.4490875)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('216380', 'Georges Island', 'Island', 'Delaware', 'DE', 'Kent', 'Bombay Hook Island', 39.2578904, -75.4518657, ST_GeomFromText('POINT(39.2578904 -75.4518657)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('216381', 'Goose Point', 'Cape', 'Delaware', 'DE', 'Kent', 'Bombay Hook Island', 39.2509463, -75.4018636, ST_GeomFromText('POINT(39.2509463 -75.4018636)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('216382', 'Hawkey Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Bombay Hook Island', 39.2976122, -75.493534, ST_GeomFromText('POINT(39.2976122 -75.493534)', 4326), 39.2942787, -75.5288132, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('216384', 'Leatherberry Flats', 'Swamp', 'Delaware', 'DE', 'Kent', 'Bombay Hook Island', 39.282057, -75.4513101, ST_GeomFromText('POINT(39.282057 -75.4513101)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('216386', 'Leipsic River', 'Stream', 'Delaware', 'DE', 'Kent', 'Little Creek', 39.2445574, -75.4029747, ST_GeomFromText('POINT(39.2445574 -75.4029747)', 4326), 39.232056, -75.6363172, '1979-08-02', NULL, 'Official', 'Board Decision', '1893-01-01'),
  ('216389', 'Log Pond', 'Lake', 'Delaware', 'DE', 'Kent', 'Bombay Hook Island', 39.2729071, -75.4283236, ST_GeomFromText('POINT(39.2729071 -75.4283236)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('216390', 'Long Bar Point', 'Cape', 'Delaware', 'DE', 'Kent', 'Bombay Hook Island', 39.305946, -75.4357537, ST_GeomFromText('POINT(39.305946 -75.4357537)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('216394', 'Money Marsh', 'Swamp', 'Delaware', 'DE', 'Kent', 'Bombay Hook Island', 39.2795569, -75.4663107, ST_GeomFromText('POINT(39.2795569 -75.4663107)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('216396', 'Parson Point', 'Cape', 'Delaware', 'DE', 'Kent', 'Bombay Hook Island', 39.2753901, -75.4821447, ST_GeomFromText('POINT(39.2753901 -75.4821447)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('216397', 'Pasture Point', 'Cape', 'Delaware', 'DE', 'Kent', 'Bombay Hook Island', 39.286779, -75.4863115, ST_GeomFromText('POINT(39.286779 -75.4863115)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('216398', 'Persimmon Hummock', 'Island', 'Delaware', 'DE', 'Kent', 'Bombay Hook Island', 39.3403901, -75.4871447, ST_GeomFromText('POINT(39.3403901 -75.4871447)', 4326), NULL, NULL, '1979-08-02', '2021-01-29', NULL, NULL, NULL),
  ('216399', 'Pierson Cove', 'Bay', 'Delaware', 'DE', 'Kent', 'Bombay Hook Island', 39.3373346, -75.4768665, ST_GeomFromText('POINT(39.3373346 -75.4768665)', 4326), NULL, NULL, '1979-08-02', NULL, 'Official', 'Board Decision', '1898-01-01'),
  ('216400', 'Poplar Point', 'Cape', 'Delaware', 'DE', 'Kent', 'Bombay Hook Island', 39.2817791, -75.4732554, ST_GeomFromText('POINT(39.2817791 -75.4732554)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('216403', 'Raymond Neck', 'Cape', 'Delaware', 'DE', 'Kent', 'Smyrna', 39.2595565, -75.5079791, ST_GeomFromText('POINT(39.2595565 -75.5079791)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('216404', 'Raymond Pool', 'Reservoir', 'Delaware', 'DE', 'Kent', 'Bombay Hook Island', 39.2592129, -75.4646736, ST_GeomFromText('POINT(39.2592129 -75.4646736)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('216407', 'Shearness Pool', 'Reservoir', 'Delaware', 'DE', 'Kent', 'Bombay Hook Island', 39.267145, -75.4725556, ST_GeomFromText('POINT(39.267145 -75.4725556)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('216412', 'Thrumcap', 'Cape', 'Delaware', 'DE', 'Kent', 'Bombay Hook Island', 39.2765018, -75.4190864, ST_GeomFromText('POINT(39.2765018 -75.4190864)', 4326), NULL, NULL, '1979-08-02', NULL, 'Official', 'Board Decision', '1897-01-01'),
  ('216414', 'Whitehall Neck', 'Cape', 'Delaware', 'DE', 'Kent', 'Bombay Hook Island', 39.2570567, -75.4802002, ST_GeomFromText('POINT(39.2570567 -75.4802002)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('216419', 'Bombay Hook', 'Cape', 'Delaware', 'DE', 'Kent', 'Bombay Hook Island', 39.35289, -75.4940894, ST_GeomFromText('POINT(39.35289 -75.4940894)', 4326), NULL, NULL, '1990-08-01', '2020-03-11', 'Official', 'Board Decision', '1897-01-01'),
  ('216456', 'Poplar Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5681107, -75.1974471, ST_GeomFromText('POINT(38.5681107 -75.1974471)', 4326), NULL, NULL, '1992-07-01', '2015-02-16', NULL, NULL, NULL),
  ('216459', 'Bald Eagle Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.6895566, -75.1085154, ST_GeomFromText('POINT(38.6895566 -75.1085154)', 4326), NULL, NULL, '1992-07-01', NULL, NULL, NULL, NULL),
  ('216518', 'Joy Beach', 'Beach', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6790012, -75.1357389, ST_GeomFromText('POINT(38.6790012 -75.1357389)', 4326), NULL, NULL, '1992-10-01', NULL, NULL, NULL, NULL),
  ('216546', 'Big Piney Island (historical)', 'Island', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.66289, -75.1204605, ST_GeomFromText('POINT(38.66289 -75.1204605)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('216547', 'Broken Marshes', 'Swamp', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5911007, -75.0716795, ST_GeomFromText('POINT(38.5911007 -75.0716795)', 4326), NULL, NULL, '1982-07-01', '2022-08-05', NULL, NULL, NULL),
  ('216551', 'Long Neck', 'Cape', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6270569, -75.1546289, ST_GeomFromText('POINT(38.6270569 -75.1546289)', 4326), NULL, NULL, '1979-08-02', NULL, 'Official', 'Board Decision', '1939-01-01'),
  ('216553', 'Wolfe Glade', 'Stream', 'Delaware', 'DE', 'Sussex', 'Cape Henlopen', 38.7592788, -75.1115707, ST_GeomFromText('POINT(38.7592788 -75.1115707)', 4326), 38.7398343, -75.1321273, '1982-07-01', NULL, NULL, NULL, NULL),
  ('216668', 'Bayville Gut', 'Bay', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.4806681, -75.0879602, ST_GeomFromText('POINT(38.4806681 -75.0879602)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL),
  ('216670', 'Miller Creek', 'Bay', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.4876124, -75.0885158, ST_GeomFromText('POINT(38.4876124 -75.0885158)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL),
  ('216680', 'Derrickson Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5509456, -75.1026827, ST_GeomFromText('POINT(38.5509456 -75.1026827)', 4326), 38.5406682, -75.1315728, '1982-07-01', NULL, NULL, NULL, NULL),
  ('216685', 'Cat Hill Marsh', 'Swamp', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5171271, -75.0646022, ST_GeomFromText('POINT(38.5171271 -75.0646022)', 4326), NULL, NULL, '1982-07-01', '2022-08-05', NULL, NULL, NULL),
  ('216687', 'Bethany Beach', 'Beach', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.5417786, -75.0537917, ST_GeomFromText('POINT(38.5417786 -75.0537917)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL),
  ('216689', 'Murray Marsh Cove', 'Bay', 'Delaware', 'DE', 'Sussex', 'Bethany Beach', 38.6092788, -75.0704586, ST_GeomFromText('POINT(38.6092788 -75.0704586)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL),
  ('216692', 'Bear Swamp Pool', 'Reservoir', 'Delaware', 'DE', 'Kent', 'Bombay Hook Island', 39.2868035, -75.4790039, ST_GeomFromText('POINT(39.2868035 -75.4790039)', 4326), NULL, NULL, '1982-07-01', '2023-05-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('216697', 'Dyke Pond', 'Swamp', 'Delaware', 'DE', 'Kent', 'Burrsville', 38.9356121, -75.6379126, ST_GeomFromText('POINT(38.9356121 -75.6379126)', 4326), NULL, NULL, '1982-07-01', '2020-07-09', NULL, NULL, NULL),
  ('216699', 'Gordon Pond', 'Swamp', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.7414237, -75.0867882, ST_GeomFromText('POINT(38.7414237 -75.0867882)', 4326), NULL, NULL, '1982-07-01', '2022-08-05', 'Official', 'Board Decision', '1943-01-01'),
  ('216715', 'Dutch Neck', 'Cape', 'Delaware', 'DE', 'New Castle', 'Wilmington South', 39.7334463, -75.5788134, ST_GeomFromText('POINT(39.7334463 -75.5788134)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL),
  ('216718', 'Mayer Branch', 'Stream', 'Maryland', 'MD', 'Wicomico', 'Delmar', 38.4342833, -75.553257, ST_GeomFromText('POINT(38.4342833 -75.553257)', 4326), 38.4588889, -75.5386111, '1979-08-02', '2011-03-14', NULL, NULL, NULL),
  ('216720', 'Connelly Mill Branch', 'Stream', 'Maryland', 'MD', 'Wicomico', 'Delmar', 38.41493, -75.591516, ST_GeomFromText('POINT(38.41493 -75.591516)', 4326), 38.45994, -75.59795, '1979-08-02', '2010-11-05', NULL, NULL, NULL),
  ('216728', 'Snows Neck', 'Cape', 'Delaware', 'DE', 'Kent', 'Dover', 39.2473341, -75.5607588, ST_GeomFromText('POINT(39.2473341 -75.5607588)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('216729', 'Snows Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Dover', 39.2481675, -75.5510363, ST_GeomFromText('POINT(39.2481675 -75.5510363)', 4326), 39.2567785, -75.5793706, '1979-08-02', NULL, NULL, NULL, NULL),
  ('216733', 'Garrisons Lake', 'Reservoir', 'Delaware', 'DE', 'Kent', 'Dover', 39.243926, -75.5954456, ST_GeomFromText('POINT(39.243926 -75.5954456)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('216735', 'Narrow Drain', 'Stream', 'Delaware', 'DE', 'Sussex', 'Millsboro', 38.6151136, -75.3371372, ST_GeomFromText('POINT(38.6151136 -75.3371372)', 4326), 38.6211111, -75.3738889, '1979-08-02', '2009-06-12', 'Official', 'Board Decision', '1965-01-12'),
  ('216736', 'Sunset Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Millsboro', 38.5603918, -75.3513045, ST_GeomFromText('POINT(38.5603918 -75.3513045)', 4326), 38.5617809, -75.3760278, '1979-08-02', '2009-06-12', 'Official', 'Board Decision', '1965-03-09');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('216740', 'Fishing Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Millsboro', 38.5890021, -75.2510222, ST_GeomFromText('POINT(38.5890021 -75.2510222)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL),
  ('216742', 'Perch Creek', 'Stream', 'Maryland', 'MD', 'Cecil', 'Elkton', 39.5667793, -75.8279935, ST_GeomFromText('POINT(39.5667793 -75.8279935)', 4326), 39.5911111, -75.7597222, '1979-08-02', '2010-11-05', NULL, NULL, NULL),
  ('216747', 'Hudson Pond', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Ellendale', 38.8383555, -75.435642, ST_GeomFromText('POINT(38.8383555 -75.435642)', 4326), NULL, NULL, '1982-07-01', '2020-04-22', NULL, NULL, NULL),
  ('216758', 'Short Marsh', 'Swamp', 'Delaware', 'DE', 'Sussex', 'Fairmount', 38.6723357, -75.1388491, ST_GeomFromText('POINT(38.6723357 -75.1388491)', 4326), NULL, NULL, '1982-07-01', '2022-08-05', NULL, NULL, NULL),
  ('216763', 'Gut Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5895574, -75.2187986, ST_GeomFromText('POINT(38.5895574 -75.2187986)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('216764', 'Seals Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Frankford', 38.5901129, -75.2107426, ST_GeomFromText('POINT(38.5901129 -75.2107426)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL),
  ('216770', 'Thorndyk Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Frederica', 39.0578905, -75.4982558, ST_GeomFromText('POINT(39.0578905 -75.4982558)', 4326), 39.0690016, -75.509923, '1979-08-02', NULL, NULL, NULL, NULL),
  ('216776', 'Kitts Hummock', 'Island', 'Delaware', 'DE', 'Kent', 'Frederica', 39.1028906, -75.4024185, ST_GeomFromText('POINT(39.1028906 -75.4024185)', 4326), NULL, NULL, '1979-08-02', '2021-01-29', NULL, NULL, NULL),
  ('216777', 'Bowers Beach', 'Beach', 'Delaware', 'DE', 'Kent', 'Frederica', 39.058446, -75.3968624, ST_GeomFromText('POINT(39.058446 -75.3968624)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL),
  ('216780', 'McColleys Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Georgetown', 38.6853918, -75.479922, ST_GeomFromText('POINT(38.6853918 -75.479922)', 4326), 38.6833333, -75.4327778, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('216783', 'Sharps Pond', 'Swamp', 'Delaware', 'DE', 'Sussex', 'Greenwood', 38.7565025, -75.5529807, ST_GeomFromText('POINT(38.7565025 -75.5529807)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL),
  ('216795', 'Indian Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Harrington', 38.9606686, -75.5074228, ST_GeomFromText('POINT(38.9606686 -75.5074228)', 4326), 38.9625, -75.5297222, '1982-07-01', NULL, NULL, NULL, NULL),
  ('216800', 'Shadowbrook Pond', 'Reservoir', 'Delaware', 'DE', 'New Castle', 'Kennett Square', 39.8233083, -75.6444735, ST_GeomFromText('POINT(39.8233083 -75.6444735)', 4326), NULL, NULL, '1982-07-01', '2018-12-18', NULL, NULL, NULL),
  ('216811', 'Muddy Bottom Ditch', 'Stream', 'Delaware', 'DE', 'Kent', 'Kenton', 39.2042782, -75.729376, ST_GeomFromText('POINT(39.2042782 -75.729376)', 4326), 39.1797222, -75.6897222, '1982-07-01', NULL, NULL, NULL, NULL),
  ('216817', 'Horseys Pond', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Laurel', 38.5385162, -75.5778825, ST_GeomFromText('POINT(38.5385162 -75.5778825)', 4326), NULL, NULL, '1982-07-01', '2018-12-17', NULL, NULL, NULL),
  ('216822', 'Beach Plum Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Lewes', 38.8001122, -75.1787961, ST_GeomFromText('POINT(38.8001122 -75.1787961)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL),
  ('216826', 'Canary Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Lewes', 38.7901122, -75.1635176, ST_GeomFromText('POINT(38.7901122 -75.1635176)', 4326), 38.7647222, -75.1588889, '1979-08-02', NULL, NULL, NULL, NULL),
  ('216865', 'Wiggins Mill Pond', 'Reservoir', 'Delaware', 'DE', 'New Castle', 'Middletown', 39.4008154, -75.7088888, ST_GeomFromText('POINT(39.4008154 -75.7088888)', 4326), NULL, NULL, '1982-07-01', '2018-12-18', NULL, NULL, NULL),
  ('216870', 'Herring Run', 'Stream', 'Delaware', 'DE', 'New Castle', 'Middletown', 39.383445, -75.6418731, ST_GeomFromText('POINT(39.383445 -75.6418731)', 4326), 39.3969444, -75.6758333, '1982-07-01', NULL, NULL, NULL, NULL),
  ('216874', 'Lednum Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Milford', 38.912613, -75.4576985, ST_GeomFromText('POINT(38.912613 -75.4576985)', 4326), 38.9308333, -75.4794444, '1982-07-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('216875', 'Copper Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Milford', 38.9133379, -75.4505848, ST_GeomFromText('POINT(38.9133379 -75.4505848)', 4326), 38.9201079, -75.4546081, '1982-07-01', '2020-08-24', NULL, NULL, NULL),
  ('216876', 'Griffith Lake', 'Reservoir', 'Delaware', 'DE', 'Kent', 'Milford', 38.9091256, -75.470093, ST_GeomFromText('POINT(38.9091256 -75.470093)', 4326), NULL, NULL, '1982-07-01', '2023-05-19', NULL, NULL, NULL),
  ('216877', 'Improvement Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Milford', 38.947335, -75.4371419, ST_GeomFromText('POINT(38.947335 -75.4371419)', 4326), 38.9388889, -75.4527778, '1982-07-01', NULL, NULL, NULL, NULL),
  ('216883', 'Jenkins Pond', 'Reservoir', 'Delaware', 'DE', 'Kent', 'Milford', 38.9576656, -75.4217602, ST_GeomFromText('POINT(38.9576656 -75.4217602)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('216889', 'Ice Cream Island', 'Island', 'Delaware', 'DE', 'Kent', 'Milford', 38.9120573, -75.4385309, ST_GeomFromText('POINT(38.9120573 -75.4385309)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL),
  ('216901', 'Deep Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Milton', 38.813168, -75.2799121, ST_GeomFromText('POINT(38.813168 -75.2799121)', 4326), 38.8005556, -75.3036111, '1979-08-02', NULL, NULL, NULL, NULL),
  ('216924', 'Leatherems Run', 'Stream', 'Delaware', 'DE', 'New Castle', 'Newark East', 39.6542787, -75.6738193, ST_GeomFromText('POINT(39.6542787 -75.6738193)', 4326), 39.67, -75.705, '1982-07-01', NULL, NULL, NULL, NULL),
  ('216928', 'Becks Pond', 'Swamp', 'Delaware', 'DE', 'New Castle', 'Newark East', 39.6278896, -75.701043, ST_GeomFromText('POINT(39.6278896 -75.701043)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL),
  ('216929', 'Smalleys Pond', 'Reservoir', 'Delaware', 'DE', 'New Castle', 'Newark East', 39.6521512, -75.6732819, ST_GeomFromText('POINT(39.6521512 -75.6732819)', 4326), NULL, NULL, '1982-07-01', '2020-04-01', NULL, NULL, NULL),
  ('216941', 'Fern Hook Marsh', 'Swamp', 'Delaware', 'DE', 'New Castle', 'Wilmington South', 39.7251134, -75.5385331, ST_GeomFromText('POINT(39.7251134 -75.5385331)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('216942', 'Cherry Island Marsh', 'Swamp', 'Delaware', 'DE', 'New Castle', 'Wilmington South', 39.7306692, -75.5149204, ST_GeomFromText('POINT(39.7306692 -75.5149204)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL),
  ('216961', 'Heron Drain', 'Stream', 'Delaware', 'DE', 'Kent', 'Wyoming', 39.0556686, -75.6154823, ST_GeomFromText('POINT(39.0556686 -75.6154823)', 4326), 39.0547222, -75.5863889, '1982-07-01', NULL, NULL, NULL, NULL),
  ('216964', 'Howell Pond (historical)', 'Lake', 'Delaware', 'DE', 'Kent', 'Wyoming', 39.1237236, -75.5399243, ST_GeomFromText('POINT(39.1237236 -75.5399243)', 4326), NULL, NULL, '1982-07-01', '2020-04-20', NULL, NULL, NULL),
  ('217002', 'Sandy Brae', 'Summit', 'Delaware', 'DE', 'New Castle', 'Newark West', 39.6281202, -75.7781802, ST_GeomFromText('POINT(39.6281202 -75.7781802)', 4326), NULL, NULL, '1982-07-01', '2021-07-17', NULL, NULL, NULL),
  ('217009', 'Whiskey Beach', 'Beach', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.7376121, -75.0801805, ST_GeomFromText('POINT(38.7376121 -75.0801805)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL),
  ('217011', 'Rehoboth Beach', 'Beach', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.7167788, -75.0760137, ST_GeomFromText('POINT(38.7167788 -75.0760137)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL),
  ('217012', 'Indian Beach', 'Beach', 'Delaware', 'DE', 'Sussex', 'Rehoboth Beach', 38.6834454, -75.0704581, ST_GeomFromText('POINT(38.6834454 -75.0704581)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL),
  ('217021', 'Becks Pond', 'Reservoir', 'Delaware', 'DE', 'New Castle', 'Saint Georges', 39.6230437, -75.7072611, ST_GeomFromText('POINT(39.6230437 -75.7072611)', 4326), NULL, NULL, '1982-07-01', '2018-12-18', NULL, NULL, NULL),
  ('217023', 'Pigeon Run', 'Stream', 'Delaware', 'DE', 'New Castle', 'Saint Georges', 39.6056677, -75.6538182, ST_GeomFromText('POINT(39.6056677 -75.6538182)', 4326), 39.6236111, -75.6547222, '1982-07-01', NULL, NULL, NULL, NULL),
  ('217029', 'Briar Point', 'Cape', 'Delaware', 'DE', 'New Castle', 'Saint Georges', 39.5501121, -75.6260391, ST_GeomFromText('POINT(39.5501121 -75.6260391)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('217039', 'Greens Pond', 'Swamp', 'Delaware', 'DE', 'Sussex', 'Seaford East', 38.711225, -75.5579807, ST_GeomFromText('POINT(38.711225 -75.5579807)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL),
  ('217062', 'Morris Branch', 'Stream', 'Delaware', 'DE', 'New Castle', 'Smyrna', 39.334834, -75.5852042, ST_GeomFromText('POINT(39.334834 -75.5852042)', 4326), 39.3394444, -75.6155556, '1982-07-01', NULL, NULL, NULL, NULL),
  ('217064', 'Tadpole Neck', 'Cape', 'Delaware', 'DE', 'Kent', 'Smyrna', 39.3501121, -75.5163126, ST_GeomFromText('POINT(39.3501121 -75.5163126)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL),
  ('217067', 'Little Neck', 'Cape', 'Delaware', 'DE', 'Kent', 'Smyrna', 39.3001121, -75.507979, ST_GeomFromText('POINT(39.3001121 -75.507979)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('217068', 'Spruances Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Smyrna', 39.2515008, -75.5449249, ST_GeomFromText('POINT(39.2515008 -75.5449249)', 4326), 39.2797222, -75.5463889, '1982-07-01', NULL, NULL, NULL, NULL),
  ('217069', 'Spruances Neck', 'Cape', 'Delaware', 'DE', 'Kent', 'Smyrna', 39.258445, -75.5871487, ST_GeomFromText('POINT(39.258445 -75.5871487)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL),
  ('217070', 'Bennefield Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Smyrna', 39.252612, -75.531591, ST_GeomFromText('POINT(39.252612 -75.531591)', 4326), 39.2688889, -75.5341667, '1982-07-01', NULL, NULL, NULL, NULL),
  ('217076', 'Reedy Island Neck', 'Cape', 'Delaware', 'DE', 'New Castle', 'Taylors Bridge', 39.487612, -75.6038161, ST_GeomFromText('POINT(39.487612 -75.6038161)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL),
  ('217078', 'Robs Island', 'Island', 'Delaware', 'DE', 'New Castle', 'Taylors Bridge', 39.430112, -75.5685368, ST_GeomFromText('POINT(39.430112 -75.5685368)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('217080', 'Liston Point', 'Cape', 'Delaware', 'DE', 'New Castle', 'Taylors Bridge', 39.4167788, -75.5413135, ST_GeomFromText('POINT(39.4167788 -75.5413135)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('217084', 'Pepper Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Trap Pond', 38.5320596, -75.4871436, ST_GeomFromText('POINT(38.5320596 -75.4871436)', 4326), 38.5616667, -75.4158333, '1979-08-02', NULL, NULL, NULL, NULL),
  ('217088', 'Lewis Prong', 'Stream', 'Delaware', 'DE', 'Sussex', 'Whaleyville', 38.4753925, -75.3418597, ST_GeomFromText('POINT(38.4753925 -75.3418597)', 4326), 38.4875, -75.3213889, '1979-08-02', '2009-06-12', 'Official', 'Board Decision', '1965-03-09'),
  ('217089', 'Nemours Pond', 'Reservoir', 'Delaware', 'DE', 'New Castle', 'Wilmington North', 39.7830021, -75.5663042, ST_GeomFromText('POINT(39.7830021 -75.5663042)', 4326), NULL, NULL, '1982-07-01', '2018-12-18', NULL, NULL, NULL),
  ('217111', 'Edgemoor Reservoir', 'Reservoir', 'Delaware', 'DE', 'New Castle', 'Wilmington North', 39.7567921, -75.5214175, ST_GeomFromText('POINT(39.7567921 -75.5214175)', 4326), NULL, NULL, '1982-07-01', '2018-12-18', NULL, NULL, NULL),
  ('217112', 'Cool Spring Reservoir', 'Reservoir', 'Delaware', 'DE', 'New Castle', 'Wilmington North', 39.7516698, -75.5588312, ST_GeomFromText('POINT(39.7516698 -75.5588312)', 4326), NULL, NULL, '1982-07-01', '2018-12-18', NULL, NULL, NULL),
  ('217180', 'Ice Harbor', 'Bay', 'Delaware', 'DE', 'New Castle', 'Delaware City', 39.51789, -75.5635364, ST_GeomFromText('POINT(39.51789 -75.5635364)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL),
  ('217182', 'Slaughter Beach', 'Beach', 'Delaware', 'DE', 'Sussex', 'Mispillion River', 38.9126125, -75.3051912, ST_GeomFromText('POINT(38.9126125 -75.3051912)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL),
  ('217193', 'Crane Hook (historical)', 'Cape', 'Delaware', 'DE', 'New Castle', 'Wilmington South', 39.6931689, -75.5301996, ST_GeomFromText('POINT(39.6931689 -75.5301996)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL),
  ('217198', 'Plumb Point (historical)', 'Cape', 'Delaware', 'DE', 'Sussex', 'Lewes', 38.8334455, -75.2162979, ST_GeomFromText('POINT(38.8334455 -75.2162979)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL),
  ('217199', 'Spinnell Udden (historical)', 'Cape', 'Delaware', 'DE', 'Kent', 'Bombay Hook Island', 39.3251126, -75.4579768, ST_GeomFromText('POINT(39.3251126 -75.4579768)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('217200', 'Wisacco Cipus (historical)', 'Stream', 'Delaware', 'DE', 'New Castle', 'Taylors Bridge', 39.3917788, -75.5218683, ST_GeomFromText('POINT(39.3917788 -75.5218683)', 4326), 39.3917788, -75.5218683, '1982-07-01', NULL, NULL, NULL, NULL),
  ('217371', 'Ingram Pond', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Millsboro', 38.587776, -75.330635, ST_GeomFromText('POINT(38.587776 -75.330635)', 4326), NULL, NULL, '1992-11-01', '2024-09-20', NULL, NULL, NULL),
  ('217390', 'Horse Pound Swamp Ditch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Harbeson', 38.6409468, -75.3510267, ST_GeomFromText('POINT(38.6409468 -75.3510267)', 4326), 38.6487249, -75.3988068, '1979-08-02', NULL, 'Official', 'Board Decision', '1965-01-01'),
  ('217391', 'Thirty-five Acre Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.4966476, -75.0827892, ST_GeomFromText('POINT(38.4966476 -75.0827892)', 4326), NULL, NULL, '1982-07-01', '2018-12-17', NULL, NULL, NULL),
  ('217393', 'Big Mill Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Georgetown', 38.6315031, -75.4499203, ST_GeomFromText('POINT(38.6315031 -75.4499203)', 4326), 38.6237252, -75.4188077, '1979-08-02', NULL, NULL, NULL, NULL),
  ('217401', 'Mirey Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Millsboro', 38.6045578, -75.3032467, ST_GeomFromText('POINT(38.6045578 -75.3032467)', 4326), 38.6351138, -75.389084, '1979-08-02', NULL, 'Official', 'Board Decision', '1965-01-01'),
  ('217404', 'Point of Cedars Island', 'Island', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.4706681, -75.0674039, ST_GeomFromText('POINT(38.4706681 -75.0674039)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('217405', 'Polly Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Selbyville', 38.4615028, -75.2176881, ST_GeomFromText('POINT(38.4615028 -75.2176881)', 4326), 38.4756696, -75.2557451, '1979-08-02', NULL, 'Official', 'Board Decision', '1965-01-01'),
  ('217409', 'Terrapin Pond', 'Stream', 'Delaware', 'DE', 'Sussex', 'Trap Pond', 38.5192817, -75.4529754, ST_GeomFromText('POINT(38.5192817 -75.4529754)', 4326), 38.5166667, -75.4366667, '1979-08-02', NULL, NULL, NULL, NULL),
  ('217411', 'Williams Pond', 'Reservoir', 'Delaware', 'DE', 'Sussex', 'Seaford East', 38.6483, -75.596494, ST_GeomFromText('POINT(38.6483 -75.596494)', 4326), NULL, NULL, '1979-08-02', '2024-09-20', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('217412', 'Point of Cedars (historical)', 'Cape', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.4701125, -75.0662928, ST_GeomFromText('POINT(38.4701125 -75.0662928)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL),
  ('217413', 'Marsh Island (historical)', 'Island', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.4598347, -75.0551813, ST_GeomFromText('POINT(38.4598347 -75.0551813)', 4326), NULL, NULL, '1979-08-02', NULL, NULL, NULL, NULL),
  ('217414', 'Ingram Pond (historical)', 'Swamp', 'Delaware', 'DE', 'Sussex', 'Millsboro', 38.5876137, -75.3329703, ST_GeomFromText('POINT(38.5876137 -75.3329703)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL),
  ('217436', 'Raccoon Pond', 'Lake', 'Delaware', 'DE', 'Sussex', 'Trap Pond', 38.5129349, -75.4592036, ST_GeomFromText('POINT(38.5129349 -75.4592036)', 4326), NULL, NULL, '1989-10-01', '2018-12-17', NULL, NULL, NULL),
  ('217459', 'Shoals Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Millsboro', 38.5842805, -75.3365816, ST_GeomFromText('POINT(38.5842805 -75.3365816)', 4326), 38.5987253, -75.4140851, '1982-07-01', '2014-07-17', NULL, NULL, NULL),
  ('217469', 'Burrows Run', 'Stream', 'Delaware', 'DE', 'New Castle', 'Kennett Square', 39.798151, -75.648637, ST_GeomFromText('POINT(39.798151 -75.648637)', 4326), 39.852533, -75.643659, '2023-10-27', '2023-10-27', 'Official', 'Board Decision', '2003-01-01'),
  ('217641', 'Puncheon Run', 'Stream', 'Delaware', 'DE', 'Kent', 'Dover', 39.1398347, -75.5110344, ST_GeomFromText('POINT(39.1398347 -75.5110344)', 4326), 39.1405556, -75.5661111, '1982-07-01', NULL, 'Official', 'Board Decision', '1993-01-01'),
  ('217642', 'Appoqueneme (historical)', 'Swamp', 'Delaware', 'DE', 'New Castle', 'Smyrna', 39.3626121, -75.5163126, ST_GeomFromText('POINT(39.3626121 -75.5163126)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL),
  ('217645', 'Bell Memorial Chapel', 'Island', 'Delaware', 'DE', 'Sussex', 'Seaford East', 38.6492811, -75.5957598, ST_GeomFromText('POINT(38.6492811 -75.5957598)', 4326), NULL, NULL, '1982-07-01', NULL, NULL, NULL, NULL),
  ('217657', 'Webber Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Burrsville', 38.8901138, -75.7477094, ST_GeomFromText('POINT(38.8901138 -75.7477094)', 4326), 38.906151, -75.7239511, '1982-07-01', '2015-07-09', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('217744', 'Thousand Acre Swamp', 'Swamp', 'Delaware', 'DE', 'New Castle', 'Delaware City', 39.5414235, -75.6024286, ST_GeomFromText('POINT(39.5414235 -75.6024286)', 4326), NULL, NULL, '1993-12-01', '2018-12-18', NULL, NULL, NULL),
  ('217773', 'Devious Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Dover', 39.2084455, -75.5099235, ST_GeomFromText('POINT(39.2084455 -75.5099235)', 4326), 39.1938889, -75.5116667, '1994-05-01', NULL, NULL, NULL, NULL),
  ('217817', 'Blackbird Pond', 'Reservoir', 'Delaware', 'DE', 'New Castle', 'Clayton', 39.362877, -75.669647, ST_GeomFromText('POINT(39.362877 -75.669647)', 4326), NULL, NULL, '1994-05-01', '2018-12-18', NULL, NULL, NULL),
  ('217871', 'Killen Pond', 'Reservoir', 'Delaware', 'DE', 'Kent', 'Harrington', 38.9815077, -75.5361511, ST_GeomFromText('POINT(38.9815077 -75.5361511)', 4326), NULL, NULL, '1979-08-02', '2023-05-19', NULL, NULL, NULL),
  ('217883', 'Saint Jones River', 'Stream', 'Delaware', 'DE', 'Kent', 'Frederica', 39.0659461, -75.4007515, ST_GeomFromText('POINT(39.0659461 -75.4007515)', 4326), 39.1684456, -75.5215904, '1979-08-02', '2014-07-09', 'Official', 'Board Decision', '1894-01-01'),
  ('217886', 'Buntings Branch', 'Stream', 'Delaware', 'DE', 'Sussex', 'Selbyville', 38.4565022, -75.1376848, ST_GeomFromText('POINT(38.4565022 -75.1376848)', 4326), 38.4702778, -75.1536111, '1979-08-02', NULL, 'Official', 'Board Decision', '1965-01-01'),
  ('217887', 'Delaware River', 'Stream', 'Delaware', 'DE', 'New Castle', 'Taylors Bridge', 39.4326121, -75.528813, ST_GeomFromText('POINT(39.4326121 -75.528813)', 4326), 41.9389755, -75.2790615, '1979-08-02', '2016-09-23', 'Official', 'Board Decision', '1963-01-01'),
  ('217890', 'Guthrie Branch', 'Stream', 'Delaware', 'DE', 'New Castle', 'Elkton', 39.5403896, -75.7604898, ST_GeomFromText('POINT(39.5403896 -75.7604898)', 4326), 39.5573339, -75.7463226, '1982-07-01', '2009-06-12', 'Official', 'Board Decision', '1965-04-13'),
  ('217891', 'McColley Pond', 'Reservoir', 'Delaware', 'DE', 'Kent', 'Milford', 38.9668431, -75.4998797, ST_GeomFromText('POINT(38.9668431 -75.4998797)', 4326), NULL, NULL, '1982-07-01', '2023-05-19', NULL, NULL, NULL),
  ('217896', 'White Swan Lake', 'Reservoir', 'Delaware', 'DE', 'New Castle', 'Elkton', 39.5137108, -75.7775089, ST_GeomFromText('POINT(39.5137108 -75.7775089)', 4326), NULL, NULL, '1982-07-01', '2018-12-22', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('217904', 'Gravelly Run', 'Stream', 'Delaware', 'DE', 'Kent', 'Sudlersville', 39.2209444, -75.7685443, ST_GeomFromText('POINT(39.2209444 -75.7685443)', 4326), 39.1726119, -75.6971524, '1979-08-02', NULL, NULL, NULL, NULL),
  ('217905', 'Harrington Beaverdam Ditch', 'Stream', 'Delaware', 'DE', 'Kent', 'Marydel', 39.1073348, -75.740487, ST_GeomFromText('POINT(39.1073348 -75.740487)', 4326), 39.1398342, -75.7871557, '1979-08-02', NULL, NULL, NULL, NULL),
  ('217906', 'Sewell Branch', 'Stream', 'Delaware', 'DE', 'Kent', 'Sudlersville', 39.2417774, -75.7952123, ST_GeomFromText('POINT(39.2417774 -75.7952123)', 4326), 39.2411459, -75.6807571, '1979-08-02', '2015-07-09', NULL, NULL, NULL),
  ('217907', 'Delmarva Peninsula', 'Cape', 'Delaware', 'DE', 'Sussex', 'Trap Pond', 38.5001155, -75.499644, ST_GeomFromText('POINT(38.5001155 -75.499644)', 4326), NULL, NULL, '1982-07-01', NULL, 'Official', 'Board Decision', '1943-01-01'),
  ('582839', 'Marshyhope Creek', 'Stream', 'Maryland', 'MD', 'Dorchester', 'Rhodesdale', 38.527338, -75.7565997, ST_GeomFromText('POINT(38.527338 -75.7565997)', 4326), 38.9217802, -75.6396499, '1979-09-12', '2011-06-30', 'Official', 'Board Decision', '1965-01-01'),
  ('583588', 'Carey Branch', 'Stream', 'Maryland', 'MD', 'Worcester', 'Selbyville', 38.4484472, -75.2026876, ST_GeomFromText('POINT(38.4484472 -75.2026876)', 4326), 38.455, -75.2341667, '1979-09-12', NULL, NULL, NULL, NULL),
  ('583766', 'Choptank River', 'Stream', 'Maryland', 'MD', 'Dorchester', 'Tilghman', 38.6345644, -76.3266152, ST_GeomFromText('POINT(38.6345644 -76.3266152)', 4326), 39.0676131, -75.7363201, '1979-09-12', '2016-05-25', NULL, NULL, NULL),
  ('584557', 'Garey Mill Pond Branch', 'Stream', 'Maryland', 'MD', 'Caroline', 'Denton', 38.9153916, -75.7863217, ST_GeomFromText('POINT(38.9153916 -75.7863217)', 4326), 38.9328916, -75.7307642, '1979-09-12', NULL, 'Official', 'Board Decision', '1965-01-01'),
  ('586142', 'Nanticoke River', 'Stream', 'Maryland', 'MD', 'Wicomico', 'Deal Island', 38.233456, -75.9246552, ST_GeomFromText('POINT(38.233456 -75.9246552)', 4326), 38.8820577, -75.559925, '1979-09-12', '2014-06-05', 'Official', 'Board Decision', '1965-01-01'),
  ('586604', 'Plum Creek', 'Stream', 'Maryland', 'MD', 'Wicomico', 'Sharptown', 38.5353934, -75.7460439, ST_GeomFromText('POINT(38.5353934 -75.7460439)', 4326), 38.5036111, -75.6686111, '1979-09-12', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('586618', 'Pocomoke River', 'Stream', 'Maryland', 'MD', 'Somerset', 'Saxis', 37.9654019, -75.6496504, ST_GeomFromText('POINT(37.9654019 -75.6496504)', 4326), 38.55567, -75.4038068, '1979-09-12', '2019-09-30', 'Official', 'Board Decision', '1963-01-01'),
  ('587694', 'Tanyard Branch', 'Stream', 'Maryland', 'MD', 'Caroline', 'Federalsburg', 38.6956698, -75.7724329, ST_GeomFromText('POINT(38.6956698 -75.7724329)', 4326), 38.6945584, -75.6915968, '1979-09-12', NULL, NULL, NULL, NULL),
  ('588429', 'White Oak Swamp Ditch', 'Stream', 'Maryland', 'MD', 'Worcester', 'Selbyville', 38.4501133, -75.12824, ST_GeomFromText('POINT(38.4501133 -75.12824)', 4326), 38.4694444, -75.1758333, '1990-07-01', NULL, 'Official', 'Board Decision', '1965-01-01'),
  ('874309', 'Alloway Creek', 'Stream', 'New Jersey', 'NJ', 'Salem', 'Delaware City', 39.5003899, -75.5282572, ST_GeomFromText('POINT(39.5003899 -75.5282572)', 4326), 39.5999844, -75.2504683, '1979-09-08', '2014-06-13', 'Official', 'Board Decision', '1893-01-01'),
  ('874388', 'Artificial Island', 'Island', 'New Jersey', 'NJ', 'Salem', 'Taylors Bridge', 39.4756677, -75.5360354, ST_GeomFromText('POINT(39.4756677 -75.5360354)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('876341', 'Finns Point', 'Cape', 'New Jersey', 'NJ', 'Salem', 'Delaware City', 39.6068321, -75.5611168, ST_GeomFromText('POINT(39.6068321 -75.5611168)', 4326), NULL, NULL, '1979-09-08', '2015-03-25', 'Official', 'Board Decision', '1891-12-31'),
  ('882295', 'Mill Creek Cove', 'Bay', 'New Jersey', 'NJ', 'Salem', 'Delaware City', 39.5348345, -75.5288125, ST_GeomFromText('POINT(39.5348345 -75.5288125)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('882296', 'Salem Cove', 'Bay', 'New Jersey', 'NJ', 'Salem', 'Delaware City', 39.570258, -75.527375, ST_GeomFromText('POINT(39.570258 -75.527375)', 4326), NULL, NULL, '1979-09-08', '2014-05-07', NULL, NULL, NULL),
  ('882297', 'Helms Cove', 'Bay', 'New Jersey', 'NJ', 'Salem', 'Penns Grove', 39.7167804, -75.4788075, ST_GeomFromText('POINT(39.7167804 -75.4788075)', 4326), NULL, NULL, '1979-09-08', NULL, NULL, NULL, NULL),
  ('882872', 'Travis Cove', 'Bay', 'New Jersey', 'NJ', 'Salem', 'Wilmington South', 39.6695576, -75.5163102, ST_GeomFromText('POINT(39.6695576 -75.5163102)', 4326), NULL, NULL, '1981-07-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1668742', 'Georgetown Branch', 'Stream', 'Maryland', 'MD', 'Worcester', 'Selbyville', 38.45428, -75.1385182, ST_GeomFromText('POINT(38.45428 -75.1385182)', 4326), 38.4438889, -75.1861111, '1995-11-07', NULL, NULL, NULL, NULL),
  ('1765044', 'Lamborn Run', 'Stream', 'Delaware', 'DE', 'New Castle', 'Newark West', 39.7303891, -75.7593802, ST_GeomFromText('POINT(39.7303891 -75.7593802)', 4326), 39.7342782, -75.7360457, '1997-11-07', NULL, 'Official', 'Board Decision', '1997-01-01'),
  ('1765045', 'Wood Duck Run', 'Stream', 'Delaware', 'DE', 'New Castle', 'Newark East', 39.7337226, -75.742435, ST_GeomFromText('POINT(39.7337226 -75.742435)', 4326), 39.7388889, -75.7427778, '1997-11-07', NULL, 'Official', 'Board Decision', '1997-01-01'),
  ('1828309', 'Perkins Run', 'Stream', 'Delaware', 'DE', 'New Castle', 'Marcus Hook', 39.785391, -75.4699185, ST_GeomFromText('POINT(39.785391 -75.4699185)', 4326), 39.8133333, -75.4988889, '1999-04-09', NULL, 'Official', 'Board Decision', '1999-01-01'),
  ('1877487', 'Rock Spring', 'Spring', 'Delaware', 'DE', 'New Castle', 'Wilmington North', 39.79539, -75.5829815, ST_GeomFromText('POINT(39.79539 -75.5829815)', 4326), NULL, NULL, '2000-08-17', NULL, NULL, NULL, NULL),
  ('1957387', 'Buntings Branch', 'Stream', 'Maryland', 'MD', 'Worcester', 'Selbyville', 38.443754, -75.196418, ST_GeomFromText('POINT(38.443754 -75.196418)', 4326), 38.461274, -75.217432, '2002-07-16', '2014-05-07', NULL, NULL, NULL),
  ('1958449', 'Fairfield Run', 'Stream', 'Delaware', 'DE', 'New Castle', 'Newark West', 39.693231, -75.7565846, ST_GeomFromText('POINT(39.693231 -75.7565846)', 4326), 39.6946464, -75.7619412, '2002-08-07', '2020-03-25', 'Official', 'Board Decision', '2002-01-01'),
  ('1958450', 'Lost Stream', 'Stream', 'Delaware', 'DE', 'New Castle', 'Newark West', 39.6962027, -75.7551252, ST_GeomFromText('POINT(39.6962027 -75.7551252)', 4326), 39.6970756, -75.7589901, '2002-08-07', '2020-03-25', 'Official', 'Board Decision', '2002-01-01'),
  ('2574383', 'Tannery Run', 'Stream', 'Pennsylvania', 'PA', 'Chester', 'Kennett Square', 39.7797222, -75.7433333, ST_GeomFromText('POINT(39.7797222 -75.7433333)', 4326), 39.7813889, -75.7247222, '2009-12-14', NULL, 'Official', 'Board Decision', '2009-12-10'),
  ('2787999', 'Olivers Point', 'Cape', 'Delaware', 'DE', 'Sussex', 'Assawoman Bay', 38.47807, -75.055249, ST_GeomFromText('POINT(38.47807 -75.055249)', 4326), NULL, NULL, '2017-10-12', NULL, 'Official', 'Board Decision', '2017-10-12');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2813416', 'Calf Run', 'Stream', 'Delaware', 'DE', 'New Castle', 'Newark East', 39.71302, -75.64224, ST_GeomFromText('POINT(39.71302 -75.64224)', 4326), 39.73283, -75.65968, '2020-08-19', NULL, NULL, NULL, NULL),
  ('2831215', 'Lackhove Creek', 'Stream', 'Delaware', 'DE', 'Sussex', 'Lewes', 38.781805, -75.17307, ST_GeomFromText('POINT(38.781805 -75.17307)', 4326), 38.780099, -75.158501, '2023-05-15', '2023-05-15', 'Official', 'Board Decision', '2023-05-11');


COMMIT;
SET unique_checks = 1;
SET autocommit = 1;

-- DE complete: 942 features loaded
