USE kin;

-- GNIS Geographic Features for IA
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
  ('422256', 'Lake Keokuk', 'Reservoir', 'Iowa', 'IA', 'Lee', 'Fort Madison', 40.633097, -91.2754272, ST_GeomFromText('POINT(40.633097 -91.2754272)', 4326), NULL, NULL, '1989-05-01', '2012-10-25', 'Official', 'Board Decision', '1916-05-03'),
  ('454075', 'Abbe Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Bertram', 41.9533369, -91.526287, ST_GeomFromText('POINT(41.9533369 -91.526287)', 4326), 41.9869488, -91.419616, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454077', 'Abes Fork', 'Stream', 'Iowa', 'IA', 'Tama', 'Tama', 41.8986036, -92.6204696, ST_GeomFromText('POINT(41.8986036 -92.6204696)', 4326), 41.8549921, -92.7146373, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454085', 'Ackley Creek', 'Stream', 'Iowa', 'IA', 'Floyd', 'Greene', 42.9519159, -92.8685277, ST_GeomFromText('POINT(42.9519159 -92.8685277)', 4326), 42.959136, -93.0649206, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454091', 'Adams Island', 'Island', 'Iowa', 'IA', 'Scott', 'Cordova', 41.7442613, -90.3182716, ST_GeomFromText('POINT(41.7442613 -90.3182716)', 4326), NULL, NULL, '1979-04-30', '2015-05-28', NULL, NULL, NULL),
  ('454092', 'Adams Mill Hollow', 'Valley', 'Iowa', 'IA', 'Clayton', 'Turkey River', 42.6990195, -91.0092101, ST_GeomFromText('POINT(42.6990195 -91.0092101)', 4326), 42.6902796, -91.0231215, '1979-04-30', '2023-10-07', NULL, NULL, NULL),
  ('454103', 'Lake Afton', 'Reservoir', 'Iowa', 'IA', 'Union', 'Afton', 41.0360863, -94.2097651, ST_GeomFromText('POINT(41.0360863 -94.2097651)', 4326), NULL, NULL, '1979-04-30', '2018-06-22', NULL, NULL, NULL),
  ('454121', 'Alderson Hollow', 'Valley', 'Iowa', 'IA', 'Clayton', 'Edgewood', 42.745813, -91.4964427, ST_GeomFromText('POINT(42.745813 -91.4964427)', 4326), 42.6890023, -91.4948047, '1979-04-30', '2023-10-06', NULL, NULL, NULL),
  ('454122', 'Aldrich Creek', 'Stream', 'Iowa', 'IA', 'Ida', 'Battle Creek', 42.3016553, -95.6163916, ST_GeomFromText('POINT(42.3016553 -95.6163916)', 4326), 42.3935991, -95.6483379, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454124', 'Alexander Creek', 'Stream', 'Iowa', 'IA', 'Fayette', 'Fayette', 42.8283146, -91.8171081, ST_GeomFromText('POINT(42.8283146 -91.8171081)', 4326), 42.7933333, -91.8066667, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('454133', 'Allen Creek', 'Stream', 'Iowa', 'IA', 'Pottawattamie', 'Loveland', 41.45305, -95.9191782, ST_GeomFromText('POINT(41.45305 -95.9191782)', 4326), 41.8494328, -95.796119, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454134', 'Allen Creek', 'Stream', 'Iowa', 'IA', 'Webster', 'Stratford', 42.2794198, -93.9832856, ST_GeomFromText('POINT(42.2794198 -93.9832856)', 4326), 42.2891415, -94.0257874, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454142', 'Alligator Lake', 'Lake', 'Iowa', 'IA', 'Jackson', 'Savanna', 42.0880786, -90.1784614, ST_GeomFromText('POINT(42.0880786 -90.1784614)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454146', 'Allison Creek', 'Stream', 'Iowa', 'IA', 'Delaware', 'Earlville', 42.3880501, -91.2854237, ST_GeomFromText('POINT(42.3880501 -91.2854237)', 4326), 42.4391667, -91.3016667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454147', 'Alloway Creek', 'Stream', 'Iowa', 'IA', 'Jasper', 'Kellogg', 41.7455467, -92.952139, ST_GeomFromText('POINT(41.7455467 -92.952139)', 4326), 41.8922117, -92.9460305, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454148', 'Almoral Branch', 'Stream', 'Iowa', 'IA', 'Delaware', 'Greeley', 42.5127694, -91.2670833, ST_GeomFromText('POINT(42.5127694 -91.2670833)', 4326), 42.5672222, -91.3127778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454169', 'Ames Creek', 'Stream', 'Iowa', 'IA', 'Clinton', 'Malone', 41.7716971, -90.4809682, ST_GeomFromText('POINT(41.7716971 -90.4809682)', 4326), 41.9197482, -90.5490242, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454186', 'Andregg Hollow', 'Valley', 'Iowa', 'IA', 'Clayton', 'Turkey River', 42.6954079, -91.0933876, ST_GeomFromText('POINT(42.6954079 -91.0933876)', 4326), 42.6722741, -91.0938851, '1979-04-30', '2023-10-07', NULL, NULL, NULL),
  ('454189', 'Andy Hollow', 'Valley', 'Iowa', 'IA', 'Clayton', 'Garnavillo', 42.8455543, -91.1746763, ST_GeomFromText('POINT(42.8455543 -91.1746763)', 4326), 42.8575856, -91.2173379, '1979-04-30', '2015-09-04', NULL, NULL, NULL),
  ('454190', 'Anglers Bay', 'Bay', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.4863496, -95.0630498, ST_GeomFromText('POINT(43.4863496 -95.0630498)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('454193', 'Lake Anita', 'Reservoir', 'Iowa', 'IA', 'Cass', 'Anita', 41.4248695, -94.7797335, ST_GeomFromText('POINT(41.4248695 -94.7797335)', 4326), NULL, NULL, '1979-04-30', '2018-06-25', NULL, NULL, NULL),
  ('454196', 'Anson Creek', 'Stream', 'Iowa', 'IA', 'Marshall', 'Marshalltown', 42.0419324, -92.9015884, ST_GeomFromText('POINT(42.0419324 -92.9015884)', 4326), 42.0136111, -92.9338889, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454215', 'Apple Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Center Point', 42.1980487, -91.8023994, ST_GeomFromText('POINT(42.1980487 -91.8023994)', 4326), 42.1958261, -91.7432319, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454217', 'Lake Arbor', 'Reservoir', 'Iowa', 'IA', 'Poweshiek', 'Grinnell South', 41.7319383, -92.7329683, ST_GeomFromText('POINT(41.7319383 -92.7329683)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454220', 'Arcola Creek', 'Stream', 'Iowa', 'IA', 'Monona', 'Castana', 42.0491551, -95.9997335, ST_GeomFromText('POINT(42.0491551 -95.9997335)', 4326), 42.0786111, -95.9497222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454226', 'Argo Slough', 'Stream', 'Iowa', 'IA', 'Lyon', 'Little Rock', 43.3952488, -95.946409, ST_GeomFromText('POINT(43.3952488 -95.946409)', 4326), 43.4077473, -95.818073, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454239', 'Arnold Lake', 'Lake', 'Iowa', 'IA', 'Story', 'Ames East', 42.060482, -93.6030145, ST_GeomFromText('POINT(42.060482 -93.6030145)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('454243', 'Arrowhead Lake', 'Reservoir', 'Iowa', 'IA', 'Sac', 'Lake View', 42.2962428, -95.051281, ST_GeomFromText('POINT(42.2962428 -95.051281)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('454253', 'Ash Branch', 'Stream', 'Iowa', 'IA', 'Taylor', 'Merle Junction', 40.7655436, -94.6135772, ST_GeomFromText('POINT(40.7655436 -94.6135772)', 4326), 40.785, -94.5358333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454256', 'Ashby Creek', 'Stream', 'Iowa', 'IA', 'Mills', 'Coburg', 40.9055497, -95.260267, ST_GeomFromText('POINT(40.9055497 -95.260267)', 4326), 40.9666594, -95.1936001, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('454258', 'Asher Creek', 'Stream', 'Iowa', 'IA', 'Marshall', 'Marshalltown', 42.0624876, -92.9235331, ST_GeomFromText('POINT(42.0624876 -92.9235331)', 4326), 42.2235964, -92.9185345, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454261', 'Ashton Creek', 'Stream', 'Iowa', 'IA', 'Ida', 'Washta', 42.5397099, -95.7344532, ST_GeomFromText('POINT(42.5397099 -95.7344532)', 4326), 42.4727647, -95.5841705, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454278', 'Atwell Point', 'Cape', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.3855189, -95.1508293, ST_GeomFromText('POINT(43.3855189 -95.1508293)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454292', 'Avon Lake', 'Lake', 'Iowa', 'IA', 'Polk', 'Rising Sun', 41.5221483, -93.4943546, ST_GeomFromText('POINT(41.5221483 -93.4943546)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('454297', 'Baby Rush Island', 'Island', 'Iowa', 'IA', 'Des Moines', 'Burlington', 40.8328165, -91.0837559, ST_GeomFromText('POINT(40.8328165 -91.0837559)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454298', 'Backbone Lake', 'Reservoir', 'Iowa', 'IA', 'Delaware', 'Dundee', 42.6069331, -91.5405991, ST_GeomFromText('POINT(42.6069331 -91.5405991)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('454301', 'Bacon Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Sioux City South', 42.4761051, -96.3847511, ST_GeomFromText('POINT(42.4761051 -96.3847511)', 4326), 42.4924936, -96.3078048, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454302', 'Bacon Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Correctionville', 42.4683221, -95.791954, ST_GeomFromText('POINT(42.4683221 -95.791954)', 4326), 42.4722092, -95.5972264, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454305', 'Badger Creek', 'Stream', 'Iowa', 'IA', 'Warren', 'Norwalk', 41.4358242, -93.749388, ST_GeomFromText('POINT(41.4358242 -93.749388)', 4326), 41.471656, -94.031619, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454306', 'Badger Creek', 'Stream', 'Iowa', 'IA', 'Ida', 'Ida Grove', 42.3449873, -95.4850002, ST_GeomFromText('POINT(42.3449873 -95.4850002)', 4326), 42.2902778, -95.4811111, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('454307', 'Badger Creek', 'Stream', 'Iowa', 'IA', 'Cherokee', 'Fielding', 42.6874878, -95.8052906, ST_GeomFromText('POINT(42.6874878 -95.8052906)', 4326), 42.6972222, -95.7641667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454308', 'Badger Creek', 'Stream', 'Iowa', 'IA', 'Cherokee', 'Cherokee North', 42.7635936, -95.5244511, ST_GeomFromText('POINT(42.7635936 -95.5244511)', 4326), 42.8049807, -95.4597268, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454309', 'Badger Creek', 'Stream', 'Iowa', 'IA', 'Webster', 'Fort Dodge North', 42.578859, -94.206351, ST_GeomFromText('POINT(42.578859 -94.206351)', 4326), 42.6666373, -94.0835666, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454311', 'Badger Lake', 'Lake', 'Iowa', 'IA', 'Monona', 'Sloan', 42.150235, -96.2357983, ST_GeomFromText('POINT(42.150235 -96.2357983)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('454312', 'Badger Lake', 'Reservoir', 'Iowa', 'IA', 'Webster', 'Fort Dodge North', 42.5865835, -94.1886418, ST_GeomFromText('POINT(42.5865835 -94.1886418)', 4326), NULL, NULL, '1979-04-30', '2018-06-22', NULL, NULL, NULL),
  ('454314', 'Badlands Draw', 'Valley', 'Iowa', 'IA', 'Cerro Gordo', 'Mason City SE', 43.0944496, -93.0550271, ST_GeomFromText('POINT(43.0944496 -93.0550271)', 4326), 43.0732408, -93.0917583, '1979-04-30', '2023-10-11', NULL, NULL, NULL),
  ('454318', 'Bailey Creek', 'Stream', 'Iowa', 'IA', 'Franklin', 'Hampton North', 42.8602483, -93.1254775, ST_GeomFromText('POINT(42.8602483 -93.1254775)', 4326), 42.9877414, -93.473539, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454325', 'Baker Creek', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Bonaparte', 40.726976, -91.7607212, ST_GeomFromText('POINT(40.726976 -91.7607212)', 4326), 40.735032, -91.7248864, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454326', 'Bakers Creek', 'Stream', 'Iowa', 'IA', 'Dubuque', 'Dyersville East', 42.3852798, -91.0173587, ST_GeomFromText('POINT(42.3852798 -91.0173587)', 4326), 42.4313889, -91.0158333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454328', 'Bakers Point', 'Cape', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.4849616, -95.1238842, ST_GeomFromText('POINT(43.4849616 -95.1238842)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('454329', 'Bald Point', 'Cliff', 'Iowa', 'IA', 'Clinton', 'Clinton NW', 41.9855821, -90.1701277, ST_GeomFromText('POINT(41.9855821 -90.1701277)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454333', 'Baldwin Mason Creek', 'Stream', 'Iowa', 'IA', 'Cedar', 'Cedar Bluff', 41.8044606, -91.3137755, ST_GeomFromText('POINT(41.8044606 -91.3137755)', 4326), 41.8422222, -91.2536111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454334', 'Ballard Creek', 'Stream', 'Iowa', 'IA', 'Story', 'Huxley', 41.8977655, -93.5185479, ST_GeomFromText('POINT(41.8977655 -93.5185479)', 4326), 41.9083201, -93.6460526, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454335', 'Ballard Creek', 'Stream', 'Iowa', 'IA', 'Marion', 'Knoxville NW', 41.4213824, -93.1579822, ST_GeomFromText('POINT(41.4213824 -93.1579822)', 4326), 41.3916667, -93.225, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454336', 'Ballard Creek', 'Stream', 'Iowa', 'IA', 'Pottawattamie', 'Avoca', 41.4797125, -95.3263879, ST_GeomFromText('POINT(41.4797125 -95.3263879)', 4326), 41.471101, -95.2386076, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454337', 'Ballinger Creek', 'Stream', 'Iowa', 'IA', 'Mahaska', 'Peoria', 41.4061114, -92.7896394, ST_GeomFromText('POINT(41.4061114 -92.7896394)', 4326), 41.4380565, -92.719915, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454339', 'Balltown Ridge', 'Ridge', 'Iowa', 'IA', 'Dubuque', 'Cassville', 42.6361381, -90.9138503, ST_GeomFromText('POINT(42.6361381 -90.9138503)', 4326), NULL, NULL, '2023-10-06', '2024-03-28', NULL, NULL, NULL),
  ('454352', 'Bar Slough', 'Stream', 'Iowa', 'IA', 'Jackson', 'Green Island', 42.1922408, -90.3195737, ST_GeomFromText('POINT(42.1922408 -90.3195737)', 4326), 42.1925, -90.3413889, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454353', 'Barber Creek', 'Stream', 'Iowa', 'IA', 'Clinton', 'De Witt', 41.7697512, -90.5951386, ST_GeomFromText('POINT(41.7697512 -90.5951386)', 4326), 41.8058595, -90.7315315, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454354', 'Barber Creek', 'Stream', 'Iowa', 'IA', 'Monona', 'Smithland', 42.1758232, -95.9627886, ST_GeomFromText('POINT(42.1758232 -95.9627886)', 4326), 42.1833333, -95.8916667, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('454357', 'Bards Lake', 'Lake', 'Iowa', 'IA', 'Jackson', 'Savanna', 42.083912, -90.1904061, ST_GeomFromText('POINT(42.083912 -90.1904061)', 4326), NULL, NULL, '1979-04-30', '2014-05-14', NULL, NULL, NULL),
  ('454359', 'Barlean Creek', 'Stream', 'Iowa', 'IA', 'Lee', 'Keokuk', 40.4658763, -91.4857117, ST_GeomFromText('POINT(40.4658763 -91.4857117)', 4326), 40.5380957, -91.5843263, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454360', 'Barlow Lake Drain', 'Stream', 'Iowa', 'IA', 'Des Moines', 'Keithsburg', 41.0244803, -90.9945879, ST_GeomFromText('POINT(41.0244803 -90.9945879)', 4326), 41.0333688, -91.0251444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454364', 'Barnets Island', 'Island', 'Iowa', 'IA', 'Benton', 'Vinton', 42.2397154, -92.0468474, ST_GeomFromText('POINT(42.2397154 -92.0468474)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454367', 'Baron Spring', 'Spring', 'Iowa', 'IA', 'Clayton', 'Strawberry Point', 42.7269285, -91.5484792, ST_GeomFromText('POINT(42.7269285 -91.5484792)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454372', 'Barry Creek', 'Stream', 'Iowa', 'IA', 'O''Brien', 'Hartley SW', 43.0144202, -95.4291701, ST_GeomFromText('POINT(43.0144202 -95.4291701)', 4326), 43.0710868, -95.5380631, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454374', 'Baskins Run', 'Stream', 'Iowa', 'IA', 'Bremer', 'Waverly', 42.664427, -92.3940727, ST_GeomFromText('POINT(42.664427 -92.3940727)', 4326), 42.8533121, -92.4174041, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454377', 'Bass Point Creek', 'Stream', 'Iowa', 'IA', 'Boone', 'Boone West', 42.0908143, -93.9332847, ST_GeomFromText('POINT(42.0908143 -93.9332847)', 4326), 42.1241667, -93.9061111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454379', 'Basswood Creek', 'Stream', 'Iowa', 'IA', 'Dubuque', 'Balltown', 42.6552736, -90.807905, ST_GeomFromText('POINT(42.6552736 -90.807905)', 4326), 42.6119418, -90.8087386, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454382', 'Batten Branch', 'Stream', 'Iowa', 'IA', 'Davis', 'Bunker Hill', 40.600583, -92.4537976, ST_GeomFromText('POINT(40.600583 -92.4537976)', 4326), 40.5953048, -92.5124098, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('454385', 'Battle Creek', 'Stream', 'Iowa', 'IA', 'Adair', 'Arbor Hill', 41.333044, -94.3516283, ST_GeomFromText('POINT(41.333044 -94.3516283)', 4326), 41.3263769, -94.4374648, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454387', 'Battle Creek', 'Stream', 'Iowa', 'IA', 'Ida', 'Battle Creek', 42.3172104, -95.5822243, ST_GeomFromText('POINT(42.3172104 -95.5822243)', 4326), 42.4919306, -95.5238913, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454388', 'Battle Hill', 'Summit', 'Iowa', 'IA', 'Ida', 'Battle Creek', 42.3290836, -95.5826971, ST_GeomFromText('POINT(42.3290836 -95.5826971)', 4326), NULL, NULL, '1979-04-30', '2023-09-29', NULL, NULL, NULL),
  ('454389', 'Battle Run', 'Stream', 'Iowa', 'IA', 'Guthrie', 'Bagley', 41.7763749, -94.4960826, ST_GeomFromText('POINT(41.7763749 -94.4960826)', 4326), 41.8061111, -94.4875, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454392', 'Bay Branch', 'Stream', 'Iowa', 'IA', 'Guthrie', 'Panora', 41.6688759, -94.3452428, ST_GeomFromText('POINT(41.6688759 -94.3452428)', 4326), 41.7755417, -94.3702446, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454402', 'Beamon Creek', 'Stream', 'Iowa', 'IA', 'Crawford', 'Boyer', 42.2005411, -95.1988824, ST_GeomFromText('POINT(42.2005411 -95.1988824)', 4326), 42.1560962, -95.0972141, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454403', 'Bear Branch', 'Stream', 'Iowa', 'IA', 'Cass', 'Lewis', 41.3266568, -95.0497124, ST_GeomFromText('POINT(41.3266568 -95.0497124)', 4326), 41.3205449, -94.951931, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454404', 'Bear Creek', 'Stream', 'Iowa', 'IA', 'Boone', 'Madrid NW', 41.9769283, -93.9021729, ST_GeomFromText('POINT(41.9769283 -93.9021729)', 4326), 41.9775, -93.9747222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454405', 'Bear Creek', 'Stream', 'Iowa', 'IA', 'Clinton', 'Preston', 42.0103027, -90.4131873, ST_GeomFromText('POINT(42.0103027 -90.4131873)', 4326), 42.0108333, -90.4969444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454406', 'Bear Creek', 'Stream', 'Iowa', 'IA', 'Allamakee', 'Rossville', 43.129703, -91.3762475, ST_GeomFromText('POINT(43.129703 -91.3762475)', 4326), 43.195, -91.3988889, '1979-04-30', '2018-06-22', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('454407', 'Bear Creek', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Dorchester', 43.4266397, -91.5026406, ST_GeomFromText('POINT(43.4266397 -91.5026406)', 4326), 43.4486111, -91.6155556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454408', 'Bear Creek', 'Stream', 'Iowa', 'IA', 'Wapello', 'Ottumwa North', 41.0208475, -92.4337969, ST_GeomFromText('POINT(41.0208475 -92.4337969)', 4326), 40.9725122, -92.6363021, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454409', 'Bear Creek', 'Stream', 'Iowa', 'IA', 'Davis', 'Paris', 40.8525178, -92.5185208, ST_GeomFromText('POINT(40.8525178 -92.5185208)', 4326), 40.8972365, -92.6374132, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454410', 'Bear Creek', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Bonaparte', 40.7169749, -91.844613, ST_GeomFromText('POINT(40.7169749 -91.844613)', 4326), 40.71114, -91.9460055, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454411', 'Bear Creek', 'Stream', 'Iowa', 'IA', 'Dallas', 'Adel', 41.5466552, -94.092455, ST_GeomFromText('POINT(41.5466552 -94.092455)', 4326), 41.5488769, -94.2307931, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454412', 'Bear Creek', 'Stream', 'Iowa', 'IA', 'Hancock', 'Forest City', 43.2519003, -93.6263252, ST_GeomFromText('POINT(43.2519003 -93.6263252)', 4326), 43.3166219, -93.5849355, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454413', 'Bear Creek', 'Stream', 'Iowa', 'IA', 'Fayette', 'Wadena', 42.8013714, -91.6859892, ST_GeomFromText('POINT(42.8013714 -91.6859892)', 4326), 42.7455386, -91.744328, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454414', 'Bear Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Garber', 42.7385987, -91.307912, ST_GeomFromText('POINT(42.7385987 -91.307912)', 4326), 42.6788744, -91.454586, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454415', 'Bear Creek', 'Stream', 'Iowa', 'IA', 'Delaware', 'Dyersville West', 42.4755518, -91.1251362, ST_GeomFromText('POINT(42.4755518 -91.1251362)', 4326), 42.5730461, -91.277082, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454416', 'Bear Creek', 'Stream', 'Iowa', 'IA', 'Benton', 'Vinton', 42.248882, -92.0260134, ST_GeomFromText('POINT(42.248882 -92.0260134)', 4326), 42.453043, -91.9365627, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('454417', 'Bear Creek', 'Stream', 'Iowa', 'IA', 'Story', 'Ames East', 42.1124855, -93.5629929, ST_GeomFromText('POINT(42.1124855 -93.5629929)', 4326), 42.3058168, -93.4865995, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454418', 'Bear Creek', 'Stream', 'Iowa', 'IA', 'Jackson', 'Baldwin', 42.0850172, -90.7934723, ST_GeomFromText('POINT(42.0850172 -90.7934723)', 4326), 42.1247266, -91.2426565, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454419', 'Bear Creek', 'Stream', 'Iowa', 'IA', 'Benton', 'Shellsburg', 42.0766632, -91.7799023, ST_GeomFromText('POINT(42.0766632 -91.7799023)', 4326), 42.1602725, -91.8832346, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454426', 'Bear Hill', 'Summit', 'Iowa', 'IA', 'Fayette', 'Wadena', 42.7537697, -91.71532, ST_GeomFromText('POINT(42.7537697 -91.71532)', 4326), NULL, NULL, '1979-04-30', '2023-09-29', NULL, NULL, NULL),
  ('454430', 'Beattys Pond', 'Lake', 'Iowa', 'IA', 'Louisa', 'Blanchard Island', 41.3287494, -91.0793541, ST_GeomFromText('POINT(41.3287494 -91.0793541)', 4326), NULL, NULL, '1979-04-30', '2023-05-23', NULL, NULL, NULL),
  ('454433', 'Beaver Branch', 'Stream', 'Iowa', 'IA', 'Boone', 'Berkley', 41.9402613, -94.1049579, ST_GeomFromText('POINT(41.9402613 -94.1049579)', 4326), 42.01276, -94.0143991, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454436', 'Beaver Creek', 'Stream', 'Iowa', 'IA', 'Carroll', 'Viola Center', 41.866375, -94.7563704, ST_GeomFromText('POINT(41.866375 -94.7563704)', 4326), 41.8569444, -94.8288889, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454437', 'Beaver Creek', 'Stream', 'Iowa', 'IA', 'Floyd', 'Greene', 42.9996929, -92.8060263, ST_GeomFromText('POINT(42.9996929 -92.8060263)', 4326), 43.0883045, -92.8190831, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454438', 'Beaver Creek', 'Stream', 'Iowa', 'IA', 'Butler', 'Clarksville', 42.7649787, -92.6318563, ST_GeomFromText('POINT(42.7649787 -92.6318563)', 4326), 42.9888613, -92.6868565, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454439', 'Beaver Creek', 'Stream', 'Iowa', 'IA', 'Fayette', 'Gunder', 42.9449817, -91.6023714, ST_GeomFromText('POINT(42.9449817 -91.6023714)', 4326), 42.9094255, -91.6734873, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('454440', 'Beaver Creek', 'Stream', 'Iowa', 'IA', 'Hardin', 'Eldora', 42.3122059, -93.1185359, ST_GeomFromText('POINT(42.3122059 -93.1185359)', 4326), 42.4885914, -93.3402051, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454441', 'Beaver Creek', 'Stream', 'Iowa', 'IA', 'Black Hawk', 'Cedar Falls', 42.5597055, -92.4885215, ST_GeomFromText('POINT(42.5597055 -92.4885215)', 4326), 42.6202547, -93.2229799, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454442', 'Beaver Creek', 'Stream', 'Iowa', 'IA', 'Crawford', 'Ricketts', 42.202211, -95.5741682, ST_GeomFromText('POINT(42.202211 -95.5741682)', 4326), 42.1791545, -95.4241651, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454443', 'Beaver Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Des Moines NW', 41.6516553, -93.6677198, ST_GeomFromText('POINT(41.6516553 -93.6677198)', 4326), 42.2130325, -94.1388482, '1979-04-30', '2013-12-11', NULL, NULL, NULL),
  ('454444', 'Beaver Creek', 'Stream', 'Iowa', 'IA', 'Jackson', 'Savanna', 42.1091888, -90.1931839, ST_GeomFromText('POINT(42.1091888 -90.1931839)', 4326), 42.088356, -90.2620739, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454445', 'Beaver Creek', 'Stream', 'Iowa', 'IA', 'Monona', 'Moorhead NW', 41.993599, -95.9825108, ST_GeomFromText('POINT(41.993599 -95.9825108)', 4326), 42.0622109, -95.8369525, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454446', 'Beaver Creek', 'Stream', 'Iowa', 'IA', 'Guthrie', 'Stuart North', 41.5799875, -94.3357973, ST_GeomFromText('POINT(41.5799875 -94.3357973)', 4326), 41.5819313, -94.5538612, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454447', 'Beaver Creek', 'Stream', 'Iowa', 'IA', 'Pocahontas', 'Bradgate', 42.8277496, -94.4577511, ST_GeomFromText('POINT(42.8277496 -94.4577511)', 4326), 43.0574665, -94.7527595, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454448', 'Beaver Creek', 'Stream', 'Iowa', 'IA', 'Plymouth', 'Akron', 42.8411035, -96.5480881, ST_GeomFromText('POINT(42.8411035 -96.5480881)', 4326), 42.8327691, -96.4475292, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454449', 'Beaver Creek', 'Stream', 'Iowa', 'IA', 'Humboldt', 'Humboldt', 42.6519151, -94.1857943, ST_GeomFromText('POINT(42.6519151 -94.1857943)', 4326), 42.7335822, -94.0874556, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('454450', 'Beaver Creek', 'Stream', 'Iowa', 'IA', 'Worth', 'Fertile', 43.2610667, -93.4265964, ST_GeomFromText('POINT(43.2610667 -93.4265964)', 4326), 43.3838437, -93.4910437, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454451', 'Beaver Creek', 'Stream', 'Iowa', 'IA', 'Cerro Gordo', 'Nora Springs', 43.2377409, -93.1210367, ST_GeomFromText('POINT(43.2377409 -93.1210367)', 4326), 43.3569009, -93.3040947, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454452', 'Beaver Creek', 'Stream', 'Iowa', 'IA', 'Mitchell', 'New Haven', 43.3344148, -92.6701865, ST_GeomFromText('POINT(43.3344148 -92.6701865)', 4326), 43.4302458, -92.6571279, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454453', 'Beaver Creek', 'Stream', 'Iowa', 'IA', 'Howard', 'Lime Springs', 43.4627441, -92.3062811, ST_GeomFromText('POINT(43.4627441 -92.3062811)', 4326), 43.4169113, -92.3968401, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454454', 'Beaver Creek', 'Stream', 'Iowa', 'IA', 'Chickasaw', 'Bassett', 43.0610848, -92.5279608, ST_GeomFromText('POINT(43.0610848 -92.5279608)', 4326), 43.1841383, -92.5851842, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454455', 'Beaver Creek', 'Stream', 'Iowa', 'IA', 'Floyd', 'Rockford', 43.0119146, -92.9376957, ST_GeomFromText('POINT(43.0119146 -92.9376957)', 4326), 43.053854, -93.1685353, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454460', 'Beaver Island', 'Island', 'Iowa', 'IA', 'Clinton', 'Clinton', 41.8125298, -90.204016, ST_GeomFromText('POINT(41.8125298 -90.204016)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454462', 'Beaver Slough', 'Stream', 'Iowa', 'IA', 'Clinton', 'Clinton', 41.7897527, -90.2379059, ST_GeomFromText('POINT(41.7897527 -90.2379059)', 4326), 41.8294444, -90.185, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454466', 'Beaverdam Creek', 'Stream', 'Iowa', 'IA', 'Cerro Gordo', 'Sheffield', 42.9391339, -93.2082579, ST_GeomFromText('POINT(42.9391339 -93.2082579)', 4326), 43.0838495, -93.4535397, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454469', 'Beddows Hollow', 'Valley', 'Iowa', 'IA', 'Clayton', 'Littleport', 42.7513844, -91.2779019, ST_GeomFromText('POINT(42.7513844 -91.2779019)', 4326), 42.7747324, -91.3348011, '1979-04-30', '2015-09-04', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('454470', 'Bedell Creek', 'Stream', 'Iowa', 'IA', 'Pottawattamie', 'Avoca', 41.4713792, -95.3069429, ST_GeomFromText('POINT(41.4713792 -95.3069429)', 4326), 41.5302673, -95.2619417, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454474', 'Bee Branch', 'Stream', 'Iowa', 'IA', 'Dubuque', 'Dubuque North', 42.5272237, -90.6862384, ST_GeomFromText('POINT(42.5272237 -90.6862384)', 4326), 42.5219444, -90.7288889, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454475', 'Bee Branch', 'Stream', 'Iowa', 'IA', 'Monroe', 'Melrose', 40.9622274, -93.0157573, ST_GeomFromText('POINT(40.9622274 -93.0157573)', 4326), 40.9222222, -93.0572222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454476', 'Bee Branch', 'Stream', 'Iowa', 'IA', 'Monroe', 'Hiteman', 41.0722272, -92.9065877, ST_GeomFromText('POINT(41.0722272 -92.9065877)', 4326), 41.0116667, -92.945, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454477', 'Bee Creek', 'Stream', 'Iowa', 'IA', 'Decatur', 'Lacelle', 40.8755532, -93.8468895, ST_GeomFromText('POINT(40.8755532 -93.8468895)', 4326), 40.9522222, -93.8627778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454481', 'Beeds Lake', 'Reservoir', 'Iowa', 'IA', 'Franklin', 'Hampton North', 42.7701608, -93.2435884, ST_GeomFromText('POINT(42.7701608 -93.2435884)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('454485', 'Beemis Creek', 'Stream', 'Iowa', 'IA', 'Floyd', 'Aureola', 42.9708042, -92.901306, ST_GeomFromText('POINT(42.9708042 -92.901306)', 4326), 42.9855241, -93.0774211, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454486', 'Beers Creek', 'Stream', 'Iowa', 'IA', 'Jackson', 'Baldwin', 42.0714059, -90.8218072, ST_GeomFromText('POINT(42.0714059 -90.8218072)', 4326), 42.0886202, -91.1248746, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454491', 'Bell Creek', 'Stream', 'Iowa', 'IA', 'Delaware', 'Hopkinton West', 42.3349969, -91.2551474, ST_GeomFromText('POINT(42.3349969 -91.2551474)', 4326), 42.3341654, -91.1929228, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454492', 'Bell Creek', 'Stream', 'Iowa', 'IA', 'Fayette', 'Elgin', 42.9783137, -91.6523742, ST_GeomFromText('POINT(42.9783137 -91.6523742)', 4326), 42.9788675, -91.7537691, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('454498', 'Bellevue Slough', 'Stream', 'Iowa', 'IA', 'Jackson', 'Bellevue', 42.2997358, -90.4312394, ST_GeomFromText('POINT(42.2997358 -90.4312394)', 4326), 42.3288889, -90.4286111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454509', 'Benedict Hollow', 'Valley', 'Iowa', 'IA', 'Jones', 'Canton', 42.1701102, -90.9160001, ST_GeomFromText('POINT(42.1701102 -90.9160001)', 4326), 42.1911322, -90.9127861, '1979-04-30', '2023-09-29', NULL, NULL, NULL),
  ('454510', 'Benjamin Creek', 'Stream', 'Iowa', 'IA', 'Jasper', 'Newton', 41.7244344, -93.0854766, ST_GeomFromText('POINT(41.7244344 -93.0854766)', 4326), 41.7463889, -93.0288889, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454513', 'Bennett Creek', 'Stream', 'Iowa', 'IA', 'Cedar', 'Lime City', 41.7000242, -91.0443202, ST_GeomFromText('POINT(41.7000242 -91.0443202)', 4326), 41.7750233, -90.9887629, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454514', 'Bennett Creek', 'Stream', 'Iowa', 'IA', 'Tama', 'Montour', 41.9572136, -92.6304714, ST_GeomFromText('POINT(41.9572136 -92.6304714)', 4326), 41.9163889, -92.7102778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454530', 'Berry Branch', 'Stream', 'Iowa', 'IA', 'Henry', 'Lockridge East', 40.9194722, -91.6729416, ST_GeomFromText('POINT(40.9194722 -91.6729416)', 4326), 40.9336365, -91.7673893, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454531', 'Berrys Run', 'Stream', 'Iowa', 'IA', 'Linn', 'Marion', 42.065276, -91.5840645, ST_GeomFromText('POINT(42.065276 -91.5840645)', 4326), 42.1222222, -91.5955556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454596', 'Bickel Branch', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Douds', 40.7614133, -92.122678, ST_GeomFromText('POINT(40.7614133 -92.122678)', 4326), 40.7758572, -92.1321227, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454598', 'Big Bear Creek', 'Stream', 'Iowa', 'IA', 'Iowa', 'Marengo', 41.8100032, -92.0801812, ST_GeomFromText('POINT(41.8100032 -92.0801812)', 4326), 41.8611024, -92.7838055, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454601', 'Big Cook Island', 'Island', 'Iowa', 'IA', 'Clinton', 'Savanna', 42.0291919, -90.159572, ST_GeomFromText('POINT(42.0291919 -90.159572)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('454602', 'Big Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Correctionville', 42.383601, -95.8575102, ST_GeomFromText('POINT(42.383601 -95.8575102)', 4326), 42.3608221, -95.7258393, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454603', 'Big Creek', 'Stream', 'Iowa', 'IA', 'Crawford', 'Denison SW', 42.0638768, -95.3794426, ST_GeomFromText('POINT(42.0638768 -95.3794426)', 4326), 42.201654, -95.3861085, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454604', 'Big Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Bertram', 41.9297268, -91.5507314, ST_GeomFromText('POINT(41.9297268 -91.5507314)', 4326), 42.1363859, -91.4829465, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454605', 'Big Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Des Moines NW', 41.7380434, -93.7079995, ST_GeomFromText('POINT(41.7380434 -93.7079995)', 4326), 42.0552608, -93.8405037, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454606', 'Big Creek', 'Stream', 'Iowa', 'IA', 'Henry', 'Lowell', 40.8542001, -91.479323, ST_GeomFromText('POINT(40.8542001 -91.479323)', 4326), 41.0172544, -91.3373757, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454607', 'Big Creek Lake', 'Lake', 'Iowa', 'IA', 'Polk', 'Polk City', 41.816382, -93.7455701, ST_GeomFromText('POINT(41.816382 -93.7455701)', 4326), NULL, NULL, '1979-04-30', '2018-06-22', NULL, NULL, NULL),
  ('454608', 'Big Elkhorn Creek', 'Stream', 'Iowa', 'IA', 'Cedar', 'Durant', 41.6011384, -90.9320932, ST_GeomFromText('POINT(41.6011384 -90.9320932)', 4326), 41.6180835, -90.8595912, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454611', 'Big Gully', 'Valley', 'Iowa', 'IA', 'Cerro Gordo', 'Mason City SE', 43.1014399, -93.0990521, ST_GeomFromText('POINT(43.1014399 -93.0990521)', 4326), 43.0870052, -93.1421109, '1979-04-30', '2024-07-17', NULL, NULL, NULL),
  ('454612', 'Big Indian Creek', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Farmington', 40.6389235, -91.7471097, ST_GeomFromText('POINT(40.6389235 -91.7471097)', 4326), 40.7230812, -92.1232338, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454613', 'Big Keller Lake', 'Lake', 'Iowa', 'IA', 'Jackson', 'Savanna', 42.1216596, -90.1800553, ST_GeomFromText('POINT(42.1216596 -90.1800553)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('454614', 'Big Lake', 'Lake', 'Iowa', 'IA', 'Louisa', 'Lone Tree', 41.383707, -91.3930709, ST_GeomFromText('POINT(41.383707 -91.3930709)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('454615', 'Big Lake', 'Lake', 'Iowa', 'IA', 'Allamakee', 'De Soto', 43.4020784, -91.2161772, ST_GeomFromText('POINT(43.4020784 -91.2161772)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('454617', 'Big Lewis Lake', 'Lake', 'Iowa', 'IA', 'Linn', 'Center Point', 42.1335624, -91.7953844, ST_GeomFromText('POINT(42.1335624 -91.7953844)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('454619', 'Big Muddy Creek', 'Stream', 'Iowa', 'IA', 'Clay', 'Dickens', 43.1344124, -95.0908261, ST_GeomFromText('POINT(43.1344124 -95.0908261)', 4326), 43.3999609, -95.0133257, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454620', 'Big Pond', 'Reservoir', 'Iowa', 'IA', 'Clayton', 'Guttenberg', 42.7819627, -91.0820827, ST_GeomFromText('POINT(42.7819627 -91.0820827)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('454623', 'Big Sieber Lake', 'Lake', 'Iowa', 'IA', 'Jackson', 'Savanna', 42.1019668, -90.1831838, ST_GeomFromText('POINT(42.1019668 -90.1831838)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454625', 'Big Slough', 'Stream', 'Iowa', 'IA', 'Lee', 'Dallas City', 40.6433748, -91.1968137, ST_GeomFromText('POINT(40.6433748 -91.1968137)', 4326), 40.6980964, -91.1243117, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454627', 'Big Slough', 'Stream', 'Iowa', 'IA', 'Muscatine', 'West Liberty', 41.502802, -91.2771016, ST_GeomFromText('POINT(41.502802 -91.2771016)', 4326), 41.6033532, -91.4121078, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454628', 'Big Slough Creek', 'Stream', 'Iowa', 'IA', 'Louisa', 'Winfield North', 41.2064148, -91.402656, ST_GeomFromText('POINT(41.2064148 -91.402656)', 4326), 41.2666858, -91.6196085, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454629', 'Big Spring', 'Spring', 'Iowa', 'IA', 'Clayton', 'Strawberry Point', 42.7160953, -91.5398677, ST_GeomFromText('POINT(42.7160953 -91.5398677)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('454630', 'Big Spring', 'Spring', 'Iowa', 'IA', 'Clayton', 'Saint Olaf', 42.9102616, -91.470419, ST_GeomFromText('POINT(42.9102616 -91.470419)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454632', 'Big Stony Point', 'Cape', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.4777388, -95.0769389, ST_GeomFromText('POINT(43.4777388 -95.0769389)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454633', 'Big Wall Lake', 'Lake', 'Iowa', 'IA', 'Wright', 'Clarion SW', 42.6189801, -93.6510488, ST_GeomFromText('POINT(42.6189801 -93.6510488)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('454635', 'Big Whisky Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Lawton', 42.38777, -96.2436363, ST_GeomFromText('POINT(42.38777 -96.2436363)', 4326), 42.7080464, -96.1169658, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454636', 'Bigalks Creek', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Cresco NE', 43.4741331, -92.0748854, ST_GeomFromText('POINT(43.4741331 -92.0748854)', 4326), 43.4277448, -92.1960007, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454641', 'Birch Creek', 'Stream', 'Iowa', 'IA', 'Washington', 'Wellman', 41.499736, -91.8390608, ST_GeomFromText('POINT(41.499736 -91.8390608)', 4326), 41.5302902, -91.8754511, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454642', 'Birch Creek', 'Stream', 'Iowa', 'IA', 'Lee', 'Argyle', 40.5697618, -91.5626587, ST_GeomFromText('POINT(40.5697618 -91.5626587)', 4326), 40.5975, -91.5444444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454644', 'Birge Lake (historical)', 'Lake', 'Iowa', 'IA', 'Emmet', 'Gruver', 43.4835678, -94.6799816, ST_GeomFromText('POINT(43.4835678 -94.6799816)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454648', 'Bitter Creek', 'Stream', 'Iowa', 'IA', 'Ida', 'Washta', 42.5327657, -95.7494535, ST_GeomFromText('POINT(42.5327657 -95.7494535)', 4326), 42.4913759, -95.6258386, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454650', 'Black Bridge Spring', 'Spring', 'Iowa', 'IA', 'Dubuque', 'Cassville', 42.6611062, -90.8820722, ST_GeomFromText('POINT(42.6611062 -90.8820722)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('454651', 'Black Cat Creek', 'Stream', 'Iowa', 'IA', 'Kossuth', 'Algona', 43.1141318, -94.2102404, ST_GeomFromText('POINT(43.1141318 -94.2102404)', 4326), 43.3388486, -94.5602553, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454653', 'Black Falls', 'Falls', 'Iowa', 'IA', 'Winneshiek', 'Cresco NE', 43.4177452, -92.0129401, ST_GeomFromText('POINT(43.4177452 -92.0129401)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454654', 'Black Hawk Creek', 'Stream', 'Iowa', 'IA', 'Black Hawk', 'Waterloo North', 42.5058192, -92.3582411, ST_GeomFromText('POINT(42.5058192 -92.3582411)', 4326), 42.4080375, -92.9135331, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454655', 'Black Hawk Creek', 'Stream', 'Iowa', 'IA', 'Jackson', 'Canton', 42.1527908, -90.8787511, ST_GeomFromText('POINT(42.1527908 -90.8787511)', 4326), 42.1677907, -90.8579166, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454656', 'Black Hawk Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Davenport East', 41.5008657, -90.6159712, ST_GeomFromText('POINT(41.5008657 -90.6159712)', 4326), 41.5236421, -90.7051414, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454657', 'Black Hawk Lake', 'Reservoir', 'Iowa', 'IA', 'Sac', 'Lake View', 42.298271, -95.0254648, ST_GeomFromText('POINT(42.298271 -95.0254648)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('454660', 'Black Hawk Marsh', 'Swamp', 'Iowa', 'IA', 'Sac', 'Lake View', 42.2674839, -95.0474906, ST_GeomFromText('POINT(42.2674839 -95.0474906)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454666', 'Blackhawk Island', 'Island', 'Iowa', 'IA', 'Louisa', 'Keithsburg', 41.1000346, -90.9598655, ST_GeomFromText('POINT(41.1000346 -90.9598655)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454674', 'Blair Creek', 'Stream', 'Iowa', 'IA', 'Cerro Gordo', 'Mason City', 43.2399591, -93.2113151, ST_GeomFromText('POINT(43.2399591 -93.2113151)', 4326), 43.294679, -93.2849273, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454686', 'Blank Ridge', 'Ridge', 'Iowa', 'IA', 'Boone', 'Madrid NW', 41.9489201, -93.9087161, ST_GeomFromText('POINT(41.9489201 -93.9087161)', 4326), NULL, NULL, '1979-04-30', '2023-10-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('454693', 'Blood Run', 'Stream', 'Iowa', 'IA', 'Lyon', 'Klondike', 43.4646983, -96.5853224, ST_GeomFromText('POINT(43.4646983 -96.5853224)', 4326), 43.5359, -96.40303, '1979-04-30', '2010-11-22', NULL, NULL, NULL),
  ('454694', 'Bloody Run', 'Stream', 'Iowa', 'IA', 'Floyd', 'Charles City', 43.028584, -92.634632, ST_GeomFromText('POINT(43.028584 -92.634632)', 4326), 43.015, -92.6880556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454695', 'Bloody Run', 'Stream', 'Iowa', 'IA', 'Humboldt', 'Livermore', 42.8313592, -94.1674601, ST_GeomFromText('POINT(42.8313592 -94.1674601)', 4326), 42.8746929, -94.4049709, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454696', 'Bloody Run', 'Stream', 'Iowa', 'IA', 'Clayton', 'Prairie du Chien', 43.0416508, -91.1776299, ST_GeomFromText('POINT(43.0416508 -91.1776299)', 4326), 43.0502607, -91.3704144, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454697', 'Bloody Run', 'Stream', 'Iowa', 'IA', 'Delaware', 'Colesburg', 42.6469364, -91.1445767, ST_GeomFromText('POINT(42.6469364 -91.1445767)', 4326), 42.6238801, -91.2073564, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454698', 'Bloody Run', 'Stream', 'Iowa', 'IA', 'Dubuque', 'Dubuque North', 42.5625, -90.7087383, ST_GeomFromText('POINT(42.5625 -90.7087383)', 4326), 42.6308304, -90.763738, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454707', 'Blue Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Center Point', 42.1758272, -91.8310114, ST_GeomFromText('POINT(42.1758272 -91.8310114)', 4326), 42.3077683, -91.8460084, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454711', 'Blue Lake', 'Reservoir', 'Iowa', 'IA', 'Monona', 'Onawa SW', 42.0312349, -96.1598638, ST_GeomFromText('POINT(42.0312349 -96.1598638)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('454714', 'Blue Spring', 'Spring', 'Iowa', 'IA', 'Fayette', 'Wadena', 42.7827605, -91.6943235, ST_GeomFromText('POINT(42.7827605 -91.6943235)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454715', 'Blue Wing Marsh', 'Lake', 'Iowa', 'IA', 'Palo Alto', 'Graettinger West', 43.1642426, -94.8736712, ST_GeomFromText('POINT(43.1642426 -94.8736712)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('454717', 'Bluebell Creek', 'Stream', 'Iowa', 'IA', 'Dubuque', 'Turkey River', 42.7077705, -91.028462, ST_GeomFromText('POINT(42.7077705 -91.028462)', 4326), 42.6297222, -91.0638889, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454718', 'Bluegrass Creek', 'Stream', 'Iowa', 'IA', 'Audubon', 'Audubon', 41.6535981, -94.8980409, ST_GeomFromText('POINT(41.6535981 -94.8980409)', 4326), 41.808875, -94.9135977, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454719', 'Bluff Creek', 'Stream', 'Iowa', 'IA', 'Mahaska', 'Eddyville', 41.1972295, -92.6843605, ST_GeomFromText('POINT(41.1972295 -92.6843605)', 4326), 41.0777839, -92.8485306, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454720', 'Bluff Creek', 'Stream', 'Iowa', 'IA', 'Boone', 'Boone West', 42.0638701, -93.9699528, ST_GeomFromText('POINT(42.0638701 -93.9699528)', 4326), 42.2269209, -94.1088468, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454729', 'Boatman Island', 'Island', 'Iowa', 'IA', 'Polk', 'Des Moines SE', 41.6086002, -93.6127177, ST_GeomFromText('POINT(41.6086002 -93.6127177)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454734', 'Bohemian Creek', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Fort Atkinson', 43.2383037, -91.989331, ST_GeomFromText('POINT(43.2383037 -91.989331)', 4326), 43.2738585, -92.1293347, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454746', 'Bonell Creek', 'Stream', 'Iowa', 'IA', 'Jefferson', 'Libertyville', 40.9966855, -92.0898985, ST_GeomFromText('POINT(40.9966855 -92.0898985)', 4326), 40.9591667, -92.0961111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454748', 'Bonnell Creek', 'Stream', 'Iowa', 'IA', 'Lee', 'Donnellson', 40.6808707, -91.500989, ST_GeomFromText('POINT(40.6808707 -91.500989)', 4326), 40.7058333, -91.5825, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454749', 'Bonnie Creek', 'Stream', 'Iowa', 'IA', 'Shelby', 'Jacksonville', 41.6383213, -95.1347152, ST_GeomFromText('POINT(41.6383213 -95.1347152)', 4326), 41.6741667, -95.1369444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454750', 'Bonnie Lake', 'Lake', 'Iowa', 'IA', 'Jackson', 'Green Island', 42.1969268, -90.367837, ST_GeomFromText('POINT(42.1969268 -90.367837)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('454755', 'Boone River', 'Stream', 'Iowa', 'IA', 'Hamilton', 'Stratford', 42.310531, -93.9360611, ST_GeomFromText('POINT(42.310531 -93.9360611)', 4326), 43.1396841, -93.8743916, '1979-04-30', '2018-06-22', NULL, NULL, NULL),
  ('454769', 'Boulder Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Prairieburg', 42.2349941, -91.462385, ST_GeomFromText('POINT(42.2349941 -91.462385)', 4326), 42.3016596, -91.4368244, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454770', 'Bogue Creek', 'Stream', 'Iowa', 'IA', 'Henry', 'Salem', 40.848366, -91.5271022, ST_GeomFromText('POINT(40.848366 -91.5271022)', 4326), 40.8169444, -91.5347222, '2000-01-01', NULL, NULL, NULL, NULL),
  ('454781', 'Boy Scout Islands', 'Island', 'Iowa', 'IA', 'Jackson', 'Savanna', 42.1155776, -90.1667946, ST_GeomFromText('POINT(42.1155776 -90.1667946)', 4326), NULL, NULL, '1979-04-30', '2014-05-14', NULL, NULL, NULL),
  ('454783', 'Boyd Branch', 'Stream', 'Iowa', 'IA', 'Appanoose', 'Blakesburg', 40.8869586, -92.663525, ST_GeomFromText('POINT(40.8869586 -92.663525)', 4326), 40.9472222, -92.7136111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454790', 'Boyer Creek', 'Stream', 'Iowa', 'IA', 'Sac', 'Lakeside', 42.5263702, -95.203328, ST_GeomFromText('POINT(42.5263702 -95.203328)', 4326), 42.6025, -95.2391667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454793', 'Boyer River', 'Stream', 'Iowa', 'IA', 'Pottawattamie', 'Loveland', 41.45305, -95.9191782, ST_GeomFromText('POINT(41.45305 -95.9191782)', 4326), 42.5013712, -95.2755519, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('454795', 'Boylan Creek', 'Stream', 'Iowa', 'IA', 'Butler', 'Dumont South', 42.724142, -92.926585, ST_GeomFromText('POINT(42.724142 -92.926585)', 4326), 42.9358019, -93.132978, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454800', 'Bradley Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Tiffin', 41.6294581, -91.745172, ST_GeomFromText('POINT(41.6294581 -91.745172)', 4326), 41.653067, -91.8321188, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454802', 'Bradys Creek', 'Stream', 'Iowa', 'IA', 'Webster', 'Fort Dodge North', 42.5499698, -94.2169072, ST_GeomFromText('POINT(42.5499698 -94.2169072)', 4326), 42.5766375, -94.2771877, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('454805', 'Branch Creek', 'Stream', 'Iowa', 'IA', 'Keokuk', 'Harper', 41.3461226, -92.112401, ST_GeomFromText('POINT(41.3461226 -92.112401)', 4326), 41.3711111, -92.0605556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454807', 'Brandywine Creek', 'Stream', 'Iowa', 'IA', 'Henry', 'Swedesburg', 41.0166942, -91.5715503, ST_GeomFromText('POINT(41.0166942 -91.5715503)', 4326), 41.0980556, -91.5597222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454814', 'Breezy Point', 'Cape', 'Iowa', 'IA', 'Dickinson', 'Milford', 43.362464, -95.1741634, ST_GeomFromText('POINT(43.362464 -95.1741634)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454817', 'Brenton Slough', 'Lake', 'Iowa', 'IA', 'Polk', 'Grimes', 41.725976, -93.8066958, ST_GeomFromText('POINT(41.725976 -93.8066958)', 4326), NULL, NULL, '1979-04-30', '2018-06-22', NULL, NULL, NULL),
  ('454818', 'Brewers Creek', 'Stream', 'Iowa', 'IA', 'Hamilton', 'Webster City', 42.4596965, -93.8113317, ST_GeomFromText('POINT(42.4596965 -93.8113317)', 4326), 42.529693, -93.9266145, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454820', 'Bridge Creek', 'Stream', 'Iowa', 'IA', 'Keokuk', 'Sigourney', 41.3022342, -92.1687913, ST_GeomFromText('POINT(41.3022342 -92.1687913)', 4326), 41.4369536, -92.1882362, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454827', 'Brights Lake', 'Lake', 'Iowa', 'IA', 'Worth', 'Bristol', 43.4902325, -93.4754892, ST_GeomFromText('POINT(43.4902325 -93.4754892)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454835', 'Broadhorn Creek', 'Stream', 'Iowa', 'IA', 'Warren', 'New Virginia', 41.2363828, -93.7213305, ST_GeomFromText('POINT(41.2363828 -93.7213305)', 4326), 41.2072154, -93.834389, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454839', 'Broken Kettle Creek', 'Stream', 'Iowa', 'IA', 'Plymouth', 'Elk Point NE', 42.6274944, -96.5150312, ST_GeomFromText('POINT(42.6274944 -96.5150312)', 4326), 42.8430455, -96.3122477, '1979-04-30', '2018-06-22', NULL, NULL, NULL),
  ('454841', 'Brooke Creek', 'Stream', 'Iowa', 'IA', 'Buena Vista', 'Peterson', 42.8819225, -95.3019435, ST_GeomFromText('POINT(42.8819225 -95.3019435)', 4326), 42.685258, -95.2299967, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('454849', 'Brookside Creek', 'Stream', 'Iowa', 'IA', 'Clinton', 'Clinton', 41.8525293, -90.2456843, ST_GeomFromText('POINT(41.8525293 -90.2456843)', 4326), 41.9083612, -90.2915188, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454851', 'Brophy Creek', 'Stream', 'Iowa', 'IA', 'Clinton', 'Malone', 41.7641973, -90.4465229, ST_GeomFromText('POINT(41.7641973 -90.4465229)', 4326), 41.9486377, -90.388465, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454852', 'Browers Lake', 'Lake', 'Iowa', 'IA', 'Woodbury', 'Salix', 42.3733768, -96.348963, ST_GeomFromText('POINT(42.3733768 -96.348963)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('454853', 'Brown Branch', 'Stream', 'Iowa', 'IA', 'Adams', 'Corning North', 41.0124868, -94.6610814, ST_GeomFromText('POINT(41.0124868 -94.6610814)', 4326), 41.070265, -94.6208027, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454861', 'Brown Creek', 'Stream', 'Iowa', 'IA', 'Wapello', 'Chillicothe', 41.1225104, -92.5893573, ST_GeomFromText('POINT(41.1225104 -92.5893573)', 4326), 41.1825098, -92.5740795, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454862', 'Brown Creek', 'Stream', 'Iowa', 'IA', 'Emmet', 'Estherville', 43.3799588, -94.8105409, ST_GeomFromText('POINT(43.3799588 -94.8105409)', 4326), 43.5221788, -94.763873, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454866', 'Brownfield Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Garber', 42.665823, -91.2529119, ST_GeomFromText('POINT(42.665823 -91.2529119)', 4326), 42.6349905, -91.2368013, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454867', 'Browns Bay', 'Bay', 'Iowa', 'IA', 'Dickinson', 'Milford', 43.3510749, -95.1536072, ST_GeomFromText('POINT(43.3510749 -95.1536072)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454868', 'Browns Lake', 'Lake', 'Iowa', 'IA', 'Warren', 'Pleasantville', 41.460343, -93.3497546, ST_GeomFromText('POINT(41.460343 -93.3497546)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('454869', 'Browns Lake', 'Reservoir', 'Iowa', 'IA', 'Woodbury', 'Salix', 42.3083619, -96.3257448, ST_GeomFromText('POINT(42.3083619 -96.3257448)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('454872', 'Bruce Branch', 'Stream', 'Iowa', 'IA', 'Adair', 'Stuart South', 41.3869327, -94.3519068, ST_GeomFromText('POINT(41.3869327 -94.3519068)', 4326), 41.3627657, -94.4355208, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454873', 'Bruce Creek', 'Stream', 'Iowa', 'IA', 'Fayette', 'Strawberry Point', 42.6730398, -91.5965399, ST_GeomFromText('POINT(42.6730398 -91.5965399)', 4326), 42.7110946, -91.702103, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454879', 'Brush Creek', 'Stream', 'Iowa', 'IA', 'Jackson', 'Delmar North', 42.1202982, -90.5117977, ST_GeomFromText('POINT(42.1202982 -90.5117977)', 4326), 42.2469594, -90.5801296, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454881', 'Brush Creek', 'Stream', 'Iowa', 'IA', 'Appanoose', 'Centerville East', 40.651963, -92.7718627, ST_GeomFromText('POINT(40.651963 -92.7718627)', 4326), 40.6947222, -92.8647222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454882', 'Brush Creek', 'Stream', 'Iowa', 'IA', 'Henry', 'New London', 40.8775329, -91.4801566, ST_GeomFromText('POINT(40.8775329 -91.4801566)', 4326), 40.9466667, -91.4605556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454883', 'Brush Creek', 'Stream', 'Iowa', 'IA', 'Decatur', 'Le Roy', 40.91389, -93.5507712, ST_GeomFromText('POINT(40.91389 -93.5507712)', 4326), 40.9047222, -93.6197222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454884', 'Brush Creek', 'Stream', 'Iowa', 'IA', 'Henry', 'Trenton', 41.0036358, -91.7032213, ST_GeomFromText('POINT(41.0036358 -91.7032213)', 4326), 41.0741849, -91.9793404, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454885', 'Brush Creek', 'Stream', 'Iowa', 'IA', 'Wapello', 'Ottumwa South', 40.8872398, -92.4512971, ST_GeomFromText('POINT(40.8872398 -92.4512971)', 4326), 40.9239033, -92.5907453, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454886', 'Brush Creek', 'Stream', 'Iowa', 'IA', 'Des Moines', 'Dallas City', 40.7203182, -91.1776468, ST_GeomFromText('POINT(40.7203182 -91.1776468)', 4326), 40.8186494, -91.2368158, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454887', 'Brush Creek', 'Stream', 'Iowa', 'IA', 'Decatur', 'Leon', 40.7133373, -93.641053, ST_GeomFromText('POINT(40.7133373 -93.641053)', 4326), 40.7913901, -93.7302208, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('454888', 'Brush Creek', 'Stream', 'Iowa', 'IA', 'Marion', 'Otley', 41.4222166, -93.0982583, ST_GeomFromText('POINT(41.4222166 -93.0982583)', 4326), 41.5444361, -93.1285356, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454889', 'Brush Creek', 'Stream', 'Iowa', 'IA', 'Wayne', 'Corydon NE', 40.9130576, -93.3082658, ST_GeomFromText('POINT(40.9130576 -93.3082658)', 4326), 40.8427813, -93.3702122, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454890', 'Brush Creek', 'Stream', 'Iowa', 'IA', 'Marshall', 'Gilman', 41.9544338, -92.8626977, ST_GeomFromText('POINT(41.9544338 -92.8626977)', 4326), 41.8302694, -92.7982494, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454891', 'Brush Creek', 'Stream', 'Iowa', 'IA', 'Fayette', 'Wadena', 42.8349825, -91.6368187, ST_GeomFromText('POINT(42.8349825 -91.6368187)', 4326), 42.7402609, -91.7348828, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454892', 'Brush Creek', 'Stream', 'Iowa', 'IA', 'Clarke', 'Woodburn', 41.0030545, -93.5607705, ST_GeomFromText('POINT(41.0030545 -93.5607705)', 4326), 41.0166645, -93.6532727, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454897', 'Brushy Creek', 'Stream', 'Iowa', 'IA', 'Webster', 'Stratford', 42.344696, -93.9749514, ST_GeomFromText('POINT(42.344696 -93.9749514)', 4326), 42.5966367, -94.0560653, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454898', 'Brushy Creek', 'Stream', 'Iowa', 'IA', 'Guthrie', 'Guthrie Center East', 41.6430425, -94.440524, ST_GeomFromText('POINT(41.6430425 -94.440524)', 4326), 42.0624851, -95.0280465, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454899', 'Brushy Creek', 'Stream', 'Iowa', 'IA', 'Taylor', 'Hopkins', 40.5991553, -94.8196934, ST_GeomFromText('POINT(40.5991553 -94.8196934)', 4326), 40.745543, -94.7855277, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454901', 'Bryan Hill', 'Summit', 'Iowa', 'IA', 'Lee', 'Argyle', 40.5411106, -91.616692, ST_GeomFromText('POINT(40.5411106 -91.616692)', 4326), NULL, NULL, '1979-04-30', '2023-09-29', NULL, NULL, NULL),
  ('454911', 'Buchanan Creek', 'Stream', 'Iowa', 'IA', 'Page', 'Clearmont', 40.604713, -95.0180323, ST_GeomFromText('POINT(40.604713 -95.0180323)', 4326), 40.7241558, -94.9174759, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('454913', 'Buck Branch', 'Stream', 'Iowa', 'IA', 'Appanoose', 'Mystic', 40.8069563, -92.875754, ST_GeomFromText('POINT(40.8069563 -92.875754)', 4326), 40.9019536, -92.8876983, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454915', 'Buck Creek', 'Stream', 'Iowa', 'IA', 'Page', 'Coin', 40.6836056, -95.2163712, ST_GeomFromText('POINT(40.6836056 -95.2163712)', 4326), 40.7094444, -95.1266667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454916', 'Buck Creek', 'Stream', 'Iowa', 'IA', 'Warren', 'Milo', 41.2588843, -93.3888224, ST_GeomFromText('POINT(41.2588843 -93.3888224)', 4326), 41.2863889, -93.4047222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454917', 'Buck Creek', 'Stream', 'Iowa', 'IA', 'Jackson', 'Fulton', 42.1736266, -90.7223565, ST_GeomFromText('POINT(42.1736266 -90.7223565)', 4326), 42.2105556, -90.7119444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454918', 'Buck Creek', 'Stream', 'Iowa', 'IA', 'Buchanan', 'Littleton', 42.5663746, -92.0454537, ST_GeomFromText('POINT(42.5663746 -92.0454537)', 4326), 42.9161111, -92.175, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454920', 'Buck Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Guttenberg', 42.836933, -91.1070735, ST_GeomFromText('POINT(42.836933 -91.1070735)', 4326), 42.9263747, -91.2867995, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454921', 'Buck Creek', 'Stream', 'Iowa', 'IA', 'Hamilton', 'Webster City', 42.4996957, -93.8057755, ST_GeomFromText('POINT(42.4996957 -93.8057755)', 4326), 42.6469182, -93.6577124, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454922', 'Buck Creek', 'Stream', 'Iowa', 'IA', 'Delaware', 'Hopkinton West', 42.3566625, -91.271258, ST_GeomFromText('POINT(42.3566625 -91.271258)', 4326), 42.3649894, -91.5046013, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454923', 'Buck Creek', 'Stream', 'Iowa', 'IA', 'Crawford', 'Dow City', 41.9533217, -95.4480556, ST_GeomFromText('POINT(41.9533217 -95.4480556)', 4326), 41.9352657, -95.3447202, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454924', 'Buck Creek', 'Stream', 'Iowa', 'IA', 'Cass', 'Atlantic', 41.398323, -95.0388785, ST_GeomFromText('POINT(41.398323 -95.0388785)', 4326), 41.5869324, -94.9724874, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('454925', 'Buck Creek', 'Stream', 'Iowa', 'IA', 'Washington', 'Hills', 41.5047425, -91.5048853, ST_GeomFromText('POINT(41.5047425 -91.5048853)', 4326), 41.5591874, -91.4193291, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454926', 'Buck Creek', 'Stream', 'Iowa', 'IA', 'Jasper', 'Monroe', 41.5441598, -93.0271434, ST_GeomFromText('POINT(41.5441598 -93.0271434)', 4326), 41.5788797, -93.1652032, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454927', 'Buck Creek', 'Stream', 'Iowa', 'IA', 'Mahaska', 'Union Mills', 41.4680583, -92.5924115, ST_GeomFromText('POINT(41.4680583 -92.5924115)', 4326), 41.553333, -92.6340785, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454931', 'Buck Run', 'Stream', 'Iowa', 'IA', 'Sac', 'Newell West', 42.5369244, -95.0549904, ST_GeomFromText('POINT(42.5369244 -95.0549904)', 4326), 42.5930356, -95.1302707, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454932', 'Buck Run', 'Stream', 'Iowa', 'IA', 'Carroll', 'Lanesboro', 42.1652617, -94.7152586, ST_GeomFromText('POINT(42.1652617 -94.7152586)', 4326), 42.1522065, -94.7869277, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454937', 'Buckeye Creek', 'Stream', 'Iowa', 'IA', 'Iowa', 'Ladora', 41.8402778, -92.2015721, ST_GeomFromText('POINT(41.8402778 -92.2015721)', 4326), 41.961107, -92.2690742, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454938', 'Buckeye Creek', 'Stream', 'Iowa', 'IA', 'Wapello', 'Abingdon', 41.0441834, -92.1907352, ST_GeomFromText('POINT(41.0441834 -92.1907352)', 4326), 41.0191824, -92.3154606, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454941', 'Buckley Creek', 'Stream', 'Iowa', 'IA', 'Mahaska', 'Peoria', 41.4372214, -92.8074172, ST_GeomFromText('POINT(41.4372214 -92.8074172)', 4326), 41.582773, -92.8613056, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454943', 'Bucks Branch', 'Stream', 'Iowa', 'IA', 'Dallas', 'Dawson', 41.8424852, -94.1455145, ST_GeomFromText('POINT(41.8424852 -94.1455145)', 4326), 41.8358333, -94.2283333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454944', 'Bud Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Cordova', 41.6569768, -90.3437406, ST_GeomFromText('POINT(41.6569768 -90.3437406)', 4326), 41.643088, -90.4023535, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('454953', 'Buffalo Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Tiffin', 41.7083461, -91.7096174, ST_GeomFromText('POINT(41.7083461 -91.7096174)', 4326), 41.7452778, -91.6277778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454954', 'Buffalo Creek', 'Stream', 'Iowa', 'IA', 'Benton', 'Blairstown', 41.9075012, -92.0474036, ST_GeomFromText('POINT(41.9075012 -92.0474036)', 4326), 41.9625, -92.0347222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454955', 'Buffalo Creek', 'Stream', 'Iowa', 'IA', 'Ida', 'Ida Grove NW', 42.3766532, -95.4505552, ST_GeomFromText('POINT(42.3766532 -95.4505552)', 4326), 42.4077778, -95.3780556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454956', 'Buffalo Creek', 'Stream', 'Iowa', 'IA', 'Cherokee', 'Pierson', 42.5666552, -95.8097336, ST_GeomFromText('POINT(42.5666552 -95.8097336)', 4326), 42.6102778, -95.8505556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454957', 'Buffalo Creek', 'Stream', 'Iowa', 'IA', 'Kossuth', 'Woden', 43.244961, -93.979397, ST_GeomFromText('POINT(43.244961 -93.979397)', 4326), 43.2777347, -93.7713319, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454958', 'Buffalo Creek', 'Stream', 'Iowa', 'IA', 'Winnebago', 'Forest City', 43.2791226, -93.6566047, ST_GeomFromText('POINT(43.2791226 -93.6566047)', 4326), 43.2927342, -93.7532757, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454959', 'Buffalo Creek', 'Stream', 'Iowa', 'IA', 'Franklin', 'Hampton North', 42.8149708, -93.239369, ST_GeomFromText('POINT(42.8149708 -93.239369)', 4326), 42.8483023, -93.4388161, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454960', 'Buffalo Creek', 'Stream', 'Iowa', 'IA', 'Jones', 'Anamosa', 42.1027813, -91.3001605, ST_GeomFromText('POINT(42.1027813 -91.3001605)', 4326), 42.5602623, -91.7568321, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454961', 'Buffalo Creek', 'Stream', 'Iowa', 'IA', 'Crawford', 'Denison', 42.0388768, -95.3561089, ST_GeomFromText('POINT(42.0388768 -95.3561089)', 4326), 42.1174878, -95.404165, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454966', 'Buffalo Ridge', 'Ridge', 'Iowa', 'IA', 'Boone', 'Madrid NW', 41.9467776, -93.9105609, ST_GeomFromText('POINT(41.9467776 -93.9105609)', 4326), NULL, NULL, '1979-04-30', '2023-10-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('454969', 'Buffington Creek', 'Stream', 'Iowa', 'IA', 'Louisa', 'Winfield North', 41.2144705, -91.379322, ST_GeomFromText('POINT(41.2144705 -91.379322)', 4326), 41.2080556, -91.4844444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454970', 'Bulger Creek', 'Stream', 'Iowa', 'IA', 'Dallas', 'Waukee', 41.5388778, -93.981618, ST_GeomFromText('POINT(41.5388778 -93.981618)', 4326), 41.4780445, -94.1016214, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454971', 'Bulgers Run', 'Stream', 'Iowa', 'IA', 'Washington', 'Riverside', 41.4752961, -91.6223881, ST_GeomFromText('POINT(41.4752961 -91.6223881)', 4326), 41.5147389, -91.687946, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454972', 'Bull Creek', 'Stream', 'Iowa', 'IA', 'Adams', 'Carbon', 41.0502651, -94.8302558, ST_GeomFromText('POINT(41.0502651 -94.8302558)', 4326), 41.0486111, -94.7883333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454974', 'Bull Run', 'Stream', 'Iowa', 'IA', 'Warren', 'Norwalk', 41.4444353, -93.6718857, ST_GeomFromText('POINT(41.4444353 -93.6718857)', 4326), 41.4252778, -93.6677778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454975', 'Bull Run', 'Stream', 'Iowa', 'IA', 'Plymouth', 'Ireton SW', 42.7508263, -96.4564182, ST_GeomFromText('POINT(42.7508263 -96.4564182)', 4326), 42.8022132, -96.3544713, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454976', 'Bullhead Lake', 'Lake', 'Iowa', 'IA', 'Cedar', 'Oxford Junction', 41.9367763, -90.9227129, ST_GeomFromText('POINT(41.9367763 -90.9227129)', 4326), NULL, NULL, '1979-04-30', '2018-06-07', NULL, NULL, NULL),
  ('454979', 'Buncombe Creek', 'Stream', 'Iowa', 'IA', 'Dubuque', 'Bernard', 42.3269535, -90.7659647, ST_GeomFromText('POINT(42.3269535 -90.7659647)', 4326), 42.3919518, -90.6670734, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454982', 'Bunker Chute', 'Stream', 'Iowa', 'IA', 'Dubuque', 'Cassville', 42.6722169, -90.8954056, ST_GeomFromText('POINT(42.6722169 -90.8954056)', 4326), 42.6813889, -90.9361111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('454985', 'Bur Oak Lake', 'Lake', 'Iowa', 'IA', 'Emmet', 'Ingham Lake', 43.2886967, -94.7475855, ST_GeomFromText('POINT(43.2886967 -94.7475855)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('454996', 'Burnett Creek', 'Stream', 'Iowa', 'IA', 'Marshall', 'Marshalltown', 42.0685987, -92.9029775, ST_GeomFromText('POINT(42.0685987 -92.9029775)', 4326), 42.1099876, -92.7874217, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455001', 'Burr Oak Creek', 'Stream', 'Iowa', 'IA', 'Sioux', 'Rock Valley', 43.2419247, -96.2533578, ST_GeomFromText('POINT(43.2419247 -96.2533578)', 4326), 43.2244235, -96.0836324, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455002', 'Burr Oak Creek', 'Stream', 'Iowa', 'IA', 'Mitchell', 'New Haven', 43.3144153, -92.6771318, ST_GeomFromText('POINT(43.3144153 -92.6771318)', 4326), 43.4010794, -92.8338027, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455003', 'Burr Oak Creek', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Fort Atkinson', 43.2383037, -91.9851641, ST_GeomFromText('POINT(43.2383037 -91.9851641)', 4326), 43.2663594, -91.947384, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455004', 'Burr Oak Creek', 'Stream', 'Iowa', 'IA', 'Jefferson', 'Trenton', 41.073077, -91.7437787, ST_GeomFromText('POINT(41.073077 -91.7437787)', 4326), 41.1450175, -91.8737827, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455005', 'Burr Oak Creek', 'Stream', 'Iowa', 'IA', 'Jasper', 'Kellogg', 41.7274917, -92.929361, ST_GeomFromText('POINT(41.7274917 -92.929361)', 4326), 41.7730467, -92.9260278, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455006', 'Burr Oak Creek', 'Stream', 'Iowa', 'IA', 'Davis', 'Selma', 40.7816889, -92.2265703, ST_GeomFromText('POINT(40.7816889 -92.2265703)', 4326), 40.760022, -92.3199057, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455011', 'Bush Branch', 'Stream', 'Iowa', 'IA', 'Madison', 'Pitzer', 41.3108226, -94.2130118, ST_GeomFromText('POINT(41.3108226 -94.2130118)', 4326), 41.3388775, -94.3155159, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455012', 'Buss Creek', 'Stream', 'Iowa', 'IA', 'Crawford', 'Dunlap NE', 41.9133217, -95.5552804, ST_GeomFromText('POINT(41.9133217 -95.5552804)', 4326), 41.9813889, -95.5805556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455014', 'Butcher Creek', 'Stream', 'Iowa', 'IA', 'Marion', 'Knoxville SW', 41.3377731, -93.1621497, ST_GeomFromText('POINT(41.3377731 -93.1621497)', 4326), 41.3877707, -93.2565964, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('455015', 'Butcher Creek', 'Stream', 'Iowa', 'IA', 'Warren', 'Hartford', 41.4824906, -93.4018777, ST_GeomFromText('POINT(41.4824906 -93.4018777)', 4326), 41.4033254, -93.5138253, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455021', 'Butter Creek', 'Stream', 'Iowa', 'IA', 'Davis', 'Floris', 40.8075205, -92.3593508, ST_GeomFromText('POINT(40.8075205 -92.3593508)', 4326), 40.8191865, -92.4099073, '2000-01-01', NULL, NULL, NULL, NULL),
  ('455022', 'Butler Drain', 'Stream', 'Iowa', 'IA', 'Des Moines', 'Oakville', 41.0453132, -91.0048661, ST_GeomFromText('POINT(41.0453132 -91.0048661)', 4326), 41.0577778, -91.0611111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455024', 'Buttermilk Creek', 'Stream', 'Iowa', 'IA', 'Wright', 'Eagle Grove', 42.7374712, -93.9235578, ST_GeomFromText('POINT(42.7374712 -93.9235578)', 4326), 42.7455556, -93.9077778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455025', 'Butternut Hollow', 'Valley', 'Iowa', 'IA', 'Clayton', 'Garnavillo', 42.8359064, -91.1329262, ST_GeomFromText('POINT(42.8359064 -91.1329262)', 4326), 42.8606726, -91.132059, '1979-04-30', '2015-09-04', NULL, NULL, NULL),
  ('455026', 'Buttrick Creek', 'Stream', 'Iowa', 'IA', 'Greene', 'Cooper', 41.9719276, -94.308299, ST_GeomFromText('POINT(41.9719276 -94.308299)', 4326), 42.0499814, -94.2810759, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455027', 'Buzzard Creek', 'Stream', 'Iowa', 'IA', 'Appanoose', 'Blakesburg', 40.8875136, -92.6965816, ST_GeomFromText('POINT(40.8875136 -92.6965816)', 4326), 40.862791, -92.7507499, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455028', 'Byers Branch', 'Stream', 'Iowa', 'IA', 'Jasper', 'Mingo', 41.7841547, -93.2840948, ST_GeomFromText('POINT(41.7841547 -93.2840948)', 4326), 41.8088769, -93.3768761, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455032', 'Q Pond', 'Reservoir', 'Iowa', 'IA', 'Clarke', 'Osceola', 41.0422763, -93.7800622, ST_GeomFromText('POINT(41.0422763 -93.7800622)', 4326), NULL, NULL, '2000-01-01', '2018-06-12', NULL, NULL, NULL),
  ('455042', 'Calamus Creek', 'Stream', 'Iowa', 'IA', 'Clinton', 'Wheatland', 41.823358, -90.7998668, ST_GeomFromText('POINT(41.823358 -90.7998668)', 4326), 41.8647478, -90.6695841, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('455043', 'Calamus Creek', 'Stream', 'Iowa', 'IA', 'Carroll', 'Coon Rapids North', 41.9063748, -94.7102578, ST_GeomFromText('POINT(41.9063748 -94.7102578)', 4326), 41.9433333, -94.7063889, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455044', 'Calamus Creek', 'Stream', 'Iowa', 'IA', 'Kossuth', 'Lone Rock', 43.159131, -94.2891329, ST_GeomFromText('POINT(43.159131 -94.2891329)', 4326), 43.2971832, -94.4308062, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455045', 'Calamus Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Loring', 41.8583212, -93.3882654, ST_GeomFromText('POINT(41.8583212 -93.3882654)', 4326), 41.9355433, -93.492158, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455048', 'Caleb Creek', 'Stream', 'Iowa', 'IA', 'Decatur', 'Lineville', 40.6066729, -93.5968868, ST_GeomFromText('POINT(40.6066729 -93.5968868)', 4326), 40.746117, -93.4529929, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455052', 'Calhoun Creek', 'Stream', 'Iowa', 'IA', 'Marion', 'Knoxville NW', 41.4341603, -93.1332592, ST_GeomFromText('POINT(41.4341603 -93.1332592)', 4326), 41.5955453, -93.2357609, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455059', 'Calmus Creek', 'Stream', 'Iowa', 'IA', 'Cerro Gordo', 'Mason City', 43.1663506, -93.1927034, ST_GeomFromText('POINT(43.1663506 -93.1927034)', 4326), 43.2230125, -93.3738174, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455109', 'Camp Creek', 'Stream', 'Iowa', 'IA', 'Fremont', 'Randolph', 40.8222218, -95.589718, ST_GeomFromText('POINT(40.8222218 -95.589718)', 4326), 40.8033335, -95.6783317, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455110', 'Camp Creek', 'Stream', 'Iowa', 'IA', 'Black Hawk', 'Littleton', 42.5433194, -92.0765659, ST_GeomFromText('POINT(42.5433194 -92.0765659)', 4326), 42.5297222, -92.1222222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455111', 'Camp Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Luton', 42.3472139, -96.1825223, ST_GeomFromText('POINT(42.3472139 -96.1825223)', 4326), 42.4052697, -96.1239091, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455112', 'Camp Creek', 'Stream', 'Iowa', 'IA', 'Calhoun', 'Yetter', 42.2797051, -94.8444294, ST_GeomFromText('POINT(42.2797051 -94.8444294)', 4326), 42.5019226, -94.6785906, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('455113', 'Camp Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Pleasantville', 41.4924905, -93.3293756, ST_GeomFromText('POINT(41.4924905 -93.3293756)', 4326), 41.6913775, -93.422989, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455114', 'Camp Creek', 'Stream', 'Iowa', 'IA', 'Cass', 'Walnut', 41.4136011, -95.1369375, ST_GeomFromText('POINT(41.4136011 -95.1369375)', 4326), 41.5438777, -95.0588791, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455115', 'Camp Creek', 'Stream', 'Iowa', 'IA', 'Washington', 'Kalona', 41.4680726, -91.6904456, ST_GeomFromText('POINT(41.4680726 -91.6904456)', 4326), 41.4111265, -91.7685032, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455143', 'Campbell Creek', 'Stream', 'Iowa', 'IA', 'Harrison', 'Hard Scratch', 41.5358248, -95.6605624, ST_GeomFromText('POINT(41.5358248 -95.6605624)', 4326), 41.5811016, -95.6088943, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455144', 'Willow Lake', 'Lake', 'Iowa', 'IA', 'Clinton', 'Camanche', 41.7885795, -90.2900783, ST_GeomFromText('POINT(41.7885795 -90.2900783)', 4326), NULL, NULL, '2000-01-01', '2023-05-23', 'Official', 'Board Decision', '1989-01-01'),
  ('455145', 'Campetine Creek', 'Stream', 'Iowa', 'IA', 'Marion', 'Knoxville', 41.3683297, -93.0368683, ST_GeomFromText('POINT(41.3683297 -93.0368683)', 4326), 41.3022222, -93.1133333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455150', 'Cane Branch', 'Stream', 'Iowa', 'IA', 'Lucas', 'Chariton', 41.1194424, -93.3235431, ST_GeomFromText('POINT(41.1194424 -93.3235431)', 4326), 41.1327756, -93.2971536, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455153', 'Canoe Creek', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Hanover', 43.3674729, -91.6168122, ST_GeomFromText('POINT(43.3674729 -91.6168122)', 4326), 43.5049674, -91.8484874, '1979-04-30', '2018-07-13', NULL, NULL, NULL),
  ('455156', 'Canyon Creek', 'Stream', 'Iowa', 'IA', 'Fremont', 'Randolph', 40.7830555, -95.5916616, ST_GeomFromText('POINT(40.7830555 -95.5916616)', 4326), 40.8052779, -95.6513863, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455165', 'Carlan Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Colesburg', 42.7324901, -91.1612417, ST_GeomFromText('POINT(42.7324901 -91.1612417)', 4326), 42.6947222, -91.2097222, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('455171', 'Carls Creek', 'Stream', 'Iowa', 'IA', 'Appanoose', 'Plano', 40.7988959, -93.1152058, ST_GeomFromText('POINT(40.7988959 -93.1152058)', 4326), 40.7513889, -93.0752778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455177', 'Carney Hollow', 'Valley', 'Iowa', 'IA', 'Clayton', 'Cassville', 42.6923882, -90.9932215, ST_GeomFromText('POINT(42.6923882 -90.9932215)', 4326), 42.6729883, -91.009327, '1979-04-30', '2023-09-29', NULL, NULL, NULL),
  ('455179', 'Carp Lake', 'Lake', 'Iowa', 'IA', 'Scott', 'Andalusia', 41.482741, -90.6403915, ST_GeomFromText('POINT(41.482741 -90.6403915)', 4326), NULL, NULL, '1979-04-30', '2023-05-23', NULL, NULL, NULL),
  ('455184', 'Carruthers Creek', 'Stream', 'Iowa', 'IA', 'Monroe', 'Attica', 41.1711114, -93.0546477, ST_GeomFromText('POINT(41.1711114 -93.0546477)', 4326), 41.1111101, -93.2085404, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455188', 'Carson Creek', 'Stream', 'Iowa', 'IA', 'Jasper', 'Monroe', 41.5872144, -93.0496436, ST_GeomFromText('POINT(41.5872144 -93.0496436)', 4326), 41.6749913, -93.0226972, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455190', 'Carter Creek', 'Stream', 'Iowa', 'IA', 'Plymouth', 'Hinton', 42.6472143, -96.2805813, ST_GeomFromText('POINT(42.6472143 -96.2805813)', 4326), 42.687769, -96.1933567, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455197', 'Case Lake', 'Lake', 'Iowa', 'IA', 'Polk', 'Des Moines SE', 41.565382, -93.564625, ST_GeomFromText('POINT(41.565382 -93.564625)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('455199', 'Casino Beach', 'Beach', 'Iowa', 'IA', 'Buena Vista', 'Storm Lake', 42.6260918, -95.2277739, ST_GeomFromText('POINT(42.6260918 -95.2277739)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455211', 'Catfish Branch', 'Stream', 'Iowa', 'IA', 'Wayne', 'Plano', 40.8280627, -93.0765934, ST_GeomFromText('POINT(40.8280627 -93.0765934)', 4326), 40.8555556, -93.1136111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455212', 'Catfish Creek', 'Stream', 'Iowa', 'IA', 'Dubuque', 'Dubuque South', 42.4680598, -90.6448501, ST_GeomFromText('POINT(42.4680598 -90.6448501)', 4326), 42.4311153, -90.8104078, '1979-04-30', '2018-07-13', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('455213', 'Catherall Creek', 'Stream', 'Iowa', 'IA', 'Appanoose', 'Centerville East', 40.7475142, -92.8388085, ST_GeomFromText('POINT(40.7475142 -92.8388085)', 4326), 40.7383469, -92.8754765, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455214', 'Caton Branch', 'Stream', 'Iowa', 'IA', 'Boone', 'Luther', 41.8830411, -93.8649493, ST_GeomFromText('POINT(41.8830411 -93.8649493)', 4326), 41.9255396, -93.9813422, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455217', 'Cavitt Creek', 'Stream', 'Iowa', 'IA', 'Warren', 'Scotch Ridge', 41.4266581, -93.5821606, ST_GeomFromText('POINT(41.4266581 -93.5821606)', 4326), 41.359437, -93.5960498, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455227', 'Cedar Creek', 'Stream', 'Iowa', 'IA', 'Henry', 'Hillsboro', 40.873917, -91.7196094, ST_GeomFromText('POINT(40.873917 -91.7196094)', 4326), 41.2333426, -92.5629684, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455228', 'Cedar Creek', 'Stream', 'Iowa', 'IA', 'Sac', 'Sac City East', 42.4022036, -94.9802663, ST_GeomFromText('POINT(42.4022036 -94.9802663)', 4326), 42.8977503, -94.9127644, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455229', 'Cedar Creek', 'Stream', 'Iowa', 'IA', 'Hardin', 'Eldora', 42.3252611, -93.0671463, ST_GeomFromText('POINT(42.3252611 -93.0671463)', 4326), 42.3708156, -92.9763117, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455230', 'Cedar Creek', 'Stream', 'Iowa', 'IA', 'Greene', 'Scranton', 42.12415, -94.5841429, ST_GeomFromText('POINT(42.12415 -94.5841429)', 4326), 42.296647, -94.5016406, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455231', 'Cedar Creek', 'Stream', 'Iowa', 'IA', 'Jackson', 'Fulton', 42.1391844, -90.649578, ST_GeomFromText('POINT(42.1391844 -90.649578)', 4326), 42.1400185, -90.5948546, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455232', 'Cedar Creek', 'Stream', 'Iowa', 'IA', 'Washington', 'Washington', 41.2583501, -91.7007228, ST_GeomFromText('POINT(41.2583501 -91.7007228)', 4326), 41.3066814, -91.8237824, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455233', 'Cedar Creek', 'Stream', 'Iowa', 'IA', 'Henry', 'Lowell', 40.8047585, -91.3784861, ST_GeomFromText('POINT(40.8047585 -91.3784861)', 4326), 40.9000346, -91.3543198, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('455234', 'Cedar Creek', 'Stream', 'Iowa', 'IA', 'Madison', 'Cumming', 41.3991575, -93.854113, ST_GeomFromText('POINT(41.3991575 -93.854113)', 4326), 41.3316564, -94.1341208, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455235', 'Cedar Creek', 'Stream', 'Iowa', 'IA', 'Mahaska', 'Leighton', 41.260281, -92.8171421, ST_GeomFromText('POINT(41.260281 -92.8171421)', 4326), 40.9880568, -93.2060403, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455236', 'Cedar Creek', 'Stream', 'Iowa', 'IA', 'Keokuk', 'Sigourney', 41.3072339, -92.2207371, ST_GeomFromText('POINT(41.3072339 -92.2207371)', 4326), 41.4919494, -92.4151852, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455238', 'Cedar Creek Church', 'Lake', 'Iowa', 'IA', 'Henry', 'Mount Pleasant', 40.9876826, -91.5447302, ST_GeomFromText('POINT(40.9876826 -91.5447302)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('455246', 'Cedar Island', 'Island', 'Iowa', 'IA', 'Jones', 'Morley', 42.0475089, -91.1840458, ST_GeomFromText('POINT(42.0475089 -91.1840458)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455247', 'Cedar Lake', 'Lake', 'Iowa', 'IA', 'Linn', 'Cedar Rapids South', 41.99107, -91.6682535, ST_GeomFromText('POINT(41.99107 -91.6682535)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('455248', 'Cedar Lake', 'Reservoir', 'Iowa', 'IA', 'Madison', 'Winterset', 41.3698869, -94.0003166, ST_GeomFromText('POINT(41.3698869 -94.0003166)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('455271', 'Center Branch Fox River', 'Stream', 'Iowa', 'IA', 'Davis', 'Paris', 40.7522415, -92.5976897, ST_GeomFromText('POINT(40.7522415 -92.5976897)', 4326), 40.7708494, -92.7318605, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455290', 'Center Lake', 'Lake', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.4126294, -95.1359473, ST_GeomFromText('POINT(43.4126294 -95.1359473)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('455336', 'Chalstroms Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.3871849, -95.1141616, ST_GeomFromText('POINT(43.3871849 -95.1141616)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('455351', 'Chariton Creek', 'Stream', 'Iowa', 'IA', 'Clarke', 'Le Roy', 40.9380561, -93.5535487, ST_GeomFromText('POINT(40.9380561 -93.5535487)', 4326), 40.9113875, -93.7599426, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455352', 'Chariton River', 'Stream', 'Missouri', 'MO', 'Chariton', 'Cambridge', 39.312818, -92.9581547, ST_GeomFromText('POINT(39.312818 -92.9581547)', 4326), 40.8305593, -93.5088266, '1979-04-30', '2018-05-31', NULL, NULL, NULL),
  ('455366', 'Cheever Lake', 'Lake', 'Iowa', 'IA', 'Emmet', 'Terril', 43.372835, -94.8836972, ST_GeomFromText('POINT(43.372835 -94.8836972)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('455369', 'Chequest Creek', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Keosauqua', 40.7491936, -91.9893403, ST_GeomFromText('POINT(40.7491936 -91.9893403)', 4326), 40.8016864, -92.5029647, '1979-04-30', '2014-04-07', NULL, NULL, NULL),
  ('455372', 'Cherry Creek', 'Stream', 'Iowa', 'IA', 'Madison', 'Cumming', 41.4772123, -93.8085566, ST_GeomFromText('POINT(41.4772123 -93.8085566)', 4326), 41.4891667, -93.8730556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455373', 'Cherry Creek', 'Stream', 'Iowa', 'IA', 'Jasper', 'Monroe', 41.6208246, -93.0893669, ST_GeomFromText('POINT(41.6208246 -93.0893669)', 4326), 41.7980448, -93.1060331, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455374', 'Cherry Creek', 'Stream', 'Iowa', 'IA', 'Clinton', 'Malone', 41.8203073, -90.4045769, ST_GeomFromText('POINT(41.8203073 -90.4045769)', 4326), 41.9250267, -90.4804113, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455376', 'Cherry Lake', 'Lake', 'Iowa', 'IA', 'Tama', 'Tama', 41.9613482, -92.5851364, ST_GeomFromText('POINT(41.9613482 -92.5851364)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('455377', 'Cherry Valley', 'Valley', 'Iowa', 'IA', 'Clayton', 'Turkey River', 42.6984588, -91.073705, ST_GeomFromText('POINT(42.6984588 -91.073705)', 4326), 42.6673304, -91.0538259, '1979-04-30', '2023-10-07', NULL, NULL, NULL),
  ('455378', 'Cheslea Creek', 'Stream', 'Iowa', 'IA', 'Cerro Gordo', 'Mason City', 43.1555165, -93.2229815, ST_GeomFromText('POINT(43.1555165 -93.2229815)', 4326), 43.084962, -93.2538152, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('455388', 'Chicken Creek', 'Stream', 'Iowa', 'IA', 'Marshall', 'Marshalltown', 42.0905427, -92.9510335, ST_GeomFromText('POINT(42.0905427 -92.9510335)', 4326), 42.1749857, -92.9843678, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455389', 'Chicken Creek', 'Stream', 'Iowa', 'IA', 'Muscatine', 'Muscatine NW', 41.4833593, -91.1718207, ST_GeomFromText('POINT(41.4833593 -91.1718207)', 4326), 41.465305, -91.0993184, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455390', 'Chicken Ridge', 'Summit', 'Iowa', 'IA', 'Clayton', 'Elkader', 42.8189452, -91.4552565, ST_GeomFromText('POINT(42.8189452 -91.4552565)', 4326), NULL, NULL, '1979-04-30', '2023-09-29', NULL, NULL, NULL),
  ('455391', 'Chihaks Creek', 'Stream', 'Iowa', 'IA', 'Howard', 'Cresco SE', 43.3299687, -92.0832213, ST_GeomFromText('POINT(43.3299687 -92.0832213)', 4326), 43.3672222, -92.1011111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455397', 'Chippewa Creek', 'Stream', 'Iowa', 'IA', 'Wapello', 'Eldon', 40.9239076, -92.2379589, ST_GeomFromText('POINT(40.9239076 -92.2379589)', 4326), 40.9797389, -92.2912933, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455407', 'Christie Creek', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Bonaparte', 40.6969764, -91.7921112, ST_GeomFromText('POINT(40.6969764 -91.7921112)', 4326), 40.7244444, -91.7869444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455411', 'Church Creek', 'Stream', 'Iowa', 'IA', 'Jefferson', 'Libertyville', 40.9961306, -92.0287855, ST_GeomFromText('POINT(40.9961306 -92.0287855)', 4326), 41.0950169, -92.0610095, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455416', 'Cipra Branch', 'Stream', 'Iowa', 'IA', 'Adams', 'Prescott', 41.05721, -94.5371877, ST_GeomFromText('POINT(41.05721 -94.5371877)', 4326), 41.0777659, -94.4910749, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455420', 'Clanton Creek', 'Stream', 'Iowa', 'IA', 'Warren', 'Martensdale', 41.366103, -93.7352204, ST_GeomFromText('POINT(41.366103 -93.7352204)', 4326), 41.2147142, -93.9430032, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455431', 'Clark Creek', 'Stream', 'Iowa', 'IA', 'Allamakee', 'New Albin', 43.4302517, -91.3634693, ST_GeomFromText('POINT(43.4302517 -91.3634693)', 4326), 43.3780556, -91.3322222, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('455437', 'Clarks Branch', 'Stream', 'Iowa', 'IA', 'Cass', 'Griswold', 41.1699915, -95.1733261, ST_GeomFromText('POINT(41.1699915 -95.1733261)', 4326), 41.1919351, -95.0836015, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455438', 'Clarks Lake', 'Reservoir', 'Iowa', 'IA', 'Jasper', 'Mitchellville', 41.676367, -93.347466, ST_GeomFromText('POINT(41.676367 -93.347466)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('455453', 'Clear Creek', 'Stream', 'Iowa', 'IA', 'Allamakee', 'Waukon NW', 43.4335846, -91.4087486, ST_GeomFromText('POINT(43.4335846 -91.4087486)', 4326), 43.476498, -91.412773, '1979-04-30', '2009-07-16', NULL, NULL, NULL),
  ('455454', 'Clear Creek', 'Stream', 'Iowa', 'IA', 'Allamakee', 'Lansing', 43.3594208, -91.2126313, ST_GeomFromText('POINT(43.3594208 -91.2126313)', 4326), 43.3544202, -91.3354126, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455455', 'Clear Creek', 'Stream', 'Iowa', 'IA', 'Cerro Gordo', 'Clear Lake East', 43.1399598, -93.3213162, ST_GeomFromText('POINT(43.1399598 -93.3213162)', 4326), 43.1260709, -93.3829836, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455456', 'Clear Creek', 'Stream', 'Iowa', 'IA', 'Story', 'Ames West', 42.0360967, -93.6488301, ST_GeomFromText('POINT(42.0360967 -93.6488301)', 4326), 42.0327621, -93.7752237, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455457', 'Clear Creek', 'Stream', 'Iowa', 'IA', 'Jasper', 'Mingo', 41.7649881, -93.264094, ST_GeomFromText('POINT(41.7649881 -93.264094)', 4326), 42.0258208, -93.2857617, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455458', 'Clear Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Solon', 41.8489012, -91.390168, ST_GeomFromText('POINT(41.8489012 -91.390168)', 4326), 41.9416758, -91.3334997, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455459', 'Clear Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Iowa City West', 41.6700159, -91.562947, ST_GeomFromText('POINT(41.6700159 -91.562947)', 4326), 41.7072291, -92.0135124, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455460', 'Clear Creek', 'Stream', 'Iowa', 'IA', 'Keokuk', 'Keota', 41.2541802, -91.9973981, ST_GeomFromText('POINT(41.2541802 -91.9973981)', 4326), 41.378067, -92.0460105, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('455462', 'Clear Lake', 'Lake', 'Iowa', 'IA', 'Cerro Gordo', 'Ventura Heights', 43.1244732, -93.4212106, ST_GeomFromText('POINT(43.1244732 -93.4212106)', 4326), NULL, NULL, '1979-04-30', '2018-06-22', NULL, NULL, NULL),
  ('455463', 'Clear Lake', 'Lake', 'Iowa', 'IA', 'Pocahontas', 'Varina', 42.7325735, -94.9001402, ST_GeomFromText('POINT(42.7325735 -94.9001402)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('455472', 'Clemons Creek', 'Stream', 'Iowa', 'IA', 'Washington', 'Washington', 41.3030714, -91.7379466, ST_GeomFromText('POINT(41.3030714 -91.7379466)', 4326), 41.339181, -91.8485053, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455478', 'Cline Branch', 'Stream', 'Iowa', 'IA', 'Jackson', 'Leisure Lake', 42.1855697, -90.7779133, ST_GeomFromText('POINT(42.1855697 -90.7779133)', 4326), 42.2452778, -90.8430556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455479', 'Cline Creek', 'Stream', 'Iowa', 'IA', 'Delaware', 'Hopkinton East', 42.2650004, -91.2051489, ST_GeomFromText('POINT(42.2650004 -91.2051489)', 4326), 42.3313889, -91.1808333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455487', 'Cloie Branch', 'Stream', 'Iowa', 'IA', 'Dubuque', 'Dubuque North', 42.554167, -90.7462381, ST_GeomFromText('POINT(42.554167 -90.7462381)', 4326), 42.5069463, -90.7692941, '1979-04-30', '2018-07-13', NULL, NULL, NULL),
  ('455494', 'Coal Creek', 'Stream', 'Iowa', 'IA', 'Keokuk', 'Delta', 41.3369546, -92.3082392, ST_GeomFromText('POINT(41.3369546 -92.3082392)', 4326), 41.4694507, -92.36824, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455495', 'Coal Creek', 'Stream', 'Iowa', 'IA', 'Monroe', 'Albia', 41.0341734, -92.8626974, ST_GeomFromText('POINT(41.0341734 -92.8626974)', 4326), 40.9705651, -92.7907508, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455496', 'Coal Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Pleasantville', 41.4658243, -93.3490985, ST_GeomFromText('POINT(41.4658243 -93.3490985)', 4326), 41.3022164, -93.4624351, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455497', 'Coal Creek', 'Stream', 'Iowa', 'IA', 'Dallas', 'Adel', 41.550544, -94.1007887, ST_GeomFromText('POINT(41.550544 -94.1007887)', 4326), 41.5385995, -94.1421788, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('455498', 'Coal Creek', 'Stream', 'Iowa', 'IA', 'Mahaska', 'Buxton', 41.244727, -92.7615853, ST_GeomFromText('POINT(41.244727 -92.7615853)', 4326), 41.1333372, -92.902977, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455502', 'Coal Valley Creek', 'Stream', 'Iowa', 'IA', 'Boone', 'Boone West', 42.0277603, -93.9446742, ST_GeomFromText('POINT(42.0277603 -93.9446742)', 4326), 42.0361111, -93.9969444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455504', 'Cobb Creek', 'Stream', 'Iowa', 'IA', 'Harrison', 'Pisgah', 41.8366547, -95.9302877, ST_GeomFromText('POINT(41.8366547 -95.9302877)', 4326), 41.8072104, -95.8716758, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455505', 'Cobbville Creek', 'Stream', 'Iowa', 'IA', 'Decatur', 'Garden Grove SW', 40.8050019, -93.6682749, ST_GeomFromText('POINT(40.8050019 -93.6682749)', 4326), 40.8133333, -93.7333333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455510', 'Coe Creek', 'Stream', 'Iowa', 'IA', 'Montgomery', 'Griswold', 41.1461027, -95.1758257, ST_GeomFromText('POINT(41.1461027 -95.1758257)', 4326), 41.112769, -95.1280458, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455511', 'Coffee Creek', 'Stream', 'Iowa', 'IA', 'Dubuque', 'New Vienna', 42.5449947, -91.116245, ST_GeomFromText('POINT(42.5449947 -91.116245)', 4326), 42.601382, -91.1367998, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455512', 'Coffins Creek', 'Stream', 'Iowa', 'IA', 'Delaware', 'Manchester', 42.4988753, -91.4723694, ST_GeomFromText('POINT(42.4988753 -91.4723694)', 4326), 42.5491517, -91.6029322, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455517', 'Cold Springs', 'Lake', 'Iowa', 'IA', 'Cass', 'Lewis', 41.29197, -95.0867476, ST_GeomFromText('POINT(41.29197 -95.0867476)', 4326), NULL, NULL, '1979-04-30', '2018-06-25', NULL, NULL, NULL),
  ('455520', 'Cold Water Creek', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Bluffton', 43.4288568, -91.9421036, ST_GeomFromText('POINT(43.4288568 -91.9421036)', 4326), 43.4710777, -92.0034945, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455522', 'Coldwater Creek', 'Stream', 'Iowa', 'IA', 'Butler', 'Allison', 42.8444195, -92.7599156, ST_GeomFromText('POINT(42.8444195 -92.7599156)', 4326), 43.0077452, -93.1079777, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('455523', 'Cole Creek', 'Stream', 'Iowa', 'IA', 'O''Brien', 'Paullina', 42.9113723, -95.7280667, ST_GeomFromText('POINT(42.9113723 -95.7280667)', 4326), 43.0230344, -95.6294535, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455524', 'Lake Colechester', 'Reservoir', 'Iowa', 'IA', 'Warren', 'Des Moines SW', 41.5029544, -93.6875141, ST_GeomFromText('POINT(41.5029544 -93.6875141)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('455534', 'College Creek', 'Stream', 'Iowa', 'IA', 'Story', 'Ames West', 42.024986, -93.6313296, ST_GeomFromText('POINT(42.024986 -93.6313296)', 4326), 42.0202778, -93.6952778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455551', 'Comar Lake', 'Lake', 'Iowa', 'IA', 'Story', 'Story City', 42.1477553, -93.6022136, ST_GeomFromText('POINT(42.1477553 -93.6022136)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('455556', 'Competine Creek', 'Stream', 'Iowa', 'IA', 'Jefferson', 'Brookville', 41.0166846, -92.1240663, ST_GeomFromText('POINT(41.0166846 -92.1240663)', 4326), 41.1825135, -92.2882386, '1979-04-30', '2018-07-13', NULL, NULL, NULL),
  ('455557', 'Comstock Creek', 'Stream', 'Iowa', 'IA', 'Wapello', 'Chillicothe', 41.0830679, -92.5162994, ST_GeomFromText('POINT(41.0830679 -92.5162994)', 4326), 41.1155683, -92.4565758, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455570', 'Cone Lake', 'Lake', 'Iowa', 'IA', 'Muscatine', 'Nichols', 41.3801846, -91.3244668, ST_GeomFromText('POINT(41.3801846 -91.3244668)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('455579', 'Lake Considine', 'Lake', 'Iowa', 'IA', 'Butler', 'Dumont South', 42.7167222, -92.9200046, ST_GeomFromText('POINT(42.7167222 -92.9200046)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('455580', 'Contrary Creek', 'Stream', 'Iowa', 'IA', 'Monroe', 'Iconium', 40.9713946, -92.9802006, ST_GeomFromText('POINT(40.9713946 -92.9802006)', 4326), 40.9983368, -93.0627028, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455581', 'Convey Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Amish', 41.6027895, -91.8579519, ST_GeomFromText('POINT(41.6027895 -91.8579519)', 4326), 41.6744531, -91.9440661, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('455588', 'Cook Creek', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Azen', 40.53817, -92.08485, ST_GeomFromText('POINT(40.53817 -92.08485)', 4326), 40.6225288, -92.1599022, '1979-04-30', '2011-11-10', NULL, NULL, NULL),
  ('455589', 'Cook Island', 'Island', 'Iowa', 'IA', 'Clinton', 'Savanna', 42.0191922, -90.1554054, ST_GeomFromText('POINT(42.0191922 -90.1554054)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455592', 'Cook Slough', 'Stream', 'Iowa', 'IA', 'Clinton', 'Savanna', 42.0236365, -90.1529053, ST_GeomFromText('POINT(42.0236365 -90.1529053)', 4326), 42.0313889, -90.1566667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455593', 'Cooksley Creek', 'Stream', 'Iowa', 'IA', 'Delaware', 'Dyersville West', 42.4266638, -91.1473613, ST_GeomFromText('POINT(42.4266638 -91.1473613)', 4326), 42.4780556, -91.1922222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455597', 'Coon Creek', 'Stream', 'Iowa', 'IA', 'Wapello', 'Farson', 41.0102942, -92.2699039, ST_GeomFromText('POINT(41.0102942 -92.2699039)', 4326), 41.0191667, -92.3152778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455598', 'Coon Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Beech', 41.3538825, -93.298542, ST_GeomFromText('POINT(41.3538825 -93.298542)', 4326), 41.2861111, -93.3633333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455599', 'Coon Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Elkhart', 41.8055435, -93.507992, ST_GeomFromText('POINT(41.8055435 -93.507992)', 4326), 41.8641667, -93.5719444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455600', 'Coon Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Cedar Bluff', 41.8208475, -91.3685, ST_GeomFromText('POINT(41.8208475 -91.3685)', 4326), 41.8666667, -91.2858333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455601', 'Coon Creek', 'Stream', 'Iowa', 'IA', 'Tama', 'Traer', 42.2002674, -92.4582464, ST_GeomFromText('POINT(42.2002674 -92.4582464)', 4326), 42.1708333, -92.3761111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455602', 'Coon Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Elkader', 42.795262, -91.4890302, ST_GeomFromText('POINT(42.795262 -91.4890302)', 4326), 42.8169444, -91.4597222, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('455603', 'Coon Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Correctionville', 42.3938783, -95.8127867, ST_GeomFromText('POINT(42.3938783 -95.8127867)', 4326), 42.3899882, -95.668616, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455604', 'Coon Creek', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Freeport', 43.340251, -91.6429245, ST_GeomFromText('POINT(43.340251 -91.6429245)', 4326), 43.2766425, -91.5240303, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455605', 'Coon Creek', 'Stream', 'Iowa', 'IA', 'Butler', 'Dumont South', 42.6946978, -92.9463077, ST_GeomFromText('POINT(42.6946978 -92.9463077)', 4326), 42.714141, -93.0310309, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455606', 'Coon Creek', 'Stream', 'Iowa', 'IA', 'Crawford', 'Dow City', 41.9802661, -95.4108326, ST_GeomFromText('POINT(41.9802661 -95.4108326)', 4326), 41.9344321, -95.2933304, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455607', 'Coon Creek', 'Stream', 'Iowa', 'IA', 'Iowa', 'Marengo', 41.8152808, -92.0824034, ST_GeomFromText('POINT(41.8152808 -92.0824034)', 4326), 41.889168, -92.0662927, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455608', 'Coon Creek', 'Stream', 'Iowa', 'IA', 'Jasper', 'Kellogg', 41.7097145, -92.9007496, ST_GeomFromText('POINT(41.7097145 -92.9007496)', 4326), 41.7786025, -92.8835272, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455609', 'Coon Creek', 'Stream', 'Iowa', 'IA', 'Jefferson', 'Abingdon', 41.0694612, -92.130178, ST_GeomFromText('POINT(41.0694612 -92.130178)', 4326), 41.1516817, -92.1579571, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455610', 'Coon Creek', 'Stream', 'Iowa', 'IA', 'Davis', 'Ottumwa South', 40.9066834, -92.4837978, ST_GeomFromText('POINT(40.9066834 -92.4837978)', 4326), 40.895849, -92.5626888, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455611', 'Coon Creek', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Bonaparte', 40.62796, -91.84615, ST_GeomFromText('POINT(40.62796 -91.84615)', 4326), 40.5996, -91.84469, '1979-04-30', '2011-11-10', NULL, NULL, NULL),
  ('455615', 'Coonley Creek', 'Stream', 'Iowa', 'IA', 'Cherokee', 'Cherokee South', 42.7138728, -95.565007, ST_GeomFromText('POINT(42.7138728 -95.565007)', 4326), 42.7355381, -95.4916722, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('455618', 'Cooper Creek', 'Stream', 'Iowa', 'IA', 'Appanoose', 'Hiattsville', 40.7558479, -92.8149188, ST_GeomFromText('POINT(40.7558479 -92.8149188)', 4326), 40.7022309, -93.1388186, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455621', 'Copper Creek', 'Stream', 'Iowa', 'IA', 'Jackson', 'Preston', 42.0658561, -90.43152, ST_GeomFromText('POINT(42.0658561 -90.43152)', 4326), 42.0947445, -90.3131854, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455622', 'Cooper Creek', 'Stream', 'Iowa', 'IA', 'Fremont', 'Sidney', 40.7208341, -95.7127755, ST_GeomFromText('POINT(40.7208341 -95.7127755)', 4326), 40.7994445, -95.6513862, '1979-04-30', NULL, 'Official', 'Board Decision', '1977-01-01'),
  ('455623', 'Coppers Creek', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Keosauqua', 40.7472509, -91.8904479, ST_GeomFromText('POINT(40.7472509 -91.8904479)', 4326), 40.8116944, -91.8429465, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455626', 'Cordova Slough', 'Stream', 'Iowa', 'IA', 'Scott', 'Cordova', 41.687532, -90.3304074, ST_GeomFromText('POINT(41.687532 -90.3304074)', 4326), 41.715, -90.3222222, '1979-04-30', '2012-08-28', NULL, NULL, NULL),
  ('455629', 'Corn Hill', 'Summit', 'Iowa', 'IA', 'Fayette', 'Wadena', 42.804149, -91.739008, ST_GeomFromText('POINT(42.804149 -91.739008)', 4326), NULL, NULL, '1979-04-30', '2023-09-29', NULL, NULL, NULL),
  ('455631', 'Lake Cornelia', 'Lake', 'Iowa', 'IA', 'Wright', 'Cornelia', 42.7868606, -93.6892853, ST_GeomFromText('POINT(42.7868606 -93.6892853)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('455639', 'Corsepius Island', 'Island', 'Iowa', 'IA', 'Louisa', 'Joy', 41.1508667, -90.9920888, ST_GeomFromText('POINT(41.1508667 -90.9920888)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455650', 'Cota Creek', 'Stream', 'Iowa', 'IA', 'Allamakee', 'Harpers Ferry', 43.1924804, -91.158463, ST_GeomFromText('POINT(43.1924804 -91.158463)', 4326), 43.2591453, -91.2226308, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455662', 'Cottonwood Creek', 'Stream', 'Iowa', 'IA', 'Monona', 'Moorhead NW', 41.9713768, -95.9744552, ST_GeomFromText('POINT(41.9713768 -95.9744552)', 4326), 41.9408333, -95.9105556, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('455663', 'Cottonwood Creek', 'Stream', 'Iowa', 'IA', 'Buena Vista', 'Peterson', 42.8891448, -95.3119439, ST_GeomFromText('POINT(42.8891448 -95.3119439)', 4326), 42.8435903, -95.3594457, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455664', 'Cottonwood Creek', 'Stream', 'Iowa', 'IA', 'Monona', 'Castana', 42.0808221, -95.9100095, ST_GeomFromText('POINT(42.0808221 -95.9100095)', 4326), 42.0538775, -95.8669531, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455666', 'Cottonwood Drain', 'Stream', 'Iowa', 'IA', 'Des Moines', 'Kingston', 40.8964268, -91.0259768, ST_GeomFromText('POINT(40.8964268 -91.0259768)', 4326), 41.0150358, -91.0304222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455667', 'Cottonwood Hollow', 'Valley', 'Iowa', 'IA', 'Woodbury', 'Hornick', 42.2158154, -96.0285438, ST_GeomFromText('POINT(42.2158154 -96.0285438)', 4326), 42.2300703, -95.9717692, '1979-04-30', '2023-10-11', NULL, NULL, NULL),
  ('455668', 'Cottonwood Point', 'Cape', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.4946829, -95.0683278, ST_GeomFromText('POINT(43.4946829 -95.0683278)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455669', 'Coulee Creek', 'Stream', 'Iowa', 'IA', 'Fayette', 'Fayette', 42.8291479, -91.8251641, ST_GeomFromText('POINT(42.8291479 -91.8251641)', 4326), 42.9352565, -91.8823875, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455670', 'Couler Valley', 'Valley', 'Iowa', 'IA', 'Dubuque', 'Dubuque North', 42.5606206, -90.7095896, ST_GeomFromText('POINT(42.5606206 -90.7095896)', 4326), 42.5144479, -90.668356, '1979-04-30', '2023-10-06', NULL, NULL, NULL),
  ('455682', 'Cow Branch', 'Stream', 'Iowa', 'IA', 'Clayton', 'Garber', 42.669989, -91.2856909, ST_GeomFromText('POINT(42.669989 -91.2856909)', 4326), 42.6630556, -91.3316667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455686', 'Cox Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Elkader', 42.768874, -91.439028, ST_GeomFromText('POINT(42.768874 -91.439028)', 4326), 42.6799853, -91.4673642, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455687', 'Crab Tree Lake', 'Lake', 'Iowa', 'IA', 'Marshall', 'Baxter', 41.8659133, -93.2127479, ST_GeomFromText('POINT(41.8659133 -93.2127479)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('455689', 'Crabapple Creek', 'Stream', 'Iowa', 'IA', 'Audubon', 'Audubon', 41.6902645, -94.8877629, ST_GeomFromText('POINT(41.6902645 -94.8877629)', 4326), 41.725542, -94.82915, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455690', 'Crabapple Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Springville', 42.0313895, -91.4840629, ST_GeomFromText('POINT(42.0313895 -91.4840629)', 4326), 42.1302745, -91.504059, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455694', 'Crandalls Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.4905171, -95.1249953, ST_GeomFromText('POINT(43.4905171 -95.1249953)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455696', 'Crane Creek', 'Stream', 'Iowa', 'IA', 'Fayette', 'Saint Lucas', 43.0080321, -91.9612793, ST_GeomFromText('POINT(43.0080321 -91.9612793)', 4326), 43.4227444, -92.4685086, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455697', 'Crane Creek', 'Stream', 'Iowa', 'IA', 'Cerro Gordo', 'Clear Lake East', 43.1427379, -93.2790934, ST_GeomFromText('POINT(43.1427379 -93.2790934)', 4326), 43.0788509, -93.2735376, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455698', 'Crane Creek', 'Stream', 'Iowa', 'IA', 'Black Hawk', 'Littleton', 42.5710968, -92.1168446, ST_GeomFromText('POINT(42.5710968 -92.1168446)', 4326), 42.886645, -92.362958, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455699', 'Crane Creek', 'Stream', 'Iowa', 'IA', 'Muscatine', 'Nichols', 41.4289142, -91.2696, ST_GeomFromText('POINT(41.4289142 -91.2696)', 4326), 41.4197491, -91.1629304, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455710', 'Crescent Creek', 'Stream', 'Iowa', 'IA', 'Pottawattamie', 'Council Bluffs North', 41.3636072, -95.8739005, ST_GeomFromText('POINT(41.3636072 -95.8739005)', 4326), 41.3544444, -95.8041667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455726', 'Crooked Creek', 'Stream', 'Iowa', 'IA', 'Lee', 'Croton', 40.5842039, -91.6884965, ST_GeomFromText('POINT(40.5842039 -91.6884965)', 4326), 40.5788889, -91.6672222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455727', 'Crooked Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Hills', 41.5272415, -91.5348867, ST_GeomFromText('POINT(41.5272415 -91.5348867)', 4326), 41.5163889, -91.6133333, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('455728', 'Crooked Creek', 'Stream', 'Iowa', 'IA', 'Webster', 'Lehigh', 42.351362, -94.0424545, ST_GeomFromText('POINT(42.351362 -94.0424545)', 4326), 42.3452512, -94.1510707, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455729', 'Crooked Creek', 'Stream', 'Iowa', 'IA', 'Hamilton', 'Mackey', 42.2385902, -93.8330019, ST_GeomFromText('POINT(42.2385902 -93.8330019)', 4326), 42.3047, -93.819945, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455730', 'Crooked Creek', 'Stream', 'Iowa', 'IA', 'Cedar', 'Rochester', 41.6486348, -91.1332114, ST_GeomFromText('POINT(41.6486348 -91.1332114)', 4326), 41.7861317, -91.1268238, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455731', 'Crooked Creek', 'Stream', 'Iowa', 'IA', 'Cass', 'Anita', 41.4752659, -94.8713723, ST_GeomFromText('POINT(41.4752659 -94.8713723)', 4326), 41.5716536, -94.6796992, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455732', 'Crooked Creek', 'Stream', 'Iowa', 'IA', 'Jefferson', 'Wayland', 41.1586304, -91.7171116, ST_GeomFromText('POINT(41.1586304 -91.7171116)', 4326), 41.2005765, -91.6109967, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455733', 'Crooked Creek', 'Stream', 'Iowa', 'IA', 'Ringgold', 'Benton', 40.72388, -94.3357903, ST_GeomFromText('POINT(40.72388 -94.3357903)', 4326), 40.8316584, -94.2335648, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455736', 'Crow Creek', 'Stream', 'Iowa', 'IA', 'Marion', 'Melcher-Dallas', 41.2438863, -93.1593727, ST_GeomFromText('POINT(41.2438863 -93.1593727)', 4326), 41.2136111, -93.2375, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455737', 'Crow Creek', 'Stream', 'Iowa', 'IA', 'Wayne', 'Confidence', 40.8244502, -93.1504845, ST_GeomFromText('POINT(40.8244502 -93.1504845)', 4326), 40.8388889, -93.1722222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455738', 'Crow Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Beech', 41.3086057, -93.3068759, ST_GeomFromText('POINT(41.3086057 -93.3068759)', 4326), 41.2730556, -93.3502778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455739', 'Crow Creek', 'Stream', 'Iowa', 'IA', 'Jefferson', 'Fairfield South', 40.9439112, -91.9410053, ST_GeomFromText('POINT(40.9439112 -91.9410053)', 4326), 41.0566854, -91.9776735, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('455740', 'Crow Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Silvis', 41.5469778, -90.4431873, ST_GeomFromText('POINT(41.5469778 -90.4431873)', 4326), 41.6630868, -90.5495811, '1979-04-30', '2014-12-12', NULL, NULL, NULL),
  ('455744', 'Crystal Creek', 'Stream', 'Iowa', 'IA', 'Clinton', 'De Witt', 41.8111394, -90.5743041, ST_GeomFromText('POINT(41.8111394 -90.5743041)', 4326), 41.8416929, -90.67014, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455745', 'Crystal Creek', 'Stream', 'Iowa', 'IA', 'Tama', 'Garwin', 42.1069328, -92.6910307, ST_GeomFromText('POINT(42.1069328 -92.6910307)', 4326), 42.1580434, -92.6740862, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455746', 'Crystal Lake', 'Lake', 'Iowa', 'IA', 'Clinton', 'De Witt', 41.8156564, -90.5794081, ST_GeomFromText('POINT(41.8156564 -90.5794081)', 4326), NULL, NULL, '1979-04-30', '2018-06-07', NULL, NULL, NULL),
  ('455747', 'Crystal Lake', 'Lake', 'Iowa', 'IA', 'Hancock', 'Crystal Lake', 43.230289, -93.7932298, ST_GeomFromText('POINT(43.230289 -93.7932298)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('455749', 'West Lake', 'Reservoir', 'Iowa', 'IA', 'Lucas', 'Chariton', 41.0212028, -93.3357874, ST_GeomFromText('POINT(41.0212028 -93.3357874)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('455752', 'Cub Creek', 'Stream', 'Iowa', 'IA', 'Poweshiek', 'Victor', 41.7297223, -92.339073, ST_GeomFromText('POINT(41.7297223 -92.339073)', 4326), 41.7091653, -92.4540742, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455759', 'Curran Branch', 'Stream', 'Iowa', 'IA', 'Dubuque', 'Fillmore', 42.3602828, -90.9098566, ST_GeomFromText('POINT(42.3602828 -90.9098566)', 4326), 42.4375008, -90.9970783, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455765', 'Cylinder Creek', 'Stream', 'Iowa', 'IA', 'Palo Alto', 'Plover', 42.9821915, -94.5291425, ST_GeomFromText('POINT(42.9821915 -94.5291425)', 4326), 43.2569062, -94.5188652, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455768', 'Dailey Creek', 'Stream', 'Iowa', 'IA', 'Butler', 'Allison', 42.7594201, -92.8596395, ST_GeomFromText('POINT(42.7594201 -92.8596395)', 4326), 42.7911111, -92.8466667, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('455770', 'Dakins Lake', 'Reservoir', 'Iowa', 'IA', 'Story', 'Zearing', 42.1711556, -93.2945739, ST_GeomFromText('POINT(42.1711556 -93.2945739)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('455775', 'Dale Maffit Reservoir', 'Reservoir', 'Iowa', 'IA', 'Dallas', 'Commerce', 41.5134826, -93.7928548, ST_GeomFromText('POINT(41.5134826 -93.7928548)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('455782', 'Dan Green Slough', 'Lake', 'Iowa', 'IA', 'Clay', 'Dickens', 43.2229097, -95.0035773, ST_GeomFromText('POINT(43.2229097 -95.0035773)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('455794', 'Dark Chute', 'Stream', 'Iowa', 'IA', 'Clinton', 'Savanna', 42.0222476, -90.1581832, ST_GeomFromText('POINT(42.0222476 -90.1581832)', 4326), 42.0341667, -90.1644444, '1979-04-30', '2014-05-14', NULL, NULL, NULL),
  ('455795', 'Dark Hollow', 'Valley', 'Iowa', 'IA', 'Jackson', 'Delmar North', 42.0953442, -90.5656151, ST_GeomFromText('POINT(42.0953442 -90.5656151)', 4326), 42.1246641, -90.5879002, '1979-04-30', '2023-10-06', NULL, NULL, NULL),
  ('455796', 'Darling Pool', 'Lake', 'Iowa', 'IA', 'Kossuth', 'German Valley', 43.2648625, -94.1188156, ST_GeomFromText('POINT(43.2648625 -94.1188156)', 4326), NULL, NULL, '1979-04-30', '2018-09-21', NULL, NULL, NULL),
  ('455797', 'Lake Darling', 'Reservoir', 'Iowa', 'IA', 'Washington', 'Richland', 41.194746, -91.8971342, ST_GeomFromText('POINT(41.194746 -91.8971342)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('455798', 'Daugherty Creek', 'Stream', 'Iowa', 'IA', 'Taylor', 'Ladoga', 40.6291544, -94.7519142, ST_GeomFromText('POINT(40.6291544 -94.7519142)', 4326), 40.6908208, -94.7335809, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455800', 'Davenport Harbor', 'Bay', 'Iowa', 'IA', 'Scott', 'Milan', 41.4972546, -90.621527, ST_GeomFromText('POINT(41.4972546 -90.621527)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455802', 'Davids Creek', 'Stream', 'Iowa', 'IA', 'Audubon', 'Exira West', 41.5872097, -94.8872067, ST_GeomFromText('POINT(41.5872097 -94.8872067)', 4326), 41.7699862, -94.7683149, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('455809', 'Davis Creek', 'Stream', 'Iowa', 'IA', 'Washington', 'Lone Tree', 41.4250215, -91.4807168, ST_GeomFromText('POINT(41.4250215 -91.4807168)', 4326), 41.3936279, -91.6993344, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455810', 'Davis Creek', 'Stream', 'Iowa', 'IA', 'Boone', 'Madrid NW', 41.9949839, -93.8855057, ST_GeomFromText('POINT(41.9949839 -93.8855057)', 4326), 42.0316498, -93.8849499, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455813', 'Davisons Creek', 'Stream', 'Iowa', 'IA', 'Marshall', 'Le Grand', 42.0260999, -92.7871429, ST_GeomFromText('POINT(42.0260999 -92.7871429)', 4326), 41.9569342, -92.7963083, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455824', 'De Soto Lake', 'Lake', 'Iowa', 'IA', 'Harrison', 'Modale', 41.5416595, -96.0016786, ST_GeomFromText('POINT(41.5416595 -96.0016786)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455827', 'DeLongs Creek', 'Stream', 'Iowa', 'IA', 'Wright', 'Sheldon Creek', 42.6177539, -93.5049294, ST_GeomFromText('POINT(42.6177539 -93.5049294)', 4326), 42.6630304, -93.5185405, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455828', 'Dead Brier Creek', 'Stream', 'Iowa', 'IA', 'Greene', 'Yale', 41.8649848, -94.296909, ST_GeomFromText('POINT(41.8649848 -94.296909)', 4326), 41.9383175, -94.3816348, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455829', 'Dead Lake', 'Lake', 'Iowa', 'IA', 'Jackson', 'Savanna', 42.0933561, -90.1795725, ST_GeomFromText('POINT(42.0933561 -90.1795725)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455830', 'Dead Lake', 'Lake', 'Iowa', 'IA', 'Clayton', 'Cassville', 42.6941603, -90.9898505, ST_GeomFromText('POINT(42.6941603 -90.9898505)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455831', 'Dead Man Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Sergeant Bluff', 42.4211042, -96.3166941, ST_GeomFromText('POINT(42.4211042 -96.3166941)', 4326), 42.4725, -96.3022222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455833', 'Deadmans Island', 'Island', 'Iowa', 'IA', 'Black Hawk', 'Cedar Falls', 42.5563723, -92.4826881, ST_GeomFromText('POINT(42.5563723 -92.4826881)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('455834', 'Deadmans Lake', 'Lake', 'Iowa', 'IA', 'Hancock', 'Miller', 43.2493598, -93.5647353, ST_GeomFromText('POINT(43.2493598 -93.5647353)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('455835', 'Dean Lake', 'Lake', 'Iowa', 'IA', 'Polk', 'Des Moines SE', 41.5882252, -93.5773584, ST_GeomFromText('POINT(41.5882252 -93.5773584)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('455842', 'Dedham Creek', 'Stream', 'Iowa', 'IA', 'Carroll', 'Dedham', 41.9110971, -94.8194284, ST_GeomFromText('POINT(41.9110971 -94.8194284)', 4326), 41.8713749, -94.8347064, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455843', 'Deep Creek', 'Stream', 'Iowa', 'IA', 'Plymouth', 'Oyens', 42.8213784, -96.12141, ST_GeomFromText('POINT(42.8213784 -96.12141)', 4326), 42.9041514, -95.7922349, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455844', 'Deep Creek', 'Stream', 'Iowa', 'IA', 'Fayette', 'Volga', 42.8249831, -91.5851482, ST_GeomFromText('POINT(42.8249831 -91.5851482)', 4326), 42.7674833, -91.6359856, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455845', 'Deep Creek', 'Stream', 'Iowa', 'IA', 'Jackson', 'Preston', 42.0828, -90.4315198, ST_GeomFromText('POINT(42.0828 -90.4315198)', 4326), 41.9350243, -90.643749, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455846', 'Deep Creek', 'Stream', 'Iowa', 'IA', 'Iowa', 'Victor', 41.6308371, -92.2676829, ST_GeomFromText('POINT(41.6308371 -92.2676829)', 4326), 41.6902808, -92.2307382, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455848', 'Deep River', 'Stream', 'Iowa', 'IA', 'Poweshiek', 'Deep River', 41.5963938, -92.2537936, ST_GeomFromText('POINT(41.5963938 -92.2537936)', 4326), 41.6255548, -92.5512984, '1979-04-30', '2018-07-31', NULL, NULL, NULL),
  ('455849', 'Deer Creek', 'Stream', 'Iowa', 'IA', 'Clinton', 'Clinton NW', 41.9066946, -90.1781827, ST_GeomFromText('POINT(41.9066946 -90.1781827)', 4326), 41.8916667, -90.2197222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455850', 'Deer Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Lawton', 42.4122144, -96.2014124, ST_GeomFromText('POINT(42.4122144 -96.2014124)', 4326), 42.4283333, -96.1269444, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('455851', 'Deer Creek', 'Stream', 'Iowa', 'IA', 'Webster', 'Fort Dodge South', 42.4958027, -94.190517, ST_GeomFromText('POINT(42.4958027 -94.190517)', 4326), 42.4980556, -94.1769444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455852', 'Deer Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Iowa City West', 41.6875147, -91.6168374, ST_GeomFromText('POINT(41.6875147 -91.6168374)', 4326), 41.6972345, -91.754618, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455853', 'Deer Creek', 'Stream', 'Iowa', 'IA', 'Guthrie', 'Stuart North', 41.5563767, -94.292462, ST_GeomFromText('POINT(41.5563767 -94.292462)', 4326), 41.5247098, -94.4046883, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455854', 'Deer Creek', 'Stream', 'Iowa', 'IA', 'Washington', 'Wellman', 41.4872377, -91.7660032, ST_GeomFromText('POINT(41.4872377 -91.7660032)', 4326), 41.58001, -91.97681, '1979-04-30', '2010-03-18', NULL, NULL, NULL),
  ('455855', 'Deer Creek', 'Stream', 'Iowa', 'IA', 'Fremont', 'Tabor NE', 40.8791658, -95.579997, ST_GeomFromText('POINT(40.8791658 -95.579997)', 4326), 40.9933298, -95.4369406, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455856', 'Deer Creek', 'Stream', 'Iowa', 'IA', 'Madison', 'East Peru', 41.2058252, -93.958559, ST_GeomFromText('POINT(41.2058252 -93.958559)', 4326), 41.1891579, -94.0516171, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455857', 'Deer Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Des Moines NE', 41.7358213, -93.5724388, ST_GeomFromText('POINT(41.7358213 -93.5724388)', 4326), 41.3019384, -93.5260478, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455858', 'Deer Creek', 'Stream', 'Iowa', 'IA', 'Plymouth', 'Millnerville', 42.6911048, -96.4894748, ST_GeomFromText('POINT(42.6911048 -96.4894748)', 4326), 42.7441605, -96.5189199, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455859', 'Deer Creek', 'Stream', 'Iowa', 'IA', 'Plymouth', 'Kingsley', 42.6138792, -95.9527941, ST_GeomFromText('POINT(42.6138792 -95.9527941)', 4326), 42.719156, -95.9247386, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455860', 'Deer Creek', 'Stream', 'Iowa', 'IA', 'Mitchell', 'Saint Ansgar', 43.381078, -92.9399182, ST_GeomFromText('POINT(43.381078 -92.9399182)', 4326), 43.557736, -93.217426, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('455861', 'Deer Creek', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Cresco NE', 43.4707999, -92.0043279, ST_GeomFromText('POINT(43.4707999 -92.0043279)', 4326), 43.5277437, -92.0026602, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455862', 'Deer Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Gunder', 42.983872, -91.5009764, ST_GeomFromText('POINT(42.983872 -91.5009764)', 4326), 43.0213702, -91.5690357, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455863', 'Deer Creek', 'Stream', 'Iowa', 'IA', 'Jones', 'Hopkinton East', 42.2605561, -91.2037601, ST_GeomFromText('POINT(42.2605561 -91.2037601)', 4326), 42.2169429, -91.3279347, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455864', 'Deer Creek', 'Stream', 'Iowa', 'IA', 'Tama', 'Tama', 41.9555475, -92.5849145, ST_GeomFromText('POINT(41.9555475 -92.5849145)', 4326), 42.1549869, -92.7824221, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455875', 'Delphey Island', 'Island', 'Iowa', 'IA', 'Allamakee', 'Harpers Ferry', 43.193036, -91.1526296, ST_GeomFromText('POINT(43.193036 -91.1526296)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455879', 'Lake Oelwein', 'Lake', 'Iowa', 'IA', 'Fayette', 'Oelwein', 42.6514179, -91.9187595, ST_GeomFromText('POINT(42.6514179 -91.9187595)', 4326), NULL, NULL, '1979-04-30', '2024-12-04', NULL, NULL, NULL),
  ('455884', 'Densmore Lake', 'Lake', 'Iowa', 'IA', 'Jackson', 'Green Island', 42.1657123, -90.2885327, ST_GeomFromText('POINT(42.1657123 -90.2885327)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('455892', 'Devils Fork', 'Stream', 'Iowa', 'IA', 'Greene', 'Paton', 42.1310903, -94.2649644, ST_GeomFromText('POINT(42.1310903 -94.2649644)', 4326), 42.1597005, -94.2046842, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455894', 'Devils Hollow', 'Valley', 'Iowa', 'IA', 'Clinton', 'Camanche', 41.8568046, -90.2598345, ST_GeomFromText('POINT(41.8568046 -90.2598345)', 4326), 41.8649512, -90.26475, '1979-04-30', '2023-09-29', NULL, NULL, NULL),
  ('455895', 'Devils Hollow', 'Valley', 'Iowa', 'IA', 'Clayton', 'Colesburg', 42.6571109, -91.1332881, ST_GeomFromText('POINT(42.6571109 -91.1332881)', 4326), 42.6672083, -91.1543575, '1979-04-30', '2023-09-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('455896', 'Devils Island', 'Island', 'Iowa', 'IA', 'Lee', 'Nauvoo', 40.5964298, -91.3879306, ST_GeomFromText('POINT(40.5964298 -91.3879306)', 4326), NULL, NULL, '1979-04-30', '2011-06-16', 'Official', 'Board Decision', '1891-12-31'),
  ('455897', 'Devils Run', 'Stream', 'Iowa', 'IA', 'Tama', 'Gladbrook', 42.1955422, -92.7293662, ST_GeomFromText('POINT(42.1955422 -92.7293662)', 4326), 42.1574868, -92.8057557, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455898', 'Devils Run', 'Stream', 'Iowa', 'IA', 'Iowa', 'Millersburg', 41.6000067, -92.1268467, ST_GeomFromText('POINT(41.6000067 -92.1268467)', 4326), 41.6697256, -92.2335159, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455907', 'Diamond Lake', 'Lake', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.482422, -95.1912488, ST_GeomFromText('POINT(43.482422 -95.1912488)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('455908', 'Diamond Lake', 'Lake', 'Iowa', 'IA', 'Poweshiek', 'Montezuma', 41.5878056, -92.5514756, ST_GeomFromText('POINT(41.5878056 -92.5514756)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('455910', 'Dibble Creek', 'Stream', 'Iowa', 'IA', 'Fayette', 'Elgin', 42.9985911, -91.6598745, ST_GeomFromText('POINT(42.9985911 -91.6598745)', 4326), 43.0977565, -91.6173706, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455911', 'Dick Creek', 'Stream', 'Iowa', 'IA', 'Wayne', 'Humeston', 40.7777829, -93.4016024, ST_GeomFromText('POINT(40.7777829 -93.4016024)', 4326), 40.7588889, -93.4972222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455914', 'Dickey Branch', 'Stream', 'Iowa', 'IA', 'Henry', 'Mount Pleasant', 40.8911433, -91.5015464, ST_GeomFromText('POINT(40.8911433 -91.5015464)', 4326), 40.9294759, -91.4893244, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455919', 'Diggins Slough', 'Stream', 'Iowa', 'IA', 'Louisa', 'Oakville', 41.1061444, -91.0873687, ST_GeomFromText('POINT(41.1061444 -91.0873687)', 4326), 41.1238889, -91.1244444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455925', 'Dirty Face Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Hills', 41.5569628, -91.5526658, ST_GeomFromText('POINT(41.5569628 -91.5526658)', 4326), 41.5600148, -91.7476707, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('455926', 'Dismal Swamp', 'Swamp', 'Iowa', 'IA', 'Kossuth', 'German Valley', 43.2883211, -94.1110608, ST_GeomFromText('POINT(43.2883211 -94.1110608)', 4326), NULL, NULL, '1979-04-30', '2018-09-21', NULL, NULL, NULL),
  ('455930', 'Doc Wood Lake', 'Lake', 'Iowa', 'IA', 'Jackson', 'Savanna', 42.0930784, -90.1765169, ST_GeomFromText('POINT(42.0930784 -90.1765169)', 4326), NULL, NULL, '1979-04-30', '2014-05-14', NULL, NULL, NULL),
  ('455931', 'Docs Cove', 'Bay', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.4155189, -95.1799966, ST_GeomFromText('POINT(43.4155189 -95.1799966)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455935', 'Dodges Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Andalusia', 41.4564207, -90.708752, ST_GeomFromText('POINT(41.4564207 -90.708752)', 4326), 41.4902778, -90.7183333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455936', 'Dodges Point', 'Cape', 'Iowa', 'IA', 'Cerro Gordo', 'Ventura Heights', 43.1191264, -93.4310397, ST_GeomFromText('POINT(43.1191264 -93.4310397)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455940', 'Doe Brook', 'Stream', 'Iowa', 'IA', 'Carroll', 'Glidden', 42.0960952, -94.6402559, ST_GeomFromText('POINT(42.0960952 -94.6402559)', 4326), 42.0838889, -94.7230556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455941', 'Doe Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Littleport', 42.7519312, -91.34958, ST_GeomFromText('POINT(42.7519312 -91.34958)', 4326), 42.6885974, -91.4090284, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455942', 'Dog Creek', 'Stream', 'Iowa', 'IA', 'O''Brien', 'Sutherland East', 42.9241446, -95.435837, ST_GeomFromText('POINT(42.9241446 -95.435837)', 4326), 42.9363671, -95.5200064, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455946', 'Dolbee Creek', 'Stream', 'Iowa', 'IA', 'Des Moines', 'Oakville', 41.0228135, -91.0240332, ST_GeomFromText('POINT(41.0228135 -91.0240332)', 4326), 40.9942021, -91.123758, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455947', 'Dollar Island', 'Island', 'Iowa', 'IA', 'Des Moines', 'Lomax', 40.7011519, -91.1179227, ST_GeomFromText('POINT(40.7011519 -91.1179227)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('455951', 'Donaldson Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Andalusia', 41.4628098, -90.6809733, ST_GeomFromText('POINT(41.4628098 -90.6809733)', 4326), 41.4988889, -90.6680556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455967', 'Dousman Creek', 'Stream', 'Iowa', 'IA', 'Allamakee', 'Prairie du Chien', 43.0897051, -91.2095748, ST_GeomFromText('POINT(43.0897051 -91.2095748)', 4326), 43.0941494, -91.2579091, '1979-04-30', NULL, NULL, NULL, NULL),
  ('455971', 'Dowd Creek', 'Stream', 'Iowa', 'IA', 'Hardin', 'Union', 42.2055409, -93.0321462, ST_GeomFromText('POINT(42.2055409 -93.0321462)', 4326), 42.2805398, -92.9529791, '1979-04-30', NULL, 'Official', 'Board Decision', '1976-01-01'),
  ('456011', 'Dry Branch', 'Stream', 'Iowa', 'IA', 'Marshall', 'LaMoille', 42.0919312, -93.0027006, ST_GeomFromText('POINT(42.0919312 -93.0027006)', 4326), 42.0691667, -93.0302778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456012', 'Dry Branch', 'Stream', 'Iowa', 'IA', 'Plymouth', 'Union Center SE', 42.5908249, -96.0922426, ST_GeomFromText('POINT(42.5908249 -96.0922426)', 4326), 42.7441571, -96.040853, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456013', 'Dry Branch', 'Stream', 'Iowa', 'IA', 'Fayette', 'Festina', 43.0510882, -91.7818248, ST_GeomFromText('POINT(43.0510882 -91.7818248)', 4326), 43.1746966, -91.8187684, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456014', 'Dry Branch', 'Stream', 'Iowa', 'IA', 'Webster', 'Stratford', 42.2613645, -93.9952307, ST_GeomFromText('POINT(42.2613645 -93.9952307)', 4326), 42.2760863, -94.0168982, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456015', 'Dry Branch', 'Stream', 'Iowa', 'IA', 'Des Moines', 'Burlington', 40.83957, -91.0995736, ST_GeomFromText('POINT(40.83957 -91.0995736)', 4326), 40.9178147, -91.1195907, '1979-04-30', '2014-05-15', NULL, NULL, NULL),
  ('456017', 'Dry Creek', 'Stream', 'Iowa', 'IA', 'Lee', 'Niota', 40.6200409, -91.3412624, ST_GeomFromText('POINT(40.6200409 -91.3412624)', 4326), 40.6600143, -91.3439553, '1979-04-30', '2020-03-10', NULL, NULL, NULL),
  ('456018', 'Dry Creek', 'Stream', 'Iowa', 'IA', 'Sioux', 'Hawarden South', 42.9916551, -96.4900309, ST_GeomFromText('POINT(42.9916551 -96.4900309)', 4326), 43.1935921, -96.1803005, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('456019', 'Dry Creek', 'Stream', 'Iowa', 'IA', 'Butler', 'Clarksville', 42.7821999, -92.689636, ST_GeomFromText('POINT(42.7821999 -92.689636)', 4326), 42.7996972, -92.8468615, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456020', 'Dry Creek', 'Stream', 'Iowa', 'IA', 'Buchanan', 'Troy Mills', 42.3005457, -91.7068378, ST_GeomFromText('POINT(42.3005457 -91.7068378)', 4326), 42.4110985, -91.6784982, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456021', 'Dry Creek', 'Stream', 'Iowa', 'IA', 'Buchanan', 'Quasqueton', 42.4224872, -91.7915591, ST_GeomFromText('POINT(42.4224872 -91.7915591)', 4326), 42.5083182, -91.7512772, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456022', 'Dry Creek', 'Stream', 'Iowa', 'IA', 'Story', 'Ames East', 42.1222077, -93.5502146, ST_GeomFromText('POINT(42.1222077 -93.5502146)', 4326), 42.1277639, -93.5054907, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456023', 'Dry Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Marion', 42.0352768, -91.6107332, ST_GeomFromText('POINT(42.0352768 -91.6107332)', 4326), 42.2074935, -91.5765581, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456024', 'Dry Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Shellsburg', 42.0672191, -91.7868471, ST_GeomFromText('POINT(42.0672191 -91.7868471)', 4326), 41.9755557, -91.9615702, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456026', 'Dry Hollow', 'Valley', 'Iowa', 'IA', 'Clayton', 'Farmersburg', 42.9459559, -91.3671604, ST_GeomFromText('POINT(42.9459559 -91.3671604)', 4326), 42.9381343, -91.3110177, '1979-04-30', '2023-10-06', NULL, NULL, NULL),
  ('456027', 'Dry Hollow Creek', 'Stream', 'Iowa', 'IA', 'Allamakee', 'Waterville', 43.1274813, -91.3223563, ST_GeomFromText('POINT(43.1274813 -91.3223563)', 4326), 43.1852778, -91.3466667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456028', 'Dry Mill Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Littleport', 42.8422078, -91.3731922, ST_GeomFromText('POINT(42.8422078 -91.3731922)', 4326), 42.9169302, -91.2981889, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456030', 'Dry Run', 'Stream', 'Iowa', 'IA', 'Osceola', 'May City', 43.3385801, -95.492785, ST_GeomFromText('POINT(43.3385801 -95.492785)', 4326), 43.4763541, -95.4866724, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('456031', 'Dry Run', 'Stream', 'Iowa', 'IA', 'O''Brien', 'Paullina', 42.9727587, -95.6686207, ST_GeomFromText('POINT(42.9727587 -95.6686207)', 4326), 43.0435876, -95.548063, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456032', 'Dry Run', 'Stream', 'Iowa', 'IA', 'O''Brien', 'Primghar', 43.0130365, -95.7047328, ST_GeomFromText('POINT(43.0130365 -95.7047328)', 4326), 43.1102535, -95.5788978, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456033', 'Dry Run', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Decorah', 43.2991388, -91.8057102, ST_GeomFromText('POINT(43.2991388 -91.8057102)', 4326), 43.275804, -91.9265495, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456034', 'Dry Run', 'Stream', 'Iowa', 'IA', 'Fayette', 'Alpha', 42.9994208, -92.0151707, ST_GeomFromText('POINT(42.9994208 -92.0151707)', 4326), 43.126362, -92.1482268, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456035', 'Dry Run', 'Stream', 'Iowa', 'IA', 'Bremer', 'Plainfield', 42.8299788, -92.5021287, ST_GeomFromText('POINT(42.8299788 -92.5021287)', 4326), 43.0241417, -92.4518478, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456036', 'Dry Run', 'Stream', 'Iowa', 'IA', 'Fayette', 'Elgin', 42.9955358, -91.6543187, ST_GeomFromText('POINT(42.9955358 -91.6543187)', 4326), 42.997481, -91.6123718, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456037', 'Dry Run', 'Stream', 'Iowa', 'IA', 'Black Hawk', 'Cedar Falls', 42.5266512, -92.4335206, ST_GeomFromText('POINT(42.5266512 -92.4335206)', 4326), 42.4652623, -92.5110237, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456039', 'Dubugue Harbor', 'Bay', 'Iowa', 'IA', 'Dubuque', 'Dubuque South', 42.495003, -90.6604053, ST_GeomFromText('POINT(42.495003 -90.6604053)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456042', 'Duck Creek', 'Stream', 'Iowa', 'IA', 'Jackson', 'Springbrook', 42.2319613, -90.4020732, ST_GeomFromText('POINT(42.2319613 -90.4020732)', 4326), 42.1994444, -90.4633333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456043', 'Duck Creek', 'Stream', 'Iowa', 'IA', 'Allamakee', 'Dorchester', 43.47877, -91.51907, ST_GeomFromText('POINT(43.47877 -91.51907)', 4326), 43.53713, -91.50856, '1979-04-30', '2010-11-22', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('456044', 'Duck Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Silvis', 41.5236447, -90.4748549, ST_GeomFromText('POINT(41.5236447 -90.4748549)', 4326), 41.5280857, -90.7729215, '1979-04-30', '2013-12-11', NULL, NULL, NULL),
  ('456046', 'Duck Lake', 'Lake', 'Iowa', 'IA', 'Allamakee', 'New Albin', 43.4763625, -91.2533693, ST_GeomFromText('POINT(43.4763625 -91.2533693)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('456047', 'Duckworth Creek', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Keosauqua', 40.7105836, -91.9962851, ST_GeomFromText('POINT(40.7105836 -91.9962851)', 4326), 40.7186385, -92.0204526, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456051', 'Dugout Creek', 'Stream', 'Iowa', 'IA', 'Dickinson', 'Lake Park', 43.419409, -95.2766659, ST_GeomFromText('POINT(43.419409 -95.2766659)', 4326), 43.4257992, -95.417226, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456052', 'Dugout Creek', 'Stream', 'Iowa', 'IA', 'Poweshiek', 'Brooklyn', 41.6477779, -92.4612967, ST_GeomFromText('POINT(41.6477779 -92.4612967)', 4326), 41.6952743, -92.614355, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456054', 'Dumbbell Lake', 'Lake', 'Iowa', 'IA', 'Des Moines', 'Burlington', 40.8619614, -91.0744682, ST_GeomFromText('POINT(40.8619614 -91.0744682)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('456056', 'Dunbar Slough', 'Lake', 'Iowa', 'IA', 'Greene', 'Coon Rapids NE', 41.9873551, -94.605753, ST_GeomFromText('POINT(41.9873551 -94.605753)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('456068', 'Dunns Creek', 'Stream', 'Iowa', 'IA', 'Montgomery', 'Villisca', 40.973045, -94.9927612, ST_GeomFromText('POINT(40.973045 -94.9927612)', 4326), 40.9838794, -95.0610967, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456077', 'Durion Creek', 'Stream', 'Iowa', 'IA', 'Delaware', 'Dyersville West', 42.395554, -91.1348623, ST_GeomFromText('POINT(42.395554 -91.1348623)', 4326), 42.4449985, -91.0745804, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456078', 'Durr Hill', 'Summit', 'Iowa', 'IA', 'Monona', 'Castana', 42.0763922, -95.9963226, ST_GeomFromText('POINT(42.0763922 -95.9963226)', 4326), NULL, NULL, '1979-04-30', '2024-03-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('456079', 'Dutch Creek', 'Stream', 'Iowa', 'IA', 'Jones', 'Anamosa', 42.0933379, -91.2757152, ST_GeomFromText('POINT(42.0933379 -91.2757152)', 4326), 42.0702778, -91.3472222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456080', 'Dutch Creek', 'Stream', 'Iowa', 'IA', 'Monona', 'Mapleton', 42.1763784, -95.8141737, ST_GeomFromText('POINT(42.1763784 -95.8141737)', 4326), 42.2922119, -95.801118, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456081', 'Dutch Creek', 'Stream', 'Iowa', 'IA', 'Washington', 'Richland', 41.2325147, -91.9168403, ST_GeomFromText('POINT(41.2325147 -91.9168403)', 4326), 41.3658456, -91.9707309, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456082', 'Dutch Hollow', 'Valley', 'Iowa', 'IA', 'Monona', 'Castana', 42.1106497, -95.8800282, ST_GeomFromText('POINT(42.1106497 -95.8800282)', 4326), 42.177817, -95.8716349, '1979-04-30', '2023-09-29', NULL, NULL, NULL),
  ('456083', 'Dutch Hollow', 'Valley', 'Iowa', 'IA', 'Fremont', 'Tabor SW', 40.8316035, -95.7233246, ST_GeomFromText('POINT(40.8316035 -95.7233246)', 4326), 40.8481557, -95.7230596, '1979-04-30', '2023-10-07', NULL, NULL, NULL),
  ('456084', 'Dutchman Island', 'Island', 'Iowa', 'IA', 'Lee', 'Fort Madison', 40.6378192, -91.2695937, ST_GeomFromText('POINT(40.6378192 -91.2695937)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456085', 'Dye Creek', 'Stream', 'Iowa', 'IA', 'Story', 'Collins', 41.9955433, -93.3688202, ST_GeomFromText('POINT(41.9955433 -93.3688202)', 4326), 42.0949867, -93.3199292, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456090', 'Eagle Creek', 'Stream', 'Iowa', 'IA', 'Wright', 'Woolstock', 42.5471946, -93.8443881, ST_GeomFromText('POINT(42.5471946 -93.8443881)', 4326), 42.8821899, -93.6971582, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456092', 'Eagle Lake', 'Lake', 'Iowa', 'IA', 'Hancock', 'Hayfield', 43.1279693, -93.7339915, ST_GeomFromText('POINT(43.1279693 -93.7339915)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('456093', 'Eagle Lake', 'Lake', 'Iowa', 'IA', 'Emmet', 'Estherville', 43.4881106, -94.8284025, ST_GeomFromText('POINT(43.4881106 -94.8284025)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('456096', 'Eagle Point', 'Cape', 'Iowa', 'IA', 'Dickinson', 'Milford', 43.3652416, -95.1624963, ST_GeomFromText('POINT(43.3652416 -95.1624963)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456100', 'Eagle Rock', 'Pillar', 'Iowa', 'IA', 'Jones', 'Canton', 42.1691783, -90.9156963, ST_GeomFromText('POINT(42.1691783 -90.9156963)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456110', 'East Aldrich Creek', 'Stream', 'Iowa', 'IA', 'Ida', 'Holstein SW', 42.3319328, -95.6286144, ST_GeomFromText('POINT(42.3319328 -95.6286144)', 4326), 42.3777658, -95.6222259, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456112', 'East Bay', 'Bay', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.4771831, -95.0680499, ST_GeomFromText('POINT(43.4771831 -95.0680499)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456114', 'East Beaver Creek', 'Stream', 'Iowa', 'IA', 'Boone', 'Berkley', 41.9872049, -94.1088471, ST_GeomFromText('POINT(41.9872049 -94.1088471)', 4326), 42.0869246, -94.0410665, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456116', 'East Big Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Springville', 42.0511116, -91.4637829, ST_GeomFromText('POINT(42.0511116 -91.4637829)', 4326), 42.0644444, -91.4375, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456117', 'East Bluff', 'Cliff', 'Iowa', 'IA', 'Benton', 'Center Point NW', 42.1619397, -91.9832356, ST_GeomFromText('POINT(42.1619397 -91.9832356)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456118', 'East Boyer River', 'Stream', 'Iowa', 'IA', 'Crawford', 'Denison', 42.0119325, -95.3716649, ST_GeomFromText('POINT(42.0119325 -95.3716649)', 4326), 42.0172081, -95.0861034, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456119', 'East Branch Beaverdam Creek', 'Stream', 'Iowa', 'IA', 'Cerro Gordo', 'Sheffield', 42.9391339, -93.2085356, ST_GeomFromText('POINT(42.9391339 -93.2085356)', 4326), 43.0744079, -93.2074253, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456120', 'East Branch Blue Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Center Point', 42.1899935, -91.8201777, ST_GeomFromText('POINT(42.1899935 -91.8201777)', 4326), 42.3116566, -91.7871181, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('456121', 'East Branch Boone River', 'Stream', 'Iowa', 'IA', 'Wright', 'Corwith', 42.9044122, -93.878557, ST_GeomFromText('POINT(42.9044122 -93.878557)', 4326), 43.0702406, -93.7971648, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456122', 'East Branch Buckley Creek', 'Stream', 'Iowa', 'IA', 'Mahaska', 'Peoria', 41.4924976, -92.8254724, ST_GeomFromText('POINT(41.4924976 -92.8254724)', 4326), 41.4697222, -92.7622222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456123', 'East Branch Buffalo Creek', 'Stream', 'Iowa', 'IA', 'Buchanan', 'Oelwein SE', 42.5602623, -91.7568321, ST_GeomFromText('POINT(42.5602623 -91.7568321)', 4326), 42.6869279, -91.7901646, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456124', 'East Branch Iowa River', 'Stream', 'Iowa', 'IA', 'Wright', 'Belmond', 42.860524, -93.6138214, ST_GeomFromText('POINT(42.860524 -93.6138214)', 4326), 43.143293, -93.6982717, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456125', 'East Branch Lick Creek', 'Stream', 'Iowa', 'IA', 'Jefferson', 'Libertyville', 40.9186324, -92.0562865, ST_GeomFromText('POINT(40.9186324 -92.0562865)', 4326), 40.9597222, -92.0580556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456126', 'East Branch Panther Creek', 'Stream', 'Iowa', 'IA', 'Dallas', 'Panther', 41.6549876, -94.1113454, ST_GeomFromText('POINT(41.6549876 -94.1113454)', 4326), 41.7333202, -94.1307913, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456127', 'East Branch Pine Creek', 'Stream', 'Iowa', 'IA', 'Buchanan', 'Oelwein SE', 42.5422072, -91.821557, ST_GeomFromText('POINT(42.5422072 -91.821557)', 4326), 42.5711111, -91.7875, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456128', 'East Branch Salt Creek', 'Stream', 'Iowa', 'IA', 'Tama', 'Elberon', 42.0111049, -92.3507432, ST_GeomFromText('POINT(42.0111049 -92.3507432)', 4326), 42.1855477, -92.3082423, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456129', 'East Branch Spring Creek', 'Stream', 'Iowa', 'IA', 'Black Hawk', 'Brandon', 42.3619346, -92.0921243, ST_GeomFromText('POINT(42.3619346 -92.0921243)', 4326), 42.4613766, -92.010176, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456130', 'East Branch Wapsinonoc Creek', 'Stream', 'Iowa', 'IA', 'Muscatine', 'Atalissa', 41.5839121, -91.2473804, ST_GeomFromText('POINT(41.5839121 -91.2473804)', 4326), 41.684188, -91.248216, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('456131', 'East Branch West Nishnabotna River', 'Stream', 'Iowa', 'IA', 'Pottawattamie', 'Avoca', 41.44468, -95.35697, ST_GeomFromText('POINT(41.44468 -95.35697)', 4326), 41.8729, -94.97291, '1979-04-30', '2018-03-09', NULL, NULL, NULL),
  ('456132', 'East Branch Wolf Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Climbing Hill', 42.3474913, -96.0289042, ST_GeomFromText('POINT(42.3474913 -96.0289042)', 4326), 42.4377689, -95.9680702, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456133', 'East Buck Creek', 'Stream', 'Iowa', 'IA', 'Poweshiek', 'Searsboro', 41.5541664, -92.6329674, ST_GeomFromText('POINT(41.5541664 -92.6329674)', 4326), 41.6233316, -92.614911, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456134', 'East Burr Oak Creek', 'Stream', 'Iowa', 'IA', 'Jasper', 'Alloway Creek', 41.7733244, -92.9260278, ST_GeomFromText('POINT(41.7733244 -92.9260278)', 4326), 41.8225, -92.9002778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456135', 'East Buttrick Creek', 'Stream', 'Iowa', 'IA', 'Greene', 'Jefferson East', 42.0499814, -94.2810759, ST_GeomFromText('POINT(42.0499814 -94.2810759)', 4326), 42.3013635, -94.1857947, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456136', 'East Cedar Creek', 'Stream', 'Iowa', 'IA', 'Calhoun', 'Lohrville', 42.296647, -94.5016406, ST_GeomFromText('POINT(42.296647 -94.5016406)', 4326), 42.5169219, -94.5399755, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456140', 'East Fork Battle Creek', 'Stream', 'Iowa', 'IA', 'Ida', 'Holstein', 42.3972097, -95.574725, ST_GeomFromText('POINT(42.3972097 -95.574725)', 4326), 42.4072222, -95.5147222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456142', 'East Fork Crooked Creek', 'Stream', 'Iowa', 'IA', 'Washington', 'Crawfordsville', 41.2005766, -91.6087744, ST_GeomFromText('POINT(41.2005766 -91.6087744)', 4326), 41.0550313, -91.3304312, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456143', 'East Fork Des Moines River', 'Stream', 'Iowa', 'IA', 'Humboldt', 'Humboldt', 42.6771931, -94.1982949, ST_GeomFromText('POINT(42.6771931 -94.1982949)', 4326), 43.7141234, -94.9088753, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456144', 'East Fork East Nodaway River', 'Stream', 'Iowa', 'IA', 'Adams', 'Prescott', 41.0749878, -94.5335766, ST_GeomFromText('POINT(41.0749878 -94.5335766)', 4326), 41.1405441, -94.4285732, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('456145', 'East Fork Grand River', 'Stream', 'Missouri', 'MO', 'Gentry', 'Albany South', 40.196823, -94.359963, ST_GeomFromText('POINT(40.196823 -94.359963)', 4326), 40.931574, -94.145838, '1979-04-30', '2023-01-28', NULL, NULL, NULL),
  ('456146', 'East Fork Hardin Creek', 'Stream', 'Iowa', 'IA', 'Greene', 'Jefferson East', 42.049149, -94.370246, ST_GeomFromText('POINT(42.049149 -94.370246)', 4326), 42.175813, -94.362746, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456147', 'East Fork Medicine Creek', 'Stream', 'Missouri', 'MO', 'Putnam', 'Powersville', 40.5781334, -93.3349935, ST_GeomFromText('POINT(40.5781334 -93.3349935)', 4326), 40.7033398, -93.3785471, '1979-04-30', '2010-11-22', NULL, NULL, NULL),
  ('456148', 'East Fork One Hundred and Two River', 'Stream', 'Missouri', 'MO', 'Nodaway', 'Hopkins', 40.55791, -94.82392, ST_GeomFromText('POINT(40.55791 -94.82392)', 4326), 40.87358, -94.55881, '1979-04-30', '2011-11-29', NULL, NULL, NULL),
  ('456149', 'East Fork Sabula Slough', 'Stream', 'Iowa', 'IA', 'Jackson', 'Savanna', 42.0978004, -90.1731836, ST_GeomFromText('POINT(42.0978004 -90.1731836)', 4326), 42.1175, -90.1852778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456150', 'East Fork Wapsipinicon River', 'Stream', 'Iowa', 'IA', 'Bremer', 'Sumner SW', 42.8222027, -92.2474002, ST_GeomFromText('POINT(42.8222027 -92.2474002)', 4326), 43.1749715, -92.3640651, '1979-04-30', NULL, 'Official', 'Board Decision', '1972-01-01'),
  ('456151', 'East Fork Wolf Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Climbing Hill', 42.3147133, -96.0100138, ST_GeomFromText('POINT(42.3147133 -96.0100138)', 4326), 42.4683239, -95.9311251, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456155', 'East Goose Lake', 'Lake', 'Iowa', 'IA', 'Jones', 'Oxford Junction', 41.9761315, -90.9387198, ST_GeomFromText('POINT(41.9761315 -90.9387198)', 4326), NULL, NULL, '1979-04-30', '2018-06-07', NULL, NULL, NULL),
  ('456156', 'East Grand Creek', 'Stream', 'Iowa', 'IA', 'Jasper', 'Colfax', 41.7277671, -93.1479789, ST_GeomFromText('POINT(41.7277671 -93.1479789)', 4326), 41.7980448, -93.1096443, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456160', 'East Indian Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Marion', 42.1088858, -91.562673, ST_GeomFromText('POINT(42.1088858 -91.562673)', 4326), 42.1447187, -91.4898909, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('456161', 'East Indian Creek', 'Stream', 'Iowa', 'IA', 'Story', 'Maxwell', 41.9208211, -93.4196553, ST_GeomFromText('POINT(41.9208211 -93.4196553)', 4326), 42.2124853, -93.4418769, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456165', 'East Lake', 'Lake', 'Iowa', 'IA', 'Adams', 'Lenox', 40.8994335, -94.5485583, ST_GeomFromText('POINT(40.8994335 -94.5485583)', 4326), NULL, NULL, '1979-04-30', '2018-07-05', NULL, NULL, NULL),
  ('456166', 'East Lake', 'Reservoir', 'Iowa', 'IA', 'Clarke', 'Jamison', 41.033829, -93.7429893, ST_GeomFromText('POINT(41.033829 -93.7429893)', 4326), NULL, NULL, '1979-04-30', '2018-06-22', NULL, NULL, NULL),
  ('456174', 'East Long Creek', 'Stream', 'Iowa', 'IA', 'Clarke', 'Hopeville', 40.9047181, -93.9096685, ST_GeomFromText('POINT(40.9047181 -93.9096685)', 4326), 41.0527717, -93.9174462, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456177', 'East Mill Creek', 'Stream', 'Iowa', 'IA', 'Page', 'Clearmont', 40.5933261, -95.1177561, ST_GeomFromText('POINT(40.5933261 -95.1177561)', 4326), 40.6416585, -95.0752563, '1979-04-30', NULL, 'Official', 'Board Decision', '1977-01-01'),
  ('456178', 'East Morningside Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Sergeant Bluff', 42.4436043, -96.3114161, ST_GeomFromText('POINT(42.4436043 -96.3114161)', 4326), 42.4844444, -96.3161111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456179', 'East Nishnabotna River', 'Stream', 'Iowa', 'IA', 'Fremont', 'Riverton', 40.6519454, -95.6230485, ST_GeomFromText('POINT(40.6519454 -95.6230485)', 4326), 41.9008189, -94.9919343, '1979-04-30', '2013-12-11', NULL, NULL, NULL),
  ('456180', 'East Nodaway River', 'Stream', 'Iowa', 'IA', 'Page', 'Clarinda South', 40.6349908, -95.0191439, ST_GeomFromText('POINT(40.6349908 -95.0191439)', 4326), 41.175266, -94.4638528, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456181', 'East Okoboji Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.4113506, -95.0741607, ST_GeomFromText('POINT(43.4113506 -95.0741607)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456182', 'East Okoboji Lake', 'Lake', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.404684, -95.0752718, ST_GeomFromText('POINT(43.404684 -95.0752718)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('456185', 'East Otter Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Cedar Rapids North', 42.1063847, -91.7154558, ST_GeomFromText('POINT(42.1063847 -91.7154558)', 4326), 42.2491585, -91.6473927, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456188', 'East Pine Creek', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Bluffton', 43.4491345, -91.9126576, ST_GeomFromText('POINT(43.4491345 -91.9126576)', 4326), 43.4880556, -91.8872222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456189', 'East Platte River', 'Stream', 'Iowa', 'IA', 'Adams', 'Kent', 40.9016558, -94.4274601, ST_GeomFromText('POINT(40.9016558 -94.4274601)', 4326), 41.0233231, -94.2877331, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456193', 'East River', 'Stream', 'Iowa', 'IA', 'Taylor', 'Merle Junction', 40.7991547, -94.5966325, ST_GeomFromText('POINT(40.7991547 -94.5966325)', 4326), 40.8747109, -94.4819064, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456202', 'East Soldier River', 'Stream', 'Iowa', 'IA', 'Monona', 'Ute', 42.0410998, -95.7191724, ST_GeomFromText('POINT(42.0410998 -95.7191724)', 4326), 42.1633212, -95.4294431, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456205', 'East Tarkio Creek', 'Stream', 'Iowa', 'IA', 'Page', 'Coin', 40.7161053, -95.208594, ST_GeomFromText('POINT(40.7161053 -95.208594)', 4326), 40.9580462, -95.0658186, '1979-04-30', NULL, 'Official', 'Board Decision', '1939-01-01'),
  ('456206', 'East Tarkio Creek', 'Stream', 'Iowa', 'IA', 'Montgomery', 'Wallin', 41.0611022, -95.1099886, ST_GeomFromText('POINT(41.0611022 -95.1099886)', 4326), 41.1299905, -95.0599885, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456208', 'East Twin Lake', 'Lake', 'Iowa', 'IA', 'Hancock', 'Olaf', 42.9360895, -93.7109461, ST_GeomFromText('POINT(42.9360895 -93.7109461)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('456212', 'Lake Easter', 'Reservoir', 'Iowa', 'IA', 'Polk', 'Des Moines SE', 41.5443405, -93.5662011, ST_GeomFromText('POINT(41.5443405 -93.5662011)', 4326), NULL, NULL, '1979-04-30', '2021-01-13', NULL, NULL, NULL),
  ('456223', 'Eddy Creek', 'Stream', 'Iowa', 'IA', 'Kossuth', 'Sexton', 43.0596878, -94.0199549, ST_GeomFromText('POINT(43.0596878 -94.0199549)', 4326), 43.0824649, -93.993287, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('456251', 'Eggers Hollow', 'Valley', 'Iowa', 'IA', 'Jackson', 'Green Island', 42.1310456, -90.3612135, ST_GeomFromText('POINT(42.1310456 -90.3612135)', 4326), 42.1438185, -90.3739026, '1979-04-30', '2015-09-04', NULL, NULL, NULL),
  ('456262', 'Elbow Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Springville', 42.0027794, -91.4843421, ST_GeomFromText('POINT(42.0027794 -91.4843421)', 4326), 42.0552811, -91.3659995, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456270', 'Eldridge Island', 'Island', 'Iowa', 'IA', 'Jackson', 'Savanna', 42.0855787, -90.1681835, ST_GeomFromText('POINT(42.0855787 -90.1681835)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456271', 'Eldridge Slough', 'Stream', 'Iowa', 'IA', 'Jackson', 'Savanna', 42.0928006, -90.1690168, ST_GeomFromText('POINT(42.0928006 -90.1690168)', 4326), 42.0928006, -90.1690168, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456279', 'Elk Creek', 'Stream', 'Iowa', 'IA', 'Harrison', 'Moorhead SE', 41.7508216, -95.8100083, ST_GeomFromText('POINT(41.7508216 -95.8100083)', 4326), 41.8461111, -95.7761111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456280', 'Elk Creek', 'Stream', 'Iowa', 'IA', 'Monona', 'Moorhead', 41.9194327, -95.844453, ST_GeomFromText('POINT(41.9194327 -95.844453)', 4326), 41.9025, -95.7511111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456281', 'Elk Creek', 'Stream', 'Iowa', 'IA', 'Hardin', 'Steamboat Rock', 42.4041485, -93.0685346, ST_GeomFromText('POINT(42.4041485 -93.0685346)', 4326), 42.4213889, -93.0008333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456282', 'Elk Creek', 'Stream', 'Iowa', 'IA', 'Clay', 'Gillett Grove', 43.0071938, -95.0444347, ST_GeomFromText('POINT(43.0071938 -95.0444347)', 4326), 43.0221917, -94.9338758, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456283', 'Elk Creek', 'Stream', 'Iowa', 'IA', 'Ida', 'Ida Grove NW', 42.3758198, -95.4511107, ST_GeomFromText('POINT(42.3758198 -95.4511107)', 4326), 42.3908167, -95.2374947, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456284', 'Elk Creek', 'Stream', 'Iowa', 'IA', 'Worth', 'Manly', 43.3696814, -93.1896476, ST_GeomFromText('POINT(43.3696814 -93.1896476)', 4326), 43.4541212, -93.5046561, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('456285', 'Elk Creek', 'Stream', 'Iowa', 'IA', 'Chickasaw', 'Elma', 43.1669159, -92.4371227, ST_GeomFromText('POINT(43.1669159 -92.4371227)', 4326), 43.2574695, -92.3829532, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456286', 'Elk Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Garber', 42.7380439, -91.2692995, ST_GeomFromText('POINT(42.7380439 -91.2692995)', 4326), 42.5922137, -91.2229132, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456287', 'Elk Creek', 'Stream', 'Iowa', 'IA', 'Crawford', 'Irwin', 41.7847093, -95.213051, ST_GeomFromText('POINT(41.7847093 -95.213051)', 4326), 41.9338753, -95.1108262, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456288', 'Elk Creek', 'Stream', 'Iowa', 'IA', 'Mahaska', 'Peoria', 41.4647199, -92.8543624, ST_GeomFromText('POINT(41.4647199 -92.8543624)', 4326), 41.7299906, -93.0232521, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456289', 'Elk Creek', 'Stream', 'Iowa', 'IA', 'Decatur', 'Lamoni North', 40.6916661, -93.8863363, ST_GeomFromText('POINT(40.6916661 -93.8863363)', 4326), 40.8386059, -94.0205049, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456295', 'Elk Lake', 'Lake', 'Iowa', 'IA', 'Clay', 'Silver Lake', 43.0825345, -94.9225539, ST_GeomFromText('POINT(43.0825345 -94.9225539)', 4326), NULL, NULL, '1979-04-30', '2018-07-13', NULL, NULL, NULL),
  ('456297', 'Elk Run', 'Stream', 'Iowa', 'IA', 'Hardin', 'Iowa Falls West', 42.5260908, -93.2752035, ST_GeomFromText('POINT(42.5260908 -93.2752035)', 4326), 42.555, -93.3369444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456298', 'Elk Run', 'Stream', 'Iowa', 'IA', 'Black Hawk', 'Waterloo South', 42.45971, -92.2782394, ST_GeomFromText('POINT(42.45971 -92.2782394)', 4326), 42.5822076, -92.2760154, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456299', 'Elk Run', 'Stream', 'Iowa', 'IA', 'Carroll', 'Lanesboro', 42.1830395, -94.7416484, ST_GeomFromText('POINT(42.1830395 -94.7416484)', 4326), 42.2319282, -94.9252653, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456300', 'Elk Run', 'Stream', 'Iowa', 'IA', 'Tama', 'Tama', 41.8905485, -92.591302, ST_GeomFromText('POINT(41.8905485 -92.591302)', 4326), 41.8441592, -92.6971366, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('456307', 'Elkhorn Creek', 'Stream', 'Iowa', 'IA', 'Cass', 'Prairie Rose Lake', 41.5355447, -95.1252703, ST_GeomFromText('POINT(41.5355447 -95.1252703)', 4326), 41.6616539, -94.9649876, '1979-04-30', NULL, 'Official', 'Board Decision', '1977-01-01'),
  ('456308', 'Elkhorn Creek', 'Stream', 'Iowa', 'IA', 'Boone', 'Fraser', 42.1324799, -93.9416181, ST_GeomFromText('POINT(42.1324799 -93.9416181)', 4326), 42.1425, -93.8941667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456309', 'Elkhorn Creek', 'Stream', 'Iowa', 'IA', 'Webster', 'Fort Dodge South', 42.4944139, -94.1899614, ST_GeomFromText('POINT(42.4944139 -94.1899614)', 4326), 42.4916667, -94.2083333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456311', 'Eller Branch', 'Stream', 'Iowa', 'IA', 'Cass', 'Wiota', 41.3861, -94.9299855, ST_GeomFromText('POINT(41.3861 -94.9299855)', 4326), 41.3969318, -94.7913689, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456315', 'Elliott Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Lawton', 42.3980479, -96.2350248, ST_GeomFromText('POINT(42.3980479 -96.2350248)', 4326), 42.5888806, -96.1258548, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456316', 'Elliott Creek', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Cresco NE', 43.4710777, -92.0034945, ST_GeomFromText('POINT(43.4710777 -92.0034945)', 4326), 43.5299658, -92.03655, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456328', 'Elm Branch', 'Stream', 'Iowa', 'IA', 'Dallas', 'Perry', 41.8002637, -94.1116242, ST_GeomFromText('POINT(41.8002637 -94.1116242)', 4326), 41.8199855, -94.2377399, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456330', 'Elm Creek', 'Stream', 'Iowa', 'IA', 'Shelby', 'Jacksonville', 41.6410994, -95.2311072, ST_GeomFromText('POINT(41.6410994 -95.2311072)', 4326), 41.6888889, -95.1344444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456331', 'Elm Creek', 'Stream', 'Iowa', 'IA', 'Cass', 'Dewey', 41.221932, -94.8113684, ST_GeomFromText('POINT(41.221932 -94.8113684)', 4326), 41.2358202, -94.7377541, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456338', 'Elm Lake', 'Lake', 'Iowa', 'IA', 'Wright', 'Cornelia', 42.764815, -93.6798672, ST_GeomFromText('POINT(42.764815 -93.6798672)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('456355', 'Elwood Creek', 'Stream', 'Iowa', 'IA', 'Clinton', 'Maquoketa', 42.0325207, -90.6984709, ST_GeomFromText('POINT(42.0325207 -90.6984709)', 4326), 41.987243, -90.7762523, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456357', 'Elys Creek', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Keosauqua', 40.7183612, -91.9873959, ST_GeomFromText('POINT(40.7183612 -91.9873959)', 4326), 40.7216939, -92.0232305, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456366', 'Emersons Bay', 'Bay', 'Iowa', 'IA', 'Dickinson', 'Milford', 43.3571862, -95.1702744, ST_GeomFromText('POINT(43.3571862 -95.1702744)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456368', 'Emery Creek', 'Stream', 'Iowa', 'IA', 'Lyon', 'George West', 43.32442, -96.1158566, ST_GeomFromText('POINT(43.32442 -96.1158566)', 4326), 43.4202486, -96.0333558, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456369', 'Emigrant Creek', 'Stream', 'Iowa', 'IA', 'Crawford', 'Charter Oak', 42.0710999, -95.5944471, ST_GeomFromText('POINT(42.0710999 -95.5944471)', 4326), 42.0916667, -95.5169444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456376', 'Engels Creek', 'Stream', 'Iowa', 'IA', 'O''Brien', 'Sheldon', 43.2055327, -95.8225162, ST_GeomFromText('POINT(43.2055327 -95.8225162)', 4326), 43.2208088, -95.7236254, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456377', 'English Creek', 'Stream', 'Iowa', 'IA', 'Poweshiek', 'Searsboro', 41.528055, -92.6854688, ST_GeomFromText('POINT(41.528055 -92.6854688)', 4326), 41.6861061, -92.7243574, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456378', 'English Creek', 'Stream', 'Iowa', 'IA', 'Marion', 'Harvey', 41.3283328, -92.9213104, ST_GeomFromText('POINT(41.3283328 -92.9213104)', 4326), 41.0736101, -93.2432636, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456379', 'English River', 'Stream', 'Iowa', 'IA', 'Washington', 'Riverside', 41.4875206, -91.5018294, ST_GeomFromText('POINT(41.4875206 -91.5018294)', 4326), 41.50626, -91.93136, '1979-04-30', '2014-12-12', NULL, NULL, NULL),
  ('456381', 'Ensign Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Volga', 42.7544283, -91.5662579, ST_GeomFromText('POINT(42.7544283 -91.5662579)', 4326), 42.7575, -91.5938889, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('456384', 'Epping Creek', 'Stream', 'Iowa', 'IA', 'O''Brien', 'Plessis', 43.1760842, -95.5119523, ST_GeomFromText('POINT(43.1760842 -95.5119523)', 4326), 43.1947222, -95.5841667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456388', 'Erickson Spring Branch', 'Stream', 'Iowa', 'IA', 'Allamakee', 'Church', 43.2969219, -91.2784658, ST_GeomFromText('POINT(43.2969219 -91.2784658)', 4326), 43.2658333, -91.3183333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456392', 'Esmay Slough', 'Stream', 'Iowa', 'IA', 'Jackson', 'Savanna', 42.088634, -90.1887393, ST_GeomFromText('POINT(42.088634 -90.1887393)', 4326), 42.1141667, -90.1863889, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456398', 'Estherville Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.420241, -95.1777743, ST_GeomFromText('POINT(43.420241 -95.1777743)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456399', 'Etter Creek', 'Stream', 'Iowa', 'IA', 'Chickasaw', 'Frederika', 42.9124779, -92.3365681, ST_GeomFromText('POINT(42.9124779 -92.3365681)', 4326), 43.0152531, -92.4332363, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456400', 'Euclid Creek', 'Stream', 'Iowa', 'IA', 'Harrison', 'Missouri Valley', 41.5452701, -95.8755658, ST_GeomFromText('POINT(41.5452701 -95.8755658)', 4326), 41.5324923, -95.8038983, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456448', 'Eversoll Creek', 'Stream', 'Iowa', 'IA', 'Boone', 'Luther', 41.8858188, -93.8596713, ST_GeomFromText('POINT(41.8858188 -93.8596713)', 4326), 41.9483174, -93.9355074, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456533', 'Falling Springs', 'Spring', 'Iowa', 'IA', 'Fayette', 'West Union', 42.9958108, -91.8712749, ST_GeomFromText('POINT(42.9958108 -91.8712749)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456534', 'Fallow Marsh', 'Swamp', 'Iowa', 'IA', 'Palo Alto', 'Graettinger West', 43.1888514, -94.8063727, ST_GeomFromText('POINT(43.1888514 -94.8063727)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456542', 'Farm Creek', 'Stream', 'Iowa', 'IA', 'Montgomery', 'Carson', 41.131662, -95.4438879, ST_GeomFromText('POINT(41.131662 -95.4438879)', 4326), 41.2705473, -95.263886, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('456543', 'Farm Creek', 'Stream', 'Iowa', 'IA', 'Jones', 'Canton', 42.1797327, -90.9476415, ST_GeomFromText('POINT(42.1797327 -90.9476415)', 4326), 42.2838922, -91.0845874, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456548', 'Farmers Creek', 'Stream', 'Iowa', 'IA', 'Jackson', 'Fulton', 42.1500171, -90.6668004, ST_GeomFromText('POINT(42.1500171 -90.6668004)', 4326), 42.3169557, -90.6170739, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456561', 'Fawn Creek', 'Stream', 'Iowa', 'IA', 'Jones', 'Anamosa', 42.0930603, -91.2743262, ST_GeomFromText('POINT(42.0930603 -91.2743262)', 4326), 42.133337, -91.2546011, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456570', 'Fenchel Creek', 'Stream', 'Iowa', 'IA', 'Delaware', 'Strawberry Point', 42.6297068, -91.5690389, ST_GeomFromText('POINT(42.6297068 -91.5690389)', 4326), 42.6533186, -91.4754209, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456577', 'Fern Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Oto', 42.2861014, -95.889454, ST_GeomFromText('POINT(42.2861014 -95.889454)', 4326), 42.2963889, -95.9205556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456583', 'Fiddle Creek', 'Stream', 'Iowa', 'IA', 'Cherokee', 'Fielding', 42.6622109, -95.8580696, ST_GeomFromText('POINT(42.6622109 -95.8580696)', 4326), 42.8058197, -95.7983466, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456598', 'First Creek', 'Stream', 'Iowa', 'IA', 'Boone', 'Boone West', 42.0116498, -93.9230069, ST_GeomFromText('POINT(42.0116498 -93.9230069)', 4326), 42.0147222, -93.9430556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456612', 'Fish Creek', 'Stream', 'Iowa', 'IA', 'Mitchell', 'Floyd', 43.2252503, -92.6801892, ST_GeomFromText('POINT(43.2252503 -92.6801892)', 4326), 43.2716388, -92.6826888, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456613', 'Fish Creek', 'Stream', 'Iowa', 'IA', 'Henry', 'Salem', 40.8522549, -91.5190464, ST_GeomFromText('POINT(40.8522549 -91.5190464)', 4326), 40.8791972, -91.5971051, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456614', 'Fish Lake', 'Stream', 'Iowa', 'IA', 'Harrison', 'Modale', 41.6097135, -96.0111229, ST_GeomFromText('POINT(41.6097135 -96.0111229)', 4326), 41.6097222, -96.0111111, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('456615', 'Fish Lake', 'Lake', 'Iowa', 'IA', 'Jackson', 'Green Island', 42.1714644, -90.2992841, ST_GeomFromText('POINT(42.1714644 -90.2992841)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('456618', 'Fisher Creek', 'Stream', 'Iowa', 'IA', 'Fremont', 'Shenandoah West', 40.7524985, -95.4336003, ST_GeomFromText('POINT(40.7524985 -95.4336003)', 4326), 40.7322186, -95.3205415, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456619', 'Fisher Lake', 'Swamp', 'Iowa', 'IA', 'Polk', 'Des Moines NW', 41.6821481, -93.6574593, ST_GeomFromText('POINT(41.6821481 -93.6574593)', 4326), NULL, NULL, '1979-04-30', '2018-06-22', NULL, NULL, NULL),
  ('456620', 'Fisher Lake', 'Lake', 'Iowa', 'IA', 'Black Hawk', 'Cedar Falls', 42.5347489, -92.4117987, ST_GeomFromText('POINT(42.5347489 -92.4117987)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('456623', 'Fitzgerald Creek', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Castalia', 43.0152571, -91.6795976, ST_GeomFromText('POINT(43.0152571 -91.6795976)', 4326), 43.1022222, -91.6827778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456624', 'Five Island Lake', 'Lake', 'Iowa', 'IA', 'Palo Alto', 'Graettinger East', 43.1499638, -94.6669243, ST_GeomFromText('POINT(43.1499638 -94.6669243)', 4326), NULL, NULL, '1979-04-30', NULL, 'Official', 'Board Decision', '1947-01-01'),
  ('456625', 'Fivemile Creek', 'Stream', 'Iowa', 'IA', 'Wayne', 'Corydon NE', 40.90028, -93.367156, ST_GeomFromText('POINT(40.90028 -93.367156)', 4326), 40.9122239, -93.4741028, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456628', 'Flank Creek', 'Stream', 'Iowa', 'IA', 'Warren', 'Newbern', 41.2316627, -93.3607663, ST_GeomFromText('POINT(41.2316627 -93.3607663)', 4326), 41.2569397, -93.435768, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456629', 'Flat Lake', 'Lake', 'Iowa', 'IA', 'Jackson', 'Green Island', 42.190673, -90.3456473, ST_GeomFromText('POINT(42.190673 -90.3456473)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('456630', 'Flatrock Creek', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Bonaparte', 40.6355894, -91.796556, ST_GeomFromText('POINT(40.6355894 -91.796556)', 4326), 40.58764, -91.78373, '1979-04-30', '2011-11-18', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('456633', 'Fletchall Creek', 'Stream', 'Iowa', 'IA', 'Ringgold', 'Blockton SE', 40.54003, -94.35129, ST_GeomFromText('POINT(40.54003 -94.35129)', 4326), 40.64883, -94.23223, '1979-04-30', '2011-11-18', NULL, NULL, NULL),
  ('456636', 'Flint Creek', 'Stream', 'Iowa', 'IA', 'Des Moines', 'Burlington', 40.8326175, -91.0983993, ST_GeomFromText('POINT(40.8326175 -91.0983993)', 4326), 41.0505877, -91.2951522, '1979-04-30', '2014-05-15', NULL, NULL, NULL),
  ('456639', 'Flood Creek', 'Stream', 'Iowa', 'IA', 'Butler', 'Clarksville', 42.8335871, -92.7151921, ST_GeomFromText('POINT(42.8335871 -92.7151921)', 4326), 43.2591338, -93.0235359, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456651', 'Floyd River', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Sioux City South', 42.4830497, -96.3916957, ST_GeomFromText('POINT(42.4830497 -96.3916957)', 4326), 43.2424734, -95.6208451, '1979-04-30', '2018-07-31', NULL, NULL, NULL),
  ('456653', 'Fly Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Beech', 41.3549935, -93.3160425, ST_GeomFromText('POINT(41.3549935 -93.3160425)', 4326), 41.3183333, -93.3661111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456654', 'Fockler Creek', 'Stream', 'Iowa', 'IA', 'Butler', 'Ackley', 42.6058103, -93.0154763, ST_GeomFromText('POINT(42.6058103 -93.0154763)', 4326), 42.6660866, -93.0807547, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456656', 'Folsom Lake', 'Lake', 'Iowa', 'IA', 'Mills', 'Pacific Junction', 41.0842589, -95.8228968, ST_GeomFromText('POINT(41.0842589 -95.8228968)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('456659', 'Fontana Lake', 'Reservoir', 'Iowa', 'IA', 'Buchanan', 'Hazleton', 42.5874849, -91.9085042, ST_GeomFromText('POINT(42.5874849 -91.9085042)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456678', 'Fork Creek', 'Stream', 'Iowa', 'IA', 'Lee', 'Fort Madison', 40.6289301, -91.2993168, ST_GeomFromText('POINT(40.6289301 -91.2993168)', 4326), 40.6561111, -91.3105556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456687', 'Fort Dodge Point', 'Cape', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.3757966, -95.1408291, ST_GeomFromText('POINT(43.3757966 -95.1408291)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('456690', 'Fort Sumter Rock', 'Summit', 'Iowa', 'IA', 'Butler', 'Dumont South', 42.7212622, -92.8892458, ST_GeomFromText('POINT(42.7212622 -92.8892458)', 4326), NULL, NULL, '1979-04-30', '2023-09-29', NULL, NULL, NULL),
  ('456697', 'Fountain Mill Spring', 'Spring', 'Iowa', 'IA', 'Delaware', 'Greeley', 42.6036003, -91.3156938, ST_GeomFromText('POINT(42.6036003 -91.3156938)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456698', 'Fountain Springs Creek', 'Stream', 'Iowa', 'IA', 'Delaware', 'Greeley', 42.6183229, -91.2915258, ST_GeomFromText('POINT(42.6183229 -91.2915258)', 4326), 42.5941667, -91.36, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456703', 'Fourmile Creek', 'Stream', 'Iowa', 'IA', 'Cass', 'Anita SW', 41.2594345, -94.997211, ST_GeomFromText('POINT(41.2594345 -94.997211)', 4326), 41.3030556, -94.9186111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456704', 'Fourmile Creek', 'Stream', 'Iowa', 'IA', 'Audubon', 'Exira East', 41.5727649, -94.7935923, ST_GeomFromText('POINT(41.5727649 -94.7935923)', 4326), 41.6405422, -94.7647028, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456705', 'Fourmile Creek', 'Stream', 'Iowa', 'IA', 'Cherokee', 'Quimby', 42.6260973, -95.6602859, ST_GeomFromText('POINT(42.6260973 -95.6602859)', 4326), 42.5766526, -95.6005614, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456706', 'Fourmile Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Des Moines SE', 41.5652674, -93.5116031, ST_GeomFromText('POINT(41.5652674 -93.5116031)', 4326), 41.8777154, -93.6894805, '1979-04-30', '2017-04-26', NULL, NULL, NULL),
  ('456707', 'Fourmile Creek', 'Stream', 'Iowa', 'IA', 'Union', 'Tingley NE', 40.9738819, -94.0374491, ST_GeomFromText('POINT(40.9738819 -94.0374491)', 4326), 41.1336026, -94.0524501, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456708', 'Fourmile Creek', 'Stream', 'Iowa', 'IA', 'Page', 'Shenandoah East', 40.7880527, -95.374711, ST_GeomFromText('POINT(40.7880527 -95.374711)', 4326), 40.746385, -95.309986, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456709', 'Fourmile Creek', 'Stream', 'Iowa', 'IA', 'Kossuth', 'Saint Joseph', 42.9983014, -94.2469082, ST_GeomFromText('POINT(42.9983014 -94.2469082)', 4326), 43.151909, -94.365803, '1979-04-30', NULL, 'Official', 'Board Decision', '1981-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('456710', 'Fourmile Creek', 'Stream', 'Iowa', 'IA', 'Tama', 'Gladbrook NE', 42.1877667, -92.5299151, ST_GeomFromText('POINT(42.1877667 -92.5299151)', 4326), 42.2697078, -92.7146437, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456711', 'Fourmile Lake', 'Reservoir', 'Iowa', 'IA', 'Emmet', 'Superior', 43.3938612, -94.9067626, ST_GeomFromText('POINT(43.3938612 -94.9067626)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('456712', 'Fox Creek', 'Stream', 'Iowa', 'IA', 'Dallas', 'Commerce', 41.5558224, -93.8466139, ST_GeomFromText('POINT(41.5558224 -93.8466139)', 4326), 41.5930556, -93.8480556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456714', 'Fox River', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Mount Sterling', 40.6114213, -91.9298943, ST_GeomFromText('POINT(40.6114213 -91.9298943)', 4326), 40.7536278, -92.7238047, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456715', 'Fox Run', 'Stream', 'Iowa', 'IA', 'Buena Vista', 'Peterson', 42.8833113, -95.288332, ST_GeomFromText('POINT(42.8833113 -95.288332)', 4326), 42.7716463, -95.2558314, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456721', 'Frankel Ridge', 'Ridge', 'Iowa', 'IA', 'Boone', 'Madrid NW', 41.9538796, -93.9108727, ST_GeomFromText('POINT(41.9538796 -93.9108727)', 4326), NULL, NULL, '1979-04-30', '2023-10-11', NULL, NULL, NULL),
  ('456770', 'French Creek', 'Stream', 'Iowa', 'IA', 'Allamakee', 'Waukon NW', 43.4269182, -91.3887479, ST_GeomFromText('POINT(43.4269182 -91.3887479)', 4326), 43.3355311, -91.413193, '1979-04-30', '2018-07-31', NULL, NULL, NULL),
  ('456771', 'French Creek', 'Stream', 'Iowa', 'IA', 'Lee', 'Fort Madison', 40.6261522, -91.3193174, ST_GeomFromText('POINT(40.6261522 -91.3193174)', 4326), 40.6575, -91.3236111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456773', 'French Hollow', 'Valley', 'Iowa', 'IA', 'Clayton', 'Elkader', 42.8430115, -91.4015829, ST_GeomFromText('POINT(42.8430115 -91.4015829)', 4326), 42.8224789, -91.4352294, '1979-04-30', '2023-10-06', NULL, NULL, NULL),
  ('456775', 'Frenchtown Lake', 'Lake', 'Iowa', 'IA', 'Clayton', 'Guttenberg', 42.8444329, -91.1015179, ST_GeomFromText('POINT(42.8444329 -91.1015179)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('456776', 'Fetter Island', 'Island', 'Iowa', 'IA', 'Des Moines', 'Burlington', 40.8267055, -91.092645, ST_GeomFromText('POINT(40.8267055 -91.092645)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('456778', 'Friday Hollow', 'Valley', 'Iowa', 'IA', 'Jackson', 'Green Island', 42.13411, -90.3445012, ST_GeomFromText('POINT(42.13411 -90.3445012)', 4326), 42.1260745, -90.3030431, '1979-04-30', '2015-09-04', NULL, NULL, NULL),
  ('456789', 'Frink Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Des Moines SW', 41.5661005, -93.6757752, ST_GeomFromText('POINT(41.5661005 -93.6757752)', 4326), 41.5152778, -93.7122222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456792', 'Frog Creek', 'Stream', 'Iowa', 'IA', 'Dallas', 'Perry', 41.8266522, -94.1160689, ST_GeomFromText('POINT(41.8266522 -94.1160689)', 4326), 41.9044285, -94.1219028, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456793', 'Frog Hollow', 'Valley', 'Iowa', 'IA', 'Fayette', 'Fayette', 42.8707678, -91.7532635, ST_GeomFromText('POINT(42.8707678 -91.7532635)', 4326), 42.8951576, -91.7702747, '1979-04-30', '2023-10-06', NULL, NULL, NULL),
  ('456795', 'Frost Creek', 'Stream', 'Iowa', 'IA', 'Guthrie', 'Guthrie Center West', 41.7385973, -94.6146978, ST_GeomFromText('POINT(41.7385973 -94.6146978)', 4326), 41.7283196, -94.7130348, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456799', 'Fudge Creek', 'Stream', 'Iowa', 'IA', 'Wapello', 'Chillicothe', 41.1130667, -92.5560229, ST_GeomFromText('POINT(41.1130667 -92.5560229)', 4326), 41.1666772, -92.5493565, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456802', 'Fullington Creek', 'Stream', 'Iowa', 'IA', 'Jasper', 'Colfax', 41.7208221, -93.2085366, ST_GeomFromText('POINT(41.7208221 -93.2085366)', 4326), 41.7727666, -93.169924, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456806', 'Fultons Creek', 'Stream', 'Iowa', 'IA', 'Montgomery', 'Morton Mills', 41.0272117, -94.994429, ST_GeomFromText('POINT(41.0272117 -94.994429)', 4326), 41.0444444, -94.9119444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456808', 'Furnace Hollow', 'Valley', 'Iowa', 'IA', 'Dubuque', 'Sherrill', 42.5362916, -90.7604649, ST_GeomFromText('POINT(42.5362916 -90.7604649)', 4326), 42.5208631, -90.778667, '1979-04-30', '2023-10-07', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('456809', 'Gabrielson Pool', 'Lake', 'Iowa', 'IA', 'Kossuth', 'German Valley', 43.2913419, -94.1138288, ST_GeomFromText('POINT(43.2913419 -94.1138288)', 4326), NULL, NULL, '1979-04-30', '2018-09-21', NULL, NULL, NULL),
  ('456812', 'Galls Creek', 'Stream', 'Iowa', 'IA', 'Hancock', 'Garner', 43.0671838, -93.6235454, ST_GeomFromText('POINT(43.0671838 -93.6235454)', 4326), 43.0582948, -93.4399282, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456821', 'Gard Creek', 'Stream', 'Iowa', 'IA', 'Monona', 'Onawa', 42.0966557, -96.0014005, ST_GeomFromText('POINT(42.0966557 -96.0014005)', 4326), 42.1366561, -95.9272321, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456869', 'Geneva Island', 'Island', 'Iowa', 'IA', 'Muscatine', 'Illinois City', 41.4350294, -90.9662588, ST_GeomFromText('POINT(41.4350294 -90.9662588)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456876', 'Lake George', 'Lake', 'Iowa', 'IA', 'Hancock', 'Crystal Lake', 43.2188031, -93.8742475, ST_GeomFromText('POINT(43.2188031 -93.8742475)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('456878', 'Gere Creek', 'Stream', 'Iowa', 'IA', 'Cherokee', 'Cherokee North', 42.8510934, -95.6202866, ST_GeomFromText('POINT(42.8510934 -95.6202866)', 4326), 42.7955399, -95.6622321, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456882', 'German Creek', 'Stream', 'Iowa', 'IA', 'Keokuk', 'Sigourney', 41.2914013, -92.1293459, ST_GeomFromText('POINT(41.2914013 -92.1293459)', 4326), 41.4400094, -92.1599021, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456883', 'German Hollow', 'Valley', 'Iowa', 'IA', 'Clayton', 'Volga', 42.7776378, -91.600603, ST_GeomFromText('POINT(42.7776378 -91.600603)', 4326), 42.7753029, -91.6150361, '1979-04-30', '2023-10-07', NULL, NULL, NULL),
  ('456892', 'Ghost Hollow', 'Valley', 'Iowa', 'IA', 'Lee', 'Argyle', 40.5476663, -91.6110064, ST_GeomFromText('POINT(40.5476663 -91.6110064)', 4326), 40.5358159, -91.593802, '1979-04-30', '2023-09-29', NULL, NULL, NULL),
  ('456907', 'Ginger Creek', 'Stream', 'Iowa', 'IA', 'O''Brien', 'Sutherland West', 42.9955347, -95.6161195, ST_GeomFromText('POINT(42.9955347 -95.6161195)', 4326), 43.044977, -95.5711191, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('456910', 'Gingles Hollow', 'Valley', 'Iowa', 'IA', 'Monona', 'Castana', 42.0912143, -95.9078909, ST_GeomFromText('POINT(42.0912143 -95.9078909)', 4326), 42.1149002, -95.9367792, '1979-04-30', '2023-09-29', NULL, NULL, NULL),
  ('456912', 'Given Creek', 'Stream', 'Iowa', 'IA', 'Tama', 'Gladbrook NE', 42.2491545, -92.5471382, ST_GeomFromText('POINT(42.2491545 -92.5471382)', 4326), 42.3316537, -92.4949134, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456913', 'Gizzard Creek', 'Stream', 'Iowa', 'IA', 'Floyd', 'Nashua', 42.989697, -92.5499069, ST_GeomFromText('POINT(42.989697 -92.5499069)', 4326), 43.075806, -92.6174088, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456936', 'Glover Creek', 'Stream', 'Iowa', 'IA', 'Fayette', 'West Union', 42.9480347, -91.7754374, ST_GeomFromText('POINT(42.9480347 -91.7754374)', 4326), 42.9986111, -91.8055556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456937', 'Glynn Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Eldridge', 41.736975, -90.5259697, ST_GeomFromText('POINT(41.736975 -90.5259697)', 4326), 41.6772222, -90.5427778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456939', 'Gobbler Creek', 'Stream', 'Iowa', 'IA', 'Keokuk', 'Hedrick', 41.2205683, -92.3040725, ST_GeomFromText('POINT(41.2205683 -92.3040725)', 4326), 41.1941667, -92.2508333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456945', 'Goetz Island', 'Island', 'Iowa', 'IA', 'Clayton', 'Guttenberg', 42.7683237, -91.0884622, ST_GeomFromText('POINT(42.7683237 -91.0884622)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456948', 'Golden Branch', 'Stream', 'Iowa', 'IA', 'Delaware', 'Ryan', 42.3586035, -91.3965414, ST_GeomFromText('POINT(42.3586035 -91.3965414)', 4326), 42.3902673, -91.468487, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456951', 'Golden Lake', 'Lake', 'Iowa', 'IA', 'Jackson', 'Green Island', 42.1969627, -90.3481848, ST_GeomFromText('POINT(42.1969627 -90.3481848)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456965', 'Goodwater Creek', 'Stream', 'Iowa', 'IA', 'Lucas', 'Russell', 40.9052818, -93.1490949, ST_GeomFromText('POINT(40.9052818 -93.1490949)', 4326), 40.853893, -93.2071525, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('456966', 'Goose Creek', 'Stream', 'Iowa', 'IA', 'Lee', 'Argyle', 40.5780948, -91.5732146, ST_GeomFromText('POINT(40.5780948 -91.5732146)', 4326), 40.61, -91.5527778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456967', 'Goose Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Davenport East', 41.5500326, -90.5520803, ST_GeomFromText('POINT(41.5500326 -90.5520803)', 4326), 41.6161111, -90.6019444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456968', 'Goose Creek', 'Stream', 'Iowa', 'IA', 'Louisa', 'Cotter', 41.3591899, -91.4209918, ST_GeomFromText('POINT(41.3591899 -91.4209918)', 4326), 41.3800181, -91.6454437, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456969', 'Goose Island', 'Island', 'Iowa', 'IA', 'Muscatine', 'Illinois City', 41.4314188, -90.9193131, ST_GeomFromText('POINT(41.4314188 -90.9193131)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456970', 'Goose Lake', 'Lake', 'Iowa', 'IA', 'Hamilton', 'Ellsworth', 42.3157378, -93.6234403, ST_GeomFromText('POINT(42.3157378 -93.6234403)', 4326), NULL, NULL, '1979-04-30', '2018-07-31', NULL, NULL, NULL),
  ('456971', 'Goose Lake', 'Lake', 'Iowa', 'IA', 'Mahaska', 'Rose Hill', 41.3715828, -92.4410152, ST_GeomFromText('POINT(41.3715828 -92.4410152)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('456972', 'Goose Lake', 'Lake', 'Iowa', 'IA', 'Clinton', 'Goose Lake', 41.9678886, -90.4022028, ST_GeomFromText('POINT(41.9678886 -90.4022028)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('456973', 'Goose Lake', 'Lake', 'Iowa', 'IA', 'Jackson', 'Green Island', 42.1916412, -90.3338197, ST_GeomFromText('POINT(42.1916412 -90.3338197)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('456974', 'Goose Lake', 'Lake', 'Iowa', 'IA', 'Kossuth', 'Armstrong', 43.483885, -94.4095523, ST_GeomFromText('POINT(43.483885 -94.4095523)', 4326), NULL, NULL, '1979-04-30', '2018-09-21', NULL, NULL, NULL),
  ('456978', 'Goose Pond', 'Lake', 'Iowa', 'IA', 'Linn', 'Center Point', 42.1461057, -91.8051785, ST_GeomFromText('POINT(42.1461057 -91.8051785)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('456979', 'Goose Rock', 'Summit', 'Iowa', 'IA', 'Jackson', 'Canton', 42.1528276, -90.8775553, ST_GeomFromText('POINT(42.1528276 -90.8775553)', 4326), NULL, NULL, '1979-04-30', '2023-09-29', NULL, NULL, NULL),
  ('456980', 'Goose Run', 'Stream', 'Iowa', 'IA', 'Benton', 'Center Point SW', 42.046109, -91.8918477, ST_GeomFromText('POINT(42.046109 -91.8918477)', 4326), 42.0505556, -91.9366667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456981', 'Gooseberry Creek', 'Stream', 'Iowa', 'IA', 'Ringgold', 'Mount Ayr', 40.7194382, -94.1624527, ST_GeomFromText('POINT(40.7194382 -94.1624527)', 4326), 40.8191595, -94.1671746, '1979-04-30', NULL, NULL, NULL, NULL),
  ('456990', 'Gower Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Cedar Bluff', 41.7783509, -91.3082196, ST_GeomFromText('POINT(41.7783509 -91.3082196)', 4326), 41.7755719, -91.3773887, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457017', 'Gran Creek', 'Stream', 'Iowa', 'IA', 'Butler', 'Aplington', 42.5874783, -92.9149199, ST_GeomFromText('POINT(42.5874783 -92.9149199)', 4326), 42.5488889, -92.9555556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457028', 'Grand View Point', 'Cape', 'Iowa', 'IA', 'Cerro Gordo', 'Ventura Heights', 43.1191265, -93.4163173, ST_GeomFromText('POINT(43.1191265 -93.4163173)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457047', 'Granger Creek', 'Stream', 'Iowa', 'IA', 'Dubuque', 'Dubuque South', 42.464171, -90.660128, ST_GeomFromText('POINT(42.464171 -90.660128)', 4326), 42.3975, -90.6622222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457048', 'Granger Hill', 'Summit', 'Iowa', 'IA', 'Monona', 'Castana', 42.0396424, -95.8768727, ST_GeomFromText('POINT(42.0396424 -95.8768727)', 4326), NULL, NULL, '1979-04-30', '2023-09-29', NULL, NULL, NULL),
  ('457051', 'Grannis Creek', 'Stream', 'Iowa', 'IA', 'Fayette', 'Wadena', 42.834704, -91.7073793, ST_GeomFromText('POINT(42.834704 -91.7073793)', 4326), 42.8202594, -91.753494, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457073', 'Grants Creek', 'Stream', 'Iowa', 'IA', 'Lee', 'Croton', 40.5517051, -91.6701627, ST_GeomFromText('POINT(40.5517051 -91.6701627)', 4326), 40.5938889, -91.6369444, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('457077', 'Granville Creek', 'Stream', 'Iowa', 'IA', 'Sioux', 'Granville West', 42.9649864, -95.9552945, ST_GeomFromText('POINT(42.9649864 -95.9552945)', 4326), 42.9952778, -95.8866667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457078', 'Grape Chute', 'Stream', 'Iowa', 'IA', 'Lee', 'Dallas City', 40.6519858, -91.1798687, ST_GeomFromText('POINT(40.6519858 -91.1798687)', 4326), 40.6683333, -91.1413889, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457079', 'Grape Island', 'Island', 'Iowa', 'IA', 'Lee', 'Dallas City', 40.6594857, -91.1590347, ST_GeomFromText('POINT(40.6594857 -91.1590347)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457082', 'Graveyard Point', 'Cape', 'Iowa', 'IA', 'Washington', 'Lone Tree', 41.4269658, -91.4859946, ST_GeomFromText('POINT(41.4269658 -91.4859946)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457086', 'Gray Creek', 'Stream', 'Iowa', 'IA', 'Cherokee', 'Cherokee North', 42.8008155, -95.5555629, ST_GeomFromText('POINT(42.8008155 -95.5555629)', 4326), 42.931646, -95.5625073, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457088', 'Graybill Creek', 'Stream', 'Iowa', 'IA', 'Pottawattamie', 'Carson', 41.1686053, -95.3861095, ST_GeomFromText('POINT(41.1686053 -95.3861095)', 4326), 41.4663789, -95.2388855, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457089', 'Grays Creek', 'Stream', 'Iowa', 'IA', 'Monroe', 'Eddyville', 41.1600084, -92.657415, ST_GeomFromText('POINT(41.1600084 -92.657415)', 4326), 41.0722285, -92.8449194, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457091', 'Grays Lake', 'Lake', 'Iowa', 'IA', 'Polk', 'Des Moines SW', 41.5703821, -93.6385109, ST_GeomFromText('POINT(41.5703821 -93.6385109)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('457097', 'Green Bayou', 'Lake', 'Iowa', 'IA', 'Lee', 'Dallas City', 40.6563656, -91.2068232, ST_GeomFromText('POINT(40.6563656 -91.2068232)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('457099', 'Green Creek', 'Stream', 'Iowa', 'IA', 'Henry', 'Trenton', 41.0250251, -91.6582199, ST_GeomFromText('POINT(41.0250251 -91.6582199)', 4326), 41.0730556, -91.6680556, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('457109', 'Green Valley', 'Valley', 'Iowa', 'IA', 'Monona', 'Castana', 42.0565427, -95.9004082, ST_GeomFromText('POINT(42.0565427 -95.9004082)', 4326), 42.0419055, -95.8754088, '1979-04-30', '2023-09-29', NULL, NULL, NULL),
  ('457111', 'Green Valley Lake', 'Reservoir', 'Iowa', 'IA', 'Union', 'Creston West', 41.1029625, -94.3884121, ST_GeomFromText('POINT(41.1029625 -94.3884121)', 4326), NULL, NULL, '1979-04-30', '2018-07-05', NULL, NULL, NULL),
  ('457117', 'Greenbrier Creek', 'Stream', 'Iowa', 'IA', 'Dallas', 'Dawson', 41.8585959, -94.2460737, ST_GeomFromText('POINT(41.8585959 -94.2460737)', 4326), 41.9808179, -94.51414, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457145', 'Grell Pond', 'Reservoir', 'Iowa', 'IA', 'Ida', 'Battle Creek', 42.3731663, -95.5008819, ST_GeomFromText('POINT(42.3731663 -95.5008819)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('457156', 'Gritter Creek', 'Stream', 'Iowa', 'IA', 'Iowa', 'North English', 41.5338974, -92.0810117, ST_GeomFromText('POINT(41.5338974 -92.0810117)', 4326), 41.517784, -92.2910161, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457163', 'Grove Creek', 'Stream', 'Iowa', 'IA', 'Delaware', 'Hopkinton West', 42.2819423, -91.2743177, ST_GeomFromText('POINT(42.2819423 -91.2743177)', 4326), 42.296939, -91.3795997, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457171', 'Grubb Run', 'Stream', 'Iowa', 'IA', 'Jefferson', 'Libertyville', 40.9964081, -92.0560085, ST_GeomFromText('POINT(40.9964081 -92.0560085)', 4326), 40.9663889, -92.045, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457175', 'Guard Lake', 'Lake', 'Iowa', 'IA', 'Monona', 'Blencoe', 41.9888491, -96.105312, ST_GeomFromText('POINT(41.9888491 -96.105312)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('457178', 'Gull Point', 'Cape', 'Iowa', 'IA', 'Dickinson', 'Milford', 43.3707969, -95.1588851, ST_GeomFromText('POINT(43.3707969 -95.1588851)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457190', 'Gypsum Creek', 'Stream', 'Iowa', 'IA', 'Webster', 'Fort Dodge South', 42.4596926, -94.1580154, ST_GeomFromText('POINT(42.4596926 -94.1580154)', 4326), 42.5302473, -94.1052347, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('457192', 'Haberkorn Creek', 'Stream', 'Iowa', 'IA', 'Dubuque', 'Sherrill', 42.585276, -90.8317947, ST_GeomFromText('POINT(42.585276 -90.8317947)', 4326), 42.6316631, -90.8395721, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457196', 'Hainer Creek', 'Stream', 'Iowa', 'IA', 'Jackson', 'Delmar North', 42.0794651, -90.5915226, ST_GeomFromText('POINT(42.0794651 -90.5915226)', 4326), 42.0369444, -90.5911111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457203', 'Half Moon Lake', 'Lake', 'Iowa', 'IA', 'Des Moines', 'Dallas City', 40.7122628, -91.1295897, ST_GeomFromText('POINT(40.7122628 -91.1295897)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457206', 'Halfway Creek', 'Stream', 'Iowa', 'IA', 'Ida', 'Galva', 42.5069291, -95.4319448, ST_GeomFromText('POINT(42.5069291 -95.4319448)', 4326), 42.5197044, -95.2786077, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457208', 'Lake Halice', 'Lake', 'Iowa', 'IA', 'Polk', 'Des Moines SW', 41.6191159, -93.7379999, ST_GeomFromText('POINT(41.6191159 -93.7379999)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('457209', 'Hall Creek', 'Stream', 'Iowa', 'IA', 'Monona', 'Moorhead NW', 41.8777659, -95.8900093, ST_GeomFromText('POINT(41.8777659 -95.8900093)', 4326), 41.8713772, -95.8252861, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457210', 'Halls Lake', 'Lake', 'Iowa', 'IA', 'Louisa', 'Oakville', 41.1111444, -91.0823686, ST_GeomFromText('POINT(41.1111444 -91.0823686)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457212', 'Ham Branch', 'Stream', 'Iowa', 'IA', 'Appanoose', 'Mystic', 40.8655652, -92.9135326, ST_GeomFromText('POINT(40.8655652 -92.9135326)', 4326), 40.9047304, -92.9313107, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457219', 'Hamilton Creek', 'Stream', 'Iowa', 'IA', 'Lucas', 'Derby', 40.955834, -93.4657688, ST_GeomFromText('POINT(40.955834 -93.4657688)', 4326), 40.9005575, -93.5077147, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457222', 'Hamm Island', 'Island', 'Iowa', 'IA', 'Dubuque', 'Dubuque North', 42.5147244, -90.6442942, ST_GeomFromText('POINT(42.5147244 -90.6442942)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('457223', 'Hammers Creek', 'Stream', 'Iowa', 'IA', 'Grundy', 'New Hartford', 42.5669268, -92.5610237, ST_GeomFromText('POINT(42.5669268 -92.5610237)', 4326), 42.4824833, -92.587137, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457232', 'Hannen Lake', 'Reservoir', 'Iowa', 'IA', 'Benton', 'Marengo', 41.86723, -92.1140647, ST_GeomFromText('POINT(41.86723 -92.1140647)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('457234', 'Hanner Creek', 'Stream', 'Iowa', 'IA', 'Clarke', 'Truro', 41.1599935, -93.8549449, ST_GeomFromText('POINT(41.1599935 -93.8549449)', 4326), 41.1105491, -93.9057795, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457239', 'Hanthorn Lake', 'Lake', 'Iowa', 'IA', 'Pottawattamie', 'Omaha North', 41.3375776, -95.9086515, ST_GeomFromText('POINT(41.3375776 -95.9086515)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('457240', 'Happy Run', 'Stream', 'Iowa', 'IA', 'Greene', 'Churdan', 42.1533147, -94.444138, ST_GeomFromText('POINT(42.1533147 -94.444138)', 4326), 42.2035927, -94.5096961, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457253', 'Hardin Creek', 'Stream', 'Iowa', 'IA', 'Greene', 'Cooper', 41.9808165, -94.3146881, ST_GeomFromText('POINT(41.9808165 -94.3146881)', 4326), 42.3974745, -94.3383012, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457265', 'Harmon Lake', 'Lake', 'Iowa', 'IA', 'Winnebago', 'Vinje', 43.466879, -93.6983271, ST_GeomFromText('POINT(43.466879 -93.6983271)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('457283', 'Harris Grove Creek', 'Stream', 'Iowa', 'IA', 'Harrison', 'Beebeetown', 41.611102, -95.8127869, ST_GeomFromText('POINT(41.611102 -95.8127869)', 4326), 41.623046, -95.7061183, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457293', 'Harrows Branch', 'Stream', 'Iowa', 'IA', 'Wapello', 'Ottumwa North', 41.0308474, -92.4337969, ST_GeomFromText('POINT(41.0308474 -92.4337969)', 4326), 41.0547222, -92.4186111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457294', 'Harter Creek', 'Stream', 'Iowa', 'IA', 'Buchanan', 'Independence', 42.4838753, -91.9001719, ST_GeomFromText('POINT(42.4838753 -91.9001719)', 4326), 42.5483185, -91.8657253, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('457296', 'Hartgrave Creek', 'Stream', 'Iowa', 'IA', 'Butler', 'Dumont South', 42.7316414, -92.9485295, ST_GeomFromText('POINT(42.7316414 -92.9485295)', 4326), 42.7458066, -93.1018655, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457301', 'Hartman Pond', 'Lake', 'Iowa', 'IA', 'Des Moines', 'Dallas City', 40.712731, -91.1300332, ST_GeomFromText('POINT(40.712731 -91.1300332)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('457303', 'Harts Mill Creek', 'Stream', 'Iowa', 'IA', 'Clinton', 'Corydon NE', 40.9708339, -93.3365992, ST_GeomFromText('POINT(40.9708339 -93.3365992)', 4326), 41.8555845, -90.3398531, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457305', 'Hartwick Lake', 'Reservoir', 'Iowa', 'IA', 'Delaware', 'Manchester', 42.4094887, -91.3879293, ST_GeomFromText('POINT(42.4094887 -91.3879293)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('457316', 'Haugh Creek', 'Stream', 'Iowa', 'IA', 'Fayette', 'Alpha', 42.9933098, -92.056005, ST_GeomFromText('POINT(42.9933098 -92.056005)', 4326), 42.9369444, -92.0475, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457325', 'Hawk Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Correctionville SE', 42.2561008, -95.7577829, ST_GeomFromText('POINT(42.2561008 -95.7577829)', 4326), 42.3036111, -95.7847222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457326', 'Hawk Run', 'Stream', 'Iowa', 'IA', 'Marion', 'Knoxville SW', 41.307496, -93.1638167, ST_GeomFromText('POINT(41.307496 -93.1638167)', 4326), 41.302217, -93.2729862, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457330', 'Hawkeye Creek', 'Stream', 'Iowa', 'IA', 'Des Moines', 'Oakville', 41.0228135, -91.0240332, ST_GeomFromText('POINT(41.0228135 -91.0240332)', 4326), 41.0130902, -91.1726484, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457341', 'Hay Branch', 'Stream', 'Iowa', 'IA', 'Madison', 'Truro', 41.2472145, -93.874668, ST_GeomFromText('POINT(41.2472145 -93.874668)', 4326), 41.1747151, -93.8932794, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457342', 'Hay Creek', 'Stream', 'Iowa', 'IA', 'Crawford', 'Vail', 42.0324871, -95.2324953, ST_GeomFromText('POINT(42.0324871 -95.2324953)', 4326), 42.0180556, -95.1722222, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('457367', 'Hazelton Creek', 'Stream', 'Iowa', 'IA', 'Buchanan', 'Hazleton', 42.6208178, -91.9107263, ST_GeomFromText('POINT(42.6208178 -91.9107263)', 4326), 42.632762, -91.8785025, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457372', 'Heatons Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Prairieburg', 42.1841618, -91.4918335, ST_GeomFromText('POINT(42.1841618 -91.4918335)', 4326), 42.2941577, -91.5698868, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457379', 'Hefel Ridge', 'Ridge', 'Iowa', 'IA', 'Clayton', 'Cassville', 42.6781585, -90.9935066, ST_GeomFromText('POINT(42.6781585 -90.9935066)', 4326), NULL, NULL, '2023-10-06', '2023-10-07', NULL, NULL, NULL),
  ('457383', 'Heisler Creek', 'Stream', 'Iowa', 'IA', 'Monona', 'Mapleton', 42.1777672, -95.7900063, ST_GeomFromText('POINT(42.1777672 -95.7900063)', 4326), 42.1411003, -95.7400054, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457385', 'Hells Hollow', 'Valley', 'Iowa', 'IA', 'Clayton', 'Volga', 42.7775986, -91.600531, ST_GeomFromText('POINT(42.7775986 -91.600531)', 4326), 42.7665674, -91.6080858, '1979-04-30', '2023-10-07', NULL, NULL, NULL),
  ('457388', 'Helmer Creek', 'Stream', 'Iowa', 'IA', 'Jones', 'Anamosa NE', 42.1433337, -91.3562728, ST_GeomFromText('POINT(42.1433337 -91.3562728)', 4326), 42.2202778, -91.3475, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457392', 'Henchal Creek', 'Stream', 'Iowa', 'IA', 'Pottawattamie', 'McClelland', 41.3405516, -95.7341753, ST_GeomFromText('POINT(41.3405516 -95.7341753)', 4326), 41.4266605, -95.6988967, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457394', 'Henderson Island', 'Island', 'Iowa', 'IA', 'Allamakee', 'De Soto', 43.4766405, -91.22791, ST_GeomFromText('POINT(43.4766405 -91.22791)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457396', 'Lake Hendricks', 'Reservoir', 'Iowa', 'IA', 'Howard', 'Riceville', 43.3734869, -92.5460297, ST_GeomFromText('POINT(43.3734869 -92.5460297)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('457397', 'Hendrickson Marsh', 'Lake', 'Iowa', 'IA', 'Story', 'Rhodes', 41.9365814, -93.2397974, ST_GeomFromText('POINT(41.9365814 -93.2397974)', 4326), NULL, NULL, '1979-04-30', '2024-12-04', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('457400', 'Henry Creek', 'Stream', 'Iowa', 'IA', 'O''Brien', 'Sutherland East', 42.9388663, -95.3933355, ST_GeomFromText('POINT(42.9388663 -95.3933355)', 4326), 43.0127536, -95.3933355, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457404', 'Hershey Slough', 'Stream', 'Iowa', 'IA', 'Muscatine', 'Illinois City', 41.4303069, -90.9968151, ST_GeomFromText('POINT(41.4303069 -90.9968151)', 4326), 41.4286111, -90.9347222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457409', 'Hewett Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Volga', 42.7960951, -91.5031976, ST_GeomFromText('POINT(42.7960951 -91.5031976)', 4326), 42.7219284, -91.5762594, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457413', 'Hewitt Creek', 'Stream', 'Iowa', 'IA', 'Dubuque', 'Dyersville East', 42.4877739, -91.1143021, ST_GeomFromText('POINT(42.4877739 -91.1143021)', 4326), 42.5011093, -91.0192989, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457424', 'Hickory Creek', 'Stream', 'Iowa', 'IA', 'Allamakee', 'Monona', 43.122203, -91.391526, ST_GeomFromText('POINT(43.122203 -91.391526)', 4326), 43.09498, -91.5387553, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457425', 'Hickory Creek', 'Stream', 'Iowa', 'IA', 'Appanoose', 'Seymour East', 40.6655677, -93.0021482, ST_GeomFromText('POINT(40.6655677 -93.0021482)', 4326), 40.6738889, -93.0611111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457426', 'Hickory Creek', 'Stream', 'Iowa', 'IA', 'Appanoose', 'Centerville East', 40.7075169, -92.7751956, ST_GeomFromText('POINT(40.7075169 -92.7751956)', 4326), 40.7163889, -92.8325, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457427', 'Hickory Creek', 'Stream', 'Iowa', 'IA', 'Marion', 'Attica', 41.1702782, -93.0518699, ST_GeomFromText('POINT(41.1702782 -93.0518699)', 4326), 41.2466667, -93.1188889, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457428', 'Hickory Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Dixon', 41.6869725, -90.7654221, ST_GeomFromText('POINT(41.6869725 -90.7654221)', 4326), 41.6641972, -90.6020829, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457429', 'Hickory Creek', 'Stream', 'Iowa', 'IA', 'Davis', 'Milton', 40.7269689, -92.1857359, ST_GeomFromText('POINT(40.7269689 -92.1857359)', 4326), 40.741134, -92.2626826, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('457430', 'Hickory Creek', 'Stream', 'Iowa', 'IA', 'Dubuque', 'New Vienna', 42.5052744, -91.075967, ST_GeomFromText('POINT(42.5052744 -91.075967)', 4326), 42.5205542, -90.9629085, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457431', 'Hickory Creek', 'Stream', 'Iowa', 'IA', 'Dallas', 'Dallas Center', 41.6310991, -93.9974525, ST_GeomFromText('POINT(41.6310991 -93.9974525)', 4326), 41.6952652, -94.0185648, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457440', 'Hickory Grove Lake', 'Lake', 'Iowa', 'IA', 'Story', 'Collins', 41.9882214, -93.3570808, ST_GeomFromText('POINT(41.9882214 -93.3570808)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('457449', 'High Lake', 'Lake', 'Iowa', 'IA', 'Emmet', 'Ingham Lake', 43.3048716, -94.7125892, ST_GeomFromText('POINT(43.3048716 -94.7125892)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('457518', 'Hilton Creek', 'Stream', 'Iowa', 'IA', 'Iowa', 'Marengo', 41.795005, -92.0135133, ST_GeomFromText('POINT(41.795005 -92.0135133)', 4326), 41.7100064, -92.0354573, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457520', 'Hinkle Creek', 'Stream', 'Iowa', 'IA', 'Benton', 'Vinton', 42.1727727, -92.0260139, ST_GeomFromText('POINT(42.1727727 -92.0260139)', 4326), 42.1697161, -92.1640723, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457528', 'Hockeys Slough', 'Stream', 'Iowa', 'IA', 'Johnson', 'Nichols', 41.4772467, -91.2776567, ST_GeomFromText('POINT(41.4772467 -91.2776567)', 4326), 41.492522, -91.4184939, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457531', 'Hoffman Creek', 'Stream', 'Iowa', 'IA', 'Harrison', 'Logan', 41.6991559, -95.8358423, ST_GeomFromText('POINT(41.6991559 -95.8358423)', 4326), 41.7872105, -95.8347308, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457533', 'Hog Branch', 'Stream', 'Iowa', 'IA', 'Taylor', 'Merle Junction', 40.7802658, -94.5941322, ST_GeomFromText('POINT(40.7802658 -94.5941322)', 4326), 40.8094331, -94.4944064, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457534', 'Hog Creek', 'Stream', 'Iowa', 'IA', 'Decatur', 'Woodland', 40.6552835, -93.5838303, ST_GeomFromText('POINT(40.6552835 -93.5838303)', 4326), 40.7097222, -93.5277778, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('457535', 'Hog Creek', 'Stream', 'Iowa', 'IA', 'Harrison', 'Beebeetown', 41.6055466, -95.8175092, ST_GeomFromText('POINT(41.6055466 -95.8175092)', 4326), 41.6963782, -95.7936194, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457536', 'Hog Hollow', 'Valley', 'Iowa', 'IA', 'Clayton', 'Turkey River', 42.6757706, -91.0610387, ST_GeomFromText('POINT(42.6757706 -91.0610387)', 4326), 42.6677712, -91.0742703, '1979-04-30', '2023-10-07', NULL, NULL, NULL),
  ('457537', 'Hog Island', 'Island', 'Iowa', 'IA', 'Muscatine', 'Muscatine', 41.4308624, -91.0007041, ST_GeomFromText('POINT(41.4308624 -91.0007041)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457538', 'Hog Island', 'Island', 'Iowa', 'IA', 'Muscatine', 'Muscatine', 41.4297511, -91.0168156, ST_GeomFromText('POINT(41.4297511 -91.0168156)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457539', 'Hog Run', 'Stream', 'Iowa', 'IA', 'Ida', 'Galva', 42.5347068, -95.4494456, ST_GeomFromText('POINT(42.5347068 -95.4494456)', 4326), 42.5749849, -95.5047254, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457540', 'Hog Run', 'Stream', 'Iowa', 'IA', 'Iowa', 'Williamsburg', 41.67334, -92.0490682, ST_GeomFromText('POINT(41.67334 -92.0490682)', 4326), 41.6669495, -92.1465699, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457541', 'Hog Run', 'Stream', 'Iowa', 'IA', 'Tama', 'Belle Plaine', 41.9411069, -92.3074081, ST_GeomFromText('POINT(41.9411069 -92.3074081)', 4326), 41.9697164, -92.3762988, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457542', 'Hog Thief Creek', 'Stream', 'Iowa', 'IA', 'Lee', 'Keokuk', 40.3867107, -91.4476541, ST_GeomFromText('POINT(40.3867107 -91.4476541)', 4326), 40.4427778, -91.4405556, '1979-04-30', '2015-04-22', NULL, NULL, NULL),
  ('457543', 'Hogans Branch', 'Stream', 'Iowa', 'IA', 'Dubuque', 'Epworth', 42.4725009, -90.9195755, ST_GeomFromText('POINT(42.4725009 -90.9195755)', 4326), 42.4466667, -90.9966667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457544', 'Hogback Island', 'Island', 'Iowa', 'IA', 'Des Moines', 'Burlington', 40.8594828, -91.0529219, ST_GeomFromText('POINT(40.8594828 -91.0529219)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('457545', 'Hogs Den Hollow', 'Valley', 'Iowa', 'IA', 'Jones', 'Morley', 42.0425964, -91.2169808, ST_GeomFromText('POINT(42.0425964 -91.2169808)', 4326), 42.0400054, -91.2264906, '1979-04-30', '2023-10-11', NULL, NULL, NULL),
  ('457551', 'Holcomb Creek', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Douds', 40.8325232, -92.0821209, ST_GeomFromText('POINT(40.8325232 -92.0821209)', 4326), 40.8455768, -92.1943468, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457552', 'Holdens Pond', 'Reservoir', 'Iowa', 'IA', 'Iowa', 'Amana', 41.7779468, -91.8443763, ST_GeomFromText('POINT(41.7779468 -91.8443763)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('457553', 'Holiday Lake', 'Lake', 'Iowa', 'IA', 'Poweshiek', 'Belle Plaine SW', 41.8172716, -92.4473356, ST_GeomFromText('POINT(41.8172716 -92.4473356)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('457557', 'Holland Creek', 'Stream', 'Iowa', 'IA', 'Grundy', 'Holland', 42.3866496, -92.792977, ST_GeomFromText('POINT(42.3866496 -92.792977)', 4326), 42.4044263, -92.9396444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457559', 'Holliday Creek', 'Stream', 'Iowa', 'IA', 'Webster', 'Evanston', 42.4355266, -94.0988457, ST_GeomFromText('POINT(42.4355266 -94.0988457)', 4326), 42.5655254, -94.0805111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457598', 'Honey Creek', 'Stream', 'Iowa', 'IA', 'Des Moines', 'West Burlington', 40.8511491, -91.1565359, ST_GeomFromText('POINT(40.8511491 -91.1565359)', 4326), 40.8344444, -91.1505556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457599', 'Honey Creek', 'Stream', 'Iowa', 'IA', 'Washington', 'Richland', 41.2230706, -91.9032287, ST_GeomFromText('POINT(41.2230706 -91.9032287)', 4326), 41.1647222, -91.9491667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457600', 'Honey Creek', 'Stream', 'Iowa', 'IA', 'Marion', 'Lovilia', 41.2469462, -92.8976998, ST_GeomFromText('POINT(41.2469462 -92.8976998)', 4326), 41.2211111, -92.9980556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457601', 'Honey Creek', 'Stream', 'Iowa', 'IA', 'Clinton', 'Goose Lake', 41.9619703, -90.4712441, ST_GeomFromText('POINT(41.9619703 -90.4712441)', 4326), 41.9363889, -90.4469444, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('457602', 'Honey Creek', 'Stream', 'Iowa', 'IA', 'Boone', 'Boone West', 42.0110942, -93.9221735, ST_GeomFromText('POINT(42.0110942 -93.9221735)', 4326), 42.0597222, -93.8855556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457603', 'Honey Creek', 'Stream', 'Iowa', 'IA', 'Buchanan', 'Troy Mills', 42.3286004, -91.7323935, ST_GeomFromText('POINT(42.3286004 -91.7323935)', 4326), 42.3705556, -91.6811111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457604', 'Honey Creek', 'Stream', 'Iowa', 'IA', 'Wapello', 'Abingdon', 41.0330728, -92.1615675, ST_GeomFromText('POINT(41.0330728 -92.1615675)', 4326), 40.9955725, -92.2446254, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457605', 'Honey Creek', 'Stream', 'Iowa', 'IA', 'Henry', 'Lockridge East', 40.995304, -91.6507195, ST_GeomFromText('POINT(40.995304 -91.6507195)', 4326), 40.9839163, -91.6132182, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457606', 'Honey Creek', 'Stream', 'Iowa', 'IA', 'Fremont', 'Randolph', 40.8080553, -95.5855509, ST_GeomFromText('POINT(40.8080553 -95.5855509)', 4326), 40.9202751, -95.4486054, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457607', 'Honey Creek', 'Stream', 'Missouri', 'MO', 'Nodaway', 'Ravenwood', 40.3552682, -94.6877435, ST_GeomFromText('POINT(40.3552682 -94.6877435)', 4326), 40.8085999, -94.4899618, '1980-10-24', NULL, NULL, NULL, NULL),
  ('457608', 'Honey Creek', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Bonaparte', 40.6978095, -91.806834, ST_GeomFromText('POINT(40.6978095 -91.806834)', 4326), 40.8086393, -91.818779, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457609', 'Honey Creek', 'Stream', 'Iowa', 'IA', 'Lucas', 'Melrose', 40.9166709, -93.1246496, ST_GeomFromText('POINT(40.9166709 -93.1246496)', 4326), 40.979168, -93.2074293, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457610', 'Honey Creek', 'Stream', 'Iowa', 'IA', 'Appanoose', 'Mystic', 40.8452881, -92.9035324, ST_GeomFromText('POINT(40.8452881 -92.9035324)', 4326), 40.9286167, -93.0368693, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457611', 'Honey Creek', 'Stream', 'Iowa', 'IA', 'Lucas', 'Corydon NE', 40.9150019, -93.3199326, ST_GeomFromText('POINT(40.9150019 -93.3199326)', 4326), 40.9250016, -93.3868785, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('457612', 'Honey Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Littleport', 42.7538753, -91.3679141, ST_GeomFromText('POINT(42.7538753 -91.3679141)', 4326), 42.6808187, -91.4598639, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457613', 'Honey Creek', 'Stream', 'Iowa', 'IA', 'Delaware', 'Thorpe', 42.5027642, -91.4707026, ST_GeomFromText('POINT(42.5027642 -91.4707026)', 4326), 42.6402647, -91.4043074, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457614', 'Honey Creek', 'Stream', 'Iowa', 'IA', 'Marshall', 'Union', 42.1447083, -93.0546461, ST_GeomFromText('POINT(42.1447083 -93.0546461)', 4326), 42.3402606, -93.4768766, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457615', 'Honey Creek', 'Stream', 'Iowa', 'IA', 'Iowa', 'Ladora', 41.8369446, -92.1929609, ST_GeomFromText('POINT(41.8369446 -92.1929609)', 4326), 41.7752767, -92.3476845, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457616', 'Honey Creek', 'Stream', 'Iowa', 'IA', 'Audubon', 'Exira East', 41.6116539, -94.8577614, ST_GeomFromText('POINT(41.6116539 -94.8577614)', 4326), 41.6324868, -94.7855369, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457617', 'Honey Creek', 'Stream', 'Iowa', 'IA', 'Pottawattamie', 'Loveland', 41.4236062, -95.9311232, ST_GeomFromText('POINT(41.4236062 -95.9311232)', 4326), 41.563325, -95.7808423, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457618', 'Honey Creek', 'Stream', 'Iowa', 'IA', 'Louisa', 'Cotter', 41.3222467, -91.3773788, ST_GeomFromText('POINT(41.3222467 -91.3773788)', 4326), 41.486968, -91.3268249, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457619', 'Honey Creek', 'Stream', 'Iowa', 'IA', 'Louisa', 'Wapello', 41.1255877, -91.1612597, ST_GeomFromText('POINT(41.1255877 -91.1612597)', 4326), 41.0486443, -91.2334835, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457624', 'Hoosier Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Ely', 41.8238991, -91.5660067, ST_GeomFromText('POINT(41.8238991 -91.5660067)', 4326), 41.8891717, -91.7001778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457625', 'Hoosier Creek', 'Stream', 'Iowa', 'IA', 'Clarke', 'Weldon', 40.9616651, -93.6993852, ST_GeomFromText('POINT(40.9616651 -93.6993852)', 4326), 40.9605534, -93.7538308, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('457663', 'Horse Creek', 'Stream', 'Iowa', 'IA', 'Fremont', 'Nebraska City', 40.6702793, -95.8277786, ST_GeomFromText('POINT(40.6702793 -95.8277786)', 4326), 40.7936114, -95.6894429, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457665', 'Horse Island', 'Island', 'Iowa', 'IA', 'Scott', 'Andalusia', 41.466699, -90.6537501, ST_GeomFromText('POINT(41.466699 -90.6537501)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457666', 'Horse Shoe Lake', 'Lake', 'Iowa', 'IA', 'Jefferson', 'Trenton', 41.0568549, -91.7287272, ST_GeomFromText('POINT(41.0568549 -91.7287272)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('457667', 'Horseshoe Bluff', 'Cliff', 'Iowa', 'IA', 'Dubuque', 'Dubuque South', 42.4627823, -90.635128, ST_GeomFromText('POINT(42.4627823 -90.635128)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457668', 'Horseshoe Lake', 'Lake', 'Iowa', 'IA', 'Clinton', 'Shellsburg', 42.0702744, -91.7574024, ST_GeomFromText('POINT(42.0702744 -91.7574024)', 4326), NULL, NULL, '1979-04-30', '2016-07-08', NULL, NULL, NULL),
  ('457669', 'Horseshoe Lake', 'Lake', 'Iowa', 'IA', 'Louisa', 'Lone Tree', 41.3831497, -91.4095988, ST_GeomFromText('POINT(41.3831497 -91.4095988)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('457670', 'Horseshoe Lake', 'Lake', 'Iowa', 'IA', 'Woodbury', 'Oto', 42.3542312, -95.8929796, ST_GeomFromText('POINT(42.3542312 -95.8929796)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('457674', 'Horton Creek', 'Stream', 'Iowa', 'IA', 'Bremer', 'Plainfield', 42.824701, -92.5065734, ST_GeomFromText('POINT(42.824701 -92.5065734)', 4326), 42.930255, -92.4135144, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457675', 'Horton Creek', 'Stream', 'Iowa', 'IA', 'Lee', 'Nauvoo', 40.5303201, -91.409598, ST_GeomFromText('POINT(40.5303201 -91.409598)', 4326), 40.5288889, -91.4313889, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457677', 'Hoskins Creek', 'Stream', 'Iowa', 'IA', 'Ida', 'Ida Grove', 42.335264, -95.3972202, ST_GeomFromText('POINT(42.335264 -95.3972202)', 4326), 42.2824861, -95.3358296, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('457681', 'West Hottes Lake', 'Lake', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.479643, -95.143189, ST_GeomFromText('POINT(43.479643 -95.143189)', 4326), NULL, NULL, '2000-01-01', '2024-12-04', NULL, NULL, NULL),
  ('457687', 'Hovie Island', 'Island', 'Iowa', 'IA', 'Clayton', 'Brodtville', 42.8880286, -91.1121959, ST_GeomFromText('POINT(42.8880286 -91.1121959)', 4326), NULL, NULL, '1979-04-30', '2014-05-14', NULL, NULL, NULL),
  ('457692', 'Howard Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Saint Olaf', 42.9294291, -91.3834706, ST_GeomFromText('POINT(42.9294291 -91.3834706)', 4326), 42.9833181, -91.3248568, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457694', 'Howard Lake', 'Lake', 'Iowa', 'IA', 'Polk', 'Runnells', 41.5063791, -93.3421536, ST_GeomFromText('POINT(41.5063791 -93.3421536)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457695', 'Howards Bay', 'Bay', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.4021853, -95.154996, ST_GeomFromText('POINT(43.4021853 -95.154996)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457700', 'Howerdon Creek', 'Stream', 'Iowa', 'IA', 'Madison', 'Earlham East', 41.3811007, -94.0957869, ST_GeomFromText('POINT(41.3811007 -94.0957869)', 4326), 41.3769331, -94.2574585, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457701', 'Hoyts Branch', 'Stream', 'Iowa', 'IA', 'Cass', 'Anita SW', 41.2630444, -94.9008176, ST_GeomFromText('POINT(41.2630444 -94.9008176)', 4326), 41.3066542, -94.7958129, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457706', 'Hubbel Island', 'Island', 'Iowa', 'IA', 'Jackson', 'Savanna', 42.0539131, -90.1715168, ST_GeomFromText('POINT(42.0539131 -90.1715168)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457707', 'Hubbel Slough', 'Stream', 'Iowa', 'IA', 'Jackson', 'Savanna', 42.0483577, -90.1729057, ST_GeomFromText('POINT(42.0483577 -90.1729057)', 4326), 42.0588889, -90.1702778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457723', 'Humeston Reservoir', 'Reservoir', 'Iowa', 'IA', 'Wayne', 'Le Roy', 40.880079, -93.506316, ST_GeomFromText('POINT(40.880079 -93.506316)', 4326), NULL, NULL, '1979-04-30', '2024-12-04', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('457727', 'Hunter Branch', 'Stream', 'Iowa', 'IA', 'Fremont', 'Shenandoah West', 40.8049986, -95.463047, ST_GeomFromText('POINT(40.8049986 -95.463047)', 4326), 40.9763853, -95.4244398, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457728', 'Hunter Creek', 'Stream', 'Iowa', 'IA', 'Buchanan', 'Hazleton', 42.5438745, -91.9435059, ST_GeomFromText('POINT(42.5438745 -91.9435059)', 4326), 42.6788727, -91.9587834, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457729', 'Hunter Creek', 'Stream', 'Iowa', 'IA', 'Wayne', 'Garden Grove', 40.7680601, -93.5557727, ST_GeomFromText('POINT(40.7680601 -93.5557727)', 4326), 40.7797222, -93.5086111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457731', 'Hupp Creek', 'Stream', 'Iowa', 'IA', 'Jefferson', 'Libertyville', 40.9977966, -92.0832317, ST_GeomFromText('POINT(40.9977966 -92.0832317)', 4326), 41.0086296, -92.0882319, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457735', 'Huron Island', 'Island', 'Iowa', 'IA', 'Des Moines', 'Keithsburg', 41.0417024, -90.9618097, ST_GeomFromText('POINT(41.0417024 -90.9618097)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457737', 'Hurstville Branch', 'Stream', 'Iowa', 'IA', 'Jackson', 'Maquoketa', 42.098352, -90.6790243, ST_GeomFromText('POINT(42.098352 -90.6790243)', 4326), 42.1224207, -90.7610784, '1979-04-30', '2015-03-27', NULL, NULL, NULL),
  ('457741', 'Ice House Lake', 'Lake', 'Iowa', 'IA', 'Benton', 'Center Point NW', 42.1839029, -91.8771277, ST_GeomFromText('POINT(42.1839029 -91.8771277)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('457743', 'Lake Icaria', 'Reservoir', 'Iowa', 'IA', 'Adams', 'Corning North', 41.061618, -94.7247339, ST_GeomFromText('POINT(41.061618 -94.7247339)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('457747', 'Ideal Creek', 'Stream', 'Iowa', 'IA', 'Cerro Gordo', 'Mason City', 43.1396862, -93.1471469, ST_GeomFromText('POINT(43.1396862 -93.1471469)', 4326), 43.1975, -93.1372222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457787', 'Indian Creek', 'Stream', 'Iowa', 'IA', 'Lucas', 'Lucas', 41.0938871, -93.3888223, ST_GeomFromText('POINT(41.0938871 -93.3888223)', 4326), 41.0605556, -93.4772222, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('457788', 'Indian Creek', 'Stream', 'Iowa', 'IA', 'Black Hawk', 'Gilbertville', 42.3972116, -92.2165716, ST_GeomFromText('POINT(42.3972116 -92.2165716)', 4326), 42.4869444, -92.1308333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457789', 'Indian Creek', 'Stream', 'Iowa', 'IA', 'Washington', 'Brighton', 41.2136271, -91.8210041, ST_GeomFromText('POINT(41.2136271 -91.8210041)', 4326), 41.3177921, -91.8529499, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457790', 'Indian Creek', 'Stream', 'Missouri', 'MO', 'Harrison', 'Cainsville', 40.4888926, -93.8080034, ST_GeomFromText('POINT(40.4888926 -93.8080034)', 4326), 40.618056, -93.882448, '1980-10-24', NULL, NULL, NULL, NULL),
  ('457791', 'Indian Creek', 'Stream', 'Iowa', 'IA', 'Plymouth', 'Chatsworth', 42.889991, -96.5258653, ST_GeomFromText('POINT(42.889991 -96.5258653)', 4326), 42.9877651, -96.2647454, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457792', 'Indian Creek', 'Stream', 'Iowa', 'IA', 'Sac', 'Grant City', 42.3352603, -94.9838778, ST_GeomFromText('POINT(42.3352603 -94.9838778)', 4326), 42.4747035, -95.1211031, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457793', 'Indian Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Bertram', 41.9652801, -91.580733, ST_GeomFromText('POINT(41.9652801 -91.580733)', 4326), 42.1799945, -91.5751703, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457794', 'Indian Creek', 'Stream', 'Iowa', 'IA', 'Tama', 'Montour', 41.9877679, -92.7026963, ST_GeomFromText('POINT(41.9877679 -92.7026963)', 4326), 41.9702674, -92.7951975, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457795', 'Indian Creek', 'Stream', 'Iowa', 'IA', 'Cass', 'Atlantic SW', 41.296935, -95.1258262, ST_GeomFromText('POINT(41.296935 -95.1258262)', 4326), 41.6694316, -95.0008223, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457796', 'Indian Creek', 'Stream', 'Iowa', 'IA', 'Louisa', 'Wapello', 41.2314174, -91.2368178, ST_GeomFromText('POINT(41.2314174 -91.2368178)', 4326), 41.3461384, -91.2037633, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457797', 'Indian Creek', 'Stream', 'Iowa', 'IA', 'Pottawattamie', 'Council Bluffs South', 41.1891654, -95.873345, ST_GeomFromText('POINT(41.1891654 -95.873345)', 4326), 41.3472183, -95.7883432, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('457803', 'Indian Lake', 'Lake', 'Iowa', 'IA', 'Van Buren', 'Bonaparte', 40.6293421, -91.7526382, ST_GeomFromText('POINT(40.6293421 -91.7526382)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('457813', 'Ingham Lake', 'Lake', 'Iowa', 'IA', 'Emmet', 'Ingham Lake', 43.3186142, -94.695016, ST_GeomFromText('POINT(43.3186142 -94.695016)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('457814', 'Inghram Branch', 'Stream', 'Iowa', 'IA', 'Monroe', 'Iconium', 40.9947288, -92.9071428, ST_GeomFromText('POINT(40.9947288 -92.9071428)', 4326), 40.8941773, -92.8338078, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457830', 'Iowa Lake', 'Lake', 'Minnesota', 'MN', 'Nobles', 'Round Lake', 43.5017072, -95.4569533, ST_GeomFromText('POINT(43.5017072 -95.4569533)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('457831', 'Big Lake', 'Lake', 'Iowa', 'IA', 'Pottawattamie', 'Council Bluffs North', 41.2938864, -95.8619564, ST_GeomFromText('POINT(41.2938864 -95.8619564)', 4326), NULL, NULL, '1979-04-30', '2015-06-04', NULL, NULL, NULL),
  ('457834', 'Iowa River', 'Stream', 'Iowa', 'IA', 'Louisa', 'Toolesboro', 41.1605885, -91.0237563, ST_GeomFromText('POINT(41.1605885 -91.0237563)', 4326), 42.860524, -93.6138214, '1979-04-30', '2018-07-31', 'Official', 'Board Decision', '1931-01-01'),
  ('457838', 'Iowa Slough', 'Stream', 'Iowa', 'IA', 'Louisa', 'Keithsburg', 41.0861458, -90.9918106, ST_GeomFromText('POINT(41.0861458 -90.9918106)', 4326), 41.0872222, -91.0833333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457839', 'Iowa Slough Lake', 'Lake', 'Iowa', 'IA', 'Louisa', 'Keithsburg', 41.0759676, -90.9762274, ST_GeomFromText('POINT(41.0759676 -90.9762274)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('457846', 'Lake Iowa', 'Reservoir', 'Iowa', 'IA', 'Iowa', 'Williamsburg NW', 41.6379278, -92.1743592, ST_GeomFromText('POINT(41.6379278 -92.1743592)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('457851', 'Irish Hollow Creek', 'Stream', 'Iowa', 'IA', 'Allamakee', 'New Albin', 43.4583069, -91.3279128, ST_GeomFromText('POINT(43.4583069 -91.3279128)', 4326), 43.4946947, -91.3809701, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('457864', 'Irwin Creek', 'Stream', 'Missouri', 'MO', 'Mercer', 'Cleopatra', 40.5133425, -93.4868857, ST_GeomFromText('POINT(40.5133425 -93.4868857)', 4326), 40.6055556, -93.4352778, '1979-04-30', '2011-11-29', NULL, NULL, NULL),
  ('457865', 'Island 176', 'Island', 'Iowa', 'IA', 'Clayton', 'Clayton', 42.9574859, -91.1579074, ST_GeomFromText('POINT(42.9574859 -91.1579074)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457866', 'Island 178', 'Island', 'Iowa', 'IA', 'Clayton', 'Clayton', 42.9341531, -91.1565186, ST_GeomFromText('POINT(42.9341531 -91.1565186)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457868', 'Island 188', 'Island', 'Iowa', 'IA', 'Clayton', 'Guttenberg', 42.8227669, -91.0879066, ST_GeomFromText('POINT(42.8227669 -91.0879066)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457869', 'Island 189', 'Island', 'Iowa', 'IA', 'Clayton', 'Turkey River', 42.7447134, -91.0648508, ST_GeomFromText('POINT(42.7447134 -91.0648508)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457875', 'Israel Day Lake', 'Lake', 'Iowa', 'IA', 'Jackson', 'Savanna', 42.0872452, -90.1734613, ST_GeomFromText('POINT(42.0872452 -90.1734613)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457882', 'Jack Creek', 'Stream', 'Iowa', 'IA', 'Lee', 'Nauvoo', 40.536431, -91.4184872, ST_GeomFromText('POINT(40.536431 -91.4184872)', 4326), 40.5928174, -91.5182125, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457885', 'Jackson Branch', 'Stream', 'Iowa', 'IA', 'Appanoose', 'Plano', 40.8413968, -93.0179804, ST_GeomFromText('POINT(40.8413968 -93.0179804)', 4326), 40.8069444, -93.0202778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457891', 'Jackson Creek', 'Stream', 'Iowa', 'IA', 'Wayne', 'Confidence', 40.8033384, -93.2165977, ST_GeomFromText('POINT(40.8033384 -93.2165977)', 4326), 40.6677851, -93.2621559, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457892', 'Jackson Island', 'Island', 'Iowa', 'IA', 'Allamakee', 'Harpers Ferry', 43.1733142, -91.1462406, ST_GeomFromText('POINT(43.1733142 -91.1462406)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('457894', 'Jackson Lake', 'Lake', 'Iowa', 'IA', 'Jackson', 'Green Island', 42.196256, -90.342073, ST_GeomFromText('POINT(42.196256 -90.342073)', 4326), NULL, NULL, '1979-04-30', '2024-10-01', NULL, NULL, NULL),
  ('457948', 'Jess Branch', 'Stream', 'Iowa', 'IA', 'Jackson', 'Andrew', 42.1547409, -90.5492978, ST_GeomFromText('POINT(42.1547409 -90.5492978)', 4326), 42.1908333, -90.5291667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457952', 'Jim Branch', 'Stream', 'Iowa', 'IA', 'Cass', 'Wiota', 41.376656, -94.9633203, ST_GeomFromText('POINT(41.376656 -94.9633203)', 4326), 41.3672098, -94.8069249, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457953', 'Jim Creek', 'Stream', 'Iowa', 'IA', 'Pottawattamie', 'Avoca', 41.4252689, -95.355833, ST_GeomFromText('POINT(41.4252689 -95.355833)', 4326), 41.445, -95.2952778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457954', 'Jim Creek', 'Stream', 'Iowa', 'IA', 'Boone', 'Berkley', 41.9385947, -94.1085691, ST_GeomFromText('POINT(41.9385947 -94.1085691)', 4326), 41.9783161, -94.1674603, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457955', 'Jim Creek', 'Stream', 'Iowa', 'IA', 'Madison', 'Earlham West', 41.4947107, -94.2049583, ST_GeomFromText('POINT(41.4947107 -94.2049583)', 4326), 41.4944324, -94.3232961, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457956', 'Joe Day Lake', 'Lake', 'Iowa', 'IA', 'Jackson', 'Savanna', 42.0930784, -90.1865171, ST_GeomFromText('POINT(42.0930784 -90.1865171)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457961', 'Johns Creek', 'Stream', 'Iowa', 'IA', 'Plymouth', 'Kingsley', 42.5977686, -95.9805726, ST_GeomFromText('POINT(42.5977686 -95.9805726)', 4326), 42.7930442, -95.9275166, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457962', 'Johns Creek', 'Stream', 'Iowa', 'IA', 'Dubuque', 'Fillmore', 42.3186173, -90.9231917, ST_GeomFromText('POINT(42.3186173 -90.9231917)', 4326), 42.4463882, -91.041246, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457968', 'Johnson Creek', 'Stream', 'Iowa', 'IA', 'Dallas', 'Commerce', 41.5236006, -93.839669, ST_GeomFromText('POINT(41.5236006 -93.839669)', 4326), 41.5633221, -93.927172, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('457969', 'Johnson Creek', 'Stream', 'Iowa', 'IA', 'O''Brien', 'Primghar', 43.0366473, -95.7194558, ST_GeomFromText('POINT(43.0366473 -95.7194558)', 4326), 43.0322038, -95.7644568, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457970', 'Johnson Creek', 'Stream', 'Iowa', 'IA', 'Butler', 'Parkersburg', 42.5955353, -92.7624184, ST_GeomFromText('POINT(42.5955353 -92.7624184)', 4326), 42.6774752, -93.0474205, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457971', 'Johnson Island', 'Island', 'Iowa', 'IA', 'Des Moines', 'Keithsburg', 41.0042032, -90.9543093, ST_GeomFromText('POINT(41.0042032 -90.9543093)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457982', 'Johles Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Colesburg', 42.728046, -91.1440193, ST_GeomFromText('POINT(42.728046 -91.1440193)', 4326), 42.7863778, -91.1784637, '1979-04-30', '2012-02-10', 'Official', 'Board Decision', '2012-02-09'),
  ('457984', 'Jonathan Creek', 'Stream', 'Iowa', 'IA', 'Decatur', 'Garden Grove SW', 40.7555591, -93.635219, ST_GeomFromText('POINT(40.7555591 -93.635219)', 4326), 40.8649993, -93.7627208, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457985', 'Jones Branch', 'Stream', 'Iowa', 'IA', 'Jefferson', 'Lockridge West', 40.925025, -91.8037792, ST_GeomFromText('POINT(40.925025 -91.8037792)', 4326), 40.9513889, -91.8516667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457988', 'Jones Creek', 'Stream', 'Iowa', 'IA', 'Allamakee', 'Church', 43.297199, -91.3593021, ST_GeomFromText('POINT(43.297199 -91.3593021)', 4326), 43.3135868, -91.4518054, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457989', 'Jones Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Malone', 41.7597529, -90.4656902, ST_GeomFromText('POINT(41.7597529 -90.4656902)', 4326), 41.689476, -90.4831902, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457990', 'Jones Creek', 'Stream', 'Iowa', 'IA', 'Madison', 'Saint Charles', 41.2883254, -93.8435563, ST_GeomFromText('POINT(41.2883254 -93.8435563)', 4326), 41.2608238, -94.0682848, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457996', 'Jordan Creek', 'Stream', 'Iowa', 'IA', 'Tama', 'Gladbrook SE', 42.0261017, -92.5960272, ST_GeomFromText('POINT(42.0261017 -92.5960272)', 4326), 42.1044444, -92.5827778, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('457997', 'Jordan Creek', 'Stream', 'Iowa', 'IA', 'O''Brien', 'Sutherland East', 42.9849765, -95.4327812, ST_GeomFromText('POINT(42.9849765 -95.4327812)', 4326), 43.0394205, -95.5277847, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457998', 'Jordan Creek', 'Stream', 'Iowa', 'IA', 'Monona', 'Moorhead', 41.9124882, -95.8544532, ST_GeomFromText('POINT(41.9124882 -95.8544532)', 4326), 42.0861, -95.7811178, '1979-04-30', NULL, NULL, NULL, NULL),
  ('457999', 'Jordan Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Ely', 41.7972345, -91.5226719, ST_GeomFromText('POINT(41.7972345 -91.5226719)', 4326), 41.7783476, -91.4668365, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458000', 'Jordan Creek', 'Stream', 'Iowa', 'IA', 'Iowa', 'Victor', 41.6330591, -92.281572, ST_GeomFromText('POINT(41.6330591 -92.281572)', 4326), 41.6275018, -92.3957403, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458001', 'Jordan Creek', 'Stream', 'Iowa', 'IA', 'Pottawattamie', 'Carson NE', 41.172494, -95.3744427, ST_GeomFromText('POINT(41.172494 -95.3744427)', 4326), 41.3466577, -95.2586082, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458002', 'Jordan Creek', 'Stream', 'Iowa', 'IA', 'Wayne', 'Confidence', 40.8036162, -93.214931, ST_GeomFromText('POINT(40.8036162 -93.214931)', 4326), 40.8277817, -93.2996551, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458003', 'Jordan Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Des Moines SW', 41.5586005, -93.7171654, ST_GeomFromText('POINT(41.5586005 -93.7171654)', 4326), 41.5744334, -93.8302247, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458005', 'Joy Creek', 'Stream', 'Iowa', 'IA', 'Plymouth', 'Elk Point NE', 42.6688837, -96.5544768, ST_GeomFromText('POINT(42.6688837 -96.5544768)', 4326), 42.6997222, -96.5425, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458013', 'Jurdan Creek', 'Stream', 'Iowa', 'IA', 'Jones', 'Scotch Grove', 42.2133393, -91.0726453, ST_GeomFromText('POINT(42.2133393 -91.0726453)', 4326), 42.2775035, -91.0856989, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458014', 'Justins Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Central City', 42.235826, -91.5651674, ST_GeomFromText('POINT(42.235826 -91.5651674)', 4326), 42.2047222, -91.5972222, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('458022', 'Keevers Lake', 'Lake', 'Iowa', 'IA', 'Louisa', 'Toolesboro', 41.1418307, -91.1241919, ST_GeomFromText('POINT(41.1418307 -91.1241919)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('458023', 'Keg Creek', 'Stream', 'Iowa', 'IA', 'Mills', 'Rock Bluff', 40.9749996, -95.8266734, ST_GeomFromText('POINT(40.9749996 -95.8266734)', 4326), 41.7005437, -95.3874998, '1979-04-30', '2014-04-07', NULL, NULL, NULL),
  ('458025', 'Keg Island', 'Island', 'Iowa', 'IA', 'Louisa', 'Toolesboro', 41.1766989, -91.0532017, ST_GeomFromText('POINT(41.1766989 -91.0532017)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458026', 'Keigley Branch', 'Stream', 'Iowa', 'IA', 'Story', 'Ames East', 42.1022076, -93.5796602, ST_GeomFromText('POINT(42.1022076 -93.5796602)', 4326), 42.2685908, -93.7649432, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458028', 'Keller Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Correctionville SE', 42.3224898, -95.8305639, ST_GeomFromText('POINT(42.3224898 -95.8305639)', 4326), 42.3144444, -95.7813889, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458034', 'Kellys Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.3816293, -95.1038835, ST_GeomFromText('POINT(43.3816293 -95.1038835)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458036', 'Kemp Creek', 'Stream', 'Iowa', 'IA', 'Adams', 'Brooks', 40.9652651, -94.8338658, ST_GeomFromText('POINT(40.9652651 -94.8338658)', 4326), 41.1199874, -94.5941354, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458038', 'Ken Wolfe Lake', 'Reservoir', 'Iowa', 'IA', 'Jasper', 'Alloway Creek', 41.7785897, -92.9635033, ST_GeomFromText('POINT(41.7785897 -92.9635033)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('458055', 'Keokuk Lake (historical)', 'Lake', 'Iowa', 'IA', 'Muscatine', 'Muscatine NW', 41.3756411, -91.1495024, ST_GeomFromText('POINT(41.3756411 -91.1495024)', 4326), NULL, NULL, '1979-04-30', '2015-08-24', NULL, NULL, NULL),
  ('458056', 'Lake Keomah', 'Reservoir', 'Iowa', 'IA', 'Mahaska', 'University Park', 41.294179, -92.5420059, ST_GeomFromText('POINT(41.294179 -92.5420059)', 4326), NULL, NULL, '1979-04-30', '2018-07-31', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('458062', 'Kettle Creek', 'Stream', 'Iowa', 'IA', 'Wapello', 'Ottumwa North', 41.0125143, -92.4326857, ST_GeomFromText('POINT(41.0125143 -92.4326857)', 4326), 40.9905699, -92.4704643, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458066', 'Kibbe Creek', 'Stream', 'Iowa', 'IA', 'Tama', 'Clutier', 42.1066579, -92.4429679, ST_GeomFromText('POINT(42.1066579 -92.4429679)', 4326), 42.1052778, -92.4977778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458068', 'Kidds Creek', 'Stream', 'Iowa', 'IA', 'Shelby', 'Defiance', 41.7722096, -95.3133313, ST_GeomFromText('POINT(41.7722096 -95.3133313)', 4326), 41.8330556, -95.2513889, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458071', 'Kilgore Creek', 'Stream', 'Iowa', 'IA', 'Decatur', 'Pleasanton', 40.5994493, -93.6782774, ST_GeomFromText('POINT(40.5994493 -93.6782774)', 4326), 40.7313913, -93.7202212, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458074', 'Kilpeck Island', 'Island', 'Iowa', 'IA', 'Louisa', 'Blanchard Island', 41.3072517, -91.0804261, ST_GeomFromText('POINT(41.3072517 -91.0804261)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458075', 'Kilson Creek', 'Stream', 'Iowa', 'IA', 'Butler', 'Butler Center', 42.6816445, -92.8174178, ST_GeomFromText('POINT(42.6816445 -92.8174178)', 4326), 42.816641, -92.8738061, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458076', 'Kilsons Branch', 'Stream', 'Iowa', 'IA', 'Butler', 'Parkersburg', 42.5958124, -92.8190857, ST_GeomFromText('POINT(42.5958124 -92.8190857)', 4326), 42.6171999, -92.9104751, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458085', 'King Creek', 'Stream', 'Iowa', 'IA', 'Crawford', 'Vail', 42.0597088, -95.1969389, ST_GeomFromText('POINT(42.0597088 -95.1969389)', 4326), 42.1219444, -95.1916667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458100', 'Kinser Creek', 'Stream', 'Iowa', 'IA', 'Monroe', 'Moravia', 40.9255669, -92.7613056, ST_GeomFromText('POINT(40.9255669 -92.7613056)', 4326), 40.8997222, -92.8177778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458105', 'Kiowa Marsh', 'Swamp', 'Iowa', 'IA', 'Sac', 'Sac City West', 42.4602592, -95.1061027, ST_GeomFromText('POINT(42.4602592 -95.1061027)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('458106', 'Kirk Branch', 'Stream', 'Iowa', 'IA', 'Marion', 'Newbern', 41.2419405, -93.2724309, ST_GeomFromText('POINT(41.2419405 -93.2724309)', 4326), 41.1930556, -93.2675, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458118', 'Kitty Creek', 'Stream', 'Iowa', 'IA', 'Jones', 'Monticello', 42.2425019, -91.1784821, ST_GeomFromText('POINT(42.2425019 -91.1784821)', 4326), 42.166113, -91.2773787, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458122', 'Kleinlein Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Edgewood', 42.7452621, -91.4987526, ST_GeomFromText('POINT(42.7452621 -91.4987526)', 4326), 42.6888733, -91.54598, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458124', 'Kline Hunt Hollow', 'Valley', 'Iowa', 'IA', 'Clayton', 'Guttenberg', 42.7555265, -91.0942125, ST_GeomFromText('POINT(42.7555265 -91.0942125)', 4326), 42.7679291, -91.1332847, '1979-04-30', '2015-09-04', NULL, NULL, NULL),
  ('458127', 'Klum Lake', 'Reservoir', 'Iowa', 'IA', 'Louisa', 'Letts', 41.2651071, -91.141585, ST_GeomFromText('POINT(41.2651071 -91.141585)', 4326), NULL, NULL, '1979-04-30', '2023-05-23', NULL, NULL, NULL),
  ('458129', 'Knack Creek', 'Stream', 'Iowa', 'IA', 'Webster', 'Lehigh', 42.2674754, -94.0427327, ST_GeomFromText('POINT(42.2674754 -94.0427327)', 4326), 42.3147222, -94.0547222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458130', 'Knapp Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Amana', 41.7850095, -91.7596202, ST_GeomFromText('POINT(41.7850095 -91.7596202)', 4326), 41.8900034, -91.8771241, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458135', 'Knotty Creek', 'Stream', 'Iowa', 'IA', 'Des Moines', 'West Burlington', 40.8514269, -91.1534802, ST_GeomFromText('POINT(40.8514269 -91.1534802)', 4326), 40.9555915, -91.1665368, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458138', 'Koker Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Danbury', 42.2419338, -95.7000038, ST_GeomFromText('POINT(42.2419338 -95.7000038)', 4326), 42.3277667, -95.7033383, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458141', 'Kosar Branch', 'Stream', 'Iowa', 'IA', 'Adams', 'Prescott', 41.1052655, -94.5474665, ST_GeomFromText('POINT(41.1052655 -94.5474665)', 4326), 41.1630431, -94.5724683, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('458147', 'Krumm Creek', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Fort Atkinson', 43.1396956, -91.9521091, ST_GeomFromText('POINT(43.1396956 -91.9521091)', 4326), 43.1366395, -92.0026673, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458153', 'L Esmay Slough', 'Stream', 'Iowa', 'IA', 'Jackson', 'Savanna', 42.0764123, -90.1742947, ST_GeomFromText('POINT(42.0764123 -90.1742947)', 4326), 42.0836111, -90.1736111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458177', 'Lake of Three Fires', 'Lake', 'Iowa', 'IA', 'Taylor', 'Bedford', 40.7135991, -94.6903919, ST_GeomFromText('POINT(40.7135991 -94.6903919)', 4326), NULL, NULL, '1979-04-30', '2020-08-27', NULL, NULL, NULL),
  ('458184', 'Lake Creek', 'Stream', 'Iowa', 'IA', 'O''Brien', 'Gaza', 43.0749772, -95.6125093, ST_GeomFromText('POINT(43.0749772 -95.6125093)', 4326), 43.0605556, -95.5516667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458185', 'Lake Creek', 'Stream', 'Iowa', 'IA', 'Calhoun', 'Carroll NE', 42.2424834, -94.7830387, ST_GeomFromText('POINT(42.2424834 -94.7830387)', 4326), 42.5594216, -94.6672016, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458202', 'Lakeside Beach', 'Beach', 'Iowa', 'IA', 'Buena Vista', 'Lakeside', 42.6152581, -95.1797168, ST_GeomFromText('POINT(42.6152581 -95.1797168)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458208', 'Lamalees Creek', 'Stream', 'Iowa', 'IA', 'Lee', 'Keokuk', 40.4630991, -91.3840413, ST_GeomFromText('POINT(40.4630991 -91.3840413)', 4326), 40.5117093, -91.4382102, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458211', 'Lamborn Hollow', 'Valley', 'Iowa', 'IA', 'Jackson', 'Green Island', 42.1425292, -90.348584, ST_GeomFromText('POINT(42.1425292 -90.348584)', 4326), 42.1557642, -90.3739039, '1979-04-30', '2015-09-04', NULL, NULL, NULL),
  ('458213', 'Lamkin Creek', 'Stream', 'Iowa', 'IA', 'O''Brien', 'Sheldon', 43.1435901, -95.8230709, ST_GeomFromText('POINT(43.1435901 -95.8230709)', 4326), 43.1172013, -95.7622358, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458216', 'Lamont Creek', 'Stream', 'Iowa', 'IA', 'Buchanan', 'Lamont', 42.5977624, -91.6298775, ST_GeomFromText('POINT(42.5977624 -91.6298775)', 4326), 42.6280396, -91.723773, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('458218', 'Lamps Pond', 'Reservoir', 'Iowa', 'IA', 'Scott', 'Walcott', 41.6054167, -90.7584419, ST_GeomFromText('POINT(41.6054167 -90.7584419)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('458222', 'Lange Creek', 'Stream', 'Iowa', 'IA', 'O''Brien', 'Paullina', 42.9538712, -95.7152885, ST_GeomFromText('POINT(42.9538712 -95.7152885)', 4326), 42.9141512, -95.7889015, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458226', 'Lansing Ridge', 'Ridge', 'Iowa', 'IA', 'Allamakee', 'Waukon', 43.336291, -91.4037658, ST_GeomFromText('POINT(43.336291 -91.4037658)', 4326), NULL, NULL, '1979-04-30', '2023-09-30', NULL, NULL, NULL),
  ('458229', 'Lapworth Creek', 'Stream', 'Iowa', 'IA', 'Pottawattamie', 'Omaha North', 41.3608295, -95.8780673, ST_GeomFromText('POINT(41.3608295 -95.8780673)', 4326), 41.3219413, -95.8416779, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458251', 'Lawrence Creek', 'Stream', 'Iowa', 'IA', 'Henry', 'New London', 40.9772532, -91.4559906, ST_GeomFromText('POINT(40.9772532 -91.4559906)', 4326), 41.0153089, -91.4001557, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458258', 'Lead Island', 'Island', 'Iowa', 'IA', 'Lee', 'Dallas City', 40.6436527, -91.2459819, ST_GeomFromText('POINT(40.6436527 -91.2459819)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458259', 'Lead Island Chute', 'Stream', 'Iowa', 'IA', 'Lee', 'Fort Madison', 40.6447636, -91.2632047, ST_GeomFromText('POINT(40.6447636 -91.2632047)', 4326), 40.6453193, -91.2340371, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458267', 'Ledgewood Creek', 'Stream', 'Iowa', 'IA', 'Fremont', 'Riverton', 40.6972227, -95.5513802, ST_GeomFromText('POINT(40.6972227 -95.5513802)', 4326), 40.6597224, -95.4752656, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458282', 'Leisure Creek', 'Stream', 'Iowa', 'IA', 'Dubuque', 'Dubuque North', 42.6097203, -90.7009604, ST_GeomFromText('POINT(42.6097203 -90.7009604)', 4326), 42.6072222, -90.7288889, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458283', 'Leisure Lake', 'Reservoir', 'Iowa', 'IA', 'Jackson', 'Leisure Lake', 42.2328171, -90.7765529, ST_GeomFromText('POINT(42.2328171 -90.7765529)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('458285', 'Lekwa Marsh', 'Lake', 'Iowa', 'IA', 'Cerro Gordo', 'Ventura Heights', 43.1075019, -93.4038851, ST_GeomFromText('POINT(43.1075019 -93.4038851)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('458292', 'Leos Pond', 'Reservoir', 'Iowa', 'IA', 'Cherokee', 'Cleghorn', 42.8428872, -95.6670956, ST_GeomFromText('POINT(42.8428872 -95.6670956)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('458310', 'Lexington Creek', 'Stream', 'Iowa', 'IA', 'Clay', 'Gillett Grove', 43.067192, -95.057491, ST_GeomFromText('POINT(43.067192 -95.057491)', 4326), 43.0152778, -95.0966667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458311', 'Lexington Creek', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Bonaparte', 40.6983647, -91.8226679, ST_GeomFromText('POINT(40.6983647 -91.8226679)', 4326), 40.7497222, -91.8338889, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458334', 'Lick Branch', 'Stream', 'Iowa', 'IA', 'Decatur', 'Lineville', 40.5833396, -93.6091095, ST_GeomFromText('POINT(40.5833396 -93.6091095)', 4326), 40.6777817, -93.6752208, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458335', 'Lick Creek', 'Stream', 'Iowa', 'IA', 'Davis', 'Floris', 40.8652968, -92.3532395, ST_GeomFromText('POINT(40.8652968 -92.3532395)', 4326), 40.8513889, -92.3741667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458336', 'Lick Creek', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Mount Zion', 40.7994705, -91.9551724, ST_GeomFromText('POINT(40.7994705 -91.9551724)', 4326), 40.9561306, -92.1157328, '1979-04-30', '2014-04-07', NULL, NULL, NULL),
  ('458337', 'Lick Creek', 'Stream', 'Iowa', 'IA', 'Lee', 'Croton', 40.5908701, -91.6998858, ST_GeomFromText('POINT(40.5908701 -91.6998858)', 4326), 40.6850338, -91.7098859, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458339', 'Liebold Lake', 'Reservoir', 'Iowa', 'IA', 'Fremont', 'Nebraska City', 40.6987325, -95.82064, ST_GeomFromText('POINT(40.6987325 -95.82064)', 4326), NULL, NULL, '1979-04-30', '2018-06-22', NULL, NULL, NULL),
  ('458340', 'Lillibridge Creek', 'Stream', 'Iowa', 'IA', 'Cerro Gordo', 'Sheffield', 42.9221904, -93.1779792, ST_GeomFromText('POINT(42.9221904 -93.1779792)', 4326), 42.96, -93.1513889, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('458341', 'Lily Lake', 'Lake', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.3952701, -95.0223151, ST_GeomFromText('POINT(43.3952701 -95.0223151)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('458342', 'Lily Pond', 'Lake', 'Iowa', 'IA', 'Washington', 'Kalona', 41.4726128, -91.6523142, ST_GeomFromText('POINT(41.4726128 -91.6523142)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('458343', 'Lily Pond', 'Lake', 'Iowa', 'IA', 'Iowa', 'Middle Amana', 41.7991074, -91.8872877, ST_GeomFromText('POINT(41.7991074 -91.8872877)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('458344', 'Lime Creek', 'Stream', 'Iowa', 'IA', 'Washington', 'Wellman', 41.4897375, -91.775448, ST_GeomFromText('POINT(41.4897375 -91.775448)', 4326), 41.4130556, -91.7802778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458345', 'Lime Creek', 'Stream', 'Iowa', 'IA', 'Benton', 'Brandon', 42.2877699, -92.0257351, ST_GeomFromText('POINT(42.2877699 -92.0257351)', 4326), 42.4816537, -91.9821191, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458346', 'Lime Creek', 'Stream', 'Iowa', 'IA', 'Sac', 'Boyer', 42.242207, -95.1355477, ST_GeomFromText('POINT(42.242207 -95.1355477)', 4326), 42.1888733, -95.0283239, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458347', 'Lime Creek', 'Stream', 'Iowa', 'IA', 'Delaware', 'Hopkinton West', 42.3488833, -91.3318168, ST_GeomFromText('POINT(42.3488833 -91.3318168)', 4326), 42.308326, -91.4351572, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458407', 'Lindle Lake', 'Lake', 'Iowa', 'IA', 'Muscatine', 'Atalissa', 41.5003302, -91.1476204, ST_GeomFromText('POINT(41.5003302 -91.1476204)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('458410', 'Lindsey Creek', 'Stream', 'Iowa', 'IA', 'Kossuth', 'Woden', 43.2069055, -93.9338392, ST_GeomFromText('POINT(43.2069055 -93.9338392)', 4326), 43.2430145, -93.8585578, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458411', 'Lindsey Creek', 'Stream', 'Iowa', 'IA', 'Delaware', 'Thorpe', 42.5472095, -91.4223661, ST_GeomFromText('POINT(42.5472095 -91.4223661)', 4326), 42.6747072, -91.4815316, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('458413', 'Lingle Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Ely', 41.8386206, -91.5590625, ST_GeomFromText('POINT(41.8386206 -91.5590625)', 4326), 41.8733333, -91.5041667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458414', 'Linn Creek', 'Stream', 'Iowa', 'IA', 'Marshall', 'Le Grand', 42.0572101, -92.8688105, ST_GeomFromText('POINT(42.0572101 -92.8688105)', 4326), 42.0327652, -93.2532606, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458435', 'Little Asher Creek', 'Stream', 'Iowa', 'IA', 'Marshall', 'Conrad West', 42.1652639, -92.9396452, ST_GeomFromText('POINT(42.1652639 -92.9396452)', 4326), 42.1997222, -92.8816667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458436', 'Little Avery Creek', 'Stream', 'Iowa', 'IA', 'Monroe', 'Avery', 41.0263985, -92.7201934, ST_GeomFromText('POINT(41.0263985 -92.7201934)', 4326), 41.0336194, -92.7782507, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458437', 'Little Bear Creek', 'Stream', 'Iowa', 'IA', 'Jones', 'Wyoming West', 42.0555693, -91.0026478, ST_GeomFromText('POINT(42.0555693 -91.0026478)', 4326), 42.0958333, -91.0866667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458438', 'Little Bear Creek', 'Stream', 'Iowa', 'IA', 'Benton', 'Shellsburg', 42.0774968, -91.8451803, ST_GeomFromText('POINT(42.0774968 -91.8451803)', 4326), 41.9852776, -91.986848, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458439', 'Little Bear Creek', 'Stream', 'Iowa', 'IA', 'Poweshiek', 'Victor', 41.7361105, -92.3668511, ST_GeomFromText('POINT(41.7361105 -92.3668511)', 4326), 41.7488827, -92.7110232, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458440', 'Little Bear Creek', 'Stream', 'Iowa', 'IA', 'Iowa', 'Ladora', 41.7638922, -92.1357372, ST_GeomFromText('POINT(41.7638922 -92.1357372)', 4326), 41.699168, -92.3162949, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458441', 'Little Beaver Creek', 'Stream', 'Iowa', 'IA', 'Floyd', 'Rockford', 43.0294143, -92.9715857, ST_GeomFromText('POINT(43.0294143 -92.9715857)', 4326), 43.060802, -93.0293655, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458442', 'Little Beaver Creek', 'Stream', 'Iowa', 'IA', 'Greene', 'Grand Junction', 42.0263707, -94.1613491, ST_GeomFromText('POINT(42.0263707 -94.1613491)', 4326), 42.163867, -94.1927393, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('458443', 'Little Beaver Creek', 'Stream', 'Iowa', 'IA', 'Boone', 'Woodward', 41.8322079, -93.9655081, ST_GeomFromText('POINT(41.8322079 -93.9655081)', 4326), 41.9691498, -94.0146768, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458444', 'Little Beaver Creek', 'Stream', 'Iowa', 'IA', 'Hardin', 'New Providence', 42.3583162, -93.1399247, ST_GeomFromText('POINT(42.3583162 -93.1399247)', 4326), 42.3947047, -93.2329812, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458445', 'Little Beaver Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Des Moines NW', 41.6947104, -93.7349446, ST_GeomFromText('POINT(41.6947104 -93.7349446)', 4326), 41.7172099, -93.8366147, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458446', 'Little Bluff Creek', 'Stream', 'Iowa', 'IA', 'Mahaska', 'Eddyville', 41.2000062, -92.7354731, ST_GeomFromText('POINT(41.2000062 -92.7354731)', 4326), 41.117784, -92.8090855, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458448', 'Little Buffalo Creek', 'Stream', 'Iowa', 'IA', 'Kossuth', 'Titonka', 43.2466281, -94.043011, ST_GeomFromText('POINT(43.2466281 -94.043011)', 4326), 43.4357878, -93.7074425, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458450', 'Little Cedar Creek', 'Stream', 'Iowa', 'IA', 'Pocahontas', 'Fonda', 42.6149773, -94.8383179, ST_GeomFromText('POINT(42.6149773 -94.8383179)', 4326), 42.8602511, -94.9091534, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458451', 'Little Cedar Creek', 'Stream', 'Iowa', 'IA', 'Henry', 'Hillsboro', 40.8694732, -91.6923862, ST_GeomFromText('POINT(40.8694732 -91.6923862)', 4326), 40.818639, -91.8193346, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458452', 'Little Cedar Creek', 'Stream', 'Iowa', 'IA', 'Wapello', 'Farson', 41.0955699, -92.3293503, ST_GeomFromText('POINT(41.0955699 -92.3293503)', 4326), 41.0969574, -92.4482422, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458453', 'Little Cedar River', 'Stream', 'Iowa', 'IA', 'Chickasaw', 'Nashua', 42.9505316, -92.5274064, ST_GeomFromText('POINT(42.9505316 -92.5274064)', 4326), 43.6544087, -92.7560173, '1979-04-30', '2018-07-31', NULL, NULL, NULL),
  ('458455', 'Little Competine Creek', 'Stream', 'Iowa', 'IA', 'Jefferson', 'Abingdon', 41.0761274, -92.1637901, ST_GeomFromText('POINT(41.0761274 -92.1637901)', 4326), 41.1614035, -92.184069, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('458456', 'Little Cook Island', 'Island', 'Iowa', 'IA', 'Clinton', 'Savanna', 42.0291919, -90.1551276, ST_GeomFromText('POINT(42.0291919 -90.1551276)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458457', 'Little Coon Creek', 'Stream', 'Iowa', 'IA', 'Tama', 'Traer', 42.1941564, -92.4571352, ST_GeomFromText('POINT(42.1941564 -92.4571352)', 4326), 42.2122131, -92.3654661, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458458', 'Little Creek', 'Stream', 'Iowa', 'IA', 'Keokuk', 'Kinross', 41.4905666, -91.961564, ST_GeomFromText('POINT(41.4905666 -91.961564)', 4326), 41.5050091, -92.0729556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458459', 'Little Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Granger', 41.8274868, -93.7730018, ST_GeomFromText('POINT(41.8274868 -93.7730018)', 4326), 41.9272076, -93.8107809, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458460', 'Little Creek', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Mount Zion', 40.8439133, -91.9796176, ST_GeomFromText('POINT(40.8439133 -91.9796176)', 4326), 40.8983559, -91.9948958, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458461', 'Little Creek', 'Stream', 'Iowa', 'IA', 'Mills', 'Tabor NE', 40.9963872, -95.5925004, ST_GeomFromText('POINT(40.9963872 -95.5925004)', 4326), 41.0980526, -95.5525012, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458462', 'Little Eagle Creek', 'Stream', 'Iowa', 'IA', 'Wright', 'Holmes', 42.709694, -93.8104962, ST_GeomFromText('POINT(42.709694 -93.8104962)', 4326), 42.8255251, -93.7391038, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458463', 'Little Elk Creek', 'Stream', 'Iowa', 'IA', 'Jasper', 'Killduff', 41.5299957, -92.889918, ST_GeomFromText('POINT(41.5299957 -92.889918)', 4326), 41.5936111, -92.8786111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458464', 'Little Elkhorn Creek', 'Stream', 'Iowa', 'IA', 'Muscatine', 'Durant', 41.5911381, -90.9679276, ST_GeomFromText('POINT(41.5911381 -90.9679276)', 4326), 41.6608589, -90.995707, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458465', 'Little Flint Creek', 'Stream', 'Iowa', 'IA', 'Des Moines', 'West Burlington', 40.8633709, -91.1968149, ST_GeomFromText('POINT(40.8633709 -91.1968149)', 4326), 40.8625368, -91.2757061, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('458467', 'Little Floyd River', 'Stream', 'Iowa', 'IA', 'Sioux', 'Sheldon', 43.1566459, -95.8697387, ST_GeomFromText('POINT(43.1566459 -95.8697387)', 4326), 43.2169191, -95.6669571, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458468', 'Little Fourmile Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Des Moines SE', 41.5974893, -93.5252147, ST_GeomFromText('POINT(41.5974893 -93.5252147)', 4326), 41.6642552, -93.4784619, '1979-04-30', '2017-04-26', NULL, NULL, NULL),
  ('458469', 'Little Fox River', 'Stream', 'Missouri', 'MO', 'Clark', 'Kahoka', 40.4633729, -91.737943, ST_GeomFromText('POINT(40.4633729 -91.737943)', 4326), 40.6978022, -92.3021279, '1980-10-24', NULL, NULL, NULL, NULL),
  ('458471', 'Little Gully', 'Valley', 'Iowa', 'IA', 'Cerro Gordo', 'Mason City SE', 43.0989558, -93.1015082, ST_GeomFromText('POINT(43.0989558 -93.1015082)', 4326), 43.0741635, -93.1219237, '1979-04-30', '2023-10-11', NULL, NULL, NULL),
  ('458472', 'Little Indian Creek', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Bonaparte', 40.6372565, -91.7679438, ST_GeomFromText('POINT(40.6372565 -91.7679438)', 4326), 40.6744444, -91.8127778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458473', 'Little Indian Creek', 'Stream', 'Iowa', 'IA', 'Louisa', 'Columbus Junction', 41.2555834, -91.2532073, ST_GeomFromText('POINT(41.2555834 -91.2532073)', 4326), 41.2964171, -91.1893176, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458474', 'Little Indian Creek', 'Stream', 'Iowa', 'IA', 'Audubon', 'Exira West', 41.601099, -94.9922104, ST_GeomFromText('POINT(41.601099 -94.9922104)', 4326), 41.644154, -94.9638764, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458475', 'Little Keg Creek', 'Stream', 'Iowa', 'IA', 'Pottawattamie', 'McClelland', 41.262219, -95.6691737, ST_GeomFromText('POINT(41.262219 -95.6691737)', 4326), 41.3597222, -95.6452778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458476', 'Little Keller Lake', 'Lake', 'Iowa', 'IA', 'Jackson', 'Savanna', 42.121161, -90.185523, ST_GeomFromText('POINT(42.121161 -90.185523)', 4326), NULL, NULL, '1979-04-30', '2024-09-30', NULL, NULL, NULL),
  ('458477', 'Little Lewis Lake', 'Lake', 'Iowa', 'IA', 'Linn', 'Center Point', 42.1453791, -91.8065592, ST_GeomFromText('POINT(42.1453791 -91.8065592)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('458478', 'Little Lick Creek', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Mount Zion', 40.8197476, -91.9632283, ST_GeomFromText('POINT(40.8197476 -91.9632283)', 4326), 40.8614148, -91.864614, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458479', 'Little Lick Creek', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Libertyville', 40.8944665, -92.0396194, ST_GeomFromText('POINT(40.8944665 -92.0396194)', 4326), 40.9158333, -92.1188889, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458480', 'Little Lime Creek', 'Stream', 'Iowa', 'IA', 'Cerro Gordo', 'Mason City SE', 43.0985791, -93.0418666, ST_GeomFromText('POINT(43.0985791 -93.0418666)', 4326), 43.1663538, -93.1065911, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458481', 'Little Maquoketa River', 'Stream', 'Iowa', 'IA', 'Dubuque', 'Dubuque North', 42.5774995, -90.6809606, ST_GeomFromText('POINT(42.5774995 -90.6809606)', 4326), 42.4961099, -90.9970762, '1979-04-30', '2014-12-12', NULL, NULL, NULL),
  ('458482', 'Little Meadow Creek', 'Stream', 'Iowa', 'IA', 'Clay', 'Dickens', 43.1994105, -95.1108274, ST_GeomFromText('POINT(43.1994105 -95.1108274)', 4326), 43.2421874, -95.1391623, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458484', 'Little Mill Creek', 'Stream', 'Iowa', 'IA', 'Jackson', 'Bellevue', 42.2519604, -90.4440173, ST_GeomFromText('POINT(42.2519604 -90.4440173)', 4326), 42.2161279, -90.5292961, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458485', 'Little Mill Creek', 'Stream', 'Iowa', 'IA', 'Clinton', 'Camanche', 41.8341962, -90.2873519, ST_GeomFromText('POINT(41.8341962 -90.2873519)', 4326), 41.9155833, -90.3098525, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458486', 'Little Minerva Branch', 'Stream', 'Iowa', 'IA', 'Marshall', 'LaMoille', 42.1188754, -93.0402014, ST_GeomFromText('POINT(42.1188754 -93.0402014)', 4326), 42.0691667, -93.0961111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458487', 'Little Mosquito Creek', 'Stream', 'Iowa', 'IA', 'Pottawattamie', 'Council Bluffs North', 41.2616647, -95.8063995, ST_GeomFromText('POINT(41.2616647 -95.8063995)', 4326), 41.3102741, -95.7091747, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458489', 'Little Muchakinock Creek', 'Stream', 'Iowa', 'IA', 'Mahaska', 'Oskaloosa', 41.2600062, -92.6804718, ST_GeomFromText('POINT(41.2600062 -92.6804718)', 4326), 41.2219534, -92.5857468, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('458490', 'Little Muddy Creek', 'Stream', 'Missouri', 'MO', 'Mercer', 'Cleopatra', 40.5133425, -93.4860523, ST_GeomFromText('POINT(40.5133425 -93.4860523)', 4326), 40.6286188, -93.4524388, '1980-10-24', NULL, NULL, NULL, NULL),
  ('458491', 'Little Muddy Creek', 'Stream', 'Iowa', 'IA', 'Clay', 'Dickens', 43.1524673, -95.0877706, ST_GeomFromText('POINT(43.1524673 -95.0877706)', 4326), 43.2652412, -95.072493, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458492', 'Little Ocheyedan River', 'Stream', 'Iowa', 'IA', 'Osceola', 'May City', 43.2796922, -95.4591733, ST_GeomFromText('POINT(43.2796922 -95.4591733)', 4326), 43.4719106, -95.6802911, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458493', 'Little Paint Creek', 'Stream', 'Iowa', 'IA', 'Allamakee', 'Harpers Ferry', 43.1747029, -91.2301308, ST_GeomFromText('POINT(43.1747029 -91.2301308)', 4326), 43.2641452, -91.2354089, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458494', 'Little Pigeon Creek', 'Stream', 'Iowa', 'IA', 'Harrison', 'Portsmouth', 41.6597115, -95.5944492, ST_GeomFromText('POINT(41.6597115 -95.5944492)', 4326), 41.7230556, -95.5694444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458495', 'Little Potomac Creek', 'Stream', 'Iowa', 'IA', 'Henry', 'Swedesburg', 41.0361383, -91.5618279, ST_GeomFromText('POINT(41.0361383 -91.5618279)', 4326), 41.0547508, -91.4762694, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458496', 'Little Rag Island', 'Island', 'Iowa', 'IA', 'Des Moines', 'Kingston', 40.8805937, -91.0368104, ST_GeomFromText('POINT(40.8805937 -91.0368104)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458499', 'Little Rollins Creek', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Croton', 40.61718, -91.73337, ST_GeomFromText('POINT(40.61718 -91.73337)', 4326), 40.615868, -91.7826666, '1979-04-30', '2011-11-23', NULL, NULL, NULL),
  ('458500', 'Little Sawmill Lake', 'Lake', 'Iowa', 'IA', 'Jackson', 'Green Island', 42.1726747, -90.282664, ST_GeomFromText('POINT(42.1726747 -90.282664)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('458501', 'Little Shoal Creek', 'Stream', 'Missouri', 'MO', 'Putnam', 'Omaha', 40.5502972, -92.8410326, ST_GeomFromText('POINT(40.5502972 -92.8410326)', 4326), 40.6294591, -92.9368686, '1980-10-24', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('458502', 'Little Silver Creek', 'Stream', 'Iowa', 'IA', 'Shelby', 'Shelby', 41.5172126, -95.426946, ST_GeomFromText('POINT(41.5172126 -95.426946)', 4326), 41.6180556, -95.4194444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458503', 'Little Silver Creek', 'Stream', 'Iowa', 'IA', 'Pottawattamie', 'Treynor', 41.2238856, -95.6247276, ST_GeomFromText('POINT(41.2238856 -95.6247276)', 4326), 41.4052706, -95.5333374, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458509', 'Little Snipe Creek', 'Stream', 'Iowa', 'IA', 'Jasper', 'Baxter SE', 41.8230451, -93.0368646, ST_GeomFromText('POINT(41.8230451 -93.0368646)', 4326), 41.8955447, -92.9932535, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458510', 'Little Soap Creek', 'Stream', 'Iowa', 'IA', 'Davis', 'Agency', 40.8864078, -92.304905, ST_GeomFromText('POINT(40.8864078 -92.304905)', 4326), 40.9208466, -92.6588027, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458511', 'Little Soldier Creek', 'Stream', 'Iowa', 'IA', 'Ida', 'Schleswig', 42.2488769, -95.4591655, ST_GeomFromText('POINT(42.2488769 -95.4591655)', 4326), 42.2941536, -95.4124981, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458513', 'Little Storm Lake', 'Lake', 'Iowa', 'IA', 'Buena Vista', 'Storm Lake', 42.6413696, -95.236941, ST_GeomFromText('POINT(42.6413696 -95.236941)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458515', 'Little Sugar Creek', 'Stream', 'Iowa', 'IA', 'Lee', 'Donnellson', 40.6439257, -91.5987707, ST_GeomFromText('POINT(40.6439257 -91.5987707)', 4326), 40.7211438, -91.7062746, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458516', 'Little Tarkio Creek', 'Stream', 'Iowa', 'IA', 'Mills', 'Stanton', 40.9808246, -95.1144316, ST_GeomFromText('POINT(40.9808246 -95.1144316)', 4326), 41.0769347, -95.0508206, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458517', 'Little Turkey Creek', 'Stream', 'Iowa', 'IA', 'Howard', 'Saude', 43.2355261, -92.2082265, ST_GeomFromText('POINT(43.2355261 -92.2082265)', 4326), 43.2760807, -92.1918365, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458518', 'Little Turkey River', 'Stream', 'Iowa', 'IA', 'Clayton', 'Turkey River', 42.706381, -91.0698517, ST_GeomFromText('POINT(42.706381 -91.0698517)', 4326), 42.6216581, -91.2034675, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('458519', 'Little Turkey River', 'Stream', 'Iowa', 'IA', 'Fayette', 'Festina', 43.0508099, -91.842939, ST_GeomFromText('POINT(43.0508099 -91.842939)', 4326), 43.2358038, -92.2082265, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458520', 'Little Turtle Island', 'Island', 'Iowa', 'IA', 'Des Moines', 'Burlington', 40.8653161, -91.051533, ST_GeomFromText('POINT(40.8653161 -91.051533)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458521', 'Little Volga River', 'Stream', 'Iowa', 'IA', 'Fayette', 'Maynard', 42.8177591, -91.8796113, ST_GeomFromText('POINT(42.8177591 -91.8796113)', 4326), 42.7519273, -91.7915526, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458522', 'Little Wall Lake', 'Lake', 'Iowa', 'IA', 'Hamilton', 'Jewell', 42.2693583, -93.637302, ST_GeomFromText('POINT(42.2693583 -93.637302)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('458524', 'Little Walnut Creek', 'Stream', 'Iowa', 'IA', 'Dallas', 'Grimes', 41.6322107, -93.8196691, ST_GeomFromText('POINT(41.6322107 -93.8196691)', 4326), 41.6366549, -93.9163389, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458525', 'Little Walnut Creek', 'Stream', 'Iowa', 'IA', 'Pottawattamie', 'Atlantic SW', 41.3219353, -95.2130512, ST_GeomFromText('POINT(41.3219353 -95.2130512)', 4326), 41.3813795, -95.2419411, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458526', 'Little Walnut Creek', 'Stream', 'Iowa', 'IA', 'Appanoose', 'Mystic', 40.8033451, -92.8807541, ST_GeomFromText('POINT(40.8033451 -92.8807541)', 4326), 40.7555644, -93.0704826, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458527', 'Little Wapsipinicon River', 'Stream', 'Iowa', 'IA', 'Chickasaw', 'Tripoli NW', 42.989976, -92.375735, ST_GeomFromText('POINT(42.989976 -92.375735)', 4326), 43.3996892, -92.5121216, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458528', 'Little Wapsipinicon River', 'Stream', 'Iowa', 'IA', 'Buchanan', 'Littleton', 42.5349862, -92.031009, ST_GeomFromText('POINT(42.5349862 -92.031009)', 4326), 42.928867, -92.0457279, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458529', 'Little Waterman Creek', 'Stream', 'Iowa', 'IA', 'O''Brien', 'Gaza', 43.1191408, -95.503896, ST_GeomFromText('POINT(43.1191408 -95.503896)', 4326), 43.1371971, -95.5650088, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('458530', 'Little Whisky Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Sergeant Bluff', 42.4022147, -96.2653037, ST_GeomFromText('POINT(42.4022147 -96.2653037)', 4326), 42.5236042, -96.2730817, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458531', 'Little White Breast Creek', 'Stream', 'Iowa', 'IA', 'Lucas', 'Newbern', 41.1416642, -93.3485437, ST_GeomFromText('POINT(41.1416642 -93.3485437)', 4326), 40.9688898, -93.2440972, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458532', 'Little Wolf Creek', 'Stream', 'Iowa', 'IA', 'Tama', 'Gladbrook', 42.2058196, -92.745478, ST_GeomFromText('POINT(42.2058196 -92.745478)', 4326), 42.3302615, -92.8563114, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458541', 'Lizard Creek', 'Stream', 'Iowa', 'IA', 'Lyon', 'Alvord', 43.2866454, -96.2589146, ST_GeomFromText('POINT(43.2866454 -96.2589146)', 4326), 43.3061111, -96.3358333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458542', 'Lizard Creek', 'Stream', 'Iowa', 'IA', 'Webster', 'Fort Dodge North', 42.5113584, -94.2041288, ST_GeomFromText('POINT(42.5113584 -94.2041288)', 4326), 42.8516389, -94.7727605, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458543', 'Lizard Creek', 'Stream', 'Iowa', 'IA', 'Clinton', 'Wheatland', 41.824746, -90.8562577, ST_GeomFromText('POINT(41.824746 -90.8562577)', 4326), 41.8394653, -91.0070962, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458545', 'Lizard Lake', 'Lake', 'Iowa', 'IA', 'Pocahontas', 'Gilmore City', 42.6723247, -94.4940579, ST_GeomFromText('POINT(42.6723247 -94.4940579)', 4326), NULL, NULL, '1979-04-30', '2018-06-22', NULL, NULL, NULL),
  ('458551', 'Locke Branch', 'Stream', 'Iowa', 'IA', 'Davis', 'Selma', 40.8080776, -92.200736, ST_GeomFromText('POINT(40.8080776 -92.200736)', 4326), 40.8241875, -92.2624044, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458553', 'Locust Creek', 'Stream', 'Missouri', 'MO', 'Putnam', 'Fountain Grove', 39.66709, -93.2856, ST_GeomFromText('POINT(39.66709 -93.2856)', 4326), 40.6702856, -93.2227103, '1980-10-24', '2011-11-25', NULL, NULL, NULL),
  ('458573', 'Lone Grove Creek', 'Stream', 'Iowa', 'IA', 'Guthrie', 'Guthrie Center West', 41.6752643, -94.5799739, ST_GeomFromText('POINT(41.6752643 -94.5799739)', 4326), 41.683042, -94.6930338, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('458577', 'Lone Tree Branch', 'Stream', 'Iowa', 'IA', 'Cass', 'Anita SW', 41.3472118, -94.9902659, ST_GeomFromText('POINT(41.3472118 -94.9902659)', 4326), 41.3408214, -94.8510932, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458578', 'Lone Tree Branch', 'Stream', 'Iowa', 'IA', 'Cass', 'Griswold', 41.2174912, -95.1563821, ST_GeomFromText('POINT(41.2174912 -95.1563821)', 4326), 41.2005461, -95.0597121, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458582', 'Lone Tree Creek', 'Stream', 'Iowa', 'IA', 'Benton', 'Shellsburg', 42.0566639, -91.7815695, ST_GeomFromText('POINT(42.0566639 -91.7815695)', 4326), 42.0094444, -91.8330556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458583', 'Lone Tree Point', 'Cape', 'Iowa', 'IA', 'Cerro Gordo', 'Ventura Heights', 43.1163484, -93.4590956, ST_GeomFromText('POINT(43.1163484 -93.4590956)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458584', 'Lone Willow Creek', 'Stream', 'Iowa', 'IA', 'Audubon', 'Manning SE', 41.7547087, -95.0633246, ST_GeomFromText('POINT(41.7547087 -95.0633246)', 4326), 41.7110978, -94.997489, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458585', 'Long Branch', 'Stream', 'Iowa', 'IA', 'Guthrie', 'Stuart North', 41.5630435, -94.2546828, ST_GeomFromText('POINT(41.5630435 -94.2546828)', 4326), 41.5113889, -94.3347222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458586', 'Long Branch', 'Stream', 'Iowa', 'IA', 'Shelby', 'Jacksonville', 41.7097095, -95.171661, ST_GeomFromText('POINT(41.7097095 -95.171661)', 4326), 41.850264, -95.0649915, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458587', 'Long Branch', 'Stream', 'Iowa', 'IA', 'Taylor', 'Hawleyville', 40.866933, -94.9091448, ST_GeomFromText('POINT(40.866933 -94.9091448)', 4326), 40.941654, -94.8285875, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458588', 'Long Branch', 'Stream', 'Iowa', 'IA', 'Page', 'Blanchard', 40.6069393, -95.2263696, ST_GeomFromText('POINT(40.6069393 -95.2263696)', 4326), 40.6827706, -95.1310916, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458589', 'Long Branch', 'Stream', 'Iowa', 'IA', 'Marion', 'Melcher-Dallas', 41.2077757, -93.1738174, ST_GeomFromText('POINT(41.2077757 -93.1738174)', 4326), 41.1602751, -93.3038205, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('458590', 'Long Creek', 'Stream', 'Iowa', 'IA', 'Decatur', 'Grand River', 40.7827762, -93.8799464, ST_GeomFromText('POINT(40.7827762 -93.8799464)', 4326), 40.9047181, -93.9096685, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458591', 'Long Creek', 'Stream', 'Iowa', 'IA', 'Louisa', 'Cairo', 41.236139, -91.2645963, ST_GeomFromText('POINT(41.236139 -91.2645963)', 4326), 41.2669665, -91.5148821, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458592', 'Long Creek', 'Stream', 'Iowa', 'IA', 'Des Moines', 'Dallas City', 40.748651, -91.24376, ST_GeomFromText('POINT(40.748651 -91.24376)', 4326), 40.8547587, -91.3051513, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458593', 'Long Dick Creek', 'Stream', 'Iowa', 'IA', 'Story', 'Story City', 42.1694289, -93.5760484, ST_GeomFromText('POINT(42.1694289 -93.5760484)', 4326), 42.3683146, -93.5429894, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458595', 'Long Lake', 'Lake', 'Iowa', 'IA', 'Louisa', 'Lone Tree', 41.3899234, -91.403239, ST_GeomFromText('POINT(41.3899234 -91.403239)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('458597', 'Long Pond', 'Lake', 'Iowa', 'IA', 'Des Moines', 'Dallas City', 40.7034116, -91.1299887, ST_GeomFromText('POINT(40.7034116 -91.1299887)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('458606', 'Longs Branch', 'Stream', 'Iowa', 'IA', 'Montgomery', 'Morton Mills', 41.0380451, -94.9944292, ST_GeomFromText('POINT(41.0380451 -94.9944292)', 4326), 41.0958333, -94.8838889, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458610', 'Lonzo Creek', 'Stream', 'Iowa', 'IA', 'Taylor', 'Corning South', 40.8924868, -94.7038598, ST_GeomFromText('POINT(40.8924868 -94.7038598)', 4326), 40.8969444, -94.6519444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458620', 'Lost Branch', 'Stream', 'Iowa', 'IA', 'Lucas', 'Russell', 40.9183361, -93.2004852, ST_GeomFromText('POINT(40.9183361 -93.2004852)', 4326), 40.8702808, -93.271043, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458621', 'Lost Branch', 'Stream', 'Iowa', 'IA', 'Greene', 'Paton', 42.1747014, -94.3344117, ST_GeomFromText('POINT(42.1747014 -94.3344117)', 4326), 42.2510879, -94.2938547, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('458622', 'Lost Creek', 'Stream', 'Iowa', 'IA', 'Jones', 'Fillmore', 42.2766742, -90.9287487, ST_GeomFromText('POINT(42.2766742 -90.9287487)', 4326), 42.2919534, -90.8320786, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458623', 'Lost Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Cordova', 41.730587, -90.3690204, ST_GeomFromText('POINT(41.730587 -90.3690204)', 4326), 41.6694759, -90.5256915, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458624', 'Lost Creek', 'Stream', 'Iowa', 'IA', 'Lee', 'Fort Madison', 40.645597, -91.2637602, ST_GeomFromText('POINT(40.645597 -91.2637602)', 4326), 40.7592031, -91.4326537, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458625', 'Lost Creek', 'Stream', 'Iowa', 'IA', 'Mahaska', 'Eddyville', 41.1783417, -92.6435258, ST_GeomFromText('POINT(41.1783417 -92.6435258)', 4326), 41.1961205, -92.5835242, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458627', 'Lost Grove Creek', 'Stream', 'Iowa', 'IA', 'Greene', 'Lanyon', 42.2008105, -94.2399636, ST_GeomFromText('POINT(42.2008105 -94.2399636)', 4326), 42.2544202, -94.1516265, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458630', 'Lost Island Lake', 'Lake', 'Iowa', 'IA', 'Palo Alto', 'Ruthven', 43.1712104, -94.9058959, ST_GeomFromText('POINT(43.1712104 -94.9058959)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('458632', 'Lost Island Outlet', 'Stream', 'Iowa', 'IA', 'Clay', 'Gillett Grove', 43.0955244, -95.0586024, ST_GeomFromText('POINT(43.0955244 -95.0586024)', 4326), 43.1405212, -94.9505435, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458633', 'Lost Lake', 'Lake', 'Iowa', 'IA', 'Boone', 'Madrid NW', 41.979838, -93.8945559, ST_GeomFromText('POINT(41.979838 -93.8945559)', 4326), NULL, NULL, '1979-04-30', '2018-06-22', NULL, NULL, NULL),
  ('458635', 'Lost Slough', 'Lake', 'Iowa', 'IA', 'Des Moines', 'Dallas City', 40.7089185, -91.1339714, ST_GeomFromText('POINT(40.7089185 -91.1339714)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('458637', 'Lotts Creek', 'Stream', 'Missouri', 'MO', 'Worth', 'Allendale', 40.493882, -94.3124565, ST_GeomFromText('POINT(40.493882 -94.3124565)', 4326), 40.8169385, -94.0838396, '1980-10-24', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('458645', 'Louse Hollow', 'Valley', 'Iowa', 'IA', 'Clayton', 'Garnavillo', 42.835548, -91.1371656, ST_GeomFromText('POINT(42.835548 -91.1371656)', 4326), 42.8860697, -91.1559781, '1979-04-30', '2015-09-04', NULL, NULL, NULL),
  ('458653', 'Lowe Pool', 'Lake', 'Iowa', 'IA', 'Kossuth', 'Burt', 43.2381329, -94.1560986, ST_GeomFromText('POINT(43.2381329 -94.1560986)', 4326), NULL, NULL, '1979-04-30', '2018-09-21', NULL, NULL, NULL),
  ('458660', 'Lower Brown Lake', 'Lake', 'Iowa', 'IA', 'Jackson', 'Blackhawk', 42.1522425, -90.2459625, ST_GeomFromText('POINT(42.1522425 -90.2459625)', 4326), NULL, NULL, '1979-04-30', '2012-08-28', NULL, NULL, NULL),
  ('458663', 'Lower Gar Lake', 'Lake', 'Iowa', 'IA', 'Dickinson', 'Milford', 43.3435745, -95.1255508, ST_GeomFromText('POINT(43.3435745 -95.1255508)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458667', 'Lower Y Lake', 'Lake', 'Iowa', 'IA', 'Jackson', 'Savanna', 42.1141544, -90.1730878, ST_GeomFromText('POINT(42.1141544 -90.1730878)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('458679', 'Luicks Creek', 'Stream', 'Iowa', 'IA', 'Wright', 'Belmond', 42.8305251, -93.6090988, ST_GeomFromText('POINT(42.8305251 -93.6090988)', 4326), 42.8949671, -93.5146508, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458680', 'Lum Hollow Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Climbing Hill', 42.2702688, -96.0533486, ST_GeomFromText('POINT(42.2702688 -96.0533486)', 4326), 42.2869351, -95.9472334, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458681', 'Lund Creek', 'Stream', 'Iowa', 'IA', 'Ida', 'Battle Creek', 42.3044329, -95.6038913, ST_GeomFromText('POINT(42.3044329 -95.6038913)', 4326), 42.2630556, -95.5630556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458682', 'Lundys Creek', 'Stream', 'Iowa', 'IA', 'Boone', 'Ames West', 42.1166501, -93.7177208, ST_GeomFromText('POINT(42.1166501 -93.7177208)', 4326), 42.097483, -93.7755009, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458683', 'Lutes Creek', 'Stream', 'Iowa', 'IA', 'Marshall', 'Laurel', 41.918323, -92.8793637, ST_GeomFromText('POINT(41.918323 -92.8793637)', 4326), 41.859435, -92.8604732, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('458689', 'Lux Creek', 'Stream', 'Iowa', 'IA', 'Jackson', 'La Motte', 42.358899, -90.5401284, ST_GeomFromText('POINT(42.358899 -90.5401284)', 4326), 42.4011186, -90.6112397, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458697', 'Lyons Chute', 'Stream', 'Iowa', 'IA', 'Clinton', 'Clinton NW', 41.8875283, -90.1690155, ST_GeomFromText('POINT(41.8875283 -90.1690155)', 4326), 41.8986111, -90.1672222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458698', 'Lyons Creek', 'Stream', 'Iowa', 'IA', 'Hamilton', 'Webster City', 42.4666409, -93.8104983, ST_GeomFromText('POINT(42.4666409 -93.8104983)', 4326), 42.5166416, -93.7268829, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458703', 'Lytle Creek', 'Stream', 'Iowa', 'IA', 'Jackson', 'Leisure Lake', 42.1875146, -90.7520789, ST_GeomFromText('POINT(42.1875146 -90.7520789)', 4326), 42.4122283, -90.7273512, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458705', 'Izaak Walton Lake', 'Lake', 'Iowa', 'IA', 'Des Moines', 'West Burlington', 40.83046, -91.1495894, ST_GeomFromText('POINT(40.83046 -91.1495894)', 4326), NULL, NULL, '2000-01-01', '2018-06-11', NULL, NULL, NULL),
  ('458714', 'Mad Creek', 'Stream', 'Iowa', 'IA', 'Muscatine', 'Muscatine', 41.4241954, -91.0354271, ST_GeomFromText('POINT(41.4241954 -91.0354271)', 4326), 41.4988889, -91.0080556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458732', 'Magee Lake', 'Lake', 'Iowa', 'IA', 'Des Moines', 'Lomax', 40.7076706, -91.1226501, ST_GeomFromText('POINT(40.7076706 -91.1226501)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('458738', 'Thayer Lake', 'Reservoir', 'Iowa', 'IA', 'Union', 'Lorimor South', 41.0214039, -94.0665367, ST_GeomFromText('POINT(41.0214039 -94.0665367)', 4326), NULL, NULL, '2000-01-01', '2018-06-22', 'Official', 'Board Decision', '1983-01-01'),
  ('458741', 'Mallard Marsh Swamp', 'Lake', 'Iowa', 'IA', 'Cerro Gordo', 'Clear Lake West', 43.242352, -93.461779, ST_GeomFromText('POINT(43.242352 -93.461779)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('458744', 'Malone Creek', 'Stream', 'Iowa', 'IA', 'Buchanan', 'Independence', 42.4580425, -91.8804497, ST_GeomFromText('POINT(42.4580425 -91.8804497)', 4326), 42.5508183, -91.84628, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('458745', 'Malony Branch', 'Stream', 'Iowa', 'IA', 'Crawford', 'Manilla', 41.9708201, -95.1711053, ST_GeomFromText('POINT(41.9708201 -95.1711053)', 4326), 41.986097, -95.0722143, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458751', 'Lake Manawa', 'Lake', 'Iowa', 'IA', 'Pottawattamie', 'Council Bluffs South', 41.2061875, -95.8584829, ST_GeomFromText('POINT(41.2061875 -95.8584829)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('458753', 'Mangold Hollow', 'Valley', 'Iowa', 'IA', 'Dubuque', 'Sherrill', 42.5945431, -90.850511, ST_GeomFromText('POINT(42.5945431 -90.850511)', 4326), 42.6136283, -90.8522376, '1979-04-30', '2023-10-07', NULL, NULL, NULL),
  ('458755', 'Manhattan Point', 'Cape', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.3921856, -95.1649963, ST_GeomFromText('POINT(43.3921856 -95.1649963)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458763', 'Manson Branch', 'Stream', 'Iowa', 'IA', 'Appanoose', 'Centerville West', 40.7344576, -92.895755, ST_GeomFromText('POINT(40.7344576 -92.895755)', 4326), 40.6980704, -92.8685322, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458770', 'Maple Creek', 'Stream', 'Iowa', 'IA', 'Cherokee', 'Aurelia', 42.7216492, -95.4752826, ST_GeomFromText('POINT(42.7216492 -95.4752826)', 4326), 42.8363681, -95.3391672, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458785', 'Maple River', 'Stream', 'Iowa', 'IA', 'Monona', 'Moorhead NW', 41.9997101, -95.982233, ST_GeomFromText('POINT(41.9997101 -95.982233)', 4326), 42.8602568, -95.3838908, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('458791', 'Maquoketa River', 'Stream', 'Iowa', 'IA', 'Jackson', 'Green Island', 42.1883521, -90.3095737, ST_GeomFromText('POINT(42.1883521 -90.3095737)', 4326), 42.7188723, -91.7107147, '1979-04-30', '2014-12-12', NULL, NULL, NULL),
  ('458794', 'Marble Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.4699618, -95.124162, ST_GeomFromText('POINT(43.4699618 -95.124162)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458795', 'Marble Lake', 'Lake', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.4744284, -95.1348852, ST_GeomFromText('POINT(43.4744284 -95.1348852)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('458812', 'Markhams Pond', 'Lake', 'Iowa', 'IA', 'Mitchell', 'Carpenter', 43.4783567, -93.0070365, ST_GeomFromText('POINT(43.4783567 -93.0070365)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('458813', 'Marks Branch', 'Stream', 'Iowa', 'IA', 'Decatur', 'Pleasanton', 40.57731, -93.67591, ST_GeomFromText('POINT(40.57731 -93.67591)', 4326), 40.5836111, -93.7366667, '1979-04-30', '2011-11-29', NULL, NULL, NULL),
  ('458819', 'Marrowbone Creek', 'Stream', 'Iowa', 'IA', 'Carroll', 'Lanesboro', 42.1683172, -94.7177587, ST_GeomFromText('POINT(42.1683172 -94.7177587)', 4326), 42.2544272, -94.7155365, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458827', 'Martha Creek', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Cresco NE', 43.3794124, -92.0051627, ST_GeomFromText('POINT(43.3794124 -92.0051627)', 4326), 43.3733014, -92.011274, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458831', 'Martin Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Malone', 41.7597529, -90.4656902, ST_GeomFromText('POINT(41.7597529 -90.4656902)', 4326), 41.6966982, -90.4915238, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458832', 'Martin Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Bertram', 41.9913905, -91.5101764, ST_GeomFromText('POINT(41.9913905 -91.5101764)', 4326), 42.0416664, -91.513508, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458835', 'Marvel Creek', 'Stream', 'Iowa', 'IA', 'Adair', 'Arbor Hill', 41.3052664, -94.329127, ST_GeomFromText('POINT(41.3052664 -94.329127)', 4326), 41.2985991, -94.4585763, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458841', 'Mason Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'De Witt', 41.7569734, -90.6237508, ST_GeomFromText('POINT(41.7569734 -90.6237508)', 4326), 41.6822526, -90.5962495, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458842', 'Mason Creek', 'Stream', 'Iowa', 'IA', 'Guthrie', 'Guthrie Center East', 41.6630422, -94.4960818, ST_GeomFromText('POINT(41.6630422 -94.4960818)', 4326), 41.6277645, -94.6471983, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458843', 'Mason Creek', 'Stream', 'Iowa', 'IA', 'Cerro Gordo', 'Mason City', 43.1357976, -93.1385356, ST_GeomFromText('POINT(43.1357976 -93.1385356)', 4326), 43.1166291, -93.2077033, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('458856', 'Matson Pond', 'Lake', 'Iowa', 'IA', 'Johnson', 'Amana', 41.7846608, -91.7787868, ST_GeomFromText('POINT(41.7846608 -91.7787868)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('458857', 'Mattix Branch', 'Stream', 'Iowa', 'IA', 'Keokuk', 'Rose Hill', 41.2669553, -92.406853, ST_GeomFromText('POINT(41.2669553 -92.406853)', 4326), 41.2211233, -92.3599072, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458861', 'Maxon Reservoir', 'Reservoir', 'Iowa', 'IA', 'Monroe', 'Albia', 41.0335969, -92.7822018, ST_GeomFromText('POINT(41.0335969 -92.7822018)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('458872', 'Maynes Creek', 'Stream', 'Iowa', 'IA', 'Butler', 'Dumont South', 42.7044205, -92.9007517, ST_GeomFromText('POINT(42.7044205 -92.9007517)', 4326), 42.7310844, -93.4124267, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458880', 'McAllister Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Swisher', 41.8136208, -91.6460079, ST_GeomFromText('POINT(41.8136208 -91.6460079)', 4326), 41.8627778, -91.6966667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458882', 'Lake MacBride', 'Reservoir', 'Iowa', 'IA', 'Johnson', 'Ely', 41.805294, -91.560574, ST_GeomFromText('POINT(41.805294 -91.560574)', 4326), NULL, NULL, '1979-04-30', '2024-10-01', NULL, NULL, NULL),
  ('458886', 'McCarty Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Port Byron', 41.6150329, -90.3451288, ST_GeomFromText('POINT(41.6150329 -90.3451288)', 4326), 41.6341991, -90.4454105, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458889', 'McCleerey Creek', 'Stream', 'Iowa', 'IA', 'Monona', 'Mapleton', 42.1347115, -95.830841, ST_GeomFromText('POINT(42.1347115 -95.830841)', 4326), 42.0858222, -95.7941737, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458891', 'McClelland Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.4969054, -95.0924948, ST_GeomFromText('POINT(43.4969054 -95.0924948)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458894', 'McClure Creek', 'Stream', 'Iowa', 'IA', 'Butler', 'Coster', 42.6388694, -92.6376917, ST_GeomFromText('POINT(42.6388694 -92.6376917)', 4326), 42.7563664, -92.7613052, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('458895', 'McCord Pond', 'Reservoir', 'Iowa', 'IA', 'Guthrie', 'Bayard', 41.8388747, -94.6091427, ST_GeomFromText('POINT(41.8388747 -94.6091427)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458898', 'McCreath Creek', 'Stream', 'Iowa', 'IA', 'O''Brien', 'Hartley SW', 43.0180314, -95.4436151, ST_GeomFromText('POINT(43.0180314 -95.4436151)', 4326), 43.0966415, -95.5197295, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458904', 'McDonald Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'De Witt', 41.7686412, -90.5187472, ST_GeomFromText('POINT(41.7686412 -90.5187472)', 4326), 41.6708641, -90.5715264, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458906', 'McElhaney Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Moville', 42.4947143, -96.0755751, ST_GeomFromText('POINT(42.4947143 -96.0755751)', 4326), 42.5477681, -95.9250148, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458914', 'McGruder Creek', 'Stream', 'Iowa', 'IA', 'Decatur', 'Davis City', 40.67278, -93.7718896, ST_GeomFromText('POINT(40.67278 -93.7718896)', 4326), 40.7869455, -93.7396654, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458932', 'McMaster Creek', 'Stream', 'Iowa', 'IA', 'Monona', 'Smithland', 42.1591564, -95.9780668, ST_GeomFromText('POINT(42.1591564 -95.9780668)', 4326), 42.1716667, -95.8886111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458938', 'McPherron Creek', 'Stream', 'Iowa', 'IA', 'Fremont', 'Tabor', 40.8944445, -95.7427803, ST_GeomFromText('POINT(40.8944445 -95.7427803)', 4326), 40.9222222, -95.6763889, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458940', 'Mead Creek', 'Stream', 'Iowa', 'IA', 'Howard', 'Elma', 43.2421918, -92.4518441, ST_GeomFromText('POINT(43.2421918 -92.4518441)', 4326), 43.2727469, -92.4276763, '1979-04-30', NULL, NULL, NULL, NULL),
  ('458985', 'Menneika Creek', 'Stream', 'Iowa', 'IA', 'Wapello', 'Ottumwa North', 41.1116789, -92.4999102, ST_GeomFromText('POINT(41.1116789 -92.4999102)', 4326), 41.1405674, -92.5040772, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459012', 'Mestad Spring', 'Spring', 'Iowa', 'IA', 'Winneshiek', 'Highlandville', 43.4463591, -91.6901481, ST_GeomFromText('POINT(43.4463591 -91.6901481)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('459015', 'Metz Creek', 'Stream', 'Iowa', 'IA', 'Adams', 'Lenox', 40.9710992, -94.5099634, ST_GeomFromText('POINT(40.9710992 -94.5099634)', 4326), 41.0166547, -94.514964, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459018', 'Lake Meyer', 'Lake', 'Iowa', 'IA', 'Winneshiek', 'Fort Atkinson', 43.1745434, -91.9087134, ST_GeomFromText('POINT(43.1745434 -91.9087134)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('459019', 'Meyerholz Lake', 'Lake', 'Iowa', 'IA', 'Louisa', 'Wapello', 41.1526822, -91.1479856, ST_GeomFromText('POINT(41.1526822 -91.1479856)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('459020', 'Meyers Lake', 'Lake', 'Iowa', 'IA', 'Black Hawk', 'Waterloo South', 42.4613364, -92.2903184, ST_GeomFromText('POINT(42.4613364 -92.2903184)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('459021', 'Michaels Creek', 'Stream', 'Iowa', 'IA', 'Louisa', 'Toolesboro', 41.2333635, -91.1107035, ST_GeomFromText('POINT(41.2333635 -91.1107035)', 4326), 41.2944727, -91.179595, '1979-04-30', '2014-05-15', NULL, NULL, NULL),
  ('459024', 'Middle Avery Creek', 'Stream', 'Iowa', 'IA', 'Wapello', 'Chillicothe', 41.0977894, -92.5410223, ST_GeomFromText('POINT(41.0977894 -92.5410223)', 4326), 41.0019529, -92.8004732, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459025', 'Middle Beaver Creek', 'Stream', 'Iowa', 'IA', 'Boone', 'Berkley', 41.9897049, -94.1132918, ST_GeomFromText('POINT(41.9897049 -94.1132918)', 4326), 42.1633115, -94.0866238, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459026', 'Middle Branch Blue Earth River', 'Stream', 'Minnesota', 'MN', 'Faribault', 'Elmore', 43.5718997, -94.1032935, ST_GeomFromText('POINT(43.5718997 -94.1032935)', 4326), 43.458288, -93.8010581, '1979-04-30', '2015-03-16', NULL, NULL, NULL),
  ('459027', 'Middle Branch Boone River', 'Stream', 'Iowa', 'IA', 'Hancock', 'Kanawha', 42.9113565, -93.8716122, ST_GeomFromText('POINT(42.9113565 -93.8716122)', 4326), 43.1110733, -93.8382785, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459028', 'Middle Branch Buckley Creek', 'Stream', 'Iowa', 'IA', 'Mahaska', 'Peoria', 41.494442, -92.8229724, ST_GeomFromText('POINT(41.494442 -92.8229724)', 4326), 41.5619407, -92.8163048, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('459029', 'Middle Branch One Hundred and Two River', 'Stream', 'Iowa', 'IA', 'Taylor', 'Guss', 40.8030431, -94.8069181, ST_GeomFromText('POINT(40.8030431 -94.8069181)', 4326), 40.898599, -94.5663542, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459030', 'Middle Branch Wapsinonoc Creek', 'Stream', 'Iowa', 'IA', 'Muscatine', 'Atalissa', 41.5753011, -91.2498803, ST_GeomFromText('POINT(41.5753011 -91.2498803)', 4326), 41.7219643, -91.285718, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459031', 'Middle Buck Creek', 'Stream', 'Iowa', 'IA', 'Poweshiek', 'Searsboro', 41.5536108, -92.6340785, ST_GeomFromText('POINT(41.5536108 -92.6340785)', 4326), 41.6683293, -92.6871344, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459032', 'Middle Creek', 'Stream', 'Iowa', 'IA', 'Mahaska', 'Rose Hill', 41.3433418, -92.44102, ST_GeomFromText('POINT(41.3433418 -92.44102)', 4326), 41.5022211, -92.744637, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459033', 'Middle Creek', 'Stream', 'Iowa', 'IA', 'Warren', 'Otley', 41.486104, -93.1010354, ST_GeomFromText('POINT(41.486104 -93.1010354)', 4326), 41.4966566, -93.7818893, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459034', 'Middle English River', 'Stream', 'Iowa', 'IA', 'Iowa', 'North English', 41.542509, -92.0329552, ST_GeomFromText('POINT(41.542509 -92.0329552)', 4326), 41.554171, -92.3557397, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459035', 'Middle Fork Catfish Creek', 'Stream', 'Iowa', 'IA', 'Dubuque', 'Dubuque South', 42.4697262, -90.6773501, ST_GeomFromText('POINT(42.4697262 -90.6773501)', 4326), 42.4880572, -90.8365179, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459036', 'Middle Fork Grand River', 'Stream', 'Missouri', 'MO', 'Gentry', 'Darlington', 40.214162, -94.3885685, ST_GeomFromText('POINT(40.214162 -94.3885685)', 4326), 40.7080484, -94.2227318, '1980-10-24', NULL, NULL, NULL, NULL),
  ('459037', 'Middle Fork Little Maquoketa River', 'Stream', 'Iowa', 'IA', 'Dubuque', 'Sherrill', 42.5688879, -90.8051277, ST_GeomFromText('POINT(42.5688879 -90.8051277)', 4326), 42.6066627, -90.9779074, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459038', 'Middle Fork Medicine Creek', 'Stream', 'Missouri', 'MO', 'Putnam', 'Powersville', 40.5781334, -93.3349935, ST_GeomFromText('POINT(40.5781334 -93.3349935)', 4326), 40.6947289, -93.3807696, '1979-04-30', '2010-11-22', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('459039', 'Middle Fork One Hundred and Two River', 'Stream', 'Missouri', 'MO', 'Nodaway', 'Hopkins', 40.5579, -94.82392, ST_GeomFromText('POINT(40.5579 -94.82392)', 4326), 40.81839, -94.63069, '1979-04-30', '2011-11-29', NULL, NULL, NULL),
  ('459040', 'Middle Fork South Beaver Creek', 'Stream', 'Iowa', 'IA', 'Grundy', 'Holland', 42.4988693, -92.8599206, ST_GeomFromText('POINT(42.4988693 -92.8599206)', 4326), 42.5472009, -93.074089, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459042', 'Middle Mill Creek', 'Stream', 'Iowa', 'IA', 'Page', 'Clearmont', 40.6066594, -95.1102563, ST_GeomFromText('POINT(40.6066594 -95.1102563)', 4326), 40.6694366, -95.0988684, '1979-04-30', NULL, 'Official', 'Board Decision', '1977-01-01'),
  ('459043', 'Middle Minerva Creek', 'Stream', 'Iowa', 'IA', 'Marshall', 'State Center', 42.1219309, -93.1454808, ST_GeomFromText('POINT(42.1219309 -93.1454808)', 4326), 42.1719302, -93.396598, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459044', 'Middle Nodaway River', 'Stream', 'Iowa', 'IA', 'Montgomery', 'Villisca', 40.9047119, -94.9985932, ST_GeomFromText('POINT(40.9047119 -94.9985932)', 4326), 41.4622096, -94.5505267, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459045', 'Middle Otter Creek', 'Stream', 'Iowa', 'IA', 'Clarke', 'Jamison', 41.119163, -93.6418838, ST_GeomFromText('POINT(41.119163 -93.6418838)', 4326), 41.0419444, -93.7366667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459046', 'Middle Platte River', 'Stream', 'Iowa', 'IA', 'Taylor', 'Kent', 40.8833224, -94.4349603, ST_GeomFromText('POINT(40.8833224 -94.4349603)', 4326), 41.0833226, -94.3274575, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459047', 'Middle Pond', 'Lake', 'Iowa', 'IA', 'Iowa', 'Middle Amana', 41.8101584, -91.9078255, ST_GeomFromText('POINT(41.8101584 -91.9078255)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('459048', 'Middle Raccoon River', 'Stream', 'Iowa', 'IA', 'Dallas', 'Redfield', 41.5722102, -94.1949587, ST_GeomFromText('POINT(41.5722102 -94.1949587)', 4326), 42.1563737, -95.0644358, '1979-04-30', '2013-12-11', NULL, NULL, NULL),
  ('459049', 'Middle River', 'Stream', 'Iowa', 'IA', 'Warren', 'Hartford', 41.485577, -93.3972428, ST_GeomFromText('POINT(41.485577 -93.3972428)', 4326), 41.5902646, -94.6952555, '1979-04-30', '2018-07-31', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('459053', 'Middle Silver Creek', 'Stream', 'Iowa', 'IA', 'Pottawattamie', 'Treynor', 41.1663858, -95.5950036, ST_GeomFromText('POINT(41.1663858 -95.5950036)', 4326), 41.5161017, -95.4647247, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459055', 'Middle Soldier River', 'Stream', 'Iowa', 'IA', 'Monona', 'Ute', 42.0491555, -95.675838, ST_GeomFromText('POINT(42.0491555 -95.675838)', 4326), 42.1505442, -95.5147227, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459056', 'Middle Tarkio Creek', 'Stream', 'Missouri', 'MO', 'Atchison', 'Tarkio East', 40.4511096, -95.3735919, ST_GeomFromText('POINT(40.4511096 -95.3735919)', 4326), 40.6702735, -95.2724832, '1980-10-24', NULL, 'Official', 'Board Decision', '1939-01-01'),
  ('459057', 'Middle Timber Creek', 'Stream', 'Iowa', 'IA', 'Marshall', 'Laurel', 41.9797111, -92.8929764, ST_GeomFromText('POINT(41.9797111 -92.8929764)', 4326), 41.9505441, -93.0076991, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459058', 'Middle Walnut Creek', 'Stream', 'Iowa', 'IA', 'Jefferson', 'Fairfield North', 41.1091852, -91.8843383, ST_GeomFromText('POINT(41.1091852 -91.8843383)', 4326), 41.1294606, -92.042676, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459059', 'Middle Willow Creek', 'Stream', 'Iowa', 'IA', 'Crawford', 'Dunlap NW', 41.9633219, -95.6680605, ST_GeomFromText('POINT(41.9633219 -95.6680605)', 4326), 42.0044331, -95.5913918, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459075', 'Miles Branch', 'Stream', 'Iowa', 'IA', 'Davis', 'Selma', 40.8555772, -92.1476785, ST_GeomFromText('POINT(40.8555772 -92.1476785)', 4326), 40.8541667, -92.2027778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459079', 'Militia Hollow', 'Valley', 'Iowa', 'IA', 'Fremont', 'Sidney', 40.6515168, -95.6962777, ST_GeomFromText('POINT(40.6515168 -95.6962777)', 4326), 40.6737055, -95.6702788, '1979-04-30', '2023-10-07', NULL, NULL, NULL),
  ('459080', 'Cotton Creek', 'Stream', 'Iowa', 'IA', 'Warren', 'Newbern', 41.1813857, -93.3702109, ST_GeomFromText('POINT(41.1813857 -93.3702109)', 4326), 41.1558301, -93.4927136, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459081', 'Mill Branch', 'Stream', 'Iowa', 'IA', 'Jasper', 'Runnells', 41.5113791, -93.3265976, ST_GeomFromText('POINT(41.5113791 -93.3265976)', 4326), 41.5519444, -93.3030556, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('459082', 'Mill Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Solon', 41.813903, -91.3901675, ST_GeomFromText('POINT(41.813903 -91.3901675)', 4326), 41.7663889, -91.3905556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459083', 'Mill Creek', 'Stream', 'Iowa', 'IA', 'Boone', 'Boone West', 42.023316, -93.9305071, ST_GeomFromText('POINT(42.023316 -93.9305071)', 4326), 42.0194444, -93.9527778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459084', 'Mill Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Colesburg', 42.7136017, -91.1531865, ST_GeomFromText('POINT(42.7136017 -91.1531865)', 4326), 42.6747222, -91.1563889, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459085', 'Mill Creek', 'Stream', 'Iowa', 'IA', 'Cherokee', 'Cherokee North', 42.7810932, -95.5263955, ST_GeomFromText('POINT(42.7810932 -95.5263955)', 4326), 43.1635859, -95.5950099, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459086', 'Mill Creek', 'Stream', 'Iowa', 'IA', 'Jackson', 'Bellevue', 42.2508495, -90.4179063, ST_GeomFromText('POINT(42.2508495 -90.4179063)', 4326), 42.3066788, -90.5898515, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459087', 'Mill Creek', 'Stream', 'Iowa', 'IA', 'Harrison', 'Dunlap SW', 41.8230439, -95.6352825, ST_GeomFromText('POINT(41.8230439 -95.6352825)', 4326), 41.8924881, -95.4444448, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459088', 'Mill Creek', 'Stream', 'Iowa', 'IA', 'Jones', 'Oxford Junction', 41.9719618, -90.9629263, ST_GeomFromText('POINT(41.9719618 -90.9629263)', 4326), 41.881406, -91.1151561, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459089', 'Mill Creek', 'Stream', 'Iowa', 'IA', 'Clinton', 'Clinton', 41.8086412, -90.2306836, ST_GeomFromText('POINT(41.8086412 -90.2306836)', 4326), 41.933083, -90.2906855, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459090', 'Mill Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Ely', 41.8097339, -91.5157277, ST_GeomFromText('POINT(41.8097339 -91.5157277)', 4326), 41.8430663, -91.4707269, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459091', 'Mill Creek', 'Stream', 'Iowa', 'IA', 'Fremont', 'Riverton', 40.6644453, -95.6002701, ST_GeomFromText('POINT(40.6644453 -95.6002701)', 4326), 40.6549985, -95.3983192, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('459095', 'Mill Race', 'Stream', 'Iowa', 'IA', 'Fayette', 'Elgin', 42.9569256, -91.6259839, ST_GeomFromText('POINT(42.9569256 -91.6259839)', 4326), 42.9630556, -91.6461111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459096', 'Mill Slough', 'Stream', 'Iowa', 'IA', 'Dallas', 'Adel', 41.6155437, -94.0124529, ST_GeomFromText('POINT(41.6155437 -94.0124529)', 4326), 41.64221, -94.0355094, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459104', 'Miller Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Oto', 42.2844347, -95.8888983, ST_GeomFromText('POINT(42.2844347 -95.8888983)', 4326), 42.3355448, -95.7588952, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459105', 'Miller Creek', 'Stream', 'Iowa', 'IA', 'Boone', 'Story City', 42.2188726, -93.5860483, ST_GeomFromText('POINT(42.2188726 -93.5860483)', 4326), 42.2302778, -93.6141667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459106', 'Miller Creek', 'Stream', 'Iowa', 'IA', 'Black Hawk', 'Gilbertville', 42.3847118, -92.2157384, ST_GeomFromText('POINT(42.3847118 -92.2157384)', 4326), 42.3549879, -92.4057441, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459107', 'Miller Creek', 'Stream', 'Iowa', 'IA', 'Crawford', 'Vail', 42.0541534, -95.2052724, ST_GeomFromText('POINT(42.0541534 -95.2052724)', 4326), 42.0447082, -95.1122149, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459108', 'Miller Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Amish', 41.541125, -91.8054495, ST_GeomFromText('POINT(41.541125 -91.8054495)', 4326), 41.558342, -92.0379555, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459109', 'Miller Creek', 'Stream', 'Iowa', 'IA', 'Monroe', 'Eddyville', 41.1433424, -92.6357476, ST_GeomFromText('POINT(41.1433424 -92.6357476)', 4326), 41.0630625, -92.8251966, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459112', 'Millers Bay', 'Bay', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.3777416, -95.1783301, ST_GeomFromText('POINT(43.3777416 -95.1783301)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459124', 'Mineral Branch', 'Stream', 'Iowa', 'IA', 'Boone', 'Fraser', 42.1744228, -93.9680078, ST_GeomFromText('POINT(42.1744228 -93.9680078)', 4326), 42.1808333, -93.9141667, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('459125', 'Mineral Creek', 'Stream', 'Iowa', 'IA', 'Allamakee', 'Dorchester', 43.4213619, -91.5062518, ST_GeomFromText('POINT(43.4213619 -91.5062518)', 4326), 43.3627518, -91.5209746, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459126', 'Mineral Creek', 'Stream', 'Iowa', 'IA', 'Jackson', 'Leisure Lake', 42.1269585, -90.868196, ST_GeomFromText('POINT(42.1269585 -90.868196)', 4326), 42.1266736, -91.1534856, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459128', 'Mineral Springs Branch', 'Stream', 'Missouri', 'MO', 'Mercer', 'Lineville', 40.5299065, -93.5978884, ST_GeomFromText('POINT(40.5299065 -93.5978884)', 4326), 40.5806499, -93.5524464, '1979-04-30', '2012-11-08', NULL, NULL, NULL),
  ('459129', 'Miners Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Guttenberg', 42.7724902, -91.0948512, ST_GeomFromText('POINT(42.7724902 -91.0948512)', 4326), 42.8174882, -91.1859637, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459131', 'Minerva Creek', 'Stream', 'Iowa', 'IA', 'Marshall', 'LaMoille', 42.1202642, -93.0329791, ST_GeomFromText('POINT(42.1202642 -93.0329791)', 4326), 42.2866508, -93.4513209, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459134', 'Minimum Creek', 'Stream', 'Iowa', 'IA', 'Pottawattamie', 'Oakland', 41.2980488, -95.4125008, ST_GeomFromText('POINT(41.2980488 -95.4125008)', 4326), 41.3225, -95.4855556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459135', 'Mink Creek', 'Stream', 'Iowa', 'IA', 'Plymouth', 'Union Center NW', 42.7480464, -96.241691, ST_GeomFromText('POINT(42.7480464 -96.241691)', 4326), 42.9149885, -96.2791908, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459136', 'Mink Creek', 'Stream', 'Iowa', 'IA', 'Fayette', 'Volga', 42.8377606, -91.5976491, ST_GeomFromText('POINT(42.8377606 -91.5976491)', 4326), 42.8935917, -91.7271021, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459137', 'Mink Island', 'Island', 'Iowa', 'IA', 'Lee', 'Fort Madison', 40.6447636, -91.2612601, ST_GeomFromText('POINT(40.6447636 -91.2612601)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459139', 'Minnehaha Creek', 'Stream', 'Iowa', 'IA', 'Grundy', 'Lincoln', 42.3622057, -92.749366, ST_GeomFromText('POINT(42.3622057 -92.749366)', 4326), 42.3363725, -92.8424224, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('459140', 'Minnesota Slough', 'Stream', 'Iowa', 'IA', 'Allamakee', 'De Soto', 43.4816404, -91.231799, ST_GeomFromText('POINT(43.4816404 -91.231799)', 4326), 43.561361, -91.257911, '1979-04-30', '2010-11-22', NULL, NULL, NULL),
  ('459141', 'Minnewashta Lake', 'Lake', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake SE', 43.3607965, -95.1249952, ST_GeomFromText('POINT(43.3607965 -95.1249952)', 4326), NULL, NULL, '1979-04-30', '2014-12-12', NULL, NULL, NULL),
  ('459144', 'Minnie Brook', 'Stream', 'Iowa', 'IA', 'Plymouth', 'Union Center NW', 42.6252696, -96.1980792, ST_GeomFromText('POINT(42.6252696 -96.1980792)', 4326), 42.6897222, -96.1655556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459145', 'Minnow Creek', 'Stream', 'Iowa', 'IA', 'Tama', 'Tama', 41.9969355, -92.5885267, ST_GeomFromText('POINT(41.9969355 -92.5885267)', 4326), 42.0352686, -92.5599151, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459146', 'Minnow Ponds', 'Lake', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.4057961, -95.1377734, ST_GeomFromText('POINT(43.4057961 -95.1377734)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459147', 'Minor Creek', 'Stream', 'Iowa', 'IA', 'Howard', 'Cresco NE', 43.4130231, -92.015718, ST_GeomFromText('POINT(43.4130231 -92.015718)', 4326), 43.4244444, -92.0958333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459153', 'Mitchell Creek', 'Stream', 'Iowa', 'IA', 'Jefferson', 'Libertyville', 40.990853, -92.0218409, ST_GeomFromText('POINT(40.990853 -92.0218409)', 4326), 41.0833508, -92.022675, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459154', 'Mitchell Creek', 'Stream', 'Iowa', 'IA', 'Mahaska', 'New Sharon', 41.3791691, -92.7171379, ST_GeomFromText('POINT(41.3791691 -92.7171379)', 4326), 41.4352778, -92.7130556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459164', 'Mohrs Lake', 'Lake', 'Iowa', 'IA', 'Marshall', 'Laurel', 41.9601625, -92.9058714, ST_GeomFromText('POINT(41.9601625 -92.9058714)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('459165', 'Moine Creek', 'Stream', 'Iowa', 'IA', 'Fayette', 'Wadena', 42.7805384, -91.6901565, ST_GeomFromText('POINT(42.7805384 -91.6901565)', 4326), 42.7594444, -91.7169444, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('459170', 'Monkey Run', 'Stream', 'Iowa', 'IA', 'Louisa', 'Cotter', 41.284747, -91.3812672, ST_GeomFromText('POINT(41.284747 -91.3812672)', 4326), 41.2919444, -91.4727778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459171', 'Monks Creek', 'Stream', 'Iowa', 'IA', 'Lee', 'Argyle', 40.5436505, -91.6221054, ST_GeomFromText('POINT(40.5436505 -91.6221054)', 4326), 40.5933333, -91.6230556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459193', 'Montgomery Creek', 'Stream', 'Iowa', 'IA', 'Boone', 'Ames West', 42.1241496, -93.742166, ST_GeomFromText('POINT(42.1241496 -93.742166)', 4326), 42.1622024, -93.8688372, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459194', 'Montgomery Creek', 'Stream', 'Iowa', 'IA', 'Clay', 'Webb', 42.9941394, -95.0811024, ST_GeomFromText('POINT(42.9941394 -95.0811024)', 4326), 42.9219444, -95.0325, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459202', 'Moody Run', 'Stream', 'Iowa', 'IA', 'Clayton', 'Clayton', 42.9485971, -91.1854079, ST_GeomFromText('POINT(42.9485971 -91.1854079)', 4326), 42.9758333, -91.1838889, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459204', 'Moon Creek', 'Stream', 'Iowa', 'IA', 'Mahaska', 'Union Mills', 41.4472269, -92.5149098, ST_GeomFromText('POINT(41.4472269 -92.5149098)', 4326), 41.6247208, -92.5946327, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459205', 'Moon Creek', 'Stream', 'Iowa', 'IA', 'Lyon', 'Rock Rapids', 43.4369162, -96.1678042, ST_GeomFromText('POINT(43.4369162 -96.1678042)', 4326), 43.4669161, -96.2525295, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459206', 'Mooney Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Amish', 41.6039012, -91.8310068, ST_GeomFromText('POINT(41.6039012 -91.8310068)', 4326), 41.665566, -91.8690644, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459207', 'Mooney Hollow', 'Valley', 'Iowa', 'IA', 'Jackson', 'Green Island', 42.1456409, -90.330533, ST_GeomFromText('POINT(42.1456409 -90.330533)', 4326), 42.1330178, -90.3050403, '1979-04-30', '2015-09-04', NULL, NULL, NULL),
  ('459208', 'Mooney Ridge', 'Ridge', 'Iowa', 'IA', 'Allamakee', 'Lansing', 43.2656654, -91.1751538, ST_GeomFromText('POINT(43.2656654 -91.1751538)', 4326), NULL, NULL, '1979-04-30', '2023-10-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('459209', 'Moore Creek', 'Stream', 'Iowa', 'IA', 'Adams', 'Dewey', 41.1449875, -94.8247013, ST_GeomFromText('POINT(41.1449875 -94.8247013)', 4326), 41.1944444, -94.8038889, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459210', 'Moore Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Andalusia', 41.4597542, -90.6881958, ST_GeomFromText('POINT(41.4597542 -90.6881958)', 4326), 41.4983333, -90.6983333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459215', 'Moores Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.3885733, -95.0880498, ST_GeomFromText('POINT(43.3885733 -95.0880498)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459217', 'Moorhead Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Holstein SW', 42.2899888, -95.6441698, ST_GeomFromText('POINT(42.2899888 -95.6441698)', 4326), 42.3880439, -95.6863942, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459220', 'Moose Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Climbing Hill', 42.263602, -96.0014013, ST_GeomFromText('POINT(42.263602 -96.0014013)', 4326), 42.2591574, -95.9544554, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459223', 'Morgan Branch', 'Stream', 'Iowa', 'IA', 'Davis', 'Agency', 40.879741, -92.3326835, ST_GeomFromText('POINT(40.879741 -92.3326835)', 4326), 40.8527975, -92.3160165, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459227', 'Morgan Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Cedar Rapids North', 42.0030543, -91.7446264, ST_GeomFromText('POINT(42.0030543 -91.7446264)', 4326), 41.9669448, -91.8915701, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459232', 'Mormon Branch', 'Stream', 'Iowa', 'IA', 'Mills', 'Coburg', 40.9655494, -95.2627687, ST_GeomFromText('POINT(40.9655494 -95.2627687)', 4326), 40.9888812, -95.1749891, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459233', 'Mormon Branch', 'Stream', 'Iowa', 'IA', 'Monroe', 'Iconium', 40.9733396, -92.9463107, ST_GeomFromText('POINT(40.9733396 -92.9463107)', 4326), 40.8941667, -92.9119444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459234', 'Mormon Branch', 'Stream', 'Iowa', 'IA', 'Monroe', 'Iconium', 40.8941756, -92.9121435, ST_GeomFromText('POINT(40.8941756 -92.9121435)', 4326), 40.8941756, -92.9121435, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('459235', 'Mormon Creek', 'Stream', 'Iowa', 'IA', 'Monroe', 'Blakesburg', 40.9116787, -92.7435273, ST_GeomFromText('POINT(40.9116787 -92.7435273)', 4326), 40.8939, -92.8099182, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459236', 'Mormon Lake', 'Lake', 'Iowa', 'IA', 'Marshall', 'Union', 42.1311985, -93.0556552, ST_GeomFromText('POINT(42.1311985 -93.0556552)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('459237', 'Mormon Pool', 'Stream', 'Iowa', 'IA', 'Decatur', 'Garden Grove SW', 40.8330575, -93.626607, ST_GeomFromText('POINT(40.8330575 -93.626607)', 4326), 40.8641683, -93.6002172, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459238', 'Mormon Ridge', 'Ridge', 'Iowa', 'IA', 'Marshall', 'Union', 42.129591, -93.0556407, ST_GeomFromText('POINT(42.129591 -93.0556407)', 4326), NULL, NULL, '1979-04-30', '2023-10-07', NULL, NULL, NULL),
  ('459251', 'Morse Island', 'Island', 'Iowa', 'IA', 'Jackson', 'Green Island', 42.1947407, -90.3259625, ST_GeomFromText('POINT(42.1947407 -90.3259625)', 4326), NULL, NULL, '1979-04-30', '2012-08-28', NULL, NULL, NULL),
  ('459252', 'Morse Lake', 'Lake', 'Iowa', 'IA', 'Wright', 'Cornelia', 42.839261, -93.6938723, ST_GeomFromText('POINT(42.839261 -93.6938723)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('459256', 'Moser Creek', 'Stream', 'Iowa', 'IA', 'Shelby', 'Earling', 41.7588766, -95.4602791, ST_GeomFromText('POINT(41.7588766 -95.4602791)', 4326), 41.886377, -95.4291667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459257', 'Mossy Glen Hollow', 'Valley', 'Iowa', 'IA', 'Clayton', 'Edgewood', 42.7294774, -91.4273795, ST_GeomFromText('POINT(42.7294774 -91.4273795)', 4326), 42.691603, -91.4202699, '2000-01-01', '2023-10-06', NULL, NULL, NULL),
  ('459259', 'Mosquito Creek', 'Stream', 'Iowa', 'IA', 'Grundy', 'Reinbeck', 42.3297079, -92.6126951, ST_GeomFromText('POINT(42.3297079 -92.6126951)', 4326), 42.30804, -92.7774224, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459260', 'Mosquito Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Granger', 41.8063758, -93.7805021, ST_GeomFromText('POINT(41.8063758 -93.7805021)', 4326), 41.8622222, -93.8227778, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('459261', 'Mosquito Creek', 'Stream', 'Iowa', 'IA', 'Pottawattamie', 'Council Bluffs South', 41.1763876, -95.8402882, ST_GeomFromText('POINT(41.1763876 -95.8402882)', 4326), 41.8049876, -95.3794438, '1979-04-30', '2018-07-31', NULL, NULL, NULL),
  ('459262', 'Mosquito Creek', 'Stream', 'Iowa', 'IA', 'Dallas', 'Redfield', 41.6055433, -94.2110706, ST_GeomFromText('POINT(41.6055433 -94.2110706)', 4326), 41.8458188, -94.4996942, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459351', 'Mount Zion Branch', 'Stream', 'Iowa', 'IA', 'Adams', 'Prescott', 41.0324873, -94.5999679, ST_GeomFromText('POINT(41.0324873 -94.5999679)', 4326), 41.0972222, -94.5883333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459366', 'Mouse Creek', 'Stream', 'Iowa', 'IA', 'Lucas', 'Lucas', 41.09972, -93.4879912, ST_GeomFromText('POINT(41.09972 -93.4879912)', 4326), 41.0966638, -93.5835489, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459370', 'Muchakinock Creek', 'Stream', 'Iowa', 'IA', 'Mahaska', 'Eddyville', 41.1566756, -92.6396366, ST_GeomFromText('POINT(41.1566756 -92.6396366)', 4326), 41.3988874, -92.8913087, '1979-04-30', '2014-12-12', 'Official', 'Board Decision', '1912-01-01'),
  ('459371', 'Muchikinock Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Des Moines NE', 41.6655443, -93.5493823, ST_GeomFromText('POINT(41.6655443 -93.5493823)', 4326), 41.7280556, -93.5125, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459372', 'Mud Creek', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Bonaparte', 40.6955873, -91.814612, ST_GeomFromText('POINT(40.6955873 -91.814612)', 4326), 40.6883333, -91.8638889, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459373', 'Mud Creek', 'Stream', 'Iowa', 'IA', 'Lee', 'Fort Madison', 40.7042069, -91.2729273, ST_GeomFromText('POINT(40.7042069 -91.2729273)', 4326), 40.6502778, -91.295, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459374', 'Mud Creek', 'Stream', 'Iowa', 'IA', 'Jasper', 'Baxter', 41.8077658, -93.2465935, ST_GeomFromText('POINT(41.8077658 -93.2465935)', 4326), 41.9213767, -93.2868728, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459375', 'Mud Creek', 'Stream', 'Iowa', 'IA', 'Benton', 'Blairstown', 41.9775, -92.0046257, ST_GeomFromText('POINT(41.9775 -92.0046257)', 4326), 42.0144433, -92.0137926, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('459376', 'Mud Creek', 'Stream', 'Iowa', 'IA', 'Crawford', 'Dunlap SW', 41.7699883, -95.6713946, ST_GeomFromText('POINT(41.7699883 -95.6713946)', 4326), 41.8910995, -95.6547271, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459377', 'Mud Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Grand Mound', 41.7511395, -90.6756971, ST_GeomFromText('POINT(41.7511395 -90.6756971)', 4326), 41.6978034, -90.9470946, '1979-04-30', '2014-04-07', NULL, NULL, NULL),
  ('459378', 'Mud Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Pleasantville', 41.4877683, -93.3479872, ST_GeomFromText('POINT(41.4877683 -93.3479872)', 4326), 41.7324882, -93.4782687, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459379', 'Mud Creek', 'Stream', 'Iowa', 'IA', 'Mills', 'Emerson', 41.0747188, -95.4938881, ST_GeomFromText('POINT(41.0747188 -95.4938881)', 4326), 41.269161, -95.4708355, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459380', 'Mud Creek', 'Stream', 'Iowa', 'IA', 'Henry', 'Lowell', 40.8283683, -91.4223765, ST_GeomFromText('POINT(40.8283683 -91.4223765)', 4326), 40.8961454, -91.3787649, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459381', 'Mud Creek', 'Stream', 'Iowa', 'IA', 'Lyon', 'Doon', 43.2813677, -96.2497473, ST_GeomFromText('POINT(43.2813677 -96.2497473)', 4326), 43.6152484, -96.2905882, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459382', 'Mud Creek', 'Stream', 'Iowa', 'IA', 'Kossuth', 'Bancroft', 43.2527396, -94.2110742, ST_GeomFromText('POINT(43.2527396 -94.2110742)', 4326), 43.4241245, -94.4244171, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459383', 'Mud Creek', 'Stream', 'Iowa', 'IA', 'O''Brien', 'Paullina', 42.956371, -95.7063994, ST_GeomFromText('POINT(42.956371 -95.7063994)', 4326), 42.994706, -95.8269578, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459384', 'Mud Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Moville', 42.4891588, -96.080853, ST_GeomFromText('POINT(42.4891588 -96.080853)', 4326), 42.7322127, -96.056131, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459385', 'Mud Creek', 'Stream', 'Iowa', 'IA', 'Benton', 'Brandon', 42.2958251, -92.0599023, ST_GeomFromText('POINT(42.2958251 -92.0599023)', 4326), 42.3852674, -92.001566, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('459386', 'Mud Creek', 'Stream', 'Iowa', 'IA', 'Marshall', 'Union', 42.2063743, -93.1015916, ST_GeomFromText('POINT(42.2063743 -93.1015916)', 4326), 42.2449851, -93.2024262, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459387', 'Mud Creek', 'Stream', 'Iowa', 'IA', 'Marshall', 'Union', 42.1491528, -93.0654797, ST_GeomFromText('POINT(42.1491528 -93.0654797)', 4326), 42.2122077, -93.1760369, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459388', 'Mud Creek', 'Stream', 'Iowa', 'IA', 'Black Hawk', 'La Porte City', 42.3413794, -92.1946272, ST_GeomFromText('POINT(42.3413794 -92.1946272)', 4326), 42.3061015, -92.2960192, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459389', 'Mud Creek', 'Stream', 'Iowa', 'IA', 'Benton', 'Center Point NW', 42.1649953, -91.994069, ST_GeomFromText('POINT(42.1649953 -91.994069)', 4326), 42.1219389, -92.1762949, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459390', 'Mud Lake', 'Lake', 'Iowa', 'IA', 'Linn', 'Shellsburg', 42.0652484, -91.775618, ST_GeomFromText('POINT(42.0652484 -91.775618)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('459391', 'Mud Lake', 'Lake', 'Iowa', 'IA', 'Dubuque', 'Dubuque North', 42.6127758, -90.7026271, ST_GeomFromText('POINT(42.6127758 -90.7026271)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459392', 'Mud Lake', 'Lake', 'Iowa', 'IA', 'Clay', 'Ruthven', 43.1884294, -94.915696, ST_GeomFromText('POINT(43.1884294 -94.915696)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('459394', 'Muddy Creek', 'Stream', 'Iowa', 'IA', 'Plymouth', 'Union Center SW', 42.5069371, -96.1794677, ST_GeomFromText('POINT(42.5069371 -96.1794677)', 4326), 42.6411025, -96.1344662, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459395', 'Muddy Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Iowa City West', 41.694813, -91.549632, ST_GeomFromText('POINT(41.694813 -91.549632)', 4326), 41.755702, -91.605215, '1979-04-30', '2023-02-24', NULL, NULL, NULL),
  ('459397', 'Mule Creek', 'Stream', 'Iowa', 'IA', 'Mills', 'Tabor NE', 40.9424985, -95.5669427, ST_GeomFromText('POINT(40.9424985 -95.5669427)', 4326), 40.9980546, -95.668336, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('459399', 'Mullens Creek', 'Stream', 'Iowa', 'IA', 'Howard', 'Cresco NE', 43.3938566, -92.0621085, ST_GeomFromText('POINT(43.3938566 -92.0621085)', 4326), 43.3766667, -92.0877778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459401', 'Municipal Island', 'Island', 'Iowa', 'IA', 'Linn', 'Cedar Rapids South', 41.9747231, -91.6693463, ST_GeomFromText('POINT(41.9747231 -91.6693463)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459402', 'Munns Creek', 'Stream', 'Iowa', 'IA', 'Grundy', 'Lincoln', 42.3510956, -92.6840862, ST_GeomFromText('POINT(42.3510956 -92.6840862)', 4326), 42.311651, -92.7874224, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459404', 'Murphy Branch', 'Stream', 'Iowa', 'IA', 'Dallas', 'Granger', 41.8466529, -93.8382818, ST_GeomFromText('POINT(41.8466529 -93.8382818)', 4326), 41.9038744, -93.8335593, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459413', 'Murray Creek', 'Stream', 'Iowa', 'IA', 'Clay', 'Sutherland East', 42.952755, -95.4236142, ST_GeomFromText('POINT(42.952755 -95.4236142)', 4326), 42.995, -95.4913889, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459414', 'Murray Island', 'Island', 'Iowa', 'IA', 'Allamakee', 'Harpers Ferry', 43.1816473, -91.1570741, ST_GeomFromText('POINT(43.1816473 -91.1570741)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459415', 'Muscatine Island', 'Island', 'Iowa', 'IA', 'Muscatine', 'Muscatine', 41.3897505, -91.0965392, ST_GeomFromText('POINT(41.3897505 -91.0965392)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459416', 'Muscatine Slough', 'Stream', 'Iowa', 'IA', 'Louisa', 'Toolesboro', 41.2519742, -91.1159815, ST_GeomFromText('POINT(41.2519742 -91.1159815)', 4326), 41.4108615, -91.0795946, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459418', 'Muskrat Hollow', 'Valley', 'Iowa', 'IA', 'Jackson', 'Green Island', 42.1424248, -90.2807953, ST_GeomFromText('POINT(42.1424248 -90.2807953)', 4326), 42.1293007, -90.2683925, '1979-04-30', '2015-09-04', NULL, NULL, NULL),
  ('459419', 'Muskrat Lake', 'Lake', 'Iowa', 'IA', 'Louisa', 'Wapello', 41.206956, -91.2005868, ST_GeomFromText('POINT(41.206956 -91.2005868)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('459428', 'Mystic Reservoir', 'Reservoir', 'Iowa', 'IA', 'Appanoose', 'Mystic', 40.7909533, -92.9468452, ST_GeomFromText('POINT(40.7909533 -92.9468452)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('459429', 'Nabotna Pond', 'Reservoir', 'Iowa', 'IA', 'Audubon', 'Gray', 41.7589938, -94.8820048, ST_GeomFromText('POINT(41.7589938 -94.8820048)', 4326), NULL, NULL, '1979-04-30', '2018-06-25', NULL, NULL, NULL),
  ('459431', 'Nagle Creek', 'Stream', 'Iowa', 'IA', 'Fayette', 'Volga', 42.8022059, -91.5326443, ST_GeomFromText('POINT(42.8022059 -91.5326443)', 4326), 42.7697222, -91.6191667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459432', 'Nancy Elaine Lake', 'Lake', 'Iowa', 'IA', 'Clinton', 'Camanche', 41.7843528, -90.2863241, ST_GeomFromText('POINT(41.7843528 -90.2863241)', 4326), NULL, NULL, '1979-04-30', '2023-05-23', NULL, NULL, NULL),
  ('459435', 'Nash Creek', 'Stream', 'Iowa', 'IA', 'Buchanan', 'Quasqueton', 42.405543, -91.7701701, ST_GeomFromText('POINT(42.405543 -91.7701701)', 4326), 42.4477642, -91.7104432, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459445', 'Neele Branch', 'Stream', 'Iowa', 'IA', 'Page', 'Hawleyville', 40.7747121, -94.995257, ST_GeomFromText('POINT(40.7747121 -94.995257)', 4326), 40.8847128, -95.0530387, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459446', 'Neeley Creek', 'Stream', 'Iowa', 'IA', 'Fremont', 'Sidney', 40.6950009, -95.7091638, ST_GeomFromText('POINT(40.6950009 -95.7091638)', 4326), 40.715, -95.6680556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459447', 'Berlin Creek', 'Stream', 'Iowa', 'IA', 'Clinton', 'Delmar South', 41.8861373, -90.5929149, ST_GeomFromText('POINT(41.8861373 -90.5929149)', 4326), 41.930282, -90.667575, '1979-04-30', '2021-07-08', 'Official', 'Board Decision', '2021-07-08'),
  ('459450', 'Nelson Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Center Point', 42.1269394, -91.7654565, ST_GeomFromText('POINT(42.1269394 -91.7654565)', 4326), 42.1855488, -91.7379542, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459451', 'Nelson Creek', 'Stream', 'Iowa', 'IA', 'O''Brien', 'Paullina', 42.9252589, -95.6372312, ST_GeomFromText('POINT(42.9252589 -95.6372312)', 4326), 43.0191436, -95.5447293, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('459452', 'Nelson Creek', 'Stream', 'Iowa', 'IA', 'Lyon', 'Canton', 43.2585936, -96.5533734, ST_GeomFromText('POINT(43.2585936 -96.5533734)', 4326), 43.2597044, -96.4850374, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459497', 'New York Branch', 'Stream', 'Iowa', 'IA', 'Hamilton', 'Buckeye West', 42.3908152, -93.4338193, ST_GeomFromText('POINT(42.3908152 -93.4338193)', 4326), 42.4110914, -93.5474334, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459519', 'Nicholson Creek', 'Stream', 'Iowa', 'IA', 'Cedar', 'Cedar Bluff', 41.7541861, -91.2726626, ST_GeomFromText('POINT(41.7541861 -91.2726626)', 4326), 41.753906, -91.3918334, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459520', 'Nickolson Creek', 'Stream', 'Iowa', 'IA', 'Marshall', 'Le Grand', 42.0547104, -92.8343659, ST_GeomFromText('POINT(42.0547104 -92.8343659)', 4326), 42.1088889, -92.8194444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459522', 'Ninemile Creek', 'Stream', 'Iowa', 'IA', 'Adair', 'Zion', 41.2472114, -94.2707907, ST_GeomFromText('POINT(41.2472114 -94.2707907)', 4326), 41.2744323, -94.4755212, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459523', 'Ninemile Creek', 'Stream', 'Iowa', 'IA', 'Wayne', 'Humeston', 40.8027823, -93.4004911, ST_GeomFromText('POINT(40.8027823 -93.4004911)', 4326), 40.8580556, -93.4919444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459524', 'Ninemile Creek', 'Stream', 'Iowa', 'IA', 'Adair', 'Fontanelle SW', 41.3249872, -94.6519181, ST_GeomFromText('POINT(41.3249872 -94.6519181)', 4326), 41.4183207, -94.5819163, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459525', 'Ninemile Island', 'Island', 'Iowa', 'IA', 'Dubuque', 'Menominee', 42.4344506, -90.572906, ST_GeomFromText('POINT(42.4344506 -90.572906)', 4326), NULL, NULL, '1979-04-30', '2012-08-28', NULL, NULL, NULL),
  ('459529', 'No Business Creek', 'Stream', 'Iowa', 'IA', 'Page', 'Clarinda South', 40.6638798, -95.0305336, ST_GeomFromText('POINT(40.6638798 -95.0305336)', 4326), 40.6863889, -95.0819444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459530', 'Noah Creek', 'Stream', 'Iowa', 'IA', 'Boone', 'Boone West', 42.0285935, -93.9455077, ST_GeomFromText('POINT(42.0285935 -93.9455077)', 4326), 42.0513889, -93.9958333, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('459535', 'Nobles Lake', 'Lake', 'Iowa', 'IA', 'Harrison', 'Missouri Valley', 41.5071149, -95.9788051, ST_GeomFromText('POINT(41.5071149 -95.9788051)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('459539', 'Nodaway Lake', 'Reservoir', 'Iowa', 'IA', 'Adair', 'Greenfield', 41.2882835, -94.4949382, ST_GeomFromText('POINT(41.2882835 -94.4949382)', 4326), NULL, NULL, '1979-04-30', '2018-07-05', NULL, NULL, NULL),
  ('459541', 'Nodaway River', 'Stream', 'Missouri', 'MO', 'Andrew', 'Amazonia', 39.9019386, -94.9666376, ST_GeomFromText('POINT(39.9019386 -94.9666376)', 4326), 40.6349908, -95.0191439, '1980-10-24', '2008-07-31', NULL, NULL, NULL),
  ('459542', 'Noddleman Island', 'Island', 'Iowa', 'IA', 'Mills', 'Rock Bluff', 40.9374999, -95.8283394, ST_GeomFromText('POINT(40.9374999 -95.8283394)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459545', 'Lake Nokomis', 'Reservoir', 'Iowa', 'IA', 'Humboldt', 'Humboldt', 42.7269158, -94.2291298, ST_GeomFromText('POINT(42.7269158 -94.2291298)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459548', 'Norfolk Creek', 'Stream', 'Iowa', 'IA', 'Allamakee', 'Rossville', 43.161368, -91.4679178, ST_GeomFromText('POINT(43.161368 -91.4679178)', 4326), 43.2527543, -91.4990292, '1979-04-30', '2018-07-31', NULL, NULL, NULL),
  ('459551', 'North Avery Creek', 'Stream', 'Iowa', 'IA', 'Wapello', 'Chillicothe', 41.0872332, -92.5813012, ST_GeomFromText('POINT(41.0872332 -92.5813012)', 4326), 41.0625088, -92.7276939, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459552', 'North Bear Creek', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Dorchester', 43.4483044, -91.6157007, ST_GeomFromText('POINT(43.4483044 -91.6157007)', 4326), 43.5549684, -91.6701466, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459553', 'North Beaver Creek', 'Stream', 'Iowa', 'IA', 'Butler', 'Aplington', 42.5969222, -92.9404756, ST_GeomFromText('POINT(42.5969222 -92.9404756)', 4326), 42.6174768, -93.1271448, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459555', 'North Branch Big Creek', 'Stream', 'Iowa', 'IA', 'Henry', 'New London', 40.9914189, -91.4965477, ST_GeomFromText('POINT(40.9914189 -91.4965477)', 4326), 41.0416965, -91.4298789, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('459559', 'North Branch Elk River', 'Stream', 'Iowa', 'IA', 'Clinton', 'Savanna', 42.01447, -90.2431849, ST_GeomFromText('POINT(42.01447 -90.2431849)', 4326), 42.0875226, -90.3087409, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459560', 'North Branch Lizard Creek', 'Stream', 'Iowa', 'IA', 'Pocahontas', 'Gilmore City', 42.6410859, -94.4755294, ST_GeomFromText('POINT(42.6410859 -94.4755294)', 4326), 42.9330277, -94.9538766, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459561', 'North Branch North River', 'Stream', 'Iowa', 'IA', 'Madison', 'Saint Charles NW', 41.4247124, -93.9149483, ST_GeomFromText('POINT(41.4247124 -93.9149483)', 4326), 41.4588774, -94.2488482, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459562', 'North Branch Old Mans Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Frytown', 41.613348, -91.7012818, ST_GeomFromText('POINT(41.613348 -91.7012818)', 4326), 41.6769545, -91.878787, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459563', 'North Branch Turkey River', 'Stream', 'Iowa', 'IA', 'Howard', 'Cresco SW', 43.3413574, -92.1818351, ST_GeomFromText('POINT(43.3413574 -92.1818351)', 4326), 43.4055229, -92.2571139, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459564', 'North Branch Volga River', 'Stream', 'Iowa', 'IA', 'Fayette', 'Maynard', 42.8313698, -91.9129462, ST_GeomFromText('POINT(42.8313698 -91.9129462)', 4326), 42.9577559, -91.9032216, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459565', 'North Branch West Nodaway River', 'Stream', 'Iowa', 'IA', 'Page', 'Clarinda South', 40.744157, -95.0138679, ST_GeomFromText('POINT(40.744157 -95.0138679)', 4326), 40.7536027, -95.0810919, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459567', 'North Canoe Creek', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Burr Oak', 43.3816374, -91.7743189, ST_GeomFromText('POINT(43.3816374 -91.7743189)', 4326), 43.4763889, -91.8, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459570', 'North Cedar Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Clayton', 42.9674857, -91.2256862, ST_GeomFromText('POINT(42.9674857 -91.2256862)', 4326), 42.9483189, -91.2762434, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459573', 'North Chequest Creek', 'Stream', 'Iowa', 'IA', 'Davis', 'Floris', 40.8364091, -92.3018496, ST_GeomFromText('POINT(40.8364091 -92.3018496)', 4326), 40.8358523, -92.4537971, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('459574', 'North Coal Creek', 'Stream', 'Iowa', 'IA', 'Mahaska', 'Buxton', 41.2352826, -92.7713077, ST_GeomFromText('POINT(41.2352826 -92.7713077)', 4326), 41.1844476, -92.8907548, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459575', 'North Creek', 'Stream', 'Iowa', 'IA', 'Appanoose', 'Mendota', 40.6086264, -92.9332576, ST_GeomFromText('POINT(40.6086264 -92.9332576)', 4326), 40.6364007, -93.0504834, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459578', 'North English River', 'Stream', 'Iowa', 'IA', 'Washington', 'Holbrook', 41.505626, -91.93136, ST_GeomFromText('POINT(41.505626 -91.93136)', 4326), 41.71111, -92.73199, '1979-04-30', '2013-12-11', NULL, NULL, NULL),
  ('459579', 'North Fabius Creek', 'Stream', 'Iowa', 'IA', 'Davis', 'West Grove', 40.6339147, -92.5007427, ST_GeomFromText('POINT(40.6339147 -92.5007427)', 4326), 40.6783533, -92.6793594, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459582', 'North Fork Catfish Creek', 'Stream', 'Iowa', 'IA', 'Dubuque', 'Dubuque South', 42.4830589, -90.704572, ST_GeomFromText('POINT(42.4830589 -90.704572)', 4326), 42.5125019, -90.7534604, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459583', 'North Fork Clanton Creek', 'Stream', 'Iowa', 'IA', 'Madison', 'East Peru', 41.2147142, -93.9427253, ST_GeomFromText('POINT(41.2147142 -93.9427253)', 4326), 41.2177677, -94.1807876, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459584', 'North Fork Floyd River', 'Stream', 'Iowa', 'IA', 'O''Brien', 'Sanborn', 43.2433078, -95.702514, ST_GeomFromText('POINT(43.2433078 -95.702514)', 4326), 43.2744168, -95.6172337, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459585', 'North Fork Little Maquoketa River', 'Stream', 'Iowa', 'IA', 'Dubuque', 'Sherrill', 42.5594442, -90.7731829, ST_GeomFromText('POINT(42.5594442 -90.7731829)', 4326), 42.6091627, -90.977074, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459586', 'North Fork Long Creek', 'Stream', 'Iowa', 'IA', 'Washington', 'Ainsworth', 41.2669665, -91.5148821, ST_GeomFromText('POINT(41.2669665 -91.5148821)', 4326), 41.394738, -91.742947, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459587', 'North Fork Maquoketa River', 'Stream', 'Iowa', 'IA', 'Jackson', 'Maquoketa', 42.0869636, -90.6695799, ST_GeomFromText('POINT(42.0869636 -90.6695799)', 4326), 42.647217, -90.9945735, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('459588', 'North Fork South Beaver Creek', 'Stream', 'Iowa', 'IA', 'Grundy', 'Holland', 42.4955361, -92.8671429, ST_GeomFromText('POINT(42.4955361 -92.8671429)', 4326), 42.5544229, -92.9757543, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459589', 'North Fork Walnut Creek', 'Stream', 'Iowa', 'IA', 'Jones', 'Anamosa', 42.0025083, -91.2646073, ST_GeomFromText('POINT(42.0025083 -91.2646073)', 4326), 42.0577778, -91.355, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459590', 'North Fork Yellow River', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Frankville', 43.1388668, -91.6090362, ST_GeomFromText('POINT(43.1388668 -91.6090362)', 4326), 43.1794196, -91.7587654, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459591', 'North Fox Creek', 'Stream', 'Iowa', 'IA', 'Davis', 'Paris', 40.7580757, -92.5474104, ST_GeomFromText('POINT(40.7580757 -92.5474104)', 4326), 40.8083485, -92.7254714, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459598', 'North Hoosier Creek', 'Stream', 'Iowa', 'IA', 'Clarke', 'Weldon', 40.9597207, -93.6963295, ST_GeomFromText('POINT(40.9597207 -93.6963295)', 4326), 40.9841638, -93.774109, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459609', 'North Onion Creek', 'Stream', 'Iowa', 'IA', 'Boone', 'Ames West', 42.0558176, -93.7385554, ST_GeomFromText('POINT(42.0558176 -93.7385554)', 4326), 42.0866493, -93.8218916, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459610', 'North Otter Creek', 'Stream', 'Iowa', 'IA', 'Clarke', 'Jamison', 41.119163, -93.6418838, ST_GeomFromText('POINT(41.119163 -93.6418838)', 4326), 41.0463853, -93.7579975, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459615', 'North Picayune Creek', 'Stream', 'Iowa', 'IA', 'Harrison', 'Dunlap SW', 41.7722104, -95.6355605, ST_GeomFromText('POINT(41.7722104 -95.6355605)', 4326), 41.8013769, -95.5197245, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459616', 'North Pigeon Creek', 'Stream', 'Iowa', 'IA', 'Pottawattamie', 'Honey Creek', 41.4149948, -95.8191769, ST_GeomFromText('POINT(41.4149948 -95.8191769)', 4326), 41.4927778, -95.7708333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459620', 'North Raccoon River', 'Stream', 'Iowa', 'IA', 'Dallas', 'Waukee', 41.5441556, -93.9663398, ST_GeomFromText('POINT(41.5441556 -93.9663398)', 4326), 42.9016397, -94.9747106, '1979-04-30', '2014-12-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('459621', 'North River', 'Stream', 'Iowa', 'IA', 'Polk', 'Rising Sun', 41.5147123, -93.4466011, ST_GeomFromText('POINT(41.5147123 -93.4466011)', 4326), 41.524154, -94.4808024, '1979-04-30', '2018-07-31', NULL, NULL, NULL),
  ('459632', 'North Skunk River', 'Stream', 'Iowa', 'IA', 'Keokuk', 'Ollie', 41.2486246, -92.0265656, ST_GeomFromText('POINT(41.2486246 -92.0265656)', 4326), 42.0027656, -93.2099263, '1979-04-30', '2013-12-11', NULL, NULL, NULL),
  ('459633', 'North Spring Branch', 'Stream', 'Iowa', 'IA', 'Jackson', 'Leisure Lake', 42.2316795, -90.7643003, ST_GeomFromText('POINT(42.2316795 -90.7643003)', 4326), 42.2594552, -90.809301, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459635', 'North Timber Creek', 'Stream', 'Iowa', 'IA', 'Marshall', 'Gilman', 41.9988778, -92.8518654, ST_GeomFromText('POINT(41.9988778 -92.8518654)', 4326), 42.0188765, -93.1985372, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459636', 'North Turkey Creek', 'Stream', 'Iowa', 'IA', 'Adair', 'Rosserdale', 41.4297101, -94.3949646, ST_GeomFromText('POINT(41.4297101 -94.3949646)', 4326), 41.4647096, -94.5483044, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459637', 'North Twin Lake', 'Reservoir', 'Iowa', 'IA', 'Calhoun', 'Rockwell City', 42.4853648, -94.6299098, ST_GeomFromText('POINT(42.4853648 -94.6299098)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('459639', 'North Walnut Creek', 'Stream', 'Iowa', 'IA', 'Poweshiek', 'Belle Plaine SW', 41.8399965, -92.402964, ST_GeomFromText('POINT(41.8399965 -92.402964)', 4326), 41.8305493, -92.611301, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459640', 'North Walnut Creek', 'Stream', 'Iowa', 'IA', 'Jefferson', 'Salina', 41.1030745, -91.8607265, ST_GeomFromText('POINT(41.1030745 -91.8607265)', 4326), 41.1702934, -91.9973973, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459641', 'North Walnut Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Des Moines SW', 41.5986002, -93.7185546, ST_GeomFromText('POINT(41.5986002 -93.7185546)', 4326), 41.6572105, -93.7982798, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459646', 'North Wildcat Creek', 'Stream', 'Iowa', 'IA', 'Marion', 'Knoxville NW', 41.421937, -93.2160394, ST_GeomFromText('POINT(41.421937 -93.2160394)', 4326), 41.4133256, -93.2743745, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('459649', 'North Wyaconda River', 'Stream', 'Missouri', 'MO', 'Clark', 'Medill', 40.404761, -91.8615588, ST_GeomFromText('POINT(40.404761 -91.8615588)', 4326), 40.7203007, -92.4107409, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459662', 'Norway Creek', 'Stream', 'Iowa', 'IA', 'Monona', 'Moorhead', 41.9424884, -95.8105635, ST_GeomFromText('POINT(41.9424884 -95.8105635)', 4326), 41.9960997, -95.681394, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459677', 'Nugents Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Coggon', 42.2713808, -91.5104409, ST_GeomFromText('POINT(42.2713808 -91.5104409)', 4326), 42.3319349, -91.4932141, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459681', 'Nutt Hollow', 'Valley', 'Iowa', 'IA', 'Monona', 'Castana', 42.1078471, -95.9036759, ST_GeomFromText('POINT(42.1078471 -95.9036759)', 4326), 42.1348353, -95.9231896, '1979-04-30', '2023-09-29', NULL, NULL, NULL),
  ('459683', 'Nutting Creek', 'Stream', 'Iowa', 'IA', 'Fayette', 'Castalia', 43.0222006, -91.7220998, ST_GeomFromText('POINT(43.0222006 -91.7220998)', 4326), 43.1402536, -91.7595995, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459686', 'O''Connell Slough', 'Stream', 'Iowa', 'IA', 'Des Moines', 'Burlington', 40.8233721, -91.0979229, ST_GeomFromText('POINT(40.8233721 -91.0979229)', 4326), 40.8597222, -91.0719444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459688', 'O''connell Island', 'Island', 'Iowa', 'IA', 'Des Moines', 'Burlington', 40.8444829, -91.0890339, ST_GeomFromText('POINT(40.8444829 -91.0890339)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459722', 'Oak Lake', 'Lake', 'Iowa', 'IA', 'Kossuth', 'Algona', 43.1243588, -94.1718707, ST_GeomFromText('POINT(43.1243588 -94.1718707)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('459795', 'Ocheyedan Mound', 'Summit', 'Iowa', 'IA', 'Osceola', 'Ocheyedan', 43.4026753, -95.5212607, ST_GeomFromText('POINT(43.4026753 -95.5212607)', 4326), NULL, NULL, '1979-04-30', '2023-09-29', NULL, NULL, NULL),
  ('459796', 'Ocheyedan River', 'Stream', 'Iowa', 'IA', 'Clay', 'Spencer', 43.1360803, -95.1527728, ST_GeomFromText('POINT(43.1360803 -95.1527728)', 4326), 43.5471869, -95.6380667, '1979-04-30', '2018-03-05', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('459801', 'Odebolt Creek', 'Stream', 'Iowa', 'IA', 'Ida', 'Ida Grove', 42.3502649, -95.4797223, ST_GeomFromText('POINT(42.3502649 -95.4797223)', 4326), 42.3638727, -95.2399946, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459802', 'Odell Branch', 'Stream', 'Iowa', 'IA', 'Delaware', 'Greeley', 42.6174892, -91.3081932, ST_GeomFromText('POINT(42.6174892 -91.3081932)', 4326), 42.6169444, -91.3547222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459803', 'Lake Odesa', 'Lake', 'Iowa', 'IA', 'Louisa', 'Toolesboro', 41.1870727, -91.0910373, ST_GeomFromText('POINT(41.1870727 -91.0910373)', 4326), NULL, NULL, '1979-04-30', '2023-05-23', NULL, NULL, NULL),
  ('459812', 'Oil Spring Creek', 'Stream', 'Iowa', 'IA', 'Allamakee', 'Eastman', 43.2197901, -91.1215964, ST_GeomFromText('POINT(43.2197901 -91.1215964)', 4326), 43.2638675, -91.1770745, '1979-04-30', '2016-10-26', NULL, NULL, NULL),
  ('459814', 'Okamanpeedan Lake', 'Reservoir', 'Iowa', 'IA', 'Emmet', 'Dolliver', 43.4962118, -94.5857968, ST_GeomFromText('POINT(43.4962118 -94.5857968)', 4326), NULL, NULL, '1980-01-11', '2018-06-12', 'Official', 'Board Decision', '1971-01-01'),
  ('459816', 'Okoboji Lake', 'Lake', 'Iowa', 'IA', 'Dickinson', 'Milford', 43.3127425, -95.1769415, ST_GeomFromText('POINT(43.3127425 -95.1769415)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459823', 'Old Channel Little Sioux River', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Oto', 42.335268, -95.8877881, ST_GeomFromText('POINT(42.335268 -95.8877881)', 4326), 42.3597222, -95.8983333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459830', 'Old Mans Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Hills', 41.53992, -91.526091, ST_GeomFromText('POINT(41.53992 -91.526091)', 4326), 41.687784, -92.217736, '2024-01-26', '2024-01-26', NULL, NULL, NULL),
  ('459846', 'Old Womans Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Frytown', 41.6086269, -91.6393359, ST_GeomFromText('POINT(41.6086269 -91.6393359)', 4326), 41.6689021, -91.7282281, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459854', 'Olive Branch', 'Stream', 'Iowa', 'IA', 'Mahaska', 'Rose Hill', 41.2564, -92.4107421, ST_GeomFromText('POINT(41.2564 -92.4107421)', 4326), 41.2291778, -92.4560209, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('459864', 'Omaha Point', 'Cape', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.3960743, -95.1544405, ST_GeomFromText('POINT(43.3960743 -95.1544405)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459869', 'Onion Creek', 'Stream', 'Iowa', 'IA', 'Pottawattamie', 'Underwood', 41.4477715, -95.7411198, ST_GeomFromText('POINT(41.4477715 -95.7411198)', 4326), 41.45, -95.6727778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459870', 'Onion Creek', 'Stream', 'Iowa', 'IA', 'Story', 'Ames West', 42.0499853, -93.6607749, ST_GeomFromText('POINT(42.0499853 -93.6607749)', 4326), 42.0558333, -93.7383333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459874', 'Opossum Creek', 'Stream', 'Iowa', 'IA', 'Benton', 'Center Point SW', 42.1180516, -91.9146243, ST_GeomFromText('POINT(42.1180516 -91.9146243)', 4326), 42.0744413, -92.0504595, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459885', 'Orange City Slough', 'Stream', 'Iowa', 'IA', 'Sioux', 'Maurice', 42.9313768, -96.169466, ST_GeomFromText('POINT(42.9313768 -96.169466)', 4326), 43.0624844, -96.0225187, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459897', 'Orleans Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.4485727, -95.0922168, ST_GeomFromText('POINT(43.4485727 -95.0922168)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459914', 'Osterman Creek', 'Stream', 'Iowa', 'IA', 'Osceola', 'Ocheyedan', 43.411912, -95.5766763, ST_GeomFromText('POINT(43.411912 -95.5766763)', 4326), 43.4841667, -95.5255556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459925', 'Otter Bay', 'Bay', 'Iowa', 'IA', 'Des Moines', 'Burlington', 40.8483718, -91.0662555, ST_GeomFromText('POINT(40.8483718 -91.0662555)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459926', 'Otter Creek', 'Stream', 'Iowa', 'IA', 'Jackson', 'Zwingle', 42.2511237, -90.7398546, ST_GeomFromText('POINT(42.2511237 -90.7398546)', 4326), 42.3433333, -90.6711111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459927', 'Otter Creek', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Cresco SE', 43.2685807, -92.0209982, ST_GeomFromText('POINT(43.2685807 -92.0209982)', 4326), 43.3011111, -92.0766667, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('459928', 'Otter Creek', 'Stream', 'Iowa', 'IA', 'Washington', 'Hills', 41.5047425, -91.5076632, ST_GeomFromText('POINT(41.5047425 -91.5076632)', 4326), 41.4975218, -91.4234941, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459929', 'Otter Creek', 'Stream', 'Iowa', 'IA', 'Warren', 'Milo', 41.3369378, -93.4952137, ST_GeomFromText('POINT(41.3369378 -93.4952137)', 4326), 41.119163, -93.6421615, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459930', 'Otter Creek', 'Stream', 'Iowa', 'IA', 'Louisa', 'Mediapolis', 41.1166993, -91.1307034, ST_GeomFromText('POINT(41.1166993 -91.1307034)', 4326), 41.1264208, -91.1690377, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459931', 'Otter Creek', 'Stream', 'Iowa', 'IA', 'Fayette', 'Gunder', 42.9569256, -91.6237616, ST_GeomFromText('POINT(42.9569256 -91.6237616)', 4326), 42.9530341, -91.8484966, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459932', 'Otter Creek', 'Stream', 'Iowa', 'IA', 'Wright', 'Renwick', 42.7594154, -93.9321694, ST_GeomFromText('POINT(42.7594154 -93.9321694)', 4326), 42.9141336, -93.759939, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459933', 'Otter Creek', 'Stream', 'Iowa', 'IA', 'Franklin', 'Ackley NE', 42.7455289, -93.1018655, ST_GeomFromText('POINT(42.7455289 -93.1018655)', 4326), 42.8838566, -93.439094, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459934', 'Otter Creek', 'Stream', 'Iowa', 'IA', 'Buchanan', 'Independence', 42.4997086, -91.9593402, ST_GeomFromText('POINT(42.4997086 -91.9593402)', 4326), 42.7438717, -91.9762838, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459935', 'Otter Creek', 'Stream', 'Iowa', 'IA', 'Hardin', 'New Providence', 42.3485941, -93.1277024, ST_GeomFromText('POINT(42.3485941 -93.1277024)', 4326), 42.4383145, -93.0943681, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459936', 'Otter Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Shellsburg', 42.0499972, -91.7546252, ST_GeomFromText('POINT(42.0499972 -91.7546252)', 4326), 42.1063847, -91.7154558, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459937', 'Otter Creek', 'Stream', 'Iowa', 'IA', 'Tama', 'Belle Plaine', 41.8974959, -92.3671309, ST_GeomFromText('POINT(41.8974959 -92.3671309)', 4326), 42.0602685, -92.5354702, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('459938', 'Otter Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Des Moines NE', 41.7472101, -93.5771612, ST_GeomFromText('POINT(41.7472101 -93.5771612)', 4326), 41.5402676, -93.5532711, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459943', 'Otter Island', 'Island', 'Iowa', 'IA', 'Des Moines', 'Burlington', 40.858094, -91.0601443, ST_GeomFromText('POINT(40.858094 -91.0601443)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459944', 'Otter Island', 'Island', 'Iowa', 'IA', 'Louisa', 'Toolesboro', 41.1872541, -91.0601463, ST_GeomFromText('POINT(41.1872541 -91.0601463)', 4326), NULL, NULL, '1979-04-30', '2014-05-14', NULL, NULL, NULL),
  ('459945', 'Otter Island', 'Island', 'Iowa', 'IA', 'Louisa', 'Toolesboro', 41.1961427, -91.0690355, ST_GeomFromText('POINT(41.1961427 -91.0690355)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459946', 'Otter Slough', 'Stream', 'Iowa', 'IA', 'Des Moines', 'Burlington', 40.8414275, -91.0729223, ST_GeomFromText('POINT(40.8414275 -91.0729223)', 4326), 40.8747222, -91.0502778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459969', 'Outlet Creek', 'Stream', 'Iowa', 'IA', 'Buena Vista', 'Newell West', 42.5966459, -95.050824, ST_GeomFromText('POINT(42.5966459 -95.050824)', 4326), 42.6133136, -95.1819391, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459982', 'Ozark Springs', 'Spring', 'Iowa', 'IA', 'Jackson', 'Leisure Lake', 42.215011, -90.8690265, ST_GeomFromText('POINT(42.215011 -90.8690265)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459984', 'Packard Creek', 'Stream', 'Iowa', 'IA', 'Appanoose', 'Coatsville', 40.6027991, -92.7201946, ST_GeomFromText('POINT(40.6027991 -92.7201946)', 4326), 40.6319619, -92.8321426, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459985', 'Packinghouse Creek', 'Stream', 'Iowa', 'IA', 'Monroe', 'Avery', 41.0211211, -92.6982484, ST_GeomFromText('POINT(41.0211211 -92.6982484)', 4326), 40.9955651, -92.7551942, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459989', 'Paint Creek', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Dorchester', 43.403306, -91.5665321, ST_GeomFromText('POINT(43.403306 -91.5665321)', 4326), 43.4177485, -91.709038, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('459990', 'Paint Creek', 'Stream', 'Iowa', 'IA', 'Allamakee', 'Harpers Ferry', 43.1316486, -91.1806856, ST_GeomFromText('POINT(43.1316486 -91.1806856)', 4326), 43.2746982, -91.5026404, '1979-04-30', '2014-12-12', NULL, NULL, NULL),
  ('459991', 'Painter Creek', 'Stream', 'Iowa', 'IA', 'Lee', 'Nauvoo', 40.6055958, -91.4379321, ST_GeomFromText('POINT(40.6055958 -91.4379321)', 4326), 40.6458707, -91.5615471, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459992', 'Painter Creek', 'Stream', 'Iowa', 'IA', 'Mahaska', 'Oskaloosa', 41.3566708, -92.663248, ST_GeomFromText('POINT(41.3566708 -92.663248)', 4326), 41.32, -92.6844444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459993', 'Painter Creek', 'Stream', 'Iowa', 'IA', 'Warren', 'Martensdale', 41.2924933, -93.6768852, ST_GeomFromText('POINT(41.2924933 -93.6768852)', 4326), 41.2844368, -93.8132777, '1979-04-30', NULL, NULL, NULL, NULL),
  ('459995', 'Palestine Creek', 'Stream', 'Iowa', 'IA', 'Wapello', 'Chillicothe', 41.1144551, -92.5782458, ST_GeomFromText('POINT(41.1144551 -92.5782458)', 4326), 41.1127873, -92.6449143, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460000', 'Palmer Creek', 'Stream', 'Iowa', 'IA', 'Butler', 'Allison', 42.8455306, -92.7654713, ST_GeomFromText('POINT(42.8455306 -92.7654713)', 4326), 42.8196963, -92.8807507, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460013', 'Panther Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Littleport', 42.7960978, -91.3248568, ST_GeomFromText('POINT(42.7960978 -91.3248568)', 4326), 42.8094297, -91.4140272, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460014', 'Panther Creek', 'Stream', 'Iowa', 'IA', 'Dallas', 'Adel', 41.553044, -94.0860659, ST_GeomFromText('POINT(41.553044 -94.0860659)', 4326), 41.6549876, -94.1113454, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460016', 'Panther Hollow', 'Valley', 'Iowa', 'IA', 'Clayton', 'Cassville', 42.6779175, -90.9566423, ST_GeomFromText('POINT(42.6779175 -90.9566423)', 4326), 42.6630353, -91.0127444, '1979-04-30', '2024-07-17', NULL, NULL, NULL),
  ('460017', 'Papoose Creek', 'Stream', 'Iowa', 'IA', 'Warren', 'New Virginia', 41.2280503, -93.6260503, ST_GeomFromText('POINT(41.2280503 -93.6260503)', 4326), 41.1897222, -93.6894444, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('460019', 'Paradise Creek', 'Stream', 'Iowa', 'IA', 'Crawford', 'Dow City', 41.9344329, -95.4983346, ST_GeomFromText('POINT(41.9344329 -95.4983346)', 4326), 42.0941549, -95.4416659, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460030', 'Parmentar Creek', 'Stream', 'Iowa', 'IA', 'Butler', 'Dumont North', 42.7844183, -92.937418, ST_GeomFromText('POINT(42.7844183 -92.937418)', 4326), 42.8577778, -92.8872222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460032', 'Parnell Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Smithland', 42.2330459, -95.9175097, ST_GeomFromText('POINT(42.2330459 -95.9175097)', 4326), 42.2594345, -95.8427854, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460042', 'Patterson Creek', 'Stream', 'Iowa', 'IA', 'Allamakee', 'Hanover', 43.3666401, -91.5731992, ST_GeomFromText('POINT(43.3666401 -91.5731992)', 4326), 43.2955556, -91.5002778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460043', 'Patterson Lake', 'Lake', 'Iowa', 'IA', 'Des Moines', 'Dallas City', 40.7314799, -91.1420503, ST_GeomFromText('POINT(40.7314799 -91.1420503)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('460044', 'Paul Creek', 'Stream', 'Iowa', 'IA', 'Louisa', 'Mediapolis', 41.0767001, -91.1379255, ST_GeomFromText('POINT(41.0767001 -91.1379255)', 4326), 41.0244444, -91.1322222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460046', 'Pavlik Lakes', 'Reservoir', 'Iowa', 'IA', 'Plymouth', 'Millnerville', 42.6889005, -96.4397961, ST_GeomFromText('POINT(42.6889005 -96.4397961)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('460052', 'Peas Creek', 'Stream', 'Iowa', 'IA', 'Boone', 'Madrid NW', 41.9930394, -93.8930059, ST_GeomFromText('POINT(41.9930394 -93.8930059)', 4326), 42.047483, -93.8543931, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460053', 'Pechman Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Hills', 41.5027981, -91.5076631, ST_GeomFromText('POINT(41.5027981 -91.5076631)', 4326), 41.5791866, -91.4398857, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460054', 'Peck Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Colesburg', 42.7249906, -91.1390193, ST_GeomFromText('POINT(42.7249906 -91.1390193)', 4326), 42.6552778, -91.1830556, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('460056', 'Pee Dee Creek', 'Stream', 'Iowa', 'IA', 'Davis', 'Paris', 40.8416839, -92.5710223, ST_GeomFromText('POINT(40.8416839 -92.5710223)', 4326), 40.800295, -92.6346353, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460057', 'Pee Dee Creek', 'Stream', 'Iowa', 'IA', 'Cedar', 'Rochester', 41.6511347, -91.1365448, ST_GeomFromText('POINT(41.6511347 -91.1365448)', 4326), 41.6883333, -91.2169444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460058', 'Peel Island', 'Island', 'Iowa', 'IA', 'Lee', 'Dallas City', 40.6803188, -91.1348674, ST_GeomFromText('POINT(40.6803188 -91.1348674)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460068', 'Penitentiary Creek', 'Stream', 'Iowa', 'IA', 'Lee', 'Fort Madison', 40.6303191, -91.2948722, ST_GeomFromText('POINT(40.6303191 -91.2948722)', 4326), 40.6458333, -91.2844444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460072', 'Penn Creek', 'Stream', 'Iowa', 'IA', 'Delaware', 'Dyersville West', 42.4380499, -91.2404193, ST_GeomFromText('POINT(42.4380499 -91.2404193)', 4326), 42.4633239, -91.3532002, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460081', 'Pepper Creek', 'Stream', 'Iowa', 'IA', 'Davis', 'Paris', 40.8458512, -92.5251877, ST_GeomFromText('POINT(40.8458512 -92.5251877)', 4326), 40.8066667, -92.5161111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460084', 'Perkins Marsh', 'Swamp', 'Iowa', 'IA', 'Palo Alto', 'Graettinger West', 43.1902399, -94.7655382, ST_GeomFromText('POINT(43.1902399 -94.7655382)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460090', 'Perry Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Sioux City South', 42.4994387, -96.4089181, ST_GeomFromText('POINT(42.4994387 -96.4089181)', 4326), 42.7811024, -96.34586, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460091', 'Perry Creek', 'Stream', 'Iowa', 'IA', 'Cherokee', 'Cherokee South', 42.6641514, -95.5752843, ST_GeomFromText('POINT(42.6641514 -95.5752843)', 4326), 42.7458333, -95.6230556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460097', 'Peru Bottoms', 'Lake', 'Iowa', 'IA', 'Dubuque', 'Dubuque North', 42.569896, -90.695422, ST_GeomFromText('POINT(42.569896 -90.695422)', 4326), NULL, NULL, '1979-04-30', '2024-12-04', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('460099', 'Peters Creek', 'Stream', 'Iowa', 'IA', 'Floyd', 'Greene', 42.9377504, -92.7554704, ST_GeomFromText('POINT(42.9377504 -92.7554704)', 4326), 43.016638, -92.7365805, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460106', 'Petersons Creek', 'Stream', 'Iowa', 'IA', 'Adams', 'Grant', 41.149155, -94.8805373, ST_GeomFromText('POINT(41.149155 -94.8805373)', 4326), 41.1888766, -94.8252575, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460107', 'Petes Pond', 'Lake', 'Iowa', 'IA', 'Clay', 'Spencer', 43.13732, -95.13178, ST_GeomFromText('POINT(43.13732 -95.13178)', 4326), NULL, NULL, '1979-04-30', '2024-10-01', NULL, NULL, NULL),
  ('460108', 'Pettitts Branch', 'Stream', 'Iowa', 'IA', 'Cass', 'Massena', 41.2938773, -94.8719274, ST_GeomFromText('POINT(41.2938773 -94.8719274)', 4326), 41.2980556, -94.8119444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460111', 'Phelps Creek', 'Stream', 'Iowa', 'IA', 'Grundy', 'Parkersburg', 42.5891465, -92.7613074, ST_GeomFromText('POINT(42.5891465 -92.7613074)', 4326), 42.5061111, -92.7680556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460115', 'Phillips Creek', 'Stream', 'Iowa', 'IA', 'Henry', 'Winfield North', 41.1436377, -91.4526576, ST_GeomFromText('POINT(41.1436377 -91.4526576)', 4326), 41.1064146, -91.5371048, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460117', 'Picayune Chute', 'Stream', 'Iowa', 'IA', 'Clayton', 'Cassville', 42.6861051, -90.955406, ST_GeomFromText('POINT(42.6861051 -90.955406)', 4326), 42.6936111, -90.9747222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460118', 'Picayune Creek', 'Stream', 'Iowa', 'IA', 'Harrison', 'Woodbine', 41.7438773, -95.6919508, ST_GeomFromText('POINT(41.7438773 -95.6919508)', 4326), 41.8033212, -95.4872238, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460119', 'Picayune Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Hills', 41.5572401, -91.5787776, ST_GeomFromText('POINT(41.5572401 -91.5787776)', 4326), 41.5433493, -91.7010025, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460120', 'Pickerel Lake', 'Lake', 'Iowa', 'IA', 'Buena Vista', 'Rush Lake West', 42.9067071, -94.9222498, ST_GeomFromText('POINT(42.9067071 -94.9222498)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('460122', 'Pickerel Run', 'Stream', 'Iowa', 'IA', 'Clay', 'Dickens', 43.1283, -95.0099897, ST_GeomFromText('POINT(43.1283 -95.0099897)', 4326), 43.2780164, -94.8788755, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460126', 'Pierce Pool', 'Lake', 'Iowa', 'IA', 'Kossuth', 'German Valley', 43.3119666, -94.1206712, ST_GeomFromText('POINT(43.3119666 -94.1206712)', 4326), NULL, NULL, '1979-04-30', '2018-09-21', NULL, NULL, NULL),
  ('460130', 'Pierson Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Correctionville', 42.4827665, -95.7927875, ST_GeomFromText('POINT(42.4827665 -95.7927875)', 4326), 42.6610986, -95.7752894, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460131', 'Pig Creek', 'Stream', 'Iowa', 'IA', 'Iowa', 'Williamsburg NW', 41.6275055, -92.1701811, ST_GeomFromText('POINT(41.6275055 -92.1701811)', 4326), 41.6613889, -92.1769444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460132', 'Pigeon Creek', 'Stream', 'Iowa', 'IA', 'Pottawattamie', 'Omaha North', 41.3197193, -95.8872345, ST_GeomFromText('POINT(41.3197193 -95.8872345)', 4326), 41.7716545, -95.4841684, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460133', 'Pigeon Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Silvis', 41.5469778, -90.4431873, ST_GeomFromText('POINT(41.5469778 -90.4431873)', 4326), 41.5883333, -90.4666667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460134', 'Pigeon Creek', 'Stream', 'Iowa', 'IA', 'Appanoose', 'Moulton', 40.6266866, -92.7485287, ST_GeomFromText('POINT(40.6266866 -92.7485287)', 4326), 40.6458503, -92.8376983, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460135', 'Pigpen Slough', 'Stream', 'Iowa', 'IA', 'Allamakee', 'De Soto', 43.493029, -91.2487437, ST_GeomFromText('POINT(43.493029 -91.2487437)', 4326), 43.5052508, -91.2598552, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460136', 'Pike Creek', 'Stream', 'Iowa', 'IA', 'Muscatine', 'Columbus Junction', 41.3530806, -91.3326559, ST_GeomFromText('POINT(41.3530806 -91.3326559)', 4326), 41.4264136, -91.3034897, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460137', 'Pike Run', 'Stream', 'Iowa', 'IA', 'Winnebago', 'Pilot Knob', 43.3668994, -93.6199377, ST_GeomFromText('POINT(43.3668994 -93.6199377)', 4326), 43.3371784, -93.7779998, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('460138', 'Pike Run', 'Stream', 'Iowa', 'IA', 'Muscatine', 'Muscatine NW', 41.4536364, -91.2479333, ST_GeomFromText('POINT(41.4536364 -91.2479333)', 4326), 41.5250251, -91.1909886, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460144', 'Pilot Creek', 'Stream', 'Iowa', 'IA', 'Pocahontas', 'Bradgate', 42.8094164, -94.4452505, ST_GeomFromText('POINT(42.8094164 -94.4452505)', 4326), 43.0258013, -94.7966496, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460150', 'Pilot Knob', 'Summit', 'Iowa', 'IA', 'Hancock', 'Pilot Knob', 43.2525223, -93.5526164, ST_GeomFromText('POINT(43.2525223 -93.5526164)', 4326), NULL, NULL, '1979-04-30', '2023-09-29', NULL, NULL, NULL),
  ('460151', 'Pilot Knob', 'Summit', 'Iowa', 'IA', 'Clayton', 'Volga', 42.7824758, -91.5637507, ST_GeomFromText('POINT(42.7824758 -91.5637507)', 4326), NULL, NULL, '1979-04-30', '2023-09-29', NULL, NULL, NULL),
  ('460153', 'Pilot Knob Lake', 'Lake', 'Iowa', 'IA', 'Hancock', 'Pilot Knob', 43.2515962, -93.5612033, ST_GeomFromText('POINT(43.2515962 -93.5612033)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('460159', 'Pine Creek', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Bluffton', 43.408836, -91.897266, ST_GeomFromText('POINT(43.408836 -91.897266)', 4326), 43.5560768, -91.9954372, '1979-04-30', '2018-03-27', NULL, NULL, NULL),
  ('460160', 'Pine Creek', 'Stream', 'Iowa', 'IA', 'Jackson', 'Leisure Lake', 42.1275144, -90.8520842, ST_GeomFromText('POINT(42.1275144 -90.8520842)', 4326), 42.1544444, -90.8527778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460161', 'Pine Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Volga', 42.807206, -91.520699, ST_GeomFromText('POINT(42.807206 -91.520699)', 4326), 42.8680556, -91.54, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460162', 'Pine Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Garber', 42.6683224, -91.2798573, ST_GeomFromText('POINT(42.6683224 -91.2798573)', 4326), 42.6255466, -91.2165233, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460163', 'Pine Creek', 'Stream', 'Iowa', 'IA', 'Buchanan', 'Quasqueton', 42.4069319, -91.7779481, ST_GeomFromText('POINT(42.4069319 -91.7779481)', 4326), 42.542485, -91.8218348, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('460164', 'Pine Creek', 'Stream', 'Iowa', 'IA', 'Tama', 'Garwin', 42.1130438, -92.6999199, ST_GeomFromText('POINT(42.1130438 -92.6999199)', 4326), 42.1577652, -92.7135319, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460165', 'Pine Creek', 'Stream', 'Iowa', 'IA', 'Muscatine', 'Montpelier', 41.4536413, -90.8629231, ST_GeomFromText('POINT(41.4536413 -90.8629231)', 4326), 41.5608614, -90.9140368, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460172', 'Pine Hollow', 'Valley', 'Iowa', 'IA', 'Clayton', 'Littleport', 42.8022263, -91.3197672, ST_GeomFromText('POINT(42.8022263 -91.3197672)', 4326), 42.7993434, -91.284477, '1979-04-30', '2015-09-04', NULL, NULL, NULL),
  ('460173', 'Pine Lake', 'Reservoir', 'Iowa', 'IA', 'Hardin', 'Steamboat Rock', 42.3815551, -93.0586617, ST_GeomFromText('POINT(42.3815551 -93.0586617)', 4326), NULL, NULL, '1979-04-30', '2013-03-20', NULL, NULL, NULL),
  ('460179', 'Pinoak Lake', 'Lake', 'Iowa', 'IA', 'Jackson', 'Blackhawk', 42.1494649, -90.2215177, ST_GeomFromText('POINT(42.1494649 -90.2215177)', 4326), NULL, NULL, '1979-04-30', '2012-08-28', NULL, NULL, NULL),
  ('460188', 'Pioneer Creek', 'Stream', 'Iowa', 'IA', 'Cedar', 'Stanwood', 41.9622341, -91.1957151, ST_GeomFromText('POINT(41.9622341 -91.1957151)', 4326), 41.927233, -91.2993312, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460193', 'Pitcher Creek', 'Stream', 'Iowa', 'IA', 'Cherokee', 'Aurelia', 42.6319281, -95.4691699, ST_GeomFromText('POINT(42.6319281 -95.4691699)', 4326), 42.6905556, -95.3958333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460196', 'Pitman Creek', 'Stream', 'Iowa', 'IA', 'Lee', 'West Point', 40.6655939, -91.4679327, ST_GeomFromText('POINT(40.6655939 -91.4679327)', 4326), 40.7369444, -91.4416667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460199', 'Plague Mine Creek', 'Stream', 'Iowa', 'IA', 'Tama', 'Belle Plaine', 41.8919407, -92.3504639, ST_GeomFromText('POINT(41.8919407 -92.3504639)', 4326), 41.9861044, -92.4185222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460207', 'Platte Branch', 'Stream', 'Missouri', 'MO', 'Worth', 'Sheridan', 40.5606343, -94.5741749, ST_GeomFromText('POINT(40.5606343 -94.5741749)', 4326), 40.7609758, -94.4918203, '1979-04-30', '2012-11-08', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('460208', 'Platte River', 'Stream', 'Missouri', 'MO', 'Platte', 'Platte City', 39.2641681, -94.8374621, ST_GeomFromText('POINT(39.2641681 -94.8374621)', 4326), 41.1491554, -94.3832939, '1979-04-30', '2018-07-13', NULL, NULL, NULL),
  ('460215', 'Pleasant Creek', 'Stream', 'Iowa', 'IA', 'Mahaska', 'Gibson', 41.4219504, -92.4765758, ST_GeomFromText('POINT(41.4219504 -92.4765758)', 4326), 41.5083372, -92.4646305, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460216', 'Pleasant Creek', 'Stream', 'Iowa', 'IA', 'Jackson', 'Springbrook', 42.2155731, -90.3820734, ST_GeomFromText('POINT(42.2155731 -90.3820734)', 4326), 42.1897403, -90.5012404, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460273', 'Pleasant Lake', 'Lake', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.4048169, -95.0282093, ST_GeomFromText('POINT(43.4048169 -95.0282093)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('460295', 'Pleasant Run', 'Stream', 'Iowa', 'IA', 'Linn', 'Bertram', 41.9313933, -91.5565649, ST_GeomFromText('POINT(41.9313933 -91.5565649)', 4326), 41.9133378, -91.6368439, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460296', 'Pleasant Creek', 'Stream', 'Iowa', 'IA', 'Audubon', 'Exira East', 41.5163766, -94.8424825, ST_GeomFromText('POINT(41.5163766 -94.8424825)', 4326), 41.5402778, -94.7611111, '2000-01-01', NULL, 'Official', 'Board Decision', '1983-01-01'),
  ('460299', 'Pleasant Valley', 'Valley', 'Iowa', 'IA', 'Ida', 'Battle Creek', 42.3169771, -95.5698922, ST_GeomFromText('POINT(42.3169771 -95.5698922)', 4326), 42.2964091, -95.5481651, '1979-04-30', '2023-09-29', NULL, NULL, NULL),
  ('460322', 'Plessis Creek', 'Stream', 'Iowa', 'IA', 'O''Brien', 'Plessis', 43.1960838, -95.5119525, ST_GeomFromText('POINT(43.1960838 -95.5119525)', 4326), 43.2347222, -95.5897222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460324', 'Plug Run', 'Stream', 'Iowa', 'IA', 'Warren', 'Scotch Ridge', 41.4416579, -93.5371593, ST_GeomFromText('POINT(41.4416579 -93.5371593)', 4326), 41.3797222, -93.5427778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460325', 'Plum Creek', 'Stream', 'Iowa', 'IA', 'Dubuque', 'Cassville', 42.6783277, -90.9215169, ST_GeomFromText('POINT(42.6783277 -90.9215169)', 4326), 42.6308333, -90.9430556, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('460326', 'Plum Creek', 'Stream', 'Iowa', 'IA', 'Fayette', 'Wadena', 42.8383155, -91.6640429, ST_GeomFromText('POINT(42.8383155 -91.6640429)', 4326), 42.8525, -91.6927778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460327', 'Plum Creek', 'Stream', 'Iowa', 'IA', 'Cedar', 'Oxford Junction', 41.9161316, -90.8934799, ST_GeomFromText('POINT(41.9161316 -90.8934799)', 4326), 41.9097406, -91.0151514, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460328', 'Plum Creek', 'Stream', 'Iowa', 'IA', 'Kossuth', 'Woden', 43.1896837, -93.9310613, ST_GeomFromText('POINT(43.1896837 -93.9310613)', 4326), 43.1916271, -93.8613355, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460329', 'Plum Creek', 'Stream', 'Iowa', 'IA', 'Chickasaw', 'New Hampton', 43.0430306, -92.2537863, ST_GeomFromText('POINT(43.0430306 -92.2537863)', 4326), 43.1471823, -93.2524263, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460330', 'Plum Creek', 'Stream', 'Iowa', 'IA', 'Delaware', 'Hopkinton West', 42.3674955, -91.2720908, ST_GeomFromText('POINT(42.3674955 -91.2720908)', 4326), 42.5872108, -91.3518068, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460331', 'Plum Creek', 'Stream', 'Iowa', 'IA', 'Fremont', 'McPaul', 40.7980568, -95.8394478, ST_GeomFromText('POINT(40.7980568 -95.8394478)', 4326), 40.9238883, -95.6700009, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460332', 'Plum Creek', 'Stream', 'Iowa', 'IA', 'Ringgold', 'Diagonal', 40.8302683, -94.332179, ST_GeomFromText('POINT(40.8302683 -94.332179)', 4326), 40.9116569, -94.3141228, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460338', 'Plunger Creek', 'Stream', 'Iowa', 'IA', 'Adair', 'Stuart South', 41.4249886, -94.2541257, ST_GeomFromText('POINT(41.4249886 -94.2541257)', 4326), 41.5169321, -94.3905211, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460340', 'Plymouth Creek', 'Stream', 'Iowa', 'IA', 'Plymouth', 'Union Center NW', 42.7374908, -96.2097458, ST_GeomFromText('POINT(42.7374908 -96.2097458)', 4326), 42.7766566, -96.0233525, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460343', 'Pocahontas Point', 'Cape', 'Iowa', 'IA', 'Dickinson', 'Milford', 43.3546861, -95.1608297, ST_GeomFromText('POINT(43.3546861 -95.1608297)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('460344', 'Point Hollow', 'Valley', 'Iowa', 'IA', 'Dubuque', 'Turkey River', 42.6277212, -91.1157863, ST_GeomFromText('POINT(42.6277212 -91.1157863)', 4326), 42.6054946, -91.1343826, '1979-04-30', '2023-09-30', NULL, NULL, NULL),
  ('460347', 'Poker Rock', 'Pillar', 'Iowa', 'IA', 'Jones', 'Canton', 42.1600122, -90.9001405, ST_GeomFromText('POINT(42.1600122 -90.9001405)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460349', 'Polecat Creek', 'Stream', 'Iowa', 'IA', 'Boone', 'Boone West', 42.024983, -93.9066174, ST_GeomFromText('POINT(42.024983 -93.9066174)', 4326), 42.0661111, -93.9111111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460355', 'Pomme de Terre Prairie', 'Flat', 'Iowa', 'IA', 'Clinton', 'Clinton NW', 41.9661379, -90.186239, ST_GeomFromText('POINT(41.9661379 -90.186239)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460357', 'Pony Creek', 'Stream', 'Iowa', 'IA', 'Mills', 'Rock Bluff', 40.9858329, -95.8163955, ST_GeomFromText('POINT(40.9858329 -95.8163955)', 4326), 41.1983315, -95.7308411, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460360', 'Poor Farm Creek', 'Stream', 'Iowa', 'IA', 'Buena Vista', 'Storm Lake NE', 42.7002561, -95.0772142, ST_GeomFromText('POINT(42.7002561 -95.0772142)', 4326), 42.6572024, -95.2058291, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460365', 'Porter Creek', 'Stream', 'Iowa', 'IA', 'Crawford', 'Boyer', 42.1722082, -95.2363833, ST_GeomFromText('POINT(42.1722082 -95.2363833)', 4326), 42.2916518, -95.2691615, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460372', 'Possum Hollow', 'Valley', 'Iowa', 'IA', 'Lucas', 'Olmitz', 41.0790365, -93.1689922, ST_GeomFromText('POINT(41.0790365 -93.1689922)', 4326), 41.0449313, -93.1486425, '1979-04-30', '2023-10-11', NULL, NULL, NULL),
  ('460374', 'Potato Creek', 'Stream', 'Iowa', 'IA', 'Pottawattamie', 'Underwood', 41.4494381, -95.7483423, ST_GeomFromText('POINT(41.4494381 -95.7483423)', 4326), 41.6188792, -95.6711176, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460375', 'Potatoe Creek', 'Stream', 'Iowa', 'IA', 'Jasper', 'Alloway Creek', 41.8258235, -92.9535293, ST_GeomFromText('POINT(41.8258235 -92.9535293)', 4326), 41.8741667, -92.9830556, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('460376', 'Potters Branch', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Bonaparte', 40.6950322, -91.7815553, ST_GeomFromText('POINT(40.6950322 -91.7815553)', 4326), 40.7169444, -91.7713889, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460378', 'Poverty Hollow', 'Valley', 'Iowa', 'IA', 'Woodbury', 'Smithland', 42.2133847, -95.9059188, ST_GeomFromText('POINT(42.2133847 -95.9059188)', 4326), 42.1858077, -95.8759878, '1979-04-30', '2023-10-11', NULL, NULL, NULL),
  ('460382', 'Poyner Creek', 'Stream', 'Iowa', 'IA', 'Black Hawk', 'Gilbertville', 42.433322, -92.2374051, ST_GeomFromText('POINT(42.433322 -92.2374051)', 4326), 42.544153, -92.1393454, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460391', 'Prairie Creek', 'Stream', 'Iowa', 'IA', 'Henry', 'Lowell', 40.8425334, -91.4959899, ST_GeomFromText('POINT(40.8425334 -91.4959899)', 4326), 40.7675, -91.4591667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460392', 'Prairie Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Lone Tree', 41.4261328, -91.4715498, ST_GeomFromText('POINT(41.4261328 -91.4715498)', 4326), 41.4838889, -91.4194444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460393', 'Prairie Creek', 'Stream', 'Iowa', 'IA', 'Jones', 'Scotch Grove', 42.1472316, -91.0395906, ST_GeomFromText('POINT(42.1472316 -91.0395906)', 4326), 42.1363889, -91.1183333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460394', 'Prairie Creek', 'Stream', 'Iowa', 'IA', 'Calhoun', 'Yetter', 42.2535944, -94.8041504, ST_GeomFromText('POINT(42.2535944 -94.8041504)', 4326), 42.3375, -94.7516667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460395', 'Prairie Creek', 'Stream', 'Iowa', 'IA', 'Webster', 'Moorland', 42.437195, -94.3083001, ST_GeomFromText('POINT(42.437195 -94.3083001)', 4326), 42.4741667, -94.3588889, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460396', 'Prairie Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Cedar Rapids South', 41.9497247, -91.6385115, ST_GeomFromText('POINT(41.9497247 -91.6385115)', 4326), 42.0377721, -92.285186, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460397', 'Prairie Creek', 'Stream', 'Iowa', 'IA', 'Jackson', 'Maquoketa', 42.0816867, -90.6318014, ST_GeomFromText('POINT(42.0816867 -90.6318014)', 4326), 42.019741, -90.8220865, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('460398', 'Prairie Creek', 'Stream', 'Iowa', 'IA', 'Jasper', 'Colfax', 41.6805453, -93.1663133, ST_GeomFromText('POINT(41.6805453 -93.1663133)', 4326), 41.8333221, -93.1357567, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460399', 'Prairie Creek', 'Stream', 'Iowa', 'IA', 'Marion', 'Knoxville NW', 41.4469374, -93.150204, ST_GeomFromText('POINT(41.4469374 -93.150204)', 4326), 41.5969339, -93.2493725, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460400', 'Prairie Creek', 'Stream', 'Iowa', 'IA', 'Humboldt', 'Renwick', 42.8349696, -93.9582831, ST_GeomFromText('POINT(42.8349696 -93.9582831)', 4326), 43.1035753, -93.9724524, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460401', 'Prairie Creek', 'Stream', 'Iowa', 'IA', 'Calhoun', 'Sac City East', 42.4902572, -94.8841521, ST_GeomFromText('POINT(42.4902572 -94.8841521)', 4326), 42.6188675, -95.0161008, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460402', 'Prairie Creek', 'Stream', 'Iowa', 'IA', 'Delaware', 'Masonville', 42.49443, -91.5723759, ST_GeomFromText('POINT(42.49443 -91.5723759)', 4326), 42.5705402, -91.6796041, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460403', 'Prairie Creek', 'Stream', 'Iowa', 'IA', 'Webster', 'Evanston', 42.3888611, -94.0771781, ST_GeomFromText('POINT(42.3888611 -94.0771781)', 4326), 42.4552484, -94.2427419, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460404', 'Prairie Creek', 'Stream', 'Iowa', 'IA', 'Hamilton', 'Stratford', 42.32942, -93.9046706, ST_GeomFromText('POINT(42.32942 -93.9046706)', 4326), 42.4316401, -93.8866133, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460405', 'Prairie Creek', 'Stream', 'Iowa', 'IA', 'Dubuque', 'Bernard', 42.3286198, -90.7826318, ST_GeomFromText('POINT(42.3286198 -90.7826318)', 4326), 42.4019493, -90.8323534, '1979-04-30', NULL, 'Official', 'Board Decision', '1898-01-01'),
  ('460406', 'Prairie Creek', 'Stream', 'Iowa', 'IA', 'Benton', 'Vinton', 42.1813837, -92.005458, ST_GeomFromText('POINT(42.1813837 -92.005458)', 4326), 42.2936023, -91.8887875, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460407', 'Prairie Creek', 'Stream', 'Iowa', 'IA', 'Boone', 'Ames West', 42.1241496, -93.746055, ST_GeomFromText('POINT(42.1241496 -93.746055)', 4326), 42.1330362, -93.8882827, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('460418', 'Prairie Lake', 'Lake', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.3806779, -95.0636147, ST_GeomFromText('POINT(43.3806779 -95.0636147)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('460421', 'Prairie Rose Lake', 'Lake', 'Iowa', 'IA', 'Shelby', 'Prairie Rose Lake', 41.6035403, -95.2178644, ST_GeomFromText('POINT(41.6035403 -95.2178644)', 4326), NULL, NULL, '1979-04-30', '2018-06-27', NULL, NULL, NULL),
  ('460433', 'Pratt Creek', 'Stream', 'Iowa', 'IA', 'Benton', 'Vinton', 42.2074939, -92.0574033, ST_GeomFromText('POINT(42.2074939 -92.0574033)', 4326), 42.1616598, -92.2637966, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460441', 'Prescotts Creek', 'Stream', 'Iowa', 'IA', 'Black Hawk', 'Hudson', 42.4549859, -92.4232435, ST_GeomFromText('POINT(42.4549859 -92.4232435)', 4326), 42.3786111, -92.4066667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460443', 'Preston Creek', 'Stream', 'Iowa', 'IA', 'Boone', 'Granger', 41.8730413, -93.8655049, ST_GeomFromText('POINT(41.8730413 -93.8655049)', 4326), 41.9072067, -93.9616193, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460444', 'Price Branch', 'Stream', 'Iowa', 'IA', 'Clayton', 'Colesburg', 42.7324901, -91.1587416, ST_GeomFromText('POINT(42.7324901 -91.1587416)', 4326), 42.7636002, -91.1917974, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460446', 'Price Creek', 'Stream', 'Iowa', 'IA', 'Marion', 'Harvey', 41.3188894, -92.8818651, ST_GeomFromText('POINT(41.3188894 -92.8818651)', 4326), 41.3383341, -92.846864, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460447', 'Prices Creek', 'Stream', 'Iowa', 'IA', 'Lee', 'Keokuk', 40.4311549, -91.3890412, ST_GeomFromText('POINT(40.4311549 -91.3890412)', 4326), 40.46, -91.4291667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460467', 'Provost Bay', 'Reservoir', 'Iowa', 'IA', 'Sac', 'Lake View', 42.2933167, -95.032768, ST_GeomFromText('POINT(42.2933167 -95.032768)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460473', 'Pumpkin Creek', 'Stream', 'Iowa', 'IA', 'Clinton', 'Maquoketa', 42.0800183, -90.749582, ST_GeomFromText('POINT(42.0800183 -90.749582)', 4326), 42.0805556, -90.7486111, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('460474', 'Pumpkin Run', 'Stream', 'Iowa', 'IA', 'Monona', 'Mapleton', 42.1866563, -95.825285, ST_GeomFromText('POINT(42.1866563 -95.825285)', 4326), 42.1997222, -95.8644444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460475', 'Purcell Creek', 'Stream', 'Iowa', 'IA', 'Kossuth', 'Algona', 43.0358003, -94.20524, ST_GeomFromText('POINT(43.0358003 -94.20524)', 4326), 43.0591327, -94.1057917, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460477', 'Purgatory Creek', 'Stream', 'Iowa', 'IA', 'Carroll', 'Glidden', 42.1030398, -94.6585898, ST_GeomFromText('POINT(42.1030398 -94.6585898)', 4326), 42.4405342, -94.5346974, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460479', 'Quaker Mill Pond', 'Reservoir', 'Iowa', 'IA', 'Delaware', 'Thorpe', 42.5150385, -91.4748129, ST_GeomFromText('POINT(42.5150385 -91.4748129)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('460482', 'Quarter Section Run', 'Stream', 'Iowa', 'IA', 'Bremer', 'Waverly', 42.6794265, -92.4229621, ST_GeomFromText('POINT(42.6794265 -92.4229621)', 4326), 42.8458124, -92.3899035, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460488', 'Quinn Creek', 'Stream', 'Iowa', 'IA', 'Fayette', 'Castalia', 43.0347003, -91.7262665, ST_GeomFromText('POINT(43.0347003 -91.7262665)', 4326), 43.0766667, -91.7055556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460489', 'Rabbit Island', 'Island', 'Iowa', 'IA', 'Lee', 'Nauvoo', 40.6080037, -91.3767425, ST_GeomFromText('POINT(40.6080037 -91.3767425)', 4326), NULL, NULL, '1979-04-30', '2015-05-28', NULL, NULL, NULL),
  ('460490', 'Rabbit Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Garber', 42.6952653, -91.3437479, ST_GeomFromText('POINT(42.6952653 -91.3437479)', 4326), 42.6499869, -91.4012514, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460493', 'Raccoon Creek', 'Stream', 'Iowa', 'IA', 'Jackson', 'Baldwin', 42.1091831, -90.7912493, ST_GeomFromText('POINT(42.1091831 -90.7912493)', 4326), 42.1230556, -90.7766667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460494', 'Raccoon River', 'Stream', 'Iowa', 'IA', 'Polk', 'Des Moines SE', 41.5794338, -93.612162, ST_GeomFromText('POINT(41.5794338 -93.612162)', 4326), 41.5438778, -93.9666176, '1979-04-30', '2018-06-22', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('460500', 'Rag Island', 'Island', 'Iowa', 'IA', 'Des Moines', 'Kingston', 40.8908713, -91.0306992, ST_GeomFromText('POINT(40.8908713 -91.0306992)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460501', 'Ragtown Branch', 'Stream', 'Iowa', 'IA', 'Lucas', 'Russell', 40.9319468, -93.2052074, ST_GeomFromText('POINT(40.9319468 -93.2052074)', 4326), 40.9769444, -93.2294444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460504', 'Railroad Creek', 'Stream', 'Iowa', 'IA', 'Cherokee', 'Cherokee South', 42.7449833, -95.5483405, ST_GeomFromText('POINT(42.7449833 -95.5483405)', 4326), 42.7883169, -95.6200089, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460505', 'Railroad Island', 'Island', 'Iowa', 'IA', 'Jackson', 'Blackhawk', 42.1597423, -90.2387402, ST_GeomFromText('POINT(42.1597423 -90.2387402)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460506', 'Railroad Lake', 'Lake', 'Iowa', 'IA', 'Black Hawk', 'New Hartford', 42.580666, -92.5024055, ST_GeomFromText('POINT(42.580666 -92.5024055)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('460508', 'Rainbow Lake', 'Lake', 'Iowa', 'IA', 'Tama', 'Chelsea', 41.8939461, -92.428116, ST_GeomFromText('POINT(41.8939461 -92.428116)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('460512', 'Ralston Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Iowa City West', 41.6455724, -91.5360013, ST_GeomFromText('POINT(41.6455724 -91.5360013)', 4326), 41.6777953, -91.4601669, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460513', 'Ram Hollow', 'Valley', 'Iowa', 'IA', 'Delaware', 'Colesburg', 42.6276112, -91.1629096, ST_GeomFromText('POINT(42.6276112 -91.1629096)', 4326), 42.6265941, -91.1783483, '1979-04-30', '2023-09-30', NULL, NULL, NULL),
  ('460514', 'Ramp Creek', 'Stream', 'Iowa', 'IA', 'Mills', 'Coburg', 40.9074944, -95.2777675, ST_GeomFromText('POINT(40.9074944 -95.2777675)', 4326), 40.9294374, -95.200266, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460516', 'Ramsey Creek', 'Stream', 'Iowa', 'IA', 'Washington', 'Kalona', 41.4766828, -91.7354469, ST_GeomFromText('POINT(41.4766828 -91.7354469)', 4326), 41.5516819, -91.7368369, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('460521', 'Randleman Lake', 'Lake', 'Iowa', 'IA', 'Polk', 'Rising Sun', 41.5303221, -93.4646579, ST_GeomFromText('POINT(41.5303221 -93.4646579)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('460526', 'Rapid Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Iowa City West', 41.6975157, -91.5387806, ST_GeomFromText('POINT(41.6975157 -91.5387806)', 4326), 41.7775147, -91.4507248, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460527', 'Rapid Creek', 'Stream', 'Iowa', 'IA', 'Cerro Gordo', 'Dougherty', 42.9783034, -93.0082525, ST_GeomFromText('POINT(42.9783034 -93.0082525)', 4326), 43.0083009, -93.1004775, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460529', 'Rat Creek', 'Stream', 'Iowa', 'IA', 'Lyon', 'George East', 43.2630318, -95.9391857, ST_GeomFromText('POINT(43.2630318 -95.9391857)', 4326), 43.3685821, -95.8147394, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460530', 'Rat Run', 'Stream', 'Iowa', 'IA', 'Clinton', 'Baldwin', 42.0377953, -90.8543095, ST_GeomFromText('POINT(42.0377953 -90.8543095)', 4326), 41.9997373, -91.0215396, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460534', 'Rathbun Lake', 'Reservoir', 'Iowa', 'IA', 'Appanoose', 'Plano', 40.8672645, -93.0090986, ST_GeomFromText('POINT(40.8672645 -93.0090986)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', 'Official', 'Board Decision', '1971-01-01'),
  ('460535', 'Rathburn Creek', 'Stream', 'Iowa', 'IA', 'Plymouth', 'Kingsley NW', 42.6755463, -95.9997403, ST_GeomFromText('POINT(42.6755463 -95.9997403)', 4326), 42.7452778, -95.9636111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460536', 'Raven Creek', 'Stream', 'Iowa', 'IA', 'Tama', 'Montour', 41.9741575, -92.6618616, ST_GeomFromText('POINT(41.9741575 -92.6618616)', 4326), 41.8719356, -92.7660278, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460538', 'Ray Lake', 'Lake', 'Iowa', 'IA', 'Des Moines', 'Keithsburg', 41.0034082, -90.9899875, ST_GeomFromText('POINT(41.0034082 -90.9899875)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('460543', 'Reading Creek', 'Stream', 'Iowa', 'IA', 'Greene', 'Churdan', 42.203036, -94.4344156, ST_GeomFromText('POINT(42.203036 -94.4344156)', 4326), 42.2624804, -94.485251, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('460546', 'Reasnor Creek', 'Stream', 'Iowa', 'IA', 'Jasper', 'Monroe', 41.5777703, -93.0393657, ST_GeomFromText('POINT(41.5777703 -93.0393657)', 4326), 41.6272147, -92.9846411, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460551', 'Red Keel Creek', 'Stream', 'Iowa', 'IA', 'Lee', 'Fort Madison', 40.7103173, -91.3101505, ST_GeomFromText('POINT(40.7103173 -91.3101505)', 4326), 40.6977778, -91.3536111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460553', 'Red Nose Point', 'Cape', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.4694056, -95.0833279, ST_GeomFromText('POINT(43.4694056 -95.0833279)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460556', 'Red Oak Creek', 'Stream', 'Iowa', 'IA', 'Montgomery', 'Red Oak North', 41.0055488, -95.2433249, ST_GeomFromText('POINT(41.0055488 -95.2433249)', 4326), 41.0266667, -95.17, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460560', 'Lake Red Rock', 'Reservoir', 'Iowa', 'IA', 'Marion', 'Otley', 41.4009842, -93.0583071, ST_GeomFromText('POINT(41.4009842 -93.0583071)', 4326), NULL, NULL, '1979-04-30', '2018-07-31', NULL, NULL, NULL),
  ('460575', 'Reeds Creek', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Bonaparte', 40.6866995, -91.766277, ST_GeomFromText('POINT(40.6866995 -91.766277)', 4326), 40.7689198, -91.7318313, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460582', 'Relly Point', 'Cape', 'Iowa', 'IA', 'Cerro Gordo', 'Clear Lake West', 43.1352371, -93.4135396, ST_GeomFromText('POINT(43.1352371 -93.4135396)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460596', 'Reynolds Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Danbury', 42.2174895, -95.7430604, ST_GeomFromText('POINT(42.2174895 -95.7430604)', 4326), 42.3583221, -95.7255614, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460597', 'Rhine Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Oxford', 41.7141782, -91.7793411, ST_GeomFromText('POINT(41.7141782 -91.7793411)', 4326), 41.7547318, -91.8346207, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460603', 'Rice Lake', 'Reservoir', 'Iowa', 'IA', 'Worth', 'Bristol', 43.3896126, -93.4974575, ST_GeomFromText('POINT(43.3896126 -93.4974575)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('460604', 'Rice Lake', 'Reservoir', 'Iowa', 'IA', 'Winnebago', 'Lake Mills', 43.3968991, -93.5127113, ST_GeomFromText('POINT(43.3968991 -93.5127113)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460612', 'Richardson Branch', 'Stream', 'Iowa', 'IA', 'Boone', 'Luther', 41.916374, -93.8657827, ST_GeomFromText('POINT(41.916374 -93.8657827)', 4326), 41.9869444, -93.8444444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460614', 'Richardson Creek', 'Stream', 'Iowa', 'IA', 'Harrison', 'Woodbine', 41.6611008, -95.6852844, ST_GeomFromText('POINT(41.6611008 -95.6852844)', 4326), 41.6425, -95.6361111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460616', 'Richey Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Lone Tree', 41.3986344, -91.3951584, ST_GeomFromText('POINT(41.3986344 -91.3951584)', 4326), 41.48, -91.3886111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460620', 'Richland Creek', 'Stream', 'Iowa', 'IA', 'Tama', 'Chelsea', 41.9147168, -92.4321323, ST_GeomFromText('POINT(41.9147168 -92.4321323)', 4326), 41.8947131, -92.7688062, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460621', 'Richland Creek', 'Stream', 'Iowa', 'IA', 'Washington', 'Richland', 41.2261259, -91.9162846, ST_GeomFromText('POINT(41.2261259 -91.9162846)', 4326), 41.13946, -92.1029555, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460624', 'Richmond Spring', 'Spring', 'Iowa', 'IA', 'Delaware', 'Strawberry Point', 42.6383179, -91.5576489, ST_GeomFromText('POINT(42.6383179 -91.5576489)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460634', 'Rieger Creek', 'Stream', 'Iowa', 'IA', 'Delaware', 'Thorpe', 42.5055419, -91.4745914, ST_GeomFromText('POINT(42.5055419 -91.4745914)', 4326), 42.5333185, -91.587098, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460641', 'Rio Grande Creek', 'Stream', 'Iowa', 'IA', 'Lyon', 'George West', 43.3333073, -96.0019653, ST_GeomFromText('POINT(43.3333073 -96.0019653)', 4326), 43.3730278, -95.9833541, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460643', 'Riprap Island', 'Island', 'Iowa', 'IA', 'Jackson', 'Savanna', 42.1236145, -90.1912771, ST_GeomFromText('POINT(42.1236145 -90.1912771)', 4326), NULL, NULL, '1979-04-30', '2014-05-14', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('460692', 'Robbins Lake', 'Lake', 'Iowa', 'IA', 'Linn', 'Cedar Rapids North', 42.0067541, -91.701302, ST_GeomFromText('POINT(42.0067541 -91.701302)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('460697', 'Roberts Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Littleport', 42.83693, -91.3748589, ST_GeomFromText('POINT(42.83693 -91.3748589)', 4326), 43.0827574, -91.5826467, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460709', 'Rock Creek', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Mount Zion', 40.7647503, -91.8971148, ST_GeomFromText('POINT(40.7647503 -91.8971148)', 4326), 40.8191667, -91.8925, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460710', 'Rock Creek', 'Stream', 'Iowa', 'IA', 'Jefferson', 'Lockridge West', 40.9028038, -91.7862785, ST_GeomFromText('POINT(40.9028038 -91.7862785)', 4326), 40.9547222, -91.8375, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460711', 'Rock Creek', 'Stream', 'Iowa', 'IA', 'Clinton', 'Camanche', 41.7705865, -90.2926297, ST_GeomFromText('POINT(41.7705865 -90.2926297)', 4326), 41.8388889, -90.3372222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460712', 'Rock Creek', 'Stream', 'Iowa', 'IA', 'Monona', 'Ute', 42.0433221, -95.7066721, ST_GeomFromText('POINT(42.0433221 -95.7066721)', 4326), 42.0102778, -95.6669444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460713', 'Rock Creek', 'Stream', 'Iowa', 'IA', 'Marshall', 'Le Grand', 42.0455439, -92.8354769, ST_GeomFromText('POINT(42.0455439 -92.8354769)', 4326), 42.1072222, -92.7816667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460714', 'Rock Creek', 'Stream', 'Iowa', 'IA', 'Plymouth', 'Elk Point NE', 42.6552724, -96.5375318, ST_GeomFromText('POINT(42.6552724 -96.5375318)', 4326), 42.72, -96.5408333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460715', 'Rock Creek', 'Stream', 'Iowa', 'IA', 'Cerro Gordo', 'Mason City SE', 43.0363584, -93.0093645, ST_GeomFromText('POINT(43.0363584 -93.0093645)', 4326), 43.0577778, -93.08, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460716', 'Rock Creek', 'Stream', 'Iowa', 'IA', 'Clinton', 'Wheatland', 41.7797481, -90.8029232, ST_GeomFromText('POINT(41.7797481 -90.8029232)', 4326), 41.8352983, -91.0340419, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('460717', 'Rock Creek', 'Stream', 'Iowa', 'IA', 'Clinton', 'De Witt', 41.8461385, -90.5773593, ST_GeomFromText('POINT(41.8461385 -90.5773593)', 4326), 41.8619705, -90.6418056, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460718', 'Rock Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Des Moines NW', 41.6988771, -93.6741091, ST_GeomFromText('POINT(41.6988771 -93.6741091)', 4326), 41.7538767, -93.6524419, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460719', 'Rock Creek', 'Stream', 'Iowa', 'IA', 'Poweshiek', 'Victor', 41.7299999, -92.3482398, ST_GeomFromText('POINT(41.7299999 -92.3482398)', 4326), 41.8061078, -92.4362972, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460720', 'Rock Creek', 'Stream', 'Iowa', 'IA', 'Keokuk', 'Sigourney', 41.3116782, -92.2382375, ST_GeomFromText('POINT(41.3116782 -92.2382375)', 4326), 41.4433406, -92.3374061, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460721', 'Rock Creek', 'Stream', 'Iowa', 'IA', 'Keokuk', 'Ollie', 41.2383468, -92.1040674, ST_GeomFromText('POINT(41.2383468 -92.1040674)', 4326), 41.1639036, -92.1607351, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460722', 'Rock Creek', 'Stream', 'Iowa', 'IA', 'Wapello', 'Ottumwa North', 41.0414025, -92.4607422, ST_GeomFromText('POINT(41.0414025 -92.4607422)', 4326), 41.040013, -92.506021, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460723', 'Rock Creek', 'Stream', 'Iowa', 'IA', 'Jefferson', 'Libertyville', 40.9975185, -92.1093436, ST_GeomFromText('POINT(40.9975185 -92.1093436)', 4326), 40.9758505, -92.2626815, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460724', 'Rock Creek', 'Stream', 'Missouri', 'MO', 'Atchison', 'Langdon', 40.3002779, -95.5669297, ST_GeomFromText('POINT(40.3002779 -95.5669297)', 4326), 40.6677758, -95.3780413, '1980-10-24', NULL, NULL, NULL, NULL),
  ('460725', 'Rock Creek', 'Stream', 'Iowa', 'IA', 'Cherokee', 'Washta', 42.6202642, -95.6750084, ST_GeomFromText('POINT(42.6202642 -95.6750084)', 4326), 42.7877622, -95.6605654, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460726', 'Rock Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Correctionville', 42.4186007, -95.8461215, ST_GeomFromText('POINT(42.4186007 -95.8461215)', 4326), 42.4994344, -95.8875131, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('460727', 'Rock Creek', 'Stream', 'Iowa', 'IA', 'Mitchell', 'Orchard', 43.2119167, -92.8071395, ST_GeomFromText('POINT(43.2119167 -92.8071395)', 4326), 43.3421879, -93.0232556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460728', 'Rock Creek', 'Stream', 'Iowa', 'IA', 'Tama', 'Traer', 42.2411004, -92.4426905, ST_GeomFromText('POINT(42.2411004 -92.4426905)', 4326), 42.3741543, -92.4040771, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460729', 'Rock Creek', 'Stream', 'Iowa', 'IA', 'Benton', 'La Porte City', 42.3111024, -92.1343484, ST_GeomFromText('POINT(42.3111024 -92.1343484)', 4326), 42.1758246, -92.3740774, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460730', 'Rock Creek', 'Stream', 'Iowa', 'IA', 'Jackson', 'Preston', 42.0811333, -90.45652, ST_GeomFromText('POINT(42.0811333 -90.45652)', 4326), 42.0447449, -90.5367998, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460731', 'Rock Creek', 'Stream', 'Iowa', 'IA', 'Story', 'Maxwell', 41.8777657, -93.3974323, ST_GeomFromText('POINT(41.8777657 -93.3974323)', 4326), 41.9452656, -93.3321522, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460732', 'Rock Creek', 'Stream', 'Iowa', 'IA', 'Jasper', 'Oakland Acres', 41.6783269, -92.8476933, ST_GeomFromText('POINT(41.6783269 -92.8476933)', 4326), 41.873601, -92.9218633, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460733', 'Rock Creek', 'Stream', 'Iowa', 'IA', 'Cedar', 'Rochester', 41.6766893, -91.1696019, ST_GeomFromText('POINT(41.6766893 -91.1696019)', 4326), 41.9039028, -91.2190495, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460737', 'Rock Creek Lake', 'Reservoir', 'Iowa', 'IA', 'Jasper', 'Oakland Acres', 41.7420797, -92.8485004, ST_GeomFromText('POINT(41.7420797 -92.8485004)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('460740', 'Rock Falls Creek', 'Stream', 'Iowa', 'IA', 'Cerro Gordo', 'Nora Springs', 43.2152426, -93.0915917, ST_GeomFromText('POINT(43.2152426 -93.0915917)', 4326), 43.3016323, -93.0440905, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460741', 'Rock Hollow', 'Valley', 'Iowa', 'IA', 'Clayton', 'Colesburg', 42.7046444, -91.2343207, ST_GeomFromText('POINT(42.7046444 -91.2343207)', 4326), 42.6891313, -91.2389078, '1979-04-30', '2023-09-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('460744', 'Rock River', 'Stream', 'Iowa', 'IA', 'Sioux', 'Hawarden North', 43.0827639, -96.4544761, ST_GeomFromText('POINT(43.0827639 -96.4544761)', 4326), 44.1369115, -96.1230846, '1979-04-30', '2018-03-27', NULL, NULL, NULL),
  ('460745', 'Rock Run Creek', 'Stream', 'Iowa', 'IA', 'Cedar', 'Rochester', 41.7066884, -91.1923811, ST_GeomFromText('POINT(41.7066884 -91.1923811)', 4326), 41.8719581, -91.284608, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460755', 'Rocky Branch', 'Stream', 'Iowa', 'IA', 'Jefferson', 'Salina', 41.070299, -91.7657238, ST_GeomFromText('POINT(41.070299 -91.7657238)', 4326), 41.0686306, -91.8954493, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460756', 'Rocky Run', 'Stream', 'Iowa', 'IA', 'Crawford', 'Denison', 42.0260986, -95.2758296, ST_GeomFromText('POINT(42.0260986 -95.2758296)', 4326), 42.1030421, -95.2297169, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460762', 'Roetzel Creek', 'Stream', 'Iowa', 'IA', 'O''Brien', 'Sheldon SE', 43.0699816, -95.838348, ST_GeomFromText('POINT(43.0699816 -95.838348)', 4326), 43.0263889, -95.8397222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460764', 'Rogers Creek', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Fort Atkinson', 43.1455292, -91.9271078, ST_GeomFromText('POINT(43.1455292 -91.9271078)', 4326), 43.1397222, -91.9519444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460768', 'Rogg Creek', 'Stream', 'Iowa', 'IA', 'Sioux', 'Rock Valley', 43.2152591, -96.282248, ST_GeomFromText('POINT(43.2152591 -96.282248)', 4326), 43.1935921, -96.1814116, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460784', 'Roscum Pond', 'Lake', 'Iowa', 'IA', 'Des Moines', 'Lomax', 40.7202629, -91.1247026, ST_GeomFromText('POINT(40.7202629 -91.1247026)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('460785', 'Rose Branch', 'Stream', 'Iowa', 'IA', 'Taylor', 'Guss', 40.8730429, -94.8130304, ST_GeomFromText('POINT(40.8730429 -94.8130304)', 4326), 40.9330421, -94.7188609, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460786', 'Rose Creek', 'Stream', 'Iowa', 'IA', 'Montgomery', 'Griswold NE', 41.1522123, -95.0227656, ST_GeomFromText('POINT(41.1522123 -95.0227656)', 4326), 41.2222123, -94.9991551, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('460825', 'Round Lake', 'Lake', 'Iowa', 'IA', 'Des Moines', 'Dallas City', 40.7246716, -91.1314117, ST_GeomFromText('POINT(40.7246716 -91.1314117)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('460826', 'Round Lake', 'Lake', 'Iowa', 'IA', 'Clay', 'Ruthven', 43.1695998, -94.9614047, ST_GeomFromText('POINT(43.1695998 -94.9614047)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('460827', 'Round Lake', 'Reservoir', 'Iowa', 'IA', 'Harrison', 'Mondamin', 41.7333217, -96.0327897, ST_GeomFromText('POINT(41.7333217 -96.0327897)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460835', 'Routherford Branch', 'Stream', 'Iowa', 'IA', 'Delaware', 'Thorpe', 42.5735985, -91.4101427, ST_GeomFromText('POINT(42.5735985 -91.4101427)', 4326), 42.6158333, -91.3830556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460840', 'Royer Creek', 'Stream', 'Iowa', 'IA', 'Dallas', 'Granger', 41.7652649, -93.8566156, ST_GeomFromText('POINT(41.7652649 -93.8566156)', 4326), 41.7227652, -93.927451, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460845', 'Ruddy Pool', 'Lake', 'Iowa', 'IA', 'Kossuth', 'German Valley', 43.3025036, -94.1171601, ST_GeomFromText('POINT(43.3025036 -94.1171601)', 4326), NULL, NULL, '1979-04-30', '2018-09-21', NULL, NULL, NULL),
  ('460850', 'Running Slough', 'Stream', 'Iowa', 'IA', 'Jackson', 'Blackhawk', 42.1372432, -90.2120731, ST_GeomFromText('POINT(42.1372432 -90.2120731)', 4326), 42.1700196, -90.2581849, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460851', 'Running Slough Drain', 'Stream', 'Iowa', 'IA', 'Des Moines', 'Kingston', 40.9069822, -91.0245879, ST_GeomFromText('POINT(40.9069822 -91.0245879)', 4326), 40.9994816, -90.7856948, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460852', 'Rupple Creek', 'Stream', 'Iowa', 'IA', 'Story', 'Maxwell', 41.91471, -93.4154886, ST_GeomFromText('POINT(41.91471 -93.4154886)', 4326), 41.9413767, -93.3671535, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460853', 'Rush Chute', 'Stream', 'Iowa', 'IA', 'Des Moines', 'Burlington', 40.827261, -91.0907005, ST_GeomFromText('POINT(40.827261 -91.0907005)', 4326), 40.8491667, -91.0747222, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('460854', 'Rush Creek', 'Stream', 'Iowa', 'IA', 'Monona', 'Ute', 42.1191557, -95.6963935, ST_GeomFromText('POINT(42.1191557 -95.6963935)', 4326), 42.2066558, -95.6411139, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460855', 'Rush Island', 'Island', 'Iowa', 'IA', 'Des Moines', 'Burlington', 40.8397608, -91.0807003, ST_GeomFromText('POINT(40.8397608 -91.0807003)', 4326), NULL, NULL, '1979-04-30', '2014-05-14', NULL, NULL, NULL),
  ('460856', 'Rush Lake', 'Lake', 'Iowa', 'IA', 'Palo Alto', 'Rush Lake East', 42.9463339, -94.8716549, ST_GeomFromText('POINT(42.9463339 -94.8716549)', 4326), NULL, NULL, '1979-04-30', '2018-06-22', NULL, NULL, NULL),
  ('460857', 'Rush Lake Outlet', 'Stream', 'Iowa', 'IA', 'Osceola', 'Melvin', 43.3724685, -95.5325082, ST_GeomFromText('POINT(43.3724685 -95.5325082)', 4326), 43.4338555, -95.5205629, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460869', 'Rutt Branch', 'Stream', 'Iowa', 'IA', 'Adair', 'Fontanelle SW', 41.2908206, -94.6288611, ST_GeomFromText('POINT(41.2908206 -94.6288611)', 4326), 41.3938763, -94.5658042, '1979-04-30', '2018-07-31', NULL, NULL, NULL),
  ('460871', 'Ryan Creek', 'Stream', 'Iowa', 'IA', 'Jackson', 'Preston', 42.0755779, -90.4684646, ST_GeomFromText('POINT(42.0755779 -90.4684646)', 4326), 42.0691886, -90.5304103, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460872', 'Ryan Island', 'Island', 'Iowa', 'IA', 'Allamakee', 'Harpers Ferry', 43.1933137, -91.1415183, ST_GeomFromText('POINT(43.1933137 -91.1415183)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('460878', 'Sabula Lakes', 'Lake', 'Iowa', 'IA', 'Jackson', 'Savanna', 42.0657007, -90.1806543, ST_GeomFromText('POINT(42.0657007 -90.1806543)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('460879', 'Sabula Slough', 'Stream', 'Iowa', 'IA', 'Jackson', 'Savanna', 42.0783566, -90.1704057, ST_GeomFromText('POINT(42.0783566 -90.1704057)', 4326), 42.0936111, -90.1672222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461104', 'Saint Joseph Creek', 'Stream', 'Iowa', 'IA', 'Mahaska', 'Eddyville', 41.2400053, -92.7440848, ST_GeomFromText('POINT(41.2400053 -92.7440848)', 4326), 41.3372235, -92.8229745, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('461381', 'Salt Creek', 'Stream', 'Iowa', 'IA', 'Tama', 'Hartwick', 41.8686087, -92.2965738, ST_GeomFromText('POINT(41.8686087 -92.2965738)', 4326), 42.1161002, -92.6093617, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461382', 'Salt Creek', 'Stream', 'Iowa', 'IA', 'Davis', 'Agency', 40.8936303, -92.2504594, ST_GeomFromText('POINT(40.8936303 -92.2504594)', 4326), 40.8555752, -92.3137942, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461389', 'Sand Creek', 'Stream', 'Missouri', 'MO', 'Mercer', 'Lineville', 40.56388, -93.60867, ST_GeomFromText('POINT(40.56388 -93.60867)', 4326), 40.5894, -93.52543, '1979-04-30', '2011-11-14', NULL, NULL, NULL),
  ('461390', 'Sand Creek', 'Stream', 'Iowa', 'IA', 'Appanoose', 'Omaha', 40.5919625, -92.8496436, ST_GeomFromText('POINT(40.5919625 -92.8496436)', 4326), 40.6011111, -92.8280556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461391', 'Sand Creek', 'Stream', 'Iowa', 'IA', 'Wapello', 'Ottumwa North', 41.038347, -92.4560197, ST_GeomFromText('POINT(41.038347 -92.4560197)', 4326), 41.0286111, -92.4925, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461392', 'Sand Creek', 'Stream', 'Iowa', 'IA', 'Boone', 'Boone West', 42.0749811, -93.9571744, ST_GeomFromText('POINT(42.0749811 -93.9571744)', 4326), 42.0986111, -93.9780556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461393', 'Sand Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Gunder', 42.942482, -91.5848703, ST_GeomFromText('POINT(42.942482 -91.5848703)', 4326), 42.9994444, -91.6019444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461394', 'Sand Creek', 'Stream', 'Iowa', 'IA', 'Buchanan', 'Troy Mills', 42.3416556, -91.7398934, ST_GeomFromText('POINT(42.3416556 -91.7398934)', 4326), 42.3555449, -91.8465626, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461395', 'Sand Creek', 'Stream', 'Iowa', 'IA', 'Delaware', 'Manchester', 42.4533218, -91.442371, ST_GeomFromText('POINT(42.4533218 -91.442371)', 4326), 42.4463758, -91.5640447, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461396', 'Sand Creek', 'Stream', 'Iowa', 'IA', 'Delaware', 'Hopkinton West', 42.3461075, -91.2620915, ST_GeomFromText('POINT(42.3461075 -91.2620915)', 4326), 42.3719406, -91.2420893, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('461397', 'Sand Creek', 'Stream', 'Iowa', 'IA', 'Decatur', 'Grand River', 40.8399958, -93.9632814, ST_GeomFromText('POINT(40.8399958 -93.9632814)', 4326), 40.9530474, -94.1535628, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461399', 'Sand Hagen Creek', 'Stream', 'Iowa', 'IA', 'Delaware', 'Dundee', 42.5697073, -91.5476498, ST_GeomFromText('POINT(42.5697073 -91.5476498)', 4326), 42.5725, -91.6052778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461400', 'Sand Hill', 'Summit', 'Iowa', 'IA', 'Johnson', 'Tiffin', 41.6885046, -91.6658714, ST_GeomFromText('POINT(41.6885046 -91.6658714)', 4326), NULL, NULL, '1979-04-30', '2023-09-29', NULL, NULL, NULL),
  ('461409', 'Sanders Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Iowa City West', 41.702238, -91.5290583, ST_GeomFromText('POINT(41.702238 -91.5290583)', 4326), 41.7402936, -91.4787804, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461415', 'Sandy Branch', 'Stream', 'Iowa', 'IA', 'Appanoose', 'Plano', 40.8277851, -93.0652041, ST_GeomFromText('POINT(40.8277851 -93.0652041)', 4326), 40.7736111, -93.085, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461416', 'Sandy Creek', 'Stream', 'Iowa', 'IA', 'Fayette', 'Elgin', 42.9991471, -91.6393178, ST_GeomFromText('POINT(42.9991471 -91.6393178)', 4326), 43.0219252, -91.5920925, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461417', 'Sandy Creek', 'Stream', 'Iowa', 'IA', 'Wapello', 'Ottumwa South', 40.9705705, -92.4721309, ST_GeomFromText('POINT(40.9705705 -92.4721309)', 4326), 40.9597368, -92.5190766, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461419', 'Sandy Slough', 'Stream', 'Iowa', 'IA', 'Fremont', 'McPaul', 40.8086121, -95.8319478, ST_GeomFromText('POINT(40.8086121 -95.8319478)', 4326), 40.8441667, -95.8247222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461424', 'Santiago Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Mitchellville', 41.7258216, -93.3724315, ST_GeomFromText('POINT(41.7258216 -93.3724315)', 4326), 41.7402659, -93.4546567, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461438', 'Sawmill Lake', 'Lake', 'Iowa', 'IA', 'Jackson', 'Green Island', 42.1730614, -90.2785676, ST_GeomFromText('POINT(42.1730614 -90.2785676)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('461442', 'Sawyers Rock', 'Pillar', 'Iowa', 'IA', 'Jones', 'Canton', 42.2222321, -90.9056942, ST_GeomFromText('POINT(42.2222321 -90.9056942)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461447', 'Saylings Creek', 'Stream', 'Iowa', 'IA', 'Adams', 'Kent', 40.9497105, -94.4938516, ST_GeomFromText('POINT(40.9497105 -94.4938516)', 4326), 40.9222099, -94.5807995, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461449', 'Saylor Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Des Moines NW', 41.639711, -93.6402188, ST_GeomFromText('POINT(41.639711 -93.6402188)', 4326), 41.7222103, -93.6127181, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461452', 'Saylorville Lake', 'Reservoir', 'Iowa', 'IA', 'Polk', 'Polk City', 41.7552981, -93.7321414, ST_GeomFromText('POINT(41.7552981 -93.7321414)', 4326), NULL, NULL, '1979-04-30', '2018-07-31', 'Official', 'Board Decision', '1971-01-01'),
  ('461454', 'Scarborough Lake', 'Lake', 'Iowa', 'IA', 'Jackson', 'Blackhawk', 42.1572423, -90.2495737, ST_GeomFromText('POINT(42.1572423 -90.2495737)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461458', 'Schaffer Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Amish', 41.5144593, -91.7785039, ST_GeomFromText('POINT(41.5144593 -91.7785039)', 4326), 41.5577778, -91.765, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461461', 'Schechtman Branch', 'Stream', 'Iowa', 'IA', 'Delaware', 'Greeley', 42.6122121, -91.2790255, ST_GeomFromText('POINT(42.6122121 -91.2790255)', 4326), 42.57, -91.3130556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461462', 'Schemmel Island', 'Island', 'Iowa', 'IA', 'Fremont', 'Julian', 40.6211125, -95.7591644, ST_GeomFromText('POINT(40.6211125 -95.7591644)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461463', 'Schlect Hollow', 'Valley', 'Iowa', 'IA', 'Jackson', 'Green Island', 42.1594849, -90.3404175, ST_GeomFromText('POINT(42.1594849 -90.3404175)', 4326), 42.1643994, -90.3732848, '1979-04-30', '2015-09-04', NULL, NULL, NULL),
  ('461468', 'School Creek', 'Stream', 'Iowa', 'IA', 'Emmet', 'Estherville', 43.3977368, -94.8458201, ST_GeomFromText('POINT(43.3977368 -94.8458201)', 4326), 43.3888487, -94.9060997, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('461469', 'School Creek', 'Stream', 'Iowa', 'IA', 'Hardin', 'Owasa', 42.4960917, -93.2224249, ST_GeomFromText('POINT(42.4960917 -93.2224249)', 4326), 42.5447013, -93.1949242, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461470', 'Lake Fisher', 'Reservoir', 'Iowa', 'IA', 'Davis', 'Bloomfield North', 40.75479, -92.44212, ST_GeomFromText('POINT(40.75479 -92.44212)', 4326), NULL, NULL, '1979-04-30', '2024-10-02', NULL, NULL, NULL),
  ('461471', 'Conner Branch', 'Stream', 'Missouri', 'MO', 'Mercer', 'Cainsville', 40.49429, -93.77204, ST_GeomFromText('POINT(40.49429 -93.77204)', 4326), 40.58624, -93.75254, '1979-04-30', '2011-11-29', NULL, NULL, NULL),
  ('461472', 'South Fork Maquoketa River', 'Stream', 'Iowa', 'IA', 'Buchanan', 'Dundee', 42.6083181, -91.561261, ST_GeomFromText('POINT(42.6083181 -91.561261)', 4326), 42.7280387, -91.754329, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461473', 'Baughmans Creek', 'Stream', 'Iowa', 'IA', 'Cass', 'Griswold', 41.2144356, -95.1586043, ST_GeomFromText('POINT(41.2144356 -95.1586043)', 4326), 41.2666572, -95.0649909, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461474', 'East Otter Creek', 'Stream', 'Iowa', 'IA', 'Crawford', 'Kiron', 42.1813759, -95.3419411, ST_GeomFromText('POINT(42.1813759 -95.3419411)', 4326), 42.3060963, -95.2952733, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461475', 'Otter Creek', 'Stream', 'Iowa', 'IA', 'Crawford', 'Denison', 42.0888762, -95.3211078, ST_GeomFromText('POINT(42.0888762 -95.3211078)', 4326), 42.2624863, -95.3377739, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461476', 'North Fork Black Hawk Creek', 'Stream', 'Iowa', 'IA', 'Grundy', 'Zaneta', 42.3763746, -92.5376921, ST_GeomFromText('POINT(42.3763746 -92.5376921)', 4326), 42.5125, -92.7433333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461477', 'Schramling Creek', 'Stream', 'Iowa', 'IA', 'Clinton', 'Savanna', 42.0091926, -90.1962395, ST_GeomFromText('POINT(42.0091926 -90.1962395)', 4326), 42.0686346, -90.2517961, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461478', 'Schricker Slough', 'Stream', 'Iowa', 'IA', 'Clinton', 'Cordova', 41.7336426, -90.3195745, ST_GeomFromText('POINT(41.7336426 -90.3195745)', 4326), 41.7786419, -90.2815183, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('461482', 'Schultz Creek', 'Stream', 'Iowa', 'IA', 'Floyd', 'Nashua', 42.9821971, -92.555185, ST_GeomFromText('POINT(42.9821971 -92.555185)', 4326), 43.0488626, -92.5471283, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461489', 'Scott Island', 'Island', 'Iowa', 'IA', 'Jackson', 'Bellevue', 42.3191794, -90.4265171, ST_GeomFromText('POINT(42.3191794 -90.4265171)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461498', 'Second Creek', 'Stream', 'Iowa', 'IA', 'Boone', 'Boone West', 42.0083165, -93.9232848, ST_GeomFromText('POINT(42.0083165 -93.9232848)', 4326), 42.0138889, -93.9747222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461499', 'Seely Creek', 'Stream', 'Iowa', 'IA', 'Guthrie', 'Guthrie Center West', 41.6908198, -94.5460838, ST_GeomFromText('POINT(41.6908198 -94.5460838)', 4326), 41.6597087, -94.675533, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461500', 'Seights Creek', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Douds', 40.8211342, -92.1048995, ST_GeomFromText('POINT(40.8211342 -92.1048995)', 4326), 40.7980556, -92.0994444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461509', 'Sevenmile Creek', 'Stream', 'Iowa', 'IA', 'Montgomery', 'Morton Mills', 41.0838786, -94.995819, ST_GeomFromText('POINT(41.0838786 -94.995819)', 4326), 41.4219314, -94.7424782, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461510', 'Sevenmile Creek', 'Stream', 'Iowa', 'IA', 'Union', 'Tingley NE', 40.9574933, -94.0288379, ST_GeomFromText('POINT(40.9574933 -94.0288379)', 4326), 41.0594376, -93.9599473, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461511', 'Severs Creek', 'Stream', 'Iowa', 'IA', 'Jasper', 'Colfax', 41.6741565, -93.1579798, ST_GeomFromText('POINT(41.6741565 -93.1579798)', 4326), 41.6591667, -93.2383333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461514', 'Sewer Creek', 'Stream', 'Iowa', 'IA', 'Clay', 'Everly', 43.153305, -95.3511134, ST_GeomFromText('POINT(43.153305 -95.3511134)', 4326), 43.2221938, -95.4722292, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461515', 'Cardinal Creek', 'Stream', 'Iowa', 'IA', 'Jasper', 'Monroe', 41.6147136, -93.0818667, ST_GeomFromText('POINT(41.6147136 -93.0818667)', 4326), 41.694675, -93.044354, '1979-04-30', '2017-07-17', 'Official', 'Board Decision', '2017-07-13');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('461519', 'Seymour City Reservoir', 'Reservoir', 'Iowa', 'IA', 'Wayne', 'Seymour East', 40.6691277, -93.1240237, ST_GeomFromText('POINT(40.6691277 -93.1240237)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('461526', 'Shanghai Creek', 'Stream', 'Iowa', 'IA', 'Adams', 'Prescott', 41.1160989, -94.532466, ST_GeomFromText('POINT(41.1160989 -94.532466)', 4326), 41.2583213, -94.4696873, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461544', 'Shawnee Creek', 'Stream', 'Iowa', 'IA', 'Henry', 'Wayland', 41.1372422, -91.7173893, ST_GeomFromText('POINT(41.1372422 -91.7173893)', 4326), 41.14, -91.6819444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461551', 'Sheepshead Bay', 'Bay', 'Iowa', 'IA', 'Jackson', 'Savanna', 42.103078, -90.1665168, ST_GeomFromText('POINT(42.103078 -90.1665168)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461559', 'Sheldon Creek', 'Stream', 'Iowa', 'IA', 'Franklin', 'Popejoy', 42.5977545, -93.4932628, ST_GeomFromText('POINT(42.5977545 -93.4932628)', 4326), 42.6821956, -93.6357668, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461563', 'Shell Rock River', 'Stream', 'Iowa', 'IA', 'Black Hawk', 'Shell Rock', 42.6341488, -92.5012982, ST_GeomFromText('POINT(42.6341488 -92.5012982)', 4326), 43.6116242, -93.2935403, '1979-04-30', '2018-07-31', 'Official', 'Board Decision', '1931-04-01'),
  ('461575', 'Sherrill Mound', 'Summit', 'Iowa', 'IA', 'Dubuque', 'Sherrill', 42.6050308, -90.7989034, ST_GeomFromText('POINT(42.6050308 -90.7989034)', 4326), NULL, NULL, '1979-04-30', '2023-10-07', NULL, NULL, NULL),
  ('461583', 'Shoal Creek', 'Stream', 'Missouri', 'MO', 'Putnam', 'Livonia', 40.4683586, -92.7049174, ST_GeomFromText('POINT(40.4683586 -92.7049174)', 4326), 40.6755649, -93.1379855, '1980-10-24', NULL, NULL, NULL, NULL),
  ('461584', 'Shoe Craft Hollow', 'Valley', 'Iowa', 'IA', 'Jackson', 'Green Island', 42.1442366, -90.2698078, ST_GeomFromText('POINT(42.1442366 -90.2698078)', 4326), 42.135855, -90.2602386, '1979-04-30', '2015-09-04', NULL, NULL, NULL),
  ('461585', 'Short Creek', 'Stream', 'Iowa', 'IA', 'Warren', 'Hartford', 41.3797149, -93.426323, ST_GeomFromText('POINT(41.3797149 -93.426323)', 4326), 41.3636038, -93.5507708, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('461586', 'Short Creek', 'Stream', 'Iowa', 'IA', 'Decatur', 'Van Wert', 40.8230536, -93.8655014, ST_GeomFromText('POINT(40.8230536 -93.8655014)', 4326), 40.9297163, -93.995504, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461587', 'Short Creek', 'Stream', 'Iowa', 'IA', 'Louisa', 'Columbus Junction', 41.286692, -91.3523774, ST_GeomFromText('POINT(41.286692 -91.3523774)', 4326), 41.3289101, -91.529328, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461588', 'Short Creek', 'Stream', 'Iowa', 'IA', 'Greene', 'Jefferson West', 42.0402613, -94.4741388, ST_GeomFromText('POINT(42.0402613 -94.4741388)', 4326), 42.1238716, -94.5127515, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461589', 'Show Creek', 'Stream', 'Iowa', 'IA', 'Adams', 'Carbon', 41.0460985, -94.8408118, ST_GeomFromText('POINT(41.0460985 -94.8408118)', 4326), 41.1152778, -94.8291667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461597', 'Sibles Creek', 'Stream', 'Iowa', 'IA', 'Jones', 'Stanwood', 41.9966789, -91.1334896, ST_GeomFromText('POINT(41.9966789 -91.1334896)', 4326), 41.9233333, -91.1438889, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461601', 'Sieber Lake', 'Lake', 'Iowa', 'IA', 'Jackson', 'Savanna', 42.1005781, -90.1806837, ST_GeomFromText('POINT(42.1005781 -90.1806837)', 4326), NULL, NULL, '1979-04-30', '2014-05-14', NULL, NULL, NULL),
  ('461604', 'Sifford Creek', 'Stream', 'Iowa', 'IA', 'Audubon', 'Exira West', 41.5544323, -94.9102629, ST_GeomFromText('POINT(41.5544323 -94.9102629)', 4326), 41.6194444, -94.9330556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461610', 'Silver Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Davenport East', 41.5530874, -90.6109714, ST_GeomFromText('POINT(41.5530874 -90.6109714)', 4326), 41.6166667, -90.62, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461611', 'Silver Creek', 'Stream', 'Iowa', 'IA', 'Clinton', 'Clinton NW', 41.9525271, -90.1765164, ST_GeomFromText('POINT(41.9525271 -90.1765164)', 4326), 41.9386111, -90.2308333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461612', 'Silver Creek', 'Stream', 'Iowa', 'IA', 'Jackson', 'Maquoketa', 42.053354, -90.6493025, ST_GeomFromText('POINT(42.053354 -90.6493025)', 4326), 42.0241667, -90.6275, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('461613', 'Silver Creek', 'Stream', 'Iowa', 'IA', 'Delaware', 'Dyersville West', 42.4433276, -91.235141, ST_GeomFromText('POINT(42.4433276 -91.235141)', 4326), 42.4980556, -91.2094444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461614', 'Silver Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Cedar Rapids North', 42.0058319, -91.7493487, ST_GeomFromText('POINT(42.0058319 -91.7493487)', 4326), 41.9780555, -91.8371258, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461615', 'Silver Creek', 'Stream', 'Iowa', 'IA', 'Clinton', 'De Witt', 41.7697519, -90.5479148, ST_GeomFromText('POINT(41.7697519 -90.5479148)', 4326), 41.943913, -90.6365265, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461616', 'Silver Creek', 'Stream', 'Iowa', 'IA', 'Mills', 'Tabor NE', 40.9427763, -95.5669427, ST_GeomFromText('POINT(40.9427763 -95.5669427)', 4326), 41.7430432, -95.3866664, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461617', 'Silver Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Port Byron', 41.6019774, -90.3426285, ST_GeomFromText('POINT(41.6019774 -90.3426285)', 4326), 41.6169771, -90.392075, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461618', 'Silver Creek', 'Stream', 'Iowa', 'IA', 'Palo Alto', 'Emmetsburg', 43.0963542, -94.7202588, ST_GeomFromText('POINT(43.0963542 -94.7202588)', 4326), 43.024691, -94.8722073, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461619', 'Silver Creek', 'Stream', 'Iowa', 'IA', 'Cherokee', 'Cherokee South', 42.6530406, -95.5888956, ST_GeomFromText('POINT(42.6530406 -95.5888956)', 4326), 42.4905419, -95.5341694, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461620', 'Silver Creek', 'Stream', 'Iowa', 'IA', 'Ida', 'Ida Grove NW', 42.4344302, -95.4469445, ST_GeomFromText('POINT(42.4344302 -95.4469445)', 4326), 42.478316, -95.2769407, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461621', 'Silver Creek', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Bluffton', 43.4274673, -91.9982173, ST_GeomFromText('POINT(43.4274673 -91.9982173)', 4326), 43.3910788, -92.1437776, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461622', 'Silver Creek', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Bluffton', 43.4102465, -91.8909904, ST_GeomFromText('POINT(43.4102465 -91.8909904)', 4326), 43.4888565, -91.8557102, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('461623', 'Silver Creek', 'Stream', 'Iowa', 'IA', 'Allamakee', 'Waukon NW', 43.4213625, -91.4373606, ST_GeomFromText('POINT(43.4213625 -91.4373606)', 4326), 43.3008089, -91.4895844, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461624', 'Silver Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Saint Olaf', 42.9602616, -91.4487516, ST_GeomFromText('POINT(42.9602616 -91.4487516)', 4326), 43.0619255, -91.5193102, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461625', 'Silver Creek', 'Stream', 'Iowa', 'IA', 'Buchanan', 'Coggon', 42.3522115, -91.6004409, ST_GeomFromText('POINT(42.3522115 -91.6004409)', 4326), 42.4308205, -91.5843247, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461626', 'Silver Creek', 'Stream', 'Iowa', 'IA', 'Jones', 'Hopkinton East', 42.2763885, -91.2209823, ST_GeomFromText('POINT(42.2763885 -91.2209823)', 4326), 42.2916605, -91.4143239, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461631', 'Silver Lake', 'Lake', 'Iowa', 'IA', 'Palo Alto', 'Silver Lake', 43.0326389, -94.8870473, ST_GeomFromText('POINT(43.0326389 -94.8870473)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('461632', 'Silver Lake', 'Lake', 'Iowa', 'IA', 'Worth', 'Bristol', 43.4819694, -93.4171042, ST_GeomFromText('POINT(43.4819694 -93.4171042)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('461634', 'Silver Lake', 'Reservoir', 'Iowa', 'IA', 'Dickinson', 'Lake Park', 43.4432498, -95.3425211, ST_GeomFromText('POINT(43.4432498 -95.3425211)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('461641', 'Simmons Creek', 'Stream', 'Iowa', 'IA', 'Clinton', 'Preston', 42.0164136, -90.4129094, ST_GeomFromText('POINT(42.0164136 -90.4129094)', 4326), 42.0194693, -90.3454085, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461642', 'Simmons Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Springville', 42.0141681, -91.4787856, ST_GeomFromText('POINT(42.0141681 -91.4787856)', 4326), 42.0408333, -91.4375, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461643', 'Simmons Creek', 'Stream', 'Iowa', 'IA', 'Monona', 'Mapleton', 42.1686005, -95.8069513, ST_GeomFromText('POINT(42.1686005 -95.8069513)', 4326), 42.1766667, -95.8138889, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('461645', 'Simpson Branch', 'Stream', 'Iowa', 'IA', 'Fremont', 'Sidney', 40.6433344, -95.6316598, ST_GeomFromText('POINT(40.6433344 -95.6316598)', 4326), 40.6725, -95.6605556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461646', 'Simpson Creek', 'Stream', 'Iowa', 'IA', 'Fayette', 'Waucoma', 43.0099761, -92.0740607, ST_GeomFromText('POINT(43.0099761 -92.0740607)', 4326), 43.0780298, -92.2004512, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461647', 'Simpson Creek', 'Stream', 'Iowa', 'IA', 'Tama', 'Clutier', 42.0888808, -92.4124115, ST_GeomFromText('POINT(42.0888808 -92.4124115)', 4326), 42.1511023, -92.3996335, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461649', 'Sin Creek', 'Stream', 'Iowa', 'IA', 'Adams', 'Morton Mills', 41.0808229, -94.9941522, ST_GeomFromText('POINT(41.0808229 -94.9941522)', 4326), 41.1086111, -94.8961111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461657', 'Sixmile Creek', 'Stream', 'Iowa', 'IA', 'Harrison', 'Woodbine', 41.6788785, -95.7477856, ST_GeomFromText('POINT(41.6788785 -95.7477856)', 4326), 41.6722114, -95.616394, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461659', 'Skillet Creek', 'Stream', 'Iowa', 'IA', 'Webster', 'Stratford', 42.2560868, -93.9966196, ST_GeomFromText('POINT(42.2560868 -93.9966196)', 4326), 42.288586, -94.1216251, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461660', 'Skinaway Creek', 'Stream', 'Iowa', 'IA', 'Warren', 'Medora', 41.1908287, -93.6091054, ST_GeomFromText('POINT(41.1908287 -93.6091054)', 4326), 41.1480514, -93.6471617, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461661', 'Skinaway Creek', 'Stream', 'Iowa', 'IA', 'Warren', 'Hartford', 41.4386025, -93.4738242, ST_GeomFromText('POINT(41.4386025 -93.4738242)', 4326), 41.3966589, -93.5071584, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461662', 'Skunk Creek', 'Stream', 'Iowa', 'IA', 'Fremont', 'McPaul', 40.8175005, -95.7502788, ST_GeomFromText('POINT(40.8175005 -95.7502788)', 4326), 40.8455559, -95.7450015, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461663', 'Skunk Creek', 'Stream', 'Iowa', 'IA', 'Monona', 'Ute', 42.0924889, -95.7161163, ST_GeomFromText('POINT(42.0924889 -95.7161163)', 4326), 42.167767, -95.7186158, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('461664', 'Skunk River', 'Stream', 'Iowa', 'IA', 'Lee', 'Lomax', 40.6978186, -91.1151447, ST_GeomFromText('POINT(40.6978186 -91.1151447)', 4326), 41.2486246, -92.0262877, '1979-04-30', '2019-12-02', NULL, NULL, NULL),
  ('461665', 'Skunk Slough', 'Stream', 'Iowa', 'IA', 'Des Moines', 'Lomax', 40.7042074, -91.1168115, ST_GeomFromText('POINT(40.7042074 -91.1168115)', 4326), 40.729207, -91.1612575, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461669', 'Slater Creek', 'Stream', 'Iowa', 'IA', 'Jasper', 'Sully', 41.5963847, -92.8051932, ST_GeomFromText('POINT(41.5963847 -92.8051932)', 4326), 41.7019363, -92.9424171, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461671', 'Slaughter Creek', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Bonaparte', 40.6755889, -91.7576656, ST_GeomFromText('POINT(40.6755889 -91.7576656)', 4326), 40.6864223, -91.732109, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461672', 'Sleeping Duck Ponds', 'Lake', 'Iowa', 'IA', 'Mitchell', 'Riceville', 43.34672, -92.5633329, ST_GeomFromText('POINT(43.34672 -92.5633329)', 4326), NULL, NULL, '1979-04-30', '2024-12-04', NULL, NULL, NULL),
  ('461676', 'Slocum Creek', 'Stream', 'Iowa', 'IA', 'Pottawattamie', 'Oakland', 41.2994376, -95.4125008, ST_GeomFromText('POINT(41.2994376 -95.4125008)', 4326), 41.391381, -95.422779, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461677', 'Slough Creek', 'Stream', 'Iowa', 'IA', 'Dallas', 'Perry', 41.8283189, -94.0010648, ST_GeomFromText('POINT(41.8283189 -94.0010648)', 4326), 41.7047096, -93.9621741, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461678', 'Slough Creek', 'Stream', 'Iowa', 'IA', 'Mitchell', 'Orchard', 43.2249728, -92.7865834, ST_GeomFromText('POINT(43.2249728 -92.7865834)', 4326), 43.2169174, -92.7146356, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461681', 'Smiths Bay', 'Bay', 'Iowa', 'IA', 'Dickinson', 'Milford', 43.3705188, -95.1322176, ST_GeomFromText('POINT(43.3705188 -95.1322176)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('461692', 'Smith Creek', 'Stream', 'Iowa', 'IA', 'Jackson', 'Green Island', 42.1661309, -90.2626293, ST_GeomFromText('POINT(42.1661309 -90.2626293)', 4326), 42.1080774, -90.2979074, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('461693', 'Smith Creek', 'Stream', 'Iowa', 'IA', 'Keokuk', 'What Cheer', 41.3872315, -92.287683, ST_GeomFromText('POINT(41.3872315 -92.287683)', 4326), 41.4652778, -92.3216667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461694', 'Smith Creek', 'Stream', 'Iowa', 'IA', 'Buchanan', 'Walker', 42.3727659, -91.7532264, ST_GeomFromText('POINT(42.3727659 -91.7532264)', 4326), 42.4274869, -91.6959986, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461695', 'Smith Creek', 'Stream', 'Iowa', 'IA', 'Washington', 'Wellman', 41.4691817, -91.7887816, ST_GeomFromText('POINT(41.4691817 -91.7887816)', 4326), 41.4430658, -92.0651776, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461696', 'Smith Creek', 'Stream', 'Iowa', 'IA', 'Louisa', 'Oakville', 41.0967002, -91.0918133, ST_GeomFromText('POINT(41.0967002 -91.0918133)', 4326), 41.0475334, -91.2107052, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461698', 'Smith Lake', 'Lake', 'Iowa', 'IA', 'Harrison', 'Little Sioux', 41.7782946, -96.0184185, ST_GeomFromText('POINT(41.7782946 -96.0184185)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('461701', 'Smith Pool', 'Lake', 'Iowa', 'IA', 'Kossuth', 'Bancroft', 43.2527784, -94.1392654, ST_GeomFromText('POINT(43.2527784 -94.1392654)', 4326), NULL, NULL, '1979-04-30', '2018-09-21', NULL, NULL, NULL),
  ('461705', 'Lake Smith', 'Lake', 'Iowa', 'IA', 'Kossuth', 'Algona', 43.1238328, -94.2411588, ST_GeomFromText('POINT(43.1238328 -94.2411588)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('461710', 'Smiths Slough', 'Swamp', 'Iowa', 'IA', 'Clay', 'Ruthven', 43.1863527, -94.933321, ST_GeomFromText('POINT(43.1863527 -94.933321)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461712', 'Smoky Hollow', 'Valley', 'Iowa', 'IA', 'Woodbury', 'Smithland', 42.2284821, -95.9318446, ST_GeomFromText('POINT(42.2284821 -95.9318446)', 4326), 42.256587, -95.9460558, '1979-04-30', '2016-06-23', NULL, NULL, NULL),
  ('461719', 'Snag Creek', 'Stream', 'Iowa', 'IA', 'Black Hawk', 'Cedar Falls', 42.5405397, -92.4471318, ST_GeomFromText('POINT(42.5405397 -92.4471318)', 4326), 42.5563889, -92.4716667, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('461720', 'Snag Slough', 'Stream', 'Iowa', 'IA', 'Jackson', 'Green Island', 42.1708528, -90.2726293, ST_GeomFromText('POINT(42.1708528 -90.2726293)', 4326), 42.1755556, -90.2966667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461721', 'Snake Creek', 'Stream', 'Iowa', 'IA', 'Page', 'Coin', 40.7224937, -95.1852603, ST_GeomFromText('POINT(40.7224937 -95.1852603)', 4326), 40.8099915, -95.0874823, '1979-04-30', NULL, 'Official', 'Board Decision', '1939-01-01'),
  ('461722', 'Snake Creek', 'Stream', 'Iowa', 'IA', 'Greene', 'Dawson', 41.8616515, -94.1924607, ST_GeomFromText('POINT(41.8616515 -94.1924607)', 4326), 41.9669274, -94.2291293, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461724', 'Snider Lake', 'Lake', 'Iowa', 'IA', 'Jackson', 'Green Island', 42.1821921, -90.3022721, ST_GeomFromText('POINT(42.1821921 -90.3022721)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('461725', 'Snipe Creek', 'Stream', 'Iowa', 'IA', 'Jasper', 'Baxter SE', 41.8074896, -93.0454757, ST_GeomFromText('POINT(41.8074896 -93.0454757)', 4326), 41.8949892, -92.9824199, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461726', 'Snort Creek', 'Stream', 'Iowa', 'IA', 'Appanoose', 'Hiattsville', 40.7814027, -92.8201967, ST_GeomFromText('POINT(40.7814027 -92.8201967)', 4326), 40.8227778, -92.8063889, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461728', 'Sny Magill Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Clayton', 42.9360974, -91.1667965, ST_GeomFromText('POINT(42.9360974 -91.1667965)', 4326), 43.0069293, -91.2709652, '1979-04-30', '2014-05-14', 'Official', 'Board Decision', '1963-01-01'),
  ('461729', 'Snyder Branch', 'Stream', 'Iowa', 'IA', 'Appanoose', 'Hiattsville', 40.7969566, -92.8707538, ST_GeomFromText('POINT(40.7969566 -92.8707538)', 4326), 40.8680556, -92.8261111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461731', 'Snyder Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Hills', 41.5797406, -91.5271103, ST_GeomFromText('POINT(41.5797406 -91.5271103)', 4326), 41.6658517, -91.4251655, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461732', 'Snyder Creek', 'Stream', 'Iowa', 'IA', 'Mahaska', 'Rose Hill', 41.2880656, -92.441576, ST_GeomFromText('POINT(41.2880656 -92.441576)', 4326), 41.2677871, -92.5285229, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('461734', 'Soap Creek', 'Stream', 'Iowa', 'IA', 'Wapello', 'Eldon', 40.8991863, -92.2135137, ST_GeomFromText('POINT(40.8991863 -92.2135137)', 4326), 40.942787, -92.8404745, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461735', 'Soap Creek', 'Stream', 'Iowa', 'IA', 'Lee', 'Keokuk', 40.3864331, -91.3932076, ST_GeomFromText('POINT(40.3864331 -91.3932076)', 4326), 40.4313889, -91.4236111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461738', 'Sodus Creek', 'Stream', 'Iowa', 'IA', 'Clinton', 'Cordova', 41.743087, -90.3215192, ST_GeomFromText('POINT(41.743087 -90.3215192)', 4326), 41.7786416, -90.3656873, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461741', 'Soldier Creek', 'Stream', 'Iowa', 'IA', 'Emmet', 'Dolliver', 43.4321798, -94.6252575, ST_GeomFromText('POINT(43.4321798 -94.6252575)', 4326), 43.4791234, -94.6733148, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461742', 'Soldier Creek', 'Stream', 'Iowa', 'IA', 'Buena Vista', 'Sioux Rapids', 42.8824767, -95.1772171, ST_GeomFromText('POINT(42.8824767 -95.1772171)', 4326), 42.8533105, -95.1763839, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461743', 'Soldier Creek', 'Stream', 'Iowa', 'IA', 'Webster', 'Fort Dodge North', 42.5058027, -94.1994063, ST_GeomFromText('POINT(42.5058027 -94.1994063)', 4326), 42.6533037, -94.0557875, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461744', 'Soldier River', 'Stream', 'Iowa', 'IA', 'Harrison', 'Mondamin', 41.7374885, -96.0977914, ST_GeomFromText('POINT(41.7374885 -96.0977914)', 4326), 42.2697083, -95.3297182, '1979-04-30', '2018-07-31', NULL, NULL, NULL),
  ('461747', 'Solferino Creek', 'Stream', 'Iowa', 'IA', 'Lee', 'Nauvoo', 40.5222648, -91.3873751, ST_GeomFromText('POINT(40.5222648 -91.3873751)', 4326), 40.5225, -91.4058333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461757', 'South Amana Pond', 'Lake', 'Iowa', 'IA', 'Iowa', 'Middle Amana', 41.7690249, -91.9834017, ST_GeomFromText('POINT(41.7690249 -91.9834017)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('461759', 'South Avery Creek', 'Stream', 'Iowa', 'IA', 'Wapello', 'Chillicothe', 41.0844566, -92.5232441, ST_GeomFromText('POINT(41.0844566 -92.5232441)', 4326), 40.978065, -92.7851951, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('461760', 'South Bay', 'Bay', 'Iowa', 'IA', 'Cerro Gordo', 'Ventura Heights', 43.1152378, -93.4010393, ST_GeomFromText('POINT(43.1152378 -93.4010393)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461761', 'South Bear Creek', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Dorchester', 43.4485822, -91.6157007, ST_GeomFromText('POINT(43.4485822 -91.6157007)', 4326), 43.4752467, -91.7415387, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461762', 'South Beaver Creek', 'Stream', 'Iowa', 'IA', 'Grundy', 'Parkersburg', 42.5805352, -92.7940856, ST_GeomFromText('POINT(42.5805352 -92.7940856)', 4326), 42.5188684, -93.1082565, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461763', 'South Beaver Creek', 'Stream', 'Iowa', 'IA', 'Guthrie', 'Menlo', 41.5983204, -94.4319122, ST_GeomFromText('POINT(41.5983204 -94.4319122)', 4326), 41.5635982, -94.5219154, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461765', 'South Branch Little Floyd River', 'Stream', 'Iowa', 'IA', 'O''Brien', 'Sheldon', 43.1655331, -95.7547364, ST_GeomFromText('POINT(43.1655331 -95.7547364)', 4326), 43.1730309, -95.6361223, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461766', 'South Branch Lizard Creek', 'Stream', 'Iowa', 'IA', 'Webster', 'Fort Dodge North', 42.5069138, -94.2335747, ST_GeomFromText('POINT(42.5069138 -94.2335747)', 4326), 42.717475, -94.7569271, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461767', 'South Branch Salt Creek', 'Stream', 'Iowa', 'IA', 'Tama', 'Clutier', 42.0544371, -92.3862996, ST_GeomFromText('POINT(42.0544371 -92.3862996)', 4326), 42.1149893, -92.59075, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461768', 'South Branch Turkey River', 'Stream', 'Iowa', 'IA', 'Howard', 'Cresco SW', 43.328302, -92.2265588, ST_GeomFromText('POINT(43.328302 -92.2265588)', 4326), 43.2766363, -92.2604495, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461769', 'South Branch West Nodaway River', 'Stream', 'Iowa', 'IA', 'Page', 'Clarinda South', 40.7047127, -95.0183119, ST_GeomFromText('POINT(40.7047127 -95.0183119)', 4326), 40.7283333, -95.0911111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461770', 'South Cedar Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Colesburg', 42.7408225, -91.2098534, ST_GeomFromText('POINT(42.7408225 -91.2098534)', 4326), 42.8660982, -91.2367978, '1979-04-30', NULL, 'Official', 'Board Decision', '1963-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('461772', 'South Chequest Creek', 'Stream', 'Iowa', 'IA', 'Davis', 'Selma', 40.7916893, -92.1874023, ST_GeomFromText('POINT(40.7916893 -92.1874023)', 4326), 40.7791879, -92.3704622, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461773', 'South Copper Creek', 'Stream', 'Iowa', 'IA', 'Jackson', 'Preston', 42.0569676, -90.4159644, ST_GeomFromText('POINT(42.0569676 -90.4159644)', 4326), 42.0369687, -90.3395749, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461774', 'South Creek', 'Stream', 'Iowa', 'IA', 'Appanoose', 'Mendota', 40.5989045, -92.931591, ST_GeomFromText('POINT(40.5989045 -92.931591)', 4326), 40.5930457, -94.4655156, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461777', 'South English River', 'Stream', 'Iowa', 'IA', 'Washington', 'Holbrook', 41.50642, -91.93158, ST_GeomFromText('POINT(41.50642 -91.93158)', 4326), 41.58184, -92.52044, '1979-04-30', '2013-12-11', NULL, NULL, NULL),
  ('461778', 'South Fork Catfish Creek', 'Stream', 'Iowa', 'IA', 'Dubuque', 'Dubuque South', 42.4683373, -90.6865168, ST_GeomFromText('POINT(42.4683373 -90.6865168)', 4326), 42.4525028, -90.8442968, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461779', 'South Fork Chariton River', 'Stream', 'Iowa', 'IA', 'Appanoose', 'Plano', 40.8636186, -93.0129801, ST_GeomFromText('POINT(40.8636186 -93.0129801)', 4326), 40.6713959, -93.4196596, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461780', 'South Fork Clanton Creek', 'Stream', 'Iowa', 'IA', 'Madison', 'East Peru', 41.214992, -93.943281, ST_GeomFromText('POINT(41.214992 -93.943281)', 4326), 41.1808241, -94.1013406, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461781', 'South Fork Iowa River', 'Stream', 'Iowa', 'IA', 'Hardin', 'Eldora', 42.2860952, -93.0782579, ST_GeomFromText('POINT(42.2860952 -93.0782579)', 4326), 42.7458055, -93.6360438, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461782', 'South Fork Long Creek', 'Stream', 'Iowa', 'IA', 'Washington', 'Ainsworth', 41.2669665, -91.5148821, ST_GeomFromText('POINT(41.2669665 -91.5148821)', 4326), 41.3802933, -91.7612808, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461783', 'South Fork Middle River', 'Stream', 'Iowa', 'IA', 'Guthrie', 'Casey', 41.5110984, -94.5466382, ST_GeomFromText('POINT(41.5110984 -94.5466382)', 4326), 41.5360982, -94.6516424, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('461784', 'South Fork Walker Branch', 'Stream', 'Iowa', 'IA', 'Wayne', 'Plano', 40.8297284, -93.1246503, ST_GeomFromText('POINT(40.8297284 -93.1246503)', 4326), 40.8319493, -93.1893745, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461785', 'South Fork Walnut Creek', 'Stream', 'Iowa', 'IA', 'Jones', 'Anamosa', 42.0025083, -91.2646073, ST_GeomFromText('POINT(42.0025083 -91.2646073)', 4326), 41.9652851, -91.3585012, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461788', 'South Hoosier Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Bertram', 41.8816733, -91.6040645, ST_GeomFromText('POINT(41.8816733 -91.6040645)', 4326), 41.8791721, -91.7079555, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461793', 'South Minerva Creek', 'Stream', 'Iowa', 'IA', 'Marshall', 'State Center NW', 42.1277642, -93.1349251, ST_GeomFromText('POINT(42.1277642 -93.1349251)', 4326), 42.0949867, -93.2890949, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461795', 'South Onion Creek', 'Stream', 'Iowa', 'IA', 'Boone', 'Ames West', 42.0558176, -93.7385554, ST_GeomFromText('POINT(42.0558176 -93.7385554)', 4326), 42.0674832, -93.8102247, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461796', 'South Otter Creek', 'Stream', 'Iowa', 'IA', 'Lucas', 'Medora', 41.1441635, -93.5252143, ST_GeomFromText('POINT(41.1441635 -93.5252143)', 4326), 41.0274972, -93.696607, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461797', 'South Picayune Creek', 'Stream', 'Iowa', 'IA', 'Harrison', 'Dunlap SW', 41.752766, -95.6702836, ST_GeomFromText('POINT(41.752766 -95.6702836)', 4326), 41.7011, -95.6450055, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461799', 'South Raccoon River', 'Stream', 'Iowa', 'IA', 'Dallas', 'Waukee', 41.5438778, -93.9666176, ST_GeomFromText('POINT(41.5438778 -93.9666176)', 4326), 41.8247083, -94.7927604, '1979-04-30', '2013-12-10', NULL, NULL, NULL),
  ('461800', 'South River', 'Stream', 'Iowa', 'IA', 'Polk', 'Pleasantville', 41.4872128, -93.3413204, ST_GeomFromText('POINT(41.4872128 -93.3413204)', 4326), 41.1330473, -94.0324496, '1979-04-30', '2018-07-31', NULL, NULL, NULL),
  ('461807', 'South Silver Creek', 'Stream', 'Iowa', 'IA', 'Ida', 'Ida Grove NW', 42.4441516, -95.3974989, ST_GeomFromText('POINT(42.4441516 -95.3974989)', 4326), 42.4213735, -95.3549977, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('461808', 'South Skunk River', 'Stream', 'Iowa', 'IA', 'Keokuk', 'Ollie', 41.2486246, -92.0262877, ST_GeomFromText('POINT(41.2486246 -92.0262877)', 4326), 42.4880334, -93.5927118, '1979-04-30', '2013-12-10', NULL, NULL, NULL),
  ('461810', 'South Soap Creek', 'Stream', 'Iowa', 'IA', 'Davis', 'Paris', 40.8464055, -92.5963009, ST_GeomFromText('POINT(40.8464055 -92.5963009)', 4326), 40.8833442, -92.8324189, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461811', 'South Spring', 'Spring', 'Iowa', 'IA', 'Clayton', 'Strawberry Point', 42.7080399, -91.5376455, ST_GeomFromText('POINT(42.7080399 -91.5376455)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461812', 'South Spring Branch', 'Stream', 'Iowa', 'IA', 'Jackson', 'Leisure Lake', 42.2316795, -90.764578, ST_GeomFromText('POINT(42.2316795 -90.764578)', 4326), 42.2422222, -90.8086111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461813', 'South West Creek', 'Stream', 'Iowa', 'IA', 'Clarke', 'Osceola', 41.1072175, -93.7693869, ST_GeomFromText('POINT(41.1072175 -93.7693869)', 4326), 41.0488833, -93.8888343, '1979-04-30', '2022-09-08', 'Official', 'Secretarial Order', '2022-09-08'),
  ('461815', 'South Timber Creek', 'Stream', 'Iowa', 'IA', 'Marshall', 'Gilman', 41.9372118, -92.8657529, ST_GeomFromText('POINT(41.9372118 -92.8657529)', 4326), 41.9449886, -93.0107547, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461817', 'South Twin Lake', 'Reservoir', 'Iowa', 'IA', 'Calhoun', 'Rockwell City', 42.4605962, -94.6508578, ST_GeomFromText('POINT(42.4605962 -94.6508578)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('461821', 'South Walnut Creek', 'Stream', 'Iowa', 'IA', 'Jefferson', 'Salina', 41.1030745, -91.8607265, ST_GeomFromText('POINT(41.1030745 -91.8607265)', 4326), 41.1155721, -92.0462871, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461822', 'South White Breast Creek', 'Stream', 'Iowa', 'IA', 'Clarke', 'Le Roy', 40.9758323, -93.6077162, ST_GeomFromText('POINT(40.9758323 -93.6077162)', 4326), 40.9147208, -93.7560535, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461823', 'South Willow Creek', 'Stream', 'Iowa', 'IA', 'Monona', 'Dunlap NW', 41.8813774, -95.7216731, ST_GeomFromText('POINT(41.8813774 -95.7216731)', 4326), 41.9649886, -95.6100036, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('461825', 'South Wyaconda River', 'Stream', 'Missouri', 'MO', 'Clark', 'Medill', 40.404761, -91.8615588, ST_GeomFromText('POINT(40.404761 -91.8615588)', 4326), 40.7172434, -92.5640777, '1980-10-24', NULL, NULL, NULL, NULL),
  ('461836', 'Spahn Hollow', 'Valley', 'Iowa', 'IA', 'Van Buren', 'Douds', 40.8637953, -92.0336117, ST_GeomFromText('POINT(40.8637953 -92.0336117)', 4326), 40.8889782, -92.0761317, '1979-04-30', '2023-10-06', NULL, NULL, NULL),
  ('461840', 'Spearman Branch', 'Stream', 'Iowa', 'IA', 'Henry', 'Mount Pleasant', 40.9178085, -91.5409926, ST_GeomFromText('POINT(40.9178085 -91.5409926)', 4326), 40.9583643, -91.4809911, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461844', 'Spencer Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Silvis', 41.5694776, -90.4184643, ST_GeomFromText('POINT(41.5694776 -90.4184643)', 4326), 41.6503094, -90.5306915, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461849', 'Spires Lake', 'Lake', 'Iowa', 'IA', 'Marion', 'Pleasantville', 41.478409, -93.30433, ST_GeomFromText('POINT(41.478409 -93.30433)', 4326), NULL, NULL, '1979-04-30', '2024-10-02', NULL, NULL, NULL),
  ('461850', 'Spirit Lake', 'Lake', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.4776049, -95.0956467, ST_GeomFromText('POINT(43.4776049 -95.0956467)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('461853', 'Spitznogle Lake', 'Lake', 'Iowa', 'IA', 'Louisa', 'Toolesboro', 41.1299494, -91.1027087, ST_GeomFromText('POINT(41.1299494 -91.1027087)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('461857', 'Sportsman Lake', 'Reservoir', 'Iowa', 'IA', 'Tama', 'Garwin', 42.0116551, -92.6847525, ST_GeomFromText('POINT(42.0116551 -92.6847525)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('461860', 'Spring Branch', 'Stream', 'Iowa', 'IA', 'Delaware', 'Manchester', 42.4430452, -91.4109814, ST_GeomFromText('POINT(42.4430452 -91.4109814)', 4326), 42.5180441, -91.3870877, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461861', 'Spring Branch', 'Stream', 'Iowa', 'IA', 'Keokuk', 'Fremont', 41.1575128, -92.3837964, ST_GeomFromText('POINT(41.1575128 -92.3837964)', 4326), 41.1905556, -92.3802778, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('461862', 'Spring Branch', 'Stream', 'Iowa', 'IA', 'Jackson', 'Leisure Lake', 42.2141804, -90.750967, ST_GeomFromText('POINT(42.2141804 -90.750967)', 4326), 42.2313889, -90.7644444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461864', 'Spring Branch', 'Stream', 'Iowa', 'IA', 'Carroll', 'Dedham', 41.9894304, -94.7744272, ST_GeomFromText('POINT(41.9894304 -94.7744272)', 4326), 42.0085966, -94.9044317, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461865', 'Spring Branch', 'Stream', 'Iowa', 'IA', 'Fremont', 'Riverton', 40.7125004, -95.5763815, ST_GeomFromText('POINT(40.7125004 -95.5763815)', 4326), 40.765833, -95.5116583, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461866', 'Spring Branch', 'Stream', 'Iowa', 'IA', 'Chickasaw', 'Frederika', 42.9963648, -92.3710125, ST_GeomFromText('POINT(42.9963648 -92.3710125)', 4326), 43.0719186, -92.3154543, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461870', 'Spring Creek', 'Stream', 'Iowa', 'IA', 'Fremont', 'Riverton', 40.6875007, -95.5999929, ST_GeomFromText('POINT(40.6875007 -95.5999929)', 4326), 40.7125, -95.5761111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461871', 'Spring Creek', 'Stream', 'Iowa', 'IA', 'Mahaska', 'University Park', 41.3386172, -92.5890795, ST_GeomFromText('POINT(41.3386172 -92.5890795)', 4326), 41.2633333, -92.5497222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461872', 'Spring Creek', 'Stream', 'Iowa', 'IA', 'Howard', 'Clear Lake West', 43.2171789, -93.4238182, ST_GeomFromText('POINT(43.2171789 -93.4238182)', 4326), 43.2191339, -95.2019424, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461873', 'Spring Creek', 'Stream', 'Iowa', 'IA', 'Benton', 'Center Point', 42.1622164, -91.8151782, ST_GeomFromText('POINT(42.1622164 -91.8151782)', 4326), 42.1522171, -91.8757347, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461874', 'Spring Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Mount Vernon', 41.8822318, -91.4287814, ST_GeomFromText('POINT(41.8822318 -91.4287814)', 4326), 41.9383422, -91.3482227, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461875', 'Spring Creek', 'Stream', 'Iowa', 'IA', 'Cass', 'Lewis', 41.2972128, -95.1149925, ST_GeomFromText('POINT(41.2972128 -95.1149925)', 4326), 41.430823, -95.0830467, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('461876', 'Spring Creek', 'Stream', 'Iowa', 'IA', 'Pottawattamie', 'Carson NE', 41.2341596, -95.3347207, ST_GeomFromText('POINT(41.2341596 -95.3347207)', 4326), 41.2849923, -95.3238875, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461877', 'Spring Creek', 'Stream', 'Iowa', 'IA', 'Wapello', 'Ottumwa North', 41.1236245, -92.3815739, ST_GeomFromText('POINT(41.1236245 -92.3815739)', 4326), 41.2019562, -92.4265756, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461878', 'Spring Creek', 'Stream', 'Iowa', 'IA', 'Henry', 'Swedesburg', 41.0272496, -91.5632168, ST_GeomFromText('POINT(41.0272496 -91.5632168)', 4326), 41.0439178, -91.478214, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461879', 'Spring Creek', 'Stream', 'Iowa', 'IA', 'Des Moines', 'Lomax', 40.7344848, -91.1176451, ST_GeomFromText('POINT(40.7344848 -91.1176451)', 4326), 40.8325381, -91.2204265, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461880', 'Spring Creek', 'Stream', 'Iowa', 'IA', 'Appanoose', 'Coatsville', 40.5991882, -92.7188057, ST_GeomFromText('POINT(40.5991882 -92.7188057)', 4326), 40.6011302, -92.8043642, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461881', 'Spring Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Rising Sun', 41.5133234, -93.4366008, ST_GeomFromText('POINT(41.5133234 -93.4366008)', 4326), 41.6302669, -93.4546567, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461882', 'Spring Creek', 'Stream', 'Iowa', 'IA', 'Clay', 'Everly', 43.1508041, -95.2655549, ST_GeomFromText('POINT(43.1508041 -95.2655549)', 4326), 43.0758068, -95.2877769, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461883', 'Spring Creek', 'Stream', 'Iowa', 'IA', 'Sioux', 'Hawarden South', 42.9922103, -96.4291955, ST_GeomFromText('POINT(42.9922103 -96.4291955)', 4326), 42.9930432, -96.3325255, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461884', 'Spring Creek', 'Stream', 'Iowa', 'IA', 'Cerro Gordo', 'Mason City', 43.194405, -93.2052037, ST_GeomFromText('POINT(43.194405 -93.2052037)', 4326), 43.30579, -93.2882608, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461885', 'Spring Creek', 'Stream', 'Iowa', 'IA', 'Mitchell', 'Orchard', 43.218028, -92.802695, ST_GeomFromText('POINT(43.218028 -92.802695)', 4326), 43.3371925, -92.811304, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('461886', 'Spring Creek', 'Stream', 'Iowa', 'IA', 'Black Hawk', 'Brandon', 42.3136024, -92.1049031, ST_GeomFromText('POINT(42.3136024 -92.1049031)', 4326), 42.498598, -92.0693438, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461887', 'Spring Creek', 'Stream', 'Iowa', 'IA', 'Webster', 'Moorland', 42.4766372, -94.266354, ST_GeomFromText('POINT(42.4766372 -94.266354)', 4326), 42.4888629, -94.3846919, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461888', 'Spring Creek', 'Stream', 'Iowa', 'IA', 'Benton', 'Brandon', 42.3069358, -92.1154591, ST_GeomFromText('POINT(42.3069358 -92.1154591)', 4326), 42.2141596, -92.2079621, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461902', 'Spring Lake', 'Lake', 'Iowa', 'IA', 'Clayton', 'Turkey River', 42.6969378, -91.0006839, ST_GeomFromText('POINT(42.6969378 -91.0006839)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461903', 'Spring Lake', 'Lake', 'Iowa', 'IA', 'Muscatine', 'Blanchard Island', 41.3364546, -91.078346, ST_GeomFromText('POINT(41.3364546 -91.078346)', 4326), NULL, NULL, '1979-04-30', '2023-05-23', NULL, NULL, NULL),
  ('461907', 'Spring Pond', 'Lake', 'Iowa', 'IA', 'Jefferson', 'Trenton', 41.062645, -91.7249843, ST_GeomFromText('POINT(41.062645 -91.7249843)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('461911', 'Spring Valley Creek', 'Stream', 'Iowa', 'IA', 'Mills', 'Tabor NE', 40.9058322, -95.5763865, ST_GeomFromText('POINT(40.9058322 -95.5763865)', 4326), 40.9672213, -95.6630573, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461922', 'Springs Branch Creek', 'Stream', 'Iowa', 'IA', 'Allamakee', 'Harpers Ferry', 43.2052579, -91.1565186, ST_GeomFromText('POINT(43.2052579 -91.1565186)', 4326), 43.21, -91.1961111, '1979-04-30', '2015-04-24', NULL, NULL, NULL),
  ('461927', 'Spruce Creek', 'Stream', 'Iowa', 'IA', 'Jackson', 'Bellevue', 42.3025135, -90.4334616, ST_GeomFromText('POINT(42.3025135 -90.4334616)', 4326), 42.3275117, -90.5295728, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461932', 'Beeds Creek', 'Stream', 'Iowa', 'IA', 'Franklin', 'Ackley NE', 42.7455289, -93.1018655, ST_GeomFromText('POINT(42.7455289 -93.1018655)', 4326), 42.7327511, -93.3313145, '1979-04-30', '2022-09-08', 'Official', 'Secretarial Order', '2022-09-08');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('461933', 'Ioway Creek', 'Stream', 'Iowa', 'IA', 'Story', 'Ames East', 42.0105422, -93.5957729, ST_GeomFromText('POINT(42.0105422 -93.5957729)', 4326), 42.3069214, -93.8571688, '1979-04-30', '2021-02-11', 'Official', 'Board Decision', '2021-02-11'),
  ('461934', 'Wanatee Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Bertram', 41.9733352, -91.5787886, ST_GeomFromText('POINT(41.9733352 -91.5787886)', 4326), 42.0566654, -91.5582308, '1979-04-30', '2021-03-11', 'Official', 'Board Decision', '2021-03-11'),
  ('461935', 'Red Rock Creek', 'Stream', 'Iowa', 'IA', 'Jasper', 'Mitchellville', 41.680822, -93.2668724, ST_GeomFromText('POINT(41.680822 -93.2668724)', 4326), 41.5919347, -93.1877038, '1979-04-30', '2022-09-08', 'Official', 'Secretarial Order', '2022-09-08'),
  ('461936', 'West Creek', 'Stream', 'Iowa', 'IA', 'Warren', 'Indianola', 41.3333264, -93.5891051, ST_GeomFromText('POINT(41.3333264 -93.5891051)', 4326), 41.0647154, -93.9555028, '1979-04-30', '2022-09-08', 'Official', 'Secretarial Order', '2022-09-08'),
  ('461937', 'Sun Valley Creek', 'Stream', 'Iowa', 'IA', 'Ringgold', 'Diagonal', 40.8208239, -94.3296789, ST_GeomFromText('POINT(40.8208239 -94.3296789)', 4326), 40.8663806, -94.2132866, '1979-04-30', '2022-09-08', 'Official', 'Secretarial Order', '2022-09-08'),
  ('461944', 'Squirrel Island', 'Island', 'Iowa', 'IA', 'Jones', 'Canton', 42.2163992, -90.8993053, ST_GeomFromText('POINT(42.2163992 -90.8993053)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461947', 'Staff Creek', 'Stream', 'Iowa', 'IA', 'Howard', 'Lime Springs NW', 43.4952434, -92.4196173, ST_GeomFromText('POINT(43.4952434 -92.4196173)', 4326), 43.4719106, -92.5521223, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461949', 'Stamps Island', 'Island', 'Iowa', 'IA', 'Clinton', 'Clinton NW', 41.890306, -90.1648487, ST_GeomFromText('POINT(41.890306 -90.1648487)', 4326), NULL, NULL, '1979-04-30', '2012-08-28', NULL, NULL, NULL),
  ('461974', 'Steady Run', 'Stream', 'Iowa', 'IA', 'Keokuk', 'Hedrick', 41.2369571, -92.2818497, ST_GeomFromText('POINT(41.2369571 -92.2818497)', 4326), 41.1914027, -92.2301815, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461975', 'Steamboat Rock', 'Cliff', 'Iowa', 'IA', 'Hardin', 'Steamboat Rock', 42.4002597, -93.075757, ST_GeomFromText('POINT(42.4002597 -93.075757)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('461976', 'Steamboat Rock', 'Summit', 'Iowa', 'IA', 'Howard', 'Cresco SE', 43.3307567, -92.0864998, ST_GeomFromText('POINT(43.3307567 -92.0864998)', 4326), NULL, NULL, '1979-04-30', '2023-09-30', NULL, NULL, NULL),
  ('461979', 'Steel Creek', 'Stream', 'Iowa', 'IA', 'Decatur', 'Lineville', 40.6222282, -93.594942, ST_GeomFromText('POINT(40.6222282 -93.594942)', 4326), 40.8336138, -93.5735502, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461980', 'Steeles Branch', 'Stream', 'Iowa', 'IA', 'Clayton', 'Garber', 42.6691557, -91.2840241, ST_GeomFromText('POINT(42.6691557 -91.2840241)', 4326), 42.6208209, -91.3806959, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461981', 'Steer Creek', 'Stream', 'Iowa', 'IA', 'Harrison', 'Missouri Valley NW', 41.6741564, -95.9552885, ST_GeomFromText('POINT(41.6741564 -95.9552885)', 4326), 41.8019326, -95.8583423, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461983', 'Stegar Hollow', 'Valley', 'Iowa', 'IA', 'Dubuque', 'Sherrill', 42.6039959, -90.8642991, ST_GeomFromText('POINT(42.6039959 -90.8642991)', 4326), 42.6123734, -90.8668039, '1979-04-30', '2023-10-07', NULL, NULL, NULL),
  ('461984', 'Stein Creek', 'Stream', 'Iowa', 'IA', 'Tama', 'Elberon', 42.0636044, -92.3318539, ST_GeomFromText('POINT(42.0636044 -92.3318539)', 4326), 42.1797148, -92.2779637, '1979-04-30', NULL, NULL, NULL, NULL),
  ('461991', 'Stewart Creek', 'Stream', 'Iowa', 'IA', 'Floyd', 'Charles City', 43.1127501, -92.720469, ST_GeomFromText('POINT(43.1127501 -92.720469)', 4326), 43.160527, -92.8404735, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462003', 'Stoe Creek', 'Stream', 'Iowa', 'IA', 'Fayette', 'Sumner', 42.7605379, -92.0673973, ST_GeomFromText('POINT(42.7605379 -92.0673973)', 4326), 42.8224809, -91.9896167, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462004', 'Stofferan Creek', 'Stream', 'Iowa', 'IA', 'O''Brien', 'Sheldon SE', 43.0699815, -95.8333479, ST_GeomFromText('POINT(43.0699815 -95.8333479)', 4326), 43.0958333, -95.7555556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462006', 'Stone Lake', 'Lake', 'Iowa', 'IA', 'Louisa', 'Wapello', 41.1535535, -91.1258031, ST_GeomFromText('POINT(41.1535535 -91.1258031)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('462009', 'Stony Creek', 'Stream', 'Iowa', 'IA', 'Warren', 'Newbern', 41.1794412, -93.3682664, ST_GeomFromText('POINT(41.1794412 -93.3682664)', 4326), 41.1199975, -93.4732687, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462010', 'Stony Creek', 'Stream', 'Iowa', 'IA', 'Clay', 'Spencer', 43.1416376, -95.2497209, ST_GeomFromText('POINT(43.1416376 -95.2497209)', 4326), 43.3994107, -95.3958368, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462011', 'Stony Creek', 'Stream', 'Iowa', 'IA', 'Poweshiek', 'Brooklyn', 41.7438866, -92.450463, ST_GeomFromText('POINT(41.7438866 -92.450463)', 4326), 41.7941621, -92.5304651, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462012', 'Barker Creek', 'Stream', 'Iowa', 'IA', 'Lucas', 'Newbern', 41.1402753, -93.3518771, ST_GeomFromText('POINT(41.1402753 -93.3518771)', 4326), 41.1141643, -93.4641018, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462013', 'Stony Lake', 'Lake', 'Iowa', 'IA', 'Dickinson', 'Lake Park SE', 43.3658589, -95.3553759, ST_GeomFromText('POINT(43.3658589 -95.3553759)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('462015', 'Storm Creek', 'Stream', 'Iowa', 'IA', 'Carroll', 'Carroll East', 42.0485966, -94.7680381, ST_GeomFromText('POINT(42.0485966 -94.7680381)', 4326), 42.1983174, -94.9580442, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462016', 'Storm Lake', 'Lake', 'Iowa', 'IA', 'Buena Vista', 'Storm Lake', 42.6264331, -95.2071236, ST_GeomFromText('POINT(42.6264331 -95.2071236)', 4326), NULL, NULL, '1979-04-30', '2018-10-15', NULL, NULL, NULL),
  ('462021', 'Stowe Creek', 'Stream', 'Iowa', 'IA', 'Monona', 'Pisgah', 41.8672103, -95.9022317, ST_GeomFromText('POINT(41.8672103 -95.9022317)', 4326), 41.8549884, -95.7908412, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462030', 'Stratton Creek', 'Stream', 'Iowa', 'IA', 'Cherokee', 'Washta', 42.579154, -95.7194534, ST_GeomFromText('POINT(42.579154 -95.7194534)', 4326), 42.5791667, -95.6272222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462044', 'Stump Creek', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Selma', 40.8566883, -92.1465674, ST_GeomFromText('POINT(40.8566883 -92.1465674)', 4326), 40.9489074, -92.2107357, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('462048', 'Sugar Camp Hollow', 'Valley', 'Iowa', 'IA', 'Jackson', 'Green Island', 42.1820666, -90.356397, ST_GeomFromText('POINT(42.1820666 -90.356397)', 4326), 42.1717905, -90.3751416, '1979-04-30', '2015-09-04', NULL, NULL, NULL),
  ('462049', 'Sugar Camp Hollow', 'Valley', 'Iowa', 'IA', 'Clayton', 'Edgewood', 42.7220564, -91.4991747, ST_GeomFromText('POINT(42.7220564 -91.4991747)', 4326), 42.7047635, -91.51606, '1979-04-30', '2023-10-06', NULL, NULL, NULL),
  ('462050', 'Sugar Creek', 'Stream', 'Iowa', 'IA', 'Wayne', 'Corydon NE', 40.9122242, -93.3043768, ST_GeomFromText('POINT(40.9122242 -93.3043768)', 4326), 40.8719473, -93.2804877, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462051', 'Sugar Creek', 'Stream', 'Iowa', 'IA', 'Keokuk', 'Hedrick', 41.2341794, -92.2893499, ST_GeomFromText('POINT(41.2341794 -92.2893499)', 4326), 41.1858333, -92.3558333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462052', 'Sugar Creek', 'Stream', 'Iowa', 'IA', 'Marion', 'Pleasantville', 41.4619356, -93.2543736, ST_GeomFromText('POINT(41.4619356 -93.2543736)', 4326), 41.4261111, -93.3044444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462053', 'Sugar Creek', 'Stream', 'Iowa', 'IA', 'Mitchell', 'Osage', 43.268027, -92.8401962, ST_GeomFromText('POINT(43.268027 -92.8401962)', 4326), 43.355, -92.8502778, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462054', 'Sugar Creek', 'Stream', 'Iowa', 'IA', 'Dallas', 'Commerce', 41.5313784, -93.816335, ST_GeomFromText('POINT(41.5313784 -93.816335)', 4326), 41.5958218, -93.9410616, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462055', 'Sugar Creek', 'Stream', 'Iowa', 'IA', 'Tama', 'Garwin', 42.0130451, -92.7246418, ST_GeomFromText('POINT(42.0130451 -92.7246418)', 4326), 42.1508202, -92.7999222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462056', 'Sugar Creek', 'Stream', 'Iowa', 'IA', 'Clinton', 'Preston', 42.0480791, -90.4315203, ST_GeomFromText('POINT(42.0480791 -90.4315203)', 4326), 42.0103007, -90.6018023, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462057', 'Sugar Creek', 'Stream', 'Iowa', 'IA', 'Poweshiek', 'Searsboro', 41.5472202, -92.7368587, ST_GeomFromText('POINT(41.5472202 -92.7368587)', 4326), 41.7774933, -92.717413, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('462058', 'Sugar Creek', 'Stream', 'Iowa', 'IA', 'Jasper', 'Mitchellville', 41.6813776, -93.2654835, ST_GeomFromText('POINT(41.6813776 -93.2654835)', 4326), 41.751377, -93.3002065, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462059', 'Sugar Creek', 'Stream', 'Iowa', 'IA', 'Henry', 'Trenton', 41.0919659, -91.7162778, ST_GeomFromText('POINT(41.0919659 -91.7162778)', 4326), 41.1294676, -91.6079408, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462060', 'Sugar Creek', 'Stream', 'Iowa', 'IA', 'Wapello', 'Farson', 41.0186263, -92.3574061, ST_GeomFromText('POINT(41.0186263 -92.3574061)', 4326), 41.0633472, -92.4062964, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462061', 'Sugar Creek', 'Stream', 'Iowa', 'IA', 'Lee', 'Wayland', 40.4044879, -91.5054342, ST_GeomFromText('POINT(40.4044879 -91.5054342)', 4326), 40.7339212, -91.7098858, '1979-04-30', '2014-04-07', NULL, NULL, NULL),
  ('462062', 'Sugar Creek', 'Stream', 'Iowa', 'IA', 'Lee', 'Nauvoo', 40.6033736, -91.4320985, ST_GeomFromText('POINT(40.6033736 -91.4320985)', 4326), 40.8094766, -91.6004378, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462067', 'Sugar Creek Lake', 'Lake', 'Iowa', 'IA', 'Dallas', 'Commerce', 41.5551381, -93.8540041, ST_GeomFromText('POINT(41.5551381 -93.8540041)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('462070', 'Sullivan Slough', 'Stream', 'Iowa', 'IA', 'Des Moines', 'Lomax', 40.7311515, -91.1182007, ST_GeomFromText('POINT(40.7311515 -91.1182007)', 4326), 40.73, -91.125, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462075', 'Summer Creek', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Lockridge West', 40.8950263, -91.7837784, ST_GeomFromText('POINT(40.8950263 -91.7837784)', 4326), 40.8861111, -91.8675, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462081', 'Summit Lake', 'Reservoir', 'Iowa', 'IA', 'Union', 'Creston West', 41.0652487, -94.3974722, ST_GeomFromText('POINT(41.0652487 -94.3974722)', 4326), NULL, NULL, '1979-04-30', '2018-07-05', NULL, NULL, NULL),
  ('462085', 'Sunfish Lake', 'Lake', 'Iowa', 'IA', 'Jackson', 'Savanna', 42.124466, -90.1937394, ST_GeomFromText('POINT(42.124466 -90.1937394)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('462086', 'Sunfish Lake', 'Lake', 'Iowa', 'IA', 'Louisa', 'Oakville', 41.10972, -91.09065, ST_GeomFromText('POINT(41.10972 -91.09065)', 4326), NULL, NULL, '1979-04-30', '2024-10-02', NULL, NULL, NULL),
  ('462087', 'Sunken Creek', 'Stream', 'Iowa', 'IA', 'Floyd', 'Orchard', 43.1913614, -92.7876943, ST_GeomFromText('POINT(43.1913614 -92.7876943)', 4326), 43.2013889, -92.8622222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462090', 'Sunken Island Lake', 'Lake', 'Iowa', 'IA', 'Pocahontas', 'Varina', 42.6327999, -94.9006405, ST_GeomFromText('POINT(42.6327999 -94.9006405)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('462091', 'Sunken Lake', 'Lake', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.4803369, -95.1282935, ST_GeomFromText('POINT(43.4803369 -95.1282935)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('462109', 'Sunrise Lake', 'Lake', 'Iowa', 'IA', 'Washington', 'West Chester', 41.2797457, -91.7620649, ST_GeomFromText('POINT(41.2797457 -91.7620649)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('462126', 'Suttle Creek', 'Stream', 'Iowa', 'IA', 'Allamakee', 'Waterville', 43.1316477, -91.3476352, ST_GeomFromText('POINT(43.1316477 -91.3476352)', 4326), 43.0666489, -91.4001378, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462131', 'Swan Lake', 'Lake', 'Iowa', 'IA', 'Emmet', 'Ingham Lake', 43.3549625, -94.6818051, ST_GeomFromText('POINT(43.3549625 -94.6818051)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('462132', 'Swan Lake', 'Lake', 'Iowa', 'IA', 'Johnson', 'Swisher', 41.7747389, -91.6780548, ST_GeomFromText('POINT(41.7747389 -91.6780548)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('462133', 'Swan Lake', 'Lake', 'Iowa', 'IA', 'Dickinson', 'Superior', 43.4594263, -94.9479133, ST_GeomFromText('POINT(43.4594263 -94.9479133)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('462134', 'Swan Lake', 'Reservoir', 'Iowa', 'IA', 'Carroll', 'Carroll East', 42.0382083, -94.8448381, ST_GeomFromText('POINT(42.0382083 -94.8448381)', 4326), NULL, NULL, '1979-04-30', '2018-06-22', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('462136', 'Swan Lake Branch', 'Stream', 'Iowa', 'IA', 'Dallas', 'Perry', 41.797486, -94.1202356, ST_GeomFromText('POINT(41.797486 -94.1202356)', 4326), 41.7958192, -94.2199613, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462144', 'Swede Hollow', 'Valley', 'Iowa', 'IA', 'Lucas', 'Lucas', 41.0845032, -93.3929849, ST_GeomFromText('POINT(41.0845032 -93.3929849)', 4326), 41.0459646, -93.3700337, '1979-04-30', '2023-10-11', NULL, NULL, NULL),
  ('462149', 'Sweeney Creek', 'Stream', 'Iowa', 'IA', 'O''Brien', 'Sheldon', 43.1691444, -95.7786259, ST_GeomFromText('POINT(43.1691444 -95.7786259)', 4326), 43.2169191, -95.6669571, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462151', 'Sweetland Creek', 'Stream', 'Iowa', 'IA', 'Muscatine', 'Illinois City', 41.4369738, -90.9568142, ST_GeomFromText('POINT(41.4369738 -90.9568142)', 4326), 41.4977778, -90.9608333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462153', 'Sweezy Island', 'Island', 'Iowa', 'IA', 'Clayton', 'Cassville', 42.6899938, -90.9667949, ST_GeomFromText('POINT(42.6899938 -90.9667949)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462158', 'Swisher Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Swisher', 41.8058431, -91.6632303, ST_GeomFromText('POINT(41.8058431 -91.6632303)', 4326), 41.8583333, -91.7069444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462160', 'Swiss Valley', 'Valley', 'Iowa', 'IA', 'Dubuque', 'Dubuque South', 42.4438562, -90.7331234, ST_GeomFromText('POINT(42.4438562 -90.7331234)', 4326), 42.4103663, -90.7705771, '1979-04-30', '2023-10-06', NULL, NULL, NULL),
  ('462176', 'Tama Mud Creek', 'Stream', 'Iowa', 'IA', 'Tama', 'Tama', 41.9499922, -92.562136, ST_GeomFromText('POINT(41.9499922 -92.562136)', 4326), 41.9925, -92.5541667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462178', 'Tank Pond Creek', 'Stream', 'Iowa', 'IA', 'Webster', 'Paton', 42.2213675, -94.3541347, ST_GeomFromText('POINT(42.2213675 -94.3541347)', 4326), 42.2730318, -94.2913546, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462180', 'Tarecoat Creek', 'Stream', 'Iowa', 'IA', 'Jackson', 'Fulton', 42.1808493, -90.6681886, ST_GeomFromText('POINT(42.1808493 -90.6681886)', 4326), 42.2377778, -90.6897222, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('462188', 'Teeple Creek', 'Stream', 'Iowa', 'IA', 'Allamakee', 'Rossville', 43.2108109, -91.4951406, ST_GeomFromText('POINT(43.2108109 -91.4951406)', 4326), 43.2719204, -91.5118076, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462189', 'Tegeler Pond', 'Lake', 'Iowa', 'IA', 'Delaware', 'Dyersville West', 42.4837523, -91.1422755, ST_GeomFromText('POINT(42.4837523 -91.1422755)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('462192', 'Ten Mile Creek', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Decorah', 43.335804, -91.8476561, ST_GeomFromText('POINT(43.335804 -91.8476561)', 4326), 43.2910807, -91.9765517, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462199', 'Tete des Morts Creek', 'Stream', 'Iowa', 'IA', 'Dubuque', 'Galena', 42.3830649, -90.4895725, ST_GeomFromText('POINT(42.3830649 -90.4895725)', 4326), 42.412229, -90.629573, '1979-04-30', '2014-12-12', 'Official', 'Board Decision', '1965-01-01'),
  ('462201', 'Teter Creek', 'Stream', 'Iowa', 'IA', 'Marion', 'Otley', 41.4052724, -93.1049253, ST_GeomFromText('POINT(41.4052724 -93.1049253)', 4326), 41.3777715, -93.2140953, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462204', 'Grade Lake', 'Reservoir', 'Iowa', 'IA', 'Clarke', 'Osceola', 41.0227964, -93.77132, ST_GeomFromText('POINT(41.0227964 -93.77132)', 4326), NULL, NULL, '2000-01-01', '2018-06-12', NULL, NULL, NULL),
  ('462205', 'The Hogback', 'Ridge', 'Iowa', 'IA', 'Linn', 'Shellsburg', 42.0915969, -91.8129791, ST_GeomFromText('POINT(42.0915969 -91.8129791)', 4326), NULL, NULL, '2023-09-28', '2023-09-30', NULL, NULL, NULL),
  ('462206', 'The Narrows Point', 'Cape', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.4113507, -95.0797163, ST_GeomFromText('POINT(43.4113507 -95.0797163)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462210', 'Third Creek', 'Stream', 'Iowa', 'IA', 'Boone', 'Boone West', 42.0013724, -93.9105066, ST_GeomFromText('POINT(42.0013724 -93.9105066)', 4326), 41.9924834, -93.9335629, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462213', 'Thomas Lake', 'Lake', 'Iowa', 'IA', 'Marion', 'Pleasantville', 41.47385, -93.30246, ST_GeomFromText('POINT(41.47385 -93.30246)', 4326), NULL, NULL, '1979-04-30', '2024-10-02', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('462220', 'Thompson Creek', 'Stream', 'Iowa', 'IA', 'Harrison', 'Logan', 41.7349886, -95.8183419, ST_GeomFromText('POINT(41.7349886 -95.8183419)', 4326), 41.768044, -95.7344516, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462221', 'Thompson Creek', 'Stream', 'Iowa', 'IA', 'Adams', 'Bridgewater', 41.1366535, -94.7035847, ST_GeomFromText('POINT(41.1366535 -94.7035847)', 4326), 41.2341667, -94.7205556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462232', 'Threemile Creek', 'Stream', 'Iowa', 'IA', 'Union', 'Lorimor South', 41.0361027, -94.1116176, ST_GeomFromText('POINT(41.0361027 -94.1116176)', 4326), 41.1952664, -94.3874612, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462233', 'Threemile Creek', 'Stream', 'Iowa', 'IA', 'Cass', 'Grant', 41.1591561, -94.9644301, ST_GeomFromText('POINT(41.1591561 -94.9644301)', 4326), 41.2438889, -94.9194444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462234', 'Threemile Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Correctionville', 42.4383227, -95.8305658, ST_GeomFromText('POINT(42.4383227 -95.8305658)', 4326), 42.4986111, -95.8744444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462235', 'Thunder Creek', 'Stream', 'Iowa', 'IA', 'Mahaska', 'Peoria', 41.4638863, -92.8713073, ST_GeomFromText('POINT(41.4638863 -92.8713073)', 4326), 41.4769385, -93.0360335, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462244', 'Timber Creek', 'Stream', 'Iowa', 'IA', 'Harrison', 'Beebeetown', 41.570825, -95.8475097, ST_GeomFromText('POINT(41.570825 -95.8475097)', 4326), 41.5358333, -95.7958333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462245', 'Timber Creek', 'Stream', 'Iowa', 'IA', 'Marshall', 'Le Grand', 42.0288775, -92.8207544, ST_GeomFromText('POINT(42.0288775 -92.8207544)', 4326), 41.9544338, -92.8624199, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462258', 'Tipton Creek', 'Stream', 'Iowa', 'IA', 'Hardin', 'New Providence', 42.3299836, -93.1882589, ST_GeomFromText('POINT(42.3299836 -93.1882589)', 4326), 42.4483132, -93.5207654, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462262', 'Tissel Hollow', 'Valley', 'Iowa', 'IA', 'Linn', 'Cedar Rapids South', 41.9161723, -91.7454856, ST_GeomFromText('POINT(41.9161723 -91.7454856)', 4326), 41.8966645, -91.7367091, '1979-04-30', '2023-09-29', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('462266', 'Todd Branch', 'Stream', 'Iowa', 'IA', 'Adams', 'Kent', 40.9310997, -94.4746841, ST_GeomFromText('POINT(40.9310997 -94.4746841)', 4326), 40.8860992, -94.5496868, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462267', 'Todds Creek', 'Stream', 'Iowa', 'IA', 'Delaware', 'Manchester', 42.4472107, -91.4459826, ST_GeomFromText('POINT(42.4472107 -91.4459826)', 4326), 42.3975, -91.4925, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462272', 'Tom Creek', 'Stream', 'Iowa', 'IA', 'Lyon', 'Rock Rapids', 43.4324719, -96.1650262, ST_GeomFromText('POINT(43.4324719 -96.1650262)', 4326), 43.5127443, -95.9027974, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462273', 'Tom Creek', 'Stream', 'Iowa', 'IA', 'Madison', 'Earlham East', 41.4499893, -94.0624531, ST_GeomFromText('POINT(41.4499893 -94.0624531)', 4326), 41.4372109, -94.2205137, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462275', 'Tom King Hollow', 'Valley', 'Iowa', 'IA', 'Monona', 'Hornick', 42.1911172, -96.0191419, ST_GeomFromText('POINT(42.1911172 -96.0191419)', 4326), 42.1960612, -95.9978239, '1979-04-30', '2015-09-04', NULL, NULL, NULL),
  ('462284', 'Tower Rock', 'Cliff', 'Iowa', 'IA', 'Hardin', 'Wellsburg', 42.4030376, -92.9243666, ST_GeomFromText('POINT(42.4030376 -92.9243666)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462285', 'Towhead Island', 'Island', 'Iowa', 'IA', 'Muscatine', 'Muscatine', 41.4053065, -91.0537605, ST_GeomFromText('POINT(41.4053065 -91.0537605)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462287', 'Town Branch', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Keosauqua', 40.738916, -91.996285, ST_GeomFromText('POINT(40.738916 -91.996285)', 4326), 40.7322488, -92.0443422, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462288', 'Town Lake', 'Lake', 'Iowa', 'IA', 'Jackson', 'Savanna', 42.080387, -90.183936, ST_GeomFromText('POINT(42.080387 -90.183936)', 4326), NULL, NULL, '1979-04-30', '2024-10-01', NULL, NULL, NULL),
  ('462292', 'Tracey Creek', 'Stream', 'Iowa', 'IA', 'Marion', 'Knoxville SW', 41.2683303, -93.1529835, ST_GeomFromText('POINT(41.2683303 -93.1529835)', 4326), 41.2247189, -93.2346522, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('462295', 'Trappers Bay', 'Bay', 'Iowa', 'IA', 'Dickinson', 'Lake Park', 43.4544089, -95.3316674, ST_GeomFromText('POINT(43.4544089 -95.3316674)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462303', 'Trienes Bar', 'Island', 'Iowa', 'IA', 'Des Moines', 'Burlington', 40.8725382, -91.0481996, ST_GeomFromText('POINT(40.8725382 -91.0481996)', 4326), NULL, NULL, '1979-04-30', '2009-08-07', NULL, NULL, NULL),
  ('462328', 'Trinkle Creek', 'Stream', 'Iowa', 'IA', 'Crawford', 'Boyer', 42.178597, -95.2291609, ST_GeomFromText('POINT(42.178597 -95.2291609)', 4326), 42.1685963, -95.1236034, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462331', 'Troublesome Creek', 'Stream', 'Iowa', 'IA', 'Keokuk', 'Sigourney', 41.3005675, -92.2012921, ST_GeomFromText('POINT(41.3005675 -92.2012921)', 4326), 41.2711111, -92.1611111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462332', 'Troublesome Creek', 'Stream', 'Iowa', 'IA', 'Keokuk', 'South English', 41.404455, -92.0999007, ST_GeomFromText('POINT(41.404455 -92.0999007)', 4326), 41.4538889, -92.0980556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462333', 'Troublesome Creek', 'Stream', 'Iowa', 'IA', 'Cass', 'Atlantic', 41.4197117, -95.0177666, ST_GeomFromText('POINT(41.4197117 -95.0177666)', 4326), 41.6210978, -94.6552542, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462334', 'Trout Creek', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Decorah', 43.2791397, -91.7745977, ST_GeomFromText('POINT(43.2791397 -91.7745977)', 4326), 43.1919179, -91.8559921, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462335', 'Trout Creek', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Freeport', 43.2913628, -91.6759818, ST_GeomFromText('POINT(43.2913628 -91.6759818)', 4326), 43.2035866, -91.6965396, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462336', 'Trout River', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Freeport', 43.3185844, -91.6712592, ST_GeomFromText('POINT(43.3185844 -91.6712592)', 4326), 43.2021985, -91.6298696, '1979-04-30', '2018-07-31', NULL, NULL, NULL),
  ('462337', 'Trout Run', 'Stream', 'Iowa', 'IA', 'Allamakee', 'Church', 43.3033104, -91.3090225, ST_GeomFromText('POINT(43.3033104 -91.3090225)', 4326), 43.3494444, -91.3375, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('462338', 'Trout Run', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Decorah', 43.2908063, -91.7584857, ST_GeomFromText('POINT(43.2908063 -91.7584857)', 4326), 43.2736111, -91.7788889, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462342', 'Troy Creek', 'Stream', 'Iowa', 'IA', 'Jefferson', 'Fairfield South', 40.9144682, -91.8965596, ST_GeomFromText('POINT(40.9144682 -91.8965596)', 4326), 41.0075206, -91.9321163, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462351', 'Trumbull Lake', 'Lake', 'Iowa', 'IA', 'Clay', 'Ruthven', 43.1932746, -94.9501801, ST_GeomFromText('POINT(43.1932746 -94.9501801)', 4326), NULL, NULL, '1979-04-30', '2018-07-13', NULL, NULL, NULL),
  ('462356', 'Tucker Creek', 'Stream', 'Iowa', 'IA', 'Crawford', 'Boyer', 42.1569306, -95.2486058, ST_GeomFromText('POINT(42.1569306 -95.2486058)', 4326), 42.1235972, -95.1927717, '2000-01-01', NULL, NULL, NULL, NULL),
  ('462357', 'Tuecke Hollow', 'Valley', 'Iowa', 'IA', 'Clayton', 'Garnavillo', 42.7698858, -91.2260874, ST_GeomFromText('POINT(42.7698858 -91.2260874)', 4326), 42.791351, -91.2078177, '1979-04-30', '2015-09-04', NULL, NULL, NULL),
  ('462358', 'Tug Fork Big Indian Creek', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Keosauqua', 40.6597527, -91.9479503, ST_GeomFromText('POINT(40.6597527 -91.9479503)', 4326), 40.677529, -92.0060078, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462359', 'Tug Fork Big Indian Creek', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Cantril', 40.6958615, -92.0201749, ST_GeomFromText('POINT(40.6958615 -92.0201749)', 4326), 40.7277778, -92.0480556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462361', 'Turkey Creek', 'Stream', 'Iowa', 'IA', 'Warren', 'Martensdale', 41.2641605, -93.6677181, ST_GeomFromText('POINT(41.2641605 -93.6677181)', 4326), 41.2588889, -93.7191667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462362', 'Turkey Creek', 'Stream', 'Iowa', 'IA', 'Jasper', 'Baxter', 41.7530439, -93.2277038, ST_GeomFromText('POINT(41.7530439 -93.2277038)', 4326), 41.8338889, -93.1591667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462363', 'Turkey Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Polk City', 41.8283202, -93.7352227, ST_GeomFromText('POINT(41.8283202 -93.7352227)', 4326), 41.8525, -93.6919444, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('462364', 'Turkey Creek', 'Stream', 'Iowa', 'IA', 'Boone', 'Madrid NW', 41.999428, -93.9060619, ST_GeomFromText('POINT(41.999428 -93.9060619)', 4326), 41.9919444, -93.9108333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462365', 'Turkey Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Iowa City West', 41.7302931, -91.5212812, ST_GeomFromText('POINT(41.7302931 -91.5212812)', 4326), 41.7741814, -91.4576694, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462366', 'Turkey Creek', 'Stream', 'Iowa', 'IA', 'Cass', 'Lewis', 41.3236013, -95.0747133, ST_GeomFromText('POINT(41.3236013 -95.0747133)', 4326), 41.523876, -94.6905327, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462367', 'Turkey Creek', 'Stream', 'Iowa', 'IA', 'Jefferson', 'Trenton', 41.0561333, -91.7343338, ST_GeomFromText('POINT(41.0561333 -91.7343338)', 4326), 41.0427991, -91.819336, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462368', 'Turkey Creek', 'Stream', 'Iowa', 'IA', 'Ringgold', 'Maloy', 40.7394344, -94.4105147, ST_GeomFromText('POINT(40.7394344 -94.4105147)', 4326), 40.7897115, -94.4527383, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462369', 'Turkey Creek', 'Stream', 'Iowa', 'IA', 'Wapello', 'Agency', 40.9586277, -92.3482392, ST_GeomFromText('POINT(40.9586277 -92.3482392)', 4326), 40.9364058, -92.3826845, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462370', 'Turkey Creek', 'Stream', 'Iowa', 'IA', 'Wayne', 'Woodland', 40.6644514, -93.5027173, ST_GeomFromText('POINT(40.6644514 -93.5027173)', 4326), 40.6636182, -93.436049, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462371', 'Turkey Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Pleasantville', 41.4255475, -93.371877, ST_GeomFromText('POINT(41.4255475 -93.371877)', 4326), 41.425825, -93.4410455, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462372', 'Turkey Island', 'Island', 'Iowa', 'IA', 'Wapello', 'Ottumwa North', 41.0283474, -92.4326858, ST_GeomFromText('POINT(41.0283474 -92.4326858)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462373', 'Turkey Island', 'Island', 'Iowa', 'IA', 'Louisa', 'Toolesboro', 41.2014203, -91.0782025, ST_GeomFromText('POINT(41.2014203 -91.0782025)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('462374', 'Turkey River', 'Stream', 'Iowa', 'IA', 'Clayton', 'Turkey River', 42.7174927, -91.0120726, ST_GeomFromText('POINT(42.7174927 -91.0120726)', 4326), 43.3424683, -92.3112832, '1979-04-30', '2018-07-31', NULL, NULL, NULL),
  ('462378', 'Turkey Run', 'Stream', 'Iowa', 'IA', 'Louisa', 'Wapello', 41.2183627, -91.199039, ST_GeomFromText('POINT(41.2183627 -91.199039)', 4326), 41.2739174, -91.184317, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462379', 'Turkey Run', 'Stream', 'Iowa', 'IA', 'Mahaska', 'Buxton', 41.1986165, -92.7713074, ST_GeomFromText('POINT(41.1986165 -92.7713074)', 4326), 41.1541667, -92.8669444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462380', 'Turkey Run', 'Stream', 'Iowa', 'IA', 'Decatur', 'Leon', 40.7141707, -93.6402196, ST_GeomFromText('POINT(40.7141707 -93.6402196)', 4326), 40.7719481, -93.6004959, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462384', 'Turner Creek', 'Stream', 'Iowa', 'IA', 'Fayette', 'Saint Lucas', 43.0038661, -91.8904424, ST_GeomFromText('POINT(43.0038661 -91.8904424)', 4326), 42.9830333, -91.8776643, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462385', 'Turner Creek', 'Stream', 'Iowa', 'IA', 'Jasper', 'Oakland Acres', 41.6666606, -92.8360264, ST_GeomFromText('POINT(41.6666606 -92.8360264)', 4326), 41.7233333, -92.8047222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462387', 'Turtle Creek', 'Stream', 'Iowa', 'IA', 'Delaware', 'Manchester', 42.4033249, -91.379038, ST_GeomFromText('POINT(42.4033249 -91.379038)', 4326), 42.3844444, -91.39, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462388', 'Turtle Creek', 'Stream', 'Iowa', 'IA', 'Mitchell', 'Saint Ansgar', 43.3791337, -92.9343626, ST_GeomFromText('POINT(43.3791337 -92.9343626)', 4326), 43.4480229, -92.8251898, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462390', 'Turtle Island', 'Island', 'Iowa', 'IA', 'Des Moines', 'Kingston', 40.8762189, -91.0481346, ST_GeomFromText('POINT(40.8762189 -91.0481346)', 4326), NULL, NULL, '1979-04-30', '2014-09-05', NULL, NULL, NULL),
  ('462393', 'Twelvemile Creek', 'Stream', 'Iowa', 'IA', 'Union', 'Tingley NE', 40.9047161, -94.0260602, ST_GeomFromText('POINT(40.9047161 -94.0260602)', 4326), 41.1688776, -94.3827385, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('462394', 'Twelvemile Creek', 'Stream', 'Iowa', 'IA', 'Tama', 'Traer', 42.2430455, -92.403245, ST_GeomFromText('POINT(42.2430455 -92.403245)', 4326), 42.258042, -92.6599198, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462395', 'Twelvemile Lake', 'Lake', 'Iowa', 'IA', 'Emmet', 'Terril', 43.2901015, -94.8753149, ST_GeomFromText('POINT(43.2901015 -94.8753149)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('462397', 'Twin Anchors Lake', 'Lake', 'Iowa', 'IA', 'Story', 'Colo', 42.0053587, -93.3427237, ST_GeomFromText('POINT(42.0053587 -93.3427237)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('462399', 'Twin Lake', 'Lake', 'Iowa', 'IA', 'Johnson', 'Swisher', 41.81684, -91.6261749, ST_GeomFromText('POINT(41.81684 -91.6261749)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('462400', 'Twin Lakes', 'Lake', 'Iowa', 'IA', 'Jackson', 'Green Island', 42.1879304, -90.3227583, ST_GeomFromText('POINT(42.1879304 -90.3227583)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('462406', 'Twomile Creek', 'Stream', 'Iowa', 'IA', 'Chickasaw', 'Tripoli NW', 42.9902536, -92.4626819, ST_GeomFromText('POINT(42.9902536 -92.4626819)', 4326), 43.0038644, -92.4651818, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462407', 'Twomile Creek', 'Stream', 'Iowa', 'IA', 'Wapello', 'Ottumwa North', 41.0422358, -92.4590754, ST_GeomFromText('POINT(41.0422358 -92.4590754)', 4326), 41.0683333, -92.4533333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462408', 'Tyler Lake Drain', 'Stream', 'Iowa', 'IA', 'Des Moines', 'Keithsburg', 41.0244803, -90.9945879, ST_GeomFromText('POINT(41.0244803 -90.9945879)', 4326), 41.0452778, -91.0047222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462452', 'Union Creek', 'Stream', 'Iowa', 'IA', 'Jackson', 'Maquoketa', 42.043354, -90.6712477, ST_GeomFromText('POINT(42.043354 -90.6712477)', 4326), 41.9855787, -90.6340259, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462455', 'Union Grove Lake', 'Reservoir', 'Iowa', 'IA', 'Tama', 'Gladbrook', 42.1289755, -92.724638, ST_GeomFromText('POINT(42.1289755 -92.724638)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('462462', 'Union Park Hollow', 'Valley', 'Iowa', 'IA', 'Dubuque', 'Dubuque North', 42.5410471, -90.6932607, ST_GeomFromText('POINT(42.5410471 -90.6932607)', 4326), 42.5358113, -90.719285, '1979-04-30', '2023-10-06', NULL, NULL, NULL),
  ('462474', 'Union Valley Creek', 'Stream', 'Iowa', 'IA', 'Jasper', 'Prairie City', 41.5127692, -93.1721484, ST_GeomFromText('POINT(41.5127692 -93.1721484)', 4326), 41.565, -93.1661111, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462491', 'Upper Brown Lake', 'Lake', 'Iowa', 'IA', 'Jackson', 'Green Island', 42.15351, -90.261526, ST_GeomFromText('POINT(42.15351 -90.261526)', 4326), NULL, NULL, '1979-04-30', '2024-12-04', NULL, NULL, NULL),
  ('462494', 'Upper Gar Lake', 'Lake', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake SE', 43.3685741, -95.1216618, ST_GeomFromText('POINT(43.3685741 -95.1216618)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462496', 'Upper Iowa River', 'Stream', 'Iowa', 'IA', 'Allamakee', 'De Soto', 43.4663629, -91.2337434, ST_GeomFromText('POINT(43.4663629 -91.2337434)', 4326), 43.6207977, -92.6226791, '1979-04-30', '2018-03-27', 'Official', 'Board Decision', '1891-01-01'),
  ('462500', 'Upper Twin Island', 'Island', 'Iowa', 'IA', 'Des Moines', 'Lomax', 40.7108739, -91.1179227, ST_GeomFromText('POINT(40.7108739 -91.1179227)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462501', 'Upper West Fork West Sabula Slough', 'Stream', 'Iowa', 'IA', 'Jackson', 'Savanna', 42.0978004, -90.1731836, ST_GeomFromText('POINT(42.0978004 -90.1731836)', 4326), 42.1216667, -90.1883333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462502', 'Upper Y Lake', 'Lake', 'Iowa', 'IA', 'Jackson', 'Savanna', 42.1188226, -90.1750204, ST_GeomFromText('POINT(42.1188226 -90.1750204)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('462508', 'Utica Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Davenport East', 41.5866994, -90.5073568, ST_GeomFromText('POINT(41.5866994 -90.5073568)', 4326), 41.5988889, -90.5116667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462517', 'Valley Branch', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Keosauqua', 40.6297532, -91.9779515, ST_GeomFromText('POINT(40.6297532 -91.9779515)', 4326), 40.6216971, -92.0393426, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('462539', 'Van Zante Creek', 'Stream', 'Iowa', 'IA', 'Marion', 'Killduff', 41.5008282, -92.9563088, ST_GeomFromText('POINT(41.5008282 -92.9563088)', 4326), 41.510826, -93.082979, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462559', 'Vesser Creek', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Eldon', 40.8752986, -92.1715681, ST_GeomFromText('POINT(40.8752986 -92.1715681)', 4326), 40.8672422, -92.2371257, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462570', 'Viking Lake', 'Reservoir', 'Iowa', 'IA', 'Montgomery', 'Stanton', 40.9738784, -95.0353525, ST_GeomFromText('POINT(40.9738784 -95.0353525)', 4326), NULL, NULL, '1979-04-30', '2018-07-05', NULL, NULL, NULL),
  ('462572', 'Village Creek', 'Stream', 'Iowa', 'IA', 'Wapello', 'Agency', 40.9633497, -92.3565727, ST_GeomFromText('POINT(40.9633497 -92.3565727)', 4326), 40.9583333, -92.5894444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462573', 'Village Creek', 'Stream', 'Iowa', 'IA', 'Allamakee', 'Lansing', 43.3477545, -91.20402, ST_GeomFromText('POINT(43.3477545 -91.20402)', 4326), 43.2866425, -91.4970846, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462585', 'Virden Creek', 'Stream', 'Iowa', 'IA', 'Black Hawk', 'Waterloo North', 42.503875, -92.3449074, ST_GeomFromText('POINT(42.503875 -92.3449074)', 4326), 42.6030556, -92.3172222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462586', 'Virgin Lake', 'Lake', 'Iowa', 'IA', 'Palo Alto', 'Silver Lake', 43.102386, -94.8968171, ST_GeomFromText('POINT(43.102386 -94.8968171)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('462590', 'Volga River', 'Stream', 'Iowa', 'IA', 'Clayton', 'Garber', 42.7480438, -91.2706881, ST_GeomFromText('POINT(42.7480438 -91.2706881)', 4326), 42.9272004, -92.0368389, '1979-04-30', '2013-12-10', NULL, NULL, NULL),
  ('462594', 'Vore Creek', 'Stream', 'Iowa', 'IA', 'Harrison', 'Hard Scratch', 41.5324919, -95.717508, ST_GeomFromText('POINT(41.5324919 -95.717508)', 4326), 41.5905556, -95.6966667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462597', 'Wachendorf Lake', 'Lake', 'Iowa', 'IA', 'Clayton', 'Cassville', 42.6924937, -90.9770726, ST_GeomFromText('POINT(42.6924937 -90.9770726)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('462605', 'Walden Pond', 'Lake', 'Iowa', 'IA', 'Winneshiek', 'Postville NW', 43.1428055, -91.6502026, ST_GeomFromText('POINT(43.1428055 -91.6502026)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('462609', 'Walker Branch', 'Stream', 'Iowa', 'IA', 'Wayne', 'Plano', 40.8158401, -93.1063165, ST_GeomFromText('POINT(40.8158401 -93.1063165)', 4326), 40.8438932, -93.2110416, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462620', 'Waller Lake', 'Lake', 'Iowa', 'IA', 'Marion', 'Pleasantville', 41.48087, -93.31339, ST_GeomFromText('POINT(41.48087 -93.31339)', 4326), NULL, NULL, '1979-04-30', '2024-10-03', NULL, NULL, NULL),
  ('462624', 'Wallingslock Creek', 'Stream', 'Iowa', 'IA', 'Marion', 'Pella', 41.3949964, -92.9988113, ST_GeomFromText('POINT(41.3949964 -92.9988113)', 4326), 41.4483281, -93.0296448, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462625', 'Wallrich Lake', 'Lake', 'Iowa', 'IA', 'Washington', 'Brighton', 41.2362219, -91.8435305, ST_GeomFromText('POINT(41.2362219 -91.8435305)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('462629', 'Walnut Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Davenport East', 41.5028101, -90.6245827, ST_GeomFromText('POINT(41.5028101 -90.6245827)', 4326), 41.505865, -90.6673621, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462630', 'Walnut Creek', 'Stream', 'Iowa', 'IA', 'Washington', 'Wayland', 41.1880731, -91.7493354, ST_GeomFromText('POINT(41.1880731 -91.7493354)', 4326), 41.2475154, -91.7598917, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462631', 'Walnut Creek', 'Stream', 'Iowa', 'IA', 'Jefferson', 'Trenton', 41.0641885, -91.7398896, ST_GeomFromText('POINT(41.0641885 -91.7398896)', 4326), 41.1030745, -91.8607265, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462632', 'Walnut Creek', 'Stream', 'Iowa', 'IA', 'Ringgold', 'Benton', 40.675269, -94.3505129, ST_GeomFromText('POINT(40.675269 -94.3505129)', 4326), 40.8238811, -94.2027309, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462633', 'Walnut Creek', 'Stream', 'Iowa', 'IA', 'Appanoose', 'Mystic', 40.8002898, -92.8760317, ST_GeomFromText('POINT(40.8002898 -92.8760317)', 4326), 40.6780641, -93.1777089, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('462634', 'Walnut Creek', 'Stream', 'Iowa', 'IA', 'Marion', 'Leighton', 41.260002, -92.8732547, ST_GeomFromText('POINT(41.260002 -92.8732547)', 4326), 41.2063885, -93.0577035, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462635', 'Walnut Creek', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Ridgeway', 43.2985807, -91.9709957, ST_GeomFromText('POINT(43.2985807 -91.9709957)', 4326), 43.3346908, -92.0115525, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462636', 'Walnut Creek', 'Stream', 'Iowa', 'IA', 'Crawford', 'Denison', 42.0166545, -95.3094415, ST_GeomFromText('POINT(42.0166545 -95.3094415)', 4326), 41.9599875, -95.2541628, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462637', 'Walnut Creek', 'Stream', 'Iowa', 'IA', 'Story', 'Huxley', 41.9394318, -93.5438266, ST_GeomFromText('POINT(41.9394318 -93.5438266)', 4326), 41.9758193, -93.6860541, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462638', 'Walnut Creek', 'Stream', 'Iowa', 'IA', 'Jones', 'Morley', 42.0022344, -91.1271003, ST_GeomFromText('POINT(42.0022344 -91.1271003)', 4326), 42.0025083, -91.2646073, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462639', 'Walnut Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Des Moines SW', 41.5677672, -93.676053, ST_GeomFromText('POINT(41.5677672 -93.676053)', 4326), 41.7152653, -93.8968944, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462640', 'Walnut Creek', 'Stream', 'Iowa', 'IA', 'Poweshiek', 'Hartwick', 41.86472, -92.2929626, ST_GeomFromText('POINT(41.86472 -92.2929626)', 4326), 41.8397145, -92.7121368, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462641', 'Walnut Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Donahue', 41.7439164, -90.7459772, ST_GeomFromText('POINT(41.7439164 -90.7459772)', 4326), 41.7280816, -90.8790372, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462642', 'Walnut Creek', 'Stream', 'Iowa', 'IA', 'Marion', 'Knoxville NW', 41.4661027, -93.2163169, ST_GeomFromText('POINT(41.4661027 -93.2163169)', 4326), 41.627767, -93.331875, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462657', 'Walton Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Central City', 42.2455479, -91.5760008, ST_GeomFromText('POINT(42.2455479 -91.5760008)', 4326), 42.3594333, -91.6368315, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('462658', 'Walton Lake', 'Reservoir', 'Iowa', 'IA', 'Jefferson', 'Fairfield North', 41.0145059, -91.9339061, ST_GeomFromText('POINT(41.0145059 -91.9339061)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('462661', 'Wantea Point', 'Cliff', 'Iowa', 'IA', 'Clinton', 'Savanna', 42.0283585, -90.1642944, ST_GeomFromText('POINT(42.0283585 -90.1642944)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462664', 'Lake Wapello', 'Reservoir', 'Iowa', 'IA', 'Davis', 'Paris', 40.8153422, -92.5823731, ST_GeomFromText('POINT(40.8153422 -92.5823731)', 4326), NULL, NULL, '1979-04-30', '2018-07-13', NULL, NULL, NULL),
  ('462670', 'Wapsinonoc Creek', 'Stream', 'Iowa', 'IA', 'Muscatine', 'Nichols', 41.4530809, -91.2501555, ST_GeomFromText('POINT(41.4530809 -91.2501555)', 4326), 41.5753011, -91.2498803, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462671', 'Wapsipinicon River', 'Stream', 'Iowa', 'IA', 'Scott', 'Cordova', 41.72967, -90.31978, ST_GeomFromText('POINT(41.72967 -90.31978)', 4326), 43.5485767, -92.6443474, '1979-04-30', '2018-03-27', 'Official', 'Board Decision', '1901-01-01'),
  ('462677', 'Warnstaff Lake', 'Lake', 'Iowa', 'IA', 'Louisa', 'Wapello', 41.1544311, -91.1514816, ST_GeomFromText('POINT(41.1544311 -91.1514816)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('462681', 'Warren Grove Creek', 'Stream', 'Iowa', 'IA', 'Jasper', 'Monroe', 41.615547, -93.0838111, ST_GeomFromText('POINT(41.615547 -93.0838111)', 4326), 41.577213, -93.1685366, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462725', 'Waterworks Lake', 'Lake', 'Iowa', 'IA', 'Taylor', 'Lenox', 40.8962438, -94.5550369, ST_GeomFromText('POINT(40.8962438 -94.5550369)', 4326), NULL, NULL, '1979-04-30', '2024-12-04', NULL, NULL, NULL),
  ('462729', 'Waterloo Creek', 'Stream', 'Iowa', 'IA', 'Allamakee', 'Dorchester', 43.4302505, -91.5204191, ST_GeomFromText('POINT(43.4302505 -91.5204191)', 4326), 43.5005556, -91.5697222, '1979-04-30', '2018-07-31', NULL, NULL, NULL),
  ('462733', 'Waterman Creek', 'Stream', 'Iowa', 'IA', 'O''Brien', 'Sutherland East', 42.9383108, -95.4180586, ST_GeomFromText('POINT(42.9383108 -95.4180586)', 4326), 43.2902492, -95.5800103, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('462743', 'Watsons Creek', 'Stream', 'Iowa', 'IA', 'Howard', 'Riceville', 43.3646904, -92.5621246, ST_GeomFromText('POINT(43.3646904 -92.5621246)', 4326), 43.4424666, -92.538511, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462746', 'Waubonsie Creek', 'Stream', 'Iowa', 'IA', 'Fremont', 'Rock Bluff', 40.8777782, -95.8155599, ST_GeomFromText('POINT(40.8777782 -95.8155599)', 4326), 41.0391655, -95.6772258, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462751', 'Waugh Branch', 'Stream', 'Iowa', 'IA', 'Keokuk', 'Hedrick', 41.2189016, -92.3099059, ST_GeomFromText('POINT(41.2189016 -92.3099059)', 4326), 41.1741667, -92.315, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462761', 'Wayman Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Garber', 42.7405441, -91.2595767, ST_GeomFromText('POINT(42.7405441 -91.2595767)', 4326), 42.6866565, -91.2312442, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462767', 'Weasel Creek', 'Stream', 'Iowa', 'IA', 'Benton', 'Blairstown', 41.9094453, -92.0587927, ST_GeomFromText('POINT(41.9094453 -92.0587927)', 4326), 41.9813889, -92.0441667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462770', 'Weber Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Hornick', 42.2288795, -96.0355694, ST_GeomFromText('POINT(42.2288795 -96.0355694)', 4326), 42.2452685, -95.9783448, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462785', 'Weldon Creek', 'Stream', 'Iowa', 'IA', 'Decatur', 'Garden Grove SW', 40.8638901, -93.6296622, ST_GeomFromText('POINT(40.8638901 -93.6296622)', 4326), 40.8838879, -93.7616095, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462792', 'Welsh Creek', 'Stream', 'Iowa', 'IA', 'Crawford', 'Dunlap NE', 41.9194329, -95.5422244, ST_GeomFromText('POINT(41.9194329 -95.5422244)', 4326), 42.0049887, -95.5766693, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462793', 'Welsh Lake', 'Lake', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.4611051, -95.1723949, ST_GeomFromText('POINT(43.4611051 -95.1723949)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL),
  ('462795', 'Welshs Slough', 'Stream', 'Iowa', 'IA', 'Calhoun', 'Farnhamville', 42.3733111, -94.4455275, ST_GeomFromText('POINT(42.3733111 -94.4455275)', 4326), 42.5116421, -94.4366385, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('462804', 'West Basswood Creek', 'Stream', 'Iowa', 'IA', 'Dubuque', 'Balltown', 42.6544402, -90.8084605, ST_GeomFromText('POINT(42.6544402 -90.8084605)', 4326), 42.6355556, -90.8469444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462805', 'West Beaver Creek', 'Stream', 'Iowa', 'IA', 'Greene', 'Grand Junction', 42.0241485, -94.1552378, ST_GeomFromText('POINT(42.0241485 -94.1552378)', 4326), 42.1183333, -94.2191667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462808', 'West Branch Beaverdam Creek', 'Stream', 'Iowa', 'IA', 'Cerro Gordo', 'Sheffield', 42.9605214, -93.2477035, ST_GeomFromText('POINT(42.9605214 -93.2477035)', 4326), 43.0038523, -93.4046496, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462809', 'West Branch Blue Creek', 'Stream', 'Iowa', 'IA', 'Benton', 'Center Point', 42.2466587, -91.8376767, ST_GeomFromText('POINT(42.2466587 -91.8376767)', 4326), 42.2591589, -91.9090666, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462810', 'West Branch Blue Earth River', 'Stream', 'Minnesota', 'MN', 'Faribault', 'Elmore', 43.5721775, -94.1035712, ST_GeomFromText('POINT(43.5721775 -94.1035712)', 4326), 43.402725, -94.285161, '1979-04-30', '2015-03-16', NULL, NULL, NULL),
  ('462811', 'West Branch Buffalo Creek', 'Stream', 'Iowa', 'IA', 'Buchanan', 'Oelwein SE', 42.5605401, -91.7568321, ST_GeomFromText('POINT(42.5605401 -91.7568321)', 4326), 42.6866502, -91.8482229, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462813', 'West Branch Floyd River', 'Stream', 'Iowa', 'IA', 'Plymouth', 'Union Center NW', 42.7241577, -96.2416911, ST_GeomFromText('POINT(42.7241577 -96.2416911)', 4326), 43.2235897, -96.0272425, '1979-04-30', '2018-07-31', NULL, NULL, NULL),
  ('462814', 'West Branch Iowa River', 'Stream', 'Iowa', 'IA', 'Wright', 'Belmond', 42.860524, -93.6138214, ST_GeomFromText('POINT(42.860524 -93.6138214)', 4326), 43.2257915, -93.7888321, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462815', 'West Branch Little Sioux River', 'Stream', 'Iowa', 'IA', 'Dickinson', 'Lake Park', 43.4388532, -95.2794436, ST_GeomFromText('POINT(43.4388532 -95.2794436)', 4326), 43.457743, -95.4191703, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462816', 'West Branch Mill Creek', 'Stream', 'Iowa', 'IA', 'O''Brien', 'Primghar', 43.0819231, -95.6927891, ST_GeomFromText('POINT(43.0819231 -95.6927891)', 4326), 43.1347002, -95.7269575, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('462817', 'West Branch One Hundred and Two River', 'Stream', 'Iowa', 'IA', 'Taylor', 'Ladoga', 40.7199884, -94.856085, ST_GeomFromText('POINT(40.7199884 -94.856085)', 4326), 40.9863759, -94.6446915, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462818', 'West Branch Panther Creek', 'Stream', 'Iowa', 'IA', 'Dallas', 'Panther', 41.6549876, -94.1116232, ST_GeomFromText('POINT(41.6549876 -94.1116232)', 4326), 41.7463756, -94.1974603, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462819', 'West Branch Perry Creek', 'Stream', 'Iowa', 'IA', 'Plymouth', 'Sioux City North', 42.5702715, -96.3972509, ST_GeomFromText('POINT(42.5702715 -96.3972509)', 4326), 42.6763819, -96.409473, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462820', 'West Branch Pine Creek', 'Stream', 'Iowa', 'IA', 'Buchanan', 'Oelwein SE', 42.542485, -91.8218348, ST_GeomFromText('POINT(42.542485 -91.8218348)', 4326), 42.6041667, -91.8269444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462821', 'West Branch Roberts Creek', 'Stream', 'Iowa', 'IA', 'Fayette', 'Postville', 43.0458143, -91.5495898, ST_GeomFromText('POINT(43.0458143 -91.5495898)', 4326), 43.0569444, -91.6058333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462822', 'West Branch South Cedar Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Garnavillo', 42.8227654, -91.2454092, ST_GeomFromText('POINT(42.8227654 -91.2454092)', 4326), 42.8905421, -91.2640208, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462823', 'West Branch Sugar Creek', 'Stream', 'Iowa', 'IA', 'Lee', 'Donnellson', 40.6969811, -91.5148784, ST_GeomFromText('POINT(40.6969811 -91.5148784)', 4326), 40.7438889, -91.6158333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462824', 'West Branch Turkey River', 'Stream', 'Iowa', 'IA', 'Howard', 'Cresco SW', 43.3674681, -92.2135022, ST_GeomFromText('POINT(43.3674681 -92.2135022)', 4326), 43.3896897, -92.3285051, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462825', 'West Branch Wapsinonoc Creek', 'Stream', 'Iowa', 'IA', 'Muscatine', 'West Liberty', 41.5480792, -91.2621022, ST_GeomFromText('POINT(41.5480792 -91.2621022)', 4326), 41.7144628, -91.3726651, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462826', 'West Buck Creek', 'Stream', 'Iowa', 'IA', 'Poweshiek', 'Searsboro', 41.5730546, -92.6451897, ST_GeomFromText('POINT(41.5730546 -92.6451897)', 4326), 41.6269417, -92.6701899, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('462828', 'West Buttrick Creek', 'Stream', 'Iowa', 'IA', 'Greene', 'Jefferson East', 42.0499814, -94.2807982, ST_GeomFromText('POINT(42.0499814 -94.2807982)', 4326), 42.3821962, -94.3063554, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462829', 'West Cedar Creek', 'Stream', 'Iowa', 'IA', 'Calhoun', 'Lohrville', 42.296647, -94.5016406, ST_GeomFromText('POINT(42.296647 -94.5016406)', 4326), 42.4997, -94.5394199, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462843', 'West Fork Battle Creek', 'Stream', 'Iowa', 'IA', 'Ida', 'Holstein', 42.4013763, -95.5755584, ST_GeomFromText('POINT(42.4013763 -95.5755584)', 4326), 42.3952658, -95.6502824, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462844', 'West Fork Big Creek', 'Stream', 'Missouri', 'MO', 'Harrison', 'Bethany', 40.2663896, -94.052453, ST_GeomFromText('POINT(40.2663896 -94.052453)', 4326), 40.6969411, -94.0110611, '1980-10-24', NULL, NULL, NULL, NULL),
  ('462845', 'West Fork Camp Creek', 'Stream', 'Iowa', 'IA', 'Calhoun', 'Yetter', 42.3680369, -94.8349843, ST_GeomFromText('POINT(42.3680369 -94.8349843)', 4326), 42.5446998, -94.6949801, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462846', 'West Fork Cedar River', 'Stream', 'Iowa', 'IA', 'Black Hawk', 'Cedar Falls', 42.613038, -92.4951874, ST_GeomFromText('POINT(42.613038 -92.4951874)', 4326), 42.9388561, -93.2082579, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462850', 'West Fork Crooked Creek', 'Stream', 'Iowa', 'IA', 'Washington', 'Crawfordsville', 41.2033542, -91.6098856, ST_GeomFromText('POINT(41.2033542 -91.6098856)', 4326), 41.4369552, -92.013232, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462852', 'West Fork Little Sioux River', 'Stream', 'Iowa', 'IA', 'Monona', 'Hornick', 42.162212, -96.0972386, ST_GeomFromText('POINT(42.162212 -96.0972386)', 4326), 42.8652632, -95.797513, '1979-04-30', '2018-07-31', NULL, NULL, NULL),
  ('462853', 'West Fork Little Sioux River', 'Stream', 'Iowa', 'IA', 'Dickinson', 'Lake Park', 43.4135756, -95.2513873, ST_GeomFromText('POINT(43.4135756 -95.2513873)', 4326), 43.5482966, -95.3919466, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462854', 'West Fork Locust Creek', 'Stream', 'Iowa', 'IA', 'Wayne', 'Saint John', 40.6188989, -93.1596534, ST_GeomFromText('POINT(40.6188989 -93.1596534)', 4326), 40.6355635, -93.2571561, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('462855', 'West Fork Medicine Creek', 'Stream', 'Missouri', 'MO', 'Putnam', 'Powersville', 40.526121, -93.3018808, ST_GeomFromText('POINT(40.526121 -93.3018808)', 4326), 40.6680627, -93.4302155, '1980-10-24', NULL, NULL, NULL, NULL),
  ('462856', 'West Fork Middle Nodaway River', 'Stream', 'Iowa', 'IA', 'Adair', 'Bridgewater', 41.1705427, -94.652194, ST_GeomFromText('POINT(41.1705427 -94.652194)', 4326), 41.480265, -94.6208074, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462857', 'West Fork One Hundred and Two River', 'Stream', 'Missouri', 'MO', 'Nodaway', 'Hopkins', 40.53748, -94.84634, ST_GeomFromText('POINT(40.53748 -94.84634)', 4326), 40.98981, -94.6634, '1979-04-30', '2011-11-07', NULL, NULL, NULL),
  ('462858', 'West Fork West Nishnabotna River', 'Stream', 'Iowa', 'IA', 'Shelby', 'Harlan', 41.6597105, -95.3016646, ST_GeomFromText('POINT(41.6597105 -95.3016646)', 4326), 42.0255417, -95.1091595, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462861', 'West Goose Lake', 'Lake', 'Iowa', 'IA', 'Jones', 'Oxford Junction', 41.9838974, -90.9833821, ST_GeomFromText('POINT(41.9838974 -90.9833821)', 4326), NULL, NULL, '1979-04-30', '2018-06-07', NULL, NULL, NULL),
  ('462867', 'West Hoosier Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Ely', 41.8147326, -91.5873957, ST_GeomFromText('POINT(41.8147326 -91.5873957)', 4326), 41.8625068, -91.6687875, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462869', 'West Indian Creek', 'Stream', 'Iowa', 'IA', 'Story', 'Maxwell', 41.9208211, -93.4196553, ST_GeomFromText('POINT(41.9208211 -93.4196553)', 4326), 42.1033198, -93.4868792, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462871', 'West Jackson Creek', 'Stream', 'Iowa', 'IA', 'Wayne', 'Seymour West', 40.7486173, -93.219376, ST_GeomFromText('POINT(40.7486173 -93.219376)', 4326), 40.7144508, -93.3716024, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462874', 'West Lake', 'Lake', 'Iowa', 'IA', 'Des Moines', 'West Burlington', 40.8335722, -91.1517974, ST_GeomFromText('POINT(40.8335722 -91.1517974)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('462875', 'West Lake', 'Reservoir', 'Iowa', 'IA', 'Clarke', 'Osceola', 41.0333766, -93.8061475, ST_GeomFromText('POINT(41.0333766 -93.8061475)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('462883', 'West Long Creek', 'Stream', 'Iowa', 'IA', 'Clarke', 'Lorimor South', 41.0077706, -94.0141152, ST_GeomFromText('POINT(41.0077706 -94.0141152)', 4326), 41.0027713, -93.9727252, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462884', 'West Long Creek', 'Stream', 'Iowa', 'IA', 'Clarke', 'Hopeville', 40.9044404, -93.9096685, ST_GeomFromText('POINT(40.9044404 -93.9096685)', 4326), 40.9936111, -93.9680556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462887', 'West Mill Creek', 'Stream', 'Missouri', 'MO', 'Nodaway', 'Blanchard', 40.5686046, -95.1444228, ST_GeomFromText('POINT(40.5686046 -95.1444228)', 4326), 40.7333252, -95.0919251, '1979-04-30', '2012-01-19', 'Official', 'Board Decision', '1977-01-01'),
  ('462889', 'West Mud Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Moville', 42.4944366, -96.0997425, ST_GeomFromText('POINT(42.4944366 -96.0997425)', 4326), 42.5336033, -96.1391885, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462890', 'West Nishnabotna River', 'Stream', 'Iowa', 'IA', 'Fremont', 'Riverton', 40.652501, -95.6236041, ST_GeomFromText('POINT(40.652501 -95.6236041)', 4326), 42.0183193, -95.0955481, '1979-04-30', '2013-12-10', NULL, NULL, NULL),
  ('462891', 'West Nodaway River', 'Stream', 'Iowa', 'IA', 'Page', 'Clarinda South', 40.6349908, -95.0191439, ST_GeomFromText('POINT(40.6349908 -95.0191439)', 4326), 41.3572093, -94.7155321, '1979-04-30', '2014-04-07', NULL, NULL, NULL),
  ('462893', 'West Okoboji Lake', 'Lake', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.3844078, -95.1594407, ST_GeomFromText('POINT(43.3844078 -95.1594407)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462895', 'West Otter Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Cedar Rapids North', 42.1063847, -91.7157336, ST_GeomFromText('POINT(42.1063847 -91.7157336)', 4326), 42.2661019, -91.7357294, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462896', 'West Otter Creek', 'Stream', 'Iowa', 'IA', 'Wright', 'Kanawha SE', 42.8283028, -93.8346647, ST_GeomFromText('POINT(42.8283028 -93.8346647)', 4326), 43.0007977, -93.7538284, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462899', 'West Platte River', 'Stream', 'Iowa', 'IA', 'Adams', 'Kent', 40.9791549, -94.4944074, ST_GeomFromText('POINT(40.9791549 -94.4944074)', 4326), 41.0833218, -94.437184, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('462906', 'West Rat Creek', 'Stream', 'Iowa', 'IA', 'Lyon', 'George East', 43.2985857, -95.9158522, ST_GeomFromText('POINT(43.2985857 -95.9158522)', 4326), 43.3744153, -95.8291842, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462909', 'West Rock Creek', 'Stream', 'Iowa', 'IA', 'Cedar', 'Tipton West', 41.8377957, -91.1623805, ST_GeomFromText('POINT(41.8377957 -91.1623805)', 4326), 41.8986243, -91.258218, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462918', 'West Tarkio Creek', 'Stream', 'Missouri', 'MO', 'Atchison', 'Tarkio East', 40.4333316, -95.3702584, ST_GeomFromText('POINT(40.4333316 -95.3702584)', 4326), 41.0516582, -95.1383227, '1980-10-24', NULL, 'Official', 'Board Decision', '1939-01-01'),
  ('462919', 'West Twin Lake', 'Lake', 'Iowa', 'IA', 'Hancock', 'Olaf', 42.9368704, -93.7330929, ST_GeomFromText('POINT(42.9368704 -93.7330929)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('462927', 'West Walnut Creek', 'Stream', 'Iowa', 'IA', 'Washington', 'Brighton', 41.2172385, -91.7726696, ST_GeomFromText('POINT(41.2172385 -91.7726696)', 4326), 41.273904, -91.7885036, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462929', 'West Wolf Creek', 'Stream', 'Iowa', 'IA', 'Union', 'Lorimor South', 41.0963801, -94.1118958, ST_GeomFromText('POINT(41.0963801 -94.1118958)', 4326), 41.1561021, -94.0949514, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462934', 'Western Pond', 'Lake', 'Iowa', 'IA', 'Jackson', 'Green Island', 42.1923822, -90.3595682, ST_GeomFromText('POINT(42.1923822 -90.3595682)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('462938', 'Westfield Creek', 'Stream', 'Iowa', 'IA', 'Plymouth', 'Akron', 42.7547179, -96.6192013, ST_GeomFromText('POINT(42.7547179 -96.6192013)', 4326), 42.8274914, -96.4500293, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462941', 'Whislers Branch', 'Stream', 'Iowa', 'IA', 'Cass', 'Grant', 41.2038775, -94.8919275, ST_GeomFromText('POINT(41.2038775 -94.8919275)', 4326), 41.2585991, -94.8338699, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462958', 'Wexford Creek', 'Stream', 'Iowa', 'IA', 'Allamakee', 'Ferryville', 43.2505346, -91.0979066, ST_GeomFromText('POINT(43.2505346 -91.0979066)', 4326), 43.2649785, -91.2240198, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('462959', 'Wharam Creek', 'Stream', 'Iowa', 'IA', 'Cerro Gordo', 'Mason City', 43.1957931, -93.2243706, ST_GeomFromText('POINT(43.1957931 -93.2243706)', 4326), 43.313012, -93.3246504, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462963', 'Wheeler Creek', 'Stream', 'Iowa', 'IA', 'Crawford', 'Boyer', 42.1783192, -95.2308276, ST_GeomFromText('POINT(42.1783192 -95.2308276)', 4326), 42.2802627, -95.231105, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462967', 'Whiskey Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Hornick', 42.2294351, -96.116129, ST_GeomFromText('POINT(42.2294351 -96.116129)', 4326), 42.2658244, -96.1272411, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462968', 'Whiskey Creek', 'Stream', 'Iowa', 'IA', 'Floyd', 'Rockford', 43.0613588, -92.9546415, ST_GeomFromText('POINT(43.0613588 -92.9546415)', 4326), 43.1238889, -92.9322222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462969', 'Whiskey Creek', 'Stream', 'Iowa', 'IA', 'O''Brien', 'Paullina', 42.9113723, -95.7283445, ST_GeomFromText('POINT(42.9113723 -95.7283445)', 4326), 42.9074843, -95.7725122, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462970', 'Whiskey Creek', 'Stream', 'Iowa', 'IA', 'O''Brien', 'Paullina', 42.9310936, -95.7030661, ST_GeomFromText('POINT(42.9310936 -95.7030661)', 4326), 42.8635954, -95.7300113, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462971', 'Whiskey Run', 'Stream', 'Iowa', 'IA', 'Washington', 'Ainsworth', 41.3677991, -91.5126613, ST_GeomFromText('POINT(41.3677991 -91.5126613)', 4326), 41.3597222, -91.6166667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462972', 'Whisky Creek', 'Stream', 'Iowa', 'IA', 'Plymouth', 'Fielding', 42.6558222, -95.8658475, ST_GeomFromText('POINT(42.6558222 -95.8658475)', 4326), 42.8699856, -95.8105689, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462973', 'Whisky Run', 'Stream', 'Iowa', 'IA', 'Louisa', 'Letts', 41.3191951, -91.1515392, ST_GeomFromText('POINT(41.3191951 -91.1515392)', 4326), 41.3272222, -91.1980556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462974', 'White Ash Branch', 'Stream', 'Iowa', 'IA', 'Monroe', 'Avery', 41.0486214, -92.6582475, ST_GeomFromText('POINT(41.0486214 -92.6582475)', 4326), 41.0527863, -92.7526946, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('462975', 'White Breast Creek', 'Stream', 'Iowa', 'IA', 'Marion', 'Otley', 41.3952736, -93.0385346, ST_GeomFromText('POINT(41.3952736 -93.0385346)', 4326), 41.0291612, -93.8924454, '1979-04-30', '2018-07-31', NULL, NULL, NULL),
  ('462980', 'White Fox Creek', 'Stream', 'Iowa', 'IA', 'Hamilton', 'Webster City', 42.4746962, -93.8110537, ST_GeomFromText('POINT(42.4746962 -93.8110537)', 4326), 42.8158031, -93.6999355, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462989', 'White Oak Creek', 'Stream', 'Iowa', 'IA', 'Van Buren', 'Bonaparte', 40.6358671, -91.7957227, ST_GeomFromText('POINT(40.6358671 -91.7957227)', 4326), 40.6691979, -91.8896148, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462990', 'White Oak Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Des Moines NE', 41.705544, -93.5032696, ST_GeomFromText('POINT(41.705544 -93.5032696)', 4326), 41.7735989, -93.5954953, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462991', 'White Oak Creek', 'Stream', 'Iowa', 'IA', 'Jones', 'Stanwood', 41.9852875, -91.2437729, ST_GeomFromText('POINT(41.9852875 -91.2437729)', 4326), 41.9502864, -91.3382223, '1979-04-30', NULL, NULL, NULL, NULL),
  ('462996', 'White Pine Hollow', 'Valley', 'Iowa', 'IA', 'Clayton', 'Colesburg', 42.6558564, -91.1321108, ST_GeomFromText('POINT(42.6558564 -91.1321108)', 4326), 42.6253155, -91.1045251, '1979-04-30', '2023-09-30', NULL, NULL, NULL),
  ('463005', 'Whitewater Canyon', 'Valley', 'Iowa', 'IA', 'Jones', 'Fillmore', 42.2781533, -90.9286457, ST_GeomFromText('POINT(42.2781533 -90.9286457)', 4326), 42.3051179, -90.9108458, '1979-04-30', '2023-10-06', NULL, NULL, NULL),
  ('463006', 'Whitewater Creek', 'Stream', 'Iowa', 'IA', 'Jones', 'Fillmore', 42.2777849, -90.9443047, ST_GeomFromText('POINT(42.2777849 -90.9443047)', 4326), 42.4311153, -90.81013, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463012', 'Whitney Creek', 'Stream', 'Iowa', 'IA', 'Lyon', 'George East', 43.3516394, -95.9458532, ST_GeomFromText('POINT(43.3516394 -95.9458532)', 4326), 43.4021921, -95.8400178, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463026', 'Wiese Slough', 'Reservoir', 'Iowa', 'IA', 'Muscatine', 'Atalissa', 41.5479818, -91.1366596, ST_GeomFromText('POINT(41.5479818 -91.1366596)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('463030', 'Wildcat Bluff', 'Cliff', 'Iowa', 'IA', 'Benton', 'Center Point NW', 42.1919382, -91.8865674, ST_GeomFromText('POINT(42.1919382 -91.8865674)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463033', 'Wildcat Creek', 'Stream', 'Iowa', 'IA', 'Marion', 'Knoxville NW', 41.4361042, -93.1615933, ST_GeomFromText('POINT(41.4361042 -93.1615933)', 4326), 41.4069368, -93.271041, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463034', 'Wildcat Creek', 'Stream', 'Iowa', 'IA', 'Marion', 'Otley', 41.417773, -93.0485346, ST_GeomFromText('POINT(41.417773 -93.0485346)', 4326), 41.4927778, -93.0775, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463035', 'Wildcat Creek', 'Stream', 'Iowa', 'IA', 'Benton', 'Center Point SW', 42.1088852, -91.9149023, ST_GeomFromText('POINT(42.1088852 -91.9149023)', 4326), 42.0138869, -92.0696268, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463036', 'Wildcat Creek', 'Stream', 'Iowa', 'IA', 'Marion', 'Melcher-Dallas', 41.1708312, -93.2152073, ST_GeomFromText('POINT(41.1708312 -93.2152073)', 4326), 41.1341646, -93.2699308, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463050', 'Willey Branch', 'Stream', 'Iowa', 'IA', 'Carroll', 'Dedham', 41.969986, -94.775816, ST_GeomFromText('POINT(41.969986 -94.775816)', 4326), 41.9885968, -94.8777641, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463055', 'Williams Creek', 'Stream', 'Iowa', 'IA', 'Cass', 'Grant', 41.1602672, -94.9583188, ST_GeomFromText('POINT(41.1602672 -94.9583188)', 4326), 41.2094313, -94.7230309, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463056', 'Williams Creek', 'Stream', 'Iowa', 'IA', 'Allamakee', 'Rossville', 43.1441466, -91.4354166, ST_GeomFromText('POINT(43.1441466 -91.4354166)', 4326), 43.0910908, -91.5651456, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463057', 'Williams Creek', 'Stream', 'Iowa', 'IA', 'Washington', 'Wayland', 41.1744638, -91.6951665, ST_GeomFromText('POINT(41.1744638 -91.6951665)', 4326), 41.1355797, -91.5679394, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463058', 'Williams Creek', 'Stream', 'Iowa', 'IA', 'Clinton', 'Goose Lake', 41.9564148, -90.4976335, ST_GeomFromText('POINT(41.9564148 -90.4976335)', 4326), 41.9339145, -90.5551354, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('463060', 'Williams Lake', 'Lake', 'Iowa', 'IA', 'Linn', 'Center Point', 42.1350676, -91.7755457, ST_GeomFromText('POINT(42.1350676 -91.7755457)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL),
  ('463068', 'Willow Brook', 'Stream', 'Iowa', 'IA', 'Benton', 'Ladora', 41.8705549, -92.1990723, ST_GeomFromText('POINT(41.8705549 -92.1990723)', 4326), 41.8966657, -92.1810166, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463069', 'Willow Brook', 'Stream', 'Iowa', 'IA', 'Clinton', 'Clinton NW', 41.8750285, -90.1742934, ST_GeomFromText('POINT(41.8750285 -90.1742934)', 4326), 41.8747507, -90.1767934, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463072', 'Willow Creek', 'Stream', 'Iowa', 'IA', 'Adams', 'Corning South', 40.9172091, -94.6763589, ST_GeomFromText('POINT(40.9172091 -94.6763589)', 4326), 40.9402778, -94.6355556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463073', 'Willow Creek', 'Stream', 'Iowa', 'IA', 'Monona', 'Mapleton', 42.1766562, -95.8141737, ST_GeomFromText('POINT(42.1766562 -95.8141737)', 4326), 42.2244444, -95.8372222, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463074', 'Willow Creek', 'Stream', 'Iowa', 'IA', 'Worth', 'Fertile SE', 43.2560673, -93.3529839, ST_GeomFromText('POINT(43.2560673 -93.3529839)', 4326), 43.3719444, -93.3716667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463075', 'Willow Creek', 'Stream', 'Iowa', 'IA', 'Harrison', 'Missouri Valley', 41.5224929, -95.9027885, ST_GeomFromText('POINT(41.5224929 -95.9027885)', 4326), 42.0160999, -95.5577799, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463076', 'Willow Creek', 'Stream', 'Iowa', 'IA', 'Crawford', 'Dow City', 41.9622105, -95.4297218, ST_GeomFromText('POINT(41.9622105 -95.4297218)', 4326), 42.036655, -95.423888, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463077', 'Willow Creek', 'Stream', 'Iowa', 'IA', 'Greene', 'Bayard', 41.8055415, -94.5541405, ST_GeomFromText('POINT(41.8055415 -94.5541405)', 4326), 42.056374, -94.7105361, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463078', 'Willow Creek', 'Stream', 'Iowa', 'IA', 'Marshall', 'Rhodes', 41.8966548, -93.2102037, ST_GeomFromText('POINT(41.8966548 -93.2102037)', 4326), 41.9213767, -93.2868728, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('463079', 'Willow Creek', 'Stream', 'Iowa', 'IA', 'Crawford', 'Defiance', 41.8158209, -95.3413873, ST_GeomFromText('POINT(41.8158209 -95.3413873)', 4326), 41.9155432, -95.2922192, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463080', 'Willow Creek', 'Stream', 'Iowa', 'IA', 'Clinton', 'Goose Lake', 41.9633592, -90.4656885, ST_GeomFromText('POINT(41.9633592 -90.4656885)', 4326), 41.9903026, -90.5162447, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463081', 'Willow Creek', 'Stream', 'Iowa', 'IA', 'Iowa', 'Middle Amana', 41.843338, -91.9240683, ST_GeomFromText('POINT(41.843338 -91.9240683)', 4326), 41.8783369, -91.9196242, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463082', 'Willow Creek', 'Stream', 'Iowa', 'IA', 'Sioux', 'Hospers', 43.0780379, -95.9058497, ST_GeomFromText('POINT(43.0780379 -95.9058497)', 4326), 43.0147048, -95.7911237, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463083', 'Willow Creek', 'Stream', 'Iowa', 'IA', 'Plymouth', 'Le Mars', 42.804712, -96.1686333, ST_GeomFromText('POINT(42.804712 -96.1686333)', 4326), 43.0060949, -95.8483473, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463084', 'Willow Creek', 'Stream', 'Iowa', 'IA', 'O''Brien', 'Paullina', 42.8974818, -95.6400091, ST_GeomFromText('POINT(42.8974818 -95.6400091)', 4326), 43.0183302, -97.5372865, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463085', 'Willow Creek', 'Stream', 'Iowa', 'IA', 'Cherokee', 'Washta', 42.5869316, -95.7205646, ST_GeomFromText('POINT(42.5869316 -95.7205646)', 4326), 42.813874, -95.7227891, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463086', 'Willow Creek', 'Stream', 'Iowa', 'IA', 'Mitchell', 'Osage SW', 43.3691339, -92.9351963, ST_GeomFromText('POINT(43.3691339 -92.9351963)', 4326), 43.3857984, -93.0185318, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463087', 'Willow Creek', 'Stream', 'Iowa', 'IA', 'Cerro Gordo', 'Mason City', 43.1563512, -93.1838143, ST_GeomFromText('POINT(43.1563512 -93.1838143)', 4326), 43.1694022, -93.4629851, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463088', 'Willow Creek', 'Stream', 'Iowa', 'IA', 'Grundy', 'Zaneta', 42.3813744, -92.552137, ST_GeomFromText('POINT(42.3813744 -92.552137)', 4326), 42.3894287, -92.6357508, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('463106', 'Wilson Island', 'Island', 'Iowa', 'IA', 'Pottawattamie', 'Fort Calhoun', 41.4869386, -96.0091792, ST_GeomFromText('POINT(41.4869386 -96.0091792)', 4326), NULL, NULL, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463112', 'Wilson Lake', 'Lake', 'Iowa', 'IA', 'Lee', 'West Point', 40.6434343, -91.4895626, ST_GeomFromText('POINT(40.6434343 -91.4895626)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('463113', 'Wilson Lake', 'Lake', 'Iowa', 'IA', 'Taylor', 'Merle Junction', 40.8370569, -94.5434671, ST_GeomFromText('POINT(40.8370569 -94.5434671)', 4326), NULL, NULL, '1979-04-30', '2020-08-27', NULL, NULL, NULL),
  ('463120', 'Winans Creek', 'Stream', 'Iowa', 'IA', 'Worth', 'Fertile', 43.2580116, -93.3793733, ST_GeomFromText('POINT(43.2580116 -93.3793733)', 4326), 43.3616667, -93.4005556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463125', 'Windmill Lake', 'Reservoir', 'Iowa', 'IA', 'Taylor', 'Ladoga', 40.7294423, -94.8262903, ST_GeomFromText('POINT(40.7294423 -94.8262903)', 4326), NULL, NULL, '1979-04-30', '2020-08-27', NULL, NULL, NULL),
  ('463131', 'Winn Branch', 'Stream', 'Iowa', 'IA', 'Warren', 'Newbern', 41.2061076, -93.3282655, ST_GeomFromText('POINT(41.2061076 -93.3282655)', 4326), 41.1627778, -93.31, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463134', 'Winnebago River', 'Stream', 'Iowa', 'IA', 'Floyd', 'Rockford', 43.0416368, -92.9418631, ST_GeomFromText('POINT(43.0416368 -92.9418631)', 4326), 43.3666218, -93.6252157, '1979-04-30', '2018-07-31', 'Official', 'Board Decision', '1961-01-01'),
  ('463142', 'Wire Lake (historical)', 'Lake', 'Iowa', 'IA', 'Jasper', 'Monroe', 41.601693, -93.062567, ST_GeomFromText('POINT(41.601693 -93.062567)', 4326), NULL, NULL, '1979-04-30', '2024-10-03', NULL, NULL, NULL),
  ('463146', 'Wisniewski Pond', 'Lake', 'Iowa', 'IA', 'Johnson', 'Swisher', 41.7832993, -91.718699, ST_GeomFromText('POINT(41.7832993 -91.718699)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('463152', 'Wolf Branch', 'Stream', 'Iowa', 'IA', 'Appanoose', 'Mystic', 40.7930652, -92.9846463, ST_GeomFromText('POINT(40.7930652 -92.9846463)', 4326), 40.7838976, -93.0443705, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('463153', 'Wolf Creek', 'Stream', 'Missouri', 'MO', 'Harrison', 'Pawnee', 40.51014, -94.0486, ST_GeomFromText('POINT(40.51014 -94.0486)', 4326), 40.65212, -94.0897, '1979-04-30', '2011-11-02', NULL, NULL, NULL),
  ('463154', 'Wolf Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Polk City', 41.7816541, -93.7146664, ST_GeomFromText('POINT(41.7816541 -93.7146664)', 4326), 41.8302778, -93.68, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463155', 'Wolf Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Garber', 42.7260992, -91.2895783, ST_GeomFromText('POINT(42.7260992 -91.2895783)', 4326), 42.6833333, -91.3166667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463156', 'Wolf Creek', 'Stream', 'Iowa', 'IA', 'Clayton', 'Volga', 42.8102615, -91.5256994, ST_GeomFromText('POINT(42.8102615 -91.5256994)', 4326), 42.8527778, -91.5108333, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463157', 'Wolf Creek', 'Stream', 'Iowa', 'IA', 'O''Brien', 'Sheldon', 43.1958111, -95.8589057, ST_GeomFromText('POINT(43.1958111 -95.8589057)', 4326), 43.2436111, -95.8044444, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463159', 'Wolf Creek', 'Stream', 'Iowa', 'IA', 'Union', 'Lorimor South', 41.0913801, -94.1174514, ST_GeomFromText('POINT(41.0913801 -94.1174514)', 4326), 41.1319358, -94.070784, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463160', 'Wolf Creek', 'Stream', 'Iowa', 'IA', 'Jefferson', 'Lockridge East', 40.9600264, -91.6826646, ST_GeomFromText('POINT(40.9600264 -91.6826646)', 4326), 41.0122436, -91.8726704, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463161', 'Wolf Creek', 'Stream', 'Iowa', 'IA', 'Woodbury', 'Hornick', 42.2124904, -96.0450142, ST_GeomFromText('POINT(42.2124904 -96.0450142)', 4326), 42.526657, -95.9161254, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463162', 'Wolf Creek', 'Stream', 'Iowa', 'IA', 'Black Hawk', 'La Porte City', 42.3236021, -92.1462929, ST_GeomFromText('POINT(42.3236021 -92.1462929)', 4326), 42.3344279, -92.8702003, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463163', 'Wolf Creek', 'Stream', 'Iowa', 'IA', 'Tama', 'Elberon', 42.0038828, -92.3485208, ST_GeomFromText('POINT(42.0038828 -92.3485208)', 4326), 42.0280475, -92.4760239, '1979-04-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('463164', 'Wolf Creek', 'Stream', 'Iowa', 'IA', 'Jasper', 'Mingo', 41.8138769, -93.3177072, ST_GeomFromText('POINT(41.8138769 -93.3177072)', 4326), 41.9163767, -93.3332634, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463165', 'Wolf Creek', 'Stream', 'Iowa', 'IA', 'Wapello', 'Farson', 41.0727933, -92.2587928, ST_GeomFromText('POINT(41.0727933 -92.2587928)', 4326), 41.1616803, -92.3085167, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463166', 'Wolf Creek', 'Stream', 'Iowa', 'IA', 'Ringgold', 'Diagonal', 40.7527685, -94.3507907, ST_GeomFromText('POINT(40.7527685 -94.3507907)', 4326), 40.7977679, -94.3780138, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463167', 'Wolf Creek', 'Stream', 'Iowa', 'IA', 'Lucas', 'Corydon NE', 40.9488901, -93.2671534, ST_GeomFromText('POINT(40.9488901 -93.2671534)', 4326), 40.8775026, -93.4810477, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463168', 'Wolf Creek', 'Stream', 'Iowa', 'IA', 'Warren', 'Newbern', 41.2147186, -93.3213209, ST_GeomFromText('POINT(41.2147186 -93.3213209)', 4326), 41.1936073, -93.4907692, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463169', 'Wolf Hill', 'Summit', 'Iowa', 'IA', 'Delaware', 'Dundee', 42.5871929, -91.5366818, ST_GeomFromText('POINT(42.5871929 -91.5366818)', 4326), NULL, NULL, '1979-04-30', '2023-09-29', NULL, NULL, NULL),
  ('463171', 'Wolf Lake', 'Reservoir', 'Iowa', 'IA', 'Marshall', 'Laurel', 41.9929811, -92.8863605, ST_GeomFromText('POINT(41.9929811 -92.8863605)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('463172', 'Wolf Run', 'Stream', 'Iowa', 'IA', 'Page', 'Clarinda North', 40.8736009, -95.0038705, ST_GeomFromText('POINT(40.8736009 -95.0038705)', 4326), 40.9094335, -94.9533139, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463175', 'Wonder Creek', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Fort Atkinson', 43.1994164, -91.9473854, ST_GeomFromText('POINT(43.1994164 -91.9473854)', 4326), 43.1846938, -92.0654457, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463178', 'Wood Duck Slough', 'Lake', 'Iowa', 'IA', 'Clayton', 'Cassville', 42.6956304, -90.9882696, ST_GeomFromText('POINT(42.6956304 -90.9882696)', 4326), NULL, NULL, '1979-04-30', '2018-06-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('463201', 'Woodward Glen', 'Valley', 'Iowa', 'IA', 'Monona', 'Smithland', 42.1664795, -95.9952686, ST_GeomFromText('POINT(42.1664795 -95.9952686)', 4326), 42.1909315, -95.9963723, '1979-04-30', '2023-10-11', NULL, NULL, NULL),
  ('463207', 'Worrell Creek', 'Stream', 'Iowa', 'IA', 'Story', 'Ames East', 42.0155418, -93.6221626, ST_GeomFromText('POINT(42.0155418 -93.6221626)', 4326), 42.0299842, -93.7916132, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463227', 'Wyoming Slough', 'Stream', 'Iowa', 'IA', 'Muscatine', 'Illinois City', 41.440029, -90.9940374, ST_GeomFromText('POINT(41.440029 -90.9940374)', 4326), 41.4308333, -90.9341667, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463237', 'Yeader Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Des Moines SE', 41.5516564, -93.5279925, ST_GeomFromText('POINT(41.5516564 -93.5279925)', 4326), 41.5316565, -93.6410517, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463239', 'Yeager Creek', 'Stream', 'Iowa', 'IA', 'Jackson', 'Bellevue', 42.3311231, -90.4306838, ST_GeomFromText('POINT(42.3311231 -90.4306838)', 4326), 42.3241667, -90.4855556, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463240', 'Yeager Lake', 'Lake', 'Iowa', 'IA', 'Des Moines', 'Burlington', 40.8323661, -91.0938416, ST_GeomFromText('POINT(40.8323661 -91.0938416)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('463241', 'Yellow River', 'Stream', 'Iowa', 'IA', 'Allamakee', 'Prairie du Chien', 43.0866497, -91.1809633, ST_GeomFromText('POINT(43.0866497 -91.1809633)', 4326), 43.165253, -91.7734886, '1979-04-30', '2013-12-10', NULL, NULL, NULL),
  ('463243', 'Yellow Spring Creek', 'Stream', 'Iowa', 'IA', 'Des Moines', 'Kingston', 40.8869824, -91.033477, ST_GeomFromText('POINT(40.8869824 -91.033477)', 4326), 40.9944793, -91.1807041, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463244', 'Lake Yenruogis', 'Lake', 'Iowa', 'IA', 'Keokuk', 'Keswick', 41.3786622, -92.2001755, ST_GeomFromText('POINT(41.3786622 -92.2001755)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL),
  ('463255', 'Zerbel Slough', 'Lake', 'Iowa', 'IA', 'Cerro Gordo', 'Burchinal', 43.0497623, -93.3464819, ST_GeomFromText('POINT(43.0497623 -93.3464819)', 4326), NULL, NULL, '1979-04-30', '2018-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('463256', 'Ziegler Slough', 'Stream', 'Iowa', 'IA', 'Louisa', 'Keithsburg', 41.0758683, -90.9726434, ST_GeomFromText('POINT(41.0758683 -90.9726434)', 4326), 41.1130894, -91.0290339, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463289', 'Zoar Creek', 'Stream', 'Iowa', 'IA', 'Lyon', 'George East', 43.3488618, -95.9461309, ST_GeomFromText('POINT(43.3488618 -95.9461309)', 4326), 43.3724712, -95.852518, '1979-04-30', NULL, NULL, NULL, NULL),
  ('463335', 'Crawford Creek', 'Stream', 'Iowa', 'IA', 'Ida', 'Battle Creek', 42.295822, -95.6213916, ST_GeomFromText('POINT(42.295822 -95.6213916)', 4326), 42.2458222, -95.602224, '2000-01-01', NULL, NULL, NULL, NULL),
  ('463337', 'Artesian Lake', 'Reservoir', 'Iowa', 'IA', 'Carroll', 'Lanesboro', 42.1501455, -94.6802221, ST_GeomFromText('POINT(42.1501455 -94.6802221)', 4326), NULL, NULL, '2000-01-01', '2018-06-12', NULL, NULL, NULL),
  ('463342', 'Dickson Branch', 'Stream', 'Iowa', 'IA', 'Carroll', 'Glidden', 42.1244285, -94.6797017, ST_GeomFromText('POINT(42.1244285 -94.6797017)', 4326), 42.1241667, -94.7252778, '2000-01-01', NULL, NULL, NULL, NULL),
  ('463358', 'Forneys Lake', 'Lake', 'Iowa', 'IA', 'Fremont', 'McPaul', 40.8540625, -95.7800542, ST_GeomFromText('POINT(40.8540625 -95.7800542)', 4326), NULL, NULL, '2000-01-01', '2018-06-22', NULL, NULL, NULL),
  ('463387', 'Little Maple River', 'Stream', 'Iowa', 'IA', 'Cherokee', 'Galva', 42.5677619, -95.4422236, ST_GeomFromText('POINT(42.5677619 -95.4422236)', 4326), 42.671648, -95.3088879, '2000-01-01', NULL, NULL, NULL, NULL),
  ('463396', 'Wolf Creek', 'Stream', 'Iowa', 'IA', 'Shelby', 'Elk Horn', 41.6060994, -95.1241593, ST_GeomFromText('POINT(41.6060994 -95.1241593)', 4326), 41.6952649, -95.0613798, '2000-01-01', '2009-08-10', NULL, NULL, NULL),
  ('463400', 'Goose Lake', 'Lake', 'Iowa', 'IA', 'Greene', 'Jefferson West', 42.1112467, -94.4006551, ST_GeomFromText('POINT(42.1112467 -94.4006551)', 4326), NULL, NULL, '2000-01-01', '2018-06-12', NULL, NULL, NULL),
  ('463401', 'Spring Lake', 'Lake', 'Iowa', 'IA', 'Greene', 'Jefferson East', 42.0626182, -94.2891334, ST_GeomFromText('POINT(42.0626182 -94.2891334)', 4326), NULL, NULL, '2000-01-01', '2018-06-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('463406', 'Kuder Creek', 'Stream', 'Iowa', 'IA', 'Ringgold', 'Kellerton', 40.6333305, -94.0185618, ST_GeomFromText('POINT(40.6333305 -94.0185618)', 4326), 40.7225, -94.0416667, '2000-01-01', NULL, NULL, NULL, NULL),
  ('463413', 'McFarland Lake', 'Reservoir', 'Iowa', 'IA', 'Story', 'Ames East', 42.0943747, -93.5700265, ST_GeomFromText('POINT(42.0943747 -93.5700265)', 4326), NULL, NULL, '2000-01-01', '2018-06-11', NULL, NULL, NULL),
  ('463424', 'Deception Hollow', 'Valley', 'Iowa', 'IA', 'Webster', 'Lehigh', 42.327109, -94.0197952, ST_GeomFromText('POINT(42.327109 -94.0197952)', 4326), 42.3247093, -94.0465753, '2000-01-01', '2015-09-04', NULL, NULL, NULL),
  ('463428', 'West Burr Oak Creek', 'Stream', 'Iowa', 'IA', 'Jasper', 'Alloway Creek', 41.7733244, -92.9260278, ST_GeomFromText('POINT(41.7733244 -92.9260278)', 4326), 41.7733244, -92.9260278, '2000-01-01', NULL, NULL, NULL, NULL),
  ('463430', 'Mill Creek Lake', 'Reservoir', 'Iowa', 'IA', 'Crawford', 'Dunlap NW', 41.9799886, -95.6736161, ST_GeomFromText('POINT(41.9799886 -95.6736161)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('463434', 'Walnut Creek Lake', 'Reservoir', 'Iowa', 'IA', 'Ringgold', 'Benton', 40.6946568, -94.3291027, ST_GeomFromText('POINT(40.6946568 -94.3291027)', 4326), NULL, NULL, '2000-01-01', '2023-04-05', NULL, NULL, NULL),
  ('463436', 'Bays Branch Lake', 'Reservoir', 'Iowa', 'IA', 'Guthrie', 'Panora', 41.7182657, -94.3253703, ST_GeomFromText('POINT(41.7182657 -94.3253703)', 4326), NULL, NULL, '2000-01-01', '2018-06-12', NULL, NULL, NULL),
  ('463441', 'Roberts Creek', 'Reservoir', 'Iowa', 'IA', 'Marion', 'Otley', 41.4009842, -93.0583071, ST_GeomFromText('POINT(41.4009842 -93.0583071)', 4326), NULL, NULL, '2000-01-01', '2015-09-29', NULL, NULL, NULL),
  ('463443', 'I-280 Lake', 'Reservoir', 'Iowa', 'IA', 'Scott', 'Davenport West', 41.5215028, -90.6780896, ST_GeomFromText('POINT(41.5215028 -90.6780896)', 4326), NULL, NULL, '2000-01-01', '2023-05-23', NULL, NULL, NULL),
  ('463448', 'McDowell Lake', 'Reservoir', 'Iowa', 'IA', 'Lee', 'Lone Tree', 41.4419669, -91.4168264, ST_GeomFromText('POINT(41.4419669 -91.4168264)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('463450', 'Briggs Woods Lake', 'Reservoir', 'Iowa', 'IA', 'Hamilton', 'Lytton', 42.4399799, -94.7927607, ST_GeomFromText('POINT(42.4399799 -94.7927607)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('463454', 'Lyla Marsh', 'Reservoir', 'Iowa', 'IA', 'Howard', 'Saratoga', 43.2879895, -92.4696381, ST_GeomFromText('POINT(43.2879895 -92.4696381)', 4326), NULL, NULL, '2000-01-01', '2018-06-11', NULL, NULL, NULL),
  ('463461', 'Lake Fin-Feather', 'Reservoir', 'Iowa', 'IA', 'Cerro Gordo', 'Hanford', 43.0999635, -93.1868695, ST_GeomFromText('POINT(43.0999635 -93.1868695)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('463464', 'Eldred Sherwood Park Lake', 'Reservoir', 'Iowa', 'IA', 'Hancock', 'Goodell', 42.9409687, -93.5629187, ST_GeomFromText('POINT(42.9409687 -93.5629187)', 4326), NULL, NULL, '2000-01-01', '2018-06-11', NULL, NULL, NULL),
  ('463465', 'Split Rock Lake', 'Reservoir', 'Iowa', 'IA', 'Chickasaw', 'Fredericksburg', 42.9099783, -92.2401768, ST_GeomFromText('POINT(42.9099783 -92.2401768)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('463473', 'Upper Pine Lake', 'Reservoir', 'Iowa', 'IA', 'Hardin', 'Steamboat Rock', 42.3776487, -93.0630807, ST_GeomFromText('POINT(42.3776487 -93.0630807)', 4326), NULL, NULL, '2000-01-01', '2018-06-11', NULL, NULL, NULL),
  ('463478', 'Central Park Lake', 'Reservoir', 'Iowa', 'IA', 'Jones', 'Morley', 42.1117534, -91.1393279, ST_GeomFromText('POINT(42.1117534 -91.1393279)', 4326), NULL, NULL, '2000-01-01', '2018-06-11', NULL, NULL, NULL),
  ('463488', 'Woodland Lake', 'Reservoir', 'Iowa', 'IA', 'Polk', 'Loring', 41.7558213, -93.4488231, ST_GeomFromText('POINT(41.7558213 -93.4488231)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('463496', 'Hickory Lake', 'Reservoir', 'Iowa', 'IA', 'Polk', 'Des Moines NE', 41.7069662, -93.5564638, ST_GeomFromText('POINT(41.7069662 -93.5564638)', 4326), NULL, NULL, '2000-01-01', '2018-06-12', NULL, NULL, NULL),
  ('463498', 'Bennet Lake', 'Reservoir', 'Iowa', 'IA', 'Cedar', 'Oxford Junction', 41.9130757, -90.9193143, ST_GeomFromText('POINT(41.9130757 -90.9193143)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('463502', 'Northeast Lake', 'Reservoir', 'Iowa', 'IA', 'Scott', 'Davenport West', 41.5269334, -90.6760693, ST_GeomFromText('POINT(41.5269334 -90.6760693)', 4326), NULL, NULL, '2000-01-01', '2023-05-23', NULL, NULL, NULL),
  ('463508', 'Knoxville Pond', 'Reservoir', 'Iowa', 'IA', 'Marion', 'Knoxville', 41.3049966, -93.1235379, ST_GeomFromText('POINT(41.3049966 -93.1235379)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('463519', 'Lake Sundown', 'Reservoir', 'Iowa', 'IA', 'Appanoose', 'Unionville', 40.8367231, -92.7176171, ST_GeomFromText('POINT(40.8367231 -92.7176171)', 4326), NULL, NULL, '2000-01-01', '2018-06-12', NULL, NULL, NULL),
  ('463524', 'Bedford Water Supply Lake', 'Reservoir', 'Iowa', 'IA', 'Taylor', 'Bedford', 40.684403, -94.7147054, ST_GeomFromText('POINT(40.684403 -94.7147054)', 4326), NULL, NULL, '2000-01-01', '2020-08-27', NULL, NULL, NULL),
  ('463530', 'Stephens Forest Pond', 'Reservoir', 'Iowa', 'IA', 'Lucas', 'Lucas', 41.0188156, -93.4904136, ST_GeomFromText('POINT(41.0188156 -93.4904136)', 4326), NULL, NULL, '2000-01-01', '2018-06-12', NULL, NULL, NULL),
  ('463533', 'Bartlett Hills Lake', 'Reservoir', 'Iowa', 'IA', 'Mills', 'Moorhead', 41.9616552, -95.775285, ST_GeomFromText('POINT(41.9616552 -95.775285)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('463536', 'Camp Arrowhead Lake', 'Reservoir', 'Iowa', 'IA', 'Wapello', 'Belle Plaine', 41.9722169, -92.3371313, ST_GeomFromText('POINT(41.9722169 -92.3371313)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('463539', 'Sun Valley Lake (historical)', 'Reservoir', 'Iowa', 'IA', 'Ringgold', 'Diagonal', 40.857216, -94.3223745, ST_GeomFromText('POINT(40.857216 -94.3223745)', 4326), NULL, NULL, '2000-01-01', '2023-03-24', NULL, NULL, NULL),
  ('463540', 'Lake Meyer', 'Reservoir', 'Iowa', 'IA', 'Van Buren', 'Fort Atkinson', 43.1833063, -91.9051614, ST_GeomFromText('POINT(43.1833063 -91.9051614)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('463543', 'Shimek Forest Pond Two', 'Reservoir', 'Iowa', 'IA', 'Lee', 'Farmington', 40.6428996, -91.7120597, ST_GeomFromText('POINT(40.6428996 -91.7120597)', 4326), NULL, NULL, '2000-01-01', '2018-06-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('463545', 'Pollimer Park Lake', 'Reservoir', 'Iowa', 'IA', 'Lee', 'West Point', 40.7119016, -91.4381728, ST_GeomFromText('POINT(40.7119016 -91.4381728)', 4326), NULL, NULL, '2000-01-01', '2018-06-11', NULL, NULL, NULL),
  ('463763', 'Spring Creek', 'Stream', 'Iowa', 'IA', 'Harrison', 'Persia', 41.5661016, -95.5705603, ST_GeomFromText('POINT(41.5661016 -95.5705603)', 4326), 41.6669334, -95.543337, '2000-01-01', NULL, NULL, NULL, NULL),
  ('463778', 'Rush Lake', 'Lake', 'Iowa', 'IA', 'Osceola', 'Ocheyedan', 43.4383108, -95.5092395, ST_GeomFromText('POINT(43.4383108 -95.5092395)', 4326), NULL, NULL, '2000-01-01', '2018-06-20', NULL, NULL, NULL),
  ('463840', 'Sugar Loaf', 'Summit', 'Iowa', 'IA', 'Clayton', 'Cassville', 42.6462565, -90.964199, ST_GeomFromText('POINT(42.6462565 -90.964199)', 4326), NULL, NULL, '2000-01-01', '2023-09-29', NULL, NULL, NULL),
  ('463905', 'Sylvan Lake (historical)', 'Lake', 'Iowa', 'IA', 'Dickinson', 'Lake Park SE', 43.3588544, -95.263055, ST_GeomFromText('POINT(43.3588544 -95.263055)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('463906', 'Pillsbury Lake (historical)', 'Lake', 'Iowa', 'IA', 'Dickinson', 'Lake Park SE', 43.3380212, -95.250277, ST_GeomFromText('POINT(43.3380212 -95.250277)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('463907', 'Pratt Lake (historical)', 'Lake', 'Iowa', 'IA', 'Dickinson', 'Milford', 43.3535763, -95.2391654, ST_GeomFromText('POINT(43.3535763 -95.2391654)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('463908', 'Brockamp Creek', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Saint Lucas', 43.0985862, -91.888218, ST_GeomFromText('POINT(43.0985862 -91.888218)', 4326), 43.1527524, -91.8326585, '2000-01-01', NULL, NULL, NULL, NULL),
  ('463922', 'Larson Lake', 'Lake', 'Iowa', 'IA', 'Cherokee', 'Aurelia', 42.7286965, -95.3886485, ST_GeomFromText('POINT(42.7286965 -95.3886485)', 4326), NULL, NULL, '2000-01-01', '2018-06-20', NULL, NULL, NULL),
  ('463932', 'Lake Orient', 'Lake', 'Iowa', 'IA', 'Adair', 'Orient', 41.197765, -94.4365951, ST_GeomFromText('POINT(41.197765 -94.4365951)', 4326), NULL, NULL, '2000-01-01', '2018-06-20', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('463937', 'Lake Ahquabi', 'Lake', 'Iowa', 'IA', 'Warren', 'Indianola', 41.2899064, -93.5925306, ST_GeomFromText('POINT(41.2899064 -93.5925306)', 4326), NULL, NULL, '2000-01-01', '2018-06-12', NULL, NULL, NULL),
  ('463941', 'North Elm Creek', 'Stream', 'Iowa', 'IA', 'Madison', 'Saint Charles NW', 41.3849907, -93.8913362, ST_GeomFromText('POINT(41.3849907 -93.8913362)', 4326), 41.3908333, -93.9602778, '2000-01-01', NULL, NULL, NULL, NULL),
  ('463942', 'Orman Creek', 'Stream', 'Iowa', 'IA', 'Madison', 'Earlham East', 41.3911008, -94.0671749, ST_GeomFromText('POINT(41.3911008 -94.0671749)', 4326), 41.4083333, -94.1219444, '2000-01-01', NULL, NULL, NULL, NULL),
  ('463943', 'Wildcat Creek', 'Stream', 'Iowa', 'IA', 'Wayne', 'Corydon', 40.8033378, -93.2902107, ST_GeomFromText('POINT(40.8033378 -93.2902107)', 4326), 40.7811111, -93.3675, '2000-01-01', NULL, NULL, NULL, NULL),
  ('463945', 'Mason Creek', 'Stream', 'Iowa', 'IA', 'Cedar', 'Cedar Bluff', 41.8175161, -91.2926636, ST_GeomFromText('POINT(41.8175161 -91.2926636)', 4326), 41.8561111, -91.2741667, '2000-01-01', NULL, NULL, NULL, NULL),
  ('464000', 'Elbow Lake (historical)', 'Lake', 'Iowa', 'IA', 'Palo Alto', 'Silver Lake', 43.1166325, -94.8919306, ST_GeomFromText('POINT(43.1166325 -94.8919306)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('464001', 'Mud Lake', 'Lake', 'Iowa', 'IA', 'Clay', 'Rush Lake West', 42.931083, -94.9316537, ST_GeomFromText('POINT(42.931083 -94.9316537)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('464002', 'Swan Lake (historical)', 'Lake', 'Iowa', 'IA', 'Pocahontas', 'Laurens', 42.8710837, -94.8608186, ST_GeomFromText('POINT(42.8710837 -94.8608186)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('464003', 'Owl Lake (historical)', 'Lake', 'Iowa', 'IA', 'Humboldt', 'Hardy', 42.7624709, -94.0293972, ST_GeomFromText('POINT(42.7624709 -94.0293972)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('464004', 'Impassable Marsh (historical)', 'Swamp', 'Iowa', 'IA', 'Humboldt', 'Thor', 42.737471, -94.0405087, ST_GeomFromText('POINT(42.737471 -94.0405087)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('464005', 'Bancroft Lake (historical)', 'Lake', 'Iowa', 'IA', 'Kossuth', 'Swea City', 43.4874559, -94.2555216, ST_GeomFromText('POINT(43.4874559 -94.2555216)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('464006', 'Goose Lake (historical)', 'Lake', 'Iowa', 'IA', 'Dickinson', 'Little Rock', 43.4291366, -95.9747432, ST_GeomFromText('POINT(43.4291366 -95.9747432)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('464019', 'Lard Lake (historical)', 'Lake', 'Iowa', 'IA', 'Sac', 'Newell East', 42.541646, -94.9883219, ST_GeomFromText('POINT(42.541646 -94.9883219)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('464021', 'Round Lake (historical)', 'Lake', 'Iowa', 'IA', 'Sac', 'Lakeside', 42.5083142, -95.1336035, ST_GeomFromText('POINT(42.5083142 -95.1336035)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('464022', 'Bush Lake (historical)', 'Lake', 'Iowa', 'IA', 'Sac', 'Newell West', 42.5327574, -95.0080446, ST_GeomFromText('POINT(42.5327574 -95.0080446)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('464034', 'Chain Lake (historical)', 'Lake', 'Iowa', 'IA', 'Osceola', 'Ida Grove', 42.3747082, -95.41861, ST_GeomFromText('POINT(42.3747082 -95.41861)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('464035', 'Grass Lake (historical)', 'Lake', 'Iowa', 'IA', 'Emmet', 'Estherville', 43.4813458, -94.7574842, ST_GeomFromText('POINT(43.4813458 -94.7574842)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('464036', 'Iowa Lake', 'Lake', 'Iowa', 'IA', 'Emmet', 'Armstrong', 43.499956, -94.4585851, ST_GeomFromText('POINT(43.499956 -94.4585851)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('464038', 'Ryan Lake (historical)', 'Lake', 'Iowa', 'IA', 'Emmet', 'Ingham Lake', 43.3557919, -94.7335937, ST_GeomFromText('POINT(43.3557919 -94.7335937)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('464040', 'Crane Lake (historical)', 'Lake', 'Iowa', 'IA', 'Emmet', 'Ingham Lake', 43.3016265, -94.6658138, ST_GeomFromText('POINT(43.3016265 -94.6658138)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('464043', 'Eagle Lake (historical)', 'Lake', 'Iowa', 'IA', 'Kossuth', 'Armstrong', 43.4505127, -94.3905269, ST_GeomFromText('POINT(43.4505127 -94.3905269)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('464047', 'Greenley Lake (historical)', 'Lake', 'Iowa', 'IA', 'Winnebago', 'Lake Mills', 43.4110658, -93.5427128, ST_GeomFromText('POINT(43.4110658 -93.5427128)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('464048', 'Bear Lake (historical)', 'Lake', 'Iowa', 'IA', 'Winnebago', 'Pilot Knob', 43.3063442, -93.5877132, ST_GeomFromText('POINT(43.3063442 -93.5877132)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('464127', 'Pond Creek Lake (historical)', 'Lake', 'Iowa', 'IA', 'Calhoun', 'Lake City', 42.2741489, -94.6808131, ST_GeomFromText('POINT(42.2741489 -94.6808131)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('464167', 'Skunk Lake (historical)', 'Lake', 'Iowa', 'IA', 'Monona', 'Albaton', 42.1727678, -96.2514129, ST_GeomFromText('POINT(42.1727678 -96.2514129)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('464202', 'Horseshoe Lake', 'Lake', 'Iowa', 'IA', 'Harrison', 'Mondamin', 41.6336649, -96.0572363, ST_GeomFromText('POINT(41.6336649 -96.0572363)', 4326), NULL, NULL, '2000-01-01', '2018-06-20', NULL, NULL, NULL),
  ('464380', 'Robbins Lake', 'Lake', 'Iowa', 'IA', 'Linn', 'Marion', 42.0091672, -91.5376769, ST_GeomFromText('POINT(42.0091672 -91.5376769)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('464383', 'Pillsbury Point', 'Cape', 'Iowa', 'IA', 'Dickinson', 'Milford', 43.3669078, -95.1411068, ST_GeomFromText('POINT(43.3669078 -95.1411068)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('464387', 'California Cutoff', 'Lake', 'Iowa', 'IA', 'Harrison', 'Modale', 41.5706557, -96.0732835, ST_GeomFromText('POINT(41.5706557 -96.0732835)', 4326), NULL, NULL, '2000-01-01', '2018-06-20', NULL, NULL, NULL),
  ('464418', 'Bluebird Creek', 'Stream', 'Iowa', 'IA', 'Buena Vista', 'Sioux Rapids', 42.8963664, -95.2386079, ST_GeomFromText('POINT(42.8963664 -95.2386079)', 4326), 42.9388659, -95.2566639, '2000-01-01', NULL, 'Official', 'Board Decision', '1988-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('464419', 'West Little River', 'Stream', 'Iowa', 'IA', 'Decatur', 'Davis City', 40.737779, -93.778278, ST_GeomFromText('POINT(40.737779 -93.778278)', 4326), 40.8458322, -93.8024442, '2000-01-01', NULL, 'Official', 'Board Decision', '1979-01-01'),
  ('464420', 'Founders Pond', 'Lake', 'Iowa', 'IA', 'Allamakee', 'Prairie du Chien', 43.0844397, -91.195609, ST_GeomFromText('POINT(43.0844397 -91.195609)', 4326), NULL, NULL, '1990-08-01', '2018-06-12', 'Official', 'Board Decision', '1967-01-01'),
  ('464423', 'Hanging Rock', 'Pillar', 'Iowa', 'IA', 'Allamakee', 'Prairie du Chien', 43.1083157, -91.1806856, ST_GeomFromText('POINT(43.1083157 -91.1806856)', 4326), NULL, NULL, '1990-08-01', NULL, 'Official', 'Board Decision', '1967-01-01'),
  ('464424', 'Sergeant Bluff', 'Cliff', 'Iowa', 'IA', 'Woodbury', 'Sergeant Bluff', 42.3999933, -96.3503062, ST_GeomFromText('POINT(42.3999933 -96.3503062)', 4326), NULL, NULL, '1990-08-01', NULL, 'Official', 'Board Decision', '1930-01-01'),
  ('464425', 'Eagle Rock', 'Cliff', 'Iowa', 'IA', 'Allamakee', 'Prairie du Chien', 43.0916496, -91.1862411, ST_GeomFromText('POINT(43.0916496 -91.1862411)', 4326), NULL, NULL, '1990-08-01', NULL, 'Official', 'Board Decision', '1967-01-01'),
  ('464426', 'Fire Point', 'Cliff', 'Iowa', 'IA', 'Allamakee', 'Prairie du Chien', 43.0944272, -91.1806856, ST_GeomFromText('POINT(43.0944272 -91.1806856)', 4326), NULL, NULL, '1990-08-01', NULL, 'Official', 'Board Decision', '1967-01-01'),
  ('464427', 'Nezekaw Point', 'Cliff', 'Iowa', 'IA', 'Allamakee', 'Prairie du Chien', 43.0833164, -91.1820744, ST_GeomFromText('POINT(43.0833164 -91.1820744)', 4326), NULL, NULL, '1990-08-01', NULL, 'Official', 'Board Decision', '1967-01-01'),
  ('464428', 'Lime Creek', 'Stream', 'Iowa', 'IA', 'Winnebago', 'Pilot Knob', 43.3668994, -93.6202155, ST_GeomFromText('POINT(43.3668994 -93.6202155)', 4326), 43.5313437, -93.4941014, '1990-08-01', '2013-12-10', 'Official', 'Board Decision', '1961-01-01'),
  ('464429', 'Okamanpeedan Lake', 'Lake', 'Iowa', 'IA', 'Emmet', 'Wilbert', 43.5013451, -94.575256, ST_GeomFromText('POINT(43.5013451 -94.575256)', 4326), NULL, NULL, '1990-08-01', NULL, 'Official', 'Board Decision', '1971-01-01'),
  ('464430', 'Milford Creek', 'Stream', 'Iowa', 'IA', 'Dickinson', 'Milford', 43.3130203, -95.1752747, ST_GeomFromText('POINT(43.3130203 -95.1752747)', 4326), 43.3402778, -95.1263889, '1990-08-01', NULL, 'Official', 'Board Decision', '1971-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('464432', 'Lateral Ditch Number Eight', 'Stream', 'Iowa', 'IA', 'Fremont', 'Sidney', 40.687501, -95.7224975, ST_GeomFromText('POINT(40.687501 -95.7224975)', 4326), 40.7227778, -95.7222222, '1990-08-01', NULL, 'Official', 'Board Decision', '1977-01-01'),
  ('464433', 'Little Rock River', 'Stream', 'Iowa', 'IA', 'Lyon', 'Doon', 43.2641384, -96.2465875, ST_GeomFromText('POINT(43.2641384 -96.2465875)', 4326), 43.6152423, -95.6900123, '1990-08-01', '2018-02-28', NULL, NULL, NULL),
  ('464434', 'Mill Creek', 'Stream', 'Missouri', 'MO', 'Nodaway', 'Burlington Junction', 40.4399926, -95.093309, ST_GeomFromText('POINT(40.4399926 -95.093309)', 4326), 40.5933262, -95.1188672, '1990-08-01', NULL, 'Official', 'Board Decision', '1977-01-01'),
  ('464459', 'Bente Branch', 'Stream', 'Iowa', 'IA', 'Clayton', 'Littleport', 42.8133197, -91.3376351, ST_GeomFromText('POINT(42.8133197 -91.3376351)', 4326), 42.845, -91.3038889, '1979-04-30', NULL, NULL, NULL, NULL),
  ('464752', 'Spring Branch', 'Stream', 'Iowa', 'IA', 'Clayton', 'Littleport', 42.8102643, -91.3329127, ST_GeomFromText('POINT(42.8102643 -91.3329127)', 4326), 42.8380556, -91.305, '1979-04-30', NULL, NULL, NULL, NULL),
  ('464957', 'Koch Lake', 'Lake', 'Iowa', 'IA', 'Cedar', 'Lime City', 41.708532, -91.0993131, ST_GeomFromText('POINT(41.708532 -91.0993131)', 4326), NULL, NULL, '1992-06-01', '2018-06-11', NULL, NULL, NULL),
  ('464958', 'Cedar Lakes', 'Lake', 'Iowa', 'IA', 'Cedar', 'Lime City', 41.7250564, -91.0479629, ST_GeomFromText('POINT(41.7250564 -91.0479629)', 4326), NULL, NULL, '1992-06-01', '2018-06-11', NULL, NULL, NULL),
  ('464995', 'Joyce Island', 'Island', 'Iowa', 'IA', 'Clinton', 'Clinton', 41.8569733, -90.1806823, ST_GeomFromText('POINT(41.8569733 -90.1806823)', 4326), NULL, NULL, '1992-06-01', NULL, NULL, NULL, NULL),
  ('465049', 'Coolegar Slough', 'Stream', 'Iowa', 'IA', 'Louisa', 'Blanchard Island', 41.2594741, -91.1112593, ST_GeomFromText('POINT(41.2594741 -91.1112593)', 4326), 41.2925, -91.1047222, '1992-06-01', NULL, NULL, NULL, NULL),
  ('465050', 'Muscatine Island', 'Island', 'Iowa', 'IA', 'Louisa', 'Blanchard Island', 41.3333622, -91.1043161, ST_GeomFromText('POINT(41.3333622 -91.1043161)', 4326), NULL, NULL, '1992-06-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('465058', 'Cedar River', 'Stream', 'Iowa', 'IA', 'Louisa', 'Columbus Junction', 41.2830811, -91.3468217, ST_GeomFromText('POINT(41.2830811 -91.3468217)', 4326), 43.8346852, -92.8076868, '1979-04-30', '2020-01-21', 'Official', 'Board Decision', '1931-10-07'),
  ('465112', 'Little Mosquito Creek', 'Stream', 'Iowa', 'IA', 'Muscatine', 'Atalissa', 41.5364145, -91.1384874, ST_GeomFromText('POINT(41.5364145 -91.1384874)', 4326), 41.5503056, -90.9587602, '1979-04-30', NULL, NULL, NULL, NULL),
  ('465127', 'Mosquito Creek', 'Stream', 'Iowa', 'IA', 'Muscatine', 'Atalissa', 41.5125258, -91.1576542, ST_GeomFromText('POINT(41.5125258 -91.1576542)', 4326), 41.4939165, -91.0457064, '1979-04-30', NULL, NULL, NULL, NULL),
  ('465129', 'Mud Creek', 'Stream', 'Iowa', 'IA', 'Muscatine', 'Wilton', 41.5728038, -91.0634857, ST_GeomFromText('POINT(41.5728038 -91.0634857)', 4326), 41.5247519, -90.8157005, '1979-04-30', NULL, NULL, NULL, NULL),
  ('465135', 'Otter Creek', 'Stream', 'Iowa', 'IA', 'Muscatine', 'Wilton', 41.5886369, -91.063486, ST_GeomFromText('POINT(41.5886369 -91.063486)', 4326), 41.6805806, -91.0123744, '1979-04-30', NULL, NULL, NULL, NULL),
  ('465169', 'Sugar Creek', 'Stream', 'Iowa', 'IA', 'Muscatine', 'Wilton', 41.5553035, -91.1051534, ST_GeomFromText('POINT(41.5553035 -91.1051534)', 4326), 41.8719627, -91.0782101, '1979-04-30', NULL, NULL, NULL, NULL),
  ('465288', 'Lake Wahaboncey (historical)', 'Lake', 'Iowa', 'IA', 'Fremont', 'Rock Bluff', 40.9011112, -95.760281, ST_GeomFromText('POINT(40.9011112 -95.760281)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465289', 'Laverne Lake', 'Lake', 'Iowa', 'IA', 'Story', 'Ames West', 42.0236949, -93.6473177, ST_GeomFromText('POINT(42.0236949 -93.6473177)', 4326), NULL, NULL, '2000-01-01', '2018-06-11', NULL, NULL, NULL),
  ('465298', 'Willow Island', 'Island', 'Iowa', 'IA', 'Scott', 'Davenport East', 41.5036436, -90.6059709, ST_GeomFromText('POINT(41.5036436 -90.6059709)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465299', 'City Island (historical)', 'Cape', 'Iowa', 'IA', 'Scott', 'Davenport East', 41.5075324, -90.6079155, ST_GeomFromText('POINT(41.5075324 -90.6079155)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('465301', 'Kellys Bluff', 'Cliff', 'Iowa', 'IA', 'Dubuque', 'Dubuque South', 42.4958362, -90.6687386, ST_GeomFromText('POINT(42.4958362 -90.6687386)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465317', 'Floyds Bluff', 'Cliff', 'Iowa', 'IA', 'Woodbury', 'Sioux City South', 42.4627717, -96.3778066, ST_GeomFromText('POINT(42.4627717 -96.3778066)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465327', 'Green Bay Bottoms', 'Flat', 'Iowa', 'IA', 'Lee', 'Rochester', 41.682522, -91.2032144, ST_GeomFromText('POINT(41.682522 -91.2032144)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465331', 'Fairoak Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.4094075, -95.1608296, ST_GeomFromText('POINT(43.4094075 -95.1608296)', 4326), NULL, NULL, '2000-01-01', '2014-10-28', NULL, NULL, NULL),
  ('465332', 'Omaha Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.3985743, -95.1533294, ST_GeomFromText('POINT(43.3985743 -95.1533294)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465333', 'Brownells Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.4260742, -95.1744409, ST_GeomFromText('POINT(43.4260742 -95.1744409)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465334', 'Pikes Point', 'Cape', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.4155185, -95.1524959, ST_GeomFromText('POINT(43.4155185 -95.1524959)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465335', 'Echo Bay', 'Bay', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.3916299, -95.152496, ST_GeomFromText('POINT(43.3916299 -95.152496)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465336', 'Des Moines Beach', 'Beach', 'Iowa', 'IA', 'Des Moines', 'Okoboji', 43.3769076, -95.1355511, ST_GeomFromText('POINT(43.3769076 -95.1355511)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465337', 'Cards Lake (historical)', 'Lake', 'Iowa', 'IA', 'Monona', 'Blencoe', 41.9735989, -96.0947371, ST_GeomFromText('POINT(41.9735989 -96.0947371)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('465338', 'Skunk Lake', 'Lake', 'Iowa', 'IA', 'Monona', 'Sloan', 42.17499, -96.2055774, ST_GeomFromText('POINT(42.17499 -96.2055774)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465339', 'Silver Lake (historical)', 'Lake', 'Iowa', 'IA', 'Monona', 'Onawa SW', 42.1047113, -96.16113, ST_GeomFromText('POINT(42.1047113 -96.16113)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465342', 'Credit Island', 'Island', 'Iowa', 'IA', 'Scott', 'Milan', 41.4933657, -90.6206936, ST_GeomFromText('POINT(41.4933657 -90.6206936)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465353', 'Wagner', 'Stream', 'Iowa', 'IA', 'Clayton', 'Saint Olaf', 42.9860945, -91.4687527, ST_GeomFromText('POINT(42.9860945 -91.4687527)', 4326), 42.9860945, -91.4687527, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465361', 'Bass Creek', 'Stream', 'Iowa', 'IA', 'Fayette', 'Saint Lucas', 43.0766423, -91.8868295, ST_GeomFromText('POINT(43.0766423 -91.8868295)', 4326), 43.0777778, -91.9666667, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465363', 'South Wonder Creek', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Fort Atkinson', 43.1983048, -91.9815538, ST_GeomFromText('POINT(43.1983048 -91.9815538)', 4326), 43.1552502, -92.0471124, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465364', 'Lake Oelwein', 'Lake', 'Iowa', 'IA', 'Buchanan', 'Hazleton', 42.6090446, -91.9085244, ST_GeomFromText('POINT(42.6090446 -91.9085244)', 4326), NULL, NULL, '2000-01-01', '2018-06-11', NULL, NULL, NULL),
  ('465365', 'Upper Branch Yellow Creek', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Postville NW', 43.1549784, -91.5495884, ST_GeomFromText('POINT(43.1549784 -91.5495884)', 4326), 43.1944209, -91.6287585, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465366', 'Penny Springs', 'Stream', 'Iowa', 'IA', 'Allamakee', 'Rossville', 43.1441466, -91.433472, ST_GeomFromText('POINT(43.1441466 -91.433472)', 4326), 43.2127778, -91.4388889, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465367', 'South Fox Creek', 'Stream', 'Iowa', 'IA', 'Appanoose', 'Moulton', 40.7433532, -92.5821337, ST_GeomFromText('POINT(40.7433532 -92.5821337)', 4326), 40.6911308, -92.6751925, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('465368', 'Spring Creek', 'Stream', 'Iowa', 'IA', 'Audubon', 'Lime City', 41.7430783, -91.0912669, ST_GeomFromText('POINT(41.7430783 -91.0912669)', 4326), 41.7141534, -95.010545, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465369', 'Bull Run', 'Stream', 'Iowa', 'IA', 'Audubon', 'Kimballton', 41.6313767, -95.0638796, ST_GeomFromText('POINT(41.6313767 -95.0638796)', 4326), 41.6916667, -95.0513889, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465370', 'Sink Creek', 'Stream', 'Iowa', 'IA', 'Black Hawk', 'Waterloo South', 42.4369329, -92.2599057, ST_GeomFromText('POINT(42.4369329 -92.2599057)', 4326), 42.4211111, -92.3619444, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465371', 'Shady Branch', 'Stream', 'Iowa', 'IA', 'Boone', 'Madrid NW', 41.9808168, -93.9432855, ST_GeomFromText('POINT(41.9808168 -93.9432855)', 4326), 41.9658333, -93.9583333, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465372', 'Prairie Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Granger', 41.8499864, -93.7855022, ST_GeomFromText('POINT(41.8499864 -93.7855022)', 4326), 41.89943, -93.8243924, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465373', 'Klock Creek', 'Stream', 'Iowa', 'IA', 'Bremer', 'Shell Rock', 42.6608147, -92.5240763, ST_GeomFromText('POINT(42.6608147 -92.5240763)', 4326), 42.6455556, -92.6038889, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465374', 'Schuyler Creek', 'Stream', 'Iowa', 'IA', 'Butler', 'Clarksville', 42.8738641, -92.6938021, ST_GeomFromText('POINT(42.8738641 -92.6938021)', 4326), 42.9677504, -92.7043573, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465375', 'Curry Creek', 'Stream', 'Iowa', 'IA', 'Butler', 'Shell Rock', 42.7274798, -92.5846328, ST_GeomFromText('POINT(42.7274798 -92.5846328)', 4326), 42.8644214, -92.5818536, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465376', 'Freddeke Creek', 'Stream', 'Iowa', 'IA', 'Butler', 'Coster', 42.6566459, -92.7329725, ST_GeomFromText('POINT(42.6566459 -92.7329725)', 4326), 42.8091419, -92.8210277, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465377', 'Landphere Creek', 'Stream', 'Iowa', 'IA', 'Butler', 'Coster', 42.6547025, -92.6396359, ST_GeomFromText('POINT(42.6547025 -92.6396359)', 4326), 42.7072222, -92.71, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('465378', 'Moulfon Creek', 'Stream', 'Iowa', 'IA', 'Butler', 'Coster', 42.7113682, -92.6601914, ST_GeomFromText('POINT(42.7113682 -92.6601914)', 4326), 42.7619222, -92.7321377, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465380', 'Max Creek', 'Stream', 'Iowa', 'IA', 'Butler', 'Stout', 42.576647, -92.7243622, ST_GeomFromText('POINT(42.576647 -92.7243622)', 4326), 42.5183333, -92.7294444, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465381', 'Halburn Creek', 'Stream', 'Iowa', 'IA', 'Carroll', 'Carroll West', 42.0099853, -94.9530445, ST_GeomFromText('POINT(42.0099853 -94.9530445)', 4326), 42.0338741, -95.021102, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465382', 'Flay Creek', 'Stream', 'Iowa', 'IA', 'Cerro Gordo', 'Thornton', 42.9355215, -93.4029827, ST_GeomFromText('POINT(42.9355215 -93.4029827)', 4326), 42.9061111, -93.4263889, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465383', 'Marsh Creek', 'Stream', 'Iowa', 'IA', 'Chickasaw', 'Fredericksburg', 42.968588, -92.2043419, ST_GeomFromText('POINT(42.968588 -92.2043419)', 4326), 42.9780324, -92.1182288, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465384', 'Williams Creek', 'Stream', 'Iowa', 'IA', 'Clinton', 'Goose Lake', 41.9561371, -90.4890222, ST_GeomFromText('POINT(41.9561371 -90.4890222)', 4326), 41.9339145, -90.5551354, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465385', 'Garretts Branch', 'Stream', 'Iowa', 'IA', 'Delaware', 'Greeley', 42.5063809, -91.2565275, ST_GeomFromText('POINT(42.5063809 -91.2565275)', 4326), 42.5633247, -91.2479146, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465386', 'Perkins Creek', 'Stream', 'Iowa', 'IA', 'Fremont', 'Tabor SW', 40.8416668, -95.7061112, ST_GeomFromText('POINT(40.8416668 -95.7061112)', 4326), 40.8725, -95.6666667, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465387', 'Thomas Ditch', 'Stream', 'Iowa', 'IA', 'Fremont', 'Clarinda South', 40.7224905, -95.0208122, ST_GeomFromText('POINT(40.7224905 -95.0208122)', 4326), 40.6625, -95.4663765, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465388', 'Otter Creek', 'Stream', 'Iowa', 'IA', 'Greene', 'Scranton', 42.0874841, -94.6224775, ST_GeomFromText('POINT(42.0874841 -94.6224775)', 4326), 42.018874, -94.6433115, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('465389', 'Fox Creek', 'Stream', 'Iowa', 'IA', 'Guthrie', 'Casey', 41.5863758, -94.6219194, ST_GeomFromText('POINT(41.5863758 -94.6219194)', 4326), 41.5522092, -94.6608095, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465390', 'Cass Creek', 'Stream', 'Iowa', 'IA', 'Dallas', 'Panora', 41.6849871, -94.262462, ST_GeomFromText('POINT(41.6849871 -94.262462)', 4326), 41.7063889, -94.2980556, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465391', 'South Fork Blackhawk Creek', 'Stream', 'Iowa', 'IA', 'Grundy', 'Holland', 42.4544277, -92.626583, ST_GeomFromText('POINT(42.4544277 -92.626583)', 4326), 42.4424815, -92.8585323, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465392', 'East Branch Keg Creek', 'Stream', 'Iowa', 'IA', 'Harrison', 'Persia', 41.5166577, -95.528893, ST_GeomFromText('POINT(41.5166577 -95.528893)', 4326), 41.5597124, -95.4897252, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465393', 'Teener Creek', 'Stream', 'Iowa', 'IA', 'Washington', 'Holbrook', 41.5041783, -91.9285076, ST_GeomFromText('POINT(41.5041783 -91.9285076)', 4326), 41.5536111, -91.9330556, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465395', 'West Kitty Creek', 'Stream', 'Iowa', 'IA', 'Jones', 'Monticello', 42.2263914, -91.1787605, ST_GeomFromText('POINT(42.2263914 -91.1787605)', 4326), 42.1375069, -91.1376511, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465396', 'Tibetts Creek', 'Stream', 'Iowa', 'IA', 'Jones', 'Scotch Grove', 42.2341706, -91.1212577, ST_GeomFromText('POINT(42.2341706 -91.1212577)', 4326), 42.286391, -91.1218111, '2000-01-01', '2020-09-09', NULL, NULL, NULL),
  ('465397', 'Twin Grove Creek', 'Stream', 'Iowa', 'IA', 'Keokuk', 'Pekin', 41.2027919, -92.1318457, ST_GeomFromText('POINT(41.2027919 -92.1318457)', 4326), 41.1877778, -92.2230556, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465398', 'Grape Creek', 'Stream', 'Iowa', 'IA', 'Lee', 'Keokuk', 40.4739318, -91.4807115, ST_GeomFromText('POINT(40.4739318 -91.4807115)', 4326), 40.5228198, -91.4796004, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465399', 'Klondike Creek', 'Stream', 'Iowa', 'IA', 'Lyon', 'Klondike', 43.3808119, -96.5222633, ST_GeomFromText('POINT(43.3808119 -96.5222633)', 4326), 43.4655299, -96.410593, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('465400', 'Dry Run Creek', 'Stream', 'Iowa', 'IA', 'Sioux', 'Rock Valley', 43.1869272, -96.3625295, ST_GeomFromText('POINT(43.1869272 -96.3625295)', 4326), 43.3444228, -96.403368, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465401', 'Lighting Creek', 'Stream', 'Iowa', 'IA', 'Marion', 'Pella', 41.4416634, -92.9307535, ST_GeomFromText('POINT(41.4416634 -92.9307535)', 4326), 41.4622222, -92.9847222, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465402', 'Crooked Creek', 'Stream', 'Iowa', 'IA', 'Marion', 'Harvey', 41.2825003, -92.9321446, ST_GeomFromText('POINT(41.2825003 -92.9321446)', 4326), 41.27361, -93.0093689, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465403', 'Wolf Run', 'Stream', 'Iowa', 'IA', 'Marion', 'Knoxville', 41.2655537, -93.0779818, ST_GeomFromText('POINT(41.2655537 -93.0779818)', 4326), 41.2255543, -93.0927044, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465404', 'Snake Creek', 'Stream', 'Iowa', 'IA', 'Mills', 'Mineola', 41.1458315, -95.7019506, ST_GeomFromText('POINT(41.1458315 -95.7019506)', 4326), 41.1897222, -95.6452778, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465405', 'Osborne Creek', 'Stream', 'Iowa', 'IA', 'Mills', 'Malvern', 41.0708312, -95.6141691, ST_GeomFromText('POINT(41.0708312 -95.6141691)', 4326), 41.1022222, -95.5616667, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465406', 'Douglas Creek', 'Stream', 'Iowa', 'IA', 'Mills', 'Emerson', 41.0208297, -95.4472191, ST_GeomFromText('POINT(41.0208297 -95.4472191)', 4326), 41.085, -95.3986111, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465407', 'Wagner Creek', 'Stream', 'Iowa', 'IA', 'Osceola', 'Ashton', 43.3385828, -95.7605715, ST_GeomFromText('POINT(43.3385828 -95.7605715)', 4326), 43.3955254, -95.7950168, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465408', 'Kappes Creek', 'Stream', 'Iowa', 'IA', 'Osceola', 'Ashton', 43.3419161, -95.7769608, ST_GeomFromText('POINT(43.3419161 -95.7769608)', 4326), 43.3071945, -95.7022363, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465409', 'Eightmile Branch', 'Stream', 'Iowa', 'IA', 'Page', 'Shenandoah East', 40.815829, -95.3160992, ST_GeomFromText('POINT(40.815829 -95.3160992)', 4326), 40.7977778, -95.2686111, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('465410', 'Rocky Branch', 'Stream', 'Iowa', 'IA', 'Page', 'Shenandoah East', 40.8216627, -95.3344332, ST_GeomFromText('POINT(40.8216627 -95.3344332)', 4326), 40.8405556, -95.2505556, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465411', 'Alleman Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Polk City', 41.8272096, -93.6335522, ST_GeomFromText('POINT(41.8272096 -93.6335522)', 4326), 41.8627649, -93.6516085, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465412', 'Neola Creek', 'Stream', 'Iowa', 'IA', 'Pottawattamie', 'Neola', 41.441104, -95.6191727, ST_GeomFromText('POINT(41.441104 -95.6191727)', 4326), 41.5199916, -95.6372286, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465413', 'South Fork Lost Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'McCausland', 41.6686431, -90.430966, ST_GeomFromText('POINT(41.6686431 -90.430966)', 4326), 41.4780895, -90.5048559, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465414', 'Dutch Branch', 'Stream', 'Iowa', 'IA', 'Shelby', 'Corley', 41.5544337, -95.2822199, ST_GeomFromText('POINT(41.5544337 -95.2822199)', 4326), 41.5774888, -95.2033287, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465415', 'Jordan Creek', 'Stream', 'Iowa', 'IA', 'Jefferson', 'Abingdon', 41.0625159, -92.2379589, ST_GeomFromText('POINT(41.0625159 -92.2379589)', 4326), 41.0441819, -92.3262943, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465427', 'Canary Lake (historical)', 'Lake', 'Iowa', 'IA', 'Polk', 'Des Moines NE', 41.6458221, -93.6013285, ST_GeomFromText('POINT(41.6458221 -93.6013285)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465433', 'Lone Tree Lake (historical)', 'Lake', 'Iowa', 'IA', 'Harrison', 'Missouri Valley', 41.536104, -95.9919563, ST_GeomFromText('POINT(41.536104 -95.9919563)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465434', 'Willow Marsh (historical)', 'Swamp', 'Iowa', 'IA', 'Harrison', 'Modale', 41.5769366, -96.0364015, ST_GeomFromText('POINT(41.5769366 -96.0364015)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465435', 'Balls Lake (historical)', 'Lake', 'Iowa', 'IA', 'Harrison', 'Modale', 41.5883252, -96.0277902, ST_GeomFromText('POINT(41.5883252 -96.0277902)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('465440', 'Swan Lake (historical)', 'Lake', 'Iowa', 'IA', 'Guthrie', 'Bagley', 41.7991525, -94.4335804, ST_GeomFromText('POINT(41.7991525 -94.4335804)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465441', 'Pilot Lake (historical)', 'Lake', 'Iowa', 'IA', 'Dallas', 'Dawson', 41.7588754, -94.2113497, ST_GeomFromText('POINT(41.7588754 -94.2113497)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465442', 'Bear Creek', 'Stream', 'Iowa', 'IA', 'Crawford', 'Denison SW', 42.0444326, -95.4105544, ST_GeomFromText('POINT(42.0444326 -95.4105544)', 4326), 42.0022222, -95.3852778, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465443', 'Newcom Creek', 'Stream', 'Iowa', 'IA', 'Crawford', 'Kiron', 42.1910972, -95.2691616, ST_GeomFromText('POINT(42.1910972 -95.2691616)', 4326), 42.1491667, -95.2697222, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465444', 'Goose Creek', 'Stream', 'Iowa', 'IA', 'Cedar', 'Laurel', 41.9272112, -92.9710315, ST_GeomFromText('POINT(41.9272112 -92.9710315)', 4326), 41.9208353, -91.9251805, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465453', 'Long Branch', 'Stream', 'Iowa', 'IA', 'Appanoose', 'Coatsville', 40.6036324, -92.7207502, ST_GeomFromText('POINT(40.6036324 -92.7207502)', 4326), 40.6152778, -92.6727778, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465465', 'Bradley Lake (historical)', 'Lake', 'Iowa', 'IA', 'Des Moines', 'Kingston', 40.9722588, -91.0356999, ST_GeomFromText('POINT(40.9722588 -91.0356999)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465480', 'Parrish Branch', 'Stream', 'Iowa', 'IA', 'Union', 'Rippey', 41.9638719, -94.1999615, ST_GeomFromText('POINT(41.9638719 -94.1999615)', 4326), 40.9791581, -94.1663407, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465485', 'Mamie Creek', 'Stream', 'Iowa', 'IA', 'Pottawattamie', 'McClelland', 41.3327732, -95.6622291, ST_GeomFromText('POINT(41.3327732 -95.6622291)', 4326), 41.2955556, -95.6611111, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465488', 'Honey Lake (historical)', 'Lake', 'Iowa', 'IA', 'Pottawattamie', 'Loveland', 41.4083285, -95.8844559, ST_GeomFromText('POINT(41.4083285 -95.8844559)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('465491', 'Prosser Creek', 'Stream', 'Iowa', 'IA', 'Adams', 'Grant', 41.1916547, -94.8499809, ST_GeomFromText('POINT(41.1916547 -94.8499809)', 4326), 41.1738777, -94.9174837, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465493', 'Steels Branch', 'Stream', 'Iowa', 'IA', 'Warren', 'Patterson', 41.324158, -93.9038361, ST_GeomFromText('POINT(41.324158 -93.9038361)', 4326), 41.324158, -93.9038361, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465495', 'Limestone Creek', 'Stream', 'Iowa', 'IA', 'Warren', 'Truro', 41.1791609, -93.7757762, ST_GeomFromText('POINT(41.1791609 -93.7757762)', 4326), 41.2138829, -93.7454977, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465497', 'Sants Branch', 'Stream', 'Iowa', 'IA', 'Warren', 'Martensdale', 41.3205486, -93.6493846, ST_GeomFromText('POINT(41.3205486 -93.6493846)', 4326), 41.2827778, -93.6491667, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465516', 'Hills Lake (historical)', 'Lake', 'Iowa', 'IA', 'Louisa', 'Lone Tree', 41.3922633, -91.38643, ST_GeomFromText('POINT(41.3922633 -91.38643)', 4326), NULL, NULL, '2000-01-01', '2015-08-24', NULL, NULL, NULL),
  ('465524', 'Old Channel Lost Creek (historical)', 'Stream', 'Iowa', 'IA', 'Scott', 'Malone', 41.7619751, -90.4434672, ST_GeomFromText('POINT(41.7619751 -90.4434672)', 4326), 41.7161425, -90.4162439, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465525', 'Old Channel Lost Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'McCausland', 41.7380868, -90.4279112, ST_GeomFromText('POINT(41.7380868 -90.4279112)', 4326), 41.7161111, -90.4161111, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465529', 'Goose Pond (historical)', 'Lake', 'Iowa', 'IA', 'Jones', 'Morley', 42.0194529, -91.2357162, ST_GeomFromText('POINT(42.0194529 -91.2357162)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465530', 'Prairie Creek', 'Stream', 'Iowa', 'IA', 'Tama', 'Garwin', 42.1008214, -92.7240872, ST_GeomFromText('POINT(42.1008214 -92.7240872)', 4326), 42.0702778, -92.675, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465532', 'Skinners Creek', 'Stream', 'Iowa', 'IA', 'Monona', 'Dunlap NW', 41.9988775, -95.7252839, ST_GeomFromText('POINT(41.9988775 -95.7252839)', 4326), 41.9988775, -95.7252839, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('465547', 'South Rock Creek', 'Stream', 'Iowa', 'IA', 'Tama', 'Le Grand', 42.0791546, -92.8090882, ST_GeomFromText('POINT(42.0791546 -92.8090882)', 4326), 42.0791546, -92.8090882, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465550', 'Irish Lake', 'Lake', 'Iowa', 'IA', 'Monona', 'Sloan', 42.1327673, -96.1461296, ST_GeomFromText('POINT(42.1327673 -96.1461296)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465551', 'Goose Lake (historical)', 'Lake', 'Iowa', 'IA', 'Carroll', 'Coon Rapids North', 41.9730416, -94.7369258, ST_GeomFromText('POINT(41.9730416 -94.7369258)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465553', 'Towhead Lake', 'Lake', 'Iowa', 'IA', 'Calhoun', 'Fonda', 42.5102565, -94.816928, ST_GeomFromText('POINT(42.5102565 -94.816928)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465555', 'Cairo Lake (historical)', 'Lake', 'Iowa', 'IA', 'Hamilton', 'Jewell', 42.3447009, -93.720496, ST_GeomFromText('POINT(42.3447009 -93.720496)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465565', 'Lytles Creek', 'Stream', 'Iowa', 'IA', 'Harrison', 'Persia', 41.5624906, -95.5711158, ST_GeomFromText('POINT(41.5624906 -95.5711158)', 4326), 41.575, -95.5333333, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465572', 'Bass Creek', 'Stream', 'Iowa', 'IA', 'Webster', 'Fort Dodge North', 42.6058036, -94.2246852, ST_GeomFromText('POINT(42.6058036 -94.2246852)', 4326), 42.6541383, -94.2982997, '1979-04-30', NULL, NULL, NULL, NULL),
  ('465580', 'Crabapple Creek', 'Stream', 'Iowa', 'IA', 'Mills', 'Coburg', 40.9933282, -95.3397158, ST_GeomFromText('POINT(40.9933282 -95.3397158)', 4326), 41.1613816, -95.2808291, '1979-04-30', NULL, NULL, NULL, NULL),
  ('465581', 'Deer Creek', 'Stream', 'Iowa', 'IA', 'Webster', 'Fort Dodge North', 42.6002481, -94.2252409, ST_GeomFromText('POINT(42.6002481 -94.2252409)', 4326), 42.7046956, -94.4394169, '1979-04-30', NULL, NULL, NULL, NULL),
  ('465582', 'Des Moines River', 'Stream', 'Iowa', 'IA', 'Lee', 'Keokuk', 41.3811553, -91.4223753, ST_GeomFromText('POINT(41.3811553 -91.4223753)', 4326), 44.0838509, -95.6880668, '1979-04-30', '2018-06-22', 'Official', 'Board Decision', '1971-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('465584', 'Whippoorwill Creek', 'Stream', 'Iowa', 'IA', 'Monroe', 'Hiteman', 41.09917, -92.9665895, ST_GeomFromText('POINT(41.09917 -92.9665895)', 4326), 41.0083367, -93.0590916, '2000-01-01', NULL, 'Official', 'Board Decision', '1980-01-01'),
  ('465591', 'Indian Creek', 'Stream', 'Iowa', 'IA', 'Mills', 'Malvern', 41.0319416, -95.5074987, ST_GeomFromText('POINT(41.0319416 -95.5074987)', 4326), 41.2761026, -95.2499968, '1979-04-30', NULL, NULL, NULL, NULL),
  ('465592', 'Indian Creek', 'Stream', 'Iowa', 'IA', 'Humboldt', 'Humboldt', 42.6763599, -94.2132957, ST_GeomFromText('POINT(42.6763599 -94.2132957)', 4326), 42.737473, -94.434139, '1979-04-30', NULL, NULL, NULL, NULL),
  ('465597', 'Little Indian Creek', 'Stream', 'Iowa', 'IA', 'Montgomery', 'Wales', 41.0697169, -95.3641625, ST_GeomFromText('POINT(41.0697169 -95.3641625)', 4326), 41.1533263, -95.2936069, '1979-04-30', NULL, NULL, NULL, NULL),
  ('465598', 'Lotts Creek', 'Stream', 'Iowa', 'IA', 'Humboldt', 'Saint Joseph', 42.8777474, -94.1724604, ST_GeomFromText('POINT(42.8777474 -94.1724604)', 4326), 43.2202407, -94.4444177, '1979-04-30', NULL, NULL, NULL, NULL),
  ('465600', 'North Cedar Creek', 'Stream', 'Iowa', 'IA', 'Marion', 'Lovilia', 41.2141687, -92.9168667, ST_GeomFromText('POINT(41.2141687 -92.9168667)', 4326), 41.0011119, -93.2085403, '1979-04-30', NULL, NULL, NULL, NULL),
  ('465605', 'Prairie Creek', 'Stream', 'Iowa', 'IA', 'Clay', 'Gillett Grove', 43.1049686, -95.0652694, ST_GeomFromText('POINT(43.1049686 -95.0652694)', 4326), 43.0480298, -95.2430527, '1979-04-30', NULL, NULL, NULL, NULL),
  ('465609', 'Trulner Creek', 'Stream', 'Iowa', 'IA', 'Humboldt', 'Livermore', 42.863581, -94.2091288, ST_GeomFromText('POINT(42.863581 -94.2091288)', 4326), 42.9630249, -94.4163602, '1979-04-30', NULL, NULL, NULL, NULL),
  ('465610', 'Walnut Creek', 'Stream', 'Iowa', 'IA', 'Fremont', 'Randolph', 40.7866666, -95.5899949, ST_GeomFromText('POINT(40.7866666 -95.5899949)', 4326), 41.5372115, -95.2352742, '1979-04-30', NULL, NULL, NULL, NULL),
  ('465616', 'Whippoorwill Branch', 'Stream', 'Iowa', 'IA', 'Monroe', 'Lovilia', 41.1413913, -92.968812, ST_GeomFromText('POINT(41.1413913 -92.968812)', 4326), 41.0930576, -93.0457583, '1979-04-30', NULL, 'Official', 'Board Decision', '1980-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('465617', 'Whites Creek', 'Stream', 'Iowa', 'IA', 'Monroe', 'Hiteman', 41.1152813, -92.9418668, ST_GeomFromText('POINT(41.1152813 -92.9418668)', 4326), 41.0083357, -93.1168711, '1979-04-30', NULL, 'Official', 'Board Decision', '1980-01-01'),
  ('465618', 'Willow Creek', 'Stream', 'Iowa', 'IA', 'Clay', 'Webb', 42.9680296, -95.1169371, ST_GeomFromText('POINT(42.9680296 -95.1169371)', 4326), 43.1366397, -95.4344494, '1979-04-30', NULL, NULL, NULL, NULL),
  ('465622', 'Bass Lake (historical)', 'Lake', 'Iowa', 'IA', 'Humboldt', 'Unique', 42.6874721, -94.3271898, ST_GeomFromText('POINT(42.6874721 -94.3271898)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465623', 'Indian Spring (historical)', 'Spring', 'Iowa', 'IA', 'Humboldt', 'Unique', 42.6824715, -94.27941, ST_GeomFromText('POINT(42.6824715 -94.27941)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('465636', 'Cold Stream', 'Stream', 'Iowa', 'IA', 'Linn', 'Cedar Rapids South', 41.996944, -91.6765693, ST_GeomFromText('POINT(41.996944 -91.6765693)', 4326), 42.0349983, -91.6882352, '1994-02-01', NULL, 'Official', 'Board Decision', '1994-01-01'),
  ('465639', 'Devils Creek', 'Stream', 'Iowa', 'IA', 'Lee', 'Nauvoo', 40.5797634, -91.4001532, ST_GeomFromText('POINT(40.5797634 -91.4001532)', 4326), 40.688928, -91.3687632, '1979-04-30', '2014-12-12', 'Official', 'Board Decision', '1899-01-01'),
  ('465644', 'Little Spirit Lake', 'Lake', 'Minnesota', 'MN', 'Jackson', 'Lakefield SW', 43.5047619, -95.1281735, ST_GeomFromText('POINT(43.5047619 -95.1281735)', 4326), NULL, NULL, '1980-01-11', '2018-06-20', NULL, NULL, NULL),
  ('465645', 'Prairie Rose Creek', 'Stream', 'Iowa', 'IA', 'Shelby', 'Prairie Rose Lake', 41.537128, -95.128083, ST_GeomFromText('POINT(41.537128 -95.128083)', 4326), 41.555211, -95.046802, '1979-04-30', '2022-09-08', 'Official', 'Secretarial Order', '2022-09-08'),
  ('465646', 'Coralville Lake', 'Reservoir', 'Iowa', 'IA', 'Johnson', 'Swisher', 41.788066, -91.708508, ST_GeomFromText('POINT(41.788066 -91.708508)', 4326), NULL, NULL, '2023-10-10', '2023-10-10', 'Official', 'Board Decision', '1971-01-01'),
  ('465856', 'Lake Binder', 'Reservoir', 'Iowa', 'IA', 'Adams', 'Corning North', 41.0083825, -94.7111374, ST_GeomFromText('POINT(41.0083825 -94.7111374)', 4326), NULL, NULL, '1979-04-30', '2018-06-20', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('465883', 'North Fork of South Fork of North Fabius River', 'Stream', 'Missouri', 'MO', 'Schuyler', 'Lancaster', 40.5741936, -92.5457444, ST_GeomFromText('POINT(40.5741936 -92.5457444)', 4326), 40.6055556, -92.5702778, '1980-10-24', NULL, NULL, NULL, NULL),
  ('465921', 'Plum Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Swisher', 41.8063979, -91.7210091, ST_GeomFromText('POINT(41.8063979 -91.7210091)', 4326), 41.8797274, -91.7229558, '1994-05-01', NULL, NULL, NULL, NULL),
  ('465922', 'Timber Lake', 'Reservoir', 'Iowa', 'IA', 'Johnson', 'Swisher', 41.8198364, -91.6730785, ST_GeomFromText('POINT(41.8198364 -91.6730785)', 4326), NULL, NULL, '1994-05-01', '2018-06-11', NULL, NULL, NULL),
  ('465968', 'Carter Creek', 'Stream', 'Missouri', 'MO', 'Scotland', 'Kilwinning', 40.5808621, -92.3335179, ST_GeomFromText('POINT(40.5808621 -92.3335179)', 4326), 40.6811314, -92.6632478, '1980-10-24', NULL, NULL, NULL, NULL),
  ('465977', 'Otter Creek', 'Stream', 'Iowa', 'IA', 'Lyon', 'George West', 43.3008092, -96.0577994, ST_GeomFromText('POINT(43.3008092 -96.0577994)', 4326), 43.530243, -95.7133476, '1979-04-30', NULL, NULL, NULL, NULL),
  ('465984', 'Sixmile Creek', 'Stream', 'Iowa', 'IA', 'Sioux', 'Chatsworth', 42.9313789, -96.5183652, ST_GeomFromText('POINT(42.9313789 -96.5183652)', 4326), 43.1341496, -96.1908559, '1979-04-30', NULL, NULL, NULL, NULL),
  ('639860', 'Bee Creek', 'Stream', 'Minnesota', 'MN', 'Houston', 'Wilmington', 43.5005262, -91.5698653, ST_GeomFromText('POINT(43.5005262 -91.5698653)', 4326), 43.5569133, -91.6262561, '1980-01-11', NULL, NULL, NULL, NULL),
  ('641467', 'Coon Creek', 'Stream', 'Minnesota', 'MN', 'Faribault', 'Elmore', 43.6132884, -94.1032934, ST_GeomFromText('POINT(43.6132884 -94.1032934)', 4326), 43.4452344, -93.97051, '1980-01-11', NULL, NULL, NULL, NULL),
  ('644511', 'Grovers Lake', 'Lake', 'Iowa', 'IA', 'Dickinson', 'Lakefield SW', 43.5004046, -95.1555036, ST_GeomFromText('POINT(43.5004046 -95.1555036)', 4326), NULL, NULL, '1980-01-11', '2018-06-20', NULL, NULL, NULL),
  ('645443', 'Iowa Lake', 'Lake', 'Minnesota', 'MN', 'Martin', 'Willmert Lake', 43.5037502, -94.4647305, ST_GeomFromText('POINT(43.5037502 -94.4647305)', 4326), NULL, NULL, '1980-01-11', '2018-09-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('646032', 'Kanaranzi Creek', 'Stream', 'Iowa', 'IA', 'Lyon', 'Rock Rapids', 43.448027, -96.1680822, ST_GeomFromText('POINT(43.448027 -96.1680822)', 4326), 43.8035765, -95.8869613, '1980-01-11', '2016-07-12', NULL, NULL, NULL),
  ('649044', 'Otter Creek', 'Stream', 'Iowa', 'IA', 'Mitchell', 'Saint Ansgar', 43.4624646, -92.9763056, ST_GeomFromText('POINT(43.4624646 -92.9763056)', 4326), 43.5713542, -92.7996309, '1980-01-11', '2010-11-22', NULL, NULL, NULL),
  ('652874', 'Swag Lake', 'Lake', 'Minnesota', 'MN', 'Martin', 'Willmert Lake', 43.5006442, -94.385457, ST_GeomFromText('POINT(43.5006442 -94.385457)', 4326), NULL, NULL, '1980-01-11', '2018-09-21', 'Official', 'Board Decision', '1977-01-01'),
  ('657126', 'Little Sioux River', 'Stream', 'Iowa', 'IA', 'Harrison', 'Little Sioux', 41.8035991, -96.0669575, ST_GeomFromText('POINT(41.8035991 -96.0669575)', 4326), 43.6644052, -95.3147212, '1979-04-30', '2018-02-28', NULL, NULL, NULL),
  ('713827', 'Beard Branch', 'Stream', 'Missouri', 'MO', 'Nodaway', 'Hopkins', 40.5280448, -94.8385819, ST_GeomFromText('POINT(40.5280448 -94.8385819)', 4326), 40.5777778, -94.7622222, '1980-10-24', NULL, NULL, NULL, NULL),
  ('714242', 'Billups Branch', 'Stream', 'Missouri', 'MO', 'Scotland', 'Brock', 40.57229, -92.14613, ST_GeomFromText('POINT(40.57229 -92.14613)', 4326), 40.6361387, -92.2143485, '1980-10-24', '2011-11-08', NULL, NULL, NULL),
  ('714906', 'Brushy Creek', 'Stream', 'Missouri', 'MO', 'Nodaway', 'Parnell West', 40.4330456, -94.6346865, ST_GeomFromText('POINT(40.4330456 -94.6346865)', 4326), 40.6116554, -94.6274653, '1980-10-24', NULL, NULL, NULL, NULL),
  ('715939', 'Clear Creek', 'Stream', 'Missouri', 'MO', 'Nodaway', 'Burlington Junction', 40.4946, -95.07032, ST_GeomFromText('POINT(40.4946 -95.07032)', 4326), 40.60216, -94.89887, '1980-10-24', '2011-11-10', NULL, NULL, NULL),
  ('717276', 'East Fork Big Creek', 'Stream', 'Missouri', 'MO', 'Harrison', 'Bethany', 40.2663896, -94.052453, ST_GeomFromText('POINT(40.2663896 -94.052453)', 4326), 40.6513875, -93.9468936, '1980-10-24', NULL, NULL, NULL, NULL),
  ('717323', 'East Mill Creek', 'Stream', 'Missouri', 'MO', 'Nodaway', 'Blanchard', 40.5686045, -95.1430339, ST_GeomFromText('POINT(40.5686045 -95.1430339)', 4326), 40.6416585, -95.0752563, '1980-10-24', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('718673', 'Grand River', 'Stream', 'Missouri', 'MO', 'Chariton', 'Brunswick East', 39.384469, -93.1079769, ST_GeomFromText('POINT(39.384469 -93.1079769)', 4326), 41.0247122, -94.2680102, '1980-10-24', '2018-06-22', 'Official', 'Board Decision', '1922-06-07'),
  ('719516', 'High Creek', 'Stream', 'Missouri', 'MO', 'Atchison', 'Hamburg', 40.5133353, -95.6530469, ST_GeomFromText('POINT(40.5133353 -95.6530469)', 4326), 40.5861115, -95.4533187, '1980-10-24', NULL, NULL, NULL, NULL),
  ('720272', 'Jefferies Creek', 'Stream', 'Missouri', 'MO', 'Harrison', 'Akron', 40.5552804, -93.8193919, ST_GeomFromText('POINT(40.5552804 -93.8193919)', 4326), 40.5841667, -93.7588889, '1980-10-24', '2012-01-19', NULL, NULL, NULL),
  ('721268', 'Little Medicine Creek', 'Stream', 'Missouri', 'MO', 'Grundy', 'Laredo', 40.1005722, -93.3771577, ST_GeomFromText('POINT(40.1005722 -93.3771577)', 4326), 40.5963971, -93.4310498, '1980-10-24', NULL, NULL, NULL, NULL),
  ('722096', 'McElroy Creek', 'Stream', 'Missouri', 'MO', 'Atchison', 'McElroy Creek', 40.5125021, -95.5855438, ST_GeomFromText('POINT(40.5125021 -95.5855438)', 4326), 40.6008333, -95.5113889, '1980-10-24', NULL, NULL, NULL, NULL),
  ('722674', 'Moss Branch', 'Stream', 'Missouri', 'MO', 'Nodaway', 'Clearmont', 40.5086043, -95.1199766, ST_GeomFromText('POINT(40.5086043 -95.1199766)', 4326), 40.5913889, -95.0830556, '1980-10-24', NULL, NULL, NULL, NULL),
  ('723379', 'Nishnabotna River', 'Stream', 'Missouri', 'MO', 'Atchison', 'Peru', 40.4836131, -95.6958261, ST_GeomFromText('POINT(40.4836131 -95.6958261)', 4326), 40.6522232, -95.6233264, '1979-03-09', '2018-07-13', 'Official', 'Board Decision', '1948-01-01'),
  ('723432', 'North Blackbird Creek', 'Stream', 'Missouri', 'MO', 'Putnam', 'Graysville', 40.3778022, -92.7796431, ST_GeomFromText('POINT(40.3778022 -92.7796431)', 4326), 40.6114009, -93.0685397, '1980-10-24', NULL, NULL, NULL, NULL),
  ('723446', 'North Fabius River', 'Stream', 'Missouri', 'MO', 'Marion', 'Maywood', 39.8992123, -91.5059878, ST_GeomFromText('POINT(39.8992123 -91.5059878)', 4326), 40.6566876, -92.6690814, '1980-10-24', '2018-06-22', NULL, NULL, NULL),
  ('723464', 'North Fork North Fabius River', 'Stream', 'Missouri', 'MO', 'Scotland', 'Memphis', 40.4722556, -92.2112937, ST_GeomFromText('POINT(40.4722556 -92.2112937)', 4326), 40.6578031, -92.4201857, '1980-10-24', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('723523', 'Norvey Creek', 'Stream', 'Missouri', 'MO', 'Nodaway', 'Pickering', 40.4363786, -94.8205253, ST_GeomFromText('POINT(40.4363786 -94.8205253)', 4326), 40.6177659, -94.7094126, '1980-10-24', NULL, NULL, NULL, NULL),
  ('727465', 'Tarkio River', 'Stream', 'Missouri', 'MO', 'Holt', 'Corning', 40.1627768, -95.438592, ST_GeomFromText('POINT(40.1627768 -95.438592)', 4326), 41.1938794, -95.0624898, '1980-10-24', '2018-07-13', 'Official', 'Board Decision', '1939-01-01'),
  ('728599', 'West Locust Creek', 'Stream', 'Missouri', 'MO', 'Putnam', 'Pollock NW', 40.3905706, -93.14021, ST_GeomFromText('POINT(40.3905706 -93.14021)', 4326), 40.6247305, -93.2402114, '1980-10-24', NULL, NULL, NULL, NULL),
  ('729217', 'Zadie Creek', 'Stream', 'Missouri', 'MO', 'Harrison', 'Lamoni South', 40.5269449, -93.9241165, ST_GeomFromText('POINT(40.5269449 -93.9241165)', 4326), 40.6166667, -93.9677778, '1980-10-24', NULL, NULL, NULL, NULL),
  ('730228', 'Thompson River', 'Stream', 'Missouri', 'MO', 'Livingston', 'Chillicothe', 39.7639046, -93.6143804, ST_GeomFromText('POINT(39.7639046 -93.6143804)', 4326), 41.3566547, -94.4310761, '1980-10-24', '2018-07-13', 'Official', 'Board Decision', '1922-01-01'),
  ('735621', 'Fox River', 'Stream', 'Missouri', 'MO', 'Clark', 'Warsaw', 40.2847672, -91.4940442, ST_GeomFromText('POINT(40.2847672 -91.4940442)', 4326), 40.7536278, -92.7238047, '1980-10-24', NULL, NULL, NULL, NULL),
  ('735905', 'Weldon River', 'Stream', 'Missouri', 'MO', 'Grundy', 'Trenton West', 40.1016787, -93.6485529, ST_GeomFromText('POINT(40.1016787 -93.6485529)', 4326), 40.9041667, -93.656607, '1980-10-24', NULL, 'Official', 'Board Decision', '1922-01-01'),
  ('738423', 'Brush Creek', 'Stream', 'Missouri', 'MO', 'Scotland', 'Kilwinning', 40.5700293, -92.3207401, ST_GeomFromText('POINT(40.5700293 -92.3207401)', 4326), 40.5991943, -92.4190748, '1990-01-01', NULL, NULL, NULL, NULL),
  ('756398', 'Missouri River', 'Stream', 'Missouri', 'MO', 'St. Charles', 'Wood River', 38.8136597, -90.1198297, ST_GeomFromText('POINT(38.8136597 -90.1198297)', 4326), 45.9268, -111.50558, '1980-10-24', '2020-10-20', 'Official', 'Board Decision', '1953-01-01'),
  ('828612', 'DeSoto Lake', 'Lake', 'Iowa', 'IA', 'Pottawattamie', 'Fort Calhoun', 41.4984194, -96.0065174, ST_GeomFromText('POINT(41.4984194 -96.0065174)', 4326), NULL, NULL, '1979-03-09', '2018-06-20', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('830857', 'Long Creek', 'Stream', 'Nebraska', 'NE', 'Washington', 'Modale', 41.517216, -96.0636247, ST_GeomFromText('POINT(41.517216 -96.0636247)', 4326), 41.4333291, -96.1186275, '1979-03-09', NULL, NULL, NULL, NULL),
  ('1253923', 'Big Sioux River', 'Stream', 'South Dakota', 'SD', 'Union', 'Sioux City South', 42.4908278, -96.4464191, ST_GeomFromText('POINT(42.4908278 -96.4464191)', 4326), 45.3216285, -97.0425776, '1980-02-13', '2019-07-26', 'Official', 'Board Decision', '1979-01-01'),
  ('1256705', 'Ninemile Creek', 'Stream', 'South Dakota', 'SD', 'Lincoln', 'Klondike', 43.4469211, -96.6006004, ST_GeomFromText('POINT(43.4469211 -96.6006004)', 4326), 43.4899765, -96.8194963, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1258258', 'Spring Creek', 'Stream', 'South Dakota', 'SD', 'Lincoln', 'Klondike', 43.4619206, -96.5939338, ST_GeomFromText('POINT(43.4619206 -96.5939338)', 4326), 43.4888645, -96.7022711, '1980-02-13', NULL, NULL, NULL, NULL),
  ('1562785', 'Cassville Slough', 'Stream', 'Wisconsin', 'WI', 'Grant', 'Turkey River', 42.7216591, -91.0220727, ST_GeomFromText('POINT(42.7216591 -91.0220727)', 4326), 42.7944343, -91.0754064, '1980-08-29', NULL, NULL, NULL, NULL),
  ('1565438', 'Gasner Hollow', 'Valley', 'Wisconsin', 'WI', 'Grant', 'Brodtville', 42.9166338, -91.1178574, ST_GeomFromText('POINT(42.9166338 -91.1178574)', 4326), 42.9375, -91.1875, '1980-08-29', '2015-09-05', NULL, NULL, NULL),
  ('1629903', 'Mississippi River', 'Stream', 'Louisiana', 'LA', 'Plaquemines', 'Pilottown', 29.1510582, -89.2533842, ST_GeomFromText('POINT(29.1510582 -89.2533842)', 4326), 47.2394019, -95.2080745, '1980-06-04', '2019-08-13', 'Official', 'Board Decision', '1931-01-01'),
  ('1769693', 'Tekamah Creek Reservoir 41-A', 'Reservoir', 'Nebraska', 'NE', 'Burt', 'Brunsville', 42.7883242, -96.3219705, ST_GeomFromText('POINT(42.7883242 -96.3219705)', 4326), NULL, NULL, '1997-12-22', NULL, NULL, NULL, NULL),
  ('1770013', 'Rowan Reservoir', 'Reservoir', 'Nebraska', 'NE', 'Keya Paha', 'Ireton', 42.924989, -96.368638, ST_GeomFromText('POINT(42.924989 -96.368638)', 4326), NULL, NULL, '1997-12-22', NULL, NULL, NULL, NULL),
  ('1792946', 'Pool 9', 'Reservoir', 'Iowa', 'IA', 'Allamakee', 'Eastman', 43.2190006, -91.0923672, ST_GeomFromText('POINT(43.2190006 -91.0923672)', 4326), NULL, NULL, '1998-04-29', '2013-12-27', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1822745', 'Hine Creek', 'Stream', 'Iowa', 'IA', 'Kossuth', 'West Bend NE', 42.909414, -94.300244, ST_GeomFromText('POINT(42.909414 -94.300244)', 4326), 43.0583003, -94.3541354, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1822765', 'Crooked Creek', 'Stream', 'Iowa', 'IA', 'Pocahontas', 'Rolfe', 42.8096946, -94.5174757, ST_GeomFromText('POINT(42.8096946 -94.5174757)', 4326), 42.8202502, -94.6385902, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1822766', 'Dickersons Branch', 'Stream', 'Iowa', 'IA', 'Decatur', 'Akron', 40.6130582, -93.7888351, ST_GeomFromText('POINT(40.6130582 -93.7888351)', 4326), 40.6263891, -93.8885592, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1822768', 'Britton Branch', 'Stream', 'Iowa', 'IA', 'Decatur', 'Davis City', 40.6916684, -93.7835563, ST_GeomFromText('POINT(40.6916684 -93.7835563)', 4326), 40.7463889, -93.8252778, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1822774', 'Sevenmile Creek', 'Stream', 'Iowa', 'IA', 'Decatur', 'Lamoni South', 40.595, -93.9130045, ST_GeomFromText('POINT(40.595 -93.9130045)', 4326), 40.6291659, -93.9280045, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1822777', 'Big G Lake', 'Reservoir', 'Iowa', 'IA', 'Decatur', 'Lamoni South', 40.6139958, -93.9215742, ST_GeomFromText('POINT(40.6139958 -93.9215742)', 4326), NULL, NULL, '1999-03-30', '2018-06-20', NULL, NULL, NULL),
  ('1822778', 'Founders Lake', 'Reservoir', 'Iowa', 'IA', 'Decatur', 'Lamoni South', 40.618723, -93.9300948, ST_GeomFromText('POINT(40.618723 -93.9300948)', 4326), NULL, NULL, '1999-03-30', '2018-06-20', NULL, NULL, NULL),
  ('1822779', 'Kennedy Slough', 'Stream', 'Iowa', 'IA', 'Palo Alto', 'Emmetsburg', 43.034595, -94.7375804, ST_GeomFromText('POINT(43.034595 -94.7375804)', 4326), 43.0405547, -94.7343189, '1999-03-30', '2017-10-12', NULL, NULL, NULL),
  ('1822787', 'Potteroff Creek', 'Stream', 'Iowa', 'IA', 'Decatur', 'Davis City', 40.6597226, -93.8610583, ST_GeomFromText('POINT(40.6597226 -93.8610583)', 4326), 40.6313888, -93.8960593, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1822793', 'Lake LaShane', 'Reservoir', 'Iowa', 'IA', 'Decatur', 'Lamoni North', 40.6346422, -93.9723451, ST_GeomFromText('POINT(40.6346422 -93.9723451)', 4326), NULL, NULL, '1999-03-30', '2018-06-20', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1822794', 'Home Lake', 'Reservoir', 'Iowa', 'IA', 'Decatur', 'Lamoni North', 40.630214, -93.94783, ST_GeomFromText('POINT(40.630214 -93.94783)', 4326), NULL, NULL, '1999-03-30', '2018-06-20', NULL, NULL, NULL),
  ('1822795', 'Home Pond', 'Reservoir', 'Iowa', 'IA', 'Decatur', 'Lamoni North', 40.6257182, -93.9519852, ST_GeomFromText('POINT(40.6257182 -93.9519852)', 4326), NULL, NULL, '1999-03-30', '2018-06-20', NULL, NULL, NULL),
  ('1822796', 'Pot Hole Creek', 'Stream', 'Iowa', 'IA', 'Decatur', 'Lamoni North', 40.7016657, -93.9024476, ST_GeomFromText('POINT(40.7016657 -93.9024476)', 4326), 40.6558333, -93.9591667, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1822800', 'South Elk Creek', 'Stream', 'Iowa', 'IA', 'Decatur', 'Lamoni North', 40.7261089, -93.9424483, ST_GeomFromText('POINT(40.7261089 -93.9424483)', 4326), 40.6694444, -93.9813889, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1822810', 'South Creek', 'Stream', 'Iowa', 'IA', 'Ringgold', 'Mount Ayr', 40.6924947, -94.1274522, ST_GeomFromText('POINT(40.6924947 -94.1274522)', 4326), 40.7344399, -94.0560617, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1822819', 'Bealls Creek', 'Stream', 'Iowa', 'IA', 'Ringgold', 'Mount Ayr', 40.6547164, -94.1743978, ST_GeomFromText('POINT(40.6547164 -94.1743978)', 4326), 40.7025, -94.2166667, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1822823', 'Tuckers Creek', 'Stream', 'Iowa', 'IA', 'Ringgold', 'Hatfield', 40.6233284, -94.1418974, ST_GeomFromText('POINT(40.6233284 -94.1418974)', 4326), 40.6827731, -94.0966184, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1822825', 'Old Reservoir', 'Reservoir', 'Iowa', 'IA', 'Ringgold', 'Mount Ayr', 40.7271069, -94.2265072, ST_GeomFromText('POINT(40.7271069 -94.2265072)', 4326), NULL, NULL, '1999-03-30', '2018-06-20', NULL, NULL, NULL),
  ('1822832', 'Mitchells Run', 'Stream', 'Iowa', 'IA', 'Ringgold', 'Blockton SE', 40.6227699, -94.3141231, ST_GeomFromText('POINT(40.6227699 -94.3141231)', 4326), 40.6966587, -94.2802332, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1822839', 'Fiddlers Creek', 'Stream', 'Iowa', 'IA', 'Ringgold', 'Blockton SE', 40.6133254, -94.3188454, ST_GeomFromText('POINT(40.6133254 -94.3188454)', 4326), 40.6466582, -94.3485683, '1999-03-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1822849', 'Schenck Lake', 'Lake', 'Iowa', 'IA', 'Page', 'Clarinda South', 40.7297192, -95.0161848, ST_GeomFromText('POINT(40.7297192 -95.0161848)', 4326), NULL, NULL, '1999-03-30', '2018-07-05', NULL, NULL, NULL),
  ('1822870', 'West Slough', 'Lake', 'Iowa', 'IA', 'Emmet', 'Ingham Lake', 43.3268057, -94.6952791, ST_GeomFromText('POINT(43.3268057 -94.6952791)', 4326), NULL, NULL, '1999-03-30', '2018-06-12', NULL, NULL, NULL),
  ('1822871', 'East Slough', 'Swamp', 'Iowa', 'IA', 'Emmet', 'Ingham Lake', 43.3255149, -94.6777586, ST_GeomFromText('POINT(43.3255149 -94.6777586)', 4326), NULL, NULL, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1822872', 'North Slough', 'Lake', 'Iowa', 'IA', 'Emmet', 'Ingham Lake', 43.333478, -94.6920558, ST_GeomFromText('POINT(43.333478 -94.6920558)', 4326), NULL, NULL, '1999-03-30', '2018-06-12', NULL, NULL, NULL),
  ('1822875', 'Cunningham Slough', 'Lake', 'Iowa', 'IA', 'Emmet', 'Ingham Lake', 43.3057819, -94.6915871, ST_GeomFromText('POINT(43.3057819 -94.6915871)', 4326), NULL, NULL, '1999-03-30', '2018-06-12', NULL, NULL, NULL),
  ('1822882', 'Redmans Branch', 'Stream', 'Iowa', 'IA', 'Decatur', 'Van Wert', 40.8372202, -93.8557789, ST_GeomFromText('POINT(40.8372202 -93.8557789)', 4326), 40.8694444, -93.8036111, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1822896', 'Sun Valley Lake', 'Reservoir', 'Iowa', 'IA', 'Ringgold', 'Ellston', 40.850689, -94.0701602, ST_GeomFromText('POINT(40.850689 -94.0701602)', 4326), NULL, NULL, '1999-03-30', '2018-06-22', NULL, NULL, NULL),
  ('1822897', 'Loch Ayr', 'Reservoir', 'Iowa', 'IA', 'Ringgold', 'Mount Ayr', 40.7465769, -94.2386254, ST_GeomFromText('POINT(40.7465769 -94.2386254)', 4326), NULL, NULL, '1999-03-30', '2018-06-20', NULL, NULL, NULL),
  ('1822908', 'Brush Creek', 'Stream', 'Iowa', 'IA', 'Ringgold', 'Benton', 40.7447134, -94.3177341, ST_GeomFromText('POINT(40.7447134 -94.3177341)', 4326), 40.8102689, -94.2924555, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1822916', 'Maharry Lake', 'Reservoir', 'Iowa', 'IA', 'Taylor', 'Lenox', 40.8939406, -94.5537285, ST_GeomFromText('POINT(40.8939406 -94.5537285)', 4326), NULL, NULL, '1999-03-30', '2018-07-05', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1822919', 'Wolf Creek', 'Stream', 'Iowa', 'IA', 'Decatur', 'Van Wert', 40.8702755, -93.8457784, ST_GeomFromText('POINT(40.8702755 -93.8457784)', 4326), 40.9055539, -93.7832766, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1822929', 'Spring Valley Lake', 'Reservoir', 'Iowa', 'IA', 'Union', 'Tingley NE', 40.9906628, -94.0766448, ST_GeomFromText('POINT(40.9906628 -94.0766448)', 4326), NULL, NULL, '1999-03-30', '2018-06-22', NULL, NULL, NULL),
  ('1822930', 'Hackberry Creek', 'Stream', 'Iowa', 'IA', 'Ringgold', 'Tingley', 40.8555485, -94.1363406, ST_GeomFromText('POINT(40.8555485 -94.1363406)', 4326), 40.8930469, -94.2257868, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1822933', 'Indian Creek', 'Stream', 'Iowa', 'IA', 'Union', 'Arispe', 40.9949911, -94.1802299, ST_GeomFromText('POINT(40.9949911 -94.1802299)', 4326), 40.9997222, -94.2483333, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1822934', 'Indian Creek', 'Stream', 'Iowa', 'IA', 'Ringgold', 'Diagonal', 40.8658239, -94.3010668, ST_GeomFromText('POINT(40.8658239 -94.3010668)', 4326), 40.8819356, -94.2424538, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1822935', 'West Plum Creek', 'Stream', 'Iowa', 'IA', 'Ringgold', 'Diagonal', 40.8636013, -94.3441239, ST_GeomFromText('POINT(40.8636013 -94.3441239)', 4326), 40.9263787, -94.346624, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1822952', 'Bird Creek', 'Stream', 'Iowa', 'IA', 'Madison', 'East Peru', 41.2033254, -93.9385585, ST_GeomFromText('POINT(41.2033254 -93.9385585)', 4326), 41.1472222, -93.9680556, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1822960', 'West Elk Creek', 'Stream', 'Iowa', 'IA', 'Decatur', 'Lamoni North', 40.7263867, -93.9430039, ST_GeomFromText('POINT(40.7263867 -93.9430039)', 4326), 40.7966616, -94.0460611, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1822961', 'Twomile Creek', 'Stream', 'Iowa', 'IA', 'Union', 'Lorimor South', 41.054159, -94.0346714, ST_GeomFromText('POINT(41.054159 -94.0346714)', 4326), 41.1005556, -94.0513889, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1822962', 'Star Branch', 'Stream', 'Iowa', 'IA', 'Union', 'Lorimor South', 41.0147138, -94.1218954, ST_GeomFromText('POINT(41.0147138 -94.1218954)', 4326), 41.0305465, -94.1827302, '1999-03-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1822966', 'Twomile Creek', 'Stream', 'Iowa', 'IA', 'Union', 'Afton', 41.0494355, -94.154952, ST_GeomFromText('POINT(41.0494355 -94.154952)', 4326), 41.1277679, -94.2132876, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1822968', 'Loefler Creek', 'Stream', 'Iowa', 'IA', 'Union', 'Afton', 41.1180465, -94.1332854, ST_GeomFromText('POINT(41.1180465 -94.1332854)', 4326), 41.190546, -94.1418974, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1822970', 'East Branch Middle Platte River', 'Stream', 'Iowa', 'IA', 'Union', 'Kent', 40.9522112, -94.4177377, ST_GeomFromText('POINT(40.9522112 -94.4177377)', 4326), 41.0416563, -94.3130121, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1822971', 'West Branch Creek', 'Stream', 'Iowa', 'IA', 'Madison', 'Macksburg', 41.1569347, -94.1710645, ST_GeomFromText('POINT(41.1569347 -94.1710645)', 4326), 41.2030446, -94.3280146, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1822989', 'Lake McKinley', 'Reservoir', 'Iowa', 'IA', 'Union', 'Creston West', 41.0508223, -94.3871817, ST_GeomFromText('POINT(41.0508223 -94.3871817)', 4326), NULL, NULL, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823004', 'Walnut Creek', 'Stream', 'Iowa', 'IA', 'Clarke', 'New Virginia', 41.1499951, -93.7266081, ST_GeomFromText('POINT(41.1499951 -93.7266081)', 4326), 41.1388836, -93.782165, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823008', 'Box Elder Creek', 'Stream', 'Iowa', 'IA', 'Warren', 'New Virginia', 41.2388829, -93.7021633, ST_GeomFromText('POINT(41.2388829 -93.7021633)', 4326), 41.1755556, -93.7194444, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823013', 'Turkery Creek', 'Stream', 'Iowa', 'IA', 'Warren', 'Indianola', 41.2597171, -93.5096585, ST_GeomFromText('POINT(41.2597171 -93.5096585)', 4326), 41.1763853, -93.506325, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823032', 'Lake George', 'Reservoir', 'Iowa', 'IA', 'Warren', 'Martensdale', 41.2916975, -93.7136022, ST_GeomFromText('POINT(41.2916975 -93.7136022)', 4326), NULL, NULL, '1999-03-30', '2018-06-12', NULL, NULL, NULL),
  ('1823034', 'Felters Branch', 'Stream', 'Iowa', 'IA', 'Warren', 'Norwalk', 41.3986028, -93.6660519, ST_GeomFromText('POINT(41.3986028 -93.6660519)', 4326), 41.3622145, -93.6635517, '1999-03-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1823040', 'Crooked Run', 'Stream', 'Iowa', 'IA', 'Kossuth', 'Seneca', 43.3332934, -94.4285838, ST_GeomFromText('POINT(43.3332934 -94.4285838)', 4326), 43.3252778, -94.4661111, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823049', 'Welty Creek', 'Stream', 'Iowa', 'IA', 'Madison', 'Pitzer', 41.2908231, -94.1507875, ST_GeomFromText('POINT(41.2908231 -94.1507875)', 4326), 41.2633333, -94.2152778, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823051', 'Fletcher Branch', 'Stream', 'Iowa', 'IA', 'Madison', 'Winterset', 41.2872124, -94.0921746, ST_GeomFromText('POINT(41.2872124 -94.0921746)', 4326), 41.2491566, -94.1602317, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823052', 'Rocky Branch', 'Stream', 'Iowa', 'IA', 'Madison', 'Pitzer', 41.2755453, -94.1680101, ST_GeomFromText('POINT(41.2755453 -94.1680101)', 4326), 41.2155455, -94.1835654, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823054', 'Baugh Branch', 'Stream', 'Iowa', 'IA', 'Madison', 'Pitzer', 41.3049898, -94.1274536, ST_GeomFromText('POINT(41.3049898 -94.1274536)', 4326), 41.3433333, -94.1861111, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823070', 'Meadow Lake', 'Reservoir', 'Iowa', 'IA', 'Adair', 'Rosserdale', 41.3847962, -94.4388431, ST_GeomFromText('POINT(41.3847962 -94.4388431)', 4326), NULL, NULL, '1999-03-30', '2018-06-12', NULL, NULL, NULL),
  ('1823076', 'Prairie Creek', 'Stream', 'Iowa', 'IA', 'Kossuth', 'Armstrong SE', 43.3001059, -94.3244869, ST_GeomFromText('POINT(43.3001059 -94.3244869)', 4326), 43.3705147, -94.3719149, '1999-03-30', '2016-08-26', NULL, NULL, NULL),
  ('1823102', 'South Creek', 'Stream', 'Iowa', 'IA', 'Kossuth', 'Armstrong', 43.4969003, -94.3916381, ST_GeomFromText('POINT(43.4969003 -94.3916381)', 4326), 43.4558333, -94.4394444, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823112', 'Diamondhead Lake', 'Reservoir', 'Iowa', 'IA', 'Guthrie', 'Stuart North', 41.5518545, -94.258534, ST_GeomFromText('POINT(41.5518545 -94.258534)', 4326), NULL, NULL, '1999-03-30', '2018-06-12', NULL, NULL, NULL),
  ('1823117', 'Spring Branch', 'Stream', 'Iowa', 'IA', 'Guthrie', 'Menlo', 41.5860984, -94.396633, ST_GeomFromText('POINT(41.5860984 -94.396633)', 4326), 41.5430556, -94.4597222, '1999-03-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1823129', 'Gard Branch', 'Stream', 'Iowa', 'IA', 'Ringgold', 'Clearfield', 40.8347118, -94.4146816, ST_GeomFromText('POINT(40.8347118 -94.4146816)', 4326), 40.8166667, -94.495, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823135', 'Fannys Branch', 'Stream', 'Iowa', 'IA', 'Dallas', 'Dawson', 41.8519293, -94.2388512, ST_GeomFromText('POINT(41.8519293 -94.2388512)', 4326), 41.7827639, -94.2419065, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823140', 'Lake Panorama', 'Reservoir', 'Iowa', 'IA', 'Guthrie', 'Guthrie Center East', 41.721889, -94.4094372, ST_GeomFromText('POINT(41.721889 -94.4094372)', 4326), NULL, NULL, '1999-03-30', '2018-06-12', NULL, NULL, NULL),
  ('1823141', 'Springbrook Creek', 'Stream', 'Iowa', 'IA', 'Guthrie', 'Bagley', 41.7694305, -94.4683038, ST_GeomFromText('POINT(41.7694305 -94.4683038)', 4326), 41.8055556, -94.4433333, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823149', 'Don Williams Lake', 'Reservoir', 'Iowa', 'IA', 'Boone', 'Ogden', 42.1149661, -94.0202773, ST_GeomFromText('POINT(42.1149661 -94.0202773)', 4326), NULL, NULL, '1999-03-30', '2018-06-22', NULL, NULL, NULL),
  ('1823177', 'Mount Moses', 'Summit', 'Iowa', 'IA', 'Carroll', 'Carroll East', 42.086683, -94.8748292, ST_GeomFromText('POINT(42.086683 -94.8748292)', 4326), NULL, NULL, '1999-03-30', '2023-09-29', NULL, NULL, NULL),
  ('1823191', 'Greenfield Lake', 'Reservoir', 'Iowa', 'IA', 'Adair', 'Greenfield', 41.2963483, -94.479299, ST_GeomFromText('POINT(41.2963483 -94.479299)', 4326), NULL, NULL, '1999-03-30', '2018-07-05', NULL, NULL, NULL),
  ('1823192', 'South Turkey Creek', 'Stream', 'Iowa', 'IA', 'Adair', 'Rosserdale', 41.4191546, -94.4182987, ST_GeomFromText('POINT(41.4191546 -94.4182987)', 4326), 41.3838765, -94.4958012, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823196', 'Cottonwood Point', 'Cape', 'Iowa', 'IA', 'Sac', 'Lake View', 42.2958166, -95.0233234, ST_GeomFromText('POINT(42.2958166 -95.0233234)', 4326), NULL, NULL, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823197', 'Drillings Point', 'Cape', 'Iowa', 'IA', 'Sac', 'Lake View', 42.3047053, -95.0141565, ST_GeomFromText('POINT(42.3047053 -95.0141565)', 4326), NULL, NULL, '1999-03-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1823198', 'Lakewood Point', 'Cape', 'Iowa', 'IA', 'Sac', 'Lake View', 42.29915, -95.0283235, ST_GeomFromText('POINT(42.29915 -95.0283235)', 4326), NULL, NULL, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823199', 'Provost Point', 'Cape', 'Iowa', 'IA', 'Sac', 'Lake View', 42.2977611, -95.0344347, ST_GeomFromText('POINT(42.2977611 -95.0344347)', 4326), NULL, NULL, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823200', 'Gun Shot Hill', 'Summit', 'Iowa', 'IA', 'Sac', 'Lake View', 42.298587, -95.0397046, ST_GeomFromText('POINT(42.298587 -95.0397046)', 4326), NULL, NULL, '1999-03-30', '2023-09-29', NULL, NULL, NULL),
  ('1823201', 'Hunters Point', 'Cape', 'Iowa', 'IA', 'Sac', 'Lake View', 42.3005389, -95.0408237, ST_GeomFromText('POINT(42.3005389 -95.0408237)', 4326), NULL, NULL, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823202', 'Ice House Point', 'Cape', 'Iowa', 'IA', 'Sac', 'Lake View', 42.3038722, -95.0394348, ST_GeomFromText('POINT(42.3038722 -95.0394348)', 4326), NULL, NULL, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823239', 'Pleasant Lake', 'Lake', 'Iowa', 'IA', 'Buena Vista', 'Newell West', 42.5688425, -95.0085303, ST_GeomFromText('POINT(42.5688425 -95.0085303)', 4326), NULL, NULL, '1999-03-30', '2018-06-12', NULL, NULL, NULL),
  ('1823251', 'Powell Creek', 'Stream', 'Iowa', 'IA', 'Buena Vista', 'Storm Lake', 42.6441474, -95.244719, ST_GeomFromText('POINT(42.6441474 -95.244719)', 4326), 42.7152584, -95.2891655, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823257', 'Little Elkhorn Creek', 'Stream', 'Iowa', 'IA', 'Audubon', 'Exira West', 41.601099, -94.9919327, ST_GeomFromText('POINT(41.601099 -94.9919327)', 4326), 41.6424874, -94.9627652, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823263', 'Victory Creek', 'Stream', 'Iowa', 'IA', 'Clarke', 'Woodburn', 41.1205521, -93.6091052, ST_GeomFromText('POINT(41.1205521 -93.6091052)', 4326), 41.0644415, -93.6479949, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823275', 'Corydon Lake', 'Reservoir', 'Iowa', 'IA', 'Wayne', 'Corydon', 40.7535753, -93.3349632, ST_GeomFromText('POINT(40.7535753 -93.3349632)', 4326), NULL, NULL, '1999-03-30', '2018-06-20', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1823283', 'Upper City Reservoir', 'Reservoir', 'Iowa', 'IA', 'Appanoose', 'Centerville West', 40.7121867, -92.8898514, ST_GeomFromText('POINT(40.7121867 -92.8898514)', 4326), NULL, NULL, '1999-03-30', '2018-06-20', NULL, NULL, NULL),
  ('1823284', 'Lower City Reservoir', 'Reservoir', 'Iowa', 'IA', 'Appanoose', 'Centerville West', 40.7145413, -92.8832169, ST_GeomFromText('POINT(40.7145413 -92.8832169)', 4326), NULL, NULL, '1999-03-30', '2018-06-20', NULL, NULL, NULL),
  ('1823290', 'Old Channel', 'Lake', 'Iowa', 'IA', 'Appanoose', 'Centerville East', 40.706339, -92.7655291, ST_GeomFromText('POINT(40.706339 -92.7655291)', 4326), NULL, NULL, '1999-03-30', '2018-06-20', NULL, NULL, NULL),
  ('1823306', 'Bleubaugh Creek', 'Stream', 'Iowa', 'IA', 'Monroe', 'Melrose', 40.9708374, -93.0668698, ST_GeomFromText('POINT(40.9708374 -93.0668698)', 4326), 40.9277778, -93.0922222, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823313', 'Moffatt Branch', 'Stream', 'Iowa', 'IA', 'Monroe', 'Iconium', 40.9394519, -92.9279771, ST_GeomFromText('POINT(40.9394519 -92.9279771)', 4326), 40.9291726, -93.0168687, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823334', 'Lake Miami', 'Reservoir', 'Iowa', 'IA', 'Monroe', 'Albia', 41.1152968, -92.8453916, ST_GeomFromText('POINT(41.1152968 -92.8453916)', 4326), NULL, NULL, '1999-03-30', '2018-06-12', NULL, NULL, NULL),
  ('1823357', 'Lake Morris', 'Reservoir', 'Iowa', 'IA', 'Lucas', 'Chariton', 41.0134179, -93.2515213, ST_GeomFromText('POINT(41.0134179 -93.2515213)', 4326), NULL, NULL, '1999-03-30', '2018-06-12', NULL, NULL, NULL),
  ('1823359', 'Red Haw Lake', 'Reservoir', 'Iowa', 'IA', 'Lucas', 'Corydon NE', 40.997937, -93.2710477, ST_GeomFromText('POINT(40.997937 -93.2710477)', 4326), NULL, NULL, '1999-03-30', '2018-06-12', NULL, NULL, NULL),
  ('1823364', 'Lake Ellis', 'Reservoir', 'Iowa', 'IA', 'Lucas', 'Chariton', 41.0084897, -93.262595, ST_GeomFromText('POINT(41.0084897 -93.262595)', 4326), NULL, NULL, '1999-03-30', '2018-06-12', NULL, NULL, NULL),
  ('1823418', 'Sage Creek', 'Stream', 'Iowa', 'IA', 'Monroe', 'Attica', 41.1330562, -93.0849261, ST_GeomFromText('POINT(41.1330562 -93.0849261)', 4326), 41.0769462, -93.073259, '1999-03-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1823421', 'Columbia Creek', 'Stream', 'Iowa', 'IA', 'Lucas', 'Attica', 41.152222, -93.109649, ST_GeomFromText('POINT(41.152222 -93.109649)', 4326), 41.1411099, -93.1902066, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823442', 'Willow Creek', 'Stream', 'Iowa', 'IA', 'Marion', 'Harvey', 41.2811113, -92.9349225, ST_GeomFromText('POINT(41.2811113 -92.9349225)', 4326), 41.2666667, -92.9883333, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823446', 'Black Oak Creek', 'Stream', 'Iowa', 'IA', 'Mahaska', 'Peoria', 41.4077779, -92.7988063, ST_GeomFromText('POINT(41.4077779 -92.7988063)', 4326), 41.4102778, -92.8416667, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823452', 'Lake Ponderosa', 'Reservoir', 'Iowa', 'IA', 'Poweshiek', 'Montezuma', 41.5893903, -92.5891046, ST_GeomFromText('POINT(41.5893903 -92.5891046)', 4326), NULL, NULL, '1999-03-30', '2018-06-11', NULL, NULL, NULL),
  ('1823501', 'Bear Creek', 'Stream', 'Iowa', 'IA', 'Hardin', 'Eldora', 42.2788731, -93.0674245, ST_GeomFromText('POINT(42.2788731 -93.0674245)', 4326), 42.3630381, -92.977145, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823502', 'Pine Creek', 'Stream', 'Iowa', 'IA', 'Hardin', 'Eldora', 42.3658159, -93.0802017, ST_GeomFromText('POINT(42.3658159 -93.0802017)', 4326), 42.4052596, -92.946589, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823510', 'Spring Creek', 'Stream', 'Iowa', 'IA', 'Franklin', 'Ackley NE', 42.7488621, -93.1096434, ST_GeomFromText('POINT(42.7488621 -93.1096434)', 4326), 42.7888603, -93.3779819, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823511', 'Deeds Creek', 'Stream', 'Iowa', 'IA', 'Lee', 'Danville', 40.7853152, -91.3440406, ST_GeomFromText('POINT(40.7853152 -91.3440406)', 4326), 40.7566667, -91.3588889, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823523', 'Lake Wilderness', 'Lake', 'Iowa', 'IA', 'Lee', 'Lowell', 40.7883729, -91.4313823, ST_GeomFromText('POINT(40.7883729 -91.4313823)', 4326), NULL, NULL, '1999-03-30', '2018-06-11', NULL, NULL, NULL),
  ('1823526', 'Hell Hollow', 'Stream', 'Iowa', 'IA', 'Lee', 'Lowell', 40.7983698, -91.3768194, ST_GeomFromText('POINT(40.7983698 -91.3768194)', 4326), 40.7644444, -91.3930556, '1999-03-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1823527', 'Geode Lake', 'Reservoir', 'Iowa', 'IA', 'Henry', 'Lowell', 40.8196635, -91.3881151, ST_GeomFromText('POINT(40.8196635 -91.3881151)', 4326), NULL, NULL, '1999-03-30', '2018-06-11', NULL, NULL, NULL),
  ('1823548', 'Mud Creek', 'Stream', 'Iowa', 'IA', 'Lee', 'Hillsboro', 40.8041976, -91.6746071, ST_GeomFromText('POINT(40.8041976 -91.6746071)', 4326), 40.8303062, -91.7715554, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823550', 'Rock Creek', 'Stream', 'Iowa', 'IA', 'Henry', 'Hillsboro', 40.8650286, -91.7076645, ST_GeomFromText('POINT(40.8650286 -91.7076645)', 4326), 40.8580826, -91.8057233, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823556', 'Big Hollow Creek', 'Stream', 'Iowa', 'IA', 'Des Moines', 'Pleasant Grove', 40.9186469, -91.2665395, ST_GeomFromText('POINT(40.9186469 -91.2665395)', 4326), 40.980915, -91.177977, '1999-03-30', '2021-01-19', NULL, NULL, NULL),
  ('1823572', 'Saunders Branch', 'Stream', 'Iowa', 'IA', 'Henry', 'Mount Pleasant', 40.9480848, -91.5740497, ST_GeomFromText('POINT(40.9480848 -91.5740497)', 4326), 40.98, -91.5561111, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823577', 'Heather Branch', 'Stream', 'Iowa', 'IA', 'Henry', 'Mount Pleasant', 40.9264192, -91.5512708, ST_GeomFromText('POINT(40.9264192 -91.5512708)', 4326), 40.9561111, -91.5077778, '1999-03-30', NULL, NULL, NULL, NULL),
  ('1823582', 'East Lake', 'Lake', 'Iowa', 'IA', 'Henry', 'Mount Pleasant', 40.9467891, -91.5192377, ST_GeomFromText('POINT(40.9467891 -91.5192377)', 4326), NULL, NULL, '1999-03-30', '2018-06-11', NULL, NULL, NULL),
  ('1823589', 'Yankee Run', 'Stream', 'Iowa', 'IA', 'Clinton', 'Wheatland', 41.8103027, -90.8123675, ST_GeomFromText('POINT(41.8103027 -90.8123675)', 4326), 41.8958516, -91.0382081, '1999-03-30', '2014-04-07', NULL, NULL, NULL),
  ('1823590', 'Elk River', 'Stream', 'Iowa', 'IA', 'Clinton', 'Clinton NW', 41.9809332, -90.1616334, ST_GeomFromText('POINT(41.9809332 -90.1616334)', 4326), 42.0694676, -90.3206856, '1999-03-30', '2014-05-14', NULL, NULL, NULL),
  ('1823591', 'Jack Creek', 'Stream', 'Iowa', 'IA', 'Palo Alto', 'Graettinger East', 43.1702407, -94.7085921, ST_GeomFromText('POINT(43.1702407 -94.7085921)', 4326), 43.3685698, -94.6522025, '1999-03-30', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1825011', 'Lynn Creek', 'Stream', 'Iowa', 'IA', 'Henry', 'Swedesburg', 41.0164162, -91.5809951, ST_GeomFromText('POINT(41.0164162 -91.5809951)', 4326), 41.115, -91.5666667, '1999-04-01', NULL, NULL, NULL, NULL),
  ('1825021', 'Roff Creek', 'Stream', 'Iowa', 'IA', 'Louisa', 'Cairo', 41.1525301, -91.2626515, ST_GeomFromText('POINT(41.1525301 -91.2626515)', 4326), 41.0716984, -91.2859853, '1999-04-01', NULL, NULL, NULL, NULL),
  ('1825027', 'Schlitzing Lake', 'Lake', 'Iowa', 'IA', 'Louisa', 'Cairo', 41.2472995, -91.2620486, ST_GeomFromText('POINT(41.2472995 -91.2620486)', 4326), NULL, NULL, '1999-04-01', '2018-06-11', NULL, NULL, NULL),
  ('1825030', 'Spring Run Creek', 'Stream', 'Iowa', 'IA', 'Louisa', 'Winfield North', 41.205026, -91.3973781, ST_GeomFromText('POINT(41.205026 -91.3973781)', 4326), 41.1733333, -91.3930556, '1999-04-01', NULL, NULL, NULL, NULL),
  ('1825031', 'Johnny Creek', 'Stream', 'Iowa', 'IA', 'Louisa', 'Winfield North', 41.2233592, -91.379322, ST_GeomFromText('POINT(41.2233592 -91.379322)', 4326), 41.2536368, -91.3537658, '1999-04-01', NULL, NULL, NULL, NULL),
  ('1825040', 'Cedar Fork Creek', 'Stream', 'Iowa', 'IA', 'Louisa', 'Pleasant Grove', 40.928091, -91.2757065, ST_GeomFromText('POINT(40.928091 -91.2757065)', 4326), 41.0430879, -91.2973745, '1999-04-01', NULL, NULL, NULL, NULL),
  ('1825049', 'Horseshoe Lake', 'Lake', 'Iowa', 'IA', 'Washington', 'Brighton', 41.234182, -91.8335046, ST_GeomFromText('POINT(41.234182 -91.8335046)', 4326), NULL, NULL, '1999-04-01', NULL, NULL, NULL, NULL),
  ('1825108', 'Volga Lake', 'Reservoir', 'Iowa', 'IA', 'Fayette', 'West Union', 42.8994837, -91.7737846, ST_GeomFromText('POINT(42.8994837 -91.7737846)', 4326), NULL, NULL, '1999-04-01', '2018-06-12', NULL, NULL, NULL),
  ('1825121', 'Goddard Creek', 'Stream', 'Iowa', 'IA', 'Winneshiek', 'Fort Atkinson', 43.1402512, -91.9526647, ST_GeomFromText('POINT(43.1402512 -91.9526647)', 4326), 43.1166401, -92.011279, '1999-04-01', NULL, NULL, NULL, NULL),
  ('1825142', 'Pulpit Rock', 'Cliff', 'Iowa', 'IA', 'Winneshiek', 'Decorah', 43.3008053, -91.8079325, ST_GeomFromText('POINT(43.3008053 -91.8079325)', 4326), NULL, NULL, '1999-04-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1825158', 'Malanaphy Springs', 'Spring', 'Iowa', 'IA', 'Winneshiek', 'Decorah', 43.3552483, -91.8348775, ST_GeomFromText('POINT(43.3552483 -91.8348775)', 4326), NULL, NULL, '1999-04-01', NULL, NULL, NULL, NULL),
  ('1825161', 'Hawks Ponds', 'Lake', 'Iowa', 'IA', 'Winneshiek', 'Burr Oak', 43.4667193, -91.7821538, ST_GeomFromText('POINT(43.4667193 -91.7821538)', 4326), NULL, NULL, '1999-04-01', '2018-06-12', NULL, NULL, NULL),
  ('1825191', 'Taylor Lakes', 'Lake', 'Iowa', 'IA', 'Allamakee', 'Harpers Ferry', 43.1832714, -91.1410687, ST_GeomFromText('POINT(43.1832714 -91.1410687)', 4326), NULL, NULL, '1999-04-01', '2018-06-12', NULL, NULL, NULL),
  ('1825194', 'Mud Hen Lake', 'Lake', 'Iowa', 'IA', 'Allamakee', 'Harpers Ferry', 43.1477634, -91.1652306, ST_GeomFromText('POINT(43.1477634 -91.1652306)', 4326), NULL, NULL, '1999-04-01', '2018-06-12', NULL, NULL, NULL),
  ('1825195', 'Off Slough', 'Lake', 'Iowa', 'IA', 'Allamakee', 'Harpers Ferry', 43.1435927, -91.1612408, ST_GeomFromText('POINT(43.1435927 -91.1612408)', 4326), NULL, NULL, '1999-04-01', NULL, NULL, NULL, NULL),
  ('1825199', 'Joyce Lake', 'Lake', 'Iowa', 'IA', 'Allamakee', 'Harpers Ferry', 43.214118, -91.1326075, ST_GeomFromText('POINT(43.214118 -91.1326075)', 4326), NULL, NULL, '1999-04-01', '2018-06-12', NULL, NULL, NULL),
  ('1825200', 'Point Ann', 'Cliff', 'Iowa', 'IA', 'Clayton', 'Prairie du Chien', 43.0210957, -91.1715187, ST_GeomFromText('POINT(43.0210957 -91.1715187)', 4326), NULL, NULL, '1999-04-01', NULL, NULL, NULL, NULL),
  ('1825202', 'Rittenhouse Lake', 'Lake', 'Iowa', 'IA', 'Allamakee', 'Eastman', 43.2064275, -91.1153427, ST_GeomFromText('POINT(43.2064275 -91.1153427)', 4326), NULL, NULL, '1999-04-01', '2016-10-26', NULL, NULL, NULL),
  ('1825203', 'Butler Lake', 'Lake', 'Iowa', 'IA', 'Allamakee', 'Eastman', 43.2080356, -91.1237402, ST_GeomFromText('POINT(43.2080356 -91.1237402)', 4326), NULL, NULL, '1999-04-01', NULL, NULL, NULL, NULL),
  ('1825204', 'Gimmel Lake', 'Lake', 'Iowa', 'IA', 'Allamakee', 'Eastman', 43.2177576, -91.1167957, ST_GeomFromText('POINT(43.2177576 -91.1167957)', 4326), NULL, NULL, '1999-04-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1825205', 'Martelle Lake', 'Lake', 'Iowa', 'IA', 'Allamakee', 'Harpers Ferry', 43.2216222, -91.125522, ST_GeomFromText('POINT(43.2216222 -91.125522)', 4326), NULL, NULL, '1999-04-01', '2018-06-12', NULL, NULL, NULL),
  ('1851955', 'Hawkeye Point', 'Summit', 'Iowa', 'IA', 'Osceola', 'Sibley East', 43.4603174, -95.7087663, ST_GeomFromText('POINT(43.4603174 -95.7087663)', 4326), NULL, NULL, '1999-10-22', '2023-09-29', NULL, NULL, NULL),
  ('1906779', 'Lake Pahoja', 'Reservoir', 'Iowa', 'IA', 'Lyon', 'Larchwood', 43.3827558, -96.4705945, ST_GeomFromText('POINT(43.3827558 -96.4705945)', 4326), NULL, NULL, '2001-05-07', '2016-05-31', NULL, NULL, NULL),
  ('1907211', 'Pilot Rock', 'Summit', 'Iowa', 'IA', 'Cherokee', 'Cherokee South', 42.695223, -95.5493822, ST_GeomFromText('POINT(42.695223 -95.5493822)', 4326), NULL, NULL, '2001-05-07', '2023-09-29', NULL, NULL, NULL),
  ('1907309', 'Wasmund Slough', 'Swamp', 'Iowa', 'IA', 'Osceola', 'Sibley East', 43.4916323, -95.7030698, ST_GeomFromText('POINT(43.4916323 -95.7030698)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907364', 'Sutton Lake Marsh', 'Swamp', 'Iowa', 'IA', 'Osceola', 'Ocheyedan', 43.4038563, -95.5133407, ST_GeomFromText('POINT(43.4038563 -95.5133407)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907523', 'McBreen Marsh', 'Swamp', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.4777401, -95.1669406, ST_GeomFromText('POINT(43.4777401 -95.1669406)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907539', 'Horseshoe Lake', 'Lake', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.4405181, -95.149718, ST_GeomFromText('POINT(43.4405181 -95.149718)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907540', 'East Hottes Lake', 'Lake', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.4817253, -95.1321707, ST_GeomFromText('POINT(43.4817253 -95.1321707)', 4326), NULL, NULL, '2001-05-07', '2018-06-20', NULL, NULL, NULL),
  ('1907541', 'Egralharve Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.4082967, -95.1799966, ST_GeomFromText('POINT(43.4082967 -95.1799966)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1907542', 'Furman Point', 'Cape', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.4185744, -95.1780521, ST_GeomFromText('POINT(43.4185744 -95.1780521)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907543', 'Raebels Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.4194077, -95.1780521, ST_GeomFromText('POINT(43.4194077 -95.1780521)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907544', 'Lazy Lagoon', 'Lake', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.432463, -95.1749964, ST_GeomFromText('POINT(43.432463 -95.1749964)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907545', 'North Bay', 'Bay', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.426352, -95.1711074, ST_GeomFromText('POINT(43.426352 -95.1711074)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907547', 'Colcord Point', 'Cape', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.4057964, -95.1586072, ST_GeomFromText('POINT(43.4057964 -95.1586072)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907550', 'Dixon Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.385241, -95.1469403, ST_GeomFromText('POINT(43.385241 -95.1469403)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907551', 'Stevens Cove', 'Bay', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.446073, -95.1108284, ST_GeomFromText('POINT(43.446073 -95.1108284)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907552', 'Templar Harbor', 'Bay', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.4541286, -95.116384, ST_GeomFromText('POINT(43.4541286 -95.116384)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907553', 'Templar Point', 'Cape', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.4569062, -95.1147173, ST_GeomFromText('POINT(43.4569062 -95.1147173)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907554', 'Kulp Point', 'Cape', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.4944053, -95.0794391, ST_GeomFromText('POINT(43.4944053 -95.0794391)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1907555', 'Anglers Bay', 'Bay', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.4971827, -95.0566609, ST_GeomFromText('POINT(43.4971827 -95.0566609)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907556', 'Anglers Bay Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.4963495, -95.0586053, ST_GeomFromText('POINT(43.4963495 -95.0586053)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907557', 'Martha Yarns Memorial Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.4916273, -95.0549941, ST_GeomFromText('POINT(43.4916273 -95.0549941)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907558', 'Harlan Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.489405, -95.0541608, ST_GeomFromText('POINT(43.489405 -95.0541608)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907559', 'Sandbar Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.4860717, -95.0544386, ST_GeomFromText('POINT(43.4860717 -95.0544386)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907560', 'Little Stoney Point', 'Cape', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.4749611, -95.0772166, ST_GeomFromText('POINT(43.4749611 -95.0772166)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907561', 'Cedar Rapids Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.4721833, -95.0808279, ST_GeomFromText('POINT(43.4721833 -95.0808279)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907562', 'Maple Oak Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.4657946, -95.0836056, ST_GeomFromText('POINT(43.4657946 -95.0836056)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907563', 'Inwood Park Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.4582947, -95.088328, ST_GeomFromText('POINT(43.4582947 -95.088328)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907564', 'Miniwaukon Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.4499616, -95.0913835, ST_GeomFromText('POINT(43.4499616 -95.0913835)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1907565', 'Ainsworth Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.445795, -95.0974947, ST_GeomFromText('POINT(43.445795 -95.0974947)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907566', 'Stoney Point', 'Cape', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.3930178, -95.0886054, ST_GeomFromText('POINT(43.3930178 -95.0886054)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907567', 'Twin Hills Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.3838514, -95.1002723, ST_GeomFromText('POINT(43.3838514 -95.1002723)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907568', 'Lone Tree Point', 'Cape', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.3891292, -95.1063836, ST_GeomFromText('POINT(43.3891292 -95.1063836)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907569', 'Brooks Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.386074, -95.1249952, ST_GeomFromText('POINT(43.386074 -95.1249952)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907570', 'Gingles Point', 'Cape', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake SE', 43.3738519, -95.1219396, ST_GeomFromText('POINT(43.3738519 -95.1219396)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907571', 'Kruses Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake SE', 43.3707963, -95.1224951, ST_GeomFromText('POINT(43.3707963 -95.1224951)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907583', 'Pioneer Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.4402395, -95.091939, ST_GeomFromText('POINT(43.4402395 -95.091939)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907584', 'Peppermint Point', 'Cape', 'Iowa', 'IA', 'Dickinson', 'Spirit Lake', 43.4324618, -95.0969391, ST_GeomFromText('POINT(43.4324618 -95.0969391)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907640', 'Manhattan Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.3913524, -95.1672186, ST_GeomFromText('POINT(43.3913524 -95.1672186)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1907641', 'Papoose Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.3755194, -95.1719411, ST_GeomFromText('POINT(43.3755194 -95.1719411)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907642', 'Arrowhead Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Milford', 43.3699637, -95.1619408, ST_GeomFromText('POINT(43.3699637 -95.1619408)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907643', 'Spencer Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Milford', 43.3694081, -95.1611074, ST_GeomFromText('POINT(43.3694081 -95.1611074)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907644', 'Little Millers Point', 'Cape', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.3805194, -95.1766634, ST_GeomFromText('POINT(43.3805194 -95.1766634)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907646', 'Milford Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Milford', 43.366075, -95.1697187, ST_GeomFromText('POINT(43.366075 -95.1697187)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907647', 'Crescent Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Milford', 43.366075, -95.1697187, ST_GeomFromText('POINT(43.366075 -95.1697187)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907648', 'Jones Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Milford', 43.3549639, -95.1627741, ST_GeomFromText('POINT(43.3549639 -95.1627741)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907649', 'Lime Kiln Point', 'Cape', 'Iowa', 'IA', 'Dickinson', 'Milford', 43.3582969, -95.1477737, ST_GeomFromText('POINT(43.3582969 -95.1477737)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907651', 'Givens Point', 'Cape', 'Iowa', 'IA', 'Dickinson', 'Milford', 43.3746853, -95.1286064, ST_GeomFromText('POINT(43.3746853 -95.1286064)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907652', 'Fillenworth Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Milford', 43.3707964, -95.1286064, ST_GeomFromText('POINT(43.3707964 -95.1286064)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1907653', 'Sunset Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Milford', 43.3660745, -95.1419402, ST_GeomFromText('POINT(43.3660745 -95.1419402)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907654', 'Gilleys Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Milford', 43.3624635, -95.1433291, ST_GeomFromText('POINT(43.3624635 -95.1433291)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907655', 'Wheelers Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Milford', 43.3582969, -95.1474959, ST_GeomFromText('POINT(43.3582969 -95.1474959)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907656', 'Bay View Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Milford', 43.3555192, -95.1472181, ST_GeomFromText('POINT(43.3555192 -95.1472181)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907657', 'Maywood Beach', 'Beach', 'Iowa', 'IA', 'Dickinson', 'Milford', 43.3516304, -95.148607, ST_GeomFromText('POINT(43.3516304 -95.148607)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907658', 'Cass Bay', 'Cape', 'Iowa', 'IA', 'Dickinson', 'Milford', 43.3669077, -95.1391623, ST_GeomFromText('POINT(43.3669077 -95.1391623)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907659', 'Christys Point', 'Cape', 'Iowa', 'IA', 'Dickinson', 'Milford', 43.360241, -95.1280509, ST_GeomFromText('POINT(43.360241 -95.1280509)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907684', 'Little Millers Bay', 'Bay', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.3805194, -95.1794412, ST_GeomFromText('POINT(43.3805194 -95.1794412)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1907689', 'Hiawatha Point', 'Cape', 'Iowa', 'IA', 'Dickinson', 'Okoboji', 43.3763526, -95.1669409, ST_GeomFromText('POINT(43.3763526 -95.1669409)', 4326), NULL, NULL, '2001-05-07', NULL, NULL, NULL, NULL),
  ('1925091', 'Michaelsen Marsh', 'Swamp', 'Iowa', 'IA', 'Palo Alto', 'Titonka', 43.2457949, -94.0919022, ST_GeomFromText('POINT(43.2457949 -94.0919022)', 4326), NULL, NULL, '2001-06-15', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1925093', 'Greenwood Marsh', 'Swamp', 'Iowa', 'IA', 'Kossuth', 'Armstrong SE', 43.2699615, -94.3038562, ST_GeomFromText('POINT(43.2699615 -94.3038562)', 4326), NULL, NULL, '2001-06-15', NULL, NULL, NULL, NULL),
  ('1925812', 'Gustafson Lake', 'Lake', 'Iowa', 'IA', 'Buena Vista', 'Sioux Rapids', 42.8799762, -95.1497163, ST_GeomFromText('POINT(42.8799762 -95.1497163)', 4326), NULL, NULL, '2001-06-15', NULL, NULL, NULL, NULL),
  ('1926082', 'Rutland Marsh', 'Swamp', 'Iowa', 'IA', 'Humboldt', 'Bode', 42.7666382, -94.2585756, ST_GeomFromText('POINT(42.7666382 -94.2585756)', 4326), NULL, NULL, '2001-06-15', NULL, NULL, NULL, NULL),
  ('1930549', 'Dubuque Hills', 'Range', 'Iowa', 'IA', 'Dubuque', 'Dubuque South', 42.4166733, -90.6334618, ST_GeomFromText('POINT(42.4166733 -90.6334618)', 4326), NULL, NULL, '2001-08-03', NULL, NULL, NULL, NULL),
  ('1940956', 'Clark Lake', 'Reservoir', 'Iowa', 'IA', 'Cerro Gordo', 'Hanford', 43.1013524, -93.184925, ST_GeomFromText('POINT(43.1013524 -93.184925)', 4326), NULL, NULL, '2001-10-23', NULL, NULL, NULL, NULL),
  ('1941095', 'Briarstone Lake', 'Reservoir', 'Iowa', 'IA', 'Cerro Gordo', 'Mason City', 43.145418, -93.2358562, ST_GeomFromText('POINT(43.145418 -93.2358562)', 4326), NULL, NULL, '2001-10-23', '2018-06-11', NULL, NULL, NULL),
  ('1941096', 'Spring Lake', 'Reservoir', 'Iowa', 'IA', 'Cerro Gordo', 'Mason City', 43.1446233, -93.2308226, ST_GeomFromText('POINT(43.1446233 -93.2308226)', 4326), NULL, NULL, '2001-10-23', '2018-06-11', NULL, NULL, NULL),
  ('1941097', 'Sunset Lake', 'Reservoir', 'Iowa', 'IA', 'Cerro Gordo', 'Mason City', 43.1530071, -93.232429, ST_GeomFromText('POINT(43.1530071 -93.232429)', 4326), NULL, NULL, '2001-10-23', '2012-11-18', NULL, NULL, NULL),
  ('1941098', 'Lake Cona Toma', 'Reservoir', 'Iowa', 'IA', 'Cerro Gordo', 'Mason City', 43.1545794, -93.2280067, ST_GeomFromText('POINT(43.1545794 -93.2280067)', 4326), NULL, NULL, '2001-10-23', '2018-06-11', NULL, NULL, NULL),
  ('1941190', 'Dodges Beach', 'Beach', 'Iowa', 'IA', 'Cerro Gordo', 'Ventura Heights', 43.112182, -93.4377064, ST_GeomFromText('POINT(43.112182 -93.4377064)', 4326), NULL, NULL, '2001-10-23', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1941227', 'Woodford Island', 'Island', 'Iowa', 'IA', 'Cerro Gordo', 'Ventura Heights', 43.1210708, -93.4171506, ST_GeomFromText('POINT(43.1210708 -93.4171506)', 4326), NULL, NULL, '2001-10-23', NULL, NULL, NULL, NULL),
  ('1941228', 'Farmers Beach', 'Beach', 'Iowa', 'IA', 'Cerro Gordo', 'Ventura Heights', 43.1099598, -93.4502065, ST_GeomFromText('POINT(43.1099598 -93.4502065)', 4326), NULL, NULL, '2001-10-23', NULL, NULL, NULL, NULL),
  ('1948514', 'Cedar Lake', 'Reservoir', 'Iowa', 'IA', 'Chickasaw', 'Nashua', 42.9699673, -92.5502444, ST_GeomFromText('POINT(42.9699673 -92.5502444)', 4326), NULL, NULL, '2002-01-31', '2018-06-11', NULL, NULL, NULL),
  ('1949636', 'Big Lake', 'Lake', 'Iowa', 'IA', 'Pottawattamie', 'Council Bluffs North', 41.2944419, -95.8614007, ST_GeomFromText('POINT(41.2944419 -95.8614007)', 4326), NULL, NULL, '2002-01-31', NULL, NULL, NULL, NULL),
  ('1968111', 'Simon Run', 'Stream', 'Iowa', 'IA', 'Pottawattamie', 'Honey Creek', 41.3872177, -95.8538999, ST_GeomFromText('POINT(41.3872177 -95.8538999)', 4326), 41.3788889, -95.7841667, '2003-01-09', NULL, NULL, NULL, NULL),
  ('1968353', 'Lake George', 'Lake', 'Iowa', 'IA', 'Mills', 'Emerson', 41.024441, -95.4619419, ST_GeomFromText('POINT(41.024441 -95.4619419)', 4326), NULL, NULL, '2003-01-15', NULL, NULL, NULL, NULL),
  ('1968356', 'Keg Creek Lake', 'Reservoir', 'Iowa', 'IA', 'Mills', 'Rock Bluff', 40.9853846, -95.8038886, ST_GeomFromText('POINT(40.9853846 -95.8038886)', 4326), NULL, NULL, '2003-01-15', '2018-06-22', NULL, NULL, NULL),
  ('1968361', 'Tree Lake', 'Reservoir', 'Iowa', 'IA', 'Mills', 'Council Bluffs South', 41.1308039, -95.780755, ST_GeomFromText('POINT(41.1308039 -95.780755)', 4326), NULL, NULL, '2003-01-15', '2018-06-22', NULL, NULL, NULL),
  ('1968455', 'Mile Hill Lake', 'Reservoir', 'Iowa', 'IA', 'Mills', 'Pacific Junction', 41.0458278, -95.7829843, ST_GeomFromText('POINT(41.0458278 -95.7829843)', 4326), NULL, NULL, '2003-01-15', '2018-06-22', NULL, NULL, NULL),
  ('1968457', 'Pony Creek Lake', 'Reservoir', 'Iowa', 'IA', 'Mills', 'Pacific Junction', 41.0791423, -95.7917759, ST_GeomFromText('POINT(41.0791423 -95.7917759)', 4326), NULL, NULL, '2003-01-15', '2018-06-22', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1968459', 'Boyer Hollow', 'Valley', 'Iowa', 'IA', 'Mills', 'Pacific Junction', 41.0687639, -95.8080465, ST_GeomFromText('POINT(41.0687639 -95.8080465)', 4326), 41.0729701, -95.801136, '2003-01-15', '2023-10-11', NULL, NULL, NULL),
  ('1968460', 'Indian Hollow', 'Valley', 'Iowa', 'IA', 'Mills', 'Pacific Junction', 41.1066741, -95.8185613, ST_GeomFromText('POINT(41.1066741 -95.8185613)', 4326), 41.1045062, -95.8100779, '2003-01-15', '2023-10-11', NULL, NULL, NULL),
  ('1968461', 'Wall Hollow', 'Valley', 'Iowa', 'IA', 'Mills', 'Pacific Junction', 41.1212215, -95.8157222, ST_GeomFromText('POINT(41.1212215 -95.8157222)', 4326), 41.1193556, -95.8017235, '2003-01-15', '2023-10-11', NULL, NULL, NULL),
  ('1968874', 'Lake of the Three Fires', 'Reservoir', 'Iowa', 'IA', 'Taylor', 'Bedford', 40.7085988, -94.6877461, ST_GeomFromText('POINT(40.7085988 -94.6877461)', 4326), NULL, NULL, '2003-01-15', NULL, NULL, NULL, NULL),
  ('1968973', 'Mormon Trail Lake', 'Reservoir', 'Iowa', 'IA', 'Adair', 'Bridgewater', 41.2423239, -94.6355066, ST_GeomFromText('POINT(41.2423239 -94.6355066)', 4326), NULL, NULL, '2003-01-15', '2020-10-19', NULL, NULL, NULL),
  ('1969462', 'Three Mile Lake', 'Reservoir', 'Iowa', 'IA', 'Union', 'Afton', 41.0902404, -94.2300079, ST_GeomFromText('POINT(41.0902404 -94.2300079)', 4326), NULL, NULL, '2003-01-15', '2023-04-06', NULL, NULL, NULL),
  ('1969464', 'Twelve Mile Lake', 'Reservoir', 'Iowa', 'IA', 'Union', 'Creston East', 41.0700783, -94.2683992, ST_GeomFromText('POINT(41.0700783 -94.2683992)', 4326), NULL, NULL, '2003-01-15', '2023-04-06', NULL, NULL, NULL),
  ('1970709', 'Hawthorn Lake', 'Reservoir', 'Iowa', 'IA', 'Mahaska', 'Gibson', 41.4750048, -92.4585195, ST_GeomFromText('POINT(41.4750048 -92.4585195)', 4326), NULL, NULL, '2003-01-15', NULL, NULL, NULL, NULL),
  ('1976453', 'Reservoir Number Two', 'Reservoir', 'Iowa', 'IA', 'Jefferson', 'Fairfield North', 41.0278368, -91.9499672, ST_GeomFromText('POINT(41.0278368 -91.9499672)', 4326), NULL, NULL, '2003-01-15', '2018-06-11', NULL, NULL, NULL),
  ('1976454', 'Reservoir Number One', 'Reservoir', 'Iowa', 'IA', 'Jefferson', 'Fairfield North', 41.0209848, -91.9548786, ST_GeomFromText('POINT(41.0209848 -91.9548786)', 4326), NULL, NULL, '2003-01-15', '2018-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1982491', 'Brass Island', 'Island', 'Iowa', 'IA', 'Louisa', 'Toolesboro', 41.1625329, -91.0173673, ST_GeomFromText('POINT(41.1625329 -91.0173673)', 4326), NULL, NULL, '2003-01-16', NULL, NULL, NULL, NULL),
  ('1982493', 'Big Goose Pond', 'Lake', 'Iowa', 'IA', 'Louisa', 'Toolesboro', 41.1805874, -91.0820913, ST_GeomFromText('POINT(41.1805874 -91.0820913)', 4326), NULL, NULL, '2003-01-16', NULL, NULL, NULL, NULL),
  ('1982494', 'Beebe Pond', 'Lake', 'Iowa', 'IA', 'Louisa', 'Toolesboro', 41.1972535, -91.0876471, ST_GeomFromText('POINT(41.1972535 -91.0876471)', 4326), NULL, NULL, '2003-01-16', NULL, NULL, NULL, NULL),
  ('1982495', 'Swarms Pond', 'Lake', 'Iowa', 'IA', 'Louisa', 'Toolesboro', 41.1972534, -91.0973696, ST_GeomFromText('POINT(41.1972534 -91.0973696)', 4326), NULL, NULL, '2003-01-16', NULL, NULL, NULL, NULL),
  ('1982500', 'Turkey Towhead Island', 'Island', 'Iowa', 'IA', 'Louisa', 'Toolesboro', 41.212531, -91.0895916, ST_GeomFromText('POINT(41.212531 -91.0895916)', 4326), NULL, NULL, '2003-01-16', NULL, NULL, NULL, NULL),
  ('1982501', 'Fox Pond', 'Lake', 'Iowa', 'IA', 'Louisa', 'Toolesboro', 41.2114235, -91.099812, ST_GeomFromText('POINT(41.2114235 -91.099812)', 4326), NULL, NULL, '2003-01-16', '2023-05-23', NULL, NULL, NULL),
  ('1982502', 'Little Fox Pond', 'Lake', 'Iowa', 'IA', 'Louisa', 'Toolesboro', 41.2130565, -91.0967588, ST_GeomFromText('POINT(41.2130565 -91.0967588)', 4326), NULL, NULL, '2003-01-16', '2023-05-23', NULL, NULL, NULL),
  ('1982522', 'Ramsey Island', 'Island', 'Iowa', 'IA', 'Louisa', 'Blanchard Island', 41.2625298, -91.1057037, ST_GeomFromText('POINT(41.2625298 -91.1057037)', 4326), NULL, NULL, '2003-01-16', NULL, NULL, NULL, NULL),
  ('1982605', 'Little George Lake', 'Lake', 'Iowa', 'IA', 'Shelby', 'Harlan', 41.6371774, -95.3247832, ST_GeomFromText('POINT(41.6371774 -95.3247832)', 4326), NULL, NULL, '2003-01-16', '2018-06-27', NULL, NULL, NULL),
  ('1983213', 'Otter Creek Lake', 'Reservoir', 'Iowa', 'IA', 'Tama', 'Gladbrook SE', 42.0458776, -92.5202049, ST_GeomFromText('POINT(42.0458776 -92.5202049)', 4326), NULL, NULL, '2003-01-16', '2018-06-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1995068', 'Huron Chute', 'Stream', 'Iowa', 'IA', 'Des Moines', 'Keithsburg', 41.0264341, -90.9667205, ST_GeomFromText('POINT(41.0264341 -90.9667205)', 4326), 41.0666667, -90.9555556, '2003-09-16', '2014-05-15', NULL, NULL, NULL),
  ('1995069', 'Heaton Lake', 'Lake', 'Iowa', 'IA', 'Des Moines', 'Keithsburg', 41.0334827, -90.9806353, ST_GeomFromText('POINT(41.0334827 -90.9806353)', 4326), NULL, NULL, '2003-09-16', '2018-06-11', NULL, NULL, NULL),
  ('1995070', 'Gates Lake', 'Lake', 'Iowa', 'IA', 'Des Moines', 'Keithsburg', 41.0594797, -90.9723655, ST_GeomFromText('POINT(41.0594797 -90.9723655)', 4326), NULL, NULL, '2003-09-16', NULL, NULL, NULL, NULL),
  ('1995071', 'Garner Island', 'Island', 'Iowa', 'IA', 'Des Moines', 'Keithsburg', 41.0578132, -90.9656988, ST_GeomFromText('POINT(41.0578132 -90.9656988)', 4326), NULL, NULL, '2003-09-16', NULL, NULL, NULL, NULL),
  ('1995072', 'Buffalo Slough', 'Stream', 'Iowa', 'IA', 'Des Moines', 'Keithsburg', 41.0500356, -90.9654209, ST_GeomFromText('POINT(41.0500356 -90.9654209)', 4326), 41.0352778, -90.9638889, '2003-09-16', NULL, NULL, NULL, NULL),
  ('1995073', 'Gun Chute', 'Stream', 'Iowa', 'IA', 'Des Moines', 'Keithsburg', 41.0186473, -90.9626428, ST_GeomFromText('POINT(41.0186473 -90.9626428)', 4326), 41.0555556, -90.9638889, '2003-09-16', NULL, NULL, NULL, NULL),
  ('1995074', 'Cody Chute', 'Stream', 'Iowa', 'IA', 'Des Moines', 'Keithsburg', 41.0189251, -90.9568094, ST_GeomFromText('POINT(41.0189251 -90.9568094)', 4326), 41.0408333, -90.9513889, '2003-09-16', NULL, NULL, NULL, NULL),
  ('1995075', 'Twin Ponds', 'Lake', 'Iowa', 'IA', 'Des Moines', 'Keithsburg', 41.0394802, -90.9593096, ST_GeomFromText('POINT(41.0394802 -90.9593096)', 4326), NULL, NULL, '2003-09-16', NULL, NULL, NULL, NULL),
  ('1995077', 'Big Cody Island', 'Island', 'Iowa', 'IA', 'Des Moines', 'Keithsburg', 41.0278138, -90.9543094, ST_GeomFromText('POINT(41.0278138 -90.9543094)', 4326), NULL, NULL, '2003-09-16', NULL, NULL, NULL, NULL),
  ('1995080', 'Little Cody Island', 'Island', 'Iowa', 'IA', 'Des Moines', 'Keithsburg', 41.0250361, -90.9529205, ST_GeomFromText('POINT(41.0250361 -90.9529205)', 4326), NULL, NULL, '2003-09-16', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1995081', 'Charlie Island', 'Island', 'Iowa', 'IA', 'Des Moines', 'Keithsburg', 41.0128141, -90.954587, ST_GeomFromText('POINT(41.0128141 -90.954587)', 4326), NULL, NULL, '2003-09-16', NULL, NULL, NULL, NULL),
  ('1995192', 'Oquawka Island', 'Island', 'Iowa', 'IA', 'Des Moines', 'Oquawka', 40.9280932, -90.9690312, ST_GeomFromText('POINT(40.9280932 -90.9690312)', 4326), NULL, NULL, '2003-09-16', NULL, NULL, NULL, NULL),
  ('1995193', 'Camp Island', 'Island', 'Iowa', 'IA', 'Des Moines', 'Oquawka', 40.994481, -90.9551425, ST_GeomFromText('POINT(40.994481 -90.9551425)', 4326), NULL, NULL, '2003-09-16', NULL, NULL, NULL, NULL),
  ('1995195', 'Long Island', 'Island', 'Iowa', 'IA', 'Des Moines', 'Oquawka', 40.9219821, -90.9695867, ST_GeomFromText('POINT(40.9219821 -90.9695867)', 4326), NULL, NULL, '2003-09-16', NULL, NULL, NULL, NULL),
  ('1995196', 'Jacoby Island', 'Island', 'Iowa', 'IA', 'Des Moines', 'Oquawka', 40.9889256, -90.9612537, ST_GeomFromText('POINT(40.9889256 -90.9612537)', 4326), NULL, NULL, '2003-09-16', NULL, NULL, NULL, NULL),
  ('1995198', 'Furnald Island', 'Island', 'Iowa', 'IA', 'Des Moines', 'Oquawka', 40.9219821, -90.9834759, ST_GeomFromText('POINT(40.9219821 -90.9834759)', 4326), NULL, NULL, '2003-09-16', NULL, NULL, NULL, NULL),
  ('1995323', 'Dakota Point', 'Summit', 'Iowa', 'IA', 'Woodbury', 'Sioux City North', 42.5544156, -96.4713669, ST_GeomFromText('POINT(42.5544156 -96.4713669)', 4326), NULL, NULL, '2003-09-16', '2023-10-07', NULL, NULL, NULL),
  ('1997469', 'Gehrkes Lake', 'Reservoir', 'Iowa', 'IA', 'Hardin', 'Buckeye East', 42.4056627, -93.3168686, ST_GeomFromText('POINT(42.4056627 -93.3168686)', 4326), NULL, NULL, '2003-09-16', '2018-06-11', NULL, NULL, NULL),
  ('1999644', 'Lake Pla-Mor', 'Reservoir', 'Iowa', 'IA', 'Jasper', 'Oakland Acres', 41.6777715, -92.8388042, ST_GeomFromText('POINT(41.6777715 -92.8388042)', 4326), NULL, NULL, '2003-09-26', NULL, NULL, NULL, NULL),
  ('2000861', 'Hagenson Pond', 'Reservoir', 'Iowa', 'IA', 'Clinton', 'Cordova', 41.7434831, -90.3571477, ST_GeomFromText('POINT(41.7434831 -90.3571477)', 4326), NULL, NULL, '2003-09-26', '2018-06-07', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2001876', 'Chimney Rock', 'Summit', 'Iowa', 'IA', 'Jones', 'Scotch Grove', 42.2199607, -91.0814934, ST_GeomFromText('POINT(42.2199607 -91.0814934)', 4326), NULL, NULL, '2003-09-26', '2024-03-28', NULL, NULL, NULL),
  ('2045964', 'Robinson Crusoe Island', 'Island', 'Iowa', 'IA', 'Black Hawk', 'Waterloo North', 42.5077637, -92.3537965, ST_GeomFromText('POINT(42.5077637 -92.3537965)', 4326), NULL, NULL, '2004-09-22', NULL, NULL, NULL, NULL),
  ('2045968', 'San Souci Island', 'Island', 'Iowa', 'IA', 'Black Hawk', 'Waterloo North', 42.5166522, -92.371019, ST_GeomFromText('POINT(42.5166522 -92.371019)', 4326), NULL, NULL, '2004-09-22', NULL, NULL, NULL, NULL),
  ('2045976', 'Blackwood Island', 'Island', 'Iowa', 'IA', 'Black Hawk', 'Cedar Falls', 42.5166521, -92.378797, ST_GeomFromText('POINT(42.5166521 -92.378797)', 4326), NULL, NULL, '2004-09-22', NULL, NULL, NULL, NULL),
  ('2045977', 'East Lake', 'Reservoir', 'Iowa', 'IA', 'Black Hawk', 'Cedar Falls', 42.5224852, -92.3843527, ST_GeomFromText('POINT(42.5224852 -92.3843527)', 4326), NULL, NULL, '2004-09-22', '2018-06-08', NULL, NULL, NULL),
  ('2046051', 'Big Woods Lake', 'Reservoir', 'Iowa', 'IA', 'Black Hawk', 'Cedar Falls', 42.5485953, -92.4335202, ST_GeomFromText('POINT(42.5485953 -92.4335202)', 4326), NULL, NULL, '2004-09-22', '2018-06-08', NULL, NULL, NULL),
  ('2046065', 'Alice Wyth Lake', 'Reservoir', 'Iowa', 'IA', 'Black Hawk', 'Cedar Falls', 42.5305402, -92.4224091, ST_GeomFromText('POINT(42.5305402 -92.4224091)', 4326), NULL, NULL, '2004-09-22', '2018-06-08', NULL, NULL, NULL),
  ('2046066', 'George Wyth Lake', 'Reservoir', 'Iowa', 'IA', 'Black Hawk', 'Cedar Falls', 42.534846, -92.3975682, ST_GeomFromText('POINT(42.534846 -92.3975682)', 4326), NULL, NULL, '2004-09-22', '2018-06-12', NULL, NULL, NULL),
  ('2046083', 'Prairie Lakes', 'Reservoir', 'Iowa', 'IA', 'Black Hawk', 'Hudson', 42.4777373, -92.4606095, ST_GeomFromText('POINT(42.4777373 -92.4606095)', 4326), NULL, NULL, '2004-09-22', '2018-06-12', NULL, NULL, NULL),
  ('2046128', 'Martin Lake', 'Reservoir', 'Iowa', 'IA', 'Black Hawk', 'Hudson', 42.479108, -92.388582, ST_GeomFromText('POINT(42.479108 -92.388582)', 4326), NULL, NULL, '2004-09-22', '2024-07-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2046193', 'Hanson Lake', 'Reservoir', 'Iowa', 'IA', 'Black Hawk', 'Waterloo South', 42.4557037, -92.2981026, ST_GeomFromText('POINT(42.4557037 -92.2981026)', 4326), NULL, NULL, '2004-09-22', '2018-06-12', NULL, NULL, NULL),
  ('2046197', 'Deerwood Lake', 'Reservoir', 'Iowa', 'IA', 'Black Hawk', 'Waterloo South', 42.4583208, -92.3057402, ST_GeomFromText('POINT(42.4583208 -92.3057402)', 4326), NULL, NULL, '2004-09-22', NULL, NULL, NULL, NULL),
  ('2046862', 'Ink Pond', 'Lake', 'Iowa', 'IA', 'Linn', 'Mount Vernon', 41.9234899, -91.4251652, ST_GeomFromText('POINT(41.9234899 -91.4251652)', 4326), NULL, NULL, '2004-09-22', '2018-06-11', NULL, NULL, NULL),
  ('2047067', 'Hecker Creek', 'Stream', 'Iowa', 'IA', 'Allamakee', 'Frankville', 43.1383118, -91.5682008, ST_GeomFromText('POINT(43.1383118 -91.5682008)', 4326), 43.0902574, -91.5720904, '2004-09-23', NULL, NULL, NULL, NULL),
  ('2047569', 'Faith Pond', 'Reservoir', 'Iowa', 'IA', 'Polk', 'Des Moines NW', 41.7386708, -93.6274293, ST_GeomFromText('POINT(41.7386708 -93.6274293)', 4326), NULL, NULL, '2004-10-04', '2018-06-22', NULL, NULL, NULL),
  ('2047804', 'Lake Country Club', 'Reservoir', 'Iowa', 'IA', 'Polk', 'Commerce', 41.6080444, -93.8043908, ST_GeomFromText('POINT(41.6080444 -93.8043908)', 4326), NULL, NULL, '2004-10-04', NULL, NULL, NULL, NULL),
  ('2047897', 'Horseshoe Lake', 'Lake', 'Iowa', 'IA', 'Polk', 'Des Moines NW', 41.6516554, -93.6579972, ST_GeomFromText('POINT(41.6516554 -93.6579972)', 4326), NULL, NULL, '2004-10-04', NULL, NULL, NULL, NULL),
  ('2059140', 'Willow Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Cedar Rapids South', 41.9296648, -91.6795564, ST_GeomFromText('POINT(41.9296648 -91.6795564)', 4326), 41.89825, -91.71481, '2000-01-01', '2011-06-25', 'Official', 'Board Decision', '2005-01-01'),
  ('2071329', 'Sycamore Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Port Byron', 41.58194, -90.37139, ST_GeomFromText('POINT(41.58194 -90.37139)', 4326), 41.61557, -90.40461, '2005-07-16', '2014-06-19', NULL, NULL, NULL),
  ('2071330', 'Whiskey Run Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Cordova', 41.67472, -90.33972, ST_GeomFromText('POINT(41.67472 -90.33972)', 4326), 41.6157048, -90.4044881, '2005-07-16', '2014-06-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2071690', 'Lund Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Cordova', 41.6494444, -90.3466667, ST_GeomFromText('POINT(41.6494444 -90.3466667)', 4326), 41.6363889, -90.3605556, '2005-07-23', '2008-11-13', 'Official', 'Board Decision', '2008-11-13'),
  ('2084098', 'Nahant Marsh', 'Swamp', 'Iowa', 'IA', 'Scott', 'Andalusia', 41.4912, -90.6375, ST_GeomFromText('POINT(41.4912 -90.6375)', 4326), NULL, NULL, '2006-02-14', NULL, NULL, NULL, NULL),
  ('2089085', 'Bena Brook', 'Stream', 'Iowa', 'IA', 'Linn', 'Bertram', 41.9638889, -91.5894444, ST_GeomFromText('POINT(41.9638889 -91.5894444)', 4326), 41.9752778, -91.595, '2006-06-02', NULL, 'Official', 'Board Decision', '2006-05-11'),
  ('2093128', 'Candlelight Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Davenport East', 41.5675, -90.5713, ST_GeomFromText('POINT(41.5675 -90.5713)', 4326), 41.5767, -90.5905, '2006-09-01', NULL, NULL, NULL, NULL),
  ('2093129', 'Robin Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Davenport East', 41.552, -90.5897, ST_GeomFromText('POINT(41.552 -90.5897)', 4326), 41.5689, -90.6082, '2006-09-01', NULL, NULL, NULL, NULL),
  ('2093130', 'Pheasant Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Davenport East', 41.5483333, -90.5291667, ST_GeomFromText('POINT(41.5483333 -90.5291667)', 4326), 41.5961111, -90.5463889, '2006-09-03', NULL, NULL, NULL, NULL),
  ('2093131', 'West Pheasant Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Davenport East', 41.5672222, -90.5238889, ST_GeomFromText('POINT(41.5672222 -90.5238889)', 4326), 41.5833333, -90.5466667, '2006-09-03', NULL, NULL, NULL, NULL),
  ('2093132', 'Cardinal Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Davenport West', 41.5538889, -90.6461111, ST_GeomFromText('POINT(41.5538889 -90.6461111)', 4326), 41.5805556, -90.7011111, '2006-09-03', NULL, NULL, NULL, NULL),
  ('2093133', 'Field Sike Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Silvis', 41.5776, -90.4912, ST_GeomFromText('POINT(41.5776 -90.4912)', 4326), 41.5947, -90.4997, '2006-09-03', NULL, NULL, NULL, NULL),
  ('2093134', 'Stafford Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Silvis', 41.5395, -90.4956, ST_GeomFromText('POINT(41.5395 -90.4956)', 4326), 41.5722, -90.5078, '2006-09-03', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2127000', 'Crystal Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Davenport West', 41.5522222, -90.6341667, ST_GeomFromText('POINT(41.5522222 -90.6341667)', 4326), 41.5327778, -90.6475, '2007-06-12', NULL, 'Official', 'Board Decision', '2007-06-11'),
  ('2359629', 'Ludlow Creek', 'Stream', 'Iowa', 'IA', 'Allamakee', 'Frankville', 43.1633333, -91.5258333, ST_GeomFromText('POINT(43.1633333 -91.5258333)', 4326), 43.2205556, -91.6122222, '2007-11-08', NULL, 'Official', 'Board Decision', '2007-11-08'),
  ('2374230', 'Hopewell Creek', 'Stream', 'Iowa', 'IA', 'Scott', 'Silvis', 41.5713889, -90.475, ST_GeomFromText('POINT(41.5713889 -90.475)', 4326), 41.5936111, -90.4866667, '2007-12-31', NULL, NULL, NULL, NULL),
  ('2558101', 'Theisen Creek', 'Stream', 'Iowa', 'IA', 'Dubuque', 'Bernard', 42.32901, -90.80744, ST_GeomFromText('POINT(42.32901 -90.80744)', 4326), 42.35371, -90.80999, '2009-05-28', NULL, 'Official', 'Board Decision', '2009-05-27'),
  ('2559902', 'Indian Creek', 'Stream', 'Iowa', 'IA', 'Jasper', 'Colfax', 41.6944444, -93.1988889, ST_GeomFromText('POINT(41.6944444 -93.1988889)', 4326), 41.9208333, -93.4197222, '2009-07-16', NULL, NULL, NULL, NULL),
  ('2570969', 'Shain Creek', 'Stream', 'Missouri', 'MO', 'Harrison', 'Brooklyn', 40.390031, -94.042068, ST_GeomFromText('POINT(40.390031 -94.042068)', 4326), 40.64141, -93.989882, '2009-09-21', NULL, NULL, NULL, NULL),
  ('2635498', 'Liberty Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Hills', 41.535085, -91.530919, ST_GeomFromText('POINT(41.535085 -91.530919)', 4326), 41.533591, -91.56081, '2010-08-16', NULL, 'Official', 'Board Decision', '2010-08-12'),
  ('2635499', 'North Fork Liberty Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Hills', 41.533591, -91.56081, ST_GeomFromText('POINT(41.533591 -91.56081)', 4326), 41.545477, -91.572633, '2010-08-16', NULL, 'Official', 'Board Decision', '2010-08-12'),
  ('2635500', 'South Fork Liberty Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Hills', 41.533591, -91.56081, ST_GeomFromText('POINT(41.533591 -91.56081)', 4326), 41.5237203, -91.6022015, '2010-08-16', '2012-03-26', 'Official', 'Board Decision', '2010-08-12'),
  ('2649018', 'Hoover Creek', 'Stream', 'Iowa', 'IA', 'Cedar', 'West Branch', 41.669963, -91.342971, ST_GeomFromText('POINT(41.669963 -91.342971)', 4326), 41.704415, -91.387088, '2010-09-28', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2676198', 'Bryan Creek', 'Stream', 'Iowa', 'IA', 'Jones', 'Oxford Junction', 41.973115, -90.956454, ST_GeomFromText('POINT(41.973115 -90.956454)', 4326), 42.014563, -90.911576, '2011-03-12', NULL, 'Official', 'Board Decision', '2011-03-10'),
  ('2680936', 'Carr Lake (historical)', 'Lake', 'Iowa', 'IA', 'Pottawattamie', 'Council Bluffs South', 41.179167, -95.816667, ST_GeomFromText('POINT(41.179167 -95.816667)', 4326), NULL, NULL, '2011-06-16', NULL, NULL, NULL, NULL),
  ('2711983', 'Johles Hollow', 'Valley', 'Iowa', 'IA', 'Clayton', 'Colesburg', 42.7452773, -91.1595411, ST_GeomFromText('POINT(42.7452773 -91.1595411)', 4326), 42.7761963, -91.1653855, '2012-02-10', '2023-09-30', 'Official', 'Board Decision', '2012-02-09'),
  ('2726020', 'Cardinal Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Iowa City West', 41.6688889, -91.5786111, ST_GeomFromText('POINT(41.6688889 -91.5786111)', 4326), 41.6630556, -91.6172222, '2012-05-11', NULL, 'Official', 'Board Decision', '2012-05-10'),
  ('2726021', 'Cardinal Creek South Branch', 'Stream', 'Iowa', 'IA', 'Johnson', 'Iowa City West', 41.6640959, -91.5847778, ST_GeomFromText('POINT(41.6640959 -91.5847778)', 4326), 41.6592546, -91.6040468, '2012-05-11', NULL, 'Official', 'Board Decision', '2012-05-10'),
  ('2729922', 'Fish Lake', 'Lake', 'Iowa', 'IA', 'Allamakee', 'De Soto', 43.483872, -91.236936, ST_GeomFromText('POINT(43.483872 -91.236936)', 4326), NULL, NULL, '2012-08-12', NULL, NULL, NULL, NULL),
  ('2729925', 'Launsom Lake', 'Lake', 'Iowa', 'IA', 'Allamakee', 'De Soto', 43.42105, -91.220969, ST_GeomFromText('POINT(43.42105 -91.220969)', 4326), NULL, NULL, '2012-08-13', NULL, NULL, NULL, NULL),
  ('2729926', 'Phillipi Lake', 'Lake', 'Iowa', 'IA', 'Allamakee', 'De Soto', 43.390767, -91.235941, ST_GeomFromText('POINT(43.390767 -91.235941)', 4326), NULL, NULL, '2012-08-13', NULL, NULL, NULL, NULL),
  ('2729927', 'Conway Lake', 'Lake', 'Iowa', 'IA', 'Allamakee', 'De Soto', 43.403055, -91.249209, ST_GeomFromText('POINT(43.403055 -91.249209)', 4326), NULL, NULL, '2012-08-13', NULL, NULL, NULL, NULL),
  ('2729945', 'Gun Lake', 'Lake', 'Iowa', 'IA', 'Allamakee', 'Harpers Ferry', 43.178039, -91.168198, ST_GeomFromText('POINT(43.178039 -91.168198)', 4326), NULL, NULL, '2012-08-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2729968', 'Norwegian Lake', 'Lake', 'Iowa', 'IA', 'Clayton', 'Clayton', 42.949574, -91.157919, ST_GeomFromText('POINT(42.949574 -91.157919)', 4326), NULL, NULL, '2012-08-13', NULL, NULL, NULL, NULL),
  ('2729970', 'Methodist Lake', 'Lake', 'Iowa', 'IA', 'Clayton', 'Clayton', 42.923701, -91.15559, ST_GeomFromText('POINT(42.923701 -91.15559)', 4326), NULL, NULL, '2012-08-13', NULL, NULL, NULL, NULL),
  ('2729978', 'Goose Pond', 'Lake', 'Iowa', 'IA', 'Clayton', 'Guttenberg', 42.828081, -91.09253, ST_GeomFromText('POINT(42.828081 -91.09253)', 4326), NULL, NULL, '2012-08-13', NULL, NULL, NULL, NULL),
  ('2729979', 'Bussey Lake', 'Lake', 'Iowa', 'IA', 'Clayton', 'Guttenberg', 42.805758, -91.104691, ST_GeomFromText('POINT(42.805758 -91.104691)', 4326), NULL, NULL, '2012-08-13', NULL, NULL, NULL, NULL),
  ('2730022', 'John Deere Marsh', 'Swamp', 'Iowa', 'IA', 'Dubuque', 'Dubuque North', 42.578613, -90.691888, ST_GeomFromText('POINT(42.578613 -90.691888)', 4326), NULL, NULL, '2012-08-13', NULL, NULL, NULL, NULL),
  ('2730057', 'Bowman Island', 'Island', 'Iowa', 'IA', 'Jackson', 'Green Island', 42.209473, -90.370519, ST_GeomFromText('POINT(42.209473 -90.370519)', 4326), NULL, NULL, '2012-08-13', NULL, NULL, NULL, NULL),
  ('2730059', 'Big Soup Bone Island', 'Island', 'Iowa', 'IA', 'Jackson', 'Blackhawk', 42.151158, -90.210178, ST_GeomFromText('POINT(42.151158 -90.210178)', 4326), NULL, NULL, '2012-08-14', '2014-05-14', NULL, NULL, NULL),
  ('2730060', 'Little Soup Bone Island', 'Island', 'Iowa', 'IA', 'Jackson', 'Blackhawk', 42.14236, -90.208023, ST_GeomFromText('POINT(42.14236 -90.208023)', 4326), NULL, NULL, '2012-08-14', '2014-05-14', NULL, NULL, NULL),
  ('2730063', 'Albany Island', 'Island', 'Iowa', 'IA', 'Clinton', 'Clinton', 41.798159, -90.214348, ST_GeomFromText('POINT(41.798159 -90.214348)', 4326), NULL, NULL, '2012-08-14', NULL, NULL, NULL, NULL),
  ('2730064', 'Upper Beaver Lake', 'Lake', 'Iowa', 'IA', 'Clinton', 'Clinton', 41.809846, -90.198033, ST_GeomFromText('POINT(41.809846 -90.198033)', 4326), NULL, NULL, '2012-08-14', '2014-05-14', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2730065', 'Lower Beaver Lake', 'Lake', 'Iowa', 'IA', 'Clinton', 'Clinton', 41.800426, -90.220079, ST_GeomFromText('POINT(41.800426 -90.220079)', 4326), NULL, NULL, '2012-08-14', '2014-05-14', NULL, NULL, NULL),
  ('2730066', 'Swan Island', 'Island', 'Iowa', 'IA', 'Clinton', 'Camanche', 41.775113, -90.270051, ST_GeomFromText('POINT(41.775113 -90.270051)', 4326), NULL, NULL, '2012-08-14', NULL, NULL, NULL, NULL),
  ('2730071', 'Shaff Lake', 'Lake', 'Iowa', 'IA', 'Clinton', 'Cordova', 41.745613, -90.33388, ST_GeomFromText('POINT(41.745613 -90.33388)', 4326), NULL, NULL, '2012-08-14', NULL, NULL, NULL, NULL),
  ('2730072', 'Coes Island', 'Island', 'Iowa', 'IA', 'Clinton', 'Camanche', 41.753692, -90.305333, ST_GeomFromText('POINT(41.753692 -90.305333)', 4326), NULL, NULL, '2012-08-14', NULL, NULL, NULL, NULL),
  ('2741781', 'Sweet Marsh', 'Swamp', 'Iowa', 'IA', 'Bremer', 'Sumner SW', 42.81989, -92.232434, ST_GeomFromText('POINT(42.81989 -92.232434)', 4326), NULL, NULL, '2012-10-21', NULL, NULL, NULL, NULL),
  ('2746405', 'Lake Belva Deer', 'Reservoir', 'Iowa', 'IA', 'Keokuk', 'Keswick', 41.380866, -92.134223, ST_GeomFromText('POINT(41.380866 -92.134223)', 4326), NULL, NULL, '2013-04-10', NULL, NULL, NULL, NULL),
  ('2746489', 'Brushy Creek Lake', 'Reservoir', 'Iowa', 'IA', 'Webster', 'Duncombe', 42.4021645, -93.9896679, ST_GeomFromText('POINT(42.4021645 -93.9896679)', 4326), NULL, NULL, '2013-04-15', NULL, NULL, NULL, NULL),
  ('2746772', 'Pool 10', 'Reservoir', 'Iowa', 'IA', 'Clayton', 'Guttenberg', 42.7883621, -91.0947061, ST_GeomFromText('POINT(42.7883621 -91.0947061)', 4326), NULL, NULL, '2013-12-27', NULL, NULL, NULL, NULL),
  ('2746777', 'Pool 13', 'Reservoir', 'Iowa', 'IA', 'Clinton', 'Clinton NW', 41.9005522, -90.1592588, ST_GeomFromText('POINT(41.9005522 -90.1592588)', 4326), NULL, NULL, '2013-12-27', NULL, NULL, NULL, NULL),
  ('2746779', 'Pool 16', 'Reservoir', 'Iowa', 'IA', 'Muscatine', 'Muscatine', 41.4328172, -91.0073948, ST_GeomFromText('POINT(41.4328172 -91.0073948)', 4326), NULL, NULL, '2013-12-27', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2746780', 'Pool 17', 'Reservoir', 'Illinois', 'IL', 'Mercer', 'Toolesboro', 41.1957065, -91.0653305, ST_GeomFromText('POINT(41.1957065 -91.0653305)', 4326), NULL, NULL, '2013-12-27', NULL, NULL, NULL, NULL),
  ('2746781', 'Pool 18', 'Reservoir', 'Illinois', 'IL', 'Henderson', 'Kingston', 40.8875626, -91.0236168, ST_GeomFromText('POINT(40.8875626 -91.0236168)', 4326), NULL, NULL, '2013-12-30', NULL, NULL, NULL, NULL),
  ('2746998', 'Abel-Essman Island', 'Island', 'Iowa', 'IA', 'Clayton', 'Guttenberg', 42.81923, -91.10044, ST_GeomFromText('POINT(42.81923 -91.10044)', 4326), NULL, NULL, '2014-05-27', NULL, NULL, NULL, NULL),
  ('2746999', 'Willow Island', 'Island', 'Iowa', 'IA', 'Clayton', 'Guttenberg', 42.79697, -91.0969, ST_GeomFromText('POINT(42.79697 -91.0969)', 4326), NULL, NULL, '2014-05-27', NULL, NULL, NULL, NULL),
  ('2747002', 'Green Lake', 'Lake', 'Iowa', 'IA', 'Dubuque', 'Menominee', 42.43202, -90.57108, ST_GeomFromText('POINT(42.43202 -90.57108)', 4326), NULL, NULL, '2014-05-27', NULL, NULL, NULL, NULL),
  ('2747026', 'Upper Sabula Lake', 'Lake', 'Iowa', 'IA', 'Jackson', 'Savanna', 42.07263, -90.18325, ST_GeomFromText('POINT(42.07263 -90.18325)', 4326), NULL, NULL, '2014-05-27', NULL, NULL, NULL, NULL),
  ('2747027', 'Middle Sabula Lake', 'Lake', 'Iowa', 'IA', 'Jackson', 'Savanna', 42.06638, -90.18072, ST_GeomFromText('POINT(42.06638 -90.18072)', 4326), NULL, NULL, '2014-05-27', NULL, NULL, NULL, NULL),
  ('2747028', 'Lower Sabula Lake', 'Lake', 'Iowa', 'IA', 'Jackson', 'Savanna', 42.05856, -90.17578, ST_GeomFromText('POINT(42.05856 -90.17578)', 4326), NULL, NULL, '2014-05-27', NULL, NULL, NULL, NULL),
  ('2747029', 'Gomers Lake', 'Lake', 'Iowa', 'IA', 'Clinton', 'Clinton NW', 41.96721, -90.17568, ST_GeomFromText('POINT(41.96721 -90.17568)', 4326), NULL, NULL, '2014-05-27', NULL, NULL, NULL, NULL),
  ('2747057', 'Blakes Lake', 'Lake', 'Iowa', 'IA', 'Jackson', 'Green Island', 42.158153, -90.271455, ST_GeomFromText('POINT(42.158153 -90.271455)', 4326), NULL, NULL, '2014-05-27', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2747097', 'Pond Lilly Lake', 'Lake', 'Iowa', 'IA', 'Clinton', 'Camanche', 41.77359, -90.2855, ST_GeomFromText('POINT(41.77359 -90.2855)', 4326), NULL, NULL, '2014-05-27', NULL, NULL, NULL, NULL),
  ('2747098', 'Tyler Lake', 'Lake', 'Iowa', 'IA', 'Clinton', 'Camanche', 41.76854, -90.30364, ST_GeomFromText('POINT(41.76854 -90.30364)', 4326), NULL, NULL, '2014-05-27', NULL, NULL, NULL, NULL),
  ('2747099', 'Camanche Island', 'Island', 'Iowa', 'IA', 'Clinton', 'Camanche', 41.75895, -90.29661, ST_GeomFromText('POINT(41.75895 -90.29661)', 4326), NULL, NULL, '2014-05-27', NULL, NULL, NULL, NULL),
  ('2747101', 'Spencer Island', 'Island', 'Iowa', 'IA', 'Scott', 'Silvis', 41.56128, -90.42243, ST_GeomFromText('POINT(41.56128 -90.42243)', 4326), NULL, NULL, '2014-05-27', NULL, NULL, NULL, NULL),
  ('2747115', 'Prairie Pocket', 'Lake', 'Iowa', 'IA', 'Louisa', 'Toolesboro', 41.22271, -91.09996, ST_GeomFromText('POINT(41.22271 -91.09996)', 4326), NULL, NULL, '2014-05-28', NULL, NULL, NULL, NULL),
  ('2747116', 'Little Goose Pond', 'Lake', 'Iowa', 'IA', 'Louisa', 'Toolesboro', 41.21643, -91.11514, ST_GeomFromText('POINT(41.21643 -91.11514)', 4326), NULL, NULL, '2014-05-28', NULL, NULL, NULL, NULL),
  ('2747117', 'Heidelbaugh Pond', 'Lake', 'Iowa', 'IA', 'Louisa', 'Toolesboro', 41.18924, -91.09405, ST_GeomFromText('POINT(41.18924 -91.09405)', 4326), NULL, NULL, '2014-05-28', NULL, NULL, NULL, NULL),
  ('2747119', 'Mill Pond', 'Lake', 'Iowa', 'IA', 'Louisa', 'Toolesboro', 41.17985, -91.07817, ST_GeomFromText('POINT(41.17985 -91.07817)', 4326), NULL, NULL, '2014-05-28', NULL, NULL, NULL, NULL),
  ('2747120', 'Beaver Pond', 'Lake', 'Iowa', 'IA', 'Louisa', 'Toolesboro', 41.17612, -91.07085, ST_GeomFromText('POINT(41.17612 -91.07085)', 4326), NULL, NULL, '2014-05-28', NULL, NULL, NULL, NULL),
  ('2747121', 'Mallard Pond', 'Lake', 'Iowa', 'IA', 'Louisa', 'Toolesboro', 41.17157, -91.07698, ST_GeomFromText('POINT(41.17157 -91.07698)', 4326), NULL, NULL, '2014-05-28', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2747124', 'Blackhawk Pond', 'Lake', 'Iowa', 'IA', 'Louisa', 'Toolesboro', 41.1633, -91.06223, ST_GeomFromText('POINT(41.1633 -91.06223)', 4326), NULL, NULL, '2014-05-28', NULL, NULL, NULL, NULL),
  ('2747126', 'Camp Slough Island', 'Island', 'Iowa', 'IA', 'Louisa', 'Toolesboro', 41.14873, -91.04522, ST_GeomFromText('POINT(41.14873 -91.04522)', 4326), NULL, NULL, '2014-05-28', NULL, NULL, NULL, NULL),
  ('2747130', 'Pin Island', 'Island', 'Iowa', 'IA', 'Des Moines', 'Keithsburg', 41.01554, -90.963, ST_GeomFromText('POINT(41.01554 -90.963)', 4326), NULL, NULL, '2014-05-28', NULL, NULL, NULL, NULL),
  ('2747136', 'Lake Odessa', 'Lake', 'Iowa', 'IA', 'Louisa', 'Toolesboro', 41.196416, -91.108823, ST_GeomFromText('POINT(41.196416 -91.108823)', 4326), NULL, NULL, '2014-05-28', NULL, NULL, NULL, NULL),
  ('2747976', 'Hahn Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Mount Vernon', 41.8952222, -91.4062258, ST_GeomFromText('POINT(41.8952222 -91.4062258)', 4326), 41.9268946, -91.4046109, '2013-06-14', NULL, 'Official', 'Board Decision', '2013-06-13'),
  ('2750137', 'Sweet Water Creek', 'Stream', 'Iowa', 'IA', 'Bremer', 'Sumner SW', 42.8157173, -92.2397122, ST_GeomFromText('POINT(42.8157173 -92.2397122)', 4326), 42.82458, -92.2745624, '2013-09-13', NULL, 'Official', 'Board Decision', '2013-09-12'),
  ('2784366', 'Horseshoe Lake', 'Lake', 'Iowa', 'IA', 'Sioux', 'Chatsworth', 42.9783222, -96.5089205, ST_GeomFromText('POINT(42.9783222 -96.5089205)', 4326), NULL, NULL, '2016-07-08', NULL, NULL, NULL, NULL),
  ('2785092', 'Prairie Creek', 'Stream', 'Iowa', 'IA', 'Pocahontas', 'West Bend', 42.8928489, -94.4431905, ST_GeomFromText('POINT(42.8928489 -94.4431905)', 4326), 43.1476122, -94.5028275, '2016-08-26', NULL, NULL, NULL, NULL),
  ('2787894', 'Magnolia Creek', 'Stream', 'Iowa', 'IA', 'Polk', 'Des Moines SE', 41.534311, -93.550518, ST_GeomFromText('POINT(41.534311 -93.550518)', 4326), 41.514025, -93.576169, '2017-09-18', NULL, 'Official', 'Board Decision', '2017-09-14'),
  ('2791361', 'Lake Lavon', 'Reservoir', 'Iowa', 'IA', 'Johnson', 'Swisher', 41.813463, -91.627942, ST_GeomFromText('POINT(41.813463 -91.627942)', 4326), NULL, NULL, '2018-04-16', NULL, 'Official', 'Board Decision', '2018-04-12');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2791599', 'Mitchell Lake', 'Reservoir', 'Iowa', 'IA', 'Black Hawk', 'Waterloo South', 42.47569, -92.30564, ST_GeomFromText('POINT(42.47569 -92.30564)', 4326), NULL, NULL, '2018-07-06', NULL, NULL, NULL, NULL),
  ('2791659', 'Spring Lake', 'Lake', 'Iowa', 'IA', 'Cherokee', 'Cherokee South', 42.7386111, -95.5575, ST_GeomFromText('POINT(42.7386111 -95.5575)', 4326), NULL, NULL, '2018-07-05', NULL, NULL, NULL, NULL),
  ('2791699', 'Beaver Lake', 'Reservoir', 'Iowa', 'IA', 'Dallas', 'Redfield', 41.5333333, -94.2108333, ST_GeomFromText('POINT(41.5333333 -94.2108333)', 4326), NULL, NULL, '2018-07-06', NULL, NULL, NULL, NULL),
  ('2791700', 'Slip Bluff Lake', 'Reservoir', 'Iowa', 'IA', 'Decatur', 'Davis City', 40.6526986, -93.8515046, ST_GeomFromText('POINT(40.6526986 -93.8515046)', 4326), NULL, NULL, '2018-07-06', '2023-04-06', NULL, NULL, NULL),
  ('2791701', 'Nine Eagles Lake', 'Reservoir', 'Iowa', 'IA', 'Decatur', 'Akron', 40.598469, -93.7693614, ST_GeomFromText('POINT(40.598469 -93.7693614)', 4326), NULL, NULL, '2018-07-06', '2023-04-06', NULL, NULL, NULL),
  ('2805079', 'Cardinal Creek', 'Stream', 'Iowa', 'IA', 'Hardin', 'Hubbard', 42.29849, -93.3196, ST_GeomFromText('POINT(42.29849 -93.3196)', 4326), 42.31513, -93.42425, '2019-12-13', NULL, 'Official', 'Board Decision', '2019-12-12'),
  ('2806592', 'Freidhof Creek', 'Stream', 'Iowa', 'IA', 'Howard', 'Jerico', 43.22882, -92.28863, ST_GeomFromText('POINT(43.22882 -92.28863)', 4326), 43.24917, -92.27432, '2020-04-13', NULL, 'Official', 'Board Decision', '2020-04-09'),
  ('2813394', 'Norwood Branch', 'Stream', 'Iowa', 'IA', 'Polk', 'Des Moines SE', 41.624222, -93.550957, ST_GeomFromText('POINT(41.624222 -93.550957)', 4326), 41.648375, -93.571423, '2020-08-13', NULL, 'Official', 'Board Decision', '2020-08-13'),
  ('2813395', 'Willowood Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Marion', 42.03883, -91.56562, ST_GeomFromText('POINT(42.03883 -91.56562)', 4326), 42.04259, -91.577591, '2020-08-13', '2022-06-11', 'Official', 'Board Decision', '2020-08-13'),
  ('2829554', 'Fiddlers Creek', 'Stream', 'Iowa', 'IA', 'Sac', 'Lake View', 42.277412, -95.122275, ST_GeomFromText('POINT(42.277412 -95.122275)', 4326), 42.339458, -95.209393, '2021-03-11', NULL, 'Official', 'Board Decision', '2021-03-11');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2830225', 'Wolf Hollow Creek', 'Stream', 'Iowa', 'IA', 'Greene', 'Wightman', 42.151919, -94.579153, ST_GeomFromText('POINT(42.151919 -94.579153)', 4326), 42.15985, -94.59039, '2022-01-07', '2022-01-31', 'Official', 'Board Decision', '2021-12-09'),
  ('2831029', 'Highland Creek', 'Stream', 'Iowa', 'IA', 'Hardin', 'New Providence', 42.256882, -93.18328, ST_GeomFromText('POINT(42.256882 -93.18328)', 4326), 42.297938, -93.192505, '2023-03-16', '2023-03-16', 'Official', 'Board Decision', '2023-03-09'),
  ('2831350', 'Woodlglenn Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Hills', 41.582668, -91.574564, ST_GeomFromText('POINT(41.582668 -91.574564)', 4326), 41.571913, -91.667647, '2023-09-25', '2023-09-25', 'Official', 'Board Decision', '2023-09-15'),
  ('2831363', 'Mount Lucia', 'Summit', 'Iowa', 'IA', 'Woodbury', 'Sioux City North', 42.541004, -96.464782, ST_GeomFromText('POINT(42.541004 -96.464782)', 4326), NULL, NULL, '2023-10-06', '2023-10-06', NULL, NULL, NULL),
  ('2831447', 'Phebe Creek', 'Stream', 'Iowa', 'IA', 'Johnson', 'Hills', 41.6109, -91.62281, ST_GeomFromText('POINT(41.6109 -91.62281)', 4326), 41.66567, -91.63251, '2024-01-26', '2024-01-26', NULL, NULL, NULL),
  ('2831452', 'Dry Run Creek', 'Stream', 'Iowa', 'IA', 'Black Hawk', 'Waterloo South', 42.48, -92.34311, ST_GeomFromText('POINT(42.48 -92.34311)', 4326), 42.43936, -92.3626, '2024-02-02', '2024-02-02', NULL, NULL, NULL),
  ('2831566', 'Horner Lake', 'Reservoir', 'Iowa', 'IA', 'Lee', 'Keokuk', 40.47074, -91.47537, ST_GeomFromText('POINT(40.47074 -91.47537)', 4326), NULL, NULL, '2024-07-14', '2024-07-14', 'Official', 'Board Decision', '2024-07-11'),
  ('2832408', 'Coopers Creek', 'Stream', 'Iowa', 'IA', 'Linn', 'Marion', 42.043278, -91.62279, ST_GeomFromText('POINT(42.043278 -91.62279)', 4326), 42.07044, -91.63531, '2024-10-11', '2024-10-11', 'Official', 'Board Decision', '2024-10-10'),
  ('2832506', 'Gardner Creek', 'Stream', 'Iowa', 'IA', 'Monroe', 'Buxton', 41.13039, -92.84302, ST_GeomFromText('POINT(41.13039 -92.84302)', 4326), 41.108346, -92.826791, '2025-03-19', '2025-03-19', 'Official', 'Board Decision', '2025-03-13');


COMMIT;
SET unique_checks = 1;
SET autocommit = 1;

-- IA complete: 3,019 features loaded
