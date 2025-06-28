USE kin;

-- GNIS Geographic Features for AS
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
  ('1388628', 'Fala Ane Point', 'Cape', 'American Samoa', 'AM', 'Swains Island', NULL, -11.0511111, -171.0875, ST_GeomFromText('POINT(-11.0511111 -171.0875)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388629', 'Rose Island', 'Island', 'American Samoa', 'AM', 'Rose Island', NULL, -14.5475, -168.1413889, ST_GeomFromText('POINT(-14.5475 -168.1413889)', 4326), NULL, NULL, '1981-02-06', '2010-02-16', NULL, NULL, NULL),
  ('1388631', 'Sand Island', 'Island', 'American Samoa', 'AM', 'Rose Island', NULL, -14.5375, -168.1488889, ST_GeomFromText('POINT(-14.5375 -168.1488889)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388633', 'Swains Island', 'Island', 'American Samoa', 'AM', 'Swains Island', NULL, -11.0530556, -171.0825, ST_GeomFromText('POINT(-11.0530556 -171.0825)', 4326), NULL, NULL, '1981-02-06', '2011-03-22', 'Official', 'Board Decision', '1957-04-12'),
  ('1388636', 'Aasu Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.2969444, -170.7586111, ST_GeomFromText('POINT(-14.2969444 -170.7586111)', 4326), -14.2969444, -170.7586111, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388638', 'Afimuao Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2584338, -170.5795548, ST_GeomFromText('POINT(-14.2584338 -170.5795548)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1388639', 'Afimuao Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.2566667, -170.5816667, ST_GeomFromText('POINT(-14.2566667 -170.5816667)', 4326), -14.2566667, -170.5816667, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388641', 'Āfono Bay', 'Bay', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.2517491, -170.6490103, ST_GeomFromText('POINT(-14.2517491 -170.6490103)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1388642', 'Afu Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.3066667, -170.6877778, ST_GeomFromText('POINT(-14.3066667 -170.6877778)', 4326), -14.3066667, -170.6877778, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388643', 'Afuelo Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.3041667, -170.6827778, ST_GeomFromText('POINT(-14.3041667 -170.6827778)', 4326), -14.3041667, -170.6827778, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1388645', 'Afulei Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2797222, -170.6233333, ST_GeomFromText('POINT(-14.2797222 -170.6233333)', 4326), -14.2797222, -170.6233333, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388646', 'Afuli Cove', 'Bay', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE SE', -14.2644444, -169.4972222, ST_GeomFromText('POINT(-14.2644444 -169.4972222)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388647', 'Afutele Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3355556, -170.8183333, ST_GeomFromText('POINT(-14.3355556 -170.8183333)', 4326), -14.3355556, -170.8183333, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388648', 'Aga Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2825, -170.7052778, ST_GeomFromText('POINT(-14.2825 -170.7052778)', 4326), -14.2825, -170.7052778, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388649', 'Agalua Rock', 'Island', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.284284, -170.734749, ST_GeomFromText('POINT(-14.284284 -170.734749)', 4326), NULL, NULL, '2024-03-25', '2024-03-25', NULL, NULL, NULL),
  ('1388651', 'Agaoleatu Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.278693, -170.552939, ST_GeomFromText('POINT(-14.278693 -170.552939)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1388652', 'Agapie Cove', 'Bay', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.261804, -170.70576, ST_GeomFromText('POINT(-14.261804 -170.70576)', 4326), NULL, NULL, '2024-03-26', '2024-03-26', NULL, NULL, NULL),
  ('1388653', 'Agaputuputu Stream', 'Stream', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE W', -14.1683333, -169.6663889, ST_GeomFromText('POINT(-14.1683333 -169.6663889)', 4326), -14.1683333, -169.6663889, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388654', 'Agasavili Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.268501, -170.716875, ST_GeomFromText('POINT(-14.268501 -170.716875)', 4326), NULL, NULL, '2024-03-26', '2024-03-26', NULL, NULL, NULL),
  ('1388655', 'Agasii Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2925, -170.7233333, ST_GeomFromText('POINT(-14.2925 -170.7233333)', 4326), -14.2925, -170.7233333, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1388656', 'Agatoavalu Rock', 'Island', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3322239, -170.8177277, ST_GeomFromText('POINT(-14.3322239 -170.8177277)', 4326), NULL, NULL, '2024-02-06', '2024-02-06', NULL, NULL, NULL),
  ('1388657', 'Alaeli Ridge', 'Ridge', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.300471, -170.8013486, ST_GeomFromText('POINT(-14.300471 -170.8013486)', 4326), NULL, NULL, '2024-03-22', '2024-03-22', NULL, NULL, NULL),
  ('1388659', 'Alatele Cove', 'Bay', 'American Samoa', 'AM', 'Western', 'Tutuila Island', -14.3458778, -170.7227896, ST_GeomFromText('POINT(-14.3458778 -170.7227896)', 4326), NULL, NULL, '2023-12-20', '2023-12-20', NULL, NULL, NULL),
  ('1388661', 'Alava Mountain', 'Summit', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.265548, -170.688164, ST_GeomFromText('POINT(-14.265548 -170.688164)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL),
  ('1388663', 'Alega Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.285, -170.6366667, ST_GeomFromText('POINT(-14.285 -170.6366667)', 4326), -14.285, -170.6366667, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388664', 'Alei Ridge', 'Ridge', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.1661111, -169.6136111, ST_GeomFromText('POINT(-14.1661111 -169.6136111)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388665', 'Alei Stream', 'Stream', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.1733333, -169.6083333, ST_GeomFromText('POINT(-14.1733333 -169.6083333)', 4326), -14.1733333, -169.6083333, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388666', 'Alei Stream', 'Stream', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE W', -14.1741667, -169.6783333, ST_GeomFromText('POINT(-14.1741667 -169.6783333)', 4326), -14.1741667, -169.6783333, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388667', 'Alili Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2633146, -170.5754674, ST_GeomFromText('POINT(-14.2633146 -170.5754674)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1388668', 'Alili Spring', 'Spring', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.263121, -170.5732519, ST_GeomFromText('POINT(-14.263121 -170.5732519)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1388670', 'Alofisau Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2804081, -170.5595479, ST_GeomFromText('POINT(-14.2804081 -170.5595479)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1388671', 'Amaile Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.3048289, -170.6970183, ST_GeomFromText('POINT(-14.3048289 -170.6970183)', 4326), NULL, NULL, '2024-04-05', '2024-04-05', NULL, NULL, NULL),
  ('1388672', 'Amaile Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.3155556, -170.6963889, ST_GeomFromText('POINT(-14.3155556 -170.6963889)', 4326), -14.3155556, -170.6963889, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388676', 'Amanave Bay', 'Bay', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3278568, -170.8315699, ST_GeomFromText('POINT(-14.3278568 -170.8315699)', 4326), NULL, NULL, '2024-02-06', '2024-02-06', NULL, NULL, NULL),
  ('1388677', 'Amano Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2736111, -170.6597222, ST_GeomFromText('POINT(-14.2736111 -170.6597222)', 4326), -14.2736111, -170.6597222, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388678', 'Amate Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3019444, -170.8091667, ST_GeomFromText('POINT(-14.3019444 -170.8091667)', 4326), -14.3019444, -170.8091667, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388682', 'Amouli Stream', 'Stream', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE W', -14.1780556, -169.6769444, ST_GeomFromText('POINT(-14.1780556 -169.6769444)', 4326), -14.1780556, -169.6769444, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388684', 'Anapeapea Cove', 'Bay', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.254591, -170.64673, ST_GeomFromText('POINT(-14.254591 -170.64673)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1388685', 'Anapeapea Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2742636, -170.624137, ST_GeomFromText('POINT(-14.2742636 -170.624137)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1388686', 'Anapeapea Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.30094, -170.68471, ST_GeomFromText('POINT(-14.30094 -170.68471)', 4326), NULL, NULL, '2024-04-05', '2024-04-05', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1388688', 'Anasosopo Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.281082, -170.665226, ST_GeomFromText('POINT(-14.281082 -170.665226)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1388689', 'Anasosopo Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2880556, -170.6636111, ST_GeomFromText('POINT(-14.2880556 -170.6636111)', 4326), -14.2880556, -170.6636111, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388692', 'Aoa Bay', 'Bay', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2595588, -170.5885288, ST_GeomFromText('POINT(-14.2595588 -170.5885288)', 4326), NULL, NULL, '1981-02-06', '2014-12-29', NULL, NULL, NULL),
  ('1388693', 'Aoloau Bay', 'Bay', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.292061, -170.779724, ST_GeomFromText('POINT(-14.292061 -170.779724)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1388696', 'Aonoi Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2619444, -170.595, ST_GeomFromText('POINT(-14.2619444 -170.595)', 4326), -14.2619444, -170.595, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388697', 'Apolima Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.336285, -170.78968, ST_GeomFromText('POINT(-14.336285 -170.78968)', 4326), NULL, NULL, '2024-01-19', '2024-01-19', NULL, NULL, NULL),
  ('1388700', 'Asagatai Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE W', -14.1733333, -169.6313889, ST_GeomFromText('POINT(-14.1733333 -169.6313889)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388701', 'Asasama Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2716874, -170.6071349, ST_GeomFromText('POINT(-14.2716874 -170.6071349)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1388703', 'Asili Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3380556, -170.7980556, ST_GeomFromText('POINT(-14.3380556 -170.7980556)', 4326), NULL, NULL, '2024-03-12', '2024-03-12', NULL, NULL, NULL),
  ('1388704', 'Asili Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3361111, -170.795, ST_GeomFromText('POINT(-14.3361111 -170.795)', 4326), -14.3361111, -170.795, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1388706', 'Atauloma Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3366667, -170.8008333, ST_GeomFromText('POINT(-14.3366667 -170.8008333)', 4326), -14.3366667, -170.8008333, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388709', 'Aualili Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.28025, -170.723183, ST_GeomFromText('POINT(-14.28025 -170.723183)', 4326), NULL, NULL, '2024-03-25', '2024-03-25', NULL, NULL, NULL),
  ('1388711', 'Auauli Cove', 'Bay', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE E', -14.2208333, -169.4738889, ST_GeomFromText('POINT(-14.2208333 -169.4738889)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388712', 'Audii Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3413889, -170.7852778, ST_GeomFromText('POINT(-14.3413889 -170.7852778)', 4326), -14.3413889, -170.7852778, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388713', 'Aufotu Cove', 'Bay', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE SE', -14.2608333, -169.4325, ST_GeomFromText('POINT(-14.2608333 -169.4325)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388714', 'Augaloloa Cove', 'Bay', 'American Samoa', 'AM', 'Western', 'Tutuila Island', -14.3615405, -170.7387016, ST_GeomFromText('POINT(-14.3615405 -170.7387016)', 4326), NULL, NULL, '2023-12-21', '2023-12-21', NULL, NULL, NULL),
  ('1388718', 'Aunuu Island', 'Island', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2836503, -170.5538983, ST_GeomFromText('POINT(-14.2836503 -170.5538983)', 4326), NULL, NULL, '1981-02-06', '2014-09-03', NULL, NULL, NULL),
  ('1388721', 'Auvai Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2738889, -170.6141667, ST_GeomFromText('POINT(-14.2738889 -170.6141667)', 4326), -14.2738889, -170.6141667, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388722', 'Auvaiola Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2847222, -170.5944444, ST_GeomFromText('POINT(-14.2847222 -170.5944444)', 4326), -14.2847222, -170.5944444, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388723', 'Auvaipe Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2847222, -170.5936111, ST_GeomFromText('POINT(-14.2847222 -170.5936111)', 4326), -14.2847222, -170.5936111, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1388724', 'Aua Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.275966, -170.665419, ST_GeomFromText('POINT(-14.275966 -170.665419)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1388725', 'Avagatatau Rock', 'Island', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2886686, -170.6503202, ST_GeomFromText('POINT(-14.2886686 -170.6503202)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1388727', 'Avaloa Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3610903, -170.7760329, ST_GeomFromText('POINT(-14.3610903 -170.7760329)', 4326), NULL, NULL, '2024-01-17', '2024-01-17', NULL, NULL, NULL),
  ('1388728', 'Avapui Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2786631, -170.5994933, ST_GeomFromText('POINT(-14.2786631 -170.5994933)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1388729', 'Avatele Cove', 'Bay', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE E', -14.2208333, -169.4661111, ST_GeomFromText('POINT(-14.2208333 -169.4661111)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388731', 'Avatele Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.324829, -170.699472, ST_GeomFromText('POINT(-14.324829 -170.699472)', 4326), NULL, NULL, '2024-04-08', '2024-04-08', NULL, NULL, NULL),
  ('1388733', 'Avau Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.3105556, -170.6922222, ST_GeomFromText('POINT(-14.3105556 -170.6922222)', 4326), -14.3105556, -170.6922222, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388734', 'Breakers Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.290439, -170.664217, ST_GeomFromText('POINT(-14.290439 -170.664217)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1388735', 'Cape Fogausa', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.281394, -170.604458, ST_GeomFromText('POINT(-14.281394 -170.604458)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1388736', 'Cape Larsen', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.282392, -170.731401, ST_GeomFromText('POINT(-14.282392 -170.731401)', 4326), NULL, NULL, '2024-03-25', '2024-03-25', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1388737', 'Cape Matātula', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.245874, -170.561693, ST_GeomFromText('POINT(-14.245874 -170.561693)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1388738', 'Cape Papatele', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE E', -14.2205556, -169.4225, ST_GeomFromText('POINT(-14.2205556 -169.4225)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388739', 'Cape Taputapu', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3226278, -170.8462553, ST_GeomFromText('POINT(-14.3226278 -170.8462553)', 4326), NULL, NULL, '2024-02-06', '2024-02-06', NULL, NULL, NULL),
  ('1388740', 'Cockscomb Point (historical)', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.230857, -170.671105, ST_GeomFromText('POINT(-14.230857 -170.671105)', 4326), NULL, NULL, '1981-02-06', '2024-09-25', NULL, NULL, NULL),
  ('1388741', 'Coconut Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.316825, -170.701554, ST_GeomFromText('POINT(-14.316825 -170.701554)', 4326), NULL, NULL, '2024-04-05', '2024-04-05', NULL, NULL, NULL),
  ('1388742', 'Craggy Point (historical)', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.2488407, -170.6529067, ST_GeomFromText('POINT(-14.2488407 -170.6529067)', 4326), NULL, NULL, '1981-02-06', '2024-09-25', NULL, NULL, NULL),
  ('1388743', 'Etemuli Mountain', 'Summit', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.265855, -170.6309668, ST_GeomFromText('POINT(-14.265855 -170.6309668)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1388744', 'Etemuli Stream', 'Stream', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.1866667, -169.6063889, ST_GeomFromText('POINT(-14.1866667 -169.6063889)', 4326), -14.1866667, -169.6063889, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388746', 'Faalagiumu Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3308788, -170.8216807, ST_GeomFromText('POINT(-14.3308788 -170.8216807)', 4326), NULL, NULL, '2024-01-23', '2024-01-23', NULL, NULL, NULL),
  ('1388748', 'Faalefu Rock', 'Island', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.256626, -170.591433, ST_GeomFromText('POINT(-14.256626 -170.591433)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1388749', 'Faalogo Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3641667, -170.7775, ST_GeomFromText('POINT(-14.3641667 -170.7775)', 4326), -14.3641667, -170.7775, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388750', 'Faalogologotala Rock', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2813629, -170.6315422, ST_GeomFromText('POINT(-14.2813629 -170.6315422)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1388751', 'Faasamene Cove', 'Bay', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.2219444, -169.5086111, ST_GeomFromText('POINT(-14.2219444 -169.5086111)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388752', 'Faasouga Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.2427778, -169.5119444, ST_GeomFromText('POINT(-14.2427778 -169.5119444)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388753', 'Faasouga Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2796617, -170.6283661, ST_GeomFromText('POINT(-14.2796617 -170.6283661)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1388754', 'Faasouga Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3625921, -170.7719754, ST_GeomFromText('POINT(-14.3625921 -170.7719754)', 4326), NULL, NULL, '2024-01-17', '2024-01-17', NULL, NULL, NULL),
  ('1388755', 'Faataaga Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2909169, -170.6633699, ST_GeomFromText('POINT(-14.2909169 -170.6633699)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1388756', 'Faatafa Rocks', 'Island', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.310774, -170.833948, ST_GeomFromText('POINT(-14.310774 -170.833948)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1388757', 'Faatafa Rocks', 'Island', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.335016, -170.793521, ST_GeomFromText('POINT(-14.335016 -170.793521)', 4326), NULL, NULL, '2024-03-13', '2024-03-13', NULL, NULL, NULL),
  ('1388758', 'Faatafe Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.2563889, -170.6727778, ST_GeomFromText('POINT(-14.2563889 -170.6727778)', 4326), -14.2563889, -170.6727778, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1388759', 'Fafaga Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.292789, -170.806975, ST_GeomFromText('POINT(-14.292789 -170.806975)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1388761', 'Faga Cove', 'Bay', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.2477778, -169.5066667, ST_GeomFromText('POINT(-14.2477778 -169.5066667)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388762', 'Faga Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.303144, -170.824506, ST_GeomFromText('POINT(-14.303144 -170.824506)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1388764', 'Fagaalu Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2958333, -170.6827778, ST_GeomFromText('POINT(-14.2958333 -170.6827778)', 4326), -14.2958333, -170.6827778, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388765', 'Fagafue Bay', 'Bay', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.2936399, -170.7527241, ST_GeomFromText('POINT(-14.2936399 -170.7527241)', 4326), NULL, NULL, '2024-03-22', '2024-03-22', NULL, NULL, NULL),
  ('1388766', 'Fagailiili Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2805946, -170.6296637, ST_GeomFromText('POINT(-14.2805946 -170.6296637)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1388768', 'Fagaʻitua', 'Bay', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2765749, -170.613077, ST_GeomFromText('POINT(-14.2765749 -170.613077)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1388770', 'Fagalea Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.301085, -170.821567, ST_GeomFromText('POINT(-14.301085 -170.821567)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1388772', 'Fagaleoo Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island', -14.348446, -170.727367, ST_GeomFromText('POINT(-14.348446 -170.727367)', 4326), NULL, NULL, '2024-04-08', '2024-04-08', NULL, NULL, NULL),
  ('1388774', 'Fagalua Cove', 'Bay', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.2494495, -170.6309925, ST_GeomFromText('POINT(-14.2494495 -170.6309925)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1388775', 'Fagalua Cove', 'Bay', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.362062, -170.753546, ST_GeomFromText('POINT(-14.362062 -170.753546)', 4326), NULL, NULL, '2024-01-17', '2024-01-17', NULL, NULL, NULL),
  ('1388777', 'Fagamalo Cove', 'Bay', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.2494444, -169.5041667, ST_GeomFromText('POINT(-14.2494444 -169.5041667)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388780', 'Fagaone Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.331357, -170.816803, ST_GeomFromText('POINT(-14.331357 -170.816803)', 4326), NULL, NULL, '2024-01-23', '2024-01-23', NULL, NULL, NULL),
  ('1388781', 'Fagaoo Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3248234, -170.8374415, ST_GeomFromText('POINT(-14.3248234 -170.8374415)', 4326), NULL, NULL, '2024-02-06', '2024-02-06', NULL, NULL, NULL),
  ('1388783', 'Fagasā', 'Bay', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.283328, -170.728483, ST_GeomFromText('POINT(-14.283328 -170.728483)', 4326), NULL, NULL, '2024-03-25', '2024-03-25', NULL, NULL, NULL),
  ('1388784', 'Fagasa Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.249329, -170.56401, ST_GeomFromText('POINT(-14.249329 -170.56401)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1388786', 'Fagatele Bay', 'Bay', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.364224, -170.764425, ST_GeomFromText('POINT(-14.364224 -170.764425)', 4326), NULL, NULL, '2024-01-17', '2024-01-17', NULL, NULL, NULL),
  ('1388787', 'Fagatele Cove', 'Bay', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.2542961, -170.6121875, ST_GeomFromText('POINT(-14.2542961 -170.6121875)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1388789', 'Fagatele Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.302125, -170.822253, ST_GeomFromText('POINT(-14.302125 -170.822253)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1388790', 'Fagatele Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3644943, -170.7693204, ST_GeomFromText('POINT(-14.3644943 -170.7693204)', 4326), NULL, NULL, '2024-01-17', '2024-01-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1388791', 'Fagatiale Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island', -14.291271, -170.748439, ST_GeomFromText('POINT(-14.291271 -170.748439)', 4326), NULL, NULL, '2024-03-22', '2024-03-22', NULL, NULL, NULL),
  ('1388793', 'Fagatuitui Cove', 'Bay', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.271599, -170.719621, ST_GeomFromText('POINT(-14.271599 -170.719621)', 4326), NULL, NULL, '2024-03-26', '2024-03-26', NULL, NULL, NULL),
  ('1388794', 'Faiaiulu Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.308092, -170.829356, ST_GeomFromText('POINT(-14.308092 -170.829356)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1388796', 'Faiga Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.2523684, -170.6859701, ST_GeomFromText('POINT(-14.2523684 -170.6859701)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL),
  ('1388797', 'Faigatoa Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2622222, -170.6786111, ST_GeomFromText('POINT(-14.2622222 -170.6786111)', 4326), -14.2622222, -170.6786111, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388799', 'Faimulivai Marsh', 'Swamp', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.283247, -170.550128, ST_GeomFromText('POINT(-14.283247 -170.550128)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1388800', 'Faiumuolegau Rocks', 'Island', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.28391, -170.605466, ST_GeomFromText('POINT(-14.28391 -170.605466)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1388801', 'Falaseeitoafa Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.276655, -170.587035, ST_GeomFromText('POINT(-14.276655 -170.587035)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1388802', 'Faleapoi Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3520447, -170.7851976, ST_GeomFromText('POINT(-14.3520447 -170.7851976)', 4326), NULL, NULL, '2024-01-17', '2024-01-17', NULL, NULL, NULL),
  ('1388804', 'Faleiulu Stream', 'Stream', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE E', -14.2227778, -169.4961111, ST_GeomFromText('POINT(-14.2227778 -169.4961111)', 4326), -14.2227778, -169.4961111, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1388806', 'Faleoteine Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.288048, -170.739856, ST_GeomFromText('POINT(-14.288048 -170.739856)', 4326), NULL, NULL, '2024-03-22', '2024-03-22', NULL, NULL, NULL),
  ('1388807', 'Faleselau Ridge', 'Ridge', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.2283333, -169.5144444, ST_GeomFromText('POINT(-14.2283333 -169.5144444)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388808', 'Faleselau Ridge', 'Ridge', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3093503, -170.7751548, ST_GeomFromText('POINT(-14.3093503 -170.7751548)', 4326), NULL, NULL, '2024-04-10', '2024-04-10', NULL, NULL, NULL),
  ('1388810', 'Fatatele Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE SE', -14.2775, -169.4858333, ST_GeomFromText('POINT(-14.2775 -169.4858333)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388811', 'Fatifati Mountain', 'Summit', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2785555, -170.7150738, ST_GeomFromText('POINT(-14.2785555 -170.7150738)', 4326), NULL, NULL, '2024-03-26', '2024-03-26', NULL, NULL, NULL),
  ('1388812', 'Fatu Rock', 'Island', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.298299, -170.67647, ST_GeomFromText('POINT(-14.298299 -170.67647)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL),
  ('1388813', 'Fatuaga Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE W', -14.1755556, -169.6363889, ST_GeomFromText('POINT(-14.1755556 -169.6363889)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388814', 'Fatuana Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE W', -14.1888889, -169.6627778, ST_GeomFromText('POINT(-14.1888889 -169.6627778)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388815', 'Fatuapule Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island', -14.350795, -170.729041, ST_GeomFromText('POINT(-14.350795 -170.729041)', 4326), NULL, NULL, '2024-04-08', '2024-04-08', NULL, NULL, NULL),
  ('1388816', 'Fatuasina Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island', -14.3443215, -170.7209852, ST_GeomFromText('POINT(-14.3443215 -170.7209852)', 4326), NULL, NULL, '2023-12-20', '2023-12-20', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1388817', 'Fatuelo Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.28181, -170.731251, ST_GeomFromText('POINT(-14.28181 -170.731251)', 4326), NULL, NULL, '2024-03-25', '2024-03-25', NULL, NULL, NULL),
  ('1388818', 'Fatugau Rock', 'Island', 'American Samoa', 'AM', 'Western', 'Tutuila Island', -14.3652818, -170.7407514, ST_GeomFromText('POINT(-14.3652818 -170.7407514)', 4326), NULL, NULL, '2023-12-20', '2023-12-20', NULL, NULL, NULL),
  ('1388820', 'Fatumaga Rocks', 'Island', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.249974, -170.580662, ST_GeomFromText('POINT(-14.249974 -170.580662)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1388821', 'Fatutea Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2597777, -170.5734251, ST_GeomFromText('POINT(-14.2597777 -170.5734251)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1388822', 'Fatutea Spring', 'Spring', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2616494, -170.5759068, ST_GeomFromText('POINT(-14.2616494 -170.5759068)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1388823', 'Fatutoaga Rock', 'Island', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2897461, -170.6515154, ST_GeomFromText('POINT(-14.2897461 -170.6515154)', 4326), NULL, NULL, '2023-12-19', '2023-12-19', NULL, NULL, NULL),
  ('1388824', 'Fatuuli Rock', 'Island', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.306408, -170.689709, ST_GeomFromText('POINT(-14.306408 -170.689709)', 4326), NULL, NULL, '2024-04-05', '2024-04-05', NULL, NULL, NULL),
  ('1388825', 'Feia Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE W', -14.1638889, -169.6786111, ST_GeomFromText('POINT(-14.1638889 -169.6786111)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388826', 'Fafiga Peak', 'Summit', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2953081, -170.6984228, ST_GeomFromText('POINT(-14.2953081 -170.6984228)', 4326), NULL, NULL, '2024-04-08', '2024-04-08', NULL, NULL, NULL),
  ('1388827', 'Filiae Mountain', 'Summit', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2620572, -170.6217532, ST_GeomFromText('POINT(-14.2620572 -170.6217532)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1388828', 'Filimaoi Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2685695, -170.600532, ST_GeomFromText('POINT(-14.2685695 -170.600532)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1388829', 'Filivili Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2827778, -170.7058333, ST_GeomFromText('POINT(-14.2827778 -170.7058333)', 4326), -14.2827778, -170.7058333, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388831', 'Fitiʻuta Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE E', -14.2169444, -169.4263889, ST_GeomFromText('POINT(-14.2169444 -169.4263889)', 4326), NULL, NULL, '1981-02-06', '2018-11-02', NULL, NULL, NULL),
  ('1388834', 'Fogaletau Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island', -14.355348, -170.73226, ST_GeomFromText('POINT(-14.355348 -170.73226)', 4326), NULL, NULL, '2024-04-08', '2024-04-08', NULL, NULL, NULL),
  ('1388835', 'Fogalilimu Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2786111, -170.6027778, ST_GeomFromText('POINT(-14.2786111 -170.6027778)', 4326), -14.2786111, -170.6027778, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388836', 'Fogamaa Cove', 'Bay', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.359256, -170.75213, ST_GeomFromText('POINT(-14.359256 -170.75213)', 4326), NULL, NULL, '2024-01-17', '2024-01-17', NULL, NULL, NULL),
  ('1388838', 'Fogamutia Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE E', -14.2255556, -169.4177778, ST_GeomFromText('POINT(-14.2255556 -169.4177778)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388839', 'Fogatia Hill', 'Summit', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2876178, -170.5525161, ST_GeomFromText('POINT(-14.2876178 -170.5525161)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1388841', 'Folau Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.2539601, -170.6039571, ST_GeomFromText('POINT(-14.2539601 -170.6039571)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1388842', 'Fuaau Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2897296, -170.7332976, ST_GeomFromText('POINT(-14.2897296 -170.7332976)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1388843', 'Fuafua Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3452778, -170.7844444, ST_GeomFromText('POINT(-14.3452778 -170.7844444)', 4326), -14.3452778, -170.7844444, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388844', 'Fugalei Ridge', 'Ridge', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3122035, -170.8109126, ST_GeomFromText('POINT(-14.3122035 -170.8109126)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1388847', 'Fusi Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.2575695, -170.574062, ST_GeomFromText('POINT(-14.2575695 -170.574062)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1388848', 'Fusiloa Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2786111, -170.585, ST_GeomFromText('POINT(-14.2786111 -170.585)', 4326), -14.2786111, -170.585, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388849', 'Futi Rock', 'Island', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.298237, -170.678036, ST_GeomFromText('POINT(-14.298237 -170.678036)', 4326), NULL, NULL, '2024-04-05', '2024-04-05', NULL, NULL, NULL),
  ('1388851', 'Gagamoe Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2758333, -170.7005556, ST_GeomFromText('POINT(-14.2758333 -170.7005556)', 4326), -14.2758333, -170.7005556, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388852', 'Gaoa Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.255, -170.6747222, ST_GeomFromText('POINT(-14.255 -170.6747222)', 4326), -14.255, -170.6747222, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388853', 'Gatia Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.256272, -170.650206, ST_GeomFromText('POINT(-14.256272 -170.650206)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1388854', 'Goat Island Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.278399, -170.681791, ST_GeomFromText('POINT(-14.278399 -170.681791)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL),
  ('1388855', 'Greyhound Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.288089, -170.78511, ST_GeomFromText('POINT(-14.288089 -170.78511)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1388856', 'Happy Valley', 'Valley', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2757571, -170.69834, ST_GeomFromText('POINT(-14.2757571 -170.69834)', 4326), -14.2757571, -170.69834, '2024-03-26', '2024-03-26', NULL, NULL, NULL),
  ('1388858', 'Imoa Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.1711111, -169.6083333, ST_GeomFromText('POINT(-14.1711111 -169.6083333)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388860', 'Lafiga Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2887154, -170.6514104, ST_GeomFromText('POINT(-14.2887154 -170.6514104)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1388861', 'Lafogaufi Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE E', -14.2566667, -169.4641667, ST_GeomFromText('POINT(-14.2566667 -169.4641667)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388862', 'Lago Spring', 'Spring', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.318234, -170.7624548, ST_GeomFromText('POINT(-14.318234 -170.7624548)', 4326), NULL, NULL, '2024-04-10', '2024-04-10', NULL, NULL, NULL),
  ('1388863', 'Laloafu Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3302778, -170.8277778, ST_GeomFromText('POINT(-14.3302778 -170.8277778)', 4326), -14.3302778, -170.8277778, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388864', 'Lalofutu Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.272805, -170.722368, ST_GeomFromText('POINT(-14.272805 -170.722368)', 4326), NULL, NULL, '2024-03-25', '2024-03-25', NULL, NULL, NULL),
  ('1388865', 'Laloi Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2786111, -170.585, ST_GeomFromText('POINT(-14.2786111 -170.585)', 4326), -14.2786111, -170.585, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388866', 'Lalolamauta Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2758333, -170.6644444, ST_GeomFromText('POINT(-14.2758333 -170.6644444)', 4326), -14.2758333, -170.6644444, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388868', 'Laloniu Cove', 'Bay', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.289878, -170.787706, ST_GeomFromText('POINT(-14.289878 -170.787706)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1388869', 'Lalopapa Marsh', 'Swamp', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2859181, -170.5560879, ST_GeomFromText('POINT(-14.2859181 -170.5560879)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1388871', 'Laloulu Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2814081, -170.6483325, ST_GeomFromText('POINT(-14.2814081 -170.6483325)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1388872', 'Laolao Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2769444, -170.7027778, ST_GeomFromText('POINT(-14.2769444 -170.7027778)', 4326), -14.2769444, -170.7027778, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388873', 'Laoulu Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2647222, -170.5838889, ST_GeomFromText('POINT(-14.2647222 -170.5838889)', 4326), -14.2647222, -170.5838889, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388874', 'Larsen Bay', 'Bay', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3620552, -170.7502305, ST_GeomFromText('POINT(-14.3620552 -170.7502305)', 4326), NULL, NULL, '2024-01-17', '2024-01-17', NULL, NULL, NULL),
  ('1388875', 'Lata Mountain', 'Summit', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE E', -14.2369444, -169.4569444, ST_GeomFromText('POINT(-14.2369444 -169.4569444)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388877', 'Lauagae Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.2487617, -170.5671977, ST_GeomFromText('POINT(-14.2487617 -170.5671977)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1388878', 'Laufuti Stream', 'Stream', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE E', -14.255, -169.445, ST_GeomFromText('POINT(-14.255 -169.445)', 4326), -14.255, -169.445, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388881', 'Laumeimamalie Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island', -14.358715, -170.736959, ST_GeomFromText('POINT(-14.358715 -170.736959)', 4326), NULL, NULL, '2024-01-17', '2024-01-17', NULL, NULL, NULL),
  ('1388882', 'Lausaa Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.2558333, -170.6719444, ST_GeomFromText('POINT(-14.2558333 -170.6719444)', 4326), -14.2558333, -170.6719444, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1388883', 'Lavania Cove', 'Bay', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE SE', -14.26, -169.4697222, ST_GeomFromText('POINT(-14.26 -169.4697222)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388884', 'Leaeno Mountain', 'Summit', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2658404, -170.6013211, ST_GeomFromText('POINT(-14.2658404 -170.6013211)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1388885', 'Leafu Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.2561111, -170.6752778, ST_GeomFromText('POINT(-14.2561111 -170.6752778)', 4326), -14.2561111, -170.6752778, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388886', 'Leafu Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2761111, -170.5730556, ST_GeomFromText('POINT(-14.2761111 -170.5730556)', 4326), -14.2761111, -170.5730556, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388887', 'Leafu Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3302778, -170.8275, ST_GeomFromText('POINT(-14.3302778 -170.8275)', 4326), -14.3302778, -170.8275, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388888', 'Leafu Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3175, -170.7763889, ST_GeomFromText('POINT(-14.3175 -170.7763889)', 4326), -14.3175, -170.7763889, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388890', 'Leala Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.1847222, -169.6052778, ST_GeomFromText('POINT(-14.1847222 -169.6052778)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388891', 'Lealaeli Hill', 'Summit', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2679462, -170.5650604, ST_GeomFromText('POINT(-14.2679462 -170.5650604)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1388892', 'Lealafaalava Mountain', 'Summit', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3148517, -170.8114687, ST_GeomFromText('POINT(-14.3148517 -170.8114687)', 4326), NULL, NULL, '2024-02-06', '2024-02-06', NULL, NULL, NULL),
  ('1388893', 'Leanamanu Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.2572485, -170.5947646, ST_GeomFromText('POINT(-14.2572485 -170.5947646)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1388894', 'Leanaopou Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.2546905, -170.6019738, ST_GeomFromText('POINT(-14.2546905 -170.6019738)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1388895', 'Leanaosaualii Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.270081, -170.610917, ST_GeomFromText('POINT(-14.270081 -170.610917)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1388896', 'Leaoao Peak', 'Summit', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.2476101, -170.6784785, ST_GeomFromText('POINT(-14.2476101 -170.6784785)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL),
  ('1388897', 'Leasi Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2699003, -170.6690573, ST_GeomFromText('POINT(-14.2699003 -170.6690573)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1388898', 'Leasi Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2747222, -170.6669444, ST_GeomFromText('POINT(-14.2747222 -170.6669444)', 4326), -14.2747222, -170.6669444, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388899', 'Leatutoga Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE SE', -14.2755556, -169.4816667, ST_GeomFromText('POINT(-14.2755556 -169.4816667)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388900', 'Leau Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2852778, -170.7094444, ST_GeomFromText('POINT(-14.2852778 -170.7094444)', 4326), -14.2852778, -170.7094444, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388901', 'Leauga Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2696581, -170.5793783, ST_GeomFromText('POINT(-14.2696581 -170.5793783)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1388902', 'Leauga Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2785343, -170.5999089, ST_GeomFromText('POINT(-14.2785343 -170.5999089)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1388903', 'Faumasili Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.1602778, -169.6105556, ST_GeomFromText('POINT(-14.1602778 -169.6105556)', 4326), NULL, NULL, '1981-02-06', '2009-08-24', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1388904', 'Leaute Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3341667, -170.8241667, ST_GeomFromText('POINT(-14.3341667 -170.8241667)', 4326), -14.3341667, -170.8241667, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388905', 'Leaveave Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3005556, -170.7511111, ST_GeomFromText('POINT(-14.3005556 -170.7511111)', 4326), -14.3005556, -170.7511111, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388906', 'Leaveave Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island', -14.3308333, -170.7416667, ST_GeomFromText('POINT(-14.3308333 -170.7416667)', 4326), -14.3308333, -170.7416667, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388907', 'Leele Mountain', 'Summit', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2970274, -170.7196538, ST_GeomFromText('POINT(-14.2970274 -170.7196538)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL),
  ('1388908', 'Leele Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2905556, -170.7197222, ST_GeomFromText('POINT(-14.2905556 -170.7197222)', 4326), -14.2905556, -170.7197222, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388909', 'Leele Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.305, -170.7083333, ST_GeomFromText('POINT(-14.305 -170.7083333)', 4326), -14.305, -170.7083333, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388910', 'Leelee Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.295637, -170.811052, ST_GeomFromText('POINT(-14.295637 -170.811052)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1388911', 'Leemo Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2631258, -170.7005925, ST_GeomFromText('POINT(-14.2631258 -170.7005925)', 4326), NULL, NULL, '2024-03-26', '2024-03-26', NULL, NULL, NULL),
  ('1388912', 'Lefao Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.2516274, -170.5754779, ST_GeomFromText('POINT(-14.2516274 -170.5754779)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1388913', 'Lefutu Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.2557925, -170.5762086, ST_GeomFromText('POINT(-14.2557925 -170.5762086)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1388914', 'Legaotaema Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3213241, -170.8431994, ST_GeomFromText('POINT(-14.3213241 -170.8431994)', 4326), NULL, NULL, '2024-02-06', '2024-02-06', NULL, NULL, NULL),
  ('1388915', 'Leila Mountain', 'Summit', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2637892, -170.5959668, ST_GeomFromText('POINT(-14.2637892 -170.5959668)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1388916', 'Leileia Mountain', 'Summit', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3185541, -170.8201769, ST_GeomFromText('POINT(-14.3185541 -170.8201769)', 4326), NULL, NULL, '2024-02-06', '2024-02-06', NULL, NULL, NULL),
  ('1388918', 'Lemafa Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2623591, -170.59539, ST_GeomFromText('POINT(-14.2623591 -170.59539)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1388919', 'Lemafa Saddle', 'Gap', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2678821, -170.5861909, ST_GeomFromText('POINT(-14.2678821 -170.5861909)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1388920', 'Leʻolo Ridge', 'Ridge', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE W', -14.1775, -169.6536111, ST_GeomFromText('POINT(-14.1775 -169.6536111)', 4326), NULL, NULL, '1981-02-06', '2018-11-02', NULL, NULL, NULL),
  ('1388921', 'Leolo Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2694257, -170.7131554, ST_GeomFromText('POINT(-14.2694257 -170.7131554)', 4326), NULL, NULL, '2024-03-26', '2024-03-26', NULL, NULL, NULL),
  ('1388923', 'Leone Bay', 'Bay', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3391428, -170.7917852, ST_GeomFromText('POINT(-14.3391428 -170.7917852)', 4326), NULL, NULL, '2024-01-19', '2024-01-19', NULL, NULL, NULL),
  ('1388924', 'Leoo Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2687228, -170.5870846, ST_GeomFromText('POINT(-14.2687228 -170.5870846)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1388925', 'Leopard Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.311918, -170.833626, ST_GeomFromText('POINT(-14.311918 -170.833626)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1388926', 'Lepa Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2719444, -170.5869444, ST_GeomFromText('POINT(-14.2719444 -170.5869444)', 4326), -14.2719444, -170.5869444, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388929', 'Lepisi Cove', 'Bay', 'American Samoa', 'AM', 'Western', 'Tutuila Island', -14.3473333, -170.7246652, ST_GeomFromText('POINT(-14.3473333 -170.7246652)', 4326), NULL, NULL, '2023-12-19', '2023-12-19', NULL, NULL, NULL),
  ('1388930', 'Lepisi Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.332023, -170.818133, ST_GeomFromText('POINT(-14.332023 -170.818133)', 4326), NULL, NULL, '2024-01-23', '2024-01-23', NULL, NULL, NULL),
  ('1388932', 'Lepua Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE W', -14.1658333, -169.6691667, ST_GeomFromText('POINT(-14.1658333 -169.6691667)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388933', 'Lepua Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.2475518, -170.6340212, ST_GeomFromText('POINT(-14.2475518 -170.6340212)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1388936', 'Lesea Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2888889, -170.6516667, ST_GeomFromText('POINT(-14.2888889 -170.6516667)', 4326), -14.2888889, -170.6516667, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388937', 'Lesina Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2922222, -170.7213889, ST_GeomFromText('POINT(-14.2922222 -170.7213889)', 4326), -14.2922222, -170.7213889, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388938', 'Lesolo Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.3033121, -170.7019584, ST_GeomFromText('POINT(-14.3033121 -170.7019584)', 4326), NULL, NULL, '2024-04-10', '2024-04-10', NULL, NULL, NULL),
  ('1388939', 'Lesui Ridge', 'Ridge', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3303068, -170.7721299, ST_GeomFromText('POINT(-14.3303068 -170.7721299)', 4326), NULL, NULL, '2024-04-10', '2024-04-10', NULL, NULL, NULL),
  ('1388940', 'Leti Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island', -14.361688, -170.747108, ST_GeomFromText('POINT(-14.361688 -170.747108)', 4326), NULL, NULL, '2023-12-21', '2023-12-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1388942', 'Leua Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2894444, -170.7197222, ST_GeomFromText('POINT(-14.2894444 -170.7197222)', 4326), -14.2894444, -170.7197222, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388944', 'Leutu Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.276361, -170.723333, ST_GeomFromText('POINT(-14.276361 -170.723333)', 4326), NULL, NULL, '2024-03-25', '2024-03-25', NULL, NULL, NULL),
  ('1388945', 'Leva Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.28096, -170.596283, ST_GeomFromText('POINT(-14.28096 -170.596283)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1388946', 'Levaga Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2593574, -170.6970652, ST_GeomFromText('POINT(-14.2593574 -170.6970652)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL),
  ('1388947', 'Lifalifa Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.278212, -170.60478, ST_GeomFromText('POINT(-14.278212 -170.60478)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1388948', 'Liu Bench', 'Bench', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE E', -14.2486111, -169.4583333, ST_GeomFromText('POINT(-14.2486111 -169.4583333)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388949', 'Liuvaatoga Rock', 'Island', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.324135, -170.8413852, ST_GeomFromText('POINT(-14.324135 -170.8413852)', 4326), NULL, NULL, '2024-02-06', '2024-02-06', NULL, NULL, NULL),
  ('1388950', 'Loa Cove', 'Bay', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3244004, -170.8397174, ST_GeomFromText('POINT(-14.3244004 -170.8397174)', 4326), NULL, NULL, '2024-02-06', '2024-02-06', NULL, NULL, NULL),
  ('1388951', 'Logologo Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3459551, -170.7879079, ST_GeomFromText('POINT(-14.3459551 -170.7879079)', 4326), NULL, NULL, '2024-01-17', '2024-01-17', NULL, NULL, NULL),
  ('1388952', 'Logome Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.315785, -170.710158, ST_GeomFromText('POINT(-14.315785 -170.710158)', 4326), NULL, NULL, '2024-04-05', '2024-04-05', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1388953', 'Logotala Hill', 'Summit', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.352541, -170.752344, ST_GeomFromText('POINT(-14.352541 -170.752344)', 4326), NULL, NULL, '2024-04-08', '2024-04-08', NULL, NULL, NULL),
  ('1388954', 'Logoua Falls', 'Falls', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3288242, -170.8245063, ST_GeomFromText('POINT(-14.3288242 -170.8245063)', 4326), NULL, NULL, '2024-01-23', '2024-01-23', NULL, NULL, NULL),
  ('1388955', 'Loto Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE E', -14.2202778, -169.4875, ST_GeomFromText('POINT(-14.2202778 -169.4875)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388956', 'Lotoaise Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE SE', -14.2766667, -169.4825, ST_GeomFromText('POINT(-14.2766667 -169.4825)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388957', 'Lotofaaee Rock', 'Pillar', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.270485, -170.5655477, ST_GeomFromText('POINT(-14.270485 -170.5655477)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1388959', 'Luania Rocks', 'Island', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.320349, -170.8459966, ST_GeomFromText('POINT(-14.320349 -170.8459966)', 4326), NULL, NULL, '2024-02-06', '2024-02-06', NULL, NULL, NULL),
  ('1388961', 'Maafee Island', 'Island', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.2294444, -169.5188889, ST_GeomFromText('POINT(-14.2294444 -169.5188889)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388962', 'Maalatetele Rocks', 'Island', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.257419, -170.559483, ST_GeomFromText('POINT(-14.257419 -170.559483)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1388963', 'Maamaa Cove', 'Bay', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.284973, -170.546201, ST_GeomFromText('POINT(-14.284973 -170.546201)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1388964', 'Maatulaumea Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.271415, -170.572186, ST_GeomFromText('POINT(-14.271415 -170.572186)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1388965', 'Maatulua Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2592768, -170.6941507, ST_GeomFromText('POINT(-14.2592768 -170.6941507)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL),
  ('1388966', 'Maefu Cove', 'Bay', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE E', -14.2583333, -169.4394444, ST_GeomFromText('POINT(-14.2583333 -169.4394444)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388968', 'Lemaga Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.1977778, -169.6111111, ST_GeomFromText('POINT(-14.1977778 -169.6111111)', 4326), NULL, NULL, '1981-02-06', '2009-08-24', NULL, NULL, NULL),
  ('1388969', 'Maga Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2872222, -170.6513889, ST_GeomFromText('POINT(-14.2872222 -170.6513889)', 4326), -14.2872222, -170.6513889, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388971', 'Mako Ridge', 'Ridge', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE W', -14.1686111, -169.6708333, ST_GeomFromText('POINT(-14.1686111 -169.6708333)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388972', 'Malaeimi Valley', 'Valley', 'American Samoa', 'AM', 'Western', 'Tutuila Island', -14.3137031, -170.7368046, ST_GeomFromText('POINT(-14.3137031 -170.7368046)', 4326), -14.3137031, -170.7368046, '2024-04-08', '2024-04-08', NULL, NULL, NULL),
  ('1388974', 'Malaetia Stream', 'Stream', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE W', -14.1772222, -169.6775, ST_GeomFromText('POINT(-14.1772222 -169.6775)', 4326), -14.1772222, -169.6775, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388975', 'Malagateine Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3361111, -170.7963889, ST_GeomFromText('POINT(-14.3361111 -170.7963889)', 4326), -14.3361111, -170.7963889, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388976', 'Malagatiga Ridge', 'Ridge', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.324671, -170.79953, ST_GeomFromText('POINT(-14.324671 -170.79953)', 4326), NULL, NULL, '2024-01-23', '2024-01-23', NULL, NULL, NULL),
  ('1388978', 'Malaloto Ridge', 'Ridge', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3328999, -170.7783647, ST_GeomFromText('POINT(-14.3328999 -170.7783647)', 4326), NULL, NULL, '2024-04-10', '2024-04-10', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1388979', 'Malama Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3248653, -170.834499, ST_GeomFromText('POINT(-14.3248653 -170.834499)', 4326), NULL, NULL, '2024-02-06', '2024-02-06', NULL, NULL, NULL),
  ('1388980', 'Malama Spring', 'Spring', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3226774, -170.8348919, ST_GeomFromText('POINT(-14.3226774 -170.8348919)', 4326), NULL, NULL, '2024-02-06', '2024-02-06', NULL, NULL, NULL),
  ('1388981', 'Maliefetaliai Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2827556, -170.647834, ST_GeomFromText('POINT(-14.2827556 -170.647834)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1388982', 'Maliuga Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.258675, -170.5620188, ST_GeomFromText('POINT(-14.258675 -170.5620188)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1388983', 'Malo Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.2550712, -170.5980072, ST_GeomFromText('POINT(-14.2550712 -170.5980072)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1388985', 'Māloatā Bay', 'Bay', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.302769, -170.817339, ST_GeomFromText('POINT(-14.302769 -170.817339)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1388986', 'Maloata Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3086111, -170.815, ST_GeomFromText('POINT(-14.3086111 -170.815)', 4326), -14.3086111, -170.815, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388987', 'Maluatia Hill', 'Summit', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE E', -14.2194444, -169.4233333, ST_GeomFromText('POINT(-14.2194444 -169.4233333)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388988', 'Manuelo Rock', 'Island', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.288152, -170.781097, ST_GeomFromText('POINT(-14.288152 -170.781097)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1388989', 'Manunu Ridge', 'Ridge', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3036776, -170.7979154, ST_GeomFromText('POINT(-14.3036776 -170.7979154)', 4326), NULL, NULL, '2024-03-22', '2024-03-22', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1388992', 'Mapusagatuai Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island', -14.3225, -170.7341667, ST_GeomFromText('POINT(-14.3225 -170.7341667)', 4326), -14.3225, -170.7341667, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1388995', 'Masefau Bay', 'Bay', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.253639, -170.6232635, ST_GeomFromText('POINT(-14.253639 -170.6232635)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1388996', 'Masinaoleafiafi Ridge', 'Ridge', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3281479, -170.7939046, ST_GeomFromText('POINT(-14.3281479 -170.7939046)', 4326), NULL, NULL, '2024-01-19', '2024-01-19', NULL, NULL, NULL),
  ('1388997', 'Massacre Bay', 'Bay', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.290455, -170.7596172, ST_GeomFromText('POINT(-14.290455 -170.7596172)', 4326), NULL, NULL, '2024-03-22', '2024-03-22', NULL, NULL, NULL),
  ('1388998', 'Mataae Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.301252, -170.684946, ST_GeomFromText('POINT(-14.301252 -170.684946)', 4326), NULL, NULL, '2024-04-05', '2024-04-05', NULL, NULL, NULL),
  ('1388999', 'Mataalā Ridge', 'Ridge', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.1913889, -169.6138889, ST_GeomFromText('POINT(-14.1913889 -169.6138889)', 4326), NULL, NULL, '1981-02-06', '2009-08-02', NULL, NULL, NULL),
  ('1389000', 'Mataālaosagamai Ridge', 'Ridge', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE SE', -14.2702778, -169.4825, ST_GeomFromText('POINT(-14.2702778 -169.4825)', 4326), NULL, NULL, '1981-02-06', '2009-08-02', NULL, NULL, NULL),
  ('1389001', 'Mataalii Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.3186111, -170.71, ST_GeomFromText('POINT(-14.3186111 -170.71)', 4326), -14.3186111, -170.71, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389002', 'Mataavaloa Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE SE', -14.2758333, -169.4911111, ST_GeomFromText('POINT(-14.2758333 -169.4911111)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389004', 'Matafao Peak', 'Summit', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2948785, -170.7035117, ST_GeomFromText('POINT(-14.2948785 -170.7035117)', 4326), NULL, NULL, '2024-04-10', '2024-04-10', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389005', 'Matafaofafine Peak', 'Summit', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2969115, -170.7021477, ST_GeomFromText('POINT(-14.2969115 -170.7021477)', 4326), NULL, NULL, '2024-04-10', '2024-04-10', NULL, NULL, NULL),
  ('1389006', 'Matagimalie Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2747222, -170.6636111, ST_GeomFromText('POINT(-14.2747222 -170.6636111)', 4326), -14.2747222, -170.6636111, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389007', 'Matai Mountain', 'Summit', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2844254, -170.6895583, ST_GeomFromText('POINT(-14.2844254 -170.6895583)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL),
  ('1389008', 'Mataitutua Rock', 'Island', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE E', -14.2536111, -169.4566667, ST_GeomFromText('POINT(-14.2536111 -169.4566667)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389009', 'Matalesolo Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.279504, -170.591262, ST_GeomFromText('POINT(-14.279504 -170.591262)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1389010', 'Matalia Point', 'Island', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.229776, -170.671513, ST_GeomFromText('POINT(-14.229776 -170.671513)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1389011', 'Matape Hill', 'Summit', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.2496482, -170.6531936, ST_GeomFromText('POINT(-14.2496482 -170.6531936)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1389012', 'Matasina Stream', 'Stream', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE W', -14.1847222, -169.6755556, ST_GeomFromText('POINT(-14.1847222 -169.6755556)', 4326), -14.1847222, -169.6755556, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389013', 'Matautu Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.266691, -170.715694, ST_GeomFromText('POINT(-14.266691 -170.715694)', 4326), NULL, NULL, '2024-03-26', '2024-03-26', NULL, NULL, NULL),
  ('1389014', 'Matautu Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2866196, -170.6800878, ST_GeomFromText('POINT(-14.2866196 -170.6800878)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389015', 'Matautuele Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.274576, -170.580769, ST_GeomFromText('POINT(-14.274576 -170.580769)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1389016', 'Matautuloa Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.299734, -170.680182, ST_GeomFromText('POINT(-14.299734 -170.680182)', 4326), NULL, NULL, '2024-04-05', '2024-04-05', NULL, NULL, NULL),
  ('1389017', 'Matautuloa Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.373037, -170.758481, ST_GeomFromText('POINT(-14.373037 -170.758481)', 4326), NULL, NULL, '2024-01-17', '2024-01-17', NULL, NULL, NULL),
  ('1389018', 'Matautuloa Ridge', 'Ridge', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3658659, -170.7576996, ST_GeomFromText('POINT(-14.3658659 -170.7576996)', 4326), NULL, NULL, '2024-01-17', '2024-01-17', NULL, NULL, NULL),
  ('1389019', 'Matautuotafuna Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island', -14.3351525, -170.7123511, ST_GeomFromText('POINT(-14.3351525 -170.7123511)', 4326), NULL, NULL, '2023-12-19', '2023-12-19', NULL, NULL, NULL),
  ('1389020', 'Mataututele Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.287777, -170.783286, ST_GeomFromText('POINT(-14.287777 -170.783286)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1389021', 'Matavai Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.2452778, -169.5086111, ST_GeomFromText('POINT(-14.2452778 -169.5086111)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389022', 'Matavai Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3036111, -170.8097222, ST_GeomFromText('POINT(-14.3036111 -170.8097222)', 4326), -14.3036111, -170.8097222, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389023', 'Matavalu Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2621114, -170.6720122, ST_GeomFromText('POINT(-14.2621114 -170.6720122)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1389024', 'Matuli Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.269894, -170.564654, ST_GeomFromText('POINT(-14.269894 -170.564654)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389026', 'Maugaele Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2695098, -170.5785355, ST_GeomFromText('POINT(-14.2695098 -170.5785355)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1389027', 'Maugaleoo Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2602229, -170.5758456, ST_GeomFromText('POINT(-14.2602229 -170.5758456)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1389028', 'Maugaleoo Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2695044, -170.6318849, ST_GeomFromText('POINT(-14.2695044 -170.6318849)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1389029', 'Maugaloa Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2644616, -170.6708546, ST_GeomFromText('POINT(-14.2644616 -170.6708546)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1389030', 'Maugaoalii Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2649972, -170.6046833, ST_GeomFromText('POINT(-14.2649972 -170.6046833)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1389031', 'Maugaopea Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.277258, -170.587914, ST_GeomFromText('POINT(-14.277258 -170.587914)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1389032', 'Maugaotula Peak', 'Summit', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.2506657, -170.6829188, ST_GeomFromText('POINT(-14.2506657 -170.6829188)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL),
  ('1389033', 'Maugasaa Ridge', 'Ridge', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.329902, -170.829184, ST_GeomFromText('POINT(-14.329902 -170.829184)', 4326), NULL, NULL, '2024-02-07', '2024-02-07', NULL, NULL, NULL),
  ('1389034', 'Maugatele Rock', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.328551, -170.813949, ST_GeomFromText('POINT(-14.328551 -170.813949)', 4326), NULL, NULL, '2024-01-23', '2024-01-23', NULL, NULL, NULL),
  ('1389035', 'Maululu Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.33, -170.8302778, ST_GeomFromText('POINT(-14.33 -170.8302778)', 4326), -14.33, -170.8302778, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389037', 'Maupua Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.2530556, -170.5733333, ST_GeomFromText('POINT(-14.2530556 -170.5733333)', 4326), -14.2530556, -170.5733333, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389040', 'Milomilo Mountain', 'Summit', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3029167, -170.7685078, ST_GeomFromText('POINT(-14.3029167 -170.7685078)', 4326), NULL, NULL, '2024-04-10', '2024-04-10', NULL, NULL, NULL),
  ('1389041', 'Misa Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3041667, -170.8091667, ST_GeomFromText('POINT(-14.3041667 -170.8091667)', 4326), -14.3041667, -170.8091667, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389043', 'Manofā', 'Island', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.252633, -170.701082, ST_GeomFromText('POINT(-14.252633 -170.701082)', 4326), NULL, NULL, '2024-03-26', '2024-03-26', NULL, NULL, NULL),
  ('1389044', 'Mooliuvaa Cove', 'Bay', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2865624, -170.6408408, ST_GeomFromText('POINT(-14.2865624 -170.6408408)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1389045', 'Moso Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE SE', -14.27, -169.4958333, ST_GeomFromText('POINT(-14.27 -169.4958333)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389046', 'Motusaga Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.257669, -170.591691, ST_GeomFromText('POINT(-14.257669 -170.591691)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1389047', 'Motusaga Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2681234, -170.571268, ST_GeomFromText('POINT(-14.2681234 -170.571268)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1389048', 'Mu Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3319962, -170.8040715, ST_GeomFromText('POINT(-14.3319962 -170.8040715)', 4326), NULL, NULL, '2024-01-23', '2024-01-23', NULL, NULL, NULL),
  ('1389049', 'Mulimauga Ridge', 'Ridge', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3307549, -170.7852294, ST_GeomFromText('POINT(-14.3307549 -170.7852294)', 4326), NULL, NULL, '2024-01-19', '2024-01-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389050', 'Mulinuu Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.321939, -170.702863, ST_GeomFromText('POINT(-14.321939 -170.702863)', 4326), NULL, NULL, '2024-04-05', '2024-04-05', NULL, NULL, NULL),
  ('1389051', 'Muliolevai Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2819444, -170.6261111, ST_GeomFromText('POINT(-14.2819444 -170.6261111)', 4326), -14.2819444, -170.6261111, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389052', 'Mulisinalua Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.2486111, -169.5055556, ST_GeomFromText('POINT(-14.2486111 -169.5055556)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389053', 'Muliulu Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.262116, -170.712519, ST_GeomFromText('POINT(-14.262116 -170.712519)', 4326), NULL, NULL, '2024-03-26', '2024-03-26', NULL, NULL, NULL),
  ('1389054', 'Mulivai Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.2555556, -170.6708333, ST_GeomFromText('POINT(-14.2555556 -170.6708333)', 4326), -14.2555556, -170.6708333, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389055', 'Mulivaisigano Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.261014, -170.709279, ST_GeomFromText('POINT(-14.261014 -170.709279)', 4326), NULL, NULL, '2024-03-26', '2024-03-26', NULL, NULL, NULL),
  ('1389056', 'Mulivaitele Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2688889, -170.5625, ST_GeomFromText('POINT(-14.2688889 -170.5625)', 4326), -14.2688889, -170.5625, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389058', 'Namumeaavaga Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.289982, -170.664647, ST_GeomFromText('POINT(-14.289982 -170.664647)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1389060', 'Niualuau Ridge', 'Ridge', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.325093, -170.8223047, ST_GeomFromText('POINT(-14.325093 -170.8223047)', 4326), NULL, NULL, '2024-01-23', '2024-01-23', NULL, NULL, NULL),
  ('1389061', 'Niuasele Ridge', 'Ridge', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3239776, -170.8242119, ST_GeomFromText('POINT(-14.3239776 -170.8242119)', 4326), NULL, NULL, '2024-01-23', '2024-01-23', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389062', 'Niuaveve Rock', 'Island', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.337594, -170.789659, ST_GeomFromText('POINT(-14.337594 -170.789659)', 4326), NULL, NULL, '2024-01-19', '2024-01-19', NULL, NULL, NULL),
  ('1389063', 'Niuloa Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.295118, -170.677371, ST_GeomFromText('POINT(-14.295118 -170.677371)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL),
  ('1389064', 'Niuolepava Rock', 'Island', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3254986, -170.835882, ST_GeomFromText('POINT(-14.3254986 -170.835882)', 4326), NULL, NULL, '2024-02-07', '2024-02-07', NULL, NULL, NULL),
  ('1389065', 'Niutulua Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.300669, -170.815344, ST_GeomFromText('POINT(-14.300669 -170.815344)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1389066', 'North Pioa Mountain', 'Summit', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2710852, -170.6540017, ST_GeomFromText('POINT(-14.2710852 -170.6540017)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1389068', 'Nua-Seetaga Bay', 'Bay', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.328624, -170.8098718, ST_GeomFromText('POINT(-14.328624 -170.8098718)', 4326), NULL, NULL, '2024-01-23', '2024-01-23', NULL, NULL, NULL),
  ('1389069', 'Nuu Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2808333, -170.6022222, ST_GeomFromText('POINT(-14.2808333 -170.6022222)', 4326), -14.2808333, -170.6022222, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389070', 'Nuuiti Rock', 'Island', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.246459, -170.573259, ST_GeomFromText('POINT(-14.246459 -170.573259)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1389071', 'Nuuolemaa Cove', 'Bay', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.280606, -170.595081, ST_GeomFromText('POINT(-14.280606 -170.595081)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1389072', 'Nuuoleniu Cove', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.282976, -170.598922, ST_GeomFromText('POINT(-14.282976 -170.598922)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389073', 'Nuuomanu Rock', 'Island', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.291188, -170.79541, ST_GeomFromText('POINT(-14.291188 -170.79541)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1389074', 'Nuuoosegi Cove', 'Bay', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.310816, -170.695868, ST_GeomFromText('POINT(-14.310816 -170.695868)', 4326), NULL, NULL, '2024-04-05', '2024-04-05', NULL, NULL, NULL),
  ('1389075', 'Nuuooti Cove', 'Bay', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.292103, -170.793242, ST_GeomFromText('POINT(-14.292103 -170.793242)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1389076', 'Nuuosina Rock', 'Island', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.280479, -170.732496, ST_GeomFromText('POINT(-14.280479 -170.732496)', 4326), NULL, NULL, '2024-03-25', '2024-03-25', NULL, NULL, NULL),
  ('1389077', 'Nuupule Rock', 'Island', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE W', -14.1783333, -169.6775, ST_GeomFromText('POINT(-14.1783333 -169.6775)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389078', 'Nuusetoga Island', 'Island', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.249472, -170.623019, ST_GeomFromText('POINT(-14.249472 -170.623019)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1389079', 'Nuusilaelae Island', 'Island', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE W', -14.1763889, -169.6833333, ST_GeomFromText('POINT(-14.1763889 -169.6833333)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389080', 'Nuutai Rock', 'Island', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3331826, -170.8040661, ST_GeomFromText('POINT(-14.3331826 -170.8040661)', 4326), NULL, NULL, '2024-01-23', '2024-01-23', NULL, NULL, NULL),
  ('1389081', 'Nuutavana Rock', 'Island', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.287861, -170.767922, ST_GeomFromText('POINT(-14.287861 -170.767922)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1389082', 'Nuʻutele Island', 'Island', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE W', -14.1719444, -169.6833333, ST_GeomFromText('POINT(-14.1719444 -169.6833333)', 4326), NULL, NULL, '1981-02-06', '2018-11-02', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389083', 'Nuutele Rocks', 'Island', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.246688, -170.568559, ST_GeomFromText('POINT(-14.246688 -170.568559)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1389084', 'Nuutoga Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.253902, -170.697691, ST_GeomFromText('POINT(-14.253902 -170.697691)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL),
  ('1389085', 'Nuutoga Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2586111, -170.6980556, ST_GeomFromText('POINT(-14.2586111 -170.6980556)', 4326), -14.2586111, -170.6980556, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389086', 'Nuututai Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.276673, -170.680697, ST_GeomFromText('POINT(-14.276673 -170.680697)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL),
  ('1389087', 'Nuututai Rock', 'Island', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.1619444, -169.6083333, ST_GeomFromText('POINT(-14.1619444 -169.6083333)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389090', 'Oalii Cove', 'Bay', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.29098, -170.800066, ST_GeomFromText('POINT(-14.29098 -170.800066)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1389092', 'Ofu Island', 'Island', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE W', -14.1791667, -169.6663889, ST_GeomFromText('POINT(-14.1791667 -169.6663889)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389095', 'Ogegasa Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island', -14.290772, -170.742173, ST_GeomFromText('POINT(-14.290772 -170.742173)', 4326), NULL, NULL, '2024-03-22', '2024-03-22', NULL, NULL, NULL),
  ('1389097', 'Ogetu Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.2557512, -170.6446408, ST_GeomFromText('POINT(-14.2557512 -170.6446408)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1389098', 'Olo Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2618368, -170.6604353, ST_GeomFromText('POINT(-14.2618368 -170.6604353)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389102', 'Olomoana Mountain', 'Summit', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2624003, -170.5784714, ST_GeomFromText('POINT(-14.2624003 -170.5784714)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1389104', 'Olosega Island', 'Island', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.1775, -169.6177778, ST_GeomFromText('POINT(-14.1775 -169.6177778)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389105', 'Olotafatafa Ridge', 'Ridge', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3194127, -170.8288695, ST_GeomFromText('POINT(-14.3194127 -170.8288695)', 4326), NULL, NULL, '2024-02-06', '2024-02-06', NULL, NULL, NULL),
  ('1389107', 'Olotele Mountain', 'Summit', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3174364, -170.7642289, ST_GeomFromText('POINT(-14.3174364 -170.7642289)', 4326), NULL, NULL, '2024-04-10', '2024-04-10', NULL, NULL, NULL),
  ('1389108', 'Olotina Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.2503044, -170.5802992, ST_GeomFromText('POINT(-14.2503044 -170.5802992)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1389111', 'Oneonelilii Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island', -14.337532, -170.716274, ST_GeomFromText('POINT(-14.337532 -170.716274)', 4326), NULL, NULL, '2024-04-08', '2024-04-08', NULL, NULL, NULL),
  ('1389113', 'Oti Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.309776, -170.695589, ST_GeomFromText('POINT(-14.309776 -170.695589)', 4326), NULL, NULL, '2024-04-05', '2024-04-05', NULL, NULL, NULL),
  ('1389114', 'Pa Cove', 'Bay', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.292207, -170.802104, ST_GeomFromText('POINT(-14.292207 -170.802104)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1389115', 'Paapala Cove', 'Bay', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.294847, -170.809658, ST_GeomFromText('POINT(-14.294847 -170.809658)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1389117', 'Pagaitua Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2892321, -170.6553575, ST_GeomFromText('POINT(-14.2892321 -170.6553575)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389118', 'Pagatatua Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2624661, -170.6985578, ST_GeomFromText('POINT(-14.2624661 -170.6985578)', 4326), NULL, NULL, '2024-03-26', '2024-03-26', NULL, NULL, NULL),
  ('1389120', 'Pago Pago Harbor', 'Bay', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.27318, -170.679517, ST_GeomFromText('POINT(-14.27318 -170.679517)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL),
  ('1389121', 'Pago Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2630556, -170.6508333, ST_GeomFromText('POINT(-14.2630556 -170.6508333)', 4326), -14.2630556, -170.6508333, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389122', 'Pago Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2802778, -170.7047222, ST_GeomFromText('POINT(-14.2802778 -170.7047222)', 4326), -14.2802778, -170.7047222, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389123', 'Pala Lagoon', 'Lake', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.3236111, -170.7069444, ST_GeomFromText('POINT(-14.3236111 -170.7069444)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389124', 'Pala Lagoon', 'Lake', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3419444, -170.7858333, ST_GeomFromText('POINT(-14.3419444 -170.7858333)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389125', 'Pala Lake', 'Lake', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.285, -170.5527778, ST_GeomFromText('POINT(-14.285 -170.5527778)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389126', 'Palapala Mountain', 'Summit', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2689456, -170.6402899, ST_GeomFromText('POINT(-14.2689456 -170.6402899)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1389127', 'Palapala Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2667417, -170.6245201, ST_GeomFromText('POINT(-14.2667417 -170.6245201)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1389128', 'Palapalaloa Marsh', 'Swamp', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2821493, -170.5566288, ST_GeomFromText('POINT(-14.2821493 -170.5566288)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389129', 'Palapalaloa Mountain', 'Summit', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2877482, -170.7032553, ST_GeomFromText('POINT(-14.2877482 -170.7032553)', 4326), NULL, NULL, '2024-03-25', '2024-03-25', NULL, NULL, NULL),
  ('1389130', 'Palau Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.254466, -170.586305, ST_GeomFromText('POINT(-14.254466 -170.586305)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1389131', 'Panota Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2636111, -170.6038889, ST_GeomFromText('POINT(-14.2636111 -170.6038889)', 4326), -14.2636111, -170.6038889, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389132', 'Papa Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.3180556, -170.7072222, ST_GeomFromText('POINT(-14.3180556 -170.7072222)', 4326), -14.3180556, -170.7072222, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389133', 'Papafaasee Cove', 'Bay', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3594098, -170.7802111, ST_GeomFromText('POINT(-14.3594098 -170.7802111)', 4326), NULL, NULL, '2024-01-17', '2024-01-17', NULL, NULL, NULL),
  ('1389134', 'Papaloa Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.246729, -170.5777, ST_GeomFromText('POINT(-14.246729 -170.5777)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1389135', 'Papaloaloa Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE E', -14.2541667, -169.4533333, ST_GeomFromText('POINT(-14.2541667 -169.4533333)', 4326), NULL, NULL, '1981-02-06', '2006-02-10', NULL, NULL, NULL),
  ('1389136', 'Papaloloa Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE W', -14.1905556, -169.6680556, ST_GeomFromText('POINT(-14.1905556 -169.6680556)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389137', 'Papaotoma Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE SE', -14.2722222, -169.4794444, ST_GeomFromText('POINT(-14.2722222 -169.4794444)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389138', 'Papasao Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE E', -14.2338889, -169.4183333, ST_GeomFromText('POINT(-14.2338889 -169.4183333)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389139', 'Papaseugogo Rock', 'Island', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3322222, -170.8075, ST_GeomFromText('POINT(-14.3322222 -170.8075)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389141', 'Papatele Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2790838, -170.6584741, ST_GeomFromText('POINT(-14.2790838 -170.6584741)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1389142', 'Papatuloto Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.309693, -170.83118, ST_GeomFromText('POINT(-14.309693 -170.83118)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1389143', 'Papausi Stream', 'Stream', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.1919444, -169.6091667, ST_GeomFromText('POINT(-14.1919444 -169.6091667)', 4326), -14.1919444, -169.6091667, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389144', 'Patupatu Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2706329, -170.5966947, ST_GeomFromText('POINT(-14.2706329 -170.5966947)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1389146', 'Pisiula Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.247207, -170.563238, ST_GeomFromText('POINT(-14.247207 -170.563238)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1389147', 'Piumafua Mountain', 'Summit', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.1755556, -169.6202778, ST_GeomFromText('POINT(-14.1755556 -169.6202778)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389148', 'Pofala Hill', 'Summit', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2804454, -170.5490212, ST_GeomFromText('POINT(-14.2804454 -170.5490212)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1389149', 'Pola Island', 'Island', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.2345736, -170.6705292, ST_GeomFromText('POINT(-14.2345736 -170.6705292)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1389150', 'Polauta Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.242712, -170.674496, ST_GeomFromText('POINT(-14.242712 -170.674496)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389152', 'Poloa Bay', 'Bay', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3169172, -170.8380161, ST_GeomFromText('POINT(-14.3169172 -170.8380161)', 4326), NULL, NULL, '1981-02-06', '2014-12-29', NULL, NULL, NULL),
  ('1389153', 'Pouofe Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE E', -14.2536111, -169.4536111, ST_GeomFromText('POINT(-14.2536111 -169.4536111)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389154', 'Pouono Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.1869444, -169.6202778, ST_GeomFromText('POINT(-14.1869444 -169.6202778)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389155', 'Puafusi Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island', -14.351647, -170.7302, ST_GeomFromText('POINT(-14.351647 -170.7302)', 4326), NULL, NULL, '2024-04-08', '2024-04-08', NULL, NULL, NULL),
  ('1389156', 'Puaneva Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.257292, -170.702991, ST_GeomFromText('POINT(-14.257292 -170.702991)', 4326), NULL, NULL, '2024-03-26', '2024-03-26', NULL, NULL, NULL),
  ('1389158', 'Puatauapa Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island', -14.3627967, -170.7451884, ST_GeomFromText('POINT(-14.3627967 -170.7451884)', 4326), NULL, NULL, '2023-12-21', '2023-12-21', NULL, NULL, NULL),
  ('1389159', 'Puna Spring', 'Spring', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2718259, -170.7038683, ST_GeomFromText('POINT(-14.2718259 -170.7038683)', 4326), NULL, NULL, '2024-03-26', '2024-03-26', NULL, NULL, NULL),
  ('1389160', 'Puna Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2661111, -170.5836111, ST_GeomFromText('POINT(-14.2661111 -170.5836111)', 4326), -14.2661111, -170.5836111, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389161', 'Puna Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island', -14.3208333, -170.7491667, ST_GeomFromText('POINT(-14.3208333 -170.7491667)', 4326), -14.3208333, -170.7491667, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389162', 'Puna Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3294444, -170.8294444, ST_GeomFromText('POINT(-14.3294444 -170.8294444)', 4326), -14.3294444, -170.8294444, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389163', 'Punaloa Spring', 'Spring', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3352965, -170.7835743, ST_GeomFromText('POINT(-14.3352965 -170.7835743)', 4326), NULL, NULL, '2024-03-13', '2024-03-13', NULL, NULL, NULL),
  ('1389164', 'Punaoa Valley', 'Valley', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.285386, -170.681427, ST_GeomFromText('POINT(-14.285386 -170.681427)', 4326), -14.285386, -170.681427, '2024-03-27', '2024-03-27', NULL, NULL, NULL),
  ('1389165', 'Punaomanuia Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2747222, -170.6061111, ST_GeomFromText('POINT(-14.2747222 -170.6061111)', 4326), -14.2747222, -170.6061111, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389166', 'Pupualoa Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3560733, -170.7854754, ST_GeomFromText('POINT(-14.3560733 -170.7854754)', 4326), NULL, NULL, '2024-01-17', '2024-01-17', NULL, NULL, NULL),
  ('1389167', 'Puputagi Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.2546905, -170.6086987, ST_GeomFromText('POINT(-14.2546905 -170.6086987)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1389168', 'Rocky Point', 'Island', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.331337, -170.829184, ST_GeomFromText('POINT(-14.331337 -170.829184)', 4326), NULL, NULL, '2024-02-07', '2024-02-07', NULL, NULL, NULL),
  ('1389169', 'Saafelo Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.285781, -170.72535, ST_GeomFromText('POINT(-14.285781 -170.72535)', 4326), NULL, NULL, '2024-03-25', '2024-03-25', NULL, NULL, NULL),
  ('1389170', 'Sagamea Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.3158333, -170.7052778, ST_GeomFromText('POINT(-14.3158333 -170.7052778)', 4326), -14.3158333, -170.7052778, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389171', 'Sail Rock Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island', -14.365263, -170.741465, ST_GeomFromText('POINT(-14.365263 -170.741465)', 4326), NULL, NULL, '2024-01-17', '2024-01-17', NULL, NULL, NULL),
  ('1389173', 'Saililagi Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.2571537, -170.5687669, ST_GeomFromText('POINT(-14.2571537 -170.5687669)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389175', 'Salevatia Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.28568, -170.561457, ST_GeomFromText('POINT(-14.28568 -170.561457)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1389176', 'Samituutuu Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.254858, -170.701876, ST_GeomFromText('POINT(-14.254858 -170.701876)', 4326), NULL, NULL, '2024-03-26', '2024-03-26', NULL, NULL, NULL),
  ('1389180', 'Sauaimoe Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3308333, -170.8105556, ST_GeomFromText('POINT(-14.3308333 -170.8105556)', 4326), -14.3308333, -170.8105556, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389181', 'Sauino Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island', -14.3213889, -170.7152778, ST_GeomFromText('POINT(-14.3213889 -170.7152778)', 4326), -14.3213889, -170.7152778, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389182', 'Sauma Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.2530086, -170.6644291, ST_GeomFromText('POINT(-14.2530086 -170.6644291)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1389183', 'Saumolia Stream', 'Stream', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE W', -14.1761111, -169.6777778, ST_GeomFromText('POINT(-14.1761111 -169.6777778)', 4326), -14.1761111, -169.6777778, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389185', 'Sepu Ridge', 'Ridge', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3295545, -170.7989687, ST_GeomFromText('POINT(-14.3295545 -170.7989687)', 4326), NULL, NULL, '2024-01-23', '2024-01-23', NULL, NULL, NULL),
  ('1389186', 'Seumalo Ridge', 'Ridge', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3582528, -170.7630224, ST_GeomFromText('POINT(-14.3582528 -170.7630224)', 4326), NULL, NULL, '1981-02-06', '2023-12-20', NULL, NULL, NULL),
  ('1389187', 'Siapapa Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2727778, -170.6130556, ST_GeomFromText('POINT(-14.2727778 -170.6130556)', 4326), -14.2727778, -170.6130556, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389188', 'Sigaloa Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3405556, -170.7663889, ST_GeomFromText('POINT(-14.3405556 -170.7663889)', 4326), -14.3405556, -170.7663889, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389190', 'Siliaga Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.287777, -170.761485, ST_GeomFromText('POINT(-14.287777 -170.761485)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1389191', 'Siliataligalu Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2857816, -170.6402543, ST_GeomFromText('POINT(-14.2857816 -170.6402543)', 4326), NULL, NULL, '2023-12-19', '2023-12-19', NULL, NULL, NULL),
  ('1389192', 'Sina Falls', 'Falls', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3365022, -170.7773117, ST_GeomFromText('POINT(-14.3365022 -170.7773117)', 4326), NULL, NULL, '2024-03-14', '2024-03-14', NULL, NULL, NULL),
  ('1389193', 'Sina Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2940497, -170.6865866, ST_GeomFromText('POINT(-14.2940497 -170.6865866)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL),
  ('1389194', 'Sina Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.3038889, -170.6786111, ST_GeomFromText('POINT(-14.3038889 -170.6786111)', 4326), -14.3038889, -170.6786111, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389195', 'Sinamanoo Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.33433, -170.793693, ST_GeomFromText('POINT(-14.33433 -170.793693)', 4326), NULL, NULL, '2024-01-19', '2024-01-19', NULL, NULL, NULL),
  ('1389196', 'Sinapioa Mountain', 'Summit', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2733987, -170.6511909, ST_GeomFromText('POINT(-14.2733987 -170.6511909)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1389197', 'Sinapoto Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE W', -14.1672222, -169.6672222, ST_GeomFromText('POINT(-14.1672222 -169.6672222)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389198', 'Sinapoto Stream', 'Stream', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.1763889, -169.6091667, ST_GeomFromText('POINT(-14.1763889 -169.6091667)', 4326), -14.1763889, -169.6091667, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389199', 'Sinatau Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2839713, -170.6018609, ST_GeomFromText('POINT(-14.2839713 -170.6018609)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389200', 'Sinavevela Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2619444, -170.5622222, ST_GeomFromText('POINT(-14.2619444 -170.5622222)', 4326), -14.2619444, -170.5622222, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389201', 'Siona Mountain', 'Summit', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2797296, -170.6977572, ST_GeomFromText('POINT(-14.2797296 -170.6977572)', 4326), NULL, NULL, '2024-03-26', '2024-03-26', NULL, NULL, NULL),
  ('1389202', 'Sita Bay', 'Bay', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.290148, -170.740499, ST_GeomFromText('POINT(-14.290148 -170.740499)', 4326), NULL, NULL, '2024-03-22', '2024-03-22', NULL, NULL, NULL),
  ('1389204', 'Siuai Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.2238889, -169.5141667, ST_GeomFromText('POINT(-14.2238889 -169.5141667)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389205', 'Siʻufaʻalele', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE SE', -14.2772222, -169.4869444, ST_GeomFromText('POINT(-14.2772222 -169.4869444)', 4326), NULL, NULL, '1981-02-06', '2018-11-02', NULL, NULL, NULL),
  ('1389209', 'Siufaga Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.28181, -170.723891, ST_GeomFromText('POINT(-14.28181 -170.723891)', 4326), NULL, NULL, '2024-03-25', '2024-03-25', NULL, NULL, NULL),
  ('1389210', 'Siufaga Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2805556, -170.5861111, ST_GeomFromText('POINT(-14.2805556 -170.5861111)', 4326), -14.2805556, -170.5861111, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389211', 'Siufagatele Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.274885, -170.723333, ST_GeomFromText('POINT(-14.274885 -170.723333)', 4326), NULL, NULL, '2024-03-25', '2024-03-25', NULL, NULL, NULL),
  ('1389212', 'Siʻulagi', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.2177778, -169.5055556, ST_GeomFromText('POINT(-14.2177778 -169.5055556)', 4326), NULL, NULL, '1981-02-06', '2018-11-02', NULL, NULL, NULL),
  ('1389213', 'Siulepa Ridge', 'Ridge', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3285736, -170.828788, ST_GeomFromText('POINT(-14.3285736 -170.828788)', 4326), NULL, NULL, '2024-02-07', '2024-02-07', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389214', 'Siuono Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.2479483, -170.6800604, ST_GeomFromText('POINT(-14.2479483 -170.6800604)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL),
  ('1389216', 'Solo Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.251388, -170.584202, ST_GeomFromText('POINT(-14.251388 -170.584202)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1389217', 'Soonapule Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3302778, -170.8097222, ST_GeomFromText('POINT(-14.3302778 -170.8097222)', 4326), -14.3302778, -170.8097222, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389218', 'Souga Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3280556, -170.8102778, ST_GeomFromText('POINT(-14.3280556 -170.8102778)', 4326), -14.3280556, -170.8102778, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389219', 'South Pioa Mountain', 'Summit', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2732376, -170.6562744, ST_GeomFromText('POINT(-14.2732376 -170.6562744)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1389220', 'Square Head', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.290023, -170.798671, ST_GeomFromText('POINT(-14.290023 -170.798671)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1389221', 'Steps Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.373272, -170.7596113, ST_GeomFromText('POINT(-14.373272 -170.7596113)', 4326), NULL, NULL, '1981-02-06', '2014-09-03', NULL, NULL, NULL),
  ('1389222', 'Suaavamuli Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.3070055, -170.7170134, ST_GeomFromText('POINT(-14.3070055 -170.7170134)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL),
  ('1389223', 'Suaia Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2747222, -170.6633333, ST_GeomFromText('POINT(-14.2747222 -170.6633333)', 4326), -14.2747222, -170.6633333, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389224', 'Suesave Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.330692, -170.806439, ST_GeomFromText('POINT(-14.330692 -170.806439)', 4326), NULL, NULL, '2024-01-23', '2024-01-23', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389225', 'Sunuʻitao Peak', 'Summit', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE W', -14.1738889, -169.6366667, ST_GeomFromText('POINT(-14.1738889 -169.6366667)', 4326), NULL, NULL, '1981-02-06', '2018-11-02', NULL, NULL, NULL),
  ('1389227', 'Tafaga Cove', 'Bay', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.283764, -170.733976, ST_GeomFromText('POINT(-14.283764 -170.733976)', 4326), NULL, NULL, '2024-03-25', '2024-03-25', NULL, NULL, NULL),
  ('1389231', 'Tafe Stream', 'Stream', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE W', -14.1688889, -169.6638889, ST_GeomFromText('POINT(-14.1688889 -169.6638889)', 4326), -14.1688889, -169.6638889, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389232', 'Tāfeu Cove', 'Bay', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.252799, -170.689902, ST_GeomFromText('POINT(-14.252799 -170.689902)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL),
  ('1389233', 'Tafola Rocks', 'Island', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.299463, -170.82, ST_GeomFromText('POINT(-14.299463 -170.82)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1389236', 'Tagau Mountain', 'Summit', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2614713, -170.6444611, ST_GeomFromText('POINT(-14.2614713 -170.6444611)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1389237', 'Tagau Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2622222, -170.6336111, ST_GeomFromText('POINT(-14.2622222 -170.6336111)', 4326), -14.2622222, -170.6336111, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389238', 'Tainamu Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE E', -14.2536111, -169.4483333, ST_GeomFromText('POINT(-14.2536111 -169.4483333)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389239', 'Talaisina Stream', 'Stream', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.1780556, -169.6077778, ST_GeomFromText('POINT(-14.1780556 -169.6077778)', 4326), -14.1780556, -169.6077778, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389240', 'Talaloa Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2597222, -170.6291667, ST_GeomFromText('POINT(-14.2597222 -170.6291667)', 4326), -14.2597222, -170.6291667, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389241', 'Taligai Cove', 'Bay', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.255621, -170.5997011, ST_GeomFromText('POINT(-14.255621 -170.5997011)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1389242', 'Talitoelau Spring', 'Spring', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2728741, -170.7052572, ST_GeomFromText('POINT(-14.2728741 -170.7052572)', 4326), NULL, NULL, '2024-03-26', '2024-03-26', NULL, NULL, NULL),
  ('1389243', 'Tamatupu Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE W', -14.1747222, -169.6294444, ST_GeomFromText('POINT(-14.1747222 -169.6294444)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389244', 'Tapepe Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2585405, -170.5673722, ST_GeomFromText('POINT(-14.2585405 -170.5673722)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1389245', 'Tapisi Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.2474518, -170.639886, ST_GeomFromText('POINT(-14.2474518 -170.639886)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1389246', 'Tapua Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2663889, -170.5855556, ST_GeomFromText('POINT(-14.2663889 -170.5855556)', 4326), -14.2663889, -170.5855556, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389247', 'Taputapu Island', 'Island', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3227266, -170.8448408, ST_GeomFromText('POINT(-14.3227266 -170.8448408)', 4326), NULL, NULL, '2024-02-06', '2024-02-06', NULL, NULL, NULL),
  ('1389250', 'Taʻū Island', 'Island', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE E', -14.2380556, -169.4761111, ST_GeomFromText('POINT(-14.2380556 -169.4761111)', 4326), NULL, NULL, '1981-02-06', '2018-12-12', NULL, NULL, NULL),
  ('1389251', 'Tau Mountain', 'Summit', 'American Samoa', 'AM', 'Western', 'Tutuila Island', -14.312999, -170.728955, ST_GeomFromText('POINT(-14.312999 -170.728955)', 4326), NULL, NULL, '2024-04-08', '2024-04-08', NULL, NULL, NULL),
  ('1389252', 'Tauese Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.3053608, -170.7140609, ST_GeomFromText('POINT(-14.3053608 -170.7140609)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389253', 'Tauese Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.3119444, -170.7097222, ST_GeomFromText('POINT(-14.3119444 -170.7097222)', 4326), -14.3119444, -170.7097222, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389254', 'Taufanua Ridge', 'Ridge', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.2944039, -170.796683, ST_GeomFromText('POINT(-14.2944039 -170.796683)', 4326), NULL, NULL, '2024-03-22', '2024-03-22', NULL, NULL, NULL),
  ('1389255', 'Taufusi Marsh', 'Swamp', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2638933, -170.5682438, ST_GeomFromText('POINT(-14.2638933 -170.5682438)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1389256', 'Taufusitele Marsh', 'Swamp', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.283424, -170.5570378, ST_GeomFromText('POINT(-14.283424 -170.5570378)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1389257', 'Taugā Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE W', -14.165, -169.6797222, ST_GeomFromText('POINT(-14.165 -169.6797222)', 4326), NULL, NULL, '1981-02-06', '2009-08-02', NULL, NULL, NULL),
  ('1389258', 'Tauga Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2783218, -170.6451576, ST_GeomFromText('POINT(-14.2783218 -170.6451576)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1389259', 'Tauga Rock', 'Island', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2881252, -170.6454166, ST_GeomFromText('POINT(-14.2881252 -170.6454166)', 4326), NULL, NULL, '1981-02-06', '2014-12-29', NULL, NULL, NULL),
  ('1389260', 'Taugamalama Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.273993, -170.576799, ST_GeomFromText('POINT(-14.273993 -170.576799)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1389261', 'Taugasega Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2715047, -170.578924, ST_GeomFromText('POINT(-14.2715047 -170.578924)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1389262', 'Taulaotoga Rock', 'Island', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.275116, -170.58019, ST_GeomFromText('POINT(-14.275116 -170.58019)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389263', 'Taumata Mountain', 'Summit', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2978234, -170.7319478, ST_GeomFromText('POINT(-14.2978234 -170.7319478)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL),
  ('1389264', 'Taumata Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island', -14.3213889, -170.7216667, ST_GeomFromText('POINT(-14.3213889 -170.7216667)', 4326), -14.3213889, -170.7216667, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389265', 'Taumulimalo Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.2980556, -170.8030556, ST_GeomFromText('POINT(-14.2980556 -170.8030556)', 4326), -14.2980556, -170.8030556, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389266', 'Tavalagi Ridge', 'Ridge', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.2255556, -169.5083333, ST_GeomFromText('POINT(-14.2255556 -169.5083333)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389267', 'Televai Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2783333, -170.5819444, ST_GeomFromText('POINT(-14.2783333 -170.5819444)', 4326), -14.2783333, -170.5819444, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389268', 'Tepatasi Mountain', 'Summit', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2774443, -170.7015256, ST_GeomFromText('POINT(-14.2774443 -170.7015256)', 4326), NULL, NULL, '2024-03-26', '2024-03-26', NULL, NULL, NULL),
  ('1389269', 'Tia Ridge', 'Ridge', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE W', -14.1661111, -169.6780556, ST_GeomFromText('POINT(-14.1661111 -169.6780556)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389270', 'Tia Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2633558, -170.7082661, ST_GeomFromText('POINT(-14.2633558 -170.7082661)', 4326), NULL, NULL, '2024-03-26', '2024-03-26', NULL, NULL, NULL),
  ('1389271', 'Tiafou Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE E', -14.2238889, -169.4180556, ST_GeomFromText('POINT(-14.2238889 -169.4180556)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389272', 'Tiaiu Falls', 'Falls', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.2581735, -170.66068, ST_GeomFromText('POINT(-14.2581735 -170.66068)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389273', 'Tialeogaumu Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2632256, -170.7028983, ST_GeomFromText('POINT(-14.2632256 -170.7028983)', 4326), NULL, NULL, '2024-03-26', '2024-03-26', NULL, NULL, NULL),
  ('1389274', 'Tialiufau Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2824976, -170.6579582, ST_GeomFromText('POINT(-14.2824976 -170.6579582)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1389275', 'Tialu Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2719444, -170.6102778, ST_GeomFromText('POINT(-14.2719444 -170.6102778)', 4326), -14.2719444, -170.6102778, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389276', 'Tiaoalii Rock', 'Island', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3227778, -170.8355556, ST_GeomFromText('POINT(-14.3227778 -170.8355556)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389277', 'Tiapea Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.2516186, -170.6132906, ST_GeomFromText('POINT(-14.2516186 -170.6132906)', 4326), NULL, NULL, '1981-02-06', '2014-12-29', NULL, NULL, NULL),
  ('1389278', 'Tiaseu Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2783854, -170.6451807, ST_GeomFromText('POINT(-14.2783854 -170.6451807)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1389279', 'Tiatauala Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.261596, -170.664239, ST_GeomFromText('POINT(-14.261596 -170.664239)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1389280', 'Tiatele Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2688183, -170.5742658, ST_GeomFromText('POINT(-14.2688183 -170.5742658)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1389281', 'Tiatele Ridge', 'Ridge', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3214717, -170.8380129, ST_GeomFromText('POINT(-14.3214717 -170.8380129)', 4326), NULL, NULL, '2024-02-06', '2024-02-06', NULL, NULL, NULL),
  ('1389282', 'Tifa Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2811328, -170.6342349, ST_GeomFromText('POINT(-14.2811328 -170.6342349)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389283', 'Timolea Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.2580213, -170.6968194, ST_GeomFromText('POINT(-14.2580213 -170.6968194)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL),
  ('1389284', 'Toa Cove', 'Bay', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.22, -169.5066667, ST_GeomFromText('POINT(-14.22 -169.5066667)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389285', 'Toa Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island', -14.3626764, -170.738807, ST_GeomFromText('POINT(-14.3626764 -170.738807)', 4326), NULL, NULL, '2023-12-21', '2023-12-21', NULL, NULL, NULL),
  ('1389286', 'Toa Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2583428, -170.6881362, ST_GeomFromText('POINT(-14.2583428 -170.6881362)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL),
  ('1389288', 'Toasa Rock', 'Island', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.28231, -170.66777, ST_GeomFromText('POINT(-14.28231 -170.66777)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1389289', 'Toatai Rock', 'Island', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3319127, -170.8292213, ST_GeomFromText('POINT(-14.3319127 -170.8292213)', 4326), NULL, NULL, '2024-02-06', '2024-02-06', NULL, NULL, NULL),
  ('1389290', 'Toauta Rock', 'Island', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3309707, -170.829163, ST_GeomFromText('POINT(-14.3309707 -170.829163)', 4326), NULL, NULL, '2024-02-07', '2024-02-07', NULL, NULL, NULL),
  ('1389291', 'Tofu Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.2577778, -170.6705556, ST_GeomFromText('POINT(-14.2577778 -170.6705556)', 4326), -14.2577778, -170.6705556, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389292', 'Togotogo Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2805935, -170.6869528, ST_GeomFromText('POINT(-14.2805935 -170.6869528)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL),
  ('1389293', 'Toiloto Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.2569644, -170.5695734, ST_GeomFromText('POINT(-14.2569644 -170.5695734)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389294', 'Tolisi Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2705044, -170.6171875, ST_GeomFromText('POINT(-14.2705044 -170.6171875)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1389295', 'Tolotolooleoti Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.28994, -170.790582, ST_GeomFromText('POINT(-14.28994 -170.790582)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1389296', 'Topea Stream', 'Stream', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.1786111, -169.6075, ST_GeomFromText('POINT(-14.1786111 -169.6075)', 4326), -14.1786111, -169.6075, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389297', 'Trading Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.270643, -170.684881, ST_GeomFromText('POINT(-14.270643 -170.684881)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL),
  ('1389299', 'Tualiliu Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.313561, -170.707283, ST_GeomFromText('POINT(-14.313561 -170.707283)', 4326), NULL, NULL, '2024-04-05', '2024-04-05', NULL, NULL, NULL),
  ('1389301', 'Tuasina Ridge', 'Ridge', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3114222, -170.8152626, ST_GeomFromText('POINT(-14.3114222 -170.8152626)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1389302', 'Tuasivitasi Ridge', 'Ridge', 'American Samoa', 'AM', 'Western', 'Tutuila Island', -14.3071902, -170.741689, ST_GeomFromText('POINT(-14.3071902 -170.741689)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL),
  ('1389303', 'Tuatafa Ridge', 'Ridge', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3045667, -170.8092556, ST_GeomFromText('POINT(-14.3045667 -170.8092556)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1389304', 'Tuavaa Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.275, -170.5825, ST_GeomFromText('POINT(-14.275 -170.5825)', 4326), -14.275, -170.5825, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389305', 'Tufu Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.2227778, -169.5091667, ST_GeomFromText('POINT(-14.2227778 -169.5091667)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389307', 'Tufu Stream', 'Stream', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE W', -14.1805556, -169.6761111, ST_GeomFromText('POINT(-14.1805556 -169.6761111)', 4326), -14.1805556, -169.6761111, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389308', 'Tuigaava Ridge', 'Ridge', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3146, -170.827746, ST_GeomFromText('POINT(-14.3146 -170.827746)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1389310', 'Tulagamatuu Rock', 'Island', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.255461, -170.649111, ST_GeomFromText('POINT(-14.255461 -170.649111)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1389311', 'Tulutulu Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.285677, -170.675697, ST_GeomFromText('POINT(-14.285677 -170.675697)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL),
  ('1389312', 'Tumatolu Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE W', -14.1725, -169.6277778, ST_GeomFromText('POINT(-14.1725 -169.6277778)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389313', 'Tumutumu Mountain', 'Summit', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE W', -14.1811111, -169.6602778, ST_GeomFromText('POINT(-14.1811111 -169.6602778)', 4326), NULL, NULL, '1981-02-06', '2009-08-24', NULL, NULL, NULL),
  ('1389314', 'Tunoa Ridge', 'Ridge', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE E', -14.2258333, -169.4983333, ST_GeomFromText('POINT(-14.2258333 -169.4983333)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389315', 'Tutu Ridge', 'Ridge', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3316717, -170.7874611, ST_GeomFromText('POINT(-14.3316717 -170.7874611)', 4326), NULL, NULL, '2024-01-19', '2024-01-19', NULL, NULL, NULL),
  ('1389316', 'Tutuila Island', 'Island', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2997222, -170.7225, ST_GeomFromText('POINT(-14.2997222 -170.7225)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389317', 'Tuumuai Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE W', -14.1716667, -169.6802778, ST_GeomFromText('POINT(-14.1716667 -169.6802778)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389318', 'Uea Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.280375, -170.606818, ST_GeomFromText('POINT(-14.280375 -170.606818)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1389319', 'Ulafala Stream', 'Stream', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE W', -14.1694444, -169.6605556, ST_GeomFromText('POINT(-14.1694444 -169.6605556)', 4326), -14.1694444, -169.6605556, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389320', 'Ulufala Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE SE', -14.2605556, -169.4361111, ST_GeomFromText('POINT(-14.2605556 -169.4361111)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389321', 'Usi Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.257416, -170.605145, ST_GeomFromText('POINT(-14.257416 -170.605145)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1389322', 'Utanuatele Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3280556, -170.8102778, ST_GeomFromText('POINT(-14.3280556 -170.8102778)', 4326), -14.3280556, -170.8102778, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389323', 'Utufotu Rocks', 'Island', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3196458, -170.8408432, ST_GeomFromText('POINT(-14.3196458 -170.8408432)', 4326), NULL, NULL, '2024-02-06', '2024-02-06', NULL, NULL, NULL),
  ('1389324', 'Utulaina Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.305057, -170.690117, ST_GeomFromText('POINT(-14.305057 -170.690117)', 4326), NULL, NULL, '2024-04-05', '2024-04-05', NULL, NULL, NULL),
  ('1389325', 'Utulaina Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.31, -170.6902778, ST_GeomFromText('POINT(-14.31 -170.6902778)', 4326), -14.31, -170.6902778, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389327', 'Utulelei Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2843635, -170.6830656, ST_GeomFromText('POINT(-14.2843635 -170.6830656)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL),
  ('1389329', 'Utuloa Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.2574997, -170.6154063, ST_GeomFromText('POINT(-14.2574997 -170.6154063)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389330', 'Utumanuʻa Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.2258333, -169.5172222, ST_GeomFromText('POINT(-14.2258333 -169.5172222)', 4326), NULL, NULL, '1981-02-06', '2018-12-12', NULL, NULL, NULL),
  ('1389331', 'Utumatuu Rock', 'Island', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.324985, -170.838138, ST_GeomFromText('POINT(-14.324985 -170.838138)', 4326), NULL, NULL, '2024-02-06', '2024-02-06', NULL, NULL, NULL),
  ('1389334', 'Utumoa Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2841667, -170.7075, ST_GeomFromText('POINT(-14.2841667 -170.7075)', 4326), -14.2841667, -170.7075, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389335', 'Utunonu Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3484574, -170.7867372, ST_GeomFromText('POINT(-14.3484574 -170.7867372)', 4326), NULL, NULL, '2024-01-17', '2024-01-17', NULL, NULL, NULL),
  ('1389336', 'Utusegisegi Cove', 'Bay', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.225, -169.5155556, ST_GeomFromText('POINT(-14.225 -169.5155556)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389338', 'Utusiva Rock', 'Island', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.326532, -170.8307266, ST_GeomFromText('POINT(-14.326532 -170.8307266)', 4326), NULL, NULL, '2024-02-07', '2024-02-07', NULL, NULL, NULL),
  ('1389339', 'Ututafa Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2883333, -170.6775, ST_GeomFromText('POINT(-14.2883333 -170.6775)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389340', 'Vaaogeoge Cove', 'Bay', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.246976, -170.684581, ST_GeomFromText('POINT(-14.246976 -170.684581)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL),
  ('1389341', 'Vaaui Stream', 'Stream', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.1766667, -169.6086111, ST_GeomFromText('POINT(-14.1766667 -169.6086111)', 4326), -14.1766667, -169.6086111, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389342', 'Vaea Hill', 'Summit', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2649488, -170.5660996, ST_GeomFromText('POINT(-14.2649488 -170.5660996)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389343', 'Vai Cove', 'Bay', 'American Samoa', 'AM', 'Western', 'Tutuila Island', -14.3399109, -170.7215231, ST_GeomFromText('POINT(-14.3399109 -170.7215231)', 4326), NULL, NULL, '2023-12-19', '2023-12-19', NULL, NULL, NULL),
  ('1389345', 'Vaiala Ridge', 'Ridge', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3235269, -170.8042444, ST_GeomFromText('POINT(-14.3235269 -170.8042444)', 4326), NULL, NULL, '2024-01-23', '2024-01-23', NULL, NULL, NULL),
  ('1389346', 'Vaialae Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3330556, -170.8130556, ST_GeomFromText('POINT(-14.3330556 -170.8130556)', 4326), -14.3330556, -170.8130556, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389347', 'Vaialili Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2691667, -170.5672222, ST_GeomFromText('POINT(-14.2691667 -170.5672222)', 4326), -14.2691667, -170.5672222, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389348', 'Vaialufai Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2727778, -170.6105556, ST_GeomFromText('POINT(-14.2727778 -170.6105556)', 4326), -14.2727778, -170.6105556, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389350', 'Vaifoa Cove', 'Bay', 'American Samoa', 'AM', 'Western', 'Tutuila Island', -14.349506, -170.728076, ST_GeomFromText('POINT(-14.349506 -170.728076)', 4326), NULL, NULL, '2024-04-08', '2024-04-08', NULL, NULL, NULL),
  ('1389351', 'Vaifusi Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2686111, -170.5672222, ST_GeomFromText('POINT(-14.2686111 -170.5672222)', 4326), -14.2686111, -170.5672222, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389352', 'Vailega Spring', 'Spring', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE E', -14.2219444, -169.4822222, ST_GeomFromText('POINT(-14.2219444 -169.4822222)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389353', 'Vailoa Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.2577778, -170.5655556, ST_GeomFromText('POINT(-14.2577778 -170.5655556)', 4326), -14.2577778, -170.5655556, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389354', 'Vailoa Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2869444, -170.6811111, ST_GeomFromText('POINT(-14.2869444 -170.6811111)', 4326), -14.2869444, -170.6811111, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389357', 'Vailolo Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3013889, -170.7811111, ST_GeomFromText('POINT(-14.3013889 -170.7811111)', 4326), -14.3013889, -170.7811111, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389358', 'Vailoloaitiiti Cove', 'Bay', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE SE', -14.2769444, -169.4852778, ST_GeomFromText('POINT(-14.2769444 -169.4852778)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389359', 'Vailoloatele Cove', 'Bay', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE SE', -14.2733333, -169.4811111, ST_GeomFromText('POINT(-14.2733333 -169.4811111)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389360', 'Vaima Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2858333, -170.7094444, ST_GeomFromText('POINT(-14.2858333 -170.7094444)', 4326), -14.2858333, -170.7094444, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389361', 'Vaimumu Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2661111, -170.5627778, ST_GeomFromText('POINT(-14.2661111 -170.5627778)', 4326), -14.2661111, -170.5627778, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389362', 'Vainuu Mountain', 'Summit', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.250924, -170.6285627, ST_GeomFromText('POINT(-14.250924 -170.6285627)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1389363', 'Vainuu Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.2494652, -170.6447826, ST_GeomFromText('POINT(-14.2494652 -170.6447826)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1389364', 'Vainuulua Stream', 'Stream', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE W', -14.1702778, -169.6577778, ST_GeomFromText('POINT(-14.1702778 -169.6577778)', 4326), -14.1702778, -169.6577778, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389365', 'Vaiola Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.284258, -170.6393132, ST_GeomFromText('POINT(-14.284258 -170.6393132)', 4326), NULL, NULL, '2023-12-19', '2023-12-19', NULL, NULL, NULL),
  ('1389366', 'Vaiola Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.2527778, -170.6641667, ST_GeomFromText('POINT(-14.2527778 -170.6641667)', 4326), -14.2527778, -170.6641667, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389367', 'Vaiolefuga Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.2963889, -170.7961111, ST_GeomFromText('POINT(-14.2963889 -170.7961111)', 4326), -14.2963889, -170.7961111, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389368', 'Vaipito Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2636111, -170.6047222, ST_GeomFromText('POINT(-14.2636111 -170.6047222)', 4326), -14.2636111, -170.6047222, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389369', 'Vaipito Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2780556, -170.7016667, ST_GeomFromText('POINT(-14.2780556 -170.7016667)', 4326), -14.2780556, -170.7016667, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389370', 'Vaipito Valley', 'Valley', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2779503, -170.7063229, ST_GeomFromText('POINT(-14.2779503 -170.7063229)', 4326), -14.2779503, -170.7063229, '2024-03-26', '2024-03-26', NULL, NULL, NULL),
  ('1389371', 'Vaipuna Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3386111, -170.7908333, ST_GeomFromText('POINT(-14.3386111 -170.7908333)', 4326), -14.3386111, -170.7908333, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389372', 'Vaisa Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.25124, -170.694258, ST_GeomFromText('POINT(-14.25124 -170.694258)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL),
  ('1389373', 'Vaisa Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.2566667, -170.5797222, ST_GeomFromText('POINT(-14.2566667 -170.5797222)', 4326), -14.2566667, -170.5797222, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389374', 'Vaisa Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.2572222, -170.6944444, ST_GeomFromText('POINT(-14.2572222 -170.6944444)', 4326), -14.2572222, -170.6944444, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389375', 'Vaisa Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2761111, -170.5722222, ST_GeomFromText('POINT(-14.2761111 -170.5722222)', 4326), -14.2761111, -170.5722222, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389376', 'Vaisa Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.2997222, -170.7802778, ST_GeomFromText('POINT(-14.2997222 -170.7802778)', 4326), -14.2997222, -170.7802778, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389377', 'Vaisa Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3080556, -170.8225, ST_GeomFromText('POINT(-14.3080556 -170.8225)', 4326), -14.3080556, -170.8225, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389378', 'Vaisaili Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.1919444, -169.6158333, ST_GeomFromText('POINT(-14.1919444 -169.6158333)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389379', 'Vaisigano Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.333956, -170.799658, ST_GeomFromText('POINT(-14.333956 -170.799658)', 4326), NULL, NULL, '2024-03-13', '2024-03-13', NULL, NULL, NULL),
  ('1389380', 'Vaisina Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2944444, -170.6569444, ST_GeomFromText('POINT(-14.2944444 -170.6569444)', 4326), -14.2944444, -170.6569444, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389381', 'Vaita Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.2544444, -169.5041667, ST_GeomFromText('POINT(-14.2544444 -169.5041667)', 4326), NULL, NULL, '1981-02-06', '2006-02-10', NULL, NULL, NULL),
  ('1389382', 'Vaitai Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3430556, -170.7680556, ST_GeomFromText('POINT(-14.3430556 -170.7680556)', 4326), -14.3430556, -170.7680556, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389383', 'Vaitanoa Pool', 'Lake', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2922222, -170.6955556, ST_GeomFromText('POINT(-14.2922222 -170.6955556)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389384', 'Vaitele Point', 'Cape', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.2463889, -169.5086111, ST_GeomFromText('POINT(-14.2463889 -169.5086111)', 4326), NULL, NULL, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389385', 'Vaitele Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.317324, -170.712905, ST_GeomFromText('POINT(-14.317324 -170.712905)', 4326), NULL, NULL, '2024-04-05', '2024-04-05', NULL, NULL, NULL),
  ('1389386', 'Vaitele Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2930556, -170.6522222, ST_GeomFromText('POINT(-14.2930556 -170.6522222)', 4326), -14.2930556, -170.6522222, '1981-02-06', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389387', 'Vaitele Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3188889, -170.8325, ST_GeomFromText('POINT(-14.3188889 -170.8325)', 4326), -14.3188889, -170.8325, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389388', 'Vaitele Stream', 'Stream', 'American Samoa', 'AM', 'Western', 'Tutuila Island', -14.3225, -170.7161111, ST_GeomFromText('POINT(-14.3225 -170.7161111)', 4326), -14.3225, -170.7161111, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389390', 'Vaitolu Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2669444, -170.5883333, ST_GeomFromText('POINT(-14.2669444 -170.5883333)', 4326), -14.2669444, -170.5883333, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389391', 'Vaoaga Point', 'Cape', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.298569, -170.811911, ST_GeomFromText('POINT(-14.298569 -170.811911)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL),
  ('1389392', 'Vaotamu Rocks', 'Island', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE NE', -14.2508987, -170.5847962, ST_GeomFromText('POINT(-14.2508987 -170.5847962)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1389393', 'Va‘oto', 'Swamp', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE W', -14.1883333, -169.6694444, ST_GeomFromText('POINT(-14.1883333 -169.6694444)', 4326), NULL, NULL, '1981-02-06', '2014-05-12', NULL, NULL, NULL),
  ('1389396', 'Vatia Bay', 'Bay', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.24839, -170.67205, ST_GeomFromText('POINT(-14.24839 -170.67205)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1389397', 'Vava Cove', 'Bay', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.3231016, -170.8431316, ST_GeomFromText('POINT(-14.3231016 -170.8431316)', 4326), NULL, NULL, '2024-02-06', '2024-02-06', NULL, NULL, NULL),
  ('1389398', 'Vesitau Ridge', 'Ridge', 'American Samoa', 'AM', 'Western', 'Tutuila Island', -14.2990847, -170.7472388, ST_GeomFromText('POINT(-14.2990847 -170.7472388)', 4326), NULL, NULL, '2024-03-22', '2024-03-22', NULL, NULL, NULL),
  ('1389399', 'Visa Point', 'Cape', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2863906, -170.64296, ST_GeomFromText('POINT(-14.2863906 -170.64296)', 4326), NULL, NULL, '2024-03-19', '2024-03-19', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1389400', 'Visa Stream', 'Stream', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2913889, -170.6433333, ST_GeomFromText('POINT(-14.2913889 -170.6433333)', 4326), -14.2913889, -170.6433333, '1981-02-06', NULL, NULL, NULL, NULL),
  ('1389401', 'Whale Rock', 'Island', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.28575, -170.67059, ST_GeomFromText('POINT(-14.28575 -170.67059)', 4326), NULL, NULL, '2024-03-20', '2024-03-20', NULL, NULL, NULL),
  ('1966510', 'Alega Beach', 'Beach', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.285, -170.6363889, ST_GeomFromText('POINT(-14.285 -170.6363889)', 4326), NULL, NULL, '2002-11-25', NULL, NULL, NULL, NULL),
  ('1966511', 'Alegā Valley', 'Valley', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2847222, -170.6363889, ST_GeomFromText('POINT(-14.2847222 -170.6363889)', 4326), -14.2847222, -170.6363889, '2002-11-25', '2009-08-02', NULL, NULL, NULL),
  ('1966513', 'Amalau Valley', 'Valley', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE N', -14.2577778, -170.6572222, ST_GeomFromText('POINT(-14.2577778 -170.6572222)', 4326), -14.2669444, -170.6608333, '2002-11-25', NULL, NULL, NULL, NULL),
  ('1966516', 'ʻAoa Valley', 'Valley', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2666667, -170.5855556, ST_GeomFromText('POINT(-14.2666667 -170.5855556)', 4326), -14.2666667, -170.5855556, '2002-11-25', '2018-12-12', NULL, NULL, NULL),
  ('1966523', 'Fagaʻalu Bay', 'Bay', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.291084, -170.681105, ST_GeomFromText('POINT(-14.291084 -170.681105)', 4326), NULL, NULL, '2024-03-27', '2024-03-27', NULL, NULL, NULL),
  ('1966528', 'Fagasā Pass', 'Gap', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2836705, -170.712894, ST_GeomFromText('POINT(-14.2836705 -170.712894)', 4326), NULL, NULL, '2024-03-26', '2024-03-26', NULL, NULL, NULL),
  ('1966532', 'Faleasao Harbor', 'Bay', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.2247222, -169.5116667, ST_GeomFromText('POINT(-14.2247222 -169.5116667)', 4326), NULL, NULL, '2002-11-25', NULL, NULL, NULL, NULL),
  ('1966536', 'Flowerpot Rocks', 'Island', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.3030556, -170.6758333, ST_GeomFromText('POINT(-14.3030556 -170.6758333)', 4326), NULL, NULL, '2002-11-25', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1966538', 'Freddies Beach', 'Beach', 'American Samoa', 'AM', 'Western', 'Tutuila Island', -14.342708, -170.723205, ST_GeomFromText('POINT(-14.342708 -170.723205)', 4326), NULL, NULL, '2024-04-10', '2024-04-10', NULL, NULL, NULL),
  ('1966549', 'Leone Falls', 'Falls', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.324566, -170.7831176, ST_GeomFromText('POINT(-14.324566 -170.7831176)', 4326), NULL, NULL, '2024-04-10', '2024-04-10', NULL, NULL, NULL),
  ('1966556', 'Manuʻa Islands', 'Island', 'American Samoa', 'AM', 'Manu‘a District', 'Manua Islands', -14.2125, -169.5541667, ST_GeomFromText('POINT(-14.2125 -169.5541667)', 4326), NULL, NULL, '2002-11-25', '2020-02-04', NULL, NULL, NULL),
  ('1966563', 'Mauga o Aliʻi', 'Summit', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.277359, -170.683014, ST_GeomFromText('POINT(-14.277359 -170.683014)', 4326), NULL, NULL, '2024-05-14', '2024-05-14', NULL, NULL, NULL),
  ('1966568', 'Palagi Beach', 'Beach', 'American Samoa', 'AM', 'Western', 'Tutuila Island OE W', -14.326222, -170.8306, ST_GeomFromText('POINT(-14.326222 -170.8306)', 4326), NULL, NULL, '2024-04-10', '2024-04-10', NULL, NULL, NULL),
  ('1966580', 'Rainmaker Pass', 'Gap', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.266854, -170.655311, ST_GeomFromText('POINT(-14.266854 -170.655311)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1966581', 'Red Lake', 'Lake', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2883333, -170.5494444, ST_GeomFromText('POINT(-14.2883333 -170.5494444)', 4326), NULL, NULL, '2002-11-25', NULL, NULL, NULL, NULL),
  ('1966586', 'Solo Hill', 'Summit', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.278545, -170.685332, ST_GeomFromText('POINT(-14.278545 -170.685332)', 4326), NULL, NULL, '2024-04-10', '2024-04-10', NULL, NULL, NULL),
  ('1966587', 'South Ofu Beach', 'Beach', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands OE W', -14.1788889, -169.65, ST_GeomFromText('POINT(-14.1788889 -169.65)', 4326), NULL, NULL, '2002-11-25', '2006-02-15', NULL, NULL, NULL),
  ('1966596', 'Ta‘ū Marsh', 'Swamp', 'American Samoa', 'AM', 'Manu''a', 'Manua Islands', -14.2316667, -169.5130556, ST_GeomFromText('POINT(-14.2316667 -169.5130556)', 4326), NULL, NULL, '2002-11-25', '2014-05-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1966603', 'Usi Ridge', 'Ridge', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island OE E', -14.2642328, -170.5996676, ST_GeomFromText('POINT(-14.2642328 -170.5996676)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('1966606', 'Virgin Falls', 'Falls', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2877586, -170.6960868, ST_GeomFromText('POINT(-14.2877586 -170.6960868)', 4326), NULL, NULL, '2024-05-14', '2024-05-14', NULL, NULL, NULL),
  ('2562823', 'Āfono Pass', 'Gap', 'American Samoa', 'AM', 'Eastern', 'Tutuila Island', -14.2689584, -170.6512371, ST_GeomFromText('POINT(-14.2689584 -170.6512371)', 4326), NULL, NULL, '2024-03-21', '2024-03-21', NULL, NULL, NULL),
  ('2575225', 'Rose Atoll', 'Island', 'American Samoa', 'AM', 'Rose Island', NULL, -14.5458333, -168.15, ST_GeomFromText('POINT(-14.5458333 -168.15)', 4326), NULL, NULL, '2010-01-20', NULL, 'Official', 'Board Decision', '1977-05-12');


COMMIT;
SET unique_checks = 1;
SET autocommit = 1;

-- AS complete: 634 features loaded
