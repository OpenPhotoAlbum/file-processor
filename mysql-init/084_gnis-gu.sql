USE kin;

-- GNIS Geographic Features for GU
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
  ('1389412', 'Aang Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2530556, 144.6783333, ST_GeomFromText('POINT(13.2530556 144.6783333)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389413', 'Aba Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Merizo', 13.255, 144.6727778, ST_GeomFromText('POINT(13.255 144.6727778)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389415', 'Abo Cove', 'Bay', 'Guam', 'GU', 'Guam', 'Apra Harbor', 13.4191449, 144.6714891, ST_GeomFromText('POINT(13.4191449 144.6714891)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL),
  ('1389416', 'Abong Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Agat', 13.3197222, 144.6491667, ST_GeomFromText('POINT(13.3197222 144.6491667)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389417', 'Acapulco', 'Ridge', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3413889, 144.7308333, ST_GeomFromText('POINT(13.3413889 144.7308333)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389418', 'Achae Point', 'Summit', 'Guam', 'GU', 'Guam', 'Ritidian Point', 13.64, 144.8488889, ST_GeomFromText('POINT(13.64 144.8488889)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389419', 'Achang Bay', 'Bay', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2542801, 144.6858488, ST_GeomFromText('POINT(13.2542801 144.6858488)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL),
  ('1389422', 'Acho Point', 'Cape', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2577778, 144.7344444, ST_GeomFromText('POINT(13.2577778 144.7344444)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389423', 'Achugao Point', 'Summit', 'Guam', 'GU', 'Guam', 'Agat', 13.3352778, 144.6419444, ST_GeomFromText('POINT(13.3352778 144.6419444)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389424', 'Achugao Valley', 'Valley', 'Guam', 'GU', 'Guam', 'Agat', 13.3327778, 144.6472222, ST_GeomFromText('POINT(13.3327778 144.6472222)', 4326), 13.3327778, 144.6472222, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389427', 'Adaique', 'Valley', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2883333, 144.7463889, ST_GeomFromText('POINT(13.2883333 144.7463889)', 4326), 13.2883333, 144.7463889, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389430', 'Adelup Point', 'Summit', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4797222, 144.7266667, ST_GeomFromText('POINT(13.4797222 144.7266667)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389431', 'Adelup Reservoir', 'Reservoir', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4704398, 144.7321592, ST_GeomFromText('POINT(13.4704398 144.7321592)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL),
  ('1389433', 'Adjoulan Point', 'Cape', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3366667, 144.7680556, ST_GeomFromText('POINT(13.3366667 144.7680556)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389434', 'Adotgan Point', 'Summit', 'Guam', 'GU', 'Guam', 'Apra Harbor', 13.4452778, 144.625, ST_GeomFromText('POINT(13.4452778 144.625)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389438', 'Aga Bay', 'Bay', 'Guam', 'GU', 'Guam', 'Inarajan', 13.246493, 144.7255978, ST_GeomFromText('POINT(13.246493 144.7255978)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL),
  ('1389439', 'Aga Point', 'Cape', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2452778, 144.7244444, ST_GeomFromText('POINT(13.2452778 144.7244444)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389442', 'Agaga River', 'Stream', 'Guam', 'GU', 'Guam', 'Agat', 13.3319444, 144.6452778, ST_GeomFromText('POINT(13.3319444 144.6452778)', 4326), 13.3319444, 144.6452778, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389444', 'Hagåtña Bay', 'Bay', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4863898, 144.7603513, ST_GeomFromText('POINT(13.4863898 144.7603513)', 4326), NULL, NULL, '2000-01-01', '2014-12-23', 'Official', 'Board Decision', '2002-01-01'),
  ('1389448', 'Hagåtña River', 'Stream', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4758333, 144.7519444, ST_GeomFromText('POINT(13.4758333 144.7519444)', 4326), 13.4758333, 144.7519444, '2000-01-01', '2010-02-16', 'Official', 'Board Decision', '2002-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389449', 'Hagåtña Springs', 'Spring', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4619444, 144.7580556, ST_GeomFromText('POINT(13.4619444 144.7580556)', 4326), NULL, NULL, '2000-01-01', '2010-02-16', 'Official', 'Board Decision', '2002-01-01'),
  ('1389450', 'Hagåtña Swamp', 'Swamp', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4680556, 144.7558333, ST_GeomFromText('POINT(13.4680556 144.7558333)', 4326), NULL, NULL, '2000-01-01', '2010-02-16', 'Official', 'Board Decision', '2002-01-01'),
  ('1389452', 'Agat Bay', 'Bay', 'Guam', 'GU', 'Guam', 'Agat', 13.3983411, 144.6536165, ST_GeomFromText('POINT(13.3983411 144.6536165)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL),
  ('1389457', 'Agfayan Bay', 'Bay', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2675501, 144.7421399, ST_GeomFromText('POINT(13.2675501 144.7421399)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL),
  ('1389458', 'Agfayan Point', 'Cape', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2636111, 144.74, ST_GeomFromText('POINT(13.2636111 144.74)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389459', 'Agfayan River', 'Stream', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2663889, 144.735, ST_GeomFromText('POINT(13.2663889 144.735)', 4326), 13.2783333, 144.6952778, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389460', 'Agrigan Island', 'Island', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2461111, 144.7141667, ST_GeomFromText('POINT(13.2461111 144.7141667)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389462', 'Aguada River', 'Stream', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4391667, 144.6769444, ST_GeomFromText('POINT(13.4391667 144.6769444)', 4326), 13.4375, 144.7036111, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389463', 'Ague Point', 'Summit', 'Guam', 'GU', 'Guam', 'Ritidian Point', 13.5663889, 144.8194444, ST_GeomFromText('POINT(13.5663889 144.8194444)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389464', 'Ajmo Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Merizo', 13.2786111, 144.6594444, ST_GeomFromText('POINT(13.2786111 144.6594444)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389465', 'Ajayan', 'Valley', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2494444, 144.7163889, ST_GeomFromText('POINT(13.2494444 144.7163889)', 4326), 13.2494444, 144.7163889, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389466', 'Ajayan Bay', 'Bay', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2480642, 144.7194219, ST_GeomFromText('POINT(13.2480642 144.7194219)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL),
  ('1389467', 'Ajayan Point', 'Cape', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2469444, 144.7180556, ST_GeomFromText('POINT(13.2469444 144.7180556)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389468', 'Ajayan River', 'Stream', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2494444, 144.7166667, ST_GeomFromText('POINT(13.2494444 144.7166667)', 4326), 13.2766667, 144.6933333, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389469', 'Alatgue', 'Ridge', 'Guam', 'GU', 'Guam', 'Agat', 13.3116667, 144.6747222, ST_GeomFromText('POINT(13.3116667 144.6747222)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389470', 'Alatgue River', 'Stream', 'Guam', 'GU', 'Guam', 'Agat', 13.3102778, 144.6722222, ST_GeomFromText('POINT(13.3102778 144.6722222)', 4326), 13.3102778, 144.6722222, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389471', 'Alatgue Spring', 'Spring', 'Guam', 'GU', 'Guam', 'Agat', 13.3103524, 144.674318, ST_GeomFromText('POINT(13.3103524 144.674318)', 4326), NULL, NULL, '1981-02-06', '2014-09-10', NULL, NULL, NULL),
  ('1389472', 'Mount Alifan', 'Summit', 'Guam', 'GU', 'Guam', 'Agat', 13.3786111, 144.6680556, ST_GeomFromText('POINT(13.3786111 144.6680556)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389473', 'Almagosa River', 'Stream', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3458333, 144.695, ST_GeomFromText('POINT(13.3458333 144.695)', 4326), 13.3458333, 144.695, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389474', 'Almagosa Springs', 'Spring', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3462073, 144.6775087, ST_GeomFromText('POINT(13.3462073 144.6775087)', 4326), NULL, NULL, '1981-02-06', '2014-09-10', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389475', 'Mount Almagosa', 'Summit', 'Guam', 'GU', 'Guam', 'Agat', 13.3447222, 144.6697222, ST_GeomFromText('POINT(13.3447222 144.6697222)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389476', 'Alupat Island', 'Island', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4913889, 144.7677778, ST_GeomFromText('POINT(13.4913889 144.7677778)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389477', 'Alutom', 'Island', 'Guam', 'GU', 'Guam', 'Agat', 13.3794444, 144.6441667, ST_GeomFromText('POINT(13.3794444 144.6441667)', 4326), NULL, NULL, '1981-02-06', '2010-01-26', 'Official', 'Board Decision', '1969-09-09'),
  ('1389478', 'Mount Alutom', 'Summit', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4313889, 144.71, ST_GeomFromText('POINT(13.4313889 144.71)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389479', 'Amantes Point', 'Summit', 'Guam', 'GU', 'Guam', 'Hagatna', 13.5347222, 144.8, ST_GeomFromText('POINT(13.5347222 144.8)', 4326), NULL, NULL, '1981-02-06', '2015-04-29', NULL, NULL, NULL),
  ('1389480', 'Anae', 'Island', 'Guam', 'GU', 'Guam', 'Agat', 13.3563889, 144.6341667, ST_GeomFromText('POINT(13.3563889 144.6341667)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389484', 'Anao Point', 'Cape', 'Guam', 'GU', 'Guam', 'Pati Point', 13.5511111, 144.9363889, ST_GeomFromText('POINT(13.5511111 144.9363889)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389487', 'Apaca Point', 'Cape', 'Guam', 'GU', 'Guam', 'Agat', 13.4011111, 144.6588889, ST_GeomFromText('POINT(13.4011111 144.6588889)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389488', 'Aplacho River', 'Stream', 'Guam', 'GU', 'Guam', 'Talofofo', 13.4158333, 144.6763889, ST_GeomFromText('POINT(13.4158333 144.6763889)', 4326), 13.4158333, 144.6763889, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389489', 'Apra Harbor', 'Bay', 'Guam', 'GU', 'Guam', 'Apra Harbor', 13.4527367, 144.6527859, ST_GeomFromText('POINT(13.4527367 144.6527859)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', 'Official', 'Board Decision', '1944-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389491', 'Apra Heights Reservoir', 'Reservoir', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3981885, 144.6814312, ST_GeomFromText('POINT(13.3981885 144.6814312)', 4326), NULL, NULL, '1981-02-06', '2014-09-10', NULL, NULL, NULL),
  ('1389493', 'Apuntua Point', 'Summit', 'Guam', 'GU', 'Guam', 'Apra Harbor', 13.42, 144.6377778, ST_GeomFromText('POINT(13.42 144.6377778)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389499', 'Asalonso River', 'Stream', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3333333, 144.7655556, ST_GeomFromText('POINT(13.3333333 144.7655556)', 4326), 13.3333333, 144.7655556, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389500', 'Asalonso Spring', 'Spring', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3293264, 144.7610864, ST_GeomFromText('POINT(13.3293264 144.7610864)', 4326), NULL, NULL, '1981-02-06', '2014-09-10', NULL, NULL, NULL),
  ('1389502', 'Asan Bay', 'Bay', 'Guam', 'GU', 'Guam', 'Hagatna', 13.477915, 144.7164128, ST_GeomFromText('POINT(13.477915 144.7164128)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL),
  ('1389503', 'Asan Point', 'Cape', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4752778, 144.7047222, ST_GeomFromText('POINT(13.4752778 144.7047222)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389504', 'Asan River', 'Stream', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4722222, 144.7102778, ST_GeomFromText('POINT(13.4722222 144.7102778)', 4326), 13.4722222, 144.7102778, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389505', 'Asan Spring', 'Spring', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4707831, 144.7194442, ST_GeomFromText('POINT(13.4707831 144.7194442)', 4326), NULL, NULL, '1981-02-06', '2014-09-10', NULL, NULL, NULL),
  ('1389507', 'Asanite Bay', 'Bay', 'Guam', 'GU', 'Guam', 'Talofofo', 13.345124, 144.7719205, ST_GeomFromText('POINT(13.345124 144.7719205)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL),
  ('1389509', 'Asanite Point', 'Cape', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3413889, 144.7697222, ST_GeomFromText('POINT(13.3413889 144.7697222)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389512', 'Ascola Sito Creek', 'Stream', 'Guam', 'GU', 'Guam', 'Agat', 13.3608333, 144.6497222, ST_GeomFromText('POINT(13.3608333 144.6497222)', 4326), 13.3608333, 144.6497222, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389515', 'Asdigues', 'Cliff', 'Guam', 'GU', 'Guam', 'Agat', 13.3008333, 144.6669444, ST_GeomFromText('POINT(13.3008333 144.6669444)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389516', 'Asdonao Hill', 'Summit', 'Guam', 'GU', 'Guam', 'Inarajan', 13.275, 144.7269444, ST_GeomFromText('POINT(13.275 144.7269444)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389520', 'Asgadao', 'Ridge', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2494444, 144.7072222, ST_GeomFromText('POINT(13.2494444 144.7072222)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389521', 'Asgadao Bay', 'Bay', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2455296, 144.7107007, ST_GeomFromText('POINT(13.2455296 144.7107007)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL),
  ('1389522', 'Asgadao Creek', 'Stream', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2458333, 144.7077778, ST_GeomFromText('POINT(13.2458333 144.7077778)', 4326), 13.2458333, 144.7077778, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389523', 'Asgadao Island', 'Island', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2430556, 144.7036111, ST_GeomFromText('POINT(13.2430556 144.7036111)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389524', 'Asgon Point', 'Island', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2675, 144.7413889, ST_GeomFromText('POINT(13.2675 144.7413889)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389526', 'Asiga Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3138889, 144.7691667, ST_GeomFromText('POINT(13.3138889 144.7691667)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389528', 'Asiga Point', 'Summit', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3188889, 144.7677778, ST_GeomFromText('POINT(13.3188889 144.7677778)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389530', 'Aslemon', 'Summit', 'Guam', 'GU', 'Guam', 'Agat', 13.3944444, 144.6641667, ST_GeomFromText('POINT(13.3944444 144.6641667)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389532', 'Aslinget River', 'Stream', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2855556, 144.7511111, ST_GeomFromText('POINT(13.2855556 144.7511111)', 4326), 13.31, 144.7533333, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389534', 'Asmafines River', 'Stream', 'Guam', 'GU', 'Guam', 'Agat', 13.3272222, 144.6491667, ST_GeomFromText('POINT(13.3272222 144.6491667)', 4326), 13.3272222, 144.6491667, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389535', 'Asmaile Point', 'Cape', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2469444, 144.7122222, ST_GeomFromText('POINT(13.2469444 144.7122222)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389536', 'Asmaile', 'Ridge', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2494444, 144.7097222, ST_GeomFromText('POINT(13.2494444 144.7097222)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389538', 'Asmulato Hill', 'Summit', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3019444, 144.7355556, ST_GeomFromText('POINT(13.3019444 144.7355556)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389547', 'Asquiroga Cliff', 'Cliff', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3391667, 144.7644444, ST_GeomFromText('POINT(13.3391667 144.7644444)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389551', 'Astaban River', 'Stream', 'Guam', 'GU', 'Guam', 'Agat', 13.295, 144.6702778, ST_GeomFromText('POINT(13.295 144.6702778)', 4326), 13.295, 144.6702778, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389553', 'Atantano River', 'Stream', 'Guam', 'GU', 'Guam', 'Apra Harbor', 13.4272222, 144.6727778, ST_GeomFromText('POINT(13.4272222 144.6727778)', 4326), 13.4044444, 144.6941667, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389555', 'Atao Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2561111, 144.7319444, ST_GeomFromText('POINT(13.2561111 144.7319444)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389558', 'Atate River', 'Stream', 'Guam', 'GU', 'Guam', 'Talofofo', 13.2994444, 144.7027778, ST_GeomFromText('POINT(13.2994444 144.7027778)', 4326), 13.2983333, 144.6880556, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389560', 'Auau Creek', 'Stream', 'Guam', 'GU', 'Guam', 'Agat', 13.3755556, 144.6486111, ST_GeomFromText('POINT(13.3755556 144.6486111)', 4326), 13.3755556, 144.6486111, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389561', 'Auau Spring', 'Spring', 'Guam', 'GU', 'Guam', 'Agat', 13.3713235, 144.6628579, ST_GeomFromText('POINT(13.3713235 144.6628579)', 4326), NULL, NULL, '1981-02-06', '2014-09-10', NULL, NULL, NULL),
  ('1389563', 'Babe Island', 'Island', 'Guam', 'GU', 'Guam', 'Merizo', 13.2386111, 144.6725, ST_GeomFromText('POINT(13.2386111 144.6725)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389565', 'Balang Point', 'Cape', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2497222, 144.6861111, ST_GeomFromText('POINT(13.2497222 144.6861111)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389566', 'Bangi Island', 'Island', 'Guam', 'GU', 'Guam', 'Agat', 13.3761111, 144.6477778, ST_GeomFromText('POINT(13.3761111 144.6477778)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389567', 'Bangi Point', 'Cape', 'Guam', 'GU', 'Guam', 'Agat', 13.3755556, 144.6486111, ST_GeomFromText('POINT(13.3755556 144.6486111)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389568', 'Mount Barrigada', 'Summit', 'Guam', 'GU', 'Guam', 'Dededo', 13.4886111, 144.8266667, ST_GeomFromText('POINT(13.4886111 144.8266667)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389574', 'Big Guatali River', 'Stream', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4188889, 144.6791667, ST_GeomFromText('POINT(13.4188889 144.6791667)', 4326), 13.4188889, 144.6791667, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389575', 'Bijia Peak', 'Summit', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4530556, 144.7308333, ST_GeomFromText('POINT(13.4530556 144.7308333)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389576', 'Bijia Point', 'Summit', 'Guam', 'GU', 'Guam', 'Dededo', 13.5247222, 144.8008333, ST_GeomFromText('POINT(13.5247222 144.8008333)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389578', 'Bile Bay', 'Bay', 'Guam', 'GU', 'Guam', 'Merizo', 13.2768603, 144.6622844, ST_GeomFromText('POINT(13.2768603 144.6622844)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL),
  ('1389579', 'Bile River', 'Stream', 'Guam', 'GU', 'Guam', 'Merizo', 13.2758333, 144.6608333, ST_GeomFromText('POINT(13.2758333 144.6608333)', 4326), 13.2758333, 144.6608333, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389582', 'Boaga Hill', 'Summit', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2525, 144.7219444, ST_GeomFromText('POINT(13.2525 144.7219444)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389583', 'Bolanos River', 'Stream', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3013889, 144.6763889, ST_GeomFromText('POINT(13.3013889 144.6763889)', 4326), 13.3013889, 144.6763889, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389584', 'Mount Bolanos', 'Summit', 'Guam', 'GU', 'Guam', 'Talofofo', 13.2980556, 144.685, ST_GeomFromText('POINT(13.2980556 144.685)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389585', 'Bona Spring', 'Spring', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3791451, 144.6820289, ST_GeomFromText('POINT(13.3791451 144.6820289)', 4326), NULL, NULL, '1981-02-06', '2014-09-10', NULL, NULL, NULL),
  ('1389586', 'Bonya River', 'Stream', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3655556, 144.7116667, ST_GeomFromText('POINT(13.3655556 144.7116667)', 4326), 13.3613889, 144.6761111, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389589', 'Bubulao River', 'Stream', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3188889, 144.7294444, ST_GeomFromText('POINT(13.3188889 144.7294444)', 4326), 13.3027778, 144.6888889, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389590', 'Cabras Island', 'Island', 'Guam', 'GU', 'Guam', 'Apra Harbor', 13.4605556, 144.6741667, ST_GeomFromText('POINT(13.4605556 144.6741667)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389594', 'Camel Rock', 'Island', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4788889, 144.7030556, ST_GeomFromText('POINT(13.4788889 144.7030556)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389598', 'Campanaya Point', 'Summit', 'Guam', 'GU', 'Guam', 'Dededo', 13.4875, 144.8675, ST_GeomFromText('POINT(13.4875 144.8675)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389603', 'Cascajo Hill', 'Summit', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4266667, 144.6761111, ST_GeomFromText('POINT(13.4266667 144.6761111)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389604', 'Catalina Point', 'Cape', 'Guam', 'GU', 'Guam', 'Dededo', 13.5252778, 144.9219444, ST_GeomFromText('POINT(13.5252778 144.9219444)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389608', 'Cetti Bay', 'Bay', 'Guam', 'GU', 'Guam', 'Agat', 13.316388, 144.6544342, ST_GeomFromText('POINT(13.316388 144.6544342)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL),
  ('1389609', 'Cetti River', 'Stream', 'Guam', 'GU', 'Guam', 'Agat', 13.3152778, 144.6547222, ST_GeomFromText('POINT(13.3152778 144.6547222)', 4326), 13.3152778, 144.6547222, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389610', 'Mount Chachao', 'Summit', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4358333, 144.7083333, ST_GeomFromText('POINT(13.4358333 144.7083333)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389612', 'Chagame River', 'Stream', 'Guam', 'GU', 'Guam', 'Agat', 13.3105556, 144.6722222, ST_GeomFromText('POINT(13.3105556 144.6722222)', 4326), 13.3105556, 144.6722222, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389615', 'Chalan Anite Point', 'Summit', 'Guam', 'GU', 'Guam', 'Agat', 13.3072222, 144.6533333, ST_GeomFromText('POINT(13.3072222 144.6533333)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389616', 'Chalan Daog', 'Valley', 'Guam', 'GU', 'Guam', 'Agat', 13.3155556, 144.6722222, ST_GeomFromText('POINT(13.3155556 144.6722222)', 4326), 13.3155556, 144.6722222, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389620', 'Chaligan Creek', 'Stream', 'Guam', 'GU', 'Guam', 'Agat', 13.3716667, 144.6494444, ST_GeomFromText('POINT(13.3716667 144.6494444)', 4326), 13.3716667, 144.6494444, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389622', 'Chaot River', 'Stream', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4547222, 144.7655556, ST_GeomFromText('POINT(13.4547222 144.7655556)', 4326), 13.4547222, 144.7655556, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389623', 'Chii Point', 'Summit', 'Guam', 'GU', 'Guam', 'Agat', 13.3283333, 144.6469444, ST_GeomFromText('POINT(13.3283333 144.6469444)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389625', 'Chorrito Cliff', 'Cliff', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4758333, 144.7216667, ST_GeomFromText('POINT(13.4758333 144.7216667)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389627', 'Cocos Island', 'Island', 'Guam', 'GU', 'Guam', 'Merizo', 13.2361111, 144.6488889, ST_GeomFromText('POINT(13.2361111 144.6488889)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389628', 'Cocos Lagoon', 'Bay', 'Guam', 'GU', 'Guam', 'Merizo', 13.2489121, 144.6637813, ST_GeomFromText('POINT(13.2489121 144.6637813)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL),
  ('1389634', 'Dadi Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Agat', 13.4119444, 144.6544444, ST_GeomFromText('POINT(13.4119444 144.6544444)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389636', 'Dante River', 'Stream', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2816667, 144.7116667, ST_GeomFromText('POINT(13.2816667 144.7116667)', 4326), 13.28, 144.6902778, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389639', 'Dobo Spring', 'Spring', 'Guam', 'GU', 'Guam', 'Talofofo', 13.347075, 144.6812004, ST_GeomFromText('POINT(13.347075 144.6812004)', 4326), NULL, NULL, '1981-02-06', '2014-09-10', NULL, NULL, NULL),
  ('1389641', 'Dongua Point', 'Cape', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2513889, 144.7302778, ST_GeomFromText('POINT(13.2513889 144.7302778)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389642', 'Dungcas Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Hagatna', 13.49, 144.7725, ST_GeomFromText('POINT(13.49 144.7725)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389648', 'Faata Springs', 'Spring', 'Guam', 'GU', 'Guam', 'Agat', 13.3758602, 144.6649373, ST_GeomFromText('POINT(13.3758602 144.6649373)', 4326), NULL, NULL, '1981-02-06', '2014-09-10', NULL, NULL, NULL),
  ('1389650', 'Facpi Island', 'Island', 'Guam', 'GU', 'Guam', 'Agat', 13.34, 144.63, ST_GeomFromText('POINT(13.34 144.63)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389651', 'Facpi Point', 'Cape', 'Guam', 'GU', 'Guam', 'Agat', 13.3397222, 144.6330556, ST_GeomFromText('POINT(13.3397222 144.6330556)', 4326), NULL, NULL, '1981-02-06', '2015-04-29', NULL, NULL, NULL),
  ('1389653', 'Fadian Point', 'Summit', 'Guam', 'GU', 'Guam', 'Dededo', 13.4416667, 144.8227778, ST_GeomFromText('POINT(13.4416667 144.8227778)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389654', 'Fafai Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Dededo', 13.5227778, 144.8013889, ST_GeomFromText('POINT(13.5227778 144.8013889)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389655', 'Fafalog', 'Ridge', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3177778, 144.7580556, ST_GeomFromText('POINT(13.3177778 144.7580556)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389657', 'Faja', 'Ridge', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2897222, 144.7475, ST_GeomFromText('POINT(13.2897222 144.7475)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389658', 'Falcona Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Ritidian Point', 13.6116667, 144.8330556, ST_GeomFromText('POINT(13.6116667 144.8330556)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389666', 'Fena Valley Reservoir', 'Reservoir', 'Guam', 'GU', 'Guam', 'Talofofo', 13.35481, 144.7013847, ST_GeomFromText('POINT(13.35481 144.7013847)', 4326), NULL, NULL, '1981-02-06', '2014-09-10', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389667', 'Fensol River', 'Stream', 'Guam', 'GU', 'Guam', 'Inarajan', 13.285, 144.7344444, ST_GeomFromText('POINT(13.285 144.7344444)', 4326), 13.2972222, 144.7313889, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389670', 'Mount Finansanta', 'Summit', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2747222, 144.6866667, ST_GeomFromText('POINT(13.2747222 144.6866667)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389673', 'Finile Creek', 'Stream', 'Guam', 'GU', 'Guam', 'Agat', 13.38, 144.6508333, ST_GeomFromText('POINT(13.38 144.6508333)', 4326), 13.38, 144.6508333, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389675', 'Fintasa River', 'Stream', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2852778, 144.7344444, ST_GeomFromText('POINT(13.2852778 144.7344444)', 4326), 13.3, 144.7133333, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389676', 'Fofos Island', 'Island', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2419444, 144.7061111, ST_GeomFromText('POINT(13.2419444 144.7061111)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389678', 'Fonte River', 'Stream', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4775, 144.7291667, ST_GeomFromText('POINT(13.4775 144.7291667)', 4326), 13.4775, 144.7291667, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389680', 'Fouha Bay', 'Bay', 'Guam', 'GU', 'Guam', 'Agat', 13.3053634, 144.6563533, ST_GeomFromText('POINT(13.3053634 144.6563533)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL),
  ('1389681', 'Fouha Point', 'Summit', 'Guam', 'GU', 'Guam', 'Agat', 13.3116667, 144.6508333, ST_GeomFromText('POINT(13.3116667 144.6508333)', 4326), NULL, NULL, '1981-02-06', '2015-04-29', NULL, NULL, NULL),
  ('1389682', 'Gaan Point', 'Cape', 'Guam', 'GU', 'Guam', 'Agat', 13.3847222, 144.6527778, ST_GeomFromText('POINT(13.3847222 144.6527778)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389683', 'Gaan River', 'Stream', 'Guam', 'GU', 'Guam', 'Agat', 13.3769444, 144.6491667, ST_GeomFromText('POINT(13.3769444 144.6491667)', 4326), 13.3769444, 144.6491667, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389684', 'Gabgab Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Apra Harbor', 13.4402778, 144.6405556, ST_GeomFromText('POINT(13.4402778 144.6405556)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389686', 'Gautali River', 'Stream', 'Guam', 'GU', 'Guam', 'Hagatna', 13.425, 144.6783333, ST_GeomFromText('POINT(13.425 144.6783333)', 4326), 13.425, 144.6783333, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389688', 'Gayloup Cove', 'Bay', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3365117, 144.7639179, ST_GeomFromText('POINT(13.3365117 144.7639179)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL),
  ('1389689', 'Gayloup Point', 'Cape', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3358333, 144.7608333, ST_GeomFromText('POINT(13.3358333 144.7608333)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389692', 'Geus River', 'Stream', 'Guam', 'GU', 'Guam', 'Merizo', 13.2611111, 144.6722222, ST_GeomFromText('POINT(13.2611111 144.6722222)', 4326), 13.2611111, 144.6722222, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389693', 'Geus Valley', 'Valley', 'Guam', 'GU', 'Guam', 'Merizo', 13.2611111, 144.6722222, ST_GeomFromText('POINT(13.2611111 144.6722222)', 4326), 13.2611111, 144.6722222, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389695', 'Gongna Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Dededo', 13.5183333, 144.8038889, ST_GeomFromText('POINT(13.5183333 144.8038889)', 4326), NULL, NULL, '2000-01-01', NULL, 'Official', 'Board Decision', '2002-01-01'),
  ('1389703', 'Guaifan Point', 'Cape', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2738889, 144.7502778, ST_GeomFromText('POINT(13.2738889 144.7502778)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389704', 'Guam', 'Island', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4444444, 144.7366667, ST_GeomFromText('POINT(13.4444444 144.7366667)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389712', 'Guatata', 'Summit', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2861111, 144.7375, ST_GeomFromText('POINT(13.2861111 144.7375)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389714', 'Gugae', 'Summit', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2708333, 144.6930556, ST_GeomFromText('POINT(13.2708333 144.6930556)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389716', 'Gugagon', 'Valley', 'Guam', 'GU', 'Guam', 'Inarajan', 13.28, 144.7338889, ST_GeomFromText('POINT(13.28 144.7338889)', 4326), 13.28, 144.7338889, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389717', 'Guijen Point', 'Cape', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2497222, 144.7283333, ST_GeomFromText('POINT(13.2497222 144.7283333)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389718', 'Guijen Rock', 'Island', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2488889, 144.7288889, ST_GeomFromText('POINT(13.2488889 144.7288889)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389720', 'Gumoje', 'Ridge', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2580556, 144.7072222, ST_GeomFromText('POINT(13.2580556 144.7072222)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389721', 'Haputo Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Ritidian Point', 13.5761111, 144.8286111, ST_GeomFromText('POINT(13.5761111 144.8286111)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389722', 'Haputo Point', 'Summit', 'Guam', 'GU', 'Guam', 'Ritidian Point', 13.5797222, 144.8297222, ST_GeomFromText('POINT(13.5797222 144.8297222)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389725', 'Hilaan Point', 'Summit', 'Guam', 'GU', 'Guam', 'Ritidian Point', 13.5577778, 144.8163889, ST_GeomFromText('POINT(13.5577778 144.8163889)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389728', 'Iates', 'Cape', 'Guam', 'GU', 'Guam', 'Dededo', 13.4275, 144.8016667, ST_GeomFromText('POINT(13.4275 144.8016667)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389729', 'Iates Point', 'Cape', 'Guam', 'GU', 'Guam', 'Dededo', 13.4291667, 144.8033333, ST_GeomFromText('POINT(13.4291667 144.8033333)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389731', 'Ieygo River', 'Stream', 'Guam', 'GU', 'Guam', 'Talofofo', 13.2969444, 144.6977778, ST_GeomFromText('POINT(13.2969444 144.6977778)', 4326), 13.2916667, 144.695, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389736', 'Imong River', 'Stream', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3386111, 144.6975, ST_GeomFromText('POINT(13.3386111 144.6975)', 4326), 13.3386111, 144.6975, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389738', 'Inarajan Bay', 'Bay', 'Guam', 'GU', 'Guam', 'Inarajan', 13.276181, 144.7505187, ST_GeomFromText('POINT(13.276181 144.7505187)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL),
  ('1389739', 'Inarajan Falls', 'Falls', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2902905, 144.7208315, ST_GeomFromText('POINT(13.2902905 144.7208315)', 4326), NULL, NULL, '1981-02-06', '2014-09-10', NULL, NULL, NULL),
  ('1389740', 'Inarajan River', 'Stream', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2752778, 144.7447222, ST_GeomFromText('POINT(13.2752778 144.7447222)', 4326), 13.2752778, 144.7447222, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389741', 'Inaso Hill', 'Summit', 'Guam', 'GU', 'Guam', 'Merizo', 13.2852778, 144.6677778, ST_GeomFromText('POINT(13.2852778 144.6677778)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389744', 'Apra Inner Harbor', 'Bay', 'Guam', 'GU', 'Guam', 'Apra Harbor', 13.4304849, 144.6682041, ST_GeomFromText('POINT(13.4304849 144.6682041)', 4326), NULL, NULL, '2000-01-01', '2014-12-23', 'Official', 'Board Decision', '1981-01-01'),
  ('1389754', 'Jalaihai Point', 'Summit', 'Guam', 'GU', 'Guam', 'Talofofo', 13.2947222, 144.7641667, ST_GeomFromText('POINT(13.2947222 144.7641667)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389757', 'Janum Point', 'Cape', 'Guam', 'GU', 'Guam', 'Dededo', 13.5213889, 144.9166667, ST_GeomFromText('POINT(13.5213889 144.9166667)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389758', 'Janum Spring', 'Spring', 'Guam', 'GU', 'Guam', 'Dededo', 13.5166547, 144.9150999, ST_GeomFromText('POINT(13.5166547 144.9150999)', 4326), NULL, NULL, '1981-02-06', '2014-09-10', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389760', 'Jaotan Point', 'Cape', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2533333, 144.675, ST_GeomFromText('POINT(13.2533333 144.675)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389762', 'Jinago', 'Ridge', 'Guam', 'GU', 'Guam', 'Merizo', 13.2808333, 144.6686111, ST_GeomFromText('POINT(13.2808333 144.6686111)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389763', 'Mount Jinago', 'Summit', 'Guam', 'GU', 'Guam', 'Merizo', 13.2813889, 144.665, ST_GeomFromText('POINT(13.2813889 144.665)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389764', 'Jinapsan Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Ritidian Point', 13.6344444, 144.8838889, ST_GeomFromText('POINT(13.6344444 144.8838889)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389765', 'Jinapsan Point', 'Summit', 'Guam', 'GU', 'Guam', 'Ritidian Point', 13.6352778, 144.8783333, ST_GeomFromText('POINT(13.6352778 144.8783333)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389768', 'Jones Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3536111, 144.7686111, ST_GeomFromText('POINT(13.3536111 144.7686111)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389770', 'Jumullong Manglo', 'Summit', 'Guam', 'GU', 'Guam', 'Agat', 13.3280556, 144.67, ST_GeomFromText('POINT(13.3280556 144.67)', 4326), NULL, NULL, '1981-02-06', '2010-02-16', 'Official', 'Board Decision', '1954-09-28'),
  ('1389771', 'La Sa Fua River', 'Stream', 'Guam', 'GU', 'Guam', 'Agat', 13.3047222, 144.6555556, ST_GeomFromText('POINT(13.3047222 144.6555556)', 4326), 13.3047222, 144.6555556, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389773', 'Ladae', 'Summit', 'Guam', 'GU', 'Guam', 'Agat', 13.2980556, 144.6691667, ST_GeomFromText('POINT(13.2980556 144.6691667)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389777', 'Laelae River', 'Stream', 'Guam', 'GU', 'Guam', 'Agat', 13.2969444, 144.6638889, ST_GeomFromText('POINT(13.2969444 144.6638889)', 4326), 13.2969444, 144.6638889, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389778', 'Lafac Point', 'Cape', 'Guam', 'GU', 'Guam', 'Pati Point', 13.5691667, 144.9419444, ST_GeomFromText('POINT(13.5691667 144.9419444)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389779', 'Laguan River', 'Stream', 'Guam', 'GU', 'Guam', 'Agat', 13.3152778, 144.6722222, ST_GeomFromText('POINT(13.3152778 144.6722222)', 4326), 13.3152778, 144.6722222, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389780', 'Laguas River', 'Stream', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4430556, 144.6827778, ST_GeomFromText('POINT(13.4430556 144.6827778)', 4326), 13.4430556, 144.6827778, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389783', 'Lalas Rock', 'Island', 'Guam', 'GU', 'Guam', 'Agat', 13.3052778, 144.6527778, ST_GeomFromText('POINT(13.3052778 144.6527778)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389785', 'Mount Lamlam', 'Summit', 'Guam', 'GU', 'Guam', 'Agat', 13.3386111, 144.6627778, ST_GeomFromText('POINT(13.3386111 144.6627778)', 4326), NULL, NULL, '1981-02-06', '2015-04-29', NULL, NULL, NULL),
  ('1389786', 'Laolao', 'Summit', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2858333, 144.7288889, ST_GeomFromText('POINT(13.2858333 144.7288889)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389787', 'Laolao River', 'Stream', 'Guam', 'GU', 'Guam', 'Inarajan', 13.28, 144.7338889, ST_GeomFromText('POINT(13.28 144.7338889)', 4326), 13.28, 144.7338889, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389789', 'Latte Point', 'Cape', 'Guam', 'GU', 'Guam', 'Pati Point', 13.5819444, 144.9475, ST_GeomFromText('POINT(13.5819444 144.9475)', 4326), NULL, NULL, '2000-01-01', NULL, 'Official', 'Board Decision', '2002-01-01'),
  ('1389797', 'Liguan Point', 'Cape', 'Guam', 'GU', 'Guam', 'Inarajan', 13.245, 144.7047222, ST_GeomFromText('POINT(13.245 144.7047222)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389800', 'Liyog River', 'Stream', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2458333, 144.705, ST_GeomFromText('POINT(13.2458333 144.705)', 4326), 13.2458333, 144.705, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389806', 'Lonfit River', 'Stream', 'Guam', 'GU', 'Guam', 'Hagatna', 13.435, 144.7530556, ST_GeomFromText('POINT(13.435 144.7530556)', 4326), 13.435, 144.7530556, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389808', 'Lujuna Point', 'Cape', 'Guam', 'GU', 'Guam', 'Dededo', 13.5144444, 144.9102778, ST_GeomFromText('POINT(13.5144444 144.9102778)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389812', 'Lumuna', 'Summit', 'Guam', 'GU', 'Guam', 'Dededo', 13.5141667, 144.8916667, ST_GeomFromText('POINT(13.5141667 144.8916667)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389814', 'Maagas River', 'Stream', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3522222, 144.7291667, ST_GeomFromText('POINT(13.3522222 144.7291667)', 4326), 13.3522222, 144.7291667, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389815', 'Mount Macajna', 'Summit', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4533333, 144.735, ST_GeomFromText('POINT(13.4533333 144.735)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389816', 'Machadgan Point', 'Cape', 'Guam', 'GU', 'Guam', 'Agat', 13.2927778, 144.6555556, ST_GeomFromText('POINT(13.2927778 144.6555556)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389818', 'Mount Machanao', 'Summit', 'Guam', 'GU', 'Guam', 'Ritidian Point', 13.6436111, 144.8583333, ST_GeomFromText('POINT(13.6436111 144.8583333)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389822', 'Madofan River', 'Stream', 'Guam', 'GU', 'Guam', 'Agat', 13.3344444, 144.6438889, ST_GeomFromText('POINT(13.3344444 144.6438889)', 4326), 13.3344444, 144.6438889, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389824', 'Madog River', 'Stream', 'Guam', 'GU', 'Guam', 'Agat', 13.2969444, 144.6638889, ST_GeomFromText('POINT(13.2969444 144.6638889)', 4326), 13.2877778, 144.6816667, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389825', 'Maemong River', 'Stream', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3655556, 144.7116667, ST_GeomFromText('POINT(13.3655556 144.7116667)', 4326), 13.3655556, 144.7116667, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389829', 'Magpogugae', 'Ridge', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2625, 144.7002778, ST_GeomFromText('POINT(13.2625 144.7002778)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389833', 'Mahlac River', 'Stream', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3522222, 144.7294444, ST_GeomFromText('POINT(13.3522222 144.7294444)', 4326), 13.3522222, 144.7294444, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389836', 'Maina Spring', 'Spring', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4653539, 144.7350788, ST_GeomFromText('POINT(13.4653539 144.7350788)', 4326), NULL, NULL, '1981-02-06', '2014-09-10', NULL, NULL, NULL),
  ('1389842', 'Malaja River', 'Stream', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3311111, 144.725, ST_GeomFromText('POINT(13.3311111 144.725)', 4326), 13.3311111, 144.725, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389844', 'Malilog Point', 'Cape', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2447222, 144.7227778, ST_GeomFromText('POINT(13.2447222 144.7227778)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389846', 'Malojloj Falls', 'Falls', 'Guam', 'GU', 'Guam', 'Talofofo', 13.2968023, 144.7526355, ST_GeomFromText('POINT(13.2968023 144.7526355)', 4326), NULL, NULL, '1981-02-06', '2014-09-10', NULL, NULL, NULL),
  ('1389847', 'Malojloj Spring', 'Spring', 'Guam', 'GU', 'Guam', 'Talofofo', 13.2990674, 144.7544187, ST_GeomFromText('POINT(13.2990674 144.7544187)', 4326), NULL, NULL, '1981-02-06', '2014-09-10', NULL, NULL, NULL),
  ('1389849', 'Mamatgun Point', 'Summit', 'Guam', 'GU', 'Guam', 'Merizo', 13.2883333, 144.655, ST_GeomFromText('POINT(13.2883333 144.655)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389850', 'Man Apu Hill', 'Summit', 'Guam', 'GU', 'Guam', 'Talofofo', 13.4163889, 144.7722222, ST_GeomFromText('POINT(13.4163889 144.7722222)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389851', 'Mana Bay', 'Bay', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3536609, 144.7730701, ST_GeomFromText('POINT(13.3536609 144.7730701)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389855', 'Manell Point', 'Cape', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2525, 144.6811111, ST_GeomFromText('POINT(13.2525 144.6811111)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389856', 'Manell River', 'Stream', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2544444, 144.6836111, ST_GeomFromText('POINT(13.2544444 144.6836111)', 4326), 13.2544444, 144.6836111, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389858', 'Manengon River', 'Stream', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3983333, 144.75, ST_GeomFromText('POINT(13.3983333 144.75)', 4326), 13.3983333, 144.75, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389860', 'Mao Spring', 'Spring', 'Guam', 'GU', 'Guam', 'Agat', 13.3659257, 144.6637034, ST_GeomFromText('POINT(13.3659257 144.6637034)', 4326), NULL, NULL, '1981-02-06', '2014-09-10', NULL, NULL, NULL),
  ('1389865', 'Masso River', 'Stream', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4638889, 144.69, ST_GeomFromText('POINT(13.4638889 144.69)', 4326), 13.4491667, 144.7086111, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389868', 'Mataguac Hill', 'Summit', 'Guam', 'GU', 'Guam', 'Ritidian Point', 13.5441667, 144.8797222, ST_GeomFromText('POINT(13.5441667 144.8797222)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389869', 'Mataguac Spring', 'Spring', 'Guam', 'GU', 'Guam', 'Ritidian Point', 13.5447316, 144.8845339, ST_GeomFromText('POINT(13.5447316 144.8845339)', 4326), NULL, NULL, '1981-02-06', '2014-09-10', NULL, NULL, NULL),
  ('1389873', 'Matala Point', 'Cape', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3327778, 144.7686111, ST_GeomFromText('POINT(13.3327778 144.7686111)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389876', 'Matgue River', 'Stream', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4702778, 144.7041667, ST_GeomFromText('POINT(13.4702778 144.7041667)', 4326), 13.4702778, 144.7041667, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389877', 'Mati Point', 'Cape', 'Guam', 'GU', 'Guam', 'Dededo OE E', 13.5325, 144.9297222, ST_GeomFromText('POINT(13.5325 144.9297222)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389879', 'Maulap River', 'Stream', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3544444, 144.6963889, ST_GeomFromText('POINT(13.3544444 144.6963889)', 4326), 13.3544444, 144.6963889, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389881', 'Mergagan Point', 'Summit', 'Guam', 'GU', 'Guam', 'Ritidian Point', 13.6258333, 144.8897222, ST_GeomFromText('POINT(13.6258333 144.8897222)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389892', 'Morrow Lake', 'Lake', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3691667, 144.7008333, ST_GeomFromText('POINT(13.3691667 144.7008333)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389894', 'N C S Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Dededo', 13.5408333, 144.8047222, ST_GeomFromText('POINT(13.5408333 144.8047222)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389896', 'Namo', 'Ridge', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2719444, 144.7041667, ST_GeomFromText('POINT(13.2719444 144.7041667)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389897', 'Namo River', 'Stream', 'Guam', 'GU', 'Guam', 'Agat', 13.4013889, 144.6597222, ST_GeomFromText('POINT(13.4013889 144.6597222)', 4326), 13.4013889, 144.6597222, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389899', 'Naton Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Dededo', 13.5127778, 144.8013889, ST_GeomFromText('POINT(13.5127778 144.8013889)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389900', 'Nelansa River', 'Stream', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2894444, 144.7175, ST_GeomFromText('POINT(13.2894444 144.7175)', 4326), 13.2986111, 144.7086111, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389902', 'Neye Island', 'Island', 'Guam', 'GU', 'Guam', 'Agat', 13.4125, 144.6436111, ST_GeomFromText('POINT(13.4125 144.6436111)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389903', 'Neye', 'Island', 'Guam', 'GU', 'Guam', 'Apra Harbor', 13.4166667, 144.6577778, ST_GeomFromText('POINT(13.4166667 144.6577778)', 4326), NULL, NULL, '1981-02-06', '2012-01-02', 'Official', 'Board Decision', '1954-09-28');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389906', 'Nimitz Hill', 'Summit', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4611111, 144.7280556, ST_GeomFromText('POINT(13.4611111 144.7280556)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389907', 'Nimitz Hill Reservoir', 'Reservoir', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4496132, 144.7138047, ST_GeomFromText('POINT(13.4496132 144.7138047)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL),
  ('1389909', 'Nomna Bay', 'Bay', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2899189, 144.7652211, ST_GeomFromText('POINT(13.2899189 144.7652211)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL),
  ('1389910', 'Nomna Point', 'Cape', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3025, 144.77, ST_GeomFromText('POINT(13.3025 144.77)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389914', 'Oka Point', 'Summit', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4983333, 144.7666667, ST_GeomFromText('POINT(13.4983333 144.7666667)', 4326), NULL, NULL, '2000-01-01', NULL, 'Official', 'Board Decision', '2002-01-01'),
  ('1389918', 'Ono', 'Valley', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2777778, 144.7436111, ST_GeomFromText('POINT(13.2777778 144.7436111)', 4326), 13.2777778, 144.7436111, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389922', 'Orote Island', 'Island', 'Guam', 'GU', 'Guam', 'Apra Harbor', 13.4458333, 144.6163889, ST_GeomFromText('POINT(13.4458333 144.6163889)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389923', 'Orote Peninsula', 'Cape', 'Guam', 'GU', 'Guam', 'Apra Harbor', 13.4388889, 144.6288889, ST_GeomFromText('POINT(13.4388889 144.6288889)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389924', 'Orote Point', 'Summit', 'Guam', 'GU', 'Guam', 'Apra Harbor', 13.4447222, 144.6163889, ST_GeomFromText('POINT(13.4447222 144.6163889)', 4326), NULL, NULL, '1981-02-06', '2020-12-17', NULL, NULL, NULL),
  ('1389925', 'Apra Outer Harbor', 'Bay', 'Guam', 'GU', 'Guam', 'Apra Harbor', 13.4531827, 144.6492315, ST_GeomFromText('POINT(13.4531827 144.6492315)', 4326), NULL, NULL, '2000-01-01', '2014-12-23', 'Official', 'Board Decision', '1981-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389926', 'Paasan', 'Summit', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4569444, 144.7402778, ST_GeomFromText('POINT(13.4569444 144.7402778)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389931', 'Pagachao Creek', 'Stream', 'Guam', 'GU', 'Guam', 'Agat', 13.3552778, 144.6516667, ST_GeomFromText('POINT(13.3552778 144.6516667)', 4326), 13.3552778, 144.6516667, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389933', 'Pagat Point', 'Summit', 'Guam', 'GU', 'Guam', 'Dededo', 13.4969444, 144.8877778, ST_GeomFromText('POINT(13.4969444 144.8877778)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389935', 'Pago Bay', 'Bay', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4217318, 144.7909269, ST_GeomFromText('POINT(13.4217318 144.7909269)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL),
  ('1389937', 'Pago Point', 'Summit', 'Guam', 'GU', 'Guam', 'Talofofo', 13.4122222, 144.7861111, ST_GeomFromText('POINT(13.4122222 144.7861111)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389939', 'Pago River', 'Stream', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4202778, 144.7816667, ST_GeomFromText('POINT(13.4202778 144.7816667)', 4326), 13.4202778, 144.7816667, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389940', 'Pagunon', 'Ridge', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3447222, 144.7472222, ST_GeomFromText('POINT(13.3447222 144.7472222)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389941', 'Paicpouc Cove', 'Bay', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3350403, 144.768801, ST_GeomFromText('POINT(13.3350403 144.768801)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL),
  ('1389942', 'Paicpouc Point', 'Cape', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3344444, 144.7666667, ST_GeomFromText('POINT(13.3344444 144.7666667)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389943', 'Pajon Point', 'Summit', 'Guam', 'GU', 'Guam', 'Ritidian Point', 13.6419444, 144.8741667, ST_GeomFromText('POINT(13.6419444 144.8741667)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389944', 'Pajon River', 'Stream', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3013889, 144.6763889, ST_GeomFromText('POINT(13.3013889 144.6763889)', 4326), 13.3013889, 144.6763889, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389946', 'Palalo', 'Summit', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2608333, 144.6863889, ST_GeomFromText('POINT(13.2608333 144.6863889)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389948', 'Palii Hill', 'Summit', 'Guam', 'GU', 'Guam', 'Ritidian Point', 13.5480556, 144.8719444, ST_GeomFromText('POINT(13.5480556 144.8719444)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389950', 'Pasamano River', 'Stream', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2833333, 144.7233333, ST_GeomFromText('POINT(13.2833333 144.7233333)', 4326), 13.2894444, 144.7, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389952', 'Pati Point', 'Cape', 'Guam', 'GU', 'Guam', 'Pati Point', 13.5930556, 144.9513889, ST_GeomFromText('POINT(13.5930556 144.9513889)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389953', 'Mount Patsud', 'Summit', 'Guam', 'GU', 'Guam', 'Talofofo', 13.2944444, 144.7525, ST_GeomFromText('POINT(13.2944444 144.7525)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389954', 'Paulana River', 'Stream', 'Guam', 'GU', 'Guam', 'Talofofo', 13.4091667, 144.6891667, ST_GeomFromText('POINT(13.4091667 144.6891667)', 4326), 13.4091667, 144.6891667, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389955', 'Pauliluc Bay', 'Bay', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2820165, 144.7595535, ST_GeomFromText('POINT(13.2820165 144.7595535)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL),
  ('1389956', 'Pauliluc River', 'Stream', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2816667, 144.7544444, ST_GeomFromText('POINT(13.2816667 144.7544444)', 4326), 13.2816667, 144.7544444, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389959', 'Pelagi Islets', 'Island', 'Guam', 'GU', 'Guam', 'Agat', 13.4002778, 144.6569444, ST_GeomFromText('POINT(13.4002778 144.6569444)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389961', 'Perez Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2883333, 144.7597222, ST_GeomFromText('POINT(13.2883333 144.7597222)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389968', 'Piga Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Merizo', 13.2619444, 144.6719444, ST_GeomFromText('POINT(13.2619444 144.6719444)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389969', 'Piga Spring', 'Spring', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3033531, 144.682976, ST_GeomFromText('POINT(13.3033531 144.682976)', 4326), NULL, NULL, '1981-02-06', '2014-09-10', NULL, NULL, NULL),
  ('1389972', 'Pigua River', 'Stream', 'Guam', 'GU', 'Guam', 'Merizo', 13.2741667, 144.6611111, ST_GeomFromText('POINT(13.2741667 144.6611111)', 4326), 13.2741667, 144.6611111, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389974', 'Pinay Point', 'Summit', 'Guam', 'GU', 'Guam', 'Agat', 13.32, 144.6491667, ST_GeomFromText('POINT(13.32 144.6491667)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389976', 'Piti Bay', 'Bay', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4711817, 144.6978853, ST_GeomFromText('POINT(13.4711817 144.6978853)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL),
  ('1389980', 'Polaris Point', 'Cape', 'Guam', 'GU', 'Guam', 'Apra Harbor', 13.4397222, 144.6686111, ST_GeomFromText('POINT(13.4397222 144.6686111)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389983', 'Pugua Point', 'Summit', 'Guam', 'GU', 'Guam', 'Ritidian Point', 13.5886111, 144.8352778, ST_GeomFromText('POINT(13.5886111 144.8352778)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389986', 'Ritidian Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Ritidian Point', 13.6525, 144.86, ST_GeomFromText('POINT(13.6525 144.86)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389988', 'Ritidian Point', 'Summit', 'Guam', 'GU', 'Guam', 'Ritidian Point', 13.6505556, 144.8602778, ST_GeomFromText('POINT(13.6505556 144.8602778)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389989', 'Rizal Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Agat', 13.4041667, 144.6577778, ST_GeomFromText('POINT(13.4041667 144.6577778)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389990', 'Sabana Batea', 'Summit', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4216667, 144.7458333, ST_GeomFromText('POINT(13.4216667 144.7458333)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389992', 'Sabana Maleyuc', 'Summit', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3775, 144.7638889, ST_GeomFromText('POINT(13.3775 144.7638889)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389993', 'Sabanan Adelup', 'Summit', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4733333, 144.7244444, ST_GeomFromText('POINT(13.4733333 144.7244444)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389995', 'Sadog Gago River', 'Stream', 'Guam', 'GU', 'Guam', 'Talofofo', 13.335, 144.6941667, ST_GeomFromText('POINT(13.335 144.6941667)', 4326), 13.335, 144.6941667, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389996', 'Sagge River', 'Stream', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3441667, 144.7363889, ST_GeomFromText('POINT(13.3441667 144.7363889)', 4326), 13.3277778, 144.6977778, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389998', 'Sagua Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Agat', 13.3411111, 144.6358333, ST_GeomFromText('POINT(13.3411111 144.6358333)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389999', 'Sagua River', 'Stream', 'Guam', 'GU', 'Guam', 'Agat', 13.3452778, 144.6386111, ST_GeomFromText('POINT(13.3452778 144.6386111)', 4326), 13.3452778, 144.6386111, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390008', 'Salinas Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Agat', 13.3883333, 144.6572222, ST_GeomFromText('POINT(13.3883333 144.6572222)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390009', 'Salinas River', 'Stream', 'Guam', 'GU', 'Guam', 'Agat', 13.3852778, 144.6533333, ST_GeomFromText('POINT(13.3852778 144.6533333)', 4326), 13.3852778, 144.6533333, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1390014', 'San Luis Point', 'Summit', 'Guam', 'GU', 'Guam', 'Apra Harbor', 13.4405556, 144.6455556, ST_GeomFromText('POINT(13.4405556 144.6455556)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390015', 'San Nicolas River', 'Stream', 'Guam', 'GU', 'Guam', 'Agat', 13.3130556, 144.6727778, ST_GeomFromText('POINT(13.3130556 144.6727778)', 4326), 13.3130556, 144.6727778, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390021', 'Santa Rita Spring', 'Spring', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3857768, 144.6752707, ST_GeomFromText('POINT(13.3857768 144.6752707)', 4326), NULL, NULL, '1981-02-06', '2014-09-10', NULL, NULL, NULL),
  ('1390025', 'Mount Santa Rosa', 'Summit', 'Guam', 'GU', 'Guam', 'Dededo', 13.5338889, 144.9113889, ST_GeomFromText('POINT(13.5338889 144.9113889)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390026', 'Sarasa River', 'Stream', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3391667, 144.7358333, ST_GeomFromText('POINT(13.3391667 144.7358333)', 4326), 13.3391667, 144.7358333, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390028', 'Sasa River', 'Stream', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4497222, 144.6808333, ST_GeomFromText('POINT(13.4497222 144.6808333)', 4326), 13.4377778, 144.7069444, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390030', 'Mount Sasalaguan', 'Summit', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2775, 144.6902778, ST_GeomFromText('POINT(13.2775 144.6902778)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390031', 'Satpon Point', 'Cape', 'Guam', 'GU', 'Guam', 'Hagatna', 13.505, 144.7716667, ST_GeomFromText('POINT(13.505 144.7716667)', 4326), NULL, NULL, '2000-01-01', NULL, 'Official', 'Board Decision', '2002-01-01'),
  ('1390033', 'Mount Schroeder', 'Summit', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2825, 144.6763889, ST_GeomFromText('POINT(13.2825 144.6763889)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390036', 'Sella Bay', 'Bay', 'Guam', 'GU', 'Guam', 'Agat', 13.3260123, 144.6501194, ST_GeomFromText('POINT(13.3260123 144.6501194)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1390037', 'Sella River', 'Stream', 'Guam', 'GU', 'Guam', 'Agat', 13.3266667, 144.6497222, ST_GeomFromText('POINT(13.3266667 144.6497222)', 4326), 13.3266667, 144.6497222, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390041', 'Sigua Falls', 'Falls', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4263889, 144.71, ST_GeomFromText('POINT(13.4263889 144.71)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390042', 'Sigua Falls', 'Falls', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4286111, 144.7247222, ST_GeomFromText('POINT(13.4286111 144.7247222)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390043', 'Sigua River', 'Stream', 'Guam', 'GU', 'Guam', 'Hagatna', 13.435, 144.7533333, ST_GeomFromText('POINT(13.435 144.7533333)', 4326), 13.435, 144.7533333, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390044', 'Siligin Spring', 'Spring', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2770214, 144.6835477, ST_GeomFromText('POINT(13.2770214 144.6835477)', 4326), NULL, NULL, '1981-02-06', '2014-09-10', NULL, NULL, NULL),
  ('1390051', 'Siput', 'Summit', 'Guam', 'GU', 'Guam', 'Talofofo', 13.2930556, 144.7475, ST_GeomFromText('POINT(13.2930556 144.7475)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390058', 'Sumay Bay', 'Bay', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2452544, 144.6988161, ST_GeomFromText('POINT(13.2452544 144.6988161)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL),
  ('1390061', 'Sumay River', 'Stream', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2463889, 144.6975, ST_GeomFromText('POINT(13.2463889 144.6975)', 4326), 13.2572222, 144.7013889, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390062', 'Suyafe', 'Ridge', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2530556, 144.6963889, ST_GeomFromText('POINT(13.2530556 144.6963889)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390063', 'Suyafe River', 'Stream', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2488889, 144.6919444, ST_GeomFromText('POINT(13.2488889 144.6919444)', 4326), 13.2488889, 144.6919444, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1390065', 'Taelayag Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Agat', 13.3547222, 144.6433333, ST_GeomFromText('POINT(13.3547222 144.6433333)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390066', 'Taelayag Creek', 'Stream', 'Guam', 'GU', 'Guam', 'Agat', 13.3541667, 144.6427778, ST_GeomFromText('POINT(13.3541667 144.6427778)', 4326), 13.3541667, 144.6427778, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390070', 'Tagachang Point', 'Summit', 'Guam', 'GU', 'Guam', 'Talofofo', 13.4008333, 144.7791667, ST_GeomFromText('POINT(13.4008333 144.7791667)', 4326), NULL, NULL, '2000-01-01', NULL, 'Official', 'Board Decision', '2002-01-01'),
  ('1390071', 'Tagua Point', 'Cape', 'Guam', 'GU', 'Guam', 'Pati Point', 13.5988889, 144.9297222, ST_GeomFromText('POINT(13.5988889 144.9297222)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390074', 'Taguag River', 'Stream', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4647222, 144.6936111, ST_GeomFromText('POINT(13.4647222 144.6936111)', 4326), 13.4647222, 144.6936111, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390075', 'Taguan Point', 'Summit', 'Guam', 'GU', 'Guam', 'Dededo', 13.4661111, 144.8513889, ST_GeomFromText('POINT(13.4661111 144.8513889)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390080', 'Taleyfac Bay', 'Bay', 'Guam', 'GU', 'Guam', 'Agat', 13.3630483, 144.6472524, ST_GeomFromText('POINT(13.3630483 144.6472524)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL),
  ('1390081', 'Taleyfac River', 'Stream', 'Guam', 'GU', 'Guam', 'Agat', 13.3605556, 144.6461111, ST_GeomFromText('POINT(13.3605556 144.6461111)', 4326), 13.3605556, 144.6461111, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390082', 'Talisay River', 'Stream', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3808333, 144.7044444, ST_GeomFromText('POINT(13.3808333 144.7044444)', 4326), 13.3691667, 144.6730556, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390085', 'Talofofo Bay', 'Bay', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3374916, 144.7669063, ST_GeomFromText('POINT(13.3374916 144.7669063)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1390087', 'Talofofo Falls', 'Falls', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3232428, 144.7369046, ST_GeomFromText('POINT(13.3232428 144.7369046)', 4326), NULL, NULL, '1981-02-06', '2014-09-10', NULL, NULL, NULL),
  ('1390088', 'Talofofo River', 'Stream', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3372222, 144.7597222, ST_GeomFromText('POINT(13.3372222 144.7597222)', 4326), 13.3372222, 144.7597222, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390092', 'Tangon Rock', 'Island', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2438889, 144.6986111, ST_GeomFromText('POINT(13.2438889 144.6986111)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390093', 'Tanguisson Point', 'Summit', 'Guam', 'GU', 'Guam', 'Ritidian Point', 13.5491667, 144.8094444, ST_GeomFromText('POINT(13.5491667 144.8094444)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390094', 'Tantapalo Point', 'Cape', 'Guam', 'GU', 'Guam', 'Agat', 13.4163889, 144.6405556, ST_GeomFromText('POINT(13.4163889 144.6405556)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390096', 'Taogam Point', 'Summit', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4261111, 144.7980556, ST_GeomFromText('POINT(13.4261111 144.7980556)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390097', 'Tarague Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Ritidian Point', 13.6038889, 144.9052778, ST_GeomFromText('POINT(13.6038889 144.9052778)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390100', 'Tarague Point', 'Cape', 'Guam', 'GU', 'Guam', 'Ritidian Point', 13.5972222, 144.9016667, ST_GeomFromText('POINT(13.5972222 144.9016667)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390101', 'Tartuguan Point', 'Cape', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3608333, 144.7691667, ST_GeomFromText('POINT(13.3608333 144.7691667)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390102', 'Tarzan Falls', 'Falls', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3960362, 144.720416, ST_GeomFromText('POINT(13.3960362 144.720416)', 4326), NULL, NULL, '1981-02-06', '2014-09-10', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1390103', 'Tarzan River', 'Stream', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3983333, 144.7313889, ST_GeomFromText('POINT(13.3983333 144.7313889)', 4326), 13.3983333, 144.7313889, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390104', 'Tenjo River', 'Stream', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4191667, 144.6780556, ST_GeomFromText('POINT(13.4191667 144.6780556)', 4326), 13.4144444, 144.6941667, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390105', 'Mount Tenjo', 'Summit', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4194444, 144.6972222, ST_GeomFromText('POINT(13.4194444 144.6972222)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390110', 'Tinago River', 'Stream', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2855556, 144.7511111, ST_GeomFromText('POINT(13.2855556 144.7511111)', 4326), 13.3052778, 144.7263889, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390112', 'Tinechong River', 'Stream', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3469444, 144.7244444, ST_GeomFromText('POINT(13.3469444 144.7244444)', 4326), 13.3469444, 144.7244444, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390113', 'Tipalao Bay', 'Bay', 'Guam', 'GU', 'Guam', 'Apra Harbor', 13.416693, 144.6464152, ST_GeomFromText('POINT(13.416693 144.6464152)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL),
  ('1390114', 'Tipalao Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Agat', 13.4155556, 144.6447222, ST_GeomFromText('POINT(13.4155556 144.6447222)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390119', 'Togcha Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Agat', 13.3933333, 144.6575, ST_GeomFromText('POINT(13.3933333 144.6575)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390120', 'Togcha Bay', 'Bay', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3669586, 144.7729835, ST_GeomFromText('POINT(13.3669586 144.7729835)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL),
  ('1390122', 'Togcha Point', 'Cape', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3705556, 144.7697222, ST_GeomFromText('POINT(13.3705556 144.7697222)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1390123', 'Togcha River', 'Stream', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3655556, 144.7669444, ST_GeomFromText('POINT(13.3655556 144.7669444)', 4326), 13.3655556, 144.7669444, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390124', 'Togcha River', 'Stream', 'Guam', 'GU', 'Guam', 'Agat', 13.39, 144.6580556, ST_GeomFromText('POINT(13.39 144.6580556)', 4326), 13.39, 144.6580556, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390127', 'Toguan Bay', 'Bay', 'Guam', 'GU', 'Guam', 'Merizo', 13.2838297, 144.6609498, ST_GeomFromText('POINT(13.2838297 144.6609498)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL),
  ('1390128', 'Toguan River', 'Stream', 'Guam', 'GU', 'Guam', 'Merizo', 13.2841667, 144.6594444, ST_GeomFromText('POINT(13.2841667 144.6594444)', 4326), 13.2841667, 144.6594444, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390129', 'Tolaeyuus River', 'Stream', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3583333, 144.7080556, ST_GeomFromText('POINT(13.3583333 144.7080556)', 4326), 13.3583333, 144.7080556, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390131', 'Tongan Creek', 'Stream', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2502778, 144.7288889, ST_GeomFromText('POINT(13.2502778 144.7288889)', 4326), 13.2502778, 144.7288889, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390133', 'Topony River', 'Stream', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2891667, 144.7175, ST_GeomFromText('POINT(13.2891667 144.7175)', 4326), 13.2927778, 144.7041667, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390137', 'Trinchera Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4780556, 144.7633333, ST_GeomFromText('POINT(13.4780556 144.7633333)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390141', 'Tumon Bay', 'Bay', 'Guam', 'GU', 'Guam', 'Hagatna', 13.5121636, 144.7959301, ST_GeomFromText('POINT(13.5121636 144.7959301)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL),
  ('1390145', 'Two Lovers Leap', 'Cliff', 'Guam', 'GU', 'Guam', 'Hagatna', 13.5333333, 144.7997222, ST_GeomFromText('POINT(13.5333333 144.7997222)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1390146', 'Ugum River', 'Stream', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3363889, 144.7516667, ST_GeomFromText('POINT(13.3363889 144.7516667)', 4326), 13.3025, 144.6933333, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390148', 'Ulomnia Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2833333, 144.7597222, ST_GeomFromText('POINT(13.2833333 144.7597222)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390152', 'Umatac Bay', 'Bay', 'Guam', 'GU', 'Guam', 'Agat', 13.2969234, 144.6594687, ST_GeomFromText('POINT(13.2969234 144.6594687)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL),
  ('1390153', 'Umatac River', 'Stream', 'Guam', 'GU', 'Guam', 'Agat', 13.2966667, 144.6602778, ST_GeomFromText('POINT(13.2966667 144.6602778)', 4326), 13.2966667, 144.6602778, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390161', 'Uruno Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Ritidian Point', 13.6236111, 144.8341667, ST_GeomFromText('POINT(13.6236111 144.8341667)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390162', 'Uruno Point', 'Summit', 'Guam', 'GU', 'Guam', 'Ritidian Point', 13.625, 144.8394444, ST_GeomFromText('POINT(13.625 144.8394444)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390191', 'Yledigao River', 'Stream', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2833333, 144.7233333, ST_GeomFromText('POINT(13.2833333 144.7233333)', 4326), 13.2833333, 144.7233333, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390192', 'Ylig', 'Summit', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3891667, 144.7669444, ST_GeomFromText('POINT(13.3891667 144.7669444)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390193', 'Ylig Bay', 'Bay', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3932235, 144.7770278, ST_GeomFromText('POINT(13.3932235 144.7770278)', 4326), NULL, NULL, '1981-02-06', '2014-12-23', NULL, NULL, NULL),
  ('1390194', 'Ylig Point', 'Cape', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3863889, 144.7747222, ST_GeomFromText('POINT(13.3863889 144.7747222)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1390195', 'Ylig River', 'Stream', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3925, 144.7677778, ST_GeomFromText('POINT(13.3925 144.7677778)', 4326), 13.3925, 144.7677778, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390196', 'Ylig River', 'Stream', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3983333, 144.7313889, ST_GeomFromText('POINT(13.3983333 144.7313889)', 4326), 13.4208333, 144.6988889, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390199', 'Yona Island', 'Island', 'Guam', 'GU', 'Guam', 'Agat', 13.3783333, 144.6480556, ST_GeomFromText('POINT(13.3783333 144.6480556)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390201', 'Ypan Point', 'Cape', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3397222, 144.77, ST_GeomFromText('POINT(13.3397222 144.77)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390203', 'Ypao Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Hagatna', 13.5030556, 144.7872222, ST_GeomFromText('POINT(13.5030556 144.7872222)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390204', 'Ypao Point', 'Summit', 'Guam', 'GU', 'Guam', 'Hagatna', 13.5061111, 144.7805556, ST_GeomFromText('POINT(13.5061111 144.7805556)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390205', 'Dry Dock Island', 'Cape', 'Guam', 'GU', 'Guam', 'Apra Harbor', 13.4522222, 144.6644444, ST_GeomFromText('POINT(13.4522222 144.6644444)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1390256', 'Drydock Point', 'Cape', 'Guam', 'GU', 'Guam', 'Apra Harbor', 13.4541667, 144.6697222, ST_GeomFromText('POINT(13.4541667 144.6697222)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390260', 'Southwest Point', 'Cape', 'Guam', 'GU', 'Guam', 'Apra Harbor', 13.4583333, 144.6597222, ST_GeomFromText('POINT(13.4583333 144.6597222)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1934133', 'Asan Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4716667, 144.7136111, ST_GeomFromText('POINT(13.4716667 144.7136111)', 4326), NULL, NULL, '2001-08-07', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1934139', 'Baker Point', 'Cape', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4797222, 144.7511111, ST_GeomFromText('POINT(13.4797222 144.7511111)', 4326), NULL, NULL, '2001-08-07', NULL, NULL, NULL, NULL),
  ('1934142', 'Barrigada Reservoir', 'Reservoir', 'Guam', 'GU', 'Guam', 'Dededo', 13.4835798, 144.8205399, ST_GeomFromText('POINT(13.4835798 144.8205399)', 4326), NULL, NULL, '2001-08-07', '2014-09-10', NULL, NULL, NULL),
  ('1934151', 'Blue Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4725, 144.7086111, ST_GeomFromText('POINT(13.4725 144.7086111)', 4326), NULL, NULL, '2001-08-07', NULL, NULL, NULL, NULL),
  ('1934160', 'Calvo Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3472222, 144.7694444, ST_GeomFromText('POINT(13.3472222 144.7694444)', 4326), NULL, NULL, '2001-08-07', NULL, NULL, NULL, NULL),
  ('1934169', 'Cetti Falls', 'Falls', 'Guam', 'GU', 'Guam', 'Agat', 13.3222222, 144.665, ST_GeomFromText('POINT(13.3222222 144.665)', 4326), NULL, NULL, '2001-08-07', NULL, NULL, NULL, NULL),
  ('1934170', 'Chalan Aniti', 'Cliff', 'Guam', 'GU', 'Guam', 'Agat', 13.2936111, 144.6572222, ST_GeomFromText('POINT(13.2936111 144.6572222)', 4326), NULL, NULL, '2001-08-07', NULL, NULL, NULL, NULL),
  ('1934190', 'Devils Cove', 'Bay', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3422121, 144.7720377, ST_GeomFromText('POINT(13.3422121 144.7720377)', 4326), NULL, NULL, '2001-08-07', '2014-12-23', NULL, NULL, NULL),
  ('1934196', 'East Hagåtña Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4763889, 144.7577778, ST_GeomFromText('POINT(13.4763889 144.7577778)', 4326), NULL, NULL, '2001-08-07', NULL, 'Official', 'Board Decision', '2002-01-01'),
  ('1934200', 'Facpi Bay', 'Bay', 'Guam', 'GU', 'Guam', 'Agat', 13.3436011, 144.6372436, ST_GeomFromText('POINT(13.3436011 144.6372436)', 4326), NULL, NULL, '2001-08-07', '2014-12-23', NULL, NULL, NULL),
  ('1934203', 'Family Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Apra Harbor', 13.4622222, 144.6447222, ST_GeomFromText('POINT(13.4622222 144.6447222)', 4326), NULL, NULL, '2001-08-07', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1940881', 'First Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3411111, 144.7691667, ST_GeomFromText('POINT(13.3411111 144.7691667)', 4326), NULL, NULL, '2001-10-23', NULL, NULL, NULL, NULL),
  ('1940891', 'Green Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4716667, 144.7127778, ST_GeomFromText('POINT(13.4716667 144.7127778)', 4326), NULL, NULL, '2001-10-23', NULL, NULL, NULL, NULL),
  ('1940917', 'Hill 40', 'Summit', 'Guam', 'GU', 'Guam', 'Agat', 13.375, 144.6525, ST_GeomFromText('POINT(13.375 144.6525)', 4326), NULL, NULL, '2001-10-23', NULL, NULL, NULL, NULL),
  ('1940918', 'Hospital Point', 'Cape', 'Guam', 'GU', 'Guam', 'Hagatna', 13.5013889, 144.775, ST_GeomFromText('POINT(13.5013889 144.775)', 4326), NULL, NULL, '2001-10-23', NULL, NULL, NULL, NULL),
  ('1940921', 'Mount Ilicho', 'Summit', 'Guam', 'GU', 'Guam', 'Talofofo', 13.2936111, 144.6838889, ST_GeomFromText('POINT(13.2936111 144.6838889)', 4326), NULL, NULL, '2001-10-23', '2015-10-22', NULL, NULL, NULL),
  ('1940932', 'Kasamata Hill', 'Summit', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4702778, 144.7466667, ST_GeomFromText('POINT(13.4702778 144.7466667)', 4326), NULL, NULL, '2001-10-23', NULL, NULL, NULL, NULL),
  ('1940947', 'Maanot Pass', 'Gap', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3855556, 144.6838889, ST_GeomFromText('POINT(13.3855556 144.6838889)', 4326), NULL, NULL, '2001-10-23', NULL, NULL, NULL, NULL),
  ('1941515', 'Magpo Point', 'Cape', 'Guam', 'GU', 'Guam', 'Agat', 13.3636111, 144.6466667, ST_GeomFromText('POINT(13.3636111 144.6466667)', 4326), NULL, NULL, '2001-10-24', NULL, NULL, NULL, NULL),
  ('1941517', 'Point Manban', 'Cape', 'Guam', 'GU', 'Guam', 'Agat', 13.2975, 144.6558333, ST_GeomFromText('POINT(13.2975 144.6558333)', 4326), NULL, NULL, '2001-10-24', NULL, NULL, NULL, NULL),
  ('1941567', 'Port Merizo', 'Bay', 'Guam', 'GU', 'Guam', 'Merizo', 13.2602778, 144.6713889, ST_GeomFromText('POINT(13.2602778 144.6713889)', 4326), NULL, NULL, '2001-10-24', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1941569', 'Quiroga Hill', 'Summit', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3438889, 144.7622222, ST_GeomFromText('POINT(13.3438889 144.7622222)', 4326), NULL, NULL, '2001-10-24', NULL, NULL, NULL, NULL),
  ('1941570', 'Red Beach One', 'Beach', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4744444, 144.7194444, ST_GeomFromText('POINT(13.4744444 144.7194444)', 4326), NULL, NULL, '2001-10-24', NULL, NULL, NULL, NULL),
  ('1941571', 'Red Beach Two', 'Beach', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4727778, 144.7161111, ST_GeomFromText('POINT(13.4727778 144.7161111)', 4326), NULL, NULL, '2001-10-24', NULL, NULL, NULL, NULL),
  ('1941583', 'Salugula Pool', 'Bay', 'Guam', 'GU', 'Guam', 'Inarajan', 13.2691667, 144.7436111, ST_GeomFromText('POINT(13.2691667 144.7436111)', 4326), NULL, NULL, '2001-10-24', NULL, NULL, NULL, NULL),
  ('1941591', 'San Ramon Hill', 'Summit', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4688889, 144.7497222, ST_GeomFromText('POINT(13.4688889 144.7497222)', 4326), NULL, NULL, '2001-10-24', NULL, NULL, NULL, NULL),
  ('1941597', 'Scout Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Ritidian Point', 13.6091667, 144.9022222, ST_GeomFromText('POINT(13.6091667 144.9022222)', 4326), NULL, NULL, '2001-10-24', NULL, NULL, NULL, NULL),
  ('1941614', 'Mount Taene', 'Summit', 'Guam', 'GU', 'Guam', 'Agat', 13.3672222, 144.6672222, ST_GeomFromText('POINT(13.3672222 144.6672222)', 4326), NULL, NULL, '2001-10-24', NULL, NULL, NULL, NULL),
  ('1948015', 'Tagachan Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Talofofo', 13.4030556, 144.7788889, ST_GeomFromText('POINT(13.4030556 144.7788889)', 4326), NULL, NULL, '2002-01-31', NULL, NULL, NULL, NULL),
  ('1948022', 'Talofofo Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3363889, 144.7597222, ST_GeomFromText('POINT(13.3363889 144.7597222)', 4326), NULL, NULL, '2002-01-31', NULL, NULL, NULL, NULL),
  ('1948025', 'Talona Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Merizo', 13.2583333, 144.6713889, ST_GeomFromText('POINT(13.2583333 144.6713889)', 4326), NULL, NULL, '2002-01-31', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1948047', 'West Hagåtña Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4761111, 144.7433333, ST_GeomFromText('POINT(13.4761111 144.7433333)', 4326), NULL, NULL, '2002-01-31', NULL, 'Official', 'Board Decision', '2002-01-01'),
  ('1948049', 'White Beach One', 'Beach', 'Guam', 'GU', 'Guam', 'Agat', 13.3833333, 144.6533333, ST_GeomFromText('POINT(13.3833333 144.6533333)', 4326), NULL, NULL, '2002-01-31', NULL, NULL, NULL, NULL),
  ('1948050', 'White Beach Two', 'Beach', 'Guam', 'GU', 'Guam', 'Agat', 13.3813889, 144.6522222, ST_GeomFromText('POINT(13.3813889 144.6522222)', 4326), NULL, NULL, '2002-01-31', NULL, NULL, NULL, NULL),
  ('1948052', 'Yellow Beach One', 'Beach', 'Guam', 'GU', 'Guam', 'Agat', 13.3894444, 144.6586111, ST_GeomFromText('POINT(13.3894444 144.6586111)', 4326), NULL, NULL, '2002-01-31', NULL, NULL, NULL, NULL),
  ('1948053', 'Yellow Beach Two', 'Beach', 'Guam', 'GU', 'Guam', 'Agat', 13.3855556, 144.6547222, ST_GeomFromText('POINT(13.3855556 144.6547222)', 4326), NULL, NULL, '2002-01-31', NULL, NULL, NULL, NULL),
  ('1952192', 'Tanguisson Beach', 'Beach', 'Guam', 'GU', 'Guam', 'Ritidian Point', 13.5505556, 144.8094444, ST_GeomFromText('POINT(13.5505556 144.8094444)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1966608', 'Cape Horn', 'Cape', 'Guam', 'GU', 'Guam', 'Hagatna', 13.4766667, 144.7225, ST_GeomFromText('POINT(13.4766667 144.7225)', 4326), NULL, NULL, '2002-11-25', NULL, NULL, NULL, NULL),
  ('2071665', 'Sasa Bay', 'Bay', 'Guam', 'GU', 'Guam', 'Hagatna', 13.450164, 144.6754975, ST_GeomFromText('POINT(13.450164 144.6754975)', 4326), NULL, NULL, '2005-07-21', '2014-12-23', NULL, NULL, NULL),
  ('2575349', 'Sumay Point (historical)', 'Cape', 'Guam', 'GU', 'Guam', 'Apra Harbor', 13.4333333, 144.65, ST_GeomFromText('POINT(13.4333333 144.65)', 4326), NULL, NULL, '2010-01-21', '2011-01-04', NULL, NULL, NULL),
  ('2575351', 'Stephan Rock (historical)', 'Island', 'Guam', 'GU', 'Guam', 'Apra Harbor', 13.45, 144.65, ST_GeomFromText('POINT(13.45 144.65)', 4326), NULL, NULL, '2010-01-21', '2010-11-30', 'Vacated', 'Board Decision', '1954-09-28');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2575352', 'Sabo River', 'Stream', 'Guam', 'GU', 'Guam', 'Agat', 13.3, 144.6666667, ST_GeomFromText('POINT(13.3 144.6666667)', 4326), 13.3, 144.6666667, '2010-01-21', '2021-04-19', NULL, NULL, NULL),
  ('2575353', 'Napa Island (historical)', 'Island', 'Guam', 'GU', 'Guam', 'Apra Harbor', 13.45, 144.6666667, ST_GeomFromText('POINT(13.45 144.6666667)', 4326), NULL, NULL, '2010-01-21', '2010-11-30', 'Official', 'Board Decision', '1944-12-29'),
  ('2575355', 'Lehga River', 'Stream', 'Guam', 'GU', 'Guam', 'Talofofo', 13.3013889, 144.6763889, ST_GeomFromText('POINT(13.3013889 144.6763889)', 4326), 13.3091667, 144.6813889, '2010-01-21', NULL, NULL, NULL, NULL),
  ('2575356', 'Ilicho River', 'Stream', 'Guam', 'GU', 'Guam', 'Agat', 13.2958333, 144.6744444, ST_GeomFromText('POINT(13.2958333 144.6744444)', 4326), 13.2952778, 144.6791667, '2010-01-21', NULL, NULL, NULL, NULL),
  ('2575359', 'Goa Island (historical)', 'Island', 'Guam', 'GU', 'Guam', 'Apra Harbor', 13.4333333, 144.6666667, ST_GeomFromText('POINT(13.4333333 144.6666667)', 4326), NULL, NULL, '2010-01-21', NULL, NULL, NULL, NULL),
  ('2575361', 'Falcona Anchorage', 'Bay', 'Guam', 'GU', 'Guam', 'Ritidian Point', 13.5776568, 144.8305292, ST_GeomFromText('POINT(13.5776568 144.8305292)', 4326), NULL, NULL, '2010-01-21', '2014-12-23', NULL, NULL, NULL),
  ('2575362', 'Chioreto River', 'Stream', 'Guam', 'GU', 'Guam', 'Agat', 13.3, 144.65, ST_GeomFromText('POINT(13.3 144.65)', 4326), 13.3, 144.65, '2010-01-21', '2021-04-19', NULL, NULL, NULL),
  ('2575363', 'Alifan Spring Reservoir (historical)', 'Reservoir', 'Guam', 'GU', 'Guam', 'Agat', 13.3833333, 144.6666667, ST_GeomFromText('POINT(13.3833333 144.6666667)', 4326), NULL, NULL, '2010-01-21', NULL, NULL, NULL, NULL);


COMMIT;
SET unique_checks = 1;
SET autocommit = 1;

-- GU complete: 408 features loaded
