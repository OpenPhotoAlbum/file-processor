USE kin;

-- GNIS Geographic Features for VT
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
  ('206425', 'Connecticut River', 'Stream', 'Connecticut', 'CT', 'Lower Connecticut River Valley', 'Old Lyme', 41.272313, -72.332687, ST_GeomFromText('POINT(41.272313 -72.332687)', 4326), 45.232512, -71.194839, '2023-04-18', '2023-04-18', 'Official', 'Board Decision', '1931-01-01'),
  ('607329', 'Broad Brook', 'Stream', 'Massachusetts', 'MA', 'Berkshire', 'Williamstown', 42.7384132, -73.216774, ST_GeomFromText('POINT(42.7384132 -73.216774)', 4326), 42.7992467, -73.1503835, '1974-02-24', NULL, NULL, NULL, NULL),
  ('607403', 'East Mountain', 'Summit', 'Vermont', 'VT', 'Bennington', 'Williamstown', 42.7445996, -73.1563583, ST_GeomFromText('POINT(42.7445996 -73.1563583)', 4326), NULL, NULL, '1974-02-24', '2020-12-23', NULL, NULL, NULL),
  ('607547', 'Cowan Brook', 'Stream', 'Massachusetts', 'MA', 'Berkshire', 'North Adams', 42.7423032, -73.1164932, ST_GeomFromText('POINT(42.7423032 -73.1164932)', 4326), 42.7803583, -73.1214937, '1974-02-24', NULL, NULL, NULL, NULL),
  ('607611', 'North Branch Hoosic River', 'Stream', 'Massachusetts', 'MA', 'Berkshire', 'North Adams', 42.70256, -73.11835, ST_GeomFromText('POINT(42.70256 -73.11835)', 4326), 42.8128591, -73.0126018, '1974-02-24', '2011-05-23', NULL, NULL, NULL),
  ('607885', 'Dunbar Brook', 'Stream', 'Massachusetts', 'MA', 'Franklin', 'Rowe', 42.7073052, -72.9509326, ST_GeomFromText('POINT(42.7073052 -72.9509326)', 4326), 42.7556374, -73.0314908, '1974-02-24', '2011-05-23', NULL, NULL, NULL),
  ('607944', 'Potter Brook', 'Stream', 'Massachusetts', 'MA', 'Franklin', 'Rowe', 42.6995277, -72.8856528, ST_GeomFromText('POINT(42.6995277 -72.8856528)', 4326), 42.7383333, -72.8827778, '1974-02-24', NULL, NULL, NULL, NULL),
  ('607954', 'Sherman Reservoir', 'Reservoir', 'Vermont', 'VT', 'Windham', 'Rowe', 42.7398266, -72.9262316, ST_GeomFromText('POINT(42.7398266 -72.9262316)', 4326), NULL, NULL, '1974-02-24', '2018-04-30', NULL, NULL, NULL),
  ('607991', 'Wheeler Brook', 'Stream', 'Massachusetts', 'MA', 'Franklin', 'Rowe', 42.7289717, -72.9264876, ST_GeomFromText('POINT(42.7289717 -72.9264876)', 4326), 42.7458333, -72.9125, '1974-02-24', NULL, NULL, NULL, NULL),
  ('607998', 'Windsor Pond', 'Lake', 'Vermont', 'VT', 'Bennington', 'Rowe', 42.7450686, -72.9812255, ST_GeomFromText('POINT(42.7450686 -72.9812255)', 4326), NULL, NULL, '1974-02-24', '2018-02-18', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('608140', 'Borden Brook', 'Stream', 'Massachusetts', 'MA', 'Franklin', 'Colrain', 42.7270277, -72.6759255, ST_GeomFromText('POINT(42.7270277 -72.6759255)', 4326), 42.7509162, -72.7023152, '1974-02-24', NULL, NULL, NULL, NULL),
  ('608148', 'Burton Brook', 'Stream', 'Massachusetts', 'MA', 'Franklin', 'Heath', 42.725083, -72.8550967, ST_GeomFromText('POINT(42.725083 -72.8550967)', 4326), 42.7477778, -72.8688889, '1974-02-24', NULL, NULL, NULL, NULL),
  ('608223', 'Phillips Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Heath', 42.7359843, -72.7749603, ST_GeomFromText('POINT(42.7359843 -72.7749603)', 4326), NULL, NULL, '1974-02-24', '2022-08-30', NULL, NULL, NULL),
  ('608232', 'Sanders Brook', 'Stream', 'Massachusetts', 'MA', 'Franklin', 'Heath', 42.70385, -72.7829, ST_GeomFromText('POINT(42.70385 -72.7829)', 4326), 42.7419444, -72.8130556, '1974-02-24', '2011-05-23', NULL, NULL, NULL),
  ('608818', 'West Brook', 'Stream', 'Massachusetts', 'MA', 'Franklin', 'Bernardston', 42.7270277, -72.5703677, ST_GeomFromText('POINT(42.7270277 -72.5703677)', 4326), 42.7514717, -72.5912018, '1974-02-24', NULL, NULL, NULL, NULL),
  ('608860', 'Fall River', 'Stream', 'Massachusetts', 'MA', 'Franklin', 'Greenfield', 42.61419, -72.55253, ST_GeomFromText('POINT(42.61419 -72.55253)', 4326), 42.7767, -72.58256, '1974-02-24', '2021-02-24', NULL, NULL, NULL),
  ('609320', 'Newton Brook', 'Stream', 'Massachusetts', 'MA', 'Franklin', 'Northfield', 42.7264724, -72.4584212, ST_GeomFromText('POINT(42.7264724 -72.4584212)', 4326), 42.7343601, -72.5055285, '1974-02-24', '2021-03-29', NULL, NULL, NULL),
  ('617999', 'Taconic Range', 'Range', 'New York', 'NY', 'Rensselaer', 'Hancock', 42.5834063, -73.3328843, ST_GeomFromText('POINT(42.5834063 -73.3328843)', 4326), NULL, NULL, '1974-02-24', '2023-03-21', 'Official', 'Board Decision', '1897-01-01'),
  ('619261', 'Hoosac Range', 'Cliff', 'Massachusetts', 'MA', 'Berkshire', 'North Adams', 42.7000825, -73.0412129, ST_GeomFromText('POINT(42.7000825 -73.0412129)', 4326), NULL, NULL, '1974-02-24', NULL, 'Official', 'Board Decision', '1946-01-01'),
  ('619265', 'East Branch North River', 'Stream', 'Massachusetts', 'MA', 'Franklin', 'Colrain', 42.663, -72.71585, ST_GeomFromText('POINT(42.663 -72.71585)', 4326), 42.81269, -72.84337, '1974-02-24', '2018-10-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('619266', 'West Branch Brook', 'Stream', 'Massachusetts', 'MA', 'Franklin', 'Heath', 42.7100833, -72.8145398, ST_GeomFromText('POINT(42.7100833 -72.8145398)', 4326), 42.7380556, -72.8552778, '1974-02-24', NULL, NULL, NULL, NULL),
  ('619359', 'Green River', 'Stream', 'Massachusetts', 'MA', 'Franklin', 'Greenfield', 42.57211, -72.60266, ST_GeomFromText('POINT(42.57211 -72.60266)', 4326), 42.85225, -72.78895, '1974-02-24', '2018-07-31', NULL, NULL, NULL),
  ('866509', 'Day Brook', 'Stream', 'New Hampshire', 'NH', 'Coos', 'Monadnock Mountain', 44.9689355, -71.5231404, ST_GeomFromText('POINT(44.9689355 -71.5231404)', 4326), 44.9988889, -71.5102778, '1980-08-27', NULL, NULL, NULL, NULL),
  ('867513', 'Hinman Island', 'Island', 'New Hampshire', 'NH', 'Coos', 'Stratford', 44.7186615, -71.6148105, ST_GeomFromText('POINT(44.7186615 -71.6148105)', 4326), NULL, NULL, '1980-08-27', NULL, NULL, NULL, NULL),
  ('867750', 'Jacobs Brook', 'Stream', 'New Hampshire', 'NH', 'Grafton', 'Fairlee', 43.913957, -72.1317561, ST_GeomFromText('POINT(43.913957 -72.1317561)', 4326), 43.8664579, -72.0406419, '1980-08-27', NULL, NULL, NULL, NULL),
  ('868217', 'Lyman Brook', 'Stream', 'New Hampshire', 'NH', 'Coos', 'Tinkerville', 44.78366, -71.5881433, ST_GeomFromText('POINT(44.78366 -71.5881433)', 4326), 44.7661111, -71.5422222, '1980-08-27', NULL, NULL, NULL, NULL),
  ('868298', 'Mason Island', 'Island', 'New Hampshire', 'NH', 'Coos', 'Stratford', 44.6864402, -71.5973096, ST_GeomFromText('POINT(44.6864402 -71.5973096)', 4326), NULL, NULL, '1980-08-27', NULL, NULL, NULL, NULL),
  ('868537', 'Moore Reservoir', 'Reservoir', 'New Hampshire', 'NH', 'Grafton', 'Littleton', 44.347637, -71.8362529, ST_GeomFromText('POINT(44.347637 -71.8362529)', 4326), NULL, NULL, '1980-08-27', '2018-02-28', NULL, NULL, NULL),
  ('870309', 'Sweatt Brook', 'Stream', 'New Hampshire', 'NH', 'Coos', 'Tinkerville', 44.8067152, -71.5684205, ST_GeomFromText('POINT(44.8067152 -71.5684205)', 4326), 44.7938889, -71.5252778, '1980-08-27', NULL, NULL, NULL, NULL),
  ('943164', 'Batten Kill', 'Stream', 'New York', 'NY', 'Washington', 'Schuylerville', 43.1095198, -73.5751157, ST_GeomFromText('POINT(43.1095198 -73.5751157)', 4326), 43.248131, -73.004548, '1980-01-23', '2020-03-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('943340', 'Beattie Hollow', 'Valley', 'New York', 'NY', 'Washington', 'Salem', 43.1982561, -73.263956, ST_GeomFromText('POINT(43.1982561 -73.263956)', 4326), 43.2008122, -73.2502518, '1980-01-23', '2016-11-04', NULL, NULL, NULL),
  ('944135', 'Black Hole Hollow', 'Valley', 'Vermont', 'VT', 'Bennington', 'Shushan', 43.0466314, -73.2673256, ST_GeomFromText('POINT(43.0466314 -73.2673256)', 4326), 43.0481865, -73.2582408, '1980-01-23', '2023-11-21', NULL, NULL, NULL),
  ('944251', 'Blind Buck Hollow', 'Valley', 'New York', 'NY', 'Washington', 'Salem', 43.172415, -73.3039846, ST_GeomFromText('POINT(43.172415 -73.3039846)', 4326), 43.1895586, -73.2547049, '1980-01-23', '2016-12-06', NULL, NULL, NULL),
  ('944252', 'Blind Buck Stream', 'Stream', 'New York', 'NY', 'Washington', 'Salem', 43.1581317, -73.3448327, ST_GeomFromText('POINT(43.1581317 -73.3448327)', 4326), 43.1897222, -73.2530556, '1980-01-23', NULL, NULL, NULL, NULL),
  ('944938', 'Browns Brook', 'Stream', 'New York', 'NY', 'Rensselaer', 'North Pownal', 42.8750783, -73.3037213, ST_GeomFromText('POINT(42.8750783 -73.3037213)', 4326), 42.8575, -73.2513889, '1980-01-23', NULL, NULL, NULL, NULL),
  ('946367', 'Lake Champlain', 'Lake', 'Vermont', 'VT', 'Grand Isle', 'Colchester Point', 44.5911519, -73.3063442, ST_GeomFromText('POINT(44.5911519 -73.3063442)', 4326), NULL, NULL, '1980-01-23', '2020-03-09', NULL, NULL, NULL),
  ('946664', 'Chunks Brook', 'Stream', 'New York', 'NY', 'Washington', 'Shushan', 43.1070214, -73.2667758, ST_GeomFromText('POINT(43.1070214 -73.2667758)', 4326), 43.1471249, -73.2292659, '1980-01-23', '2015-05-01', NULL, NULL, NULL),
  ('948412', 'Diamond Island', 'Island', 'Vermont', 'VT', 'Addison', 'Vergennes West', 44.2367192, -73.3340148, ST_GeomFromText('POINT(44.2367192 -73.3340148)', 4326), NULL, NULL, '1980-01-23', '2014-06-05', NULL, NULL, NULL),
  ('953694', 'Indian River', 'Stream', 'New York', 'NY', 'Washington', 'Granville', 43.4147937, -73.2748311, ST_GeomFromText('POINT(43.4147937 -73.2748311)', 4326), 43.2837125, -73.2398515, '1980-01-23', '2015-05-01', NULL, NULL, NULL),
  ('955730', 'Little White Creek', 'Stream', 'New York', 'NY', 'Rensselaer', 'Hoosick Falls', 42.9292446, -73.350389, ST_GeomFromText('POINT(42.9292446 -73.350389)', 4326), 43.0457279, -73.2189822, '1980-01-23', '2015-05-01', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('957044', 'Mettawee River', 'Stream', 'New York', 'NY', 'Washington', 'Whitehall', 43.533957, -73.4028895, ST_GeomFromText('POINT(43.533957 -73.4028895)', 4326), 43.3073799, -73.0300713, '1980-01-23', '2011-07-20', 'Official', 'Board Decision', '1895-01-01'),
  ('958199', 'Murray Hollow', 'Valley', 'New York', 'NY', 'Washington', 'Shushan', 43.0925705, -73.3003334, ST_GeomFromText('POINT(43.0925705 -73.3003334)', 4326), 43.0699077, -73.2360655, '1980-01-23', '2024-07-17', NULL, NULL, NULL),
  ('961061', 'Poultney River', 'Stream', 'New York', 'NY', 'Washington', 'Benson', 43.6264545, -73.3434462, ST_GeomFromText('POINT(43.6264545 -73.3434462)', 4326), 43.494792, -73.0517727, '1980-01-23', NULL, NULL, NULL, NULL),
  ('962396', 'Reservoir Hollow', 'Valley', 'Vermont', 'VT', 'Bennington', 'North Pownal', 42.79779, -73.2686274, ST_GeomFromText('POINT(42.79779 -73.2686274)', 4326), 42.7882341, -73.2883009, '1980-01-23', '2023-11-17', NULL, NULL, NULL),
  ('964914', 'Shaftsbury Hollow', 'Valley', 'New York', 'NY', 'Washington', 'Hoosick Falls', 42.9911469, -73.2749601, ST_GeomFromText('POINT(42.9911469 -73.2749601)', 4326), 43.0103235, -73.2412373, '1980-01-23', '2023-11-18', NULL, NULL, NULL),
  ('966274', 'State Line Ridge', 'Ridge', 'Vermont', 'VT', 'Bennington', 'Salem', 43.1304449, -73.2635893, ST_GeomFromText('POINT(43.1304449 -73.2635893)', 4326), NULL, NULL, '1980-01-23', '2018-11-09', NULL, NULL, NULL),
  ('968708', 'Walloomsac River', 'Stream', 'New York', 'NY', 'Rensselaer', 'Hoosick Falls', 42.9275779, -73.3651116, ST_GeomFromText('POINT(42.9275779 -73.3651116)', 4326), 42.8715562, -73.1832793, '1980-01-23', '2015-05-01', 'Official', 'Board Decision', '1892-01-01'),
  ('971091', 'White Creek', 'Stream', 'New York', 'NY', 'Washington', 'Cambridge', 43.0094958, -73.3855391, ST_GeomFromText('POINT(43.0094958 -73.3855391)', 4326), 43.0488982, -73.2500124, '1980-01-23', '2012-11-09', NULL, NULL, NULL),
  ('971095', 'White Creek', 'Stream', 'New York', 'NY', 'Washington', 'Salem', 43.1564649, -73.370111, ST_GeomFromText('POINT(43.1564649 -73.370111)', 4326), 43.235089, -73.2042003, '1980-01-23', '2012-11-09', NULL, NULL, NULL),
  ('975764', 'Richelieu River', 'Stream', 'Quebec', 'QU', 'Quebec', NULL, 46.0477086, -73.1195871, ST_GeomFromText('POINT(46.0477086 -73.1195871)', 4326), 44.9800394, -73.3512441, '1994-05-01', '2019-11-20', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456082', 'Baldwin Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Salem', 43.1606322, -73.2578864, ST_GeomFromText('POINT(43.1606322 -73.2578864)', 4326), 43.1706322, -73.2123299, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456083', 'Camden Creek', 'Stream', 'Vermont', 'VT', 'Bennington', 'Shushan', 43.1009102, -73.2889985, ST_GeomFromText('POINT(43.1009102 -73.2889985)', 4326), 43.1606322, -73.2578864, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456085', 'Catbow Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Gilman', 44.4750578, -71.644531, ST_GeomFromText('POINT(44.4750578 -71.644531)', 4326), 44.5583887, -71.6792552, '1980-10-29', NULL, 'Official', 'Board Decision', '1912-01-01'),
  ('1456088', 'Calendar Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Burke Mountain', 44.58061, -71.9831511, ST_GeomFromText('POINT(44.58061 -71.9831511)', 4326), 44.6628294, -72.1175997, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456089', 'Cram Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Chelsea', 43.9595105, -72.4642659, ST_GeomFromText('POINT(43.9595105 -72.4642659)', 4326), 44.0272869, -72.5212134, '1980-10-29', NULL, 'Official', 'Board Decision', '1980-01-01'),
  ('1456090', 'Crossett Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Middlesex', 44.3283901, -72.7473397, ST_GeomFromText('POINT(44.3283901 -72.7473397)', 4326), 44.3220007, -72.8098408, '1980-10-29', '2018-04-15', NULL, NULL, NULL),
  ('1456092', 'Echo Lake', 'Lake', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.7472877, -73.1816892, ST_GeomFromText('POINT(43.7472877 -73.1816892)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', 'Official', 'Board Decision', '1972-01-01'),
  ('1456093', 'Malletts Creek', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Colchester', 44.5678259, -73.1631853, ST_GeomFromText('POINT(44.5678259 -73.1631853)', 4326), 44.6361598, -73.0629122, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456094', 'Keets Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Bernardston', 42.7356387, -72.6137021, ST_GeomFromText('POINT(42.7356387 -72.6137021)', 4326), 42.7509162, -72.6364804, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456095', 'Marlboro Branch', 'Stream', 'Vermont', 'VT', 'Windham', 'Newfane', 42.9353586, -72.7075937, ST_GeomFromText('POINT(42.9353586 -72.7075937)', 4326), 42.8775814, -72.7500945, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456096', 'Rogers Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Gallup Mills', 44.5514444, -71.7834246, ST_GeomFromText('POINT(44.5514444 -71.7834246)', 4326), 44.5514444, -71.7125895, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456097', 'Long Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Westmore', 44.7504236, -72.0175173, ST_GeomFromText('POINT(44.7504236 -72.0175173)', 4326), NULL, NULL, '1980-10-29', '2023-05-20', NULL, NULL, NULL),
  ('1456098', 'Mud Pond Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Stannard', 44.5941525, -72.2294792, ST_GeomFromText('POINT(44.5941525 -72.2294792)', 4326), 44.6320014, -72.229594, '1980-10-29', '2019-11-12', NULL, NULL, NULL),
  ('1456099', 'Terry Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Salem', 43.1606322, -73.2578864, ST_GeomFromText('POINT(43.1606322 -73.2578864)', 4326), 43.199243, -73.1909405, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456100', 'West Branch Little River', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Stowe', 44.467276, -72.6865065, ST_GeomFromText('POINT(44.467276 -72.6865065)', 4326), 44.5481072, -72.8059569, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456101', 'West Branch Passumpsic River', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Burke Mountain', 44.5503329, -71.9914844, ST_GeomFromText('POINT(44.5503329 -71.9914844)', 4326), 44.7250506, -72.0248197, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456102', 'Willoughby Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Crystal Lake', 44.720328, -72.1373227, ST_GeomFromText('POINT(44.720328 -72.1373227)', 4326), 44.6925511, -72.0862101, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456103', 'Abbey Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Essex Center', 44.5281056, -73.0373506, ST_GeomFromText('POINT(44.5281056 -73.0373506)', 4326), 44.5444948, -72.9937405, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456104', 'Abbott Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'South Strafford', 43.8334022, -72.3084261, ST_GeomFromText('POINT(43.8334022 -72.3084261)', 4326), 43.8741667, -72.3475, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456105', 'Ace Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Lowell', 44.7783817, -72.4512209, ST_GeomFromText('POINT(44.7783817 -72.4512209)', 4326), 44.7588889, -72.4163889, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456107', 'Adams Apple', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Mount Mansfield', 44.5464468, -72.8104001, ST_GeomFromText('POINT(44.5464468 -72.8104001)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456108', 'Adams Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Randolph', 43.9286764, -72.6551042, ST_GeomFromText('POINT(43.9286764 -72.6551042)', 4326), 43.986176, -72.6203821, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456110', 'Adams Pond', 'Lake', 'Vermont', 'VT', 'Franklin', 'Richford', 44.8800899, -72.7219816, ST_GeomFromText('POINT(44.8800899 -72.7219816)', 4326), NULL, NULL, '1980-10-29', '2019-11-26', NULL, NULL, NULL),
  ('1456112', 'Adden Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Stone Mountain', 44.5407731, -71.6791479, ST_GeomFromText('POINT(44.5407731 -71.6791479)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456114', 'Advent Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.6003391, -72.4423589, ST_GeomFromText('POINT(43.6003391 -72.4423589)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL),
  ('1456124', 'Alburg Tongue', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'Rouses Point', 44.9191913, -73.2897497, ST_GeomFromText('POINT(44.9191913 -73.2897497)', 4326), NULL, NULL, '1980-10-29', '2017-02-12', NULL, NULL, NULL),
  ('1456125', 'Alder Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Stowe', 44.3845, -72.7256732, ST_GeomFromText('POINT(44.3845 -72.7256732)', 4326), 44.4038889, -72.7344444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456126', 'Alder Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Caspian Lake', 44.5447754, -72.3717735, ST_GeomFromText('POINT(44.5447754 -72.3717735)', 4326), 44.5891667, -72.3591667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456127', 'Alder Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Essex Junction', 44.4789393, -73.0676264, ST_GeomFromText('POINT(44.4789393 -73.0676264)', 4326), 44.5911601, -73.0720763, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456128', 'Alder Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Orleans', 44.8700476, -72.203991, ST_GeomFromText('POINT(44.8700476 -72.203991)', 4326), 44.8519921, -72.2562148, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456129', 'Alder Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Monadnock Mountain', 44.9258804, -71.601477, ST_GeomFromText('POINT(44.9258804 -71.601477)', 4326), 44.9442136, -71.6520345, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456130', 'Alder Meadow Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.5470151, -72.4237029, ST_GeomFromText('POINT(43.5470151 -72.4237029)', 4326), 43.5830556, -72.4486111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456131', 'Alder Meadow Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Cavendish', 43.4745154, -72.5889827, ST_GeomFromText('POINT(43.4745154 -72.5889827)', 4326), 43.4839596, -72.636762, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456132', 'Alder Run', 'Stream', 'Vermont', 'VT', 'Franklin', 'Enosburg Falls', 44.9905997, -72.8726334, ST_GeomFromText('POINT(44.9905997 -72.8726334)', 4326), 45.0069881, -72.8723555, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456133', 'Aldis Hill', 'Summit', 'Vermont', 'VT', 'Franklin', 'Saint Albans', 44.8182635, -73.0694953, ST_GeomFromText('POINT(44.8182635 -73.0694953)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1456136', 'Alexander Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Randolph', 43.8832506, -72.7310842, ST_GeomFromText('POINT(43.8832506 -72.7310842)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456138', 'Alger Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'South Strafford', 43.8531237, -72.3720391, ST_GeomFromText('POINT(43.8531237 -72.3720391)', 4326), 43.8691667, -72.3547222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456141', 'Allen Bay', 'Bay', 'Vermont', 'VT', 'Addison', 'Orwell', 43.7845058, -73.3528944, ST_GeomFromText('POINT(43.7845058 -73.3528944)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456142', 'Allen Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Colchester', 44.5753257, -73.1681855, ST_GeomFromText('POINT(44.5753257 -73.1681855)', 4326), 44.6230556, -73.1425, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456143', 'Allen Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Burlington', 44.4747721, -73.136238, ST_GeomFromText('POINT(44.4747721 -73.136238)', 4326), 44.4075517, -73.0992917, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456144', 'Allen Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Irasburg', 44.8075482, -72.2712154, ST_GeomFromText('POINT(44.8075482 -72.2712154)', 4326), 44.8050483, -72.2328808, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456146', 'Allen Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Knox Mountain', 44.1415035, -72.2982995, ST_GeomFromText('POINT(44.1415035 -72.2982995)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1456147', 'Allen Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Irasburg', 44.7958348, -72.2554853, ST_GeomFromText('POINT(44.7958348 -72.2554853)', 4326), NULL, NULL, '1980-10-29', '2022-09-08', NULL, NULL, NULL),
  ('1456148', 'Allen Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Newport Center', 44.9835007, -72.2628159, ST_GeomFromText('POINT(44.9835007 -72.2628159)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1456149', 'Allen Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'Colchester Point', 44.5956018, -73.3051308, ST_GeomFromText('POINT(44.5956018 -73.3051308)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456150', 'Allens Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Killington Peak', 43.5833686, -72.7729428, ST_GeomFromText('POINT(43.5833686 -72.7729428)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1456152', 'Allyn Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Island Pond', 44.8092159, -71.9823188, ST_GeomFromText('POINT(44.8092159 -71.9823188)', 4326), 44.8097713, -72.0084304, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456155', 'Ames Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Craftsbury', 44.7090615, -72.3102997, ST_GeomFromText('POINT(44.7090615 -72.3102997)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456156', 'Ames Hill Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Brattleboro', 42.8578596, -72.6023133, ST_GeomFromText('POINT(42.8578596 -72.6023133)', 4326), 42.8461929, -72.6706481, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456157', 'Amherst Lake', 'Lake', 'Vermont', 'VT', 'Windsor', 'Ludlow', 43.4863638, -72.7045338, ST_GeomFromText('POINT(43.4863638 -72.7045338)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', 'Official', 'Board Decision', '1974-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456158', 'Amidon Pinnacle', 'Pillar', 'Vermont', 'VT', 'Windham', 'Colrain', 42.7448052, -72.6850926, ST_GeomFromText('POINT(42.7448052 -72.6850926)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456161', 'Anderson Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Barnet', 44.3081237, -72.0606726, ST_GeomFromText('POINT(44.3081237 -72.0606726)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456163', 'Andover Branch', 'Stream', 'Vermont', 'VT', 'Windsor', 'Andover', 43.2603527, -72.6575938, ST_GeomFromText('POINT(43.2603527 -72.6575938)', 4326), 43.3177778, -72.7211111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456164', 'Annis Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Sutton', 44.7031063, -72.1089885, ST_GeomFromText('POINT(44.7031063 -72.1089885)', 4326), 44.6808333, -72.1033333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456165', 'Annis Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Brookfield', 44.0312288, -72.5238579, ST_GeomFromText('POINT(44.0312288 -72.5238579)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1456166', 'Ansel Pond', 'Lake', 'Vermont', 'VT', 'Windsor', 'South Royalton', 43.8368475, -72.61785, ST_GeomFromText('POINT(43.8368475 -72.61785)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1456167', 'Antone Mountain', 'Summit', 'Vermont', 'VT', 'Bennington', 'Pawlet', 43.2545087, -73.1911824, ST_GeomFromText('POINT(43.2545087 -73.1911824)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', 'Official', 'Board Decision', '1897-01-01'),
  ('1456168', 'Applelon Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Stone Mountain', 44.5803325, -71.7412018, ST_GeomFromText('POINT(44.5803325 -71.7412018)', 4326), 44.5958333, -71.7461111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456169', 'Appletree Bay', 'Bay', 'Vermont', 'VT', 'Chittenden', 'Juniper Island', 44.4972706, -73.2529061, ST_GeomFromText('POINT(44.4972706 -73.2529061)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456170', 'Appletree Point', 'Cape', 'Vermont', 'VT', 'Chittenden', 'Juniper Island', 44.499215, -73.2729067, ST_GeomFromText('POINT(44.499215 -73.2729067)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456172', 'Arcadia Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Sutton', 44.7036623, -72.0064857, ST_GeomFromText('POINT(44.7036623 -72.0064857)', 4326), 44.7338889, -72.0219444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456173', 'Armstrong Hill', 'Summit', 'Vermont', 'VT', 'Franklin', 'Gilson Mountain', 44.700779, -72.8810939, ST_GeomFromText('POINT(44.700779 -72.8810939)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456174', 'Arnold Bay', 'Bay', 'Vermont', 'VT', 'Addison', 'Vergennes West', 44.1478318, -73.367625, ST_GeomFromText('POINT(44.1478318 -73.367625)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456175', 'Arnolds Ledge', 'Cliff', 'Vermont', 'VT', 'Rutland', 'Orwell', 43.7536737, -73.2559472, ST_GeomFromText('POINT(43.7536737 -73.2559472)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456176', 'Arrowhead Mountain', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Milton', 44.6701971, -73.1201975, ST_GeomFromText('POINT(44.6701971 -73.1201975)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456177', 'Arrowhead Mountain Lake', 'Reservoir', 'Vermont', 'VT', 'Franklin', 'Milton', 44.6742759, -73.0916401, ST_GeomFromText('POINT(44.6742759 -73.0916401)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1456179', 'Ascutney Notch', 'Gap', 'Vermont', 'VT', 'Windsor', 'Windsor', 43.4397941, -72.4914798, ST_GeomFromText('POINT(43.4397941 -72.4914798)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456181', 'Atcherson Hollow', 'Valley', 'Vermont', 'VT', 'Windham', 'Saxtons River', 43.1610589, -72.5528084, ST_GeomFromText('POINT(43.1610589 -72.5528084)', 4326), 43.1757927, -72.545715, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1456183', 'Athens Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Westminster West', 43.1203558, -72.5675908, ST_GeomFromText('POINT(43.1203558 -72.5675908)', 4326), 43.1113889, -72.6163889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456184', 'Athens Pond', 'Lake', 'Vermont', 'VT', 'Windham', 'Westminster West', 43.122334, -72.6046511, ST_GeomFromText('POINT(43.122334 -72.6046511)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456185', 'Atwater Bay', 'Bay', 'Vermont', 'VT', 'Rutland', 'Wells', 43.4592371, -73.2184414, ST_GeomFromText('POINT(43.4592371 -73.2184414)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456186', 'Atwood Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Woodstock North', 43.6645133, -72.5748187, ST_GeomFromText('POINT(43.6645133 -72.5748187)', 4326), 43.6775684, -72.6273204, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456187', 'Austin Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Whitehall', 43.5843623, -73.4089373, ST_GeomFromText('POINT(43.5843623 -73.4089373)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456188', 'Austin Pond', 'Reservoir', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.7160556, -73.1946636, ST_GeomFromText('POINT(43.7160556 -73.1946636)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL),
  ('1456193', 'Averill Creek', 'Stream', 'Vermont', 'VT', 'Essex', 'Norton Pond OE N', 45.0319902, -71.7839832, ST_GeomFromText('POINT(45.0319902 -71.7839832)', 4326), 44.9636578, -71.7070368, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1456194', 'Averill Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Averill OE N', 45.0005669, -71.7250089, ST_GeomFromText('POINT(45.0005669 -71.7250089)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456195', 'Avery Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'South Strafford', 43.7906255, -72.2556463, ST_GeomFromText('POINT(43.7906255 -72.2556463)', 4326), 43.7941667, -72.3033333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456196', 'Ayers Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Randolph', 43.9242321, -72.6545485, ST_GeomFromText('POINT(43.9242321 -72.6545485)', 4326), 44.0533967, -72.642329, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456197', 'Ayers Hill', 'Summit', 'Vermont', 'VT', 'Franklin', 'Richford OE N', 45.0121523, -72.7358219, ST_GeomFromText('POINT(45.0121523 -72.7358219)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456198', 'Babcock Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Quechee', 43.6289588, -72.4587043, ST_GeomFromText('POINT(43.6289588 -72.4587043)', 4326), 43.588959, -72.4687038, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456200', 'Babcock Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Craftsbury', 44.6281314, -72.3059337, ST_GeomFromText('POINT(44.6281314 -72.3059337)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456201', 'Back Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Spectacle Pond', 44.814796, -71.8683364, ST_GeomFromText('POINT(44.814796 -71.8683364)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1456202', 'Badger Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Saint Johnsbury', 44.4583898, -72.1084313, ST_GeomFromText('POINT(44.4583898 -72.1084313)', 4326), 44.4817222, -72.1651, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456203', 'Badger Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Concord', 44.3838011, -71.9174411, ST_GeomFromText('POINT(44.3838011 -71.9174411)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1456204', 'Bahannan Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Sterling Mountain', 44.5228304, -72.6859519, ST_GeomFromText('POINT(44.5228304 -72.6859519)', 4326), 44.5188889, -72.7030556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456205', 'Bailey Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Woodstock South', 43.5011817, -72.5628712, ST_GeomFromText('POINT(43.5011817 -72.5628712)', 4326), 43.5144444, -72.6222222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456206', 'Bailey Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Caspian Lake', 44.5225538, -72.3067714, ST_GeomFromText('POINT(44.5225538 -72.3067714)', 4326), 44.5641667, -72.3125, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456207', 'Bailey Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Spectacle Pond', 44.7789384, -71.816205, ST_GeomFromText('POINT(44.7789384 -71.816205)', 4326), 44.7356059, -71.8014821, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456208', 'Bailey Pond', 'Reservoir', 'Vermont', 'VT', 'Washington', 'Marshfield', 44.3274234, -72.3446322, ST_GeomFromText('POINT(44.3274234 -72.3446322)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1456210', 'Baker Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.1922986, -73.2126076, ST_GeomFromText('POINT(43.1922986 -73.2126076)', 4326), 43.1988889, -73.2161111, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456211', 'Baker Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Barre East', 44.1542291, -72.4276017, ST_GeomFromText('POINT(44.1542291 -72.4276017)', 4326), 44.1575625, -72.3742665, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456213', 'Baker Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Caspian Lake', 44.6030959, -72.2946528, ST_GeomFromText('POINT(44.6030959 -72.2946528)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456214', 'Baker Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Crystal Lake', 44.7461535, -72.2342985, ST_GeomFromText('POINT(44.7461535 -72.2342985)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1456215', 'Baker Pond', 'Reservoir', 'Vermont', 'VT', 'Orange', 'Roxbury', 44.0676202, -72.6353278, ST_GeomFromText('POINT(44.0676202 -72.6353278)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1456216', 'Bald Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Walpole', 43.1116949, -72.4489656, ST_GeomFromText('POINT(43.1116949 -72.4489656)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456217', 'Bald Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Wells', 43.4001779, -73.1746553, ST_GeomFromText('POINT(43.4001779 -73.1746553)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1456218', 'Bald Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Sudbury', 43.8264736, -73.1596855, ST_GeomFromText('POINT(43.8264736 -73.1596855)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456219', 'Bald Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Huntington', 44.3189983, -72.9071694, ST_GeomFromText('POINT(44.3189983 -72.9071694)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1456220', 'Bald Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Richmond', 44.4970962, -72.9199526, ST_GeomFromText('POINT(44.4970962 -72.9199526)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456221', 'Bald Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Essex Center', 44.5873693, -73.0724834, ST_GeomFromText('POINT(44.5873693 -73.0724834)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456222', 'Bald Hill Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'West Burke', 44.7395956, -71.9772699, ST_GeomFromText('POINT(44.7395956 -71.9772699)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1456223', 'Bald Knob', 'Summit', 'Vermont', 'VT', 'Franklin', 'Gilson Mountain', 44.666335, -72.8961135, ST_GeomFromText('POINT(44.666335 -72.8961135)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456224', 'Bald Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Groveton', 44.6188999, -71.6148787, ST_GeomFromText('POINT(44.6188999 -71.6148787)', 4326), NULL, NULL, '1980-10-29', '2022-09-02', NULL, NULL, NULL),
  ('1456225', 'Bald Mountain', 'Summit', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.1879905, -73.2326473, ST_GeomFromText('POINT(43.1879905 -73.2326473)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1456226', 'Bald Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Rutland', 43.5814488, -72.9259368, ST_GeomFromText('POINT(43.5814488 -72.9259368)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1456227', 'Bald Mountain', 'Summit', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.5836716, -72.6881527, ST_GeomFromText('POINT(43.5836716 -72.6881527)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456228', 'Bald Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Whitehall', 43.6130367, -73.4061388, ST_GeomFromText('POINT(43.6130367 -73.4061388)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456229', 'Bald Mountain', 'Summit', 'Vermont', 'VT', 'Washington', 'Northfield', 44.2145143, -72.7453227, ST_GeomFromText('POINT(44.2145143 -72.7453227)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1456230', 'Bald Mountain', 'Summit', 'Vermont', 'VT', 'Orleans', 'Island Pond', 44.7661706, -71.9883431, ST_GeomFromText('POINT(44.7661706 -71.9883431)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456231', 'Bald Mountain Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Island Pond', 44.7981049, -71.992319, ST_GeomFromText('POINT(44.7981049 -71.992319)', 4326), 44.7772222, -71.9897222, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456232', 'Bald Top', 'Summit', 'Vermont', 'VT', 'Orange', 'Fairlee', 43.9298413, -72.1888932, ST_GeomFromText('POINT(43.9298413 -72.1888932)', 4326), NULL, NULL, '1980-10-29', '2022-09-02', NULL, NULL, NULL),
  ('1456233', 'Baldwin Hill', 'Summit', 'Vermont', 'VT', 'Essex', 'Gilman', 44.4893814, -71.7126153, ST_GeomFromText('POINT(44.4893814 -71.7126153)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456235', 'Ball Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Andover', 43.3620087, -72.6273149, ST_GeomFromText('POINT(43.3620087 -72.6273149)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456236', 'Ball Island', 'Island', 'Vermont', 'VT', 'Franklin', 'Saint Albans Bay', 44.7617107, -73.215966, ST_GeomFromText('POINT(44.7617107 -73.215966)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456237', 'Balm of Gilead Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'Rouses Point', 44.9077798, -73.2693394, ST_GeomFromText('POINT(44.9077798 -73.2693394)', 4326), NULL, NULL, '1980-10-29', '2017-01-28', NULL, NULL, NULL),
  ('1456239', 'Bancroft Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Barre East', 44.2470077, -72.3832045, ST_GeomFromText('POINT(44.2470077 -72.3832045)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1456241', 'Baptist Hill', 'Summit', 'Vermont', 'VT', 'Essex', 'Gilman', 44.4432888, -71.7236594, ST_GeomFromText('POINT(44.4432888 -71.7236594)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456246', 'Barber Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Charlotte', 44.3025766, -73.2582412, ST_GeomFromText('POINT(44.3025766 -73.2582412)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456247', 'Barber Ledge', 'Cliff', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.7353415, -73.1990013, ST_GeomFromText('POINT(43.7353415 -73.1990013)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456248', 'Barber Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Middletown Springs', 43.475186, -73.0991454, ST_GeomFromText('POINT(43.475186 -73.0991454)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456249', 'Barbos Lake', 'Reservoir', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.1450583, -73.1479139, ST_GeomFromText('POINT(43.1450583 -73.1479139)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1456251', 'Barker Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Ludlow', 43.4922927, -72.6564848, ST_GeomFromText('POINT(43.4922927 -72.6564848)', 4326), 43.4927778, -72.6447222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456252', 'Barker Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'South Strafford', 43.8545133, -72.2614808, ST_GeomFromText('POINT(43.8545133 -72.2614808)', 4326), 43.8820127, -72.2887043, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456254', 'Barker Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.6648257, -73.155003, ST_GeomFromText('POINT(43.6648257 -73.155003)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456255', 'Barker Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Wells', 43.4884836, -73.1604302, ST_GeomFromText('POINT(43.4884836 -73.1604302)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1456256', 'Barkmill Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Springfield', 43.3622958, -72.410923, ST_GeomFromText('POINT(43.3622958 -72.410923)', 4326), 43.3513889, -72.4552778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456259', 'Barnard Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Woodstock North', 43.6425693, -72.5239834, ST_GeomFromText('POINT(43.6425693 -72.5239834)', 4326), 43.7208333, -72.5980556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456261', 'Barnes Bay', 'Bay', 'Vermont', 'VT', 'Grand Isle', 'South Hero', 44.642545, -73.3473543, ST_GeomFromText('POINT(44.642545 -73.3473543)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456262', 'Barnes Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Mount Worcester', 44.4722765, -72.532056, ST_GeomFromText('POINT(44.4722765 -72.532056)', 4326), 44.4902778, -72.5061111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456263', 'Barnes Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Burke Mountain', 44.5228337, -71.9442611, ST_GeomFromText('POINT(44.5228337 -71.9442611)', 4326), 44.5397222, -71.9075, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456265', 'Barnes Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Stowe', 44.4095672, -72.6856244, ST_GeomFromText('POINT(44.4095672 -72.6856244)', 4326), NULL, NULL, '1980-10-29', '2022-09-08', NULL, NULL, NULL),
  ('1456268', 'Barnet Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Barnet', 44.312924, -72.0420171, ST_GeomFromText('POINT(44.312924 -72.0420171)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456269', 'Barney Point', 'Cape', 'Vermont', 'VT', 'Chittenden', 'Colchester Point', 44.5453251, -73.2942966, ST_GeomFromText('POINT(44.5453251 -73.2942966)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456270', 'Barnum Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Orwell', 43.8570577, -73.3187283, ST_GeomFromText('POINT(43.8570577 -73.3187283)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456273', 'Barr Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Caspian Lake', 44.6112484, -72.2899328, ST_GeomFromText('POINT(44.6112484 -72.2899328)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456275', 'Barron Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.616759, -72.439264, ST_GeomFromText('POINT(43.616759 -72.439264)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL),
  ('1456276', 'Barrows Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Stowe', 44.4456097, -72.7359526, ST_GeomFromText('POINT(44.4456097 -72.7359526)', 4326), 44.4661111, -72.7158333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456278', 'Bartlett Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Woodstock North', 43.6772912, -72.5309287, ST_GeomFromText('POINT(43.6772912 -72.5309287)', 4326), 43.6969444, -72.5488889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456279', 'Bartlett Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Plainfield', 44.252381, -72.4195642, ST_GeomFromText('POINT(44.252381 -72.4195642)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456280', 'Bartlett Hill', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Jeffersonville', 44.6691433, -72.8450663, ST_GeomFromText('POINT(44.6691433 -72.8450663)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456282', 'Barton Mountain', 'Summit', 'Vermont', 'VT', 'Orleans', 'Orleans', 44.7730427, -72.141424, ST_GeomFromText('POINT(44.7730427 -72.141424)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456283', 'Barton River', 'Stream', 'Vermont', 'VT', 'Orleans', 'Newport', 44.9055168, -72.2102227, ST_GeomFromText('POINT(44.9055168 -72.2102227)', 4326), 44.6372251, -72.2113696, '1980-10-29', '2019-11-12', NULL, NULL, NULL),
  ('1456285', 'Bascom Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Bridport', 43.9103377, -73.2640061, ST_GeomFromText('POINT(43.9103377 -73.2640061)', 4326), 43.9370041, -73.2359506, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456287', 'Bashan Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.5109045, -72.3981468, ST_GeomFromText('POINT(43.5109045 -72.3981468)', 4326), 43.5211111, -72.4394444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456288', 'Basin Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Delectable Mountain', 43.6897899, -72.7228789, ST_GeomFromText('POINT(43.6897899 -72.7228789)', 4326), 43.6755556, -72.7169444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456289', 'Basin Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Johnson', 44.7497709, -72.6845666, ST_GeomFromText('POINT(44.7497709 -72.6845666)', 4326), 44.7080556, -72.6825, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456290', 'Basin Harbor', 'Bay', 'Vermont', 'VT', 'Addison', 'Vergennes West', 44.1964419, -73.3629036, ST_GeomFromText('POINT(44.1964419 -73.3629036)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456293', 'Bass Hill', 'Summit', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.220863, -73.1675053, ST_GeomFromText('POINT(43.220863 -73.1675053)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1456294', 'Bassett Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Westmore', 44.8344928, -72.1120443, ST_GeomFromText('POINT(44.8344928 -72.1120443)', 4326), 44.8666667, -72.1172222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456295', 'Bat Harris Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Waterbury', 44.2753357, -72.7584501, ST_GeomFromText('POINT(44.2753357 -72.7584501)', 4326), 44.2725, -72.7613889, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456296', 'Bates Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'West Charleston', 44.9648638, -72.0811717, ST_GeomFromText('POINT(44.9648638 -72.0811717)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1456297', 'Battles Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Randolph', 43.9645089, -72.7253848, ST_GeomFromText('POINT(43.9645089 -72.7253848)', 4326), 43.9875, -72.7325, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456299', 'Baxter Mountain', 'Summit', 'Vermont', 'VT', 'Windsor', 'Sharon', 43.7923735, -72.4553733, ST_GeomFromText('POINT(43.7923735 -72.4553733)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456300', 'Baylies Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.6014809, -72.4996856, ST_GeomFromText('POINT(43.6014809 -72.4996856)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL),
  ('1456302', 'Beach Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Craftsbury', 44.6878222, -72.2761689, ST_GeomFromText('POINT(44.6878222 -72.2761689)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1456303', 'Beadles Cove', 'Bay', 'Vermont', 'VT', 'Addison', 'Orwell', 43.8508933, -73.3706741, ST_GeomFromText('POINT(43.8508933 -73.3706741)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456304', 'Bean Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'West Burke', 44.6650791, -71.8887113, ST_GeomFromText('POINT(44.6650791 -71.8887113)', 4326), 44.7304513, -71.968025, '1980-10-29', '2021-01-19', NULL, NULL, NULL),
  ('1456305', 'Bean Mountain', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Eden', 44.6742942, -72.5478438, ST_GeomFromText('POINT(44.6742942 -72.5478438)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456306', 'Bean Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Lyndonville', 44.5483078, -72.0712168, ST_GeomFromText('POINT(44.5483078 -72.0712168)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1456307', 'Bean Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Sutton', 44.6978995, -72.0850233, ST_GeomFromText('POINT(44.6978995 -72.0850233)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456309', 'Beans Point', 'Cape', 'Vermont', 'VT', 'Chittenden', 'Georgia Plains', 44.695323, -73.2123541, ST_GeomFromText('POINT(44.695323 -73.2123541)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456311', 'Bear Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Andover', 43.3359067, -72.683984, ST_GeomFromText('POINT(43.3359067 -72.683984)', 4326), 43.3247222, -72.6888889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456313', 'Bear Head', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Mount Mansfield', 44.5527846, -72.8082198, ST_GeomFromText('POINT(44.5527846 -72.8082198)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1456314', 'Bear Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Newfane', 42.8932173, -72.6392313, ST_GeomFromText('POINT(42.8932173 -72.6392313)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1456315', 'Bear Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Saxtons River', 43.1543093, -72.607165, ST_GeomFromText('POINT(43.1543093 -72.607165)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456316', 'Bear Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Andover', 43.3540654, -72.7161215, ST_GeomFromText('POINT(43.3540654 -72.7161215)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456317', 'Bear Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Roxbury', 44.0427849, -72.633934, ST_GeomFromText('POINT(44.0427849 -72.633934)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456318', 'Bear Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Island Pond', 44.8718923, -71.9393927, ST_GeomFromText('POINT(44.8718923 -71.9393927)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1456319', 'Bear Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Westminster West', 43.0067808, -72.5118608, ST_GeomFromText('POINT(43.0067808 -72.5118608)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456321', 'Bear Mount', 'Summit', 'Vermont', 'VT', 'Orleans', 'Newport Center OE N', 45.0039989, -72.3187595, ST_GeomFromText('POINT(45.0039989 -72.3187595)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456322', 'Bear Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Stratford', 44.6342047, -71.5779669, ST_GeomFromText('POINT(44.6342047 -71.5779669)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456323', 'Bear Mountain', 'Summit', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.2008507, -73.1670465, ST_GeomFromText('POINT(43.2008507 -73.1670465)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1456324', 'Bear Mountain', 'Summit', 'Vermont', 'VT', 'Windsor', 'Killington Peak', 43.5100612, -72.7723205, ST_GeomFromText('POINT(43.5100612 -72.7723205)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1456325', 'Bear Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Killington Peak', 43.6075598, -72.8045452, ST_GeomFromText('POINT(43.6075598 -72.8045452)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1456326', 'Bear North Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Fairlee', 43.9414565, -72.225648, ST_GeomFromText('POINT(43.9414565 -72.225648)', 4326), 43.9805556, -72.2430556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456327', 'Bear Notch', 'Gap', 'Vermont', 'VT', 'Orange', 'Fairlee', 43.9820114, -72.2434269, ST_GeomFromText('POINT(43.9820114 -72.2434269)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456328', 'Bear Pond', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Mount Mansfield', 44.5551493, -72.8048401, ST_GeomFromText('POINT(44.5551493 -72.8048401)', 4326), NULL, NULL, '1980-10-29', '2011-10-12', NULL, NULL, NULL),
  ('1456329', 'Bear Swamp', 'Lake', 'Vermont', 'VT', 'Washington', 'Middlesex', 44.3611264, -72.6504012, ST_GeomFromText('POINT(44.3611264 -72.6504012)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1456330', 'Bears Den Hill', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Jeffersonville', 44.7404243, -72.7818613, ST_GeomFromText('POINT(44.7404243 -72.7818613)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1456331', 'Beartrap Island', 'Island', 'Vermont', 'VT', 'Addison', 'Sudbury', 43.8495062, -73.1862257, ST_GeomFromText('POINT(43.8495062 -73.1862257)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456332', 'Beaver Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Jacksonville', 42.8678588, -72.8739869, ST_GeomFromText('POINT(42.8678588 -72.8739869)', 4326), 42.8666667, -72.7997222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456333', 'Beaver Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Woodstock South', 43.6009029, -72.556206, ST_GeomFromText('POINT(43.6009029 -72.556206)', 4326), 43.5705556, -72.5716667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456334', 'Beaver Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Cornwall', 43.998392, -73.2390075, ST_GeomFromText('POINT(43.998392 -73.2390075)', 4326), 43.9386111, -73.2272222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456335', 'Beaver Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Middlebury', 44.0322801, -73.2403971, ST_GeomFromText('POINT(44.0322801 -73.2403971)', 4326), 44.0361111, -73.2036111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456336', 'Beaver Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Marshfield', 44.2589495, -72.2645419, ST_GeomFromText('POINT(44.2589495 -72.2645419)', 4326), 44.2505556, -72.3097222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456337', 'Seavers Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Springfield', 43.2797971, -72.4681447, ST_GeomFromText('POINT(43.2797971 -72.4681447)', 4326), 43.2584085, -72.5078671, '1980-10-29', NULL, 'Official', 'Board Decision', '1972-01-01'),
  ('1456338', 'Beaver Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Pawlet', 43.3542398, -73.1587179, ST_GeomFromText('POINT(43.3542398 -73.1587179)', 4326), 43.3978498, -73.1306621, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456339', 'Beaver Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Windsor', 43.4675715, -72.4703689, ST_GeomFromText('POINT(43.4675715 -72.4703689)', 4326), 43.5161817, -72.4923141, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456340', 'Beaver Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Gilson Mountain', 44.6433832, -72.9362445, ST_GeomFromText('POINT(44.6433832 -72.9362445)', 4326), 44.5703284, -72.9217952, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456341', 'Beaver Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Irasburg', 44.750049, -72.2839935, ST_GeomFromText('POINT(44.750049 -72.2839935)', 4326), 44.7541667, -72.2736111, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456343', 'Beaver Meadow', 'Swamp', 'Vermont', 'VT', 'Rutland', 'Benson', 43.6488456, -73.2720331, ST_GeomFromText('POINT(43.6488456 -73.2720331)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL),
  ('1456344', 'Beaver Meadow', 'Lake', 'Vermont', 'VT', 'Washington', 'Waterbury', 44.2886887, -72.8535562, ST_GeomFromText('POINT(44.2886887 -72.8535562)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1456345', 'Beaver Meadow', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Sterling Mountain', 44.5678316, -72.7396964, ST_GeomFromText('POINT(44.5678316 -72.7396964)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1456346', 'Beaver Meadow', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Eden', 44.6753136, -72.5150745, ST_GeomFromText('POINT(44.6753136 -72.5150745)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1456347', 'Beaver Meadow Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Chester', 43.3364626, -72.5578694, ST_GeomFromText('POINT(43.3364626 -72.5578694)', 4326), 43.3577778, -72.5733333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456348', 'Beaver Meadow Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Chelsea', 43.9611775, -72.4164868, ST_GeomFromText('POINT(43.9611775 -72.4164868)', 4326), 43.9813889, -72.3788889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456349', 'Beaver Meadow Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Montpelier', 44.327558, -72.500663, ST_GeomFromText('POINT(44.327558 -72.500663)', 4326), 44.3425, -72.5258333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456350', 'Beaver Meadow Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Plainfield', 44.3297806, -72.3756586, ST_GeomFromText('POINT(44.3297806 -72.3756586)', 4326), 44.3433333, -72.4008333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456351', 'Beaver Meadow Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Sterling Mountain', 44.5628298, -72.6640071, ST_GeomFromText('POINT(44.5628298 -72.6640071)', 4326), 44.5752778, -72.7411111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456352', 'Beaver Meadow Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Eden', 44.6706058, -72.5945605, ST_GeomFromText('POINT(44.6706058 -72.5945605)', 4326), 44.6633333, -72.5480556, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456353', 'Beaver Meadow Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Milton', 44.680752, -73.0558423, ST_GeomFromText('POINT(44.680752 -73.0558423)', 4326), 44.7452368, -73.0619, '1980-10-29', '2019-11-12', NULL, NULL, NULL),
  ('1456354', 'Beaver Meadow Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Bakersfield', 44.8411584, -72.8065214, ST_GeomFromText('POINT(44.8411584 -72.8065214)', 4326), 44.8125, -72.8302778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456355', 'Beaver Meadow Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Cold Hollow Mountains', 44.8542141, -72.7442979, ST_GeomFromText('POINT(44.8542141 -72.7442979)', 4326), 44.902269, -72.7137422, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456356', 'Beaver Pond', 'Lake', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.573602, -72.4638996, ST_GeomFromText('POINT(43.573602 -72.4638996)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1456357', 'Beaver Pond', 'Reservoir', 'Vermont', 'VT', 'Rutland', 'Proctor', 43.665836, -73.0462637, ST_GeomFromText('POINT(43.665836 -73.0462637)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1456358', 'Beaver Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Roxbury', 44.0604487, -72.7203138, ST_GeomFromText('POINT(44.0604487 -72.7203138)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1456359', 'Beaver Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Marshfield', 44.2806115, -72.2548933, ST_GeomFromText('POINT(44.2806115 -72.2548933)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1456360', 'Beaver Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Morgan Center OE N', 45.0054235, -71.9418441, ST_GeomFromText('POINT(45.0054235 -71.9418441)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1456361', 'Beck Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'West Burke', 44.7292028, -71.9179171, ST_GeomFromText('POINT(44.7292028 -71.9179171)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1456362', 'Beckley Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Barre West', 44.228107, -72.5081601, ST_GeomFromText('POINT(44.228107 -72.5081601)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456363', 'Bedell Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Morrisville', 44.5172752, -72.6151156, ST_GeomFromText('POINT(44.5172752 -72.6151156)', 4326), 44.470332, -72.5751133, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456366', 'Beebe Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.7340901, -73.1837094, ST_GeomFromText('POINT(43.7340901 -73.1837094)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', 'Official', 'Board Decision', '1897-01-01'),
  ('1456367', 'Beech Bay', 'Bay', 'Vermont', 'VT', 'Grand Isle', 'South Hero', 44.6322674, -73.3454097, ST_GeomFromText('POINT(44.6322674 -73.3454097)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456369', 'Beecher Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Spectacle Pond', 44.8117912, -71.8499616, ST_GeomFromText('POINT(44.8117912 -71.8499616)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1456370', 'Beechnut Ridge', 'Ridge', 'Vermont', 'VT', 'Orleans', 'Morgan Center', 44.9265966, -71.9382087, ST_GeomFromText('POINT(44.9265966 -71.9382087)', 4326), NULL, NULL, '1980-10-29', '2022-09-05', NULL, NULL, NULL),
  ('1456373', 'Beetle Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'North Troy', 44.901991, -72.398442, ST_GeomFromText('POINT(44.901991 -72.398442)', 4326), 44.8733805, -72.3231615, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456374', 'Belcher Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Roxbury', 44.0281722, -72.7141879, ST_GeomFromText('POINT(44.0281722 -72.7141879)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456375', 'Belden Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Colrain', 42.7451846, -72.6447721, ST_GeomFromText('POINT(42.7451846 -72.6447721)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456376', 'Belding Pond', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Sterling Mountain', 44.6167941, -72.7107655, ST_GeomFromText('POINT(44.6167941 -72.7107655)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1456377', 'Belding Pond Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Sterling Mountain', 44.6086622, -72.6867866, ST_GeomFromText('POINT(44.6086622 -72.6867866)', 4326), 44.6136111, -72.7113889, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456378', 'Bell Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Johnson', 44.6458839, -72.6506743, ST_GeomFromText('POINT(44.6458839 -72.6506743)', 4326), 44.6833333, -72.6777778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456379', 'Bell Island', 'Island', 'Vermont', 'VT', 'Orleans', 'Newport', 44.9903238, -72.2098244, ST_GeomFromText('POINT(44.9903238 -72.2098244)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456380', 'Bellevue Hill', 'Summit', 'Vermont', 'VT', 'Franklin', 'Saint Albans', 44.7819822, -73.0648599, ST_GeomFromText('POINT(44.7819822 -73.0648599)', 4326), NULL, NULL, '1980-10-29', '2022-09-02', NULL, NULL, NULL),
  ('1456387', 'Belvidere Mountain', 'Summit', 'Vermont', 'VT', 'Orleans', 'Hazens Notch', 44.773007, -72.5509013, ST_GeomFromText('POINT(44.773007 -72.5509013)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456389', 'Belvidere Pond', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Hazens Notch', 44.7670384, -72.5994225, ST_GeomFromText('POINT(44.7670384 -72.5994225)', 4326), NULL, NULL, '2002-08-27', '2019-11-20', NULL, NULL, NULL),
  ('1456390', 'Bemis Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Burke Mountain', 44.5846173, -71.9626359, ST_GeomFromText('POINT(44.5846173 -71.9626359)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456391', 'Bennett Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Montpelier', 44.2820035, -72.5112181, ST_GeomFromText('POINT(44.2820035 -72.5112181)', 4326), 44.3252778, -72.5358333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456393', 'Bennetts Ridge', 'Ridge', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.192919, -73.1934456, ST_GeomFromText('POINT(43.192919 -73.1934456)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1456395', 'Benson Bay', 'Bay', 'Vermont', 'VT', 'Addison', 'Orwell', 43.7653396, -73.3456716, ST_GeomFromText('POINT(43.7653396 -73.3456716)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456401', 'Berlin Pond', 'Reservoir', 'Vermont', 'VT', 'Washington', 'Barre West', 44.1911223, -72.5876895, ST_GeomFromText('POINT(44.1911223 -72.5876895)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456405', 'Bible Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Concord', 44.4734753, -71.9929552, ST_GeomFromText('POINT(44.4734753 -71.9929552)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456407', 'Bicknell Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Chelsea', 43.9456219, -72.4564876, ST_GeomFromText('POINT(43.9456219 -72.4564876)', 4326), 43.9486111, -72.4213889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456408', 'Biddie Knob', 'Summit', 'Vermont', 'VT', 'Rutland', 'Proctor', 43.7135758, -73.1094239, ST_GeomFromText('POINT(43.7135758 -73.1094239)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456409', 'Big Bluff', 'Cliff', 'Vermont', 'VT', 'Grand Isle', 'Rouses Point', 44.936023, -73.260016, ST_GeomFromText('POINT(44.936023 -73.260016)', 4326), NULL, NULL, '1980-10-29', '2017-01-28', 'Official', 'Board Decision', '1967-01-01'),
  ('1456410', 'Big Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Orwell', 43.7742284, -73.342894, ST_GeomFromText('POINT(43.7742284 -73.342894)', 4326), 43.7791667, -73.3286111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456411', 'Big Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Fairlee', 43.9339566, -72.1398122, ST_GeomFromText('POINT(43.9339566 -72.1398122)', 4326), 43.9413889, -72.17, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456413', 'Big Falls', 'Falls', 'Vermont', 'VT', 'Orleans', 'North Troy', 44.9722678, -72.3848307, ST_GeomFromText('POINT(44.9722678 -72.3848307)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456414', 'Big Hollow Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Whitehall', 43.5978441, -73.3867797, ST_GeomFromText('POINT(43.5978441 -73.3867797)', 4326), 43.6147222, -73.4, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456415', 'Big Jay', 'Summit', 'Vermont', 'VT', 'Franklin', 'Jay Peak', 44.9152322, -72.5405643, ST_GeomFromText('POINT(44.9152322 -72.5405643)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456416', 'Big Marsh Slough', 'Lake', 'Vermont', 'VT', 'Franklin', 'East Alburg', 44.9721319, -73.144121, ST_GeomFromText('POINT(44.9721319 -73.144121)', 4326), NULL, NULL, '1980-10-29', '2020-01-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456417', 'Big Muddy Pond', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Hazens Notch', 44.7558672, -72.601277, ST_GeomFromText('POINT(44.7558672 -72.601277)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1456418', 'Big Rock Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Crystal Lake', 44.6825725, -72.1490778, ST_GeomFromText('POINT(44.6825725 -72.1490778)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456419', 'Big Spring', 'Spring', 'Vermont', 'VT', 'Lamoille', 'Mount Mansfield', 44.5483817, -72.7934571, ST_GeomFromText('POINT(44.5483817 -72.7934571)', 4326), NULL, NULL, '1980-10-29', '2011-08-23', NULL, NULL, NULL),
  ('1456420', 'Big Valley Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Sutton', 44.7050507, -72.0989882, ST_GeomFromText('POINT(44.7050507 -72.0989882)', 4326), 44.7219444, -72.0561111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456423', 'Billings Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Sharon', 43.7720018, -72.4638566, ST_GeomFromText('POINT(43.7720018 -72.4638566)', 4326), NULL, NULL, '1980-10-29', '2023-07-21', NULL, NULL, NULL),
  ('1456424', 'Billings Marsh', 'Lake', 'Vermont', 'VT', 'Rutland', 'Whitehall', 43.6047335, -73.3775114, ST_GeomFromText('POINT(43.6047335 -73.3775114)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL),
  ('1456425', 'Bingham Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Mount Philo', 44.3256078, -73.205958, ST_GeomFromText('POINT(44.3256078 -73.205958)', 4326), 44.2866667, -73.1977778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456426', 'Bingham Falls', 'Falls', 'Vermont', 'VT', 'Lamoille', 'Mount Mansfield', 44.5196861, -72.7671235, ST_GeomFromText('POINT(44.5196861 -72.7671235)', 4326), NULL, NULL, '1980-10-29', '2015-01-17', NULL, NULL, NULL),
  ('1456428', 'Birch Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Richmond', 44.4627113, -72.96006, ST_GeomFromText('POINT(44.4627113 -72.96006)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456429', 'Birch Point', 'Cape', 'Vermont', 'VT', 'Orleans', 'Caspian Lake', 44.5900523, -72.3039937, ST_GeomFromText('POINT(44.5900523 -72.3039937)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456430', 'Bird Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'West Rutland', 43.5864498, -73.1153408, ST_GeomFromText('POINT(43.5864498 -73.1153408)', 4326), NULL, NULL, '1980-10-29', '2022-09-02', NULL, NULL, NULL),
  ('1456432', 'Birnies Nose', 'Cliff', 'Vermont', 'VT', 'Chittenden', 'Richmond', 44.473473, -72.8786418, ST_GeomFromText('POINT(44.473473 -72.8786418)', 4326), NULL, NULL, '1980-10-29', '2015-02-06', NULL, NULL, NULL),
  ('1456433', 'Biscuit Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Woodstock South', 43.5900918, -72.5746051, ST_GeomFromText('POINT(43.5900918 -72.5746051)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456434', 'Bishop Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Orwell', 43.7622755, -73.2881689, ST_GeomFromText('POINT(43.7622755 -73.2881689)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1456435', 'Bissell Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Killington Peak', 43.5675604, -72.7862107, ST_GeomFromText('POINT(43.5675604 -72.7862107)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1456436', 'Bixby Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Brookfield', 44.0102723, -72.5190573, ST_GeomFromText('POINT(44.0102723 -72.5190573)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456437', 'Bixby Island', 'Island', 'Vermont', 'VT', 'Grand Isle', 'South Hero', 44.7475426, -73.3429105, ST_GeomFromText('POINT(44.7475426 -73.3429105)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456438', 'Black Branch Nulhegan River', 'Stream', 'Vermont', 'VT', 'Essex', 'Bloomfield', 44.7836603, -71.6984245, ST_GeomFromText('POINT(44.7836603 -71.6984245)', 4326), 44.9364361, -71.7784276, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456439', 'Black Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Averill', 44.9922685, -71.67398, ST_GeomFromText('POINT(44.9922685 -71.67398)', 4326), 45.0106017, -71.7017589, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456440', 'Black Creek', 'Stream', 'Vermont', 'VT', 'Franklin', 'East Alburg', 44.9380974, -73.169019, ST_GeomFromText('POINT(44.9380974 -73.169019)', 4326), 44.9091667, -73.1430556, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456441', 'Black Creek', 'Stream', 'Vermont', 'VT', 'Franklin', 'Sheldon Springs', 44.8950454, -72.9445785, ST_GeomFromText('POINT(44.8950454 -72.9445785)', 4326), 44.6928273, -72.8806884, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456442', 'Black Duck Ridge', 'Ridge', 'Vermont', 'VT', 'Franklin', 'East Alburg', 44.9880874, -73.1631828, ST_GeomFromText('POINT(44.9880874 -73.1631828)', 4326), NULL, NULL, '1980-10-29', '2017-01-31', NULL, NULL, NULL),
  ('1456443', 'Black Falls Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Richford', 44.901991, -72.6456807, ST_GeomFromText('POINT(44.901991 -72.6456807)', 4326), 44.9358791, -72.5376162, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456444', 'Black Hill', 'Summit', 'Vermont', 'VT', 'Franklin', 'Gilson Mountain', 44.6619364, -72.9000249, ST_GeomFromText('POINT(44.6619364 -72.9000249)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456445', 'Black Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Irasburg', 44.8568386, -72.3359803, ST_GeomFromText('POINT(44.8568386 -72.3359803)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456446', 'Black Hills', 'Summit', 'Vermont', 'VT', 'Orleans', 'Crystal Lake', 44.6496271, -72.2288224, ST_GeomFromText('POINT(44.6496271 -72.2288224)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456448', 'Black Island', 'Island', 'Vermont', 'VT', 'Orleans', 'Newport', 44.9958792, -72.2103799, ST_GeomFromText('POINT(44.9958792 -72.2103799)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456449', 'Black Mountain', 'Summit', 'Vermont', 'VT', 'Windham', 'Putney', 42.9224574, -72.6033723, ST_GeomFromText('POINT(42.9224574 -72.6033723)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1456450', 'Black Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Averill', 44.9265898, -71.7476559, ST_GeomFromText('POINT(44.9265898 -71.7476559)', 4326), NULL, NULL, '1980-10-29', '2022-09-05', NULL, NULL, NULL),
  ('1456451', 'Black Pond', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Killington Peak', 43.5526481, -72.7540289, ST_GeomFromText('POINT(43.5526481 -72.7540289)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456452', 'Black Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.7032192, -73.2241268, ST_GeomFromText('POINT(43.7032192 -73.2241268)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL),
  ('1456453', 'Black River', 'Stream', 'Vermont', 'VT', 'Windsor', 'Springfield', 43.2606309, -72.4364775, ST_GeomFromText('POINT(43.2606309 -72.4364775)', 4326), 43.5497917, -72.752044, '1980-10-29', '2018-07-31', NULL, NULL, NULL),
  ('1456454', 'Black River', 'Stream', 'Vermont', 'VT', 'Orleans', 'Newport', 44.9250469, -72.2128801, ST_GeomFromText('POINT(44.9250469 -72.2128801)', 4326), 44.7019943, -72.3228834, '1980-10-29', '2018-07-31', NULL, NULL, NULL),
  ('1456456', 'Black Swamp', 'Swamp', 'Vermont', 'VT', 'Rutland', 'Killington Peak', 43.5711802, -72.7884343, ST_GeomFromText('POINT(43.5711802 -72.7884343)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456457', 'Black Turn Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Norton Pond OE N', 45.0006018, -71.8078727, ST_GeomFromText('POINT(45.0006018 -71.8078727)', 4326), 45.01, -71.8216667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456458', 'Blackberry Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Plainfield', 44.3435969, -72.4968189, ST_GeomFromText('POINT(44.3435969 -72.4968189)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456459', 'Blaisdell Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Randolph Center', 43.9470101, -72.5531571, ST_GeomFromText('POINT(43.9470101 -72.5531571)', 4326), 43.9736111, -72.6041667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456461', 'Blake Falls', 'Falls', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.4291269, -72.4135849, ST_GeomFromText('POINT(44.4291269 -72.4135849)', 4326), NULL, NULL, '1980-10-29', '2015-01-17', NULL, NULL, NULL),
  ('1456462', 'Blake Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Windham', 43.2126066, -72.6294356, ST_GeomFromText('POINT(43.2126066 -72.6294356)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1456463', 'Blake Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Marshfield', 44.3226098, -72.2856292, ST_GeomFromText('POINT(44.3226098 -72.2856292)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456464', 'Blake Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Quechee', 43.626712, -72.4911189, ST_GeomFromText('POINT(43.626712 -72.4911189)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL),
  ('1456465', 'Blake Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Sutton', 44.635377, -72.1204807, ST_GeomFromText('POINT(44.635377 -72.1204807)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1456466', 'Blake Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Sutton', 44.7120418, -72.0722771, ST_GeomFromText('POINT(44.7120418 -72.0722771)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1456468', 'Blanchard Bay', 'Bay', 'Vermont', 'VT', 'Grand Isle', 'Rouses Point', 44.9050406, -73.3306879, ST_GeomFromText('POINT(44.9050406 -73.3306879)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456469', 'Blanchard Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Montpelier', 44.2500596, -72.5628862, ST_GeomFromText('POINT(44.2500596 -72.5628862)', 4326), 44.2791667, -72.5572222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456472', 'Bliss Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Montpelier', 44.352598, -72.5014001, ST_GeomFromText('POINT(44.352598 -72.5014001)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1456474', 'Blockhouse Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.8469582, -73.285005, ST_GeomFromText('POINT(44.8469582 -73.285005)', 4326), NULL, NULL, '1980-10-29', '2017-01-28', NULL, NULL, NULL),
  ('1456475', 'Blodgett Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Tinkerville', 44.85977, -71.5503641, ST_GeomFromText('POINT(44.85977 -71.5503641)', 4326), 44.8967142, -71.6323115, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456477', 'Blood Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Fairlee', 43.9011794, -72.2117581, ST_GeomFromText('POINT(43.9011794 -72.2117581)', 4326), 43.9397222, -72.1908333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456478', 'Blood Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Springfield', 43.3645179, -72.4142563, ST_GeomFromText('POINT(43.3645179 -72.4142563)', 4326), 43.3775731, -72.4595346, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456479', 'Blood Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.5231174, -72.4850908, ST_GeomFromText('POINT(43.5231174 -72.4850908)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL),
  ('1456480', 'Blood Mountain', 'Summit', 'Vermont', 'VT', 'Windsor', 'South Strafford', 43.7515114, -72.2506231, ST_GeomFromText('POINT(43.7515114 -72.2506231)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456481', 'Bloodsucker Pond', 'Lake', 'Vermont', 'VT', 'Windsor', 'Springfield', 43.3365268, -72.4290857, ST_GeomFromText('POINT(43.3365268 -72.4290857)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1456482', 'Bloody Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Hanover', 43.7020149, -72.3006466, ST_GeomFromText('POINT(43.7020149 -72.3006466)', 4326), 43.7922914, -72.3428706, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456485', 'Bloomfield Ridge', 'Ridge', 'Vermont', 'VT', 'Essex', 'Bloomfield', 44.8336374, -71.6375171, ST_GeomFromText('POINT(44.8336374 -71.6375171)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456488', 'Blue Ledge', 'Cliff', 'Vermont', 'VT', 'Addison', 'Orwell', 43.7692285, -73.344005, ST_GeomFromText('POINT(43.7692285 -73.344005)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456489', 'Blue Mountain', 'Summit', 'Vermont', 'VT', 'Windham', 'Jacksonville', 42.810079, -72.7574442, ST_GeomFromText('POINT(42.810079 -72.7574442)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456490', 'Blue Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Groton', 44.235886, -72.1375934, ST_GeomFromText('POINT(44.235886 -72.1375934)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1456492', 'Blue Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.4116355, -72.4676603, ST_GeomFromText('POINT(44.4116355 -72.4676603)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1456493', 'Blue Rock', 'Pillar', 'Vermont', 'VT', 'Grand Isle', 'Rouses Point', 44.9586516, -73.2567964, ST_GeomFromText('POINT(44.9586516 -73.2567964)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456494', 'Blueberry Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.503797, -72.6979585, ST_GeomFromText('POINT(43.503797 -72.6979585)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456495', 'Blueberry Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.6282084, -73.1459416, ST_GeomFromText('POINT(43.6282084 -73.1459416)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456496', 'Blueberry Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Orwell', 43.7807624, -73.2901782, ST_GeomFromText('POINT(43.7807624 -73.2901782)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456497', 'Blueberry Ledges', 'Cliff', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.5631252, -72.6728753, ST_GeomFromText('POINT(43.5631252 -72.6728753)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456498', 'Blueberry Mountain', 'Summit', 'Vermont', 'VT', 'Windsor', 'Bethel', 43.8625982, -72.6901147, ST_GeomFromText('POINT(43.8625982 -72.6901147)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1456499', 'Bluff Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Spectacle Pond', 44.8580091, -71.8625217, ST_GeomFromText('POINT(44.8580091 -71.8625217)', 4326), NULL, NULL, '1980-10-29', '2023-07-21', NULL, NULL, NULL),
  ('1456500', 'Blush Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Middlesex', 44.3675469, -72.7337275, ST_GeomFromText('POINT(44.3675469 -72.7337275)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1456502', 'Boardman Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'West Rutland', 43.5685486, -73.0083529, ST_GeomFromText('POINT(43.5685486 -73.0083529)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456503', 'Bog Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Gallup Mills', 44.5281116, -71.8159251, ST_GeomFromText('POINT(44.5281116 -71.8159251)', 4326), 44.5463889, -71.8255556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456504', 'Bog Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Joes Pond', 44.495055, -72.186212, ST_GeomFromText('POINT(44.495055 -72.186212)', 4326), 44.5203322, -72.196768, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456505', 'Bog Pond', 'Lake', 'Vermont', 'VT', 'Orange', 'Fairlee', 43.9529902, -72.1463044, ST_GeomFromText('POINT(43.9529902 -72.1463044)', 4326), NULL, NULL, '1980-10-29', '2019-03-20', NULL, NULL, NULL),
  ('1456506', 'Bog Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Gallup Mills', 44.5466996, -71.8276734, ST_GeomFromText('POINT(44.5466996 -71.8276734)', 4326), NULL, NULL, '1980-10-29', '2021-01-22', NULL, NULL, NULL),
  ('1456507', 'Bogue Branch', 'Stream', 'Vermont', 'VT', 'Franklin', 'Bakersfield', 44.8653249, -72.7856884, ST_GeomFromText('POINT(44.8653249 -72.7856884)', 4326), 44.8030556, -72.7747222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456509', 'Bolster Reservoir', 'Reservoir', 'Vermont', 'VT', 'Washington', 'Barre West', 44.1582775, -72.5277527, ST_GeomFromText('POINT(44.1582775 -72.5277527)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1456510', 'Bolter Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Monadnock Mountain', 44.9453246, -71.542308, ST_GeomFromText('POINT(44.9453246 -71.542308)', 4326), 44.9380556, -71.5836111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456512', 'Bolton Falls', 'Falls', 'Vermont', 'VT', 'Washington', 'Waterbury', 44.359497, -72.8167878, ST_GeomFromText('POINT(44.359497 -72.8167878)', 4326), NULL, NULL, '1980-10-29', '2015-01-17', NULL, NULL, NULL),
  ('1456515', 'Bolton Mountain', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Bolton Mountain', 44.4492415, -72.8396722, ST_GeomFromText('POINT(44.4492415 -72.8396722)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1456520', 'Lake Bomoseen', 'Lake', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.6330145, -73.2215957, ST_GeomFromText('POINT(43.6330145 -73.2215957)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL),
  ('1456521', 'Bond Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Chester', 43.2549414, -72.5441058, ST_GeomFromText('POINT(43.2549414 -72.5441058)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456522', 'Bond Island', 'Island', 'Vermont', 'VT', 'Addison', 'Cornwall', 43.9003385, -73.2101161, ST_GeomFromText('POINT(43.9003385 -73.2101161)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456523', 'Bone Mountain', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Bolton Mountain', 44.4022693, -72.8443291, ST_GeomFromText('POINT(44.4022693 -72.8443291)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456524', 'Boomhour Branch', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Eden', 44.6853279, -72.506778, ST_GeomFromText('POINT(44.6853279 -72.506778)', 4326), 44.706994, -72.4817771, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456528', 'Boulley Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Sterling Mountain', 44.6044956, -72.7001206, ST_GeomFromText('POINT(44.6044956 -72.7001206)', 4326), 44.5986111, -72.7177778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456529', 'Bow Arrow Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.7544871, -73.3159656, ST_GeomFromText('POINT(44.7544871 -73.3159656)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456530', 'Bowen Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Cavendish', 43.4520071, -72.5573591, ST_GeomFromText('POINT(43.4520071 -72.5573591)', 4326), NULL, NULL, '1980-10-29', '2023-11-17', NULL, NULL, NULL),
  ('1456531', 'Bowen Mountain', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Johnson', 44.7240839, -72.6354045, ST_GeomFromText('POINT(44.7240839 -72.6354045)', 4326), NULL, NULL, '1980-10-29', '2023-07-21', NULL, NULL, NULL),
  ('1456533', 'Boyce Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Washington', 44.0697776, -72.421018, ST_GeomFromText('POINT(44.0697776 -72.421018)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456535', 'Boyds Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'South Royalton', 43.770181, -72.514498, ST_GeomFromText('POINT(43.770181 -72.514498)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456536', 'Boynton Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Andover', 43.3174432, -72.7181729, ST_GeomFromText('POINT(43.3174432 -72.7181729)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456537', 'Boynton Hollow', 'Valley', 'Vermont', 'VT', 'Windsor', 'Andover', 43.3363086, -72.7049857, ST_GeomFromText('POINT(43.3363086 -72.7049857)', 4326), 43.3290346, -72.7354588, '1980-10-29', '2018-08-01', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456541', 'Bradley Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hanover', 43.7484256, -72.2989609, ST_GeomFromText('POINT(43.7484256 -72.2989609)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456542', 'Bradley Hill', 'Summit', 'Vermont', 'VT', 'Franklin', 'Georgia Plains', 44.7138644, -73.1807342, ST_GeomFromText('POINT(44.7138644 -73.1807342)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456546', 'Bragg Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Hanover', 43.7156259, -72.3148136, ST_GeomFromText('POINT(43.7156259 -72.3148136)', 4326), 43.7233333, -72.3533333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456549', 'Braisted Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Crown Point', 43.9786683, -73.3984553, ST_GeomFromText('POINT(43.9786683 -73.3984553)', 4326), 43.9386694, -73.370676, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456550', 'Branch Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Jacksonville', 42.7575829, -72.7592609, ST_GeomFromText('POINT(42.7575829 -72.7592609)', 4326), 42.83, -72.7733333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456555', 'Brandon Swamp', 'Swamp', 'Vermont', 'VT', 'Rutland', 'Sudbury', 43.8192296, -73.1398354, ST_GeomFromText('POINT(43.8192296 -73.1398354)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456557', 'Breakneck Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Woodstock North', 43.6726532, -72.5440036, ST_GeomFromText('POINT(43.6726532 -72.5440036)', 4326), NULL, NULL, '1980-10-29', '2018-09-14', NULL, NULL, NULL),
  ('1456558', 'Breese Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.7141814, -73.216031, ST_GeomFromText('POINT(43.7141814 -73.216031)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL),
  ('1456559', 'Breeze Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.5716815, -72.4582981, ST_GeomFromText('POINT(43.5716815 -72.4582981)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL),
  ('1456560', 'Breezy Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Newport', 44.8952636, -72.1676656, ST_GeomFromText('POINT(44.8952636 -72.1676656)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456562', 'Brewster River', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Jeffersonville', 44.6494455, -72.8291301, ST_GeomFromText('POINT(44.6494455 -72.8291301)', 4326), 44.5911182, -72.7456061, '1980-10-29', '2019-11-12', NULL, NULL, NULL),
  ('1456563', 'Bridgeman Hill', 'Summit', 'Vermont', 'VT', 'Franklin', 'Sheldon Springs', 44.9890946, -72.9356811, ST_GeomFromText('POINT(44.9890946 -72.9356811)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456567', 'Bridgewater Hollow', 'Valley', 'Vermont', 'VT', 'Windsor', 'Delectable Mountain', 43.6462398, -72.6575286, ST_GeomFromText('POINT(43.6462398 -72.6575286)', 4326), 43.6716471, -72.6488539, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1456568', 'Brigham Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Essex Center', 44.5580956, -73.1009618, ST_GeomFromText('POINT(44.5580956 -73.1009618)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456569', 'Brighton Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Irasburg', 44.8067149, -72.2934383, ST_GeomFromText('POINT(44.8067149 -72.2934383)', 4326), 44.8038889, -72.3505556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456574', 'Broad Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.5864583, -72.6509307, ST_GeomFromText('POINT(43.5864583 -72.6509307)', 4326), 43.5183333, -72.6405556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456575', 'Broad Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Brattleboro', 42.8195266, -72.5450898, ST_GeomFromText('POINT(42.8195266 -72.5450898)', 4326), 42.8348042, -72.6620368, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456576', 'Broad Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Sharon', 43.7870126, -72.4839849, ST_GeomFromText('POINT(43.7870126 -72.4839849)', 4326), 43.7328459, -72.5759309, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456577', 'Broad Brook Mountain', 'Summit', 'Vermont', 'VT', 'Windsor', 'South Royalton', 43.765977, -72.5647691, ST_GeomFromText('POINT(43.765977 -72.5647691)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1456578', 'Brock Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'East Corinth', 44.0827408, -72.1427629, ST_GeomFromText('POINT(44.0827408 -72.1427629)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456579', 'Brocklebank Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Chelsea', 43.9351199, -72.4186216, ST_GeomFromText('POINT(43.9351199 -72.4186216)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1456583', 'Brookfield Gulf', 'Valley', 'Vermont', 'VT', 'Orange', 'Roxbury', 44.0150129, -72.6585705, ST_GeomFromText('POINT(44.0150129 -72.6585705)', 4326), 44.0575206, -72.6392298, '1980-10-29', '2018-08-01', 'Official', 'Board Decision', '1972-01-01'),
  ('1456593', 'Broughton Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Delectable Mountain', 43.7489559, -72.7231577, ST_GeomFromText('POINT(43.7489559 -72.7231577)', 4326), 43.7509001, -72.7445473, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456594', 'Brouillard Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Averill', 44.8814367, -71.6862023, ST_GeomFromText('POINT(44.8814367 -71.6862023)', 4326), 44.9030556, -71.6386111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456595', 'Brousseau Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Averill', 44.9678851, -71.7395551, ST_GeomFromText('POINT(44.9678851 -71.7395551)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456596', 'Brown Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.1847987, -73.2270524, ST_GeomFromText('POINT(43.1847987 -73.2270524)', 4326), 43.2, -73.2286111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456597', 'Brown Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Saint Johnsbury', 44.3786694, -72.1242635, ST_GeomFromText('POINT(44.3786694 -72.1242635)', 4326), 44.4292234, -72.1828771, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456598', 'Brown Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Heath', 42.7378607, -72.8542634, ST_GeomFromText('POINT(42.7378607 -72.8542634)', 4326), 42.7642492, -72.8589859, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456599', 'Brown Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'West Burke', 44.7313735, -71.9818553, ST_GeomFromText('POINT(44.7313735 -71.9818553)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1456602', 'Brownell Mountain', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Burlington', 44.4065232, -73.1364069, ST_GeomFromText('POINT(44.4065232 -73.1364069)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456603', 'Brownington Branch', 'Stream', 'Vermont', 'VT', 'Orleans', 'Orleans', 44.8169929, -72.1523232, ST_GeomFromText('POINT(44.8169929 -72.1523232)', 4326), 44.810049, -72.0409313, '1980-10-29', '2018-07-31', NULL, NULL, NULL),
  ('1456605', 'Brownington Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Newport', 44.8779315, -72.1475795, ST_GeomFromText('POINT(44.8779315 -72.1475795)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1456607', 'Browns Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'North Pownal', 42.8631339, -73.3409442, ST_GeomFromText('POINT(42.8631339 -73.3409442)', 4326), 42.8569444, -73.2530556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456609', 'Browns Ledges', 'Cliff', 'Vermont', 'VT', 'Orleans', 'Lowell', 44.829396, -72.455242, ST_GeomFromText('POINT(44.829396 -72.455242)', 4326), NULL, NULL, '1980-10-29', '2024-10-03', NULL, NULL, NULL),
  ('1456610', 'Browns Mountain', 'Summit', 'Vermont', 'VT', 'Addison', 'Huntington', 44.252735, -72.9959747, ST_GeomFromText('POINT(44.252735 -72.9959747)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456611', 'Browns Pond', 'Reservoir', 'Vermont', 'VT', 'Franklin', 'Bakersfield', 44.8098656, -72.7904215, ST_GeomFromText('POINT(44.8098656 -72.7904215)', 4326), NULL, NULL, '1980-10-29', '2019-11-26', NULL, NULL, NULL),
  ('1456612', 'Browns River', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Milton', 44.6600493, -73.0187483, ST_GeomFromText('POINT(44.6600493 -73.0187483)', 4326), 44.534496, -72.8317905, '1980-10-29', '2018-07-31', NULL, NULL, NULL),
  ('1456614', 'Bruce Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Crystal Lake', 44.64053, -72.1879634, ST_GeomFromText('POINT(44.64053 -72.1879634)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1456616', 'Brush Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Huntington', 44.298111, -72.9703985, ST_GeomFromText('POINT(44.298111 -72.9703985)', 4326), 44.3197222, -72.8972222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456617', 'Brush Creek', 'Stream', 'Vermont', 'VT', 'Franklin', 'East Alburg', 44.9953186, -73.1617952, ST_GeomFromText('POINT(44.9953186 -73.1617952)', 4326), 44.9830556, -73.1608333, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456618', 'Brush Hill', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Stowe', 44.4734875, -72.6567414, ST_GeomFromText('POINT(44.4734875 -72.6567414)', 4326), NULL, NULL, '1980-10-29', '2022-09-02', NULL, NULL, NULL),
  ('1456619', 'Bryant Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Stowe', 44.378389, -72.728451, ST_GeomFromText('POINT(44.378389 -72.728451)', 4326), 44.4133333, -72.6844444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456620', 'Buchanan Mountain', 'Summit', 'Vermont', 'VT', 'Orleans', 'Jay Peak', 44.8788698, -72.5094095, ST_GeomFromText('POINT(44.8788698 -72.5094095)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', 'Official', 'Board Decision', '1972-01-01'),
  ('1456621', 'Buck Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Island Pond', 44.8267156, -71.9689852, ST_GeomFromText('POINT(44.8267156 -71.9689852)', 4326), 44.7844444, -71.9633333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456622', 'Buck Hill', 'Summit', 'Vermont', 'VT', 'Franklin', 'Gilson Mountain', 44.705159, -72.9997128, ST_GeomFromText('POINT(44.705159 -72.9997128)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1456624', 'Buck Lake', 'Lake', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.4635016, -72.3975279, ST_GeomFromText('POINT(44.4635016 -72.3975279)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1456625', 'Buck Lake Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.4419998, -72.4170514, ST_GeomFromText('POINT(44.4419998 -72.4170514)', 4326), 44.4591667, -72.4, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456626', 'Buck Mountain', 'Summit', 'Vermont', 'VT', 'Franklin', 'Gilson Mountain', 44.7295607, -72.9736671, ST_GeomFromText('POINT(44.7295607 -72.9736671)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1456627', 'Buck Mountain', 'Summit', 'Vermont', 'VT', 'Addison', 'Vergennes East', 44.1258501, -73.2336677, ST_GeomFromText('POINT(44.1258501 -73.2336677)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456630', 'Buffalo Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Ludlow', 43.4734041, -72.6984303, ST_GeomFromText('POINT(43.4734041 -72.6984303)', 4326), 43.5047925, -72.6784301, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456631', 'Buker Hill', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Underhill', 44.6135664, -72.8882921, ST_GeomFromText('POINT(44.6135664 -72.8882921)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456632', 'Bull Creek', 'Stream', 'Vermont', 'VT', 'Windham', 'Saxtons River', 43.1467442, -72.551757, ST_GeomFromText('POINT(43.1467442 -72.551757)', 4326), 43.0914674, -72.6012027, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456633', 'Bull Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Saxtons River', 43.1775172, -72.5696224, ST_GeomFromText('POINT(43.1775172 -72.5696224)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456634', 'Bull Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.641617, -73.1785711, ST_GeomFromText('POINT(43.641617 -73.1785711)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1456635', 'Bull Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Delectable Mountain', 43.6867801, -72.6836241, ST_GeomFromText('POINT(43.6867801 -72.6836241)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1456636', 'Bull Moose Hill', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Sterling Mountain', 44.5459224, -72.6927224, ST_GeomFromText('POINT(44.5459224 -72.6927224)', 4326), NULL, NULL, '1980-10-29', '2023-07-21', NULL, NULL, NULL),
  ('1456637', 'Bull Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Maidstone Lake', 44.6720121, -71.7473606, ST_GeomFromText('POINT(44.6720121 -71.7473606)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456638', 'Bull Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Seneca Mountain', 44.7300025, -71.8388327, ST_GeomFromText('POINT(44.7300025 -71.8388327)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456639', 'Bull Run', 'Stream', 'Vermont', 'VT', 'Washington', 'Roxbury', 44.1181174, -72.6734428, ST_GeomFromText('POINT(44.1181174 -72.6734428)', 4326), 44.0663889, -72.7222222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456641', 'Bull Rush Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'Rouses Point', 44.9127775, -73.2507763, ST_GeomFromText('POINT(44.9127775 -73.2507763)', 4326), NULL, NULL, '1980-10-29', '2016-11-29', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456642', 'Bullfrog Hollow', 'Valley', 'Vermont', 'VT', 'Rutland', 'Wells', 43.4318021, -73.2383125, ST_GeomFromText('POINT(43.4318021 -73.2383125)', 4326), 43.4526326, -73.2239345, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456643', 'Bullhead Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Benson', 43.7347078, -73.3312123, ST_GeomFromText('POINT(43.7347078 -73.3312123)', 4326), NULL, NULL, '1980-10-29', '2020-01-15', NULL, NULL, NULL),
  ('1456647', 'Bumps Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Whitehall', 43.5856222, -73.3892794, ST_GeomFromText('POINT(43.5856222 -73.3892794)', 4326), 43.5919444, -73.4016667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456648', 'Bundy Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Walpole', 43.1242447, -72.4700887, ST_GeomFromText('POINT(43.1242447 -72.4700887)', 4326), 43.1202778, -72.4986111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456650', 'Bunker Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Quechee', 43.7082695, -72.4568689, ST_GeomFromText('POINT(43.7082695 -72.4568689)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1456652', 'Bunnell Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Monadnock Mountain', 44.9797687, -71.564531, ST_GeomFromText('POINT(44.9797687 -71.564531)', 4326), 44.9983333, -71.5794444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456653', 'Burbank Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Cabot', 44.4374224, -72.2694977, ST_GeomFromText('POINT(44.4374224 -72.2694977)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456654', 'Burbee Peak', 'Summit', 'Vermont', 'VT', 'Windsor', 'Delectable Mountain', 43.7044037, -72.7485404, ST_GeomFromText('POINT(43.7044037 -72.7485404)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1456655', 'Burbees Pond', 'Reservoir', 'Vermont', 'VT', 'Windham', 'Windham', 43.1527112, -72.7314204, ST_GeomFromText('POINT(43.1527112 -72.7314204)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', 'Official', 'Board Decision', '1960-01-01'),
  ('1456656', 'Burgess Branch', 'Stream', 'Vermont', 'VT', 'Orleans', 'Lowell', 44.8064368, -72.4601103, ST_GeomFromText('POINT(44.8064368 -72.4601103)', 4326), 44.7519931, -72.5253904, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456661', 'Burke Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Burke Mountain', 44.5706217, -71.8928728, ST_GeomFromText('POINT(44.5706217 -71.8928728)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456662', 'Burleson Pond', 'Lake', 'Vermont', 'VT', 'Franklin', 'Enosburg Falls', 44.9737775, -72.7964245, ST_GeomFromText('POINT(44.9737775 -72.7964245)', 4326), NULL, NULL, '1980-10-29', '2020-01-15', NULL, NULL, NULL),
  ('1456664', 'Burlington Bay', 'Bay', 'Vermont', 'VT', 'Chittenden', 'Burlington', 44.4747712, -73.23485, ST_GeomFromText('POINT(44.4747712 -73.23485)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456666', 'Burlington Point', 'Cape', 'Vermont', 'VT', 'Orleans', 'Caspian Lake', 44.5858857, -72.3156607, ST_GeomFromText('POINT(44.5858857 -72.3156607)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456668', 'Burnham Mountain', 'Summit', 'Vermont', 'VT', 'Orange', 'Groton', 44.1743583, -72.1909066, ST_GeomFromText('POINT(44.1743583 -72.1909066)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1456670', 'Burnside Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Stone Mountain', 44.5821967, -71.6447481, ST_GeomFromText('POINT(44.5821967 -71.6447481)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456671', 'Burnt Hill', 'Summit', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.2409603, -73.1491546, ST_GeomFromText('POINT(43.2409603 -73.1491546)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1456672', 'Burnt Mountain', 'Summit', 'Vermont', 'VT', 'Windsor', 'Killington Peak', 43.5416985, -72.7721462, ST_GeomFromText('POINT(43.5416985 -72.7721462)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1456673', 'Burnt Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Knox Mountain', 44.2030484, -72.3398454, ST_GeomFromText('POINT(44.2030484 -72.3398454)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456674', 'Burnt Mountain', 'Summit', 'Vermont', 'VT', 'Washington', 'Marshfield', 44.3356664, -72.3118071, ST_GeomFromText('POINT(44.3356664 -72.3118071)', 4326), NULL, NULL, '1980-10-29', '2023-11-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456675', 'Burnt Mountain', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Jeffersonville', 44.7497806, -72.769958, ST_GeomFromText('POINT(44.7497806 -72.769958)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1456676', 'Burnt Mountain', 'Summit', 'Vermont', 'VT', 'Franklin', 'Hazens Notch', 44.8413854, -72.5671268, ST_GeomFromText('POINT(44.8413854 -72.5671268)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456677', 'Burnt Mountain', 'Summit', 'Vermont', 'VT', 'Washington', 'Stowe', 44.3772216, -72.6616731, ST_GeomFromText('POINT(44.3772216 -72.6616731)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456678', 'Burnt Rock Mountain', 'Summit', 'Vermont', 'VT', 'Washington', 'Huntington', 44.2675478, -72.8959508, ST_GeomFromText('POINT(44.2675478 -72.8959508)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456679', 'Burr Pond', 'Reservoir', 'Vermont', 'VT', 'Rutland', 'Sudbury', 43.7655208, -73.1833834, ST_GeomFromText('POINT(43.7655208 -73.1833834)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL),
  ('1456682', 'Burroughs Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Saint Johnsbury', 44.4886672, -72.0687085, ST_GeomFromText('POINT(44.4886672 -72.0687085)', 4326), 44.5322767, -72.1414886, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456683', 'Burt Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Windham', 43.1682604, -72.6674184, ST_GeomFromText('POINT(43.1682604 -72.6674184)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456684', 'Burt Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Wells', 43.3814583, -73.197115, ST_GeomFromText('POINT(43.3814583 -73.197115)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1456685', 'Burton Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Heath', 42.725083, -72.8550967, ST_GeomFromText('POINT(42.725083 -72.8550967)', 4326), 42.7480556, -72.8691667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456686', 'Burton Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Irasburg', 44.7508054, -72.2642899, ST_GeomFromText('POINT(44.7508054 -72.2642899)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456688', 'Burton Island', 'Island', 'Vermont', 'VT', 'Franklin', 'Saint Albans Bay', 44.7744884, -73.2042996, ST_GeomFromText('POINT(44.7744884 -73.2042996)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456690', 'Burying Yard Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'Rouses Point', 44.9020767, -73.3204989, ST_GeomFromText('POINT(44.9020767 -73.3204989)', 4326), NULL, NULL, '1980-10-29', '2016-12-02', NULL, NULL, NULL),
  ('1456692', 'Butler Island', 'Island', 'Vermont', 'VT', 'Grand Isle', 'Saint Albans Bay', 44.834941, -73.2256629, ST_GeomFromText('POINT(44.834941 -73.2256629)', 4326), NULL, NULL, '1980-10-29', '2017-02-03', NULL, NULL, NULL),
  ('1456693', 'Butler Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Proctor', 43.6944444, -73.0800051, ST_GeomFromText('POINT(43.6944444 -73.0800051)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL),
  ('1456694', 'Butterfield Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Springfield', 43.3643781, -72.4884032, ST_GeomFromText('POINT(43.3643781 -72.4884032)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456695', 'Butterfield Mountain', 'Summit', 'Vermont', 'VT', 'Orange', 'Knox Mountain', 44.1833248, -72.3393424, ST_GeomFromText('POINT(44.1833248 -72.3393424)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', 'Official', 'Board Decision', '1980-01-01'),
  ('1456696', 'Buttermilk Falls', 'Falls', 'Vermont', 'VT', 'Windsor', 'Ludlow', 43.4364603, -72.7278752, ST_GeomFromText('POINT(43.4364603 -72.7278752)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456698', 'Butternut Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Andover', 43.2918381, -72.6454346, ST_GeomFromText('POINT(43.2918381 -72.6454346)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456699', 'Butternut Mountain', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Johnson', 44.689714, -72.6534122, ST_GeomFromText('POINT(44.689714 -72.6534122)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456700', 'Butternut Ridge', 'Ridge', 'Vermont', 'VT', 'Franklin', 'Bakersfield', 44.8062131, -72.7783526, ST_GeomFromText('POINT(44.8062131 -72.7783526)', 4326), NULL, NULL, '1980-10-29', '2017-01-31', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456702', 'Button Bay', 'Bay', 'Vermont', 'VT', 'Addison', 'Vergennes West', 44.1761646, -73.3601254, ST_GeomFromText('POINT(44.1761646 -73.3601254)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456704', 'Button Island', 'Island', 'Vermont', 'VT', 'Addison', 'Vergennes West', 44.1764423, -73.36957, ST_GeomFromText('POINT(44.1764423 -73.36957)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456705', 'Buybee Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'North Troy', 44.9394904, -72.4012201, ST_GeomFromText('POINT(44.9394904 -72.4012201)', 4326), 44.9227778, -72.4213889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456707', 'Buzzell Gap', 'Gap', 'Vermont', 'VT', 'Essex', 'Stone Mountain', 44.5933876, -71.7198123, ST_GeomFromText('POINT(44.5933876 -71.7198123)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456708', 'Buzzell Hill', 'Summit', 'Vermont', 'VT', 'Essex', 'Gallup Mills', 44.5780833, -71.7690627, ST_GeomFromText('POINT(44.5780833 -71.7690627)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456709', 'Buzzell Hill', 'Summit', 'Vermont', 'VT', 'Essex', 'Tinkerville', 44.8135705, -71.6009003, ST_GeomFromText('POINT(44.8135705 -71.6009003)', 4326), NULL, NULL, '2002-08-27', '2022-08-31', NULL, NULL, NULL),
  ('1456710', 'Cobbler Hill', 'Summit', 'Vermont', 'VT', 'Franklin', 'Gilson Mountain', 44.7417067, -72.9277682, ST_GeomFromText('POINT(44.7417067 -72.9277682)', 4326), NULL, NULL, '1980-10-29', '2022-09-05', NULL, NULL, NULL),
  ('1456713', 'Cady Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.5414594, -72.4753698, ST_GeomFromText('POINT(43.5414594 -72.4753698)', 4326), 43.557848, -72.5092595, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456714', 'Cady Hill', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Stowe', 44.4639337, -72.7034503, ST_GeomFromText('POINT(44.4639337 -72.7034503)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1456717', 'Calavale Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Hazens Notch', 44.7622649, -72.6174276, ST_GeomFromText('POINT(44.7622649 -72.6174276)', 4326), 44.8028385, -72.5606077, '1980-10-29', '2019-11-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456724', 'Camels Hump', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Huntington', 44.3194911, -72.8863369, ST_GeomFromText('POINT(44.3194911 -72.8863369)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456728', 'Camp Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Bethel', 43.8539552, -72.6462134, ST_GeomFromText('POINT(43.8539552 -72.6462134)', 4326), 43.8625, -72.7447222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456731', 'Camp Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Springfield', 43.3447372, -72.4541254, ST_GeomFromText('POINT(43.3447372 -72.4541254)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1456759', 'Campmeeting Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.7672649, -73.2984652, ST_GeomFromText('POINT(44.7672649 -73.2984652)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456761', 'Canaan Hill', 'Summit', 'Vermont', 'VT', 'Essex', 'Averill', 44.9743407, -71.6260287, ST_GeomFromText('POINT(44.9743407 -71.6260287)', 4326), NULL, NULL, '1980-10-29', '2023-07-21', NULL, NULL, NULL),
  ('1456762', 'Canoe Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Putney', 42.9461922, -72.5309229, ST_GeomFromText('POINT(42.9461922 -72.5309229)', 4326), 42.995, -72.5869444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456763', 'Cap Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Underhill', 44.5391906, -72.9590595, ST_GeomFromText('POINT(44.5391906 -72.9590595)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1456764', 'Caper Hill', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Sterling Mountain', 44.5837786, -72.6957375, ST_GeomFromText('POINT(44.5837786 -72.6957375)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1456765', 'Capon Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Monadnock Mountain', 44.9378247, -71.5206405, ST_GeomFromText('POINT(44.9378247 -71.5206405)', 4326), 44.9597222, -71.5647222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456767', 'Cargill Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'West Charleston', 44.9289314, -72.0237887, ST_GeomFromText('POINT(44.9289314 -72.0237887)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456768', 'Carlton Reservoir', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Woodstock South', 43.5992265, -72.5420948, ST_GeomFromText('POINT(43.5992265 -72.5420948)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1456769', 'Carman Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Highgate Center', 44.9867083, -73.0915172, ST_GeomFromText('POINT(44.9867083 -73.0915172)', 4326), 44.9566667, -73.0805556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456770', 'Lake Carmi', 'Reservoir', 'Vermont', 'VT', 'Franklin', 'Sheldon Springs', 44.972329, -72.8755402, ST_GeomFromText('POINT(44.972329 -72.8755402)', 4326), NULL, NULL, '1980-10-29', '2020-01-15', NULL, NULL, NULL),
  ('1456771', 'Carpenter Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Huntington', 44.2831114, -72.9656758, ST_GeomFromText('POINT(44.2831114 -72.9656758)', 4326), 44.2608333, -72.9958333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456773', 'Carpenter Point', 'Cape', 'Vermont', 'VT', 'Windsor', 'Ludlow', 43.4470157, -72.7012079, ST_GeomFromText('POINT(43.4470157 -72.7012079)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456774', 'Carr Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Plainfield', 44.3608907, -72.4356614, ST_GeomFromText('POINT(44.3608907 -72.4356614)', 4326), 44.3741667, -72.4363889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456775', 'Carr Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Miles Pond', 44.4439471, -71.7787013, ST_GeomFromText('POINT(44.4439471 -71.7787013)', 4326), 44.5056124, -71.7653682, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456776', 'Carry Bay', 'Bay', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.8389308, -73.2801312, ST_GeomFromText('POINT(44.8389308 -73.2801312)', 4326), NULL, NULL, '1980-10-29', NULL, 'Official', 'Board Decision', '1967-01-01'),
  ('1456779', 'Carter Hill', 'Summit', 'Vermont', 'VT', 'Franklin', 'Highgate Center', 44.9450641, -73.064639, ST_GeomFromText('POINT(44.9450641 -73.064639)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1456783', 'Cary Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Saint Johnsbury', 44.4992223, -72.104543, ST_GeomFromText('POINT(44.4992223 -72.104543)', 4326), 44.498944, -72.1648226, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456784', 'Caspian Lake', 'Reservoir', 'Vermont', 'VT', 'Orleans', 'Caspian Lake', 44.5855639, -72.3093514, ST_GeomFromText('POINT(44.5855639 -72.3093514)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1456787', 'Castleton River', 'Stream', 'Vermont', 'VT', 'Rutland', 'Thorn Hill', 43.5936777, -73.2926113, ST_GeomFromText('POINT(43.5936777 -73.2926113)', 4326), 43.7036765, -73.1028881, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456789', 'Catamount Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Mount Worcester', 44.4239444, -72.5406665, ST_GeomFromText('POINT(44.4239444 -72.5406665)', 4326), 44.4575, -72.5763889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456791', 'Cate Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Craftsbury', 44.6412173, -72.3240565, ST_GeomFromText('POINT(44.6412173 -72.3240565)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456792', 'Catfish Bay', 'Bay', 'Vermont', 'VT', 'Addison', 'Ticonderoga', 43.8275603, -73.3859517, ST_GeomFromText('POINT(43.8275603 -73.3859517)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456793', 'Cave Island', 'Island', 'Vermont', 'VT', 'Chittenden', 'Colchester', 44.5700472, -73.2281848, ST_GeomFromText('POINT(44.5700472 -73.2281848)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456796', 'Cavendish Gorge', 'Valley', 'Vermont', 'VT', 'Windsor', 'Cavendish', 43.3845587, -72.5982649, ST_GeomFromText('POINT(43.3845587 -72.5982649)', 4326), 43.3797061, -72.6006812, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1456800', 'Cedar Island', 'Island', 'Vermont', 'VT', 'Chittenden', 'Charlotte', 44.2861632, -73.2912368, ST_GeomFromText('POINT(44.2861632 -73.2912368)', 4326), NULL, NULL, '1980-10-29', '2014-05-23', NULL, NULL, NULL),
  ('1456801', 'Cedar Island', 'Island', 'Vermont', 'VT', 'Grand Isle', 'South Hero', 44.6592118, -73.254019, ST_GeomFromText('POINT(44.6592118 -73.254019)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456802', 'Cedar Lake', 'Lake', 'Vermont', 'VT', 'Addison', 'Mount Philo', 44.250392, -73.1333857, ST_GeomFromText('POINT(44.250392 -73.1333857)', 4326), NULL, NULL, '1980-10-29', '2020-01-15', 'Official', 'Board Decision', '1964-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456803', 'Cedar Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.6602527, -73.2106856, ST_GeomFromText('POINT(43.6602527 -73.2106856)', 4326), NULL, NULL, '1980-10-29', '2023-07-21', NULL, NULL, NULL),
  ('1456804', 'Cedar Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Putnam', 43.7033877, -73.3845586, ST_GeomFromText('POINT(43.7033877 -73.3845586)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1456805', 'Cedar Swamp', 'Swamp', 'Vermont', 'VT', 'Rutland', 'Thorn Hill', 43.580067, -73.275944, ST_GeomFromText('POINT(43.580067 -73.275944)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456806', 'Cedar Swamp', 'Swamp', 'Vermont', 'VT', 'Addison', 'Bridport', 43.9072815, -73.3262298, ST_GeomFromText('POINT(43.9072815 -73.3262298)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456807', 'Cedar Swamp', 'Swamp', 'Vermont', 'VT', 'Addison', 'Cornwall', 43.9286716, -73.1867829, ST_GeomFromText('POINT(43.9286716 -73.1867829)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456808', 'Cedar Swamp', 'Swamp', 'Vermont', 'VT', 'Addison', 'Vergennes East', 44.1422791, -73.1403977, ST_GeomFromText('POINT(44.1422791 -73.1403977)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456809', 'Cemetery Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Caspian Lake', 44.5900108, -72.3245231, ST_GeomFromText('POINT(44.5900108 -72.3245231)', 4326), 44.5790538, -72.3380459, '1980-10-29', '2019-11-12', NULL, NULL, NULL),
  ('1456810', 'Center Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'West Topsham', 44.0175662, -72.2670392, ST_GeomFromText('POINT(44.0175662 -72.2670392)', 4326), 44.0444444, -72.2847222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456820', 'Center Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'South Strafford', 43.8615257, -72.3103282, ST_GeomFromText('POINT(43.8615257 -72.3103282)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456821', 'Center Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'West Burke', 44.7133929, -71.9202095, ST_GeomFromText('POINT(44.7133929 -71.9202095)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456828', 'Centerville Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Morrisville', 44.5869961, -72.619561, ST_GeomFromText('POINT(44.5869961 -72.619561)', 4326), 44.6467174, -72.5570584, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456829', 'Central Mountain', 'Summit', 'Vermont', 'VT', 'Windham', 'Governors Mountain', 42.8726671, -72.743877, ST_GeomFromText('POINT(42.8726671 -72.743877)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456836', 'Chamberlain Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Lyndonville', 44.597831, -72.1095436, ST_GeomFromText('POINT(44.597831 -72.1095436)', 4326), 44.5844444, -72.1230556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456837', 'Chamberlain Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Essex Junction', 44.410599, -73.0217896, ST_GeomFromText('POINT(44.410599 -73.0217896)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456838', 'Chamberlain Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Irasburg', 44.7675737, -72.3033087, ST_GeomFromText('POINT(44.7675737 -72.3033087)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1456839', 'Chamberlin Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Lower Waterford', 44.3436007, -71.9598794, ST_GeomFromText('POINT(44.3436007 -71.9598794)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1456842', 'Chandler Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Lower Waterford', 44.3397823, -71.9512036, ST_GeomFromText('POINT(44.3397823 -71.9512036)', 4326), 44.3934898, -71.9550962, '1980-10-29', '2021-02-03', NULL, NULL, NULL),
  ('1456843', 'Chandler Meadow Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Chester', 43.3336848, -72.5642584, ST_GeomFromText('POINT(43.3336848 -72.5642584)', 4326), 43.3625, -72.59, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456844', 'Chandler Pond', 'Reservoir', 'Vermont', 'VT', 'Caledonia', 'Lyndonville', 44.5344783, -72.0955962, ST_GeomFromText('POINT(44.5344783 -72.0955962)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1456846', 'Chapels Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Montpelier', 44.3156433, -72.5190354, ST_GeomFromText('POINT(44.3156433 -72.5190354)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456847', 'Chapman Bay', 'Bay', 'Vermont', 'VT', 'Grand Isle', 'East Alburg OE N', 45.0125402, -73.2023513, ST_GeomFromText('POINT(45.0125402 -73.2023513)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456848', 'Charcoal Creek', 'Stream', 'Vermont', 'VT', 'Franklin', 'East Alburg', 44.992263, -73.1673509, ST_GeomFromText('POINT(44.992263 -73.1673509)', 4326), 44.9486111, -73.1666667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456849', 'Charles Brown Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Hanover', 43.7261813, -72.3170359, ST_GeomFromText('POINT(43.7261813 -72.3170359)', 4326), 43.7675695, -72.3553704, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456850', 'Charles Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Bernardston', 42.7465774, -72.527544, ST_GeomFromText('POINT(42.7465774 -72.527544)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456853', 'Chase Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Walpole', 43.0164691, -72.4542549, ST_GeomFromText('POINT(43.0164691 -72.4542549)', 4326), 43.0380556, -72.4936111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456854', 'Chase Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Andover', 43.3359068, -72.650372, ST_GeomFromText('POINT(43.3359068 -72.650372)', 4326), 43.3141667, -72.6838889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456855', 'Chase Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'East Corinth', 44.0167329, -72.1728698, ST_GeomFromText('POINT(44.0167329 -72.1728698)', 4326), 44.0463889, -72.1658333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456856', 'Chase Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Northfield', 44.2075601, -72.6351104, ST_GeomFromText('POINT(44.2075601 -72.6351104)', 4326), 44.22, -72.6833333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456857', 'Chase Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Joes Pond', 44.4392228, -72.2237118, ST_GeomFromText('POINT(44.4392228 -72.2237118)', 4326), 44.4477778, -72.1872222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456859', 'Chase Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Governors Mountain', 42.8249475, -72.7085293, ST_GeomFromText('POINT(42.8249475 -72.7085293)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456860', 'Chase Mountain', 'Summit', 'Vermont', 'VT', 'Washington', 'Northfield', 44.2244796, -72.6830168, ST_GeomFromText('POINT(44.2244796 -72.6830168)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456861', 'Chases Mountain', 'Summit', 'Vermont', 'VT', 'Washington', 'Middlesex', 44.3450325, -72.6716109, ST_GeomFromText('POINT(44.3450325 -72.6716109)', 4326), NULL, NULL, '1980-10-29', '2023-11-17', NULL, NULL, NULL),
  ('1456863', 'Checkerberry Ledge', 'Bench', 'Vermont', 'VT', 'Lamoille', 'Bakersfield', 44.7656041, -72.7642945, ST_GeomFromText('POINT(44.7656041 -72.7642945)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456868', 'Cheney Point', 'Cape', 'Vermont', 'VT', 'Franklin', 'Saint Albans Bay', 44.8713657, -73.1821035, ST_GeomFromText('POINT(44.8713657 -73.1821035)', 4326), NULL, NULL, '1980-10-29', '2016-12-13', NULL, NULL, NULL),
  ('1456870', 'Cherry Knoll', 'Summit', 'Vermont', 'VT', 'Rutland', 'Killington Peak', 43.5977837, -72.7676542, ST_GeomFromText('POINT(43.5977837 -72.7676542)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1456874', 'Chester Reservoir', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Andover', 43.2818751, -72.636508, ST_GeomFromText('POINT(43.2818751 -72.636508)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1456875', 'Chesterfield Valley', 'Valley', 'Vermont', 'VT', 'Caledonia', 'Concord', 44.4482767, -71.9422137, ST_GeomFromText('POINT(44.4482767 -71.9422137)', 4326), 44.4862591, -71.9645046, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1456876', 'Chestnut Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Springfield', 43.2932955, -72.4411538, ST_GeomFromText('POINT(43.2932955 -72.4411538)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456877', 'Chilcoot Pass', 'Gap', 'Vermont', 'VT', 'Lamoille', 'Mount Mansfield', 44.5686627, -72.7537335, ST_GeomFromText('POINT(44.5686627 -72.7537335)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456878', 'Childs Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'South Strafford', 43.8547821, -72.2809247, ST_GeomFromText('POINT(43.8547821 -72.2809247)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456879', 'Childs Pond', 'Lake', 'Vermont', 'VT', 'Orange', 'Lyme', 43.8191694, -72.1908004, ST_GeomFromText('POINT(43.8191694 -72.1908004)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1456881', 'Chipman Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Middlebury', 44.0256983, -73.1616532, ST_GeomFromText('POINT(44.0256983 -73.1616532)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456882', 'Chipman Lake', 'Lake', 'Vermont', 'VT', 'Rutland', 'Middletown Springs', 43.4074908, -73.0302824, ST_GeomFromText('POINT(43.4074908 -73.0302824)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', 'Official', 'Board Decision', '1971-01-01'),
  ('1456883', 'Chipman Point', 'Cape', 'Vermont', 'VT', 'Addison', 'Ticonderoga', 43.8006165, -73.3751176, ST_GeomFromText('POINT(43.8006165 -73.3751176)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456885', 'Choate Pond', 'Lake', 'Vermont', 'VT', 'Addison', 'Orwell', 43.7789159, -73.2686275, ST_GeomFromText('POINT(43.7789159 -73.2686275)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL),
  ('1456887', 'Christian Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Bethel', 43.8479046, -72.631355, ST_GeomFromText('POINT(43.8479046 -72.631355)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1456890', 'Church Hill', 'Summit', 'Vermont', 'VT', 'Franklin', 'Gilson Mountain', 44.6913499, -72.8876985, ST_GeomFromText('POINT(44.6913499 -72.8876985)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456892', 'City Bay', 'Bay', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.8183754, -73.2848536, ST_GeomFromText('POINT(44.8183754 -73.2848536)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456895', 'Clarendon Gorge', 'Valley', 'Vermont', 'VT', 'Rutland', 'Rutland', 43.5193857, -72.9304725, ST_GeomFromText('POINT(43.5193857 -72.9304725)', 4326), 43.520242, -72.9254408, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1456896', 'Clarendon River', 'Stream', 'Vermont', 'VT', 'Rutland', 'West Rutland', 43.605068, -73.0176074, ST_GeomFromText('POINT(43.605068 -73.0176074)', 4326), 43.4897922, -73.0270501, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456898', 'Clark Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Sutton', 44.655052, -72.0781541, ST_GeomFromText('POINT(44.655052 -72.0781541)', 4326), 44.6822222, -72.08, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456900', 'Clark Hatch Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Groton', 44.2039511, -72.1806504, ST_GeomFromText('POINT(44.2039511 -72.1806504)', 4326), 44.2361111, -72.1727778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456901', 'Clark Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Heath', 42.7393296, -72.7947755, ST_GeomFromText('POINT(42.7393296 -72.7947755)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456902', 'Clark Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'West Rutland', 43.5761705, -73.0662174, ST_GeomFromText('POINT(43.5761705 -73.0662174)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456903', 'Clark Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Brookfield', 44.0957186, -72.5611233, ST_GeomFromText('POINT(44.0957186 -72.5611233)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456904', 'Clark Hollow', 'Valley', 'Vermont', 'VT', 'Rutland', 'Poultney', 43.5233685, -73.171082, ST_GeomFromText('POINT(43.5233685 -73.171082)', 4326), 43.5399969, -73.1367723, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1456905', 'Clark Hollow', 'Valley', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.2354183, -73.2039206, ST_GeomFromText('POINT(43.2354183 -73.2039206)', 4326), 43.2467703, -73.170217, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1456906', 'Clark Hollow Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Poultney', 43.5231244, -73.1737192, ST_GeomFromText('POINT(43.5231244 -73.1737192)', 4326), 43.5402778, -73.1352778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456907', 'Clark Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Middletown Springs', 43.4350027, -73.01709, ST_GeomFromText('POINT(43.4350027 -73.01709)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1456908', 'Clark Point', 'Cape', 'Vermont', 'VT', 'Franklin', 'East Alburg', 44.9307078, -73.2220045, ST_GeomFromText('POINT(44.9307078 -73.2220045)', 4326), NULL, NULL, '1980-10-29', '2017-01-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456909', 'Clarks Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Crystal Lake', 44.6443629, -72.204007, ST_GeomFromText('POINT(44.6443629 -72.204007)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1456910', 'Clay Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Monadnock Mountain', 44.9692133, -71.584254, ST_GeomFromText('POINT(44.9692133 -71.584254)', 4326), 44.9491667, -71.62, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456911', 'Clay Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Underhill', 44.5086625, -72.8926244, ST_GeomFromText('POINT(44.5086625 -72.8926244)', 4326), 44.4794969, -72.8384557, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456912', 'Clay Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'North Hartland', 43.6000618, -72.3603682, ST_GeomFromText('POINT(43.6000618 -72.3603682)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL),
  ('1456913', 'Clay Hill Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Spectacle Pond', 44.8314376, -71.8356499, ST_GeomFromText('POINT(44.8314376 -71.8356499)', 4326), 44.8602778, -71.8530556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456914', 'Clay Point', 'Cape', 'Vermont', 'VT', 'Chittenden', 'Colchester', 44.5925468, -73.2309629, ST_GeomFromText('POINT(44.5925468 -73.2309629)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456915', 'Clear Pond', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Morrisville', 44.6164681, -72.5028457, ST_GeomFromText('POINT(44.6164681 -72.5028457)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1456917', 'Cleveland Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Bethel', 43.814789, -72.6378789, ST_GeomFromText('POINT(43.814789 -72.6378789)', 4326), 43.783123, -72.5973215, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456919', 'Cleveland Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Wells', 43.390619, -73.1931616, ST_GeomFromText('POINT(43.390619 -73.1931616)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456920', 'Cleveland Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Newport Center', 44.8789007, -72.2812707, ST_GeomFromText('POINT(44.8789007 -72.2812707)', 4326), NULL, NULL, '1980-10-29', '2023-11-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456921', 'Cloak Island', 'Island', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.8350872, -73.329665, ST_GeomFromText('POINT(44.8350872 -73.329665)', 4326), NULL, NULL, '1980-10-29', '2017-02-03', NULL, NULL, NULL),
  ('1456923', 'Cloud Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Barnet', 44.3064492, -72.0767612, ST_GeomFromText('POINT(44.3064492 -72.0767612)', 4326), 44.2913889, -72.1052778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456924', 'Cloudland Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Woodstock North', 43.6539581, -72.5303727, ST_GeomFromText('POINT(43.6539581 -72.5303727)', 4326), 43.693958, -72.4912057, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456925', 'Lake of the Clouds', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Mount Mansfield', 44.548592, -72.8107359, ST_GeomFromText('POINT(44.548592 -72.8107359)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1456926', 'Clough Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Tinkerville', 44.8247705, -71.5678648, ST_GeomFromText('POINT(44.8247705 -71.5678648)', 4326), 44.8800478, -71.6320337, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456928', 'Cloyes Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Bridport', 43.9450348, -73.3081958, ST_GeomFromText('POINT(43.9450348 -73.3081958)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456929', 'Clyde Pond', 'Reservoir', 'Vermont', 'VT', 'Orleans', 'Newport', 44.935227, -72.1718512, ST_GeomFromText('POINT(44.935227 -72.1718512)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1456930', 'Clyde River', 'Stream', 'Vermont', 'VT', 'Orleans', 'Newport', 44.9386578, -72.2045465, ST_GeomFromText('POINT(44.9386578 -72.2045465)', 4326), 44.812866, -71.880352, '1980-10-29', '2020-04-03', NULL, NULL, NULL),
  ('1456931', 'Coates Island', 'Island', 'Vermont', 'VT', 'Chittenden', 'Colchester', 44.5567143, -73.2204069, ST_GeomFromText('POINT(44.5567143 -73.2204069)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456932', 'Coaticook River', 'Stream', 'Quebec', 'QU', 'Quebec', NULL, 45.31377, -71.89878, ST_GeomFromText('POINT(45.31377 -71.89878)', 4326), 44.95339, -71.85026, '2000-01-01', '2014-08-06', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456933', 'Cobb Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Walpole', 43.0950786, -72.4392549, ST_GeomFromText('POINT(43.0950786 -72.4392549)', 4326), 43.0911111, -72.4469444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456934', 'Cobb Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Huntington', 44.2700561, -72.9648422, ST_GeomFromText('POINT(44.2700561 -72.9648422)', 4326), 44.2738889, -72.8986111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456935', 'Cobb Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Newport', 44.8961584, -72.1901018, ST_GeomFromText('POINT(44.8961584 -72.1901018)', 4326), 44.9125, -72.1361111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456936', 'Cobb Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.5615595, -72.4370604, ST_GeomFromText('POINT(43.5615595 -72.4370604)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL),
  ('1456937', 'Cobb Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Delectable Mountain', 43.62756, -72.651208, ST_GeomFromText('POINT(43.62756 -72.651208)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1456938', 'Cobb Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Newport', 44.9130528, -72.137048, ST_GeomFromText('POINT(44.9130528 -72.137048)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1456939', 'Mount Cobb', 'Summit', 'Vermont', 'VT', 'Washington', 'Middlesex', 44.3011595, -72.7400296, ST_GeomFromText('POINT(44.3011595 -72.7400296)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456940', 'Cobble Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Bellows Falls', 43.2403879, -72.4910453, ST_GeomFromText('POINT(43.2403879 -72.4910453)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1456941', 'Cobble Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Lyme', 43.8062031, -72.1991289, ST_GeomFromText('POINT(43.8062031 -72.1991289)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1456942', 'Cobble Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Barre East', 44.1762417, -72.4439259, ST_GeomFromText('POINT(44.1762417 -72.4439259)', 4326), NULL, NULL, '1980-10-29', '2023-11-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456943', 'Cobble Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Colchester', 44.5987626, -73.134616, ST_GeomFromText('POINT(44.5987626 -73.134616)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456945', 'Cobble Knoll', 'Summit', 'Vermont', 'VT', 'Rutland', 'Benson', 43.6797002, -73.2688069, ST_GeomFromText('POINT(43.6797002 -73.2688069)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456946', 'Coburn Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'North Troy', 44.9014355, -72.4017755, ST_GeomFromText('POINT(44.9014355 -72.4017755)', 4326), 44.9211111, -72.4488889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456947', 'Coburn Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Bellows Falls', 43.213129, -72.4629574, ST_GeomFromText('POINT(43.213129 -72.4629574)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1456948', 'Coburn Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Newport Center', 44.9417236, -72.2692277, ST_GeomFromText('POINT(44.9417236 -72.2692277)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456949', 'Coburn Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Barnet', 44.2532144, -72.085987, ST_GeomFromText('POINT(44.2532144 -72.085987)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1456950', 'Coche Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'West Charleston', 44.9178251, -72.0892658, ST_GeomFromText('POINT(44.9178251 -72.0892658)', 4326), 44.9394444, -72.0438889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456951', 'Codding Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Jeffersonville', 44.7172714, -72.7501254, ST_GeomFromText('POINT(44.7172714 -72.7501254)', 4326), 44.7206048, -72.7015115, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456953', 'Coggman Creek', 'Stream', 'Vermont', 'VT', 'Rutland', 'Putnam', 43.6250655, -73.3706689, ST_GeomFromText('POINT(43.6250655 -73.3706689)', 4326), 43.7045078, -73.3392812, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456954', 'Coggman Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Whitehall', 43.6210162, -73.3750238, ST_GeomFromText('POINT(43.6210162 -73.3750238)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456955', 'Coits Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Cabot', 44.4477907, -72.3280901, ST_GeomFromText('POINT(44.4477907 -72.3280901)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1456956', 'Colby Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Knox Mountain', 44.2108856, -72.3684327, ST_GeomFromText('POINT(44.2108856 -72.3684327)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456957', 'Colby Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Stone Mountain', 44.5085648, -71.6492766, ST_GeomFromText('POINT(44.5085648 -71.6492766)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456958', 'Colby Pond', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Ludlow', 43.4711945, -72.665689, ST_GeomFromText('POINT(43.4711945 -72.665689)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1456960', 'Colchester Point', 'Cape', 'Vermont', 'VT', 'Chittenden', 'Colchester Point', 44.5528249, -73.3109638, ST_GeomFromText('POINT(44.5528249 -73.3109638)', 4326), NULL, NULL, '1980-10-29', '2018-05-01', NULL, NULL, NULL),
  ('1456962', 'Colchester Pond', 'Lake', 'Vermont', 'VT', 'Chittenden', 'Essex Center', 44.5535093, -73.1196755, ST_GeomFromText('POINT(44.5535093 -73.1196755)', 4326), NULL, NULL, '1980-10-29', '2020-01-15', NULL, NULL, NULL),
  ('1456965', 'Cold Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Roxbury', 44.0139531, -72.6567728, ST_GeomFromText('POINT(44.0139531 -72.6567728)', 4326), 44.0166667, -72.7041667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456966', 'Cold Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Island Pond', 44.8100491, -71.9217623, ST_GeomFromText('POINT(44.8100491 -71.9217623)', 4326), 44.7677778, -71.9691667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456967', 'Cold Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.6234021, -72.6792654, ST_GeomFromText('POINT(43.6234021 -72.6792654)', 4326), 43.6420129, -72.685377, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456968', 'Cold Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Plainfield', 44.3108921, -72.3923255, ST_GeomFromText('POINT(44.3108921 -72.3923255)', 4326), 44.3092257, -72.3567686, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456969', 'Cold Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Gallup Mills', 44.5133897, -71.8234251, ST_GeomFromText('POINT(44.5133897 -71.8234251)', 4326), 44.4856128, -71.80648, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456970', 'Cold Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Lyndonville', 44.5319783, -72.0592827, ST_GeomFromText('POINT(44.5319783 -72.0592827)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1456971', 'Cold Hill Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Lyndonville', 44.529222, -72.0425969, ST_GeomFromText('POINT(44.529222 -72.0425969)', 4326), 44.5188889, -72.0672222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456972', 'Cold Hollow Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Cold Hollow Mountains', 44.8417142, -72.7276293, ST_GeomFromText('POINT(44.8417142 -72.7276293)', 4326), 44.8005556, -72.6772222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456973', 'Cold Hollow Mountains', 'Range', 'Vermont', 'VT', 'Lamoille', 'Cold Hollow Mountains', 44.7875823, -72.6890807, ST_GeomFromText('POINT(44.7875823 -72.6890807)', 4326), NULL, NULL, '1980-10-29', '2024-10-04', NULL, NULL, NULL),
  ('1456974', 'Cold River', 'Stream', 'Vermont', 'VT', 'Rutland', 'Rutland', 43.5731243, -72.9864951, ST_GeomFromText('POINT(43.5731243 -72.9864951)', 4326), 43.5417362, -72.8114899, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456975', 'Cold Spring Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Barre West', 44.1425621, -72.5284382, ST_GeomFromText('POINT(44.1425621 -72.5284382)', 4326), 44.1328404, -72.4870477, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456977', 'Coldwater Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Marshfield', 44.28256, -72.2670426, ST_GeomFromText('POINT(44.28256 -72.2670426)', 4326), 44.3152778, -72.2516667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456978', 'Cole Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Pawlet', 43.3517467, -73.2289954, ST_GeomFromText('POINT(43.3517467 -73.2289954)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1456979', 'Cole Hill', 'Summit', 'Vermont', 'VT', 'Essex', 'Averill', 44.9988174, -71.6721297, ST_GeomFromText('POINT(44.9988174 -71.6721297)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456981', 'Coleman Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Ludlow', 43.4222939, -72.7089856, ST_GeomFromText('POINT(43.4222939 -72.7089856)', 4326), 43.4161111, -72.7413889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456983', 'Coles Pond', 'Reservoir', 'Vermont', 'VT', 'Caledonia', 'Stannard', 44.5086614, -72.2156957, ST_GeomFromText('POINT(44.5086614 -72.2156957)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1456984', 'Colley Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Bellows Falls', 43.1627247, -72.4698776, ST_GeomFromText('POINT(43.1627247 -72.4698776)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1456987', 'Collins Pond', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Morrisville', 44.62154, -72.5043163, ST_GeomFromText('POINT(44.62154 -72.5043163)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1456988', 'Colton Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Vershire', 43.9526812, -72.3669766, ST_GeomFromText('POINT(43.9526812 -72.3669766)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1456989', 'Commissary Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Bellows Falls', 43.2139651, -72.4400886, ST_GeomFromText('POINT(43.2139651 -72.4400886)', 4326), 43.2422222, -72.4775, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456990', 'Comtois Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Killington Peak', 43.5031168, -72.8476001, ST_GeomFromText('POINT(43.5031168 -72.8476001)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1456991', 'Conant Swamp', 'Swamp', 'Vermont', 'VT', 'Orange', 'Lyme', 43.825939, -72.1973686, ST_GeomFromText('POINT(43.825939 -72.1973686)', 4326), NULL, NULL, '1980-10-29', '2011-10-13', NULL, NULL, NULL),
  ('1456994', 'Cones Point', 'Cape', 'Vermont', 'VT', 'Rutland', 'Wells', 43.4642369, -73.2098302, ST_GeomFromText('POINT(43.4642369 -73.2098302)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1456995', 'Conkey Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Orwell', 43.7954227, -73.267784, ST_GeomFromText('POINT(43.7954227 -73.267784)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1456997', 'Converse Bay', 'Bay', 'Vermont', 'VT', 'Chittenden', 'Charlotte', 44.2875521, -73.2898479, ST_GeomFromText('POINT(44.2875521 -73.2898479)', 4326), NULL, NULL, '1980-10-29', NULL, 'Official', 'Board Decision', '1942-01-01'),
  ('1456999', 'Conway Swamp', 'Swamp', 'Vermont', 'VT', 'Addison', 'Orwell', 43.7822841, -73.2831706, ST_GeomFromText('POINT(43.7822841 -73.2831706)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457001', 'Cook Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'West Topsham', 44.0268315, -72.3148556, ST_GeomFromText('POINT(44.0268315 -72.3148556)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1457002', 'Cook Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Caspian Lake', 44.5748754, -72.3376464, ST_GeomFromText('POINT(44.5748754 -72.3376464)', 4326), NULL, NULL, '1980-10-29', '2022-09-02', NULL, NULL, NULL),
  ('1457003', 'Cooks Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Bakersfield', 44.8278255, -72.7562416, ST_GeomFromText('POINT(44.8278255 -72.7562416)', 4326), 44.7867149, -72.7184593, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457004', 'Cooks Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Vershire', 43.883856, -72.3028272, ST_GeomFromText('POINT(43.883856 -72.3028272)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1457005', 'Cooks Pond', 'Lake', 'Vermont', 'VT', 'Windsor', 'Windsor', 43.3761907, -72.4512106, ST_GeomFromText('POINT(43.3761907 -72.4512106)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1457006', 'Cooks Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Killington Peak', 43.5116827, -72.8544384, ST_GeomFromText('POINT(43.5116827 -72.8544384)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1457009', 'Cookville Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'West Topsham', 44.0125663, -72.2603722, ST_GeomFromText('POINT(44.0125663 -72.2603722)', 4326), 44.0661755, -72.401766, '1980-10-29', NULL, 'Official', 'Board Decision', '1980-01-01'),
  ('1457010', 'Cook Pond', 'Lake', 'Vermont', 'VT', 'Windsor', 'Ludlow', 43.4302681, -72.7072777, ST_GeomFromText('POINT(43.4302681 -72.7072777)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457011', 'Coombs Hill', 'Summit', 'Vermont', 'VT', 'Franklin', 'Gilson Mountain', 44.7293744, -72.9321919, ST_GeomFromText('POINT(44.7293744 -72.9321919)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457012', 'Coon Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.8666487, -73.3047589, ST_GeomFromText('POINT(44.8666487 -73.3047589)', 4326), NULL, NULL, '1980-10-29', '2017-01-28', NULL, NULL, NULL),
  ('1457013', 'Coons Den', 'Summit', 'Vermont', 'VT', 'Rutland', 'Benson', 43.6629115, -73.2575236, ST_GeomFromText('POINT(43.6629115 -73.2575236)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1457014', 'Cooper Bay', 'Bay', 'Vermont', 'VT', 'Grand Isle', 'South Hero', 44.6939331, -73.2890201, ST_GeomFromText('POINT(44.6939331 -73.2890201)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457015', 'Cooper Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Caspian Lake', 44.5094983, -72.3720512, ST_GeomFromText('POINT(44.5094983 -72.3720512)', 4326), 44.4650549, -72.4151074, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457016', 'Cooper Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'South Hero', 44.6897665, -73.2879089, ST_GeomFromText('POINT(44.6897665 -73.2879089)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457017', 'Cooper Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'Rouses Point', 44.8960081, -73.3158736, ST_GeomFromText('POINT(44.8960081 -73.3158736)', 4326), NULL, NULL, '1980-10-29', '2017-01-28', NULL, NULL, NULL),
  ('1457019', 'Copperas Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'South Strafford', 43.8314577, -72.3267598, ST_GeomFromText('POINT(43.8314577 -72.3267598)', 4326), 43.8247222, -72.33, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457020', 'Copperas Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'South Strafford', 43.8244733, -72.3374421, ST_GeomFromText('POINT(43.8244733 -72.3374421)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1457021', 'Corez Pond', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Hazens Notch', 44.7594267, -72.5225926, ST_GeomFromText('POINT(44.7594267 -72.5225926)', 4326), NULL, NULL, '1980-10-29', '2019-11-26', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457025', 'Corr Hill', 'Summit', 'Vermont', 'VT', 'Essex', 'Monadnock Mountain', 44.8896103, -71.589449, ST_GeomFromText('POINT(44.8896103 -71.589449)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457026', 'Cotton Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Bolton Mountain', 44.4186657, -72.7562305, ST_GeomFromText('POINT(44.4186657 -72.7562305)', 4326), 44.4425, -72.8372222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457027', 'Cotton Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.5892438, -72.4277222, ST_GeomFromText('POINT(43.5892438 -72.4277222)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL),
  ('1457028', 'Cove Island', 'Island', 'Vermont', 'VT', 'Orleans', 'Newport', 44.9967126, -72.2039908, ST_GeomFromText('POINT(44.9967126 -72.2039908)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457031', 'Cow Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Joes Pond', 44.3783973, -72.2211912, ST_GeomFromText('POINT(44.3783973 -72.2211912)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457032', 'Cow Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Stone Mountain', 44.5554261, -71.7023354, ST_GeomFromText('POINT(44.5554261 -71.7023354)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457033', 'Cow Mountain Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Stone Mountain', 44.5618106, -71.7020468, ST_GeomFromText('POINT(44.5618106 -71.7020468)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1457034', 'Cowdrey Outlook', 'Summit', 'Vermont', 'VT', 'Windsor', 'Bethel', 43.7609091, -72.670638, ST_GeomFromText('POINT(43.7609091 -72.670638)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1457035', 'Cox Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Northfield', 44.172283, -72.6534435, ST_GeomFromText('POINT(44.172283 -72.6534435)', 4326), 44.2344444, -72.7177778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457036', 'Cox Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Proctor', 43.7390581, -73.0265163, ST_GeomFromText('POINT(43.7390581 -73.0265163)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457037', 'Cox Reservoir', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Woodstock South', 43.615803, -72.5636072, ST_GeomFromText('POINT(43.615803 -72.5636072)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1457038', 'Coy Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Wells', 43.4778478, -73.1270513, ST_GeomFromText('POINT(43.4778478 -73.1270513)', 4326), 43.4402778, -73.1444444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457039', 'Coy Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Wells', 43.449792, -73.1560905, ST_GeomFromText('POINT(43.449792 -73.1560905)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457043', 'Cram Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Roxbury', 44.0409347, -72.7263118, ST_GeomFromText('POINT(44.0409347 -72.7263118)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457045', 'Cranberry Bog', 'Swamp', 'Vermont', 'VT', 'Addison', 'Snake Mountain', 44.0578348, -73.2731761, ST_GeomFromText('POINT(44.0578348 -73.2731761)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457046', 'Cranberry Creek', 'Stream', 'Vermont', 'VT', 'Franklin', 'East Alburg', 44.9575417, -73.1423519, ST_GeomFromText('POINT(44.9575417 -73.1423519)', 4326), 44.9613889, -73.1536111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457047', 'Cranberry Meadow Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.4209814, -72.4573794, ST_GeomFromText('POINT(44.4209814 -72.4573794)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1457048', 'Cranberry Swamp', 'Swamp', 'Vermont', 'VT', 'Rutland', 'Benson', 43.7431182, -73.2959478, ST_GeomFromText('POINT(43.7431182 -73.2959478)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457050', 'Crane Point', 'Cape', 'Vermont', 'VT', 'Addison', 'Port Henry', 44.0481111, -73.4234575, ST_GeomFromText('POINT(44.0481111 -73.4234575)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457052', 'Cranska Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'Rouses Point', 44.87531, -73.3225736, ST_GeomFromText('POINT(44.87531 -73.3225736)', 4326), NULL, NULL, '1980-10-29', '2016-11-04', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457053', 'Crawford Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'West Charleston', 44.8791831, -72.0951377, ST_GeomFromText('POINT(44.8791831 -72.0951377)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457055', 'Cream Pot Meadow', 'Flat', 'Vermont', 'VT', 'Washington', 'Marshfield', 44.3086701, -72.3542685, ST_GeomFromText('POINT(44.3086701 -72.3542685)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457058', 'Crescent Lake', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Sharon', 43.8022142, -72.4086687, ST_GeomFromText('POINT(43.8022142 -72.4086687)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1457059', 'Cripple Brush Creek', 'Stream', 'Vermont', 'VT', 'Franklin', 'East Alburg', 44.9617082, -73.152074, ST_GeomFromText('POINT(44.9617082 -73.152074)', 4326), 44.9683333, -73.1552778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457060', 'Crook Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'North Troy', 44.9617123, -72.4317769, ST_GeomFromText('POINT(44.9617123 -72.4317769)', 4326), 44.99, -72.4886111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457061', 'Crossett Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Waterbury', 44.3097545, -72.8175753, ST_GeomFromText('POINT(44.3097545 -72.8175753)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457063', 'Crow Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Saint Johnsbury', 44.40948, -72.0492421, ST_GeomFromText('POINT(44.40948 -72.0492421)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457065', 'Crystal Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'West Charleston', 44.9864352, -72.1114885, ST_GeomFromText('POINT(44.9864352 -72.1114885)', 4326), 44.98, -72.0805556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457066', 'Crystal Lake', 'Lake', 'Vermont', 'VT', 'Orleans', 'Crystal Lake', 44.7333857, -72.153982, ST_GeomFromText('POINT(44.7333857 -72.153982)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1457067', 'Crystal Pond', 'Lake', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.5937344, -72.476899, ST_GeomFromText('POINT(43.5937344 -72.476899)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457068', 'Crystal Pool', 'Lake', 'Vermont', 'VT', 'Washington', 'Plainfield', 44.3086217, -72.493029, ST_GeomFromText('POINT(44.3086217 -72.493029)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1457070', 'Cummings Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Windsor', 43.4952585, -72.4995919, ST_GeomFromText('POINT(43.4952585 -72.4995919)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL),
  ('1457071', 'Cunningham Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Waterbury', 44.2767246, -72.7590056, ST_GeomFromText('POINT(44.2767246 -72.7590056)', 4326), 44.2897222, -72.7619444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457072', 'Currier Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'East Corinth', 44.0914445, -72.2053706, ST_GeomFromText('POINT(44.0914445 -72.2053706)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457073', 'Curtis Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Chelsea', 43.9359845, -72.4413345, ST_GeomFromText('POINT(43.9359845 -72.4413345)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457074', 'Curtis Hollow', 'Valley', 'Vermont', 'VT', 'Windsor', 'Woodstock South', 43.584636, -72.6155989, ST_GeomFromText('POINT(43.584636 -72.6155989)', 4326), 43.5674495, -72.6208539, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1457075', 'Curtis Pond', 'Reservoir', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.3832496, -72.4961207, ST_GeomFromText('POINT(44.3832496 -72.4961207)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1457076', 'Cushing Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Richmond', 44.4858455, -72.8960834, ST_GeomFromText('POINT(44.4858455 -72.8960834)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457078', 'Cushman Hill', 'Summit', 'Vermont', 'VT', 'Franklin', 'Milton', 44.7127099, -73.0666774, ST_GeomFromText('POINT(44.7127099 -73.0666774)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457080', 'Cutler Mill Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Groveton', 44.565333, -71.5975861, ST_GeomFromText('POINT(44.565333 -71.5975861)', 4326), 44.5631108, -71.6903666, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457081', 'Cutler Pond', 'Lake', 'Vermont', 'VT', 'Franklin', 'Highgate Center', 44.9866576, -73.0375999, ST_GeomFromText('POINT(44.9866576 -73.0375999)', 4326), NULL, NULL, '1980-10-29', '2020-01-15', NULL, NULL, NULL),
  ('1457082', 'Cutter Pond', 'Lake', 'Vermont', 'VT', 'Orange', 'Brookfield', 44.091453, -72.5489979, ST_GeomFromText('POINT(44.091453 -72.5489979)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1457083', 'Cutting Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Miles Pond', 44.4070033, -71.8162016, ST_GeomFromText('POINT(44.4070033 -71.8162016)', 4326), 44.4027778, -71.8261111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457085', 'Cutting Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Orwell', 43.8711628, -73.2587261, ST_GeomFromText('POINT(43.8711628 -73.2587261)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457087', 'Cyrus Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Heath', 42.7378607, -72.8542634, ST_GeomFromText('POINT(42.7378607 -72.8542634)', 4326), 42.7425, -72.8494444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457088', 'Daigneau Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Orwell', 43.8157994, -73.2783391, ST_GeomFromText('POINT(43.8157994 -73.2783391)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', 'Official', 'Board Decision', '1959-01-01'),
  ('1457089', 'Dailey Hollow', 'Valley', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.6186632, -72.6622026, ST_GeomFromText('POINT(43.6186632 -72.6622026)', 4326), 43.630723, -72.7203183, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1457091', 'Daley Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Tinkerville', 44.7656048, -71.6131441, ST_GeomFromText('POINT(44.7656048 -71.6131441)', 4326), 44.7827778, -71.6236111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457092', 'Dalton Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Delectable Mountain', 43.7395115, -72.7220464, ST_GeomFromText('POINT(43.7395115 -72.7220464)', 4326), 43.7408333, -72.6933333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457099', 'Dameas Island', 'Island', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.8229363, -73.2513392, ST_GeomFromText('POINT(44.8229363 -73.2513392)', 4326), NULL, NULL, '1980-10-29', '2016-11-23', 'Official', 'Board Decision', '1894-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457100', 'Dana Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Delectable Mountain', 43.6472817, -72.7014874, ST_GeomFromText('POINT(43.6472817 -72.7014874)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1457101', 'Dana Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Woodstock North', 43.6636385, -72.5613753, ST_GeomFromText('POINT(43.6636385 -72.5613753)', 4326), NULL, NULL, '1980-10-29', '2018-09-14', NULL, NULL, NULL),
  ('1457102', 'Daniels Notch', 'Gap', 'Vermont', 'VT', 'Lamoille', 'Sterling Mountain', 44.5967179, -72.7470671, ST_GeomFromText('POINT(44.5967179 -72.7470671)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457103', 'Daniels Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Craftsbury', 44.6762717, -72.2629384, ST_GeomFromText('POINT(44.6762717 -72.2629384)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1457106', 'Danville Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Cabot', 44.3836441, -72.284262, ST_GeomFromText('POINT(44.3836441 -72.284262)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457107', 'Danville Reservoir', 'Reservoir', 'Vermont', 'VT', 'Caledonia', 'Joes Pond', 44.4194435, -72.169166, ST_GeomFromText('POINT(44.4194435 -72.169166)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1457108', 'Darby Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Cavendish', 43.4747932, -72.590094, ST_GeomFromText('POINT(43.4747932 -72.590094)', 4326), 43.5014593, -72.6156504, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457110', 'Darby Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Bellows Falls', 43.177928, -72.4838335, ST_GeomFromText('POINT(43.177928 -72.4838335)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457111', 'Darius James Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Groton', 44.2031178, -72.1706502, ST_GeomFromText('POINT(44.2031178 -72.1706502)', 4326), 44.2358333, -72.1619444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457112', 'Dark Branch', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Eden', 44.7131051, -72.5345574, ST_GeomFromText('POINT(44.7131051 -72.5345574)', 4326), 44.7556043, -72.5328909, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457113', 'Darling Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Newport', 44.9788198, -72.1501663, ST_GeomFromText('POINT(44.9788198 -72.1501663)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457117', 'Davidson Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Chester', 43.3277804, -72.55605, ST_GeomFromText('POINT(43.3277804 -72.55605)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457118', 'Davidson Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'South Strafford', 43.8703695, -72.2987652, ST_GeomFromText('POINT(43.8703695 -72.2987652)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457119', 'Davis Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Norton Pond', 44.9650468, -71.8278727, ST_GeomFromText('POINT(44.9650468 -71.8278727)', 4326), 44.9372222, -71.7986111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457121', 'Davis Hill', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Morrisville', 44.6197645, -72.545112, ST_GeomFromText('POINT(44.6197645 -72.545112)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457122', 'Davis Hill Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Delectable Mountain', 43.7270117, -72.7214906, ST_GeomFromText('POINT(43.7270117 -72.7214906)', 4326), 43.7369444, -72.6897222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457123', 'Dawes Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Groton', 44.1692297, -72.1628717, ST_GeomFromText('POINT(44.1692297 -72.1628717)', 4326), 44.1688889, -72.1902778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457124', 'Day Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Orleans', 44.8739365, -72.1920463, ST_GeomFromText('POINT(44.8739365 -72.1920463)', 4326), 44.875881, -72.1531564, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457128', 'De Long Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Cornwall', 43.9211623, -73.2278932, ST_GeomFromText('POINT(43.9211623 -73.2278932)', 4326), NULL, NULL, '1980-10-29', '2023-07-21', NULL, NULL, NULL),
  ('1457129', 'Dead Creek', 'Stream', 'Vermont', 'VT', 'Franklin', 'East Alburg', 44.9742082, -73.1281846, ST_GeomFromText('POINT(44.9742082 -73.1281846)', 4326), 44.9461111, -73.1477778, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457130', 'Dead Creek', 'Stream', 'Vermont', 'VT', 'Franklin', 'Fairfield', 44.8544908, -72.9356911, ST_GeomFromText('POINT(44.8544908 -72.9356911)', 4326), 44.7492156, -73.0070881, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457131', 'Dead Creek', 'Stream', 'Vermont', 'VT', 'Addison', 'Vergennes West', 44.1850539, -73.3101242, ST_GeomFromText('POINT(44.1850539 -73.3101242)', 4326), 44.0803335, -73.3479007, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457133', 'Dean Island', 'Island', 'Vermont', 'VT', 'Chittenden', 'Charlotte', 44.2647748, -73.2751249, ST_GeomFromText('POINT(44.2647748 -73.2751249)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457134', 'Debby Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Marshfield', 44.304172, -72.3556563, ST_GeomFromText('POINT(44.304172 -72.3556563)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457135', 'Deer Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Newfane', 42.9440864, -72.7176548, ST_GeomFromText('POINT(42.9440864 -72.7176548)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457136', 'Deer Hill', 'Summit', 'Vermont', 'VT', 'Essex', 'Seneca Mountain', 44.6864315, -71.8642597, ST_GeomFromText('POINT(44.6864315 -71.8642597)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457137', 'Deer Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Island Pond', 44.8293929, -71.9872952, ST_GeomFromText('POINT(44.8293929 -71.9872952)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1457138', 'Deer Mountain', 'Summit', 'Vermont', 'VT', 'Windsor', 'Randolph', 43.9121533, -72.7323723, ST_GeomFromText('POINT(43.9121533 -72.7323723)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457139', 'Deer Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Marshfield', 44.306717, -72.2639864, ST_GeomFromText('POINT(44.306717 -72.2639864)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457141', 'Delano Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Bridport', 43.8903292, -73.255393, ST_GeomFromText('POINT(43.8903292 -73.255393)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457143', 'Delectable Mountain', 'Summit', 'Vermont', 'VT', 'Windsor', 'Delectable Mountain', 43.7002756, -72.6804709, ST_GeomFromText('POINT(43.7002756 -72.6804709)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1457145', 'Dennis Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Maidstone Lake', 44.729492, -71.6578986, ST_GeomFromText('POINT(44.729492 -71.6578986)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1457146', 'Dennis Pond Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Maidstone Lake', 44.7233836, -71.6323111, ST_GeomFromText('POINT(44.7233836 -71.6323111)', 4326), 44.7280556, -71.6558333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457147', 'Densmore Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.5425705, -72.4712032, ST_GeomFromText('POINT(43.5425705 -72.4712032)', 4326), 43.5786111, -72.4894444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457149', 'Densmore Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.5500905, -72.4826996, ST_GeomFromText('POINT(43.5500905 -72.4826996)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL),
  ('1457150', 'Densmore Mountain', 'Summit', 'Vermont', 'VT', 'Washington', 'Middlesex', 44.3655706, -72.659218, ST_GeomFromText('POINT(44.3655706 -72.659218)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457151', 'Depot Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Marshfield', 44.2500608, -72.2612083, ST_GeomFromText('POINT(44.2500608 -72.2612083)', 4326), 44.2527778, -72.2861111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457152', 'Derby Bay', 'Bay', 'Vermont', 'VT', 'Orleans', 'Newport', 44.9808795, -72.1953795, ST_GeomFromText('POINT(44.9808795 -72.1953795)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457155', 'Lake Derby', 'Lake', 'Vermont', 'VT', 'Orleans', 'West Charleston', 44.9531474, -72.116526, ST_GeomFromText('POINT(44.9531474 -72.116526)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', 'Official', 'Board Decision', '1972-01-01'),
  ('1457156', 'Derway Island', 'Island', 'Vermont', 'VT', 'Chittenden', 'Colchester Point', 44.5356032, -73.2679069, ST_GeomFromText('POINT(44.5356032 -73.2679069)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457159', 'Devils Gap', 'Gap', 'Vermont', 'VT', 'Lamoille', 'Eden', 44.6828279, -72.5192787, ST_GeomFromText('POINT(44.6828279 -72.5192787)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457160', 'Devils Glen Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.1747988, -73.2395527, ST_GeomFromText('POINT(43.1747988 -73.2395527)', 4326), 43.1941667, -73.2419444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457161', 'Devils Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Peacham', 44.3087731, -72.2286017, ST_GeomFromText('POINT(44.3087731 -72.2286017)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1457162', 'Devils Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Marshfield', 44.3176894, -72.3454178, ST_GeomFromText('POINT(44.3176894 -72.3454178)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457163', 'Devils Pond', 'Lake', 'Vermont', 'VT', 'Grand Isle', 'Rouses Point', 44.9392075, -73.2612412, ST_GeomFromText('POINT(44.9392075 -73.2612412)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457164', 'Dewey Mountain', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Bolton Mountain', 44.494083, -72.8215969, ST_GeomFromText('POINT(44.494083 -72.8215969)', 4326), NULL, NULL, '1980-10-29', '2022-09-02', NULL, NULL, NULL),
  ('1457166', 'Deweys Pond', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Quechee', 43.6447699, -72.4039035, ST_GeomFromText('POINT(43.6447699 -72.4039035)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1457168', 'Diamond Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Lyndonville', 44.5118687, -72.0501592, ST_GeomFromText('POINT(44.5118687 -72.0501592)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457169', 'Diamond Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Georgia Plains', 44.665315, -73.1859008, ST_GeomFromText('POINT(44.665315 -73.1859008)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457171', 'Dickerman Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Chelsea', 43.9308998, -72.465932, ST_GeomFromText('POINT(43.9308998 -72.465932)', 4326), 43.9650658, -72.5112118, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457172', 'Dillenbeck Bay', 'Bay', 'Vermont', 'VT', 'Grand Isle', 'Rouses Point', 44.9169854, -73.2712416, ST_GeomFromText('POINT(44.9169854 -73.2712416)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457173', 'Dimick Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Quechee', 43.702014, -72.408982, ST_GeomFromText('POINT(43.702014 -72.408982)', 4326), 43.7058333, -72.4627778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457174', 'Dimick Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Delectable Mountain', 43.6272908, -72.7125998, ST_GeomFromText('POINT(43.6272908 -72.7125998)', 4326), 43.6209019, -72.7231555, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457175', 'Dish Mill Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Burke Mountain', 44.5889431, -71.9450949, ST_GeomFromText('POINT(44.5889431 -71.9450949)', 4326), 44.5750547, -71.8609264, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457176', 'Dobson Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.4401874, -72.4488273, ST_GeomFromText('POINT(44.4401874 -72.4488273)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1457178', 'Dole Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Saint Johnsbury', 44.4239391, -72.1100975, ST_GeomFromText('POINT(44.4239391 -72.1100975)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457179', 'Dolif Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Island Pond', 44.8217674, -71.9206942, ST_GeomFromText('POINT(44.8217674 -71.9206942)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1457180', 'Dolloff Ponds', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Sutton', 44.6943463, -72.0308567, ST_GeomFromText('POINT(44.6943463 -72.0308567)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1457181', 'Domeys Dome', 'Summit', 'Vermont', 'VT', 'Orleans', 'North Troy', 44.8914415, -72.4994482, ST_GeomFromText('POINT(44.8914415 -72.4994482)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457182', 'Donaldson Point', 'Cape', 'Vermont', 'VT', 'Franklin', 'East Alburg', 44.9912872, -73.1822857, ST_GeomFromText('POINT(44.9912872 -73.1822857)', 4326), NULL, NULL, '1980-10-29', '2016-11-04', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457184', 'Dothan Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Hanover', 43.6834039, -72.3056466, ST_GeomFromText('POINT(43.6834039 -72.3056466)', 4326), 43.7077778, -72.3377778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457186', 'Doughty Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Orwell', 43.7537108, -73.3317175, ST_GeomFromText('POINT(43.7537108 -73.3317175)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1457187', 'Doughty Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Orwell', 43.7585399, -73.282857, ST_GeomFromText('POINT(43.7585399 -73.282857)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL),
  ('1457188', 'Dow Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Hinesburg', 44.3622662, -73.0642889, ST_GeomFromText('POINT(44.3622662 -73.0642889)', 4326), NULL, NULL, '1980-10-29', '2023-07-21', NULL, NULL, NULL),
  ('1457189', 'Downer Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Springfield', 43.3624429, -72.4432742, ST_GeomFromText('POINT(43.3624429 -72.4432742)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457191', 'Dreer Spring', 'Spring', 'Vermont', 'VT', 'Windsor', 'Woodstock South', 43.619514, -72.5128717, ST_GeomFromText('POINT(43.619514 -72.5128717)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457192', 'Drew Mountain', 'Summit', 'Vermont', 'VT', 'Washington', 'Marshfield', 44.3467158, -72.3187115, ST_GeomFromText('POINT(44.3467158 -72.3187115)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457193', 'Drinkwater Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Roxbury', 44.080856, -72.703358, ST_GeomFromText('POINT(44.080856 -72.703358)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457194', 'Drowned Lands', 'Swamp', 'Vermont', 'VT', 'Rutland', 'Whitehall', 43.5989551, -73.4201137, ST_GeomFromText('POINT(43.5989551 -73.4201137)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457196', 'Dry Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Pawlet', 43.3342405, -73.247886, ST_GeomFromText('POINT(43.3342405 -73.247886)', 4326), 43.3544444, -73.2108333, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457197', 'Dry Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Ludlow', 43.4838129, -72.7152274, ST_GeomFromText('POINT(43.4838129 -72.7152274)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457198', 'Dry Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Barre West', 44.1484708, -72.6016152, ST_GeomFromText('POINT(44.1484708 -72.6016152)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1457199', 'Dry Ridge', 'Ridge', 'Vermont', 'VT', 'Lamoille', 'Sterling Mountain', 44.6173462, -72.7167208, ST_GeomFromText('POINT(44.6173462 -72.7167208)', 4326), NULL, NULL, '1980-10-29', '2016-11-29', NULL, NULL, NULL),
  ('1457200', 'Duck Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Richmond', 44.3819983, -72.927622, ST_GeomFromText('POINT(44.3819983 -72.927622)', 4326), 44.4313889, -72.8980556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457201', 'Duck Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Crystal Lake', 44.6732214, -72.1361059, ST_GeomFromText('POINT(44.6732214 -72.1361059)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1457202', 'Duck Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Sutton', 44.7084576, -72.0662023, ST_GeomFromText('POINT(44.7084576 -72.0662023)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1457203', 'Duck Pond', 'Lake', 'Vermont', 'VT', 'Chittenden', 'Juniper Island', 44.3772554, -73.260083, ST_GeomFromText('POINT(44.3772554 -73.260083)', 4326), NULL, NULL, '1980-10-29', '2020-01-15', NULL, NULL, NULL),
  ('1457204', 'Duck Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Concord', 44.393274, -71.9349455, ST_GeomFromText('POINT(44.393274 -71.9349455)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1457205', 'Duck Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Burke Mountain', 44.5996296, -71.9449901, ST_GeomFromText('POINT(44.5996296 -71.9449901)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1457206', 'Duck Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Craftsbury', 44.6728516, -72.3651265, ST_GeomFromText('POINT(44.6728516 -72.3651265)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457207', 'Duck Pond Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Concord', 44.409503, -71.9345374, ST_GeomFromText('POINT(44.409503 -71.9345374)', 4326), 44.3847222, -71.9391667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457208', 'Dudley Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Miles Pond', 44.4700574, -71.8631477, ST_GeomFromText('POINT(44.4700574 -71.8631477)', 4326), 44.485, -71.8302778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457209', 'Duffy Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Underhill', 44.5919246, -72.9479942, ST_GeomFromText('POINT(44.5919246 -72.9479942)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1457210', 'Dugar Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.3775569, -72.4598293, ST_GeomFromText('POINT(44.3775569 -72.4598293)', 4326), 44.4230556, -72.4891667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457212', 'Dummerston Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Newfane', 42.9025776, -72.6665389, ST_GeomFromText('POINT(42.9025776 -72.6665389)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1457213', 'Dumpling Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Montpelier', 44.3643065, -72.5910095, ST_GeomFromText('POINT(44.3643065 -72.5910095)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457214', 'Dunham Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.5978582, -72.4958204, ST_GeomFromText('POINT(43.5978582 -72.4958204)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL),
  ('1457215', 'Dunklee Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Rutland', 43.6222807, -72.9736662, ST_GeomFromText('POINT(43.6222807 -72.9736662)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1457216', 'Dunn Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Newport Center', 44.9253244, -72.2964939, ST_GeomFromText('POINT(44.9253244 -72.2964939)', 4326), 44.8794444, -72.3097222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457217', 'Dunn Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Stannard', 44.602016, -72.1578604, ST_GeomFromText('POINT(44.602016 -72.1578604)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457218', 'Duplissey Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'West Topsham', 44.0679562, -72.368967, ST_GeomFromText('POINT(44.0679562 -72.368967)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457219', 'Duplissey Swamp', 'Swamp', 'Vermont', 'VT', 'Orange', 'West Topsham', 44.0641595, -72.3719636, ST_GeomFromText('POINT(44.0641595 -72.3719636)', 4326), NULL, NULL, '1980-10-29', '2011-10-13', NULL, NULL, NULL),
  ('1457221', 'Duren Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Groveton', 44.5391041, -71.5969041, ST_GeomFromText('POINT(44.5391041 -71.5969041)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457223', 'Dutch Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Middletown Springs', 43.3814524, -73.0676042, ST_GeomFromText('POINT(43.3814524 -73.0676042)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457224', 'Dutton Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Groveton', 44.6142203, -71.6000868, ST_GeomFromText('POINT(44.6142203 -71.6000868)', 4326), 44.638664, -71.6061983, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457225', 'Dutton Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Orleans', 44.8228262, -72.1478785, ST_GeomFromText('POINT(44.8228262 -72.1478785)', 4326), 44.8767144, -72.1417672, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457227', 'Dutton Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Stratford', 44.6399616, -71.6081948, ST_GeomFromText('POINT(44.6399616 -71.6081948)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1457228', 'Duttonville Gulf', 'Valley', 'Vermont', 'VT', 'Windsor', 'Chester', 43.3455585, -72.6102942, ST_GeomFromText('POINT(43.3455585 -72.6102942)', 4326), 43.3783302, -72.5999954, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1457231', 'Dyer Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Cornwall', 43.9261576, -73.1421335, ST_GeomFromText('POINT(43.9261576 -73.1421335)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1457233', 'Eagle Hollow Notch', 'Gap', 'Vermont', 'VT', 'Orange', 'Vershire', 43.9775667, -72.3014839, ST_GeomFromText('POINT(43.9775667 -72.3014839)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457234', 'Eagle Ledge', 'Bench', 'Vermont', 'VT', 'Orange', 'Vershire', 43.9781224, -72.293706, ST_GeomFromText('POINT(43.9781224 -72.293706)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457235', 'Eagle Ledge', 'Bench', 'Vermont', 'VT', 'Lamoille', 'Woodbury', 44.450055, -72.492054, ST_GeomFromText('POINT(44.450055 -72.492054)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457236', 'Eagle Mountain', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Georgia Plains', 44.6699725, -73.2084002, ST_GeomFromText('POINT(44.6699725 -73.2084002)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457238', 'Eagle Point', 'Cape', 'Vermont', 'VT', 'Orleans', 'Newport OE N', 45.0008792, -72.2048243, ST_GeomFromText('POINT(45.0008792 -72.2048243)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457239', 'Eagle Pond', 'Lake', 'Vermont', 'VT', 'Grand Isle', 'Rouses Point', 44.9355397, -73.2616336, ST_GeomFromText('POINT(44.9355397 -73.2616336)', 4326), NULL, NULL, '1980-10-29', '2020-01-15', NULL, NULL, NULL),
  ('1457240', 'Eagle Rock', 'Summit', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.7335435, -73.1725259, ST_GeomFromText('POINT(43.7335435 -73.1725259)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457242', 'Eagleshead', 'Summit', 'Vermont', 'VT', 'Windsor', 'Cavendish', 43.4046327, -72.5448142, ST_GeomFromText('POINT(43.4046327 -72.5448142)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457243', 'Earlys Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.8590918, -73.3599394, ST_GeomFromText('POINT(44.8590918 -73.3599394)', 4326), NULL, NULL, '1980-10-29', '2016-11-23', NULL, NULL, NULL),
  ('1457250', 'East Bay', 'Bay', 'Vermont', 'VT', 'Rutland', 'Whitehall', 43.6008995, -73.3770574, ST_GeomFromText('POINT(43.6008995 -73.3770574)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457254', 'East Branch Dead Creek', 'Stream', 'Vermont', 'VT', 'Addison', 'Snake Mountain', 44.0806113, -73.3479007, ST_GeomFromText('POINT(44.0806113 -73.3479007)', 4326), 43.9395031, -73.3298417, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457255', 'East Branch Missisquoi River', 'Stream', 'Vermont', 'VT', 'Orleans', 'Lowell', 44.8069923, -72.4589991, ST_GeomFromText('POINT(44.8069923 -72.4589991)', 4326), 44.7372713, -72.4503873, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457256', 'East Branch Missisquoi River', 'Stream', 'Vermont', 'VT', 'Franklin', 'East Alburg OE N', 45.0080964, -73.1345728, ST_GeomFromText('POINT(45.0080964 -73.1345728)', 4326), 44.9955965, -73.1487396, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457257', 'East Branch Moose River', 'Stream', 'Vermont', 'VT', 'Essex', 'Seneca Mountain', 44.6344975, -71.8114814, ST_GeomFromText('POINT(44.6344975 -71.8114814)', 4326), 44.6583333, -71.7802778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457258', 'East Branch Nulhegan River', 'Stream', 'Vermont', 'VT', 'Essex', 'Bloomfield', 44.7725492, -71.6534231, ST_GeomFromText('POINT(44.7725492 -71.6534231)', 4326), 44.9317138, -71.6584237, '1980-10-29', '2018-07-31', NULL, NULL, NULL),
  ('1457259', 'East Branch Passumpsic River', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Burke Mountain', 44.5497773, -71.9906511, ST_GeomFromText('POINT(44.5497773 -71.9906511)', 4326), 44.7644942, -71.8814837, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457261', 'East Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Groton', 44.203951, -72.1884283, ST_GeomFromText('POINT(44.203951 -72.1884283)', 4326), 44.1672222, -72.2230556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457273', 'East Creek', 'Stream', 'Vermont', 'VT', 'Addison', 'Ticonderoga', 43.8320047, -73.3765071, ST_GeomFromText('POINT(43.8320047 -73.3765071)', 4326), 43.8064503, -73.2942825, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457281', 'East Haven Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Gallup Mills', 44.6213112, -71.8329554, ST_GeomFromText('POINT(44.6213112 -71.8329554)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457282', 'East Haven Range', 'Range', 'Vermont', 'VT', 'Essex', 'Gallup Mills', 44.6212978, -71.8330864, ST_GeomFromText('POINT(44.6212978 -71.8330864)', 4326), NULL, NULL, '1980-10-29', '2024-10-04', NULL, NULL, NULL),
  ('1457285', 'East Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Andover', 43.3070673, -72.6979131, ST_GeomFromText('POINT(43.3070673 -72.6979131)', 4326), NULL, NULL, '1980-10-29', '2024-03-29', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457286', 'East Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Chelsea', 43.8868478, -72.4713568, ST_GeomFromText('POINT(43.8868478 -72.4713568)', 4326), NULL, NULL, '1980-10-29', '2022-09-02', NULL, NULL, NULL),
  ('1457287', 'East Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Barre East', 44.2061632, -72.4564912, ST_GeomFromText('POINT(44.2061632 -72.4564912)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1457288', 'East Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Montpelier', 44.3042157, -72.6231663, ST_GeomFromText('POINT(44.3042157 -72.6231663)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457296', 'East Long Pond', 'Reservoir', 'Vermont', 'VT', 'Washington', 'Cabot', 44.4447499, -72.3551923, ST_GeomFromText('POINT(44.4447499 -72.3551923)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1457300', 'East Mountain', 'Summit', 'Vermont', 'VT', 'Windham', 'Brattleboro', 42.7674007, -72.5936148, ST_GeomFromText('POINT(42.7674007 -72.5936148)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457301', 'East Mountain', 'Summit', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.5319409, -72.7086019, ST_GeomFromText('POINT(43.5319409 -72.7086019)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457302', 'East Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Rutland', 43.6165725, -72.9157248, ST_GeomFromText('POINT(43.6165725 -72.9157248)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1457303', 'East Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Seneca Mountain', 44.6650432, -71.7703688, ST_GeomFromText('POINT(44.6650432 -71.7703688)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457305', 'East Orange Branch', 'Stream', 'Vermont', 'VT', 'Orange', 'West Topsham', 44.0997863, -72.3064857, ST_GeomFromText('POINT(44.0997863 -72.3064857)', 4326), 44.1072858, -72.3884329, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457311', 'East Putney Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Spofford', 42.9842474, -72.4614771, ST_GeomFromText('POINT(42.9842474 -72.4614771)', 4326), 43.0923008, -72.562035, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457323', 'East Slang Creek', 'Stream', 'Vermont', 'VT', 'Addison', 'Vergennes West', 44.2264424, -73.2645683, ST_GeomFromText('POINT(44.2264424 -73.2645683)', 4326), 44.2253318, -73.2259564, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457327', 'Eastman Pond', 'Lake', 'Vermont', 'VT', 'Orange', 'Groton', 44.1312018, -72.1738576, ST_GeomFromText('POINT(44.1312018 -72.1738576)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1457330', 'Eaton Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.6570341, -73.1710939, ST_GeomFromText('POINT(43.6570341 -73.1710939)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457331', 'Echo Lake', 'Lake', 'Vermont', 'VT', 'Windsor', 'Ludlow', 43.4738161, -72.7007307, ST_GeomFromText('POINT(43.4738161 -72.7007307)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1457332', 'Echo Lake', 'Reservoir', 'Vermont', 'VT', 'Orleans', 'Island Pond', 44.8597251, -71.9935207, ST_GeomFromText('POINT(44.8597251 -71.9935207)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1457334', 'Eddy Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Rutland', 43.6131239, -72.8909377, ST_GeomFromText('POINT(43.6131239 -72.8909377)', 4326), 43.5992353, -72.8326026, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457335', 'Eddy Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Rutland', 43.5907236, -72.9616729, ST_GeomFromText('POINT(43.5907236 -72.9616729)', 4326), NULL, NULL, '1980-10-29', '2014-08-29', NULL, NULL, NULL),
  ('1457338', 'Eden Notch', 'Gap', 'Vermont', 'VT', 'Orleans', 'Albany', 44.7369935, -72.4695546, ST_GeomFromText('POINT(44.7369935 -72.4695546)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457339', 'Lake Eden', 'Reservoir', 'Vermont', 'VT', 'Lamoille', 'Eden', 44.71882, -72.5059165, ST_GeomFromText('POINT(44.71882 -72.5059165)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1457340', 'Edgerton Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Wells', 43.3767304, -73.1564944, ST_GeomFromText('POINT(43.3767304 -73.1564944)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457345', 'Edmunds Peak', 'Summit', 'Vermont', 'VT', 'Rutland', 'West Rutland', 43.5090454, -73.0471125, ST_GeomFromText('POINT(43.5090454 -73.0471125)', 4326), NULL, NULL, '1980-10-29', '2022-09-08', NULL, NULL, NULL),
  ('1457347', 'Eel Creek', 'Stream', 'Vermont', 'VT', 'Franklin', 'East Alburg OE N', 45.0080963, -73.150684, ST_GeomFromText('POINT(45.0080963 -73.150684)', 4326), 45.005, -73.1541667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457348', 'Egg Mountain', 'Summit', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.2038814, -73.2221086, ST_GeomFromText('POINT(43.2038814 -73.2221086)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1457349', 'Egypt Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Groton', 44.1350637, -72.1431486, ST_GeomFromText('POINT(44.1350637 -72.1431486)', 4326), 44.145, -72.1597222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457350', 'Elan Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Morgan Center', 44.8795524, -71.992678, ST_GeomFromText('POINT(44.8795524 -71.992678)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457351', 'Elephant Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'South Royalton', 43.8224175, -72.5092415, ST_GeomFromText('POINT(43.8224175 -72.5092415)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457352', 'Elephants Head', 'Pillar', 'Vermont', 'VT', 'Lamoille', 'Mount Mansfield', 44.5514405, -72.7937344, ST_GeomFromText('POINT(44.5514405 -72.7937344)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457353', 'Lake Elligo', 'Lake', 'Vermont', 'VT', 'Orleans', 'Caspian Lake', 44.6015288, -72.3566611, ST_GeomFromText('POINT(44.6015288 -72.3566611)', 4326), NULL, NULL, '2002-08-27', '2019-11-21', 'Official', 'Board Decision', '1980-01-01'),
  ('1457355', 'Ellenwood Hill', 'Summit', 'Vermont', 'VT', 'Franklin', 'Gilson Mountain', 44.6743935, -72.8938509, ST_GeomFromText('POINT(44.6743935 -72.8938509)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457356', 'Ellis Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Roxbury', 44.090618, -72.6845535, ST_GeomFromText('POINT(44.090618 -72.6845535)', 4326), 44.0988889, -72.7113889, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457357', 'Elm Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Cavendish', 43.4028502, -72.5881487, ST_GeomFromText('POINT(43.4028502 -72.5881487)', 4326), 43.4369444, -72.5938889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457358', 'Elm Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Fairfield', 44.7936591, -72.8790238, ST_GeomFromText('POINT(44.7936591 -72.8790238)', 4326), 44.7447711, -72.9109708, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457359', 'Elm Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'West Charleston', 44.8914274, -72.1234323, ST_GeomFromText('POINT(44.8914274 -72.1234323)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1457361', 'Elm Point', 'Cape', 'Vermont', 'VT', 'Addison', 'Port Henry', 44.0794993, -73.4129023, ST_GeomFromText('POINT(44.0794993 -73.4129023)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457363', 'Elmore Mountain', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Morrisville', 44.5264024, -72.5458567, ST_GeomFromText('POINT(44.5264024 -72.5458567)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457364', 'Elmore Pond Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Morrisville', 44.5683856, -72.5267788, ST_GeomFromText('POINT(44.5683856 -72.5267788)', 4326), 44.5002778, -72.5322222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457369', 'Emery Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Groveton', 44.5556111, -71.597586, ST_GeomFromText('POINT(44.5556111 -71.597586)', 4326), 44.5542222, -71.6389761, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457370', 'Endless Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Wells', 43.4831253, -73.2101081, ST_GeomFromText('POINT(43.4831253 -73.2101081)', 4326), 43.4394444, -73.1583333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457374', 'Mount Ephraim', 'Summit', 'Vermont', 'VT', 'Windsor', 'Chester', 43.2510996, -72.5144482, ST_GeomFromText('POINT(43.2510996 -72.5144482)', 4326), NULL, NULL, '1980-10-29', '2022-09-05', NULL, NULL, NULL),
  ('1457375', 'Esdon Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Stannard', 44.574775, -72.2467696, ST_GeomFromText('POINT(44.574775 -72.2467696)', 4326), 44.6125519, -72.2839931, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457386', 'Ewell Pond', 'Reservoir', 'Vermont', 'VT', 'Caledonia', 'Peacham', 44.360936, -72.163084, ST_GeomFromText('POINT(44.360936 -72.163084)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1457394', 'Fairfield Pond', 'Reservoir', 'Vermont', 'VT', 'Franklin', 'Fairfield', 44.8546892, -72.9895843, ST_GeomFromText('POINT(44.8546892 -72.9895843)', 4326), NULL, NULL, '1980-10-29', '2019-11-26', NULL, NULL, NULL),
  ('1457395', 'Fairfield River', 'Stream', 'Vermont', 'VT', 'Franklin', 'Fairfield', 44.8153252, -72.9195808, ST_GeomFromText('POINT(44.8153252 -72.9195808)', 4326), 44.7375491, -72.9431948, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457403', 'Fall Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Putney', 42.9489697, -72.6181471, ST_GeomFromText('POINT(42.9489697 -72.6181471)', 4326), 42.9661111, -72.605, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457404', 'Fall Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Lyndonville', 44.5614434, -72.0403747, ST_GeomFromText('POINT(44.5614434 -72.0403747)', 4326), 44.5667204, -72.1462112, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457406', 'Falls Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Killington Peak', 43.6050687, -72.7537117, ST_GeomFromText('POINT(43.6050687 -72.7537117)', 4326), 43.5997222, -72.8108333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457407', 'Fan Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Wells', 43.4385309, -73.1526853, ST_GeomFromText('POINT(43.4385309 -73.1526853)', 4326), NULL, NULL, '1980-10-29', '2022-09-02', NULL, NULL, NULL),
  ('1457409', 'Fareham Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.5643215, -72.4538965, ST_GeomFromText('POINT(43.5643215 -72.4538965)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL),
  ('1457410', 'Farman Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Lowell', 44.8319564, -72.404274, ST_GeomFromText('POINT(44.8319564 -72.404274)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457411', 'Farnham Branch', 'Stream', 'Vermont', 'VT', 'Orange', 'Sharon', 43.8734003, -72.4970427, ST_GeomFromText('POINT(43.8734003 -72.4970427)', 4326), 43.8850673, -72.4295412, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457414', 'Fay Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Sharon', 43.7820128, -72.460651, ST_GeomFromText('POINT(43.7820128 -72.460651)', 4326), 43.8641667, -72.4261111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457416', 'Fee Fee Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'Rouses Point', 44.8962897, -73.266478, ST_GeomFromText('POINT(44.8962897 -73.266478)', 4326), NULL, NULL, '1980-10-29', '2017-01-28', NULL, NULL, NULL),
  ('1457417', 'Feigel Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Bolton Mountain', 44.4841506, -72.8746522, ST_GeomFromText('POINT(44.4841506 -72.8746522)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457420', 'Felton Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Sudbury', 43.7825081, -73.2279964, ST_GeomFromText('POINT(43.7825081 -73.2279964)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457422', 'Ferdinand Bog', 'Swamp', 'Vermont', 'VT', 'Essex', 'Maidstone Lake', 44.6834527, -71.7139841, ST_GeomFromText('POINT(44.6834527 -71.7139841)', 4326), NULL, NULL, '1980-10-29', '2011-10-13', NULL, NULL, NULL),
  ('1457423', 'Ferguson Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Stannard', 44.6189476, -72.1377956, ST_GeomFromText('POINT(44.6189476 -72.1377956)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457425', 'Ferry Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Randolph', 43.9987282, -72.6901461, ST_GeomFromText('POINT(43.9987282 -72.6901461)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457429', 'Finel Hollow', 'Valley', 'Vermont', 'VT', 'Rutland', 'Poultney', 43.528036, -73.1934392, ST_GeomFromText('POINT(43.528036 -73.1934392)', 4326), 43.5539144, -73.1800372, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1457430', 'Finel Hollow Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Poultney', 43.5278465, -73.1934418, ST_GeomFromText('POINT(43.5278465 -73.1934418)', 4326), 43.5625, -73.1266667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457431', 'First Branch White River', 'Stream', 'Vermont', 'VT', 'Windsor', 'South Royalton', 43.8247896, -72.5200979, ST_GeomFromText('POINT(43.8247896 -72.5200979)', 4326), 44.0878413, -72.4976027, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457432', 'First Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Bloomfield', 44.7561605, -71.6428672, ST_GeomFromText('POINT(44.7561605 -71.6428672)', 4326), 44.7502778, -71.6513889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457433', 'First Creek', 'Stream', 'Vermont', 'VT', 'Franklin', 'East Alburg', 44.9286531, -73.1684638, ST_GeomFromText('POINT(44.9286531 -73.1684638)', 4326), 44.9388889, -73.1608333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457434', 'Fish Bladder Island', 'Island', 'Vermont', 'VT', 'Grand Isle', 'South Hero', 44.6719893, -73.2531858, ST_GeomFromText('POINT(44.6719893 -73.2531858)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457436', 'Fish Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Putnam', 43.6395144, -73.3962025, ST_GeomFromText('POINT(43.6395144 -73.3962025)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457437', 'Fish Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Randolph Center', 43.9039508, -72.6185756, ST_GeomFromText('POINT(43.9039508 -72.6185756)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1457438', 'Fisher Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Bloomfield', 44.8633814, -71.68648, ST_GeomFromText('POINT(44.8633814 -71.68648)', 4326), 44.8936587, -71.6384228, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457439', 'Fisher Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Craftsbury', 44.7075746, -72.2673013, ST_GeomFromText('POINT(44.7075746 -72.2673013)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457440', 'Fisk Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.8483486, -73.3656512, ST_GeomFromText('POINT(44.8483486 -73.3656512)', 4326), NULL, NULL, '1980-10-29', '2017-01-28', NULL, NULL, NULL),
  ('1457442', 'Fitch Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Maidstone Lake', 44.6317199, -71.7023122, ST_GeomFromText('POINT(44.6317199 -71.7023122)', 4326), 44.6633333, -71.7427778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457445', 'Fivemile Point', 'Cape', 'Vermont', 'VT', 'Addison', 'Crown Point', 43.9047809, -73.3937314, ST_GeomFromText('POINT(43.9047809 -73.3937314)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457446', 'Flagg Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Stannard', 44.5758861, -72.2439918, ST_GeomFromText('POINT(44.5758861 -72.2439918)', 4326), 44.5644444, -72.2138889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457447', 'Flagg Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Stannard', 44.5651655, -72.2074391, ST_GeomFromText('POINT(44.5651655 -72.2074391)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1457448', 'Mount Flamstead', 'Summit', 'Vermont', 'VT', 'Windsor', 'Chester', 43.2801562, -72.5883383, ST_GeomFromText('POINT(43.2801562 -72.5883383)', 4326), NULL, NULL, '1980-10-29', '2022-09-08', NULL, NULL, NULL),
  ('1457449', 'Flanders Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hanover', 43.7299684, -72.3022727, ST_GeomFromText('POINT(43.7299684 -72.3022727)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1457450', 'Flat Hill', 'Summit', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.2372645, -73.2190497, ST_GeomFromText('POINT(43.2372645 -73.2190497)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1457451', 'Flat Rock', 'Pillar', 'Vermont', 'VT', 'Chittenden', 'Charlotte', 44.2661635, -73.2959588, ST_GeomFromText('POINT(44.2661635 -73.2959588)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457452', 'Flat Rock', 'Summit', 'Vermont', 'VT', 'Rutland', 'West Rutland', 43.5508935, -73.0045494, ST_GeomFromText('POINT(43.5508935 -73.0045494)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457454', 'Fletcher Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Woodstock South', 43.5706166, -72.5784723, ST_GeomFromText('POINT(43.5706166 -72.5784723)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457455', 'Fletcher Mountain', 'Summit', 'Vermont', 'VT', 'Franklin', 'Jeffersonville', 44.7189748, -72.7988683, ST_GeomFromText('POINT(44.7189748 -72.7988683)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457456', 'Fleury Bay', 'Bay', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.8400412, -73.3595776, ST_GeomFromText('POINT(44.8400412 -73.3595776)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457457', 'Flint Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Randolph', 43.9542313, -72.7259402, ST_GeomFromText('POINT(43.9542313 -72.7259402)', 4326), 43.9905556, -72.71, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457460', 'Mount Florona', 'Summit', 'Vermont', 'VT', 'Addison', 'Vergennes East', 44.2381945, -73.1569139, ST_GeomFromText('POINT(44.2381945 -73.1569139)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457461', 'Flower Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'West Burke', 44.627831, -71.8998165, ST_GeomFromText('POINT(44.627831 -71.8998165)', 4326), 44.616998, -71.8450931, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457462', 'Flynn Hill', 'Summit', 'Vermont', 'VT', 'Essex', 'Groveton', 44.5466523, -71.5986353, ST_GeomFromText('POINT(44.5466523 -71.5986353)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457463', 'Flynn Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Underhill', 44.5565863, -72.8933086, ST_GeomFromText('POINT(44.5565863 -72.8933086)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457468', 'Foot Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Johnson', 44.6414394, -72.709844, ST_GeomFromText('POINT(44.6414394 -72.709844)', 4326), 44.7061111, -72.6838889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457470', 'Forbes Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Benson', 43.6578648, -73.3289353, ST_GeomFromText('POINT(43.6578648 -73.3289353)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457471', 'Forest Lake', 'Lake', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.4078444, -72.441513, ST_GeomFromText('POINT(44.4078444 -72.441513)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', 'Official', 'Board Decision', '1973-01-01'),
  ('1457472', 'Forest Lake', 'Lake', 'Vermont', 'VT', 'Essex', 'Averill', 44.9849091, -71.6817188, ST_GeomFromText('POINT(44.9849091 -71.6817188)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1457473', 'Fort Cassin Point', 'Cape', 'Vermont', 'VT', 'Addison', 'Vergennes West', 44.2269972, -73.3248477, ST_GeomFromText('POINT(44.2269972 -73.3248477)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457474', 'Fortier Pond', 'Lake', 'Vermont', 'VT', 'Addison', 'Sudbury', 43.778475, -73.2432162, ST_GeomFromText('POINT(43.778475 -73.2432162)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1457475', 'Foster Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.3934116, -72.4331573, ST_GeomFromText('POINT(44.3934116 -72.4331573)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457476', 'Foster Notch', 'Gap', 'Vermont', 'VT', 'Orange', 'Knox Mountain', 44.1527741, -72.3681017, ST_GeomFromText('POINT(44.1527741 -72.3681017)', 4326), NULL, NULL, '1980-10-29', '2015-02-06', NULL, NULL, NULL),
  ('1457477', 'Fosters Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Peacham', 44.32851, -72.210603, ST_GeomFromText('POINT(44.32851 -72.210603)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1457482', 'Fowler Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Jacksonville', 42.7567495, -72.7789836, ST_GeomFromText('POINT(42.7567495 -72.7789836)', 4326), 42.7395274, -72.7887061, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457483', 'Fox Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Northfield', 42.7429881, -72.4816669, ST_GeomFromText('POINT(42.7429881 -72.4816669)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1457484', 'Fox Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Georgia Plains', 44.6267197, -73.1943808, ST_GeomFromText('POINT(44.6267197 -73.1943808)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457485', 'Fox Hill', 'Summit', 'Vermont', 'VT', 'Franklin', 'Fairfield', 44.7967054, -72.9137464, ST_GeomFromText('POINT(44.7967054 -72.9137464)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457486', 'Fox Island', 'Island', 'Vermont', 'VT', 'Rutland', 'Sudbury', 43.8383954, -73.1817809, ST_GeomFromText('POINT(43.8383954 -73.1817809)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457490', 'Freestone Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Delectable Mountain', 43.6384969, -72.6759857, ST_GeomFromText('POINT(43.6384969 -72.6759857)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457491', 'French Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Governors Mountain', 42.7650368, -72.6853229, ST_GeomFromText('POINT(42.7650368 -72.6853229)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457492', 'French Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.5460948, -72.4992579, ST_GeomFromText('POINT(43.5460948 -72.4992579)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL),
  ('1457493', 'French Hill Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Sterling Mountain', 44.60894, -72.6881756, ST_GeomFromText('POINT(44.60894 -72.6881756)', 4326), 44.5988889, -72.7438889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457494', 'French Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Bloomfield', 44.7708619, -71.6839369, ST_GeomFromText('POINT(44.7708619 -71.6839369)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457495', 'Frost Hollow', 'Valley', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.1900215, -73.1412839, ST_GeomFromText('POINT(43.1900215 -73.1412839)', 4326), 43.1977243, -73.1610684, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1457496', 'Frost Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Sutton', 44.6513737, -72.1140744, ST_GeomFromText('POINT(44.6513737 -72.1140744)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1457498', 'Fryingpan Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Eden', 44.732657, -72.5783619, ST_GeomFromText('POINT(44.732657 -72.5783619)', 4326), 44.7613216, -72.5867694, '1980-10-29', '2019-11-12', NULL, NULL, NULL),
  ('1457499', 'Fullam Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Walpole', 43.0456352, -72.4625885, ST_GeomFromText('POINT(43.0456352 -72.4625885)', 4326), 43.058135, -72.5064779, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457500', 'Fuller Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Knox Mountain', 44.1785553, -72.2841543, ST_GeomFromText('POINT(44.1785553 -72.2841543)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457501', 'Fuller Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Concord', 44.3924138, -71.8963309, ST_GeomFromText('POINT(44.3924138 -71.8963309)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457502', 'Mount Fuller', 'Summit', 'Vermont', 'VT', 'Addison', 'Vergennes East', 44.2456939, -73.1878957, ST_GeomFromText('POINT(44.2456939 -73.1878957)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457503', 'Fulling Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.6164593, -72.3942588, ST_GeomFromText('POINT(43.6164593 -72.3942588)', 4326), 43.5963889, -72.4313889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457504', 'Fullon Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'South Strafford', 43.8314579, -72.294259, ST_GeomFromText('POINT(43.8314579 -72.294259)', 4326), 43.8502778, -72.2980556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457508', 'Gallup Branch', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Mount Mansfield', 44.5994953, -72.8065141, ST_GeomFromText('POINT(44.5994953 -72.8065141)', 4326), 44.5738889, -72.8066667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457511', 'Gallup Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Barre East', 44.2433845, -72.465381, ST_GeomFromText('POINT(44.2433845 -72.465381)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1457513', 'Gallup Pinnacle', 'Pillar', 'Vermont', 'VT', 'Windham', 'Colrain', 42.748694, -72.67287, ST_GeomFromText('POINT(42.748694 -72.67287)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457514', 'Gallup Point', 'Cape', 'Vermont', 'VT', 'Rutland', 'Putnam', 43.6745084, -73.4059486, ST_GeomFromText('POINT(43.6745084 -73.4059486)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457515', 'Galusha Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Groton', 44.1510115, -72.1997107, ST_GeomFromText('POINT(44.1510115 -72.1997107)', 4326), NULL, NULL, '1980-10-29', '2023-11-17', NULL, NULL, NULL),
  ('1457516', 'Gander Bay', 'Bay', 'Vermont', 'VT', 'Franklin', 'East Alburg', 44.992541, -73.143184, ST_GeomFromText('POINT(44.992541 -73.143184)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457517', 'Ganson Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.7361974, -73.1549411, ST_GeomFromText('POINT(43.7361974 -73.1549411)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457518', 'Garden Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'West Topsham', 44.0259825, -72.3549651, ST_GeomFromText('POINT(44.0259825 -72.3549651)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1457519', 'Garden Island', 'Island', 'Vermont', 'VT', 'Chittenden', 'Charlotte', 44.2825521, -73.2954035, ST_GeomFromText('POINT(44.2825521 -73.2954035)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457520', 'Gardiner Island', 'Island', 'Vermont', 'VT', 'Addison', 'Charlotte', 44.2503306, -73.2870694, ST_GeomFromText('POINT(44.2503306 -73.2870694)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457523', 'Garvin Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.5817279, -72.4845361, ST_GeomFromText('POINT(43.5817279 -72.4845361)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL),
  ('1457527', 'Gates Hill', 'Summit', 'Vermont', 'VT', 'Franklin', 'Sheldon Springs', 44.9639542, -72.9154669, ST_GeomFromText('POINT(44.9639542 -72.9154669)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1457528', 'Gates Pond', 'Lake', 'Vermont', 'VT', 'Windham', 'Jacksonville', 42.8189219, -72.806811, ST_GeomFromText('POINT(42.8189219 -72.806811)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1457529', 'Gaudette Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Norton Pond', 44.9750466, -71.8231505, ST_GeomFromText('POINT(44.9750466 -71.8231505)', 4326), 44.9986574, -71.8789845, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457533', 'Georgia Mountain', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Milton', 44.660479, -73.0690162, ST_GeomFromText('POINT(44.660479 -73.0690162)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1457535', 'Giards Bay', 'Bay', 'Vermont', 'VT', 'Addison', 'Crown Point', 43.9792239, -73.4001221, ST_GeomFromText('POINT(43.9792239 -73.4001221)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457536', 'Giddings Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.7031202, -73.1851117, ST_GeomFromText('POINT(43.7031202 -73.1851117)', 4326), 43.7277778, -73.1277778, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457537', 'Giddings Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Enosburg Falls', 44.905324, -72.8162453, ST_GeomFromText('POINT(44.905324 -72.8162453)', 4326), 44.9602778, -72.8188889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457538', 'Giddings Hill', 'Summit', 'Vermont', 'VT', 'Franklin', 'Bakersfield', 44.8163324, -72.8098494, ST_GeomFromText('POINT(44.8163324 -72.8098494)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457539', 'Gihon River', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Johnson', 44.6339396, -72.6848426, ST_GeomFromText('POINT(44.6339396 -72.6848426)', 4326), 44.7158827, -72.5153897, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457540', 'Gilbert Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Woodstock North', 43.6511714, -72.5356494, ST_GeomFromText('POINT(43.6511714 -72.5356494)', 4326), NULL, NULL, '1980-10-29', '2018-09-14', NULL, NULL, NULL),
  ('1457542', 'Gile Mountain', 'Summit', 'Vermont', 'VT', 'Windsor', 'South Strafford', 43.789227, -72.3520364, ST_GeomFromText('POINT(43.789227 -72.3520364)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1457543', 'Mount Gilead', 'Summit', 'Vermont', 'VT', 'Windsor', 'Ludlow', 43.4350628, -72.6425938, ST_GeomFromText('POINT(43.4350628 -72.6425938)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457545', 'Gillett Pond', 'Lake', 'Vermont', 'VT', 'Chittenden', 'Huntington', 44.3539197, -72.9641228, ST_GeomFromText('POINT(44.3539197 -72.9641228)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1457546', 'Gillette Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hanover', 43.6868817, -72.3368442, ST_GeomFromText('POINT(43.6868817 -72.3368442)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1457548', 'Gilman Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Vershire', 43.916757, -72.3368892, ST_GeomFromText('POINT(43.916757 -72.3368892)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457550', 'Gilpin Mountain', 'Summit', 'Vermont', 'VT', 'Orleans', 'North Troy', 44.9085216, -72.495017, ST_GeomFromText('POINT(44.9085216 -72.495017)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457551', 'Gilson Mountain', 'Summit', 'Vermont', 'VT', 'Franklin', 'Gilson Mountain', 44.7294692, -72.9132577, ST_GeomFromText('POINT(44.7294692 -72.9132577)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457552', 'Ginseng Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Governors Mountain', 42.8437, -72.6530775, ST_GeomFromText('POINT(42.8437 -72.6530775)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457553', 'Gleason Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Huntington', 44.3706102, -72.8778985, ST_GeomFromText('POINT(44.3706102 -72.8778985)', 4326), 44.335, -72.8833333, '1980-10-29', NULL, 'Official', 'Board Decision', '1963-01-01'),
  ('1457555', 'Glen Falls Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Fairlee', 43.9197902, -72.1581458, ST_GeomFromText('POINT(43.9197902 -72.1581458)', 4326), 43.9375, -72.185, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457556', 'Glen Lake', 'Reservoir', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.6635598, -73.2390144, ST_GeomFromText('POINT(43.6635598 -73.2390144)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL),
  ('1457562', 'Gold Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Stowe', 44.4450542, -72.7084514, ST_GeomFromText('POINT(44.4450542 -72.7084514)', 4326), 44.4339438, -72.6198366, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457563', 'Goldsbury Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Barre West', 44.227661, -72.5243803, ST_GeomFromText('POINT(44.227661 -72.5243803)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457564', 'Goodall Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.426477, -72.4376653, ST_GeomFromText('POINT(44.426477 -72.4376653)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1457565', 'Goodhue Ledge', 'Bench', 'Vermont', 'VT', 'Orange', 'Vershire', 43.9828444, -72.3134289, ST_GeomFromText('POINT(43.9828444 -72.3134289)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457568', 'Goodsell Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Enosburg Falls', 44.9053237, -72.8606895, ST_GeomFromText('POINT(44.9053237 -72.8606895)', 4326), 44.8675467, -72.8481894, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457569', 'Goodwin Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Randolph Center', 43.9065531, -72.5256269, ST_GeomFromText('POINT(43.9065531 -72.5256269)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457570', 'Goodwin Mountain', 'Summit', 'Vermont', 'VT', 'Orleans', 'Westmore', 44.774193, -72.0069499, ST_GeomFromText('POINT(44.774193 -72.0069499)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457571', 'Goose Bay', 'Bay', 'Vermont', 'VT', 'Franklin', 'East Alburg', 44.9811525, -73.1279065, ST_GeomFromText('POINT(44.9811525 -73.1279065)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457572', 'Goose Creek', 'Stream', 'Vermont', 'VT', 'Addison', 'Vergennes West', 44.2228313, -73.2781797, ST_GeomFromText('POINT(44.2228313 -73.2781797)', 4326), 44.2061111, -73.3069444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457574', 'Goose Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'Rouses Point', 44.9226984, -73.2701764, ST_GeomFromText('POINT(44.9226984 -73.2701764)', 4326), NULL, NULL, '1980-10-29', '2017-01-28', NULL, NULL, NULL),
  ('1457575', 'Goose Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Bolton Mountain', 44.4108336, -72.8338007, ST_GeomFromText('POINT(44.4108336 -72.8338007)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1457577', 'Gore Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Norton Pond', 44.9195478, -71.7937462, ST_GeomFromText('POINT(44.9195478 -71.7937462)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457582', 'Goslant Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Marshfield', 44.3027185, -72.3040621, ST_GeomFromText('POINT(44.3027185 -72.3040621)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1457583', 'Goudreault Hill', 'Summit', 'Vermont', 'VT', 'Essex', 'Miles Pond', 44.4415472, -71.8466702, ST_GeomFromText('POINT(44.4415472 -71.8466702)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457584', 'Gould Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Killington Peak', 43.5395138, -72.8745471, ST_GeomFromText('POINT(43.5395138 -72.8745471)', 4326), 43.5675, -72.8247222, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457585', 'Goulden Ridge', 'Ridge', 'Vermont', 'VT', 'Windsor', 'Windsor', 43.3901848, -72.4449818, ST_GeomFromText('POINT(43.3901848 -72.4449818)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL),
  ('1457587', 'Goupee Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Spectacle Pond', 44.7853272, -71.8267607, ST_GeomFromText('POINT(44.7853272 -71.8267607)', 4326), 44.7580556, -71.8597222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457588', 'Gove Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'South Strafford', 43.8226477, -72.3212059, ST_GeomFromText('POINT(43.8226477 -72.3212059)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1457589', 'Governors Mountain', 'Summit', 'Vermont', 'VT', 'Windham', 'Governors Mountain', 42.8261845, -72.6666877, ST_GeomFromText('POINT(42.8261845 -72.6666877)', 4326), NULL, NULL, '1980-10-29', '2022-09-02', NULL, NULL, NULL),
  ('1457593', 'Graham Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Poultney', 43.619302, -73.1897915, ST_GeomFromText('POINT(43.619302 -73.1897915)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457596', 'Granby Bog', 'Swamp', 'Vermont', 'VT', 'Essex', 'Maidstone Lake', 44.6353016, -71.6957605, ST_GeomFromText('POINT(44.6353016 -71.6957605)', 4326), NULL, NULL, '1980-10-29', '2011-10-13', NULL, NULL, NULL),
  ('1457597', 'Granby Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Gallup Mills', 44.5494999, -71.7698132, ST_GeomFromText('POINT(44.5494999 -71.7698132)', 4326), 44.5775548, -71.7378682, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457598', 'Granby Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Sutton', 44.6710008, -72.1150388, ST_GeomFromText('POINT(44.6710008 -72.1150388)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457599', 'Granby Stream', 'Stream', 'Vermont', 'VT', 'Essex', 'Maidstone Lake', 44.6503304, -71.6853674, ST_GeomFromText('POINT(44.6503304 -71.6853674)', 4326), 44.6106094, -71.6820336, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457605', 'Grandmadam Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Woodstock North', 43.6456621, -72.6158436, ST_GeomFromText('POINT(43.6456621 -72.6158436)', 4326), NULL, NULL, '1980-10-29', '2018-09-14', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457606', 'Grandpa Knob', 'Summit', 'Vermont', 'VT', 'Rutland', 'Proctor', 43.65863, -73.1063705, ST_GeomFromText('POINT(43.65863 -73.1063705)', 4326), NULL, NULL, '1980-10-29', '2022-09-08', NULL, NULL, NULL),
  ('1457609', 'Grannyhand Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'South Strafford', 43.8603686, -72.3663751, ST_GeomFromText('POINT(43.8603686 -72.3663751)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457610', 'Grant Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Andover', 43.3695171, -72.7203743, ST_GeomFromText('POINT(43.3695171 -72.7203743)', 4326), 43.3680556, -72.7491667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457611', 'Grass Pond', 'Lake', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.5468836, -72.7372375, ST_GeomFromText('POINT(43.5468836 -72.7372375)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1457612', 'Grassy Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Newfane', 42.9834137, -72.6323143, ST_GeomFromText('POINT(42.9834137 -72.6323143)', 4326), 43.0800788, -72.5789798, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457613', 'Gravel Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Bellows Falls', 43.2495199, -72.4384219, ST_GeomFromText('POINT(43.2495199 -72.4384219)', 4326), 43.2553531, -72.4603666, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457614', 'Graves Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Waterbury', 44.3411675, -72.7617847, ST_GeomFromText('POINT(44.3411675 -72.7617847)', 4326), 44.3433901, -72.6759482, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457616', 'Graves Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Burke Mountain', 44.538395, -71.9699236, ST_GeomFromText('POINT(44.538395 -71.9699236)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457617', 'Graveyard Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.8312829, -73.2864077, ST_GeomFromText('POINT(44.8312829 -73.2864077)', 4326), NULL, NULL, '1980-10-29', '2016-12-02', 'Official', 'Board Decision', '1967-01-01'),
  ('1457618', 'Gray Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Island Pond', 44.7989382, -71.9912079, ST_GeomFromText('POINT(44.7989382 -71.9912079)', 4326), 44.7711111, -71.9777778, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457619', 'Grays Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Sutton', 44.6383218, -72.1229275, ST_GeomFromText('POINT(44.6383218 -72.1229275)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457620', 'Grays Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Concord', 44.4961084, -71.9903145, ST_GeomFromText('POINT(44.4961084 -71.9903145)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1457621', 'Great Back Bay', 'Bay', 'Vermont', 'VT', 'Chittenden', 'Colchester', 44.6033798, -73.232352, ST_GeomFromText('POINT(44.6033798 -73.232352)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457622', 'Great Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Chester', 43.3317405, -72.5189793, ST_GeomFromText('POINT(43.3317405 -72.5189793)', 4326), 43.3702778, -72.6202778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457623', 'Great Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Middlesex', 44.2900581, -72.672336, ST_GeomFromText('POINT(44.2900581 -72.672336)', 4326), 44.3486111, -72.6505556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457624', 'Great Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Plainfield', 44.2772817, -72.4278816, ST_GeomFromText('POINT(44.2772817 -72.4278816)', 4326), 44.213117, -72.3428774, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457625', 'Great Hosmer Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Craftsbury', 44.6938854, -72.361043, ST_GeomFromText('POINT(44.6938854 -72.361043)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1457626', 'Great Roaring Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.5386807, -72.7442658, ST_GeomFromText('POINT(43.5386807 -72.7442658)', 4326), 43.5286808, -72.8062118, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457629', 'Green Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Averill', 44.9257434, -71.727548, ST_GeomFromText('POINT(44.9257434 -71.727548)', 4326), NULL, NULL, '1980-10-29', '2023-07-21', NULL, NULL, NULL),
  ('1457634', 'Green Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.8304843, -73.2787436, ST_GeomFromText('POINT(44.8304843 -73.2787436)', 4326), NULL, NULL, '1980-10-29', '2016-11-23', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457637', 'Green River', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Morrisville', 44.5722745, -72.5153893, ST_GeomFromText('POINT(44.5722745 -72.5153893)', 4326), 44.6969942, -72.5051113, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457638', 'Green River Reservoir', 'Reservoir', 'Vermont', 'VT', 'Lamoille', 'Eden', 44.632227, -72.5194624, ST_GeomFromText('POINT(44.632227 -72.5194624)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1457642', 'Greens Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'West Charleston', 44.9353248, -72.1020439, ST_GeomFromText('POINT(44.9353248 -72.1020439)', 4326), 44.9547222, -72.0416667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457646', 'Greensboro Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Caspian Lake', 44.5281093, -72.2842707, ST_GeomFromText('POINT(44.5281093 -72.2842707)', 4326), 44.5775, -72.2986111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457649', 'Greenwood Lake', 'Lake', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.4588355, -72.4250611, ST_GeomFromText('POINT(44.4588355 -72.4250611)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1457650', 'Greer Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Seneca Mountain', 44.6347753, -71.8139815, ST_GeomFromText('POINT(44.6347753 -71.8139815)', 4326), 44.623109, -71.824815, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457651', 'Gregg Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Stowe', 44.4010346, -72.7389121, ST_GeomFromText('POINT(44.4010346 -72.7389121)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457652', 'Griggs Mountain', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hanover', 43.7292275, -72.3728693, ST_GeomFromText('POINT(43.7292275 -72.3728693)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457653', 'Griggs Pond', 'Reservoir', 'Vermont', 'VT', 'Orleans', 'Irasburg', 44.7731297, -72.3252781, ST_GeomFromText('POINT(44.7731297 -72.3252781)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1457654', 'Gritt Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Plainfield', 44.3225494, -72.4209367, ST_GeomFromText('POINT(44.3225494 -72.4209367)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457655', 'Groat Creek', 'Stream', 'Vermont', 'VT', 'Franklin', 'Sheldon Springs OE N', 45.0222649, -72.9231864, ST_GeomFromText('POINT(45.0222649 -72.9231864)', 4326), 45.0133333, -72.8752778, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1457656', 'Grosse Point', 'Cape', 'Vermont', 'VT', 'Addison', 'Vergennes West', 44.2372749, -73.3154032, ST_GeomFromText('POINT(44.2372749 -73.3154032)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457659', 'Lake Groton', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Marshfield', 44.2698591, -72.2648952, ST_GeomFromText('POINT(44.2698591 -72.2648952)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', 'Official', 'Board Decision', '1972-01-01'),
  ('1457660', 'Grout Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.5931018, -72.391246, ST_GeomFromText('POINT(43.5931018 -72.391246)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL),
  ('1457661', 'Grout Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Sutton', 44.6448934, -72.1106562, ST_GeomFromText('POINT(44.6448934 -72.1106562)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457665', 'Guernsey Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Plainfield', 44.3050589, -72.4076037, ST_GeomFromText('POINT(44.3050589 -72.4076037)', 4326), 44.3319444, -72.4122222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457670', 'Guillmettes Pond', 'Lake', 'Vermont', 'VT', 'Franklin', 'Richford', 44.9609577, -72.6716177, ST_GeomFromText('POINT(44.9609577 -72.6716177)', 4326), NULL, NULL, '1980-10-29', '2019-11-26', NULL, NULL, NULL),
  ('1457671', 'Gulf Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Newfane', 42.9128588, -72.7164826, ST_GeomFromText('POINT(42.9128588 -72.7164826)', 4326), 42.9036111, -72.6991667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457672', 'Gulf Stream', 'Stream', 'Vermont', 'VT', 'Windsor', 'Woodstock North', 43.6425693, -72.5239834, ST_GeomFromText('POINT(43.6425693 -72.5239834)', 4326), 43.7014571, -72.627043, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457673', 'Gull Island', 'Island', 'Vermont', 'VT', 'Grand Isle', 'Saint Albans Bay', 44.8480979, -73.2381862, ST_GeomFromText('POINT(44.8480979 -73.2381862)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457674', 'Gull Rock', 'Island', 'Vermont', 'VT', 'Orleans', 'Newport', 44.9939349, -72.2109355, ST_GeomFromText('POINT(44.9939349 -72.2109355)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457675', 'Gully Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Poultney', 43.6095116, -73.1264978, ST_GeomFromText('POINT(43.6095116 -73.1264978)', 4326), 43.5709014, -73.1023302, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457676', 'Gunners Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Barre West', 44.2039498, -72.5098276, ST_GeomFromText('POINT(44.2039498 -72.5098276)', 4326), 44.2397826, -72.4337144, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457677', 'Gut Pond', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Eden', 44.6924707, -72.5213319, ST_GeomFromText('POINT(44.6924707 -72.5213319)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1457679', 'Haden Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Knox Mountain', 44.1350388, -72.3282991, ST_GeomFromText('POINT(44.1350388 -72.3282991)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457680', 'Hadley Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Killington Peak', 43.6082936, -72.7637857, ST_GeomFromText('POINT(43.6082936 -72.7637857)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1457681', 'Hadley Mountain', 'Summit', 'Vermont', 'VT', 'Orleans', 'Hazens Notch', 44.7568494, -72.5076196, ST_GeomFromText('POINT(44.7568494 -72.5076196)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457682', 'Hager Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Jacksonville', 42.7650827, -72.7934286, ST_GeomFromText('POINT(42.7650827 -72.7934286)', 4326), 42.738694, -72.8375963, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457683', 'Hale Hollow', 'Valley', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.5702925, -72.6640087, ST_GeomFromText('POINT(43.5702925 -72.6640087)', 4326), 43.5311427, -72.6576003, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1457684', 'Halfmoon Cove', 'Bay', 'Vermont', 'VT', 'Chittenden', 'Colchester Point', 44.533381, -73.2534621, ST_GeomFromText('POINT(44.533381 -73.2534621)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457685', 'Halfmoon Lake', 'Lake', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.6929327, -73.2190543, ST_GeomFromText('POINT(43.6929327 -73.2190543)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL),
  ('1457686', 'Halfmoon Pond', 'Lake', 'Vermont', 'VT', 'Franklin', 'Gilson Mountain', 44.6971501, -72.9301445, ST_GeomFromText('POINT(44.6971501 -72.9301445)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1457687', 'Halfway Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Randolph Center', 43.9603434, -72.5517684, ST_GeomFromText('POINT(43.9603434 -72.5517684)', 4326), 44.0358976, -72.5498256, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457689', 'Halfway Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Morgan Center', 44.978803, -71.9019753, ST_GeomFromText('POINT(44.978803 -71.9019753)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1457690', 'Halibut Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Stone Mountain', 44.5438335, -71.6457946, ST_GeomFromText('POINT(44.5438335 -71.6457946)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457692', 'Halifax Hollow', 'Valley', 'Vermont', 'VT', 'Bennington', 'North Pownal', 42.7895372, -73.2577355, ST_GeomFromText('POINT(42.7895372 -73.2577355)', 4326), 42.7739987, -73.2823204, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1457693', 'Hall Bay', 'Bay', 'Vermont', 'VT', 'Rutland', 'Wells', 43.4661813, -73.2059413, ST_GeomFromText('POINT(43.4661813 -73.2059413)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457694', 'Hall Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Stone Mountain', 44.5003349, -71.694255, ST_GeomFromText('POINT(44.5003349 -71.694255)', 4326), 44.5236111, -71.7019444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457695', 'Hall Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Sterling Mountain', 44.6069956, -72.6798419, ST_GeomFromText('POINT(44.6069956 -72.6798419)', 4326), 44.5894444, -72.6905556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457696', 'Hall Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Saxtons River', 43.2392422, -72.5553684, ST_GeomFromText('POINT(43.2392422 -72.5553684)', 4326), 43.220909, -72.6420375, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457698', 'Hall Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.5528238, -72.4706896, ST_GeomFromText('POINT(43.5528238 -72.4706896)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL),
  ('1457699', 'Halladay Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Brattleboro', 42.8667484, -72.616758, ST_GeomFromText('POINT(42.8667484 -72.616758)', 4326), 42.8889702, -72.6884264, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457700', 'Halls Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Newbury', 44.0245104, -72.09259, ST_GeomFromText('POINT(44.0245104 -72.09259)', 4326), 44.0797222, -72.1238889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457701', 'Halls Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Littleton', 44.3481158, -71.8503683, ST_GeomFromText('POINT(44.3481158 -71.8503683)', 4326), 44.3931147, -71.8662025, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457702', 'Halls Lake', 'Lake', 'Vermont', 'VT', 'Orange', 'Newbury', 44.0862117, -72.1232609, ST_GeomFromText('POINT(44.0862117 -72.1232609)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1457704', 'Hamilton Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Bridport', 43.9844938, -73.2865068, ST_GeomFromText('POINT(43.9844938 -73.2865068)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457705', 'Hamilton Hollow', 'Valley', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.1530836, -73.187163, ST_GeomFromText('POINT(43.1530836 -73.187163)', 4326), 43.1494894, -73.1515651, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1457706', 'Mount Hamilton', 'Summit', 'Vermont', 'VT', 'Rutland', 'Benson', 43.6342235, -73.278166, ST_GeomFromText('POINT(43.6342235 -73.278166)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457707', 'Hammond Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Lyndonville', 44.6171468, -72.0810936, ST_GeomFromText('POINT(44.6171468 -72.0810936)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457709', 'Hampshire Hill', 'Ridge', 'Vermont', 'VT', 'Washington', 'Mount Worcester', 44.3969491, -72.5759202, ST_GeomFromText('POINT(44.3969491 -72.5759202)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457710', 'Hampshire Hollow', 'Valley', 'Vermont', 'VT', 'Rutland', 'Poultney', 43.5235662, -73.172406, ST_GeomFromText('POINT(43.5235662 -73.172406)', 4326), 43.5438582, -73.1652478, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1457711', 'Hampshire Hollow Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Poultney', 43.5214578, -73.1828859, ST_GeomFromText('POINT(43.5214578 -73.1828859)', 4326), 43.5486111, -73.1588889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457712', 'Hancock Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Mount Worcester', 44.3978339, -72.552611, ST_GeomFromText('POINT(44.3978339 -72.552611)', 4326), 44.4344444, -72.6038889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457713', 'Hancock Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Island Pond', 44.7568669, -71.8994083, ST_GeomFromText('POINT(44.7568669 -71.8994083)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1457714', 'Hands Cove', 'Bay', 'Vermont', 'VT', 'Addison', 'Orwell', 43.8620042, -73.3731744, ST_GeomFromText('POINT(43.8620042 -73.3731744)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457715', 'Hannah Clark Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Jay Peak', 44.8778247, -72.6076212, ST_GeomFromText('POINT(44.8778247 -72.6076212)', 4326), 44.92, -72.5511111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457716', 'Hannah Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Knox Mountain', 44.1519378, -72.3714875, ST_GeomFromText('POINT(44.1519378 -72.3714875)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457717', 'Tenney Pond', 'Reservoir', 'Vermont', 'VT', 'Orange', 'Woodsville', 44.1599388, -72.113172, ST_GeomFromText('POINT(44.1599388 -72.113172)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', 'Official', 'Board Decision', '1979-01-01'),
  ('1457720', 'Happy Hollow', 'Valley', 'Vermont', 'VT', 'Windsor', 'South Royalton', 43.8264497, -72.5262888, ST_GeomFromText('POINT(43.8264497 -72.5262888)', 4326), 43.8458667, -72.5393098, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1457721', 'Happy Valley Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Quechee', 43.6317365, -72.4692599, ST_GeomFromText('POINT(43.6317365 -72.4692599)', 4326), 43.5997922, -72.4728706, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457722', 'Hardigan Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Orwell', 43.8472737, -73.3278747, ST_GeomFromText('POINT(43.8472737 -73.3278747)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1457724', 'Hardscrabble Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Sutton', 44.6373737, -72.0950869, ST_GeomFromText('POINT(44.6373737 -72.0950869)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457728', 'Hardwood Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.4297776, -72.5351109, ST_GeomFromText('POINT(44.4297776 -72.5351109)', 4326), 44.4656102, -72.5020547, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457729', 'Hardwood Flats', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Mount Worcester', 44.4779371, -72.5018283, ST_GeomFromText('POINT(44.4779371 -72.5018283)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1457731', 'Hardwood Hill', 'Summit', 'Vermont', 'VT', 'Franklin', 'Richford', 44.9697893, -72.6690818, ST_GeomFromText('POINT(44.9697893 -72.6690818)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1457732', 'Hardwood Mountain', 'Summit', 'Vermont', 'VT', 'Washington', 'Marshfield', 44.2838935, -72.343599, ST_GeomFromText('POINT(44.2838935 -72.343599)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457733', 'Hardwood Pond', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Woodbury', 44.4680015, -72.4995079, ST_GeomFromText('POINT(44.4680015 -72.4995079)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1457734', 'Hardwood Ridge', 'Ridge', 'Vermont', 'VT', 'Washington', 'Marshfield', 44.2722684, -72.3275798, ST_GeomFromText('POINT(44.2722684 -72.3275798)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1457735', 'Hardy Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Cavendish', 43.4307122, -72.567978, ST_GeomFromText('POINT(43.4307122 -72.567978)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457737', 'Harlow Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.6100704, -72.3964809, ST_GeomFromText('POINT(43.6100704 -72.3964809)', 4326), 43.5844444, -72.4361111, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457738', 'Harriman Hill', 'Summit', 'Vermont', 'VT', 'Essex', 'Monadnock Mountain OE N', 45.0021344, -71.5875671, ST_GeomFromText('POINT(45.0021344 -71.5875671)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457739', 'Harriman Pond', 'Lake', 'Vermont', 'VT', 'Orange', 'Newbury', 44.1029323, -72.0794745, ST_GeomFromText('POINT(44.1029323 -72.0794745)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1457740', 'Harris Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Saint Johnsbury', 44.4166986, -72.0055406, ST_GeomFromText('POINT(44.4166986 -72.0055406)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1457741', 'Harris Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Stone Mountain', 44.5804537, -71.7013713, ST_GeomFromText('POINT(44.5804537 -71.7013713)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1457743', 'Harrisville Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Governors Mountain', 42.8145266, -72.7384273, ST_GeomFromText('POINT(42.8145266 -72.7384273)', 4326), 42.8527778, -72.745, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457744', 'Hart Hollow', 'Valley', 'Vermont', 'VT', 'Orange', 'Washington', 44.0338594, -72.4531055, ST_GeomFromText('POINT(44.0338594 -72.4531055)', 4326), 44.0718996, -72.4248234, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1457749', 'Hartland Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.5963588, -72.4646411, ST_GeomFromText('POINT(43.5963588 -72.4646411)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL),
  ('1457750', 'Hartley Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Westminster West', 43.1015255, -72.5224203, ST_GeomFromText('POINT(43.1015255 -72.5224203)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457751', 'Hartwell Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Craftsbury', 44.7043094, -72.2931984, ST_GeomFromText('POINT(44.7043094 -72.2931984)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1457753', 'Harvey Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Island Pond', 44.8086603, -71.9831521, ST_GeomFromText('POINT(44.8086603 -71.9831521)', 4326), 44.7955556, -71.9766667, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457755', 'Harvey Lake', 'Reservoir', 'Vermont', 'VT', 'Caledonia', 'Peacham', 44.2939589, -72.1382392, ST_GeomFromText('POINT(44.2939589 -72.1382392)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1457756', 'Harvey Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Peacham', 44.288553, -72.1509891, ST_GeomFromText('POINT(44.288553 -72.1509891)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1457758', 'Hastings Swamp', 'Swamp', 'Vermont', 'VT', 'Essex', 'Miles Pond', 44.4921345, -71.7737714, ST_GeomFromText('POINT(44.4921345 -71.7737714)', 4326), NULL, NULL, '1980-10-29', '2011-10-13', NULL, NULL, NULL),
  ('1457760', 'Hathaway Point', 'Cape', 'Vermont', 'VT', 'Franklin', 'Saint Albans Bay', 44.7800445, -73.1745786, ST_GeomFromText('POINT(44.7800445 -73.1745786)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457763', 'Hawk Rock', 'Summit', 'Vermont', 'VT', 'Caledonia', 'West Burke', 44.7118491, -71.8945822, ST_GeomFromText('POINT(44.7118491 -71.8945822)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457764', 'Hawkins Bay', 'Bay', 'Vermont', 'VT', 'Addison', 'Vergennes West', 44.2464417, -73.2870693, ST_GeomFromText('POINT(44.2464417 -73.2870693)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457765', 'Hawkins Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Burke Mountain', 44.5064452, -71.9695393, ST_GeomFromText('POINT(44.5064452 -71.9695393)', 4326), 44.5263889, -71.9016667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457766', 'Hawkins Mountain', 'Summit', 'Vermont', 'VT', 'Orange', 'Vershire', 43.9456003, -72.3648742, ST_GeomFromText('POINT(43.9456003 -72.3648742)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457767', 'Hawkins Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Mount Worcester', 44.4032119, -72.5009065, ST_GeomFromText('POINT(44.4032119 -72.5009065)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1457768', 'Hawks Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Woodstock North', 43.7445179, -72.55958, ST_GeomFromText('POINT(43.7445179 -72.55958)', 4326), NULL, NULL, '1980-10-29', '2018-09-14', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457769', 'Hawks Mountain', 'Summit', 'Vermont', 'VT', 'Windsor', 'Chester', 43.3680262, -72.5799829, ST_GeomFromText('POINT(43.3680262 -72.5799829)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457771', 'Hay Hill Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Gallup Mills', 44.5286672, -71.7945358, ST_GeomFromText('POINT(44.5286672 -71.7945358)', 4326), 44.5063889, -71.7722222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457772', 'Haynes Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Middletown Springs', 43.4617284, -73.1055332, ST_GeomFromText('POINT(43.4617284 -73.1055332)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1457773', 'Haynesville Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Caspian Lake', 44.5011653, -72.3251053, ST_GeomFromText('POINT(44.5011653 -72.3251053)', 4326), 44.4569998, -72.279825, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457774', 'Haystack Hill', 'Summit', 'Vermont', 'VT', 'Essex', 'Island Pond', 44.7821255, -71.9028505, ST_GeomFromText('POINT(44.7821255 -71.9028505)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457775', 'Haystack Mountain', 'Summit', 'Vermont', 'VT', 'Orleans', 'Sutton', 44.7464639, -72.0021429, ST_GeomFromText('POINT(44.7464639 -72.0021429)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457776', 'Haystack Mountain', 'Summit', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.2370115, -73.1842722, ST_GeomFromText('POINT(43.2370115 -73.1842722)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1457777', 'Haystack Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Wells', 43.3872038, -73.1801894, ST_GeomFromText('POINT(43.3872038 -73.1801894)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457778', 'Haystack Mountain', 'Summit', 'Vermont', 'VT', 'Orleans', 'Hazens Notch', 44.8247228, -72.5385325, ST_GeomFromText('POINT(44.8247228 -72.5385325)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457779', 'Hazen Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.7658758, -73.3201324, ST_GeomFromText('POINT(44.7658758 -73.3201324)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457782', 'Heald Branch', 'Stream', 'Vermont', 'VT', 'Windsor', 'Ludlow', 43.4061833, -72.6367612, ST_GeomFromText('POINT(43.4061833 -72.6367612)', 4326), 43.4172222, -72.6402778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457784', 'Health Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Knox Mountain', 44.2220058, -72.2712083, ST_GeomFromText('POINT(44.2220058 -72.2712083)', 4326), 44.2027778, -72.3086111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457785', 'Heap Pinnacle', 'Pillar', 'Vermont', 'VT', 'Windsor', 'Bethel', 43.8331219, -72.6764915, ST_GeomFromText('POINT(43.8331219 -72.6764915)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457786', 'Heart Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Craftsbury', 44.6997832, -72.3649577, ST_GeomFromText('POINT(44.6997832 -72.3649577)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1457788', 'Hebard Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Randolph', 43.9722936, -72.6294473, ST_GeomFromText('POINT(43.9722936 -72.6294473)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457790', 'Hedgehog Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'East Corinth', 44.0681207, -72.2231496, ST_GeomFromText('POINT(44.0681207 -72.2231496)', 4326), 44.1044444, -72.1902778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457791', 'Hedgehog Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Walpole', 43.1094942, -72.4886976, ST_GeomFromText('POINT(43.1094942 -72.4886976)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457792', 'Hedgehog Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Underhill', 44.5370959, -72.9184597, ST_GeomFromText('POINT(44.5370959 -72.9184597)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457793', 'Hedgehog Hill', 'Summit', 'Vermont', 'VT', 'Franklin', 'Gilson Mountain', 44.6621866, -72.935071, ST_GeomFromText('POINT(44.6621866 -72.935071)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457794', 'Hedgehog Hill', 'Summit', 'Vermont', 'VT', 'Essex', 'Norton Pond', 44.9578808, -71.8623379, ST_GeomFromText('POINT(44.9578808 -71.8623379)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457795', 'Hedgehog Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Stratford', 44.6267166, -71.5946601, ST_GeomFromText('POINT(44.6267166 -71.5946601)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457796', 'Hedgehog Mountain', 'Summit', 'Vermont', 'VT', 'Orleans', 'Sutton', 44.7484518, -72.0335838, ST_GeomFromText('POINT(44.7484518 -72.0335838)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457798', 'Hemingway Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Bridport', 43.9651114, -73.300354, ST_GeomFromText('POINT(43.9651114 -73.300354)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457799', 'Hemlock Island', 'Island', 'Vermont', 'VT', 'Grand Isle', 'Rouses Point', 44.9004392, -73.2876406, ST_GeomFromText('POINT(44.9004392 -73.2876406)', 4326), NULL, NULL, '1980-10-29', '2017-02-03', NULL, NULL, NULL),
  ('1457800', 'Hen Island', 'Island', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.82282, -73.2715199, ST_GeomFromText('POINT(44.82282 -73.2715199)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457801', 'Herrick Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Pawlet', 43.3122964, -73.1653844, ST_GeomFromText('POINT(43.3122964 -73.1653844)', 4326), 43.3219444, -73.1480556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457802', 'Herrick Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Montpelier', 44.3447794, -72.5890002, ST_GeomFromText('POINT(44.3447794 -72.5890002)', 4326), 44.3583898, -72.6551144, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457803', 'Herrick Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'West Rutland', 43.5625595, -73.0988892, ST_GeomFromText('POINT(43.5625595 -73.0988892)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457805', 'Herring Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Northfield', 44.2439481, -72.6592789, ST_GeomFromText('POINT(44.2439481 -72.6592789)', 4326), 44.2361111, -72.7041667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457806', 'Hersey Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Montpelier', 44.3624544, -72.5237416, ST_GeomFromText('POINT(44.3624544 -72.5237416)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457808', 'Hibbard Bay', 'Bay', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.771987, -73.3048543, ST_GeomFromText('POINT(44.771987 -73.3048543)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457809', 'Hibbard Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Bloomfield', 44.7725492, -71.6500897, ST_GeomFromText('POINT(44.7725492 -71.6500897)', 4326), 44.7877778, -71.6386111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457810', 'Hibbard Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Orwell', 43.8142813, -73.2633196, ST_GeomFromText('POINT(43.8142813 -73.2633196)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457811', 'Hibbard Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.8194866, -73.2762423, ST_GeomFromText('POINT(44.8194866 -73.2762423)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457813', 'Hickory Ridge', 'Ridge', 'Vermont', 'VT', 'Windham', 'Westminster West', 43.0399203, -72.5369781, ST_GeomFromText('POINT(43.0399203 -72.5369781)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457814', 'Hidden Lake', 'Reservoir', 'Vermont', 'VT', 'Windham', 'Newfane', 42.8818514, -72.7189474, ST_GeomFromText('POINT(42.8818514 -72.7189474)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1457815', 'High Peak', 'Summit', 'Vermont', 'VT', 'Orange', 'Lyme', 43.859951, -72.215625, ST_GeomFromText('POINT(43.859951 -72.215625)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1457816', 'High Pole Branch', 'Stream', 'Vermont', 'VT', 'Windsor', 'Sharon', 43.7739575, -72.4481505, ST_GeomFromText('POINT(43.7739575 -72.4481505)', 4326), 43.7908333, -72.41, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457817', 'High Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.7003222, -73.2122121, ST_GeomFromText('POINT(43.7003222 -73.2122121)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL),
  ('1457818', 'High Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Sudbury', 43.7532225, -73.1539102, ST_GeomFromText('POINT(43.7532225 -73.1539102)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457819', 'High Rock', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Hinesburg', 44.3441247, -73.1153347, ST_GeomFromText('POINT(44.3441247 -73.1153347)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1457821', 'Highgate Falls', 'Falls', 'Vermont', 'VT', 'Franklin', 'Highgate Center', 44.9347655, -73.0476311, ST_GeomFromText('POINT(44.9347655 -73.0476311)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457824', 'Highgo Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Pawlet', 43.319232, -73.2228841, ST_GeomFromText('POINT(43.319232 -73.2228841)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1457829', 'Hill Point', 'Cape', 'Vermont', 'VT', 'Chittenden', 'Charlotte', 44.3467178, -73.2837377, ST_GeomFromText('POINT(44.3467178 -73.2837377)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457840', 'Hinesburg Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Governors Mountain', 42.7950824, -72.6620367, ST_GeomFromText('POINT(42.7950824 -72.6620367)', 4326), 42.8408333, -72.7019444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457841', 'Hinkley Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Saxtons River', 43.1745212, -72.6078697, ST_GeomFromText('POINT(43.1745212 -72.6078697)', 4326), 43.177021, -72.6462042, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457842', 'Hinkum Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Sudbury', 43.7647498, -73.1680028, ST_GeomFromText('POINT(43.7647498 -73.1680028)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL),
  ('1457847', 'Mount Hoag', 'Summit', 'Vermont', 'VT', 'Rutland', 'Middletown Springs', 43.3781221, -73.0970919, ST_GeomFromText('POINT(43.3781221 -73.0970919)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1457848', 'Hobart Mountain', 'Summit', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.414181, -72.4997026, ST_GeomFromText('POINT(44.414181 -72.4997026)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457849', 'Hobart Ridge', 'Ridge', 'Vermont', 'VT', 'Essex', 'Gallup Mills', 44.5880192, -71.826043, ST_GeomFromText('POINT(44.5880192 -71.826043)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457850', 'Hog Island', 'Island', 'Vermont', 'VT', 'Franklin', 'East Alburg', 44.958365, -73.2021287, ST_GeomFromText('POINT(44.958365 -73.2021287)', 4326), NULL, NULL, '1980-10-29', '2016-12-10', NULL, NULL, NULL),
  ('1457851', 'Hog Island Point', 'Cape', 'Vermont', 'VT', 'Franklin', 'East Alburg', 44.9241845, -73.213396, ST_GeomFromText('POINT(44.9241845 -73.213396)', 4326), NULL, NULL, '1980-10-29', '2017-01-28', NULL, NULL, NULL),
  ('1457852', 'Hogan Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Bellows Falls', 43.2343212, -72.4532289, ST_GeomFromText('POINT(43.2343212 -72.4532289)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457853', 'Hogback', 'Summit', 'Vermont', 'VT', 'Addison', 'Vergennes East', 44.2184729, -73.1285809, ST_GeomFromText('POINT(44.2184729 -73.1285809)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457854', 'Hogback Mountain', 'Summit', 'Vermont', 'VT', 'Windham', 'Jacksonville', 42.8723012, -72.7916713, ST_GeomFromText('POINT(42.8723012 -72.7916713)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457855', 'Hogback Mountain', 'Summit', 'Vermont', 'VT', 'Addison', 'Hinesburg', 44.2548924, -73.0884331, ST_GeomFromText('POINT(44.2548924 -73.0884331)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1457856', 'Hogback Mountain', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Stowe', 44.4239982, -72.6440016, ST_GeomFromText('POINT(44.4239982 -72.6440016)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457859', 'Hogtrough Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Orleans', 44.7703267, -72.209547, ST_GeomFromText('POINT(44.7703267 -72.209547)', 4326), 44.7866667, -72.2491667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457861', 'Holbrook Bay', 'Bay', 'Vermont', 'VT', 'Orleans', 'Newport', 44.9706018, -72.2414918, ST_GeomFromText('POINT(44.9706018 -72.2414918)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457862', 'Holbrook Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.5120556, -72.4547912, ST_GeomFromText('POINT(43.5120556 -72.4547912)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457863', 'Holcomb Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.8511339, -73.3287009, ST_GeomFromText('POINT(44.8511339 -73.3287009)', 4326), NULL, NULL, '1980-10-29', '2016-11-04', NULL, NULL, NULL),
  ('1457864', 'Holcomb Slang Creek', 'Stream', 'Vermont', 'VT', 'Addison', 'Vergennes West', 44.1492212, -73.3198459, ST_GeomFromText('POINT(44.1492212 -73.3198459)', 4326), 44.1361111, -73.305, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457865', 'Holiday Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Craftsbury', 44.7018863, -72.355258, ST_GeomFromText('POINT(44.7018863 -72.355258)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1457866', 'Holiday Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'East Alburg', 44.8813392, -73.2337445, ST_GeomFromText('POINT(44.8813392 -73.2337445)', 4326), NULL, NULL, '1980-10-29', '2017-01-28', 'Official', 'Board Decision', '1967-01-01'),
  ('1457868', 'Holland Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Morgan Center OE N', 45.0081018, -71.9778743, ST_GeomFromText('POINT(45.0081018 -71.9778743)', 4326), 44.9861576, -71.9337073, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457869', 'Holland Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Morgan Center', 44.9860929, -71.9288529, ST_GeomFromText('POINT(44.9860929 -71.9288529)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1457870', 'Hollands Pasture Island', 'Island', 'Vermont', 'VT', 'Addison', 'Cornwall', 43.9586713, -73.1737278, ST_GeomFromText('POINT(43.9586713 -73.1737278)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457871', 'Hollister Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Plainfield', 44.3241331, -72.3910836, ST_GeomFromText('POINT(44.3241331 -72.3910836)', 4326), NULL, NULL, '1980-10-29', '2024-10-04', NULL, NULL, NULL),
  ('1457872', 'Hollow Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Hinesburg', 44.2756103, -73.0773441, ST_GeomFromText('POINT(44.2756103 -73.0773441)', 4326), 44.3191667, -73.0425, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457873', 'Hollow Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Huntington', 44.313666, -72.9878992, ST_GeomFromText('POINT(44.313666 -72.9878992)', 4326), 44.3172767, -73.0181775, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457874', 'Holmes Creek', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Charlotte', 44.3328291, -73.2826263, ST_GeomFromText('POINT(44.3328291 -73.2826263)', 4326), 44.3231075, -73.2376251, '1980-10-29', NULL, 'Official', 'Board Decision', '1979-01-01'),
  ('1457875', 'Holt Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Chelsea', 43.9626191, -72.435995, ST_GeomFromText('POINT(43.9626191 -72.435995)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457880', 'Honey Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Barre East', 44.1781173, -72.4703812, ST_GeomFromText('POINT(44.1781173 -72.4703812)', 4326), 44.1983333, -72.4630556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457881', 'Honey Hollow', 'Valley', 'Vermont', 'VT', 'Chittenden', 'Huntington', 44.3738329, -72.9057008, ST_GeomFromText('POINT(44.3738329 -72.9057008)', 4326), 44.3397597, -72.9163442, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1457882', 'Kidder Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Marshfield', 44.3739465, -72.265378, ST_GeomFromText('POINT(44.3739465 -72.265378)', 4326), 44.36, -72.225, '1980-10-29', NULL, 'Official', 'Board Decision', '1983-01-01'),
  ('1457883', 'Hooker Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.6308909, -73.1695531, ST_GeomFromText('POINT(43.6308909 -73.1695531)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457884', 'Hooker Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Marshfield', 44.3514518, -72.2570607, ST_GeomFromText('POINT(44.3514518 -72.2570607)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457887', 'Hopkins Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Island Pond', 44.8418401, -71.9541127, ST_GeomFromText('POINT(44.8418401 -71.9541127)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457888', 'Hopkinson Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Newport', 44.9208713, -72.1567664, ST_GeomFromText('POINT(44.9208713 -72.1567664)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457889', 'Hopper Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.1531323, -73.1870516, ST_GeomFromText('POINT(43.1531323 -73.1870516)', 4326), 43.1602778, -73.145, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457890', 'Hopper Pond', 'Lake', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.1504438, -73.1510471, ST_GeomFromText('POINT(43.1504438 -73.1510471)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1457891', 'Mount Hor', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Sutton', 44.7131919, -72.053496, ST_GeomFromText('POINT(44.7131919 -72.053496)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457892', 'Horn of the Moon Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Montpelier', 44.3235655, -72.5417147, ST_GeomFromText('POINT(44.3235655 -72.5417147)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1457893', 'Horse Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Stannard', 44.6175713, -72.2118315, ST_GeomFromText('POINT(44.6175713 -72.2118315)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1457894', 'Horseback Ridge', 'Ridge', 'Vermont', 'VT', 'Windsor', 'Windsor', 43.4562159, -72.4002253, ST_GeomFromText('POINT(43.4562159 -72.4002253)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL),
  ('1457895', 'Horseneck Island', 'Island', 'Vermont', 'VT', 'Orleans', 'Newport', 44.9647686, -72.202602, ST_GeomFromText('POINT(44.9647686 -72.202602)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457897', 'Horton Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Putnam', 43.6600644, -73.4120595, ST_GeomFromText('POINT(43.6600644 -73.4120595)', 4326), 43.6672222, -73.3897222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457898', 'Horton Marsh', 'Swamp', 'Vermont', 'VT', 'Rutland', 'Putnam', 43.6570089, -73.4092815, ST_GeomFromText('POINT(43.6570089 -73.4092815)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457900', 'Lake Hortonia', 'Reservoir', 'Vermont', 'VT', 'Rutland', 'Sudbury', 43.7511849, -73.2069072, ST_GeomFromText('POINT(43.7511849 -73.2069072)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', 'Official', 'Board Decision', '1963-01-01'),
  ('1457901', 'Hosley Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Jacksonville', 42.7926208, -72.812361, ST_GeomFromText('POINT(42.7926208 -72.812361)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457902', 'Osmore Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Marshfield', 44.2853377, -72.2725984, ST_GeomFromText('POINT(44.2853377 -72.2725984)', 4326), 44.3033333, -72.2763889, '1980-10-29', '2010-03-31', NULL, NULL, NULL),
  ('1457903', 'Hospital Creek', 'Stream', 'Vermont', 'VT', 'Addison', 'Port Henry', 44.0428335, -73.418735, ST_GeomFromText('POINT(44.0428335 -73.418735)', 4326), 44.0580556, -73.3766667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457906', 'Houghton Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Saint Johnsbury', 44.4506126, -72.062041, ST_GeomFromText('POINT(44.4506126 -72.062041)', 4326), 44.5181103, -72.157878, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457908', 'Houghton Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Lyme', 43.8433154, -72.2223537, ST_GeomFromText('POINT(43.8433154 -72.2223537)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1457912', 'Howard Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Seneca Mountain', 44.7061622, -71.8628719, ST_GeomFromText('POINT(44.7061622 -71.8628719)', 4326), 44.7161111, -71.8280556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457914', 'Howard Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Benson', 43.7306099, -73.2520563, ST_GeomFromText('POINT(43.7306099 -73.2520563)', 4326), NULL, NULL, '2022-08-30', '2022-08-30', NULL, NULL, NULL),
  ('1457916', 'Howe Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Windham', 43.1417441, -72.6264812, ST_GeomFromText('POINT(43.1417441 -72.6264812)', 4326), 43.1730556, -72.6975, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457917', 'Howe Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Quechee', 43.744782, -72.4778717, ST_GeomFromText('POINT(43.744782 -72.4778717)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1457920', 'Hoyt Bay', 'Bay', 'Vermont', 'VT', 'Grand Isle', 'South Hero', 44.6797666, -73.2962424, ST_GeomFromText('POINT(44.6797666 -73.2962424)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457921', 'Hoyt Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'South Hero', 44.6783778, -73.2956868, ST_GeomFromText('POINT(44.6783778 -73.2956868)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457922', 'Hubbard Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Windsor', 43.4875716, -72.3787021, ST_GeomFromText('POINT(43.4875716 -72.3787021)', 4326), 43.5097931, -72.4573138, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457924', 'Hubbard Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'South Strafford', 43.8269557, -72.2765464, ST_GeomFromText('POINT(43.8269557 -72.2765464)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1457927', 'Hubbardton Gulf', 'Valley', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.7150202, -73.1849597, ST_GeomFromText('POINT(43.7150202 -73.1849597)', 4326), 43.7291716, -73.1815551, '1980-10-29', '2018-08-01', 'Official', 'Board Decision', '1975-01-01'),
  ('1457928', 'Hubbardton River', 'Stream', 'Vermont', 'VT', 'Rutland', 'Benson', 43.6264545, -73.3434462, ST_GeomFromText('POINT(43.6264545 -73.3434462)', 4326), 43.7370078, -73.2203906, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457929', 'Huckleberry Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Richmond', 44.4313864, -72.9571538, ST_GeomFromText('POINT(44.4313864 -72.9571538)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457930', 'Hudson Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Gilman', 44.4842243, -71.6281417, ST_GeomFromText('POINT(44.4842243 -71.6281417)', 4326), 44.5225565, -71.636198, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457931', 'Hudson Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.5939494, -72.6409293, ST_GeomFromText('POINT(43.5939494 -72.6409293)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457932', 'Huff Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Sudbury', 43.7851032, -73.1812865, ST_GeomFromText('POINT(43.7851032 -73.1812865)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL),
  ('1457933', 'Mount Hunger', 'Summit', 'Vermont', 'VT', 'Windsor', 'Delectable Mountain', 43.7397807, -72.6825997, ST_GeomFromText('POINT(43.7397807 -72.6825997)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1457934', 'Hungerford Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Highgate Center', 44.9250433, -73.0651315, ST_GeomFromText('POINT(44.9250433 -73.0651315)', 4326), 44.8133795, -73.0526379, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457935', 'Hunt Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Jeffersonville', 44.6733832, -72.7823485, ST_GeomFromText('POINT(44.6733832 -72.7823485)', 4326), 44.7136111, -72.8019444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457940', 'Huntley Island', 'Island', 'Vermont', 'VT', 'Addison', 'Cornwall', 43.8764509, -73.1401144, ST_GeomFromText('POINT(43.8764509 -73.1401144)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457942', 'Hurricane Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Morgan Center', 44.937825, -71.8845399, ST_GeomFromText('POINT(44.937825 -71.8845399)', 4326), 44.9769444, -71.9, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457943', 'Hurricane Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Cavendish', 43.4752622, -72.5254343, ST_GeomFromText('POINT(43.4752622 -72.5254343)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457944', 'Hurricane Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Woodstock North', 43.6490889, -72.5525932, ST_GeomFromText('POINT(43.6490889 -72.5525932)', 4326), NULL, NULL, '1980-10-29', '2018-09-14', NULL, NULL, NULL),
  ('1457945', 'Hurricane Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hanover', 43.6531171, -72.3581463, ST_GeomFromText('POINT(43.6531171 -72.3581463)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457946', 'Hurricane Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Barre East', 44.1552397, -72.3899908, ST_GeomFromText('POINT(44.1552397 -72.3899908)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457947', 'Hurricane Ridge', 'Ridge', 'Vermont', 'VT', 'Orange', 'West Topsham', 44.0245467, -72.3501631, ST_GeomFromText('POINT(44.0245467 -72.3501631)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457948', 'Hurtburt Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Lower Waterford', 44.3733377, -71.9280658, ST_GeomFromText('POINT(44.3733377 -71.9280658)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457950', 'Hutchins Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Eden', 44.7300491, -72.5306684, ST_GeomFromText('POINT(44.7300491 -72.5306684)', 4326), 44.7631041, -72.5492809, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457956', 'Hyde Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'South Hero', 44.7319881, -73.2554087, ST_GeomFromText('POINT(44.7319881 -73.2554087)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457959', 'Ide Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Stannard', 44.5430266, -72.1609993, ST_GeomFromText('POINT(44.5430266 -72.1609993)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457960', 'Mount Independence', 'Summit', 'Vermont', 'VT', 'Addison', 'Ticonderoga', 43.8264404, -73.3803946, ST_GeomFromText('POINT(43.8264404 -73.3803946)', 4326), NULL, NULL, '1980-10-29', '2023-07-21', NULL, NULL, NULL),
  ('1457961', 'Indian Bay', 'Bay', 'Vermont', 'VT', 'Rutland', 'Poultney', 43.6153441, -73.2267772, ST_GeomFromText('POINT(43.6153441 -73.2267772)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457962', 'Indian Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Colchester', 44.5700479, -73.1729075, ST_GeomFromText('POINT(44.5700479 -73.1729075)', 4326), 44.5525491, -73.0987408, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457963', 'Indian Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Wells', 43.3751886, -73.2143589, ST_GeomFromText('POINT(43.3751886 -73.2143589)', 4326), NULL, NULL, '1980-10-29', '2018-11-14', NULL, NULL, NULL),
  ('1457964', 'Indian Point', 'Cape', 'Vermont', 'VT', 'Orleans', 'Newport', 44.9539354, -72.2120467, ST_GeomFromText('POINT(44.9539354 -72.2120467)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457966', 'Ingalls Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Killington Peak', 43.5583151, -72.7806314, ST_GeomFromText('POINT(43.5583151 -72.7806314)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1457967', 'Ingraham Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Andover', 43.2964543, -72.6584262, ST_GeomFromText('POINT(43.2964543 -72.6584262)', 4326), NULL, NULL, '1980-10-29', '2022-09-08', NULL, NULL, NULL),
  ('1457968', 'Inman Pond', 'Reservoir', 'Vermont', 'VT', 'Rutland', 'Benson', 43.6428563, -73.2771116, ST_GeomFromText('POINT(43.6428563 -73.2771116)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457970', 'Ira Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'West Rutland', 43.5575688, -73.02844, ST_GeomFromText('POINT(43.5575688 -73.02844)', 4326), 43.4975697, -73.076773, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457971', 'Iras Pinnacle', 'Pillar', 'Vermont', 'VT', 'Orange', 'East Corinth', 44.0064554, -72.2137042, ST_GeomFromText('POINT(44.0064554 -72.2137042)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457973', 'Irish Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Barre West', 44.1755094, -72.6100114, ST_GeomFromText('POINT(44.1755094 -72.6100114)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1457976', 'Island Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Spectacle Pond', 44.804479, -71.8679879, ST_GeomFromText('POINT(44.804479 -71.8679879)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1457978', 'Isle la Motte', 'Island', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.8694298, -73.3410776, ST_GeomFromText('POINT(44.8694298 -73.3410776)', 4326), NULL, NULL, '1980-10-29', '2016-12-13', NULL, NULL, NULL),
  ('1457980', 'Jack Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Seneca Mountain', 44.7006069, -71.8698165, ST_GeomFromText('POINT(44.7006069 -71.8698165)', 4326), 44.6858333, -71.8236111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457981', 'Jack Lot Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Underhill', 44.5609995, -72.9791236, ST_GeomFromText('POINT(44.5609995 -72.9791236)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1457982', 'Jackson Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'South Strafford', 43.8264581, -72.2862032, ST_GeomFromText('POINT(43.8264581 -72.2862032)', 4326), 43.8627778, -72.2947222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457984', 'Jacksonville Pond', 'Reservoir', 'Vermont', 'VT', 'Windham', 'Jacksonville', 42.801346, -72.8160002, ST_GeomFromText('POINT(42.801346 -72.8160002)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1457985', 'Jacob Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Sterling Mountain', 44.6019958, -72.6415066, ST_GeomFromText('POINT(44.6019958 -72.6415066)', 4326), 44.5866667, -72.6886111, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1457986', 'Jacobs Chopping Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Monadnock Mountain', 44.9747687, -71.5717535, ST_GeomFromText('POINT(44.9747687 -71.5717535)', 4326), 44.985, -71.6102778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457987', 'Jail Branch', 'Stream', 'Vermont', 'VT', 'Washington', 'Barre West', 44.1903391, -72.5012159, ST_GeomFromText('POINT(44.1903391 -72.5012159)', 4326), 44.0761753, -72.4048219, '1980-10-29', '2018-07-31', NULL, NULL, NULL),
  ('1457988', 'Jail Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Chelsea', 43.9881214, -72.4495438, ST_GeomFromText('POINT(43.9881214 -72.4495438)', 4326), 43.9977778, -72.3797222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457989', 'James Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Gallup Mills', 44.5664439, -71.7923138, ST_GeomFromText('POINT(44.5664439 -71.7923138)', 4326), 44.6063889, -71.8347222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457992', 'Jay Branch', 'Stream', 'Vermont', 'VT', 'Orleans', 'North Troy', 44.9550458, -72.3939976, ST_GeomFromText('POINT(44.9550458 -72.3939976)', 4326), 44.9425457, -72.5342826, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457993', 'Jay Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Jay Peak', 44.8756025, -72.5765073, ST_GeomFromText('POINT(44.8756025 -72.5765073)', 4326), 44.9127778, -72.505, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457995', 'Jay Peak', 'Summit', 'Vermont', 'VT', 'Orleans', 'Jay Peak', 44.9241015, -72.5256907, ST_GeomFromText('POINT(44.9241015 -72.5256907)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1457996', 'Jefferson Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Groton', 44.1580014, -72.1499029, ST_GeomFromText('POINT(44.1580014 -72.1499029)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1457998', 'Jenkins Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Chelsea', 43.9758993, -72.4495436, ST_GeomFromText('POINT(43.9758993 -72.4495436)', 4326), 43.9388889, -72.4038889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1457999', 'Jennison Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Peacham', 44.2929849, -72.2144796, ST_GeomFromText('POINT(44.2929849 -72.2144796)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458002', 'Jericho Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Quechee', 43.6895142, -72.4003706, ST_GeomFromText('POINT(43.6895142 -72.4003706)', 4326), 43.7169444, -72.3805556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458004', 'Jerry Lund Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Peacham', 44.2756837, -72.2324909, ST_GeomFromText('POINT(44.2756837 -72.2324909)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1458007', 'Jewell Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Ludlow', 43.3970166, -72.7023186, ST_GeomFromText('POINT(43.3970166 -72.7023186)', 4326), 43.3442399, -72.7453748, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458008', 'Jewett Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Peacham', 44.2892271, -72.1331509, ST_GeomFromText('POINT(44.2892271 -72.1331509)', 4326), 44.25, -72.1486111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458009', 'Jewett Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Saint Albans Bay', 44.8106, -73.1518009, ST_GeomFromText('POINT(44.8106 -73.1518009)', 4326), 44.8844877, -73.1342989, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458010', 'Jewett Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Peacham', 44.2824546, -72.1312855, ST_GeomFromText('POINT(44.2824546 -72.1312855)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1458011', 'Job Mountain', 'Summit', 'Vermont', 'VT', 'Orleans', 'Island Pond', 44.7616347, -71.9634918, ST_GeomFromText('POINT(44.7616347 -71.9634918)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458012', 'Jobs Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Island Pond', 44.7624755, -71.9537455, ST_GeomFromText('POINT(44.7624755 -71.9537455)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1458013', 'Jockey Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Killington Peak', 43.5645047, -72.8281562, ST_GeomFromText('POINT(43.5645047 -72.8281562)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1458014', 'Joe Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Johnson', 44.6594947, -72.6923434, ST_GeomFromText('POINT(44.6594947 -72.6923434)', 4326), 44.6875, -72.7141667, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458015', 'Joes Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Barnet', 44.3442263, -72.0400944, ST_GeomFromText('POINT(44.3442263 -72.0400944)', 4326), 44.4714441, -72.2339905, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458016', 'Joes Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Joes Pond', 44.4118787, -72.2190622, ST_GeomFromText('POINT(44.4118787 -72.2190622)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1458017', 'Joes Pond', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Morrisville', 44.5058781, -72.6195803, ST_GeomFromText('POINT(44.5058781 -72.6195803)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1458018', 'Johnnie Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Essex Junction', 44.4036638, -73.0062351, ST_GeomFromText('POINT(44.4036638 -73.0062351)', 4326), 44.3650531, -73.0470679, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458019', 'Johns Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Huntington', 44.3672761, -72.9673446, ST_GeomFromText('POINT(44.3672761 -72.9673446)', 4326), 44.3425, -72.9347222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458020', 'Johns River', 'Stream', 'Vermont', 'VT', 'Orleans', 'Newport', 44.9942127, -72.1848237, ST_GeomFromText('POINT(44.9942127 -72.1848237)', 4326), 44.9740879, -72.0899808, '1980-10-29', '2021-02-03', NULL, NULL, NULL),
  ('1458022', 'Johnson Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Delectable Mountain', 43.7070119, -72.721768, ST_GeomFromText('POINT(43.7070119 -72.721768)', 4326), 43.6947222, -72.7491667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458023', 'Johnson Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Killington Peak', 43.5180862, -72.8456456, ST_GeomFromText('POINT(43.5180862 -72.8456456)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1458024', 'Johnson Pond', 'Lake', 'Vermont', 'VT', 'Addison', 'Sudbury', 43.7664403, -73.2235825, ST_GeomFromText('POINT(43.7664403 -73.2235825)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1458025', 'Johnson Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Miles Pond', 44.4911374, -71.8674207, ST_GeomFromText('POINT(44.4911374 -71.8674207)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458026', 'Joiner Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Huntington', 44.3708879, -72.8798431, ST_GeomFromText('POINT(44.3708879 -72.8798431)', 4326), 44.435609, -72.8453993, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458027', 'Jolly Mountain', 'Summit', 'Vermont', 'VT', 'Windham', 'Governors Mountain', 42.777962, -72.7236378, ST_GeomFromText('POINT(42.777962 -72.7236378)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458028', 'Jones Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Huntington', 44.2553342, -72.9617862, ST_GeomFromText('POINT(44.2553342 -72.9617862)', 4326), 44.2583333, -72.9266667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458029', 'Jones Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Morrisville', 44.5733856, -72.5098336, ST_GeomFromText('POINT(44.5733856 -72.5098336)', 4326), 44.5947222, -72.5111111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458030', 'Jones Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Gallup Mills', 44.5800547, -71.7831471, ST_GeomFromText('POINT(44.5800547 -71.7831471)', 4326), 44.6072222, -71.7688889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458031', 'Jones Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Groveton', 44.5556111, -71.6003638, ST_GeomFromText('POINT(44.5556111 -71.6003638)', 4326), 44.5739438, -71.6589769, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458032', 'Jones Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Orwell', 43.8328386, -73.3081722, ST_GeomFromText('POINT(43.8328386 -73.3081722)', 4326), 43.889782, -73.3040067, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458033', 'Jones Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Middlesex', 44.2711698, -72.637612, ST_GeomFromText('POINT(44.2711698 -72.637612)', 4326), 44.2297816, -72.6726125, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458035', 'Jones Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Bellows Falls', 43.151035, -72.4962645, ST_GeomFromText('POINT(43.151035 -72.4962645)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458036', 'Jones Pond', 'Lake', 'Vermont', 'VT', 'Orange', 'Washington', 44.0433833, -72.4948294, ST_GeomFromText('POINT(44.0433833 -72.4948294)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458040', 'Jordan Bay', 'Bay', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.8667079, -73.321521, ST_GeomFromText('POINT(44.8667079 -73.321521)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458041', 'Jordan Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.8671555, -73.3219899, ST_GeomFromText('POINT(44.8671555 -73.3219899)', 4326), NULL, NULL, '1980-10-29', '2016-11-18', NULL, NULL, NULL),
  ('1458045', 'Joy Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Newfane', 42.9381363, -72.7050936, ST_GeomFromText('POINT(42.9381363 -72.7050936)', 4326), 42.9541667, -72.7180556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458047', 'Judevine Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Jeffersonville', 44.6686611, -72.7712367, ST_GeomFromText('POINT(44.6686611 -72.7712367)', 4326), 44.6917164, -72.7195676, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458048', 'Jug Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Cabot', 44.3917237, -72.3312141, ST_GeomFromText('POINT(44.3917237 -72.3312141)', 4326), 44.428667, -72.3876057, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458050', 'Juniper Island', 'Island', 'Vermont', 'VT', 'Chittenden', 'Juniper Island', 44.450327, -73.2762393, ST_GeomFromText('POINT(44.450327 -73.2762393)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458052', 'Kathan Meadows', 'Flat', 'Vermont', 'VT', 'Windham', 'Putney', 42.9614698, -72.5275896, ST_GeomFromText('POINT(42.9614698 -72.5275896)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458054', 'Kedron Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Woodstock North', 43.6281251, -72.5145385, ST_GeomFromText('POINT(43.6281251 -72.5145385)', 4326), 43.5347924, -72.5642606, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458055', 'Keeler Bay', 'Bay', 'Vermont', 'VT', 'Grand Isle', 'South Hero', 44.6628226, -73.302909, ST_GeomFromText('POINT(44.6628226 -73.302909)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458057', 'Keenan Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Groton', 44.203615, -72.1842234, ST_GeomFromText('POINT(44.203615 -72.1842234)', 4326), 44.1933002, -72.2542719, '1980-10-29', '2021-02-03', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458058', 'Keiser Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Joes Pond', 44.3864801, -72.1745254, ST_GeomFromText('POINT(44.3864801 -72.1745254)', 4326), NULL, NULL, '2002-08-27', '2018-02-18', NULL, NULL, NULL),
  ('1458059', 'Kelley Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Middlesex', 44.2508924, -72.6526122, ST_GeomFromText('POINT(44.2508924 -72.6526122)', 4326), 44.2611111, -72.6894444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458060', 'Fields Bay', 'Bay', 'Vermont', 'VT', 'Addison', 'Vergennes West', 44.2208863, -73.3245698, ST_GeomFromText('POINT(44.2208863 -73.3245698)', 4326), NULL, NULL, '1980-10-29', NULL, 'Official', 'Board Decision', '1979-01-01'),
  ('1458061', 'Kellogg Island', 'Island', 'Vermont', 'VT', 'Grand Isle', 'South Hero', 44.6667114, -73.2970756, ST_GeomFromText('POINT(44.6667114 -73.2970756)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458062', 'Kelly Bay', 'Bay', 'Vermont', 'VT', 'Grand Isle', 'Rouses Point', 44.9928172, -73.3323545, ST_GeomFromText('POINT(44.9928172 -73.3323545)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458063', 'Kelly Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Highgate Center', 44.9205987, -73.0862426, ST_GeomFromText('POINT(44.9205987 -73.0862426)', 4326), 44.9583333, -73.0711111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458065', 'Kemp Hill', 'Summit', 'Vermont', 'VT', 'Essex', 'Monadnock Mountain', 44.9633726, -71.5582291, ST_GeomFromText('POINT(44.9633726 -71.5582291)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1458068', 'Kenfield Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Morrisville', 44.5742186, -72.6203942, ST_GeomFromText('POINT(44.5742186 -72.6203942)', 4326), 44.5789406, -72.6737301, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458069', 'Kenny Pond', 'Reservoir', 'Vermont', 'VT', 'Windham', 'Newfane', 42.9891048, -72.7056098, ST_GeomFromText('POINT(42.9891048 -72.7056098)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1458071', 'Kent Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.6148454, -72.4726575, ST_GeomFromText('POINT(43.6148454 -72.4726575)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458072', 'Kent Hollow', 'Valley', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.22664, -73.1777739, ST_GeomFromText('POINT(43.22664 -73.1777739)', 4326), 43.1787435, -73.2129392, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1458074', 'Kents Ledge', 'Bench', 'Vermont', 'VT', 'Windsor', 'South Royalton', 43.8072898, -72.5292644, ST_GeomFromText('POINT(43.8072898 -72.5292644)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458076', 'Ketchum Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Barre East', 44.222005, -72.4820492, ST_GeomFromText('POINT(44.222005 -72.4820492)', 4326), 44.2077778, -72.4516667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458077', 'Kettle Mountain', 'Summit', 'Vermont', 'VT', 'Washington', 'Marshfield', 44.3027973, -72.335739, ST_GeomFromText('POINT(44.3027973 -72.335739)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458078', 'Kettle Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Marshfield', 44.2955127, -72.3179196, ST_GeomFromText('POINT(44.2955127 -72.3179196)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1458079', 'Keyer Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Monadnock Mountain', 44.9803242, -71.5359187, ST_GeomFromText('POINT(44.9803242 -71.5359187)', 4326), 44.9589356, -71.6420342, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458080', 'Keyes Mountain', 'Summit', 'Vermont', 'VT', 'Windsor', 'Cavendish', 43.4861862, -72.5743913, ST_GeomFromText('POINT(43.4861862 -72.5743913)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458082', 'Kibling Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Sharon', 43.8666823, -72.4225453, ST_GeomFromText('POINT(43.8666823 -72.4225453)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1458083', 'Kidder Pond', 'Reservoir', 'Vermont', 'VT', 'Orleans', 'Irasburg', 44.8693213, -72.3072631, ST_GeomFromText('POINT(44.8693213 -72.3072631)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1458085', 'Kilburn Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Hanover', 43.6261819, -72.3298136, ST_GeomFromText('POINT(43.6261819 -72.3298136)', 4326), 43.6258333, -72.3469444, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458086', 'Killington Peak', 'Summit', 'Vermont', 'VT', 'Rutland', 'Killington Peak', 43.6045042, -72.8201012, ST_GeomFromText('POINT(43.6045042 -72.8201012)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1458088', 'Kimball Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Windsor', 43.4867382, -72.3945354, ST_GeomFromText('POINT(43.4867382 -72.3945354)', 4326), 43.4911111, -72.4347222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458089', 'Kimball Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Charlotte', 44.2664416, -73.2648468, ST_GeomFromText('POINT(44.2664416 -73.2648468)', 4326), 44.2936638, -73.2212354, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458090', 'King Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Plainfield', 44.2992258, -72.3976032, ST_GeomFromText('POINT(44.2992258 -72.3976032)', 4326), 44.3297222, -72.4075, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458091', 'King Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Seneca Mountain', 44.6739409, -71.8712052, ST_GeomFromText('POINT(44.6739409 -71.8712052)', 4326), 44.6758333, -71.8377778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458093', 'King Hill', 'Summit', 'Vermont', 'VT', 'Essex', 'Miles Pond', 44.4801424, -71.7513504, ST_GeomFromText('POINT(44.4801424 -71.7513504)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458095', 'King Ponds', 'Lake', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.411937, -72.4341223, ST_GeomFromText('POINT(44.411937 -72.4341223)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1458097', 'Kingdom Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Ludlow', 43.4711819, -72.6984303, ST_GeomFromText('POINT(43.4711819 -72.6984303)', 4326), 43.4744444, -72.6830556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458098', 'Kingdom Valley', 'Valley', 'Vermont', 'VT', 'Windsor', 'Chester', 43.2623721, -72.5794731, ST_GeomFromText('POINT(43.2623721 -72.5794731)', 4326), 43.2818206, -72.5550733, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1458099', 'Kings Bay', 'Bay', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.8728195, -73.2512413, ST_GeomFromText('POINT(44.8728195 -73.2512413)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458100', 'Kings Hill Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Jeffersonville', 44.7458821, -72.836521, ST_GeomFromText('POINT(44.7458821 -72.836521)', 4326), 44.7377778, -72.785, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458101', 'Kings Hill Mountain', 'Summit', 'Vermont', 'VT', 'Franklin', 'Jeffersonville', 44.7281871, -72.7915612, ST_GeomFromText('POINT(44.7281871 -72.7915612)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458102', 'Kings Hill Pond', 'Lake', 'Vermont', 'VT', 'Franklin', 'Jeffersonville', 44.7369058, -72.7850314, ST_GeomFromText('POINT(44.7369058 -72.7850314)', 4326), NULL, NULL, '1980-10-29', '2019-11-26', NULL, NULL, NULL),
  ('1458103', 'Kings Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Sutton', 44.6977824, -72.0181146, ST_GeomFromText('POINT(44.6977824 -72.0181146)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1458104', 'Kingsbury Branch', 'Stream', 'Vermont', 'VT', 'Washington', 'Plainfield', 44.2828371, -72.453716, ST_GeomFromText('POINT(44.2828371 -72.453716)', 4326), 44.3311111, -72.4411111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458105', 'Kingsbury Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Plainfield', 44.3331137, -72.4451057, ST_GeomFromText('POINT(44.3331137 -72.4451057)', 4326), 44.3920011, -72.4217727, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458107', 'Kingsland Bay', 'Bay', 'Vermont', 'VT', 'Addison', 'Vergennes West', 44.2406084, -73.2998473, ST_GeomFromText('POINT(44.2406084 -73.2998473)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458109', 'Kirby Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Concord', 44.4406136, -71.8775922, ST_GeomFromText('POINT(44.4406136 -71.8775922)', 4326), 44.5145006, -71.9034268, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458111', 'Kirby Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Burke Mountain', 44.5475407, -71.9044409, ST_GeomFromText('POINT(44.5475407 -71.9044409)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458112', 'Kirby Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Burke Mountain', 44.5087659, -71.9155934, ST_GeomFromText('POINT(44.5087659 -71.9155934)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458113', 'Kittredge Hills', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Joes Pond', 44.4736752, -72.1736266, ST_GeomFromText('POINT(44.4736752 -72.1736266)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458114', 'Kline Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Putnam', 43.6468158, -73.396757, ST_GeomFromText('POINT(43.6468158 -73.396757)', 4326), NULL, NULL, '1980-10-29', '2022-09-02', NULL, NULL, NULL),
  ('1458115', 'Knapp Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Cavendish', 43.4464606, -72.5334254, ST_GeomFromText('POINT(43.4464606 -72.5334254)', 4326), 43.4538889, -72.5863889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458116', 'Knapp Brook Ponds', 'Lake', 'Vermont', 'VT', 'Windsor', 'Cavendish', 43.449489, -72.5689727, ST_GeomFromText('POINT(43.449489 -72.5689727)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1458117', 'Kneeland Flat', 'Flat', 'Vermont', 'VT', 'Washington', 'Middlesex', 44.3606118, -72.7084499, ST_GeomFromText('POINT(44.3606118 -72.7084499)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458118', 'Knight Island', 'Island', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.8117092, -73.2517973, ST_GeomFromText('POINT(44.8117092 -73.2517973)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458119', 'Knight Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.7703205, -73.2931873, ST_GeomFromText('POINT(44.7703205 -73.2931873)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458120', 'Knob Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Marshfield', 44.3553265, -72.3745661, ST_GeomFromText('POINT(44.3553265 -72.3745661)', 4326), NULL, NULL, '1980-10-29', '2023-07-21', NULL, NULL, NULL),
  ('1458121', 'Knob Hill Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Marshfield', 44.3606274, -72.3731265, ST_GeomFromText('POINT(44.3606274 -72.3731265)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1458122', 'Knox Mountain', 'Summit', 'Vermont', 'VT', 'Orange', 'Knox Mountain', 44.1655167, -72.3560626, ST_GeomFromText('POINT(44.1655167 -72.3560626)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', 'Official', 'Board Decision', '1980-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458125', 'La Pawac Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Seneca Mountain', 44.7025512, -71.8709276, ST_GeomFromText('POINT(44.7025512 -71.8709276)', 4326), 44.7122222, -71.8152778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458126', 'La Platte River', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Burlington', 44.400606, -73.2340152, ST_GeomFromText('POINT(44.400606 -73.2340152)', 4326), 44.305332, -73.0656779, '1980-10-29', '2014-05-23', 'Official', 'Board Decision', '1905-01-01'),
  ('1458128', 'La Pointe Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Averill', 44.9092142, -71.692036, ST_GeomFromText('POINT(44.9092142 -71.692036)', 4326), 44.9305556, -71.6802778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458129', 'Ladd Bay', 'Bay', 'Vermont', 'VT', 'Grand Isle', 'South Hero', 44.7450434, -73.2595756, ST_GeomFromText('POINT(44.7450434 -73.2595756)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458130', 'Ladd Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.7689318, -73.2729091, ST_GeomFromText('POINT(44.7689318 -73.2729091)', 4326), NULL, NULL, '1980-10-29', '2014-05-23', NULL, NULL, NULL),
  ('1458131', 'Laird Pond', 'Reservoir', 'Vermont', 'VT', 'Washington', 'Marshfield', 44.2914395, -72.3737129, ST_GeomFromText('POINT(44.2914395 -72.3737129)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1458132', 'Laisdell Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Richmond', 44.4767899, -72.9827551, ST_GeomFromText('POINT(44.4767899 -72.9827551)', 4326), NULL, NULL, '1980-10-29', '2022-09-05', NULL, NULL, NULL),
  ('1458135', 'Lake Elmore', 'Reservoir', 'Vermont', 'VT', 'Lamoille', 'Morrisville', 44.534243, -72.5249814, ST_GeomFromText('POINT(44.534243 -72.5249814)', 4326), NULL, NULL, '2002-08-27', '2019-11-20', 'Official', 'Board Decision', '1950-01-01'),
  ('1458138', 'Lake Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Stratford', 44.6602659, -71.6224855, ST_GeomFromText('POINT(44.6602659 -71.6224855)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1458143', 'Lake Abenaki', 'Lake', 'Vermont', 'VT', 'Orange', 'Lyme', 43.8323084, -72.2349248, ST_GeomFromText('POINT(43.8323084 -72.2349248)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458144', 'Lake Fairlee', 'Reservoir', 'Vermont', 'VT', 'Orange', 'Fairlee', 43.8880757, -72.226466, ST_GeomFromText('POINT(43.8880757 -72.226466)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1458145', 'Lake Iroquois', 'Reservoir', 'Vermont', 'VT', 'Chittenden', 'Hinesburg', 44.3700644, -73.0843582, ST_GeomFromText('POINT(44.3700644 -73.0843582)', 4326), NULL, NULL, '1980-10-29', '2020-01-15', NULL, NULL, NULL),
  ('1458146', 'Lake Mansfield', 'Reservoir', 'Vermont', 'VT', 'Lamoille', 'Bolton Mountain', 44.4721169, -72.8162581, ST_GeomFromText('POINT(44.4721169 -72.8162581)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1458147', 'Lake Morey', 'Lake', 'Vermont', 'VT', 'Orange', 'Fairlee', 43.9227579, -72.1510188, ST_GeomFromText('POINT(43.9227579 -72.1510188)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1458153', 'Lakota Lake', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Delectable Mountain', 43.6863291, -72.6458084, ST_GeomFromText('POINT(43.6863291 -72.6458084)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1458154', 'Lake Lamoille', 'Reservoir', 'Vermont', 'VT', 'Lamoille', 'Morrisville', 44.5700968, -72.6081792, ST_GeomFromText('POINT(44.5700968 -72.6081792)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1458155', 'Lamphean Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Craftsbury', 44.7456046, -72.3623292, ST_GeomFromText('POINT(44.7456046 -72.3623292)', 4326), 44.8044925, -72.3609404, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458156', 'Lamson Pond', 'Lake', 'Vermont', 'VT', 'Orange', 'Brookfield', 44.0641338, -72.6109441, ST_GeomFromText('POINT(44.0641338 -72.6109441)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1458158', 'Lanes Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Marshfield', 44.2645045, -72.365379, ST_GeomFromText('POINT(44.2645045 -72.365379)', 4326), 44.2519444, -72.3511111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458160', 'Lang Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Island Pond', 44.8208823, -71.9500961, ST_GeomFromText('POINT(44.8208823 -71.9500961)', 4326), 44.8352778, -71.9613889, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458161', 'Lanpher Meadow', 'Flat', 'Vermont', 'VT', 'Lamoille', 'Eden', 44.722827, -72.5937276, ST_GeomFromText('POINT(44.722827 -72.5937276)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458162', 'Lapans Bay', 'Bay', 'Vermont', 'VT', 'Franklin', 'Saint Albans Bay', 44.8092106, -73.1798555, ST_GeomFromText('POINT(44.8092106 -73.1798555)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458164', 'Lapham Bay', 'Bay', 'Vermont', 'VT', 'Addison', 'Crown Point', 43.9245028, -73.3942873, ST_GeomFromText('POINT(43.9245028 -73.3942873)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458165', 'Lapham Island', 'Island', 'Vermont', 'VT', 'Addison', 'Crown Point', 43.9336692, -73.4017877, ST_GeomFromText('POINT(43.9336692 -73.4017877)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458167', 'Laraway Mountain', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Johnson', 44.726146, -72.7119864, ST_GeomFromText('POINT(44.726146 -72.7119864)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458168', 'Larrabees Point', 'Cape', 'Vermont', 'VT', 'Addison', 'Ticonderoga', 43.8556155, -73.3765076, ST_GeomFromText('POINT(43.8556155 -73.3765076)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458171', 'Laurel Lake', 'Lake', 'Vermont', 'VT', 'Windham', 'Jacksonville', 42.8196443, -72.8178945, ST_GeomFromText('POINT(42.8196443 -72.8178945)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1458172', 'Lavery Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Poultney', 43.5045137, -73.1745522, ST_GeomFromText('POINT(43.5045137 -73.1745522)', 4326), 43.5364577, -73.1173298, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458173', 'Law Island', 'Island', 'Vermont', 'VT', 'Chittenden', 'Colchester Point', 44.5603247, -73.3115194, ST_GeomFromText('POINT(44.5603247 -73.3115194)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458174', 'Lawrence Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Morrisville', 44.5225529, -72.6178935, ST_GeomFromText('POINT(44.5225529 -72.6178935)', 4326), 44.5031087, -72.6492835, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458176', 'Laws Ridge', 'Ridge', 'Vermont', 'VT', 'Bennington', 'Shushan', 43.1199573, -73.2508144, ST_GeomFromText('POINT(43.1199573 -73.2508144)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1458177', 'Lazy Lady Island', 'Island', 'Vermont', 'VT', 'Franklin', 'Saint Albans Bay', 44.7819892, -73.1620791, ST_GeomFromText('POINT(44.7819892 -73.1620791)', 4326), NULL, NULL, '1980-10-29', NULL, 'Official', 'Board Decision', '1915-01-01'),
  ('1458178', 'Le Clair Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Lowell', 44.8250477, -72.438443, ST_GeomFromText('POINT(44.8250477 -72.438443)', 4326), 44.7980556, -72.4055556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458180', 'Leach Creek', 'Stream', 'Vermont', 'VT', 'Essex', 'Monadnock Mountain', 44.9861705, -71.5399647, ST_GeomFromText('POINT(44.9861705 -71.5399647)', 4326), 44.9876881, -71.6802979, '1980-10-29', '2011-08-31', NULL, NULL, NULL),
  ('1458182', 'Leach Hill', 'Summit', 'Vermont', 'VT', 'Franklin', 'Gilson Mountain', 44.709329, -72.9192823, ST_GeomFromText('POINT(44.709329 -72.9192823)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1458183', 'Leach Hill', 'Summit', 'Vermont', 'VT', 'Franklin', 'Bakersfield', 44.85237, -72.8477119, ST_GeomFromText('POINT(44.85237 -72.8477119)', 4326), NULL, NULL, '1980-10-29', '2022-09-02', NULL, NULL, NULL),
  ('1458184', 'Leavit Brook', 'Stream', 'Quebec', 'QU', 'Quebec', 'Jay Peak OE N', 45.0401, -72.52146, ST_GeomFromText('POINT(45.0401 -72.52146)', 4326), 44.99411, -72.50552, '1980-10-29', '2010-12-10', NULL, NULL, NULL),
  ('1458185', 'Ledge Creek', 'Stream', 'Vermont', 'VT', 'Addison', 'Middlebury', 44.014781, -73.2028961, ST_GeomFromText('POINT(44.014781 -73.2028961)', 4326), 43.9867261, -73.20234, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458186', 'Lee Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Bethel', 43.8647212, -72.729467, ST_GeomFromText('POINT(43.8647212 -72.729467)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1458187', 'Lee River', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Underhill', 44.5017173, -72.9987376, ST_GeomFromText('POINT(44.5017173 -72.9987376)', 4326), 44.4611639, -72.8487333, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458188', 'Leech Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'West Topsham', 44.072061, -72.3199659, ST_GeomFromText('POINT(44.072061 -72.3199659)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1458189', 'Leech Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.4214384, -72.4299559, ST_GeomFromText('POINT(44.4214384 -72.4299559)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1458190', 'Lees Hill', 'Summit', 'Vermont', 'VT', 'Essex', 'Gallup Mills', 44.534769, -71.7807697, ST_GeomFromText('POINT(44.534769 -71.7807697)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1458192', 'Leighton Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Newbury', 44.1220084, -72.1119925, ST_GeomFromText('POINT(44.1220084 -72.1119925)', 4326), NULL, NULL, '1980-10-29', '2024-10-03', NULL, NULL, NULL),
  ('1458193', 'Leland Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Lowell', 44.7832602, -72.4690027, ST_GeomFromText('POINT(44.7832602 -72.4690027)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458194', 'Lemon Fair River', 'Stream', 'Vermont', 'VT', 'Addison', 'Middlebury', 44.0636683, -73.2462312, ST_GeomFromText('POINT(44.0636683 -73.2462312)', 4326), 43.7653407, -73.2120577, '1980-10-29', NULL, 'Official', 'Board Decision', '1904-01-01'),
  ('1458195', 'Leonard Bay', 'Bay', 'Vermont', 'VT', 'Addison', 'Crown Point', 43.9411691, -73.3998434, ST_GeomFromText('POINT(43.9411691 -73.3998434)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458196', 'Levi Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'East Corinth', 44.0972866, -72.2242611, ST_GeomFromText('POINT(44.0972866 -72.2242611)', 4326), 44.1300638, -72.1737048, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458197', 'Levi Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Peacham', 44.2661172, -72.227442, ST_GeomFromText('POINT(44.2661172 -72.227442)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1458198', 'Lewin Pond', 'Lake', 'Vermont', 'VT', 'Windsor', 'Lyme', 43.7720468, -72.2162565, ST_GeomFromText('POINT(43.7720468 -72.2162565)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458199', 'Lewis Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Poultney', 43.5525678, -73.2487208, ST_GeomFromText('POINT(43.5525678 -73.2487208)', 4326), 43.5722222, -73.1458333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458200', 'Lewis Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Norton Pond', 44.900242, -71.7710956, ST_GeomFromText('POINT(44.900242 -71.7710956)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458201', 'Lewis Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Norton Pond', 44.8829864, -71.7805044, ST_GeomFromText('POINT(44.8829864 -71.7805044)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1458203', 'Libby Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Sutton', 44.6722645, -72.106765, ST_GeomFromText('POINT(44.6722645 -72.106765)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1458204', 'Light Trout Club Lake', 'Reservoir', 'Vermont', 'VT', 'Washington', 'Waterbury', 44.2761155, -72.7599699, ST_GeomFromText('POINT(44.2761155 -72.7599699)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1458205', 'Lighthouse Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Brookfield', 44.0631105, -72.5328799, ST_GeomFromText('POINT(44.0631105 -72.5328799)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458206', 'Lightning Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Spectacle Pond', 44.8156046, -71.868706, ST_GeomFromText('POINT(44.8156046 -71.868706)', 4326), 44.85, -71.87, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458208', 'Lilliesville Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Bethel', 43.7931223, -72.6795463, ST_GeomFromText('POINT(43.7931223 -72.6795463)', 4326), 43.8388889, -72.7366667, '1980-10-29', NULL, 'Official', 'Board Decision', '1977-01-01'),
  ('1458209', 'Lilly Branch', 'Stream', 'Vermont', 'VT', 'Orleans', 'North Troy', 44.8767136, -72.4109424, ST_GeomFromText('POINT(44.8767136 -72.4109424)', 4326), 44.8633806, -72.3631629, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458210', 'Lillie Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Saxtons River', 43.2066369, -72.5044044, ST_GeomFromText('POINT(43.2066369 -72.5044044)', 4326), 43.2381313, -72.4956446, '1980-10-29', '2016-10-14', 'Official', 'Board Decision', '2016-10-13');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458211', 'Lily Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Middletown Springs', 43.3953878, -73.1165796, ST_GeomFromText('POINT(43.3953878 -73.1165796)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1458212', 'Lily Pad Pond', 'Lake', 'Vermont', 'VT', 'Chittenden', 'Colchester', 44.5076891, -73.1619783, ST_GeomFromText('POINT(44.5076891 -73.1619783)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1458213', 'Lily Pond', 'Lake', 'Vermont', 'VT', 'Windham', 'Bernardston', 42.7366212, -72.5088793, ST_GeomFromText('POINT(42.7366212 -72.5088793)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1458214', 'Lily Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Wells', 43.4953517, -73.2078693, ST_GeomFromText('POINT(43.4953517 -73.2078693)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL),
  ('1458215', 'Lily Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.6754535, -73.2134327, ST_GeomFromText('POINT(43.6754535 -73.2134327)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL),
  ('1458216', 'Lily Pond', 'Lake', 'Vermont', 'VT', 'Windsor', 'Hanover', 43.7423241, -72.2556702, ST_GeomFromText('POINT(43.7423241 -72.2556702)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1458217', 'Lily Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Burke Mountain', 44.5226725, -71.991863, ST_GeomFromText('POINT(44.5226725 -71.991863)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1458218', 'Lime Rock Point', 'Cape', 'Vermont', 'VT', 'Franklin', 'Saint Albans Bay', 44.7753228, -73.1576351, ST_GeomFromText('POINT(44.7753228 -73.1576351)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458219', 'Limehurst Pond', 'Lake', 'Vermont', 'VT', 'Orange', 'Brookfield', 44.1014948, -72.5496628, ST_GeomFromText('POINT(44.1014948 -72.5496628)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1458220', 'Limekiln Point', 'Cape', 'Vermont', 'VT', 'Franklin', 'Highgate Center', 44.9858748, -73.0979062, ST_GeomFromText('POINT(44.9858748 -73.0979062)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458221', 'Lincoln Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Wells', 43.4072851, -73.1901061, ST_GeomFromText('POINT(43.4072851 -73.1901061)', 4326), NULL, NULL, '1980-10-29', '2022-09-02', NULL, NULL, NULL),
  ('1458222', 'Lincoln Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Hinesburg', 44.2998766, -73.0483252, ST_GeomFromText('POINT(44.2998766 -73.0483252)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458223', 'Lincoln Hollow', 'Valley', 'Vermont', 'VT', 'Bennington', 'Pownal', 42.7745157, -73.2499995, ST_GeomFromText('POINT(42.7745157 -73.2499995)', 4326), 42.774025, -73.2720746, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1458225', 'Line Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Saint Johnsbury', 44.3936694, -72.0648179, ST_GeomFromText('POINT(44.3936694 -72.0648179)', 4326), 44.4186111, -72.0736111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458226', 'Line Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Gallup Mills', 44.6103316, -71.8012033, ST_GeomFromText('POINT(44.6103316 -71.8012033)', 4326), 44.6372753, -71.7770364, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458227', 'Line Pond', 'Lake', 'Vermont', 'VT', 'Windsor', 'Woodstock North', 43.7174185, -72.5670139, ST_GeomFromText('POINT(43.7174185 -72.5670139)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1458228', 'Line Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Saint Johnsbury', 44.4198733, -72.0738507, ST_GeomFromText('POINT(44.4198733 -72.0738507)', 4326), NULL, NULL, '1980-10-29', '2021-01-22', NULL, NULL, NULL),
  ('1458229', 'Line Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Morgan Center OE N', 45.0069186, -71.9156758, ST_GeomFromText('POINT(45.0069186 -71.9156758)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1458230', 'Litchfield Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Chester', 43.2698719, -72.5291467, ST_GeomFromText('POINT(43.2698719 -72.5291467)', 4326), NULL, NULL, '1980-10-29', '2023-07-21', NULL, NULL, NULL),
  ('1458231', 'Little Ascutney Mountain', 'Summit', 'Vermont', 'VT', 'Windsor', 'Cavendish', 43.4248919, -72.5040228, ST_GeomFromText('POINT(43.4248919 -72.5040228)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458232', 'Little Bluff', 'Cliff', 'Vermont', 'VT', 'Grand Isle', 'Rouses Point', 44.9295217, -73.2634781, ST_GeomFromText('POINT(44.9295217 -73.2634781)', 4326), NULL, NULL, '1980-10-29', '2016-12-10', 'Official', 'Board Decision', '1967-01-01'),
  ('1458233', 'Little Commissary Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Bellows Falls', 43.2145206, -72.4414774, ST_GeomFromText('POINT(43.2145206 -72.4414774)', 4326), 43.2263889, -72.4741667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458234', 'Little Deer Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Marshfield', 44.297658, -72.2777456, ST_GeomFromText('POINT(44.297658 -72.2777456)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1458235', 'Little Elligo Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Caspian Lake', 44.5783847, -72.3638803, ST_GeomFromText('POINT(44.5783847 -72.3638803)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', 'Official', 'Board Decision', '1980-01-01'),
  ('1458236', 'Little Elmore Pond', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Mount Worcester', 44.4980898, -72.5316144, ST_GeomFromText('POINT(44.4980898 -72.5316144)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1458237', 'Little Equinox', 'Summit', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.1484011, -73.1267712, ST_GeomFromText('POINT(43.1484011 -73.1267712)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1458238', 'Little Haystack Mountain', 'Summit', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.2367339, -73.194828, ST_GeomFromText('POINT(43.2367339 -73.194828)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1458239', 'Little Hedgehog', 'Summit', 'Vermont', 'VT', 'Orleans', 'Island Pond', 44.8012728, -71.9754161, ST_GeomFromText('POINT(44.8012728 -71.9754161)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458240', 'Little Hosmer Pond', 'Reservoir', 'Vermont', 'VT', 'Orleans', 'Albany', 44.6765523, -72.3765396, ST_GeomFromText('POINT(44.6765523 -72.3765396)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1458241', 'Little Jay', 'Summit', 'Vermont', 'VT', 'Franklin', 'Jay Peak', 44.9066473, -72.5415919, ST_GeomFromText('POINT(44.9066473 -72.5415919)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458242', 'Little Killington', 'Summit', 'Vermont', 'VT', 'Rutland', 'Killington Peak', 43.5916644, -72.8250667, ST_GeomFromText('POINT(43.5916644 -72.8250667)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1458243', 'Little Lake', 'Lake', 'Vermont', 'VT', 'Rutland', 'Wells', 43.4328564, -73.2033236, ST_GeomFromText('POINT(43.4328564 -73.2033236)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL),
  ('1458244', 'Little Lemon Fair River', 'Stream', 'Vermont', 'VT', 'Addison', 'Sudbury', 43.8470056, -73.238171, ST_GeomFromText('POINT(43.8470056 -73.238171)', 4326), 43.7861731, -73.257059, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458245', 'Little Mud Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.3865345, -72.390685, ST_GeomFromText('POINT(44.3865345 -72.390685)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1458246', 'Little Cow Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Stone Mountain', 44.5616868, -71.6951115, ST_GeomFromText('POINT(44.5616868 -71.6951115)', 4326), NULL, NULL, '1980-10-29', '2020-05-15', 'Official', 'Board Decision', '2020-05-14'),
  ('1458247', 'Little Pinnacle', 'Pillar', 'Vermont', 'VT', 'Franklin', 'Enosburg Falls', 44.9544905, -72.7576369, ST_GeomFromText('POINT(44.9544905 -72.7576369)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458248', 'Little Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.3862941, -72.4376461, ST_GeomFromText('POINT(44.3862941 -72.4376461)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1458249', 'Little Pond', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Woodbury', 44.4599042, -72.4967542, ST_GeomFromText('POINT(44.4599042 -72.4967542)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1458250', 'Little Pond', 'Lake', 'Vermont', 'VT', 'Franklin', 'Enosburg Falls', 44.9566881, -72.8271899, ST_GeomFromText('POINT(44.9566881 -72.8271899)', 4326), NULL, NULL, '1980-10-29', '2020-01-15', NULL, NULL, NULL),
  ('1458251', 'Little Potash Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Bloomfield', 44.7999522, -71.6783192, ST_GeomFromText('POINT(44.7999522 -71.6783192)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458252', 'Little River', 'Stream', 'Vermont', 'VT', 'Washington', 'Waterbury', 44.3522781, -72.7798408, ST_GeomFromText('POINT(44.3522781 -72.7798408)', 4326), 44.4883867, -72.6623393, '1980-10-29', NULL, 'Official', 'Board Decision', '1962-01-01'),
  ('1458253', 'Little Roundtop', 'Summit', 'Vermont', 'VT', 'Essex', 'Gallup Mills', 44.5855372, -71.7951124, ST_GeomFromText('POINT(44.5855372 -71.7951124)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458254', 'Little Spruce Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Marshfield', 44.2546651, -72.3026179, ST_GeomFromText('POINT(44.2546651 -72.3026179)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1458255', 'Little Stony Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Bethel', 43.7711779, -72.7067688, ST_GeomFromText('POINT(43.7711779 -72.7067688)', 4326), 43.747845, -72.6873233, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458256', 'Little Wheeler Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Maidstone Lake', 44.7154972, -71.6345825, ST_GeomFromText('POINT(44.7154972 -71.6345825)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1458258', 'Lockwood Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Hazens Notch', 44.7749578, -72.5075553, ST_GeomFromText('POINT(44.7749578 -72.5075553)', 4326), 44.7843126, -72.5561606, '1980-10-29', '2019-11-12', NULL, NULL, NULL),
  ('1458259', 'Locust Creek', 'Stream', 'Vermont', 'VT', 'Windsor', 'Bethel', 43.8131223, -72.6481569, ST_GeomFromText('POINT(43.8131223 -72.6481569)', 4326), 43.6859013, -72.6781553, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458262', 'Logger Branch', 'Stream', 'Vermont', 'VT', 'Essex', 'Bloomfield', 44.8483817, -71.7281481, ST_GeomFromText('POINT(44.8483817 -71.7281481)', 4326), 44.9081032, -71.7648161, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458263', 'Logger Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Norton Pond', 44.8853257, -71.7606492, ST_GeomFromText('POINT(44.8853257 -71.7606492)', 4326), 44.9147222, -71.7922222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458264', 'Lone Rock Point', 'Cape', 'Vermont', 'VT', 'Chittenden', 'Burlington', 44.4883819, -73.2487393, ST_GeomFromText('POINT(44.4883819 -73.2487393)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458265', 'Lone Tree Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Crystal Lake', 44.7203975, -72.21978, ST_GeomFromText('POINT(44.7203975 -72.21978)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458266', 'Lone Tree Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Juniper Island', 44.3907539, -73.260359, ST_GeomFromText('POINT(44.3907539 -73.260359)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1458267', 'Long Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Pawlet', 43.3356204, -73.2078839, ST_GeomFromText('POINT(43.3356204 -73.2078839)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1458268', 'Long Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Woodstock South', 43.5285838, -72.6185188, ST_GeomFromText('POINT(43.5285838 -72.6185188)', 4326), NULL, NULL, '1980-10-29', '2023-07-21', NULL, NULL, NULL),
  ('1458269', 'Long Marsh Bay', 'Bay', 'Vermont', 'VT', 'Franklin', 'East Alburg', 44.9989297, -73.1565172, ST_GeomFromText('POINT(44.9989297 -73.1565172)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458271', 'Long Meadow Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Montpelier', 44.3164469, -72.5717768, ST_GeomFromText('POINT(44.3164469 -72.5717768)', 4326), 44.3583333, -72.5230556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458272', 'Long Meadow Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Montpelier', 44.3463913, -72.5375879, ST_GeomFromText('POINT(44.3463913 -72.5375879)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458273', 'Long Point', 'Cape', 'Vermont', 'VT', 'Addison', 'Charlotte', 44.2556083, -73.2817915, ST_GeomFromText('POINT(44.2556083 -73.2817915)', 4326), NULL, NULL, '1980-10-29', NULL, 'Official', 'Board Decision', '1942-01-01'),
  ('1458274', 'Long Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'Rouses Point', 44.9256201, -73.2678098, ST_GeomFromText('POINT(44.9256201 -73.2678098)', 4326), NULL, NULL, '1980-10-29', '2016-12-10', NULL, NULL, NULL),
  ('1458275', 'Long Point Island', 'Island', 'Vermont', 'VT', 'Grand Isle', 'South Hero', 44.7478205, -73.3267991, ST_GeomFromText('POINT(44.7478205 -73.3267991)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458276', 'Long Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Crystal Lake', 44.6762266, -72.1449627, ST_GeomFromText('POINT(44.6762266 -72.1449627)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1458277', 'Long Pond', 'Lake', 'Vermont', 'VT', 'Orange', 'East Corinth', 44.1043454, -72.1661173, ST_GeomFromText('POINT(44.1043454 -72.1661173)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1458278', 'Long Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Craftsbury', 44.6250919, -72.2625861, ST_GeomFromText('POINT(44.6250919 -72.2625861)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1458279', 'Long Pond', 'Lake', 'Vermont', 'VT', 'Chittenden', 'Georgia Plains', 44.6743466, -73.1913667, ST_GeomFromText('POINT(44.6743466 -73.1913667)', 4326), NULL, NULL, '1980-10-29', '2020-01-15', NULL, NULL, NULL),
  ('1458280', 'Long Swamp', 'Swamp', 'Vermont', 'VT', 'Rutland', 'Sudbury', 43.7950633, -73.138446, ST_GeomFromText('POINT(43.7950633 -73.138446)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458282', 'Lookout Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Peacham', 44.3644645, -72.222984, ST_GeomFromText('POINT(44.3644645 -72.222984)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458284', 'Loomis Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Stowe', 44.378658, -72.6831701, ST_GeomFromText('POINT(44.378658 -72.6831701)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1458286', 'Lord Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'South Strafford', 43.8275691, -72.2878699, ST_GeomFromText('POINT(43.8275691 -72.2878699)', 4326), 43.8025, -72.3436111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458287', 'Lord Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Westmore', 44.7975489, -72.1145444, ST_GeomFromText('POINT(44.7975489 -72.1145444)', 4326), 44.7467164, -72.0950995, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458288', 'Lords Creek', 'Stream', 'Vermont', 'VT', 'Orleans', 'Irasburg', 44.7947705, -72.2978828, ST_GeomFromText('POINT(44.7947705 -72.2978828)', 4326), 44.7089387, -72.3189944, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458289', 'Lords Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Marshfield', 44.315082, -72.3588588, ST_GeomFromText('POINT(44.315082 -72.3588588)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458290', 'Lost Lake', 'Lake', 'Vermont', 'VT', 'Franklin', 'Saint Albans', 44.7683198, -73.0927429, ST_GeomFromText('POINT(44.7683198 -73.0927429)', 4326), NULL, NULL, '1980-10-29', '2020-01-15', NULL, NULL, NULL),
  ('1458291', 'Lost Pond', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Cold Hollow Mountains', 44.7906038, -72.6476214, ST_GeomFromText('POINT(44.7906038 -72.6476214)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458292', 'Lovejoy Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Andover', 43.3336846, -72.6937066, ST_GeomFromText('POINT(43.3336846 -72.6937066)', 4326), 43.3225, -72.7111111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458293', 'Loveland Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Richford', 44.9850456, -72.6840208, ST_GeomFromText('POINT(44.9850456 -72.6840208)', 4326), 44.9519902, -72.6123459, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458294', 'Loveland Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hanover', 43.6827772, -72.3362029, ST_GeomFromText('POINT(43.6827772 -72.3362029)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1458295', 'Loveland Ledge', 'Bench', 'Vermont', 'VT', 'Washington', 'Marshfield', 44.3356139, -72.3673252, ST_GeomFromText('POINT(44.3356139 -72.3673252)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458297', 'Lowell Mountains', 'Range', 'Vermont', 'VT', 'Orleans', 'Lowell', 44.7532534, -72.4225473, ST_GeomFromText('POINT(44.7532534 -72.4225473)', 4326), NULL, NULL, '1980-10-29', '2024-10-03', NULL, NULL, NULL),
  ('1458300', 'Lower Hurricane Reservoir', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Hanover', 43.6471535, -72.3694718, ST_GeomFromText('POINT(43.6471535 -72.3694718)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1458304', 'Lower Pond', 'Reservoir', 'Vermont', 'VT', 'Chittenden', 'Hinesburg', 44.350154, -73.084874, ST_GeomFromText('POINT(44.350154 -73.084874)', 4326), NULL, NULL, '1980-10-29', '2024-11-07', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458305', 'Symes Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Woodsville', 44.2442373, -72.1019866, ST_GeomFromText('POINT(44.2442373 -72.1019866)', 4326), NULL, NULL, '1980-10-29', '2021-02-06', 'Official', 'Board Decision', '2012-06-14'),
  ('1458310', 'Lucas Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Jay Peak OE N', 45.0108782, -72.5881781, ST_GeomFromText('POINT(45.0108782 -72.5881781)', 4326), 44.9864338, -72.5065026, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458311', 'Luce Hill', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Stowe', 44.4685616, -72.7473636, ST_GeomFromText('POINT(44.4685616 -72.7473636)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458313', 'Lulls Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.5275711, -72.3923136, ST_GeomFromText('POINT(43.5275711 -72.3923136)', 4326), 43.5317371, -72.5325931, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458314', 'Lund Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Gallup Mills', 44.5900544, -71.7889806, ST_GeomFromText('POINT(44.5900544 -71.7889806)', 4326), 44.6086111, -71.7794444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458316', 'Lye Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Plainfield', 44.2914482, -72.3803802, ST_GeomFromText('POINT(44.2914482 -72.3803802)', 4326), 44.2814487, -72.3323227, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458317', 'Lyford Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Joes Pond', 44.4452966, -72.2483132, ST_GeomFromText('POINT(44.4452966 -72.2483132)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1458318', 'Lyman Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Governors Mountain', 42.858511, -72.7309487, ST_GeomFromText('POINT(42.858511 -72.7309487)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458319', 'Lyme Emery Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Washington', 44.1128935, -72.3843904, ST_GeomFromText('POINT(44.1128935 -72.3843904)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1458325', 'Macdonough Point', 'Cape', 'Vermont', 'VT', 'Addison', 'Vergennes West', 44.2450527, -73.2987363, ST_GeomFromText('POINT(44.2450527 -73.2987363)', 4326), NULL, NULL, '1980-10-29', NULL, 'Official', 'Board Decision', '1948-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458326', 'Mace Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.5601085, -72.4192812, ST_GeomFromText('POINT(43.5601085 -72.4192812)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL),
  ('1458327', 'Macks Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Peacham', 44.3473992, -72.2284988, ST_GeomFromText('POINT(44.3473992 -72.2284988)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458329', 'Macomber Mountain', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Mount Mansfield', 44.5527842, -72.8743759, ST_GeomFromText('POINT(44.5527842 -72.8743759)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1458330', 'Mad Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Lower Waterford', 44.3489489, -71.9062028, ST_GeomFromText('POINT(44.3489489 -71.9062028)', 4326), 44.3783926, -71.9162033, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458331', 'Mad Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Island Pond', 44.8272711, -71.9734298, ST_GeomFromText('POINT(44.8272711 -71.9734298)', 4326), 44.7958826, -72.0187085, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458332', 'Madden Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Killington Peak', 43.58868, -72.7548226, ST_GeomFromText('POINT(43.58868 -72.7548226)', 4326), 43.5875, -72.7794444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458333', 'Madison Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Maidstone Lake', 44.6842184, -71.7156464, ST_GeomFromText('POINT(44.6842184 -71.7156464)', 4326), 44.6761631, -71.7912037, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458334', 'Madonna Peak', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Mount Mansfield', 44.5614622, -72.758669, ST_GeomFromText('POINT(44.5614622 -72.758669)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458335', 'Maidstone Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Maidstone Lake', 44.6722741, -71.6534223, ST_GeomFromText('POINT(44.6722741 -71.6534223)', 4326), 44.6675, -71.6494444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458336', 'Maidstone Hill', 'Summit', 'Vermont', 'VT', 'Essex', 'Stratford', 44.6447628, -71.6140479, ST_GeomFromText('POINT(44.6447628 -71.6140479)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458337', 'Maidstone Lake', 'Lake', 'Vermont', 'VT', 'Essex', 'Maidstone Lake', 44.6477226, -71.648879, ST_GeomFromText('POINT(44.6477226 -71.648879)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1458339', 'Malletts Bay', 'Bay', 'Vermont', 'VT', 'Chittenden', 'Colchester', 44.5653254, -73.2090182, ST_GeomFromText('POINT(44.5653254 -73.2090182)', 4326), NULL, NULL, '1980-10-29', '2018-05-01', NULL, NULL, NULL),
  ('1458340', 'Malletts Head', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Colchester', 44.5627361, -73.2376206, ST_GeomFromText('POINT(44.5627361 -73.2376206)', 4326), NULL, NULL, '1980-10-29', '2023-07-21', NULL, NULL, NULL),
  ('1458341', 'Mallory Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Plainfield', 44.263393, -72.4939948, ST_GeomFromText('POINT(44.263393 -72.4939948)', 4326), 44.2986697, -72.5387196, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458342', 'Manchester Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Woodsville', 44.2098215, -72.0601244, ST_GeomFromText('POINT(44.2098215 -72.0601244)', 4326), 44.2395256, -72.0998264, '1980-10-29', '2021-02-03', NULL, NULL, NULL),
  ('1458344', 'Maple Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Randolph', 43.9100656, -72.6503813, ST_GeomFromText('POINT(43.9100656 -72.6503813)', 4326), 43.9256212, -72.6226032, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458348', 'Maple Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Plainfield', 44.2672412, -72.3958024, ST_GeomFromText('POINT(44.2672412 -72.3958024)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458352', 'Maquam Bay', 'Bay', 'Vermont', 'VT', 'Franklin', 'East Alburg', 44.9275418, -73.1870747, ST_GeomFromText('POINT(44.9275418 -73.1870747)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458353', 'Maquam Creek', 'Stream', 'Vermont', 'VT', 'Franklin', 'East Alburg', 44.9328196, -73.1740191, ST_GeomFromText('POINT(44.9328196 -73.1740191)', 4326), 44.9466667, -73.1566667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458354', 'Marble Island', 'Island', 'Vermont', 'VT', 'Chittenden', 'Colchester', 44.5722693, -73.230407, ST_GeomFromText('POINT(44.5722693 -73.230407)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458355', 'Marble Ledge', 'Cliff', 'Vermont', 'VT', 'Addison', 'Middlebury', 44.0489479, -73.1367845, ST_GeomFromText('POINT(44.0489479 -73.1367845)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458356', 'Marl Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Sutton', 44.6997194, -72.0596894, ST_GeomFromText('POINT(44.6997194 -72.0596894)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1458359', 'Marr Flat', 'Flat', 'Vermont', 'VT', 'Chittenden', 'Richmond', 44.4669968, -72.8784563, ST_GeomFromText('POINT(44.4669968 -72.8784563)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458360', 'Marsh Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Sheldon Springs', 44.9647667, -72.8748557, ST_GeomFromText('POINT(44.9647667 -72.8748557)', 4326), 44.9586563, -72.8270794, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458361', 'Marsh Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Vergennes East', 44.1864347, -73.2365098, ST_GeomFromText('POINT(44.1864347 -73.2365098)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458365', 'Marshfield Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Marshfield', 44.3478358, -72.358714, ST_GeomFromText('POINT(44.3478358 -72.358714)', 4326), 44.3038889, -72.3061111, '1980-10-29', NULL, 'Official', 'Board Decision', '1971-01-01'),
  ('1458366', 'Marshfield Mountain', 'Summit', 'Vermont', 'VT', 'Washington', 'Marshfield', 44.3289355, -72.3113158, ST_GeomFromText('POINT(44.3289355 -72.3113158)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', 'Official', 'Board Decision', '1971-01-01'),
  ('1458367', 'Turtlehead Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Marshfield', 44.3258269, -72.3306927, ST_GeomFromText('POINT(44.3258269 -72.3306927)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', 'Official', 'Board Decision', '2001-01-01'),
  ('1458369', 'Martell Swamp', 'Swamp', 'Vermont', 'VT', 'Washington', 'Cabot', 44.4703327, -72.3689948, ST_GeomFromText('POINT(44.4703327 -72.3689948)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458370', 'Martin Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Barre West', 44.1422843, -72.5295493, ST_GeomFromText('POINT(44.1422843 -72.5295493)', 4326), 44.1338889, -72.5813889, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458371', 'Martindale Point', 'Cape', 'Vermont', 'VT', 'Franklin', 'East Alburg', 44.9861523, -73.135962, ST_GeomFromText('POINT(44.9861523 -73.135962)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458372', 'Martins Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Montpelier', 44.3331132, -72.5689992, ST_GeomFromText('POINT(44.3331132 -72.5689992)', 4326), 44.3733895, -72.6553924, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458373', 'Martins Pond', 'Reservoir', 'Vermont', 'VT', 'Caledonia', 'Peacham', 44.3063807, -72.2125168, ST_GeomFromText('POINT(44.3063807 -72.2125168)', 4326), NULL, NULL, '1980-10-29', '2020-07-23', NULL, NULL, NULL),
  ('1458375', 'Mason Mountain', 'Summit', 'Vermont', 'VT', 'Orange', 'Groton', 44.1326312, -72.1940046, ST_GeomFromText('POINT(44.1326312 -72.1940046)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1458376', 'Mason Point', 'Cape', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.6433991, -73.2076109, ST_GeomFromText('POINT(43.6433991 -73.2076109)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458377', 'Masters Mountain', 'Summit', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.2476171, -73.2039431, ST_GeomFromText('POINT(43.2476171 -73.2039431)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1458379', 'Mathewson Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Lyndonville', 44.5803317, -72.0689868, ST_GeomFromText('POINT(44.5803317 -72.0689868)', 4326), 44.6213889, -72.0708333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458380', 'Mathewson Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Lyndonville', 44.6029613, -72.0545652, ST_GeomFromText('POINT(44.6029613 -72.0545652)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458381', 'May Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Crystal Lake', 44.7313011, -72.1263402, ST_GeomFromText('POINT(44.7313011 -72.1263402)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458382', 'May Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Sutton', 44.7420771, -72.1182167, ST_GeomFromText('POINT(44.7420771 -72.1182167)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458383', 'May Pond Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Crystal Lake', 44.7483827, -72.1614901, ST_GeomFromText('POINT(44.7483827 -72.1614901)', 4326), 44.7422719, -72.1220446, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458384', 'May Pond Mountain', 'Summit', 'Vermont', 'VT', 'Orleans', 'Westmore', 44.7519275, -72.1089662, ST_GeomFromText('POINT(44.7519275 -72.1089662)', 4326), NULL, NULL, '1980-10-29', '2022-09-05', NULL, NULL, NULL),
  ('1458385', 'Mayers Dome', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Richmond', 44.46421, -72.8967886, ST_GeomFromText('POINT(44.46421 -72.8967886)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458386', 'Mays Mountain', 'Summit', 'Vermont', 'VT', 'Washington', 'Marshfield', 44.3429651, -72.3428708, ST_GeomFromText('POINT(44.3429651 -72.3428708)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1458387', 'Mayston Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'West Topsham', 44.0655508, -72.353042, ST_GeomFromText('POINT(44.0655508 -72.353042)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458388', 'McAllister Pond', 'Reservoir', 'Vermont', 'VT', 'Orleans', 'Lowell', 44.8292926, -72.4831632, ST_GeomFromText('POINT(44.8292926 -72.4831632)', 4326), NULL, NULL, '1980-10-29', '2019-11-26', NULL, NULL, NULL),
  ('1458389', 'McArthur Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.5406266, -72.3803691, ST_GeomFromText('POINT(43.5406266 -72.3803691)', 4326), 43.5755556, -72.4330556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458390', 'McBride Bay', 'Bay', 'Vermont', 'VT', 'Grand Isle', 'South Hero', 44.6367118, -73.3467987, ST_GeomFromText('POINT(44.6367118 -73.3467987)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458391', 'McCleary Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Craftsbury', 44.7369936, -72.3678849, ST_GeomFromText('POINT(44.7369936 -72.3678849)', 4326), 44.7731041, -72.3956636, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458392', 'McConnell Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Spectacle Pond', 44.8181089, -71.8039347, ST_GeomFromText('POINT(44.8181089 -71.8039347)', 4326), NULL, NULL, '1980-10-29', '2019-04-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458393', 'McGowan Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Sheldon Springs', 44.9067117, -72.9559669, ST_GeomFromText('POINT(44.9067117 -72.9559669)', 4326), 44.9572222, -72.9308333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458394', 'McGregor Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'East Alburg', 44.9662688, -73.233654, ST_GeomFromText('POINT(44.9662688 -73.233654)', 4326), NULL, NULL, '1980-10-29', '2017-01-28', NULL, NULL, NULL),
  ('1458396', 'McKinley Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Island Pond', 44.774494, -71.9045397, ST_GeomFromText('POINT(44.774494 -71.9045397)', 4326), 44.7583333, -71.935, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458397', 'McKinstry Hill', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Eden', 44.6409697, -72.5509242, ST_GeomFromText('POINT(44.6409697 -72.5509242)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458398', 'McLam Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Barnet', 44.2533947, -72.1123166, ST_GeomFromText('POINT(44.2533947 -72.1123166)', 4326), 44.2456171, -72.12565, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458399', 'McLean Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Underhill', 44.5720343, -72.9506635, ST_GeomFromText('POINT(44.5720343 -72.9506635)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458400', 'McMaster Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Vershire', 43.8907862, -72.3427867, ST_GeomFromText('POINT(43.8907862 -72.3427867)', 4326), NULL, NULL, '1980-10-29', '2022-09-05', NULL, NULL, NULL),
  ('1458401', 'McNeil Cove', 'Bay', 'Vermont', 'VT', 'Chittenden', 'Charlotte', 44.299774, -73.2984595, ST_GeomFromText('POINT(44.299774 -73.2984595)', 4326), NULL, NULL, '1980-10-29', NULL, 'Official', 'Board Decision', '1942-01-01'),
  ('1458402', 'McSherry Mountain', 'Summit', 'Vermont', 'VT', 'Orleans', 'West Burke', 44.7398431, -71.9915083, ST_GeomFromText('POINT(44.7398431 -71.9915083)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458404', 'Meach Island', 'Island', 'Vermont', 'VT', 'Chittenden', 'Charlotte', 44.3600509, -73.2740154, ST_GeomFromText('POINT(44.3600509 -73.2740154)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458405', 'Meacham Swamp', 'Swamp', 'Vermont', 'VT', 'Essex', 'Monadnock Mountain', 44.8978253, -71.6025882, ST_GeomFromText('POINT(44.8978253 -71.6025882)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458406', 'Mead Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Morgan Center', 44.9424693, -71.9975178, ST_GeomFromText('POINT(44.9424693 -71.9975178)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458408', 'Meadow Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'East Corinth', 44.0392324, -72.1978708, ST_GeomFromText('POINT(44.0392324 -72.1978708)', 4326), 44.0852778, -72.1697222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458409', 'Perkins Meadow Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Cabot', 44.4765368, -72.2968711, ST_GeomFromText('POINT(44.4765368 -72.2968711)', 4326), 44.4402982, -72.2720526, '1980-10-29', '2019-11-12', 'Official', 'Board Decision', '1977-01-01'),
  ('1458410', 'Meadow Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'West Topsham', 44.0125663, -72.2603722, ST_GeomFromText('POINT(44.0125663 -72.2603722)', 4326), 44.0125657, -72.3781534, '1980-10-29', NULL, 'Official', 'Board Decision', '1980-01-01'),
  ('1458411', 'Mecawee Pond', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.5557591, -72.6390005, ST_GeomFromText('POINT(43.5557591 -72.6390005)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1458413', 'Meehan Hill', 'Summit', 'Vermont', 'VT', 'Essex', 'Island Pond', 44.7700747, -71.9270188, ST_GeomFromText('POINT(44.7700747 -71.9270188)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1458414', 'Meetinghouse Hill', 'Summit', 'Vermont', 'VT', 'Bennington', 'Pawlet', 43.260192, -73.2334366, ST_GeomFromText('POINT(43.260192 -73.2334366)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1458415', 'Meetinghouse Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Woodstock South', 43.5797521, -72.5482583, ST_GeomFromText('POINT(43.5797521 -72.5482583)', 4326), NULL, NULL, '1980-10-29', '2022-09-08', NULL, NULL, NULL),
  ('1458416', 'Meetinghouse Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Lyme', 43.8325123, -72.2409256, ST_GeomFromText('POINT(43.8325123 -72.2409256)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458418', 'Melvin Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Groton', 44.1805931, -72.1703722, ST_GeomFromText('POINT(44.1805931 -72.1703722)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1458419', 'Lake Memphremagog', 'Lake', 'Vermont', 'VT', 'Orleans', 'Newport Center OE N', 45.0477225, -72.2677668, ST_GeomFromText('POINT(45.0477225 -72.2677668)', 4326), NULL, NULL, '1980-10-29', '2020-03-09', NULL, NULL, NULL),
  ('1458421', 'Mendon Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Rutland', 43.5735169, -72.9101053, ST_GeomFromText('POINT(43.5735169 -72.9101053)', 4326), 43.5722019, -72.8869652, '1980-10-29', '2019-11-05', NULL, NULL, NULL),
  ('1458422', 'Mendon Peak', 'Summit', 'Vermont', 'VT', 'Rutland', 'Killington Peak', 43.5954453, -72.8454059, ST_GeomFromText('POINT(43.5954453 -72.8454059)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1458423', 'Beacon Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Chelsea', 43.9904423, -72.4698414, ST_GeomFromText('POINT(43.9904423 -72.4698414)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458424', 'Metcalf Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Underhill', 44.5708749, -72.9310919, ST_GeomFromText('POINT(44.5708749 -72.9310919)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458425', 'Metcalf Pond', 'Lake', 'Vermont', 'VT', 'Franklin', 'Gilson Mountain', 44.7290661, -72.8835492, ST_GeomFromText('POINT(44.7290661 -72.8835492)', 4326), NULL, NULL, '1980-10-29', '2019-11-26', NULL, NULL, NULL),
  ('1458426', 'Metcalfe Island', 'Island', 'Vermont', 'VT', 'Franklin', 'East Alburg OE N', 45.0017075, -73.1481839, ST_GeomFromText('POINT(45.0017075 -73.1481839)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458428', 'Michigan Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Washington', 44.0714129, -72.3915096, ST_GeomFromText('POINT(44.0714129 -72.3915096)', 4326), NULL, NULL, '1980-10-29', '2023-07-21', NULL, NULL, NULL),
  ('1458429', 'Middle Branch Dead Creek', 'Stream', 'Vermont', 'VT', 'Addison', 'Snake Mountain', 44.0806113, -73.3479007, ST_GeomFromText('POINT(44.0806113 -73.3479007)', 4326), 44.0197222, -73.3333333, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458430', 'Middle Branch Williams River', 'Stream', 'Vermont', 'VT', 'Windsor', 'Chester', 43.2600751, -72.5795359, ST_GeomFromText('POINT(43.2600751 -72.5795359)', 4326), 43.2003538, -72.7325955, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458431', 'Middle Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Fairlee', 43.8900684, -72.2289805, ST_GeomFromText('POINT(43.8900684 -72.2289805)', 4326), 43.9797222, -72.2088889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458432', 'Middle Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Wells', 43.3909406, -73.1771373, ST_GeomFromText('POINT(43.3909406 -73.1771373)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458433', 'Middle Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Norton Pond', 44.9171086, -71.8317401, ST_GeomFromText('POINT(44.9171086 -71.8317401)', 4326), NULL, NULL, '1980-10-29', '2023-07-21', NULL, NULL, NULL),
  ('1458437', 'Middlebury Swamp', 'Swamp', 'Vermont', 'VT', 'Addison', 'Cornwall', 43.9742266, -73.1798393, ST_GeomFromText('POINT(43.9742266 -73.1798393)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458441', 'Middlesex Notch', 'Gap', 'Vermont', 'VT', 'Washington', 'Middlesex', 44.3347791, -72.6892819, ST_GeomFromText('POINT(44.3347791 -72.6892819)', 4326), NULL, NULL, '2023-11-16', '2023-11-16', NULL, NULL, NULL),
  ('1458446', 'Mile Point', 'Cape', 'Vermont', 'VT', 'Addison', 'Vergennes West', 44.2050529, -73.3556814, ST_GeomFromText('POINT(44.2050529 -73.3556814)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458447', 'Mile Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Spectacle Pond', 44.7778726, -71.798962, ST_GeomFromText('POINT(44.7778726 -71.798962)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1458448', 'Miles Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Craftsbury', 44.7284905, -72.2818762, ST_GeomFromText('POINT(44.7284905 -72.2818762)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458449', 'Miles Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Miles Pond', 44.480313, -71.8116699, ST_GeomFromText('POINT(44.480313 -71.8116699)', 4326), NULL, NULL, '1980-10-29', '2022-09-02', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458450', 'Miles Pond', 'Reservoir', 'Vermont', 'VT', 'Essex', 'Miles Pond', 44.4470724, -71.8112606, ST_GeomFromText('POINT(44.4470724 -71.8112606)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1458452', 'Miles Stream', 'Stream', 'Vermont', 'VT', 'Essex', 'Miles Pond', 44.4078369, -71.7600894, ST_GeomFromText('POINT(44.4078369 -71.7600894)', 4326), 44.4463889, -71.7972222, '1980-10-29', NULL, 'Official', 'Board Decision', '1972-01-01'),
  ('1458453', 'Mill Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Putney', 42.9570254, -72.5284229, ST_GeomFromText('POINT(42.9570254 -72.5284229)', 4326), 42.9780556, -72.5533333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458454', 'Mill Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Windsor', 43.4017396, -72.4006456, ST_GeomFromText('POINT(43.4017396 -72.4006456)', 4326), 43.4388889, -72.46, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458455', 'Mill Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Wells', 43.4117383, -73.2264969, ST_GeomFromText('POINT(43.4117383 -73.2264969)', 4326), 43.4261111, -73.2063889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458456', 'Mill Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Westmore', 44.7658829, -72.0545428, ST_GeomFromText('POINT(44.7658829 -72.0545428)', 4326), 44.7705556, -72.0002778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458457', 'Mill Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'North Troy', 44.8839357, -72.4173315, ST_GeomFromText('POINT(44.8839357 -72.4173315)', 4326), 44.9036111, -72.4936111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458458', 'Mill Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'West Burke', 44.6728298, -71.8825943, ST_GeomFromText('POINT(44.6728298 -71.8825943)', 4326), 44.6836628, -71.8603717, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458459', 'Mill Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Tinkerville', 44.7742157, -71.6020327, ST_GeomFromText('POINT(44.7742157 -71.6020327)', 4326), 44.8481038, -71.632867, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458460', 'Mill Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Walpole', 43.0559127, -72.4659218, ST_GeomFromText('POINT(43.0559127 -72.4659218)', 4326), 43.0798011, -72.5253673, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458461', 'Mill Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.2384095, -73.2492748, ST_GeomFromText('POINT(43.2384095 -73.2492748)', 4326), 43.2881304, -73.1803846, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458462', 'Mill Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Windsor', 43.472392, -72.3871292, ST_GeomFromText('POINT(43.472392 -72.3871292)', 4326), 43.5342368, -72.5942615, '1980-10-29', '2015-08-14', NULL, NULL, NULL),
  ('1458463', 'Mill Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Quechee', 43.721736, -72.4275937, ST_GeomFromText('POINT(43.721736 -72.4275937)', 4326), 43.7081244, -72.514262, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458464', 'Spear Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Randolph', 43.960065, -72.6528825, ST_GeomFromText('POINT(43.960065 -72.6528825)', 4326), 44.0083973, -72.7092742, '1980-10-29', NULL, 'Official', 'Board Decision', '1978-01-01'),
  ('1458465', 'Mill Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Essex Junction', 44.4542181, -73.021792, ST_GeomFromText('POINT(44.4542181 -73.021792)', 4326), 44.4483864, -72.8523442, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458466', 'Mill Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Milton', 44.6625494, -73.0093042, ST_GeomFromText('POINT(44.6625494 -73.0093042)', 4326), 44.7544927, -73.0265313, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458467', 'Mill Pond', 'Lake', 'Vermont', 'VT', 'Windsor', 'Windsor', 43.4725686, -72.3981545, ST_GeomFromText('POINT(43.4725686 -72.3981545)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1458468', 'Mill Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Benson', 43.7050895, -73.2841422, ST_GeomFromText('POINT(43.7050895 -73.2841422)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL),
  ('1458469', 'Mill Pond Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Fairlee', 43.9892334, -72.1442575, ST_GeomFromText('POINT(43.9892334 -72.1442575)', 4326), 43.9613889, -72.19, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458470', 'Mill River', 'Stream', 'Vermont', 'VT', 'Franklin', 'Saint Albans Bay', 44.7858783, -73.1473575, ST_GeomFromText('POINT(44.7858783 -73.1473575)', 4326), 44.7867137, -73.0487506, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458475', 'Miller Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Stowe', 44.4433874, -72.7370637, ST_GeomFromText('POINT(44.4433874 -72.7370637)', 4326), 44.4653306, -72.8392887, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458476', 'Miller Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'North Hartland', 43.6120062, -72.3578683, ST_GeomFromText('POINT(43.6120062 -72.3578683)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL),
  ('1458477', 'Miller Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Sudbury', 43.8199454, -73.1623988, ST_GeomFromText('POINT(43.8199454 -73.1623988)', 4326), NULL, NULL, '1980-10-29', '2022-09-02', NULL, NULL, NULL),
  ('1458478', 'Miller Pond', 'Lake', 'Vermont', 'VT', 'Orange', 'Vershire', 43.8929024, -72.3057376, ST_GeomFromText('POINT(43.8929024 -72.3057376)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1458479', 'Miller Run', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Lyndonville', 44.5419997, -72.0084293, ST_GeomFromText('POINT(44.5419997 -72.0084293)', 4326), 44.6436632, -72.1017658, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458481', 'Mills Point', 'Cape', 'Vermont', 'VT', 'Chittenden', 'Colchester Point', 44.5578248, -73.2962413, ST_GeomFromText('POINT(44.5578248 -73.2962413)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458482', 'Millstone Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Barre East', 44.1588477, -72.4787993, ST_GeomFromText('POINT(44.1588477 -72.4787993)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458484', 'Milton Pond', 'Lake', 'Vermont', 'VT', 'Chittenden', 'Milton', 44.6347603, -73.0631934, ST_GeomFromText('POINT(44.6347603 -73.0631934)', 4326), NULL, NULL, '1980-10-29', '2020-01-15', NULL, NULL, NULL),
  ('1458486', 'Minards Pond', 'Reservoir', 'Vermont', 'VT', 'Windham', 'Bellows Falls', 43.1431617, -72.4694267, ST_GeomFromText('POINT(43.1431617 -72.4694267)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1458487', 'Mineral Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Enosburg Falls', 44.9775453, -72.7970809, ST_GeomFromText('POINT(44.9775453 -72.7970809)', 4326), 44.9538889, -72.7872222, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458488', 'Mineral Spring Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Lowell', 44.8642138, -72.4181648, ST_GeomFromText('POINT(44.8642138 -72.4181648)', 4326), 44.7963889, -72.3802778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458489', 'Minister Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Mount Worcester', 44.3750566, -72.5509438, ST_GeomFromText('POINT(44.3750566 -72.5509438)', 4326), 44.4252778, -72.6144444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458490', 'Minister Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Lyndonville', 44.5144478, -72.0042387, ST_GeomFromText('POINT(44.5144478 -72.0042387)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1458491', 'Minister Hill', 'Summit', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.1422902, -73.1859392, ST_GeomFromText('POINT(43.1422902 -73.1859392)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1458492', 'Minister Hill', 'Summit', 'Vermont', 'VT', 'Franklin', 'Sheldon Springs OE N', 45.0031761, -72.9075312, ST_GeomFromText('POINT(45.0031761 -72.9075312)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458493', 'Mink Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Delectable Mountain', 43.6911788, -72.7201011, ST_GeomFromText('POINT(43.6911788 -72.7201011)', 4326), 43.6772222, -72.7105556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458494', 'Mink Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Miles Pond', 44.3961703, -71.8020345, ST_GeomFromText('POINT(44.3961703 -71.8020345)', 4326), 44.4127778, -71.8625, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458495', 'Mink Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Bloomfield', 44.8428261, -71.675924, ST_GeomFromText('POINT(44.8428261 -71.675924)', 4326), 44.8675, -71.6611111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458496', 'Mink Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Gilman', 44.4347809, -71.6789761, ST_GeomFromText('POINT(44.4347809 -71.6789761)', 4326), 44.5092234, -71.7331452, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458497', 'Mirror Lake', 'Reservoir', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.3959969, -72.4437168, ST_GeomFromText('POINT(44.3959969 -72.4437168)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458499', 'Missisquoi Bay', 'Bay', 'Vermont', 'VT', 'Franklin', 'East Alburg', 45.0000406, -73.1829064, ST_GeomFromText('POINT(45.0000406 -73.1829064)', 4326), NULL, NULL, '1980-10-29', '2014-07-28', NULL, NULL, NULL),
  ('1458502', 'Missisquoi River', 'Stream', 'Vermont', 'VT', 'Franklin', 'East Alburg', 44.9955965, -73.1487396, ST_GeomFromText('POINT(44.9955965 -73.1487396)', 4326), 44.8069923, -72.4589991, '1980-10-29', '2018-05-22', NULL, NULL, NULL),
  ('1458504', 'Mitchell Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Quechee', 43.735347, -72.4359274, ST_GeomFromText('POINT(43.735347 -72.4359274)', 4326), 43.7911802, -72.3637045, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458505', 'Mitchell Knoll', 'Summit', 'Vermont', 'VT', 'Essex', 'Gallup Mills', 44.5085492, -71.8295961, ST_GeomFromText('POINT(44.5085492 -71.8295961)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458506', 'Mitchell Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Gallup Mills', 44.6092754, -71.7513074, ST_GeomFromText('POINT(44.6092754 -71.7513074)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458507', 'Mitchell Pond', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Quechee', 43.7488006, -72.403045, ST_GeomFromText('POINT(43.7488006 -72.403045)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1458508', 'Moffitt Hollow', 'Valley', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.1863509, -73.1413077, ST_GeomFromText('POINT(43.1863509 -73.1413077)', 4326), 43.2165776, -73.1434269, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1458509', 'Moffitt Mountain', 'Summit', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.192973, -73.1934595, ST_GeomFromText('POINT(43.192973 -73.1934595)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1458510', 'Molly Pond', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Stowe', 44.4998398, -72.6398582, ST_GeomFromText('POINT(44.4998398 -72.6398582)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1458512', 'Mollys Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Marshfield', 44.359451, -72.336903, ST_GeomFromText('POINT(44.359451 -72.336903)', 4326), 44.410915, -72.250471, '1980-10-29', '2009-04-23', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458513', 'Mollys Falls', 'Falls', 'Vermont', 'VT', 'Washington', 'Marshfield', 44.3569984, -72.3420484, ST_GeomFromText('POINT(44.3569984 -72.3420484)', 4326), NULL, NULL, '1980-10-29', '2011-08-23', NULL, NULL, NULL),
  ('1458514', 'Mollys Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Joes Pond', 44.3938755, -72.2369539, ST_GeomFromText('POINT(44.3938755 -72.2369539)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1458515', 'Monadnock Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Monadnock Mountain', 44.8974319, -71.5444652, ST_GeomFromText('POINT(44.8974319 -71.5444652)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458519', 'Montague Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Delectable Mountain', 43.6317268, -72.6267628, ST_GeomFromText('POINT(43.6317268 -72.6267628)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1458524', 'Moody Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Westmore', 44.8378263, -72.072321, ST_GeomFromText('POINT(44.8378263 -72.072321)', 4326), 44.88477, -72.0834324, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458525', 'Moon Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Rutland', 43.593124, -72.9859399, ST_GeomFromText('POINT(43.593124 -72.9859399)', 4326), 43.6163889, -72.93, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458527', 'Moores Ponds', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.5220424, -72.7219407, ST_GeomFromText('POINT(43.5220424 -72.7219407)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1458528', 'Moose River', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Saint Johnsbury', 44.4231136, -72.0112059, ST_GeomFromText('POINT(44.4231136 -72.0112059)', 4326), 44.633942, -71.8117592, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458529', 'Moosehorn Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Wells', 43.4203303, -73.1685703, ST_GeomFromText('POINT(43.4203303 -73.1685703)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458531', 'Moretown Gap', 'Gap', 'Vermont', 'VT', 'Washington', 'Northfield', 44.2361701, -72.7192811, ST_GeomFromText('POINT(44.2361701 -72.7192811)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458533', 'Morgan Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Essex Center', 44.6089387, -73.0073562, ST_GeomFromText('POINT(44.6089387 -73.0073562)', 4326), 44.6289388, -72.9656894, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458536', 'Morgan Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Underhill', 44.6032188, -72.9950079, ST_GeomFromText('POINT(44.6032188 -72.9950079)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458537', 'Morgan Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Middletown Springs', 43.4650616, -73.1232683, ST_GeomFromText('POINT(43.4650616 -73.1232683)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1458538', 'Morgan Peak', 'Summit', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.5858935, -72.7428765, ST_GeomFromText('POINT(43.5858935 -72.7428765)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458539', 'Morrill Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Saint Johnsbury', 44.4578344, -72.0953753, ST_GeomFromText('POINT(44.4578344 -72.0953753)', 4326), 44.4403343, -72.1762106, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458540', 'Morrill Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Cabot', 44.4828325, -72.3014929, ST_GeomFromText('POINT(44.4828325 -72.3014929)', 4326), 44.494499, -72.2412136, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458541', 'Morrill Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Averill OE N', 45.0117128, -71.6348116, ST_GeomFromText('POINT(45.0117128 -71.6348116)', 4326), 44.9711577, -71.6375896, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458542', 'Morrill Mountain', 'Summit', 'Vermont', 'VT', 'Orange', 'South Strafford', 43.8253326, -72.3510584, ST_GeomFromText('POINT(43.8253326 -72.3510584)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1458544', 'Morrison Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Stannard', 44.6064413, -72.205102, ST_GeomFromText('POINT(44.6064413 -72.205102)', 4326), 44.5797222, -72.1830556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458545', 'Morrison Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Barnet', 44.3163311, -72.0717184, ST_GeomFromText('POINT(44.3163311 -72.0717184)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458548', 'Morrow Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Sheldon Springs', 44.9067121, -72.9070782, ST_GeomFromText('POINT(44.9067121 -72.9070782)', 4326), 44.8703242, -72.8831898, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458549', 'Morse Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Walpole', 43.0911898, -72.4464771, ST_GeomFromText('POINT(43.0911898 -72.4464771)', 4326), 43.0895231, -72.525923, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458550', 'Morse Hollow', 'Valley', 'Vermont', 'VT', 'Rutland', 'Poultney', 43.5048298, -73.1741647, ST_GeomFromText('POINT(43.5048298 -73.1741647)', 4326), 43.5166786, -73.1567471, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1458551', 'Morse Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Peacham', 44.3227204, -72.2225122, ST_GeomFromText('POINT(44.3227204 -72.2225122)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1458552', 'Morse Mountain', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Mount Mansfield', 44.5766148, -72.7520453, ST_GeomFromText('POINT(44.5766148 -72.7520453)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458557', 'Moscow Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.6842129, -73.2365689, ST_GeomFromText('POINT(43.6842129 -73.2365689)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL),
  ('1458558', 'Moseley Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hanover', 43.7095974, -72.3334262, ST_GeomFromText('POINT(43.7095974 -72.3334262)', 4326), NULL, NULL, '1980-10-29', '2022-09-02', NULL, NULL, NULL),
  ('1458559', 'Mount Moses', 'Summit', 'Vermont', 'VT', 'Windsor', 'Woodstock South', 43.5286257, -72.6185338, ST_GeomFromText('POINT(43.5286257 -72.6185338)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458560', 'Mosher Meadow Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Norton Pond', 44.9825465, -71.8203727, ST_GeomFromText('POINT(44.9825465 -71.8203727)', 4326), 45.000324, -71.8462065, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458561', 'Moss Glen Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Stowe', 44.4883867, -72.6623393, ST_GeomFromText('POINT(44.4883867 -72.6623393)', 4326), 44.4547767, -72.5878912, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458562', 'Moss Glen Falls', 'Falls', 'Vermont', 'VT', 'Lamoille', 'Mount Worcester', 44.4821925, -72.6241268, ST_GeomFromText('POINT(44.4821925 -72.6241268)', 4326), NULL, NULL, '1980-10-29', '2015-01-17', NULL, NULL, NULL),
  ('1458574', 'Mount Tug', 'Summit', 'Vermont', 'VT', 'Essex', 'Stone Mountain', 44.5125477, -71.7286998, ST_GeomFromText('POINT(44.5125477 -71.7286998)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1458576', 'Mount Clark', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Bolton Mountain', 44.4786546, -72.8412322, ST_GeomFromText('POINT(44.4786546 -72.8412322)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458577', 'Mount Hunger', 'Summit', 'Vermont', 'VT', 'Washington', 'Stowe', 44.3956636, -72.6450705, ST_GeomFromText('POINT(44.3956636 -72.6450705)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458578', 'Mount Ira Allen', 'Summit', 'Vermont', 'VT', 'Washington', 'Huntington', 44.2837982, -72.8915698, ST_GeomFromText('POINT(44.2837982 -72.8915698)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458579', 'Mount Mayo', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Bolton Mountain', 44.4619883, -72.8380689, ST_GeomFromText('POINT(44.4619883 -72.8380689)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458580', 'Mount Norris', 'Summit', 'Vermont', 'VT', 'Orleans', 'Albany', 44.7467183, -72.4832519, ST_GeomFromText('POINT(44.7467183 -72.4832519)', 4326), NULL, NULL, '1980-10-29', '2022-09-05', NULL, NULL, NULL),
  ('1458581', 'Mount Lympus', 'Summit', 'Vermont', 'VT', 'Windsor', 'Bethel', 43.8257871, -72.7454128, ST_GeomFromText('POINT(43.8257871 -72.7454128)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', 'Official', 'Board Decision', '1977-04-01'),
  ('1458582', 'Mount Philo', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Mount Philo', 44.2780701, -73.2147531, ST_GeomFromText('POINT(44.2780701 -73.2147531)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458583', 'Mount Pleasant', 'Summit', 'Vermont', 'VT', 'Orange', 'Washington', 44.1242205, -72.4812128, ST_GeomFromText('POINT(44.1242205 -72.4812128)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458584', 'Mount Pritchard', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Hinesburg', 44.3701065, -73.1043527, ST_GeomFromText('POINT(44.3701065 -73.1043527)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1458585', 'Mount Sarah', 'Summit', 'Vermont', 'VT', 'Orleans', 'Caspian Lake', 44.6121179, -72.3291186, ST_GeomFromText('POINT(44.6121179 -72.3291186)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458586', 'Mount Worcester', 'Summit', 'Vermont', 'VT', 'Washington', 'Mount Worcester', 44.4431627, -72.5917155, ST_GeomFromText('POINT(44.4431627 -72.5917155)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1458587', 'Mountain Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Burke Mountain', 44.5686658, -71.955095, ST_GeomFromText('POINT(44.5686658 -71.955095)', 4326), 44.5616667, -71.91, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458588', 'Mountain Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Jay Peak', 44.9967119, -72.6134584, ST_GeomFromText('POINT(44.9967119 -72.6134584)', 4326), 44.9719444, -72.56, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458589', 'Mountain Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'North Troy OE N', 45.0375443, -72.4690015, ST_GeomFromText('POINT(45.0375443 -72.4690015)', 4326), 44.9956004, -72.4817791, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458593', 'Muckler Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Johnson', 44.6672724, -72.6653975, ST_GeomFromText('POINT(44.6672724 -72.6653975)', 4326), 44.6922222, -72.6622222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458594', 'Mud Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Sterling Mountain', 44.558941, -72.673452, ST_GeomFromText('POINT(44.558941 -72.673452)', 4326), 44.58, -72.7227778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458595', 'Mud Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Thorn Hill', 43.603122, -73.2915003, ST_GeomFromText('POINT(43.603122 -73.2915003)', 4326), 43.6539541, -73.244556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458597', 'Mud Creek', 'Stream', 'Vermont', 'VT', 'Orleans', 'Newport Center OE N', 45.0003231, -72.3598298, ST_GeomFromText('POINT(45.0003231 -72.3598298)', 4326), 44.9053246, -72.3037164, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458598', 'Mud Creek', 'Stream', 'Vermont', 'VT', 'Addison', 'Vergennes East', 44.1250564, -73.2045651, ST_GeomFromText('POINT(44.1250564 -73.2045651)', 4326), 44.1538889, -73.2294444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458599', 'Mud Creek', 'Stream', 'Vermont', 'VT', 'Grand Isle', 'Rouses Point', 44.9561516, -73.2634634, ST_GeomFromText('POINT(44.9561516 -73.2634634)', 4326), 45.012262, -73.2620745, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458602', 'Mud Hollow', 'Valley', 'Vermont', 'VT', 'Caledonia', 'Concord', 44.468191, -71.9479722, ST_GeomFromText('POINT(44.468191 -71.9479722)', 4326), 44.4957144, -71.9389139, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1458603', 'Mud Hollow Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Mount Philo', 44.3536629, -73.1970695, ST_GeomFromText('POINT(44.3536629 -73.1970695)', 4326), 44.2955556, -73.2125, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458604', 'Mud Island', 'Island', 'Vermont', 'VT', 'Addison', 'Vergennes West', 44.1344986, -73.3717914, ST_GeomFromText('POINT(44.1344986 -73.3717914)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458605', 'Mud Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'Rouses Point', 44.932277, -73.3127911, ST_GeomFromText('POINT(44.932277 -73.3127911)', 4326), NULL, NULL, '1980-10-29', '2017-01-28', NULL, NULL, NULL),
  ('1458606', 'Mud Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Crystal Lake', 44.6327773, -72.2315133, ST_GeomFromText('POINT(44.6327773 -72.2315133)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1458607', 'Mud Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Crystal Lake', 44.6783215, -72.1393489, ST_GeomFromText('POINT(44.6783215 -72.1393489)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1458608', 'Mud Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Benson', 43.7439846, -73.3291806, ST_GeomFromText('POINT(43.7439846 -73.3291806)', 4326), NULL, NULL, '1980-10-29', '2020-01-15', NULL, NULL, NULL),
  ('1458609', 'Mud Pond', 'Lake', 'Vermont', 'VT', 'Addison', 'Orwell', 43.7655122, -73.2697047, ST_GeomFromText('POINT(43.7655122 -73.2697047)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458610', 'Mud Pond', 'Reservoir', 'Vermont', 'VT', 'Orange', 'South Strafford', 43.8507313, -72.2531035, ST_GeomFromText('POINT(43.8507313 -72.2531035)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1458611', 'Mud Pond', 'Lake', 'Vermont', 'VT', 'Orange', 'Randolph', 43.9898105, -72.7001388, ST_GeomFromText('POINT(43.9898105 -72.7001388)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1458612', 'Mud Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Marshfield', 44.2773307, -72.3388038, ST_GeomFromText('POINT(44.2773307 -72.3388038)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1458613', 'Mud Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Peacham', 44.3068906, -72.2126884, ST_GeomFromText('POINT(44.3068906 -72.2126884)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1458614', 'Mud Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.3942913, -72.3862813, ST_GeomFromText('POINT(44.3942913 -72.3862813)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1458615', 'Mud Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Cabot', 44.4318471, -72.3557101, ST_GeomFromText('POINT(44.4318471 -72.3557101)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1458616', 'Mud Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.4880392, -72.3928063, ST_GeomFromText('POINT(44.4880392 -72.3928063)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1458617', 'Mud Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Caspian Lake', 44.5775563, -72.3534224, ST_GeomFromText('POINT(44.5775563 -72.3534224)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1458618', 'Mud Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Stone Mountain', 44.5791114, -71.738629, ST_GeomFromText('POINT(44.5791114 -71.738629)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1458619', 'Mud Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Gallup Mills', 44.5995369, -71.815482, ST_GeomFromText('POINT(44.5995369 -71.815482)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458620', 'Mud Pond', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Morrisville', 44.6063468, -72.5038773, ST_GeomFromText('POINT(44.6063468 -72.5038773)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1458621', 'Mud Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Albany', 44.6388957, -72.3944611, ST_GeomFromText('POINT(44.6388957 -72.3944611)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1458622', 'Mud Pond', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Eden', 44.6982454, -72.5198139, ST_GeomFromText('POINT(44.6982454 -72.5198139)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1458623', 'Mud Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Maidstone Lake', 44.73741, -71.6721155, ST_GeomFromText('POINT(44.73741 -71.6721155)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1458624', 'Mud Pond', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Albany', 44.7409843, -72.471055, ST_GeomFromText('POINT(44.7409843 -72.471055)', 4326), NULL, NULL, '1980-10-29', '2019-11-26', NULL, NULL, NULL),
  ('1458625', 'Mud Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Island Pond', 44.7704045, -71.9464343, ST_GeomFromText('POINT(44.7704045 -71.9464343)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1458626', 'Mud Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Orleans', 44.7817755, -72.2403943, ST_GeomFromText('POINT(44.7817755 -72.2403943)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1458627', 'Mud Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Spectacle Pond', 44.8201849, -71.8207215, ST_GeomFromText('POINT(44.8201849 -71.8207215)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1458628', 'Mud Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'West Charleston', 44.8864676, -72.0192837, ST_GeomFromText('POINT(44.8864676 -72.0192837)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1458629', 'Mud Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'West Charleston', 44.9168535, -72.0444585, ST_GeomFromText('POINT(44.9168535 -72.0444585)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458630', 'Mud Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'West Charleston', 44.9289421, -72.0140686, ST_GeomFromText('POINT(44.9289421 -72.0140686)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1458631', 'Mud Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'West Charleston', 44.9363532, -72.0288701, ST_GeomFromText('POINT(44.9363532 -72.0288701)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1458632', 'Mud Ponds', 'Lake', 'Vermont', 'VT', 'Essex', 'Island Pond', 44.828142, -71.9293107, ST_GeomFromText('POINT(44.828142 -71.9293107)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1458633', 'Mudd Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.7372493, -73.146233, ST_GeomFromText('POINT(43.7372493 -73.146233)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1458634', 'Muddy Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Burlington', 44.4732089, -73.1351507, ST_GeomFromText('POINT(44.4732089 -73.1351507)', 4326), 44.3986545, -73.15391, '1980-10-29', '2019-11-08', NULL, NULL, NULL),
  ('1458636', 'Muddy Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Proctor', 43.6299458, -73.0039779, ST_GeomFromText('POINT(43.6299458 -73.0039779)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1458637', 'Muddy Pond', 'Lake', 'Vermont', 'VT', 'Orange', 'East Corinth', 44.108839, -72.1663005, ST_GeomFromText('POINT(44.108839 -72.1663005)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1458638', 'Mudgett Island', 'Island', 'Vermont', 'VT', 'Franklin', 'East Alburg', 44.9767079, -73.1606846, ST_GeomFromText('POINT(44.9767079 -73.1606846)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458639', 'Munroe Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Burlington', 44.4075504, -73.2229041, ST_GeomFromText('POINT(44.4075504 -73.2229041)', 4326), 44.405, -73.1855556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458640', 'Munson Flat', 'Flat', 'Vermont', 'VT', 'Chittenden', 'Colchester', 44.5703259, -73.1579077, ST_GeomFromText('POINT(44.5703259 -73.1579077)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458641', 'Murphy Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Averill', 44.8772701, -71.6884246, ST_GeomFromText('POINT(44.8772701 -71.6884246)', 4326), 44.9047222, -71.7172222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458642', 'Murphy Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Spectacle Pond', 44.7775495, -71.7859266, ST_GeomFromText('POINT(44.7775495 -71.7859266)', 4326), 44.719773, -71.7939818, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458644', 'Murray Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Orwell', 43.8458855, -73.2506698, ST_GeomFromText('POINT(43.8458855 -73.2506698)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1458645', 'Mussey Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Rutland', 43.5945128, -72.9801064, ST_GeomFromText('POINT(43.5945128 -72.9801064)', 4326), 43.5980556, -72.9286111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458646', 'Mutton Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Bridport', 43.920606, -73.3048393, ST_GeomFromText('POINT(43.920606 -73.3048393)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458647', 'Nancy Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Andover', 43.3264624, -72.7217628, ST_GeomFromText('POINT(43.3264624 -72.7217628)', 4326), 43.3177778, -72.7341667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458648', 'Narrow Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Fairlee', 43.9932986, -72.1853056, ST_GeomFromText('POINT(43.9932986 -72.1853056)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458650', 'Nasmith Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Plainfield', 44.3008924, -72.3970477, ST_GeomFromText('POINT(44.3008924 -72.3970477)', 4326), 44.2622825, -72.3220441, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458651', 'Nate Smith Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Barre East', 44.1806175, -72.4006567, ST_GeomFromText('POINT(44.1806175 -72.4006567)', 4326), 44.1928396, -72.3562109, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458652', 'Nation Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Crystal Lake', 44.6264413, -72.1323222, ST_GeomFromText('POINT(44.6264413 -72.1323222)', 4326), 44.6666667, -72.1422222, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458653', 'Naught Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Bethel', 43.8318962, -72.6533966, ST_GeomFromText('POINT(43.8318962 -72.6533966)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1458655', 'Neal Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Gilman', 44.4403364, -71.6786984, ST_GeomFromText('POINT(44.4403364 -71.6786984)', 4326), 44.5470001, -71.6914776, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458656', 'Neal Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Gilman', 44.4905504, -71.6925811, ST_GeomFromText('POINT(44.4905504 -71.6925811)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1458657', 'Neals Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hanover', 43.6391661, -72.3679747, ST_GeomFromText('POINT(43.6391661 -72.3679747)', 4326), NULL, NULL, '1980-10-29', '2023-11-17', NULL, NULL, NULL),
  ('1458658', 'Nebraska Notch', 'Gap', 'Vermont', 'VT', 'Chittenden', 'Bolton Mountain', 44.4872746, -72.8301223, ST_GeomFromText('POINT(44.4872746 -72.8301223)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458659', 'Needham Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Orwell', 43.7707866, -73.2982396, ST_GeomFromText('POINT(43.7707866 -73.2982396)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458660', 'Needles Eye', 'Gap', 'Vermont', 'VT', 'Chittenden', 'Mount Mansfield', 44.506441, -72.8223449, ST_GeomFromText('POINT(44.506441 -72.8223449)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458661', 'Nelson Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Barre East', 44.1856173, -72.4195463, ST_GeomFromText('POINT(44.1856173 -72.4195463)', 4326), 44.1770066, -72.3473215, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458662', 'Nelson Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'West Charleston', 44.9807705, -72.0715983, ST_GeomFromText('POINT(44.9807705 -72.0715983)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458663', 'Nelson Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Montpelier', 44.3183317, -72.5249982, ST_GeomFromText('POINT(44.3183317 -72.5249982)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458665', 'Neshobe Island', 'Island', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.6464546, -73.2112221, ST_GeomFromText('POINT(43.6464546 -73.2112221)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458667', 'Mount Nevins', 'Summit', 'Vermont', 'VT', 'Orange', 'Roxbury', 44.0107649, -72.6948068, ST_GeomFromText('POINT(44.0107649 -72.6948068)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458668', 'New Boston Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Hanover', 43.7334035, -72.315647, ST_GeomFromText('POINT(43.7334035 -72.315647)', 4326), 43.7739588, -72.2992581, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458675', 'Newark Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'West Burke', 44.7166591, -71.9822761, ST_GeomFromText('POINT(44.7166591 -71.9822761)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1458678', 'Newcomb Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Walpole', 43.0911898, -72.4464771, ST_GeomFromText('POINT(43.0911898 -72.4464771)', 4326), 43.1148004, -72.5048114, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458680', 'Newfane Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Newfane', 42.9794737, -72.6949397, ST_GeomFromText('POINT(42.9794737 -72.6949397)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458685', 'Nichols Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Cabot', 44.4947764, -72.37344, ST_GeomFromText('POINT(44.4947764 -72.37344)', 4326), 44.4616667, -72.3455556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458686', 'Nichols Ledge', 'Bench', 'Vermont', 'VT', 'Washington', 'Cabot', 44.4569997, -72.3317711, ST_GeomFromText('POINT(44.4569997 -72.3317711)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458687', 'Nichols Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'South Hero', 44.7444872, -73.3270769, ST_GeomFromText('POINT(44.7444872 -73.3270769)', 4326), NULL, NULL, '1980-10-29', NULL, 'Official', 'Board Decision', '1942-01-01'),
  ('1458688', 'Nichols Pond', 'Reservoir', 'Vermont', 'VT', 'Washington', 'Cabot', 44.4578584, -72.3425403, ST_GeomFromText('POINT(44.4578584 -72.3425403)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458689', 'Mud Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Sutton', 44.7492006, -72.0242635, ST_GeomFromText('POINT(44.7492006 -72.0242635)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', 'Official', 'Board Decision', '2014-04-30'),
  ('1458693', 'Noaks Island', 'Island', 'Vermont', 'VT', 'Franklin', 'East Alburg', 44.9747637, -73.1301291, ST_GeomFromText('POINT(44.9747637 -73.1301291)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458694', 'Norford Lake', 'Reservoir', 'Vermont', 'VT', 'Orange', 'South Strafford', 43.8008655, -72.3041661, ST_GeomFromText('POINT(43.8008655 -72.3041661)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1458695', 'Norris Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Sutton', 44.6832109, -72.0714829, ST_GeomFromText('POINT(44.6832109 -72.0714829)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458696', 'North Branch Black River', 'Stream', 'Vermont', 'VT', 'Windsor', 'Springfield', 43.3714621, -72.4939791, ST_GeomFromText('POINT(43.3714621 -72.4939791)', 4326), 43.4745154, -72.5892605, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458698', 'North Branch Cold River', 'Stream', 'Vermont', 'VT', 'Rutland', 'Rutland', 43.5692356, -72.919271, ST_GeomFromText('POINT(43.5692356 -72.919271)', 4326), 43.6241667, -72.8869444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458699', 'North Branch Lamoille River', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Jeffersonville', 44.6694943, -72.7829039, ST_GeomFromText('POINT(44.6694943 -72.7829039)', 4326), 44.7586597, -72.5917834, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458700', 'North Branch Missisquoi River', 'Stream', 'Vermont', 'VT', 'Franklin', 'Richford', 44.9917122, -72.6837434, ST_GeomFromText('POINT(44.9917122 -72.6837434)', 4326), 45.000601, -72.6795766, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458701', 'North Branch Nulhegan River', 'Stream', 'Vermont', 'VT', 'Essex', 'Bloomfield', 44.7719939, -71.7417591, ST_GeomFromText('POINT(44.7719939 -71.7417591)', 4326), 44.8939367, -71.8492615, '1980-10-29', '2018-07-31', NULL, NULL, NULL),
  ('1458702', 'North Branch Ottauquechee River', 'Stream', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.5909026, -72.6614865, ST_GeomFromText('POINT(43.5909026 -72.6614865)', 4326), 43.6828458, -72.6984337, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458703', 'North Branch Paul Stream', 'Stream', 'Vermont', 'VT', 'Essex', 'Maidstone Lake', 44.7125509, -71.7364806, ST_GeomFromText('POINT(44.7125509 -71.7364806)', 4326), 44.710051, -71.7906484, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458705', 'North Branch Wells River', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Groton', 44.2175618, -72.2117623, ST_GeomFromText('POINT(44.2175618 -72.2117623)', 4326), 44.2833935, -72.2114856, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458706', 'North Branch Winooski River', 'Stream', 'Vermont', 'VT', 'Washington', 'Montpelier', 44.259226, -72.5781648, ST_GeomFromText('POINT(44.259226 -72.5781648)', 4326), 44.4897761, -72.5276118, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458707', 'North Breton Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Poultney', 43.6142335, -73.1689986, ST_GeomFromText('POINT(43.6142335 -73.1689986)', 4326), 43.6939543, -73.1262217, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458709', 'North Bridgewater Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Woodstock North', 43.6486802, -72.5578734, ST_GeomFromText('POINT(43.6486802 -72.5578734)', 4326), 43.6380556, -72.615, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458711', 'North Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Saint Johnsbury', 44.4580556, -72.0955556, ST_GeomFromText('POINT(44.4580556 -72.0955556)', 4326), 44.4936111, -72.1233333, '1980-10-29', '2008-01-16', NULL, NULL, NULL),
  ('1458712', 'North Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Middletown Springs', 43.483681, -73.1162179, ST_GeomFromText('POINT(43.483681 -73.1162179)', 4326), 43.5228469, -73.1092738, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458732', 'North Fork East Creek', 'Stream', 'Vermont', 'VT', 'Addison', 'Orwell', 43.8042278, -73.3365056, ST_GeomFromText('POINT(43.8042278 -73.3365056)', 4326), 43.8469444, -73.32, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458733', 'North Fork Madden Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Killington Peak', 43.5875689, -72.7789898, ST_GeomFromText('POINT(43.5875689 -72.7789898)', 4326), 43.5916667, -72.8055556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458734', 'North Fork North Branch Lamoille River', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Johnson', 44.7478265, -72.7037344, ST_GeomFromText('POINT(44.7478265 -72.7037344)', 4326), 44.7914371, -72.690402, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458735', 'North Harbor', 'Bay', 'Vermont', 'VT', 'Addison', 'Vergennes West', 44.200053, -73.3576258, ST_GeomFromText('POINT(44.200053 -73.3576258)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458738', 'North Hartland Reservoir', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.6175077, -72.3938113, ST_GeomFromText('POINT(43.6175077 -72.3938113)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', 'Official', 'Board Decision', '1973-01-01'),
  ('1458740', 'North Hero Island', 'Island', 'Vermont', 'VT', 'Grand Isle', 'Rouses Point', 44.8802393, -73.2562258, ST_GeomFromText('POINT(44.8802393 -73.2562258)', 4326), NULL, NULL, '1980-10-29', '2016-12-09', NULL, NULL, NULL),
  ('1458744', 'North Hill', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Stowe', 44.4200458, -72.7045606, ST_GeomFromText('POINT(44.4200458 -72.7045606)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1458746', 'North Jay Peak', 'Summit', 'Vermont', 'VT', 'Orleans', 'Jay Peak', 44.9576624, -72.5359925, ST_GeomFromText('POINT(44.9576624 -72.5359925)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458749', 'North Notch Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Bloomfield', 44.7572135, -71.6993188, ST_GeomFromText('POINT(44.7572135 -71.6993188)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458753', 'North Pond', 'Lake', 'Vermont', 'VT', 'Orange', 'Brookfield', 44.0475788, -72.6179316, ST_GeomFromText('POINT(44.0475788 -72.6179316)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1458756', 'North Ridge', 'Ridge', 'Vermont', 'VT', 'Caledonia', 'Sutton', 44.6854098, -72.0218213, ST_GeomFromText('POINT(44.6854098 -72.0218213)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458762', 'North Springfield Reservoir', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Chester', 43.3460111, -72.5065528, ST_GeomFromText('POINT(43.3460111 -72.5065528)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', 'Official', 'Board Decision', '1973-01-01'),
  ('1458776', 'Northeast Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Wells', 43.4359165, -73.1668166, ST_GeomFromText('POINT(43.4359165 -73.1668166)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458783', 'Norton Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.1809096, -73.1503841, ST_GeomFromText('POINT(43.1809096 -73.1503841)', 4326), 43.1897222, -73.1591667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458784', 'Norton Pond', 'Reservoir', 'Vermont', 'VT', 'Essex', 'Norton Pond', 44.9370509, -71.8644389, ST_GeomFromText('POINT(44.9370509 -71.8644389)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1458788', 'Notch Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Maidstone Lake', 44.739928, -71.7176243, ST_GeomFromText('POINT(44.739928 -71.7176243)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1458789', 'Notch Pond Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Maidstone Lake', 44.7342167, -71.6578674, ST_GeomFromText('POINT(44.7342167 -71.6578674)', 4326), 44.7405556, -71.7147222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458790', 'Notch Pond Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Maidstone Lake', 44.7478677, -71.7140247, ST_GeomFromText('POINT(44.7478677 -71.7140247)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458791', 'Noyes Pond', 'Reservoir', 'Vermont', 'VT', 'Caledonia', 'Knox Mountain', 44.227672, -72.3100954, ST_GeomFromText('POINT(44.227672 -72.3100954)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1458792', 'Nulhegan Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Spectacle Pond', 44.7902512, -71.8169796, ST_GeomFromText('POINT(44.7902512 -71.8169796)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1458793', 'Nulhegan River', 'Stream', 'Vermont', 'VT', 'Essex', 'Bloomfield', 44.7512269, -71.63285, ST_GeomFromText('POINT(44.7512269 -71.63285)', 4326), 44.7859608, -71.808908, '1980-10-29', '2019-04-26', NULL, NULL, NULL),
  ('1458794', 'Number Eleven Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Underhill', 44.6111856, -72.9595135, ST_GeomFromText('POINT(44.6111856 -72.9595135)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1458795', 'Number Five Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Norton Pond', 44.9914353, -71.8120394, ST_GeomFromText('POINT(44.9914353 -71.8120394)', 4326), 44.9452778, -71.7702778, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458796', 'Number Six Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Norton Pond', 44.9944907, -71.8098172, ST_GeomFromText('POINT(44.9944907 -71.8098172)', 4326), 44.9333805, -71.744816, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458798', 'Nurse Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Stone Mountain', 44.5997468, -71.7315573, ST_GeomFromText('POINT(44.5997468 -71.7315573)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458799', 'Nutting Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Westmore', 44.8514373, -72.0437091, ST_GeomFromText('POINT(44.8514373 -72.0437091)', 4326), 44.8247222, -72.045, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458801', 'Nyes Swamp', 'Swamp', 'Vermont', 'VT', 'Windsor', 'Delectable Mountain', 43.7347897, -72.6656558, ST_GeomFromText('POINT(43.7347897 -72.6656558)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458802', 'O P Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Richmond', 44.466386, -72.9234535, ST_GeomFromText('POINT(44.466386 -72.9234535)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458803', 'O''Brien Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Bellows Falls', 43.1867434, -72.4734221, ST_GeomFromText('POINT(43.1867434 -72.4734221)', 4326), 43.2252778, -72.4855556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458804', 'O''Brien Point', 'Cape', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.6622872, -73.2406673, ST_GeomFromText('POINT(43.6622872 -73.2406673)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458805', 'Oak Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Bellows Falls', 43.1354332, -72.4649384, ST_GeomFromText('POINT(43.1354332 -72.4649384)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458806', 'Oak Hill', 'Summit', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.2467339, -73.227884, ST_GeomFromText('POINT(43.2467339 -73.227884)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1458807', 'Oak Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Orwell', 43.7568894, -73.2873998, ST_GeomFromText('POINT(43.7568894 -73.2873998)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458808', 'Oak Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Bethel', 43.8675624, -72.7005679, ST_GeomFromText('POINT(43.8675624 -72.7005679)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1458809', 'Oak Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Randolph', 43.9959351, -72.7104088, ST_GeomFromText('POINT(43.9959351 -72.7104088)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458810', 'Oak Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Gilson Mountain', 44.6356393, -72.9542787, ST_GeomFromText('POINT(44.6356393 -72.9542787)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458811', 'Oak Hill', 'Summit', 'Vermont', 'VT', 'Franklin', 'Gilson Mountain', 44.6938989, -72.8890221, ST_GeomFromText('POINT(44.6938989 -72.8890221)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1458814', 'Oak Ledge', 'Bench', 'Vermont', 'VT', 'Chittenden', 'Burlington', 44.4547716, -73.2273496, ST_GeomFromText('POINT(44.4547716 -73.2273496)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458816', 'Ohio Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.6231158, -72.6253737, ST_GeomFromText('POINT(43.6231158 -72.6253737)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1458817', 'Old Baldy Mountain', 'Summit', 'Vermont', 'VT', 'Windsor', 'Woodstock South', 43.5669276, -72.6011852, ST_GeomFromText('POINT(43.5669276 -72.6011852)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1458818', 'Old Buffalo', 'Summit', 'Vermont', 'VT', 'Orange', 'Fairlee', 43.9758603, -72.2340895, ST_GeomFromText('POINT(43.9758603 -72.2340895)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1458822', 'Old City Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Chelsea', 43.8761788, -72.3814842, ST_GeomFromText('POINT(43.8761788 -72.3814842)', 4326), 43.9506224, -72.3592628, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458824', 'Old Hurricane Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Randolph Center', 43.9468309, -72.5166099, ST_GeomFromText('POINT(43.9468309 -72.5166099)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458825', 'Old Knob', 'Summit', 'Vermont', 'VT', 'Rutland', 'Poultney', 43.547375, -73.175236, ST_GeomFromText('POINT(43.547375 -73.175236)', 4326), NULL, NULL, '1980-10-29', '2022-09-02', NULL, NULL, NULL),
  ('1458827', 'Old Marsh Pond', 'Reservoir', 'Vermont', 'VT', 'Rutland', 'Benson', 43.6328537, -73.2699875, ST_GeomFromText('POINT(43.6328537 -73.2699875)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL),
  ('1458831', 'Old Notch', 'Gap', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.5206255, -72.7242649, ST_GeomFromText('POINT(43.5206255 -72.7242649)', 4326), NULL, NULL, '2023-11-16', '2023-11-16', NULL, NULL, NULL),
  ('1458836', 'Old Shincracker', 'Summit', 'Vermont', 'VT', 'Windsor', 'Chester', 43.3519622, -72.5737642, ST_GeomFromText('POINT(43.3519622 -72.5737642)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1458837', 'Old Smugglers Face', 'Pillar', 'Vermont', 'VT', 'Lamoille', 'Mount Mansfield', 44.5594959, -72.7962348, ST_GeomFromText('POINT(44.5594959 -72.7962348)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458839', 'Olden Ledges', 'Bench', 'Vermont', 'VT', 'Windham', 'Colrain', 42.7384164, -72.6809257, ST_GeomFromText('POINT(42.7384164 -72.6809257)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458840', 'Mount Olga', 'Summit', 'Vermont', 'VT', 'Windham', 'Jacksonville', 42.850707, -72.8031491, ST_GeomFromText('POINT(42.850707 -72.8031491)', 4326), NULL, NULL, '1980-10-29', '2022-09-02', NULL, NULL, NULL),
  ('1458841', 'Oliver Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'West Charleston', 44.888303, -72.0794611, ST_GeomFromText('POINT(44.888303 -72.0794611)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1458843', 'Olympus Pool', 'Lake', 'Vermont', 'VT', 'Rutland', 'Proctor', 43.6522893, -73.0287194, ST_GeomFromText('POINT(43.6522893 -73.0287194)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458844', 'Ompompanoosuc River', 'Stream', 'Vermont', 'VT', 'Windsor', 'Lyme', 43.7517374, -72.2292561, ST_GeomFromText('POINT(43.7517374 -72.2292561)', 4326), 43.9853441, -72.368986, '1980-10-29', '2018-07-31', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458845', 'Open Meadow Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Roxbury', 44.0158974, -72.6576063, ST_GeomFromText('POINT(44.0158974 -72.6576063)', 4326), 44.0655556, -72.6652778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458847', 'Orange Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Barre East', 44.1500624, -72.4298239, ST_GeomFromText('POINT(44.1500624 -72.4298239)', 4326), 44.2138889, -72.4158333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458849', 'Orchard Point', 'Cape', 'Vermont', 'VT', 'Chittenden', 'Juniper Island', 44.4047723, -73.2701273, ST_GeomFromText('POINT(44.4047723 -73.2701273)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458850', 'Orcutt Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'West Charleston', 44.9256028, -72.0970438, ST_GeomFromText('POINT(44.9256028 -72.0970438)', 4326), 44.9561111, -72.0302778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458851', 'Orcutt Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Wells', 43.3906502, -73.1485269, ST_GeomFromText('POINT(43.3906502 -73.1485269)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1458852', 'Oregon Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Lyndonville', 44.619497, -72.1225997, ST_GeomFromText('POINT(44.619497 -72.1225997)', 4326), 44.6517182, -72.1781569, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458853', 'Oregon Mountain', 'Summit', 'Vermont', 'VT', 'Windham', 'Newfane', 42.9643746, -72.7337043, ST_GeomFromText('POINT(42.9643746 -72.7337043)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458856', 'Osgood Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Randolph Center', 43.9370102, -72.5573237, ST_GeomFromText('POINT(43.9370102 -72.5573237)', 4326), 43.9630556, -72.5275, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458857', 'Osgood Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Randolph Center', 43.9655136, -72.5248198, ST_GeomFromText('POINT(43.9655136 -72.5248198)', 4326), NULL, NULL, '1980-10-29', '2024-09-24', NULL, NULL, NULL),
  ('1458858', 'Osmore Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Marshfield', 44.3084941, -72.2785991, ST_GeomFromText('POINT(44.3084941 -72.2785991)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458859', 'Oswegatchie Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Island Pond', 44.7986604, -71.9089843, ST_GeomFromText('POINT(44.7986604 -71.9089843)', 4326), 44.7522222, -71.8969444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458860', 'Otter Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Cold Hollow Mountains', 44.756524, -72.6374332, ST_GeomFromText('POINT(44.756524 -72.6374332)', 4326), 44.7892272, -72.6499046, '1980-10-29', '2019-11-12', NULL, NULL, NULL),
  ('1458861', 'Oven Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.2181317, -73.1801069, ST_GeomFromText('POINT(43.2181317 -73.1801069)', 4326), 43.2061111, -73.1711111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458862', 'Oven Point', 'Cape', 'Vermont', 'VT', 'Addison', 'Port Henry', 44.0842216, -73.4081801, ST_GeomFromText('POINT(44.0842216 -73.4081801)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458864', 'Owls Head', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Hinesburg', 44.3739332, -73.0071939, ST_GeomFromText('POINT(44.3739332 -73.0071939)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458865', 'Owls Head Bay', 'Bay', 'Vermont', 'VT', 'Addison', 'Port Henry', 44.0658885, -73.4140131, ST_GeomFromText('POINT(44.0658885 -73.4140131)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458866', 'Owls Head Mountain', 'Summit', 'Vermont', 'VT', 'Windham', 'Governors Mountain', 42.7615948, -72.6486948, ST_GeomFromText('POINT(42.7615948 -72.6486948)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1458867', 'Owlshead Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Marshfield', 44.2964855, -72.2943032, ST_GeomFromText('POINT(44.2964855 -72.2943032)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1458868', 'Owlshead Mountain', 'Summit', 'Vermont', 'VT', 'Washington', 'Middlesex', 44.3343695, -72.6933628, ST_GeomFromText('POINT(44.3343695 -72.6933628)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458871', 'Pacific Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Hazens Notch', 44.8303254, -72.6098422, ST_GeomFromText('POINT(44.8303254 -72.6098422)', 4326), 44.8113889, -72.5530556, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458874', 'Packer Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'West Burke', 44.7025421, -71.9014827, ST_GeomFromText('POINT(44.7025421 -71.9014827)', 4326), NULL, NULL, '1980-10-29', '2022-09-02', NULL, NULL, NULL),
  ('1458876', 'Paddock Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Craftsbury', 44.641538, -72.256061, ST_GeomFromText('POINT(44.641538 -72.256061)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1458877', 'Page Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Stannard', 44.6075523, -72.205102, ST_GeomFromText('POINT(44.6075523 -72.205102)', 4326), 44.6325518, -72.1970462, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458878', 'Page Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'East Corinth', 44.06697, -72.1944724, ST_GeomFromText('POINT(44.06697 -72.1944724)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1458880', 'Page Point', 'Cape', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.6645097, -73.2012223, ST_GeomFromText('POINT(43.6645097 -73.2012223)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458881', 'Page Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Craftsbury', 44.7145178, -72.3663704, ST_GeomFromText('POINT(44.7145178 -72.3663704)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1458883', 'Paine Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Stannard', 44.6013999, -72.2394433, ST_GeomFromText('POINT(44.6013999 -72.2394433)', 4326), 44.6277212, -72.2480024, '1980-10-29', '2019-11-12', NULL, NULL, NULL),
  ('1458884', 'Paine Mountain', 'Summit', 'Vermont', 'VT', 'Washington', 'Barre West', 44.1473845, -72.6189936, ST_GeomFromText('POINT(44.1473845 -72.6189936)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1458885', 'Panel Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Heath', 42.7439258, -72.7791292, ST_GeomFromText('POINT(42.7439258 -72.7791292)', 4326), NULL, NULL, '1980-10-29', '2022-09-08', NULL, NULL, NULL),
  ('1458887', 'Panteleoni Ridge', 'Ridge', 'Vermont', 'VT', 'Bennington', 'Salem', 43.1401071, -73.2518442, ST_GeomFromText('POINT(43.1401071 -73.2518442)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458889', 'Paradise Bay', 'Bay', 'Vermont', 'VT', 'Grand Isle', 'South Hero', 44.6511563, -73.2729082, ST_GeomFromText('POINT(44.6511563 -73.2729082)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458895', 'Parker Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Bellows Falls', 43.2276682, -72.4904098, ST_GeomFromText('POINT(43.2276682 -72.4904098)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458896', 'Parker Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Poultney', 43.6008624, -73.1916498, ST_GeomFromText('POINT(43.6008624 -73.1916498)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1458897', 'Lake Parker', 'Lake', 'Vermont', 'VT', 'Orleans', 'Crystal Lake', 44.7195197, -72.2337493, ST_GeomFromText('POINT(44.7195197 -72.2337493)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', 'Official', 'Board Decision', '1972-01-01'),
  ('1458902', 'Passumpsic River', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Barnet', 44.3206158, -72.0323161, ST_GeomFromText('POINT(44.3206158 -72.0323161)', 4326), 44.5506107, -71.9914844, '1980-10-29', '2019-09-24', NULL, NULL, NULL),
  ('1458903', 'Patch Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Stannard', 44.577883, -72.1868562, ST_GeomFromText('POINT(44.577883 -72.1868562)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458904', 'Patrick Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Hinesburg', 44.3317198, -73.1165125, ST_GeomFromText('POINT(44.3317198 -73.1165125)', 4326), 44.3533333, -73.0972222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458906', 'Patterson Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Montpelier', 44.353668, -72.5981675, ST_GeomFromText('POINT(44.353668 -72.5981675)', 4326), 44.3961668, -72.6384477, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458907', 'Patterson Mountain', 'Summit', 'Vermont', 'VT', 'Orange', 'Vershire', 43.9402278, -72.3388772, ST_GeomFromText('POINT(43.9402278 -72.3388772)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1458908', 'Paul John Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Spectacle Pond', 44.7839383, -71.8012047, ST_GeomFromText('POINT(44.7839383 -71.8012047)', 4326), 44.7508333, -71.8655556, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458909', 'Paul Stream', 'Stream', 'Vermont', 'VT', 'Essex', 'Stratford', 44.697551, -71.5975876, ST_GeomFromText('POINT(44.697551 -71.5975876)', 4326), 44.7247727, -71.7095355, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458910', 'Paul Stream Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Stratford', 44.6902522, -71.6237483, ST_GeomFromText('POINT(44.6902522 -71.6237483)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1458911', 'Pauls Peak', 'Summit', 'Vermont', 'VT', 'Windsor', 'Bethel', 43.8445974, -72.7221755, ST_GeomFromText('POINT(43.8445974 -72.7221755)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1458913', 'Payne Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Island Pond', 44.8014381, -71.9148178, ST_GeomFromText('POINT(44.8014381 -71.9148178)', 4326), 44.7794444, -71.93, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458914', 'Peach Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Newbury', 44.059232, -72.0956462, ST_GeomFromText('POINT(44.059232 -72.0956462)', 4326), 44.1558966, -72.1362044, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458917', 'Peacham Bog', 'Swamp', 'Vermont', 'VT', 'Caledonia', 'Peacham', 44.2964784, -72.2393844, ST_GeomFromText('POINT(44.2964784 -72.2393844)', 4326), NULL, NULL, '1980-10-29', '2011-10-13', NULL, NULL, NULL),
  ('1458919', 'Peacham Pond', 'Reservoir', 'Vermont', 'VT', 'Caledonia', 'Marshfield', 44.3307933, -72.2593493, ST_GeomFromText('POINT(44.3307933 -72.2593493)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1458920', 'Peak Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Randolph Center', 43.8925662, -72.5767677, ST_GeomFromText('POINT(43.8925662 -72.5767677)', 4326), 43.9363889, -72.6102778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458921', 'Peaked Mountain', 'Summit', 'Vermont', 'VT', 'Franklin', 'Cold Hollow Mountains', 44.7868769, -72.7489714, ST_GeomFromText('POINT(44.7868769 -72.7489714)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458924', 'Pearl Bay', 'Bay', 'Vermont', 'VT', 'Grand Isle', 'South Hero', 44.7228215, -73.2787425, ST_GeomFromText('POINT(44.7228215 -73.2787425)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458925', 'Pearl Swamp', 'Swamp', 'Vermont', 'VT', 'Grand Isle', 'South Hero', 44.6936551, -73.3198541, ST_GeomFromText('POINT(44.6936551 -73.3198541)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458926', 'Pease Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Jacksonville', 42.7570272, -72.779817, ST_GeomFromText('POINT(42.7570272 -72.779817)', 4326), 42.7456385, -72.8012065, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458927', 'Pease Mountain', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Mount Philo', 44.3074511, -73.2378176, ST_GeomFromText('POINT(44.3074511 -73.2378176)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1458928', 'Pecks Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Barre West', 44.168111, -72.536515, ST_GeomFromText('POINT(44.168111 -72.536515)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1458929', 'Mount Peg', 'Summit', 'Vermont', 'VT', 'Windsor', 'Woodstock South', 43.6203057, -72.5062681, ST_GeomFromText('POINT(43.6203057 -72.5062681)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458930', 'Pekin Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Plainfield', 44.3308915, -72.440661, ST_GeomFromText('POINT(44.3308915 -72.440661)', 4326), 44.3917233, -72.4451069, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458932', 'Pelots Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.8361528, -73.302354, ST_GeomFromText('POINT(44.8361528 -73.302354)', 4326), NULL, NULL, '1980-10-29', NULL, 'Official', 'Board Decision', '1967-01-01'),
  ('1458933', 'Pendock Hill', 'Summit', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.131622, -73.1447789, ST_GeomFromText('POINT(43.131622 -73.1447789)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1458934', 'Penny Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Randolph Center', 43.9167328, -72.5567676, ST_GeomFromText('POINT(43.9167328 -72.5567676)', 4326), 43.9502778, -72.6038889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458936', 'Pensioner Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Westmore', 44.872964, -72.0556974, ST_GeomFromText('POINT(44.872964 -72.0556974)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458937', 'Pepper Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Orwell', 43.8356164, -73.3076168, ST_GeomFromText('POINT(43.8356164 -73.3076168)', 4326), 43.8483333, -73.2752778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458938', 'Perch Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Orwell', 43.7512131, -73.2799281, ST_GeomFromText('POINT(43.7512131 -73.2799281)', 4326), NULL, NULL, '1980-10-29', '2020-03-06', NULL, NULL, NULL),
  ('1458939', 'Perkins Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Delectable Mountain', 43.7128452, -72.720657, ST_GeomFromText('POINT(43.7128452 -72.720657)', 4326), 43.7141667, -72.6855556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458940', 'Perkins Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Cold Hollow Mountains', 44.7558819, -72.643731, ST_GeomFromText('POINT(44.7558819 -72.643731)', 4326), 44.7278269, -72.6462307, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458941', 'Perkins Hollow', 'Valley', 'New York', 'NY', 'Washington', 'Salem', 43.2021928, -73.2656751, ST_GeomFromText('POINT(43.2021928 -73.2656751)', 4326), 43.2256327, -73.232083, '1980-10-29', '2016-12-20', NULL, NULL, NULL),
  ('1458944', 'Perry Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Knox Mountain', 44.1256191, -72.3084306, ST_GeomFromText('POINT(44.1256191 -72.3084306)', 4326), 44.1363889, -72.2952778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458945', 'Perry Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Bridport', 43.9167264, -73.2648397, ST_GeomFromText('POINT(43.9167264 -73.2648397)', 4326), 43.8689497, -73.2445604, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458946', 'Perry Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Middlesex', 44.3361589, -72.7137261, ST_GeomFromText('POINT(44.3361589 -72.7137261)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458947', 'Peterson Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Stowe', 44.4917197, -72.7428981, ST_GeomFromText('POINT(44.4917197 -72.7428981)', 4326), 44.512275, -72.7037303, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458949', 'Pheasant Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Juniper Island', 44.4093918, -73.2576267, ST_GeomFromText('POINT(44.4093918 -73.2576267)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458950', 'Phelps Bay', 'Bay', 'Vermont', 'VT', 'Franklin', 'Highgate Center', 44.9833749, -73.1001286, ST_GeomFromText('POINT(44.9833749 -73.1001286)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458951', 'Phelps Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'Colchester Point', 44.6197677, -73.3459652, ST_GeomFromText('POINT(44.6197677 -73.3459652)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458952', 'Pherrins River', 'Stream', 'Vermont', 'VT', 'Orleans', 'Island Pond', 44.811093, -71.889268, ST_GeomFromText('POINT(44.811093 -71.889268)', 4326), 44.9247696, -71.9031512, '1980-10-29', '2020-04-03', NULL, NULL, NULL),
  ('1458954', 'Phillips Pond', 'Reservoir', 'Vermont', 'VT', 'Orleans', 'North Troy', 44.9242176, -72.4225957, ST_GeomFromText('POINT(44.9242176 -72.4225957)', 4326), NULL, NULL, '1980-10-29', '2019-11-26', NULL, NULL, NULL),
  ('1458956', 'Picket Island', 'Island', 'Vermont', 'VT', 'Chittenden', 'Charlotte', 44.2894963, -73.2990148, ST_GeomFromText('POINT(44.2894963 -73.2990148)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458957', 'Pickett Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.4392482, -72.3785744, ST_GeomFromText('POINT(44.4392482 -72.3785744)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1458958', 'Pickles Pond', 'Lake', 'Vermont', 'VT', 'Orange', 'Randolph Center', 43.9975363, -72.6076729, ST_GeomFromText('POINT(43.9975363 -72.6076729)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1458959', 'Piedmont Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Rutland', 43.6091566, -72.9573481, ST_GeomFromText('POINT(43.6091566 -72.9573481)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1458960', 'Pierce Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Westmore', 44.8155613, -72.0014191, ST_GeomFromText('POINT(44.8155613 -72.0014191)', 4326), NULL, NULL, '1980-10-29', '2023-11-17', NULL, NULL, NULL),
  ('1458961', 'Pierson Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'West Topsham', 44.1209925, -72.2656816, ST_GeomFromText('POINT(44.1209925 -72.2656816)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458962', 'Pierson Peak', 'Summit', 'Vermont', 'VT', 'Windsor', 'Cavendish', 43.4385678, -72.5004963, ST_GeomFromText('POINT(43.4385678 -72.5004963)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL),
  ('1458963', 'Pigeon Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Knox Mountain', 44.2473411, -72.3285459, ST_GeomFromText('POINT(44.2473411 -72.3285459)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1458965', 'Pike Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'West Topsham', 44.0600092, -72.3074474, ST_GeomFromText('POINT(44.0600092 -72.3074474)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458966', 'Pike Hill Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'East Corinth', 44.0633985, -72.234261, ST_GeomFromText('POINT(44.0633985 -72.234261)', 4326), 44.0631206, -72.296485, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458967', 'Pike River', 'Stream', 'Quebec', 'QU', 'Quebec', 'Highgate Center OE N', 45.07219, -73.09608, ST_GeomFromText('POINT(45.07219 -73.09608)', 4326), 45.02383, -72.73335, '2000-01-01', '2010-12-10', NULL, NULL, NULL),
  ('1458968', 'Pikes Peak', 'Summit', 'Vermont', 'VT', 'Windsor', 'Windsor', 43.3957755, -72.4737027, ST_GeomFromText('POINT(43.3957755 -72.4737027)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL),
  ('1458969', 'Pine Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Morgan Center', 44.8781037, -71.9064844, ST_GeomFromText('POINT(44.8781037 -71.9064844)', 4326), 44.8806036, -71.8531504, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458971', 'Pine Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Wells', 43.4242475, -73.1646146, ST_GeomFromText('POINT(43.4242475 -73.1646146)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458972', 'Pine Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Proctor', 43.6470494, -73.0158519, ST_GeomFromText('POINT(43.6470494 -73.0158519)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1458973', 'Pine Hill', 'Summit', 'Vermont', 'VT', 'Franklin', 'Fairfield', 44.7512881, -72.920862, ST_GeomFromText('POINT(44.7512881 -72.920862)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458976', 'Pine Island', 'Island', 'Vermont', 'VT', 'Chittenden', 'Colchester', 44.5206039, -73.2167951, ST_GeomFromText('POINT(44.5206039 -73.2167951)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458977', 'Pine Island', 'Island', 'Vermont', 'VT', 'Grand Isle', 'Rouses Point', 44.9042077, -73.2815197, ST_GeomFromText('POINT(44.9042077 -73.2815197)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458979', 'Pine Mountains', 'Summit', 'Vermont', 'VT', 'Orange', 'Groton', 44.1846527, -72.1865051, ST_GeomFromText('POINT(44.1846527 -72.1865051)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458980', 'Pine Pond', 'Reservoir', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.6369781, -73.193231, ST_GeomFromText('POINT(43.6369781 -73.193231)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL),
  ('1458981', 'Pine Top', 'Summit', 'Vermont', 'VT', 'Rutland', 'Pawlet', 43.3521618, -73.2132617, ST_GeomFromText('POINT(43.3521618 -73.2132617)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1458983', 'Pinnacle', 'Summit', 'Vermont', 'VT', 'Windsor', 'Delectable Mountain', 43.6617264, -72.631208, ST_GeomFromText('POINT(43.6617264 -72.631208)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1458984', 'Pinnacle Rock', 'Summit', 'Vermont', 'VT', 'Windsor', 'Windsor', 43.384418, -72.4577607, ST_GeomFromText('POINT(43.384418 -72.4577607)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL),
  ('1458985', 'Pinneo Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Waterbury', 44.3631107, -72.8445644, ST_GeomFromText('POINT(44.3631107 -72.8445644)', 4326), 44.4056098, -72.8359541, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1458986', 'Pinney Hollow', 'Valley', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.5706117, -72.664631, ST_GeomFromText('POINT(43.5706117 -72.664631)', 4326), 43.53835, -72.7177039, '1980-10-29', '2023-07-21', NULL, NULL, NULL),
  ('1458987', 'Pinney Hollow Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.5700695, -72.6620418, ST_GeomFromText('POINT(43.5700695 -72.6620418)', 4326), 43.5213889, -72.7230556, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1458988', 'Mount Pisgah', 'Summit', 'Vermont', 'VT', 'Orleans', 'Sutton', 44.7299617, -72.0308441, ST_GeomFromText('POINT(44.7299617 -72.0308441)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1458989', 'Mount Pisgah', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Concord', 44.4731648, -71.9781909, ST_GeomFromText('POINT(44.4731648 -71.9781909)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1458998', 'Pleasant Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Sudbury', 43.8628396, -73.1712258, ST_GeomFromText('POINT(43.8628396 -73.1712258)', 4326), 43.8002778, -73.1872222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459001', 'Pleasant Valley', 'Valley', 'Vermont', 'VT', 'Windham', 'Saxtons River', 43.138241, -72.5138165, ST_GeomFromText('POINT(43.138241 -72.5138165)', 4326), 43.1825634, -72.5122474, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1459003', 'Pleasant Valley Reservoir', 'Reservoir', 'Vermont', 'VT', 'Windham', 'Putney', 42.8846391, -72.6122958, ST_GeomFromText('POINT(42.8846391 -72.6122958)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1459011', 'Mount Pleasant', 'Summit', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.5681161, -72.7259313, ST_GeomFromText('POINT(43.5681161 -72.7259313)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459013', 'Plum Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Middletown Springs', 43.4994143, -73.1047012, ST_GeomFromText('POINT(43.4994143 -73.1047012)', 4326), NULL, NULL, '1980-10-29', '2022-09-02', NULL, NULL, NULL),
  ('1459014', 'Plumies Point', 'Cape', 'Vermont', 'VT', 'Addison', 'Crown Point', 43.9925569, -73.4026224, ST_GeomFromText('POINT(43.9925569 -73.4026224)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459017', 'Plymouth Notch', 'Gap', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.5339587, -72.7300987, ST_GeomFromText('POINT(43.5339587 -72.7300987)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459022', 'Podunk Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Quechee', 43.7139584, -72.4184268, ST_GeomFromText('POINT(43.7139584 -72.4184268)', 4326), 43.7347222, -72.3830556, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459023', 'Point of the Tongue', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.8475417, -73.2937426, ST_GeomFromText('POINT(44.8475417 -73.2937426)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459025', 'Polly Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Gilson Mountain', 44.7169936, -72.9959749, ST_GeomFromText('POINT(44.7169936 -72.9959749)', 4326), 44.7475, -72.9930556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459026', 'Buck Hollow', 'Valley', 'Vermont', 'VT', 'Franklin', 'Gilson Mountain', 44.7178142, -72.9953294, ST_GeomFromText('POINT(44.7178142 -72.9953294)', 4326), 44.7446733, -72.9852537, '1980-10-29', '2016-11-29', NULL, NULL, NULL),
  ('1459028', 'Pomfret Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Woodstock North', 43.6636802, -72.5395398, ST_GeomFromText('POINT(43.6636802 -72.5395398)', 4326), 43.7208333, -72.5363889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459029', 'Pond Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Governors Mountain', 42.81286, -72.7248159, ST_GeomFromText('POINT(42.81286 -72.7248159)', 4326), 42.8413889, -72.7155556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459030', 'Pond Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Barre West', 44.2336711, -72.5528855, ST_GeomFromText('POINT(44.2336711 -72.5528855)', 4326), 44.1319444, -72.6080556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459031', 'Pond Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Stone Mountain', 44.5667218, -71.7381459, ST_GeomFromText('POINT(44.5667218 -71.7381459)', 4326), 44.5611111, -71.7033333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459032', 'Pond Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Essex Center', 44.6031048, -73.048744, ST_GeomFromText('POINT(44.6031048 -73.048744)', 4326), 44.5886111, -73.0627778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459033', 'Pond Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Bethel', 43.7606231, -72.6303774, ST_GeomFromText('POINT(43.7606231 -72.6303774)', 4326), 43.7289568, -72.6175988, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459034', 'Pond Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Colchester', 44.5739368, -73.1729076, ST_GeomFromText('POINT(44.5739368 -73.1729076)', 4326), 44.5656043, -73.1201301, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459035', 'Pond Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Springfield', 43.3356208, -72.4314772, ST_GeomFromText('POINT(43.3356208 -72.4314772)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459036', 'Pond Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Poultney', 43.5897808, -73.153528, ST_GeomFromText('POINT(43.5897808 -73.153528)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459037', 'Pond Hill Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Poultney', 43.6111778, -73.1848321, ST_GeomFromText('POINT(43.6111778 -73.1848321)', 4326), 43.5861111, -73.1527778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459038', 'Pond Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Wells', 43.4364562, -73.1861319, ST_GeomFromText('POINT(43.4364562 -73.1861319)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459040', 'Popasquash Island', 'Island', 'Vermont', 'VT', 'Franklin', 'Saint Albans Bay', 44.8619872, -73.189854, ST_GeomFromText('POINT(44.8619872 -73.189854)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459041', 'Pope Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Saint Johnsbury', 44.4697222, -72.1066667, ST_GeomFromText('POINT(44.4697222 -72.1066667)', 4326), 44.4933333, -72.1683333, '1980-10-29', '2008-01-18', NULL, NULL, NULL),
  ('1459043', 'Popple Dungeon', 'Valley', 'Vermont', 'VT', 'Windsor', 'Saxtons River', 43.2497431, -72.6026102, ST_GeomFromText('POINT(43.2497431 -72.6026102)', 4326), 43.223997, -72.7099056, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1459045', 'Porcupine Ridge', 'Ridge', 'Vermont', 'VT', 'Rutland', 'Benson', 43.6408958, -73.2581325, ST_GeomFromText('POINT(43.6408958 -73.2581325)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459047', 'Porter Bay', 'Bay', 'Vermont', 'VT', 'Addison', 'Vergennes West', 44.2283862, -73.3176254, ST_GeomFromText('POINT(44.2283862 -73.3176254)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459048', 'Porter Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Caspian Lake', 44.503943, -72.338439, ST_GeomFromText('POINT(44.503943 -72.338439)', 4326), 44.5713889, -72.3208333, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459049', 'Porter Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Caspian Lake', 44.5964973, -72.3084326, ST_GeomFromText('POINT(44.5964973 -72.3084326)', 4326), 44.6213744, -72.3131076, '1980-10-29', '2019-11-12', NULL, NULL, NULL),
  ('1459052', 'Porter Point', 'Cape', 'Vermont', 'VT', 'Chittenden', 'Colchester Point', 44.5583804, -73.2801298, ST_GeomFromText('POINT(44.5583804 -73.2801298)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459055', 'Potash Bay', 'Bay', 'Vermont', 'VT', 'Addison', 'Port Henry', 44.0953327, -73.3904021, ST_GeomFromText('POINT(44.0953327 -73.3904021)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459056', 'Potash Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Andover', 43.2714636, -72.6673163, ST_GeomFromText('POINT(43.2714636 -72.6673163)', 4326), 43.3083333, -72.6961111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459057', 'Potash Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Bridport', 43.9833911, -73.3340094, ST_GeomFromText('POINT(43.9833911 -73.3340094)', 4326), 43.9944444, -73.2961111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459058', 'Potash Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Burlington', 44.4389387, -73.2198492, ST_GeomFromText('POINT(44.4389387 -73.2198492)', 4326), 44.4333333, -73.1583333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459059', 'Potash Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Bloomfield', 44.809739, -71.6786996, ST_GeomFromText('POINT(44.809739 -71.6786996)', 4326), NULL, NULL, '1980-10-29', '2022-09-02', NULL, NULL, NULL),
  ('1459060', 'Potash Point', 'Cape', 'Vermont', 'VT', 'Addison', 'Port Henry', 44.1172767, -73.3815135, ST_GeomFromText('POINT(44.1172767 -73.3815135)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459061', 'Potter Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Marshfield', 44.2750598, -72.3762131, ST_GeomFromText('POINT(44.2750598 -72.3762131)', 4326), 44.2567269, -72.3781571, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459062', 'Potter Hollow', 'Valley', 'Vermont', 'VT', 'Bennington', 'North Pownal', 42.815734, -73.2631296, ST_GeomFromText('POINT(42.815734 -73.2631296)', 4326), 42.8386632, -73.2703547, '1980-10-29', '2018-08-01', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459063', 'Potters Pond', 'Reservoir', 'Vermont', 'VT', 'Orleans', 'Irasburg', 44.7770867, -72.3198161, ST_GeomFromText('POINT(44.7770867 -72.3198161)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1459066', 'Powder Spring Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Groton', 44.1253416, -72.2412063, ST_GeomFromText('POINT(44.1253416 -72.2412063)', 4326), 44.1675, -72.2383333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459070', 'Preston Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Richmond', 44.3769986, -72.9053992, ST_GeomFromText('POINT(44.3769986 -72.9053992)', 4326), 44.3256111, -72.89012, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459071', 'Preston Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'South Strafford', 43.8525597, -72.3078697, ST_GeomFromText('POINT(43.8525597 -72.3078697)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1459072', 'Preston Pond', 'Lake', 'Vermont', 'VT', 'Chittenden', 'Richmond', 44.4237772, -72.9087845, ST_GeomFromText('POINT(44.4237772 -72.9087845)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1459075', 'Pringle Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Charlotte', 44.3225516, -73.269848, ST_GeomFromText('POINT(44.3225516 -73.269848)', 4326), 44.3228297, -73.2434584, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459079', 'Proctorsville Gulf', 'Valley', 'Vermont', 'VT', 'Windsor', 'Chester', 43.3443324, -72.6198373, ST_GeomFromText('POINT(43.3443324 -72.6198373)', 4326), 43.3712343, -72.6361375, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1459080', 'Proper Pond', 'Lake', 'Vermont', 'VT', 'Franklin', 'Highgate Center OE N', 45.003036, -73.0548036, ST_GeomFromText('POINT(45.003036 -73.0548036)', 4326), NULL, NULL, '1980-10-29', '2020-01-15', NULL, NULL, NULL),
  ('1459082', 'Prospect Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Lyndonville', 44.5093408, -72.0077866, ST_GeomFromText('POINT(44.5093408 -72.0077866)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459083', 'Prospect Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Governors Mountain', 42.7624896, -72.7337036, ST_GeomFromText('POINT(42.7624896 -72.7337036)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459084', 'Prospect Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Putney', 42.9389429, -72.5828262, ST_GeomFromText('POINT(42.9389429 -72.5828262)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459085', 'Prospect Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Ludlow', 43.4505714, -72.6302867, ST_GeomFromText('POINT(43.4505714 -72.6302867)', 4326), NULL, NULL, '1980-10-29', '2022-09-05', NULL, NULL, NULL),
  ('1459086', 'Prospect Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Milton', 44.6383459, -73.0341504, ST_GeomFromText('POINT(44.6383459 -73.0341504)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459087', 'Prospect Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Orleans', 44.8390309, -72.1694136, ST_GeomFromText('POINT(44.8390309 -72.1694136)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459088', 'Prospect Point', 'Cape', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.6450658, -73.2028885, ST_GeomFromText('POINT(43.6450658 -73.2028885)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459089', 'Prospect Rock', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Johnson', 44.6554442, -72.7228179, ST_GeomFromText('POINT(44.6554442 -72.7228179)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459092', 'Providence Island', 'Island', 'Vermont', 'VT', 'Grand Isle', 'Colchester Point', 44.6103235, -73.3540209, ST_GeomFromText('POINT(44.6103235 -73.3540209)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459093', 'Province Island', 'Island', 'Vermont', 'VT', 'Orleans', 'Newport OE N', 45.0042125, -72.2309361, ST_GeomFromText('POINT(45.0042125 -72.2309361)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459094', 'Province Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'East Alburg OE N', 45.0128181, -73.1929068, ST_GeomFromText('POINT(45.0128181 -73.1929068)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459095', 'Pruddy Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.1709098, -73.1678845, ST_GeomFromText('POINT(43.1709098 -73.1678845)', 4326), 43.195, -73.1861111, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459096', 'Pudding Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Lyndonville', 44.593378, -72.0303735, ST_GeomFromText('POINT(44.593378 -72.0303735)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1459097', 'Pudding Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Springfield', 43.2537176, -72.4826975, ST_GeomFromText('POINT(43.2537176 -72.4826975)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459098', 'Pudding Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Springfield', 43.3298562, -72.4845963, ST_GeomFromText('POINT(43.3298562 -72.4845963)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459099', 'Pudding Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Burke Mountain', 44.5881133, -71.9984735, ST_GeomFromText('POINT(44.5881133 -71.9984735)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459101', 'Pulaski Mountain', 'Summit', 'Vermont', 'VT', 'Orange', 'Newbury', 44.0770132, -72.0688291, ST_GeomFromText('POINT(44.0770132 -72.0688291)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459102', 'Pulpit Mountain', 'Summit', 'Vermont', 'VT', 'Windham', 'Governors Mountain', 42.7700898, -72.669556, ST_GeomFromText('POINT(42.7700898 -72.669556)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459103', 'Pumpkin Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Saint Johnsbury', 44.4202209, -72.0924276, ST_GeomFromText('POINT(44.4202209 -72.0924276)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459105', 'Pumpkin Rim', 'Ridge', 'Vermont', 'VT', 'Orange', 'Roxbury', 44.0095729, -72.6881409, ST_GeomFromText('POINT(44.0095729 -72.6881409)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459107', 'Purchase Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Middletown Springs', 43.3811835, -73.0878835, ST_GeomFromText('POINT(43.3811835 -73.0878835)', 4326), 43.4113889, -73.0930556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459108', 'Putnam Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Gilson Mountain', 44.6293772, -72.9102506, ST_GeomFromText('POINT(44.6293772 -72.9102506)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459112', 'Putney Great Meadows', 'Flat', 'Vermont', 'VT', 'Windham', 'Walpole', 43.0064693, -72.451477, ST_GeomFromText('POINT(43.0064693 -72.451477)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459113', 'Putney Mountain', 'Summit', 'Vermont', 'VT', 'Windham', 'Westminster West', 43.0044328, -72.5956038, ST_GeomFromText('POINT(43.0044328 -72.5956038)', 4326), NULL, NULL, '1980-10-29', '2022-09-05', 'Official', 'Board Decision', '1982-01-01'),
  ('1459118', 'Quaker Smith Point', 'Cape', 'Vermont', 'VT', 'Chittenden', 'Juniper Island', 44.3822726, -73.2809605, ST_GeomFromText('POINT(44.3822726 -73.2809605)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459121', 'Quarry Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'South Royalton', 43.8673415, -72.6146283, ST_GeomFromText('POINT(43.8673415 -72.6146283)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1459122', 'Quarry Pond', 'Lake', 'Vermont', 'VT', 'Windsor', 'Chester', 43.3727554, -72.5355103, ST_GeomFromText('POINT(43.3727554 -72.5355103)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1459124', 'Quation Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Sharon', 43.7836796, -72.4503729, ST_GeomFromText('POINT(43.7836796 -72.4503729)', 4326), 43.825, -72.4083333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459126', 'Quechee Gorge', 'Stream', 'Vermont', 'VT', 'Windsor', 'Quechee', 43.6320146, -72.410648, ST_GeomFromText('POINT(43.6320146 -72.410648)', 4326), 43.6402778, -72.4075, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459128', 'Quimby Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Burke Mountain', 44.5811654, -71.9845401, ST_GeomFromText('POINT(44.5811654 -71.9845401)', 4326), 44.598387, -72.0228744, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459129', 'Quimby Mountain', 'Summit', 'Vermont', 'VT', 'Windsor', 'Sharon', 43.7630715, -72.4232071, ST_GeomFromText('POINT(43.7630715 -72.4232071)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1459130', 'Rabbit Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.5283641, -72.4457974, ST_GeomFromText('POINT(43.5283641 -72.4457974)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459132', 'Rabbit Island', 'Island', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.6633986, -73.2037223, ST_GeomFromText('POINT(43.6633986 -73.2037223)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459133', 'Ragged Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.6155845, -72.7027709, ST_GeomFromText('POINT(43.6155845 -72.7027709)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459134', 'Rake Factory Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Barnet', 44.3536703, -72.0695396, ST_GeomFromText('POINT(44.3536703 -72.0695396)', 4326), 44.3650585, -72.1406525, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459136', 'Ranch Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Mount Mansfield', 44.5019971, -72.7565098, ST_GeomFromText('POINT(44.5019971 -72.7565098)', 4326), 44.5005556, -72.8205556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459138', 'Randall Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Heath', 42.7464719, -72.7500939, ST_GeomFromText('POINT(42.7464719 -72.7500939)', 4326), 42.7330556, -72.7669444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459139', 'Randall Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Springfield', 43.2595231, -72.462223, ST_GeomFromText('POINT(43.2595231 -72.462223)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1459142', 'Randolph Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Randolph Center', 43.9582813, -72.6046527, ST_GeomFromText('POINT(43.9582813 -72.6046527)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459143', 'Ranney Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Concord', 44.4578354, -71.8823147, ST_GeomFromText('POINT(44.4578354 -71.8823147)', 4326), 44.4997222, -71.8941667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459144', 'Ransoms Bay', 'Bay', 'Vermont', 'VT', 'Grand Isle', 'Rouses Point', 44.9542073, -73.2579076, ST_GeomFromText('POINT(44.9542073 -73.2579076)', 4326), NULL, NULL, '1980-10-29', NULL, 'Official', 'Board Decision', '1967-01-01'),
  ('1459145', 'Rattlesnake Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Springfield', 43.3269877, -72.4291035, ST_GeomFromText('POINT(43.3269877 -72.4291035)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459146', 'Rattlesnake Ridge', 'Ridge', 'Vermont', 'VT', 'Rutland', 'Benson', 43.6588457, -73.2780283, ST_GeomFromText('POINT(43.6588457 -73.2780283)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459147', 'Rattling Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Cold Hollow Mountains', 44.7564375, -72.674844, ST_GeomFromText('POINT(44.7564375 -72.674844)', 4326), 44.7972222, -72.6586111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459148', 'Raymond Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.6103068, -72.6963389, ST_GeomFromText('POINT(43.6103068 -72.6963389)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459150', 'Reading Hill Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Cavendish', 43.4842376, -72.551204, ST_GeomFromText('POINT(43.4842376 -72.551204)', 4326), 43.5334036, -72.5503713, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459151', 'Reading Pond', 'Lake', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.5018644, -72.6530036, ST_GeomFromText('POINT(43.5018644 -72.6530036)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1459152', 'Reading Pond Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Ludlow', 43.4867373, -72.6806521, ST_GeomFromText('POINT(43.4867373 -72.6806521)', 4326), 43.4988889, -72.6533333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459154', 'Red Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Groton', 44.2447834, -72.2039847, ST_GeomFromText('POINT(44.2447834 -72.2039847)', 4326), 44.291171, -72.2250973, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459155', 'Red Rock', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Hinesburg', 44.2978235, -73.0403981, ST_GeomFromText('POINT(44.2978235 -73.0403981)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1459156', 'Red Rock Bay', 'Bay', 'Vermont', 'VT', 'Rutland', 'Putnam', 43.679786, -73.4006708, ST_GeomFromText('POINT(43.679786 -73.4006708)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459157', 'Red Rock Point', 'Cape', 'Vermont', 'VT', 'Chittenden', 'Burlington', 44.4442163, -73.2304049, ST_GeomFromText('POINT(44.4442163 -73.2304049)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459158', 'Red Rock Point', 'Cape', 'Vermont', 'VT', 'Chittenden', 'Colchester', 44.5786582, -73.2259628, ST_GeomFromText('POINT(44.5786582 -73.2259628)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459161', 'Reed Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'Rouses Point', 44.8805966, -73.3220766, ST_GeomFromText('POINT(44.8805966 -73.3220766)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459163', 'Lake Rescue', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Ludlow', 43.4518388, -72.7017952, ST_GeomFromText('POINT(43.4518388 -72.7017952)', 4326), NULL, NULL, '2002-08-27', '2018-02-28', 'Official', 'Board Decision', '1974-01-01'),
  ('1459164', 'Reservoir Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.5995132, -72.7476004, ST_GeomFromText('POINT(43.5995132 -72.7476004)', 4326), 43.5745135, -72.7609336, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459166', 'Reservoir Pond', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Ludlow', 43.4442967, -72.6994037, ST_GeomFromText('POINT(43.4442967 -72.6994037)', 4326), NULL, NULL, '1980-10-29', '2021-01-19', 'Official', 'Board Decision', '1974-01-01'),
  ('1459167', 'Revoir Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Orleans', 44.8425387, -72.2462134, ST_GeomFromText('POINT(44.8425387 -72.2462134)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1459168', 'Reynolds Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.8375414, -73.333188, ST_GeomFromText('POINT(44.8375414 -73.333188)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459169', 'Reynolds Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'Rouses Point', 44.9094848, -73.3376326, ST_GeomFromText('POINT(44.9094848 -73.3376326)', 4326), NULL, NULL, '1980-10-29', NULL, 'Official', 'Board Decision', '1942-01-01'),
  ('1459170', 'Reynolds Reservoir', 'Reservoir', 'Vermont', 'VT', 'Rutland', 'Proctor', 43.6440993, -73.0254912, ST_GeomFromText('POINT(43.6440993 -73.0254912)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1459172', 'Rice Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Bridport', 43.9536609, -73.3045622, ST_GeomFromText('POINT(43.9536609 -73.3045622)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459173', 'Rice Hill', 'Summit', 'Vermont', 'VT', 'Franklin', 'Sheldon Springs', 44.9339462, -72.9693758, ST_GeomFromText('POINT(44.9339462 -72.9693758)', 4326), NULL, NULL, '1980-10-29', '2024-10-02', NULL, NULL, NULL),
  ('1459175', 'Richardson Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.6004483, -72.3894077, ST_GeomFromText('POINT(43.6004483 -72.3894077)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL),
  ('1459176', 'Richardson Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'South Strafford', 43.8490893, -72.3297526, ST_GeomFromText('POINT(43.8490893 -72.3297526)', 4326), NULL, NULL, '1980-10-29', '2022-09-05', NULL, NULL, NULL),
  ('1459177', 'Richardson Mountain', 'Summit', 'Vermont', 'VT', 'Windham', 'Governors Mountain', 42.8729552, -72.6344017, ST_GeomFromText('POINT(42.8729552 -72.6344017)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459180', 'Richmond Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Woodstock North', 43.6811797, -72.5973196, ST_GeomFromText('POINT(43.6811797 -72.5973196)', 4326), 43.6875682, -72.650099, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459181', 'Richmond Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.5673275, -72.6464416, ST_GeomFromText('POINT(43.5673275 -72.6464416)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459182', 'Richmond Pond', 'Lake', 'Vermont', 'VT', 'Chittenden', 'Richmond', 44.4173544, -72.9465862, ST_GeomFromText('POINT(44.4173544 -72.9465862)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1459184', 'Ricker Mountain', 'Summit', 'Vermont', 'VT', 'Washington', 'Bolton Mountain', 44.4207997, -72.8256751, ST_GeomFromText('POINT(44.4207997 -72.8256751)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1459185', 'Ricker Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Groton', 44.2461667, -72.2440522, ST_GeomFromText('POINT(44.2461667 -72.2440522)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1459186', 'Riddel Pond', 'Lake', 'Vermont', 'VT', 'Orange', 'Knox Mountain', 44.1408208, -72.3495977, ST_GeomFromText('POINT(44.1408208 -72.3495977)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', 'Official', 'Board Decision', '1972-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459189', 'Ridley Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Waterbury', 44.3583887, -72.8259529, ST_GeomFromText('POINT(44.3583887 -72.8259529)', 4326), 44.2958333, -72.8338889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459190', 'Riford Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Randolph', 43.94262, -72.7435105, ST_GeomFromText('POINT(43.94262 -72.7435105)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459192', 'Ritterbush Pond', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Eden', 44.746468, -72.5996378, ST_GeomFromText('POINT(44.746468 -72.5996378)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1459208', 'Roach Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.7156687, -73.2056971, ST_GeomFromText('POINT(43.7156687 -73.2056971)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL),
  ('1459209', 'Roaring Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Crystal Lake', 44.7375496, -72.1834351, ST_GeomFromText('POINT(44.7375496 -72.1834351)', 4326), 44.7258333, -72.2291667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459210', 'Roaring Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Bernardston', 42.7453607, -72.5687013, ST_GeomFromText('POINT(42.7453607 -72.5687013)', 4326), 42.7447222, -72.5422222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459211', 'Roaring Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Lyme', 43.8634022, -72.1842568, ST_GeomFromText('POINT(43.8634022 -72.1842568)', 4326), 43.8672222, -72.2108333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459212', 'Roaring Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Miles Pond', 44.4047813, -71.7817564, ST_GeomFromText('POINT(44.4047813 -71.7817564)', 4326), 44.4319444, -71.805, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459213', 'Roaring Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Underhill', 44.5311619, -72.9484604, ST_GeomFromText('POINT(44.5311619 -72.9484604)', 4326), 44.55, -72.8980556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459214', 'Roaring Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Colrain', 42.7406387, -72.6734256, ST_GeomFromText('POINT(42.7406387 -72.6734256)', 4326), 42.7681383, -72.7034264, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459215', 'Roaring Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Newbury', 44.0245104, -72.09259, ST_GeomFromText('POINT(44.0245104 -72.09259)', 4326), 44.0645096, -72.1612036, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459216', 'Robbins Mountain', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Huntington', 44.364212, -72.9309537, ST_GeomFromText('POINT(44.364212 -72.9309537)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459217', 'Roberts Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Saint Johnsbury', 44.4545017, -72.0159287, ST_GeomFromText('POINT(44.4545017 -72.0159287)', 4326), 44.4561685, -71.9725944, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459220', 'Robinson Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Cavendish', 43.4497694, -72.5282976, ST_GeomFromText('POINT(43.4497694 -72.5282976)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459221', 'Robinson Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Killington Peak', 43.5776347, -72.8598957, ST_GeomFromText('POINT(43.5776347 -72.8598957)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1459222', 'Robinson Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Montpelier', 44.3744922, -72.5145748, ST_GeomFromText('POINT(44.3744922 -72.5145748)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459223', 'Robinson Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'Colchester Point', 44.6111571, -73.2756857, ST_GeomFromText('POINT(44.6111571 -73.2756857)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459224', 'Robinson Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'South Hero', 44.7230993, -73.2742979, ST_GeomFromText('POINT(44.7230993 -73.2742979)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459226', 'Rochester Gap', 'Gap', 'Vermont', 'VT', 'Windsor', 'Bethel', 43.8522879, -72.7412161, ST_GeomFromText('POINT(43.8522879 -72.7412161)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459227', 'Rochester Mountain', 'Summit', 'Vermont', 'VT', 'Windsor', 'Bethel', 43.8669956, -72.748188, ST_GeomFromText('POINT(43.8669956 -72.748188)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459228', 'Rock Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Joes Pond', 44.4694998, -72.2206568, ST_GeomFromText('POINT(44.4694998 -72.2206568)', 4326), 44.4788889, -72.1775, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459230', 'Rock Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Pawlet', 43.3310419, -73.2169446, ST_GeomFromText('POINT(43.3310419 -73.2169446)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1459231', 'Rock Island', 'Island', 'Vermont', 'VT', 'Addison', 'Westport', 44.141443, -73.3745694, ST_GeomFromText('POINT(44.141443 -73.3745694)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459232', 'Rock Island', 'Island', 'Vermont', 'VT', 'Franklin', 'Saint Albans Bay', 44.7767115, -73.1645792, ST_GeomFromText('POINT(44.7767115 -73.1645792)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459233', 'Rock River', 'Stream', 'Vermont', 'VT', 'Franklin', 'Highgate Center', 44.9889305, -73.0881838, ST_GeomFromText('POINT(44.9889305 -73.0881838)', 4326), 44.9489329, -72.9523539, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1459234', 'Rock River Bay', 'Bay', 'Vermont', 'VT', 'Franklin', 'Highgate Center', 44.9911526, -73.091517, ST_GeomFromText('POINT(44.9911526 -73.091517)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459236', 'Rockwell Bay', 'Bay', 'Vermont', 'VT', 'Grand Isle', 'South Hero', 44.6672666, -73.3467989, ST_GeomFromText('POINT(44.6672666 -73.3467989)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459237', 'Rocky Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Proctor', 43.6263068, -73.0031435, ST_GeomFromText('POINT(43.6263068 -73.0031435)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1459238', 'Rocky Ridge', 'Ridge', 'Vermont', 'VT', 'Windham', 'Westminster West', 43.0449387, -72.5054075, ST_GeomFromText('POINT(43.0449387 -72.5054075)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459239', 'Rodman Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Morrisville', 44.564219, -72.5584469, ST_GeomFromText('POINT(44.564219 -72.5584469)', 4326), 44.6272733, -72.5567804, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459240', 'Rogers Branch', 'Stream', 'Vermont', 'VT', 'Orleans', 'Albany', 44.7092164, -72.3864965, ST_GeomFromText('POINT(44.7092164 -72.3864965)', 4326), 44.7455556, -72.4236111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459241', 'Rogers Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Essex Center', 44.5944942, -73.0179105, ST_GeomFromText('POINT(44.5944942 -73.0179105)', 4326), 44.6188889, -73.0616667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459243', 'Rood Pond', 'Lake', 'Vermont', 'VT', 'Orange', 'Brookfield', 44.0766598, -72.5871582, ST_GeomFromText('POINT(44.0766598 -72.5871582)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1459245', 'Root Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Benson', 43.6792328, -73.3493147, ST_GeomFromText('POINT(43.6792328 -73.3493147)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL),
  ('1459246', 'Rosebrook Hill', 'Summit', 'Vermont', 'VT', 'Essex', 'Island Pond', 44.7972624, -71.9242613, ST_GeomFromText('POINT(44.7972624 -71.9242613)', 4326), NULL, NULL, '1980-10-29', '2022-09-02', NULL, NULL, NULL),
  ('1459247', 'Ross Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Bakersfield', 44.8147701, -72.7642968, ST_GeomFromText('POINT(44.8147701 -72.7642968)', 4326), 44.7867149, -72.7187371, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459248', 'Ross Hill', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Sterling Mountain', 44.5299364, -72.6841756, ST_GeomFromText('POINT(44.5299364 -72.6841756)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459250', 'Round Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Rutland', 43.5586713, -72.9249595, ST_GeomFromText('POINT(43.5586713 -72.9249595)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1459251', 'Round Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Irasburg', 44.7929121, -72.3127511, ST_GeomFromText('POINT(44.7929121 -72.3127511)', 4326), NULL, NULL, '1980-10-29', '2022-09-02', NULL, NULL, NULL),
  ('1459252', 'Round Knoll', 'Summit', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.4559714, -72.3843494, ST_GeomFromText('POINT(44.4559714 -72.3843494)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459253', 'Round Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Stannard', 44.5134906, -72.1905698, ST_GeomFromText('POINT(44.5134906 -72.1905698)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459254', 'Round Mountain', 'Summit', 'Vermont', 'VT', 'Windham', 'Governors Mountain', 42.8579659, -72.6399574, ST_GeomFromText('POINT(42.8579659 -72.6399574)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459255', 'Round Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Stone Mountain', 44.6029172, -71.629147, ST_GeomFromText('POINT(44.6029172 -71.629147)', 4326), NULL, NULL, '1980-10-29', '2022-09-08', NULL, NULL, NULL),
  ('1459256', 'Round Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Norton Pond', 44.9329474, -71.787502, ST_GeomFromText('POINT(44.9329474 -71.787502)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1459257', 'Round Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Crystal Lake', 44.676659, -72.1520537, ST_GeomFromText('POINT(44.676659 -72.1520537)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1459258', 'Round Pond', 'Lake', 'Vermont', 'VT', 'Orange', 'East Corinth', 44.1051012, -72.1588854, ST_GeomFromText('POINT(44.1051012 -72.1588854)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1459259', 'Round Pond', 'Lake', 'Vermont', 'VT', 'Chittenden', 'Colchester', 44.6118884, -73.2196806, ST_GeomFromText('POINT(44.6118884 -73.2196806)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1459260', 'Round Pond', 'Lake', 'Vermont', 'VT', 'Chittenden', 'Georgia Plains', 44.6654712, -73.1786814, ST_GeomFromText('POINT(44.6654712 -73.1786814)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1459261', 'Round Pond', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Eden', 44.7064665, -72.5259936, ST_GeomFromText('POINT(44.7064665 -72.5259936)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1459262', 'Round Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Morgan Center OE N', 45.0017434, -71.9256623, ST_GeomFromText('POINT(45.0017434 -71.9256623)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459264', 'Round Top', 'Summit', 'Vermont', 'VT', 'Orleans', 'Morgan Center', 44.8956855, -71.9388134, ST_GeomFromText('POINT(44.8956855 -71.9388134)', 4326), NULL, NULL, '1980-10-29', '2023-03-24', NULL, NULL, NULL),
  ('1459266', 'Roundtop', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Sterling Mountain', 44.5109513, -72.6991138, ST_GeomFromText('POINT(44.5109513 -72.6991138)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459267', 'Roundy Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Burke Mountain', 44.6031094, -71.9700955, ST_GeomFromText('POINT(44.6031094 -71.9700955)', 4326), 44.6828296, -71.9498178, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459268', 'Roundy Mountain', 'Summit', 'Vermont', 'VT', 'Windham', 'Windham', 43.21806, -72.666311, ST_GeomFromText('POINT(43.21806 -72.666311)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', 'Official', 'Board Decision', '1960-01-01'),
  ('1459270', 'Rowe Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Cavendish', 43.4745405, -72.5074629, ST_GeomFromText('POINT(43.4745405 -72.5074629)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459271', 'Rowell Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Fairlee', 43.9736781, -72.1587022, ST_GeomFromText('POINT(43.9736781 -72.1587022)', 4326), 43.9891667, -72.1894444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459272', 'Rowell Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hanover', 43.7427616, -72.3022514, ST_GeomFromText('POINT(43.7427616 -72.3022514)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1459275', 'Roy Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Saint Johnsbury', 44.4478349, -72.0595409, ST_GeomFromText('POINT(44.4478349 -72.0595409)', 4326), 44.4477778, -72.1247222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459276', 'Roy Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Barnet', 44.2827514, -72.1158234, ST_GeomFromText('POINT(44.2827514 -72.1158234)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459278', 'Royalton Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'South Royalton', 43.7861976, -72.5705288, ST_GeomFromText('POINT(43.7861976 -72.5705288)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459279', 'Royce Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Orwell', 43.8272831, -73.3167834, ST_GeomFromText('POINT(43.8272831 -73.3167834)', 4326), 43.8094444, -73.2827778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459280', 'Rugg Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Saint Albans Bay', 44.7747678, -73.1295809, ST_GeomFromText('POINT(44.7747678 -73.1295809)', 4326), 44.7761578, -73.077361, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459281', 'Runaway Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Crystal Lake', 44.6347739, -72.2117688, ST_GeomFromText('POINT(44.6347739 -72.2117688)', 4326), NULL, NULL, '1980-10-29', '2011-06-27', NULL, NULL, NULL),
  ('1459282', 'Lake Runnenede', 'Lake', 'Vermont', 'VT', 'Windsor', 'Windsor', 43.4843495, -72.3887532, ST_GeomFromText('POINT(43.4843495 -72.3887532)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1459284', 'Rupert Mountain', 'Summit', 'Vermont', 'VT', 'Bennington', 'Pawlet', 43.3076935, -73.1996502, ST_GeomFromText('POINT(43.3076935 -73.1996502)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1459285', 'Rupert Valley', 'Valley', 'New York', 'NY', 'Washington', 'Salem', 43.2262153, -73.2618569, ST_GeomFromText('POINT(43.2262153 -73.2618569)', 4326), 43.2518925, -73.2347385, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1459286', 'Rush Hollow', 'Valley', 'Vermont', 'VT', 'Rutland', 'Pawlet', 43.3412709, -73.2338796, ST_GeomFromText('POINT(43.3412709 -73.2338796)', 4326), 43.3528762, -73.2199371, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1459287', 'Rush Pond', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Eden', 44.6710145, -72.531628, ST_GeomFromText('POINT(44.6710145 -72.531628)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1459288', 'Russ Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'South Royalton', 43.8413078, -72.5470412, ST_GeomFromText('POINT(43.8413078 -72.5470412)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459289', 'Russ Pond', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Mount Worcester', 44.4625217, -72.5307011, ST_GeomFromText('POINT(44.4625217 -72.5307011)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459290', 'Russ Pond Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Mount Worcester', 44.4386662, -72.5367777, ST_GeomFromText('POINT(44.4386662 -72.5367777)', 4326), 44.4608333, -72.5308333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459291', 'Russell Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'South Royalton', 43.8536782, -72.5125983, ST_GeomFromText('POINT(43.8536782 -72.5125983)', 4326), 43.8839555, -72.5412109, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459292', 'Russell Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Killington Peak', 43.5574071, -72.8054261, ST_GeomFromText('POINT(43.5574071 -72.8054261)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1459294', 'Ryan Mountain', 'Summit', 'Vermont', 'VT', 'Franklin', 'Jeffersonville', 44.7318134, -72.8437453, ST_GeomFromText('POINT(44.7318134 -72.8437453)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459295', 'Ryder Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Morrisville', 44.5625522, -72.6131715, ST_GeomFromText('POINT(44.5625522 -72.6131715)', 4326), 44.5138889, -72.5908333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459296', 'Ryder Pond', 'Reservoir', 'Vermont', 'VT', 'Windham', 'Jacksonville', 42.8155773, -72.844653, ST_GeomFromText('POINT(42.8155773 -72.844653)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1459298', 'Sabin Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.4014879, -72.4168735, ST_GeomFromText('POINT(44.4014879 -72.4168735)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', 'Official', 'Board Decision', '1972-01-01'),
  ('1459299', 'Sable Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Stone Mountain', 44.6067963, -71.6847495, ST_GeomFromText('POINT(44.6067963 -71.6847495)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459300', 'Sable Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Averill', 44.9228464, -71.6865007, ST_GeomFromText('POINT(44.9228464 -71.6865007)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459301', 'Sable Mountain Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Stone Mountain', 44.59727, -71.67717, ST_GeomFromText('POINT(44.59727 -71.67717)', 4326), 44.6047222, -71.6886111, '1980-10-29', '2010-07-08', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459302', 'Sacketts Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Putney', 42.9639698, -72.5142558, ST_GeomFromText('POINT(42.9639698 -72.5142558)', 4326), 43.0484127, -72.5742574, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459303', 'Saddle Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Killington Peak', 43.5256165, -72.8125996, ST_GeomFromText('POINT(43.5256165 -72.8125996)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1459304', 'Saddle Pond', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Bakersfield', 44.7628263, -72.7629053, ST_GeomFromText('POINT(44.7628263 -72.7629053)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459305', 'Saddleback Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Concord', 44.4424986, -71.9920154, ST_GeomFromText('POINT(44.4424986 -71.9920154)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1459307', 'Saint Albans Bay', 'Bay', 'Vermont', 'VT', 'Franklin', 'Saint Albans Bay', 44.7841667, -73.1591667, ST_GeomFromText('POINT(44.7841667 -73.1591667)', 4326), NULL, NULL, '1980-10-29', '2014-05-23', NULL, NULL, NULL),
  ('1459311', 'Saint Albans Hill', 'Summit', 'Vermont', 'VT', 'Franklin', 'Saint Albans', 44.7747934, -73.0988763, ST_GeomFromText('POINT(44.7747934 -73.0988763)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1459312', 'Saint Albans Point', 'Cape', 'Vermont', 'VT', 'Franklin', 'Saint Albans Bay', 44.7975442, -73.1745782, ST_GeomFromText('POINT(44.7975442 -73.1745782)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459314', 'Saint Albans Reservoir', 'Reservoir', 'Vermont', 'VT', 'Addison', 'Saint Albans', 44.7613889, -73.0613889, ST_GeomFromText('POINT(44.7613889 -73.0613889)', 4326), NULL, NULL, '1980-10-29', '2018-10-01', NULL, NULL, NULL),
  ('1459321', 'Saint Catherine Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Wells', 43.4617981, -73.1925206, ST_GeomFromText('POINT(43.4617981 -73.1925206)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', 'Official', 'Board Decision', '1971-01-01'),
  ('1459322', 'Lake Saint Catherine', 'Lake', 'Vermont', 'VT', 'Rutland', 'Wells', 43.4675408, -73.2123392, ST_GeomFromText('POINT(43.4675408 -73.2123392)', 4326), NULL, NULL, '1980-10-29', '2021-01-15', 'Official', 'Board Decision', '1971-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459323', 'Saint Cyr Mountain', 'Summit', 'Vermont', 'VT', 'Orange', 'Knox Mountain', 44.1979108, -72.3720212, ST_GeomFromText('POINT(44.1979108 -72.3720212)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459326', 'Saint George Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Bridport', 43.9894939, -73.2759512, ST_GeomFromText('POINT(43.9894939 -73.2759512)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459352', 'Salem Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Newport', 44.9330738, -72.1520285, ST_GeomFromText('POINT(44.9330738 -72.1520285)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459353', 'Lake Salem', 'Lake', 'Vermont', 'VT', 'Orleans', 'West Charleston', 44.9272116, -72.1025414, ST_GeomFromText('POINT(44.9272116 -72.1025414)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', 'Official', 'Board Decision', '1972-01-01'),
  ('1459355', 'Salmon Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Putney', 42.9345256, -72.5270339, ST_GeomFromText('POINT(42.9345256 -72.5270339)', 4326), 42.98, -72.5986111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459357', 'Sanborn Ridge', 'Ridge', 'Vermont', 'VT', 'Orange', 'West Topsham', 44.1242926, -72.280705, ST_GeomFromText('POINT(44.1242926 -72.280705)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1459360', 'Sand Hill', 'Summit', 'Vermont', 'VT', 'Franklin', 'Gilson Mountain', 44.6606115, -72.9509682, ST_GeomFromText('POINT(44.6606115 -72.9509682)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459363', 'Sanders Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Ludlow', 43.3775726, -72.7145409, ST_GeomFromText('POINT(43.3775726 -72.7145409)', 4326), 43.3877778, -72.75, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459367', 'Sandgate Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.2297983, -73.2220521, ST_GeomFromText('POINT(43.2297983 -73.2220521)', 4326), 43.2061111, -73.1997222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459368', 'Sandy Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.7644872, -73.2879094, ST_GeomFromText('POINT(44.7644872 -73.2879094)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459369', 'Sandy Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'Rouses Point', 44.9003183, -73.3490217, ST_GeomFromText('POINT(44.9003183 -73.3490217)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459370', 'Sandy Point', 'Cape', 'Vermont', 'VT', 'Franklin', 'East Alburg', 44.9739297, -73.2084627, ST_GeomFromText('POINT(44.9739297 -73.2084627)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459371', 'Sanford Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Orwell', 43.7822839, -73.3151158, ST_GeomFromText('POINT(43.7822839 -73.3151158)', 4326), 43.7905556, -73.2655556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459372', 'Sarah Moores Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Barnet', 44.3239039, -72.071095, ST_GeomFromText('POINT(44.3239039 -72.071095)', 4326), NULL, NULL, '1980-10-29', '2021-01-22', NULL, NULL, NULL),
  ('1459373', 'Sargent Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Killington Peak', 43.5414583, -72.8601024, ST_GeomFromText('POINT(43.5414583 -72.8601024)', 4326), 43.5891667, -72.8113889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459374', 'Sargent Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Pawlet', 43.3416065, -73.1696326, ST_GeomFromText('POINT(43.3416065 -73.1696326)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1459375', 'Sargent Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.7169073, -73.1392764, ST_GeomFromText('POINT(43.7169073 -73.1392764)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1459376', 'Sargent Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'South Strafford', 43.7957711, -72.2960685, ST_GeomFromText('POINT(43.7957711 -72.2960685)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459377', 'Sargent Pond', 'Reservoir', 'Vermont', 'VT', 'Orleans', 'Newport Center', 44.9141238, -72.2707889, ST_GeomFromText('POINT(44.9141238 -72.2707889)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1459379', 'Savage Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Quechee', 43.6947833, -72.3756469, ST_GeomFromText('POINT(43.6947833 -72.3756469)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459380', 'Savage Island', 'Island', 'Vermont', 'VT', 'Grand Isle', 'Georgia Plains', 44.6989333, -73.247075, ST_GeomFromText('POINT(44.6989333 -73.247075)', 4326), NULL, NULL, '1980-10-29', '2014-05-23', NULL, NULL, NULL),
  ('1459381', 'Savage Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.8339308, -73.2915203, ST_GeomFromText('POINT(44.8339308 -73.2915203)', 4326), NULL, NULL, '1980-10-29', NULL, 'Official', 'Board Decision', '1967-01-01'),
  ('1459382', 'Sawdust Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'West Burke', 44.7317445, -71.9703724, ST_GeomFromText('POINT(44.7317445 -71.9703724)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1459383', 'Sawmill Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Stannard', 44.5941484, -72.2294701, ST_GeomFromText('POINT(44.5941484 -72.2294701)', 4326), 44.6185052, -72.2838867, '1980-10-29', '2019-11-12', NULL, NULL, NULL),
  ('1459384', 'Sawmill Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Sudbury', 43.8581166, -73.2395601, ST_GeomFromText('POINT(43.8581166 -73.2395601)', 4326), 43.8953383, -73.2295607, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459385', 'Sawyer Bay', 'Bay', 'Vermont', 'VT', 'Grand Isle', 'South Hero', 44.6494892, -73.3448543, ST_GeomFromText('POINT(44.6494892 -73.3448543)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459386', 'Sawyer Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Joes Pond', 44.3875579, -72.1598201, ST_GeomFromText('POINT(44.3875579 -72.1598201)', 4326), 44.3877778, -72.2083333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459388', 'Sawyer Island', 'Island', 'Vermont', 'VT', 'Grand Isle', 'South Hero', 44.6503225, -73.3548546, ST_GeomFromText('POINT(44.6503225 -73.3548546)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459389', 'Sawyer Mountain', 'Summit', 'Vermont', 'VT', 'Orange', 'Fairlee', 43.9443639, -72.1282754, ST_GeomFromText('POINT(43.9443639 -72.1282754)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459390', 'Sawyer Rocks', 'Summit', 'Vermont', 'VT', 'Rutland', 'Ludlow', 43.4473469, -72.7411221, ST_GeomFromText('POINT(43.4473469 -72.7411221)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459392', 'Sawyers Ledge', 'Bench', 'Vermont', 'VT', 'Orange', 'Newbury', 44.0178439, -72.1056457, ST_GeomFromText('POINT(44.0178439 -72.1056457)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459393', 'Saxe Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Highgate Center', 44.9969859, -73.0717944, ST_GeomFromText('POINT(44.9969859 -73.0717944)', 4326), 44.9519444, -73.0691667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459394', 'Saxon Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Essex Junction', 44.488375, -73.0234582, ST_GeomFromText('POINT(44.488375 -73.0234582)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459395', 'Saxton Point', 'Cape', 'Vermont', 'VT', 'Chittenden', 'Juniper Island', 44.3961613, -73.2776273, ST_GeomFromText('POINT(44.3961613 -73.2776273)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459398', 'Saxtons River', 'Stream', 'Vermont', 'VT', 'Windham', 'Walpole', 43.1245224, -72.4375883, ST_GeomFromText('POINT(43.1245224 -72.4375883)', 4326), 43.1881318, -72.7298176, '1980-10-29', '2018-07-31', NULL, NULL, NULL),
  ('1459399', 'Scales Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Miles Pond', 44.422281, -71.7495337, ST_GeomFromText('POINT(44.422281 -71.7495337)', 4326), 44.4536111, -71.7527778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459400', 'Schofield Pond', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Eden', 44.6487391, -72.5325631, ST_GeomFromText('POINT(44.6487391 -72.5325631)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1459426', 'Schoolhouse Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Gallup Mills', 44.5569997, -71.7592575, ST_GeomFromText('POINT(44.5569997 -71.7592575)', 4326), 44.5766667, -71.7519444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459427', 'Schoolhouse Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Monadnock Mountain', 44.9706022, -71.5950879, ST_GeomFromText('POINT(44.9706022 -71.5950879)', 4326), 44.9769444, -71.6158333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459428', 'Schoolhouse Marsh', 'Lake', 'Vermont', 'VT', 'Rutland', 'Whitehall', 43.5930111, -73.3875556, ST_GeomFromText('POINT(43.5930111 -73.3875556)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459429', 'Scotch Bonnet', 'Cliff', 'Vermont', 'VT', 'Addison', 'Vergennes West', 44.191442, -73.3698482, ST_GeomFromText('POINT(44.191442 -73.3698482)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459430', 'Scotch Hollow', 'Valley', 'Vermont', 'VT', 'Orange', 'Groton', 44.1369846, -72.1419409, ST_GeomFromText('POINT(44.1369846 -72.1419409)', 4326), 44.1593297, -72.1335235, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1459431', 'Scott Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Groton', 44.1872849, -72.1384271, ST_GeomFromText('POINT(44.1872849 -72.1384271)', 4326), 44.1352778, -72.1733333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459432', 'Scott Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.5567282, -72.4939802, ST_GeomFromText('POINT(43.5567282 -72.4939802)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL),
  ('1459433', 'Scott Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Pawlet', 43.3616934, -73.1994554, ST_GeomFromText('POINT(43.3616934 -73.1994554)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1459434', 'Scott Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.8342079, -73.3595776, ST_GeomFromText('POINT(44.8342079 -73.3595776)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459435', 'Scott Pond', 'Lake', 'Vermont', 'VT', 'Chittenden', 'Mount Philo', 44.2786646, -73.1759567, ST_GeomFromText('POINT(44.2786646 -73.1759567)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459438', 'Scove Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Cornwall', 43.9216409, -73.2030835, ST_GeomFromText('POINT(43.9216409 -73.2030835)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459439', 'Seaver Branch', 'Stream', 'Vermont', 'VT', 'Orleans', 'Albany', 44.7022721, -72.3903855, ST_GeomFromText('POINT(44.7022721 -72.3903855)', 4326), 44.7313889, -72.4419444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459440', 'Seaver Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Craftsbury', 44.6669951, -72.3309392, ST_GeomFromText('POINT(44.6669951 -72.3309392)', 4326), 44.6938889, -72.2808333, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459441', 'Seaver Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Quechee', 43.6842271, -72.4709263, ST_GeomFromText('POINT(43.6842271 -72.4709263)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1459442', 'Second Branch White River', 'Stream', 'Vermont', 'VT', 'Windsor', 'South Royalton', 43.8245115, -72.5670437, ST_GeomFromText('POINT(43.8245115 -72.5670437)', 4326), 44.075341, -72.598717, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459443', 'Second Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Bloomfield', 44.7592161, -71.6539786, ST_GeomFromText('POINT(44.7592161 -71.6539786)', 4326), 44.7505556, -71.6666667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459444', 'Seeley Hill', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Jeffersonville', 44.6446688, -72.8167937, ST_GeomFromText('POINT(44.6446688 -72.8167937)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459445', 'Seneca Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Seneca Mountain', 44.6972645, -71.7745359, ST_GeomFromText('POINT(44.6972645 -71.7745359)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459447', 'Settlement Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Mount Mansfield', 44.6114394, -72.8681839, ST_GeomFromText('POINT(44.6114394 -72.8681839)', 4326), 44.5608843, -72.8817933, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459448', 'Sewall Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'South Royalton', 43.8172894, -72.5670435, ST_GeomFromText('POINT(43.8172894 -72.5670435)', 4326), 43.7713889, -72.5925, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459449', 'Seymour Lake', 'Reservoir', 'Vermont', 'VT', 'Orleans', 'Morgan Center', 44.8940284, -71.9878759, ST_GeomFromText('POINT(44.8940284 -71.9878759)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1459450', 'Seymour River', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Jeffersonville', 44.6467167, -72.8734636, ST_GeomFromText('POINT(44.6467167 -72.8734636)', 4326), 44.5422735, -72.8673475, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459451', 'Shad Island', 'Island', 'Vermont', 'VT', 'Franklin', 'East Alburg OE N', 45.0078186, -73.143184, ST_GeomFromText('POINT(45.0078186 -73.143184)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459452', 'Shadow Lake', 'Lake', 'Vermont', 'VT', 'Essex', 'Miles Pond', 44.4001888, -71.8714286, ST_GeomFromText('POINT(44.4001888 -71.8714286)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1459453', 'Shadow Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.4656554, -72.4131196, ST_GeomFromText('POINT(44.4656554 -72.4131196)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1459455', 'Shagback Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Killington Peak', 43.6184551, -72.7825832, ST_GeomFromText('POINT(43.6184551 -72.7825832)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1459456', 'Shaker Mountain', 'Summit', 'Vermont', 'VT', 'Addison', 'Hinesburg', 44.2584725, -73.0064673, ST_GeomFromText('POINT(44.2584725 -73.0064673)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459457', 'Shalney Branch', 'Stream', 'Vermont', 'VT', 'Orleans', 'Albany', 44.7214384, -72.3756629, ST_GeomFromText('POINT(44.7214384 -72.3756629)', 4326), 44.7494444, -72.4213889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459458', 'Shadow Lake', 'Reservoir', 'Vermont', 'VT', 'Orleans', 'Crystal Lake', 44.6680646, -72.2257782, ST_GeomFromText('POINT(44.6680646 -72.2257782)', 4326), NULL, NULL, '2002-08-27', '2019-11-21', NULL, NULL, NULL),
  ('1459461', 'Sharps Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Caspian Lake', 44.6246884, -72.3102959, ST_GeomFromText('POINT(44.6246884 -72.3102959)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459462', 'Shatluck Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Bernardston', 42.73346, -72.579877, ST_GeomFromText('POINT(42.73346 -72.579877)', 4326), 42.7426923, -72.5959413, '1980-10-29', '2021-03-29', NULL, NULL, NULL),
  ('1459463', 'Shatterack Mountain', 'Summit', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.2248646, -73.1974716, ST_GeomFromText('POINT(43.2248646 -73.1974716)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', 'Official', 'Board Decision', '1897-01-01'),
  ('1459464', 'Shattuck Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Newport', 44.9682491, -72.1571277, ST_GeomFromText('POINT(44.9682491 -72.1571277)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459465', 'Shattuck Mountain', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Bakersfield', 44.7567589, -72.7679866, ST_GeomFromText('POINT(44.7567589 -72.7679866)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1459466', 'Shaw Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Bethel', 43.8355914, -72.628728, ST_GeomFromText('POINT(43.8355914 -72.628728)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1459467', 'Shaw Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Benson', 43.6809816, -73.363853, ST_GeomFromText('POINT(43.6809816 -73.363853)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459468', 'Shaw Mountain', 'Summit', 'Vermont', 'VT', 'Washington', 'Roxbury', 44.10564, -72.6581833, ST_GeomFromText('POINT(44.10564 -72.6581833)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459469', 'Shaw Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Miles Pond', 44.4162392, -71.8730808, ST_GeomFromText('POINT(44.4162392 -71.8730808)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459471', 'Shedd Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Woodstock South', 43.5229816, -72.5838342, ST_GeomFromText('POINT(43.5229816 -72.5838342)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1459473', 'Sheddsville Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Cavendish', 43.4825622, -72.5059238, ST_GeomFromText('POINT(43.4825622 -72.5059238)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459475', 'Sheffield Heights', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Crystal Lake', 44.6624508, -72.1641019, ST_GeomFromText('POINT(44.6624508 -72.1641019)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459477', 'Shelburne Bay', 'Bay', 'Vermont', 'VT', 'Chittenden', 'Burlington', 44.428661, -73.2329046, ST_GeomFromText('POINT(44.428661 -73.2329046)', 4326), NULL, NULL, '1980-10-29', '2014-05-23', NULL, NULL, NULL),
  ('1459479', 'Shelburne Point', 'Cape', 'Vermont', 'VT', 'Chittenden', 'Juniper Island', 44.4419939, -73.2506829, ST_GeomFromText('POINT(44.4419939 -73.2506829)', 4326), NULL, NULL, '1980-10-29', '2014-05-23', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459480', 'Shelburne Pond', 'Lake', 'Vermont', 'VT', 'Chittenden', 'Burlington', 44.3869375, -73.1598517, ST_GeomFromText('POINT(44.3869375 -73.1598517)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1459482', 'Sheldon Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Burke Mountain', 44.5058896, -71.990373, ST_GeomFromText('POINT(44.5058896 -71.990373)', 4326), 44.5108333, -71.9372222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459484', 'Sheldon Hill', 'Summit', 'Vermont', 'VT', 'Franklin', 'Sheldon Springs', 44.8761441, -72.8872861, ST_GeomFromText('POINT(44.8761441 -72.8872861)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459487', 'Sheldrick Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Putnam', 43.6708886, -73.3915023, ST_GeomFromText('POINT(43.6708886 -73.3915023)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1459488', 'Shellhouse Mountain', 'Summit', 'Vermont', 'VT', 'Addison', 'Vergennes East', 44.2262719, -73.2167535, ST_GeomFromText('POINT(44.2262719 -73.2167535)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1459490', 'Shepherd Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.572293, -72.3800917, ST_GeomFromText('POINT(43.572293 -72.3800917)', 4326), 43.5816667, -72.4066667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459492', 'Sheridan Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Groveton', 44.5120013, -71.5853629, ST_GeomFromText('POINT(44.5120013 -71.5853629)', 4326), 44.5311673, -71.6275867, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459493', 'Sheridan Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Stone Mountain', 44.5305569, -71.6391693, ST_GeomFromText('POINT(44.5305569 -71.6391693)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459495', 'Shingle Hill', 'Summit', 'Vermont', 'VT', 'Franklin', 'Sheldon Springs OE N', 45.0061153, -72.8833348, ST_GeomFromText('POINT(45.0061153 -72.8833348)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459496', 'Ship Point', 'Island', 'Vermont', 'VT', 'Addison', 'Vergennes West', 44.1794978, -73.3620699, ST_GeomFromText('POINT(44.1794978 -73.3620699)', 4326), NULL, NULL, '1980-10-29', NULL, 'Official', 'Board Decision', '1979-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459498', 'Shonya Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Burke Mountain', 44.5295853, -71.9760765, ST_GeomFromText('POINT(44.5295853 -71.9760765)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459503', 'Shrewsbury Peak', 'Summit', 'Vermont', 'VT', 'Rutland', 'Killington Peak', 43.5781158, -72.805378, ST_GeomFromText('POINT(43.5781158 -72.805378)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1459504', 'Signal Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Bellows Falls', 43.1664847, -72.4915828, ST_GeomFromText('POINT(43.1664847 -72.4915828)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459505', 'Signal Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Sudbury', 43.7948236, -73.1844075, ST_GeomFromText('POINT(43.7948236 -73.1844075)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459506', 'Signal Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Knox Mountain', 44.2061466, -72.3253135, ST_GeomFromText('POINT(44.2061466 -72.3253135)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459507', 'Silsby Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Concord', 44.3828756, -71.9841926, ST_GeomFromText('POINT(44.3828756 -71.9841926)', 4326), NULL, NULL, '1980-10-29', '2022-09-02', NULL, NULL, NULL),
  ('1459508', 'Silver Lake', 'Lake', 'Vermont', 'VT', 'Windsor', 'Woodstock North', 43.7291631, -72.6108224, ST_GeomFromText('POINT(43.7291631 -72.6108224)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1459509', 'Silver Lake', 'Reservoir', 'Vermont', 'VT', 'Franklin', 'Milton', 44.7107407, -73.060657, ST_GeomFromText('POINT(44.7107407 -73.060657)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1459511', 'Silver Ledge', 'Bench', 'Vermont', 'VT', 'Caledonia', 'Marshfield', 44.2672825, -72.2870429, ST_GeomFromText('POINT(44.2672825 -72.2870429)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459513', 'Simms Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.7533761, -73.3065209, ST_GeomFromText('POINT(44.7533761 -73.3065209)', 4326), NULL, NULL, '1980-10-29', NULL, 'Official', 'Board Decision', '1967-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459514', 'Simonds Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Wells', 43.400596, -73.1922628, ST_GeomFromText('POINT(43.400596 -73.1922628)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459515', 'Simonds Reservoir', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Hanover', 43.6389769, -72.3550137, ST_GeomFromText('POINT(43.6389769 -72.3550137)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1459517', 'Simpson Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Burke Mountain', 44.5231115, -71.9564835, ST_GeomFromText('POINT(44.5231115 -71.9564835)', 4326), 44.5480556, -71.9105556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459518', 'Simpson Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Barnet', 44.3745034, -72.02565, ST_GeomFromText('POINT(44.3745034 -72.02565)', 4326), 44.3828369, -71.9778713, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459519', 'Simpson Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Crystal Lake', 44.6706191, -72.149508, ST_GeomFromText('POINT(44.6706191 -72.149508)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1459521', 'Single Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Wells', 43.4196996, -73.1832689, ST_GeomFromText('POINT(43.4196996 -73.1832689)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1459522', 'Sisco Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Enosburg Falls', 44.9969888, -72.8370795, ST_GeomFromText('POINT(44.9969888 -72.8370795)', 4326), 45.0083774, -72.8459679, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459523', 'Sisson Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Bridport', 43.8819953, -73.3292835, ST_GeomFromText('POINT(43.8819953 -73.3292835)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459524', 'Sister Islands', 'Island', 'Vermont', 'VT', 'Grand Isle', 'South Hero', 44.740876, -73.3445772, ST_GeomFromText('POINT(44.740876 -73.3445772)', 4326), NULL, NULL, '1980-10-29', '2014-05-23', NULL, NULL, NULL),
  ('1459527', 'Shippee Pond', 'Lake', 'Vermont', 'VT', 'Windham', 'Heath', 42.7464172, -72.8350242, ST_GeomFromText('POINT(42.7464172 -72.8350242)', 4326), NULL, NULL, '2002-08-27', '2018-02-18', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459528', 'Skitchewaug Mountain', 'Summit', 'Vermont', 'VT', 'Windsor', 'Springfield', 43.3065158, -72.4152, ST_GeomFromText('POINT(43.3065158 -72.4152)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459529', 'Skunk Hollow', 'Valley', 'Vermont', 'VT', 'Orleans', 'Craftsbury', 44.6363081, -72.2665914, ST_GeomFromText('POINT(44.6363081 -72.2665914)', 4326), 44.6506457, -72.2600331, '1980-10-29', '2016-11-19', NULL, NULL, NULL),
  ('1459530', 'Slack Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.5453387, -72.684263, ST_GeomFromText('POINT(43.5453387 -72.684263)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1459531', 'Slayton Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.4405672, -72.472961, ST_GeomFromText('POINT(44.4405672 -72.472961)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1459532', 'Sledge Length Ridge', 'Ridge', 'Vermont', 'VT', 'Rutland', 'Benson', 43.6625961, -73.2658189, ST_GeomFromText('POINT(43.6625961 -73.2658189)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459533', 'Sleeper Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'West Burke', 44.7183841, -71.9195397, ST_GeomFromText('POINT(44.7183841 -71.9195397)', 4326), 44.745, -71.9525, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459534', 'Sleepers River', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Saint Johnsbury', 44.4091667, -72.0158333, ST_GeomFromText('POINT(44.4091667 -72.0158333)', 4326), 44.4580556, -72.0955556, '1980-10-29', '2008-01-16', NULL, NULL, NULL),
  ('1459535', 'Sloop Island', 'Island', 'Vermont', 'VT', 'Chittenden', 'Charlotte', 44.3072738, -73.3076266, ST_GeomFromText('POINT(44.3072738 -73.3076266)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459537', 'Smith Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Randolph', 43.9122877, -72.6523259, ST_GeomFromText('POINT(43.9122877 -72.6523259)', 4326), 43.9113889, -72.7008333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459538', 'Smith Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Johnson', 44.6444949, -72.7187334, ST_GeomFromText('POINT(44.6444949 -72.7187334)', 4326), 44.6078288, -72.7548455, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459539', 'Smith Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Spectacle Pond', 44.7653275, -71.8067602, ST_GeomFromText('POINT(44.7653275 -71.8067602)', 4326), 44.7317171, -71.817038, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459541', 'Smith Peak', 'Summit', 'Vermont', 'VT', 'Rutland', 'Killington Peak', 43.5762957, -72.7836936, ST_GeomFromText('POINT(43.5762957 -72.7836936)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1459542', 'Smith Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Proctor', 43.7185893, -73.0614927, ST_GeomFromText('POINT(43.7185893 -73.0614927)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1459543', 'Smith Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.4295081, -72.4639075, ST_GeomFromText('POINT(44.4295081 -72.4639075)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1459544', 'Smith Pond', 'Reservoir', 'Vermont', 'VT', 'Orleans', 'Newport Center', 44.9167471, -72.2813305, ST_GeomFromText('POINT(44.9167471 -72.2813305)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1459550', 'Smugglers Notch', 'Gap', 'Vermont', 'VT', 'Lamoille', 'Mount Mansfield', 44.5553294, -72.795679, ST_GeomFromText('POINT(44.5553294 -72.795679)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459551', 'Snake Mountain', 'Summit', 'Vermont', 'VT', 'Addison', 'Snake Mountain', 44.0617606, -73.2804186, ST_GeomFromText('POINT(44.0617606 -73.2804186)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1459552', 'Snider Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Lowell', 44.8356031, -72.4348319, ST_GeomFromText('POINT(44.8356031 -72.4348319)', 4326), 44.8650469, -72.5095573, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459553', 'Snipe Island Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Richmond', 44.3903313, -72.9548449, ST_GeomFromText('POINT(44.3903313 -72.9548449)', 4326), 44.4344444, -72.9205556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459554', 'Snow Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Wells', 43.4139605, -73.1901076, ST_GeomFromText('POINT(43.4139605 -73.1901076)', 4326), 43.435, -73.1830556, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459555', 'Snow Hill', 'Summit', 'Vermont', 'VT', 'Essex', 'Bloomfield', 44.8058186, -71.6294326, ST_GeomFromText('POINT(44.8058186 -71.6294326)', 4326), NULL, NULL, '1980-10-29', '2024-10-02', NULL, NULL, NULL),
  ('1459556', 'Snowden Peak', 'Summit', 'Vermont', 'VT', 'Rutland', 'Killington Peak', 43.6161707, -72.8198236, ST_GeomFromText('POINT(43.6161707 -72.8198236)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1459557', 'Snows Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Randolph Center', 43.9720098, -72.5537132, ST_GeomFromText('POINT(43.9720098 -72.5537132)', 4326), 43.9969444, -72.6069444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459559', 'Sodom Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Plainfield', 44.3259159, -72.4999652, ST_GeomFromText('POINT(44.3259159 -72.4999652)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1459560', 'Sodom Pond Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Plainfield', 44.2708928, -72.4831612, ST_GeomFromText('POINT(44.2708928 -72.4831612)', 4326), 44.3225582, -72.4998296, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459561', 'Soltudus Mountain', 'Summit', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.5140412, -72.7145412, ST_GeomFromText('POINT(43.5140412 -72.7145412)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459566', 'South American Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Maidstone Lake', 44.7052473, -71.7445015, ST_GeomFromText('POINT(44.7052473 -71.7445015)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1459568', 'South Bay', 'Bay', 'Vermont', 'VT', 'Orleans', 'Newport', 44.9183803, -72.2089911, ST_GeomFromText('POINT(44.9183803 -72.2089911)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459572', 'South Branch Trout River', 'Stream', 'Vermont', 'VT', 'Orleans', 'Jay Peak', 44.8778536, -72.6115558, ST_GeomFromText('POINT(44.8778536 -72.6115558)', 4326), 44.8132734, -72.6224315, '1980-10-29', '2019-11-12', NULL, NULL, NULL),
  ('1459573', 'South Branch Waits River', 'Stream', 'Vermont', 'VT', 'Orange', 'East Corinth', 44.0317326, -72.1962041, ST_GeomFromText('POINT(44.0317326 -72.1962041)', 4326), 44.0125663, -72.2603722, '1980-10-29', NULL, 'Official', 'Board Decision', '1980-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459574', 'South Branch Wells River', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Groton', 44.2197839, -72.2203736, ST_GeomFromText('POINT(44.2197839 -72.2203736)', 4326), 44.220339, -72.3434331, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459575', 'South Branch Williams River', 'Stream', 'Vermont', 'VT', 'Windsor', 'Chester', 43.2584084, -72.5837027, ST_GeomFromText('POINT(43.2584084 -72.5837027)', 4326), 43.2106314, -72.7145395, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459576', 'South Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Wells', 43.4809033, -73.1328847, ST_GeomFromText('POINT(43.4809033 -73.1328847)', 4326), 43.4409043, -73.1114953, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459584', 'South Fork East Creek', 'Stream', 'Vermont', 'VT', 'Addison', 'Orwell', 43.7995058, -73.3109494, ST_GeomFromText('POINT(43.7995058 -73.3109494)', 4326), 43.7513889, -73.3272222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459585', 'South Fork Madden Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Killington Peak', 43.5878467, -72.7792676, ST_GeomFromText('POINT(43.5878467 -72.7792676)', 4326), 43.5919444, -72.8061111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459590', 'South Hero Island', 'Island', 'Vermont', 'VT', 'Grand Isle', 'South Hero', 44.6861552, -73.3204096, ST_GeomFromText('POINT(44.6861552 -73.3204096)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459591', 'South Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Underhill', 44.5035341, -72.9243824, ST_GeomFromText('POINT(44.5035341 -72.9243824)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459597', 'South Maid Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Stannard', 44.5794758, -72.1980534, ST_GeomFromText('POINT(44.5794758 -72.1980534)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459603', 'South Peacham Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Barnet', 44.3131156, -72.1056508, ST_GeomFromText('POINT(44.3131156 -72.1056508)', 4326), 44.326448, -72.2067643, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459605', 'South Pond', 'Lake', 'Vermont', 'VT', 'Windham', 'Governors Mountain', 42.8440303, -72.7129829, ST_GeomFromText('POINT(42.8440303 -72.7129829)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459606', 'South Pond', 'Lake', 'Vermont', 'VT', 'Orange', 'Brookfield', 44.0407185, -72.6215471, ST_GeomFromText('POINT(44.0407185 -72.6215471)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1459607', 'South Pond', 'Reservoir', 'Vermont', 'VT', 'Lamoille', 'Eden', 44.6881982, -72.527103, ST_GeomFromText('POINT(44.6881982 -72.527103)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1459615', 'South Slang Creek', 'Stream', 'Vermont', 'VT', 'Addison', 'Vergennes West', 44.2322755, -73.2751243, ST_GeomFromText('POINT(44.2322755 -73.2751243)', 4326), 44.1761111, -73.2719444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459619', 'South Wheelock Branch', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Lyndonville', 44.519778, -72.0053735, ST_GeomFromText('POINT(44.519778 -72.0053735)', 4326), 44.5600537, -72.1667673, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459629', 'Southgate Mountain', 'Summit', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.6139156, -72.64006, ST_GeomFromText('POINT(43.6139156 -72.64006)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1459630', 'Spaulding Bay', 'Bay', 'Vermont', 'VT', 'Addison', 'Vergennes West', 44.1314432, -73.3701247, ST_GeomFromText('POINT(44.1314432 -73.3701247)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459631', 'Spaulding Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Concord', 44.4233914, -71.9798163, ST_GeomFromText('POINT(44.4233914 -71.9798163)', 4326), 44.4497222, -71.9713889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459632', 'Spaulding Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Averill', 44.9000476, -71.6875914, ST_GeomFromText('POINT(44.9000476 -71.6875914)', 4326), 44.9188889, -71.6563889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459633', 'Spaulding Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Poultney', 43.5231958, -73.1338676, ST_GeomFromText('POINT(43.5231958 -73.1338676)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459634', 'Spaulding Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Fairlee', 43.9517097, -72.1932546, ST_GeomFromText('POINT(43.9517097 -72.1932546)', 4326), NULL, NULL, '1980-10-29', '2022-09-02', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459635', 'Spectacle Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Spectacle Pond', 44.8001492, -71.8506123, ST_GeomFromText('POINT(44.8001492 -71.8506123)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1459636', 'Spencer Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Springfield', 43.2620197, -72.4264775, ST_GeomFromText('POINT(43.2620197 -72.4264775)', 4326), 43.3408333, -72.4505556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459637', 'Spencer Hill', 'Summit', 'Vermont', 'VT', 'Essex', 'Bloomfield', 44.7742686, -71.6303837, ST_GeomFromText('POINT(44.7742686 -71.6303837)', 4326), NULL, NULL, '1980-10-29', '2024-10-04', NULL, NULL, NULL),
  ('1459638', 'Sperry Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Jacksonville', 42.7661938, -72.7639832, ST_GeomFromText('POINT(42.7661938 -72.7639832)', 4326), 42.7844444, -72.7508333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459639', 'Spice Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Marshfield', 44.299619, -72.3056758, ST_GeomFromText('POINT(44.299619 -72.3056758)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459640', 'Spicer Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Marshfield', 44.2658934, -72.3578788, ST_GeomFromText('POINT(44.2658934 -72.3578788)', 4326), 44.2766667, -72.3402778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459641', 'Spoon Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Middletown Springs', 43.4708014, -73.0816035, ST_GeomFromText('POINT(43.4708014 -73.0816035)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459642', 'Spooner Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Sudbury', 43.8092981, -73.1625477, ST_GeomFromText('POINT(43.8092981 -73.1625477)', 4326), NULL, NULL, '1980-10-29', '2022-09-02', NULL, NULL, NULL),
  ('1459644', 'Sprague Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Jacksonville', 42.7834157, -72.811207, ST_GeomFromText('POINT(42.7834157 -72.811207)', 4326), 42.7761111, -72.8527778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459645', 'Sprague Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hanover', 43.6920057, -72.3525909, ST_GeomFromText('POINT(43.6920057 -72.3525909)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459647', 'Spring Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Windham', 43.183894, -72.6389638, ST_GeomFromText('POINT(43.183894 -72.6389638)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459649', 'Springfield Reservoir', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Springfield', 43.3521965, -72.4882256, ST_GeomFromText('POINT(43.3521965 -72.4882256)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1459651', 'Spruce Knob', 'Summit', 'Vermont', 'VT', 'Rutland', 'West Rutland', 43.5383488, -73.1241645, ST_GeomFromText('POINT(43.5383488 -73.1241645)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459652', 'Spruce Knoll', 'Summit', 'Vermont', 'VT', 'Rutland', 'Killington Peak', 43.6098193, -72.754444, ST_GeomFromText('POINT(43.6098193 -72.754444)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1459653', 'Spruce Mountain', 'Summit', 'Vermont', 'VT', 'Washington', 'Knox Mountain', 44.2346192, -72.3550801, ST_GeomFromText('POINT(44.2346192 -72.3550801)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459654', 'Spruce Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Stone Mountain', 44.5989394, -71.6972498, ST_GeomFromText('POINT(44.5989394 -71.6972498)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459655', 'Spruce Peak', 'Summit', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.2397266, -73.1411096, ST_GeomFromText('POINT(43.2397266 -73.1411096)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1459656', 'Spruce Peak', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Mount Mansfield', 44.5509219, -72.7831783, ST_GeomFromText('POINT(44.5509219 -72.7831783)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459657', 'Spruce Pond', 'Lake', 'Vermont', 'VT', 'Addison', 'Orwell', 43.7629236, -73.2778905, ST_GeomFromText('POINT(43.7629236 -73.2778905)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL),
  ('1459658', 'Spruce Top', 'Summit', 'Vermont', 'VT', 'Rutland', 'Pawlet', 43.3231332, -73.1871298, ST_GeomFromText('POINT(43.3231332 -73.1871298)', 4326), NULL, NULL, '1980-10-29', '2018-11-14', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459659', 'Squabble Hollow', 'Valley', 'Vermont', 'VT', 'Caledonia', 'Lyndonville', 44.5647762, -72.0391828, ST_GeomFromText('POINT(44.5647762 -72.0391828)', 4326), 44.5881589, -72.0429407, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1459661', 'Square Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Lyndonville', 44.612275, -72.1198218, ST_GeomFromText('POINT(44.612275 -72.1198218)', 4326), 44.62033, -72.1781567, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459662', 'Squires Bay', 'Bay', 'Vermont', 'VT', 'Grand Isle', 'Rouses Point', 44.8972635, -73.2620748, ST_GeomFromText('POINT(44.8972635 -73.2620748)', 4326), NULL, NULL, '1980-10-29', NULL, 'Official', 'Board Decision', '1967-01-01'),
  ('1459663', 'Stacy Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Orwell', 43.758951, -73.3148375, ST_GeomFromText('POINT(43.758951 -73.3148375)', 4326), 43.7691667, -73.2869444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459664', 'Standing Pond', 'Lake', 'Vermont', 'VT', 'Windsor', 'Sharon', 43.8174483, -72.4255859, ST_GeomFromText('POINT(43.8174483 -72.4255859)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1459665', 'Stanhope Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Jay Peak', 44.9967119, -72.6148475, ST_GeomFromText('POINT(44.9967119 -72.6148475)', 4326), 44.9555556, -72.5422222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459666', 'Stanhope Hill', 'Summit', 'Vermont', 'VT', 'Grand Isle', 'Rouses Point', 44.9013595, -73.3440428, ST_GeomFromText('POINT(44.9013595 -73.3440428)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459667', 'Stanley Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Gallup Mills', 44.5000567, -71.8523145, ST_GeomFromText('POINT(44.5000567 -71.8523145)', 4326), 44.5194444, -71.8669444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459668', 'Stanley Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Caspian Lake', 44.5742194, -72.2895488, ST_GeomFromText('POINT(44.5742194 -72.2895488)', 4326), 44.6041667, -72.2858333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459670', 'Stannard Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Caspian Lake', 44.5417201, -72.2681591, ST_GeomFromText('POINT(44.5417201 -72.2681591)', 4326), 44.5489428, -72.1751009, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459671', 'Stannard Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Stannard', 44.5282513, -72.1915553, ST_GeomFromText('POINT(44.5282513 -72.1915553)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459672', 'Stannard Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Stannard', 44.5292661, -72.166556, ST_GeomFromText('POINT(44.5292661 -72.166556)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1459675', 'Staples Pond', 'Lake', 'Vermont', 'VT', 'Orange', 'Brookfield', 44.0856807, -72.562687, ST_GeomFromText('POINT(44.0856807 -72.562687)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1459676', 'Star Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Cavendish', 43.4313611, -72.5787257, ST_GeomFromText('POINT(43.4313611 -72.5787257)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1459678', 'Starbird Ridge', 'Ridge', 'Vermont', 'VT', 'Chittenden', 'Richmond', 44.4777127, -72.8839411, ST_GeomFromText('POINT(44.4777127 -72.8839411)', 4326), NULL, NULL, '1980-10-29', '2023-07-21', NULL, NULL, NULL),
  ('1459679', 'Stark Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Saint Johnsbury', 44.4611682, -72.0162066, ST_GeomFromText('POINT(44.4611682 -72.0162066)', 4326), 44.5031117, -72.0289852, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459683', 'Starr Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Seneca Mountain', 44.6803785, -71.8292793, ST_GeomFromText('POINT(44.6803785 -71.8292793)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459686', 'Station Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Norton Pond', 44.9544913, -71.846484, ST_GeomFromText('POINT(44.9544913 -71.846484)', 4326), 44.9252778, -71.7969444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459687', 'Stave Island', 'Island', 'Vermont', 'VT', 'Grand Isle', 'Colchester Point', 44.5925461, -73.3387427, ST_GeomFromText('POINT(44.5925461 -73.3387427)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459689', 'Steadman Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Andover', 43.3073342, -72.6707777, ST_GeomFromText('POINT(43.3073342 -72.6707777)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', 'Official', 'Board Decision', '1974-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459690', 'Stearns Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'West Charleston OE N', 45.0278237, -72.0134306, ST_GeomFromText('POINT(45.0278237 -72.0134306)', 4326), 44.9444915, -71.9778743, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1459691', 'Steele Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Highgate Center', 44.9603209, -73.003463, ST_GeomFromText('POINT(44.9603209 -73.003463)', 4326), 44.9413889, -73.0091667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459692', 'Stephenson Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'East Alburg', 44.9208745, -73.2392966, ST_GeomFromText('POINT(44.9208745 -73.2392966)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459693', 'Sterling Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Stowe', 44.488109, -72.6623393, ST_GeomFromText('POINT(44.488109 -72.6623393)', 4326), 44.5539408, -72.7415104, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459695', 'Sterling Pond', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Mount Mansfield', 44.5560828, -72.7744275, ST_GeomFromText('POINT(44.5560828 -72.7744275)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1459696', 'Sterling Range', 'Range', 'Vermont', 'VT', 'Lamoille', 'Sterling Mountain', 44.5821222, -72.7399628, ST_GeomFromText('POINT(44.5821222 -72.7399628)', 4326), NULL, NULL, '1980-10-29', '2024-10-03', NULL, NULL, NULL),
  ('1459698', 'Stevens Bay', 'Bay', 'Vermont', 'VT', 'Addison', 'Orwell', 43.7753394, -73.3453941, ST_GeomFromText('POINT(43.7753394 -73.3453941)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459699', 'Stevens Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Caspian Lake', 44.5389424, -72.269548, ST_GeomFromText('POINT(44.5389424 -72.269548)', 4326), 44.50811, -72.2248244, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459700', 'Stevens Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Crystal Lake', 44.7194941, -72.2384366, ST_GeomFromText('POINT(44.7194941 -72.2384366)', 4326), 44.7056055, -72.2739931, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459701', 'Stevens Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Saint Albans Bay', 44.8164333, -73.1456898, ST_GeomFromText('POINT(44.8164333 -73.1456898)', 4326), 44.8042131, -73.0581937, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459703', 'Stevens Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Groveton', 44.5981821, -71.5707998, ST_GeomFromText('POINT(44.5981821 -71.5707998)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1459704', 'Stevens River', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Barnet', 44.2908941, -72.0528716, ST_GeomFromText('POINT(44.2908941 -72.0528716)', 4326), 44.3297222, -72.1038889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459706', 'Stevenson Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Bolton Mountain', 44.3917219, -72.760119, ST_GeomFromText('POINT(44.3917219 -72.760119)', 4326), 44.4130556, -72.8227778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459708', 'Stevensville Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Underhill', 44.5117182, -72.8840132, ST_GeomFromText('POINT(44.5117182 -72.8840132)', 4326), 44.5158852, -72.8251231, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459709', 'Stewart Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Underhill', 44.5719857, -72.9741253, ST_GeomFromText('POINT(44.5719857 -72.9741253)', 4326), NULL, NULL, '1980-10-29', '2022-09-05', NULL, NULL, NULL),
  ('1459710', 'Stickney Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Putney', 42.9156368, -72.6142581, ST_GeomFromText('POINT(42.9156368 -72.6142581)', 4326), 42.9181366, -72.6770373, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459711', 'Stickney Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Jacksonville', 42.7797959, -72.8120391, ST_GeomFromText('POINT(42.7797959 -72.8120391)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459713', 'Stiles Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Concord', 44.4295025, -71.9642605, ST_GeomFromText('POINT(44.4295025 -71.9642605)', 4326), 44.4216667, -71.9472222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459715', 'Stiles Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Sudbury', 43.7598225, -73.144362, ST_GeomFromText('POINT(43.7598225 -73.144362)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459716', 'Stiles Pond', 'Reservoir', 'Vermont', 'VT', 'Caledonia', 'Concord', 44.4162394, -71.9396441, ST_GeomFromText('POINT(44.4162394 -71.9396441)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459717', 'Still Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Plainfield', 44.3311693, -72.440661, ST_GeomFromText('POINT(44.3311693 -72.440661)', 4326), 44.3386111, -72.4166667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459718', 'Still Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Crystal Lake', 44.7047376, -72.2146763, ST_GeomFromText('POINT(44.7047376 -72.2146763)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459719', 'Stillwater Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Marshfield', 44.2806156, -72.2709316, ST_GeomFromText('POINT(44.2806156 -72.2709316)', 4326), 44.2955556, -72.3083333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459720', 'Stillwater Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Island Pond', 44.8396839, -71.9303497, ST_GeomFromText('POINT(44.8396839 -71.9303497)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1459721', 'Stillwater Swamp', 'Swamp', 'Vermont', 'VT', 'Orleans', 'Westmore', 44.7747714, -72.1164889, ST_GeomFromText('POINT(44.7747714 -72.1164889)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459723', 'Stimson Mountain', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Richmond', 44.3915412, -72.8898424, ST_GeomFromText('POINT(44.3915412 -72.8898424)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1459724', 'Stockbridge Gap', 'Gap', 'Vermont', 'VT', 'Windsor', 'Bethel', 43.810344, -72.7253813, ST_GeomFromText('POINT(43.810344 -72.7253813)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459725', 'Stockwell Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Concord', 44.4308915, -71.9037037, ST_GeomFromText('POINT(44.4308915 -71.9037037)', 4326), 44.4113889, -71.9016667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459726', 'Stoddard Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Bethel', 43.8159001, -72.6378789, ST_GeomFromText('POINT(43.8159001 -72.6378789)', 4326), 43.83, -72.6722222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459727', 'Stone Bridge Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Georgia Plains', 44.6750456, -73.2090205, ST_GeomFromText('POINT(44.6750456 -73.2090205)', 4326), 44.6947222, -73.1255556, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459729', 'Stone Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'South Strafford', 43.7719376, -72.3580782, ST_GeomFromText('POINT(43.7719376 -72.3580782)', 4326), NULL, NULL, '1980-10-29', '2023-07-21', NULL, NULL, NULL),
  ('1459730', 'Stone Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Stone Mountain', 44.5607114, -71.6657525, ST_GeomFromText('POINT(44.5607114 -71.6657525)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459731', 'Stoneham Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Stratford', 44.6467866, -71.6223553, ST_GeomFromText('POINT(44.6467866 -71.6223553)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459732', 'Stones Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Gilson Mountain', 44.6589385, -72.9890259, ST_GeomFromText('POINT(44.6589385 -72.9890259)', 4326), 44.7241667, -72.8955556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459733', 'Stony Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Eden', 44.6928276, -72.58206, ST_GeomFromText('POINT(44.6928276 -72.58206)', 4326), 44.7311111, -72.6216667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459734', 'Stony Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Bethel', 43.7667335, -72.7126023, ST_GeomFromText('POINT(43.7667335 -72.7126023)', 4326), 43.671179, -72.7409347, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459735', 'Stony Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Roxbury', 44.117284, -72.6787208, ST_GeomFromText('POINT(44.117284 -72.6787208)', 4326), 44.1758935, -72.7467804, '1980-10-29', NULL, 'Official', 'Board Decision', '1960-01-01'),
  ('1459736', 'Stony Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Stone Mountain', 44.6239423, -71.7042566, ST_GeomFromText('POINT(44.6239423 -71.7042566)', 4326), 44.6572747, -71.767592, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459737', 'Stony Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Irasburg', 44.8708807, -72.2681596, ST_GeomFromText('POINT(44.8708807 -72.2681596)', 4326), 44.8819916, -72.2867713, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459738', 'Stony Cove', 'Bay', 'Vermont', 'VT', 'Addison', 'Crown Point', 43.9025589, -73.3820644, ST_GeomFromText('POINT(43.9025589 -73.3820644)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459739', 'Stony Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Sudbury', 43.8164117, -73.1690632, ST_GeomFromText('POINT(43.8164117 -73.1690632)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459740', 'Stony Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Irasburg', 44.8127593, -72.3137218, ST_GeomFromText('POINT(44.8127593 -72.3137218)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459741', 'Stony Point', 'Cape', 'Vermont', 'VT', 'Rutland', 'Benson', 43.7436733, -73.3662272, ST_GeomFromText('POINT(43.7436733 -73.3662272)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459742', 'Stony Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'East Alburg', 44.920319, -73.2434632, ST_GeomFromText('POINT(44.920319 -73.2434632)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459744', 'Stoughton Pond', 'Lake', 'Vermont', 'VT', 'Windsor', 'Windsor', 43.3800994, -72.4998243, ST_GeomFromText('POINT(43.3800994 -72.4998243)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1459746', 'Stowe Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Colrain', 42.7448052, -72.738427, ST_GeomFromText('POINT(42.7448052 -72.738427)', 4326), 42.75, -72.7408333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459748', 'Stowe Hollow', 'Valley', 'Vermont', 'VT', 'Lamoille', 'Stowe', 44.4399177, -72.6787214, ST_GeomFromText('POINT(44.4399177 -72.6787214)', 4326), 44.4627748, -72.6631119, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1459749', 'Stowe Mountain', 'Summit', 'Vermont', 'VT', 'Windham', 'Governors Mountain', 42.7528876, -72.7446015, ST_GeomFromText('POINT(42.7528876 -72.7446015)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1459750', 'Stowe Pinnacle', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Stowe', 44.4297681, -72.6501143, ST_GeomFromText('POINT(44.4297681 -72.6501143)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1459752', 'Strawberry Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Hazens Notch', 44.8465021, -72.5101088, ST_GeomFromText('POINT(44.8465021 -72.5101088)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459753', 'Stream Mill Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Joes Pond', 44.5000549, -72.1823231, ST_GeomFromText('POINT(44.5000549 -72.1823231)', 4326), 44.5294988, -72.1678783, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459754', 'Streeter Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Georgia Plains', 44.6450472, -73.1451328, ST_GeomFromText('POINT(44.6450472 -73.1451328)', 4326), 44.6697222, -73.1783333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459755', 'Streeter Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Johnson', 44.7419932, -72.7440144, ST_GeomFromText('POINT(44.7419932 -72.7440144)', 4326), 44.7875482, -72.7334603, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459756', 'Strong Swamp', 'Lake', 'Vermont', 'VT', 'Rutland', 'Benson', 43.710327, -73.3231671, ST_GeomFromText('POINT(43.710327 -73.3231671)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL),
  ('1459757', 'Stuart Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Lyndonville', 44.5059173, -72.0141122, ST_GeomFromText('POINT(44.5059173 -72.0141122)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1459758', 'Stumpf Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Westmore', 44.8622704, -72.0450981, ST_GeomFromText('POINT(44.8622704 -72.0450981)', 4326), 44.8981034, -72.025653, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459759', 'Sucker Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.6611766, -73.1917776, ST_GeomFromText('POINT(43.6611766 -73.1917776)', 4326), 43.7116667, -73.1316667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459760', 'Sucker Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Marshfield', 44.3242256, -72.2542653, ST_GeomFromText('POINT(44.3242256 -72.2542653)', 4326), 44.3172222, -72.2538889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459761', 'Sucker Brook', 'Stream', 'Vermont', 'VT', 'Grand Isle', 'Rouses Point', 44.9030964, -73.3054093, ST_GeomFromText('POINT(44.9030964 -73.3054093)', 4326), 44.9391667, -73.2852778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459762', 'Sucker Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Morgan Center', 44.9108809, -71.982041, ST_GeomFromText('POINT(44.9108809 -71.982041)', 4326), 44.915, -71.9305556, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459763', 'Sucker Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Norton Pond', 44.9392139, -71.8562063, ST_GeomFromText('POINT(44.9392139 -71.8562063)', 4326), 44.9208333, -71.8352778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459764', 'Sucker Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Burlington', 44.4156066, -73.144848, ST_GeomFromText('POINT(44.4156066 -73.144848)', 4326), 44.4119959, -73.1017918, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459765', 'Sucker Creek', 'Stream', 'Vermont', 'VT', 'Rutland', 'Benson', 43.6445098, -73.2670563, ST_GeomFromText('POINT(43.6445098 -73.2670563)', 4326), 43.6683333, -73.2708333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459767', 'Sugar Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Concord', 44.4880421, -71.9443422, ST_GeomFromText('POINT(44.4880421 -71.9443422)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1459768', 'Sugar Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Burke Mountain', 44.5094481, -71.9308429, ST_GeomFromText('POINT(44.5094481 -71.9308429)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1459769', 'Sugar Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'West Burke', 44.6784982, -71.8901161, ST_GeomFromText('POINT(44.6784982 -71.8901161)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459770', 'Sugar Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Newport', 44.8978203, -72.1359993, ST_GeomFromText('POINT(44.8978203 -72.1359993)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459771', 'Sugarloaf', 'Summit', 'Vermont', 'VT', 'Windham', 'Windham', 43.2060413, -72.6615097, ST_GeomFromText('POINT(43.2060413 -72.6615097)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459772', 'Sugarloaf', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Bolton Mountain', 44.4849646, -72.8334996, ST_GeomFromText('POINT(44.4849646 -72.8334996)', 4326), NULL, NULL, '1980-10-29', '2022-09-08', NULL, NULL, NULL),
  ('1459773', 'Sugarloaf Mountain', 'Summit', 'Vermont', 'VT', 'Orleans', 'Hazens Notch', 44.844087, -72.5211162, ST_GeomFromText('POINT(44.844087 -72.5211162)', 4326), NULL, NULL, '1980-10-29', '2023-07-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459774', 'Suitor Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Stone Mountain', 44.5428336, -71.7453681, ST_GeomFromText('POINT(44.5428336 -71.7453681)', 4326), 44.5441667, -71.7025, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459775', 'Sukes Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Island Pond', 44.7545749, -71.8969437, ST_GeomFromText('POINT(44.7545749 -71.8969437)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1459776', 'Summer Point', 'Cape', 'Vermont', 'VT', 'Addison', 'Vergennes West', 44.2192196, -73.3331811, ST_GeomFromText('POINT(44.2192196 -73.3331811)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459779', 'Sunderland Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Colchester', 44.5000494, -73.129294, ST_GeomFromText('POINT(44.5000494 -73.129294)', 4326), 44.5005556, -73.1252778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459780', 'Sunken Island', 'Island', 'Vermont', 'VT', 'Washington', 'Joes Pond', 44.4108902, -72.2198221, ST_GeomFromText('POINT(44.4108902 -72.2198221)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459782', 'Sunny Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Roxbury', 44.1242285, -72.6656649, ST_GeomFromText('POINT(44.1242285 -72.6656649)', 4326), 44.0558968, -72.6203838, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459783', 'Sunny Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Middlesex', 44.2675588, -72.6298338, ST_GeomFromText('POINT(44.2675588 -72.6298338)', 4326), 44.2981137, -72.6203895, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459784', 'Sunrise Lake', 'Reservoir', 'Vermont', 'VT', 'Rutland', 'Orwell', 43.7603046, -73.2604165, ST_GeomFromText('POINT(43.7603046 -73.2604165)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL),
  ('1459785', 'Sunset Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Brookfield', 44.0295088, -72.5689926, ST_GeomFromText('POINT(44.0295088 -72.5689926)', 4326), 44.0752778, -72.5988889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459786', 'Sunset Hill', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Stowe', 44.4662326, -72.6725323, ST_GeomFromText('POINT(44.4662326 -72.6725323)', 4326), NULL, NULL, '1980-10-29', '2022-09-08', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459787', 'Sunset Island', 'Island', 'Vermont', 'VT', 'Chittenden', 'Colchester Point', 44.5653246, -73.3231865, ST_GeomFromText('POINT(44.5653246 -73.3231865)', 4326), NULL, NULL, '1980-10-29', NULL, 'Official', 'Board Decision', '1904-01-01'),
  ('1459788', 'Sunset Lake', 'Reservoir', 'Vermont', 'VT', 'Windham', 'Newfane', 42.9182625, -72.6837554, ST_GeomFromText('POINT(42.9182625 -72.6837554)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1459789', 'Sunset Lake', 'Reservoir', 'Vermont', 'VT', 'Orange', 'Brookfield', 44.0420006, -72.6050531, ST_GeomFromText('POINT(44.0420006 -72.6050531)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1459790', 'Sunset Lake', 'Lake', 'Vermont', 'VT', 'Rutland', 'Orwell', 43.7558819, -73.2702236, ST_GeomFromText('POINT(43.7558819 -73.2702236)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL),
  ('1459793', 'Sutton Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Barnet', 44.3172825, -72.0331494, ST_GeomFromText('POINT(44.3172825 -72.0331494)', 4326), 44.3386111, -72.1083333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459794', 'Sutton Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Norton Pond', 44.9575469, -71.8403728, ST_GeomFromText('POINT(44.9575469 -71.8403728)', 4326), 44.9814354, -71.8792622, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459795', 'Sutton River', 'Stream', 'Vermont', 'VT', 'Caledonia', 'West Burke', 44.6417195, -71.9795403, ST_GeomFromText('POINT(44.6417195 -71.9795403)', 4326), 44.7111619, -72.0562094, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459799', 'Swamp Pond', 'Lake', 'Vermont', 'VT', 'Addison', 'Sudbury', 43.8542418, -73.1480073, ST_GeomFromText('POINT(43.8542418 -73.1480073)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1459803', 'Swearing Hill', 'Summit', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.1386541, -73.2235602, ST_GeomFromText('POINT(43.1386541 -73.2235602)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1459804', 'Sweeney Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Craftsbury', 44.6953045, -72.2767253, ST_GeomFromText('POINT(44.6953045 -72.2767253)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459805', 'Sweet Pond', 'Lake', 'Vermont', 'VT', 'Windham', 'Governors Mountain', 42.7540531, -72.6345035, ST_GeomFromText('POINT(42.7540531 -72.6345035)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1459806', 'Swift Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Milton', 44.6750487, -73.0409707, ST_GeomFromText('POINT(44.6750487 -73.0409707)', 4326), 44.7055556, -73.0238889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459807', 'Taber Hill', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Stowe', 44.4572673, -72.6748379, ST_GeomFromText('POINT(44.4572673 -72.6748379)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459808', 'Tabor Branch', 'Stream', 'Vermont', 'VT', 'Orange', 'East Corinth', 44.0567321, -72.221205, ST_GeomFromText('POINT(44.0567321 -72.221205)', 4326), 44.1742292, -72.2737079, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459810', 'Tabor Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.3873587, -72.4787796, ST_GeomFromText('POINT(44.3873587 -72.4787796)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1459812', 'Tadmer Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Wells', 43.3983469, -73.1386962, ST_GeomFromText('POINT(43.3983469 -73.1386962)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1459813', 'Taft Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'North Troy', 44.8875468, -72.4134425, ST_GeomFromText('POINT(44.8875468 -72.4134425)', 4326), 44.8853244, -72.5045571, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459817', 'Talbot Hollow', 'Valley', 'Vermont', 'VT', 'Chittenden', 'Richmond', 44.4764972, -72.9031572, ST_GeomFromText('POINT(44.4764972 -72.9031572)', 4326), 44.4725986, -72.8752075, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1459818', 'Tamarack Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Lowell', 44.8494918, -72.3976085, ST_GeomFromText('POINT(44.8494918 -72.3976085)', 4326), 44.8500475, -72.3326063, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459819', 'Tamarack Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Hazens Notch', 44.8519917, -72.6134542, ST_GeomFromText('POINT(44.8519917 -72.6134542)', 4326), 44.8106035, -72.6378991, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459821', 'Tannery Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Groton', 44.2078398, -72.1900951, ST_GeomFromText('POINT(44.2078398 -72.1900951)', 4326), 44.2567277, -72.1714843, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459822', 'Taplin Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'East Corinth', 44.0398103, -72.2468672, ST_GeomFromText('POINT(44.0398103 -72.2468672)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459823', 'Tara Island', 'Island', 'Vermont', 'VT', 'Washington', 'Joes Pond', 44.4192234, -72.223989, ST_GeomFromText('POINT(44.4192234 -72.223989)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459824', 'Tate Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Caspian Lake', 44.5948903, -72.3164101, ST_GeomFromText('POINT(44.5948903 -72.3164101)', 4326), 44.6040001, -72.3237961, '1980-10-29', '2019-11-12', NULL, NULL, NULL),
  ('1459825', 'Tate Mountain', 'Summit', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.1504085, -73.2457656, ST_GeomFromText('POINT(43.1504085 -73.2457656)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1459827', 'Taylor Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Stratford', 44.6600522, -71.5867535, ST_GeomFromText('POINT(44.6600522 -71.5867535)', 4326), 44.665, -71.6138889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459828', 'Taylor Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Jeffersonville', 44.6914385, -72.7706816, ST_GeomFromText('POINT(44.6914385 -72.7706816)', 4326), 44.7283333, -72.7786111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459829', 'Taylor Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Island Pond', 44.7711608, -71.902873, ST_GeomFromText('POINT(44.7711608 -71.902873)', 4326), 44.7722222, -71.8908333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459831', 'Taylor Swamp', 'Swamp', 'Vermont', 'VT', 'Orleans', 'Caspian Lake', 44.6028299, -72.2706594, ST_GeomFromText('POINT(44.6028299 -72.2706594)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459832', 'Teago Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Woodstock North', 43.6633004, -72.5314388, ST_GeomFromText('POINT(43.6633004 -72.5314388)', 4326), NULL, NULL, '1980-10-29', '2018-09-14', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459833', 'Tebbetts Notch', 'Gap', 'Vermont', 'VT', 'Orange', 'Fairlee', 43.9786781, -72.2025924, ST_GeomFromText('POINT(43.9786781 -72.2025924)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459835', 'Telephone Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Maidstone Lake', 44.7408832, -71.6823127, ST_GeomFromText('POINT(44.7408832 -71.6823127)', 4326), 44.7233333, -71.7, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459836', 'Temple Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Stone Mountain', 44.5112965, -71.7432711, ST_GeomFromText('POINT(44.5112965 -71.7432711)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459837', 'Terrill Gorge', 'Valley', 'Vermont', 'VT', 'Lamoille', 'Morrisville', 44.5710412, -72.6203187, ST_GeomFromText('POINT(44.5710412 -72.6203187)', 4326), 44.5604947, -72.6271319, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1459838', 'Terrill Hill', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Sterling Mountain', 44.5861888, -72.6357598, ST_GeomFromText('POINT(44.5861888 -72.6357598)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459839', 'Texas Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Hinesburg', 44.3537798, -73.0552722, ST_GeomFromText('POINT(44.3537798 -73.0552722)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459840', 'Thatcher Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Middlesex', 44.345612, -72.7445621, ST_GeomFromText('POINT(44.345612 -72.7445621)', 4326), 44.4211662, -72.6448373, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459841', 'Thayer Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Randolph', 43.9275652, -72.6762159, ST_GeomFromText('POINT(43.9275652 -72.6762159)', 4326), 43.9155556, -72.7425, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459842', 'The Alps', 'Summit', 'Vermont', 'VT', 'Windsor', 'Ludlow', 43.4753268, -72.6382355, ST_GeomFromText('POINT(43.4753268 -72.6382355)', 4326), NULL, NULL, '1980-10-29', '2023-07-21', NULL, NULL, NULL),
  ('1459844', 'The Big Ridge', 'Ridge', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.2107691, -73.2255714, ST_GeomFromText('POINT(43.2107691 -73.2255714)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459845', 'The Branch', 'Stream', 'Vermont', 'VT', 'Franklin', 'Bakersfield', 44.8697803, -72.8038663, ST_GeomFromText('POINT(44.8697803 -72.8038663)', 4326), 44.7758102, -72.7554321, '1980-10-29', '2019-11-12', NULL, NULL, NULL),
  ('1459847', 'The Chin', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Mount Mansfield', 44.5436843, -72.814289, ST_GeomFromText('POINT(44.5436843 -72.814289)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459848', 'The Cobble', 'Summit', 'Vermont', 'VT', 'Rutland', 'Wells', 43.4041914, -73.1260875, ST_GeomFromText('POINT(43.4041914 -73.1260875)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459849', 'The Cobble', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Richmond', 44.4428057, -72.9596101, ST_GeomFromText('POINT(44.4428057 -72.9596101)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459850', 'The Creek', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Underhill', 44.514773, -72.9615153, ST_GeomFromText('POINT(44.514773 -72.9615153)', 4326), 44.57, -72.9397222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459852', 'The Fish Pond', 'Reservoir', 'Vermont', 'VT', 'Orange', 'Newbury', 44.0920902, -72.0631995, ST_GeomFromText('POINT(44.0920902 -72.0631995)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1459853', 'The Forehead', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Mount Mansfield', 44.5211846, -72.8180068, ST_GeomFromText('POINT(44.5211846 -72.8180068)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459855', 'The Fox Cobble', 'Summit', 'Vermont', 'VT', 'Rutland', 'Wells', 43.3929347, -73.1588408, ST_GeomFromText('POINT(43.3929347 -73.1588408)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459856', 'The Gallop', 'Summit', 'Vermont', 'VT', 'Bennington', 'Pawlet', 43.2623763, -73.1603859, ST_GeomFromText('POINT(43.2623763 -73.1603859)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1459857', 'The Glebe', 'Ridge', 'Vermont', 'VT', 'Orange', 'Lyme', 43.8059911, -72.2492717, ST_GeomFromText('POINT(43.8059911 -72.2492717)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459858', 'The Gore', 'Summit', 'Vermont', 'VT', 'Franklin', 'Gilson Mountain', 44.7416913, -72.8817158, ST_GeomFromText('POINT(44.7416913 -72.8817158)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459859', 'The Great Ledge', 'Cliff', 'Vermont', 'VT', 'Rutland', 'Benson', 43.6552577, -73.2890971, ST_GeomFromText('POINT(43.6552577 -73.2890971)', 4326), NULL, NULL, '1980-10-29', '2015-07-02', NULL, NULL, NULL),
  ('1459860', 'The Gulf', 'Valley', 'Vermont', 'VT', 'Windsor', 'Windsor', 43.4134517, -72.4842502, ST_GeomFromText('POINT(43.4134517 -72.4842502)', 4326), 43.4159801, -72.4750642, '1980-10-29', '2018-04-24', NULL, NULL, NULL),
  ('1459861', 'The Gulf', 'Valley', 'Vermont', 'VT', 'Rutland', 'Middletown Springs', 43.4299515, -73.1119901, ST_GeomFromText('POINT(43.4299515 -73.1119901)', 4326), 43.4442662, -73.0939224, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1459862', 'The Gulf', 'Valley', 'Vermont', 'VT', 'Windsor', 'Delectable Mountain', 43.700282, -72.6266807, ST_GeomFromText('POINT(43.700282 -72.6266807)', 4326), 43.70752, -72.6261359, '1980-10-29', '2018-09-14', NULL, NULL, NULL),
  ('1459864', 'The Head', 'Summit', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.8311435, -73.3451313, ST_GeomFromText('POINT(44.8311435 -73.3451313)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459865', 'The Hurricane', 'Summit', 'Vermont', 'VT', 'Orleans', 'Morgan Center', 44.9566841, -71.9127048, ST_GeomFromText('POINT(44.9566841 -71.9127048)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459866', 'The Inlet', 'Stream', 'Vermont', 'VT', 'Essex', 'Averill', 44.9814354, -71.6823137, ST_GeomFromText('POINT(44.9814354 -71.6823137)', 4326), 44.9575, -71.6477778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459867', 'The Knob', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Saint Johnsbury', 44.4314242, -72.0281081, ST_GeomFromText('POINT(44.4314242 -72.0281081)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459868', 'The Knob', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Eden', 44.7279281, -72.5167131, ST_GeomFromText('POINT(44.7279281 -72.5167131)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459870', 'The Ledge', 'Cliff', 'Vermont', 'VT', 'Addison', 'Cornwall', 43.9979768, -73.2221343, ST_GeomFromText('POINT(43.9979768 -73.2221343)', 4326), NULL, NULL, '1980-10-29', '2015-07-02', NULL, NULL, NULL),
  ('1459872', 'The Lookout', 'Summit', 'Vermont', 'VT', 'Windsor', 'Delectable Mountain', 43.6788614, -72.6385914, ST_GeomFromText('POINT(43.6788614 -72.6385914)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1459873', 'The Marsh', 'Swamp', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.8669854, -73.3404104, ST_GeomFromText('POINT(44.8669854 -73.3404104)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459876', 'The Narrows', 'Stream', 'Vermont', 'VT', 'Windsor', 'Windsor', 43.464289, -72.401876, ST_GeomFromText('POINT(43.464289 -72.401876)', 4326), 43.454539, -72.4087, '1980-10-29', '2024-10-01', NULL, NULL, NULL),
  ('1459877', 'The Nose', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Mount Mansfield', 44.5262916, -72.8151004, ST_GeomFromText('POINT(44.5262916 -72.8151004)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459878', 'The Notch', 'Gap', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.1564656, -73.2212191, ST_GeomFromText('POINT(43.1564656 -73.2212191)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459879', 'The Notch', 'Gap', 'Vermont', 'VT', 'Orange', 'Washington', 44.1189522, -72.3812107, ST_GeomFromText('POINT(44.1189522 -72.3812107)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459882', 'The Ox Bow', 'Cliff', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.2259094, -73.205385, ST_GeomFromText('POINT(43.2259094 -73.205385)', 4326), NULL, NULL, '1980-10-29', '2018-11-27', NULL, NULL, NULL),
  ('1459884', 'The Palisades', 'Cliff', 'Vermont', 'VT', 'Orange', 'Fairlee', 43.9117348, -72.1442564, ST_GeomFromText('POINT(43.9117348 -72.1442564)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459885', 'The Pattern', 'Summit', 'Vermont', 'VT', 'Rutland', 'Pawlet', 43.3484322, -73.2052154, ST_GeomFromText('POINT(43.3484322 -73.2052154)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459886', 'The Pinnacle', 'Pillar', 'Vermont', 'VT', 'Windsor', 'Ludlow', 43.4253495, -72.6878739, ST_GeomFromText('POINT(43.4253495 -72.6878739)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459887', 'The Pinnacle', 'Pillar', 'Vermont', 'VT', 'Rutland', 'Wells', 43.4467375, -73.1462182, ST_GeomFromText('POINT(43.4467375 -73.1462182)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459888', 'The Pinnacle', 'Pillar', 'Vermont', 'VT', 'Addison', 'Orwell', 43.7739511, -73.2670589, ST_GeomFromText('POINT(43.7739511 -73.2670589)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459889', 'The Pinnacle', 'Pillar', 'Vermont', 'VT', 'Orange', 'Randolph Center', 43.8750668, -72.5178766, ST_GeomFromText('POINT(43.8750668 -72.5178766)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459890', 'The Pinnacle', 'Pillar', 'Vermont', 'VT', 'Addison', 'Bridport', 43.8958933, -73.2778951, ST_GeomFromText('POINT(43.8958933 -73.2778951)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459891', 'The Pinnacle', 'Summit', 'Vermont', 'VT', 'Washington', 'Barre East', 44.2118119, -72.4390145, ST_GeomFromText('POINT(44.2118119 -72.4390145)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1459892', 'The Pinnacle', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Mount Mansfield', 44.5343957, -72.7694376, ST_GeomFromText('POINT(44.5343957 -72.7694376)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459893', 'The Pogue', 'Lake', 'Vermont', 'VT', 'Windsor', 'Woodstock North', 43.6337988, -72.5425388, ST_GeomFromText('POINT(43.6337988 -72.5425388)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1459894', 'The Purchase', 'Summit', 'Vermont', 'VT', 'Rutland', 'Middletown Springs', 43.4123034, -73.0966438, ST_GeomFromText('POINT(43.4123034 -73.0966438)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459898', 'Thistle Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Quechee', 43.6956158, -72.4800933, ST_GeomFromText('POINT(43.6956158 -72.4800933)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459899', 'Thorne Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Colrain', 42.7150834, -72.6692586, ST_GeomFromText('POINT(42.7150834 -72.6692586)', 4326), 42.75, -72.6525, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459900', 'Thorp Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Charlotte', 44.2667194, -73.2690136, ST_GeomFromText('POINT(44.2667194 -73.2690136)', 4326), 44.305, -73.25, '1980-10-29', NULL, 'Official', 'Board Decision', '1979-01-01'),
  ('1459902', 'Thresher Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Roxbury', 44.0092371, -72.7147633, ST_GeomFromText('POINT(44.0092371 -72.7147633)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459904', 'Ticklenaked Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Woodsville', 44.1882173, -72.0991677, ST_GeomFromText('POINT(44.1882173 -72.0991677)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1459905', 'Tigertown Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Quechee', 43.7170139, -72.4187046, ST_GeomFromText('POINT(43.7170139 -72.4187046)', 4326), 43.7402778, -72.3886111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459907', 'Tillotson Peak', 'Summit', 'Vermont', 'VT', 'Orleans', 'Hazens Notch', 44.8057162, -72.5506683, ST_GeomFromText('POINT(44.8057162 -72.5506683)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459908', 'Tim Carroll Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Spectacle Pond', 44.8706037, -71.806483, ST_GeomFromText('POINT(44.8706037 -71.806483)', 4326), 44.9089365, -71.8192612, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459910', 'Tinker Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Killington Peak', 43.5489584, -72.7509329, ST_GeomFromText('POINT(43.5489584 -72.7509329)', 4326), 43.565, -72.8036111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459911', 'Tinkham Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.5273176, -72.4201131, ST_GeomFromText('POINT(43.5273176 -72.4201131)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL),
  ('1459915', 'Tinmouth Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Middletown Springs', 43.4195383, -73.0760452, ST_GeomFromText('POINT(43.4195383 -73.0760452)', 4326), NULL, NULL, '1980-10-29', '2022-09-02', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459916', 'Tiny Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Ludlow', 43.4695064, -72.7334301, ST_GeomFromText('POINT(43.4695064 -72.7334301)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459917', 'Tiny Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Ludlow', 43.4603179, -72.7249992, ST_GeomFromText('POINT(43.4603179 -72.7249992)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1459918', 'Toad Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Westmore', 44.847948, -72.048576, ST_GeomFromText('POINT(44.847948 -72.048576)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1459919', 'Toad Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Morgan Center', 44.9202321, -71.9409139, ST_GeomFromText('POINT(44.9202321 -71.9409139)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1459920', 'Todd Hill', 'Summit', 'Vermont', 'VT', 'Essex', 'Monadnock Mountain', 44.9225271, -71.565323, ST_GeomFromText('POINT(44.9225271 -71.565323)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459921', 'Tolles Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Chester', 43.3561445, -72.5123534, ST_GeomFromText('POINT(43.3561445 -72.5123534)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1459922', 'Tolman Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Stone Mountain', 44.6189425, -71.7034232, ST_GeomFromText('POINT(44.6189425 -71.7034232)', 4326), 44.6066667, -71.7330556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459923', 'Mount Tom', 'Summit', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.5238278, -72.7290075, ST_GeomFromText('POINT(43.5238278 -72.7290075)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459924', 'Mount Tom', 'Summit', 'Vermont', 'VT', 'Windsor', 'Woodstock North', 43.6301071, -72.5299647, ST_GeomFromText('POINT(43.6301071 -72.5299647)', 4326), NULL, NULL, '1980-10-29', '2018-09-14', NULL, NULL, NULL),
  ('1459925', 'Mount Tom', 'Summit', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.504506, -72.6253718, ST_GeomFromText('POINT(43.504506 -72.6253718)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459926', 'Toot Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Lyndonville', 44.5100466, -72.0625963, ST_GeomFromText('POINT(44.5100466 -72.0625963)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459927', 'Toothaker Hill', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Morrisville', 44.5817165, -72.5250627, ST_GeomFromText('POINT(44.5817165 -72.5250627)', 4326), NULL, NULL, '2023-11-18', '2023-11-18', 'Official', 'Board Decision', '1966-01-01'),
  ('1459930', 'Totman Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Woodstock North', 43.6818818, -72.5481277, ST_GeomFromText('POINT(43.6818818 -72.5481277)', 4326), NULL, NULL, '1980-10-29', '2018-09-14', NULL, NULL, NULL),
  ('1459933', 'Town Farm Bay', 'Bay', 'Vermont', 'VT', 'Chittenden', 'Charlotte', 44.2683857, -73.2884586, ST_GeomFromText('POINT(44.2683857 -73.2884586)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459934', 'Town Farm Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.5411129, -72.4405831, ST_GeomFromText('POINT(43.5411129 -72.4405831)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL),
  ('1459935', 'Town Farm Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Newbury', 44.0940986, -72.0978465, ST_GeomFromText('POINT(44.0940986 -72.0978465)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459936', 'Town Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Pawlet', 43.3621551, -73.1669314, ST_GeomFromText('POINT(43.3621551 -73.1669314)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1459937', 'Town Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Poultney', 43.5388262, -73.1994038, ST_GeomFromText('POINT(43.5388262 -73.1994038)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1459944', 'Tracer Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Cavendish', 43.41035, -72.5970379, ST_GeomFromText('POINT(43.41035 -72.5970379)', 4326), 43.4525, -72.6169444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459945', 'Tracy Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Milton', 44.6714377, -73.0362485, ST_GeomFromText('POINT(44.6714377 -73.0362485)', 4326), 44.7055556, -73.0141667, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459946', 'Train Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Middletown Springs', 43.4847921, -73.0984399, ST_GeomFromText('POINT(43.4847921 -73.0984399)', 4326), 43.5153471, -73.0948291, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459947', 'Trebo Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Chester', 43.2728526, -72.5917586, ST_GeomFromText('POINT(43.2728526 -72.5917586)', 4326), 43.3097222, -72.5872222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459948', 'Trip Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Island Pond', 44.8494917, -71.9581617, ST_GeomFromText('POINT(44.8494917 -71.9581617)', 4326), NULL, NULL, '1980-10-29', '2022-09-02', NULL, NULL, NULL),
  ('1459949', 'Tromp Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'Albany', 44.6497731, -72.4017746, ST_GeomFromText('POINT(44.6497731 -72.4017746)', 4326), NULL, NULL, '2002-08-27', NULL, NULL, NULL, NULL),
  ('1459950', 'Trout Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Crystal Lake', 44.6300523, -72.1326, ST_GeomFromText('POINT(44.6300523 -72.1326)', 4326), 44.6641667, -72.1666667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459951', 'Trout Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Andover', 43.2839633, -72.7117621, ST_GeomFromText('POINT(43.2839633 -72.7117621)', 4326), 43.3072222, -72.7463889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459952', 'Trout Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Randolph', 43.9061767, -72.6476035, ST_GeomFromText('POINT(43.9061767 -72.6476035)', 4326), 43.9025, -72.7086111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459953', 'Trout Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Georgia Plains', 44.6442129, -73.2092976, ST_GeomFromText('POINT(44.6442129 -73.2092976)', 4326), 44.6538889, -73.1761111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459954', 'Trout Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Orleans', 44.8531034, -72.2076024, ST_GeomFromText('POINT(44.8531034 -72.2076024)', 4326), 44.8666667, -72.1488889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459955', 'Trout Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Enosburg Falls', 44.9108797, -72.7915233, ST_GeomFromText('POINT(44.9108797 -72.7915233)', 4326), 44.9608333, -72.7625, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459956', 'Trout River', 'Stream', 'Vermont', 'VT', 'Franklin', 'Richford', 44.9356019, -72.7012427, ST_GeomFromText('POINT(44.9356019 -72.7012427)', 4326), 44.8756025, -72.5765073, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459957', 'Trow Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Barre East', 44.1956067, -72.4638614, ST_GeomFromText('POINT(44.1956067 -72.4638614)', 4326), NULL, NULL, '1980-10-29', '2024-09-24', NULL, NULL, NULL),
  ('1459959', 'Truland Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Lowell', 44.784215, -72.4489986, ST_GeomFromText('POINT(44.784215 -72.4489986)', 4326), 44.7902778, -72.3841667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459960', 'Tucker Mountain', 'Summit', 'Vermont', 'VT', 'Orange', 'East Corinth', 44.082278, -72.1692584, ST_GeomFromText('POINT(44.082278 -72.1692584)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459961', 'Tuffield Willey Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Spectacle Pond', 44.8281044, -71.831761, ST_GeomFromText('POINT(44.8281044 -71.831761)', 4326), 44.855, -71.8588889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459962', 'Tug Mountain', 'Summit', 'Vermont', 'VT', 'Orange', 'Vershire', 43.8906314, -72.2800085, ST_GeomFromText('POINT(43.8906314 -72.2800085)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1459964', 'Tunbridge Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Randolph Center', 43.9394243, -72.5152887, ST_GeomFromText('POINT(43.9394243 -72.5152887)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1459965', 'Tunbridge Trout Pond', 'Lake', 'Vermont', 'VT', 'Orange', 'Sharon', 43.858234, -72.4563285, ST_GeomFromText('POINT(43.858234 -72.4563285)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1459966', 'Turkey Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Northfield', 44.1496997, -72.6339513, ST_GeomFromText('POINT(44.1496997 -72.6339513)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1459967', 'Turkey Hollow', 'Valley', 'Vermont', 'VT', 'Windsor', 'Woodstock North', 43.7045957, -72.5767815, ST_GeomFromText('POINT(43.7045957 -72.5767815)', 4326), 43.7191345, -72.5658853, '1980-10-29', '2018-09-14', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459968', 'Turner Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Gilman', 44.4767245, -71.6453644, ST_GeomFromText('POINT(44.4767245 -71.6453644)', 4326), 44.4983333, -71.6672222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459971', 'Turtle Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Morgan Center', 44.9933282, -71.9219213, ST_GeomFromText('POINT(44.9933282 -71.9219213)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1459972', 'Tuttle Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Caspian Lake', 44.5580486, -72.3094071, ST_GeomFromText('POINT(44.5580486 -72.3094071)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1459973', 'Tuttle Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Maidstone Lake', 44.7060874, -71.6289669, ST_GeomFromText('POINT(44.7060874 -71.6289669)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1459974', 'Twentymile Stream', 'Stream', 'Vermont', 'VT', 'Windsor', 'Cavendish', 43.3934058, -72.5917598, ST_GeomFromText('POINT(43.3934058 -72.5917598)', 4326), 43.4706265, -72.6531512, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459976', 'Twin Ponds', 'Lake', 'Vermont', 'VT', 'Orange', 'Brookfield', 44.0614104, -72.5782428, ST_GeomFromText('POINT(44.0614104 -72.5782428)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1459977', 'Tyler Branch', 'Stream', 'Vermont', 'VT', 'Franklin', 'Enosburg Falls', 44.905046, -72.8423563, ST_GeomFromText('POINT(44.905046 -72.8423563)', 4326), 44.8456031, -72.7017941, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459979', 'Tyler Mountain', 'Summit', 'Vermont', 'VT', 'Windsor', 'Sharon', 43.7885003, -72.4363957, ST_GeomFromText('POINT(43.7885003 -72.4363957)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459980', 'Umbrella Hill', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Eden', 44.6333537, -72.5045093, ST_GeomFromText('POINT(44.6333537 -72.5045093)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459981', 'Umpire Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Gallup Mills', 44.5492221, -71.8387036, ST_GeomFromText('POINT(44.5492221 -71.8387036)', 4326), 44.5966667, -71.8597222, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1459982', 'Umpire Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Gallup Mills', 44.5694265, -71.8572677, ST_GeomFromText('POINT(44.5694265 -71.8572677)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1459985', 'Underpass Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Island Pond', 44.8697243, -71.9030979, ST_GeomFromText('POINT(44.8697243 -71.9030979)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1459986', 'Union Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Northfield', 44.1497834, -72.6606654, ST_GeomFromText('POINT(44.1497834 -72.6606654)', 4326), 44.185, -72.7483333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1459997', 'Unknown Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Maidstone Lake', 44.6649661, -71.7226165, ST_GeomFromText('POINT(44.6649661 -71.7226165)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1459998', 'Unknown Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Norton Pond', 44.91031, -71.8434579, ST_GeomFromText('POINT(44.91031 -71.8434579)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1460001', 'Upper Hurricane Reservoir', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Hanover', 43.6432887, -72.3731893, ST_GeomFromText('POINT(43.6432887 -72.3731893)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1460002', 'Upper Meadows', 'Flat', 'Vermont', 'VT', 'Windham', 'Bellows Falls', 43.2034097, -72.4423108, ST_GeomFromText('POINT(43.2034097 -72.4423108)', 4326), NULL, NULL, '1980-10-29', '2016-09-20', NULL, NULL, NULL),
  ('1460004', 'Thurman W. Dix Reservoir', 'Reservoir', 'Vermont', 'VT', 'Orange', 'Barre East', 44.1858898, -72.4225037, ST_GeomFromText('POINT(44.1858898 -72.4225037)', 4326), NULL, NULL, '2002-08-27', '2023-07-07', 'Official', 'Board Decision', '1981-01-01'),
  ('1460005', 'McLam Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Barnet', 44.2522316, -72.1106609, ST_GeomFromText('POINT(44.2522316 -72.1106609)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1460006', 'Vail Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Wells', 43.483681, -73.1381626, ST_GeomFromText('POINT(43.483681 -73.1381626)', 4326), 43.5206247, -73.1234407, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460007', 'Vail Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Lyndonville', 44.5330254, -72.0313115, ST_GeomFromText('POINT(44.5330254 -72.0313115)', 4326), NULL, NULL, '1980-10-29', '2023-11-18', NULL, NULL, NULL),
  ('1460008', 'Vail Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Sutton', 44.7047841, -72.0725082, ST_GeomFromText('POINT(44.7047841 -72.0725082)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1460009', 'Valley Lake', 'Reservoir', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.4475799, -72.4399901, ST_GeomFromText('POINT(44.4475799 -72.4399901)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1460010', 'Valley Mountain', 'Summit', 'Vermont', 'VT', 'Orleans', 'Westmore', 44.7510181, -72.0860591, ST_GeomFromText('POINT(44.7510181 -72.0860591)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1460013', 'Van Dyke Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Monadnock Mountain', 44.9891233, -71.5481213, ST_GeomFromText('POINT(44.9891233 -71.5481213)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', 'Official', 'Board Decision', '1973-01-01'),
  ('1460015', 'Vatters Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Brookfield', 44.1157601, -72.6229337, ST_GeomFromText('POINT(44.1157601 -72.6229337)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1460016', 'Vaughn Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Colrain', 42.7400831, -72.7278711, ST_GeomFromText('POINT(42.7400831 -72.7278711)', 4326), 42.7642495, -72.7281491, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460017', 'Verdun Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.5273772, -72.4943433, ST_GeomFromText('POINT(43.5273772 -72.4943433)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL),
  ('1460019', 'Vergennes Watershed', 'Reservoir', 'Vermont', 'VT', 'Addison', 'Vergennes East', 44.1579272, -73.1389208, ST_GeomFromText('POINT(44.1579272 -73.1389208)', 4326), NULL, NULL, '1980-10-29', '2011-09-27', NULL, NULL, NULL),
  ('1460029', 'View Pond', 'Lake', 'Vermont', 'VT', 'Windsor', 'Woodstock South', 43.6012207, -72.523455, ST_GeomFromText('POINT(43.6012207 -72.523455)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460030', 'Vondell Reservoir', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Woodstock North', 43.628819, -72.5724588, ST_GeomFromText('POINT(43.628819 -72.5724588)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1460031', 'Vulture Mountain', 'Summit', 'Vermont', 'VT', 'Windsor', 'Bethel', 43.7955936, -72.6981786, ST_GeomFromText('POINT(43.7955936 -72.6981786)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460032', 'Wade Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Hazens Notch', 44.8750469, -72.5767851, ST_GeomFromText('POINT(44.8750469 -72.5767851)', 4326), 44.8416667, -72.5275, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460033', 'Wagner Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'Rouses Point', 44.912541, -73.2687416, ST_GeomFromText('POINT(44.912541 -73.2687416)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460034', 'Wainwright Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Cornwall', 43.9558385, -73.1407764, ST_GeomFromText('POINT(43.9558385 -73.1407764)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1460035', 'Wait Bay', 'Bay', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.8411525, -73.3354103, ST_GeomFromText('POINT(44.8411525 -73.3354103)', 4326), NULL, NULL, '1980-10-29', NULL, 'Official', 'Board Decision', '1942-01-01'),
  ('1460038', 'Waits River', 'Stream', 'Vermont', 'VT', 'Orange', 'Piermont', 43.9947888, -72.1159235, ST_GeomFromText('POINT(43.9947888 -72.1159235)', 4326), 44.1961728, -72.3448217, '1980-10-29', '2018-07-31', NULL, NULL, NULL),
  ('1460039', 'Waitsfield Gap', 'Gap', 'Vermont', 'VT', 'Washington', 'Northfield', 44.1920043, -72.7428919, ST_GeomFromText('POINT(44.1920043 -72.7428919)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460045', 'Walker Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'West Burke', 44.7176651, -71.8857831, ST_GeomFromText('POINT(44.7176651 -71.8857831)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1460046', 'Walker Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.7426222, -73.141167, ST_GeomFromText('POINT(43.7426222 -73.141167)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460047', 'Walker Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'West Burke', 44.7408077, -71.9171608, ST_GeomFromText('POINT(44.7408077 -71.9171608)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1460048', 'Walker Pond', 'Reservoir', 'Vermont', 'VT', 'Orleans', 'Newport Center', 44.9255126, -72.2593132, ST_GeomFromText('POINT(44.9255126 -72.2593132)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1460049', 'Walker Swamp', 'Swamp', 'Vermont', 'VT', 'Rutland', 'Benson', 43.744507, -73.2837254, ST_GeomFromText('POINT(43.744507 -73.2837254)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460050', 'Wallace Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Woodsville', 44.1331721, -72.0743655, ST_GeomFromText('POINT(44.1331721 -72.0743655)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1460051', 'Wallace Ledge', 'Cliff', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.6720098, -73.1767776, ST_GeomFromText('POINT(43.6720098 -73.1767776)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460052', 'Wallace Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Averill OE N', 45.0119905, -71.6256445, ST_GeomFromText('POINT(45.0119905 -71.6256445)', 4326), NULL, NULL, '1980-10-29', '2021-01-19', 'Official', 'Board Decision', '1953-01-01'),
  ('1460054', 'Walnut Hill', 'Summit', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.1710788, -73.2357513, ST_GeomFromText('POINT(43.1710788 -73.2357513)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1460055', 'Walnut Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Middletown Springs', 43.3778727, -73.1158523, ST_GeomFromText('POINT(43.3778727 -73.1158523)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1460058', 'Walton Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.4452326, -72.4290103, ST_GeomFromText('POINT(44.4452326 -72.4290103)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1460061', 'Wardens Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Barnet', 44.33018, -72.0782536, ST_GeomFromText('POINT(44.33018 -72.0782536)', 4326), NULL, NULL, '1980-10-29', '2021-02-06', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460062', 'Wardner Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Cavendish', 43.4918376, -72.5339408, ST_GeomFromText('POINT(43.4918376 -72.5339408)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1460063', 'Wardner Pond', 'Lake', 'Vermont', 'VT', 'Orange', 'Roxbury', 44.0753407, -72.6434407, ST_GeomFromText('POINT(44.0753407 -72.6434407)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460064', 'Ware Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Irasburg', 44.8636586, -72.275382, ST_GeomFromText('POINT(44.8636586 -72.275382)', 4326), 44.8683333, -72.3230556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460066', 'Warner Hill', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Mount Mansfield', 44.6068611, -72.8210237, ST_GeomFromText('POINT(44.6068611 -72.8210237)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1460067', 'Warner Hill', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Jeffersonville', 44.6571563, -72.8433324, ST_GeomFromText('POINT(44.6571563 -72.8433324)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1460068', 'Warner Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'North Troy', 44.9853457, -72.4171447, ST_GeomFromText('POINT(44.9853457 -72.4171447)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1460070', 'Washburn Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.6236799, -72.6814877, ST_GeomFromText('POINT(43.6236799 -72.6814877)', 4326), 43.6113889, -72.6919444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460071', 'Washburn Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Groveton', 44.5625553, -71.5939748, ST_GeomFromText('POINT(44.5625553 -71.5939748)', 4326), 44.5931099, -71.6598105, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460074', 'Water Andric', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Barnet', 44.3575593, -72.045928, ST_GeomFromText('POINT(44.3575593 -72.045928)', 4326), 44.4295012, -72.1634322, '1980-10-29', NULL, 'Official', 'Board Decision', '1965-01-01'),
  ('1460077', 'Waterbury Reservoir', 'Reservoir', 'Vermont', 'VT', 'Washington', 'Bolton Mountain', 44.3864532, -72.762198, ST_GeomFromText('POINT(44.3864532 -72.762198)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', 'Official', 'Board Decision', '1971-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460079', 'Waterman Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Sterling Mountain', 44.6131067, -72.6681747, ST_GeomFromText('POINT(44.6131067 -72.6681747)', 4326), 44.5886111, -72.7333333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460080', 'Waterman Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Saint Johnsbury', 44.4935433, -72.1233527, ST_GeomFromText('POINT(44.4935433 -72.1233527)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1460082', 'Watson Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.3875755, -72.4825369, ST_GeomFromText('POINT(44.3875755 -72.4825369)', 4326), NULL, NULL, '2002-08-27', '2019-11-08', NULL, NULL, NULL),
  ('1460083', 'Weatherhead Hollow', 'Valley', 'Vermont', 'VT', 'Windham', 'Brattleboro', 42.7999136, -72.5961147, ST_GeomFromText('POINT(42.7999136 -72.5961147)', 4326), 42.7481951, -72.6084479, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1460087', 'Weaver Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Saxtons River', 43.1470219, -72.5534238, ST_GeomFromText('POINT(43.1470219 -72.5534238)', 4326), 43.1927778, -72.5555556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460088', 'Weaver Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Ludlow', 43.4789196, -72.6741794, ST_GeomFromText('POINT(43.4789196 -72.6741794)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1460089', 'Webber Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Caspian Lake', 44.6241805, -72.3586357, ST_GeomFromText('POINT(44.6241805 -72.3586357)', 4326), 44.6054143, -72.332975, '2002-08-27', '2021-01-19', NULL, NULL, NULL),
  ('1460090', 'Webster Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Island Pond', 44.8181046, -71.9420404, ST_GeomFromText('POINT(44.8181046 -71.9420404)', 4326), 44.89727, -71.9467628, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460095', 'Weed Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.5375707, -72.4428695, ST_GeomFromText('POINT(43.5375707 -72.4428695)', 4326), 43.5733333, -72.4630556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460097', 'Weeden Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hartland', 43.5202331, -72.4464163, ST_GeomFromText('POINT(43.5202331 -72.4464163)', 4326), NULL, NULL, '1980-10-29', '2018-04-24', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460098', 'Weir Mill Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Gallup Mills', 44.5472777, -71.8320367, ST_GeomFromText('POINT(44.5472777 -71.8320367)', 4326), 44.567277, -71.8953715, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460099', 'Welder Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Middlesex', 44.2720025, -72.7456719, ST_GeomFromText('POINT(44.2720025 -72.7456719)', 4326), 44.287835, -72.8023399, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460100', 'Wellington Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Walpole', 43.0828479, -72.4873099, ST_GeomFromText('POINT(43.0828479 -72.4873099)', 4326), NULL, NULL, '1980-10-29', '2022-09-05', NULL, NULL, NULL),
  ('1460103', 'Wells Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Plainfield', 44.2828372, -72.415659, ST_GeomFromText('POINT(44.2828372 -72.415659)', 4326), 44.3086111, -72.4255556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460104', 'Wells Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Wells', 43.4020163, -73.2370526, ST_GeomFromText('POINT(43.4020163 -73.2370526)', 4326), 43.4450709, -73.0901062, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460105', 'Wells Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Orleans', 44.8231041, -72.1312115, ST_GeomFromText('POINT(44.8231041 -72.1312115)', 4326), 44.8167154, -72.1056552, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460107', 'Wells River', 'Stream', 'Vermont', 'VT', 'Orange', 'Woodsville', 44.1522858, -72.0425911, ST_GeomFromText('POINT(44.1522858 -72.0425911)', 4326), 44.2420055, -72.2392631, '1980-10-29', '2018-07-31', NULL, NULL, NULL),
  ('1460108', 'Wesson Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Peacham', 44.2628922, -72.2236255, ST_GeomFromText('POINT(44.2628922 -72.2236255)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1460116', 'West Branch Dead Creek', 'Stream', 'Vermont', 'VT', 'Addison', 'Snake Mountain', 44.0806113, -73.3479007, ST_GeomFromText('POINT(44.0806113 -73.3479007)', 4326), 43.9397807, -73.3498422, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460117', 'West Branch Missisquoi River', 'Stream', 'Vermont', 'VT', 'Franklin', 'East Alburg OE N', 45.005874, -73.1612397, ST_GeomFromText('POINT(45.005874 -73.1612397)', 4326), 44.9955965, -73.1487396, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460118', 'West Branch Moose River', 'Stream', 'Vermont', 'VT', 'Essex', 'Seneca Mountain', 44.6344975, -71.8117592, ST_GeomFromText('POINT(44.6344975 -71.8117592)', 4326), 44.6816667, -71.815, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460119', 'West Branch Ompompanoosuc River', 'Stream', 'Vermont', 'VT', 'Orange', 'South Strafford', 43.8036808, -72.26148, ST_GeomFromText('POINT(43.8036808 -72.26148)', 4326), 43.9464557, -72.3759299, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460147', 'West Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Bernardston', 42.7442351, -72.5800701, ST_GeomFromText('POINT(42.7442351 -72.5800701)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1460148', 'West Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Barre West', 44.1942187, -72.5359383, ST_GeomFromText('POINT(44.1942187 -72.5359383)', 4326), NULL, NULL, '1980-10-29', '2022-09-05', NULL, NULL, NULL),
  ('1460149', 'West Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Mount Worcester', 44.4172973, -72.5963088, ST_GeomFromText('POINT(44.4172973 -72.5963088)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1460150', 'West Hill Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Richford', 44.9022688, -72.6487366, ST_GeomFromText('POINT(44.9022688 -72.6487366)', 4326), 44.7958814, -72.6506773, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460153', 'West Hill Pond', 'Reservoir', 'Vermont', 'VT', 'Washington', 'Cabot', 44.4177365, -72.3429895, ST_GeomFromText('POINT(44.4177365 -72.3429895)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1460159', 'West Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Maidstone Lake', 44.7093218, -71.7040859, ST_GeomFromText('POINT(44.7093218 -71.7040859)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1460160', 'West Mountain Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Maidstone Lake', 44.695329, -71.6411999, ST_GeomFromText('POINT(44.695329 -71.6411999)', 4326), 44.7005556, -71.6958333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460161', 'West Mountain Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Maidstone Lake', 44.688898, -71.6631337, ST_GeomFromText('POINT(44.688898 -71.6631337)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460166', 'West Peak', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Burke Mountain', 44.569025, -71.903307, ST_GeomFromText('POINT(44.569025 -71.903307)', 4326), NULL, NULL, '1980-10-29', '2024-10-04', NULL, NULL, NULL),
  ('1460167', 'West Ridge', 'Ridge', 'Vermont', 'VT', 'Caledonia', 'Sutton', 44.6596494, -72.0522321, ST_GeomFromText('POINT(44.6596494 -72.0522321)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1460181', 'Westford Pond', 'Lake', 'Vermont', 'VT', 'Chittenden', 'Essex Center', 44.5956973, -73.0645801, ST_GeomFromText('POINT(44.5956973 -73.0645801)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1460184', 'Westinghouse Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'South Strafford', 43.7742277, -72.2931458, ST_GeomFromText('POINT(43.7742277 -72.2931458)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1460192', 'Wheaton Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Andover', 43.3353512, -72.700929, ST_GeomFromText('POINT(43.3353512 -72.700929)', 4326), 43.3497222, -72.7216667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460193', 'Wheeler Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Sutton', 44.6994952, -72.0975993, ST_GeomFromText('POINT(44.6994952 -72.0975993)', 4326), 44.7283333, -72.0955556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460196', 'Wheeler Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Sutton', 44.7343448, -72.0912093, ST_GeomFromText('POINT(44.7343448 -72.0912093)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1460197', 'Wheeler Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Sutton', 44.7153349, -72.1011574, ST_GeomFromText('POINT(44.7153349 -72.1011574)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1460198', 'Wheeler Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.3935395, -72.4768363, ST_GeomFromText('POINT(44.3935395 -72.4768363)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1460199', 'Wheeler Pond', 'Lake', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.4343926, -72.4457514, ST_GeomFromText('POINT(44.4343926 -72.4457514)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460200', 'Wheeler Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Maidstone Lake', 44.7087515, -71.640728, ST_GeomFromText('POINT(44.7087515 -71.640728)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1460201', 'Wheeler Stream', 'Stream', 'Vermont', 'VT', 'Essex', 'Stratford', 44.722828, -71.6175884, ST_GeomFromText('POINT(44.722828 -71.6175884)', 4326), 44.7128285, -71.6650897, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460203', 'Wheelock Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Stannard', 44.55756, -72.1600181, ST_GeomFromText('POINT(44.55756 -72.1600181)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1460204', 'Whetstone Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.5567362, -72.7067651, ST_GeomFromText('POINT(43.5567362 -72.7067651)', 4326), 43.5808333, -72.7394444, '1980-10-29', '2018-03-27', NULL, NULL, NULL),
  ('1460205', 'Whetstone Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'West Burke', 44.6694965, -71.8925945, ST_GeomFromText('POINT(44.6694965 -71.8925945)', 4326), 44.6736111, -71.9230556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460206', 'Whetstone Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Brattleboro', 42.8523041, -72.5567567, ST_GeomFromText('POINT(42.8523041 -72.5567567)', 4326), 42.8675815, -72.732594, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460207', 'Whetstone Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Caspian Lake', 44.6214405, -72.3653845, ST_GeomFromText('POINT(44.6214405 -72.3653845)', 4326), 44.633107, -72.2889933, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460208', 'Whetstone Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Andover', 43.3491093, -72.6845207, ST_GeomFromText('POINT(43.3491093 -72.6845207)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1460209', 'Whipple Hollow', 'Valley', 'Vermont', 'VT', 'Rutland', 'West Rutland', 43.6067424, -73.0578899, ST_GeomFromText('POINT(43.6067424 -73.0578899)', 4326), 43.7035989, -73.0916629, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1460211', 'Whipstock Hill', 'Summit', 'Vermont', 'VT', 'Bennington', 'Hoosick Falls', 42.8914334, -73.2662503, ST_GeomFromText('POINT(42.8914334 -73.2662503)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460212', 'Whiskey Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Spectacle Pond', 44.8444929, -71.800094, ST_GeomFromText('POINT(44.8444929 -71.800094)', 4326), 44.8580556, -71.8258333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460213', 'Whitcher Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Groton', 44.1924295, -72.1759923, ST_GeomFromText('POINT(44.1924295 -72.1759923)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1460215', 'Whitcomb Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'South Strafford', 43.8549518, -72.3412492, ST_GeomFromText('POINT(43.8549518 -72.3412492)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1460216', 'White Bay', 'Bay', 'Vermont', 'VT', 'Addison', 'Vergennes West', 44.1375542, -73.3676247, ST_GeomFromText('POINT(44.1375542 -73.3676247)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460217', 'White Branch', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Eden', 44.7025496, -72.5737263, ST_GeomFromText('POINT(44.7025496 -72.5737263)', 4326), 44.7377778, -72.6055556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460221', 'Sterling Mountain', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Sterling Mountain', 44.5821936, -72.7398645, ST_GeomFromText('POINT(44.5821936 -72.7398645)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1460222', 'White Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Groton', 44.1853314, -72.1606486, ST_GeomFromText('POINT(44.1853314 -72.1606486)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1460223', 'White Ledge', 'Cliff', 'Vermont', 'VT', 'Addison', 'Orwell', 43.7642286, -73.3376159, ST_GeomFromText('POINT(43.7642286 -73.3376159)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460225', 'White Rock Mountain', 'Summit', 'Vermont', 'VT', 'Washington', 'Stowe', 44.3890295, -72.6530189, ST_GeomFromText('POINT(44.3890295 -72.6530189)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1460226', 'White Rocks', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Sterling Mountain', 44.573455, -72.731211, ST_GeomFromText('POINT(44.573455 -72.731211)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460228', 'Whiteman Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Saint Johnsbury', 44.4356129, -72.0781523, ST_GeomFromText('POINT(44.4356129 -72.0781523)', 4326), 44.4367235, -72.1400984, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460231', 'Whitewater Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Sharon', 43.7870126, -72.4806515, ST_GeomFromText('POINT(43.7870126 -72.4806515)', 4326), 43.8391667, -72.4675, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460233', 'Whiting Swamp', 'Swamp', 'Vermont', 'VT', 'Addison', 'Cornwall', 43.8833946, -73.1870598, ST_GeomFromText('POINT(43.8833946 -73.1870598)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460234', 'Whitman Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Quechee', 43.6517365, -72.4420376, ST_GeomFromText('POINT(43.6517365 -72.4420376)', 4326), 43.6738889, -72.4619444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460235', 'Whitmore Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Chester', 43.299241, -72.6075927, ST_GeomFromText('POINT(43.299241 -72.6075927)', 4326), 43.3211849, -72.6367604, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460236', 'Whitney Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Ludlow', 43.4156276, -72.6487061, ST_GeomFromText('POINT(43.4156276 -72.6487061)', 4326), 43.4169444, -72.6597222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460237', 'Whitney Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Craftsbury', 44.6631063, -72.3620512, ST_GeomFromText('POINT(44.6631063 -72.3620512)', 4326), 44.6441667, -72.2741667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460238', 'Wards Creek', 'Stream', 'Vermont', 'VT', 'Addison', 'Port Henry', 44.027834, -73.3995675, ST_GeomFromText('POINT(44.027834 -73.3995675)', 4326), 44.0167237, -73.3523439, '1980-10-29', NULL, 'Official', 'Board Decision', '1977-01-01'),
  ('1460239', 'Whitney Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Chester', 43.2633371, -72.5445542, ST_GeomFromText('POINT(43.2633371 -72.5445542)', 4326), NULL, NULL, '1980-10-29', '2024-08-16', NULL, NULL, NULL),
  ('1460240', 'Whitney Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Chelsea', 43.9339463, -72.4839868, ST_GeomFromText('POINT(43.9339463 -72.4839868)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460241', 'Whittaker Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Richford', 44.9875455, -72.6531845, ST_GeomFromText('POINT(44.9875455 -72.6531845)', 4326), 44.9766667, -72.6330556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460242', 'Wickopee Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Newfane', 42.9015715, -72.6310255, ST_GeomFromText('POINT(42.9015715 -72.6310255)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1460243', 'Widow Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Cavendish', 43.4227631, -72.5715891, ST_GeomFromText('POINT(43.4227631 -72.5715891)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1460246', 'Wilcox Bay', 'Bay', 'Vermont', 'VT', 'Grand Isle', 'South Hero', 44.7028214, -73.3490214, ST_GeomFromText('POINT(44.7028214 -73.3490214)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460247', 'Wilcox Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Rutland', 43.5667269, -72.8878799, ST_GeomFromText('POINT(43.5667269 -72.8878799)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1460248', 'Wilcox Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Benson', 43.721598, -73.3451543, ST_GeomFromText('POINT(43.721598 -73.3451543)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1460249', 'Wilcox Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Morgan Center', 44.924396, -71.9952006, ST_GeomFromText('POINT(44.924396 -71.9952006)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1460250', 'Wilcox Hollow', 'Valley', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.1616895, -73.1782716, ST_GeomFromText('POINT(43.1616895 -73.1782716)', 4326), 43.1733617, -73.2007864, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1460251', 'Wilcox Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'South Hero', 44.7008769, -73.3504103, ST_GeomFromText('POINT(44.7008769 -73.3504103)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460252', 'Wild Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Eden', 44.6628281, -72.6120614, ST_GeomFromText('POINT(44.6628281 -72.6120614)', 4326), 44.7158826, -72.6290073, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460256', 'Wiley Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Eden', 44.6444952, -72.5195564, ST_GeomFromText('POINT(44.6444952 -72.5195564)', 4326), 44.6850501, -72.4817771, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460259', 'Wilke Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Stone Mountain', 44.6144981, -71.7006453, ST_GeomFromText('POINT(44.6144981 -71.7006453)', 4326), 44.5958333, -71.7141667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460260', 'Wilke Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Stone Mountain', 44.5884551, -71.7177833, ST_GeomFromText('POINT(44.5884551 -71.7177833)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1460261', 'Wilkens Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Governors Mountain', 42.7951839, -72.649062, ST_GeomFromText('POINT(42.7951839 -72.649062)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1460263', 'Wilkins Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Gilson Mountain', 44.6806051, -72.9890274, ST_GeomFromText('POINT(44.6806051 -72.9890274)', 4326), 44.7186111, -72.9372222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460264', 'Willard Mountain', 'Summit', 'Vermont', 'VT', 'Essex', 'Stratford', 44.6737026, -71.6093664, ST_GeomFromText('POINT(44.6737026 -71.6093664)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1460266', 'Willey Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Knox Mountain', 44.1555473, -72.2925769, ST_GeomFromText('POINT(44.1555473 -72.2925769)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1460267', 'Willey Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Stowe', 44.4156014, -72.7403953, ST_GeomFromText('POINT(44.4156014 -72.7403953)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1460270', 'Williams Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Chelsea', 43.8948561, -72.4282389, ST_GeomFromText('POINT(43.8948561 -72.4282389)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1460271', 'Williams Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'West Topsham', 44.1125999, -72.259304, ST_GeomFromText('POINT(44.1125999 -72.259304)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460272', 'Williams River', 'Stream', 'Vermont', 'VT', 'Windham', 'Bellows Falls', 43.1739659, -72.4514774, ST_GeomFromText('POINT(43.1739659 -72.4514774)', 4326), 43.3214625, -72.7498192, '1980-10-29', '2018-07-31', NULL, NULL, NULL),
  ('1460275', 'Williamstown Gulf', 'Valley', 'Vermont', 'VT', 'Orange', 'Brookfield', 44.0613825, -72.5627355, ST_GeomFromText('POINT(44.0613825 -72.5627355)', 4326), 44.0843804, -72.5695644, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1460278', 'Willie Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Windham', 43.1306332, -72.6362037, ST_GeomFromText('POINT(43.1306332 -72.6362037)', 4326), 43.1730556, -72.6975, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460281', 'Willoughby River', 'Stream', 'Vermont', 'VT', 'Orleans', 'Orleans', 44.8178261, -72.2037134, ST_GeomFromText('POINT(44.8178261 -72.2037134)', 4326), 44.7783826, -72.0734322, '1980-10-29', '2018-07-31', NULL, NULL, NULL),
  ('1460283', 'Lake Willoughby', 'Lake', 'Vermont', 'VT', 'Orleans', 'Westmore', 44.7501165, -72.0563477, ST_GeomFromText('POINT(44.7501165 -72.0563477)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1460284', 'Willow Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Sudbury', 43.808674, -73.1531687, ST_GeomFromText('POINT(43.808674 -73.1531687)', 4326), 43.7533333, -73.1527778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460285', 'Willow Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Cavendish', 43.4547937, -72.5142582, ST_GeomFromText('POINT(43.4547937 -72.5142582)', 4326), 43.5270148, -72.5309263, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460288', 'Wilmot Mountain', 'Summit', 'Vermont', 'VT', 'Orange', 'Lyme', 43.7883935, -72.2195118, ST_GeomFromText('POINT(43.7883935 -72.2195118)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1460289', 'Wilmouth Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Killington Peak', 43.5560645, -72.8674735, ST_GeomFromText('POINT(43.5560645 -72.8674735)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460292', 'Wind Gap', 'Gap', 'Vermont', 'VT', 'Washington', 'Huntington', 44.303945, -72.8820638, ST_GeomFromText('POINT(44.303945 -72.8820638)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460294', 'Windfall Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Delectable Mountain', 43.6870121, -72.7328791, ST_GeomFromText('POINT(43.6870121 -72.7328791)', 4326), 43.6869444, -72.7477778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460296', 'Windmill Mountain', 'Summit', 'Vermont', 'VT', 'Windham', 'Westminster West', 43.0574182, -72.5737627, ST_GeomFromText('POINT(43.0574182 -72.5737627)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1460297', 'Windmill Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'Rouses Point', 44.9817061, -73.3412437, ST_GeomFromText('POINT(44.9817061 -73.3412437)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460300', 'Wings Point', 'Cape', 'Vermont', 'VT', 'Chittenden', 'Charlotte', 44.3075516, -73.3006819, ST_GeomFromText('POINT(44.3075516 -73.3006819)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460303', 'Winooski Gorge', 'Valley', 'Vermont', 'VT', 'Chittenden', 'Burlington', 44.4871308, -73.1732176, ST_GeomFromText('POINT(44.4871308 -73.1732176)', 4326), 44.490146, -73.1612703, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1460304', 'Winooski River', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Colchester Point', 44.5303255, -73.2745738, ST_GeomFromText('POINT(44.5303255 -73.2745738)', 4326), 44.4539443, -72.3128815, '1980-10-29', '2018-07-31', 'Official', 'Board Decision', '1906-01-01'),
  ('1460305', 'Wintergreen Mountain', 'Summit', 'Vermont', 'VT', 'Franklin', 'Jeffersonville', 44.7287087, -72.8626951, ST_GeomFromText('POINT(44.7287087 -72.8626951)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1460306', 'Withers Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Caspian Lake', 44.5683862, -72.251492, ST_GeomFromText('POINT(44.5683862 -72.251492)', 4326), 44.5830556, -72.2661111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460307', 'Wood Duck Creek', 'Stream', 'Vermont', 'VT', 'Franklin', 'East Alburg', 44.9514307, -73.1454076, ST_GeomFromText('POINT(44.9514307 -73.1454076)', 4326), 44.9541667, -73.1588889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460308', 'Wood Peak', 'Summit', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.5538096, -72.7241796, ST_GeomFromText('POINT(43.5538096 -72.7241796)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460310', 'Woodbury Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Bethel', 43.8426673, -72.6576184, ST_GeomFromText('POINT(43.8426673 -72.6576184)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460311', 'Woodbury Mountain', 'Summit', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.4753387, -72.4253798, ST_GeomFromText('POINT(44.4753387 -72.4253798)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1460312', 'Woodchuck Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Sudbury', 43.7959803, -73.1736383, ST_GeomFromText('POINT(43.7959803 -73.1736383)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1460313', 'Woodchuck Mountain', 'Summit', 'Vermont', 'VT', 'Orange', 'East Corinth', 44.0902714, -72.1741955, ST_GeomFromText('POINT(44.0902714 -72.1741955)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1460315', 'Woods Island', 'Island', 'Vermont', 'VT', 'Franklin', 'Saint Albans Bay', 44.8028213, -73.2087434, ST_GeomFromText('POINT(44.8028213 -73.2087434)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460318', 'Woodward Mountain', 'Summit', 'Vermont', 'VT', 'Washington', 'Bolton Mountain', 44.4072809, -72.8325133, ST_GeomFromText('POINT(44.4072809 -72.8325133)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1460319', 'Woodward Reservoir', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Killington Peak', 43.5657794, -72.7585308, ST_GeomFromText('POINT(43.5657794 -72.7585308)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1460322', 'Worcester Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Mount Worcester', 44.3772788, -72.5456658, ST_GeomFromText('POINT(44.3772788 -72.5456658)', 4326), 44.4144444, -72.5080556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460323', 'Worcester Mountains', 'Range', 'Vermont', 'VT', 'Washington', 'Stowe', 44.4185785, -72.6383431, ST_GeomFromText('POINT(44.4185785 -72.6383431)', 4326), NULL, NULL, '1980-10-29', '2024-10-04', NULL, NULL, NULL),
  ('1460324', 'Worcester Ponds', 'Lake', 'Vermont', 'VT', 'Washington', 'Mount Worcester', 44.4022108, -72.5291892, ST_GeomFromText('POINT(44.4022108 -72.5291892)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460326', 'Wormwood Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Barnet', 44.2548701, -72.1155353, ST_GeomFromText('POINT(44.2548701 -72.1155353)', 4326), 44.2542244, -72.1360568, '1980-10-29', '2021-02-03', NULL, NULL, NULL),
  ('1460327', 'Wormwood Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Fairlee', 43.9574505, -72.2450097, ST_GeomFromText('POINT(43.9574505 -72.2450097)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1460328', 'Wright Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Caspian Lake', 44.5981077, -72.3189941, ST_GeomFromText('POINT(44.5981077 -72.3189941)', 4326), 44.6102778, -72.3191667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460330', 'Wright Reservoir', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Hanover', 43.6462247, -72.3496147, ST_GeomFromText('POINT(43.6462247 -72.3496147)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1460332', 'Wrights Mountain', 'Summit', 'Vermont', 'VT', 'Orange', 'East Corinth', 44.0437911, -72.1701759, ST_GeomFromText('POINT(44.0437911 -72.1701759)', 4326), NULL, NULL, '1980-10-29', '2022-09-02', NULL, NULL, NULL),
  ('1460336', 'Wymans Falls', 'Falls', 'Vermont', 'VT', 'Windsor', 'Andover', 43.3106296, -72.625371, ST_GeomFromText('POINT(43.3106296 -72.625371)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460337', 'Yantz Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Essex Junction', 44.417018, -73.053223, ST_GeomFromText('POINT(44.417018 -73.053223)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1460338', 'Yellow Bogs', 'Swamp', 'Vermont', 'VT', 'Essex', 'Bloomfield', 44.8203266, -71.7314813, ST_GeomFromText('POINT(44.8203266 -71.7314813)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460339', 'Yellow Branch Nulhegan River', 'Stream', 'Vermont', 'VT', 'Essex', 'Bloomfield', 44.7639385, -71.7175917, ST_GeomFromText('POINT(44.7639385 -71.7175917)', 4326), 44.8772702, -71.776205, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460340', 'Young Island', 'Island', 'Vermont', 'VT', 'Grand Isle', 'South Hero', 44.7400427, -73.344855, ST_GeomFromText('POINT(44.7400427 -73.344855)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460342', 'Youngman Brook', 'Stream', 'Vermont', 'VT', 'Franklin', 'Highgate Center', 44.9658751, -73.1176294, ST_GeomFromText('POINT(44.9658751 -73.1176294)', 4326), 44.9438889, -73.085, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460343', 'Zack Woods Pond', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Morrisville', 44.610335, -72.5020387, ST_GeomFromText('POINT(44.610335 -72.5020387)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1460344', 'Zebedee Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Lyme', 43.7897923, -72.1970338, ST_GeomFromText('POINT(43.7897923 -72.1970338)', 4326), 43.8280556, -72.2283333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460345', 'Zion Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.686059, -73.1467127, ST_GeomFromText('POINT(43.686059 -73.1467127)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1460346', 'Turkey Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'South Strafford', 43.7594937, -72.3705043, ST_GeomFromText('POINT(43.7594937 -72.3705043)', 4326), NULL, NULL, '2002-08-27', '2022-08-30', 'Official', 'Board Decision', '2011-05-12'),
  ('1460347', 'Mutton Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Mount Philo', 44.3175751, -73.2428108, ST_GeomFromText('POINT(44.3175751 -73.2428108)', 4326), NULL, NULL, '2002-08-27', '2023-11-18', 'Official', 'Board Decision', '1990-01-01'),
  ('1460348', 'Spruce Ridge', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Mount Philo', 44.3222038, -73.2312132, ST_GeomFromText('POINT(44.3222038 -73.2312132)', 4326), NULL, NULL, '2002-08-27', '2023-11-18', 'Official', 'Board Decision', '1990-01-01'),
  ('1460350', 'Witherspoon Hills', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Peacham', 44.2761729, -72.180139, ST_GeomFromText('POINT(44.2761729 -72.180139)', 4326), NULL, NULL, '1991-01-01', '2024-10-03', 'Official', 'Board Decision', '1977-01-01'),
  ('1460351', 'Charleston Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'West Charleston', 44.8916186, -72.0534855, ST_GeomFromText('POINT(44.8916186 -72.0534855)', 4326), NULL, NULL, '1991-01-01', '2019-11-21', 'Official', 'Board Decision', '1971-01-01'),
  ('1460354', 'Warrior Lakes', 'Lake', 'Vermont', 'VT', 'Rutland', 'Sudbury', 43.7625631, -73.1995575, ST_GeomFromText('POINT(43.7625631 -73.1995575)', 4326), NULL, NULL, '1991-01-01', NULL, 'Official', 'Board Decision', '1972-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460355', 'Ball Mountain Lake', 'Reservoir', 'Vermont', 'VT', 'Windham', 'Londonderry', 43.1266405, -72.7792077, ST_GeomFromText('POINT(43.1266405 -72.7792077)', 4326), NULL, NULL, '1991-01-01', '2018-02-18', 'Official', 'Board Decision', '2013-06-13'),
  ('1460357', 'Robert Frost Mountain', 'Summit', 'Vermont', 'VT', 'Addison', 'South Mountain', 44.0208728, -73.0487551, ST_GeomFromText('POINT(44.0208728 -73.0487551)', 4326), NULL, NULL, '1991-01-01', '2018-11-15', 'Official', 'Board Decision', '1964-01-01'),
  ('1460360', 'Robinson Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Roxbury', 44.1117288, -72.6523308, ST_GeomFromText('POINT(44.1117288 -72.6523308)', 4326), 44.1020071, -72.5898284, '1991-01-01', NULL, 'Official', 'Board Decision', '1968-01-01'),
  ('1460361', 'Streeter Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Jacksonville', 42.7527081, -72.8718893, ST_GeomFromText('POINT(42.7527081 -72.8718893)', 4326), NULL, NULL, '1991-01-01', '2022-08-30', 'Official', 'Board Decision', '1974-01-01'),
  ('1460364', 'Mason Island', 'Island', 'Vermont', 'VT', 'Essex', 'Stratford', 44.6842181, -71.5959207, ST_GeomFromText('POINT(44.6842181 -71.5959207)', 4326), NULL, NULL, '1988-12-01', NULL, NULL, NULL, NULL),
  ('1460365', 'Butternut Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Orleans', 44.8109448, -72.2436477, ST_GeomFromText('POINT(44.8109448 -72.2436477)', 4326), NULL, NULL, '1989-07-01', '2022-08-31', 'Official', 'Board Decision', '1989-01-01'),
  ('1460371', 'Willard Stream', 'Stream', 'Vermont', 'VT', 'Essex', 'Monadnock Mountain', 44.9261581, -71.5131402, ST_GeomFromText('POINT(44.9261581 -71.5131402)', 4326), 44.9258333, -71.6033333, '1990-04-01', NULL, NULL, NULL, NULL),
  ('1460378', 'Coaticook Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Morgan Center', 44.937825, -71.8845399, ST_GeomFromText('POINT(44.937825 -71.8845399)', 4326), 44.9897222, -71.8933333, '2002-08-27', NULL, NULL, NULL, NULL),
  ('1460379', 'Duck Pond', 'Lake', 'Vermont', 'VT', 'Orleans', 'Morgan Center OE N', 45.0043484, -71.9305323, ST_GeomFromText('POINT(45.0043484 -71.9305323)', 4326), NULL, NULL, '2002-08-27', '2019-11-21', NULL, NULL, NULL),
  ('1460380', 'Hudson Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Monadnock Mountain', 44.9428247, -71.5381411, ST_GeomFromText('POINT(44.9428247 -71.5381411)', 4326), 44.9336111, -71.5697222, '2002-08-27', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460381', 'Mount John', 'Summit', 'Vermont', 'VT', 'Orleans', 'Morgan Center', 44.9469824, -71.9537063, ST_GeomFromText('POINT(44.9469824 -71.9537063)', 4326), NULL, NULL, '2002-08-27', '2022-08-30', NULL, NULL, NULL),
  ('1460382', 'Mill Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Tinkerville', 44.8678256, -71.5636979, ST_GeomFromText('POINT(44.8678256 -71.5636979)', 4326), 44.9008807, -71.5992547, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460383', 'Page Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Morgan Center', 44.9780931, -71.9734287, ST_GeomFromText('POINT(44.9780931 -71.9734287)', 4326), NULL, NULL, '2002-08-27', '2022-08-31', NULL, NULL, NULL),
  ('1460385', 'The Loon Hole', 'Swamp', 'Vermont', 'VT', 'Washington', 'Morgan Center', 44.9567136, -71.9123181, ST_GeomFromText('POINT(44.9567136 -71.9123181)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460386', 'West Branch Willard Stream', 'Stream', 'Vermont', 'VT', 'Essex', 'Monadnock Mountain', 44.9258804, -71.6028659, ST_GeomFromText('POINT(44.9258804 -71.6028659)', 4326), 44.9286582, -71.6531457, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460387', 'Salt Ash Mountain', 'Summit', 'Vermont', 'VT', 'Windsor', 'Killington Peak', 43.5028391, -72.773987, ST_GeomFromText('POINT(43.5028391 -72.773987)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460389', 'Scotch Burn', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Woodsville', 44.1920071, -72.1012042, ST_GeomFromText('POINT(44.1920071 -72.1012042)', 4326), 44.2186111, -72.1247222, '1991-04-01', NULL, 'Official', 'Board Decision', '1978-01-01'),
  ('1460479', 'The Narrows', 'Gap', 'Vermont', 'VT', 'Rutland', 'Putnam', 43.6611754, -73.4120595, ST_GeomFromText('POINT(43.6611754 -73.4120595)', 4326), NULL, NULL, '1980-10-29', '2012-11-09', NULL, NULL, NULL),
  ('1460480', 'Watch Point', 'Cape', 'Vermont', 'VT', 'Essex', 'Bridport', 43.8861704, -73.3734527, ST_GeomFromText('POINT(43.8861704 -73.3734527)', 4326), NULL, NULL, '1991-12-01', NULL, NULL, NULL, NULL),
  ('1460491', 'Sled Runner Point', 'Cape', 'Vermont', 'VT', 'Chittenden', 'Burlington', 44.4192166, -73.2465157, ST_GeomFromText('POINT(44.4192166 -73.2465157)', 4326), NULL, NULL, '1992-10-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460492', 'Collymer Point', 'Cape', 'Vermont', 'VT', 'Chittenden', 'Burlington', 44.4156056, -73.2451268, ST_GeomFromText('POINT(44.4156056 -73.2451268)', 4326), NULL, NULL, '1992-10-01', NULL, NULL, NULL, NULL),
  ('1460507', 'Kibbe Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'South Hero', 44.6686559, -73.2831864, ST_GeomFromText('POINT(44.6686559 -73.2831864)', 4326), NULL, NULL, '2002-08-27', NULL, 'Official', 'Board Decision', '1992-01-01'),
  ('1460508', 'Bellows Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Newfane', 42.8950812, -72.7362053, ST_GeomFromText('POINT(42.8950812 -72.7362053)', 4326), 42.8720258, -72.7756507, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460509', 'Bresee Mill Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Brandon', 43.7525647, -73.0859443, ST_GeomFromText('POINT(43.7525647 -73.0859443)', 4326), 43.7361758, -73.1142777, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460510', 'Otter Creek', 'Stream', 'Vermont', 'VT', 'Addison', 'Vergennes West', 44.2256084, -73.3248477, ST_GeomFromText('POINT(44.2256084 -73.3248477)', 4326), 43.3747946, -72.997882, '1980-10-29', '2019-10-31', NULL, NULL, NULL),
  ('1460511', 'Abbey Pond', 'Lake', 'Vermont', 'VT', 'Addison', 'South Mountain', 44.0332503, -73.059764, ST_GeomFromText('POINT(44.0332503 -73.059764)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1460513', 'Mount Abraham', 'Summit', 'Vermont', 'VT', 'Addison', 'Lincoln', 44.1204328, -72.9360992, ST_GeomFromText('POINT(44.1204328 -72.9360992)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1460514', 'Acton Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Townshend', 43.1220221, -72.6445372, ST_GeomFromText('POINT(43.1220221 -72.6445372)', 4326), 43.1225, -72.6608333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460515', 'Acton Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Townshend', 43.1205555, -72.6746477, ST_GeomFromText('POINT(43.1205555 -72.6746477)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1460516', 'Adam Pond', 'Lake', 'Vermont', 'VT', 'Windham', 'Jamaica', 43.1081822, -72.7602746, ST_GeomFromText('POINT(43.1081822 -72.7602746)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460517', 'Adams Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'West Dover', 42.9489694, -72.7578727, ST_GeomFromText('POINT(42.9489694 -72.7578727)', 4326), 42.9969444, -72.7983333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460518', 'Adams Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Newfane', 42.8998033, -72.7256495, ST_GeomFromText('POINT(42.8998033 -72.7256495)', 4326), 42.9225808, -72.7517613, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460519', 'Adams Mountain', 'Summit', 'Vermont', 'VT', 'Addison', 'Warren', 44.0434426, -72.8088614, ST_GeomFromText('POINT(44.0434426 -72.8088614)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1460520', 'Adams Reservoir', 'Reservoir', 'Vermont', 'VT', 'Bennington', 'Woodford', 42.8863789, -73.0397429, ST_GeomFromText('POINT(42.8863789 -73.0397429)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1460521', 'Alder Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'South Mountain', 44.0153391, -73.0203929, ST_GeomFromText('POINT(44.0153391 -73.0203929)', 4326), 44.0314501, -72.9945595, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460522', 'Alder Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Lincoln', 44.1156061, -72.9815698, ST_GeomFromText('POINT(44.1156061 -72.9815698)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1460523', 'Alder Meadow Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Hancock', 43.9814523, -72.8448327, ST_GeomFromText('POINT(43.9814523 -72.8448327)', 4326), 44.0347848, -72.8187223, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460525', 'Albee Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Hancock', 43.9722858, -72.8398323, ST_GeomFromText('POINT(43.9722858 -72.8398323)', 4326), 43.9638889, -72.8722222, '1980-10-29', NULL, 'Official', 'Board Decision', '1972-01-01'),
  ('1460526', 'Allen Hill', 'Summit', 'Vermont', 'VT', 'Bennington', 'Stamford', 42.767939, -73.0338494, ST_GeomFromText('POINT(42.767939 -73.0338494)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1460528', 'Appalachian Gap', 'Gap', 'Vermont', 'VT', 'Chittenden', 'Mount Ellen', 44.210891, -72.9315068, ST_GeomFromText('POINT(44.210891 -72.9315068)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460532', 'Arnold Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Sudbury', 43.8339516, -73.1384468, ST_GeomFromText('POINT(43.8339516 -73.1384468)', 4326), 43.8372854, -73.0970573, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460534', 'Atherton Meadow', 'Lake', 'Vermont', 'VT', 'Windham', 'Readsboro', 42.7770452, -72.9092426, ST_GeomFromText('POINT(42.7770452 -72.9092426)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1460535', 'Austin Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Warren', 44.0636728, -72.8553905, ST_GeomFromText('POINT(44.0636728 -72.8553905)', 4326), 44.0450617, -72.9020577, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460536', 'Austin Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Rochester', 43.8708274, -72.8274112, ST_GeomFromText('POINT(43.8708274 -72.8274112)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1460537', 'Baby Stark Mountain', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Mount Ellen', 44.2158081, -72.9292865, ST_GeomFromText('POINT(44.2158081 -72.9292865)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1460538', 'Bailey Falls', 'Falls', 'Vermont', 'VT', 'Addison', 'Bread Loaf', 43.9258968, -72.9431671, ST_GeomFromText('POINT(43.9258968 -72.9431671)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460540', 'Baker Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Mount Carmel', 43.7775655, -72.9698315, ST_GeomFromText('POINT(43.7775655 -72.9698315)', 4326), 43.8155556, -72.9944444, '1980-10-29', NULL, 'Official', 'Board Decision', '1971-01-01'),
  ('1460541', 'Baker Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Newfane', 42.9445251, -72.6806486, ST_GeomFromText('POINT(42.9445251 -72.6806486)', 4326), 42.9975798, -72.7717622, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460542', 'Baker Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Wallingford', 43.3839611, -72.995382, ST_GeomFromText('POINT(43.3839611 -72.995382)', 4326), 43.3667393, -73.0428827, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460543', 'Baker Peak', 'Summit', 'Vermont', 'VT', 'Rutland', 'Danby', 43.3289729, -72.9601377, ST_GeomFromText('POINT(43.3289729 -72.9601377)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460544', 'Bakers Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Mount Ellen', 44.2383901, -72.9681748, ST_GeomFromText('POINT(44.2383901 -72.9681748)', 4326), 44.2266667, -72.9338889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460545', 'Bald Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Bristol', 44.1425494, -73.0303945, ST_GeomFromText('POINT(44.1425494 -73.0303945)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460546', 'Bald Mountain', 'Summit', 'Vermont', 'VT', 'Bennington', 'Bennington', 42.9221277, -73.1437332, ST_GeomFromText('POINT(42.9221277 -73.1437332)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460547', 'Bald Mountain', 'Summit', 'Vermont', 'VT', 'Windham', 'Townshend', 43.0326979, -72.6890749, ST_GeomFromText('POINT(43.0326979 -72.6890749)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1460549', 'Bald Peak', 'Summit', 'Vermont', 'VT', 'Rutland', 'Chittenden', 43.7174162, -72.978598, ST_GeomFromText('POINT(43.7174162 -72.978598)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460551', 'Baldwin Creek', 'Stream', 'Vermont', 'VT', 'Addison', 'Bristol', 44.1320026, -73.050396, ST_GeomFromText('POINT(44.1320026 -73.050396)', 4326), 44.1736696, -72.940395, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460552', 'Baldwin Pond', 'Lake', 'Vermont', 'VT', 'Addison', 'Bristol', 44.2274511, -73.0519022, ST_GeomFromText('POINT(44.2274511 -73.0519022)', 4326), NULL, NULL, '1980-10-29', '2020-01-15', NULL, NULL, NULL),
  ('1460554', 'Ball Mountain', 'Summit', 'Vermont', 'VT', 'Windham', 'Jamaica', 43.1192354, -72.7739839, ST_GeomFromText('POINT(43.1192354 -72.7739839)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460555', 'Ball Mountain Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Jamaica', 43.1028556, -72.7723184, ST_GeomFromText('POINT(43.1028556 -72.7723184)', 4326), 43.0584113, -72.933712, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460556', 'Barber Pond', 'Reservoir', 'Vermont', 'VT', 'Bennington', 'Pownal', 42.7990099, -73.1931582, ST_GeomFromText('POINT(42.7990099 -73.1931582)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460558', 'Bare Hill', 'Summit', 'Vermont', 'VT', 'Bennington', 'Stamford', 42.7522952, -73.0445455, ST_GeomFromText('POINT(42.7522952 -73.0445455)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1460559', 'Barnard Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'East Middlebury', 43.89173, -73.0242793, ST_GeomFromText('POINT(43.89173 -73.0242793)', 4326), 43.9041667, -73.01, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460560', 'Barney Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Bennington', 42.8778568, -73.1856627, ST_GeomFromText('POINT(42.8778568 -73.1856627)', 4326), 42.8642462, -73.1370501, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460563', 'Bartlett Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Rochester', 43.7725665, -72.7626038, ST_GeomFromText('POINT(43.7725665 -72.7626038)', 4326), 43.7445111, -72.7751036, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460564', 'Basin Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Stamford', 42.7795258, -73.0437136, ST_GeomFromText('POINT(42.7795258 -73.0437136)', 4326), 42.7677778, -73.0241667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460565', 'Basin Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Bennington', 42.9625784, -73.1609402, ST_GeomFromText('POINT(42.9625784 -73.1609402)', 4326), 42.9680556, -73.1305556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460566', 'Basin Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Brandon', 43.8186755, -73.0234446, ST_GeomFromText('POINT(43.8186755 -73.0234446)', 4326), 43.8245091, -72.9970553, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460567', 'Batchelder Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Hancock', 43.9914529, -72.7517751, ST_GeomFromText('POINT(43.9914529 -72.7517751)', 4326), 44.0058967, -72.8020544, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460568', 'Batchellor Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Randolph', 43.9722865, -72.7426078, ST_GeomFromText('POINT(43.9722865 -72.7426078)', 4326), 43.9667307, -72.7914977, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460569', 'Battell Mountain', 'Summit', 'Vermont', 'VT', 'Addison', 'Bread Loaf', 43.9855228, -72.9373383, ST_GeomFromText('POINT(43.9855228 -72.9373383)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460573', 'Beane Mountain', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Mount Ellen', 44.226956, -72.9215979, ST_GeomFromText('POINT(44.226956 -72.9215979)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1460575', 'Bear Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Mount Carmel', 43.8406203, -72.9395542, ST_GeomFromText('POINT(43.8406203 -72.9395542)', 4326), 43.8288889, -72.9455556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460576', 'Bear Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Wallingford', 43.4706136, -72.93837, ST_GeomFromText('POINT(43.4706136 -72.93837)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1460577', 'Bear Mountain', 'Summit', 'Vermont', 'VT', 'Windsor', 'Mount Carmel', 43.8702589, -72.9555901, ST_GeomFromText('POINT(43.8702589 -72.9555901)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1460579', 'Beaudry Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Mount Carmel', 43.7770099, -72.9687203, ST_GeomFromText('POINT(43.7770099 -72.9687203)', 4326), 43.7877778, -72.9422222, '1980-10-29', NULL, 'Official', 'Board Decision', '1971-01-01'),
  ('1460580', 'Beaver Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Readsboro', 42.7573044, -72.9839894, ST_GeomFromText('POINT(42.7573044 -72.9839894)', 4326), 42.7672222, -72.9905556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460581', 'Beaver Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'East Middlebury', 43.9661719, -73.1240048, ST_GeomFromText('POINT(43.9661719 -73.1240048)', 4326), 43.9758333, -73.0927778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460582', 'Beaver Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Bristol', 44.1520022, -73.047063, ST_GeomFromText('POINT(44.1520022 -73.047063)', 4326), 44.1863889, -73.0622222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460583', 'Beaver Meadow', 'Lake', 'Vermont', 'VT', 'Bennington', 'Readsboro', 42.7678131, -72.9896225, ST_GeomFromText('POINT(42.7678131 -72.9896225)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1460584', 'Beaver Meadow', 'Swamp', 'Vermont', 'VT', 'Addison', 'South Mountain', 44.0408936, -73.0520607, ST_GeomFromText('POINT(44.0408936 -73.0520607)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460585', 'Beaver Meadow Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Mount Ellen', 44.2197794, -72.9665076, ST_GeomFromText('POINT(44.2197794 -72.9665076)', 4326), 44.2127778, -72.935, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460586', 'Beaver Meadow Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Arlington', 43.0697996, -73.1317728, ST_GeomFromText('POINT(43.0697996 -73.1317728)', 4326), 43.0809106, -73.1042721, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460587', 'Beaver Meadow Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'South Mountain', 44.1103371, -73.0034503, ST_GeomFromText('POINT(44.1103371 -73.0034503)', 4326), 44.1189485, -72.9492827, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460589', 'Beaver Meadows', 'Lake', 'Vermont', 'VT', 'Rutland', 'Mount Carmel', 43.7659685, -72.89476, ST_GeomFromText('POINT(43.7659685 -72.89476)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1460590', 'Beaver Meadows', 'Swamp', 'Vermont', 'VT', 'Bennington', 'Stamford', 42.8661912, -73.0584368, ST_GeomFromText('POINT(42.8661912 -73.0584368)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460591', 'Beaver Meadows', 'Swamp', 'Vermont', 'VT', 'Rutland', 'Weston', 43.372017, -72.8626006, ST_GeomFromText('POINT(43.372017 -72.8626006)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460592', 'Beaver Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.6683943, -72.8544005, ST_GeomFromText('POINT(43.6683943 -72.8544005)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1460593', 'Bee Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Mount Carmel', 43.7950652, -72.9681651, ST_GeomFromText('POINT(43.7950652 -72.9681651)', 4326), 43.8016667, -72.95, '1980-10-29', NULL, 'Official', 'Board Decision', '1972-01-01'),
  ('1460594', 'Beebe Pond', 'Lake', 'Vermont', 'VT', 'Bennington', 'Sunderland', 43.0525406, -73.0326758, ST_GeomFromText('POINT(43.0525406 -73.0326758)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1460595', 'Beech Ridge', 'Ridge', 'Vermont', 'VT', 'Bennington', 'Peru', 43.2203979, -72.9964362, ST_GeomFromText('POINT(43.2203979 -72.9964362)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460598', 'Bemis Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'West Dover', 42.9564692, -72.7620395, ST_GeomFromText('POINT(42.9564692 -72.7620395)', 4326), 42.9822222, -72.795, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460599', 'Benedict Hollow', 'Valley', 'Vermont', 'VT', 'Bennington', 'Arlington', 43.0849679, -73.1956912, ST_GeomFromText('POINT(43.0849679 -73.1956912)', 4326), 43.0596768, -73.2249223, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1460602', 'Bickford Hollow Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Woodford', 42.9089681, -73.1189943, ST_GeomFromText('POINT(42.9089681 -73.1189943)', 4326), 42.9725, -73.1058333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460603', 'Big Black Branch', 'Stream', 'Vermont', 'VT', 'Rutland', 'Danby', 43.367017, -72.9639921, ST_GeomFromText('POINT(43.367017 -72.9639921)', 4326), 43.3867389, -72.9070463, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460604', 'Big Branch', 'Stream', 'Vermont', 'VT', 'Rutland', 'Danby', 43.353684, -72.9901039, ST_GeomFromText('POINT(43.353684 -72.9901039)', 4326), 43.335, -72.9069444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460606', 'Big Mud Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Danby', 43.3147144, -72.9306582, ST_GeomFromText('POINT(43.3147144 -72.9306582)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1460607', 'Big Pond', 'Lake', 'Vermont', 'VT', 'Bennington', 'Woodford', 42.8912051, -73.068416, ST_GeomFromText('POINT(42.8912051 -73.068416)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1460608', 'Big Spruce Mountain', 'Summit', 'Vermont', 'VT', 'Bennington', 'Arlington', 43.0789574, -73.2263212, ST_GeomFromText('POINT(43.0789574 -73.2263212)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460609', 'Bill Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'West Dover', 42.9084139, -72.8470419, ST_GeomFromText('POINT(42.9084139 -72.8470419)', 4326), 42.8841667, -72.8211111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460610', 'Billings Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Chittenden', 43.7400663, -72.9178849, ST_GeomFromText('POINT(43.7400663 -72.9178849)', 4326), 43.7658992, -72.9162188, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460611', 'Billings Pond', 'Lake', 'Vermont', 'VT', 'Bennington', 'Woodford', 42.8940877, -73.0078436, ST_GeomFromText('POINT(42.8940877 -73.0078436)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1460612', 'Bingham Hill', 'Summit', 'Vermont', 'VT', 'Bennington', 'Bennington', 42.9247528, -73.2377478, ST_GeomFromText('POINT(42.9247528 -73.2377478)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460613', 'Bingo Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Rochester', 43.8600648, -72.8712196, ST_GeomFromText('POINT(43.8600648 -72.8712196)', 4326), 43.9061748, -72.9515002, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460615', 'Binney Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Readsboro', 42.8720253, -72.8864873, ST_GeomFromText('POINT(42.8720253 -72.8864873)', 4326), 42.9109136, -72.9167662, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460617', 'Birch Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Brandon', 43.7975062, -73.0339268, ST_GeomFromText('POINT(43.7975062 -73.0339268)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460618', 'Black Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Sunderland', 43.008967, -73.1128835, ST_GeomFromText('POINT(43.008967 -73.1128835)', 4326), 43.025, -73.1002778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460619', 'Black Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Stratton Mountain', 43.0453559, -72.9689907, ST_GeomFromText('POINT(43.0453559 -72.9689907)', 4326), 43.0727778, -72.9977778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460620', 'Blair Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Hancock', 43.9397772, -72.8562196, ST_GeomFromText('POINT(43.9397772 -72.8562196)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460621', 'Blind Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Woodford', 42.9853566, -73.0098251, ST_GeomFromText('POINT(42.9853566 -73.0098251)', 4326), 43.0023006, -73.053993, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460622', 'Bloodroot Gap', 'Gap', 'Vermont', 'VT', 'Rutland', 'Mount Carmel', 43.8022875, -72.9423313, ST_GeomFromText('POINT(43.8022875 -72.9423313)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460623', 'Bloodroot Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Mount Carmel', 43.7857485, -72.9371547, ST_GeomFromText('POINT(43.7857485 -72.9371547)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1460625', 'Blue Bank Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Lincoln', 44.0445056, -72.9584479, ST_GeomFromText('POINT(44.0445056 -72.9584479)', 4326), 44.0277778, -72.9816667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460626', 'Blue Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'West Dover', 42.9473022, -72.8698206, ST_GeomFromText('POINT(42.9473022 -72.8698206)', 4326), 42.9948014, -72.8917659, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460627', 'Blue Ridge Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Chittenden', 43.6780644, -72.9017399, ST_GeomFromText('POINT(43.6780644 -72.9017399)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460628', 'Blueberry Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Chittenden', 43.6772804, -72.9631615, ST_GeomFromText('POINT(43.6772804 -72.9631615)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460629', 'Boiling Spring', 'Spring', 'Vermont', 'VT', 'Rutland', 'Mount Carmel', 43.7747879, -72.9373306, ST_GeomFromText('POINT(43.7747879 -72.9373306)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460630', 'Bolles Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Woodford', 42.9089681, -73.1189943, ST_GeomFromText('POINT(42.9089681 -73.1189943)', 4326), 42.9736111, -73.0858333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460631', 'Bond Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Mount Snow', 42.8814695, -72.9484337, ST_GeomFromText('POINT(42.8814695 -72.9484337)', 4326), 42.8783333, -72.9819444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460632', 'Bourn Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Manchester', 43.1675763, -73.0542709, ST_GeomFromText('POINT(43.1675763 -73.0542709)', 4326), 43.1095214, -73.0012141, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460633', 'Bourn Pond', 'Lake', 'Vermont', 'VT', 'Bennington', 'Sunderland', 43.1057363, -73.0019191, ST_GeomFromText('POINT(43.1057363 -73.0019191)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460635', 'Boutwell Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Delectable Mountain', 43.7378448, -72.7342689, ST_GeomFromText('POINT(43.7378448 -72.7342689)', 4326), 43.7445112, -72.7662144, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460637', 'Boyce Mountain', 'Summit', 'Vermont', 'VT', 'Addison', 'Bread Loaf', 43.9737451, -72.9407978, ST_GeomFromText('POINT(43.9737451 -72.9407978)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460639', 'Boyd Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Readsboro', 42.8434146, -72.9020432, ST_GeomFromText('POINT(42.8434146 -72.9020432)', 4326), 42.8561111, -72.9122222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460640', 'Boyden Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Bread Loaf', 43.9292304, -72.9017773, ST_GeomFromText('POINT(43.9292304 -72.9017773)', 4326), 43.9069444, -72.8966667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460641', 'Brackett Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Hancock', 43.9870085, -72.7498305, ST_GeomFromText('POINT(43.9870085 -72.7498305)', 4326), 43.9833333, -72.8, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460642', 'Bradley Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Warren', 44.1186716, -72.8573365, ST_GeomFromText('POINT(44.1186716 -72.8573365)', 4326), 44.1214488, -72.9120599, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460643', 'Braintree Gap', 'Gap', 'Vermont', 'VT', 'Addison', 'Hancock', 43.973675, -72.7976092, ST_GeomFromText('POINT(43.973675 -72.7976092)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460644', 'Braintree Mountain', 'Summit', 'Vermont', 'VT', 'Orange', 'Hancock', 43.9530061, -72.7852101, ST_GeomFromText('POINT(43.9530061 -72.7852101)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460645', 'Branch Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Ludlow', 43.4181274, -72.7028743, ST_GeomFromText('POINT(43.4181274 -72.7028743)', 4326), 43.3897945, -72.7653758, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460646', 'Branch Pond', 'Lake', 'Vermont', 'VT', 'Bennington', 'Sunderland', 43.0810883, -73.0192512, ST_GeomFromText('POINT(43.0810883 -73.0192512)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460647', 'Branch Pond Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Sunderland', 43.0523, -73.0517708, ST_GeomFromText('POINT(43.0523 -73.0517708)', 4326), 43.0797222, -73.0216667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460650', 'Brandon Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Rochester', 43.8600648, -72.8714973, ST_GeomFromText('POINT(43.8600648 -72.8714973)', 4326), 43.8406202, -72.9631659, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460652', 'Brandon Gap', 'Gap', 'Vermont', 'VT', 'Addison', 'Mount Carmel', 43.8400646, -72.9676105, ST_GeomFromText('POINT(43.8400646 -72.9676105)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460654', 'Brandy Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'East Middlebury', 43.9539515, -73.002058, ST_GeomFromText('POINT(43.9539515 -73.002058)', 4326), 43.9645072, -72.9590016, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460656', 'Bread Loaf Mountain', 'Summit', 'Vermont', 'VT', 'Addison', 'Lincoln', 44.0021521, -72.9416037, ST_GeomFromText('POINT(44.0021521 -72.9416037)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1460657', 'Breakneck Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Rochester', 43.8222879, -72.7912168, ST_GeomFromText('POINT(43.8222879 -72.7912168)', 4326), 43.8492324, -72.7431605, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460658', 'Brewers Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Chittenden', 43.6425678, -72.8917715, ST_GeomFromText('POINT(43.6425678 -72.8917715)', 4326), 43.6142351, -72.8270471, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460660', 'Brimstone Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.6592346, -72.7703797, ST_GeomFromText('POINT(43.6592346 -72.7703797)', 4326), 43.6575, -72.7555556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460662', 'Bristol Flats', 'Flat', 'Vermont', 'VT', 'Addison', 'South Mountain', 44.1153359, -73.094563, ST_GeomFromText('POINT(44.1153359 -73.094563)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460663', 'Bristol Rock', 'Pillar', 'Vermont', 'VT', 'Addison', 'Bristol', 44.1295025, -73.0695629, ST_GeomFromText('POINT(44.1295025 -73.0695629)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460664', 'Broad Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Williamstown', 42.7384132, -73.2164962, ST_GeomFromText('POINT(42.7384132 -73.2164962)', 4326), 42.7995244, -73.1501058, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460665', 'Bromley Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Manchester', 43.1628541, -73.0359372, ST_GeomFromText('POINT(43.1628541 -73.0359372)', 4326), 43.2200754, -72.9467683, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460667', 'Bromley Mountain', 'Summit', 'Vermont', 'VT', 'Bennington', 'Peru', 43.2275692, -72.939398, ST_GeomFromText('POINT(43.2275692 -72.939398)', 4326), NULL, NULL, '1980-10-29', '2018-11-14', NULL, NULL, NULL),
  ('1460671', 'Brown Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Stamford', 42.7589703, -73.0648252, ST_GeomFromText('POINT(42.7589703 -73.0648252)', 4326), 42.78, -73.0691667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460672', 'Brown Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Rochester', 43.7745108, -72.7734375, ST_GeomFromText('POINT(43.7745108 -72.7734375)', 4326), 43.7641667, -72.7894444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460673', 'Bryant Mountain', 'Summit', 'Vermont', 'VT', 'Addison', 'East Middlebury', 43.9428859, -73.0799791, ST_GeomFromText('POINT(43.9428859 -73.0799791)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460674', 'Buck Hill', 'Summit', 'Vermont', 'VT', 'Bennington', 'Arlington', 43.0881397, -73.2449585, ST_GeomFromText('POINT(43.0881397 -73.2449585)', 4326), NULL, NULL, '1980-10-29', '2020-10-21', NULL, NULL, NULL),
  ('1460675', 'Buckball Peak', 'Summit', 'Vermont', 'VT', 'Rutland', 'Danby', 43.3431199, -72.9426012, ST_GeomFromText('POINT(43.3431199 -72.9426012)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460676', 'Bucks Cobble', 'Summit', 'Vermont', 'VT', 'Bennington', 'Bennington', 42.9536682, -73.1752604, ST_GeomFromText('POINT(42.9536682 -73.1752604)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460677', 'Bullhead Pond', 'Lake', 'Vermont', 'VT', 'Bennington', 'Manchester', 43.2090075, -73.0171544, ST_GeomFromText('POINT(43.2090075 -73.0171544)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460678', 'Bulls Head', 'Pillar', 'Vermont', 'VT', 'Bennington', 'Sunderland', 43.0611886, -73.1164946, ST_GeomFromText('POINT(43.0611886 -73.1164946)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460680', 'Burnell Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Brandon', 43.833682, -73.0764003, ST_GeomFromText('POINT(43.833682 -73.0764003)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1460681', 'Burnt Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Bread Loaf', 43.9567143, -72.9474846, ST_GeomFromText('POINT(43.9567143 -72.9474846)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460683', 'Burnt Meadow Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Londonderry', 43.228131, -72.8403764, ST_GeomFromText('POINT(43.228131 -72.8403764)', 4326), 43.2350752, -72.8889889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460684', 'Burnt Mountain', 'Summit', 'Vermont', 'VT', 'Washington', 'Warren', 44.1225521, -72.7817782, ST_GeomFromText('POINT(44.1225521 -72.7817782)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1460685', 'Burr Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Chittenden', 43.693207, -72.9658437, ST_GeomFromText('POINT(43.693207 -72.9658437)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1460690', 'Button Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Wallingford', 43.4772838, -72.9167683, ST_GeomFromText('POINT(43.4772838 -72.9167683)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1460691', 'Cahee Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Randolph', 43.9675643, -72.7423299, ST_GeomFromText('POINT(43.9675643 -72.7423299)', 4326), 43.9600641, -72.7853863, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460698', 'Camp Meadows', 'Swamp', 'Vermont', 'VT', 'Bennington', 'Stamford', 42.8484136, -73.0656591, ST_GeomFromText('POINT(42.8484136 -73.0656591)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460700', 'Cape Lookoff Mountain', 'Summit', 'Vermont', 'VT', 'Addison', 'Mount Carmel', 43.855611, -72.9726096, ST_GeomFromText('POINT(43.855611 -72.9726096)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460701', 'Cardinal Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Stamford', 42.7781365, -73.0859371, ST_GeomFromText('POINT(42.7781365 -73.0859371)', 4326), 42.7975, -73.1061111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460704', 'Mount Carmel', 'Summit', 'Vermont', 'VT', 'Rutland', 'Mount Carmel', 43.7742236, -72.9201066, ST_GeomFromText('POINT(43.7742236 -72.9201066)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1460705', 'Carpenter Hill', 'Summit', 'Vermont', 'VT', 'Bennington', 'Pownal', 42.8318118, -73.2157447, ST_GeomFromText('POINT(42.8318118 -73.2157447)', 4326), NULL, NULL, '1980-10-29', '2018-11-14', NULL, NULL, NULL),
  ('1460706', 'Caryl Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Rochester', 43.7772882, -72.8584397, ST_GeomFromText('POINT(43.7772882 -72.8584397)', 4326), 43.7728436, -72.9112188, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460708', 'Castle Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Mount Snow', 42.9509127, -72.9878798, ST_GeomFromText('POINT(42.9509127 -72.9878798)', 4326), 42.9384127, -73.0234363, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460709', 'Castle Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Readsboro', 42.8670032, -72.890553, ST_GeomFromText('POINT(42.8670032 -72.890553)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1460710', 'Castle Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Brandon', 43.7536666, -73.1034432, ST_GeomFromText('POINT(43.7536666 -73.1034432)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460711', 'Castle Meadow', 'Swamp', 'Vermont', 'VT', 'Bennington', 'Woodford', 42.935635, -73.0203806, ST_GeomFromText('POINT(42.935635 -73.0203806)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460712', 'Catamount Cobble', 'Ridge', 'Vermont', 'VT', 'Bennington', 'Sunderland', 43.030038, -73.1094218, ST_GeomFromText('POINT(43.030038 -73.1094218)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1460715', 'Chaffee Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Brandon', 43.7847785, -73.0023311, ST_GeomFromText('POINT(43.7847785 -73.0023311)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460716', 'Chamberlain Glen', 'Valley', 'Vermont', 'VT', 'Chittenden', 'Mount Ellen', 44.2111061, -72.9337475, ST_GeomFromText('POINT(44.2111061 -72.9337475)', 4326), 44.2098945, -72.9328225, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1460717', 'Chandler Ridge', 'Ridge', 'Vermont', 'VT', 'Addison', 'East Middlebury', 43.8779585, -73.0522716, ST_GeomFromText('POINT(43.8779585 -73.0522716)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460719', 'Chase Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Waitsfield', 44.1850589, -72.8715051, ST_GeomFromText('POINT(44.1850589 -72.8715051)', 4326), 44.1814474, -72.9148392, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460720', 'Cheney Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'West Dover', 42.9475801, -72.8442642, ST_GeomFromText('POINT(42.9475801 -72.8442642)', 4326), 42.9816667, -72.8508333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460721', 'Childs Mountain', 'Summit', 'Vermont', 'VT', 'Addison', 'Bread Loaf', 43.9644989, -72.8803873, ST_GeomFromText('POINT(43.9644989 -72.8803873)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460724', 'Chittenden Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Mount Carmel', 43.8525648, -72.8970534, ST_GeomFromText('POINT(43.8525648 -72.8970534)', 4326), 43.8227778, -72.9413889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460728', 'Chittenden Reservoir', 'Reservoir', 'Vermont', 'VT', 'Rutland', 'Chittenden', 43.7309362, -72.9109203, ST_GeomFromText('POINT(43.7309362 -72.9109203)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1460729', 'City Stream', 'Stream', 'Vermont', 'VT', 'Bennington', 'Bennington', 42.8975792, -73.1281612, ST_GeomFromText('POINT(42.8975792 -73.1281612)', 4326), 42.8848021, -73.0595481, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460730', 'Clara Lake', 'Lake', 'Vermont', 'VT', 'Windham', 'Readsboro', 42.7960435, -72.8791064, ST_GeomFromText('POINT(42.7960435 -72.8791064)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1460731', 'Clark Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Hancock', 43.9739524, -72.8426102, ST_GeomFromText('POINT(43.9739524 -72.8426102)', 4326), 43.9858333, -72.8211111, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460732', 'Clark Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Bread Loaf', 43.9953408, -72.8773337, ST_GeomFromText('POINT(43.9953408 -72.8773337)', 4326), 44.016729, -72.9117794, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460734', 'Clay Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Waitsfield', 44.1372824, -72.8448368, ST_GeomFromText('POINT(44.1372824 -72.8448368)', 4326), 44.1428372, -72.9206717, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460735', 'Mount Cleveland', 'Summit', 'Vermont', 'VT', 'Addison', 'Lincoln', 44.0461578, -72.9079789, ST_GeomFromText('POINT(44.0461578 -72.9079789)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1460736', 'Cobb Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Jamaica', 43.1242441, -72.7650961, ST_GeomFromText('POINT(43.1242441 -72.7650961)', 4326), 43.1881318, -72.7492625, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460737', 'Cobb Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Lincoln', 44.033108, -72.9853913, ST_GeomFromText('POINT(44.033108 -72.9853913)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1460738', 'Cobble Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Londonderry', 43.2443456, -72.7729905, ST_GeomFromText('POINT(43.2443456 -72.7729905)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1460739', 'Cobble Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Hancock', 43.9114444, -72.8339962, ST_GeomFromText('POINT(43.9114444 -72.8339962)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460742', 'Cold Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'West Dover', 42.8961918, -72.8556532, ST_GeomFromText('POINT(42.8961918 -72.8556532)', 4326), 42.9523019, -72.9164887, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460743', 'Cold Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Rochester', 43.8122881, -72.7842719, ST_GeomFromText('POINT(43.8122881 -72.7842719)', 4326), 43.8220104, -72.7426044, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460744', 'Cold Spring Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Hoosick Falls', 42.9345225, -73.2642761, ST_GeomFromText('POINT(42.9345225 -73.2642761)', 4326), 42.9661892, -73.2248308, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460745', 'Cole Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Sunderland', 43.0797995, -73.113439, ST_GeomFromText('POINT(43.0797995 -73.113439)', 4326), 43.0697222, -73.0830556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460746', 'Cole Pond', 'Lake', 'Vermont', 'VT', 'Windham', 'Londonderry', 43.147871, -72.8059534, ST_GeomFromText('POINT(43.147871 -72.8059534)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', 'Official', 'Board Decision', '1938-01-01'),
  ('1460747', 'College Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Jamaica', 43.1022304, -72.8196298, ST_GeomFromText('POINT(43.1022304 -72.8196298)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460749', 'Colton Pond', 'Reservoir', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.697627, -72.8197206, ST_GeomFromText('POINT(43.697627 -72.8197206)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1460750', 'Colvin Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Dorset', 43.3597862, -73.0384369, ST_GeomFromText('POINT(43.3597862 -73.0384369)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460751', 'Cook Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Londonderry', 43.15841, -72.8050974, ST_GeomFromText('POINT(43.15841 -72.8050974)', 4326), 43.2161866, -72.8934335, '1980-10-29', NULL, 'Official', 'Board Decision', '1959-01-01'),
  ('1460752', 'Cook Hollow', 'Valley', 'Vermont', 'VT', 'Bennington', 'Manchester', 43.1457747, -73.0997585, ST_GeomFromText('POINT(43.1457747 -73.0997585)', 4326), 43.1595557, -73.1073809, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1460756', 'Coolidge Range', 'Range', 'Vermont', 'VT', 'Rutland', 'Killington Peak', 43.5759531, -72.8019894, ST_GeomFromText('POINT(43.5759531 -72.8019894)', 4326), NULL, NULL, '1980-10-29', '2018-11-20', NULL, NULL, NULL),
  ('1460757', 'Cooper Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'West Dover', 42.9504511, -72.8222898, ST_GeomFromText('POINT(42.9504511 -72.8222898)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1460758', 'Copperas Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Mount Holly', 43.4947873, -72.8667517, ST_GeomFromText('POINT(43.4947873 -72.8667517)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460759', 'Corbett Hollow', 'Valley', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.1881239, -73.132689, ST_GeomFromText('POINT(43.1881239 -73.132689)', 4326), 43.1726865, -73.1175797, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1460760', 'Corporation Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Rochester', 43.8503429, -72.84983, ST_GeomFromText('POINT(43.8503429 -72.84983)', 4326), 43.821732, -72.8806634, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460761', 'Corporation Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Mount Carmel', 43.829223, -72.8789955, ST_GeomFromText('POINT(43.829223 -72.8789955)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1460762', 'Cota Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Lincoln', 44.0897822, -72.9806716, ST_GeomFromText('POINT(44.0897822 -72.9806716)', 4326), 44.0958333, -72.9319444, '1980-10-29', NULL, 'Official', 'Board Decision', '1972-01-01'),
  ('1460763', 'Cowan Branch', 'Stream', 'Vermont', 'VT', 'Bennington', 'North Adams', 42.7423032, -73.116771, ST_GeomFromText('POINT(42.7423032 -73.116771)', 4326), 42.7639695, -73.1287161, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460764', 'Crane Mountain', 'Summit', 'Vermont', 'VT', 'Windham', 'Townshend', 43.0450473, -72.6323304, ST_GeomFromText('POINT(43.0450473 -72.6323304)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1460765', 'Crazy John Stream', 'Stream', 'Vermont', 'VT', 'Bennington', 'Stamford', 42.7920257, -73.0314911, ST_GeomFromText('POINT(42.7920257 -73.0314911)', 4326), 42.8169444, -73.0425, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460766', 'Crystal Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Bread Loaf', 43.9433963, -72.9678903, ST_GeomFromText('POINT(43.9433963 -72.9678903)', 4326), 43.9475, -72.9525, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460767', 'Mount Cushman', 'Summit', 'Vermont', 'VT', 'Windsor', 'Hancock', 43.8975561, -72.7648276, ST_GeomFromText('POINT(43.8975561 -72.7648276)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460771', 'Cutts Peak', 'Summit', 'Vermont', 'VT', 'Washington', 'Mount Ellen', 44.1537227, -72.9279711, ST_GeomFromText('POINT(44.1537227 -72.9279711)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460772', 'Daley Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Manchester', 43.2422978, -73.1148277, ST_GeomFromText('POINT(43.2422978 -73.1148277)', 4326), 43.24452, -73.1334392, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460773', 'Dana Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Waitsfield', 44.1700505, -72.8531698, ST_GeomFromText('POINT(44.1700505 -72.8531698)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1460776', 'Danby Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Dorset', 43.3704289, -73.0329437, ST_GeomFromText('POINT(43.3704289 -73.0329437)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460777', 'Danby Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Dorset', 43.364812, -73.0520381, ST_GeomFromText('POINT(43.364812 -73.0520381)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1460779', 'Daves Peak', 'Summit', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.7322006, -72.8709754, ST_GeomFromText('POINT(43.7322006 -72.8709754)', 4326), NULL, NULL, '1980-10-29', '2018-11-14', NULL, NULL, NULL),
  ('1460781', 'Deer Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Waitsfield', 44.2453353, -72.8740068, ST_GeomFromText('POINT(44.2453353 -72.8740068)', 4326), 44.2583902, -72.9012298, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460782', 'Deer Cabin Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Woodford', 42.970079, -73.0051027, ST_GeomFromText('POINT(42.970079 -73.0051027)', 4326), 42.9477778, -73.0558333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460783', 'Deer Hollow Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Warren', 44.0175627, -72.8501114, ST_GeomFromText('POINT(44.0175627 -72.8501114)', 4326), 44.0342288, -72.878168, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460784', 'Deer Knoll', 'Summit', 'Vermont', 'VT', 'Bennington', 'Manchester', 43.1588189, -73.0953192, ST_GeomFromText('POINT(43.1588189 -73.0953192)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1460785', 'Deer Leap Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.6702077, -72.8360936, ST_GeomFromText('POINT(43.6702077 -72.8360936)', 4326), NULL, NULL, '1980-10-29', '2018-11-14', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460786', 'Deer Leap Rock', 'Summit', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.6662398, -72.8319579, ST_GeomFromText('POINT(43.6662398 -72.8319579)', 4326), NULL, NULL, '1980-10-29', '2018-11-14', NULL, NULL, NULL),
  ('1460787', 'Deer Lick Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Woodford', 42.9795233, -73.0084362, ST_GeomFromText('POINT(42.9795233 -73.0084362)', 4326), 42.9955556, -73.0636111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460788', 'Deerfield River', 'Stream', 'Massachusetts', 'MA', 'Franklin', 'Greenfield', 42.577917, -72.5779957, ST_GeomFromText('POINT(42.577917 -72.5779957)', 4326), 43.0423626, -72.9947475, '1974-02-24', '2021-02-04', NULL, NULL, NULL),
  ('1460791', 'Devils Den', 'Gap', 'Vermont', 'VT', 'Rutland', 'Danby', 43.3447953, -72.8823231, ST_GeomFromText('POINT(43.3447953 -72.8823231)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460793', 'Dog River', 'Stream', 'Vermont', 'VT', 'Washington', 'Montpelier', 44.2564482, -72.6009435, ST_GeomFromText('POINT(44.2564482 -72.6009435)', 4326), 44.1175612, -72.7795572, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460795', 'Dorset Hill', 'Summit', 'Vermont', 'VT', 'Bennington', 'Dorset', 43.260769, -73.0328804, ST_GeomFromText('POINT(43.260769 -73.0328804)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460796', 'Dorset Hollow', 'Valley', 'Vermont', 'VT', 'Bennington', 'Dorset', 43.2603495, -73.0869629, ST_GeomFromText('POINT(43.2603495 -73.0869629)', 4326), 43.2857053, -73.0467684, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460797', 'Dorset Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Dorset', 43.3092317, -73.0281585, ST_GeomFromText('POINT(43.3092317 -73.0281585)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460798', 'Dorset Peak', 'Summit', 'Vermont', 'VT', 'Rutland', 'Dorset', 43.3093192, -73.0280867, ST_GeomFromText('POINT(43.3093192 -73.0280867)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460800', 'Double Top Mountain', 'Summit', 'Vermont', 'VT', 'Washington', 'Waitsfield', 44.1294889, -72.8668519, ST_GeomFromText('POINT(44.1294889 -72.8668519)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460801', 'Doubleday Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.7043786, -72.8085184, ST_GeomFromText('POINT(43.7043786 -72.8085184)', 4326), NULL, NULL, '1980-10-29', '2018-11-14', NULL, NULL, NULL),
  ('1460803', 'Dover Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Jamaica', 43.0306344, -72.8520426, ST_GeomFromText('POINT(43.0306344 -72.8520426)', 4326), 43.0097222, -72.8705556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460805', 'Dow Pond', 'Reservoir', 'Vermont', 'VT', 'Addison', 'South Mountain', 44.0147593, -73.0976393, ST_GeomFromText('POINT(44.0147593 -73.0976393)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1460806', 'Downer Glen', 'Valley', 'Vermont', 'VT', 'Bennington', 'Manchester', 43.1584705, -73.0204281, ST_GeomFromText('POINT(43.1584705 -73.0204281)', 4326), 43.1493212, -72.9975706, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1460808', 'Dowsville Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Waitsfield', 44.2428363, -72.7726163, ST_GeomFromText('POINT(44.2428363 -72.7726163)', 4326), 44.2878345, -72.8534519, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460809', 'Dragon Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'East Middlebury', 43.9783948, -73.0534483, ST_GeomFromText('POINT(43.9783948 -73.0534483)', 4326), 44.006172, -73.0640045, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460810', 'Dry Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Arlington', 43.0742441, -73.1653847, ST_GeomFromText('POINT(43.0742441 -73.1653847)', 4326), 43.0516667, -73.2105556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460811', 'Dry Brook Hollow', 'Valley', 'Vermont', 'VT', 'Bennington', 'Arlington', 43.0464406, -73.1694333, ST_GeomFromText('POINT(43.0464406 -73.1694333)', 4326), 43.0527117, -73.2112059, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1460812', 'Dufresne Pond', 'Reservoir', 'Vermont', 'VT', 'Bennington', 'Manchester', 43.1801218, -73.0279329, ST_GeomFromText('POINT(43.1801218 -73.0279329)', 4326), NULL, NULL, '1980-10-29', '2020-11-25', NULL, NULL, NULL),
  ('1460814', 'Dunham Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Hancock', 43.9856197, -72.7498305, ST_GeomFromText('POINT(43.9856197 -72.7498305)', 4326), 43.9758333, -72.7958333, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460815', 'Lake Dunmore', 'Lake', 'Vermont', 'VT', 'Addison', 'East Middlebury', 43.9025733, -73.0752409, ST_GeomFromText('POINT(43.9025733 -73.0752409)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1460816', 'Dunville Hollow', 'Valley', 'Vermont', 'VT', 'Bennington', 'Woodford', 42.8771947, -73.1166497, ST_GeomFromText('POINT(42.8771947 -73.1166497)', 4326), 42.852709, -73.0971123, '1980-10-29', '2018-08-01', 'Official', 'Board Decision', '1897-01-01'),
  ('1460817', 'Dutch Hill', 'Summit', 'Vermont', 'VT', 'Bennington', 'Readsboro', 42.8155077, -72.9996398, ST_GeomFromText('POINT(42.8155077 -72.9996398)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1460818', 'Dutton Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'East Middlebury', 43.9017296, -73.0417798, ST_GeomFromText('POINT(43.9017296 -73.0417798)', 4326), 43.8916667, -73.0011111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460822', 'East Branch Deerfield River', 'Stream', 'Vermont', 'VT', 'Windham', 'Mount Snow', 42.9109135, -72.9464893, ST_GeomFromText('POINT(42.9109135 -72.9464893)', 4326), 43.0836886, -72.9551016, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460823', 'East Creek', 'Stream', 'Vermont', 'VT', 'Rutland', 'Rutland', 43.6017349, -72.9926069, ST_GeomFromText('POINT(43.6017349 -72.9926069)', 4326), 43.7231221, -72.9234404, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460827', 'East Granville Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Warren', 44.0167302, -72.7584426, ST_GeomFromText('POINT(44.0167302 -72.7584426)', 4326), 44.0380556, -72.8083333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460833', 'East Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.6526586, -72.7520586, ST_GeomFromText('POINT(43.6526586 -72.7520586)', 4326), NULL, NULL, '1980-10-29', '2018-11-14', NULL, NULL, NULL),
  ('1460834', 'East Mountain', 'Summit', 'Vermont', 'VT', 'Addison', 'Bristol', 44.2143813, -73.0367711, ST_GeomFromText('POINT(44.2143813 -73.0367711)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460839', 'Eddy Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Londonderry', 43.1870205, -72.8514877, ST_GeomFromText('POINT(43.1870205 -72.8514877)', 4326), 43.2017425, -72.8953779, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460841', 'Elbow Swamp', 'Swamp', 'Vermont', 'VT', 'Rutland', 'Danby', 43.3267401, -72.948158, ST_GeomFromText('POINT(43.3267401 -72.948158)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460842', 'Elfin Lake', 'Lake', 'Vermont', 'VT', 'Rutland', 'Wallingford', 43.4683726, -72.9880759, ST_GeomFromText('POINT(43.4683726 -72.9880759)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1460843', 'Mount Ellen', 'Summit', 'Vermont', 'VT', 'Washington', 'Mount Ellen', 44.16005, -72.9288358, ST_GeomFromText('POINT(44.16005 -72.9288358)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1460844', 'Ellis Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'West Dover', 42.9178583, -72.8389861, ST_GeomFromText('POINT(42.9178583 -72.8389861)', 4326), 42.9830556, -72.8594444, '1980-10-29', '2016-12-19', NULL, NULL, NULL),
  ('1460845', 'Ellis Mine Hollow', 'Valley', 'Vermont', 'VT', 'Bennington', 'Pownal', 42.7644015, -73.2438934, ST_GeomFromText('POINT(42.7644015 -73.2438934)', 4326), 42.7677115, -73.2777223, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1460847', 'Elwin Meadow', 'Lake', 'Vermont', 'VT', 'Windham', 'West Dover', 42.9717306, -72.7558307, ST_GeomFromText('POINT(42.9717306 -72.7558307)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1460848', 'Emerald Lake', 'Lake', 'Vermont', 'VT', 'Bennington', 'Dorset', 43.2739265, -73.0061849, ST_GeomFromText('POINT(43.2739265 -73.0061849)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', 'Official', 'Board Decision', '1938-01-01'),
  ('1460854', 'Equinox Pond', 'Lake', 'Vermont', 'VT', 'Bennington', 'Manchester', 43.15576, -73.0893955, ST_GeomFromText('POINT(43.15576 -73.0893955)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1460857', 'Fair Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Townshend', 43.0509123, -72.6998161, ST_GeomFromText('POINT(43.0509123 -72.6998161)', 4326), 43.042579, -72.7525952, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460860', 'Fall Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Dorset', 43.3678505, -73.0981614, ST_GeomFromText('POINT(43.3678505 -73.0981614)', 4326), 43.35, -73.0844444, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460861', 'Falls Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Bread Loaf', 43.8850641, -72.942333, ST_GeomFromText('POINT(43.8850641 -72.942333)', 4326), 43.8786111, -72.9719444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460862', 'Farnum Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Peru', 43.2447973, -72.8750998, ST_GeomFromText('POINT(43.2447973 -72.8750998)', 4326), 43.2391667, -72.9213889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460863', 'Farr Peak', 'Summit', 'Vermont', 'VT', 'Rutland', 'Mount Carmel', 43.8091981, -72.9439937, ST_GeomFromText('POINT(43.8091981 -72.9439937)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', 'Official', 'Board Decision', '1940-01-01'),
  ('1460867', 'Fayville Branch', 'Stream', 'Vermont', 'VT', 'Bennington', 'Arlington', 43.0636886, -73.1442731, ST_GeomFromText('POINT(43.0636886 -73.1442731)', 4326), 42.9911895, -73.0814937, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460868', 'Felchner Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Roxbury', 44.1170061, -72.7048328, ST_GeomFromText('POINT(44.1170061 -72.7048328)', 4326), 44.1422829, -72.7653909, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460869', 'Fern Lake', 'Lake', 'Vermont', 'VT', 'Addison', 'Brandon', 43.8670063, -73.0698097, ST_GeomFromText('POINT(43.8670063 -73.0698097)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1460871', 'Fifield Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Wallingford', 43.4056422, -72.8866551, ST_GeomFromText('POINT(43.4056422 -72.8866551)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1460873', 'Fire Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'East Middlebury', 43.9908948, -73.0390038, ST_GeomFromText('POINT(43.9908948 -73.0390038)', 4326), 44.0167276, -73.0465045, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460875', 'Fletcher Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Delectable Mountain', 43.7370115, -72.7237131, ST_GeomFromText('POINT(43.7370115 -72.7237131)', 4326), 43.6989563, -72.7728804, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460876', 'Flint Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Roxbury', 44.0720068, -72.7448328, ST_GeomFromText('POINT(44.0720068 -72.7448328)', 4326), 44.0842284, -72.7962232, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460877', 'Flood Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Londonderry', 43.2111868, -72.8259315, ST_GeomFromText('POINT(43.2111868 -72.8259315)', 4326), 43.2631303, -72.9303792, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460878', 'Flower Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Pawlet', 43.3470177, -73.1809405, ST_GeomFromText('POINT(43.3470177 -73.1809405)', 4326), 43.4036829, -73.0662167, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460879', 'Folsom Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Waitsfield', 44.1250607, -72.8103913, ST_GeomFromText('POINT(44.1250607 -72.8103913)', 4326), 44.1275, -72.7863889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460881', 'Forester Pond', 'Lake', 'Vermont', 'VT', 'Windham', 'Jamaica', 43.0816413, -72.8671844, ST_GeomFromText('POINT(43.0816413 -72.8671844)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1460883', 'Freeman Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Warren', 44.1142273, -72.8567808, ST_GeomFromText('POINT(44.1142273 -72.8567808)', 4326), 44.0894444, -72.7955556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460884', 'Freeman Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Wallingford', 43.4740971, -72.87651, ST_GeomFromText('POINT(43.4740971 -72.87651)', 4326), 43.5074307, -72.8080315, '1980-10-29', '2019-11-05', NULL, NULL, NULL),
  ('1460885', 'French Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Waitsfield', 44.2378356, -72.8606731, ST_GeomFromText('POINT(44.2378356 -72.8606731)', 4326), 44.2356131, -72.8948403, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460887', 'French Hollow', 'Valley', 'Vermont', 'VT', 'Bennington', 'Peru', 43.1686935, -72.8812185, ST_GeomFromText('POINT(43.1686935 -72.8812185)', 4326), 43.1936027, -72.9391842, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1460890', 'Frost Hollow', 'Valley', 'Vermont', 'VT', 'Bennington', 'Pownal', 42.7627054, -73.2422428, ST_GeomFromText('POINT(42.7627054 -73.2422428)', 4326), 42.7560334, -73.2722228, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1460891', 'Fuller Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Stamford', 42.768137, -73.0514915, ST_GeomFromText('POINT(42.768137 -73.0514915)', 4326), 42.7661111, -73.0369444, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460892', 'Furnace Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Bennington', 42.9028563, -73.2220527, ST_GeomFromText('POINT(42.9028563 -73.2220527)', 4326), 42.9852778, -73.1477778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460893', 'Furnace Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Proctor', 43.6945107, -73.036498, ST_GeomFromText('POINT(43.6945107 -73.036498)', 4326), 43.7775655, -72.9698315, '1980-10-29', NULL, 'Official', 'Board Decision', '1971-01-01'),
  ('1460895', 'George Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Bread Loaf', 43.9578411, -72.9020557, ST_GeomFromText('POINT(43.9578411 -72.9020557)', 4326), 43.9769444, -72.9188889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460896', 'German Flats', 'Flat', 'Vermont', 'VT', 'Washington', 'Mount Ellen', 44.1731146, -72.8881718, ST_GeomFromText('POINT(44.1731146 -72.8881718)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460898', 'Gilbert Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Manchester', 43.2428533, -73.0945495, ST_GeomFromText('POINT(43.2428533 -73.0945495)', 4326), 43.2386868, -73.1367725, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460899', 'Gilead Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Bethel', 43.8667329, -72.63788, ST_GeomFromText('POINT(43.8667329 -72.63788)', 4326), 43.9083982, -72.7603845, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460900', 'Gillespie Mountain', 'Summit', 'Vermont', 'VT', 'Addison', 'Bread Loaf', 43.9560609, -72.8759426, ST_GeomFromText('POINT(43.9560609 -72.8759426)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460901', 'Gillespie Peak', 'Summit', 'Vermont', 'VT', 'Windsor', 'Mount Carmel', 43.8715801, -72.9773323, ST_GeomFromText('POINT(43.8715801 -72.9773323)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', 'Official', 'Board Decision', '1971-01-01'),
  ('1460903', 'Gilmore Pond', 'Lake', 'Vermont', 'VT', 'Addison', 'South Mountain', 44.0883478, -73.0367828, ST_GeomFromText('POINT(44.0883478 -73.0367828)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1460905', 'Glastenbury Mountain', 'Summit', 'Vermont', 'VT', 'Bennington', 'Woodford', 42.9777487, -73.0717465, ST_GeomFromText('POINT(42.9777487 -73.0717465)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460906', 'Glastenbury River', 'Stream', 'Vermont', 'VT', 'Windham', 'Mount Snow', 42.9620236, -72.9945467, ST_GeomFromText('POINT(42.9620236 -72.9945467)', 4326), 43.0156339, -73.0406594, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460907', 'Glebe Mountain', 'Summit', 'Vermont', 'VT', 'Windham', 'Londonderry', 43.1889388, -72.7609596, ST_GeomFromText('POINT(43.1889388 -72.7609596)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1460909', 'Gonya Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'East Middlebury', 43.9522845, -73.027614, ST_GeomFromText('POINT(43.9522845 -73.027614)', 4326), 43.9377778, -73.0233333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460910', 'Goodman Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Manchester', 43.2375755, -73.0887161, ST_GeomFromText('POINT(43.2375755 -73.0887161)', 4326), 43.2220203, -73.1301058, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460911', 'Goodrich Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Stamford', 42.7600815, -73.0589917, ST_GeomFromText('POINT(42.7600815 -73.0589917)', 4326), 42.7533333, -73.0405556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460915', 'Goshen Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Bread Loaf', 43.9458962, -72.9831685, ST_GeomFromText('POINT(43.9458962 -72.9831685)', 4326), 43.9072222, -72.9905556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460916', 'Goshen Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'East Middlebury', 43.96034, -73.0276142, ST_GeomFromText('POINT(43.96034 -73.0276142)', 4326), 43.9366667, -73.0283333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460919', 'Goshen Mountain', 'Summit', 'Vermont', 'VT', 'Addison', 'Mount Carmel', 43.829778, -72.9709424, ST_GeomFromText('POINT(43.829778 -72.9709424)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1460920', 'Gould Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Brandon', 43.8506195, -73.0217785, ST_GeomFromText('POINT(43.8506195 -73.0217785)', 4326), 43.8783972, -72.9851117, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460923', 'Granite Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Wallingford', 43.4813645, -72.8955991, ST_GeomFromText('POINT(43.4813645 -72.8955991)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460924', 'Mount Grant', 'Summit', 'Vermont', 'VT', 'Addison', 'Lincoln', 44.0522746, -72.925946, ST_GeomFromText('POINT(44.0522746 -72.925946)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1460926', 'Granville Notch', 'Gap', 'Vermont', 'VT', 'Addison', 'Warren', 44.0322848, -72.8320558, ST_GeomFromText('POINT(44.0322848 -72.8320558)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460928', 'Grass Mountain', 'Summit', 'Vermont', 'VT', 'Bennington', 'Arlington', 43.052997, -73.2237151, ST_GeomFromText('POINT(43.052997 -73.2237151)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460929', 'Graves Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Readsboro', 42.8234148, -72.9103766, ST_GeomFromText('POINT(42.8234148 -72.9103766)', 4326), 42.8238889, -72.9291667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460930', 'Green Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Chittenden', 43.739233, -72.9089958, ST_GeomFromText('POINT(43.739233 -72.9089958)', 4326), 43.7617327, -72.9095518, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460931', 'Green Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Wallingford', 43.457658, -72.9631303, ST_GeomFromText('POINT(43.457658 -72.9631303)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1460933', 'Green Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Wallingford', 43.3976788, -72.9641831, ST_GeomFromText('POINT(43.3976788 -72.9641831)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1460934', 'Green Mountains', 'Range', 'Vermont', 'VT', 'Washington', 'Waitsfield', 44.145485, -72.8539797, ST_GeomFromText('POINT(44.145485 -72.8539797)', 4326), NULL, NULL, '2002-08-27', '2020-03-11', 'Official', 'Board Decision', '1897-01-01'),
  ('1460935', 'Mount Aeolus', 'Summit', 'Vermont', 'VT', 'Bennington', 'Manchester', 43.2406221, -73.0387138, ST_GeomFromText('POINT(43.2406221 -73.0387138)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', 'Official', 'Board Decision', '1986-01-01'),
  ('1460936', 'Green River', 'Stream', 'Vermont', 'VT', 'Bennington', 'Arlington', 43.1020215, -73.2128857, ST_GeomFromText('POINT(43.1020215 -73.2128857)', 4326), 43.1945205, -73.1045498, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460937', 'Greendale Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Weston', 43.315907, -72.7909314, ST_GeomFromText('POINT(43.315907 -72.7909314)', 4326), 43.3611111, -72.8469444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460939', 'Griffith Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Weston', 43.2761855, -72.8648219, ST_GeomFromText('POINT(43.2761855 -72.8648219)', 4326), 43.3086849, -72.9178792, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460940', 'Griffith Lake', 'Lake', 'Vermont', 'VT', 'Rutland', 'Danby', 43.3035851, -72.9591627, ST_GeomFromText('POINT(43.3035851 -72.9591627)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', 'Official', 'Board Decision', '1933-01-01'),
  ('1460941', 'Grindstone Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Bread Loaf', 43.9267303, -72.9139997, ST_GeomFromText('POINT(43.9267303 -72.9139997)', 4326), 43.9094444, -72.9238889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460942', 'Grout Pond', 'Lake', 'Vermont', 'VT', 'Windham', 'Stratton Mountain', 43.0439638, -72.944386, ST_GeomFromText('POINT(43.0439638 -72.944386)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1460943', 'Guernsey Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Rochester', 43.7753441, -72.7976048, ST_GeomFromText('POINT(43.7753441 -72.7976048)', 4326), 43.8141667, -72.825, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460944', 'Gulf Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Dorset', 43.2834076, -73.0006591, ST_GeomFromText('POINT(43.2834076 -73.0006591)', 4326), 43.3075, -73.0222222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460945', 'Gulf Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Hancock', 43.9886743, -72.8578886, ST_GeomFromText('POINT(43.9886743 -72.8578886)', 4326), 43.975341, -72.8767777, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460946', 'Hagar Hill', 'Summit', 'Vermont', 'VT', 'Bennington', 'Woodford', 42.9130007, -73.0653774, ST_GeomFromText('POINT(42.9130007 -73.0653774)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460947', 'Hale Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'East Middlebury', 43.9553401, -73.0262251, ST_GeomFromText('POINT(43.9553401 -73.0262251)', 4326), 43.9497222, -73.0472222, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460948', 'Hale Mountain', 'Summit', 'Vermont', 'VT', 'Bennington', 'Bennington', 42.9621299, -73.1778463, ST_GeomFromText('POINT(42.9621299 -73.1778463)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460949', 'Hall Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'West Dover', 42.8920253, -72.8237078, ST_GeomFromText('POINT(42.8920253 -72.8237078)', 4326), 42.9208333, -72.8036111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460950', 'Hallock Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Mount Ellen', 44.168947, -72.9895625, ST_GeomFromText('POINT(44.168947 -72.9895625)', 4326), 44.1891667, -72.9688889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460952', 'Halls Island', 'Island', 'Vermont', 'VT', 'Rutland', 'Brandon', 43.7911747, -73.12039, ST_GeomFromText('POINT(43.7911747 -73.12039)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460953', 'Halnon Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Cornwall', 43.9528386, -73.1331714, ST_GeomFromText('POINT(43.9528386 -73.1331714)', 4326), 43.9539507, -73.0601146, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460954', 'Hammond Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Mount Holly', 43.470514, -72.8289351, ST_GeomFromText('POINT(43.470514 -72.8289351)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1460956', 'Hancock Branch', 'Stream', 'Vermont', 'VT', 'Addison', 'Hancock', 43.9267309, -72.8373313, ST_GeomFromText('POINT(43.9267309 -72.8373313)', 4326), 43.9781184, -72.935668, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460957', 'Hancock Mountain', 'Summit', 'Vermont', 'VT', 'Addison', 'Hancock', 43.9389194, -72.8276765, ST_GeomFromText('POINT(43.9389194 -72.8276765)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460959', 'Lake Hancock', 'Lake', 'Vermont', 'VT', 'Bennington', 'Pownal', 42.8245016, -73.1287594, ST_GeomFromText('POINT(42.8245016 -73.1287594)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', 'Official', 'Board Decision', '1972-01-01'),
  ('1460961', 'Hapgood Pond', 'Lake', 'Vermont', 'VT', 'Bennington', 'Danby', 43.2539675, -72.8903511, ST_GeomFromText('POINT(43.2539675 -72.8903511)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460963', 'Harmon Hill', 'Summit', 'Vermont', 'VT', 'Bennington', 'Pownal', 42.8709041, -73.1323265, ST_GeomFromText('POINT(42.8709041 -73.1323265)', 4326), NULL, NULL, '1980-10-29', '2018-11-14', NULL, NULL, NULL),
  ('1460966', 'Harriman Reservoir', 'Reservoir', 'Vermont', 'VT', 'Windham', 'Readsboro', 42.8334258, -72.8792961, ST_GeomFromText('POINT(42.8334258 -72.8792961)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', 'Official', 'Board Decision', '1967-01-01'),
  ('1460967', 'Harrington Cobble', 'Summit', 'Vermont', 'VT', 'Bennington', 'Bennington', 42.9603098, -73.1695299, ST_GeomFromText('POINT(42.9603098 -73.1695299)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460968', 'Harris Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Stamford', 42.7600815, -73.0595473, ST_GeomFromText('POINT(42.7600815 -73.0595473)', 4326), 42.7591667, -73.0352778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460970', 'Hat Crown', 'Summit', 'Vermont', 'VT', 'Addison', 'Bread Loaf', 43.9316965, -72.9397748, ST_GeomFromText('POINT(43.9316965 -72.9397748)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460971', 'Hateful Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Wallingford', 43.4725579, -72.8865943, ST_GeomFromText('POINT(43.4725579 -72.8865943)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1460973', 'Hawk Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Brandon', 43.7770548, -73.060957, ST_GeomFromText('POINT(43.7770548 -73.060957)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460974', 'Hawk Mountain', 'Summit', 'Vermont', 'VT', 'Windsor', 'Mount Carmel', 43.8481113, -72.9412198, ST_GeomFromText('POINT(43.8481113 -72.9412198)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1460975', 'Hayes Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Mount Carmel', 43.7870102, -72.8795516, ST_GeomFromText('POINT(43.7870102 -72.8795516)', 4326), 43.80701, -72.8578847, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460976', 'Haystack Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Mount Snow', 42.9175803, -72.8837098, ST_GeomFromText('POINT(42.9175803 -72.8837098)', 4326), 42.9097222, -72.9069444, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460977', 'Haystack Mountain', 'Summit', 'Vermont', 'VT', 'Windham', 'Mount Snow', 42.9138095, -72.9190622, ST_GeomFromText('POINT(42.9138095 -72.9190622)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1460978', 'Haystack Pond', 'Lake', 'Vermont', 'VT', 'Windham', 'Mount Snow', 42.9180125, -72.9164179, ST_GeomFromText('POINT(42.9180125 -72.9164179)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1460981', 'Heather Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Readsboro', 42.8714697, -72.9295442, ST_GeomFromText('POINT(42.8714697 -72.9295442)', 4326), 42.8917472, -72.927322, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460982', 'Hedgehog Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Mount Holly', 43.4094259, -72.8005286, ST_GeomFromText('POINT(43.4094259 -72.8005286)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1460983', 'Hedgehog Knoll', 'Summit', 'Vermont', 'VT', 'Rutland', 'Rochester', 43.7650573, -72.8420488, ST_GeomFromText('POINT(43.7650573 -72.8420488)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1460984', 'Hell Hollow Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Woodford', 42.9100792, -73.1162165, ST_GeomFromText('POINT(42.9100792 -73.1162165)', 4326), 42.9080556, -73.0763889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460985', 'Hemlock Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Mount Ellen', 44.21866, -72.8978941, ST_GeomFromText('POINT(44.21866 -72.8978941)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1460986', 'Hewitt Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Chittenden', 43.7292331, -72.9245516, ST_GeomFromText('POINT(43.7292331 -72.9245516)', 4326), 43.7670102, -72.9378859, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460988', 'High Bridge Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Waitsfield', 44.1886703, -72.8198377, ST_GeomFromText('POINT(44.1886703 -72.8198377)', 4326), 44.1691667, -72.7822222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1460989', 'High Knob', 'Summit', 'Vermont', 'VT', 'Addison', 'Bristol', 44.2313942, -73.0376219, ST_GeomFromText('POINT(44.2313942 -73.0376219)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1460990', 'Higley Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'West Dover', 42.8936457, -72.7901694, ST_GeomFromText('POINT(42.8936457 -72.7901694)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1460992', 'Hillsboro Mountain', 'Summit', 'Vermont', 'VT', 'Addison', 'Mount Ellen', 44.2284919, -72.9904988, ST_GeomFromText('POINT(44.2284919 -72.9904988)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1460994', 'Hogback Mountain', 'Summit', 'Vermont', 'VT', 'Addison', 'East Middlebury', 43.8811659, -73.0051139, ST_GeomFromText('POINT(43.8811659 -73.0051139)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460995', 'Hogback Mountains', 'Ridge', 'Vermont', 'VT', 'Addison', 'Bristol', 44.1380672, -73.061027, ST_GeomFromText('POINT(44.1380672 -73.061027)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460996', 'Mount Holly', 'Summit', 'Vermont', 'VT', 'Rutland', 'Mount Holly', 43.4302994, -72.8381812, ST_GeomFromText('POINT(43.4302994 -72.8381812)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1460997', 'Holt Mountain', 'Summit', 'Vermont', 'VT', 'Windsor', 'Weston', 43.3030678, -72.8357939, ST_GeomFromText('POINT(43.3030678 -72.8357939)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1460999', 'Homer Stone Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Wallingford', 43.408405, -72.9934378, ST_GeomFromText('POINT(43.408405 -72.9934378)', 4326), 43.4180556, -72.9330556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461000', 'Homer Stone Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Wallingford', 43.3950598, -72.9462019, ST_GeomFromText('POINT(43.3950598 -72.9462019)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1461001', 'Hoosac Range', 'Range', 'Massachusetts', 'MA', 'Berkshire', 'North Adams', 42.6817754, -73.0258134, ST_GeomFromText('POINT(42.6817754 -73.0258134)', 4326), NULL, NULL, '1980-10-29', '2018-11-20', 'Official', 'Board Decision', '1946-01-01'),
  ('1461003', 'Horrid Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Mount Carmel', 43.8547867, -72.9417767, ST_GeomFromText('POINT(43.8547867 -72.9417767)', 4326), 43.8486111, -72.9575, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461004', 'Mount Horrid', 'Summit', 'Vermont', 'VT', 'Windsor', 'Mount Carmel', 43.8503828, -72.9672941, ST_GeomFromText('POINT(43.8503828 -72.9672941)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461008', 'Houghton Mountain', 'Summit', 'Vermont', 'VT', 'Bennington', 'Stamford', 42.8189607, -73.0851027, ST_GeomFromText('POINT(42.8189607 -73.0851027)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461010', 'Howe Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Hancock', 43.9200642, -72.8381645, ST_GeomFromText('POINT(43.9200642 -72.8381645)', 4326), 43.9336111, -72.7936111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461011', 'Howe Pond', 'Lake', 'Vermont', 'VT', 'Bennington', 'Readsboro', 42.7846009, -72.9860038, ST_GeomFromText('POINT(42.7846009 -72.9860038)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1461012', 'Howe Pond Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Readsboro', 42.7814709, -72.9606556, ST_GeomFromText('POINT(42.7814709 -72.9606556)', 4326), 42.785, -72.9830556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461013', 'Hunter Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'West Dover', 42.9436916, -72.7531503, ST_GeomFromText('POINT(42.9436916 -72.7531503)', 4326), 42.93, -72.7986111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461014', 'Huntington Gap', 'Gap', 'Vermont', 'VT', 'Washington', 'Mount Ellen', 44.2414462, -72.9084517, ST_GeomFromText('POINT(44.2414462 -72.9084517)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461015', 'Huntington River', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Richmond', 44.3836649, -72.9392889, ST_GeomFromText('POINT(44.3836649 -72.9392889)', 4326), 44.1867249, -72.942062, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461017', 'Isham Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'South Mountain', 44.117559, -73.0176174, ST_GeomFromText('POINT(44.117559 -73.0176174)', 4326), 44.1406139, -73.0276181, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461019', 'Jarvis Hill', 'Summit', 'Vermont', 'VT', 'Bennington', 'Readsboro', 42.7671687, -72.9411922, ST_GeomFromText('POINT(42.7671687 -72.9411922)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461020', 'Jenny Coolidge Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Weston', 43.3409065, -72.8095432, ST_GeomFromText('POINT(43.3409065 -72.8095432)', 4326), 43.3463889, -72.8563889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461025', 'Jewett Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Pownal', 42.871468, -73.1831626, ST_GeomFromText('POINT(42.871468 -73.1831626)', 4326), 42.7980556, -73.2197222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461026', 'Jillson Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Rowe', 42.7431296, -72.8803741, ST_GeomFromText('POINT(42.7431296 -72.8803741)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', 'Official', 'Board Decision', '1974-01-01'),
  ('1461027', 'Jimmy Dean Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.7267335, -72.82316, ST_GeomFromText('POINT(43.7267335 -72.82316)', 4326), 43.7288889, -72.8697222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461028', 'Joe Smith Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Mount Carmel', 43.8453427, -72.8998311, ST_GeomFromText('POINT(43.8453427 -72.8998311)', 4326), 43.8261111, -72.8902778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461029', 'Johnson Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.7336778, -72.8203823, ST_GeomFromText('POINT(43.7336778 -72.8203823)', 4326), 43.72, -72.7811111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461030', 'Johnson Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'West Dover', 42.9557887, -72.8613157, ST_GeomFromText('POINT(42.9557887 -72.8613157)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1461031', 'Jones Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Brandon', 43.7758977, -73.0798335, ST_GeomFromText('POINT(43.7758977 -73.0798335)', 4326), 43.7838889, -73.0641667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461032', 'Jones Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Weston', 43.2625747, -72.8578771, ST_GeomFromText('POINT(43.2625747 -72.8578771)', 4326), 43.284241, -72.9145456, '1980-10-29', NULL, 'Official', 'Board Decision', '1959-01-01'),
  ('1461033', 'Jones Mill Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Brandon', 43.782342, -73.060863, ST_GeomFromText('POINT(43.782342 -73.060863)', 4326), NULL, NULL, '1980-10-29', '2024-11-13', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461034', 'Jones Mountain', 'Summit', 'Vermont', 'VT', 'Windsor', 'Mount Carmel', 43.8694009, -72.919372, ST_GeomFromText('POINT(43.8694009 -72.919372)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461037', 'Kate Hollow', 'Valley', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.1904936, -73.1318775, ST_GeomFromText('POINT(43.1904936 -73.1318775)', 4326), 43.2079481, -73.1183903, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1461041', 'Kendall Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Hancock', 43.985619, -72.8451105, ST_GeomFromText('POINT(43.985619 -72.8451105)', 4326), 44.0178407, -72.8278886, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461042', 'Kent Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.6806232, -72.7828804, ST_GeomFromText('POINT(43.6806232 -72.7828804)', 4326), 43.6505556, -72.8286111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461043', 'Kent Pond', 'Reservoir', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.6765268, -72.8038152, ST_GeomFromText('POINT(43.6765268 -72.8038152)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1461044', 'Kettle Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Mount Carmel', 43.8045095, -72.9720543, ST_GeomFromText('POINT(43.8045095 -72.9720543)', 4326), 43.8205556, -72.9644444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461045', 'Kew Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Waitsfield', 44.1594512, -72.8605527, ST_GeomFromText('POINT(44.1594512 -72.8605527)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1461046', 'Kidder Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Jamaica', 43.0978554, -72.8603765, ST_GeomFromText('POINT(43.0978554 -72.8603765)', 4326), 43.087022, -72.9126003, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461047', 'Kiln Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Mount Carmel', 43.7539548, -72.9670531, ST_GeomFromText('POINT(43.7539548 -72.9670531)', 4326), 43.7811111, -72.9383333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461048', 'Kings Pond', 'Lake', 'Vermont', 'VT', 'Windsor', 'Rochester', 43.860552, -72.8725611, ST_GeomFromText('POINT(43.860552 -72.8725611)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461049', 'Kirby Hollow', 'Valley', 'Vermont', 'VT', 'Bennington', 'Dorset', 43.2666419, -73.0957768, ST_GeomFromText('POINT(43.2666419 -73.0957768)', 4326), 43.2954799, -73.0774194, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1461050', 'Kirby Peak', 'Summit', 'Vermont', 'VT', 'Addison', 'Bread Loaf', 43.9629613, -72.9452936, ST_GeomFromText('POINT(43.9629613 -72.9452936)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461051', 'Knights Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Rochester', 43.7917236, -72.8664944, ST_GeomFromText('POINT(43.7917236 -72.8664944)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461052', 'Ladd Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Pownal', 42.7620238, -73.2387193, ST_GeomFromText('POINT(42.7620238 -73.2387193)', 4326), 42.7752778, -73.2069444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461053', 'Lake Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Danby', 43.3556284, -72.9295467, ST_GeomFromText('POINT(43.3556284 -72.9295467)', 4326), 43.2861111, -72.9616667, '1980-10-29', NULL, 'Official', 'Board Decision', '1967-01-01'),
  ('1461056', 'Lamb Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Readsboro', 42.8142481, -72.9742673, ST_GeomFromText('POINT(42.8142481 -72.9742673)', 4326), 42.8338889, -72.96, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461057', 'Falls of Lana', 'Falls', 'Vermont', 'VT', 'Addison', 'East Middlebury', 43.9042293, -73.0626136, ST_GeomFromText('POINT(43.9042293 -73.0626136)', 4326), NULL, NULL, '1980-10-29', NULL, 'Official', 'Board Decision', '1973-01-01'),
  ('1461060', 'Lead Mine Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Brandon', 43.7978639, -73.0050405, ST_GeomFromText('POINT(43.7978639 -73.0050405)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461062', 'Lefferts Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Chittenden', 43.7159383, -72.9013763, ST_GeomFromText('POINT(43.7159383 -72.9013763)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1461064', 'Leicester Hollow Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Brandon', 43.8372861, -73.0431675, ST_GeomFromText('POINT(43.8372861 -73.0431675)', 4326), 43.8845075, -73.0481685, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461065', 'Leicester River', 'Stream', 'Vermont', 'VT', 'Addison', 'Sudbury', 43.8658954, -73.1476143, ST_GeomFromText('POINT(43.8658954 -73.1476143)', 4326), 43.9097843, -73.0876142, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461066', 'Lewis Creek', 'Stream', 'Vermont', 'VT', 'Addison', 'Vergennes West', 44.2475529, -73.2804024, ST_GeomFromText('POINT(44.2475529 -73.2804024)', 4326), 44.1933909, -72.9906741, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461067', 'Liberty Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Rochester', 43.8250567, -72.8101049, ST_GeomFromText('POINT(43.8250567 -72.8101049)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461068', 'Lily Pond', 'Lake', 'Vermont', 'VT', 'Windham', 'Londonderry', 43.2350604, -72.7512103, ST_GeomFromText('POINT(43.2350604 -72.7512103)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1461070', 'Lincoln Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Warren', 44.1036718, -72.8609473, ST_GeomFromText('POINT(44.1036718 -72.8609473)', 4326), 44.1083933, -72.9337267, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461072', 'Lincoln Gap', 'Gap', 'Vermont', 'VT', 'Addison', 'Lincoln', 44.0950604, -72.929004, ST_GeomFromText('POINT(44.0950604 -72.929004)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461073', 'Lincoln Mountain', 'Summit', 'Vermont', 'VT', 'Washington', 'Mount Ellen', 44.1536858, -72.9279882, ST_GeomFromText('POINT(44.1536858 -72.9279882)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461074', 'Lincoln Peak', 'Summit', 'Vermont', 'VT', 'Washington', 'Mount Ellen', 44.1270018, -72.9279329, ST_GeomFromText('POINT(44.1270018 -72.9279329)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461075', 'Lion Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Brandon', 43.8385665, -73.0836506, ST_GeomFromText('POINT(43.8385665 -73.0836506)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461076', 'Little Black Branch', 'Stream', 'Vermont', 'VT', 'Rutland', 'Danby', 43.3703503, -72.9626033, ST_GeomFromText('POINT(43.3703503 -72.9626033)', 4326), 43.3917388, -72.9562144, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461077', 'Little Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Proctor', 43.7161774, -73.0045534, ST_GeomFromText('POINT(43.7161774 -73.0045534)', 4326), 43.7728431, -73.0081656, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461079', 'Little Mad Tom Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Manchester', 43.2161866, -73.0095478, ST_GeomFromText('POINT(43.2161866 -73.0095478)', 4326), 43.2289642, -72.9651023, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461080', 'Little Mud Pond', 'Lake', 'Vermont', 'VT', 'Bennington', 'Peru', 43.1339652, -72.9833126, ST_GeomFromText('POINT(43.1339652 -72.9833126)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1461081', 'Little Mud Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Danby', 43.3162159, -72.9371533, ST_GeomFromText('POINT(43.3162159 -72.9371533)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1461082', 'Little Otter Creek', 'Stream', 'Vermont', 'VT', 'Addison', 'Vergennes West', 44.2439419, -73.2812358, ST_GeomFromText('POINT(44.2439419 -73.2812358)', 4326), 44.1575571, -73.0984529, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461083', 'Little Pico', 'Summit', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.6364481, -72.8201016, ST_GeomFromText('POINT(43.6364481 -72.8201016)', 4326), NULL, NULL, '1980-10-29', '2018-11-14', NULL, NULL, NULL),
  ('1461084', 'Little Pico Mountain', 'Summit', 'Vermont', 'VT', 'Windsor', 'Mount Carmel', 43.8639446, -72.8934411, ST_GeomFromText('POINT(43.8639446 -72.8934411)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461085', 'Little Pond', 'Lake', 'Vermont', 'VT', 'Bennington', 'Woodford', 42.9252229, -73.0649074, ST_GeomFromText('POINT(42.9252229 -73.0649074)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1461086', 'Little Pond', 'Lake', 'Vermont', 'VT', 'Bennington', 'Stratton Mountain', 43.1235343, -72.9416346, ST_GeomFromText('POINT(43.1235343 -72.9416346)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1461087', 'Little Pond Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Woodford', 42.9161908, -73.0281585, ST_GeomFromText('POINT(42.9161908 -73.0281585)', 4326), 42.9241667, -73.0627778, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461088', 'Little Rock Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Wallingford', 43.4001528, -72.9559225, ST_GeomFromText('POINT(43.4001528 -72.9559225)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', 'Official', 'Board Decision', '1938-01-01'),
  ('1461089', 'Little Turkey Mountain Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Townshend', 43.0948002, -72.732595, ST_GeomFromText('POINT(43.0948002 -72.732595)', 4326), 43.1169444, -72.7372222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461091', 'Little Wilcox Peak', 'Summit', 'Vermont', 'VT', 'Rutland', 'Rochester', 43.8198833, -72.8288538, ST_GeomFromText('POINT(43.8198833 -72.8288538)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461092', 'Lockwood Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Mount Ellen', 44.1750589, -72.8862274, ST_GeomFromText('POINT(44.1750589 -72.8862274)', 4326), 44.1644444, -72.9155556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461094', 'Long Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Chittenden', 43.7172797, -72.9787182, ST_GeomFromText('POINT(43.7172797 -72.9787182)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461095', 'Long Hole', 'Lake', 'Vermont', 'VT', 'Rutland', 'Danby', 43.3070182, -72.9512135, ST_GeomFromText('POINT(43.3070182 -72.9512135)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461097', 'Lookout Rock', 'Summit', 'Vermont', 'VT', 'Bennington', 'Manchester', 43.1704832, -73.1108548, ST_GeomFromText('POINT(43.1704832 -73.1108548)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461098', 'Lost Mountain', 'Summit', 'Vermont', 'VT', 'Addison', 'Warren', 44.0345477, -72.790359, ST_GeomFromText('POINT(44.0345477 -72.790359)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1461099', 'Lost Pond', 'Lake', 'Vermont', 'VT', 'Bennington', 'Woodford', 42.9444161, -73.0525217, ST_GeomFromText('POINT(42.9444161 -73.0525217)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1461100', 'Lost Pond', 'Lake', 'Vermont', 'VT', 'Bennington', 'Sunderland', 43.0403595, -73.0274096, ST_GeomFromText('POINT(43.0403595 -73.0274096)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461101', 'Lost Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Danby', 43.3404014, -72.9425084, ST_GeomFromText('POINT(43.3404014 -72.9425084)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1461102', 'Lowell Lake', 'Reservoir', 'Vermont', 'VT', 'Windham', 'Londonderry', 43.2256807, -72.761974, ST_GeomFromText('POINT(43.2256807 -72.761974)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1461105', 'Ludlow Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Mount Holly', 43.4041392, -72.7514854, ST_GeomFromText('POINT(43.4041392 -72.7514854)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', 'Official', 'Board Decision', '1974-01-01'),
  ('1461106', 'Lye Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Manchester', 43.144521, -73.0598266, ST_GeomFromText('POINT(43.144521 -73.0598266)', 4326), 43.0839663, -73.0012141, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461107', 'Lye Brook Hollow', 'Valley', 'Vermont', 'VT', 'Bennington', 'Manchester', 43.1583016, -73.0410125, ST_GeomFromText('POINT(43.1583016 -73.0410125)', 4326), 43.0981539, -73.0284843, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1461108', 'Lye Brook Meadows', 'Lake', 'Vermont', 'VT', 'Bennington', 'Sunderland', 43.0875672, -73.0284872, ST_GeomFromText('POINT(43.0875672 -73.0284872)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1461110', 'Lyman Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Sunderland', 43.059522, -73.0681601, ST_GeomFromText('POINT(43.059522 -73.0681601)', 4326), 43.0719444, -73.0630556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461111', 'Lyman Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Andover', 43.2575749, -72.7159287, ST_GeomFromText('POINT(43.2575749 -72.7159287)', 4326), 43.2884075, -72.7520411, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461113', 'Mad River', 'Stream', 'Vermont', 'VT', 'Washington', 'Middlesex', 44.2989466, -72.6959482, ST_GeomFromText('POINT(44.2989466 -72.6959482)', 4326), 44.0345069, -72.8309448, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461114', 'Mad Tom Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Manchester', 43.2284086, -73.0098256, ST_GeomFromText('POINT(43.2284086 -73.0098256)', 4326), 43.2725745, -72.9484353, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461115', 'Mad Tom Notch', 'Gap', 'Vermont', 'VT', 'Bennington', 'Danby', 43.2564637, -72.9381571, ST_GeomFromText('POINT(43.2564637 -72.9381571)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461121', 'Mann Hill', 'Summit', 'Vermont', 'VT', 'Bennington', 'Pownal', 42.7831263, -73.2220509, ST_GeomFromText('POINT(42.7831263 -73.2220509)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461126', 'Maple Hill', 'Summit', 'Vermont', 'VT', 'Bennington', 'Woodford', 42.8957259, -73.0930184, ST_GeomFromText('POINT(42.8957259 -73.0930184)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461127', 'Maple Hill', 'Summit', 'Vermont', 'VT', 'Bennington', 'Bennington', 42.9953472, -73.149272, ST_GeomFromText('POINT(42.9953472 -73.149272)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461130', 'Markham Mountain', 'Summit', 'Vermont', 'VT', 'Windsor', 'Weston', 43.2739546, -72.7584289, ST_GeomFromText('POINT(43.2739546 -72.7584289)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461131', 'Marshs Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Hancock', 43.8978424, -72.8209414, ST_GeomFromText('POINT(43.8978424 -72.8209414)', 4326), 43.9252778, -72.7794444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461132', 'Mason Hill', 'Summit', 'Vermont', 'VT', 'Bennington', 'Pownal', 42.7686181, -73.2051651, ST_GeomFromText('POINT(42.7686181 -73.2051651)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461133', 'McGinn Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Danby', 43.317018, -72.9892702, ST_GeomFromText('POINT(43.317018 -72.9892702)', 4326), 43.3169444, -72.9613889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461134', 'Meadow Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'West Dover', 42.8967476, -72.8145409, ST_GeomFromText('POINT(42.8967476 -72.8145409)', 4326), 42.8825, -72.7916667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461135', 'Meadow Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Mount Holly', 43.4170161, -72.8492672, ST_GeomFromText('POINT(43.4170161 -72.8492672)', 4326), 43.3678504, -72.8587115, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461136', 'Mears Hollow', 'Valley', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.1882257, -73.1322287, ST_GeomFromText('POINT(43.1882257 -73.1322287)', 4326), 43.1781457, -73.1108078, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1461137', 'Medbury Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Readsboro', 42.8711919, -72.9323221, ST_GeomFromText('POINT(42.8711919 -72.9323221)', 4326), 42.8586111, -72.9544444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461140', 'Mendon Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Chittenden', 43.6522897, -72.9501066, ST_GeomFromText('POINT(43.6522897 -72.9501066)', 4326), 43.6800673, -72.8664937, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461144', 'Michigan Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Mount Carmel', 43.7897879, -72.8834406, ST_GeomFromText('POINT(43.7897879 -72.8834406)', 4326), 43.8019444, -72.9369444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461145', 'Middle Branch Middlebury River', 'Stream', 'Vermont', 'VT', 'Addison', 'East Middlebury', 43.9739507, -73.0351146, ST_GeomFromText('POINT(43.9739507 -73.0351146)', 4326), 43.9972845, -72.9523355, '1980-10-29', NULL, 'Official', 'Board Decision', '1971-01-01'),
  ('1461146', 'Middle Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.7061782, -72.8242708, ST_GeomFromText('POINT(43.7061782 -72.8242708)', 4326), 43.6761111, -72.8355556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461148', 'Middlebury Gap', 'Gap', 'Vermont', 'VT', 'Addison', 'Bread Loaf', 43.9364522, -72.9492786, ST_GeomFromText('POINT(43.9364522 -72.9492786)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461149', 'Middlebury River', 'Stream', 'Vermont', 'VT', 'Addison', 'Cornwall', 43.9695047, -73.1567832, ST_GeomFromText('POINT(43.9695047 -73.1567832)', 4326), 43.9739507, -73.0351146, '1980-10-29', NULL, 'Official', 'Board Decision', '1971-01-01'),
  ('1461150', 'Middlebury Water Supply', 'Reservoir', 'Vermont', 'VT', 'Addison', 'South Mountain', 44.0733715, -73.060686, ST_GeomFromText('POINT(44.0733715 -73.060686)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1461153', 'Mill Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Townshend', 43.0339683, -72.6662041, ST_GeomFromText('POINT(43.0339683 -72.6662041)', 4326), 43.1117447, -72.6239811, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461154', 'Mill Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Sunderland', 43.115077, -73.10955, ST_GeomFromText('POINT(43.115077 -73.10955)', 4326), 43.0980556, -73.0661111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461155', 'Mill Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Londonderry', 43.1500767, -72.8395428, ST_GeomFromText('POINT(43.1500767 -72.8395428)', 4326), 43.1956314, -72.9559352, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461156', 'Mill Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Danby', 43.3500729, -72.9889926, ST_GeomFromText('POINT(43.3500729 -72.9889926)', 4326), 43.3206294, -73.0942721, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461157', 'Mill Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Waitsfield', 44.179226, -72.8342821, ST_GeomFromText('POINT(44.179226 -72.8342821)', 4326), 44.2089467, -72.928729, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461158', 'Mill Pond', 'Lake', 'Vermont', 'VT', 'Bennington', 'Woodford', 42.9193452, -73.0236323, ST_GeomFromText('POINT(42.9193452 -73.0236323)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1461159', 'Mill Pond Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Woodford', 42.9178575, -73.0253806, ST_GeomFromText('POINT(42.9178575 -73.0253806)', 4326), 42.9302778, -73.0380556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461160', 'Mill River', 'Stream', 'Vermont', 'VT', 'Rutland', 'Rutland', 43.5064587, -72.9756604, ST_GeomFromText('POINT(43.5064587 -72.9756604)', 4326), 43.3972943, -72.8048214, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461163', 'Mills Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Warren', 44.0742281, -72.8595576, ST_GeomFromText('POINT(44.0742281 -72.8595576)', 4326), 44.0716667, -72.8352778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461164', 'Molly Stark Mountain', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Mount Ellen', 44.2219191, -72.9265635, ST_GeomFromText('POINT(44.2219191 -72.9265635)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461166', 'Monastery Gap', 'Gap', 'Vermont', 'VT', 'Addison', 'Bread Loaf', 43.9106192, -72.9515003, ST_GeomFromText('POINT(43.9106192 -72.9515003)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461167', 'Monastery Mountain', 'Summit', 'Vermont', 'VT', 'Addison', 'Bread Loaf', 43.9069993, -72.9378875, ST_GeomFromText('POINT(43.9069993 -72.9378875)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461169', 'Mount Moosalamoo', 'Summit', 'Vermont', 'VT', 'Addison', 'East Middlebury', 43.9302694, -73.0496804, ST_GeomFromText('POINT(43.9302694 -73.0496804)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461171', 'Morgan Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Weston', 43.2905652, -72.8117186, ST_GeomFromText('POINT(43.2905652 -72.8117186)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461172', 'Morrill Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Mount Carmel', 43.7922879, -72.8845518, ST_GeomFromText('POINT(43.7922879 -72.8845518)', 4326), 43.8113889, -72.9072222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461173', 'Moses Pond', 'Lake', 'Vermont', 'VT', 'Windsor', 'Weston', 43.3341969, -72.8429412, ST_GeomFromText('POINT(43.3341969 -72.8429412)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1461174', 'Moss Glen Falls', 'Falls', 'Vermont', 'VT', 'Addison', 'Warren', 44.0181183, -72.8503892, ST_GeomFromText('POINT(44.0181183 -72.8503892)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461175', 'Mother Myrick Mountain', 'Summit', 'Vermont', 'VT', 'Bennington', 'Manchester', 43.2134004, -73.1167709, ST_GeomFromText('POINT(43.2134004 -73.1167709)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461176', 'Mount Anthony', 'Summit', 'Vermont', 'VT', 'Bennington', 'Pownal', 42.8635427, -73.2325525, ST_GeomFromText('POINT(42.8635427 -73.2325525)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461183', 'Mount Tabor Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Danby', 43.309796, -72.8787115, ST_GeomFromText('POINT(43.309796 -72.8787115)', 4326), 43.347573, -72.8737117, '1980-10-29', NULL, 'Official', 'Board Decision', '1959-01-01'),
  ('1461185', 'Mountain Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Dorset', 43.3686838, -73.1014948, ST_GeomFromText('POINT(43.3686838 -73.1014948)', 4326), 43.3408333, -73.0944444, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461191', 'Mud Pond', 'Lake', 'Vermont', 'VT', 'Bennington', 'Stamford', 42.8322798, -73.0418758, ST_GeomFromText('POINT(42.8322798 -73.0418758)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1461192', 'Mud Pond', 'Lake', 'Vermont', 'VT', 'Bennington', 'Londonderry', 43.2229943, -72.8725614, ST_GeomFromText('POINT(43.2229943 -72.8725614)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1461193', 'Muddy Branch', 'Stream', 'Vermont', 'VT', 'Addison', 'Middlebury', 44.0606142, -73.1478961, ST_GeomFromText('POINT(44.0606142 -73.1478961)', 4326), 44.0195051, -73.0548381, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461194', 'Mundal Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Jamaica', 43.0502973, -72.8638084, ST_GeomFromText('POINT(43.0502973 -72.8638084)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461196', 'Munson Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Manchester', 43.1675763, -73.0545487, ST_GeomFromText('POINT(43.1675763 -73.0545487)', 4326), 43.1791667, -73.0911111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461198', 'Nancy Hanks Peak', 'Summit', 'Vermont', 'VT', 'Washington', 'Mount Ellen', 44.1331062, -72.9287633, ST_GeomFromText('POINT(44.1331062 -72.9287633)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461199', 'Nason Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Rochester', 43.8678429, -72.8092737, ST_GeomFromText('POINT(43.8678429 -72.8092737)', 4326), 43.8636111, -72.7522222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461200', 'Huzzy Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Townshend', 43.042965, -72.692639, ST_GeomFromText('POINT(43.042965 -72.692639)', 4326), 43.022063, -72.713185, '1980-10-29', '2023-03-23', 'Official', 'Board Decision', '2023-03-09'),
  ('1461201', 'Negus Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'West Dover', 42.9203583, -72.8389861, ST_GeomFromText('POINT(42.9203583 -72.8389861)', 4326), 42.9413889, -72.8236111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461202', 'Neshobe River', 'Stream', 'Vermont', 'VT', 'Rutland', 'Brandon', 43.7797864, -73.0878893, ST_GeomFromText('POINT(43.7797864 -73.0878893)', 4326), 43.8475645, -72.9667772, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461203', 'Netop Mountain', 'Summit', 'Vermont', 'VT', 'Bennington', 'Dorset', 43.271427, -73.0331926, ST_GeomFromText('POINT(43.271427 -73.0331926)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461207', 'New Haven River', 'Stream', 'Vermont', 'VT', 'Addison', 'Middlebury', 44.0633914, -73.1803967, ST_GeomFromText('POINT(44.0633914 -73.1803967)', 4326), 44.0053401, -72.9348353, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461208', 'Mount Nickwaket', 'Summit', 'Vermont', 'VT', 'Rutland', 'Mount Carmel', 43.7789454, -72.9939974, ST_GeomFromText('POINT(43.7789454 -72.9939974)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461210', 'Lake Ninevah', 'Reservoir', 'Vermont', 'VT', 'Rutland', 'Mount Holly', 43.4699514, -72.7563667, ST_GeomFromText('POINT(43.4699514 -72.7563667)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', 'Official', 'Board Decision', '1959-01-01'),
  ('1461211', 'Number Nine Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Readsboro', 42.7898042, -72.8948205, ST_GeomFromText('POINT(42.7898042 -72.8948205)', 4326), 42.7577778, -72.8811111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461212', 'North Alder Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Sunderland', 43.0498, -73.0417705, ST_GeomFromText('POINT(43.0498 -73.0417705)', 4326), 43.0508333, -73.0122222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461214', 'North Bennington Reservoir', 'Reservoir', 'Vermont', 'VT', 'Bennington', 'Bennington', 42.9645792, -73.1590842, ST_GeomFromText('POINT(42.9645792 -73.1590842)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1461215', 'North Branch Ball Mountain Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Jamaica', 43.0878557, -72.8170418, ST_GeomFromText('POINT(43.0878557 -72.8170418)', 4326), 43.1231326, -72.9123226, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461216', 'North Branch Deerfield River', 'Stream', 'Vermont', 'VT', 'Windham', 'Readsboro', 42.8673031, -72.90121, ST_GeomFromText('POINT(42.8673031 -72.90121)', 4326), 42.9839682, -72.911211, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461218', 'North Branch Middlebury River', 'Stream', 'Vermont', 'VT', 'Addison', 'East Middlebury', 43.9753392, -73.0628928, ST_GeomFromText('POINT(43.9753392 -73.0628928)', 4326), 44.0311718, -73.0365046, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461219', 'North Branch Neshobe River', 'Stream', 'Vermont', 'VT', 'Addison', 'Brandon', 43.8417307, -73.0315007, ST_GeomFromText('POINT(43.8417307 -73.0315007)', 4326), 43.8806193, -73.0015009, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461220', 'North Branch Sucker Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'East Middlebury', 43.9095071, -73.0484468, ST_GeomFromText('POINT(43.9095071 -73.0484468)', 4326), 43.9311111, -73.0258333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461226', 'North Hill', 'Summit', 'Vermont', 'VT', 'Bennington', 'Readsboro', 42.7960954, -72.9469431, ST_GeomFromText('POINT(42.7960954 -72.9469431)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461231', 'North Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Chittenden', 43.748866, -72.8857157, ST_GeomFromText('POINT(43.748866 -72.8857157)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1461232', 'North Pond', 'Lake', 'Vermont', 'VT', 'Addison', 'South Mountain', 44.1035665, -73.046937, ST_GeomFromText('POINT(44.1035665 -73.046937)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1461234', 'Northfield Mountains', 'Range', 'Vermont', 'VT', 'Washington', 'Waitsfield', 44.1301853, -72.7626713, ST_GeomFromText('POINT(44.1301853 -72.7626713)', 4326), NULL, NULL, '1980-10-29', '2015-05-06', NULL, NULL, NULL),
  ('1461235', 'Norton Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Bristol', 44.1864375, -73.0081729, ST_GeomFromText('POINT(44.1864375 -73.0081729)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461236', 'Nunge Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Stamford', 42.7934141, -73.0817704, ST_GeomFromText('POINT(42.7934141 -73.0817704)', 4326), 42.8083333, -73.1008333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461237', 'Oak Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Brandon', 43.8659991, -73.0504032, ST_GeomFromText('POINT(43.8659991 -73.0504032)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461238', 'Oak Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'East Middlebury', 43.8781094, -73.0826121, ST_GeomFromText('POINT(43.8781094 -73.0826121)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461241', 'Ober Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Townshend', 43.0748191, -72.6783617, ST_GeomFromText('POINT(43.0748191 -72.6783617)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', 'Official', 'Board Decision', '1960-01-01'),
  ('1461245', 'Old Sixty Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Hancock', 43.9864434, -72.8345534, ST_GeomFromText('POINT(43.9864434 -72.8345534)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461248', 'Ottauquechee River', 'Stream', 'Vermont', 'VT', 'Windsor', 'North Hartland', 43.5906265, -72.3462025, ST_GeomFromText('POINT(43.5906265 -72.3462025)', 4326), 43.6786786, -72.8137146, '1980-10-29', '2018-07-31', 'Official', 'Board Decision', '1908-01-01'),
  ('1461250', 'Owls Head', 'Summit', 'Vermont', 'VT', 'Bennington', 'Manchester', 43.2432248, -73.0574001, ST_GeomFromText('POINT(43.2432248 -73.0574001)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461253', 'Paran Creek', 'Stream', 'Vermont', 'VT', 'Bennington', 'Bennington', 42.9125783, -73.2459423, ST_GeomFromText('POINT(42.9125783 -73.2459423)', 4326), 42.9936111, -73.1863889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461254', 'Lake Paran', 'Reservoir', 'Vermont', 'VT', 'Bennington', 'Bennington', 42.9326671, -73.2326443, ST_GeomFromText('POINT(42.9326671 -73.2326443)', 4326), NULL, NULL, '1980-10-29', '2020-08-10', NULL, NULL, NULL),
  ('1461256', 'Parris Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Dorset', 43.3465126, -73.0854334, ST_GeomFromText('POINT(43.3465126 -73.0854334)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461257', 'Patch Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Ludlow', 43.4642376, -72.7028747, ST_GeomFromText('POINT(43.4642376 -72.7028747)', 4326), 43.4934036, -72.7556543, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461258', 'Patch Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Chittenden', 43.6303321, -72.983039, ST_GeomFromText('POINT(43.6303321 -72.983039)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1461259', 'Patterson Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Hancock', 43.9936742, -72.8659445, ST_GeomFromText('POINT(43.9936742 -72.8659445)', 4326), 44.0278399, -72.8962239, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461260', 'Peabody Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Weston', 43.325227, -72.8375435, ST_GeomFromText('POINT(43.325227 -72.8375435)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461261', 'Peaked Mountain', 'Summit', 'Vermont', 'VT', 'Windham', 'Townshend', 43.0484468, -72.6549387, ST_GeomFromText('POINT(43.0484468 -72.6549387)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1461262', 'Perkins Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Rochester', 43.8445096, -72.8489964, ST_GeomFromText('POINT(43.8445096 -72.8489964)', 4326), 43.8313889, -72.8733333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461263', 'Perkins Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Mount Carmel', 43.8717313, -72.8848313, ST_GeomFromText('POINT(43.8717313 -72.8848313)', 4326), 43.8956199, -72.8812206, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461265', 'Peru Peak', 'Summit', 'Vermont', 'VT', 'Bennington', 'Danby', 43.2946575, -72.9375152, ST_GeomFromText('POINT(43.2946575 -72.9375152)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461266', 'Pete Parent Peak', 'Summit', 'Vermont', 'VT', 'Rutland', 'Danby', 43.3221061, -72.9045788, ST_GeomFromText('POINT(43.3221061 -72.9045788)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461268', 'Philadelphia Peak', 'Summit', 'Vermont', 'VT', 'Addison', 'Bread Loaf', 43.8999935, -72.8861649, ST_GeomFromText('POINT(43.8999935 -72.8861649)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461269', 'Pickerel Pond', 'Lake', 'Vermont', 'VT', 'Bennington', 'Manchester', 43.2066366, -73.0192775, ST_GeomFromText('POINT(43.2066366 -73.0192775)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1461270', 'Pico Peak', 'Summit', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.6395035, -72.8362132, ST_GeomFromText('POINT(43.6395035 -72.8362132)', 4326), NULL, NULL, '1980-10-29', '2018-11-20', NULL, NULL, NULL),
  ('1461271', 'Pico Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.6488705, -72.8124926, ST_GeomFromText('POINT(43.6488705 -72.8124926)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461273', 'Pike Hollow', 'Valley', 'Vermont', 'VT', 'Windham', 'Jamaica', 43.0264365, -72.8723979, ST_GeomFromText('POINT(43.0264365 -72.8723979)', 4326), 43.0124828, -72.8978868, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1461275', 'Pine Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Mount Snow', 42.9198021, -72.9706568, ST_GeomFromText('POINT(42.9198021 -72.9706568)', 4326), 42.9016667, -72.9822222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461276', 'Pine Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Waitsfield', 44.2075591, -72.7951156, ST_GeomFromText('POINT(44.2075591 -72.7951156)', 4326), 44.1605556, -72.7769444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461277', 'Pine Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Mount Carmel', 43.8736755, -72.908443, ST_GeomFromText('POINT(43.8736755 -72.908443)', 4326), 43.9003419, -72.8959433, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461278', 'Pine Gap', 'Gap', 'Vermont', 'VT', 'Addison', 'Bread Loaf', 43.9025641, -72.8962211, ST_GeomFromText('POINT(43.9025641 -72.8962211)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461279', 'Pine Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'East Middlebury', 43.9625215, -73.069235, ST_GeomFromText('POINT(43.9625215 -73.069235)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461282', 'Piper Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Bread Loaf', 43.9286749, -72.8839991, ST_GeomFromText('POINT(43.9286749 -72.8839991)', 4326), 43.9077778, -72.8788889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461286', 'Mount Pleasant', 'Summit', 'Vermont', 'VT', 'Addison', 'East Middlebury', 43.888226, -73.092575, ST_GeomFromText('POINT(43.888226 -73.092575)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461287', 'Mount Pleasant', 'Summit', 'Vermont', 'VT', 'Addison', 'Mount Ellen', 44.1486607, -72.9976165, ST_GeomFromText('POINT(44.1486607 -72.9976165)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461288', 'Pleiad Lake', 'Lake', 'Vermont', 'VT', 'Addison', 'Bread Loaf', 43.9339318, -72.9583105, ST_GeomFromText('POINT(43.9339318 -72.9583105)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461290', 'Pond Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Hinesburg', 44.2819985, -73.1181781, ST_GeomFromText('POINT(44.2819985 -73.1181781)', 4326), 44.1781123, -73.0934533, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461293', 'Prentiss Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Dorset', 43.2670195, -73.1189945, ST_GeomFromText('POINT(43.2670195 -73.1189945)', 4326), 43.2569444, -73.1233333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461294', 'Prentiss Pond', 'Lake', 'Vermont', 'VT', 'Bennington', 'Dorset', 43.2519149, -73.1052668, ST_GeomFromText('POINT(43.2519149 -73.1052668)', 4326), NULL, NULL, '1980-10-29', '2019-12-06', NULL, NULL, NULL),
  ('1461295', 'Proctor Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Mount Holly', 43.4774597, -72.7717988, ST_GeomFromText('POINT(43.4774597 -72.7717988)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461299', 'Prospect Mountain', 'Summit', 'Vermont', 'VT', 'Bennington', 'Stamford', 42.8745156, -73.0670469, ST_GeomFromText('POINT(42.8745156 -73.0670469)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461300', 'Prospect Rock', 'Summit', 'Vermont', 'VT', 'Bennington', 'Manchester', 43.1539565, -73.0087131, ST_GeomFromText('POINT(43.1539565 -73.0087131)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461301', 'Prospect Rock', 'Summit', 'Vermont', 'VT', 'Addison', 'Lincoln', 44.0772738, -72.9542805, ST_GeomFromText('POINT(44.0772738 -72.9542805)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461302', 'Puss and Kill Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Mount Carmel', 43.8045095, -72.9720543, ST_GeomFromText('POINT(43.8045095 -72.9720543)', 4326), 43.8233333, -72.9747222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461304', 'Quimby Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.6725677, -72.779269, ST_GeomFromText('POINT(43.6725677 -72.779269)', 4326), 43.6861111, -72.7636111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461305', 'Quimby Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.6870456, -72.7509254, ST_GeomFromText('POINT(43.6870456 -72.7509254)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461306', 'Rake Branch', 'Stream', 'Vermont', 'VT', 'Windham', 'Mount Snow', 42.9386907, -72.9801017, ST_GeomFromText('POINT(42.9386907 -72.9801017)', 4326), 42.8723027, -73.0031575, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461307', 'Rams Head', 'Summit', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.625387, -72.8230541, ST_GeomFromText('POINT(43.625387 -72.8230541)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461308', 'Randolph Gap', 'Gap', 'Vermont', 'VT', 'Windsor', 'Hancock', 43.876732, -72.7567726, ST_GeomFromText('POINT(43.876732 -72.7567726)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461309', 'Ranney Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Townshend', 43.0770229, -72.707872, ST_GeomFromText('POINT(43.0770229 -72.707872)', 4326), 43.0911111, -72.6791667, '1980-10-29', NULL, 'Official', 'Board Decision', '1982-01-01'),
  ('1461310', 'Lake Raponda', 'Lake', 'Vermont', 'VT', 'Windham', 'West Dover', 42.8751509, -72.8187323, ST_GeomFromText('POINT(42.8751509 -72.8187323)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', 'Official', 'Board Decision', '1959-01-01'),
  ('1461311', 'Rattlesnake Mountain', 'Summit', 'Vermont', 'VT', 'Windham', 'Townshend', 43.0748585, -72.690862, ST_GeomFromText('POINT(43.0748585 -72.690862)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1461312', 'Rattlesnake Point', 'Cliff', 'Vermont', 'VT', 'Addison', 'East Middlebury', 43.9145068, -73.0601138, ST_GeomFromText('POINT(43.9145068 -73.0601138)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461316', 'Red Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Londonderry', 43.1467434, -72.8687103, ST_GeomFromText('POINT(43.1467434 -72.8687103)', 4326), 43.1695207, -72.9103782, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461317', 'Red Mill Pond', 'Lake', 'Vermont', 'VT', 'Bennington', 'Woodford', 42.8895875, -73.0279545, ST_GeomFromText('POINT(42.8895875 -73.0279545)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1461318', 'Red Mill Pond Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Woodford', 42.8950801, -73.0081578, ST_GeomFromText('POINT(42.8950801 -73.0081578)', 4326), 42.89, -73.0280556, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461319', 'Red Mountain', 'Summit', 'Vermont', 'VT', 'Bennington', 'Arlington', 43.1081615, -73.1678864, ST_GeomFromText('POINT(43.1081615 -73.1678864)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461320', 'Redfield Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Woodford', 42.9181354, -73.001491, ST_GeomFromText('POINT(42.9181354 -73.001491)', 4326), 42.9075, -73.0413889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461321', 'Mount Reeder', 'Summit', 'Vermont', 'VT', 'Windsor', 'Rochester', 43.8741305, -72.8324489, ST_GeomFromText('POINT(43.8741305 -72.8324489)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461322', 'Reservoir Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Stamford', 42.8411918, -73.0312137, ST_GeomFromText('POINT(42.8411918 -73.0312137)', 4326), 42.8236111, -73.0638889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461324', 'Rice Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Mount Ellen', 44.1364488, -72.8801152, ST_GeomFromText('POINT(44.1364488 -72.8801152)', 4326), 44.1436111, -72.9038889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461325', 'Rice Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'West Dover', 42.9782787, -72.8277116, ST_GeomFromText('POINT(42.9782787 -72.8277116)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1461326', 'Rice Mountain', 'Summit', 'Vermont', 'VT', 'Washington', 'Warren', 44.0564916, -72.8011041, ST_GeomFromText('POINT(44.0564916 -72.8011041)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1461329', 'Riford Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Randolph', 43.9433981, -72.7103839, ST_GeomFromText('POINT(43.9433981 -72.7103839)', 4326), 43.949231, -72.7798304, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461336', 'Roaring Branch', 'Stream', 'Vermont', 'VT', 'Bennington', 'Pownal', 42.8373017, -73.1656619, ST_GeomFromText('POINT(42.8373017 -73.1656619)', 4326), 42.8059136, -73.1181604, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461337', 'Roaring Branch', 'Stream', 'Vermont', 'VT', 'Bennington', 'Arlington', 43.0750774, -73.1406619, ST_GeomFromText('POINT(43.0750774 -73.1406619)', 4326), 43.0498, -73.0417705, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461338', 'Roaring Branch Walloomsac Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Bennington', 42.893412, -73.2023299, ST_GeomFromText('POINT(42.893412 -73.2023299)', 4326), 42.9086903, -73.1187166, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461339', 'Roaring Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Stamford', 42.7561926, -73.0642696, ST_GeomFromText('POINT(42.7561926 -73.0642696)', 4326), 42.8152778, -73.0711111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461340', 'Roaring Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Wallingford', 43.4714594, -72.9806602, ST_GeomFromText('POINT(43.4714594 -72.9806602)', 4326), 43.4605556, -72.9027778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461341', 'Roaring Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.6589568, -72.7706575, ST_GeomFromText('POINT(43.6589568 -72.7706575)', 4326), 43.6325, -72.8202778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461342', 'Robbins Branch', 'Stream', 'Vermont', 'VT', 'Addison', 'Bread Loaf', 43.9295081, -72.8984439, ST_GeomFromText('POINT(43.9295081 -72.8984439)', 4326), 43.9133333, -72.9533333, '1980-10-29', NULL, 'Official', 'Board Decision', '1971-01-01'),
  ('1461346', 'Rock River', 'Stream', 'Vermont', 'VT', 'Windham', 'Newfane', 42.947303, -72.6420366, ST_GeomFromText('POINT(42.947303 -72.6420366)', 4326), 42.987024, -72.8270417, '1980-10-29', '2018-07-31', NULL, NULL, NULL),
  ('1461349', 'Roger Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Mount Holly', 43.4656262, -72.8632712, ST_GeomFromText('POINT(43.4656262 -72.8632712)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461350', 'Rogers Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Rochester', 43.8514542, -72.8014954, ST_GeomFromText('POINT(43.8514542 -72.8014954)', 4326), 43.8583333, -72.7536111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461351', 'Rogers Peak', 'Summit', 'Vermont', 'VT', 'Windsor', 'Rochester', 43.8397789, -72.7826045, ST_GeomFromText('POINT(43.8397789 -72.7826045)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461352', 'Romance Mountain', 'Summit', 'Vermont', 'VT', 'Addison', 'Bread Loaf', 43.882248, -72.9859936, ST_GeomFromText('POINT(43.882248 -72.9859936)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', 'Official', 'Board Decision', '1971-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461353', 'Mount Roosevelt', 'Summit', 'Vermont', 'VT', 'Addison', 'Lincoln', 44.0199607, -72.9176148, ST_GeomFromText('POINT(44.0199607 -72.9176148)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461354', 'Rose Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Mount Snow', 42.8856363, -72.894821, ST_GeomFromText('POINT(42.8856363 -72.894821)', 4326), 42.9044444, -72.9036111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461355', 'Round Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Mount Carmel', 43.815612, -72.884551, ST_GeomFromText('POINT(43.815612 -72.884551)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461356', 'Round Pinnacle', 'Summit', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.6883919, -72.7851017, ST_GeomFromText('POINT(43.6883919 -72.7851017)', 4326), NULL, NULL, '1980-10-29', '2018-11-14', NULL, NULL, NULL),
  ('1461357', 'Roxbury Gap', 'Gap', 'Vermont', 'VT', 'Washington', 'Warren', 44.109228, -72.7878904, ST_GeomFromText('POINT(44.109228 -72.7878904)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461360', 'Russell Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Mount Holly', 43.4775705, -72.8564902, ST_GeomFromText('POINT(43.4775705 -72.8564902)', 4326), 43.4902778, -72.7997222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461363', 'Rutland City Reservoir', 'Reservoir', 'Vermont', 'VT', 'Rutland', 'Chittenden', 43.6489412, -72.942954, ST_GeomFromText('POINT(43.6489412 -72.942954)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1461364', 'Sable Mountain', 'Summit', 'Vermont', 'VT', 'Windsor', 'Pico Peak', 43.7442246, -72.768991, ST_GeomFromText('POINT(43.7442246 -72.768991)', 4326), NULL, NULL, '1980-10-29', '2018-11-14', NULL, NULL, NULL),
  ('1461365', 'Sadawga Lake', 'Reservoir', 'Vermont', 'VT', 'Windham', 'Readsboro', 42.7808523, -72.8779653, ST_GeomFromText('POINT(42.7808523 -72.8779653)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1461366', 'Sage Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Jamaica', 43.0902339, -72.8615535, ST_GeomFromText('POINT(43.0902339 -72.8615535)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461372', 'Salisbury Swamp', 'Swamp', 'Vermont', 'VT', 'Addison', 'Cornwall', 43.8906174, -73.1340034, ST_GeomFromText('POINT(43.8906174 -73.1340034)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461374', 'Sandusky Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Warren', 44.0278411, -72.7576096, ST_GeomFromText('POINT(44.0278411 -72.7576096)', 4326), 44.0641667, -72.7891667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461379', 'Scrag Mountain', 'Summit', 'Vermont', 'VT', 'Washington', 'Waitsfield', 44.1563911, -72.7727045, ST_GeomFromText('POINT(44.1563911 -72.7727045)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1461380', 'Scrub Hill', 'Summit', 'Vermont', 'VT', 'Bennington', 'Stamford', 42.8045161, -73.107881, ST_GeomFromText('POINT(42.8045161 -73.107881)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461381', 'Seager Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Brandon', 43.7717218, -73.1164993, ST_GeomFromText('POINT(43.7717218 -73.1164993)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461383', 'Searsburg Reservoir', 'Reservoir', 'Vermont', 'VT', 'Bennington', 'Mount Snow', 42.9038678, -72.9505613, ST_GeomFromText('POINT(42.9038678 -72.9505613)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1461384', 'Seymour Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Cornwall', 43.8797842, -73.1317809, ST_GeomFromText('POINT(43.8797842 -73.1317809)', 4326), 43.8408964, -73.0965017, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461388', 'Lake Shaftsbury', 'Reservoir', 'Vermont', 'VT', 'Bennington', 'Arlington', 43.0204375, -73.1824169, ST_GeomFromText('POINT(43.0204375 -73.1824169)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1461389', 'Shatterack Mountain', 'Summit', 'Vermont', 'VT', 'Windham', 'Londonderry', 43.1369355, -72.7800923, ST_GeomFromText('POINT(43.1369355 -72.7800923)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461390', 'Shaw Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.705949, -72.7843746, ST_GeomFromText('POINT(43.705949 -72.7843746)', 4326), NULL, NULL, '1980-10-29', '2018-11-14', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461391', 'Shaw Hill Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.6864564, -72.7909363, ST_GeomFromText('POINT(43.6864564 -72.7909363)', 4326), 43.6986111, -72.7738889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461392', 'Sheep Hill', 'Summit', 'Vermont', 'VT', 'Bennington', 'North Adams', 42.7451196, -73.1106585, ST_GeomFromText('POINT(42.7451196 -73.1106585)', 4326), NULL, NULL, '1980-10-29', '2020-12-23', NULL, NULL, NULL),
  ('1461393', 'Shep Meadow', 'Lake', 'Vermont', 'VT', 'Windham', 'Mount Snow', 42.9915923, -72.9833424, ST_GeomFromText('POINT(42.9915923 -72.9833424)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1461394', 'Shepard Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Waitsfield', 44.2270032, -72.7828937, ST_GeomFromText('POINT(44.2270032 -72.7828937)', 4326), 44.2792232, -72.8956746, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461396', 'Sherburne Pass', 'Gap', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.6636788, -72.8328814, ST_GeomFromText('POINT(43.6636788 -72.8328814)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461400', 'Silent Cliff', 'Cliff', 'Vermont', 'VT', 'Addison', 'Bread Loaf', 43.9336744, -72.9437229, ST_GeomFromText('POINT(43.9336744 -72.9437229)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461401', 'Silver Lake', 'Reservoir', 'Vermont', 'VT', 'Addison', 'East Middlebury', 43.8908907, -73.0525528, ST_GeomFromText('POINT(43.8908907 -73.0525528)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1461402', 'Simpson Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Townshend', 43.069801, -72.6545373, ST_GeomFromText('POINT(43.069801 -72.6545373)', 4326), 43.1144444, -72.6752778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461404', 'Skinner Hollow', 'Valley', 'Vermont', 'VT', 'Bennington', 'Manchester', 43.1454617, -73.0999396, ST_GeomFromText('POINT(43.1454617 -73.0999396)', 4326), 43.1613597, -73.117305, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1461405', 'Skylight Pond', 'Lake', 'Vermont', 'VT', 'Addison', 'Bread Loaf', 43.986707, -72.9357981, ST_GeomFromText('POINT(43.986707 -72.9357981)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461407', 'Slab Bridge Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Rochester', 43.7922879, -72.8845518, ST_GeomFromText('POINT(43.7922879 -72.8845518)', 4326), 43.81, -72.885, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461408', 'Sleepy Hollow', 'Valley', 'Vermont', 'VT', 'Bennington', 'Mount Snow', 42.8813542, -72.9536903, ST_GeomFromText('POINT(42.8813542 -72.9536903)', 4326), 42.8636539, -72.9701402, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1461409', 'Slide Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Mount Ellen', 44.17867, -72.8828941, ST_GeomFromText('POINT(44.17867 -72.8828941)', 4326), 44.1544444, -72.9161111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461410', 'Smalley Swamp', 'Swamp', 'Vermont', 'VT', 'Rutland', 'Brandon', 43.7983976, -73.0601115, ST_GeomFromText('POINT(43.7983976 -73.0601115)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461411', 'Smith Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Mount Carmel', 43.852009, -72.9228873, ST_GeomFromText('POINT(43.852009 -72.9228873)', 4326), 43.8688889, -72.9675, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461412', 'Smith Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Newfane', 42.9648028, -72.6478701, ST_GeomFromText('POINT(42.9648028 -72.6478701)', 4326), 43.0100799, -72.6850934, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461417', 'Mount Snow', 'Summit', 'Vermont', 'VT', 'Windham', 'Mount Snow', 42.9593367, -72.922989, ST_GeomFromText('POINT(42.9593367 -72.922989)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', 'Official', 'Board Decision', '1966-01-01'),
  ('1461419', 'Somerset Reservoir', 'Reservoir', 'Vermont', 'VT', 'Windham', 'Stratton Mountain', 43.0097337, -72.9561553, ST_GeomFromText('POINT(43.0097337 -72.9561553)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1461420', 'Souphouse Flat', 'Flat', 'Vermont', 'VT', 'Windsor', 'Mount Carmel', 43.8481203, -72.9267762, ST_GeomFromText('POINT(43.8481203 -72.9267762)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461421', 'South Alder Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Sunderland', 43.0498, -73.0417705, ST_GeomFromText('POINT(43.0498 -73.0417705)', 4326), 43.0405556, -73.0186111, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461423', 'South Branch Deerfield River', 'Stream', 'Vermont', 'VT', 'Windham', 'Rowe', 42.7453604, -72.9264877, ST_GeomFromText('POINT(42.7453604 -72.9264877)', 4326), 42.7689708, -73.0098237, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461424', 'South Branch Middlebury River', 'Stream', 'Vermont', 'VT', 'Addison', 'East Middlebury', 43.9742285, -73.0356701, ST_GeomFromText('POINT(43.9742285 -73.0356701)', 4326), 43.9397853, -72.9590011, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461425', 'South Branch Saxtons River', 'Stream', 'Vermont', 'VT', 'Windham', 'Saxtons River', 43.1695213, -72.6034252, ST_GeomFromText('POINT(43.1695213 -72.6034252)', 4326), 43.0998004, -72.6517595, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461426', 'South Branch Tweed River', 'Stream', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.7500665, -72.8206603, ST_GeomFromText('POINT(43.7500665 -72.8206603)', 4326), 43.7002778, -72.8236111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461427', 'South Buckball Peak', 'Summit', 'Vermont', 'VT', 'Rutland', 'Danby', 43.3377798, -72.9416304, ST_GeomFromText('POINT(43.3377798 -72.9416304)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461432', 'South Fork Roaring Branch', 'Stream', 'Vermont', 'VT', 'Bennington', 'Sunderland', 43.0406334, -73.0873273, ST_GeomFromText('POINT(43.0406334 -73.0873273)', 4326), 43.0286111, -73.04, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461433', 'South Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Pico Peak', 43.7418534, -72.806314, ST_GeomFromText('POINT(43.7418534 -72.806314)', 4326), NULL, NULL, '1980-10-29', '2018-11-14', NULL, NULL, NULL),
  ('1461434', 'South Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Rochester', 43.7603354, -72.7945475, ST_GeomFromText('POINT(43.7603354 -72.7945475)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461440', 'South Mountain', 'Summit', 'Vermont', 'VT', 'Addison', 'South Mountain', 44.0993096, -73.0496776, ST_GeomFromText('POINT(44.0993096 -73.0496776)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461441', 'South Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Mount Holly', 43.3773824, -72.7640058, ST_GeomFromText('POINT(43.3773824 -72.7640058)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461442', 'South Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.7161737, -72.8749711, ST_GeomFromText('POINT(43.7161737 -72.8749711)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1461443', 'South Pond Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Woodford', 42.9445238, -73.0139916, ST_GeomFromText('POINT(42.9445238 -73.0139916)', 4326), 42.9566667, -73.0272222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461447', 'South Stream', 'Stream', 'Vermont', 'VT', 'Bennington', 'Pownal', 42.871468, -73.1831626, ST_GeomFromText('POINT(42.871468 -73.1831626)', 4326), 42.7825, -73.1888889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461449', 'South Village Pond', 'Lake', 'Vermont', 'VT', 'Bennington', 'Manchester', 43.2279918, -73.0133091, ST_GeomFromText('POINT(43.2279918 -73.0133091)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL),
  ('1461453', 'Sparks Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'East Middlebury', 43.9750618, -73.0331701, ST_GeomFromText('POINT(43.9750618 -73.0331701)', 4326), 44.0131175, -72.9678917, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461454', 'Spring Lake', 'Lake', 'Vermont', 'VT', 'Rutland', 'Wallingford', 43.4959545, -72.918906, ST_GeomFromText('POINT(43.4959545 -72.918906)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1461455', 'Spring Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Brandon', 43.8354321, -73.0640708, ST_GeomFromText('POINT(43.8354321 -73.0640708)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1461456', 'Spruce Hill', 'Summit', 'Vermont', 'VT', 'Bennington', 'Stamford', 42.8172938, -73.1020476, ST_GeomFromText('POINT(42.8172938 -73.1020476)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461457', 'Spruce Peak', 'Summit', 'Vermont', 'VT', 'Bennington', 'Arlington', 43.0451404, -73.2101833, ST_GeomFromText('POINT(43.0451404 -73.2101833)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461458', 'Spruce Peak', 'Summit', 'Vermont', 'VT', 'Bennington', 'Peru', 43.1859375, -72.9932933, ST_GeomFromText('POINT(43.1859375 -72.9932933)', 4326), NULL, NULL, '1980-10-29', '2018-11-14', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461459', 'Stacey Mountain', 'Summit', 'Vermont', 'VT', 'Windham', 'Jamaica', 43.0434, -72.7656437, ST_GeomFromText('POINT(43.0434 -72.7656437)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461461', 'Stamford Stream', 'Stream', 'Vermont', 'VT', 'Bennington', 'Woodford', 42.8767462, -73.1167718, ST_GeomFromText('POINT(42.8767462 -73.1167718)', 4326), 42.8353581, -73.0834373, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461462', 'Stamford Meadows', 'Swamp', 'Vermont', 'VT', 'Bennington', 'Stamford', 42.8264692, -73.0970488, ST_GeomFromText('POINT(42.8264692 -73.0970488)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461463', 'Stamford Pond', 'Lake', 'Vermont', 'VT', 'Bennington', 'Stamford', 42.8221947, -73.065336, ST_GeomFromText('POINT(42.8221947 -73.065336)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1461465', 'Star Lake', 'Lake', 'Vermont', 'VT', 'Rutland', 'Mount Holly', 43.4188787, -72.8163037, ST_GeomFromText('POINT(43.4188787 -72.8163037)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', 'Official', 'Board Decision', '1959-01-01'),
  ('1461466', 'Stark Mountain', 'Summit', 'Vermont', 'VT', 'Washington', 'Mount Ellen', 44.1842161, -72.9288706, ST_GeomFromText('POINT(44.1842161 -72.9288706)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461468', 'Stave Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Mount Ellen', 44.2095018, -72.9653963, ST_GeomFromText('POINT(44.2095018 -72.9653963)', 4326), 44.2022222, -72.9397222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461469', 'Steam Mill Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Mount Carmel', 43.7775655, -72.9698315, ST_GeomFromText('POINT(43.7775655 -72.9698315)', 4326), 43.8041667, -72.9727778, '1980-10-29', NULL, 'Official', 'Board Decision', '1971-01-01'),
  ('1461470', 'Stetson Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Warren', 44.0808946, -72.8590021, ST_GeomFromText('POINT(44.0808946 -72.8590021)', 4326), 44.0592279, -72.9231696, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461471', 'Stiles Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Windham', 43.1253555, -72.6406482, ST_GeomFromText('POINT(43.1253555 -72.6406482)', 4326), 43.1541667, -72.7036111, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461472', 'Stiles Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Brandon', 43.7579323, -73.1153021, ST_GeomFromText('POINT(43.7579323 -73.1153021)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461474', 'Stony Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Manchester', 43.1964647, -73.0176035, ST_GeomFromText('POINT(43.1964647 -73.0176035)', 4326), 43.2139644, -72.9951031, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461477', 'Stratton Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Bennington', 42.913412, -73.1851073, ST_GeomFromText('POINT(42.913412 -73.1851073)', 4326), 42.9211111, -73.1544444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461478', 'Stratton Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'West Dover', 42.9136444, -72.7634099, ST_GeomFromText('POINT(42.9136444 -72.7634099)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1461479', 'Stratton Mountain', 'Summit', 'Vermont', 'VT', 'Windham', 'Stratton Mountain', 43.0862572, -72.9248856, ST_GeomFromText('POINT(43.0862572 -72.9248856)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1461481', 'Stratton Pond', 'Lake', 'Vermont', 'VT', 'Windham', 'Stratton Mountain', 43.1045625, -72.9686403, ST_GeomFromText('POINT(43.1045625 -72.9686403)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1461482', 'Streeter Island', 'Island', 'Vermont', 'VT', 'Windham', 'Stratton Mountain', 43.0199614, -72.9409289, ST_GeomFromText('POINT(43.0199614 -72.9409289)', 4326), NULL, NULL, '1980-10-29', '2018-06-21', NULL, NULL, NULL),
  ('1461483', 'Styles Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Danby', 43.2528527, -72.8864889, ST_GeomFromText('POINT(43.2528527 -72.8864889)', 4326), 43.2761111, -72.9269444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461484', 'Styles Peak', 'Summit', 'Vermont', 'VT', 'Bennington', 'Danby', 43.2736768, -72.9384338, ST_GeomFromText('POINT(43.2736768 -72.9384338)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461485', 'Sucker Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'East Middlebury', 43.9050624, -73.0731693, ST_GeomFromText('POINT(43.9050624 -73.0731693)', 4326), 43.8886749, -72.9812229, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461489', 'Sugar Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'East Middlebury', 43.9115725, -73.0133762, ST_GeomFromText('POINT(43.9115725 -73.0133762)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461490', 'Sugar Hill Reservoir', 'Reservoir', 'Vermont', 'VT', 'Addison', 'East Middlebury', 43.9120757, -73.0023095, ST_GeomFromText('POINT(43.9120757 -73.0023095)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1461491', 'Sugar Hollow Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Proctor', 43.6950664, -73.0231645, ST_GeomFromText('POINT(43.6950664 -73.0231645)', 4326), 43.8267311, -73.0137224, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461492', 'Sugar Hollow Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Brandon', 43.7561611, -73.0282433, ST_GeomFromText('POINT(43.7561611 -73.0282433)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1461493', 'Sugarloaf Mountain', 'Summit', 'Vermont', 'VT', 'Washington', 'Warren', 44.1122738, -72.8731687, ST_GeomFromText('POINT(44.1122738 -72.8731687)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1461495', 'Sumner Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Stamford', 42.7728592, -73.0473248, ST_GeomFromText('POINT(42.7728592 -73.0473248)', 4326), 42.7958333, -73.06, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461498', 'Sunset Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'East Middlebury', 43.913923, -73.0923727, ST_GeomFromText('POINT(43.913923 -73.0923727)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461499', 'Swale Meadow', 'Flat', 'Vermont', 'VT', 'Rutland', 'Danby', 43.313407, -72.9348242, ST_GeomFromText('POINT(43.313407 -72.9348242)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461501', 'Sykes Hollow', 'Valley', 'Vermont', 'VT', 'Rutland', 'Pawlet', 43.3101328, -73.1321865, ST_GeomFromText('POINT(43.3101328 -73.1321865)', 4326), 43.3258636, -73.1080223, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1461502', 'Table Rock', 'Summit', 'Vermont', 'VT', 'Bennington', 'Manchester', 43.1581046, -73.103123, ST_GeomFromText('POINT(43.1581046 -73.103123)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461503', 'Mount Tabor', 'Summit', 'Vermont', 'VT', 'Bennington', 'Danby', 43.2824127, -72.9661406, ST_GeomFromText('POINT(43.2824127 -72.9661406)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461504', 'Taft Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'West Dover', 42.9498026, -72.7700953, ST_GeomFromText('POINT(42.9498026 -72.7700953)', 4326), 42.9466667, -72.8044444, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461506', 'Taggart Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Delectable Mountain', 43.7347893, -72.7356578, ST_GeomFromText('POINT(43.7347893 -72.7356578)', 4326), 43.736178, -72.7717699, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461508', 'Tanner Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Sunderland', 43.1167436, -73.1034387, ST_GeomFromText('POINT(43.1167436 -73.1034387)', 4326), 43.1614654, -73.1176057, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461509', 'Tannery Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Townshend', 43.072023, -72.7106498, ST_GeomFromText('POINT(43.072023 -72.7106498)', 4326), 43.1339663, -72.6920385, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461511', 'Taylor Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.6725677, -72.780658, ST_GeomFromText('POINT(43.6725677 -72.780658)', 4326), 43.6694444, -72.7505556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461512', 'Taylor Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Bread Loaf', 43.9267306, -72.8773323, ST_GeomFromText('POINT(43.9267306 -72.8773323)', 4326), 43.9508333, -72.8802778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461513', 'Taylors Pinnacle', 'Summit', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.6755601, -72.76781, ST_GeomFromText('POINT(43.6755601 -72.76781)', 4326), NULL, NULL, '1980-10-29', '2018-11-14', NULL, NULL, NULL),
  ('1461515', 'Telephone Gap', 'Gap', 'Vermont', 'VT', 'Rutland', 'Mount Carmel', 43.7597882, -72.9017737, ST_GeomFromText('POINT(43.7597882 -72.9017737)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461516', 'Ten Kilns Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Danby', 43.3542396, -72.9151018, ST_GeomFromText('POINT(43.3542396 -72.9151018)', 4326), 43.3770168, -72.8901014, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461517', 'Tenney Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Rutland', 43.6145124, -72.9895514, ST_GeomFromText('POINT(43.6145124 -72.9895514)', 4326), 43.6400678, -72.9328836, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461518', 'Terrible Mountain', 'Summit', 'Vermont', 'VT', 'Windsor', 'Andover', 43.3135482, -72.7434803, ST_GeomFromText('POINT(43.3135482 -72.7434803)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461519', 'Texas Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Bread Loaf', 43.9422857, -72.9062222, ST_GeomFromText('POINT(43.9422857 -72.9062222)', 4326), 43.9730556, -72.8902778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461520', 'Texas Falls', 'Falls', 'Vermont', 'VT', 'Addison', 'Bread Loaf', 43.9347858, -72.9003885, ST_GeomFromText('POINT(43.9347858 -72.9003885)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461521', 'Texas Gap', 'Gap', 'Vermont', 'VT', 'Addison', 'Bread Loaf', 43.9775631, -72.8898336, ST_GeomFromText('POINT(43.9775631 -72.8898336)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461522', 'Thatcher Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Hancock', 43.9500639, -72.839554, ST_GeomFromText('POINT(43.9500639 -72.839554)', 4326), 43.9705556, -72.8008333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461523', 'The Ball', 'Summit', 'Vermont', 'VT', 'Bennington', 'Arlington', 43.0622783, -73.1966296, ST_GeomFromText('POINT(43.0622783 -73.1966296)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461525', 'The Cape', 'Summit', 'Vermont', 'VT', 'Rutland', 'Mount Carmel', 43.8081117, -72.9864978, ST_GeomFromText('POINT(43.8081117 -72.9864978)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', 'Official', 'Board Decision', '1971-01-01'),
  ('1461526', 'The Cobble', 'Summit', 'Vermont', 'VT', 'Addison', 'South Mountain', 44.0585011, -73.0938098, ST_GeomFromText('POINT(44.0585011 -73.0938098)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461527', 'The Darning Needle', 'Summit', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.7354348, -72.8487323, ST_GeomFromText('POINT(43.7354348 -72.8487323)', 4326), NULL, NULL, '1980-10-29', '2018-11-14', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461528', 'The Dome', 'Summit', 'Vermont', 'VT', 'Bennington', 'Pownal', 42.7783548, -73.1703796, ST_GeomFromText('POINT(42.7783548 -73.1703796)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461529', 'The Elbow', 'Gap', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.6956227, -72.8559381, ST_GeomFromText('POINT(43.6956227 -72.8559381)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461531', 'The Great Cliff', 'Cliff', 'Vermont', 'VT', 'Windsor', 'Mount Carmel', 43.8447867, -72.9642771, ST_GeomFromText('POINT(43.8447867 -72.9642771)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461533', 'The Mettawee', 'Summit', 'Vermont', 'VT', 'Bennington', 'Dorset', 43.2953753, -73.0451094, ST_GeomFromText('POINT(43.2953753 -73.0451094)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461534', 'The Natural Turnpike', 'Gap', 'Vermont', 'VT', 'Addison', 'Lincoln', 44.0161729, -72.9667807, ST_GeomFromText('POINT(44.0161729 -72.9667807)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461535', 'The Ox Bow', 'Cliff', 'Vermont', 'VT', 'Rutland', 'Dorset', 43.3425733, -73.1037169, ST_GeomFromText('POINT(43.3425733 -73.1037169)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461536', 'The Pinnacle', 'Summit', 'Vermont', 'VT', 'Windham', 'Jamaica', 43.1245127, -72.8578753, ST_GeomFromText('POINT(43.1245127 -72.8578753)', 4326), NULL, NULL, '1980-10-29', '2018-11-20', NULL, NULL, NULL),
  ('1461537', 'The Scallop', 'Summit', 'Vermont', 'VT', 'Bennington', 'Dorset', 43.3051778, -73.109285, ST_GeomFromText('POINT(43.3051778 -73.109285)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461539', 'Third Branch White River', 'Stream', 'Vermont', 'VT', 'Windsor', 'Bethel', 43.8281223, -72.632879, ST_GeomFromText('POINT(43.8281223 -72.632879)', 4326), 44.0706182, -72.7117761, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461541', 'Thompsons Pond', 'Reservoir', 'Vermont', 'VT', 'Bennington', 'Pownal', 42.7807318, -73.1868228, ST_GeomFromText('POINT(42.7807318 -73.1868228)', 4326), NULL, NULL, '1980-10-29', '2018-02-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461542', 'Thousand Acre Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Mount Carmel', 43.7790276, -72.883823, ST_GeomFromText('POINT(43.7790276 -72.883823)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461543', 'Three Shanties Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Danby', 43.3328511, -72.9295465, ST_GeomFromText('POINT(43.3328511 -72.9295465)', 4326), 43.3213889, -72.9186111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461544', 'Thunder Head', 'Summit', 'Vermont', 'VT', 'Addison', 'Hancock', 43.9174936, -72.8329711, ST_GeomFromText('POINT(43.9174936 -72.8329711)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461545', 'Tidd Hollow', 'Valley', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.1275059, -73.1924242, ST_GeomFromText('POINT(43.1275059 -73.1924242)', 4326), 43.1129421, -73.1790266, '1980-10-29', '2018-08-01', NULL, NULL, NULL),
  ('1461546', 'Tobey Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Readsboro', 42.7689711, -72.9306547, ST_GeomFromText('POINT(42.7689711 -72.9306547)', 4326), 42.7741667, -72.9088889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461547', 'Toddy Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Randolph', 43.9436757, -72.7473295, ST_GeomFromText('POINT(43.9436757 -72.7473295)', 4326), 43.9322867, -72.7726077, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461548', 'Townsend Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.7500665, -72.8206603, ST_GeomFromText('POINT(43.7500665 -72.8206603)', 4326), 43.7464552, -72.8839952, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461551', 'Trumbull Mountain', 'Summit', 'Vermont', 'VT', 'Bennington', 'Bennington', 42.9858259, -73.1721019, ST_GeomFromText('POINT(42.9858259 -73.1721019)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461552', 'Tucker Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Hancock', 43.9253418, -72.8659431, ST_GeomFromText('POINT(43.9253418 -72.8659431)', 4326), 43.9497222, -72.8727778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461553', 'Tunnel Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'Hancock', 43.914231, -72.8356643, ST_GeomFromText('POINT(43.914231 -72.8356643)', 4326), 43.8894444, -72.8494444, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461555', 'Turkey Mountain', 'Summit', 'Vermont', 'VT', 'Windham', 'Windham', 43.1321185, -72.7468231, ST_GeomFromText('POINT(43.1321185 -72.7468231)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1461556', 'Turkey Mountain Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Townshend', 43.0761895, -72.7412062, ST_GeomFromText('POINT(43.0761895 -72.7412062)', 4326), 43.1870206, -72.7395401, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461557', 'Tweed River', 'Stream', 'Vermont', 'VT', 'Rutland', 'Rochester', 43.7764553, -72.753437, ST_GeomFromText('POINT(43.7764553 -72.753437)', 4326), 43.75, -72.8213889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461560', 'Utley Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Londonderry', 43.2278532, -72.8134313, ST_GeomFromText('POINT(43.2278532 -72.8134313)', 4326), 43.3336844, -72.8450997, '1980-10-29', NULL, 'Official', 'Board Decision', '1959-01-01'),
  ('1461566', 'Vose Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Mount Snow', 42.8892471, -72.9514893, ST_GeomFromText('POINT(42.8892471 -72.9514893)', 4326), 42.9033333, -72.9305556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461567', 'Voters Brook', 'Stream', 'Vermont', 'VT', 'Addison', 'East Middlebury', 43.9131183, -73.0442801, ST_GeomFromText('POINT(43.9131183 -73.0442801)', 4326), 43.9275, -73.0452778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461569', 'Waite Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Jamaica', 43.0267457, -72.8298197, ST_GeomFromText('POINT(43.0267457 -72.8298197)', 4326), 42.999246, -72.8595428, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461572', 'Mount Waitsfield', 'Summit', 'Vermont', 'VT', 'Washington', 'Waitsfield', 44.2143348, -72.7593149, ST_GeomFromText('POINT(44.2143348 -72.7593149)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1461574', 'Wallingford Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Wallingford', 43.4147019, -72.9083066, ST_GeomFromText('POINT(43.4147019 -72.9083066)', 4326), NULL, NULL, '1980-10-29', '2023-07-07', NULL, NULL, NULL),
  ('1461577', 'Wardsboro Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Townshend', 43.0723007, -72.7342615, ST_GeomFromText('POINT(43.0723007 -72.7342615)', 4326), 43.0384117, -72.9059332, '1980-10-29', NULL, 'Official', 'Board Decision', '1959-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461578', 'Wardsboro Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Townshend', 43.001469, -72.6714818, ST_GeomFromText('POINT(43.001469 -72.6714818)', 4326), 43.0303571, -72.7456505, '1980-10-29', NULL, 'Official', 'Board Decision', '1983-01-01'),
  ('1461580', 'Warm Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Arlington', 43.0867439, -73.148162, ST_GeomFromText('POINT(43.0867439 -73.148162)', 4326), 42.9934114, -73.1762186, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461582', 'Warren Pinnacle', 'Pillar', 'Vermont', 'VT', 'Washington', 'Warren', 44.1222827, -72.837614, ST_GeomFromText('POINT(44.1222827 -72.837614)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461583', 'Waste Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Brandon', 43.8292223, -73.0081654, ST_GeomFromText('POINT(43.8292223 -73.0081654)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461584', 'Weatherby Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Dorset', 43.3347956, -73.0673274, ST_GeomFromText('POINT(43.3347956 -73.0673274)', 4326), 43.3133333, -73.0658333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461586', 'West Branch Batten Kill', 'Stream', 'Vermont', 'VT', 'Bennington', 'Manchester', 43.1720206, -73.0517708, ST_GeomFromText('POINT(43.1720206 -73.0517708)', 4326), 43.2480556, -73.0997222, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461587', 'West Branch Deerfield River', 'Stream', 'Vermont', 'VT', 'Bennington', 'Readsboro', 42.7698044, -72.9473219, ST_GeomFromText('POINT(42.7698044 -72.9473219)', 4326), 42.8611912, -73.0673259, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461588', 'West Branch Tweed River', 'Stream', 'Vermont', 'VT', 'Rutland', 'Rochester', 43.7675663, -72.8128827, ST_GeomFromText('POINT(43.7675663 -72.8128827)', 4326), 43.7922879, -72.8845518, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461589', 'West Branch White River', 'Stream', 'Vermont', 'VT', 'Windsor', 'Rochester', 43.8600652, -72.8098292, ST_GeomFromText('POINT(43.8600652 -72.8098292)', 4326), 43.8597222, -72.8716667, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461591', 'West Hill', 'Summit', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.6558923, -72.7867678, ST_GeomFromText('POINT(43.6558923 -72.7867678)', 4326), NULL, NULL, '1980-10-29', '2018-11-14', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461595', 'West Mountain', 'Summit', 'Vermont', 'VT', 'Bennington', 'Arlington', 43.0184023, -73.2195517, ST_GeomFromText('POINT(43.0184023 -73.2195517)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461596', 'West River', 'Stream', 'Vermont', 'VT', 'Windham', 'Brattleboro', 42.8667484, -72.5562012, ST_GeomFromText('POINT(42.8667484 -72.5562012)', 4326), 43.3709059, -72.7870429, '1980-10-29', '2018-07-31', NULL, NULL, NULL),
  ('1461603', 'Wetmore Gap', 'Gap', 'Vermont', 'VT', 'Rutland', 'Mount Carmel', 43.7786768, -72.9276082, ST_GeomFromText('POINT(43.7786768 -72.9276082)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461606', 'Whetstone Bluff', 'Cliff', 'Vermont', 'VT', 'Bennington', 'Sunderland', 43.048411, -73.0862161, ST_GeomFromText('POINT(43.048411 -73.0862161)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461608', 'White Creek', 'Stream', 'Vermont', 'VT', 'Bennington', 'Sunderland', 43.0981328, -73.0284369, ST_GeomFromText('POINT(43.0981328 -73.0284369)', 4326), 43.0905556, -73.0363889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461610', 'White River', 'Stream', 'Vermont', 'VT', 'Windsor', 'Hanover', 43.6486818, -72.3148134, ST_GeomFromText('POINT(43.6486818 -72.3148134)', 4326), 43.9947847, -72.9331683, '1980-10-29', '2018-07-31', NULL, NULL, NULL),
  ('1461611', 'White Rocks', 'Summit', 'Vermont', 'VT', 'Rutland', 'Wallingford', 43.429151, -72.939203, ST_GeomFromText('POINT(43.429151 -72.939203)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1461612', 'Whites Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'West Dover', 42.9883275, -72.8048816, ST_GeomFromText('POINT(42.9883275 -72.8048816)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1461614', 'Wilcox Peak', 'Summit', 'Vermont', 'VT', 'Rutland', 'Rochester', 43.7915151, -72.8353997, ST_GeomFromText('POINT(43.7915151 -72.8353997)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461615', 'Wilder Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Readsboro', 42.8320258, -72.9073211, ST_GeomFromText('POINT(42.8320258 -72.9073211)', 4326), 42.8425, -72.9411111, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461616', 'Wilder Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Wallingford', 43.3954077, -72.9098323, ST_GeomFromText('POINT(43.3954077 -72.9098323)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1461617', 'Willard Gap', 'Gap', 'Vermont', 'VT', 'Rutland', 'Pico Peak', 43.6745119, -72.8395485, ST_GeomFromText('POINT(43.6745119 -72.8395485)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461618', 'Willard Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Wallingford', 43.3878071, -72.8922256, ST_GeomFromText('POINT(43.3878071 -72.8922256)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', NULL, NULL, NULL),
  ('1461621', 'Wilmington Reservoir', 'Reservoir', 'Vermont', 'VT', 'Windham', 'Mount Snow', 42.8754462, -72.8765507, ST_GeomFromText('POINT(42.8754462 -72.8765507)', 4326), NULL, NULL, '1980-10-29', '2022-08-05', NULL, NULL, NULL),
  ('1461622', 'Mount Wilson', 'Summit', 'Vermont', 'VT', 'Addison', 'Lincoln', 44.0047016, -72.9256359, ST_GeomFromText('POINT(44.0047016 -72.9256359)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461623', 'Wing Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Rochester', 43.8500651, -72.8389963, ST_GeomFromText('POINT(43.8500651 -72.8389963)', 4326), 43.8853424, -72.8537197, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461625', 'Winhall River', 'Stream', 'Vermont', 'VT', 'Windham', 'Londonderry', 43.1570211, -72.7970416, ST_GeomFromText('POINT(43.1570211 -72.7970416)', 4326), 43.0867441, -72.9937139, '1980-10-29', '2018-07-31', NULL, NULL, NULL),
  ('1461627', 'Bristol Pond', 'Lake', 'Vermont', 'VT', 'Addison', 'Bristol', 44.1723899, -73.0879766, ST_GeomFromText('POINT(44.1723899 -73.0879766)', 4326), NULL, NULL, '1980-10-29', '2020-01-15', 'Official', 'Board Decision', '2011-02-17'),
  ('1461629', 'Wiswall Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Townshend', 43.0147163, -72.6729354, ST_GeomFromText('POINT(43.0147163 -72.6729354)', 4326), NULL, NULL, '1980-10-29', '2018-11-16', 'Official', 'Board Decision', '1982-01-01'),
  ('1461630', 'Wolf Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Pico Peak', 43.7107591, -72.7947638, ST_GeomFromText('POINT(43.7107591 -72.7947638)', 4326), NULL, NULL, '1980-10-29', '2018-11-14', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461631', 'Woodard Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Roxbury', 44.0772845, -72.743444, ST_GeomFromText('POINT(44.0772845 -72.743444)', 4326), 44.0947838, -72.7809454, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461636', 'Woodlawn Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Dorset', 43.3374616, -73.0976902, ST_GeomFromText('POINT(43.3374616 -73.0976902)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461637', 'Worden Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Newfane', 42.8964701, -72.736483, ST_GeomFromText('POINT(42.8964701 -72.736483)', 4326), 42.9023031, -72.7834289, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461638', 'Worth Mountain', 'Summit', 'Vermont', 'VT', 'Addison', 'Bread Loaf', 43.9100052, -72.9637184, ST_GeomFromText('POINT(43.9100052 -72.9637184)', 4326), NULL, NULL, '1980-10-29', '2018-11-17', NULL, NULL, NULL),
  ('1461641', 'Yaw Pond', 'Lake', 'Vermont', 'VT', 'Bennington', 'Stamford', 42.8471192, -73.0131271, ST_GeomFromText('POINT(42.8471192 -73.0131271)', 4326), NULL, NULL, '1980-10-29', '2018-02-18', NULL, NULL, NULL),
  ('1461642', 'Yaw Pond Brook', 'Stream', 'Vermont', 'VT', 'Bennington', 'Stamford', 42.8356365, -73.0162132, ST_GeomFromText('POINT(42.8356365 -73.0162132)', 4326), 42.8741667, -73.0227778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461644', 'Feller Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Wallingford', 43.4297936, -72.8887129, ST_GeomFromText('POINT(43.4297936 -72.8887129)', 4326), 43.4208333, -72.9069444, '1991-06-01', NULL, NULL, NULL, NULL),
  ('1461655', 'Pine Lake', 'Reservoir', 'Vermont', 'VT', 'Windham', 'Readsboro', 42.7549145, -72.8788531, ST_GeomFromText('POINT(42.7549145 -72.8788531)', 4326), NULL, NULL, '1991-05-01', '2018-02-18', 'Official', 'Board Decision', '2017-05-10'),
  ('1461673', 'Crystal Pond', 'Lake', 'Vermont', 'VT', 'Windham', 'Mount Snow', 42.9122274, -72.9152596, ST_GeomFromText('POINT(42.9122274 -72.9152596)', 4326), NULL, NULL, '1991-06-01', '2018-02-18', NULL, NULL, NULL),
  ('1461701', 'Peabody Pond', 'Lake', 'Vermont', 'VT', 'Windsor', 'Weston', 43.3173113, -72.8443219, ST_GeomFromText('POINT(43.3173113 -72.8443219)', 4326), NULL, NULL, '1992-06-01', '2018-02-18', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461743', 'Bully Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Wallingford', 43.4570152, -72.9459369, ST_GeomFromText('POINT(43.4570152 -72.9459369)', 4326), 43.4236111, -72.9202778, '1991-02-01', NULL, NULL, NULL, NULL),
  ('1461745', 'Patch Brook', 'Stream', 'Vermont', 'VT', 'Rutland', 'Wallingford', 43.4570152, -72.9312143, ST_GeomFromText('POINT(43.4570152 -72.9312143)', 4326), 43.4677778, -72.9325, '1991-02-01', NULL, NULL, NULL, NULL),
  ('1461752', 'Gale Meadows Pond', 'Reservoir', 'Vermont', 'VT', 'Bennington', 'Londonderry', 43.1717823, -72.8744167, ST_GeomFromText('POINT(43.1717823 -72.8744167)', 4326), NULL, NULL, '1991-02-01', '2018-02-18', NULL, NULL, NULL),
  ('1461774', 'Mount Mansfield', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Mount Mansfield', 44.5436537, -72.814289, ST_GeomFromText('POINT(44.5436537 -72.814289)', 4326), NULL, NULL, '1980-10-29', '2022-09-01', NULL, NULL, NULL),
  ('1461776', 'Jackson Point', 'Cape', 'Vermont', 'VT', 'Grand Isle', 'South Hero', 44.6300452, -73.3479098, ST_GeomFromText('POINT(44.6300452 -73.3479098)', 4326), NULL, NULL, '1980-10-29', NULL, 'Official', 'Board Decision', '1942-01-01'),
  ('1461777', 'Maxfield Point', 'Cape', 'Vermont', 'VT', 'Orleans', 'Newport', 44.9897681, -72.2428807, ST_GeomFromText('POINT(44.9897681 -72.2428807)', 4326), NULL, NULL, '1980-10-29', NULL, 'Official', 'Board Decision', '1891-01-01'),
  ('1461778', 'Pelots Bay', 'Bay', 'Vermont', 'VT', 'Grand Isle', 'North Hero', 44.828653, -73.2998539, ST_GeomFromText('POINT(44.828653 -73.2998539)', 4326), NULL, NULL, '1980-10-29', NULL, 'Official', 'Board Decision', '1967-01-01'),
  ('1461780', 'Queneska Island', 'Island', 'Vermont', 'VT', 'Chittenden', 'Juniper Island', 44.4300497, -73.2587385, ST_GeomFromText('POINT(44.4300497 -73.2587385)', 4326), NULL, NULL, '1980-10-29', NULL, 'Official', 'Board Decision', '1906-01-01'),
  ('1461781', 'Stevens Branch', 'Stream', 'Vermont', 'VT', 'Washington', 'Barre West', 44.2400599, -72.5512189, ST_GeomFromText('POINT(44.2400599 -72.5512189)', 4326), 44.0708969, -72.5381592, '1980-10-29', NULL, 'Official', 'Board Decision', '1912-01-01'),
  ('1461782', 'Thompsons Point', 'Cape', 'Vermont', 'VT', 'Chittenden', 'Charlotte', 44.2722745, -73.2912366, ST_GeomFromText('POINT(44.2722745 -73.2912366)', 4326), NULL, NULL, '1980-10-29', '2018-03-27', 'Official', 'Board Decision', '1964-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461783', 'Whipple Point', 'Cape', 'Vermont', 'VT', 'Orleans', 'Newport', 44.9622685, -72.2342695, ST_GeomFromText('POINT(44.9622685 -72.2342695)', 4326), NULL, NULL, '1980-10-29', NULL, 'Official', 'Board Decision', '1890-01-01'),
  ('1461813', 'Mount Ascutney', 'Summit', 'Vermont', 'VT', 'Windsor', 'Windsor', 43.4436975, -72.454602, ST_GeomFromText('POINT(43.4436975 -72.454602)', 4326), NULL, NULL, '1980-10-29', '2021-05-03', 'Official', 'Board Decision', '2018-09-13'),
  ('1461814', 'Bartlett Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Sutton', 44.7063513, -72.0358191, ST_GeomFromText('POINT(44.7063513 -72.0358191)', 4326), NULL, NULL, '1980-10-29', '2022-09-02', NULL, NULL, NULL),
  ('1461816', 'Equinox Mountain', 'Summit', 'Vermont', 'VT', 'Bennington', 'Manchester', 43.1659133, -73.1173951, ST_GeomFromText('POINT(43.1659133 -73.1173951)', 4326), NULL, NULL, '1980-10-29', '2018-11-15', NULL, NULL, NULL),
  ('1461835', 'Great Averill Pond', 'Reservoir', 'Vermont', 'VT', 'Essex', 'Averill', 44.9843256, -71.7028381, ST_GeomFromText('POINT(44.9843256 -71.7028381)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', 'Official', 'Board Decision', '1972-01-01'),
  ('1461837', 'Baldin Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Wolcott', 44.6031074, -72.466221, ST_GeomFromText('POINT(44.6031074 -72.466221)', 4326), 44.6197222, -72.4855556, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461838', 'Bear Swamp', 'Swamp', 'Vermont', 'VT', 'Lamoille', 'Wolcott', 44.5919965, -72.4295532, ST_GeomFromText('POINT(44.5919965 -72.4295532)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461839', 'Beaver Meadow', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Wolcott', 44.5905821, -72.3777478, ST_GeomFromText('POINT(44.5905821 -72.3777478)', 4326), NULL, NULL, '1980-10-29', '2019-11-21', NULL, NULL, NULL),
  ('1461840', 'Brown Hill', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Wolcott', 44.5074845, -72.4431471, ST_GeomFromText('POINT(44.5074845 -72.4431471)', 4326), NULL, NULL, '1980-10-29', '2022-08-29', NULL, NULL, NULL),
  ('1461841', 'Bruce Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Wolcott', 44.5939409, -72.4728878, ST_GeomFromText('POINT(44.5939409 -72.4728878)', 4326), 44.6011111, -72.4908333, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461842', 'Bunker Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Wolcott', 44.5156093, -72.3987188, ST_GeomFromText('POINT(44.5156093 -72.3987188)', 4326), 44.5472222, -72.3958333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461843', 'Cass Brook', 'Stream', 'Vermont', 'VT', 'Orleans', 'Albany', 44.6333846, -72.3831629, ST_GeomFromText('POINT(44.6333846 -72.3831629)', 4326), 44.5850523, -72.382885, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461844', 'Clark Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Wolcott', 44.5772745, -72.4770546, ST_GeomFromText('POINT(44.5772745 -72.4770546)', 4326), 44.5933333, -72.4886111, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461845', 'Currier Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Wolcott', 44.538942, -72.4356644, ST_GeomFromText('POINT(44.538942 -72.4356644)', 4326), 44.5580556, -72.4283333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461846', 'Elmore Branch', 'Stream', 'Vermont', 'VT', 'Orange', 'Wolcott', 44.5397753, -72.4559428, ST_GeomFromText('POINT(44.5397753 -72.4559428)', 4326), 44.4428331, -72.4681642, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461847', 'Elmore Hill', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Wolcott', 44.5078859, -72.4941033, ST_GeomFromText('POINT(44.5078859 -72.4941033)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1461849', 'Hardwick Lake', 'Reservoir', 'Vermont', 'VT', 'Caledonia', 'Caspian Lake', 44.528739, -72.3727995, ST_GeomFromText('POINT(44.528739 -72.3727995)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1461852', 'Jeudevine Mountain', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Wolcott', 44.5739861, -72.3819454, ST_GeomFromText('POINT(44.5739861 -72.3819454)', 4326), NULL, NULL, '1980-10-29', '2022-09-07', NULL, NULL, NULL),
  ('1461853', 'Kate Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Wolcott', 44.5228313, -72.417886, ST_GeomFromText('POINT(44.5228313 -72.417886)', 4326), 44.5005556, -72.4283333, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461854', 'Keeler Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Wolcott', 44.5533863, -72.3856628, ST_GeomFromText('POINT(44.5533863 -72.3856628)', 4326), 44.5747222, -72.3997222, '1980-10-29', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461855', 'Keeler Pond', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Wolcott', 44.5749471, -72.3996838, ST_GeomFromText('POINT(44.5749471 -72.3996838)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1461856', 'Lamoille River', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Colchester', 44.6156017, -73.2479074, ST_GeomFromText('POINT(44.6156017 -73.2479074)', 4326), 44.6158854, -72.2078798, '1980-10-29', '2018-07-31', NULL, NULL, NULL),
  ('1461857', 'Millard Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Wolcott', 44.5214425, -72.413997, ST_GeomFromText('POINT(44.5214425 -72.413997)', 4326), 44.5477778, -72.4102778, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461860', 'Perch Pond', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Wolcott', 44.6106989, -72.4979862, ST_GeomFromText('POINT(44.6106989 -72.4979862)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1461864', 'Scribner Hill', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Wolcott', 44.5669168, -72.3979284, ST_GeomFromText('POINT(44.5669168 -72.3979284)', 4326), NULL, NULL, '1980-10-29', '2022-08-31', NULL, NULL, NULL),
  ('1461865', 'Tamarack Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Wolcott', 44.5962629, -72.4682009, ST_GeomFromText('POINT(44.5962629 -72.4682009)', 4326), 44.5902731, -72.3909533, '1980-10-29', '2019-11-12', NULL, NULL, NULL),
  ('1461866', 'The Ledges', 'Bench', 'Vermont', 'VT', 'Lamoille', 'Wolcott', 44.5811635, -72.3981633, ST_GeomFromText('POINT(44.5811635 -72.3981633)', 4326), NULL, NULL, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461867', 'Town Hill', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Wolcott', 44.5854027, -72.4420727, ST_GeomFromText('POINT(44.5854027 -72.4420727)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1461869', 'Tucker Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Caspian Lake', 44.5503308, -72.3709402, ST_GeomFromText('POINT(44.5503308 -72.3709402)', 4326), 44.557275, -72.3976077, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461870', 'Wapanacki Lake', 'Lake', 'Vermont', 'VT', 'Lamoille', 'Wolcott', 44.5587023, -72.3999727, ST_GeomFromText('POINT(44.5587023 -72.3999727)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1461871', 'West Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Wolcott', 44.614844, -72.403378, ST_GeomFromText('POINT(44.614844 -72.403378)', 4326), NULL, NULL, '1980-10-29', '2022-08-30', NULL, NULL, NULL),
  ('1461872', 'Wild Branch', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Wolcott', 44.559497, -72.4906661, ST_GeomFromText('POINT(44.559497 -72.4906661)', 4326), 44.7292159, -72.4462206, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461874', 'Wolcott Pond', 'Reservoir', 'Vermont', 'VT', 'Lamoille', 'Wolcott', 44.5653257, -72.4204572, ST_GeomFromText('POINT(44.5653257 -72.4204572)', 4326), NULL, NULL, '1980-10-29', '2019-11-20', NULL, NULL, NULL),
  ('1461875', 'Wolcott Pond Brook', 'Stream', 'Vermont', 'VT', 'Lamoille', 'Wolcott', 44.5472751, -72.4612208, ST_GeomFromText('POINT(44.5472751 -72.4612208)', 4326), 44.57, -72.4038889, '1980-10-29', NULL, NULL, NULL, NULL),
  ('1461984', 'Carleton Prize', 'Island', 'Vermont', 'VT', 'Grand Isle', 'Colchester Point', 44.6044902, -73.3462429, ST_GeomFromText('POINT(44.6044902 -73.3462429)', 4326), NULL, NULL, '1980-10-29', '2014-07-28', NULL, NULL, NULL),
  ('1462274', 'Little Averill Pond', 'Lake', 'Vermont', 'VT', 'Essex', 'Averill', 44.9557097, -71.7157242, ST_GeomFromText('POINT(44.9557097 -71.7157242)', 4326), NULL, NULL, '2002-08-27', '2019-11-21', 'Official', 'Board Decision', '1972-01-01'),
  ('1766305', 'Townshend Reservoir', 'Reservoir', 'Vermont', 'VT', 'Windham', 'Townshend', 43.0512711, -72.6990776, ST_GeomFromText('POINT(43.0512711 -72.6990776)', 4326), NULL, NULL, '1997-12-19', '2018-02-18', 'Official', 'Board Decision', '1973-01-01'),
  ('1766310', 'Lake Madeleine', 'Reservoir', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.1628656, -73.14305, ST_GeomFromText('POINT(43.1628656 -73.14305)', 4326), NULL, NULL, '1997-12-19', '2018-02-28', NULL, NULL, NULL),
  ('1766318', 'Lake Clara', 'Reservoir', 'Vermont', 'VT', 'Windham', 'Readsboro', 42.7957844, -72.8807946, ST_GeomFromText('POINT(42.7957844 -72.8807946)', 4326), NULL, NULL, '1997-12-19', '2018-02-18', NULL, NULL, NULL),
  ('1766324', 'Jewell Brook Site Number One Reservoir', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Andover', 43.3614923, -72.7234429, ST_GeomFromText('POINT(43.3614923 -72.7234429)', 4326), NULL, NULL, '1997-12-19', '2024-11-13', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1766326', 'Jewell Brook Site Number Two Reservoir', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Andover', 43.3674495, -72.7273656, ST_GeomFromText('POINT(43.3674495 -72.7273656)', 4326), NULL, NULL, '1997-12-19', '2024-11-13', NULL, NULL, NULL),
  ('1766328', 'Jewell Brook Site Number Three Reservoir', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Ludlow', 43.3918047, -72.7136066, ST_GeomFromText('POINT(43.3918047 -72.7136066)', 4326), NULL, NULL, '1997-12-19', '2024-11-13', NULL, NULL, NULL),
  ('1766330', 'Jewell Brook Site Number Five Reservoir', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Ludlow', 43.3809105, -72.7233876, ST_GeomFromText('POINT(43.3809105 -72.7233876)', 4326), NULL, NULL, '1997-12-19', '2024-11-13', NULL, NULL, NULL),
  ('1766338', 'Lubber Lake', 'Reservoir', 'Vermont', 'VT', 'Orleans', 'Westmore', 44.8333818, -72.0828768, ST_GeomFromText('POINT(44.8333818 -72.0828768)', 4326), NULL, NULL, '1997-12-19', NULL, NULL, NULL, NULL),
  ('1766353', 'Winooski River Reservoir', 'Reservoir', 'Vermont', 'VT', 'Washington', 'Middlesex', 44.2917247, -72.6828919, ST_GeomFromText('POINT(44.2917247 -72.6828919)', 4326), NULL, NULL, '1997-12-19', NULL, NULL, NULL, NULL),
  ('1766355', 'Winooski River Reservoir', 'Reservoir', 'Vermont', 'VT', 'Chittenden', 'Burlington', 44.4900493, -73.1679052, ST_GeomFromText('POINT(44.4900493 -73.1679052)', 4326), NULL, NULL, '1997-12-19', NULL, NULL, NULL, NULL),
  ('1766361', 'Fairfax Falls Pond', 'Reservoir', 'Vermont', 'VT', 'Franklin', 'Gilson Mountain', 44.6517164, -72.989581, ST_GeomFromText('POINT(44.6517164 -72.989581)', 4326), NULL, NULL, '1997-12-19', NULL, NULL, NULL, NULL),
  ('1766374', 'Mollys Falls Pond', 'Reservoir', 'Vermont', 'VT', 'Washington', 'Marshfield', 44.3583912, -72.3045457, ST_GeomFromText('POINT(44.3583912 -72.3045457)', 4326), NULL, NULL, '1997-12-19', NULL, NULL, NULL, NULL),
  ('1766384', 'Wrightsville Reservoir', 'Reservoir', 'Vermont', 'VT', 'Washington', 'Montpelier', 44.3234542, -72.573409, ST_GeomFromText('POINT(44.3234542 -72.573409)', 4326), NULL, NULL, '1997-12-19', '2019-11-20', NULL, NULL, NULL),
  ('1766386', 'East Barre Reservoir', 'Reservoir', 'Vermont', 'VT', 'Washington', 'Barre East', 44.1550623, -72.4445467, ST_GeomFromText('POINT(44.1550623 -72.4445467)', 4326), NULL, NULL, '1997-12-19', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1766390', 'Indian Brook Reservoir', 'Reservoir', 'Vermont', 'VT', 'Chittenden', 'Essex Center', 44.5349884, -73.0985465, ST_GeomFromText('POINT(44.5349884 -73.0985465)', 4326), NULL, NULL, '1997-12-19', '2020-01-15', NULL, NULL, NULL),
  ('1766394', 'Saint Albans Reservoir South', 'Reservoir', 'Vermont', 'VT', 'Franklin', 'Saint Albans', 44.7567788, -73.063416, ST_GeomFromText('POINT(44.7567788 -73.063416)', 4326), NULL, NULL, '1997-12-19', '2020-01-15', NULL, NULL, NULL),
  ('1766396', 'Saint Albans Reservoir North', 'Reservoir', 'Vermont', 'VT', 'Franklin', 'Saint Albans', 44.7642753, -73.0616965, ST_GeomFromText('POINT(44.7642753 -73.0616965)', 4326), NULL, NULL, '1997-12-19', '2020-01-15', NULL, NULL, NULL),
  ('1766426', 'Wantastiquet Lake', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Weston', 43.3088348, -72.8166861, ST_GeomFromText('POINT(43.3088348 -72.8166861)', 4326), NULL, NULL, '1997-12-19', '2018-02-18', NULL, NULL, NULL),
  ('1766428', 'Richville Pond', 'Reservoir', 'Vermont', 'VT', 'Addison', 'Orwell', 43.8750604, -73.2745612, ST_GeomFromText('POINT(43.8750604 -73.2745612)', 4326), NULL, NULL, '1997-12-19', NULL, NULL, NULL, NULL),
  ('1766430', 'South Stream Pond', 'Reservoir', 'Vermont', 'VT', 'Bennington', 'Pownal', 42.8120753, -73.1804311, ST_GeomFromText('POINT(42.8120753 -73.1804311)', 4326), NULL, NULL, '1997-12-19', '2018-02-28', NULL, NULL, NULL),
  ('1766432', 'Knapp Brook Pond Number One', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Cavendish', 43.4470981, -72.5626773, ST_GeomFromText('POINT(43.4470981 -72.5626773)', 4326), NULL, NULL, '1997-12-19', '2024-11-13', NULL, NULL, NULL),
  ('1766434', 'Knapp Brook Pond Number 2', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Cavendish', 43.4490868, -72.5692463, ST_GeomFromText('POINT(43.4490868 -72.5692463)', 4326), NULL, NULL, '1997-12-19', '2011-09-06', NULL, NULL, NULL),
  ('1766440', 'Worcester Pond', 'Reservoir', 'Vermont', 'VT', 'Washington', 'Mount Worcester', 44.4000561, -72.5328879, ST_GeomFromText('POINT(44.4000561 -72.5328879)', 4326), NULL, NULL, '1997-12-19', NULL, NULL, NULL, NULL),
  ('1766442', 'North Montpelier Pond', 'Reservoir', 'Vermont', 'VT', 'Washington', 'Plainfield', 44.3089922, -72.4442374, ST_GeomFromText('POINT(44.3089922 -72.4442374)', 4326), NULL, NULL, '1997-12-19', '2023-07-07', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1766452', 'Miller Pond', 'Reservoir', 'Vermont', 'VT', 'Orange', 'South Strafford', 43.8750683, -72.3062046, ST_GeomFromText('POINT(43.8750683 -72.3062046)', 4326), NULL, NULL, '1997-12-19', NULL, NULL, NULL, NULL),
  ('1766454', 'Halls Lake', 'Reservoir', 'Vermont', 'VT', 'Orange', 'East Corinth', 44.0881931, -72.1256961, ST_GeomFromText('POINT(44.0881931 -72.1256961)', 4326), NULL, NULL, '1997-12-19', '2021-02-03', NULL, NULL, NULL),
  ('1766466', 'Middle Brook Pond', 'Reservoir', 'Vermont', 'VT', 'Orange', 'Fairlee', 43.9176915, -72.2365154, ST_GeomFromText('POINT(43.9176915 -72.2365154)', 4326), NULL, NULL, '1997-12-19', '2018-02-18', NULL, NULL, NULL),
  ('1766468', 'Winooski Upper Reservoir', 'Reservoir', 'Vermont', 'VT', 'Chittenden', 'Burlington', 44.4986672, -73.171412, ST_GeomFromText('POINT(44.4986672 -73.171412)', 4326), NULL, NULL, '1997-12-19', '2023-07-07', NULL, NULL, NULL),
  ('1766474', 'Keyser Pond', 'Reservoir', 'Vermont', 'VT', 'Orange', 'Chelsea', 43.9502251, -72.4363428, ST_GeomFromText('POINT(43.9502251 -72.4363428)', 4326), NULL, NULL, '1997-12-19', '2018-02-28', NULL, NULL, NULL),
  ('1766502', 'McIntosh Pond', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Sharon', 43.8233659, -72.491399, ST_GeomFromText('POINT(43.8233659 -72.491399)', 4326), NULL, NULL, '1997-12-19', '2018-02-28', NULL, NULL, NULL),
  ('1766508', 'Weatherhead Hollow Pond', 'Reservoir', 'Vermont', 'VT', 'Windham', 'Bernardston', 42.7423725, -72.6113127, ST_GeomFromText('POINT(42.7423725 -72.6113127)', 4326), NULL, NULL, '1997-12-19', '2021-03-12', NULL, NULL, NULL),
  ('1766510', 'Blodgett Pond', 'Reservoir', 'Vermont', 'VT', 'Orange', 'Newbury', 44.0290899, -72.1044972, ST_GeomFromText('POINT(44.0290899 -72.1044972)', 4326), NULL, NULL, '1997-12-19', '2018-02-28', NULL, NULL, NULL),
  ('1766513', 'Beaver Lake', 'Reservoir', 'Vermont', 'VT', 'Lamoille', 'Morrisville', 44.6066355, -72.5262084, ST_GeomFromText('POINT(44.6066355 -72.5262084)', 4326), NULL, NULL, '1997-12-19', '2019-11-20', NULL, NULL, NULL),
  ('1766523', 'Spruce Lake', 'Reservoir', 'Vermont', 'VT', 'Windham', 'Jacksonville', 42.8509454, -72.8385825, ST_GeomFromText('POINT(42.8509454 -72.8385825)', 4326), NULL, NULL, '1997-12-19', '2018-02-18', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1766529', 'Amherst Lake', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Mount Holly', 43.4800705, -72.7678767, ST_GeomFromText('POINT(43.4800705 -72.7678767)', 4326), NULL, NULL, '1997-12-19', NULL, NULL, NULL, NULL),
  ('1766532', 'Loves Marsh', 'Reservoir', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.6709107, -73.2053007, ST_GeomFromText('POINT(43.6709107 -73.2053007)', 4326), NULL, NULL, '1997-12-19', '2019-12-06', NULL, NULL, NULL),
  ('1766537', 'C C C Pond', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Sharon', 43.8167519, -72.3934668, ST_GeomFromText('POINT(43.8167519 -72.3934668)', 4326), NULL, NULL, '1997-12-19', '2018-02-18', NULL, NULL, NULL),
  ('1766541', 'Keiser Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Joes Pond', 44.3856284, -72.1717886, ST_GeomFromText('POINT(44.3856284 -72.1717886)', 4326), NULL, NULL, '1997-12-19', '2011-10-13', NULL, NULL, NULL),
  ('1766552', 'Mud Creek Pond', 'Lake', 'Vermont', 'VT', 'Grand Isle', 'Rouses Point', 44.977748, -73.2746394, ST_GeomFromText('POINT(44.977748 -73.2746394)', 4326), NULL, NULL, '1997-12-19', '2011-10-12', NULL, NULL, NULL),
  ('1766554', 'Vernon Hatchery Pond', 'Reservoir', 'Vermont', 'VT', 'Windham', 'Northfield', 42.7429827, -72.4986314, ST_GeomFromText('POINT(42.7429827 -72.4986314)', 4326), NULL, NULL, '1997-12-19', '2018-02-28', NULL, NULL, NULL),
  ('1766573', 'Norwich Reservoir', 'Reservoir', 'Vermont', 'VT', 'Orange', 'Groton', 44.1570404, -72.2189234, ST_GeomFromText('POINT(44.1570404 -72.2189234)', 4326), NULL, NULL, '1997-12-19', '2018-02-18', NULL, NULL, NULL),
  ('1766582', 'Lower Orange Reservoir', 'Reservoir', 'Vermont', 'VT', 'Orange', 'Barre East', 44.1626767, -72.4232865, ST_GeomFromText('POINT(44.1626767 -72.4232865)', 4326), NULL, NULL, '1997-12-19', '2023-07-07', NULL, NULL, NULL),
  ('1766586', 'Youngs Brook Reservoir', 'Reservoir', 'Vermont', 'VT', 'Rutland', 'West Rutland', 43.5716273, -73.0522104, ST_GeomFromText('POINT(43.5716273 -73.0522104)', 4326), NULL, NULL, '1997-12-19', '2023-07-07', NULL, NULL, NULL),
  ('1766594', 'Deer Park Pond', 'Reservoir', 'Vermont', 'VT', 'Windham', 'Governors Mountain', 42.7898151, -72.7133192, ST_GeomFromText('POINT(42.7898151 -72.7133192)', 4326), NULL, NULL, '1997-12-19', '2018-02-18', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1766610', 'Lamoille River Reservoir', 'Reservoir', 'Vermont', 'VT', 'Lamoille', 'Wolcott', 44.5367199, -72.4445536, ST_GeomFromText('POINT(44.5367199 -72.4445536)', 4326), NULL, NULL, '1997-12-19', NULL, NULL, NULL, NULL),
  ('1766614', 'Little Averill Lake', 'Reservoir', 'Vermont', 'VT', 'Essex', 'Averill', 44.955712, -71.7157355, ST_GeomFromText('POINT(44.955712 -71.7157355)', 4326), NULL, NULL, '1997-12-19', '2015-02-10', NULL, NULL, NULL),
  ('1766626', 'Pensioner Pond', 'Reservoir', 'Vermont', 'VT', 'Orleans', 'West Charleston', 44.8850479, -72.0562094, ST_GeomFromText('POINT(44.8850479 -72.0562094)', 4326), NULL, NULL, '1997-12-19', NULL, NULL, NULL, NULL),
  ('1766660', 'Bullis Pond', 'Reservoir', 'Vermont', 'VT', 'Franklin', 'Sheldon Springs', 44.9657123, -72.9653621, ST_GeomFromText('POINT(44.9657123 -72.9653621)', 4326), NULL, NULL, '1997-12-19', '2020-01-15', NULL, NULL, NULL),
  ('1766662', 'Sucker Brook Reservoir', 'Reservoir', 'Vermont', 'VT', 'Addison', 'East Middlebury', 43.9022851, -73.0417798, ST_GeomFromText('POINT(43.9022851 -73.0417798)', 4326), NULL, NULL, '1997-12-19', NULL, NULL, NULL, NULL),
  ('1766670', 'Institute Pond', 'Reservoir', 'Vermont', 'VT', 'Caledonia', 'Lyndonville', 44.5374253, -72.0166068, ST_GeomFromText('POINT(44.5374253 -72.0166068)', 4326), NULL, NULL, '1997-12-19', '2018-02-18', NULL, NULL, NULL),
  ('1766674', 'Upper Moore Pond', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Plymouth', 43.5246963, -72.7225238, ST_GeomFromText('POINT(43.5246963 -72.7225238)', 4326), NULL, NULL, '1997-12-19', '2018-02-28', NULL, NULL, NULL),
  ('1766682', 'Bugbee Mill Pond', 'Reservoir', 'Vermont', 'VT', 'Bennington', 'Woodford', 42.8808009, -73.0775063, ST_GeomFromText('POINT(42.8808009 -73.0775063)', 4326), NULL, NULL, '1997-12-19', '2018-02-28', NULL, NULL, NULL),
  ('1766687', 'Millers Pond', 'Reservoir', 'Vermont', 'VT', 'Bennington', 'Arlington', 43.0389667, -73.16532, ST_GeomFromText('POINT(43.0389667 -73.16532)', 4326), NULL, NULL, '1997-12-19', '2018-02-28', NULL, NULL, NULL),
  ('1766697', 'Upper Eddy Pond', 'Reservoir', 'Vermont', 'VT', 'Rutland', 'Rutland', 43.5928297, -72.9473928, ST_GeomFromText('POINT(43.5928297 -72.9473928)', 4326), NULL, NULL, '1997-12-19', '2023-07-07', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1766717', 'Mill Pond', 'Reservoir', 'Vermont', 'VT', 'Chittenden', 'Colchester', 44.541655, -73.152359, ST_GeomFromText('POINT(44.541655 -73.152359)', 4326), NULL, NULL, '1997-12-19', '2024-11-13', NULL, NULL, NULL),
  ('1766719', 'Mackville Pond', 'Reservoir', 'Vermont', 'VT', 'Caledonia', 'Cabot', 44.4911301, -72.3685015, ST_GeomFromText('POINT(44.4911301 -72.3685015)', 4326), NULL, NULL, '1997-12-19', '2019-11-20', NULL, NULL, NULL),
  ('1766728', 'Adamant Pond', 'Reservoir', 'Vermont', 'VT', 'Washington', 'Montpelier', 44.3340525, -72.5024915, ST_GeomFromText('POINT(44.3340525 -72.5024915)', 4326), NULL, NULL, '1997-12-19', '2023-07-07', NULL, NULL, NULL),
  ('1766733', 'Gulf Brook Reservoir', 'Reservoir', 'Vermont', 'VT', 'Windham', 'Stratton Mountain', 43.1133291, -72.9255609, ST_GeomFromText('POINT(43.1133291 -72.9255609)', 4326), NULL, NULL, '1997-12-19', '2018-02-18', NULL, NULL, NULL),
  ('1766735', 'Stratton Mountain Lake', 'Reservoir', 'Vermont', 'VT', 'Bennington', 'Stratton Mountain', 43.1226306, -72.8978778, ST_GeomFromText('POINT(43.1226306 -72.8978778)', 4326), NULL, NULL, '1997-12-19', '2018-02-18', NULL, NULL, NULL),
  ('1766738', 'Lake Pinneo', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Quechee', 43.6524379, -72.4323703, ST_GeomFromText('POINT(43.6524379 -72.4323703)', 4326), NULL, NULL, '1997-12-19', '2018-02-28', NULL, NULL, NULL),
  ('1766746', 'Warren Lake', 'Reservoir', 'Vermont', 'VT', 'Washington', 'Warren', 44.0779626, -72.8341305, ST_GeomFromText('POINT(44.0779626 -72.8341305)', 4326), NULL, NULL, '1997-12-19', '2023-07-07', NULL, NULL, NULL),
  ('1775055', 'Connecticut River Reservoir', 'Reservoir', 'Vermont', 'VT', 'Caledonia', 'Lower Waterford', 44.3337716, -71.9865535, ST_GeomFromText('POINT(44.3337716 -71.9865535)', 4326), NULL, NULL, '1998-01-09', '2021-02-06', NULL, NULL, NULL),
  ('1802684', 'Elmers Brook', 'Stream', 'Vermont', 'VT', 'Windsor', 'Sharon', 43.7795128, -72.4684289, ST_GeomFromText('POINT(43.7795128 -72.4684289)', 4326), 43.7539572, -72.5220408, '1998-07-30', NULL, 'Official', 'Board Decision', '1998-01-01'),
  ('1844258', 'Farnsworth Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Randolph', 43.9967313, -72.6509389, ST_GeomFromText('POINT(43.9967313 -72.6509389)', 4326), 44.0042309, -72.6967738, '1999-06-24', NULL, 'Official', 'Board Decision', '1970-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1891151', 'Dewey Hill', 'Summit', 'Vermont', 'VT', 'Washington', 'Montpelier', 44.2552053, -72.5812193, ST_GeomFromText('POINT(44.2552053 -72.5812193)', 4326), NULL, NULL, '2001-02-22', '2022-08-30', 'Official', 'Board Decision', '2001-01-01'),
  ('1918050', 'Bristol Pond', 'Reservoir', 'Vermont', 'VT', 'Addison', 'Bristol', 44.1311686, -73.1115081, ST_GeomFromText('POINT(44.1311686 -73.1115081)', 4326), NULL, NULL, '2001-05-08', NULL, NULL, NULL, NULL),
  ('1918075', 'Crane Point', 'Cape', 'Vermont', 'VT', 'Addison', 'Port Henry', 44.0411668, -73.4217906, ST_GeomFromText('POINT(44.0411668 -73.4217906)', 4326), NULL, NULL, '2001-05-08', NULL, NULL, NULL, NULL),
  ('1918095', 'Fassett Hill', 'Summit', 'Vermont', 'VT', 'Addison', 'Bread Loaf', 43.9413636, -72.887784, ST_GeomFromText('POINT(43.9413636 -72.887784)', 4326), NULL, NULL, '2001-05-08', '2018-11-17', NULL, NULL, NULL),
  ('1918120', 'Higgins Pond', 'Reservoir', 'Vermont', 'VT', 'Addison', 'South Mountain', 44.0968191, -73.0656556, ST_GeomFromText('POINT(44.0968191 -73.0656556)', 4326), NULL, NULL, '2001-05-08', '2023-07-07', NULL, NULL, NULL),
  ('1918124', 'Huntington Falls', 'Falls', 'Vermont', 'VT', 'Addison', 'Middlebury', 44.0703355, -73.1959527, ST_GeomFromText('POINT(44.0703355 -73.1959527)', 4326), NULL, NULL, '2001-05-08', NULL, NULL, NULL, NULL),
  ('1918285', 'Beaver Pond', 'Reservoir', 'Vermont', 'VT', 'Lamoille', 'Morrisville', 44.604496, -72.5273345, ST_GeomFromText('POINT(44.604496 -72.5273345)', 4326), NULL, NULL, '2001-05-08', NULL, NULL, NULL, NULL),
  ('1918292', 'Bingham Falls', 'Falls', 'Vermont', 'VT', 'Lamoille', 'Mount Mansfield', 44.5506072, -72.7965122, ST_GeomFromText('POINT(44.5506072 -72.7965122)', 4326), NULL, NULL, '2001-05-08', NULL, NULL, NULL, NULL),
  ('1918350', 'Hodgkins-Lackey Hill', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Cold Hollow Mountains', 44.7587538, -72.6647169, ST_GeomFromText('POINT(44.7587538 -72.6647169)', 4326), NULL, NULL, '2001-05-08', '2023-07-21', NULL, NULL, NULL),
  ('1918509', 'Allens Bay', 'Bay', 'Vermont', 'VT', 'Grand Isle', 'East Alburg', 44.879764, -73.239297, ST_GeomFromText('POINT(44.879764 -73.239297)', 4326), NULL, NULL, '2001-05-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1918592', 'Catlins Hill', 'Summit', 'Vermont', 'VT', 'Chittenden', 'Burlington', 44.4794847, -73.1934594, ST_GeomFromText('POINT(44.4794847 -73.1934594)', 4326), NULL, NULL, '2001-05-08', '2022-08-30', NULL, NULL, NULL),
  ('1918748', 'Lone Rock', 'Pillar', 'Vermont', 'VT', 'Chittenden', 'Burlington', 44.4883819, -73.2476282, ST_GeomFromText('POINT(44.4883819 -73.2476282)', 4326), NULL, NULL, '2001-05-08', NULL, NULL, NULL, NULL),
  ('1918957', 'Winooski Falls', 'Falls', 'Vermont', 'VT', 'Chittenden', 'Burlington', 44.4889381, -73.1837387, ST_GeomFromText('POINT(44.4889381 -73.1837387)', 4326), NULL, NULL, '2001-05-08', NULL, NULL, NULL, NULL),
  ('1919002', 'Blueberry Lake', 'Reservoir', 'Vermont', 'VT', 'Washington', 'Warren', 44.0817984, -72.8224464, ST_GeomFromText('POINT(44.0817984 -72.8224464)', 4326), NULL, NULL, '2001-05-08', '2023-07-07', NULL, NULL, NULL),
  ('1919006', 'Butler Pond', 'Reservoir', 'Vermont', 'VT', 'Washington', 'Waterbury', 44.3436887, -72.7629116, ST_GeomFromText('POINT(44.3436887 -72.7629116)', 4326), NULL, NULL, '2001-05-08', '2023-07-07', NULL, NULL, NULL),
  ('1919071', 'Harry Pond', 'Reservoir', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.4083465, -72.429513, ST_GeomFromText('POINT(44.4083465 -72.429513)', 4326), NULL, NULL, '2001-05-08', '2023-07-07', NULL, NULL, NULL),
  ('1919098', 'Lake Robinson', 'Reservoir', 'Vermont', 'VT', 'Washington', 'Warren', 44.0648821, -72.8269716, ST_GeomFromText('POINT(44.0648821 -72.8269716)', 4326), NULL, NULL, '2001-05-08', '2023-07-07', NULL, NULL, NULL),
  ('1919120', 'Mount Ethan Allen', 'Summit', 'Vermont', 'VT', 'Washington', 'Huntington', 44.2935676, -72.8843285, ST_GeomFromText('POINT(44.2935676 -72.8843285)', 4326), NULL, NULL, '2001-05-08', '2022-08-30', NULL, NULL, NULL),
  ('1919134', 'Moretown Falls', 'Falls', 'Vermont', 'VT', 'Washington', 'Waterbury', 44.2511695, -72.7620608, ST_GeomFromText('POINT(44.2511695 -72.7620608)', 4326), NULL, NULL, '2001-05-08', NULL, NULL, NULL, NULL),
  ('1919314', 'Church Hill', 'Summit', 'Vermont', 'VT', 'Essex', 'Norton Pond', 44.994219, -71.7908221, ST_GeomFromText('POINT(44.994219 -71.7908221)', 4326), NULL, NULL, '2001-05-08', '2022-08-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1919329', 'Eagle Point', 'Cape', 'Vermont', 'VT', 'Essex', 'Spectacle Pond', 44.7972714, -71.8484278, ST_GeomFromText('POINT(44.7972714 -71.8484278)', 4326), NULL, NULL, '2001-05-08', NULL, NULL, NULL, NULL),
  ('1919359', 'Loon Point', 'Cape', 'Vermont', 'VT', 'Essex', 'Spectacle Pond', 44.7956049, -71.8487056, ST_GeomFromText('POINT(44.7956049 -71.8487056)', 4326), NULL, NULL, '2001-05-08', NULL, NULL, NULL, NULL),
  ('1919389', 'Pine Point', 'Cape', 'Vermont', 'VT', 'Essex', 'Spectacle Pond', 44.7997714, -71.8484278, ST_GeomFromText('POINT(44.7997714 -71.8484278)', 4326), NULL, NULL, '2001-05-08', NULL, NULL, NULL, NULL),
  ('1919392', 'Rich Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Stratford', 44.6581078, -71.5934203, ST_GeomFromText('POINT(44.6581078 -71.5934203)', 4326), 44.6369444, -71.5955556, '2001-05-08', NULL, NULL, NULL, NULL),
  ('1919404', 'Simms Hill', 'Summit', 'Vermont', 'VT', 'Essex', 'Tinkerville', 44.8648066, -71.5866235, ST_GeomFromText('POINT(44.8648066 -71.5866235)', 4326), NULL, NULL, '2001-05-08', '2022-09-02', NULL, NULL, NULL),
  ('1919443', 'Boulder Beach', 'Beach', 'Vermont', 'VT', 'Caledonia', 'Marshfield', 44.2725602, -72.2634311, ST_GeomFromText('POINT(44.2725602 -72.2634311)', 4326), NULL, NULL, '2001-05-08', NULL, NULL, NULL, NULL),
  ('1919474', 'Cow Hill Pond', 'Lake', 'Vermont', 'VT', 'Caledonia', 'Joes Pond', 44.3825156, -72.2019364, ST_GeomFromText('POINT(44.3825156 -72.2019364)', 4326), NULL, NULL, '2001-05-08', '2021-02-06', NULL, NULL, NULL),
  ('1919530', 'Goslants Mill Pond (historical)', 'Reservoir', 'Vermont', 'VT', 'Caledonia', 'Joes Pond', 44.4664444, -72.2198234, ST_GeomFromText('POINT(44.4664444 -72.2198234)', 4326), NULL, NULL, '2001-05-08', '2021-01-19', NULL, NULL, NULL),
  ('1919532', 'Hardwick Center Pond', 'Reservoir', 'Vermont', 'VT', 'Caledonia', 'Caspian Lake', 44.5376228, -72.3180464, ST_GeomFromText('POINT(44.5376228 -72.3180464)', 4326), NULL, NULL, '2001-05-08', '2019-11-20', NULL, NULL, NULL),
  ('1919957', 'Cemetery Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Crystal Lake', 44.7430621, -72.176853, ST_GeomFromText('POINT(44.7430621 -72.176853)', 4326), NULL, NULL, '2001-05-08', '2022-08-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1919984', 'Dexter Hill', 'Summit', 'Vermont', 'VT', 'Orleans', 'Crystal Lake', 44.6917387, -72.1771103, ST_GeomFromText('POINT(44.6917387 -72.1771103)', 4326), NULL, NULL, '2001-05-08', '2022-09-08', NULL, NULL, NULL),
  ('1920017', 'Hazens Notch', 'Gap', 'Vermont', 'VT', 'Orleans', 'Hazens Notch', 44.8408806, -72.5231692, ST_GeomFromText('POINT(44.8408806 -72.5231692)', 4326), NULL, NULL, '2001-05-08', NULL, NULL, NULL, NULL),
  ('1920049', 'Little Salem Pond (historical)', 'Reservoir', 'Vermont', 'VT', 'Orleans', 'West Charleston', 44.9181029, -72.100655, ST_GeomFromText('POINT(44.9181029 -72.100655)', 4326), NULL, NULL, '2001-05-08', NULL, NULL, NULL, NULL),
  ('1920050', 'Lockwood Pond', 'Reservoir', 'Vermont', 'VT', 'Orleans', 'Hazens Notch', 44.8009381, -72.553465, ST_GeomFromText('POINT(44.8009381 -72.553465)', 4326), NULL, NULL, '2001-05-08', '2019-11-26', NULL, NULL, NULL),
  ('1920308', 'Lyons Pond', 'Reservoir', 'Vermont', 'VT', 'Bennington', 'Peru', 43.2336116, -72.8952816, ST_GeomFromText('POINT(43.2336116 -72.8952816)', 4326), NULL, NULL, '2001-05-08', '2018-02-18', NULL, NULL, NULL),
  ('1920456', 'Spruce Swamp (historical)', 'Swamp', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.1625765, -73.1431617, ST_GeomFromText('POINT(43.1625765 -73.1431617)', 4326), NULL, NULL, '2001-05-08', NULL, NULL, NULL, NULL),
  ('1920457', 'Stamford and Woodford Plateau', 'Summit', 'Vermont', 'VT', 'Bennington', 'Stamford', 42.8662283, -73.0383428, ST_GeomFromText('POINT(42.8662283 -73.0383428)', 4326), NULL, NULL, '2001-05-08', '2018-12-01', NULL, NULL, NULL),
  ('1920490', 'Vermont Healing Springs (historical)', 'Spring', 'Vermont', 'VT', 'Bennington', 'Arlington', 43.0209111, -73.1817742, ST_GeomFromText('POINT(43.0209111 -73.1817742)', 4326), NULL, NULL, '2001-05-08', NULL, NULL, NULL, NULL),
  ('1920516', 'Youlin Hollow', 'Valley', 'Vermont', 'VT', 'Bennington', 'West Rupert', 43.2354472, -73.2314908, ST_GeomFromText('POINT(43.2354472 -73.2314908)', 4326), 43.2491255, -73.2155803, '2001-05-08', '2018-08-01', NULL, NULL, NULL),
  ('1920568', 'Eagle Bay', 'Bay', 'Vermont', 'VT', 'Franklin', 'Saint Albans Bay', 44.7747661, -73.2101327, ST_GeomFromText('POINT(44.7747661 -73.2101327)', 4326), NULL, NULL, '2001-05-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1920593', 'Enosburg Falls Reservoir', 'Reservoir', 'Vermont', 'VT', 'Franklin', 'Enosburg Falls', 44.9387775, -72.7810373, ST_GeomFromText('POINT(44.9387775 -72.7810373)', 4326), NULL, NULL, '2001-05-08', '2019-11-26', NULL, NULL, NULL),
  ('1921003', 'Hamilton Falls', 'Falls', 'Vermont', 'VT', 'Windham', 'Londonderry', 43.1375771, -72.7634294, ST_GeomFromText('POINT(43.1375771 -72.7634294)', 4326), NULL, NULL, '2001-05-08', NULL, NULL, NULL, NULL),
  ('1921045', 'Kurn Hattin Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Walpole', 43.0649809, -72.4759232, ST_GeomFromText('POINT(43.0649809 -72.4759232)', 4326), NULL, NULL, '2001-05-08', '2022-09-02', NULL, NULL, NULL),
  ('1921053', 'Little Ball Mountain', 'Summit', 'Vermont', 'VT', 'Windham', 'Jamaica', 43.1100542, -72.7699373, ST_GeomFromText('POINT(43.1100542 -72.7699373)', 4326), NULL, NULL, '2001-05-08', '2018-11-17', NULL, NULL, NULL),
  ('1921208', 'The Stairs', 'Bench', 'Vermont', 'VT', 'Windham', 'Bellows Falls', 43.1328556, -72.4445328, ST_GeomFromText('POINT(43.1328556 -72.4445328)', 4326), NULL, NULL, '2001-05-08', NULL, NULL, NULL, NULL),
  ('1921214', 'Timber Ridge Mountain', 'Summit', 'Vermont', 'VT', 'Windham', 'Windham', 43.1914995, -72.7155838, ST_GeomFromText('POINT(43.1914995 -72.7155838)', 4326), NULL, NULL, '2001-05-08', '2022-09-01', NULL, NULL, NULL),
  ('1921401', 'Echo Mountain', 'Summit', 'Vermont', 'VT', 'Orange', 'Fairlee', 43.9284536, -72.162804, ST_GeomFromText('POINT(43.9284536 -72.162804)', 4326), NULL, NULL, '2001-05-08', '2022-08-31', NULL, NULL, NULL),
  ('1921402', 'Ely Mountain', 'Summit', 'Vermont', 'VT', 'Orange', 'Fairlee', 43.8758931, -72.2067564, ST_GeomFromText('POINT(43.8758931 -72.2067564)', 4326), NULL, NULL, '2001-05-08', '2023-07-21', NULL, NULL, NULL),
  ('1921420', 'Gillette Swamp', 'Swamp', 'Vermont', 'VT', 'Orange', 'Lyme', 43.8623601, -72.2432571, ST_GeomFromText('POINT(43.8623601 -72.2432571)', 4326), NULL, NULL, '2001-05-08', '2011-10-13', NULL, NULL, NULL),
  ('1921430', 'Gunn Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Lyme', 43.8334027, -72.1978677, ST_GeomFromText('POINT(43.8334027 -72.1978677)', 4326), 43.8530556, -72.2144444, '2001-05-08', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1921432', 'Harriman Brook', 'Stream', 'Vermont', 'VT', 'Orange', 'Newbury', 44.0867315, -72.0453676, ST_GeomFromText('POINT(44.0867315 -72.0453676)', 4326), 44.1292306, -72.0809249, '2001-05-08', NULL, NULL, NULL, NULL),
  ('1921436', 'Holdens Pond', 'Reservoir', 'Vermont', 'VT', 'Orange', 'Brookfield', 44.0413309, -72.5886454, ST_GeomFromText('POINT(44.0413309 -72.5886454)', 4326), NULL, NULL, '2001-05-08', '2018-02-28', NULL, NULL, NULL),
  ('1921488', 'Morey Mountain', 'Summit', 'Vermont', 'VT', 'Orange', 'Fairlee', 43.9147349, -72.1455371, ST_GeomFromText('POINT(43.9147349 -72.1455371)', 4326), NULL, NULL, '2001-05-08', '2022-08-30', NULL, NULL, NULL),
  ('1921510', 'Ox-Bow Meadows', 'Swamp', 'Vermont', 'VT', 'Orange', 'Newbury', 44.0931203, -72.0495345, ST_GeomFromText('POINT(44.0931203 -72.0495345)', 4326), NULL, NULL, '2001-05-08', NULL, NULL, NULL, NULL),
  ('1921529', 'Randolph Reservoir', 'Reservoir', 'Vermont', 'VT', 'Orange', 'Randolph', 43.9333824, -72.6679368, ST_GeomFromText('POINT(43.9333824 -72.6679368)', 4326), NULL, NULL, '2001-05-08', '2018-02-28', NULL, NULL, NULL),
  ('1921631', 'West Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Brookfield', 44.119884, -72.5639492, ST_GeomFromText('POINT(44.119884 -72.5639492)', 4326), NULL, NULL, '2001-05-08', '2022-09-01', NULL, NULL, NULL),
  ('1921642', 'Whitehouse Pond', 'Reservoir', 'Vermont', 'VT', 'Orange', 'Vershire', 43.991032, -72.3671782, ST_GeomFromText('POINT(43.991032 -72.3671782)', 4326), NULL, NULL, '2001-05-08', '2018-02-18', NULL, NULL, NULL),
  ('1921672', 'Balm of Gilead Beach', 'Beach', 'Vermont', 'VT', 'Orleans', 'West Charleston', 44.9186584, -72.1014883, ST_GeomFromText('POINT(44.9186584 -72.1014883)', 4326), NULL, NULL, '2001-05-08', NULL, NULL, NULL, NULL),
  ('1921739', 'Beaver Meadow', 'Lake', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.6893258, -73.2328434, ST_GeomFromText('POINT(43.6893258 -73.2328434)', 4326), NULL, NULL, '2001-05-11', '2019-12-06', NULL, NULL, NULL),
  ('1921795', 'Cedar Point', 'Cape', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.6522878, -73.2095555, ST_GeomFromText('POINT(43.6522878 -73.2095555)', 4326), NULL, NULL, '2001-05-11', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1921798', 'Center Rutland Falls', 'Falls', 'Vermont', 'VT', 'Rutland', 'West Rutland', 43.6036792, -73.0139961, ST_GeomFromText('POINT(43.6036792 -73.0139961)', 4326), NULL, NULL, '2001-05-11', NULL, NULL, NULL, NULL),
  ('1921825', 'Combination Pond', 'Reservoir', 'Vermont', 'VT', 'Rutland', 'Rutland', 43.6136554, -72.9524243, ST_GeomFromText('POINT(43.6136554 -72.9524243)', 4326), NULL, NULL, '2001-05-11', '2023-07-07', NULL, NULL, NULL),
  ('1921927', 'Howard Pond', 'Reservoir', 'Vermont', 'VT', 'Rutland', 'Benson', 43.6607727, -73.2724818, ST_GeomFromText('POINT(43.6607727 -73.2724818)', 4326), NULL, NULL, '2001-05-11', '2019-12-06', NULL, NULL, NULL),
  ('1922095', 'Said Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Bomoseen', 43.6842313, -73.2292786, ST_GeomFromText('POINT(43.6842313 -73.2292786)', 4326), NULL, NULL, '2001-05-11', NULL, NULL, NULL, NULL),
  ('1922115', 'Sargent Pond', 'Lake', 'Vermont', 'VT', 'Rutland', 'Proctor', 43.6770107, -73.075665, ST_GeomFromText('POINT(43.6770107 -73.075665)', 4326), NULL, NULL, '2001-05-11', NULL, NULL, NULL, NULL),
  ('1922119', 'Sheldon Pond', 'Reservoir', 'Vermont', 'VT', 'Rutland', 'Benson', 43.6588637, -73.2660223, ST_GeomFromText('POINT(43.6588637 -73.2660223)', 4326), NULL, NULL, '2001-05-11', '2019-12-06', NULL, NULL, NULL),
  ('1922145', 'Sugar Hollow Pond', 'Reservoir', 'Vermont', 'VT', 'Rutland', 'Proctor', 43.7231216, -73.0209427, ST_GeomFromText('POINT(43.7231216 -73.0209427)', 4326), NULL, NULL, '2001-05-11', NULL, NULL, NULL, NULL),
  ('1922147', 'Sutherland Falls', 'Falls', 'Vermont', 'VT', 'Rutland', 'Proctor', 43.6634002, -73.0334419, ST_GeomFromText('POINT(43.6634002 -73.0334419)', 4326), NULL, NULL, '2001-05-11', NULL, NULL, NULL, NULL),
  ('1922181', 'Warner Cove', 'Bay', 'Vermont', 'VT', 'Rutland', 'Proctor', 43.6542338, -73.0328861, ST_GeomFromText('POINT(43.6542338 -73.0328861)', 4326), NULL, NULL, '2001-05-11', NULL, NULL, NULL, NULL),
  ('1922229', 'Amity Pond', 'Reservoir', 'Vermont', 'VT', 'Windsor', 'Woodstock North', 43.7288238, -72.5319004, ST_GeomFromText('POINT(43.7288238 -72.5319004)', 4326), NULL, NULL, '2001-05-11', '2018-02-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1922265', 'Black River Falls', 'Falls', 'Vermont', 'VT', 'Windsor', 'Springfield', 43.2997967, -72.4834228, ST_GeomFromText('POINT(43.2997967 -72.4834228)', 4326), NULL, NULL, '2001-05-11', NULL, NULL, NULL, NULL),
  ('1922321', 'Crystal Cascade Falls', 'Falls', 'Vermont', 'VT', 'Windsor', 'Windsor', 43.4347943, -72.4678685, ST_GeomFromText('POINT(43.4347943 -72.4678685)', 4326), NULL, NULL, '2001-05-11', NULL, NULL, NULL, NULL),
  ('1922374', 'Gerrys Falls', 'Falls', 'Vermont', 'VT', 'Windsor', 'Windsor', 43.4506275, -72.4362019, ST_GeomFromText('POINT(43.4506275 -72.4362019)', 4326), NULL, NULL, '2001-05-11', NULL, NULL, NULL, NULL),
  ('1922440', 'Little Cascade Falls', 'Falls', 'Vermont', 'VT', 'Windsor', 'Windsor', 43.4314611, -72.4570351, ST_GeomFromText('POINT(43.4314611 -72.4570351)', 4326), NULL, NULL, '2001-05-11', NULL, NULL, NULL, NULL),
  ('1922489', 'North Springfield Bog', 'Swamp', 'Vermont', 'VT', 'Windsor', 'Chester', 43.3261851, -72.512868, ST_GeomFromText('POINT(43.3261851 -72.512868)', 4326), NULL, NULL, '2001-05-11', NULL, NULL, NULL, NULL),
  ('1954881', 'Hackett Brook', 'Stream', 'New Hampshire', 'NH', 'Sullivan', 'Springfield', 43.3267408, -72.4270338, ST_GeomFromText('POINT(43.3267408 -72.4270338)', 4326), 43.2159095, -72.3717546, '2002-05-21', '2005-06-02', NULL, NULL, NULL),
  ('1957111', 'Paradise Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Bellows Falls', 43.159067, -72.49244, ST_GeomFromText('POINT(43.159067 -72.49244)', 4326), NULL, NULL, '2002-08-27', '2022-08-30', NULL, NULL, NULL),
  ('1957623', 'Silver Hill', 'Summit', 'Vermont', 'VT', 'Windsor', 'Windsor', 43.4983199, -72.4874855, ST_GeomFromText('POINT(43.4983199 -72.4874855)', 4326), NULL, NULL, '2002-08-27', '2018-04-24', NULL, NULL, NULL),
  ('1989397', 'Twilight Bay', 'Bay', 'Vermont', 'VT', 'Chittenden', 'Charlotte', 44.3547732, -73.2712375, ST_GeomFromText('POINT(44.3547732 -73.2712375)', 4326), NULL, NULL, '2003-07-22', NULL, 'Official', 'Board Decision', '2003-01-01'),
  ('2025776', 'Connor Island', 'Island', 'Vermont', 'VT', 'Caledonia', 'West Burke', 44.7167176, -71.9845409, ST_GeomFromText('POINT(44.7167176 -71.9845409)', 4326), NULL, NULL, '2002-08-27', NULL, 'Official', 'Board Decision', '2004-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2440030', 'Richies Run', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Sutton', 44.7125, -72.0011111, ST_GeomFromText('POINT(44.7125 -72.0011111)', 4326), 44.73, -71.9913889, '2008-06-14', NULL, 'Official', 'Board Decision', '2008-06-12'),
  ('2575211', 'Fayette Mountain', 'Summit', 'Vermont', 'VT', 'Rutland', 'Middletown Springs', 43.3977198, -73.082049, ST_GeomFromText('POINT(43.3977198 -73.082049)', 4326), NULL, NULL, '2010-01-20', '2022-08-30', NULL, NULL, NULL),
  ('2575212', 'East Peacham Brook', 'Stream', 'Vermont', 'VT', 'Caledonia', 'Barnet', 44.3130485, -72.10648, ST_GeomFromText('POINT(44.3130485 -72.10648)', 4326), 44.3713644, -72.1911587, '2010-01-20', '2021-02-03', 'Official', 'Board Decision', '1983-04-14'),
  ('2575213', 'Burrington Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Jacksonville', 42.7699603, -72.8651014, ST_GeomFromText('POINT(42.7699603 -72.8651014)', 4326), NULL, NULL, '2010-01-20', '2022-09-07', 'Official', 'Board Decision', '1974-07-09'),
  ('2676201', 'Barnes Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Barre West', 44.2419444, -72.5366667, ST_GeomFromText('POINT(44.2419444 -72.5366667)', 4326), 44.2861111, -72.5447222, '2011-03-12', NULL, 'Official', 'Board Decision', '2011-03-10'),
  ('2680024', 'Doll Peak', 'Summit', 'Vermont', 'VT', 'Orleans', 'Jay Peak', 44.9473874, -72.5402343, ST_GeomFromText('POINT(44.9473874 -72.5402343)', 4326), NULL, NULL, '2011-05-12', '2022-08-30', 'Official', 'Board Decision', '2011-05-12'),
  ('2784588', 'Stearns Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Saxtons River', 43.2066628, -72.5361134, ST_GeomFromText('POINT(43.2066628 -72.5361134)', 4326), 43.1874684, -72.5467246, '2016-07-18', '2016-10-14', 'Official', 'Board Decision', '2016-10-13'),
  ('2784589', 'Allbees Cove', 'Bay', 'Vermont', 'VT', 'Windham', 'Bellows Falls', 43.1524631, -72.455658, ST_GeomFromText('POINT(43.1524631 -72.455658)', 4326), NULL, NULL, '2016-07-18', '2016-12-19', 'Official', 'Board Decision', '2016-10-13'),
  ('2784590', 'Herricks Cove', 'Bay', 'Vermont', 'VT', 'Windham', 'Bellows Falls', 43.1782371, -72.4481155, ST_GeomFromText('POINT(43.1782371 -72.4481155)', 4326), NULL, NULL, '2016-07-18', '2018-06-21', NULL, NULL, NULL),
  ('2784591', 'Roundys Cove', 'Bay', 'Vermont', 'VT', 'Windham', 'Bellows Falls', 43.1948018, -72.4504478, ST_GeomFromText('POINT(43.1948018 -72.4504478)', 4326), NULL, NULL, '2016-07-18', '2016-12-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2784592', 'Divoll Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Bellows Falls', 43.1925496, -72.4891846, ST_GeomFromText('POINT(43.1925496 -72.4891846)', 4326), 43.1695981, -72.4983104, '2016-07-18', NULL, NULL, NULL, NULL),
  ('2784593', 'Halladay Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Bellows Falls', 43.1512397, -72.4586987, ST_GeomFromText('POINT(43.1512397 -72.4586987)', 4326), 43.1427223, -72.466263, '2016-07-18', NULL, NULL, NULL, NULL),
  ('2784594', 'Leach Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Saxtons River', 43.1376476, -72.5311178, ST_GeomFromText('POINT(43.1376476 -72.5311178)', 4326), 43.1727976, -72.5301666, '2016-07-18', NULL, NULL, NULL, NULL),
  ('2784595', 'Marks Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Bellows Falls', 43.129556, -72.4797242, ST_GeomFromText('POINT(43.129556 -72.4797242)', 4326), 43.1574811, -72.4924091, '2016-07-18', NULL, NULL, NULL, NULL),
  ('2784596', 'Wright Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Saxtons River', 43.2185481, -72.5354982, ST_GeomFromText('POINT(43.2185481 -72.5354982)', 4326), 43.1998909, -72.571596, '2016-07-18', '2016-08-28', NULL, NULL, NULL),
  ('2784597', 'Webb Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Bellows Falls', 43.1566417, -72.4576365, ST_GeomFromText('POINT(43.1566417 -72.4576365)', 4326), 43.1748325, -72.4849938, '2016-07-18', NULL, NULL, NULL, NULL),
  ('2785368', 'Gages Falls', 'Falls', 'Vermont', 'VT', 'Windham', 'Walpole', 43.1163, -72.4562, ST_GeomFromText('POINT(43.1163 -72.4562)', 4326), NULL, NULL, '2016-10-14', '2021-01-09', 'Official', 'Board Decision', '2016-10-13'),
  ('2785369', 'Saxtons River Falls', 'Falls', 'Vermont', 'VT', 'Windham', 'Saxtons River', 43.137742, -72.5096222, ST_GeomFromText('POINT(43.137742 -72.5096222)', 4326), NULL, NULL, '2016-10-14', '2021-01-09', 'Official', 'Board Decision', '2016-10-13'),
  ('2785370', 'Sokoki Falls', 'Falls', 'Vermont', 'VT', 'Windham', 'Saxtons River', 43.2086078, -72.5170712, ST_GeomFromText('POINT(43.2086078 -72.5170712)', 4326), NULL, NULL, '2016-10-14', '2021-01-08', 'Official', 'Board Decision', '2016-10-13'),
  ('2785371', 'Twin Falls', 'Falls', 'Vermont', 'VT', 'Windham', 'Walpole', 43.1166, -72.4536, ST_GeomFromText('POINT(43.1166 -72.4536)', 4326), NULL, NULL, '2016-10-14', '2021-01-11', 'Official', 'Board Decision', '2016-10-13');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2785372', 'Barnes Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Saxtons River', 43.1336111, -72.5163889, ST_GeomFromText('POINT(43.1336111 -72.5163889)', 4326), 43.07892, -72.54721, '2016-10-14', '2016-12-19', 'Official', 'Board Decision', '2016-10-13'),
  ('2785373', 'Ellis Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Bellows Falls', 43.1599, -72.4745, ST_GeomFromText('POINT(43.1599 -72.4745)', 4326), 43.1615376, -72.4839869, '2016-10-14', '2016-12-19', 'Official', 'Board Decision', '2016-10-13'),
  ('2785374', 'Farr Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Bellows Falls', 43.1576, -72.4717, ST_GeomFromText('POINT(43.1576 -72.4717)', 4326), 43.1562813, -72.480305, '2016-10-14', '2016-12-19', 'Official', 'Board Decision', '2016-10-13'),
  ('2785375', 'Hitchcock Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Saxtons River', 43.1380556, -72.5316667, ST_GeomFromText('POINT(43.1380556 -72.5316667)', 4326), 43.1297154, -72.5480752, '2016-10-14', '2016-12-19', 'Official', 'Board Decision', '2016-10-13'),
  ('2785376', 'Hyde Hill Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Bellows Falls', 43.1388889, -72.4527778, ST_GeomFromText('POINT(43.1388889 -72.4527778)', 4326), 43.1311111, -72.4608333, '2016-10-14', '2016-12-19', 'Official', 'Board Decision', '2016-10-13'),
  ('2785377', 'Petty Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Saxtons River', 43.2152778, -72.5336111, ST_GeomFromText('POINT(43.2152778 -72.5336111)', 4326), 43.2352778, -72.5227778, '2016-10-14', '2016-12-19', 'Official', 'Board Decision', '2016-10-13'),
  ('2785378', 'Pleasant Valley Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Saxtons River', 43.1381, -72.5133, ST_GeomFromText('POINT(43.1381 -72.5133)', 4326), 43.1675788, -72.5221443, '2016-10-14', '2016-12-19', 'Official', 'Board Decision', '2016-10-13'),
  ('2785379', 'Signal Hill Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Saxtons River', 43.1396, -72.5025, ST_GeomFromText('POINT(43.1396 -72.5025)', 4326), 43.1660468, -72.4963485, '2016-10-14', '2021-01-09', 'Official', 'Board Decision', '2016-10-13'),
  ('2785380', 'Skunk Hollow Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Saxtons River', 43.2297222, -72.5413889, ST_GeomFromText('POINT(43.2297222 -72.5413889)', 4326), 43.2497222, -72.5344444, '2016-10-14', '2016-12-19', 'Official', 'Board Decision', '2016-10-13'),
  ('2785381', 'Beaver Dam Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Saxtons River', 43.1344444, -72.5147222, ST_GeomFromText('POINT(43.1344444 -72.5147222)', 4326), 43.1156621, -72.5206082, '2016-10-14', '2016-12-19', 'Official', 'Board Decision', '2016-10-13');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2785382', 'Locke Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Bellows Falls', 43.1905556, -72.4805556, ST_GeomFromText('POINT(43.1905556 -72.4805556)', 4326), 43.2145375, -72.4901486, '2016-10-14', '2016-12-19', 'Official', 'Board Decision', '2016-10-13'),
  ('2785383', 'Noyes Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Bellows Falls', 43.1331201, -72.4816939, ST_GeomFromText('POINT(43.1331201 -72.4816939)', 4326), 43.1258996, -72.4946709, '2016-10-14', '2016-12-19', 'Official', 'Board Decision', '2016-10-13'),
  ('2785384', 'Upper Meadows Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Bellows Falls', 43.1975, -72.4497222, ST_GeomFromText('POINT(43.1975 -72.4497222)', 4326), 43.2122222, -72.4622222, '2016-10-14', '2016-12-19', 'Official', 'Board Decision', '2016-10-13'),
  ('2785385', 'Warner Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Saxtons River', 43.1366667, -72.5072222, ST_GeomFromText('POINT(43.1366667 -72.5072222)', 4326), 43.1316667, -72.5047222, '2016-10-14', '2016-12-19', 'Official', 'Board Decision', '2016-10-13'),
  ('2785386', 'Wiley Hill Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Bellows Falls', 43.1972222, -72.4963889, ST_GeomFromText('POINT(43.1972222 -72.4963889)', 4326), 43.1888889, -72.5366667, '2016-10-14', '2016-12-19', 'Official', 'Board Decision', '2016-10-13'),
  ('2785387', 'Brockways Mills Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Saxtons River', 43.2067, -72.5094, ST_GeomFromText('POINT(43.2067 -72.5094)', 4326), 43.2346932, -72.5019417, '2016-10-14', '2016-12-19', 'Official', 'Board Decision', '2016-10-13'),
  ('2785818', 'Mskaskek Brook', 'Stream', 'Vermont', 'VT', 'Washington', 'Plainfield', 44.2608209, -72.4109935, ST_GeomFromText('POINT(44.2608209 -72.4109935)', 4326), 44.22805, -72.3579, '2016-12-08', NULL, 'Official', 'Board Decision', '2016-12-08'),
  ('2785819', 'Craig Cove', 'Bay', 'Vermont', 'VT', 'Caledonia', 'West Burke', 44.72252, -71.980172, ST_GeomFromText('POINT(44.72252 -71.980172)', 4326), NULL, NULL, '2016-12-08', NULL, 'Official', 'Board Decision', '2016-12-08'),
  ('2791531', 'Bemis Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Westminster West', 43.0992046, -72.5638062, ST_GeomFromText('POINT(43.0992046 -72.5638062)', 4326), NULL, NULL, '2018-05-16', '2022-08-29', 'Official', 'Board Decision', '2018-05-10'),
  ('2791532', 'Berry Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Saxtons River', 43.1870312, -72.5445589, ST_GeomFromText('POINT(43.1870312 -72.5445589)', 4326), NULL, NULL, '2018-05-16', '2022-08-31', 'Official', 'Board Decision', '2018-05-10');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2791533', 'Hitchcock Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Saxtons River', 43.1330722, -72.5522376, ST_GeomFromText('POINT(43.1330722 -72.5522376)', 4326), NULL, NULL, '2018-05-16', '2022-08-30', 'Official', 'Board Decision', '2018-05-10'),
  ('2791536', 'Rockingham Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Saxtons River', 43.1726712, -72.5055289, ST_GeomFromText('POINT(43.1726712 -72.5055289)', 4326), NULL, NULL, '2018-05-16', '2022-08-30', 'Official', 'Board Decision', '2018-05-10'),
  ('2791537', 'Shepard Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Saxtons River', 43.1663912, -72.5114889, ST_GeomFromText('POINT(43.1663912 -72.5114889)', 4326), NULL, NULL, '2018-05-16', '2022-09-07', 'Official', 'Board Decision', '2018-05-10'),
  ('2791538', 'Wiley Hill', 'Summit', 'Vermont', 'VT', 'Windham', 'Saxtons River', 43.1962122, -72.532916, ST_GeomFromText('POINT(43.1962122 -72.532916)', 4326), NULL, NULL, '2018-05-16', '2022-08-30', 'Official', 'Board Decision', '2018-05-10'),
  ('2797094', 'Emery Mountain', 'Summit', 'Vermont', 'VT', 'Lamoille', 'Johnson', 44.692151, -72.7165684, ST_GeomFromText('POINT(44.692151 -72.7165684)', 4326), NULL, NULL, '2018-09-13', '2022-09-01', 'Official', 'Board Decision', '2018-09-13'),
  ('2797381', 'Little Hans Peak', 'Summit', 'Vermont', 'VT', 'Addison', 'Lincoln', 44.0282989, -72.9048247, ST_GeomFromText('POINT(44.0282989 -72.9048247)', 4326), NULL, NULL, '2018-11-27', '2018-12-01', NULL, NULL, NULL),
  ('2797382', 'Buck Hill', 'Summit', 'Vermont', 'VT', 'Bennington', 'Shushan', 43.0951624, -73.2620952, ST_GeomFromText('POINT(43.0951624 -73.2620952)', 4326), NULL, NULL, '2018-11-27', '2020-10-21', NULL, NULL, NULL),
  ('2803749', 'Stevens Brook', 'Stream', 'Vermont', 'VT', 'Essex', 'Bloomfield', 44.7712718, -71.7426036, ST_GeomFromText('POINT(44.7712718 -71.7426036)', 4326), 44.7334403, -71.7490955, '2019-04-26', NULL, NULL, NULL, NULL),
  ('2813487', 'Guild Brook', 'Stream', 'Vermont', 'VT', 'Windham', 'Saxtons River', 43.16165, -72.55732, ST_GeomFromText('POINT(43.16165 -72.55732)', 4326), 43.17544, -72.54601, '2020-09-10', NULL, 'Official', 'Board Decision', '2020-09-10'),
  ('2813492', 'Cold Springs', 'Reservoir', 'Vermont', 'VT', 'Windham', 'Bellows Falls', 43.1308412, -72.4435302, ST_GeomFromText('POINT(43.1308412 -72.4435302)', 4326), NULL, NULL, '2020-09-10', '2021-01-24', 'Official', 'Board Decision', '2020-09-10');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2830210', 'Buffalo Mountain', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Wolcott', 44.500108, -72.3823488, ST_GeomFromText('POINT(44.500108 -72.3823488)', 4326), NULL, NULL, '2022-01-07', '2023-11-18', 'Official', 'Board Decision', '2021-12-09'),
  ('2831285', 'Bumblebee Brook', 'Stream', 'Vermont', 'VT', 'Chittenden', 'Mount Philo', 44.371995, -73.215594, ST_GeomFromText('POINT(44.371995 -73.215594)', 4326), 44.380508, -73.203664, '2023-08-16', '2023-08-16', 'Official', 'Board Decision', '2023-08-10'),
  ('2831549', 'Chamberlain Hill', 'Summit', 'Vermont', 'VT', 'Orange', 'Groton', 44.13259, -72.1618513, ST_GeomFromText('POINT(44.13259 -72.1618513)', 4326), NULL, NULL, '2024-07-11', '2024-07-12', NULL, NULL, NULL),
  ('2832386', 'Gibson Hill', 'Summit', 'Vermont', 'VT', 'Caledonia', 'Peacham', 44.260031, -72.141359, ST_GeomFromText('POINT(44.260031 -72.141359)', 4326), NULL, NULL, '2024-10-02', '2024-10-03', NULL, NULL, NULL),
  ('2832391', 'Woodbury Mountains', 'Range', 'Vermont', 'VT', 'Washington', 'Woodbury', 44.4752006, -72.4253513, ST_GeomFromText('POINT(44.4752006 -72.4253513)', 4326), NULL, NULL, '2024-10-02', '2024-10-04', NULL, NULL, NULL);


COMMIT;
SET unique_checks = 1;
SET autocommit = 1;

-- VT complete: 3,765 features loaded
