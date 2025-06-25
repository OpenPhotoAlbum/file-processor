USE kin;

-- GNIS Geographic Features for PR
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
  ('1609455', 'Cerro Farallón', 'Summit', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.1475544, -65.326098, ST_GeomFromText('POINT(18.1475544 -65.326098)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1609458', 'Quebrada Del Ausubo', 'Valley', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.380808, -66.0527427, ST_GeomFromText('POINT(18.380808 -66.0527427)', 4326), 18.3692677, -66.0452325, '1981-02-13', '2017-02-14', NULL, NULL, NULL),
  ('1609459', 'Cerro Respaldo', 'Summit', 'Puerto Rico', 'PU', 'Salinas', 'Coamo', 18.0088349, -66.3273164, ST_GeomFromText('POINT(18.0088349 -66.3273164)', 4326), NULL, NULL, '1981-02-13', '2024-04-11', NULL, NULL, NULL),
  ('1609462', 'Quebrada Angela', 'Valley', 'Puerto Rico', 'PU', 'Loíza', 'Rio Grande', 18.3889756, -65.8624018, ST_GeomFromText('POINT(18.3889756 -65.8624018)', 4326), 18.3531016, -65.8716249, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1609463', 'Quebrada Guaracanal', 'Valley', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.3926715, -66.0563564, ST_GeomFromText('POINT(18.3926715 -66.0563564)', 4326), 18.3682013, -66.0418331, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1609464', 'Quebrada Guanábana', 'Valley', 'Puerto Rico', 'PU', 'Juana Díaz', 'Ponce', 18.0298335, -66.507365, ST_GeomFromText('POINT(18.0298335 -66.507365)', 4326), 18.0656994, -66.4699068, '1981-02-13', '2017-03-07', NULL, NULL, NULL),
  ('1609465', 'Río Caguitas', 'Stream', 'Puerto Rico', 'PU', 'Caguas', 'Aguas Buenas', 18.2585651, -66.0132205, ST_GeomFromText('POINT(18.2585651 -66.0132205)', 4326), 18.2291224, -66.124611, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609466', 'Río de las Vacas', 'Stream', 'Puerto Rico', 'PU', 'Peñuelas', 'Yauco', 18.1230157, -66.7543415, ST_GeomFromText('POINT(18.1230157 -66.7543415)', 4326), 18.1113494, -66.7560083, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609467', 'Río de Bayamón', 'Stream', 'Puerto Rico', 'PU', 'Aguas Buenas', 'Comerio', 18.2480106, -66.1393336, ST_GeomFromText('POINT(18.2480106 -66.1393336)', 4326), 18.1699583, -66.1237774, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609468', 'Rio', 'Stream', 'Puerto Rico', 'PU', 'Cidra', 'Comerio', 18.1699583, -66.125444, ST_GeomFromText('POINT(18.1699583 -66.125444)', 4326), 18.1646808, -66.1098883, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1609469', 'Río Bayamón', 'Stream', 'Puerto Rico', 'PU', 'Bayamón', 'Naranjito', 18.3730052, -66.1376668, ST_GeomFromText('POINT(18.3730052 -66.1376668)', 4326), 18.3055081, -66.1318335, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609470', 'Río Casei', 'Stream', 'Puerto Rico', 'PU', 'Las Marías', 'Rosario', 18.2480089, -67.0737904, ST_GeomFromText('POINT(18.2480089 -67.0737904)', 4326), 18.2124553, -67.0037894, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609471', 'Río Casey', 'Stream', 'Puerto Rico', 'PU', 'Las Marías', 'Central La Plata', 18.2705076, -67.1179575, ST_GeomFromText('POINT(18.2705076 -67.1179575)', 4326), 18.2480089, -67.0743459, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609472', 'Río De Bayamón', 'Stream', 'Puerto Rico', 'PU', 'Toa Alta', 'Bayamon', 18.4621675, -66.139611, ST_GeomFromText('POINT(18.4621675 -66.139611)', 4326), 18.3730052, -66.1376668, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609473', 'Río Guavate', 'Stream', 'Puerto Rico', 'PU', 'Cayey', 'Comerio', 18.1296823, -66.1254439, ST_GeomFromText('POINT(18.1296823 -66.1254439)', 4326), 18.123016, -66.0712765, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609474', 'Río Guavate', 'Stream', 'Puerto Rico', 'PU', 'Cayey', 'Patillas', 18.123016, -66.0701653, ST_GeomFromText('POINT(18.123016 -66.0701653)', 4326), 18.1160719, -66.0696097, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609475', 'Río Las Vacas', 'Stream', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.1296821, -66.7496192, ST_GeomFromText('POINT(18.1296821 -66.7496192)', 4326), 18.1227379, -66.7540637, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609476', 'Río Mayaguecilla', 'Stream', 'Puerto Rico', 'PU', 'Las Marías', 'San Sebastian', 18.2635646, -66.9693444, ST_GeomFromText('POINT(18.2635646 -66.9693444)', 4326), 18.2480096, -66.9782334, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609477', 'Río Mayaguecillo', 'Stream', 'Puerto Rico', 'PU', 'Las Marías', 'San Sebastian', 18.2632868, -66.9696222, ST_GeomFromText('POINT(18.2632868 -66.9696222)', 4326), 18.2113444, -66.9782334, '2000-01-01', NULL, 'Official', 'Board Decision', '1968-01-01'),
  ('1609489', 'Quebrada Aguas Largas', 'Valley', 'Puerto Rico', 'PU', 'Aibonito', 'Barranquitas', 18.1359605, -66.2995258, ST_GeomFromText('POINT(18.1359605 -66.2995258)', 4326), 18.1416901, -66.3353918, '1981-02-13', '2017-03-02', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1609495', 'Alcarraza', 'Island', 'Puerto Rico', 'PU', 'Culebra', 'Culebra OE W', 18.3610655, -65.3690484, ST_GeomFromText('POINT(18.3610655 -65.3690484)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1609500', 'Aljibe las Curias', 'Reservoir', 'Puerto Rico', 'PU', 'San Juan', 'Aguas Buenas', 18.3430058, -66.0507213, ST_GeomFromText('POINT(18.3430058 -66.0507213)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609507', 'Alto de la Bandera', 'Summit', 'Puerto Rico', 'PU', 'Yauco', 'Maricao', 18.1293602, -66.8904775, ST_GeomFromText('POINT(18.1293602 -66.8904775)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1609508', 'Alto del Descanso', 'Summit', 'Puerto Rico', 'PU', 'Maricao', 'Maricao', 18.1574549, -66.998941, ST_GeomFromText('POINT(18.1574549 -66.998941)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1609509', 'Alto Las Ovejas', 'Summit', 'Puerto Rico', 'PU', 'Dorado', 'Vega Alta', 18.4792602, -66.2691467, ST_GeomFromText('POINT(18.4792602 -66.2691467)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1609510', 'Altos de la Mesa', 'Range', 'Puerto Rico', 'PU', 'Caguas', 'Aguas Buenas', 18.2680108, -66.0603174, ST_GeomFromText('POINT(18.2680108 -66.0603174)', 4326), NULL, NULL, '1981-02-13', '2018-03-22', NULL, NULL, NULL),
  ('1609511', 'Altos de San Luis', 'Range', 'Puerto Rico', 'PU', 'Caguas', 'Aguas Buenas', 18.268257, -66.0267764, ST_GeomFromText('POINT(18.268257 -66.0267764)', 4326), NULL, NULL, '1981-02-13', '2018-03-22', NULL, NULL, NULL),
  ('1609516', 'Anclaje Isabela', 'Bay', 'Puerto Rico', 'PU', 'Mayagüez', 'Isla de Mona', 18.0771783, -67.9385198, ST_GeomFromText('POINT(18.0771783 -67.9385198)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1970-01-01'),
  ('1609517', 'Anclaje Sardinera', 'Bay', 'Puerto Rico', 'PU', 'Mayagüez', 'Isla de Mona', 18.0896778, -67.9412977, ST_GeomFromText('POINT(18.0896778 -67.9412977)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1970-01-01'),
  ('1609554', 'Arroyo Cajul', 'Valley', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Cabo Rojo', 17.9653815, -67.135862, ST_GeomFromText('POINT(17.9653815 -67.135862)', 4326), 17.9927359, -67.1103587, '1981-02-13', '2017-02-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1609559', 'Bahía de Almodóvar', 'Bay', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.298012, -65.2551566, ST_GeomFromText('POINT(18.298012 -65.2551566)', 4326), NULL, NULL, '1981-02-13', '2011-04-29', 'Official', 'Board Decision', '1950-01-01'),
  ('1609560', 'Bahía de Fajardo', 'Bay', 'Puerto Rico', 'PU', 'Fajardo', 'Fajardo', 18.3405084, -65.6287726, ST_GeomFromText('POINT(18.3405084 -65.6287726)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609561', 'Bahía de Jauca', 'Bay', 'Puerto Rico', 'PU', 'Santa Isabel', 'Salinas', 17.9652444, -66.3615579, ST_GeomFromText('POINT(17.9652444 -66.3615579)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609562', 'Bahía de Puerca', 'Bay', 'Puerto Rico', 'PU', 'Ceiba', 'Isla De Vieques West', 18.2244026, -65.6004386, ST_GeomFromText('POINT(18.2244026 -65.6004386)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609563', 'Bahía de Puerto Nuevo', 'Bay', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.432169, -66.1071106, ST_GeomFromText('POINT(18.432169 -66.1071106)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609564', 'Bahía Tallaboa', 'Bay', 'Puerto Rico', 'PU', 'Guayanilla', 'Punta Cucharas', 17.985522, -66.7335079, ST_GeomFromText('POINT(17.985522 -66.7335079)', 4326), NULL, NULL, '1981-02-13', '2015-08-10', NULL, NULL, NULL),
  ('1609565', 'Bahía de Toa', 'Bay', 'Puerto Rico', 'PU', 'Toa Baja', 'Bayamon', 18.4691117, -66.1918337, ST_GeomFromText('POINT(18.4691117 -66.1918337)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609566', 'Bahía Algodones', 'Bay', 'Puerto Rico', 'PU', 'Naguabo', 'Naguabo', 18.1902368, -65.6946058, ST_GeomFromText('POINT(18.1902368 -65.6946058)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609567', 'Bahía Bramadero', 'Bay', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Mayaguez', 18.1480125, -67.1829579, ST_GeomFromText('POINT(18.1480125 -67.1829579)', 4326), NULL, NULL, '1981-02-13', '2011-04-29', 'Official', 'Board Decision', '1958-01-01'),
  ('1609568', 'Bahía de Aguadilla', 'Bay', 'Puerto Rico', 'PU', 'Aguadilla', 'Aguadilla', 18.4313339, -67.1690698, ST_GeomFromText('POINT(18.4313339 -67.1690698)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1609569', 'Bahía de Añasco', 'Bay', 'Puerto Rico', 'PU', 'Añasco', 'Rincon', 18.2813398, -67.1996254, ST_GeomFromText('POINT(18.2813398 -67.1996254)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609570', 'Bahía de Boquerón', 'Bay', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.0188515, -67.1912907, ST_GeomFromText('POINT(18.0188515 -67.1912907)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609572', 'Bahía Guayanilla', 'Bay', 'Puerto Rico', 'PU', 'Guayanilla', 'Punta Verraco', 17.9896885, -66.7746195, ST_GeomFromText('POINT(17.9896885 -66.7746195)', 4326), NULL, NULL, '1981-02-13', '2015-08-10', NULL, NULL, NULL),
  ('1609573', 'Bahía de Jobos', 'Bay', 'Puerto Rico', 'PU', 'Guayama', 'Central Aguirre', 17.9480229, -66.2079448, ST_GeomFromText('POINT(17.9480229 -66.2079448)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609574', 'Bahía de Mayagüez', 'Bay', 'Puerto Rico', 'PU', 'Mayagüez', 'Mayaguez', 18.2021768, -67.1621242, ST_GeomFromText('POINT(18.2021768 -67.1621242)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609575', 'Bahía de San Juan', 'Bay', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.4480014, -66.1079439, ST_GeomFromText('POINT(18.4480014 -66.1079439)', 4326), NULL, NULL, '1981-02-13', '2006-09-19', NULL, NULL, NULL),
  ('1609576', 'Bahía Demajagua', 'Bay', 'Puerto Rico', 'PU', 'Fajardo', 'Fajardo', 18.2882885, -65.6301615, ST_GeomFromText('POINT(18.2882885 -65.6301615)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609577', 'Bahía Fanduca', 'Bay', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East OE S', 18.1149643, -65.340991, ST_GeomFromText('POINT(18.1149643 -65.340991)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609578', 'Bahía Flamenco', 'Bay', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3313444, -65.3162695, ST_GeomFromText('POINT(18.3313444 -65.3162695)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1609579', 'Bahía Fosforescénte', 'Bay', 'Puerto Rico', 'PU', 'Lajas', 'Parguera', 17.972188, -67.014066, ST_GeomFromText('POINT(17.972188 -67.014066)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1609580', 'Bahía Lima', 'Bay', 'Puerto Rico', 'PU', 'Naguabo', 'Naguabo', 18.1824594, -65.6987724, ST_GeomFromText('POINT(18.1824594 -65.6987724)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609581', 'Bahía Montalva', 'Bay', 'Puerto Rico', 'PU', 'Lajas', 'Guanica', 17.9657995, -66.9926768, ST_GeomFromText('POINT(17.9657995 -66.9926768)', 4326), NULL, NULL, '1981-02-13', '2015-08-10', NULL, NULL, NULL),
  ('1609582', 'Bahía Mosquito', 'Bay', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.2938455, -65.267657, ST_GeomFromText('POINT(18.2938455 -65.267657)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1609583', 'Bahía Noroeste', 'Bay', 'Puerto Rico', 'PU', 'Guánica', 'Guanica', 17.9694109, -66.9248983, ST_GeomFromText('POINT(17.9694109 -66.9248983)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609584', 'Bahía Tamarindo', 'Bay', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3174559, -65.3204361, ST_GeomFromText('POINT(18.3174559 -65.3204361)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609585', 'Bahía Yoye', 'Bay', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East OE S', 18.1180198, -65.3373799, ST_GeomFromText('POINT(18.1180198 -65.3373799)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609599', 'Balneario de Arroyo', 'Beach', 'Puerto Rico', 'PU', 'Arroyo', 'Guayama', 17.9621896, -66.0390529, ST_GeomFromText('POINT(17.9621896 -66.0390529)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609600', 'Balneario Isla Verde', 'Beach', 'Puerto Rico', 'PU', 'Carolina', 'Carolina', 18.4488345, -65.9990541, ST_GeomFromText('POINT(18.4488345 -65.9990541)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609601', 'Balneario Luquillo', 'Beach', 'Puerto Rico', 'PU', 'Luquillo', 'Fajardo OE N', 18.38495, -65.7301626, ST_GeomFromText('POINT(18.38495 -65.7301626)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609602', 'Balneario Público de Humacao', 'Beach', 'Puerto Rico', 'PU', 'Humacao', 'Humacao', 18.1549609, -65.762384, ST_GeomFromText('POINT(18.1549609 -65.762384)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1609631', 'Boca de La Zanja', 'Lake', 'Puerto Rico', 'PU', 'Aguada', 'Aguadilla', 18.3946012, -67.1914507, ST_GeomFromText('POINT(18.3946012 -67.1914507)', 4326), NULL, NULL, '1981-02-13', '2014-11-18', NULL, NULL, NULL),
  ('1609632', 'Boca del Cibuco', 'Bay', 'Puerto Rico', 'PU', 'Vega Baja', 'Manati', 18.4849446, -66.3807254, ST_GeomFromText('POINT(18.4849446 -66.3807254)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609635', 'Boca Prieta', 'Stream', 'Puerto Rico', 'PU', 'Humacao', 'Naguabo', 18.1688492, -65.7415505, ST_GeomFromText('POINT(18.1688492 -65.7415505)', 4326), 18.1721824, -65.7501618, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609636', 'Boca Prieta', 'Bay', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.04885, -67.1996244, ST_GeomFromText('POINT(18.04885 -67.1996244)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609646', 'Monte Britton', 'Summit', 'Puerto Rico', 'PU', 'Río Grande', 'El Yunque', 18.301008, -65.7932631, ST_GeomFromText('POINT(18.301008 -65.7932631)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1609661', 'Cabeza de Perro', 'Island', 'Puerto Rico', 'PU', 'Ceiba', 'Isla De Vieques West', 18.248013, -65.5779384, ST_GeomFromText('POINT(18.248013 -65.5779384)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609662', 'Cabeza de Perro', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3041229, -65.2446007, ST_GeomFromText('POINT(18.3041229 -65.2446007)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1609663', 'Cabeza Chiquita', 'Cape', 'Puerto Rico', 'PU', 'Fajardo', 'Fajardo OE N', 18.3805066, -65.6437727, ST_GeomFromText('POINT(18.3805066 -65.6437727)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609664', 'Cabezas de San Juan', 'Cape', 'Puerto Rico', 'PU', 'Fajardo', 'Cayo Icacos OE N', 18.38134, -65.6179393, ST_GeomFromText('POINT(18.38134 -65.6179393)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609665', 'Cabo del Pasaje', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3216225, -65.2218226, ST_GeomFromText('POINT(18.3216225 -65.2218226)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1609666', 'Cabo Barrionuevo', 'Cape', 'Puerto Rico', 'PU', 'Mayagüez', 'Isla de Mona', 18.1127325, -67.9315754, ST_GeomFromText('POINT(18.1127325 -67.9315754)', 4326), NULL, NULL, '1981-02-13', '2012-12-31', 'Official', 'Board Decision', '1970-01-01'),
  ('1609667', 'Cabo Mala Pascua', 'Cape', 'Puerto Rico', 'PU', 'Maunabo', 'Punta Tuna', 17.9752452, -65.9187735, ST_GeomFromText('POINT(17.9752452 -65.9187735)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609668', 'Cabo Noroeste', 'Cape', 'Puerto Rico', 'PU', 'Mayagüez', 'Isla de Mona', 18.1196768, -67.9087975, ST_GeomFromText('POINT(18.1196768 -67.9087975)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609669', 'Cabo Rojo', 'Cape', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Cabo Rojo', 17.9377439, -67.1896238, ST_GeomFromText('POINT(17.9377439 -67.1896238)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609671', 'Cabo San Juan', 'Cape', 'Puerto Rico', 'PU', 'Fajardo', 'Fajardo', 18.3666184, -65.6271059, ST_GeomFromText('POINT(18.3666184 -65.6271059)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609672', 'Cabra de Tierra', 'Cape', 'Puerto Rico', 'PU', 'Ceiba', 'Isla De Vieques West', 18.2110697, -65.6109943, ST_GeomFromText('POINT(18.2110697 -65.6109943)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609676', 'Caleta Parguera', 'Bay', 'Puerto Rico', 'PU', 'Lajas', 'Parguera', 17.9738542, -67.0612889, ST_GeomFromText('POINT(17.9738542 -67.0612889)', 4326), NULL, NULL, '1981-02-13', '2011-04-29', 'Official', 'Board Decision', '1958-01-01'),
  ('1609677', 'Caleta Salinas', 'Bay', 'Puerto Rico', 'PU', 'Guánica', 'Guanica', 17.9369122, -66.9565649, ST_GeomFromText('POINT(17.9369122 -66.9565649)', 4326), NULL, NULL, '1981-02-13', '2015-08-10', NULL, NULL, NULL),
  ('1609729', 'Caño de Quebrada Catalina', 'Stream', 'Puerto Rico', 'PU', 'Bayamón', 'Bayamon', 18.4077257, -66.1565556, ST_GeomFromText('POINT(18.4077257 -66.1565556)', 4326), 18.4052258, -66.1696114, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609730', 'Caño de Santi Ponce', 'Valley', 'Puerto Rico', 'PU', 'Aguada', 'Aguadilla', 18.3792816, -67.2243833, ST_GeomFromText('POINT(18.3792816 -67.2243833)', 4326), 18.3750646, -67.2229854, '1981-02-13', '2017-03-11', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1609731', 'Caño Aquas Frías', 'Stream', 'Puerto Rico', 'PU', 'Cataño', 'Bayamon', 18.4452237, -66.1548889, ST_GeomFromText('POINT(18.4452237 -66.1548889)', 4326), 18.4071702, -66.152389, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609732', 'Caño Boquilla', 'Stream', 'Puerto Rico', 'PU', 'Mayagüez', 'Rincon', 18.2513413, -67.1774025, ST_GeomFromText('POINT(18.2513413 -67.1774025)', 4326), 18.2310647, -67.1432352, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609733', 'Caño Cabo Caribe', 'Stream', 'Puerto Rico', 'PU', 'Vega Baja', 'Manati', 18.4838336, -66.3782254, ST_GeomFromText('POINT(18.4838336 -66.3782254)', 4326), 18.4438354, -66.3910033, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609734', 'Caño Campanero', 'Stream', 'Puerto Rico', 'PU', 'Toa Baja', 'Bayamon', 18.4152255, -66.2496126, ST_GeomFromText('POINT(18.4152255 -66.2496126)', 4326), 18.4027261, -66.2493348, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609735', 'Caño Carrasco', 'Stream', 'Puerto Rico', 'PU', 'Loíza', 'Carolina', 18.401059, -65.9093313, ST_GeomFromText('POINT(18.401059 -65.9093313)', 4326), 18.3902262, -65.9026646, '1981-02-13', '2017-03-13', NULL, NULL, NULL),
  ('1609737', 'Caño Echevarria', 'Valley', 'Puerto Rico', 'PU', 'Moca', 'Central La Plata', 18.3614391, -67.0949747, ST_GeomFromText('POINT(18.3614391 -67.0949747)', 4326), 18.3684257, -67.0902135, '1981-02-13', '2017-02-22', NULL, NULL, NULL),
  ('1609739', 'Caño Gallardo', 'Stream', 'Puerto Rico', 'PU', 'Loíza', 'Carolina', 18.4205026, -65.8879422, ST_GeomFromText('POINT(18.4205026 -65.8879422)', 4326), 18.4043923, -65.8698865, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609740', 'Caño García', 'Stream', 'Puerto Rico', 'PU', 'Rincón', 'Rincon', 18.3077269, -67.2401809, ST_GeomFromText('POINT(18.3077269 -67.2401809)', 4326), 18.3060607, -67.2249033, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609741', 'Caño La Puente', 'Stream', 'Puerto Rico', 'PU', 'Añasco', 'Rincon', 18.2721737, -67.1882362, ST_GeomFromText('POINT(18.2721737 -67.1882362)', 4326), 18.2807845, -67.174625, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609742', 'Caño Las Pozas', 'Stream', 'Puerto Rico', 'PU', 'Vega Baja', 'Manati', 18.4824447, -66.3810032, ST_GeomFromText('POINT(18.4824447 -66.3810032)', 4326), 18.4580014, -66.3935033, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1609744', 'Caño Media Luna', 'Valley', 'Puerto Rico', 'PU', 'Aguadilla', 'Aguadilla', 18.4013508, -67.1405322, ST_GeomFromText('POINT(18.4013508 -67.1405322)', 4326), 18.4061176, -67.1389162, '1981-02-13', '2017-02-14', NULL, NULL, NULL),
  ('1609745', 'Caño Merle', 'Stream', 'Puerto Rico', 'PU', 'Mayagüez', 'Mayaguez', 18.1799555, -67.1637909, ST_GeomFromText('POINT(18.1799555 -67.1637909)', 4326), 18.1682896, -67.138513, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609746', 'Caño Norberto', 'Stream', 'Puerto Rico', 'PU', 'Loíza', 'Carolina', 18.4041144, -65.9073869, ST_GeomFromText('POINT(18.4041144 -65.9073869)', 4326), 18.399948, -65.8959979, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609747', 'Caño Palúdica', 'Stream', 'Puerto Rico', 'PU', 'Loíza', 'Carolina', 18.4246691, -65.8907201, ST_GeomFromText('POINT(18.4246691 -65.8907201)', 4326), 18.4096699, -65.8698865, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609748', 'Caño Rodríguez', 'Stream', 'Puerto Rico', 'PU', 'Río Grande', 'Rio Grande', 18.4049484, -65.7959968, ST_GeomFromText('POINT(18.4049484 -65.7959968)', 4326), 18.3846719, -65.7698853, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609750', 'Caño San Isidro', 'Stream', 'Puerto Rico', 'PU', 'Loíza', 'Carolina', 18.4118919, -65.8959979, ST_GeomFromText('POINT(18.4118919 -65.8959979)', 4326), 18.3641164, -65.881553, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609754', 'Caño Zequeira', 'Stream', 'Puerto Rico', 'PU', 'Loíza', 'Carolina', 18.4135585, -65.899609, ST_GeomFromText('POINT(18.4135585 -65.899609)', 4326), 18.4107809, -65.8840533, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609755', 'Cañón de San Cristóbal', 'Valley', 'Puerto Rico', 'PU', 'Barranquitas', 'Barranquitas', 18.1694029, -66.2917588, ST_GeomFromText('POINT(18.1694029 -66.2917588)', 4326), 18.1605587, -66.3056605, '1981-02-13', '2017-02-15', NULL, NULL, NULL),
  ('1609807', 'Cayo Ahogado', 'Island', 'Puerto Rico', 'PU', 'Fajardo', 'Cayo Icacos', 18.3224536, -65.619328, ST_GeomFromText('POINT(18.3224536 -65.619328)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609808', 'Cayo Algodones', 'Island', 'Puerto Rico', 'PU', 'Naguabo', 'Naguabo', 18.1927368, -65.6834948, ST_GeomFromText('POINT(18.1927368 -65.6834948)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1609809', 'Cayo Arenas', 'Island', 'Puerto Rico', 'PU', 'Ponce', 'Punta Cucharas', 17.95969, -66.6740625, ST_GeomFromText('POINT(17.95969 -66.6740625)', 4326), NULL, NULL, '1981-02-13', '2015-08-10', NULL, NULL, NULL),
  ('1609810', 'Cayo Batata', 'Island', 'Puerto Rico', 'PU', 'Humacao', 'Punta Guayanes', 18.1155183, -65.7712725, ST_GeomFromText('POINT(18.1155183 -65.7712725)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609811', 'Cayo Bayo', 'Island', 'Puerto Rico', 'PU', 'Lajas', 'Parguera', 17.9713543, -67.0610111, ST_GeomFromText('POINT(17.9713543 -67.0610111)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609812', 'Cayo Berbería', 'Island', 'Puerto Rico', 'PU', 'Juana Díaz', 'Santa Isabel', 17.9285789, -66.4568368, ST_GeomFromText('POINT(17.9285789 -66.4568368)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609813', 'Cayo Cabritas', 'Island', 'Puerto Rico', 'PU', 'Ceiba', 'Isla De Vieques West', 18.2207916, -65.6015497, ST_GeomFromText('POINT(18.2207916 -65.6015497)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609814', 'Cayo Caracoles', 'Island', 'Puerto Rico', 'PU', 'Lajas', 'Parguera', 17.959966, -67.0382329, ST_GeomFromText('POINT(17.959966 -67.0382329)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609815', 'Cayo Caribe', 'Island', 'Puerto Rico', 'PU', 'Peñuelas', 'Punta Cucharas', 17.9699672, -66.7326745, ST_GeomFromText('POINT(17.9699672 -66.7326745)', 4326), NULL, NULL, '1981-02-13', '2015-08-10', NULL, NULL, NULL),
  ('1609816', 'Cayo Collado', 'Island', 'Puerto Rico', 'PU', 'Lajas', 'Parguera', 17.9624659, -67.0354551, ST_GeomFromText('POINT(17.9624659 -67.0354551)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609817', 'Cayo Diablo', 'Island', 'Puerto Rico', 'PU', 'Fajardo', 'Cayo Icacos', 18.362453, -65.5312721, ST_GeomFromText('POINT(18.362453 -65.5312721)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609818', 'Cayo Don Luis', 'Island', 'Puerto Rico', 'PU', 'Guánica', 'Guanica', 17.9438562, -66.9715652, ST_GeomFromText('POINT(17.9438562 -66.9715652)', 4326), NULL, NULL, '1981-02-13', '2015-08-10', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1609819', 'Cayo Enrique', 'Island', 'Puerto Rico', 'PU', 'Lajas', 'Parguera', 17.9532996, -67.0465663, ST_GeomFromText('POINT(17.9532996 -67.0465663)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609820', 'Cayo Jalova', 'Island', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.1185753, -65.358769, ST_GeomFromText('POINT(18.1185753 -65.358769)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609821', 'Cayo Jalovita', 'Island', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.1157977, -65.3546022, ST_GeomFromText('POINT(18.1157977 -65.3546022)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609822', 'Cayo Largo', 'Island', 'Puerto Rico', 'PU', 'Fajardo', 'Cayo Icacos', 18.3152319, -65.5784944, ST_GeomFromText('POINT(18.3152319 -65.5784944)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609823', 'Cayo Lobos', 'Island', 'Puerto Rico', 'PU', 'Fajardo', 'Cayo Icacos OE N', 18.3774518, -65.5698836, ST_GeomFromText('POINT(18.3774518 -65.5698836)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609824', 'Cayo Mata', 'Island', 'Puerto Rico', 'PU', 'Salinas', 'Salinas', 17.9530226, -66.2943349, ST_GeomFromText('POINT(17.9530226 -66.2943349)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609825', 'Cayo Mata', 'Island', 'Puerto Rico', 'PU', 'Guayanilla', 'Punta Verraco', 17.9891329, -66.7635083, ST_GeomFromText('POINT(17.9891329 -66.7635083)', 4326), NULL, NULL, '1981-02-13', '2015-08-10', NULL, NULL, NULL),
  ('1609826', 'Cayo Morrillo', 'Island', 'Puerto Rico', 'PU', 'Salinas', 'Salinas', 17.9269127, -66.2729457, ST_GeomFromText('POINT(17.9269127 -66.2729457)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609827', 'Cayo Palomas', 'Island', 'Puerto Rico', 'PU', 'Peñuelas', 'Punta Cucharas', 17.9746892, -66.7487859, ST_GeomFromText('POINT(17.9746892 -66.7487859)', 4326), NULL, NULL, '1981-02-13', '2015-08-10', NULL, NULL, NULL),
  ('1609828', 'Cayo Parguera', 'Island', 'Puerto Rico', 'PU', 'Peñuelas', 'Punta Cucharas', 17.978578, -66.7173966, ST_GeomFromText('POINT(17.978578 -66.7173966)', 4326), NULL, NULL, '1981-02-13', '2015-08-10', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1609829', 'Cayo Piñerito', 'Island', 'Puerto Rico', 'PU', 'Ceiba', 'Isla De Vieques West', 18.2449574, -65.5946053, ST_GeomFromText('POINT(18.2449574 -65.5946053)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609830', 'Cayo Ratones', 'Island', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.1169028, -67.1882356, ST_GeomFromText('POINT(18.1169028 -67.1882356)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609831', 'Cayo Ratones', 'Island', 'Puerto Rico', 'PU', 'Fajardo', 'Cayo Icacos OE N', 18.3824514, -65.5801615, ST_GeomFromText('POINT(18.3824514 -65.5801615)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609832', 'Cayo Santiago', 'Island', 'Puerto Rico', 'PU', 'Humacao', 'Naguabo', 18.1563499, -65.7340503, ST_GeomFromText('POINT(18.1563499 -65.7340503)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609833', 'Cayo Vieques', 'Island', 'Puerto Rico', 'PU', 'Lajas', 'Parguera', 17.9641322, -67.0707334, ST_GeomFromText('POINT(17.9641322 -67.0707334)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609834', 'Cayos de Barca', 'Island', 'Puerto Rico', 'PU', 'Salinas', 'Central Aguirre', 17.9163575, -66.2396118, ST_GeomFromText('POINT(17.9163575 -66.2396118)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609835', 'Cayos de Caña Gorda', 'Island', 'Puerto Rico', 'PU', 'Guánica', 'Punta Verraco', 17.9421902, -66.8712865, ST_GeomFromText('POINT(17.9421902 -66.8712865)', 4326), NULL, NULL, '1981-02-13', '2015-08-10', NULL, NULL, NULL),
  ('1609836', 'Cayos de Pájaros', 'Island', 'Puerto Rico', 'PU', 'Salinas', 'Salinas', 17.9233017, -66.2610011, ST_GeomFromText('POINT(17.9233017 -66.2610011)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609837', 'Cayos de Ratones', 'Island', 'Puerto Rico', 'PU', 'Salinas', 'Salinas', 17.9349678, -66.2926683, ST_GeomFromText('POINT(17.9349678 -66.2926683)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1609889', 'Cerro de la Bandera', 'Summit', 'Puerto Rico', 'PU', 'Manatí', 'Ciales', 18.3717355, -66.463289, ST_GeomFromText('POINT(18.3717355 -66.463289)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1609890', 'Cerro de la Bandera', 'Summit', 'Puerto Rico', 'PU', 'Isabela', 'Quebradillas', 18.3976001, -66.98332, ST_GeomFromText('POINT(18.3976001 -66.98332)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1609891', 'Cerro de la Candelaria', 'Summit', 'Puerto Rico', 'PU', 'San Germán', 'Rosario', 18.1473609, -67.0196245, ST_GeomFromText('POINT(18.1473609 -67.0196245)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1609892', 'Cerro de la Tabla', 'Summit', 'Puerto Rico', 'PU', 'Guayama', 'Cayey', 18.0516068, -66.1251045, ST_GeomFromText('POINT(18.0516068 -66.1251045)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1609893', 'Cerro de las Avispas', 'Summit', 'Puerto Rico', 'PU', 'Patillas', 'Yabucoa', 18.0175567, -65.973093, ST_GeomFromText('POINT(18.0175567 -65.973093)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1609894', 'Cerro de las Avispas', 'Summit', 'Puerto Rico', 'PU', 'Guayanilla', 'Yauco', 18.0950194, -66.806076, ST_GeomFromText('POINT(18.0950194 -66.806076)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1609895', 'Cerro de las Cuevas', 'Summit', 'Puerto Rico', 'PU', 'Lajas', 'San German', 18.0544886, -67.0183327, ST_GeomFromText('POINT(18.0544886 -67.0183327)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1609896', 'Cerro de las Cuevas', 'Summit', 'Puerto Rico', 'PU', 'Villalba', 'Rio Descalabrado', 18.0851958, -66.4653246, ST_GeomFromText('POINT(18.0851958 -66.4653246)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1609897', 'Cerro de las Velas', 'Summit', 'Puerto Rico', 'PU', 'Moca', 'Central La Plata', 18.3174067, -67.0496238, ST_GeomFromText('POINT(18.3174067 -67.0496238)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1609898', 'Cerro de los Bonelli', 'Summit', 'Puerto Rico', 'PU', 'Sabana Grande', 'Sabana Grande', 18.0528521, -66.957893, ST_GeomFromText('POINT(18.0528521 -66.957893)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1609899', 'Cerro de los Cielos', 'Summit', 'Puerto Rico', 'PU', 'Salinas', 'Cayey', 18.0546007, -66.2254028, ST_GeomFromText('POINT(18.0546007 -66.2254028)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1609900', 'Cerro de Abra', 'Ridge', 'Puerto Rico', 'PU', 'Guánica', 'Guanica', 17.9765359, -66.9225406, ST_GeomFromText('POINT(17.9765359 -66.9225406)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', 'Official', 'Board Decision', '1967-01-01'),
  ('1609901', 'Cerro de las Cuevas', 'Summit', 'Puerto Rico', 'PU', 'Santa Isabel', 'Coamo', 18.0269194, -66.3559022, ST_GeomFromText('POINT(18.0269194 -66.3559022)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1609902', 'Cerro de Las Mulas', 'Summit', 'Puerto Rico', 'PU', 'Maricao', 'Maricao', 18.1869189, -66.8789597, ST_GeomFromText('POINT(18.1869189 -66.8789597)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1609903', 'Cerro de la Mesa', 'Ridge', 'Puerto Rico', 'PU', 'Coamo', 'Coamo', 18.0911753, -66.2807065, ST_GeomFromText('POINT(18.0911753 -66.2807065)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1609904', 'Cerro de Nuestra Madre', 'Summit', 'Puerto Rico', 'PU', 'Patillas', 'Patillas', 18.102953, -66.0226448, ST_GeomFromText('POINT(18.102953 -66.0226448)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1609905', 'Cerro de Punta', 'Summit', 'Puerto Rico', 'PU', 'Jayuya', 'Jayuya', 18.172281, -66.5916862, ST_GeomFromText('POINT(18.172281 -66.5916862)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1609906', 'Cerro de Vergara', 'Summit', 'Puerto Rico', 'PU', 'Bayamón', 'Naranjito', 18.3144108, -66.1543873, ST_GeomFromText('POINT(18.3144108 -66.1543873)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1609907', 'Cerro del Cabro', 'Summit', 'Puerto Rico', 'PU', 'Yabucoa', 'Patillas', 18.0731224, -66.0079628, ST_GeomFromText('POINT(18.0731224 -66.0079628)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1609908', 'Cerro del Chícharo', 'Summit', 'Puerto Rico', 'PU', 'Aguas Buenas', 'Naranjito', 18.2766583, -66.1305525, ST_GeomFromText('POINT(18.2766583 -66.1305525)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1609909', 'Cerro del Diablo', 'Summit', 'Puerto Rico', 'PU', 'Ponce', 'Penuelas', 18.1033733, -66.6347896, ST_GeomFromText('POINT(18.1033733 -66.6347896)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1609910', 'Cerro del Faro', 'Summit', 'Puerto Rico', 'PU', 'Vega Baja', 'Manati', 18.4110359, -66.4090584, ST_GeomFromText('POINT(18.4110359 -66.4090584)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1609911', 'Cerro del Indio', 'Summit', 'Puerto Rico', 'PU', 'Isabela', 'Quebradillas', 18.3851283, -66.9676581, ST_GeomFromText('POINT(18.3851283 -66.9676581)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1609912', 'Cerro del Muerto', 'Summit', 'Puerto Rico', 'PU', 'Santa Isabel', 'Rio Descalabrado', 18.0083768, -66.4050011, ST_GeomFromText('POINT(18.0083768 -66.4050011)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1609913', 'Cerro la Cuchilla', 'Summit', 'Puerto Rico', 'PU', 'Naguabo', 'Humacao', 18.2203342, -65.7975144, ST_GeomFromText('POINT(18.2203342 -65.7975144)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1609914', 'Cerro Algarrobo', 'Summit', 'Puerto Rico', 'PU', 'Lajas', 'San German', 18.0580555, -67.0049873, ST_GeomFromText('POINT(18.0580555 -67.0049873)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1609915', 'Cerro Algódon', 'Summit', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.0435699, -67.1805005, ST_GeomFromText('POINT(18.0435699 -67.1805005)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1609916', 'Cerro Almirante', 'Summit', 'Puerto Rico', 'PU', 'Cidra', 'Comerio', 18.1807476, -66.1982245, ST_GeomFromText('POINT(18.1807476 -66.1982245)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1609917', 'Cerro Alto', 'Summit', 'Puerto Rico', 'PU', 'Isabela', 'Quebradillas', 18.4795685, -66.9553711, ST_GeomFromText('POINT(18.4795685 -66.9553711)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1609918', 'Cerro Amoldadero', 'Summit', 'Puerto Rico', 'PU', 'Aibonito', 'Comerio', 18.1685743, -66.2376707, ST_GeomFromText('POINT(18.1685743 -66.2376707)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1609919', 'Cerro Augustinillo', 'Summit', 'Puerto Rico', 'PU', 'Ponce', 'Ponce', 18.1009554, -66.5508096, ST_GeomFromText('POINT(18.1009554 -66.5508096)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1609920', 'Cerro Avispa', 'Summit', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.2050681, -66.8191103, ST_GeomFromText('POINT(18.2050681 -66.8191103)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1609921', 'Cerro Avispa', 'Summit', 'Puerto Rico', 'PU', 'Morovis', 'Ciales', 18.2888494, -66.4363802, ST_GeomFromText('POINT(18.2888494 -66.4363802)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1609922', 'Cerro Avispa', 'Summit', 'Puerto Rico', 'PU', 'Cayey', 'Cayey', 18.0785703, -66.1918353, ST_GeomFromText('POINT(18.0785703 -66.1918353)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1609923', 'Cerro Avispa', 'Summit', 'Puerto Rico', 'PU', 'Naranjito', 'Naranjito', 18.2829247, -66.2192718, ST_GeomFromText('POINT(18.2829247 -66.2192718)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1609924', 'Cerro Balcón', 'Summit', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3162679, -65.2659923, ST_GeomFromText('POINT(18.3162679 -65.2659923)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', 'Official', 'Board Decision', '1950-01-01'),
  ('1609925', 'Cerro Bartolo', 'Summit', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.1507488, -66.7515437, ST_GeomFromText('POINT(18.1507488 -66.7515437)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1609926', 'Cerro Boca del Infierno', 'Summit', 'Puerto Rico', 'PU', 'Arroyo', 'Patillas', 18.0054978, -66.0520035, ST_GeomFromText('POINT(18.0054978 -66.0520035)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1609927', 'Cerro Bravo', 'Summit', 'Puerto Rico', 'PU', 'Río Grande', 'Rio Grande', 18.3920871, -65.7850793, ST_GeomFromText('POINT(18.3920871 -65.7850793)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1609928', 'Cerro Buena Vista', 'Summit', 'Puerto Rico', 'PU', 'Cabo Rojo', 'San German', 18.0736505, -67.1237497, ST_GeomFromText('POINT(18.0736505 -67.1237497)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1609929', 'Cerro Candelero', 'Summit', 'Puerto Rico', 'PU', 'Humacao', 'Punta Guayanes', 18.1094981, -65.8366601, ST_GeomFromText('POINT(18.1094981 -65.8366601)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1609930', 'Cerro Candiles', 'Summit', 'Puerto Rico', 'PU', 'Guayanilla', 'Yauco', 18.0445072, -66.8127416, ST_GeomFromText('POINT(18.0445072 -66.8127416)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1609931', 'Cerro Canta Gallo', 'Summit', 'Puerto Rico', 'PU', 'Añasco', 'Rincon', 18.3128822, -67.1826632, ST_GeomFromText('POINT(18.3128822 -67.1826632)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1609932', 'Cerro Caprón', 'Summit', 'Puerto Rico', 'PU', 'Guánica', 'Guanica', 17.960675, -66.9023554, ST_GeomFromText('POINT(17.960675 -66.9023554)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1609933', 'Cerro Cariblanco', 'Summit', 'Puerto Rico', 'PU', 'Salinas', 'Coamo', 18.0548689, -66.2897159, ST_GeomFromText('POINT(18.0548689 -66.2897159)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1609934', 'Cerro Cascajillo', 'Summit', 'Puerto Rico', 'PU', 'San Sebastián', 'Central La Plata', 18.3041352, -67.0390036, ST_GeomFromText('POINT(18.3041352 -67.0390036)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1609935', 'Cerro Cayures', 'Summit', 'Puerto Rico', 'PU', 'Aguada', 'Aguadilla', 18.3777055, -67.1675545, ST_GeomFromText('POINT(18.3777055 -67.1675545)', 4326), NULL, NULL, '1981-02-13', '2018-03-23', NULL, NULL, NULL),
  ('1609936', 'Cerro Cedro', 'Summit', 'Puerto Rico', 'PU', 'Ciales', 'Ciales', 18.2585016, -66.4714344, ST_GeomFromText('POINT(18.2585016 -66.4714344)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1609937', 'Cerro Charcas', 'Summit', 'Puerto Rico', 'PU', 'Guayama', 'Cayey', 18.0031484, -66.1521746, ST_GeomFromText('POINT(18.0031484 -66.1521746)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1609938', 'Cerro Cibuco', 'Summit', 'Puerto Rico', 'PU', 'Vega Baja', 'Vega Alta', 18.483614, -66.3723668, ST_GeomFromText('POINT(18.483614 -66.3723668)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1609939', 'Cerro Collores', 'Summit', 'Puerto Rico', 'PU', 'Las Piedras', 'Humacao', 18.1909978, -65.8381154, ST_GeomFromText('POINT(18.1909978 -65.8381154)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1609940', 'Cerro Conde Ávila', 'Summit', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.1045842, -67.1646683, ST_GeomFromText('POINT(18.1045842 -67.1646683)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1609941', 'Cerro Cornelia', 'Summit', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Mayaguez', 18.1620203, -67.1774037, ST_GeomFromText('POINT(18.1620203 -67.1774037)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1609942', 'Cerro Corozal', 'Summit', 'Puerto Rico', 'PU', 'Ceiba', 'Fajardo', 18.2783674, -65.6698238, ST_GeomFromText('POINT(18.2783674 -65.6698238)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1609943', 'Cerro Curet', 'Summit', 'Puerto Rico', 'PU', 'Yauco', 'Yauco', 18.1130742, -66.8185333, ST_GeomFromText('POINT(18.1130742 -66.8185333)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1609944', 'Cerro Dagüey', 'Summit', 'Puerto Rico', 'PU', 'Añasco', 'Rincon', 18.3054217, -67.134006, ST_GeomFromText('POINT(18.3054217 -67.134006)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1609945', 'Cerro Don Quiño', 'Summit', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.1978745, -66.774621, ST_GeomFromText('POINT(18.1978745 -66.774621)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1609946', 'Cerro Doña Juana', 'Summit', 'Puerto Rico', 'PU', 'Orocovis', 'Orocovis', 18.1717164, -66.4809017, ST_GeomFromText('POINT(18.1717164 -66.4809017)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1609947', 'Cerro El Alto', 'Summit', 'Puerto Rico', 'PU', 'Guayanilla', 'Yauco', 18.0685299, -66.8173363, ST_GeomFromText('POINT(18.0685299 -66.8173363)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1609948', 'Cerro El Asomante', 'Summit', 'Puerto Rico', 'PU', 'Las Piedras', 'Humacao', 18.1392467, -65.870632, ST_GeomFromText('POINT(18.1392467 -65.870632)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1609949', 'Cerro El Bolo', 'Summit', 'Puerto Rico', 'PU', 'Villalba', 'Orocovis', 18.1669332, -66.4962429, ST_GeomFromText('POINT(18.1669332 -66.4962429)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1609950', 'Cerro El Gato', 'Summit', 'Puerto Rico', 'PU', 'Ponce', 'Ponce', 18.0534966, -66.6097306, ST_GeomFromText('POINT(18.0534966 -66.6097306)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1609951', 'Cerro El Gato', 'Summit', 'Puerto Rico', 'PU', 'Ciales', 'Ciales', 18.2513815, -66.4633787, ST_GeomFromText('POINT(18.2513815 -66.4633787)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1609952', 'Cerro El Gigante', 'Summit', 'Puerto Rico', 'PU', 'Adjuntas', 'Adjuntas', 18.1409454, -66.7290862, ST_GeomFromText('POINT(18.1409454 -66.7290862)', 4326), NULL, NULL, '1981-02-13', '2018-03-23', NULL, NULL, NULL),
  ('1609953', 'Cerro El Indio', 'Summit', 'Puerto Rico', 'PU', 'Aibonito', 'Comerio', 18.1487966, -66.2450408, ST_GeomFromText('POINT(18.1487966 -66.2450408)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1609954', 'Cerro El Malo', 'Summit', 'Puerto Rico', 'PU', 'Orocovis', 'Orocovis', 18.1736276, -66.4204931, ST_GeomFromText('POINT(18.1736276 -66.4204931)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1609955', 'Cerro El Peligro', 'Summit', 'Puerto Rico', 'PU', 'Peñuelas', 'Yauco', 18.0936512, -66.7676135, ST_GeomFromText('POINT(18.0936512 -66.7676135)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1609956', 'Cerro El Pico', 'Summit', 'Puerto Rico', 'PU', 'Coamo', 'Barranquitas', 18.1368605, -66.33094, ST_GeomFromText('POINT(18.1368605 -66.33094)', 4326), NULL, NULL, '1981-02-13', '2018-03-23', NULL, NULL, NULL),
  ('1609957', 'Cerro El Retiro', 'Summit', 'Puerto Rico', 'PU', 'San Germán', 'San German', 18.0611517, -67.0267795, ST_GeomFromText('POINT(18.0611517 -67.0267795)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1609958', 'Cerro El Sombrero', 'Summit', 'Puerto Rico', 'PU', 'Isabela', 'Moca', 18.3943075, -67.0045602, ST_GeomFromText('POINT(18.3943075 -67.0045602)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1609959', 'Cerro Farallón', 'Summit', 'Puerto Rico', 'PU', 'Barranquitas', 'Barranquitas', 18.2388439, -66.3065393, ST_GeomFromText('POINT(18.2388439 -66.3065393)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1609960', 'Cerro Franchón', 'Summit', 'Puerto Rico', 'PU', 'Sabana Grande', 'Sabana Grande', 18.0493024, -66.9451354, ST_GeomFromText('POINT(18.0493024 -66.9451354)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1609961', 'Cerro Garau', 'Summit', 'Puerto Rico', 'PU', 'Guayama', 'Cayey', 18.0202597, -66.1775397, ST_GeomFromText('POINT(18.0202597 -66.1775397)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1609962', 'Cerro Garrote', 'Summit', 'Puerto Rico', 'PU', 'Peñuelas', 'Penuelas', 18.1244046, -66.6998963, ST_GeomFromText('POINT(18.1244046 -66.6998963)', 4326), NULL, NULL, '2000-01-01', '2025-02-12', NULL, NULL, NULL),
  ('1609963', 'Cerro Garzas', 'Summit', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.1710461, -66.7502836, ST_GeomFromText('POINT(18.1710461 -66.7502836)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1609964', 'Cerro Goden', 'Summit', 'Puerto Rico', 'PU', 'Las Marías', 'Central La Plata', 18.2508246, -67.048919, ST_GeomFromText('POINT(18.2508246 -67.048919)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1609967', 'Cerro Gordo', 'Summit', 'Puerto Rico', 'PU', 'Cidra', 'Comerio', 18.157117, -66.2024556, ST_GeomFromText('POINT(18.157117 -66.2024556)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1609968', 'Cerro Gordo', 'Summit', 'Puerto Rico', 'PU', 'Ciales', 'Florida', 18.2937038, -66.502032, ST_GeomFromText('POINT(18.2937038 -66.502032)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1609969', 'Cerro Gordo', 'Summit', 'Puerto Rico', 'PU', 'Añasco', 'Central La Plata', 18.2960465, -67.0902382, ST_GeomFromText('POINT(18.2960465 -67.0902382)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1609970', 'Cerro Gordo', 'Summit', 'Puerto Rico', 'PU', 'Carolina', 'Gurabo', 18.3330314, -65.9319401, ST_GeomFromText('POINT(18.3330314 -65.9319401)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1609971', 'Cerro Gordo', 'Summit', 'Puerto Rico', 'PU', 'Aguada', 'Rincon', 18.3378054, -67.1376378, ST_GeomFromText('POINT(18.3378054 -67.1376378)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1609972', 'Cerro Gozos', 'Summit', 'Puerto Rico', 'PU', 'Vega Alta', 'Vega Alta', 18.4706609, -66.3325282, ST_GeomFromText('POINT(18.4706609 -66.3325282)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1609973', 'Cerro Gregorio', 'Summit', 'Puerto Rico', 'PU', 'San Lorenzo', 'Caguas', 18.1492467, -66.0111222, ST_GeomFromText('POINT(18.1492467 -66.0111222)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1609974', 'Cerro Gritadero', 'Summit', 'Puerto Rico', 'PU', 'San Sebastián', 'Central La Plata', 18.3003489, -67.04073, ST_GeomFromText('POINT(18.3003489 -67.04073)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1609975', 'Cerro Guaniquilla', 'Summit', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.0434678, -67.2008442, ST_GeomFromText('POINT(18.0434678 -67.2008442)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1609976', 'Cerro Guarico', 'Summit', 'Puerto Rico', 'PU', 'Vega Baja', 'Manati', 18.467585, -66.4189965, ST_GeomFromText('POINT(18.467585 -66.4189965)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1609977', 'Cerro Herencia', 'Summit', 'Puerto Rico', 'PU', 'Las Marías', 'Maricao', 18.245344, -66.9539618, ST_GeomFromText('POINT(18.245344 -66.9539618)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1609978', 'Cerro Honoré', 'Summit', 'Puerto Rico', 'PU', 'Patillas', 'Patillas', 18.1038289, -66.0410062, ST_GeomFromText('POINT(18.1038289 -66.0410062)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1609979', 'Cerro Jobo Dulce', 'Summit', 'Puerto Rico', 'PU', 'Aibonito', 'Coamo', 18.0802649, -66.2530761, ST_GeomFromText('POINT(18.0802649 -66.2530761)', 4326), NULL, NULL, '1981-02-13', '2023-07-22', NULL, NULL, NULL),
  ('1609980', 'Cerro La Chorrera', 'Summit', 'Puerto Rico', 'PU', 'Adjuntas', 'Adjuntas', 18.2202716, -66.7381684, ST_GeomFromText('POINT(18.2202716 -66.7381684)', 4326), NULL, NULL, '1981-02-13', '2018-03-23', NULL, NULL, NULL),
  ('1609981', 'Cerro La Coroza', 'Summit', 'Puerto Rico', 'PU', 'Villalba', 'Rio Descalabrado', 18.1138749, -66.4684637, ST_GeomFromText('POINT(18.1138749 -66.4684637)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1609982', 'Cerro La Guánica', 'Summit', 'Puerto Rico', 'PU', 'Lajas', 'San German', 18.0396698, -67.001376, ST_GeomFromText('POINT(18.0396698 -67.001376)', 4326), NULL, NULL, '1981-02-13', '2018-03-23', NULL, NULL, NULL),
  ('1609983', 'Cerro La Guásima', 'Summit', 'Puerto Rico', 'PU', 'Cayey', 'Comerio', 18.1292257, -66.1577541, ST_GeomFromText('POINT(18.1292257 -66.1577541)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1609984', 'Cerro La Mira', 'Summit', 'Puerto Rico', 'PU', 'Utuado', 'Monte Guilarte', 18.2315095, -66.8051556, ST_GeomFromText('POINT(18.2315095 -66.8051556)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1609985', 'Cerro La Montería', 'Summit', 'Puerto Rico', 'PU', 'Villalba', 'Orocovis', 18.1285072, -66.4663916, ST_GeomFromText('POINT(18.1285072 -66.4663916)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1609986', 'Cerro La Pandura', 'Summit', 'Puerto Rico', 'PU', 'Maunabo', 'Yabucoa', 18.0321154, -65.8997136, ST_GeomFromText('POINT(18.0321154 -65.8997136)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1609987', 'Cerro La Parra', 'Summit', 'Puerto Rico', 'PU', 'Lajas', 'San German', 18.0584477, -67.0513541, ST_GeomFromText('POINT(18.0584477 -67.0513541)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1609988', 'Cerro La Peña', 'Summit', 'Puerto Rico', 'PU', 'Bayamón', 'Naranjito', 18.2909264, -66.1534784, ST_GeomFromText('POINT(18.2909264 -66.1534784)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1609989', 'Cerro La Quinta', 'Summit', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.2110516, -66.8264184, ST_GeomFromText('POINT(18.2110516 -66.8264184)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1609990', 'Cerro La Santa', 'Summit', 'Puerto Rico', 'PU', 'Caguas', 'Patillas', 18.1131205, -66.0526047, ST_GeomFromText('POINT(18.1131205 -66.0526047)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1609991', 'Cerro La Silla', 'Summit', 'Puerto Rico', 'PU', 'Isabela', 'Moca', 18.3952627, -67.0157788, ST_GeomFromText('POINT(18.3952627 -67.0157788)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1609992', 'Cerro La Tiza', 'Summit', 'Puerto Rico', 'PU', 'Comerío', 'Comerio', 18.2414637, -66.1845086, ST_GeomFromText('POINT(18.2414637 -66.1845086)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1609993', 'Cerro La Torre', 'Summit', 'Puerto Rico', 'PU', 'Sabana Grande', 'Sabana Grande', 18.0484898, -66.9133194, ST_GeomFromText('POINT(18.0484898 -66.9133194)', 4326), NULL, NULL, '1981-02-13', '2023-07-22', NULL, NULL, NULL),
  ('1609994', 'Cerro La Torre', 'Summit', 'Puerto Rico', 'PU', 'Lares', 'Monte Guilarte', 18.249396, -66.85786, ST_GeomFromText('POINT(18.249396 -66.85786)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1609995', 'Cerro La Torrecilla', 'Summit', 'Puerto Rico', 'PU', 'Patillas', 'Yabucoa', 18.0445534, -65.9855922, ST_GeomFromText('POINT(18.0445534 -65.9855922)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1609996', 'Cerro La Tuna', 'Summit', 'Puerto Rico', 'PU', 'Guayanilla', 'Yauco', 18.042191, -66.7830178, ST_GeomFromText('POINT(18.042191 -66.7830178)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', 'Official', 'Board Decision', '1958-01-01'),
  ('1609997', 'Cerro Lajara', 'Summit', 'Puerto Rico', 'PU', 'Guánica', 'Guanica', 17.9710543, -66.9498796, ST_GeomFromText('POINT(17.9710543 -66.9498796)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1609998', 'Cerro Lambedora', 'Summit', 'Puerto Rico', 'PU', 'Patillas', 'Patillas', 18.0493522, -66.002396, ST_GeomFromText('POINT(18.0493522 -66.002396)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1609999', 'Cerro Las Piñas', 'Summit', 'Puerto Rico', 'PU', 'Cayey', 'Caguas', 18.1523894, -66.0803573, ST_GeomFromText('POINT(18.1523894 -66.0803573)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1610000', 'Cerro Lazo', 'Summit', 'Puerto Rico', 'PU', 'Comerío', 'Comerio', 18.2143369, -66.2155329, ST_GeomFromText('POINT(18.2143369 -66.2155329)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1610001', 'Cerro Leclerc', 'Summit', 'Puerto Rico', 'PU', 'Mayagüez', 'Rosario', 18.2218425, -67.0780885, ST_GeomFromText('POINT(18.2218425 -67.0780885)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1610002', 'Cerro Leoncilla', 'Summit', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.1907466, -66.829089, ST_GeomFromText('POINT(18.1907466 -66.829089)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1610003', 'Cerro Limones', 'Summit', 'Puerto Rico', 'PU', 'Yauco', 'Yauco', 18.0500421, -66.8284046, ST_GeomFromText('POINT(18.0500421 -66.8284046)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1610004', 'Cerro Lloroso', 'Summit', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.2007134, -66.7571423, ST_GeomFromText('POINT(18.2007134 -66.7571423)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1610005', 'Cerro Los Negrones', 'Summit', 'Puerto Rico', 'PU', 'Ponce', 'Ponce', 18.0196845, -66.5837434, ST_GeomFromText('POINT(18.0196845 -66.5837434)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1610006', 'Cerro Lucero', 'Summit', 'Puerto Rico', 'PU', 'Guayama', 'Patillas', 18.094342, -66.0939501, ST_GeomFromText('POINT(18.094342 -66.0939501)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1610007', 'Cerro Lucero', 'Summit', 'Puerto Rico', 'PU', 'Cayey', 'Patillas', 18.1163468, -66.0608297, ST_GeomFromText('POINT(18.1163468 -66.0608297)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1610008', 'Cerro Mabú', 'Summit', 'Puerto Rico', 'PU', 'Humacao', 'Humacao', 18.1748544, -65.8242716, ST_GeomFromText('POINT(18.1748544 -65.8242716)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1610009', 'Cerro Magoyo', 'Summit', 'Puerto Rico', 'PU', 'Jayuya', 'Florida', 18.263779, -66.58823, ST_GeomFromText('POINT(18.263779 -66.58823)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1610010', 'Cerro Magueyes', 'Summit', 'Puerto Rico', 'PU', 'San Juan', 'Aguas Buenas', 18.3412757, -66.0984156, ST_GeomFromText('POINT(18.3412757 -66.0984156)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1610011', 'Cerro Magueyes', 'Summit', 'Puerto Rico', 'PU', 'Comerío', 'Comerio', 18.2313418, -66.2260661, ST_GeomFromText('POINT(18.2313418 -66.2260661)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1610012', 'Cerro Magueyes', 'Summit', 'Puerto Rico', 'PU', 'Corozal', 'Ciales', 18.2778898, -66.3753601, ST_GeomFromText('POINT(18.2778898 -66.3753601)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1610013', 'Cerro Mala Pascua', 'Summit', 'Puerto Rico', 'PU', 'Patillas', 'Punta Tuna', 17.9850255, -65.9200796, ST_GeomFromText('POINT(17.9850255 -65.9200796)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1610014', 'Cerro Malo', 'Summit', 'Puerto Rico', 'PU', 'Lares', 'Monte Guilarte', 18.2024533, -66.8726781, ST_GeomFromText('POINT(18.2024533 -66.8726781)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1610015', 'Cerro Malo', 'Summit', 'Puerto Rico', 'PU', 'Orocovis', 'Ciales', 18.2631402, -66.409446, ST_GeomFromText('POINT(18.2631402 -66.409446)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1610016', 'Cerro Maravillas', 'Summit', 'Puerto Rico', 'PU', 'Ponce', 'Jayuya', 18.1524003, -66.5535479, ST_GeomFromText('POINT(18.1524003 -66.5535479)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1610017', 'Cerro Mariquita', 'Summit', 'Puerto Rico', 'PU', 'Cabo Rojo', 'San German', 18.0001483, -67.1108414, ST_GeomFromText('POINT(18.0001483 -67.1108414)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', 'Official', 'Board Decision', '1958-01-01'),
  ('1610018', 'Cerro Marquesa', 'Summit', 'Puerto Rico', 'PU', 'Aguas Buenas', 'Aguas Buenas', 18.2795303, -66.1123691, ST_GeomFromText('POINT(18.2795303 -66.1123691)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1610019', 'Cerro Martinica', 'Summit', 'Puerto Rico', 'PU', 'Rincón', 'Rincon OE W', 18.356001, -67.26372, ST_GeomFromText('POINT(18.356001 -67.26372)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1610020', 'Cerro Mata de Plátano', 'Summit', 'Puerto Rico', 'PU', 'Peñuelas', 'Penuelas', 18.1024252, -66.7340639, ST_GeomFromText('POINT(18.1024252 -66.7340639)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1610021', 'Cerro Medina', 'Summit', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.2007133, -66.7679542, ST_GeomFromText('POINT(18.2007133 -66.7679542)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1610022', 'Cerro Mercado', 'Summit', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.2084091, -66.785712, ST_GeomFromText('POINT(18.2084091 -66.785712)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1610023', 'Cerro Mime', 'Summit', 'Puerto Rico', 'PU', 'Orocovis', 'Orocovis', 18.2470672, -66.4394704, ST_GeomFromText('POINT(18.2470672 -66.4394704)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1610024', 'Cerro Miraflores', 'Summit', 'Puerto Rico', 'PU', 'Patillas', 'Patillas', 18.0788485, -66.042348, ST_GeomFromText('POINT(18.0788485 -66.042348)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1610025', 'Cerro Miraflores', 'Summit', 'Puerto Rico', 'PU', 'Vega Baja', 'Vega Alta', 18.4184004, -66.3678157, ST_GeomFromText('POINT(18.4184004 -66.3678157)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1610026', 'Cerro Modesto', 'Summit', 'Puerto Rico', 'PU', 'Salinas', 'Salinas', 17.9936268, -66.2974135, ST_GeomFromText('POINT(17.9936268 -66.2974135)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1610027', 'Cerro Montalva', 'Summit', 'Puerto Rico', 'PU', 'Guánica', 'Guanica', 17.9568575, -66.9587364, ST_GeomFromText('POINT(17.9568575 -66.9587364)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1610028', 'Cerro Morales', 'Summit', 'Puerto Rico', 'PU', 'Utuado', 'Jayuya', 18.2474928, -66.6246621, ST_GeomFromText('POINT(18.2474928 -66.6246621)', 4326), NULL, NULL, '1981-02-13', '2018-03-23', NULL, NULL, NULL),
  ('1610029', 'Cerro Morrillo', 'Summit', 'Puerto Rico', 'PU', 'Ponce', 'Playa De Ponce', 17.8841952, -66.5284828, ST_GeomFromText('POINT(17.8841952 -66.5284828)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1610030', 'Cerro Mula', 'Summit', 'Puerto Rico', 'PU', 'Aguas Buenas', 'Naranjito', 18.2739011, -66.1471132, ST_GeomFromText('POINT(18.2739011 -66.1471132)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1610031', 'Cerro Novillo', 'Summit', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.2097777, -66.7699857, ST_GeomFromText('POINT(18.2097777 -66.7699857)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1610032', 'Cerro Palma', 'Summit', 'Puerto Rico', 'PU', 'Lares', 'Bayaney', 18.2939607, -66.8541943, ST_GeomFromText('POINT(18.2939607 -66.8541943)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1610033', 'Cerro Palo de Café', 'Summit', 'Puerto Rico', 'PU', 'Jayuya', 'Florida', 18.2524518, -66.58385, ST_GeomFromText('POINT(18.2524518 -66.58385)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1610034', 'Cerro Palo Seco', 'Summit', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.2335966, -66.7886579, ST_GeomFromText('POINT(18.2335966 -66.7886579)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1610035', 'Cerro Pelao', 'Summit', 'Puerto Rico', 'PU', 'Añasco', 'Central La Plata', 18.3154491, -67.1015394, ST_GeomFromText('POINT(18.3154491 -67.1015394)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1610036', 'Cerro Pelota', 'Summit', 'Puerto Rico', 'PU', 'Manatí', 'Barceloneta', 18.380061, -66.50733, ST_GeomFromText('POINT(18.380061 -66.50733)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1610037', 'Cerro Petronila', 'Summit', 'Puerto Rico', 'PU', 'Villalba', 'Rio Descalabrado', 18.1149859, -66.4313064, ST_GeomFromText('POINT(18.1149859 -66.4313064)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1610038', 'Cerro Pichón', 'Summit', 'Puerto Rico', 'PU', 'Moca', 'Central La Plata', 18.306811, -67.0530226, ST_GeomFromText('POINT(18.306811 -67.0530226)', 4326), NULL, NULL, '1981-02-13', '2018-03-24', NULL, NULL, NULL),
  ('1610039', 'Cerro Pichón', 'Summit', 'Puerto Rico', 'PU', 'Moca', 'Central La Plata', 18.3107811, -67.0618472, ST_GeomFromText('POINT(18.3107811 -67.0618472)', 4326), NULL, NULL, '1981-02-13', '2018-03-24', NULL, NULL, NULL),
  ('1610040', 'Cerro Piedra Gorda', 'Summit', 'Puerto Rico', 'PU', 'Patillas', 'Patillas', 18.0206809, -66.039545, ST_GeomFromText('POINT(18.0206809 -66.039545)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1610041', 'Cerro Piedra Hueca', 'Summit', 'Puerto Rico', 'PU', 'Patillas', 'Punta Tuna', 17.9853764, -65.9949089, ST_GeomFromText('POINT(17.9853764 -65.9949089)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1610042', 'Cerro Piñas', 'Summit', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.0835682, -67.1718476, ST_GeomFromText('POINT(18.0835682 -67.1718476)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1610043', 'Cerro Pío', 'Summit', 'Puerto Rico', 'PU', 'Orocovis', 'Orocovis', 18.2266401, -66.4245966, ST_GeomFromText('POINT(18.2266401 -66.4245966)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1610044', 'Cerro Pío Juan', 'Summit', 'Puerto Rico', 'PU', 'Salinas', 'Coamo', 18.0380978, -66.3033759, ST_GeomFromText('POINT(18.0380978 -66.3033759)', 4326), NULL, NULL, '1981-02-13', '2018-03-23', NULL, NULL, NULL),
  ('1610045', 'Cerro Pitahaya', 'Summit', 'Puerto Rico', 'PU', 'Canóvanas', 'Gurabo', 18.3239395, -65.8814712, ST_GeomFromText('POINT(18.3239395 -65.8814712)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1610046', 'Cerro Plan Bonito', 'Summit', 'Puerto Rico', 'PU', 'Las Marías', 'Maricao', 18.2082456, -66.9532346, ST_GeomFromText('POINT(18.2082456 -66.9532346)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1610047', 'Cerro Plana', 'Summit', 'Puerto Rico', 'PU', 'Cidra', 'Comerio', 18.1536003, -66.2106656, ST_GeomFromText('POINT(18.1536003 -66.2106656)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1610048', 'Cerro Planada', 'Summit', 'Puerto Rico', 'PU', 'Cayey', 'Cayey', 18.0872373, -66.207042, ST_GeomFromText('POINT(18.0872373 -66.207042)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1610049', 'Cerro Presidio', 'Summit', 'Puerto Rico', 'PU', 'Coamo', 'Coamo', 18.0514917, -66.3247222, ST_GeomFromText('POINT(18.0514917 -66.3247222)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1610050', 'Cerro Prieto', 'Summit', 'Puerto Rico', 'PU', 'Utuado', 'Adjuntas', 18.1971765, -66.662395, ST_GeomFromText('POINT(18.1971765 -66.662395)', 4326), NULL, NULL, '1981-02-13', '2018-03-23', NULL, NULL, NULL),
  ('1610051', 'Cerro Pulguillas', 'Summit', 'Puerto Rico', 'PU', 'Coamo', 'Barranquitas', 18.1501525, -66.336709, ST_GeomFromText('POINT(18.1501525 -66.336709)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1610052', 'Cerro Purrón', 'Summit', 'Puerto Rico', 'PU', 'Ciales', 'Ciales', 18.3128214, -66.4547243, ST_GeomFromText('POINT(18.3128214 -66.4547243)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1610053', 'Cerro Quemado', 'Summit', 'Puerto Rico', 'PU', 'Lajas', 'San German', 18.0449592, -67.0939175, ST_GeomFromText('POINT(18.0449592 -67.0939175)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1610054', 'Cerro Quirós', 'Summit', 'Puerto Rico', 'PU', 'Morovis', 'Ciales', 18.2837935, -66.3864748, ST_GeomFromText('POINT(18.2837935 -66.3864748)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1610055', 'Cerro Roncador', 'Summit', 'Puerto Rico', 'PU', 'Utuado', 'Monte Guilarte', 18.2330284, -66.7595768, ST_GeomFromText('POINT(18.2330284 -66.7595768)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1610056', 'Cerro Rosa', 'Summit', 'Puerto Rico', 'PU', 'Jayuya', 'Jayuya', 18.1777126, -66.5320111, ST_GeomFromText('POINT(18.1777126 -66.5320111)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1610057', 'Cerro Saliente', 'Summit', 'Puerto Rico', 'PU', 'Jayuya', 'Jayuya', 18.1785128, -66.5594255, ST_GeomFromText('POINT(18.1785128 -66.5594255)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1610058', 'Cerro San José', 'Summit', 'Puerto Rico', 'PU', 'Aguada', 'Aguadilla', 18.3759608, -67.1815939, ST_GeomFromText('POINT(18.3759608 -67.1815939)', 4326), NULL, NULL, '1981-02-13', '2018-03-23', NULL, NULL, NULL),
  ('1610059', 'Cerro San José', 'Summit', 'Puerto Rico', 'PU', 'Carolina', 'Carolina', 18.4105536, -65.9407033, ST_GeomFromText('POINT(18.4105536 -65.9407033)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1610060', 'Cerro Santa Ana', 'Summit', 'Puerto Rico', 'PU', 'Coamo', 'Coamo', 18.0927566, -66.3261543, ST_GeomFromText('POINT(18.0927566 -66.3261543)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1610061', 'Cerro Santa Ana', 'Summit', 'Puerto Rico', 'PU', 'San Lorenzo', 'Juncos', 18.1943172, -65.9873239, ST_GeomFromText('POINT(18.1943172 -65.9873239)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1610062', 'Cerro Santa Bárbara', 'Summit', 'Puerto Rico', 'PU', 'Aguas Buenas', 'Comerio', 18.2293771, -66.1562585, ST_GeomFromText('POINT(18.2293771 -66.1562585)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1610063', 'Cerro Santa Bárbara', 'Summit', 'Puerto Rico', 'PU', 'Toa Alta', 'Corozal', 18.3720266, -66.3138474, ST_GeomFromText('POINT(18.3720266 -66.3138474)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1610064', 'Cerro Santa Elena', 'Summit', 'Puerto Rico', 'PU', 'Yabucoa', 'Punta Guayanes', 18.0279981, -65.8690311, ST_GeomFromText('POINT(18.0279981 -65.8690311)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1610065', 'Cerro Santo Domingo', 'Summit', 'Puerto Rico', 'PU', 'Ponce', 'Ponce', 18.1153765, -66.5853777, ST_GeomFromText('POINT(18.1153765 -66.5853777)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1610066', 'Cerro Santo Domingo', 'Summit', 'Puerto Rico', 'PU', 'Lares', 'Monte Guilarte', 18.1856932, -66.854199, ST_GeomFromText('POINT(18.1856932 -66.854199)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1610067', 'Cerro Taita', 'Summit', 'Puerto Rico', 'PU', 'Orocovis', 'Orocovis', 18.2195102, -66.4721188, ST_GeomFromText('POINT(18.2195102 -66.4721188)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1610068', 'Cerro Tirano', 'Summit', 'Puerto Rico', 'PU', 'Añasco', 'Central La Plata', 18.2768531, -67.0406715, ST_GeomFromText('POINT(18.2768531 -67.0406715)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1610069', 'Cerro Toro', 'Summit', 'Puerto Rico', 'PU', 'Guayanilla', 'Punta Verraco', 17.9675461, -66.8058179, ST_GeomFromText('POINT(17.9675461 -66.8058179)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', 'Official', 'Board Decision', '1958-01-01'),
  ('1610070', 'Cerro Vadi', 'Summit', 'Puerto Rico', 'PU', 'Aguada', 'Aguadilla', 18.3790905, -67.17358, ST_GeomFromText('POINT(18.3790905 -67.17358)', 4326), NULL, NULL, '1981-02-13', '2018-03-23', NULL, NULL, NULL),
  ('1610071', 'Cerro Valladares', 'Summit', 'Puerto Rico', 'PU', 'Las Marías', 'Central La Plata', 18.2581352, -67.0236744, ST_GeomFromText('POINT(18.2581352 -67.0236744)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1610072', 'Cerro Vaquiña', 'Summit', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.1506748, -66.7739594, ST_GeomFromText('POINT(18.1506748 -66.7739594)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1610073', 'Cerro Vargas', 'Summit', 'Puerto Rico', 'PU', 'Cabo Rojo', 'San German', 18.0596807, -67.1182358, ST_GeomFromText('POINT(18.0596807 -67.1182358)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1610074', 'Cerro Verdún', 'Summit', 'Puerto Rico', 'PU', 'Aibonito', 'Coamo', 18.0936512, -66.2570284, ST_GeomFromText('POINT(18.0936512 -66.2570284)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1610075', 'Cerro Viento Caliente', 'Summit', 'Puerto Rico', 'PU', 'Cidra', 'Comerio', 18.17547, -66.21126, ST_GeomFromText('POINT(18.17547 -66.21126)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1610076', 'Cerro Vieques', 'Summit', 'Puerto Rico', 'PU', 'Aguada', 'Aguadilla', 18.3769294, -67.179585, ST_GeomFromText('POINT(18.3769294 -67.179585)', 4326), NULL, NULL, '1981-02-13', '2018-03-23', NULL, NULL, NULL),
  ('1610077', 'Cerro Vigía', 'Summit', 'Puerto Rico', 'PU', 'Aguadilla', 'Aguadilla', 18.4595007, -67.1410575, ST_GeomFromText('POINT(18.4595007 -67.1410575)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1610078', 'Cerro Vigía', 'Summit', 'Puerto Rico', 'PU', 'Rincón', 'Rincon', 18.3031375, -67.2257368, ST_GeomFromText('POINT(18.3031375 -67.2257368)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1610079', 'Cerro Vista Alegre', 'Summit', 'Puerto Rico', 'PU', 'Ciales', 'Florida', 18.2580072, -66.5132292, ST_GeomFromText('POINT(18.2580072 -66.5132292)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1610080', 'Cerro Viviana', 'Summit', 'Puerto Rico', 'PU', 'San Lorenzo', 'Juncos', 18.1468937, -65.9281131, ST_GeomFromText('POINT(18.1468937 -65.9281131)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1610081', 'Cerro Yaitini', 'Summit', 'Puerto Rico', 'PU', 'San Sebastián', 'Central La Plata', 18.2983968, -67.0222306, ST_GeomFromText('POINT(18.2983968 -67.0222306)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1610082', 'Cerro Yaurel', 'Summit', 'Puerto Rico', 'PU', 'Patillas', 'Patillas', 18.0380577, -66.0529431, ST_GeomFromText('POINT(18.0380577 -66.0529431)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1610083', 'Cerros de Higuillar', 'Summit', 'Puerto Rico', 'PU', 'Dorado', 'Vega Alta', 18.4416701, -66.2761265, ST_GeomFromText('POINT(18.4416701 -66.2761265)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1610084', 'Cerros de Santini', 'Range', 'Puerto Rico', 'PU', 'Coamo', 'Barranquitas', 18.1308102, -66.3547498, ST_GeomFromText('POINT(18.1308102 -66.3547498)', 4326), NULL, NULL, '1981-02-13', '2018-03-22', NULL, NULL, NULL),
  ('1610085', 'Cerrote de Peñuelas', 'Summit', 'Puerto Rico', 'PU', 'Peñuelas', 'Penuelas', 18.1192466, -66.7005606, ST_GeomFromText('POINT(18.1192466 -66.7005606)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1610088', 'Charco Azul', 'Lake', 'Puerto Rico', 'PU', 'Patillas', 'Patillas', 18.0916716, -66.0314135, ST_GeomFromText('POINT(18.0916716 -66.0314135)', 4326), NULL, NULL, '1981-02-13', '2015-06-18', NULL, NULL, NULL),
  ('1610093', 'Ciénaga de las Cucharillas', 'Swamp', 'Puerto Rico', 'PU', 'Cataño', 'Bayamon', 18.4430017, -66.139611, ST_GeomFromText('POINT(18.4430017 -66.139611)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1610094', 'Ciénaga de Cuevas', 'Swamp', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.1052367, -67.1457349, ST_GeomFromText('POINT(18.1052367 -67.1457349)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1610095', 'Ciénaga de San Pedro', 'Swamp', 'Puerto Rico', 'PU', 'Toa Baja', 'Bayamon', 18.4509508, -66.2007247, ST_GeomFromText('POINT(18.4509508 -66.2007247)', 4326), NULL, NULL, '1981-02-13', '2015-04-15', NULL, NULL, NULL),
  ('1610096', 'Ciénaga El Guayabal', 'Swamp', 'Puerto Rico', 'PU', 'Añasco', 'Rincon', 18.2905064, -67.163236, ST_GeomFromText('POINT(18.2905064 -67.163236)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1610097', 'Ciénaga Isabel', 'Swamp', 'Puerto Rico', 'PU', 'Añasco', 'Rincon', 18.2552304, -67.132402, ST_GeomFromText('POINT(18.2552304 -67.132402)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1610098', 'Ciénaga La Picúa', 'Swamp', 'Puerto Rico', 'PU', 'Río Grande', 'Rio Grande', 18.404393, -65.7812745, ST_GeomFromText('POINT(18.404393 -65.7812745)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1610099', 'Ciénaga Pozo Hondo', 'Swamp', 'Puerto Rico', 'PU', 'Añasco', 'Rincon', 18.2807847, -67.1546247, ST_GeomFromText('POINT(18.2807847 -67.1546247)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1610100', 'Ciénaga Prieta', 'Swamp', 'Puerto Rico', 'PU', 'Vega Alta', 'Vega Alta', 18.4560572, -66.3371138, ST_GeomFromText('POINT(18.4560572 -66.3371138)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1610155', 'Cordillera Central', 'Range', 'Puerto Rico', 'PU', 'Coamo', 'Orocovis', 18.1636853, -66.4087978, ST_GeomFromText('POINT(18.1636853 -66.4087978)', 4326), NULL, NULL, '1981-02-13', '2018-03-23', NULL, NULL, NULL),
  ('1610156', 'Cordillera Sabana Alta', 'Range', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.1203725, -67.1484439, ST_GeomFromText('POINT(18.1203725 -67.1484439)', 4326), NULL, NULL, '1981-02-13', '2018-03-23', NULL, NULL, NULL),
  ('1610183', 'Cuchilla de Monte Llano', 'Ridge', 'Puerto Rico', 'PU', 'Ponce', 'Ponce', 18.1018894, -66.6066297, ST_GeomFromText('POINT(18.1018894 -66.6066297)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1610184', 'Cuchilla de Juan González', 'Ridge', 'Puerto Rico', 'PU', 'Adjuntas', 'Adjuntas', 18.1636357, -66.6976479, ST_GeomFromText('POINT(18.1636357 -66.6976479)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1610185', 'Cuchilla de Panduras', 'Ridge', 'Puerto Rico', 'PU', 'Yabucoa', 'Yabucoa', 18.0408852, -65.9413968, ST_GeomFromText('POINT(18.0408852 -65.9413968)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1610186', 'Cuchila el Asomante', 'Ridge', 'Puerto Rico', 'PU', 'Juncos', 'Gurabo', 18.2563073, -65.8830177, ST_GeomFromText('POINT(18.2563073 -65.8830177)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1610187', 'Cuchilla Los Matos', 'Ridge', 'Puerto Rico', 'PU', 'Mayagüez', 'Rosario', 18.1596125, -67.1146575, ST_GeomFromText('POINT(18.1596125 -67.1146575)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1610188', 'Cuchilla Ranchera', 'Ridge', 'Puerto Rico', 'PU', 'Yauco', 'Sabana Grande', 18.1090096, -66.8979989, ST_GeomFromText('POINT(18.1090096 -66.8979989)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1610189', 'Cuchillas Aceitunas', 'Ridge', 'Puerto Rico', 'PU', 'Maricao', 'Rosario', 18.1612561, -67.0102648, ST_GeomFromText('POINT(18.1612561 -67.0102648)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1610191', 'Cuesta de la Yuca', 'Summit', 'Puerto Rico', 'PU', 'San Sebastián', 'Central La Plata', 18.3150421, -67.0454999, ST_GeomFromText('POINT(18.3150421 -67.0454999)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1610193', 'Cueva de la Julia', 'Bay', 'Puerto Rico', 'PU', 'Guánica', 'Guanica', 17.9630223, -66.9271204, ST_GeomFromText('POINT(17.9630223 -66.9271204)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1610207', 'Quebrada Doña Ana', 'Valley', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.404524, -66.0760939, ST_GeomFromText('POINT(18.404524 -66.0760939)', 4326), 18.3882515, -66.0942367, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1610212', 'El Alto', 'Ridge', 'Puerto Rico', 'PU', 'Utuado', 'Utuado', 18.2728645, -66.7398126, ST_GeomFromText('POINT(18.2728645 -66.7398126)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1610215', 'El Boquerón', 'Bay', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.4618896, -66.0843326, ST_GeomFromText('POINT(18.4618896 -66.0843326)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1610219', 'El Cacique', 'Summit', 'Puerto Rico', 'PU', 'Río Grande', 'El Yunque', 18.2892601, -65.8214037, ST_GeomFromText('POINT(18.2892601 -65.8214037)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1610221', 'El Centro', 'Summit', 'Puerto Rico', 'PU', 'Quebradillas', 'Quebradillas', 18.4504438, -66.9559703, ST_GeomFromText('POINT(18.4504438 -66.9559703)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1610223', 'El Cerro Avispa', 'Summit', 'Puerto Rico', 'PU', 'San Germán', 'Rosario', 18.1570622, -67.0309923, ST_GeomFromText('POINT(18.1570622 -67.0309923)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1610230', 'El Comején', 'Summit', 'Puerto Rico', 'PU', 'Sabana Grande', 'Sabana Grande', 18.1227097, -66.9688004, ST_GeomFromText('POINT(18.1227097 -66.9688004)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1610239', 'El Horno', 'Summit', 'Puerto Rico', 'PU', 'Toa Baja', 'Bayamon', 18.4236978, -66.1784389, ST_GeomFromText('POINT(18.4236978 -66.1784389)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1610244', 'El Mono', 'Island', 'Puerto Rico', 'PU', 'Culebra', 'Culebra OE W', 18.3177335, -65.3682149, ST_GeomFromText('POINT(18.3177335 -65.3682149)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1610245', 'El Morrillo', 'Summit', 'Puerto Rico', 'PU', 'Humacao', 'Humacao', 18.1447828, -65.7672929, ST_GeomFromText('POINT(18.1447828 -65.7672929)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1610248', 'El Negro', 'Summit', 'Puerto Rico', 'PU', 'Canóvanas', 'El Yunque', 18.2706423, -65.8480278, ST_GeomFromText('POINT(18.2706423 -65.8480278)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1610251', 'El Peñon', 'Summit', 'Puerto Rico', 'PU', 'Guánica', 'Guanica', 17.9888108, -66.9402862, ST_GeomFromText('POINT(17.9888108 -66.9402862)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1610261', 'El Salto', 'Lake', 'Puerto Rico', 'PU', 'Manatí', 'Manati', 18.3910599, -66.4532264, ST_GeomFromText('POINT(18.3910599 -66.4532264)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1610263', 'El Salto Grande', 'Falls', 'Puerto Rico', 'PU', 'Corozal', 'Corozal', 18.2643989, -66.3568364, ST_GeomFromText('POINT(18.2643989 -66.3568364)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1610265', 'Cerro El Sombreito', 'Summit', 'Puerto Rico', 'PU', 'Maunabo', 'Yabucoa', 18.0207353, -65.8810401, ST_GeomFromText('POINT(18.0207353 -65.8810401)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1610266', 'El Torito', 'Summit', 'Puerto Rico', 'PU', 'Cayey', 'Cayey', 18.0826426, -66.1551253, ST_GeomFromText('POINT(18.0826426 -66.1551253)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1610267', 'El Toro', 'Summit', 'Puerto Rico', 'PU', 'Las Piedras', 'El Yunque', 18.2721128, -65.829246, ST_GeomFromText('POINT(18.2721128 -65.829246)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1610273', 'El Yunque', 'Summit', 'Puerto Rico', 'PU', 'Río Grande', 'El Yunque', 18.3104854, -65.7912759, ST_GeomFromText('POINT(18.3104854 -65.7912759)', 4326), NULL, NULL, '1981-02-13', '2018-03-22', NULL, NULL, NULL),
  ('1610278', 'Ensenada del Cementerio', 'Bay', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.307734, -65.2851576, ST_GeomFromText('POINT(18.307734 -65.2851576)', 4326), NULL, NULL, '1981-02-13', '2011-06-01', 'Official', 'Board Decision', '1950-01-01'),
  ('1610279', 'Ensenada del Coronel', 'Bay', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3091229, -65.2912689, ST_GeomFromText('POINT(18.3091229 -65.2912689)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1610280', 'Ensenada Breñas', 'Bay', 'Puerto Rico', 'PU', 'Vega Alta', 'Vega Alta', 18.4788339, -66.3268358, ST_GeomFromText('POINT(18.4788339 -66.3268358)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1610281', 'Ensenada Comezón', 'Bay', 'Puerto Rico', 'PU', 'Río Grande', 'Rio Grande', 18.4121704, -65.788219, ST_GeomFromText('POINT(18.4121704 -65.788219)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1610282', 'Ensenada Dakity', 'Bay', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.2869014, -65.2823797, ST_GeomFromText('POINT(18.2869014 -65.2823797)', 4326), NULL, NULL, '1981-02-13', '2011-09-09', 'Official', 'Board Decision', '1950-01-01'),
  ('1610283', 'Ensenada de Boca Vieja', 'Bay', 'Puerto Rico', 'PU', 'Toa Baja', 'Bayamon', 18.4591121, -66.1718335, ST_GeomFromText('POINT(18.4591121 -66.1718335)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1610284', 'Ensenada Fulladosa', 'Bay', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.2924567, -65.287102, ST_GeomFromText('POINT(18.2924567 -65.287102)', 4326), NULL, NULL, '1981-02-13', '2011-09-09', 'Official', 'Board Decision', '1950-01-01'),
  ('1610285', 'Ensenada Honda', 'Bay', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3021786, -65.2829352, ST_GeomFromText('POINT(18.3021786 -65.2829352)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1610286', 'Ensenada las Pardas', 'Bay', 'Puerto Rico', 'PU', 'Guánica', 'Guanica', 17.9401133, -66.9246769, ST_GeomFromText('POINT(17.9401133 -66.9246769)', 4326), NULL, NULL, '1981-02-13', '2013-09-06', 'Official', 'Board Decision', '1958-02-27'),
  ('1610287', 'Ensenada Malena', 'Bay', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.2827348, -65.2843241, ST_GeomFromText('POINT(18.2827348 -65.2843241)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1610288', 'Bahía las Cabezas', 'Bay', 'Puerto Rico', 'PU', 'Fajardo', 'Fajardo OE N', 18.3771735, -65.6343282, ST_GeomFromText('POINT(18.3771735 -65.6343282)', 4326), NULL, NULL, '1981-02-13', '2011-06-01', 'Official', 'Board Decision', '1974-01-01'),
  ('1610835', 'Foso Jacinto', 'Cape', 'Puerto Rico', 'PU', 'Isabela', 'Isabela', 18.5129976, -67.0726803, ST_GeomFromText('POINT(18.5129976 -67.0726803)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1610838', 'Fuente Piscina', 'Spring', 'Puerto Rico', 'PU', 'Río Grande', 'El Yunque', 18.3016202, -65.7854406, ST_GeomFromText('POINT(18.3016202 -65.7854406)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611090', 'Hoya El Ber', 'Valley', 'Puerto Rico', 'PU', 'Guánica', 'Guanica', 17.9511964, -66.8951827, ST_GeomFromText('POINT(17.9511964 -66.8951827)', 4326), 17.9615724, -66.8998063, '1981-02-13', '2017-02-28', NULL, NULL, NULL),
  ('1611091', 'Hoya Fría', 'Valley', 'Puerto Rico', 'PU', 'Carolina', 'Gurabo', 18.3603464, -65.9564595, ST_GeomFromText('POINT(18.3603464 -65.9564595)', 4326), 18.3460537, -65.9552724, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1611093', 'Hoya Grande', 'Valley', 'Puerto Rico', 'PU', 'Hormigueros', 'Mayaguez', 18.1526282, -67.1362893, ST_GeomFromText('POINT(18.1526282 -67.1362893)', 4326), 18.1546717, -67.1282207, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1611094', 'Hoya Hondo', 'Valley', 'Puerto Rico', 'PU', 'Guánica', 'Guanica', 17.9536983, -66.8791045, ST_GeomFromText('POINT(17.9536983 -66.8791045)', 4326), 17.9623167, -66.8819213, '1981-02-13', '2017-02-28', NULL, NULL, NULL),
  ('1611095', 'Hoya La Laura', 'Valley', 'Puerto Rico', 'PU', 'Guánica', 'Guanica', 17.9456647, -66.9540553, ST_GeomFromText('POINT(17.9456647 -66.9540553)', 4326), 17.9554075, -66.9582878, '1981-02-13', '2018-03-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611096', 'Hoya Las Picuas', 'Valley', 'Puerto Rico', 'PU', 'Guánica', 'Guanica', 17.9529481, -66.8860569, ST_GeomFromText('POINT(17.9529481 -66.8860569)', 4326), 17.9663424, -66.8868262, '1981-02-13', '2017-02-28', NULL, NULL, NULL),
  ('1611097', 'Hoya Pozo Blanco', 'Valley', 'Puerto Rico', 'PU', 'Guánica', 'Guanica', 17.9435919, -66.9426279, ST_GeomFromText('POINT(17.9435919 -66.9426279)', 4326), 17.9614612, -66.9544109, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1611099', 'Hoyo Prieto', 'Valley', 'Puerto Rico', 'PU', 'Toa Alta', 'Corozal', 18.372373, -66.2718005, ST_GeomFromText('POINT(18.372373 -66.2718005)', 4326), 18.3655433, -66.2740412, '1981-02-13', '2017-05-06', NULL, NULL, NULL),
  ('1611174', 'Isla de las Palomas', 'Island', 'Puerto Rico', 'PU', 'Toa Baja', 'Bayamon', 18.476056, -66.1885004, ST_GeomFromText('POINT(18.476056 -66.1885004)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611175', 'Isla de Cabras', 'Island', 'Puerto Rico', 'PU', 'Toa Baja', 'Bayamon', 18.4707782, -66.1362777, ST_GeomFromText('POINT(18.4707782 -66.1362777)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611176', 'Isla de Cerro Gordo', 'Island', 'Puerto Rico', 'PU', 'Vega Alta', 'Vega Alta', 18.4863336, -66.3487807, ST_GeomFromText('POINT(18.4863336 -66.3487807)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611177', 'Isla de Ramos', 'Island', 'Puerto Rico', 'PU', 'Fajardo', 'Cayo Icacos', 18.3127317, -65.6096057, ST_GeomFromText('POINT(18.3127317 -65.6096057)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611178', 'Isla Cabras', 'Island', 'Puerto Rico', 'PU', 'Ceiba', 'Isla De Vieques West', 18.2121808, -65.6023831, ST_GeomFromText('POINT(18.2121808 -65.6023831)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611179', 'Isla Caja de Muertos', 'Island', 'Puerto Rico', 'PU', 'Ponce', 'Playa De Ponce', 17.8946917, -66.5198926, ST_GeomFromText('POINT(17.8946917 -66.5198926)', 4326), NULL, NULL, '1981-02-13', '2015-08-10', NULL, NULL, NULL),
  ('1611180', 'Isla Cueva', 'Island', 'Puerto Rico', 'PU', 'Lajas', 'Parguera', 17.9621878, -67.080178, ST_GeomFromText('POINT(17.9621878 -67.080178)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611181', 'Isla Culebrita', 'Island', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3146783, -65.2287672, ST_GeomFromText('POINT(18.3146783 -65.2287672)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1611182', 'Isla de Culebra', 'Island', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3146783, -65.2829352, ST_GeomFromText('POINT(18.3146783 -65.2829352)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1611183', 'Isla Guachinanga', 'Island', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.4299463, -66.0354433, ST_GeomFromText('POINT(18.4299463 -66.0354433)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611184', 'Isla Guayacán', 'Island', 'Puerto Rico', 'PU', 'Lajas', 'Parguera', 17.9574655, -67.0901781, ST_GeomFromText('POINT(17.9574655 -67.0901781)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611185', 'Isla La Cancora', 'Island', 'Puerto Rico', 'PU', 'Loíza', 'Carolina', 18.4657782, -65.9973876, ST_GeomFromText('POINT(18.4657782 -65.9973876)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611186', 'Isla Magueyes', 'Island', 'Puerto Rico', 'PU', 'Lajas', 'Parguera', 17.9688545, -67.0440663, ST_GeomFromText('POINT(17.9688545 -67.0440663)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1967-01-01'),
  ('1611187', 'Isla Matei', 'Island', 'Puerto Rico', 'PU', 'Lajas', 'Parguera', 17.9677437, -67.0076771, ST_GeomFromText('POINT(17.9677437 -67.0076771)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611188', 'Isla de Mona', 'Island', 'Puerto Rico', 'PU', 'Mayagüez', 'Isla de Mona', 18.081345, -67.8912971, ST_GeomFromText('POINT(18.081345 -67.8912971)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1970-01-01'),
  ('1611189', 'Isla Morrillito', 'Island', 'Puerto Rico', 'PU', 'Ponce', 'Playa De Ponce', 17.8821924, -66.533226, ST_GeomFromText('POINT(17.8821924 -66.533226)', 4326), NULL, NULL, '1981-02-13', '2011-07-09', NULL, NULL, NULL),
  ('1611190', 'Isla Palominitos', 'Island', 'Puerto Rico', 'PU', 'Fajardo', 'Cayo Icacos', 18.3388424, -65.5671055, ST_GeomFromText('POINT(18.3388424 -65.5671055)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611191', 'Isla Palominos', 'Island', 'Puerto Rico', 'PU', 'Fajardo', 'Cayo Icacos', 18.3485643, -65.5679389, ST_GeomFromText('POINT(18.3485643 -65.5679389)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611192', 'Isla Piedra', 'Island', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.464667, -66.0448879, ST_GeomFromText('POINT(18.464667 -66.0448879)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611193', 'Isla Puerca', 'Island', 'Puerto Rico', 'PU', 'Santa Isabel', 'Salinas', 17.9591336, -66.3632247, ST_GeomFromText('POINT(17.9591336 -66.3632247)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611194', 'Isla Verde', 'Island', 'Puerto Rico', 'PU', 'Carolina', 'San Juan', 18.4480011, -66.0165543, ST_GeomFromText('POINT(18.4480011 -66.0165543)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611196', 'Isletas de Garzas', 'Island', 'Puerto Rico', 'PU', 'Vega Baja', 'Vega Alta', 18.4896667, -66.3746142, ST_GeomFromText('POINT(18.4896667 -66.3746142)', 4326), NULL, NULL, '1981-02-13', '2011-06-01', 'Official', 'Board Decision', '1958-01-01'),
  ('1611198', 'Islote de Juan Pérez', 'Island', 'Puerto Rico', 'PU', 'Loíza', 'Carolina', 18.4360573, -65.9343317, ST_GeomFromText('POINT(18.4360573 -65.9343317)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611235', 'La Blanquilla', 'Island', 'Puerto Rico', 'PU', 'Fajardo', 'Cayo Icacos', 18.3710636, -65.5537723, ST_GeomFromText('POINT(18.3710636 -65.5537723)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611237', 'La Cadena', 'Range', 'Puerto Rico', 'PU', 'Añasco', 'Rincon', 18.3107821, -67.1882794, ST_GeomFromText('POINT(18.3107821 -67.1882794)', 4326), NULL, NULL, '1981-02-13', '2018-03-23', NULL, NULL, NULL),
  ('1611242', 'La Chorrera', 'Valley', 'Puerto Rico', 'PU', 'Ciales', 'Ciales', 18.2926723, -66.4845079, ST_GeomFromText('POINT(18.2926723 -66.4845079)', 4326), 18.2986018, -66.4889104, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1611243', 'La Cordillera', 'Island', 'Puerto Rico', 'PU', 'Fajardo', 'Cayo Icacos OE N', 18.3813406, -65.5662725, ST_GeomFromText('POINT(18.3813406 -65.5662725)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611244', 'La Covana', 'Valley', 'Puerto Rico', 'PU', 'Yauco', 'Punta Verraco', 17.9822949, -66.8572244, ST_GeomFromText('POINT(17.9822949 -66.8572244)', 4326), 17.980987, -66.8499598, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1611245', 'La Cuchilla', 'Ridge', 'Puerto Rico', 'PU', 'Cabo Rojo', 'San German', 18.0621806, -67.1145818, ST_GeomFromText('POINT(18.0621806 -67.1145818)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1611265', 'La Mesa', 'Summit', 'Puerto Rico', 'PU', 'Ponce', 'Ponce', 18.1147287, -66.5598964, ST_GeomFromText('POINT(18.1147287 -66.5598964)', 4326), NULL, NULL, '1981-02-13', '2018-03-24', NULL, NULL, NULL),
  ('1611267', 'La Mina', 'Summit', 'Puerto Rico', 'PU', 'Naguabo', 'El Yunque', 18.2607932, -65.8122167, ST_GeomFromText('POINT(18.2607932 -65.8122167)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1611271', 'La Peregrina', 'Summit', 'Puerto Rico', 'PU', 'Canóvanas', 'El Yunque', 18.3064404, -65.869374, ST_GeomFromText('POINT(18.3064404 -65.869374)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1611275', 'La Piedra', 'Summit', 'Puerto Rico', 'PU', 'Cayey', 'Cayey', 18.1196389, -66.2181795, ST_GeomFromText('POINT(18.1196389 -66.2181795)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1611283', 'La Puntilla', 'Cape', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.459112, -66.1162774, ST_GeomFromText('POINT(18.459112 -66.1162774)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611287', 'La Silla', 'Summit', 'Puerto Rico', 'PU', 'Gurabo', 'Gurabo', 18.3043935, -65.9876224, ST_GeomFromText('POINT(18.3043935 -65.9876224)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1611288', 'La Silla de Calderon', 'Gap', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.1530142, -66.8065645, ST_GeomFromText('POINT(18.1530142 -66.8065645)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611292', 'La Torrecilla', 'Summit', 'Puerto Rico', 'PU', 'Barranquitas', 'Barranquitas', 18.2013556, -66.3325341, ST_GeomFromText('POINT(18.2013556 -66.3325341)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611293', 'La Torrecilla', 'Summit', 'Puerto Rico', 'PU', 'Lares', 'Monte Guilarte', 18.2382649, -66.858038, ST_GeomFromText('POINT(18.2382649 -66.858038)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1611300', 'Lago de Cidra', 'Reservoir', 'Puerto Rico', 'PU', 'Cidra', 'Comerio', 18.1971794, -66.1404444, ST_GeomFromText('POINT(18.1971794 -66.1404444)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611301', 'Lago de Matrullas', 'Reservoir', 'Puerto Rico', 'PU', 'Orocovis', 'Orocovis', 18.206077, -66.4796153, ST_GeomFromText('POINT(18.206077 -66.4796153)', 4326), NULL, NULL, '1981-02-13', '2015-04-15', NULL, NULL, NULL),
  ('1611302', 'Lago Adjuntas', 'Reservoir', 'Puerto Rico', 'PU', 'Adjuntas', 'Adjuntas', 18.198551, -66.7317947, ST_GeomFromText('POINT(18.198551 -66.7317947)', 4326), NULL, NULL, '1981-02-13', '2015-04-14', NULL, NULL, NULL),
  ('1611303', 'Lago Bronce', 'Lake', 'Puerto Rico', 'PU', 'Ponce', 'Ponce', 18.0304412, -66.5691356, ST_GeomFromText('POINT(18.0304412 -66.5691356)', 4326), NULL, NULL, '1981-02-13', '2013-03-21', NULL, NULL, NULL),
  ('1611304', 'Lago Caonillas', 'Reservoir', 'Puerto Rico', 'PU', 'Utuado', 'Utuado', 18.2515531, -66.6493917, ST_GeomFromText('POINT(18.2515531 -66.6493917)', 4326), NULL, NULL, '1981-02-13', '2015-04-14', NULL, NULL, NULL),
  ('1611305', 'Lago Carite', 'Reservoir', 'Puerto Rico', 'PU', 'Guayama', 'Patillas', 18.0677986, -66.0953662, ST_GeomFromText('POINT(18.0677986 -66.0953662)', 4326), NULL, NULL, '1981-02-13', '2015-04-15', NULL, NULL, NULL),
  ('1611306', 'Lago Coamo', 'Reservoir', 'Puerto Rico', 'PU', 'Santa Isabel', 'Rio Descalabrado', 18.014131, -66.3896141, ST_GeomFromText('POINT(18.014131 -66.3896141)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611307', 'Lago de Guajataca', 'Reservoir', 'Puerto Rico', 'PU', 'San Sebastián', 'Quebradillas', 18.3766138, -66.9160958, ST_GeomFromText('POINT(18.3766138 -66.9160958)', 4326), NULL, NULL, '1981-02-13', '2023-04-05', NULL, NULL, NULL),
  ('1611308', 'Lago Dos Bocas', 'Reservoir', 'Puerto Rico', 'PU', 'Arecibo', 'Utuado', 18.3238822, -66.65753, ST_GeomFromText('POINT(18.3238822 -66.65753)', 4326), NULL, NULL, '1981-02-13', '2015-04-14', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611309', 'Lago El Guineo', 'Reservoir', 'Puerto Rico', 'PU', 'Ciales', 'Jayuya', 18.1573885, -66.5289097, ST_GeomFromText('POINT(18.1573885 -66.5289097)', 4326), NULL, NULL, '1981-02-13', '2015-04-14', NULL, NULL, NULL),
  ('1611310', 'Lago Garzas', 'Reservoir', 'Puerto Rico', 'PU', 'Adjuntas', 'Adjuntas', 18.135738, -66.744754, ST_GeomFromText('POINT(18.135738 -66.744754)', 4326), NULL, NULL, '1981-02-13', '2024-09-20', NULL, NULL, NULL),
  ('1611311', 'Lago Gely', 'Lake', 'Puerto Rico', 'PU', 'Ponce', 'Ponce', 18.0471859, -66.5718392, ST_GeomFromText('POINT(18.0471859 -66.5718392)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611312', 'Lago Giles', 'Lake', 'Puerto Rico', 'PU', 'Ponce', 'Ponce', 18.0385751, -66.5648947, ST_GeomFromText('POINT(18.0385751 -66.5648947)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611313', 'Lago Guayabal', 'Reservoir', 'Puerto Rico', 'PU', 'Villalba', 'Ponce', 18.0950844, -66.5030472, ST_GeomFromText('POINT(18.0950844 -66.5030472)', 4326), NULL, NULL, '1981-02-13', '2013-03-21', NULL, NULL, NULL),
  ('1611314', 'Lago Guayo', 'Reservoir', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.2005807, -66.833923, ST_GeomFromText('POINT(18.2005807 -66.833923)', 4326), NULL, NULL, '1981-02-13', '2014-11-18', NULL, NULL, NULL),
  ('1611315', 'Lago Jordan', 'Reservoir', 'Puerto Rico', 'PU', 'Utuado', 'Adjuntas', 18.2413879, -66.6684072, ST_GeomFromText('POINT(18.2413879 -66.6684072)', 4326), NULL, NULL, '1981-02-13', '2015-04-14', NULL, NULL, NULL),
  ('1611316', 'Lago La Torre', 'Reservoir', 'Puerto Rico', 'PU', 'Juana Díaz', 'Ponce', 18.0496856, -66.5404501, ST_GeomFromText('POINT(18.0496856 -66.5404501)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611317', 'Lago Loiza', 'Reservoir', 'Puerto Rico', 'PU', 'Trujillo Alto', 'Aguas Buenas', 18.3280064, -66.0159986, ST_GeomFromText('POINT(18.3280064 -66.0159986)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611318', 'Lago Lucchetti', 'Reservoir', 'Puerto Rico', 'PU', 'Yauco', 'Yauco', 18.0916279, -66.864343, ST_GeomFromText('POINT(18.0916279 -66.864343)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611319', 'Lago Managua', 'Lake', 'Puerto Rico', 'PU', 'Carolina', 'Carolina', 18.4341129, -65.9779431, ST_GeomFromText('POINT(18.4341129 -65.9779431)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611320', 'Lago Moline', 'Reservoir', 'Puerto Rico', 'PU', 'Ponce', 'Ponce', 18.0555188, -66.5657281, ST_GeomFromText('POINT(18.0555188 -66.5657281)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611321', 'Lago Patillas', 'Reservoir', 'Puerto Rico', 'PU', 'Patillas', 'Patillas', 18.0240845, -66.021537, ST_GeomFromText('POINT(18.0240845 -66.021537)', 4326), NULL, NULL, '1981-02-13', '2015-06-17', NULL, NULL, NULL),
  ('1611322', 'Lago Pellejas', 'Reservoir', 'Puerto Rico', 'PU', 'Adjuntas', 'Adjuntas', 18.2098425, -66.7055261, ST_GeomFromText('POINT(18.2098425 -66.7055261)', 4326), NULL, NULL, '1981-02-13', '2015-04-15', NULL, NULL, NULL),
  ('1611323', 'Lago Ponceña', 'Lake', 'Puerto Rico', 'PU', 'Juana Díaz', 'Ponce', 18.0569075, -66.5407279, ST_GeomFromText('POINT(18.0569075 -66.5407279)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611324', 'Lago Vista Alegre', 'Lake', 'Puerto Rico', 'PU', 'Ponce', 'Ponce', 18.0657961, -66.5526725, ST_GeomFromText('POINT(18.0657961 -66.5526725)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611325', 'Lago Vivi', 'Reservoir', 'Puerto Rico', 'PU', 'Utuado', 'Adjuntas', 18.2276684, -66.6796864, ST_GeomFromText('POINT(18.2276684 -66.6796864)', 4326), NULL, NULL, '1981-02-13', '2015-04-15', NULL, NULL, NULL),
  ('1611326', 'Laguna de las Salinas', 'Lake', 'Puerto Rico', 'PU', 'Ponce', 'Punta Cucharas', 17.9713562, -66.6693402, ST_GeomFromText('POINT(17.9713562 -66.6693402)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611327', 'Laguna de Cornelio', 'Lake', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3105117, -65.3148805, ST_GeomFromText('POINT(18.3105117 -65.3148805)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1611328', 'Laguna de Molino', 'Lake', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3202337, -65.2371007, ST_GeomFromText('POINT(18.3202337 -65.2371007)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611329', 'Laguna de Puerto Nuevo', 'Lake', 'Puerto Rico', 'PU', 'Vega Baja', 'Manati', 18.4830003, -66.4073924, ST_GeomFromText('POINT(18.4830003 -66.4073924)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611330', 'Laguna del Condado', 'Lake', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.4582786, -66.0798882, ST_GeomFromText('POINT(18.4582786 -66.0798882)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611331', 'Laguna del Flamenco', 'Lake', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3244002, -65.3162695, ST_GeomFromText('POINT(18.3244002 -65.3162695)', 4326), NULL, NULL, '1981-02-13', '2011-09-06', 'Official', 'Board Decision', '1950-01-01'),
  ('1611332', 'Laguna Aguas Prietas', 'Lake', 'Puerto Rico', 'PU', 'Fajardo', 'Fajardo', 18.370507, -65.6437727, ST_GeomFromText('POINT(18.370507 -65.6437727)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611333', 'Laguna Atolladero', 'Lake', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Mayaguez', 18.1317347, -67.1836886, ST_GeomFromText('POINT(18.1317347 -67.1836886)', 4326), NULL, NULL, '1981-02-13', '2014-11-18', NULL, NULL, NULL),
  ('1611334', 'Laguna Bocanasilla', 'Lake', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Mayaguez', 18.1530123, -67.1649021, ST_GeomFromText('POINT(18.1530123 -67.1649021)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611335', 'Laguna Cartagena', 'Lake', 'Puerto Rico', 'PU', 'Lajas', 'San German', 18.0138523, -67.1010117, ST_GeomFromText('POINT(18.0138523 -67.1010117)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611336', 'Laguna de Pinoñes', 'Lake', 'Puerto Rico', 'PU', 'Loíza', 'Carolina', 18.4382793, -65.9532208, ST_GeomFromText('POINT(18.4382793 -65.9532208)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611337', 'Laguna Grande', 'Lake', 'Puerto Rico', 'PU', 'Fajardo', 'Cayo Icacos OE N', 18.3763402, -65.6232171, ST_GeomFromText('POINT(18.3763402 -65.6232171)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611338', 'Laguna Guaniquilla', 'Lake', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.0374617, -67.2018466, ST_GeomFromText('POINT(18.0374617 -67.2018466)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611339', 'Laguna Joyuda', 'Lake', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Mayaguez', 18.1295143, -67.1774226, ST_GeomFromText('POINT(18.1295143 -67.1774226)', 4326), NULL, NULL, '1981-02-13', '2014-11-18', NULL, NULL, NULL),
  ('1611340', 'Laguna La Torrecilla', 'Lake', 'Puerto Rico', 'PU', 'Loíza', 'Carolina', 18.4438347, -65.9829431, ST_GeomFromText('POINT(18.4438347 -65.9829431)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1611341', 'Laguna Mata Redonda', 'Lake', 'Puerto Rico', 'PU', 'Dorado', 'Vega Alta', 18.4741119, -66.3107245, ST_GeomFromText('POINT(18.4741119 -66.3107245)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611342', 'Laguna Rica', 'Lake', 'Puerto Rico', 'PU', 'Vega Baja', 'Manati', 18.4518905, -66.4265593, ST_GeomFromText('POINT(18.4518905 -66.4265593)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611343', 'Laguna San José', 'Lake', 'Puerto Rico', 'PU', 'Carolina', 'San Juan', 18.4249466, -66.0248878, ST_GeomFromText('POINT(18.4249466 -66.0248878)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611344', 'Laguna Tortuguero', 'Lake', 'Puerto Rico', 'PU', 'Manatí', 'Manati', 18.463279, -66.4412818, ST_GeomFromText('POINT(18.463279 -66.4412818)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611352', 'Las Cabritas', 'Island', 'Puerto Rico', 'PU', 'Toa Baja', 'Bayamon', 18.473278, -66.1343331, ST_GeomFromText('POINT(18.473278 -66.1343331)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611364', 'Las Cruces', 'Summit', 'Puerto Rico', 'PU', 'Yauco', 'Yauco', 18.047922, -66.8248793, ST_GeomFromText('POINT(18.047922 -66.8248793)', 4326), NULL, NULL, '1981-02-13', '2018-03-24', NULL, NULL, NULL),
  ('1611365', 'Las Cucarachas', 'Island', 'Puerto Rico', 'PU', 'Fajardo', 'Cayo Icacos OE N', 18.4005059, -65.6115505, ST_GeomFromText('POINT(18.4005059 -65.6115505)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611370', 'Las Hermanas', 'Island', 'Puerto Rico', 'PU', 'Culebra', 'Culebra OE W', 18.3146782, -65.3523812, ST_GeomFromText('POINT(18.3146782 -65.3523812)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611371', 'Las Lavanderas del Este', 'Island', 'Puerto Rico', 'PU', 'Ceiba', 'Cayo Icacos', 18.2652778, -65.5397222, ST_GeomFromText('POINT(18.2652778 -65.5397222)', 4326), NULL, NULL, '1981-02-13', '2020-02-10', NULL, NULL, NULL),
  ('1611372', 'Las Lavanderas del Oeste', 'Island', 'Puerto Rico', 'PU', 'Ceiba', 'Cayo Icacos', 18.2619444, -65.5591667, ST_GeomFromText('POINT(18.2619444 -65.5591667)', 4326), NULL, NULL, '1981-02-13', '2020-02-10', NULL, NULL, NULL),
  ('1611382', 'Las Mesas', 'Summit', 'Puerto Rico', 'PU', 'Mayagüez', 'Rosario', 18.1758989, -67.0876308, ST_GeomFromText('POINT(18.1758989 -67.0876308)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1611391', 'Las Piedras Chiquitas', 'Ridge', 'Puerto Rico', 'PU', 'Coamo', 'Coamo', 18.0695826, -66.2758335, ST_GeomFromText('POINT(18.0695826 -66.2758335)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1611394', 'Las Tetas', 'Summit', 'Puerto Rico', 'PU', 'Salinas', 'Cayey', 18.0932918, -66.2312805, ST_GeomFromText('POINT(18.0932918 -66.2312805)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1611396', 'Las Tres Palmas', 'Summit', 'Puerto Rico', 'PU', 'Jayuya', 'Jayuya', 18.220298, -66.5506954, ST_GeomFromText('POINT(18.220298 -66.5506954)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1611415', 'Loma de la Caridad Picnel', 'Summit', 'Puerto Rico', 'PU', 'Sabana Grande', 'Sabana Grande', 18.1222809, -66.9560122, ST_GeomFromText('POINT(18.1222809 -66.9560122)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1611416', 'Loma de la Zarza', 'Summit', 'Puerto Rico', 'PU', 'Jayuya', 'Florida', 18.2730879, -66.5680391, ST_GeomFromText('POINT(18.2730879 -66.5680391)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1611417', 'Loma Correa', 'Summit', 'Puerto Rico', 'PU', 'Arecibo', 'Florida', 18.3723237, -66.6123326, ST_GeomFromText('POINT(18.3723237 -66.6123326)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1611418', 'Loma Pelagatos', 'Summit', 'Puerto Rico', 'PU', 'Coamo', 'Rio Descalabrado', 18.1107912, -66.4112631, ST_GeomFromText('POINT(18.1107912 -66.4112631)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611419', 'Lomas de Santa Marta', 'Summit', 'Puerto Rico', 'PU', 'San Germán', 'San German', 18.0901128, -67.051035, ST_GeomFromText('POINT(18.0901128 -67.051035)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1611420', 'Lomas de Seboruco', 'Summit', 'Puerto Rico', 'PU', 'Guánica', 'Guanica', 17.9818645, -66.8769684, ST_GeomFromText('POINT(17.9818645 -66.8769684)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1611423', 'Los Barros', 'Summit', 'Puerto Rico', 'PU', 'Sabana Grande', 'Sabana Grande', 18.1211902, -66.9615678, ST_GeomFromText('POINT(18.1211902 -66.9615678)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1611424', 'Los Canos', 'Valley', 'Puerto Rico', 'PU', 'Florida', 'Florida', 18.3425472, -66.5864662, ST_GeomFromText('POINT(18.3425472 -66.5864662)', 4326), 18.3388709, -66.5570929, '1981-02-13', '2017-02-28', NULL, NULL, NULL),
  ('1611426', 'Los Cerros Viñet', 'Summit', 'Puerto Rico', 'PU', 'Aguadilla', 'Aguadilla', 18.4090037, -67.1273417, ST_GeomFromText('POINT(18.4090037 -67.1273417)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1611428', 'Los Farallones', 'Island', 'Puerto Rico', 'PU', 'Fajardo', 'Cayo Icacos OE N', 18.3980061, -65.5982172, ST_GeomFromText('POINT(18.3980061 -65.5982172)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1611429', 'Los Gemelos', 'Island', 'Puerto Rico', 'PU', 'Culebra', 'Culebra OE W', 18.3585657, -65.3615482, ST_GeomFromText('POINT(18.3585657 -65.3615482)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1611437', 'Los Negritos', 'Island', 'Puerto Rico', 'PU', 'Arecibo', 'Barceloneta', 18.4932775, -66.6046177, ST_GeomFromText('POINT(18.4932775 -66.6046177)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611440', 'Los Penones', 'Summit', 'Puerto Rico', 'PU', 'San Germán', 'Rosario', 18.1519602, -67.0676596, ST_GeomFromText('POINT(18.1519602 -67.0676596)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1611442', 'Los Picachos', 'Summit', 'Puerto Rico', 'PU', 'Río Grande', 'El Yunque', 18.309225, -65.7870766, ST_GeomFromText('POINT(18.309225 -65.7870766)', 4326), NULL, NULL, '1981-02-13', '2018-03-22', 'Official', 'Board Decision', '1967-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611447', 'Los Tres Picachos', 'Summit', 'Puerto Rico', 'PU', 'Ciales', 'Jayuya', 18.2146961, -66.5411994, ST_GeomFromText('POINT(18.2146961 -66.5411994)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1611475', 'Mar Negro', 'Lake', 'Puerto Rico', 'PU', 'Salinas', 'Salinas', 17.9452451, -66.25989, ST_GeomFromText('POINT(17.9452451 -66.25989)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611489', 'Mata Redonda', 'Island', 'Puerto Rico', 'PU', 'Guayama', 'Central Aguirre', 17.9508006, -66.2060004, ST_GeomFromText('POINT(17.9508006 -66.2060004)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611520', 'Moñtanas Aymamón', 'Range', 'Puerto Rico', 'PU', 'Isabela', 'Quebradillas', 18.4166272, -66.9713708, ST_GeomFromText('POINT(18.4166272 -66.9713708)', 4326), NULL, NULL, '1981-02-13', '2018-03-23', NULL, NULL, NULL),
  ('1611521', 'Montañas de Corozal', 'Range', 'Puerto Rico', 'PU', 'Corozal', 'Corozal', 18.2869385, -66.3319118, ST_GeomFromText('POINT(18.2869385 -66.3319118)', 4326), NULL, NULL, '1981-02-13', '2018-03-22', NULL, NULL, NULL),
  ('1611522', 'Montanas de Juan Gonzalez', 'Range', 'Puerto Rico', 'PU', 'Barranquitas', 'Barranquitas', 18.1950099, -66.319023, ST_GeomFromText('POINT(18.1950099 -66.319023)', 4326), NULL, NULL, '1981-02-13', '2018-03-22', NULL, NULL, NULL),
  ('1611523', 'Montanas de Uroyan', 'Range', 'Puerto Rico', 'PU', 'Las Marías', 'Rosario', 18.2258396, -67.0416795, ST_GeomFromText('POINT(18.2258396 -67.0416795)', 4326), NULL, NULL, '1981-02-13', '2020-04-09', NULL, NULL, NULL),
  ('1611524', 'Montañas Guarionex', 'Range', 'Puerto Rico', 'PU', 'Camuy', 'Camuy', 18.4004962, -66.8721785, ST_GeomFromText('POINT(18.4004962 -66.8721785)', 4326), NULL, NULL, '1981-02-13', '2018-03-23', NULL, NULL, NULL),
  ('1611525', 'Monte de la Brea', 'Summit', 'Puerto Rico', 'PU', 'Guánica', 'Guanica', 17.9386374, -66.9366096, ST_GeomFromText('POINT(17.9386374 -66.9366096)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1611526', 'Monte de la Luz', 'Summit', 'Puerto Rico', 'PU', 'Quebradillas', 'Quebradillas', 18.4509791, -66.9543669, ST_GeomFromText('POINT(18.4509791 -66.9543669)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611527', 'Monte de Santa Ana', 'Summit', 'Puerto Rico', 'PU', 'Bayamón', 'Bayamon', 18.4052229, -66.1453186, ST_GeomFromText('POINT(18.4052229 -66.1453186)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1611529', 'Monte el Gato', 'Summit', 'Puerto Rico', 'PU', 'Cayey', 'Cayey', 18.0843704, -66.180233, ST_GeomFromText('POINT(18.0843704 -66.180233)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1611530', 'Monte el Ojo', 'Summit', 'Puerto Rico', 'PU', 'Moca', 'Moca', 18.4063722, -67.0852952, ST_GeomFromText('POINT(18.4063722 -67.0852952)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1611531', 'Monte Encantado', 'Summit', 'Puerto Rico', 'PU', 'Moca', 'Moca', 18.4164076, -67.0412242, ST_GeomFromText('POINT(18.4164076 -67.0412242)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1611532', 'Monte Figueroa', 'Summit', 'Puerto Rico', 'PU', 'Juana Díaz', 'Ponce', 18.0306183, -66.500857, ST_GeomFromText('POINT(18.0306183 -66.500857)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1611535', 'Monte Grande', 'Summit', 'Puerto Rico', 'PU', 'San Germán', 'San German', 18.0754726, -67.0946462, ST_GeomFromText('POINT(18.0754726 -67.0946462)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1611536', 'Monte Guilarte', 'Summit', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.141562, -66.7689796, ST_GeomFromText('POINT(18.141562 -66.7689796)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1611537', 'Monte Iguina', 'Summit', 'Puerto Rico', 'PU', 'Camuy', 'Quebradillas', 18.4626066, -66.8860746, ST_GeomFromText('POINT(18.4626066 -66.8860746)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1611538', 'Monte Jayuya', 'Summit', 'Puerto Rico', 'PU', 'Ponce', 'Jayuya', 18.1680801, -66.5747045, ST_GeomFromText('POINT(18.1680801 -66.5747045)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1611539', 'Monte Las Pardas', 'Summit', 'Puerto Rico', 'PU', 'Guánica', 'Guanica', 17.9532241, -66.9253478, ST_GeomFromText('POINT(17.9532241 -66.9253478)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611540', 'Monte Llano', 'Ridge', 'Puerto Rico', 'PU', 'Cayey', 'Cayey', 18.0945525, -66.1495793, ST_GeomFromText('POINT(18.0945525 -66.1495793)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1611541', 'Monte Mariquilla', 'Summit', 'Puerto Rico', 'PU', 'Moca', 'Moca', 18.3994288, -67.0635787, ST_GeomFromText('POINT(18.3994288 -67.0635787)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1611542', 'Monte Marqueno', 'Summit', 'Puerto Rico', 'PU', 'Ponce', 'Penuelas', 18.0988551, -66.6525687, ST_GeomFromText('POINT(18.0988551 -66.6525687)', 4326), NULL, NULL, '1981-02-13', '2018-03-23', NULL, NULL, NULL),
  ('1611543', 'Monte Membrillo', 'Summit', 'Puerto Rico', 'PU', 'Yauco', 'Monte Guilarte', 18.1560463, -66.83443, ST_GeomFromText('POINT(18.1560463 -66.83443)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1611544', 'Monte Palmero', 'Summit', 'Puerto Rico', 'PU', 'Sabana Grande', 'Sabana Grande', 18.1094424, -66.9721449, ST_GeomFromText('POINT(18.1094424 -66.9721449)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1611545', 'Monte Resaca', 'Summit', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3233547, -65.2902443, ST_GeomFromText('POINT(18.3233547 -65.2902443)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', 'Official', 'Board Decision', '1950-01-01'),
  ('1611549', 'Montes de Barina', 'Range', 'Puerto Rico', 'PU', 'Guayanilla', 'Yauco', 18.0280081, -66.81829, ST_GeomFromText('POINT(18.0280081 -66.81829)', 4326), NULL, NULL, NULL, '2025-02-12', NULL, NULL, NULL),
  ('1611550', 'Montes de San Patricio', 'Summit', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.4117265, -66.0936705, ST_GeomFromText('POINT(18.4117265 -66.0936705)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1611551', 'Montes de Hatillo', 'Summit', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.3778322, -66.0315719, ST_GeomFromText('POINT(18.3778322 -66.0315719)', 4326), NULL, NULL, '1981-02-13', '2018-03-24', NULL, NULL, NULL),
  ('1611552', 'Montes La Toyosa', 'Summit', 'Puerto Rico', 'PU', 'Villalba', 'Orocovis', 18.1448043, -66.4306955, ST_GeomFromText('POINT(18.1448043 -66.4306955)', 4326), NULL, NULL, '1981-02-13', '2018-03-23', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611576', 'Ojo de Valencia', 'Spring', 'Puerto Rico', 'PU', 'Moca', 'Moca', 18.4263344, -67.0715689, ST_GeomFromText('POINT(18.4263344 -67.0715689)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611641', 'Peña Domingo', 'Summit', 'Puerto Rico', 'PU', 'Cayey', 'Cayey', 18.1091449, -66.2213006, ST_GeomFromText('POINT(18.1091449 -66.2213006)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1611642', 'Peña La Francia', 'Summit', 'Puerto Rico', 'PU', 'Orocovis', 'Orocovis', 18.1945353, -66.4670808, ST_GeomFromText('POINT(18.1945353 -66.4670808)', 4326), NULL, NULL, '1981-02-13', '2015-05-06', NULL, NULL, NULL),
  ('1611644', 'Peñon de los Soldados', 'Summit', 'Puerto Rico', 'PU', 'Cayey', 'Cayey', 18.0676839, -66.2060237, ST_GeomFromText('POINT(18.0676839 -66.2060237)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1611645', 'Peñon de Afuera', 'Island', 'Puerto Rico', 'PU', 'Camuy', 'Camuy', 18.4927214, -66.8693445, ST_GeomFromText('POINT(18.4927214 -66.8693445)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611646', 'Peñon de San Jorge', 'Island', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.469667, -66.0912772, ST_GeomFromText('POINT(18.469667 -66.0912772)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611647', 'Peñon Brusi', 'Island', 'Puerto Rico', 'PU', 'Camuy', 'Camuy', 18.4924437, -66.8548998, ST_GeomFromText('POINT(18.4924437 -66.8548998)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611654', 'Pico del Este', 'Summit', 'Puerto Rico', 'PU', 'Naguabo', 'El Yunque', 18.2686701, -65.75883, ST_GeomFromText('POINT(18.2686701 -65.75883)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1611655', 'Pico del Oeste', 'Summit', 'Puerto Rico', 'PU', 'Ceiba', 'El Yunque', 18.2761082, -65.7645953, ST_GeomFromText('POINT(18.2761082 -65.7645953)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1611656', 'Pico Atalaya', 'Summit', 'Puerto Rico', 'PU', 'Rincón', 'Rincon', 18.3121895, -67.1912937, ST_GeomFromText('POINT(18.3121895 -67.1912937)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611657', 'Pico El Yunque', 'Summit', 'Puerto Rico', 'PU', 'Río Grande', 'El Yunque', 18.3105057, -65.7912759, ST_GeomFromText('POINT(18.3105057 -65.7912759)', 4326), NULL, NULL, '1981-02-13', '2018-03-22', NULL, NULL, NULL),
  ('1611658', 'Pico Fraile', 'Summit', 'Puerto Rico', 'PU', 'Sabana Grande', 'Sabana Grande', 18.1147814, -66.919431, ST_GeomFromText('POINT(18.1147814 -66.919431)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1611659', 'Pico Huton', 'Summit', 'Puerto Rico', 'PU', 'Maunabo', 'Yabucoa', 18.0062172, -65.952388, ST_GeomFromText('POINT(18.0062172 -65.952388)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1611660', 'Pico Lebrón', 'Summit', 'Puerto Rico', 'PU', 'Patillas', 'Yabucoa', 18.0045301, -65.958541, ST_GeomFromText('POINT(18.0045301 -65.958541)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1611661', 'Pico Montoso', 'Summit', 'Puerto Rico', 'PU', 'Maricao', 'Maricao', 18.173308, -66.9968247, ST_GeomFromText('POINT(18.173308 -66.9968247)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1611662', 'Pico Pinto', 'Summit', 'Puerto Rico', 'PU', 'Ponce', 'Ponce', 18.0857722, -66.5982728, ST_GeomFromText('POINT(18.0857722 -66.5982728)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1611663', 'Pico Rodadero', 'Summit', 'Puerto Rico', 'PU', 'Yauco', 'Yauco', 18.1038467, -66.8193022, ST_GeomFromText('POINT(18.1038467 -66.8193022)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1611664', 'Pico San Bernardo', 'Summit', 'Puerto Rico', 'PU', 'Mayagüez', 'Rosario', 18.2224518, -67.0424038, ST_GeomFromText('POINT(18.2224518 -67.0424038)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1611665', 'Piedra de la Mula', 'Summit', 'Puerto Rico', 'PU', 'Yauco', 'Yauco', 18.0865312, -66.853641, ST_GeomFromText('POINT(18.0865312 -66.853641)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1611666', 'Piedra de Degetau', 'Summit', 'Puerto Rico', 'PU', 'Aibonito', 'Barranquitas', 18.1268277, -66.262627, ST_GeomFromText('POINT(18.1268277 -66.262627)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611668', 'Piedra Blanca', 'Summit', 'Puerto Rico', 'PU', 'San Lorenzo', 'Juncos', 18.1521176, -65.9657852, ST_GeomFromText('POINT(18.1521176 -65.9657852)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1611669', 'Piedra Blanca', 'Summit', 'Puerto Rico', 'PU', 'Jayuya', 'Jayuya', 18.1793054, -66.5757298, ST_GeomFromText('POINT(18.1793054 -66.5757298)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1611670', 'Piedra Reinada', 'Summit', 'Puerto Rico', 'PU', 'San Lorenzo', 'Caguas', 18.1561897, -66.0161202, ST_GeomFromText('POINT(18.1561897 -66.0161202)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1611675', 'Piragua de Adentro', 'Island', 'Puerto Rico', 'PU', 'Ceiba', 'Cayo Icacos', 18.2682902, -65.5312716, ST_GeomFromText('POINT(18.2682902 -65.5312716)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611676', 'Piragua de Afuera', 'Island', 'Puerto Rico', 'PU', 'Ceiba', 'Cayo Icacos', 18.2727346, -65.5090492, ST_GeomFromText('POINT(18.2727346 -65.5090492)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611685', 'Plato Colmar', 'Summit', 'Puerto Rico', 'PU', 'Sabana Grande', 'Sabana Grande', 18.1097611, -66.9547948, ST_GeomFromText('POINT(18.1097611 -66.9547948)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1611686', 'Playa de las Tres Palmitas', 'Beach', 'Puerto Rico', 'PU', 'Loíza', 'Carolina', 18.4471678, -65.9398874, ST_GeomFromText('POINT(18.4471678 -65.9398874)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611687', 'Playa de los Tocones', 'Beach', 'Puerto Rico', 'PU', 'Vega Alta', 'Vega Alta', 18.4755008, -66.3190579, ST_GeomFromText('POINT(18.4755008 -66.3190579)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611688', 'Playa de Cerro Gordo', 'Beach', 'Puerto Rico', 'PU', 'Vega Baja', 'Vega Alta', 18.4852225, -66.3596141, ST_GeomFromText('POINT(18.4852225 -66.3596141)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611694', 'Playa de Jaboncillo', 'Beach', 'Puerto Rico', 'PU', 'Guánica', 'Guanica', 17.9527449, -66.9043424, ST_GeomFromText('POINT(17.9527449 -66.9043424)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611695', 'Playa de Jauca', 'Beach', 'Puerto Rico', 'PU', 'Santa Isabel', 'Salinas', 17.9682999, -66.3629468, ST_GeomFromText('POINT(17.9682999 -66.3629468)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611696', 'Playa de Luquillo', 'Beach', 'Puerto Rico', 'PU', 'Luquillo', 'Fajardo OE N', 18.3860611, -65.729607, ST_GeomFromText('POINT(18.3860611 -65.729607)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611701', 'Playa de Sardinera', 'Beach', 'Puerto Rico', 'PU', 'Dorado', 'Vega Alta', 18.4723028, -66.2908816, ST_GeomFromText('POINT(18.4723028 -66.2908816)', 4326), NULL, NULL, '1981-02-13', '2013-09-04', NULL, NULL, NULL),
  ('1611702', 'Playa de Tamarindo', 'Beach', 'Puerto Rico', 'PU', 'Guayanilla', 'Punta Verraco', 17.9527456, -66.8482307, ST_GeomFromText('POINT(17.9527456 -66.8482307)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611703', 'Playa Blanca', 'Beach', 'Puerto Rico', 'PU', 'Ceiba', 'Naguabo', 18.1994034, -65.6518283, ST_GeomFromText('POINT(18.1994034 -65.6518283)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611704', 'Playa Canalejo', 'Beach', 'Puerto Rico', 'PU', 'Fajardo', 'Cayo Icacos OE N', 18.377729, -65.6176616, ST_GeomFromText('POINT(18.377729 -65.6176616)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611706', 'Playa Flamenco', 'Beach', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3280112, -65.3162695, ST_GeomFromText('POINT(18.3280112 -65.3162695)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1611708', 'Playa Manzanilla', 'Beach', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.2924566, -65.2593233, ST_GeomFromText('POINT(18.2924566 -65.2593233)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1611710', 'Playa Resaca', 'Beach', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3310667, -65.2996024, ST_GeomFromText('POINT(18.3310667 -65.2996024)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1611721', 'Pozo Del Rey', 'Lake', 'Puerto Rico', 'PU', 'Quebradillas', 'Quebradillas', 18.4668889, -66.9351785, ST_GeomFromText('POINT(18.4668889 -66.9351785)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611724', 'Presada Loco', 'Reservoir', 'Puerto Rico', 'PU', 'Yauco', 'Sabana Grande', 18.0424634, -66.886843, ST_GeomFromText('POINT(18.0424634 -66.886843)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611735', 'Pue Constisucion', 'Cape', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.4399461, -66.0807215, ST_GeomFromText('POINT(18.4399461 -66.0807215)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611736', 'Puerto Arecibo', 'Bay', 'Puerto Rico', 'PU', 'Arecibo', 'Arecibo', 18.4766115, -66.7073972, ST_GeomFromText('POINT(18.4766115 -66.7073972)', 4326), NULL, NULL, '1981-02-13', '2011-06-06', 'Official', 'Board Decision', '1958-01-01'),
  ('1611737', 'Puerto de Humacao', 'Bay', 'Puerto Rico', 'PU', 'Humacao', 'Naguabo', 18.1605164, -65.7496061, ST_GeomFromText('POINT(18.1605164 -65.7496061)', 4326), NULL, NULL, '1981-02-13', '2011-06-06', 'Official', 'Board Decision', '1958-01-01'),
  ('1611739', 'Puerto de Naguabo', 'Bay', 'Puerto Rico', 'PU', 'Naguabo', 'Naguabo', 18.1880148, -65.7129392, ST_GeomFromText('POINT(18.1880148 -65.7129392)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611741', 'Puerto Medio Mundo', 'Bay', 'Puerto Rico', 'PU', 'Ceiba', 'Cayo Icacos', 18.262734, -65.6226614, ST_GeomFromText('POINT(18.262734 -65.6226614)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611742', 'Puerto Nuevo', 'Bay', 'Puerto Rico', 'PU', 'Vega Baja', 'Manati', 18.4907777, -66.4026701, ST_GeomFromText('POINT(18.4907777 -66.4026701)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611745', 'Puerto Quijano', 'Bay', 'Puerto Rico', 'PU', 'Lajas', 'Parguera', 17.9532999, -67.0129547, ST_GeomFromText('POINT(17.9532999 -67.0129547)', 4326), NULL, NULL, '1981-02-13', '2011-06-06', 'Official', 'Board Decision', '1958-01-01'),
  ('1611746', 'Puerto Real', 'Bay', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.0696826, -67.1910132, ST_GeomFromText('POINT(18.0696826 -67.1910132)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611749', 'Puerto Yabucoa', 'Bay', 'Puerto Rico', 'PU', 'Yabucoa', 'Punta Guayanes', 18.0480213, -65.8246057, ST_GeomFromText('POINT(18.0480213 -65.8246057)', 4326), NULL, NULL, '1981-02-13', '2011-06-20', 'Official', 'Board Decision', '1957-10-02');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611751', 'Punta del Boqueron', 'Cape', 'Puerto Rico', 'PU', 'Aguada', 'Aguadilla', 18.3988348, -67.1893475, ST_GeomFromText('POINT(18.3988348 -67.1893475)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611752', 'Punta del Este', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3119006, -65.2212671, ST_GeomFromText('POINT(18.3119006 -65.2212671)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1611753', 'Punta del Morro', 'Cape', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.4713336, -66.124333, ST_GeomFromText('POINT(18.4713336 -66.124333)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611754', 'Punta del Obispo', 'Cape', 'Puerto Rico', 'PU', 'Lajas', 'Guanica', 17.953578, -66.9810099, ST_GeomFromText('POINT(17.953578 -66.9810099)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611755', 'Punta del Viento', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.2935678, -65.2718237, ST_GeomFromText('POINT(18.2935678 -65.2718237)', 4326), NULL, NULL, '1981-02-13', '2011-06-25', 'Official', 'Board Decision', '1950-01-01'),
  ('1611756', 'Punta Aguila', 'Cape', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Cabo Rojo', 17.9524654, -67.2143464, ST_GeomFromText('POINT(17.9524654 -67.2143464)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611757', 'Punta Aguila', 'Cape', 'Puerto Rico', 'PU', 'Santa Isabel', 'Salinas', 17.9549671, -66.3696137, ST_GeomFromText('POINT(17.9549671 -66.3696137)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611758', 'Punta Aguila', 'Cape', 'Puerto Rico', 'PU', 'Fajardo', 'Cayo Icacos', 18.3518974, -65.5726612, ST_GeomFromText('POINT(18.3518974 -65.5726612)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611759', 'Punta Agujereada', 'Cape', 'Puerto Rico', 'PU', 'Aguadilla', 'Aguadilla OE N', 18.507997, -67.137403, ST_GeomFromText('POINT(18.507997 -67.137403)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611760', 'Punta Algarrobo', 'Cape', 'Puerto Rico', 'PU', 'Mayagüez', 'Mayaguez', 18.2268979, -67.1732356, ST_GeomFromText('POINT(18.2268979 -67.1732356)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611761', 'Punta Algodones', 'Cape', 'Puerto Rico', 'PU', 'Ceiba', 'Naguabo', 18.1980146, -65.6518282, ST_GeomFromText('POINT(18.1980146 -65.6518282)', 4326), NULL, NULL, '1981-02-13', '2011-09-09', 'Official', 'Board Decision', '1958-01-01'),
  ('1611762', 'Punta Almodovar', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3007897, -65.2551566, ST_GeomFromText('POINT(18.3007897 -65.2551566)', 4326), NULL, NULL, '1981-02-13', '2011-06-25', 'Official', 'Board Decision', '1950-01-01'),
  ('1611763', 'Punta Arenas', 'Cape', 'Puerto Rico', 'PU', 'Salinas', 'Salinas', 17.9427453, -66.2890571, ST_GeomFromText('POINT(17.9427453 -66.2890571)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611764', 'Punta Arenas', 'Cape', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Mayaguez', 18.1366241, -67.1857357, ST_GeomFromText('POINT(18.1366241 -67.1857357)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611765', 'Punta Ballena', 'Cape', 'Puerto Rico', 'PU', 'Guánica', 'Punta Verraco', 17.9452457, -66.862953, ST_GeomFromText('POINT(17.9452457 -66.862953)', 4326), NULL, NULL, '1981-02-13', '2015-08-10', 'Official', 'Board Decision', '1967-01-01'),
  ('1611766', 'Punta Barrancas', 'Cape', 'Puerto Rico', 'PU', 'Guayama', 'Guayama', 17.9477454, -66.1234988, ST_GeomFromText('POINT(17.9477454 -66.1234988)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611767', 'Punta Barrancas', 'Cape', 'Puerto Rico', 'PU', 'Fajardo', 'Fajardo', 18.3088431, -65.6251614, ST_GeomFromText('POINT(18.3088431 -65.6251614)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611768', 'Punta Batería', 'Cape', 'Puerto Rico', 'PU', 'Fajardo', 'Fajardo', 18.3438416, -65.630717, ST_GeomFromText('POINT(18.3438416 -65.630717)', 4326), NULL, NULL, '1981-02-13', '2011-06-10', 'Official', 'Board Decision', '1958-02-06'),
  ('1611769', 'Punta Boca Juana', 'Cape', 'Puerto Rico', 'PU', 'Dorado', 'Vega Alta', 18.4768896, -66.2546123, ST_GeomFromText('POINT(18.4768896 -66.2546123)', 4326), NULL, NULL, '1981-02-13', '2011-06-25', 'Official', 'Board Decision', '1958-01-01'),
  ('1611770', 'Punta Boca Morena', 'Cape', 'Puerto Rico', 'PU', 'Mayagüez', 'Mayaguez', 18.2124541, -67.1587909, ST_GeomFromText('POINT(18.2124541 -67.1587909)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1966-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611771', 'Punta Boquilla', 'Cape', 'Puerto Rico', 'PU', 'Manatí', 'Manati', 18.4768896, -66.4998937, ST_GeomFromText('POINT(18.4768896 -66.4998937)', 4326), NULL, NULL, '1981-02-13', '2013-03-21', NULL, NULL, NULL),
  ('1611772', 'Punta Borinquen', 'Cape', 'Puerto Rico', 'PU', 'Aguadilla', 'Aguadilla', 18.4785538, -67.1687922, ST_GeomFromText('POINT(18.4785538 -67.1687922)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611777', 'Punta Brea', 'Cape', 'Puerto Rico', 'PU', 'Guánica', 'Guanica', 17.9319125, -66.9196202, ST_GeomFromText('POINT(17.9319125 -66.9196202)', 4326), NULL, NULL, '1981-02-13', '2015-08-10', NULL, NULL, NULL),
  ('1611778', 'Punta Caballo', 'Cape', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques West', 18.1357959, -65.503215, ST_GeomFromText('POINT(18.1357959 -65.503215)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611779', 'Punta Cabullones', 'Cape', 'Puerto Rico', 'PU', 'Ponce', 'Playa De Ponce', 17.9619121, -66.5843386, ST_GeomFromText('POINT(17.9619121 -66.5843386)', 4326), NULL, NULL, '1981-02-13', '2015-08-10', 'Official', 'Board Decision', '1979-01-01'),
  ('1611780', 'Punta Cadena', 'Cape', 'Puerto Rico', 'PU', 'Rincón', 'Rincon', 18.2999496, -67.235181, ST_GeomFromText('POINT(18.2999496 -67.235181)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611781', 'Punta Caigo o no Caigo', 'Cape', 'Puerto Rico', 'PU', 'Mayagüez', 'Isla de Mona', 18.0534788, -67.896924, ST_GeomFromText('POINT(18.0534788 -67.896924)', 4326), NULL, NULL, '1981-02-13', '2013-09-06', NULL, NULL, NULL),
  ('1611782', 'Punta Candelero', 'Cape', 'Puerto Rico', 'PU', 'Humacao', 'Punta Guayanes', 18.091075, -65.7893279, ST_GeomFromText('POINT(18.091075 -65.7893279)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611783', 'Punta Cangrejos', 'Cape', 'Puerto Rico', 'PU', 'Loíza', 'Carolina', 18.4596674, -65.9909987, ST_GeomFromText('POINT(18.4596674 -65.9909987)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611784', 'Punta Caracoles', 'Cape', 'Puerto Rico', 'PU', 'Arecibo', 'Arecibo', 18.4893887, -66.673508, ST_GeomFromText('POINT(18.4893887 -66.673508)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611785', 'Punta Carenero', 'Cape', 'Puerto Rico', 'PU', 'Ponce', 'Playa De Ponce', 17.9646899, -66.612117, ST_GeomFromText('POINT(17.9646899 -66.612117)', 4326), NULL, NULL, '1981-02-13', '2015-08-10', 'Official', 'Board Decision', '1958-01-01'),
  ('1611786', 'Punta Carenero', 'Cape', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.0732935, -67.1954577, ST_GeomFromText('POINT(18.0732935 -67.1954577)', 4326), NULL, NULL, '1981-02-13', '2011-06-25', 'Official', 'Board Decision', '1958-01-01'),
  ('1611787', 'Punta Carenero', 'Cape', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.1216307, -65.3654356, ST_GeomFromText('POINT(18.1216307 -65.3654356)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611788', 'Punta Carenero', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.2944011, -65.2746016, ST_GeomFromText('POINT(18.2944011 -65.2746016)', 4326), NULL, NULL, '2000-01-01', '2011-06-25', 'Official', 'Board Decision', '1950-01-01'),
  ('1611789', 'Punta Cascajo', 'Cape', 'Puerto Rico', 'PU', 'Ceiba', 'Naguabo', 18.206903, -65.6476617, ST_GeomFromText('POINT(18.206903 -65.6476617)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611790', 'Punta Cayito', 'Cape', 'Puerto Rico', 'PU', 'Santa Isabel', 'Santa Isabel', 17.9599665, -66.4285034, ST_GeomFromText('POINT(17.9599665 -66.4285034)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611791', 'Punta Cerro Gordo', 'Cape', 'Puerto Rico', 'PU', 'Vega Alta', 'Vega Alta', 18.4849447, -66.3404471, ST_GeomFromText('POINT(18.4849447 -66.3404471)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611792', 'Punta Chivato', 'Cape', 'Puerto Rico', 'PU', 'Manatí', 'Manati', 18.4849446, -66.4404484, ST_GeomFromText('POINT(18.4849446 -66.4404484)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611793', 'Punta Colchones', 'Cape', 'Puerto Rico', 'PU', 'Salinas', 'Central Aguirre', 17.9321903, -66.231834, ST_GeomFromText('POINT(17.9321903 -66.231834)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611794', 'Punta Corozo', 'Cape', 'Puerto Rico', 'PU', 'Dorado', 'Bayamon', 18.4677229, -66.199056, ST_GeomFromText('POINT(18.4677229 -66.199056)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611795', 'Punta Cruz', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.301623, -65.338492, ST_GeomFromText('POINT(18.301623 -65.338492)', 4326), NULL, NULL, '1981-02-13', '2011-06-25', 'Official', 'Board Decision', '1950-01-01'),
  ('1611796', 'Punta Cucharas', 'Cape', 'Puerto Rico', 'PU', 'Ponce', 'Punta Cucharas', 17.9674674, -66.6726737, ST_GeomFromText('POINT(17.9674674 -66.6726737)', 4326), NULL, NULL, '1981-02-13', '2015-08-10', 'Official', 'Board Decision', '1979-01-01'),
  ('1611797', 'Punta Cueva de Ayala', 'Cape', 'Puerto Rico', 'PU', 'Lajas', 'Parguera', 17.9591323, -67.0776779, ST_GeomFromText('POINT(17.9591323 -67.0776779)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611798', 'Punta Embarcadero', 'Cape', 'Puerto Rico', 'PU', 'Luquillo', 'Fajardo OE N', 18.3891165, -65.7287737, ST_GeomFromText('POINT(18.3891165 -65.7287737)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611799', 'Punta Ensenada', 'Cape', 'Puerto Rico', 'PU', 'Rincón', 'Rincon OE W', 18.3443916, -67.2604583, ST_GeomFromText('POINT(18.3443916 -67.2604583)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611800', 'Punta Escambron', 'Cape', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.4666115, -66.0865548, ST_GeomFromText('POINT(18.4666115 -66.0865548)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611801', 'Punta Este', 'Cape', 'Puerto Rico', 'PU', 'Mayagüez', 'Isla de Mona OE E', 18.0808755, -67.8513908, ST_GeomFromText('POINT(18.0808755 -67.8513908)', 4326), NULL, NULL, '1981-02-13', '2013-03-21', NULL, NULL, NULL),
  ('1611802', 'Punta Fajardo', 'Cape', 'Puerto Rico', 'PU', 'Fajardo', 'Fajardo', 18.3316199, -65.6268281, ST_GeomFromText('POINT(18.3316199 -65.6268281)', 4326), NULL, NULL, '1981-02-13', '2011-09-06', 'Official', 'Board Decision', '1958-01-01'),
  ('1611803', 'Punta Figueras', 'Cape', 'Puerto Rico', 'PU', 'Ceiba', 'Cayo Icacos', 18.280511, -65.6248836, ST_GeomFromText('POINT(18.280511 -65.6248836)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611804', 'Punta Figuras', 'Cape', 'Puerto Rico', 'PU', 'Arroyo', 'Guayama', 17.9535789, -66.0479419, ST_GeomFromText('POINT(17.9535789 -66.0479419)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611805', 'Punta Flamenco', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3377331, -65.3098804, ST_GeomFromText('POINT(18.3377331 -65.3098804)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1611806', 'Punta Fraile', 'Cape', 'Puerto Rico', 'PU', 'Humacao', 'Punta Guayanes', 18.079409, -65.7962723, ST_GeomFromText('POINT(18.079409 -65.7962723)', 4326), NULL, NULL, '1981-02-13', '2011-06-30', 'Official', 'Board Decision', '1958-01-01'),
  ('1611807', 'Punta Fraile', 'Cape', 'Puerto Rico', 'PU', 'Dorado', 'Vega Alta', 18.4777987, -66.2768054, ST_GeomFromText('POINT(18.4777987 -66.2768054)', 4326), NULL, NULL, '1981-02-13', '2013-09-04', NULL, NULL, NULL),
  ('1611808', 'Punta Garza', 'Cape', 'Puerto Rico', 'PU', 'Vega Baja', 'Manati', 18.4885557, -66.3779476, ST_GeomFromText('POINT(18.4885557 -66.3779476)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611809', 'Punta Gorda', 'Cape', 'Puerto Rico', 'PU', 'Rincón', 'Rincon OE W', 18.3702238, -67.2604584, ST_GeomFromText('POINT(18.3702238 -67.2604584)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611810', 'Punta Gorda', 'Cape', 'Puerto Rico', 'PU', 'Fajardo', 'Fajardo', 18.3593965, -65.6254392, ST_GeomFromText('POINT(18.3593965 -65.6254392)', 4326), NULL, NULL, '1981-02-13', '2011-06-25', NULL, NULL, NULL),
  ('1611811', 'Punta Gotay', 'Cape', 'Puerto Rico', 'PU', 'Guayanilla', 'Punta Verraco', 17.9808, -66.7621193, ST_GeomFromText('POINT(17.9808 -66.7621193)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611812', 'Punta Guanajibo', 'Cape', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Mayaguez', 18.1652339, -67.1846246, ST_GeomFromText('POINT(18.1652339 -67.1846246)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611813', 'Punta Guaniquilla', 'Cape', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.038295, -67.2054577, ST_GeomFromText('POINT(18.038295 -67.2054577)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611814', 'Punta Guayacan', 'Cape', 'Puerto Rico', 'PU', 'Lajas', 'Parguera', 17.9519102, -67.0899003, ST_GeomFromText('POINT(17.9519102 -67.0899003)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611815', 'Punta Guayanes', 'Cape', 'Puerto Rico', 'PU', 'Yabucoa', 'Punta Guayanes', 18.0574656, -65.8084944, ST_GeomFromText('POINT(18.0574656 -65.8084944)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611816', 'Punta Iglesia', 'Cape', 'Puerto Rico', 'PU', 'Loíza', 'Rio Grande', 18.4349463, -65.854053, ST_GeomFromText('POINT(18.4349463 -65.854053)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611817', 'Punta Jacinto', 'Cape', 'Puerto Rico', 'PU', 'Guánica', 'Guanica', 17.9485788, -66.8779532, ST_GeomFromText('POINT(17.9485788 -66.8779532)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611818', 'Punta Jacinto', 'Cape', 'Puerto Rico', 'PU', 'Isabela', 'Isabela', 18.5152197, -67.0757358, ST_GeomFromText('POINT(18.5152197 -67.0757358)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611819', 'Punta Jaguey', 'Cape', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Cabo Rojo', 17.9374661, -67.1968461, ST_GeomFromText('POINT(17.9374661 -67.1968461)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611820', 'Punta Jalova', 'Cape', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.1180198, -65.3346021, ST_GeomFromText('POINT(18.1180198 -65.3346021)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611821', 'Punta Jorobado', 'Cape', 'Puerto Rico', 'PU', 'Guánica', 'Guanica', 17.9321901, -66.9560094, ST_GeomFromText('POINT(17.9321901 -66.9560094)', 4326), NULL, NULL, '1981-02-13', '2015-08-10', NULL, NULL, NULL),
  ('1611822', 'Punta La Bandera', 'Cape', 'Puerto Rico', 'PU', 'Luquillo', 'Fajardo OE N', 18.3882833, -65.7221069, ST_GeomFromText('POINT(18.3882833 -65.7221069)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611823', 'Punta La Mela', 'Cape', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.0660716, -67.1965688, ST_GeomFromText('POINT(18.0660716 -67.1965688)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611824', 'Punta Larga', 'Island', 'Puerto Rico', 'PU', 'Loíza', 'Carolina', 18.4471679, -65.981832, ST_GeomFromText('POINT(18.4471679 -65.981832)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611825', 'Punta Las Tunas', 'Cape', 'Puerto Rico', 'PU', 'Arecibo', 'Arecibo', 18.492444, -66.6421187, ST_GeomFromText('POINT(18.492444 -66.6421187)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611826', 'Punta Los Ingleses', 'Cape', 'Puerto Rico', 'PU', 'Mayagüez', 'Isla de Mona', 18.0572938, -67.8758955, ST_GeomFromText('POINT(18.0572938 -67.8758955)', 4326), NULL, NULL, '1981-02-13', '2013-09-06', NULL, NULL, NULL),
  ('1611827', 'Punta Maldonado', 'Cape', 'Puerto Rico', 'PU', 'Loíza', 'Carolina', 18.4593896, -65.9804431, ST_GeomFromText('POINT(18.4593896 -65.9804431)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611828', 'Punta Mameyes', 'Cape', 'Puerto Rico', 'PU', 'Dorado', 'Vega Alta', 18.4774722, -66.2989819, ST_GeomFromText('POINT(18.4774722 -66.2989819)', 4326), NULL, NULL, '1981-02-13', '2013-09-04', NULL, NULL, NULL),
  ('1611829', 'Punta Manglillo', 'Cape', 'Puerto Rico', 'PU', 'Guánica', 'Guanica', 17.928857, -66.9315646, ST_GeomFromText('POINT(17.928857 -66.9315646)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611830', 'Punta Manglillo', 'Cape', 'Puerto Rico', 'PU', 'Hatillo', 'Camuy', 18.4904996, -66.8240657, ST_GeomFromText('POINT(18.4904996 -66.8240657)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611831', 'Punta Maracayo', 'Cape', 'Puerto Rico', 'PU', 'Hatillo', 'Camuy', 18.4929997, -66.794065, ST_GeomFromText('POINT(18.4929997 -66.794065)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611832', 'Punta Marchiquita', 'Cape', 'Puerto Rico', 'PU', 'Manatí', 'Manati', 18.4735564, -66.4835046, ST_GeomFromText('POINT(18.4735564 -66.4835046)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611833', 'Punta Mata Redonda', 'Cape', 'Puerto Rico', 'PU', 'Fajardo', 'Cayo Icacos', 18.3038433, -65.6246058, ST_GeomFromText('POINT(18.3038433 -65.6246058)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611834', 'Punta Melones', 'Cape', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Cabo Rojo', 17.9924637, -67.2129575, ST_GeomFromText('POINT(17.9924637 -67.2129575)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611835', 'Punta Meseta', 'Cape', 'Puerto Rico', 'PU', 'Guánica', 'Guanica', 17.9510784, -66.9043424, ST_GeomFromText('POINT(17.9510784 -66.9043424)', 4326), NULL, NULL, '1981-02-13', '2015-08-10', NULL, NULL, NULL),
  ('1611836', 'Punta Miquillo', 'Cape', 'Puerto Rico', 'PU', 'Río Grande', 'Rio Grande', 18.4157812, -65.7948857, ST_GeomFromText('POINT(18.4157812 -65.7948857)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611837', 'Punta Moja Casabe', 'Cape', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Cabo Rojo', 17.9835753, -67.2151798, ST_GeomFromText('POINT(17.9835753 -67.2151798)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611838', 'Punta Molino', 'Cape', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Cabo Rojo', 17.95441, -67.1582344, ST_GeomFromText('POINT(17.95441 -67.1582344)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611839', 'Punta Montalva', 'Cape', 'Puerto Rico', 'PU', 'Lajas', 'Guanica', 17.9580222, -66.9826766, ST_GeomFromText('POINT(17.9580222 -66.9826766)', 4326), NULL, NULL, '1981-02-13', '2015-08-10', NULL, NULL, NULL),
  ('1611840', 'Punta Mosquitos', 'Island', 'Puerto Rico', 'PU', 'Loíza', 'Carolina', 18.444668, -65.9757209, ST_GeomFromText('POINT(18.444668 -65.9757209)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611841', 'Punta Ostiones', 'Cape', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.0907928, -67.1979578, ST_GeomFromText('POINT(18.0907928 -67.1979578)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611842', 'Punta Palmas Altas', 'Cape', 'Puerto Rico', 'PU', 'Barceloneta', 'Barceloneta', 18.4896666, -66.5615613, ST_GeomFromText('POINT(18.4896666 -66.5615613)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611843', 'Punta Palo Seco', 'Cape', 'Puerto Rico', 'PU', 'Toa Baja', 'Bayamon', 18.4627229, -66.1401666, ST_GeomFromText('POINT(18.4627229 -66.1401666)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611844', 'Punta Papayo', 'Cape', 'Puerto Rico', 'PU', 'Lajas', 'Parguera', 17.9716323, -67.029344, ST_GeomFromText('POINT(17.9716323 -67.029344)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611845', 'Punta Parguera', 'Cape', 'Puerto Rico', 'PU', 'Lajas', 'Parguera', 17.9738542, -67.0554554, ST_GeomFromText('POINT(17.9738542 -67.0554554)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611846', 'Punta Pastillo', 'Cape', 'Puerto Rico', 'PU', 'Juana Díaz', 'Santa Isabel', 17.987465, -66.4779492, ST_GeomFromText('POINT(17.987465 -66.4779492)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611847', 'Punta Peñon', 'Cape', 'Puerto Rico', 'PU', 'Camuy', 'Camuy', 18.4918882, -66.8671223, ST_GeomFromText('POINT(18.4918882 -66.8671223)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611848', 'Punta Peñones', 'Cape', 'Puerto Rico', 'PU', 'Lajas', 'Parguera', 17.9610775, -67.0026769, ST_GeomFromText('POINT(17.9610775 -67.0026769)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611849', 'Punta Pera', 'Cape', 'Puerto Rico', 'PU', 'Guánica', 'Guanica', 17.9652444, -66.9262871, ST_GeomFromText('POINT(17.9652444 -66.9262871)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611850', 'Punta Percha', 'Cape', 'Puerto Rico', 'PU', 'Río Grande', 'Rio Grande', 18.3977269, -65.7623853, ST_GeomFromText('POINT(18.3977269 -65.7623853)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611851', 'Punta Pescadores', 'Cape', 'Puerto Rico', 'PU', 'Guánica', 'Guanica', 17.9499672, -66.9096202, ST_GeomFromText('POINT(17.9499672 -66.9096202)', 4326), NULL, NULL, '1981-02-13', '2015-08-10', NULL, NULL, NULL),
  ('1611852', 'Punta Petrona', 'Cape', 'Puerto Rico', 'PU', 'Santa Isabel', 'Santa Isabel', 17.9385788, -66.3862806, ST_GeomFromText('POINT(17.9385788 -66.3862806)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611853', 'Punta Picua', 'Cape', 'Puerto Rico', 'PU', 'Río Grande', 'Rio Grande', 18.4091151, -65.7748855, ST_GeomFromText('POINT(18.4091151 -65.7748855)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611854', 'Punta Piedrita', 'Cape', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.4571674, -66.0657213, ST_GeomFromText('POINT(18.4571674 -66.0657213)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611855', 'Punta Pitahaya', 'Cape', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Parguera', 17.9482991, -67.1229562, ST_GeomFromText('POINT(17.9482991 -67.1229562)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611856', 'Punta Pozuelo', 'Cape', 'Puerto Rico', 'PU', 'Guayama', 'Central Aguirre', 17.9369123, -66.2015557, ST_GeomFromText('POINT(17.9369123 -66.2015557)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611857', 'Punta Puerto Nuevo', 'Cape', 'Puerto Rico', 'PU', 'Vega Baja', 'Manati', 18.4938331, -66.3985034, ST_GeomFromText('POINT(18.4938331 -66.3985034)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611858', 'Punta Puntilla', 'Cape', 'Puerto Rico', 'PU', 'Camuy', 'Camuy', 18.4904993, -66.8693445, ST_GeomFromText('POINT(18.4904993 -66.8693445)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611859', 'Punta Rodeo', 'Cape', 'Puerto Rico', 'PU', 'Guayama', 'Central Aguirre', 17.944412, -66.2132226, ST_GeomFromText('POINT(17.944412 -66.2132226)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611860', 'Punta Salinas', 'Cape', 'Puerto Rico', 'PU', 'Salinas', 'Salinas', 17.9599667, -66.2962794, ST_GeomFromText('POINT(17.9599667 -66.2962794)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611861', 'Punta Salinas', 'Cape', 'Puerto Rico', 'PU', 'Toa Baja', 'Bayamon', 18.4738337, -66.1843337, ST_GeomFromText('POINT(18.4738337 -66.1843337)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611863', 'Punta Sardina', 'Cape', 'Puerto Rico', 'PU', 'Isabela', 'Isabela', 18.511331, -67.0204573, ST_GeomFromText('POINT(18.511331 -67.0204573)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611864', 'Punta Sombrero', 'Cape', 'Puerto Rico', 'PU', 'Guánica', 'Guanica', 17.939412, -66.9582316, ST_GeomFromText('POINT(17.939412 -66.9582316)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611865', 'Punta Tocon', 'Cape', 'Puerto Rico', 'PU', 'Lajas', 'Parguera', 17.946077, -67.1096227, ST_GeomFromText('POINT(17.946077 -67.1096227)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611866', 'Punta Tocones', 'Cape', 'Puerto Rico', 'PU', 'Toa Baja', 'Bayamon', 18.4624451, -66.144611, ST_GeomFromText('POINT(18.4624451 -66.144611)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611867', 'Punta Toro', 'Cape', 'Puerto Rico', 'PU', 'Maunabo', 'Punta Guayanes', 18.0052448, -65.8579394, ST_GeomFromText('POINT(18.0052448 -65.8579394)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611868', 'Punta Tuna', 'Cape', 'Puerto Rico', 'PU', 'Maunabo', 'Punta Tuna', 17.9883007, -65.8848843, ST_GeomFromText('POINT(17.9883007 -65.8848843)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611869', 'Punta Uvero', 'Cape', 'Puerto Rico', 'PU', 'Loíza', 'Rio Grande', 18.4327244, -65.8371084, ST_GeomFromText('POINT(18.4327244 -65.8371084)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611870', 'Punta Vacia Talega', 'Cape', 'Puerto Rico', 'PU', 'Loíza', 'Carolina', 18.45189, -65.9059981, ST_GeomFromText('POINT(18.45189 -65.9059981)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611871', 'Punta Vaquero', 'Cape', 'Puerto Rico', 'PU', 'Guayanilla', 'Punta Verraco', 17.9499679, -66.8385084, ST_GeomFromText('POINT(17.9499679 -66.8385084)', 4326), NULL, NULL, '1981-02-13', '2015-08-10', NULL, NULL, NULL),
  ('1611872', 'Punta Ventana', 'Cape', 'Puerto Rico', 'PU', 'Guayanilla', 'Punta Verraco', 17.963023, -66.8104528, ST_GeomFromText('POINT(17.963023 -66.8104528)', 4326), NULL, NULL, '1981-02-13', '2015-08-10', NULL, NULL, NULL),
  ('1611873', 'Punta Verraco', 'Cape', 'Puerto Rico', 'PU', 'Guayanilla', 'Punta Verraco', 17.9752446, -66.7915639, ST_GeomFromText('POINT(17.9752446 -66.7915639)', 4326), NULL, NULL, '1981-02-13', '2015-08-10', NULL, NULL, NULL),
  ('1611874', 'Punta Viento', 'Cape', 'Puerto Rico', 'PU', 'Patillas', 'Punta Tuna', 17.9680229, -65.976552, ST_GeomFromText('POINT(17.9680229 -65.976552)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1611875', 'Punta Yeguas', 'Cape', 'Puerto Rico', 'PU', 'Yabucoa', 'Punta Guayanes', 18.0130226, -65.8351614, ST_GeomFromText('POINT(18.0130226 -65.8351614)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611878', 'Quebrada de la Boca', 'Valley', 'Puerto Rico', 'PU', 'San Sebastián', 'San Sebastian', 18.367486, -66.9689204, ST_GeomFromText('POINT(18.367486 -66.9689204)', 4326), 18.3813281, -66.9637232, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1611879', 'Quebrada de la Garza', 'Valley', 'Puerto Rico', 'PU', 'Lajas', 'San German', 18.0373802, -67.0412621, ST_GeomFromText('POINT(18.0373802 -67.0412621)', 4326), 18.0611332, -67.0220173, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1611880', 'Quebrada de la Majagua', 'Valley', 'Puerto Rico', 'PU', 'Moca', 'Central La Plata', 18.3272768, -67.0370741, ST_GeomFromText('POINT(18.3272768 -67.0370741)', 4326), 18.3175463, -67.0533971, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1611881', 'Quebrada de la Perra', 'Valley', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.2268852, -66.7814321, ST_GeomFromText('POINT(18.2268852 -66.7814321)', 4326), 18.2105136, -66.7796536, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1611882', 'Quebrada de las Avispas', 'Valley', 'Puerto Rico', 'PU', 'Patillas', 'Yabucoa', 18.019155, -65.9614926, ST_GeomFromText('POINT(18.019155 -65.9614926)', 4326), 18.0196098, -65.9719112, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1611883', 'Quebrada de las Cuevas', 'Valley', 'Puerto Rico', 'PU', 'Guayama', 'Patillas', 18.0334566, -66.1032249, ST_GeomFromText('POINT(18.0334566 -66.1032249)', 4326), 18.0463001, -66.0949493, '1981-02-13', '2017-03-04', NULL, NULL, NULL),
  ('1611884', 'Quebrada de las Damas', 'Valley', 'Puerto Rico', 'PU', 'Moca', 'Central La Plata', 18.3662591, -67.0621366, ST_GeomFromText('POINT(18.3662591 -67.0621366)', 4326), 18.3956711, -67.0683711, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1611885', 'Quebrada de las Lajas', 'Valley', 'Puerto Rico', 'PU', 'San Sebastián', 'Central La Plata', 18.3115316, -67.0162285, ST_GeomFromText('POINT(18.3115316 -67.0162285)', 4326), 18.3076554, -67.025534, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1611886', 'Quebrada de las Lajas', 'Valley', 'Puerto Rico', 'PU', 'Guaynabo', 'Bayamon', 18.4241616, -66.1303568, ST_GeomFromText('POINT(18.4241616 -66.1303568)', 4326), 18.4186576, -66.1351665, '1981-02-13', '2017-02-15', NULL, NULL, NULL),
  ('1611887', 'Quebrada de las Lajas', 'Valley', 'Puerto Rico', 'PU', 'Hormigueros', 'Mayaguez', 18.1328351, -67.1362019, ST_GeomFromText('POINT(18.1328351 -67.1362019)', 4326), 18.1555966, -67.1170383, '1981-02-13', '2017-03-03', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611888', 'Quebrada de las Lajas', 'Valley', 'Puerto Rico', 'PU', 'Río Grande', 'Rio Grande', 18.3837731, -65.8321394, ST_GeomFromText('POINT(18.3837731 -65.8321394)', 4326), 18.3439182, -65.8541704, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1611889', 'Quebrada de las Mulas', 'Valley', 'Puerto Rico', 'PU', 'Humacao', 'Humacao', 18.1843066, -65.7654447, ST_GeomFromText('POINT(18.1843066 -65.7654447)', 4326), 18.2036153, -65.8081758, '1981-02-13', '2017-03-01', NULL, NULL, NULL),
  ('1611890', 'Quebrada de los Barros', 'Valley', 'Puerto Rico', 'PU', 'Patillas', 'Patillas', 18.0370412, -66.0061846, ST_GeomFromText('POINT(18.0370412 -66.0061846)', 4326), 18.0597712, -66.0110571, '1981-02-13', '2017-03-04', NULL, NULL, NULL),
  ('1611891', 'Quebrada de los Barros', 'Valley', 'Puerto Rico', 'PU', 'Guayama', 'Patillas', 18.0319583, -66.1078374, ST_GeomFromText('POINT(18.0319583 -66.1078374)', 4326), 18.0458252, -66.1243918, '1981-02-13', '2017-03-04', NULL, NULL, NULL),
  ('1611892', 'Quebrada de los Cedros', 'Valley', 'Puerto Rico', 'PU', 'Arroyo', 'Patillas', 18.0227493, -66.0743383, ST_GeomFromText('POINT(18.0227493 -66.0743383)', 4326), 18.0334743, -66.0761292, '1981-02-13', '2017-03-06', NULL, NULL, NULL),
  ('1611893', 'Quebrada de los Cedros', 'Valley', 'Puerto Rico', 'PU', 'Guayanilla', 'Yauco', 18.0213671, -66.7595689, ST_GeomFromText('POINT(18.0213671 -66.7595689)', 4326), 18.0525778, -66.7463219, '1981-02-13', '2017-03-06', NULL, NULL, NULL),
  ('1611894', 'Quebrada de los Chinos', 'Valley', 'Puerto Rico', 'PU', 'Maunabo', 'Yabucoa', 18.010215, -65.929293, ST_GeomFromText('POINT(18.010215 -65.929293)', 4326), 18.0012933, -65.9461563, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1611895', 'Quebrada de los Colones', 'Valley', 'Puerto Rico', 'PU', 'Patillas', 'Patillas', 18.0379751, -66.0067125, ST_GeomFromText('POINT(18.0379751 -66.0067125)', 4326), 18.0542303, -65.9890041, '1981-02-13', '2017-03-06', NULL, NULL, NULL),
  ('1611896', 'Quebrada de los Cristales', 'Valley', 'Puerto Rico', 'PU', 'Sabana Grande', 'Sabana Grande', 18.0352092, -66.9134062, ST_GeomFromText('POINT(18.0352092 -66.9134062)', 4326), 18.0483894, -66.9074629, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1611897', 'Quebrada de los Güiros', 'Valley', 'Puerto Rico', 'PU', 'Villalba', 'Ponce', 18.1074775, -66.5019664, ST_GeomFromText('POINT(18.1074775 -66.5019664)', 4326), 18.1147778, -66.4773648, '1981-02-13', '2017-03-07', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611898', 'Quebrada de los Llanos', 'Valley', 'Puerto Rico', 'PU', 'Cabo Rojo', 'San German', 18.0467719, -67.1139775, ST_GeomFromText('POINT(18.0467719 -67.1139775)', 4326), 18.0580402, -67.1087612, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1611899', 'Quebrada de los Muertos', 'Valley', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.4304713, -66.0739454, ST_GeomFromText('POINT(18.4304713 -66.0739454)', 4326), 18.4205443, -66.0710339, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1611900', 'Quebrada de los Muertos', 'Valley', 'Puerto Rico', 'PU', 'Las Piedras', 'Juncos', 18.1819994, -65.8982909, ST_GeomFromText('POINT(18.1819994 -65.8982909)', 4326), 18.1759247, -65.8768835, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1611901', 'Quebrada de los Plátanos', 'Valley', 'Puerto Rico', 'PU', 'Lares', 'Monte Guilarte', 18.2481478, -66.8728063, ST_GeomFromText('POINT(18.2481478 -66.8728063)', 4326), 18.2616856, -66.8588823, '1981-02-13', '2017-02-17', NULL, NULL, NULL),
  ('1611902', 'Quebrada de los Rábanos', 'Valley', 'Puerto Rico', 'PU', 'Las Piedras', 'Humacao', 18.2242344, -65.8426802, ST_GeomFromText('POINT(18.2242344 -65.8426802)', 4326), 18.2452426, -65.8316429, '1981-02-13', '2017-03-01', NULL, NULL, NULL),
  ('1611903', 'Quebrada de Cacaos', 'Valley', 'Puerto Rico', 'PU', 'Orocovis', 'Jayuya', 18.2351217, -66.5064241, ST_GeomFromText('POINT(18.2351217 -66.5064241)', 4326), 18.2075217, -66.4929895, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1611904', 'Quebrada de El Rayo', 'Valley', 'Puerto Rico', 'PU', 'Lajas', 'Sabana Grande', 18.0336005, -66.9714156, ST_GeomFromText('POINT(18.0336005 -66.9714156)', 4326), 18.0555739, -66.9577483, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1611905', 'Quebrada de Loro', 'Valley', 'Puerto Rico', 'PU', 'San Sebastián', 'Central La Plata', 18.3528522, -67.0467519, ST_GeomFromText('POINT(18.3528522 -67.0467519)', 4326), 18.3585331, -67.0372121, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1611906', 'Quebrada de Los Panes', 'Valley', 'Puerto Rico', 'PU', 'Coamo', 'Coamo', 18.0839974, -66.3216169, ST_GeomFromText('POINT(18.0839974 -66.3216169)', 4326), 18.0585166, -66.3180424, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1611907', 'Quebrada de los Muertos', 'Valley', 'Puerto Rico', 'PU', 'Aguas Buenas', 'Aguas Buenas', 18.2590269, -66.1011134, ST_GeomFromText('POINT(18.2590269 -66.1011134)', 4326), 18.2487288, -66.1126847, '1981-02-13', '2017-03-02', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611908', 'Quebrada de Peña Pobre', 'Valley', 'Puerto Rico', 'PU', 'Naguabo', 'Humacao', 18.2199299, -65.7843511, ST_GeomFromText('POINT(18.2199299 -65.7843511)', 4326), 18.2324968, -65.8122749, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1611909', 'Quebrada de Quebradas', 'Valley', 'Puerto Rico', 'PU', 'Yauco', 'Yauco', 18.0489269, -66.84124, ST_GeomFromText('POINT(18.0489269 -66.84124)', 4326), 18.0745954, -66.8211601, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1611910', 'Quebrada de Utuado', 'Valley', 'Puerto Rico', 'PU', 'Utuado', 'Utuado', 18.2677332, -66.6966283, ST_GeomFromText('POINT(18.2677332 -66.6966283)', 4326), 18.2770558, -66.6695333, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1611911', 'Quebrada de Yeguadilla', 'Valley', 'Puerto Rico', 'PU', 'Ciales', 'Florida', 18.3113532, -66.5758695, ST_GeomFromText('POINT(18.3113532 -66.5758695)', 4326), 18.3114037, -66.567159, '1981-02-13', '2017-02-28', NULL, NULL, NULL),
  ('1611912', 'Quebrada del Agua', 'Valley', 'Puerto Rico', 'PU', 'Ponce', 'Punta Cucharas', 17.993005, -66.6478679, ST_GeomFromText('POINT(17.993005 -66.6478679)', 4326), 18.0298829, -66.6891972, '1981-02-13', '2017-03-07', NULL, NULL, NULL),
  ('1611913', 'Quebrada del Banco', 'Valley', 'Puerto Rico', 'PU', 'Cidra', 'Comerio', 18.1932585, -66.2091594, ST_GeomFromText('POINT(18.1932585 -66.2091594)', 4326), 18.1615877, -66.1945526, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1611914', 'Quebrada del Bellaco', 'Valley', 'Puerto Rico', 'PU', 'Jayuya', 'Florida', 18.2748823, -66.5577937, ST_GeomFromText('POINT(18.2748823 -66.5577937)', 4326), 18.2643269, -66.5456078, '1981-02-13', '2017-02-28', NULL, NULL, NULL),
  ('1611915', 'Quebrada del Guama', 'Valley', 'Puerto Rico', 'PU', 'San Sebastián', 'San Sebastian', 18.3621553, -66.9844794, ST_GeomFromText('POINT(18.3621553 -66.9844794)', 4326), 18.3498154, -66.9647365, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1611916', 'Quebrada del Guano', 'Valley', 'Puerto Rico', 'PU', 'Patillas', 'Patillas', 18.0864182, -66.0496589, ST_GeomFromText('POINT(18.0864182 -66.0496589)', 4326), 18.100367, -66.0456789, '1981-02-13', '2017-03-06', NULL, NULL, NULL),
  ('1611917', 'Quebrada del Guano', 'Valley', 'Puerto Rico', 'PU', 'Morovis', 'Ciales', 18.2936656, -66.4585066, ST_GeomFromText('POINT(18.2936656 -66.4585066)', 4326), 18.2892531, -66.4505777, '1981-02-13', '2017-02-23', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611918', 'Quebrada del Horno', 'Valley', 'Puerto Rico', 'PU', 'Aguas Buenas', 'Caguas', 18.2430856, -66.09453, ST_GeomFromText('POINT(18.2430856 -66.09453)', 4326), 18.225844, -66.1020885, '1981-02-13', '2017-02-22', NULL, NULL, NULL),
  ('1611919', 'Quebrada del Inglés', 'Valley', 'Puerto Rico', 'PU', 'Humacao', 'Humacao', 18.1643405, -65.8565056, ST_GeomFromText('POINT(18.1643405 -65.8565056)', 4326), 18.1739034, -65.8515656, '1981-02-13', '2017-03-01', NULL, NULL, NULL),
  ('1611920', 'Quebrada del Juicio', 'Valley', 'Puerto Rico', 'PU', 'Comerío', 'Naranjito', 18.2757143, -66.2056248, ST_GeomFromText('POINT(18.2757143 -66.2056248)', 4326), 18.2722298, -66.1954299, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1611921', 'Quebrada del Muerto', 'Valley', 'Puerto Rico', 'PU', 'Morovis', 'Ciales', 18.2900909, -66.4144874, ST_GeomFromText('POINT(18.2900909 -66.4144874)', 4326), 18.2818145, -66.40982, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1611922', 'Quebrada del Muerto', 'Valley', 'Puerto Rico', 'PU', 'Añasco', 'Central La Plata', 18.3006986, -67.1016344, ST_GeomFromText('POINT(18.3006986 -67.1016344)', 4326), 18.3162185, -67.0990138, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1611923', 'Quebrada del Oro', 'Valley', 'Puerto Rico', 'PU', 'Mayagüez', 'Mayaguez', 18.214357, -67.1538633, ST_GeomFromText('POINT(18.214357 -67.1538633)', 4326), 18.2141771, -67.1407634, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1611924', 'Quebrada del Palo', 'Valley', 'Puerto Rico', 'PU', 'Salinas', 'Cayey', 18.0395742, -66.1773195, ST_GeomFromText('POINT(18.0395742 -66.1773195)', 4326), 18.0441522, -66.1581271, '1981-02-13', '2017-02-22', NULL, NULL, NULL),
  ('1611925', 'Quebrada del Plátano', 'Valley', 'Puerto Rico', 'PU', 'Naguabo', 'Naguabo', 18.2344094, -65.7103114, ST_GeomFromText('POINT(18.2344094 -65.7103114)', 4326), 18.2484471, -65.725282, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1611926', 'Quebrada del Pozo de Magala', 'Valley', 'Puerto Rico', 'PU', 'Ciales', 'Ciales', 18.2793662, -66.4607695, ST_GeomFromText('POINT(18.2793662 -66.4607695)', 4326), 18.2811199, -66.4513836, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1611927', 'Quebrada del Pozo Azul', 'Valley', 'Puerto Rico', 'PU', 'Ciales', 'Florida', 18.3339851, -66.5293832, ST_GeomFromText('POINT(18.3339851 -66.5293832)', 4326), 18.3223333, -66.5149698, '1981-02-13', '2017-02-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611928', 'Quebrada del Pozo Redondo', 'Valley', 'Puerto Rico', 'PU', 'Lajas', 'San German', 18.0249751, -67.0136463, ST_GeomFromText('POINT(18.0249751 -67.0136463)', 4326), 18.041812, -67.0006023, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1611929', 'Quebrada del Riego', 'Valley', 'Puerto Rico', 'PU', 'Morovis', 'Ciales', 18.3116653, -66.4433221, ST_GeomFromText('POINT(18.3116653 -66.4433221)', 4326), 18.317156, -66.4528217, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1611930', 'Quebrada del Suro', 'Valley', 'Puerto Rico', 'PU', 'Morovis', 'Ciales', 18.3156796, -66.4384499, ST_GeomFromText('POINT(18.3156796 -66.4384499)', 4326), 18.3230441, -66.4465073, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1611931', 'Quebrada del Toro', 'Valley', 'Puerto Rico', 'PU', 'Naranjito', 'Corozal', 18.284358, -66.2564287, ST_GeomFromText('POINT(18.284358 -66.2564287)', 4326), 18.2898232, -66.2695715, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1611932', 'Quebrada del Toro', 'Valley', 'Puerto Rico', 'PU', 'Isabela', 'Quebradillas', 18.4936177, -66.9823966, ST_GeomFromText('POINT(18.4936177 -66.9823966)', 4326), 18.4857098, -66.9852435, '1981-02-13', '2017-03-07', NULL, NULL, NULL),
  ('1611933', 'Quebrada la Tinajera', 'Valley', 'Puerto Rico', 'PU', 'Humacao', 'Humacao', 18.1844317, -65.8067415, ST_GeomFromText('POINT(18.1844317 -65.8067415)', 4326), 18.1968557, -65.8065496, '1981-02-13', '2017-03-01', NULL, NULL, NULL),
  ('1611934', 'Quebrada Abad', 'Valley', 'Puerto Rico', 'PU', 'Añasco', 'Rincon', 18.2937483, -67.15527, ST_GeomFromText('POINT(18.2937483 -67.15527)', 4326), 18.3128113, -67.1680666, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1611935', 'Quebrada Abarca', 'Valley', 'Puerto Rico', 'PU', 'Naranjito', 'Naranjito', 18.3231012, -66.2329257, ST_GeomFromText('POINT(18.3231012 -66.2329257)', 4326), 18.3151406, -66.2383337, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1611936', 'Quebrada Aceituna', 'Valley', 'Puerto Rico', 'PU', 'Añasco', 'Central La Plata', 18.2639097, -67.0902294, ST_GeomFromText('POINT(18.2639097 -67.0902294)', 4326), 18.2575789, -67.0724667, '1981-02-13', '2017-02-22', NULL, NULL, NULL),
  ('1611937', 'Quebrada Achiote', 'Valley', 'Puerto Rico', 'PU', 'Lares', 'Monte Guilarte', 18.2121135, -66.8712952, ST_GeomFromText('POINT(18.2121135 -66.8712952)', 4326), 18.195142, -66.8601966, '1981-02-13', '2017-03-03', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611938', 'Quebrada Achiote', 'Valley', 'Puerto Rico', 'PU', 'Lares', 'San Sebastian', 18.2593844, -66.8949572, ST_GeomFromText('POINT(18.2593844 -66.8949572)', 4326), 18.2706905, -66.8901497, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1611939', 'Quebrada Achiote', 'Valley', 'Puerto Rico', 'PU', 'Villalba', 'Orocovis', 18.1395182, -66.4976022, ST_GeomFromText('POINT(18.1395182 -66.4976022)', 4326), 18.1590578, -66.5082257, '1981-02-13', '2017-03-04', NULL, NULL, NULL),
  ('1611940', 'Quebrada Aguacate', 'Valley', 'Puerto Rico', 'PU', 'Yabucoa', 'Punta Guayanes', 18.0931359, -65.8558522, ST_GeomFromText('POINT(18.0931359 -65.8558522)', 4326), 18.1041938, -65.8512228, '1981-02-13', '2017-03-07', NULL, NULL, NULL),
  ('1611941', 'Quebrada Aguas Largas', 'Valley', 'Puerto Rico', 'PU', 'Yabucoa', 'Yabucoa', 18.0481862, -65.8850169, ST_GeomFromText('POINT(18.0481862 -65.8850169)', 4326), 18.0220561, -65.8787865, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1611942', 'Quebrada Aguas Verdes', 'Valley', 'Puerto Rico', 'PU', 'Salinas', 'Central Aguirre', 17.9668924, -66.2160754, ST_GeomFromText('POINT(17.9668924 -66.2160754)', 4326), 17.9932568, -66.2168331, '1981-02-13', '2017-02-22', NULL, NULL, NULL),
  ('1611943', 'Quebrada Agustina', 'Valley', 'Puerto Rico', 'PU', 'Sabana Grande', 'Sabana Grande', 18.0983071, -66.9767332, ST_GeomFromText('POINT(18.0983071 -66.9767332)', 4326), 18.1287595, -66.9535903, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1611944', 'Quebrada Algarrobo', 'Valley', 'Puerto Rico', 'PU', 'Coamo', 'Coamo', 18.0865163, -66.2726259, ST_GeomFromText('POINT(18.0865163 -66.2726259)', 4326), 18.1101572, -66.2775598, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1611945', 'Quebrada Algarrobo', 'Valley', 'Puerto Rico', 'PU', 'Caguas', 'Caguas', 18.2367818, -66.0628951, ST_GeomFromText('POINT(18.2367818 -66.0628951)', 4326), 18.2224389, -66.071104, '1981-02-13', '2017-02-17', NULL, NULL, NULL),
  ('1611946', 'Quebrada Alicia', 'Valley', 'Puerto Rico', 'PU', 'Barranquitas', 'Barranquitas', 18.1727396, -66.2756571, ST_GeomFromText('POINT(18.1727396 -66.2756571)', 4326), 18.1463675, -66.2609088, '1981-02-13', '2017-02-15', NULL, NULL, NULL),
  ('1611947', 'Quebrada Alto Sano', 'Valley', 'Puerto Rico', 'PU', 'San Sebastián', 'Central La Plata', 18.2925652, -67.0386421, ST_GeomFromText('POINT(18.2925652 -67.0386421)', 4326), 18.2998983, -67.0222039, '1981-02-13', '2017-02-22', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611948', 'Quebrada Amoros', 'Valley', 'Puerto Rico', 'PU', 'Salinas', 'Central Aguirre', 17.9671826, -66.2082613, ST_GeomFromText('POINT(17.9671826 -66.2082613)', 4326), 17.97863, -66.2083164, '1981-02-13', '2017-02-22', NULL, NULL, NULL),
  ('1611949', 'Quebrada Anón', 'Valley', 'Puerto Rico', 'PU', 'Lares', 'Bayaney', 18.2995025, -66.8737702, ST_GeomFromText('POINT(18.2995025 -66.8737702)', 4326), 18.2739653, -66.8777656, '1981-02-13', '2017-02-17', NULL, NULL, NULL),
  ('1611950', 'Quebrada Anón', 'Valley', 'Puerto Rico', 'PU', 'Luquillo', 'El Yunque', 18.3632697, -65.76802, ST_GeomFromText('POINT(18.3632697 -65.76802)', 4326), 18.3577345, -65.7512373, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1611951', 'Quebrada Anones', 'Valley', 'Puerto Rico', 'PU', 'Naranjito', 'Naranjito', 18.3008045, -66.2346828, ST_GeomFromText('POINT(18.3008045 -66.2346828)', 4326), 18.2704781, -66.2416743, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1611952', 'Quebrada Antigua', 'Valley', 'Puerto Rico', 'PU', 'Arroyo', 'Patillas', 18.0129047, -66.0663078, ST_GeomFromText('POINT(18.0129047 -66.0663078)', 4326), 18.0196154, -66.0882473, '1981-02-13', '2017-03-04', NULL, NULL, NULL),
  ('1611953', 'Quebrada Arenas', 'Valley', 'Puerto Rico', 'PU', 'San Lorenzo', 'Yabucoa', 18.1094326, -65.9870352, ST_GeomFromText('POINT(18.1094326 -65.9870352)', 4326), 18.1027445, -65.9708655, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1611954', 'Quebrada Arenas', 'Valley', 'Puerto Rico', 'PU', 'Vega Baja', 'Manati', 18.3804177, -66.3953668, ST_GeomFromText('POINT(18.3804177 -66.3953668)', 4326), 18.3767341, -66.4032389, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1611955', 'Quebrada Arenas', 'Valley', 'Puerto Rico', 'PU', 'Juncos', 'Juncos', 18.2315824, -65.8833494, ST_GeomFromText('POINT(18.2315824 -65.8833494)', 4326), 18.1917336, -65.8559915, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1611956', 'Quebrada Arenas', 'Valley', 'Puerto Rico', 'PU', 'Utuado', 'Utuado', 18.259082, -66.7220067, ST_GeomFromText('POINT(18.259082 -66.7220067)', 4326), 18.2448495, -66.7000756, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1611957', 'Quebrada Arenas', 'Valley', 'Puerto Rico', 'PU', 'Dorado', 'Vega Alta', 18.3840275, -66.2720051, ST_GeomFromText('POINT(18.3840275 -66.2720051)', 4326), 18.349988, -66.280032, '1981-02-13', '2017-03-10', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611958', 'Quebrada Arenas', 'Valley', 'Puerto Rico', 'PU', 'Maunabo', 'Punta Tuna', 17.990735, -65.8963479, ST_GeomFromText('POINT(17.990735 -65.8963479)', 4326), 18.0325727, -65.8970468, '1981-02-13', '2017-03-07', NULL, NULL, NULL),
  ('1611959', 'Quebrada Arenas Chiquita', 'Valley', 'Puerto Rico', 'PU', 'San Lorenzo', 'Yabucoa', 18.1244095, -65.9817763, ST_GeomFromText('POINT(18.1244095 -65.9817763)', 4326), 18.1147491, -65.9668087, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1611960', 'Quebrada Arriba', 'Valley', 'Puerto Rico', 'PU', 'Patillas', 'Patillas', 18.0522577, -66.0492273, ST_GeomFromText('POINT(18.0522577 -66.0492273)', 4326), 18.0562035, -66.0863718, '1981-02-13', '2017-03-04', NULL, NULL, NULL),
  ('1611961', 'Quebrada Ausubo', 'Valley', 'Puerto Rico', 'PU', 'Ponce', 'Ponce', 18.0502704, -66.5846925, ST_GeomFromText('POINT(18.0502704 -66.5846925)', 4326), 18.0648551, -66.5945229, '1981-02-13', '2017-03-07', NULL, NULL, NULL),
  ('1611962', 'Quebrada Bacalao', 'Valley', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.3769169, -66.0734504, ST_GeomFromText('POINT(18.3769169 -66.0734504)', 4326), 18.3719489, -66.0784233, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1611963', 'Quebrada Bambua', 'Valley', 'Puerto Rico', 'PU', 'Manatí', 'Manati', 18.3872383, -66.4559853, ST_GeomFromText('POINT(18.3872383 -66.4559853)', 4326), 18.3725807, -66.4578029, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1611964', 'Quebrada Barreal', 'Valley', 'Puerto Rico', 'PU', 'Peñuelas', 'Penuelas', 18.0730369, -66.7303377, ST_GeomFromText('POINT(18.0730369 -66.7303377)', 4326), 18.1089315, -66.7613358, '1981-02-13', '2017-03-06', NULL, NULL, NULL),
  ('1611965', 'Quebrada Barros', 'Valley', 'Puerto Rico', 'PU', 'Orocovis', 'Ciales', 18.2560866, -66.4090234, ST_GeomFromText('POINT(18.2560866 -66.4090234)', 4326), 18.247733, -66.3976124, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1611966', 'Quebrada Beatriz', 'Valley', 'Puerto Rico', 'PU', 'Caguas', 'Caguas', 18.1828048, -66.0518115, ST_GeomFromText('POINT(18.1828048 -66.0518115)', 4326), 18.1707635, -66.081673, '1981-02-13', '2017-03-14', NULL, NULL, NULL),
  ('1611967', 'Quebrada Beatriz', 'Valley', 'Puerto Rico', 'PU', 'Cayey', 'Comerio', 18.1323633, -66.1319181, ST_GeomFromText('POINT(18.1323633 -66.1319181)', 4326), 18.1675106, -66.0954302, '1981-02-13', '2017-03-14', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611968', 'Quebrada Bejuco', 'Valley', 'Puerto Rico', 'PU', 'San Sebastián', 'Central La Plata', 18.3470894, -67.0137941, ST_GeomFromText('POINT(18.3470894 -67.0137941)', 4326), 18.367818, -67.0070721, '1981-02-13', '2017-02-22', NULL, NULL, NULL),
  ('1611969', 'Quebrada Bellaca', 'Valley', 'Puerto Rico', 'PU', 'Quebradillas', 'Quebradillas', 18.483487, -66.9017101, ST_GeomFromText('POINT(18.483487 -66.9017101)', 4326), 18.4651093, -66.9193483, '1981-02-13', '2017-03-07', NULL, NULL, NULL),
  ('1611970', 'Quebrada Bello Gallón', 'Valley', 'Puerto Rico', 'PU', 'Bayamón', 'Naranjito', 18.300523, -66.1410959, ST_GeomFromText('POINT(18.300523 -66.1410959)', 4326), 18.2980014, -66.1589351, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1611971', 'Quebrada Blacho', 'Valley', 'Puerto Rico', 'PU', 'Ciales', 'Ciales', 18.2893994, -66.4790627, ST_GeomFromText('POINT(18.2893994 -66.4790627)', 4326), 18.2780683, -66.4776475, '1981-02-13', '2017-04-05', NULL, NULL, NULL),
  ('1611972', 'Quebrada Blanca', 'Valley', 'Puerto Rico', 'PU', 'San Lorenzo', 'Juncos', 18.1585312, -65.9800438, ST_GeomFromText('POINT(18.1585312 -65.9800438)', 4326), 18.1492475, -66.0190995, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1611973', 'Quebrada Blanca', 'Valley', 'Puerto Rico', 'PU', 'Comerío', 'Naranjito', 18.251057, -66.2044716, ST_GeomFromText('POINT(18.251057 -66.2044716)', 4326), 18.2491305, -66.1908082, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1611974', 'Quebrada Blasina', 'Valley', 'Puerto Rico', 'PU', 'Carolina', 'Carolina', 18.4060115, -65.9672675, ST_GeomFromText('POINT(18.4060115 -65.9672675)', 4326), 18.3690582, -66.0241773, '1981-02-13', '2017-02-22', NULL, NULL, NULL),
  ('1611975', 'Quebrada Bocaforma', 'Valley', 'Puerto Rico', 'PU', 'Canóvanas', 'Carolina', 18.3838915, -65.9048521, ST_GeomFromText('POINT(18.3838915 -65.9048521)', 4326), 18.3598205, -65.908007, '1981-02-13', '2017-02-22', NULL, NULL, NULL),
  ('1611976', 'Quebrada Bocana', 'Valley', 'Puerto Rico', 'PU', 'Cidra', 'Comerio', 18.147999, -66.1934061, ST_GeomFromText('POINT(18.147999 -66.1934061)', 4326), 18.1587622, -66.1913426, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1611977', 'Quebrada Boquerón', 'Valley', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.0240407, -67.1731616, ST_GeomFromText('POINT(18.0240407 -67.1731616)', 4326), 18.0356876, -67.1410487, '1981-02-13', '2017-03-07', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611978', 'Quebrada Botija', 'Valley', 'Puerto Rico', 'PU', 'Naguabo', 'Naguabo', 18.1999847, -65.6922809, ST_GeomFromText('POINT(18.1999847 -65.6922809)', 4326), 18.2277523, -65.7224032, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1611979', 'Quebrada Brujas', 'Valley', 'Puerto Rico', 'PU', 'Lares', 'San Sebastian', 18.273179, -66.9078628, ST_GeomFromText('POINT(18.273179 -66.9078628)', 4326), 18.2691889, -66.9074251, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1611980', 'Quebrada Buena Vista', 'Valley', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.4022819, -66.0665867, ST_GeomFromText('POINT(18.4022819 -66.0665867)', 4326), 18.3769371, -66.070626, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1611981', 'Quebrada Burgos', 'Valley', 'Puerto Rico', 'PU', 'Bayamón', 'Naranjito', 18.3502741, -66.1563037, ST_GeomFromText('POINT(18.3502741 -66.1563037)', 4326), 18.3406027, -66.1575506, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1611982', 'Quebrada Caguabo', 'Valley', 'Puerto Rico', 'PU', 'Añasco', 'Rincon', 18.2967704, -67.2204472, ST_GeomFromText('POINT(18.2967704 -67.2204472)', 4326), 18.3052327, -67.2121987, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1611983', 'Quebrada Caimital', 'Valley', 'Puerto Rico', 'PU', 'Guayama', 'Guayama', 17.9880483, -66.0893103, ST_GeomFromText('POINT(17.9880483 -66.0893103)', 4326), 18.0197851, -66.0917978, '1981-02-13', '2017-03-01', NULL, NULL, NULL),
  ('1611984', 'Quebrada Calderón', 'Valley', 'Puerto Rico', 'PU', 'Río Grande', 'El Yunque', 18.3729834, -65.874057, ST_GeomFromText('POINT(18.3729834 -65.874057)', 4326), 18.361299, -65.8811093, '1981-02-13', '2017-03-01', NULL, NULL, NULL),
  ('1611985', 'Quebrada Callores', 'Valley', 'Puerto Rico', 'PU', 'Bayamón', 'Naranjito', 18.3220652, -66.1567433, ST_GeomFromText('POINT(18.3220652 -66.1567433)', 4326), 18.3101954, -66.15944, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1611986', 'Quebrada Camarones', 'Valley', 'Puerto Rico', 'PU', 'Guaynabo', 'Aguas Buenas', 18.3373975, -66.111065, ST_GeomFromText('POINT(18.3373975 -66.111065)', 4326), 18.3315475, -66.1222784, '1981-02-13', '2017-02-14', NULL, NULL, NULL),
  ('1611987', 'Quebrada Cambalache', 'Valley', 'Puerto Rico', 'PU', 'Loíza', 'Rio Grande', 18.3812803, -65.8638679, ST_GeomFromText('POINT(18.3812803 -65.8638679)', 4326), 18.3501492, -65.8767854, '1981-02-13', '2017-03-01', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611988', 'Quebrada Cambute', 'Valley', 'Puerto Rico', 'PU', 'Canóvanas', 'Gurabo', 18.3719094, -65.9188067, ST_GeomFromText('POINT(18.3719094 -65.9188067)', 4326), 18.3574864, -65.9356607, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1611989', 'Quebrada Campo Libre', 'Valley', 'Puerto Rico', 'PU', 'Patillas', 'Punta Tuna', 17.9777842, -65.9406843, ST_GeomFromText('POINT(17.9777842 -65.9406843)', 4326), 17.9859649, -65.9452801, '1981-02-13', '2017-03-07', NULL, NULL, NULL),
  ('1611990', 'Quebrada Caña', 'Valley', 'Puerto Rico', 'PU', 'Cayey', 'Comerio', 18.1409959, -66.1929421, ST_GeomFromText('POINT(18.1409959 -66.1929421)', 4326), 18.1518373, -66.1887694, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1611991', 'Quebrada Caña India', 'Valley', 'Puerto Rico', 'PU', 'San Sebastián', 'Central La Plata', 18.2983769, -67.0304678, ST_GeomFromText('POINT(18.2983769 -67.0304678)', 4326), 18.3050444, -67.0257358, '1981-02-13', '2017-02-22', NULL, NULL, NULL),
  ('1611992', 'Quebrada Cancel', 'Valley', 'Puerto Rico', 'PU', 'Toa Alta', 'Naranjito', 18.332997, -66.2155414, ST_GeomFromText('POINT(18.332997 -66.2155414)', 4326), 18.3253653, -66.1849064, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1611993', 'Quebrada Cangilones', 'Valley', 'Puerto Rico', 'PU', 'Orocovis', 'Ciales', 18.2517912, -66.4544327, ST_GeomFromText('POINT(18.2517912 -66.4544327)', 4326), 18.2480867, -66.4632565, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1611994', 'Quebrada Canoas', 'Valley', 'Puerto Rico', 'PU', 'Manatí', 'Ciales', 18.3697701, -66.4885685, ST_GeomFromText('POINT(18.3697701 -66.4885685)', 4326), 18.3676667, -66.4975685, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1611995', 'Quebrada Cantera', 'Valley', 'Puerto Rico', 'PU', 'Añasco', 'Rincon', 18.2990907, -67.1778721, ST_GeomFromText('POINT(18.2990907 -67.1778721)', 4326), 18.3075983, -67.1793251, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1611996', 'Quebrada Caracoles', 'Valley', 'Puerto Rico', 'PU', 'Yauco', 'Yauco', 18.1124506, -66.8316405, ST_GeomFromText('POINT(18.1124506 -66.8316405)', 4326), 18.1319123, -66.836116, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1611997', 'Quebrada Caricosa', 'Valley', 'Puerto Rico', 'PU', 'Mayagüez', 'Rosario', 18.2065063, -67.1235891, ST_GeomFromText('POINT(18.2065063 -67.1235891)', 4326), 18.1881584, -67.0869661, '1981-02-13', '2017-03-08', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1611998', 'Quebrada Carmen', 'Valley', 'Puerto Rico', 'PU', 'Cayey', 'Cayey', 18.0485902, -66.1976471, ST_GeomFromText('POINT(18.0485902 -66.1976471)', 4326), 18.0370186, -66.1473214, '1981-02-13', '2017-02-22', NULL, NULL, NULL),
  ('1611999', 'Quebrada Casanga', 'Valley', 'Puerto Rico', 'PU', 'San Germán', 'San German', 18.1049776, -67.033255, ST_GeomFromText('POINT(18.1049776 -67.033255)', 4326), 18.1058694, -67.0104303, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1612000', 'Quebrada Casanova', 'Valley', 'Puerto Rico', 'PU', 'Mayagüez', 'Rosario', 18.2335637, -67.1195895, ST_GeomFromText('POINT(18.2335637 -67.1195895)', 4326), 18.2242861, -67.1026506, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612001', 'Quebrada Cataño', 'Valley', 'Puerto Rico', 'PU', 'Humacao', 'Humacao', 18.134053, -65.8035142, ST_GeomFromText('POINT(18.134053 -65.8035142)', 4326), 18.111699, -65.841239, '1981-02-13', '2017-03-01', NULL, NULL, NULL),
  ('1612002', 'Quebrada Cedrito', 'Valley', 'Puerto Rico', 'PU', 'Comerío', 'Naranjito', 18.2662054, -66.2055388, ST_GeomFromText('POINT(18.2662054 -66.2055388)', 4326), 18.263779, -66.1904749, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612003', 'Quebrada Ceiba', 'Valley', 'Puerto Rico', 'PU', 'Peñuelas', 'Penuelas', 18.0538128, -66.7109428, ST_GeomFromText('POINT(18.0538128 -66.7109428)', 4326), 18.0738846, -66.7033293, '1981-02-13', '2017-03-06', NULL, NULL, NULL),
  ('1612004', 'Quebrada Ceiba', 'Valley', 'Puerto Rico', 'PU', 'Cidra', 'Comerio', 18.2300191, -66.1460997, ST_GeomFromText('POINT(18.2300191 -66.1460997)', 4326), 18.2100781, -66.1684557, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1612005', 'Quebrada Ceiba', 'Valley', 'Puerto Rico', 'PU', 'Juncos', 'Juncos', 18.2386053, -65.9131087, ST_GeomFromText('POINT(18.2386053 -65.9131087)', 4326), 18.2190966, -65.8941373, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1612006', 'Quebrada Cejas', 'Valley', 'Puerto Rico', 'PU', 'Comerío', 'Comerio', 18.2142106, -66.2017995, ST_GeomFromText('POINT(18.2142106 -66.2017995)', 4326), 18.2131886, -66.17968, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1612007', 'Quebrada Cepero', 'Valley', 'Puerto Rico', 'PU', 'San Juan', 'Aguas Buenas', 18.3718094, -66.04014, ST_GeomFromText('POINT(18.3718094 -66.04014)', 4326), 18.3623011, -66.0302113, '1981-02-13', '2017-02-14', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612008', 'Quebrada Cercada', 'Valley', 'Puerto Rico', 'PU', 'Añasco', 'Central La Plata', 18.2775572, -67.0909297, ST_GeomFromText('POINT(18.2775572 -67.0909297)', 4326), 18.2897111, -67.0872215, '1981-02-13', '2017-02-22', NULL, NULL, NULL),
  ('1612009', 'Quebrada Cerrillos', 'Valley', 'Puerto Rico', 'PU', 'Coamo', 'Coamo', 18.0780821, -66.2952124, ST_GeomFromText('POINT(18.0780821 -66.2952124)', 4326), 18.0664283, -66.2883127, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1612010', 'Quebrada Cerro Gordo', 'Valley', 'Puerto Rico', 'PU', 'Añasco', 'Central La Plata', 18.2834245, -67.0686209, ST_GeomFromText('POINT(18.2834245 -67.0686209)', 4326), 18.3102993, -67.0735828, '1981-02-13', '2017-02-22', NULL, NULL, NULL),
  ('1612011', 'Quebrada Cerro Gordo', 'Valley', 'Puerto Rico', 'PU', 'Bayamón', 'Bayamon', 18.3821785, -66.1602909, ST_GeomFromText('POINT(18.3821785 -66.1602909)', 4326), 18.3753711, -66.1742164, '1981-02-13', '2017-02-15', NULL, NULL, NULL),
  ('1612012', 'Quebrada Chicharrones', 'Valley', 'Puerto Rico', 'PU', 'San Sebastián', 'San Sebastian', 18.3683853, -66.9623173, ST_GeomFromText('POINT(18.3683853 -66.9623173)', 4326), 18.3553064, -66.9457149, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1612013', 'Quebrada Chinea', 'Valley', 'Puerto Rico', 'PU', 'Naranjito', 'Naranjito', 18.3252887, -66.229682, ST_GeomFromText('POINT(18.3252887 -66.229682)', 4326), 18.3227004, -66.2235605, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612014', 'Quebrada Chiquita', 'Valley', 'Puerto Rico', 'PU', 'Juana Díaz', 'Ponce', 18.1212942, -66.5341772, ST_GeomFromText('POINT(18.1212942 -66.5341772)', 4326), 18.1409176, -66.5440255, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612015', 'Quebrada Chiquita', 'Valley', 'Puerto Rico', 'PU', 'Añasco', 'Rincon', 18.2610978, -67.1352204, ST_GeomFromText('POINT(18.2610978 -67.1352204)', 4326), 18.2496701, -67.1137786, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612016', 'Quebrada Chorrera', 'Valley', 'Puerto Rico', 'PU', 'Juana Díaz', 'Ponce', 18.0783033, -66.5085918, ST_GeomFromText('POINT(18.0783033 -66.5085918)', 4326), 18.0776315, -66.5185973, '1981-02-13', '2017-03-07', NULL, NULL, NULL),
  ('1612017', 'Quebrada Ciénaga', 'Valley', 'Puerto Rico', 'PU', 'Naranjito', 'Naranjito', 18.2739469, -66.2195632, ST_GeomFromText('POINT(18.2739469 -66.2195632)', 4326), 18.2543299, -66.2365195, '1981-02-13', '2017-03-03', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612018', 'Quebrada Cimarrona', 'Valley', 'Puerto Rico', 'PU', 'Manatí', 'Barceloneta', 18.4264365, -66.5269272, ST_GeomFromText('POINT(18.4264365 -66.5269272)', 4326), 18.3833325, -66.5712994, '1981-02-13', '2017-02-15', NULL, NULL, NULL),
  ('1612019', 'Quebrada Cimarrona', 'Valley', 'Puerto Rico', 'PU', 'Guayama', 'Central Aguirre', 17.9766061, -66.1774612, ST_GeomFromText('POINT(17.9766061 -66.1774612)', 4326), 18.0171789, -66.1757333, '1981-02-13', '2017-02-22', NULL, NULL, NULL),
  ('1612020', 'Quebrada Cojo Vales', 'Valley', 'Puerto Rico', 'PU', 'Ciales', 'Ciales', 18.3290926, -66.4658029, ST_GeomFromText('POINT(18.3290926 -66.4658029)', 4326), 18.3146334, -66.4715274, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612021', 'Quebrada Cojolla', 'Valley', 'Puerto Rico', 'PU', 'Mayagüez', 'Rosario', 18.2332624, -67.0995184, ST_GeomFromText('POINT(18.2332624 -67.0995184)', 4326), 18.2232809, -67.0843295, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612022', 'Quebrada Collao', 'Valley', 'Puerto Rico', 'PU', 'Salinas', 'Cayey', 18.0892202, -66.2166805, ST_GeomFromText('POINT(18.0892202 -66.2166805)', 4326), 18.100699, -66.2301856, '1981-02-13', '2017-02-22', NULL, NULL, NULL),
  ('1612023', 'Quebrada Collazo', 'Valley', 'Puerto Rico', 'PU', 'San Sebastián', 'San Sebastian', 18.3275236, -66.9725186, ST_GeomFromText('POINT(18.3275236 -66.9725186)', 4326), 18.3341799, -66.946013, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1612024', 'Quebrada Collera', 'Valley', 'Puerto Rico', 'PU', 'Las Marías', 'Central La Plata', 18.2734473, -67.0219554, ST_GeomFromText('POINT(18.2734473 -67.0219554)', 4326), 18.2646094, -67.0290793, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612025', 'Quebrada Collores', 'Valley', 'Puerto Rico', 'PU', 'Trujillo Alto', 'Aguas Buenas', 18.3077394, -66.0026773, ST_GeomFromText('POINT(18.3077394 -66.0026773)', 4326), 18.3008197, -66.0131801, '1981-02-13', '2017-02-14', NULL, NULL, NULL),
  ('1612026', 'Quebrada Collores', 'Valley', 'Puerto Rico', 'PU', 'Humacao', 'Humacao', 18.1824673, -65.8116901, ST_GeomFromText('POINT(18.1824673 -65.8116901)', 4326), 18.175165, -65.8329469, '1981-02-13', '2017-03-01', NULL, NULL, NULL),
  ('1612027', 'Quebrada Colorada', 'Valley', 'Puerto Rico', 'PU', 'Las Piedras', 'Humacao', 18.2213828, -65.834469, ST_GeomFromText('POINT(18.2213828 -65.834469)', 4326), 18.2384578, -65.823372, '1981-02-13', '2017-03-01', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612028', 'Quebrada Colorada', 'Valley', 'Puerto Rico', 'PU', 'Utuado', 'Adjuntas', 18.2410482, -66.7429486, ST_GeomFromText('POINT(18.2410482 -66.7429486)', 4326), 18.2440816, -66.7496258, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1612029', 'Quebrada Columbiana', 'Valley', 'Puerto Rico', 'PU', 'Quebradillas', 'Quebradillas', 18.4475792, -66.9622913, ST_GeomFromText('POINT(18.4475792 -66.9622913)', 4326), 18.4478121, -66.9473737, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1612030', 'Quebrada Colzadera', 'Valley', 'Puerto Rico', 'PU', 'Añasco', 'Rincon', 18.2989703, -67.167332, ST_GeomFromText('POINT(18.2989703 -67.167332)', 4326), 18.310563, -67.1724802, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612031', 'Quebrada Conchita', 'Valley', 'Puerto Rico', 'PU', 'Utuado', 'Utuado', 18.2529588, -66.7312572, ST_GeomFromText('POINT(18.2529588 -66.7312572)', 4326), 18.2406008, -66.732261, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1612032', 'Quebrada Consejo', 'Valley', 'Puerto Rico', 'PU', 'Guayanilla', 'Yauco', 18.0440772, -66.8042928, ST_GeomFromText('POINT(18.0440772 -66.8042928)', 4326), 18.0572147, -66.8182395, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1612033', 'Quebrada Convento', 'Valley', 'Puerto Rico', 'PU', 'Comerío', 'Comerio', 18.2229027, -66.2257661, ST_GeomFromText('POINT(18.2229027 -66.2257661)', 4326), 18.2249492, -66.2461777, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1612034', 'Quebrada Corazón', 'Valley', 'Puerto Rico', 'PU', 'Guayama', 'Guayama', 17.9660448, -66.0749437, ST_GeomFromText('POINT(17.9660448 -66.0749437)', 4326), 18.0108022, -66.0848392, '1981-02-13', '2017-03-01', NULL, NULL, NULL),
  ('1612035', 'Quebrada Coroco', 'Valley', 'Puerto Rico', 'PU', 'Maunabo', 'Yabucoa', 18.0331322, -65.9533116, ST_GeomFromText('POINT(18.0331322 -65.9533116)', 4326), 18.0450138, -65.9496537, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1612036', 'Quebrada Cortadera', 'Valley', 'Puerto Rico', 'PU', 'Yabucoa', 'Punta Guayanes', 18.0947598, -65.8599775, ST_GeomFromText('POINT(18.0947598 -65.8599775)', 4326), 18.1146597, -65.8598955, '1981-02-13', '2017-03-07', NULL, NULL, NULL),
  ('1612037', 'Quebrada Cruz', 'Valley', 'Puerto Rico', 'PU', 'Toa Alta', 'Naranjito', 18.3552122, -66.244132, ST_GeomFromText('POINT(18.3552122 -66.244132)', 4326), 18.3444692, -66.2663748, '1981-02-13', '2017-03-03', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612038', 'Quebrada Cuesta Pasto', 'Valley', 'Puerto Rico', 'PU', 'Villalba', 'Orocovis', 18.1398216, -66.4978859, ST_GeomFromText('POINT(18.1398216 -66.4978859)', 4326), 18.1466125, -66.5102393, '1981-02-13', '2017-03-04', NULL, NULL, NULL),
  ('1612039', 'Quebrada Culebra', 'Valley', 'Puerto Rico', 'PU', 'Guayama', 'Patillas', 18.0319404, -66.1073587, ST_GeomFromText('POINT(18.0319404 -66.1073587)', 4326), 18.0394178, -66.0893362, '1981-02-13', '2017-03-04', NULL, NULL, NULL),
  ('1612040', 'Quebrada Culebra', 'Valley', 'Puerto Rico', 'PU', 'Sabana Grande', 'Sabana Grande', 18.1059382, -66.935367, ST_GeomFromText('POINT(18.1059382 -66.935367)', 4326), 18.1046807, -66.9230926, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1612041', 'Quebrada Culebra', 'Valley', 'Puerto Rico', 'PU', 'Guayama', 'Patillas', 18.0910804, -66.1246336, ST_GeomFromText('POINT(18.0910804 -66.1246336)', 4326), 18.0719074, -66.1422592, '1981-02-13', '2017-02-22', NULL, NULL, NULL),
  ('1612042', 'Quebrada Culebra', 'Valley', 'Puerto Rico', 'PU', 'Río Grande', 'El Yunque', 18.3739979, -65.8007047, ST_GeomFromText('POINT(18.3739979 -65.8007047)', 4326), 18.3660071, -65.7842922, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612043', 'Quebrada Cumba', 'Valley', 'Puerto Rico', 'PU', 'Añasco', 'Rincon', 18.298132, -67.1811064, ST_GeomFromText('POINT(18.298132 -67.1811064)', 4326), 18.3093691, -67.1828175, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612044', 'Quebrada Dajaos', 'Valley', 'Puerto Rico', 'PU', 'Naranjito', 'Naranjito', 18.313524, -66.2052053, ST_GeomFromText('POINT(18.313524 -66.2052053)', 4326), 18.3007901, -66.1735491, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612045', 'Quebrada Damián', 'Valley', 'Puerto Rico', 'PU', 'Orocovis', 'Orocovis', 18.2483855, -66.4320625, ST_GeomFromText('POINT(18.2483855 -66.4320625)', 4326), 18.2413749, -66.4172877, '1981-02-13', '2017-03-04', NULL, NULL, NULL),
  ('1612046', 'Quebrada Damiana', 'Valley', 'Puerto Rico', 'PU', 'Guaynabo', 'Naranjito', 18.3067879, -66.1395121, ST_GeomFromText('POINT(18.3067879 -66.1395121)', 4326), 18.2895822, -66.1196721, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612047', 'Quebrada Diego', 'Valley', 'Puerto Rico', 'PU', 'Cataño', 'Bayamon', 18.426673, -66.1334036, ST_GeomFromText('POINT(18.426673 -66.1334036)', 4326), 18.413431, -66.1423542, '1981-02-13', '2017-02-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612048', 'Quebrada Don Victor', 'Valley', 'Puerto Rico', 'PU', 'Juncos', 'Juncos', 18.2218707, -65.9251995, ST_GeomFromText('POINT(18.2218707 -65.9251995)', 4326), 18.2175778, -65.949353, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1612049', 'Quebrada Doña Juana', 'Valley', 'Puerto Rico', 'PU', 'Orocovis', 'Jayuya', 18.1830414, -66.5124608, ST_GeomFromText('POINT(18.1830414 -66.5124608)', 4326), 18.1707233, -66.4871365, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1612050', 'Quebrada Duende', 'Valley', 'Puerto Rico', 'PU', 'Añasco', 'Rincon', 18.2983766, -67.1867148, ST_GeomFromText('POINT(18.2983766 -67.1867148)', 4326), 18.3078813, -67.1852351, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612051', 'Quebrada Dulce', 'Valley', 'Puerto Rico', 'PU', 'San Sebastián', 'San Sebastian', 18.3024536, -66.9221733, ST_GeomFromText('POINT(18.3024536 -66.9221733)', 4326), 18.2987986, -66.9125283, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1612052', 'Quebrada Dulce', 'Valley', 'Puerto Rico', 'PU', 'Moca', 'Moca', 18.3809335, -67.1030232, ST_GeomFromText('POINT(18.3809335 -67.1030232)', 4326), 18.3726559, -67.0908305, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612053', 'Quebrada El Cangle', 'Valley', 'Puerto Rico', 'PU', 'San Lorenzo', 'Juncos', 18.1771441, -65.9963655, ST_GeomFromText('POINT(18.1771441 -65.9963655)', 4326), 18.1834108, -66.0129362, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1612054', 'Quebrada El Cedro', 'Valley', 'Puerto Rico', 'PU', 'Cayey', 'Patillas', 18.1142756, -66.12374, ST_GeomFromText('POINT(18.1142756 -66.12374)', 4326), 18.0845701, -66.1504518, '1981-02-13', '2017-02-22', NULL, NULL, NULL),
  ('1612055', 'Quebrada El Gallinero', 'Valley', 'Puerto Rico', 'PU', 'Aguada', 'Rincon', 18.3671474, -67.1533539, ST_GeomFromText('POINT(18.3671474 -67.1533539)', 4326), 18.3493565, -67.1593232, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612056', 'Quebrada El Gato', 'Valley', 'Puerto Rico', 'PU', 'Morovis', 'Ciales', 18.2579282, -66.4566697, ST_GeomFromText('POINT(18.2579282 -66.4566697)', 4326), 18.253585, -66.4691495, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612057', 'Quebrada El Gato', 'Valley', 'Puerto Rico', 'PU', 'Orocovis', 'Orocovis', 18.2478886, -66.3800491, ST_GeomFromText('POINT(18.2478886 -66.3800491)', 4326), 18.249607, -66.389785, '1981-02-13', '2017-03-04', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612058', 'Quebrada El Marqués', 'Valley', 'Puerto Rico', 'PU', 'Bayamón', 'Bayamon', 18.3890429, -66.1366798, ST_GeomFromText('POINT(18.3890429 -66.1366798)', 4326), 18.3850102, -66.1184123, '1981-02-13', '2017-02-15', NULL, NULL, NULL),
  ('1612059', 'Quebrada El Negro', 'Valley', 'Puerto Rico', 'PU', 'Añasco', 'Central La Plata', 18.2959698, -67.0474279, ST_GeomFromText('POINT(18.2959698 -67.0474279)', 4326), 18.2977302, -67.051484, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612060', 'Quebrada El Salto', 'Valley', 'Puerto Rico', 'PU', 'Manatí', 'Manati', 18.3913512, -66.4529657, ST_GeomFromText('POINT(18.3913512 -66.4529657)', 4326), 18.3744218, -66.4561157, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1612061', 'Quebrada El Salto', 'Valley', 'Puerto Rico', 'PU', 'Moca', 'Central La Plata', 18.3509218, -67.0476041, ST_GeomFromText('POINT(18.3509218 -67.0476041)', 4326), 18.3909112, -67.0286304, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612062', 'Quebrada El Toro', 'Valley', 'Puerto Rico', 'PU', 'Vega Baja', 'Manati', 18.3867413, -66.3956656, ST_GeomFromText('POINT(18.3867413 -66.3956656)', 4326), 18.376122, -66.4071419, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1612063', 'Quebrada Emajagua', 'Valley', 'Puerto Rico', 'PU', 'Maunabo', 'Punta Guayanes', 18.0065902, -65.8665526, ST_GeomFromText('POINT(18.0065902 -65.8665526)', 4326), 18.0254829, -65.8661429, '1981-02-13', '2017-03-07', NULL, NULL, NULL),
  ('1612064', 'Quebrada Emajagua', 'Valley', 'Puerto Rico', 'PU', 'Ponce', 'Jayuya', 18.1391018, -66.5777686, ST_GeomFromText('POINT(18.1391018 -66.5777686)', 4326), 18.1509863, -66.5531853, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1612065', 'Quebrada Escarcha', 'Valley', 'Puerto Rico', 'PU', 'Toa Alta', 'Bayamon', 18.3826142, -66.2134692, ST_GeomFromText('POINT(18.3826142 -66.2134692)', 4326), 18.3723747, -66.1991595, '1981-02-13', '2017-02-15', NULL, NULL, NULL),
  ('1612066', 'Quebrada Eugenia', 'Valley', 'Puerto Rico', 'PU', 'Añasco', 'Rincon', 18.2985567, -67.1839187, ST_GeomFromText('POINT(18.2985567 -67.1839187)', 4326), 18.3083006, -67.1840521, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612067', 'Quebrada Fajardo', 'Valley', 'Puerto Rico', 'PU', 'Fajardo', 'Fajardo', 18.3545377, -65.663174, ST_GeomFromText('POINT(18.3545377 -65.663174)', 4326), 18.322207, -65.6789973, '1981-02-13', '2017-02-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612068', 'Quebrada Felipa', 'Valley', 'Puerto Rico', 'PU', 'Utuado', 'Adjuntas', 18.2483636, -66.6512235, ST_GeomFromText('POINT(18.2483636 -66.6512235)', 4326), 18.2118241, -66.6597191, '1981-02-13', '2017-02-14', NULL, NULL, NULL),
  ('1612069', 'Quebrada Fermina', 'Valley', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.070462, -67.1691551, ST_GeomFromText('POINT(18.070462 -67.1691551)', 4326), 18.0637175, -67.1660624, '1981-02-13', '2017-03-07', NULL, NULL, NULL),
  ('1612070', 'Quebrada Florida', 'Valley', 'Puerto Rico', 'PU', 'Patillas', 'Punta Tuna', 17.9722366, -65.9386196, ST_GeomFromText('POINT(17.9722366 -65.9386196)', 4326), 17.9846039, -65.9387982, '1981-02-13', '2017-03-07', NULL, NULL, NULL),
  ('1612071', 'Quebrada Frailes', 'Valley', 'Puerto Rico', 'PU', 'Guaynabo', 'Aguas Buenas', 18.3662377, -66.1053078, ST_GeomFromText('POINT(18.3662377 -66.1053078)', 4326), 18.3453215, -66.0905262, '1981-02-13', '2017-02-15', NULL, NULL, NULL),
  ('1612072', 'Quebrada Galindo', 'Valley', 'Puerto Rico', 'PU', 'Cidra', 'Comerio', 18.1470361, -66.2017763, ST_GeomFromText('POINT(18.1470361 -66.2017763)', 4326), 18.1578, -66.2065156, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1612073', 'Quebrada Gandel', 'Valley', 'Puerto Rico', 'PU', 'Mayagüez', 'Rosario', 18.2084218, -67.1147408, ST_GeomFromText('POINT(18.2084218 -67.1147408)', 4326), 18.2163835, -67.0739622, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612074', 'Quebrada Gómez', 'Valley', 'Puerto Rico', 'PU', 'Cayey', 'Comerio', 18.1426742, -66.2172208, ST_GeomFromText('POINT(18.1426742 -66.2172208)', 4326), 18.1086948, -66.2257657, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1612075', 'Quebrada González', 'Valley', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.0594942, -67.1853147, ST_GeomFromText('POINT(18.0594942 -67.1853147)', 4326), 18.0600435, -67.1655127, '1981-02-13', '2017-03-07', NULL, NULL, NULL),
  ('1612076', 'Quebrada González', 'Valley', 'Puerto Rico', 'PU', 'Carolina', 'Gurabo', 18.2872628, -65.9134606, ST_GeomFromText('POINT(18.2872628 -65.9134606)', 4326), 18.2797985, -65.921182, '1981-02-13', '2017-03-01', NULL, NULL, NULL),
  ('1612078', 'Quebrada Grande', 'Valley', 'Puerto Rico', 'PU', 'Lajas', 'San German', 18.0396277, -67.1108739, ST_GeomFromText('POINT(18.0396277 -67.1108739)', 4326), 18.0543374, -67.0933703, '1981-02-13', '2017-03-09', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612079', 'Quebrada Grande', 'Valley', 'Puerto Rico', 'PU', 'Yauco', 'Sabana Grande', 18.0588668, -66.8858039, ST_GeomFromText('POINT(18.0588668 -66.8858039)', 4326), 18.1083931, -66.8921202, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612080', 'Quebrada Grande', 'Valley', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.0670586, -67.1489675, ST_GeomFromText('POINT(18.0670586 -67.1489675)', 4326), 18.0676478, -67.1308938, '1981-02-13', '2017-03-07', NULL, NULL, NULL),
  ('1612081', 'Quebrada Grande', 'Valley', 'Puerto Rico', 'PU', 'Lares', 'Monte Guilarte', 18.2160283, -66.8674664, ST_GeomFromText('POINT(18.2160283 -66.8674664)', 4326), 18.1986248, -66.852532, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1612082', 'Quebrada Grande', 'Valley', 'Puerto Rico', 'PU', 'Villalba', 'Rio Descalabrado', 18.1002925, -66.4610133, ST_GeomFromText('POINT(18.1002925 -66.4610133)', 4326), 18.104028, -66.438478, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612083', 'Quebrada Grande', 'Valley', 'Puerto Rico', 'PU', 'Hormigueros', 'Rosario', 18.1361329, -67.1236839, ST_GeomFromText('POINT(18.1361329 -67.1236839)', 4326), 18.1505959, -67.1118293, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612084', 'Quebrada Grande', 'Valley', 'Puerto Rico', 'PU', 'San Lorenzo', 'Juncos', 18.1562825, -65.9578875, ST_GeomFromText('POINT(18.1562825 -65.9578875)', 4326), 18.1599727, -65.9427299, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1612085', 'Quebrada Grande', 'Valley', 'Puerto Rico', 'PU', 'Barranquitas', 'Barranquitas', 18.2193109, -66.271272, ST_GeomFromText('POINT(18.2193109 -66.271272)', 4326), 18.2008445, -66.2856813, '1981-02-13', '2017-02-15', NULL, NULL, NULL),
  ('1612086', 'Quebrada Grande', 'Valley', 'Puerto Rico', 'PU', 'Orocovis', 'Ciales', 18.2736926, -66.3820665, ST_GeomFromText('POINT(18.2736926 -66.3820665)', 4326), 18.2638673, -66.3967222, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612087', 'Quebrada Grande', 'Valley', 'Puerto Rico', 'PU', 'San Sebastián', 'San Sebastian', 18.2970912, -66.9333115, ST_GeomFromText('POINT(18.2970912 -66.9333115)', 4326), 18.3023945, -66.9221866, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1612088', 'Quebrada Grande', 'Valley', 'Puerto Rico', 'PU', 'Añasco', 'Central La Plata', 18.2990949, -67.0464664, ST_GeomFromText('POINT(18.2990949 -67.0464664)', 4326), 18.3070275, -67.0595408, '1981-02-13', '2017-03-10', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612089', 'Quebrada Grande', 'Valley', 'Puerto Rico', 'PU', 'Río Grande', 'El Yunque', 18.3079691, -65.8390464, ST_GeomFromText('POINT(18.3079691 -65.8390464)', 4326), 18.2905413, -65.8173382, '1981-02-13', '2017-02-28', NULL, NULL, NULL),
  ('1612090', 'Quebrada Grande', 'Valley', 'Puerto Rico', 'PU', 'Río Grande', 'El Yunque', 18.3537124, -65.8210827, ST_GeomFromText('POINT(18.3537124 -65.8210827)', 4326), 18.3153005, -65.7953247, '1981-02-13', '2017-02-28', NULL, NULL, NULL),
  ('1612091', 'Quebrada Grande', 'Valley', 'Puerto Rico', 'PU', 'Trujillo Alto', 'Gurabo', 18.3368746, -65.9885597, ST_GeomFromText('POINT(18.3368746 -65.9885597)', 4326), 18.2945165, -65.9535718, '1981-02-13', '2017-03-01', NULL, NULL, NULL),
  ('1612092', 'Quebrada Grande', 'Valley', 'Puerto Rico', 'PU', 'Moca', 'Moca', 18.3810932, -67.1031866, ST_GeomFromText('POINT(18.3810932 -67.1031866)', 4326), 18.4003912, -67.0803783, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612093', 'Quebrada Grande', 'Valley', 'Puerto Rico', 'PU', 'San Sebastián', 'Central La Plata', 18.3435959, -67.0431673, ST_GeomFromText('POINT(18.3435959 -67.0431673)', 4326), 18.3138486, -67.0340294, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1612094', 'Quebrada Grande', 'Valley', 'Puerto Rico', 'PU', 'Aguas Buenas', 'Naranjito', 18.2677315, -66.1399443, ST_GeomFromText('POINT(18.2677315 -66.1399443)', 4326), 18.2610865, -66.1735979, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612095', 'Quebrada Grande', 'Valley', 'Puerto Rico', 'PU', 'Yauco', 'Yauco', 18.0945463, -66.8534934, ST_GeomFromText('POINT(18.0945463 -66.8534934)', 4326), 18.1375595, -66.8345854, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1612096', 'Quebrada Grande', 'Valley', 'Puerto Rico', 'PU', 'Mayagüez', 'Mayaguez', 18.1773609, -67.1492714, ST_GeomFromText('POINT(18.1773609 -67.1492714)', 4326), 18.1764427, -67.091748, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612097', 'Quebrada Grande', 'Valley', 'Puerto Rico', 'PU', 'Las Marías', 'San Sebastian', 18.2659648, -66.9649829, ST_GeomFromText('POINT(18.2659648 -66.9649829)', 4326), 18.2505344, -66.9568182, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1612098', 'Quebrada Grande', 'Valley', 'Puerto Rico', 'PU', 'Naguabo', 'Naguabo', 18.2197008, -65.7313796, ST_GeomFromText('POINT(18.2197008 -65.7313796)', 4326), 18.2640827, -65.7595534, '1981-02-13', '2017-03-03', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612099', 'Quebrada Grande', 'Valley', 'Puerto Rico', 'PU', 'Añasco', 'Rincon', 18.2591209, -67.1340345, ST_GeomFromText('POINT(18.2591209 -67.1340345)', 4326), 18.250509, -67.0926761, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612100', 'Quebrada Grande', 'Valley', 'Puerto Rico', 'PU', 'Aguada', 'Aguadilla', 18.3781433, -67.1470726, ST_GeomFromText('POINT(18.3781433 -67.1470726)', 4326), 18.339824, -67.13375, '1981-02-13', '2017-02-14', NULL, NULL, NULL),
  ('1612101', 'Quebrada Grande de Morovis', 'Valley', 'Puerto Rico', 'PU', 'Morovis', 'Ciales', 18.3625262, -66.4014905, ST_GeomFromText('POINT(18.3625262 -66.4014905)', 4326), 18.367593, -66.4516208, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612102', 'Quebrada Grande de San Lorenzo', 'Valley', 'Puerto Rico', 'PU', 'Morovis', 'Ciales', 18.3100995, -66.4441133, ST_GeomFromText('POINT(18.3100995 -66.4441133)', 4326), 18.3075507, -66.4170685, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612103', 'Quebrada Grande de Sierra Baja', 'Valley', 'Puerto Rico', 'PU', 'Guayanilla', 'Yauco', 18.0725188, -66.7943896, ST_GeomFromText('POINT(18.0725188 -66.7943896)', 4326), 18.0875115, -66.8160547, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1612104', 'Quebrada Guama', 'Valley', 'Puerto Rico', 'PU', 'Guayanilla', 'Yauco', 18.1060772, -66.7893226, ST_GeomFromText('POINT(18.1060772 -66.7893226)', 4326), 18.1146341, -66.8038407, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1612105', 'Quebrada Guayabo', 'Valley', 'Puerto Rico', 'PU', 'Yabucoa', 'Yabucoa', 18.0485935, -65.9243144, ST_GeomFromText('POINT(18.0485935 -65.9243144)', 4326), 18.0569715, -65.9541286, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1612106', 'Quebrada Guifen', 'Valley', 'Puerto Rico', 'PU', 'Mayagüez', 'Mayaguez', 18.180697, -67.142399, ST_GeomFromText('POINT(18.180697 -67.142399)', 4326), 18.1741198, -67.1258969, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612107', 'Quebrada Hayales', 'Valley', 'Puerto Rico', 'PU', 'Coamo', 'Barranquitas', 18.1565485, -66.3616435, ST_GeomFromText('POINT(18.1565485 -66.3616435)', 4326), 18.168346, -66.382267, '1981-02-13', '2017-02-15', NULL, NULL, NULL),
  ('1612108', 'Quebrada Helechal', 'Valley', 'Puerto Rico', 'PU', 'Barranquitas', 'Barranquitas', 18.1679106, -66.316528, ST_GeomFromText('POINT(18.1679106 -66.316528)', 4326), 18.1744581, -66.3375267, '1981-02-13', '2017-02-15', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612109', 'Quebrada Hicatea', 'Valley', 'Puerto Rico', 'PU', 'Vega Baja', 'Manati', 18.3866475, -66.4152157, ST_GeomFromText('POINT(18.3866475 -66.4152157)', 4326), 18.3730726, -66.43651, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1612110', 'Quebrada Higüera', 'Valley', 'Puerto Rico', 'PU', 'Patillas', 'Punta Tuna', 17.9883341, -65.9670925, ST_GeomFromText('POINT(17.9883341 -65.9670925)', 4326), 17.9956792, -65.9527453, '1981-02-13', '2017-03-07', NULL, NULL, NULL),
  ('1612111', 'Quebrada Higüera', 'Valley', 'Puerto Rico', 'PU', 'Comerío', 'Comerio', 18.2353371, -66.2146982, ST_GeomFromText('POINT(18.2353371 -66.2146982)', 4326), 18.2422119, -66.2671301, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1612112', 'Quebrada Higuillo', 'Valley', 'Puerto Rico', 'PU', 'Moca', 'Central La Plata', 18.3354647, -67.0723169, ST_GeomFromText('POINT(18.3354647 -67.0723169)', 4326), 18.3212829, -67.091629, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612113', 'Quebrada Honda', 'Valley', 'Puerto Rico', 'PU', 'Sabana Grande', 'Sabana Grande', 18.069784, -66.944738, ST_GeomFromText('POINT(18.069784 -66.944738)', 4326), 18.0520733, -66.9270722, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1612114', 'Quebrada Honda', 'Valley', 'Puerto Rico', 'PU', 'Las Piedras', 'Humacao', 18.2263954, -65.8574954, ST_GeomFromText('POINT(18.2263954 -65.8574954)', 4326), 18.2216629, -65.8345386, '1981-02-13', '2017-03-01', NULL, NULL, NULL),
  ('1612115', 'Quebrada Honda', 'Valley', 'Puerto Rico', 'PU', 'Ciales', 'Ciales', 18.3140627, -66.4934128, ST_GeomFromText('POINT(18.3140627 -66.4934128)', 4326), 18.3038748, -66.4902645, '1981-02-13', '2017-03-11', NULL, NULL, NULL),
  ('1612116', 'Quebrada Honda', 'Valley', 'Puerto Rico', 'PU', 'Morovis', 'Ciales', 18.3217964, -66.4089852, ST_GeomFromText('POINT(18.3217964 -66.4089852)', 4326), 18.3079825, -66.4132146, '1981-02-13', '2017-03-11', NULL, NULL, NULL),
  ('1612117', 'Quebrada Honda', 'Valley', 'Puerto Rico', 'PU', 'Vega Alta', 'Vega Alta', 18.4097213, -66.3070709, ST_GeomFromText('POINT(18.4097213 -66.3070709)', 4326), 18.3927263, -66.3061336, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1612118', 'Quebrada Honda', 'Valley', 'Puerto Rico', 'PU', 'Salinas', 'Salinas', 17.9926408, -66.3014595, ST_GeomFromText('POINT(17.9926408 -66.3014595)', 4326), 18.0111376, -66.2980109, '1981-02-13', '2017-03-06', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612119', 'Quebrada Honda', 'Valley', 'Puerto Rico', 'PU', 'San Lorenzo', 'Juncos', 18.1367259, -65.9819031, ST_GeomFromText('POINT(18.1367259 -65.9819031)', 4326), 18.1431567, -66.0100133, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1612120', 'Quebrada Honda', 'Valley', 'Puerto Rico', 'PU', 'Aibonito', 'Comerio', 18.1582802, -66.228934, ST_GeomFromText('POINT(18.1582802 -66.228934)', 4326), 18.1309252, -66.2409001, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1612121', 'Quebrada Hormiga', 'Valley', 'Puerto Rico', 'PU', 'Patillas', 'Patillas', 18.0563149, -66.033891, ST_GeomFromText('POINT(18.0563149 -66.033891)', 4326), 18.0767995, -66.0175909, '1981-02-13', '2017-03-06', NULL, NULL, NULL),
  ('1612122', 'Quebrada Icaco', 'Valley', 'Puerto Rico', 'PU', 'Patillas', 'Patillas', 18.0540577, -66.0347176, ST_GeomFromText('POINT(18.0540577 -66.0347176)', 4326), 18.0687658, -66.0147582, '1981-02-13', '2017-03-06', NULL, NULL, NULL),
  ('1612123', 'Quebrada Icacos', 'Valley', 'Puerto Rico', 'PU', 'Humacao', 'Humacao', 18.1763233, -65.7740883, ST_GeomFromText('POINT(18.1763233 -65.7740883)', 4326), 18.1922603, -65.7977273, '1981-02-13', '2017-03-01', NULL, NULL, NULL),
  ('1612124', 'Quebrada Icacos', 'Valley', 'Puerto Rico', 'PU', 'Añasco', 'Rincon', 18.2964354, -67.2081358, ST_GeomFromText('POINT(18.2964354 -67.2081358)', 4326), 18.3076885, -67.2058296, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612125', 'Quebrada Indalecia', 'Valley', 'Puerto Rico', 'PU', 'Juana Díaz', 'Ponce', 18.0882265, -66.5379289, ST_GeomFromText('POINT(18.0882265 -66.5379289)', 4326), 18.1445204, -66.53107, '1981-02-13', '2017-03-07', NULL, NULL, NULL),
  ('1612126', 'Quebrada Infierno', 'Valley', 'Puerto Rico', 'PU', 'San Sebastián', 'San Sebastian', 18.2934977, -66.913504, ST_GeomFromText('POINT(18.2934977 -66.913504)', 4326), 18.2870744, -66.9018287, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1612127', 'Quebrada Infierno', 'Valley', 'Puerto Rico', 'PU', 'Trujillo Alto', 'Gurabo', 18.3381395, -65.9889582, ST_GeomFromText('POINT(18.3381395 -65.9889582)', 4326), 18.3077698, -66.0027721, '1981-02-13', '2017-03-01', NULL, NULL, NULL),
  ('1612128', 'Quebrada Irizarry', 'Valley', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Mayaguez', 18.145998, -67.1773383, ST_GeomFromText('POINT(18.145998 -67.1773383)', 4326), 18.1412382, -67.1649441, '1981-02-13', '2017-03-03', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612129', 'Quebrada Jácana', 'Valley', 'Puerto Rico', 'PU', 'Arroyo', 'Patillas', 18.0140942, -66.0564715, ST_GeomFromText('POINT(18.0140942 -66.0564715)', 4326), 18.0132212, -66.0796137, '1981-02-13', '2017-03-06', NULL, NULL, NULL),
  ('1612130', 'Quebrada Jacana', 'Valley', 'Puerto Rico', 'PU', 'Aguas Buenas', 'Comerio', 18.2383364, -66.1431761, ST_GeomFromText('POINT(18.2383364 -66.1431761)', 4326), 18.2292083, -66.1343935, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1612131', 'Quebrada Jacinta', 'Valley', 'Puerto Rico', 'PU', 'Corozal', 'Corozal', 18.3060832, -66.2990041, ST_GeomFromText('POINT(18.3060832 -66.2990041)', 4326), 18.2836472, -66.3019569, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1612132', 'Quebrada Jaguas', 'Valley', 'Puerto Rico', 'PU', 'Naranjito', 'Corozal', 18.3136288, -66.2611813, ST_GeomFromText('POINT(18.3136288 -66.2611813)', 4326), 18.2946805, -66.2685196, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1612133', 'Quebrada Jagüeyes', 'Valley', 'Puerto Rico', 'PU', 'Villalba', 'Ponce', 18.0996416, -66.5070359, ST_GeomFromText('POINT(18.0996416 -66.5070359)', 4326), 18.1074534, -66.5262003, '1981-02-13', '2017-03-07', NULL, NULL, NULL),
  ('1612134', 'Quebrada Jamiel', 'Valley', 'Puerto Rico', 'PU', 'Ponce', 'Jayuya', 18.1440059, -66.6082267, ST_GeomFromText('POINT(18.1440059 -66.6082267)', 4326), 18.1468268, -66.6136261, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1612135', 'Quebrada Janer', 'Valley', 'Puerto Rico', 'PU', 'Gurabo', 'Caguas', 18.2187252, -66.0031125, ST_GeomFromText('POINT(18.2187252 -66.0031125)', 4326), 18.2068207, -66.0102333, '1981-02-13', '2017-02-22', NULL, NULL, NULL),
  ('1612136', 'Quebrada Jicara', 'Valley', 'Puerto Rico', 'PU', 'Lajas', 'Sabana Grande', 18.0285852, -66.9891245, ST_GeomFromText('POINT(18.0285852 -66.9891245)', 4326), 18.051058, -66.9935154, '1981-02-13', '2025-02-12', NULL, NULL, NULL),
  ('1612137', 'Quebrada Jiménez', 'Valley', 'Puerto Rico', 'PU', 'Río Grande', 'El Yunque', 18.3585011, -65.8126418, ST_GeomFromText('POINT(18.3585011 -65.8126418)', 4326), 18.3212628, -65.7851495, '1981-02-13', '2017-02-28', NULL, NULL, NULL),
  ('1612138', 'Quebrada Jobos', 'Valley', 'Puerto Rico', 'PU', 'Utuado', 'Utuado', 18.3244249, -66.6718371, ST_GeomFromText('POINT(18.3244249 -66.6718371)', 4326), 18.3170002, -66.7055153, '1981-02-13', '2017-03-10', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612139', 'Quebrada Josefa', 'Valley', 'Puerto Rico', 'PU', 'Las Marías', 'Maricao', 18.2106628, -66.942042, ST_GeomFromText('POINT(18.2106628 -66.942042)', 4326), 18.2020246, -66.9488034, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612140', 'Quebrada Josefina', 'Valley', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.4134792, -66.0758499, ST_GeomFromText('POINT(18.4134792 -66.0758499)', 4326), 18.3764626, -66.0829277, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1612141', 'Quebrada Júa', 'Valley', 'Puerto Rico', 'PU', 'Utuado', 'Utuado', 18.3081677, -66.6721842, ST_GeomFromText('POINT(18.3081677 -66.6721842)', 4326), 18.2902189, -66.6624036, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1612142', 'Quebrada Juan Mendez', 'Valley', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.4275603, -66.0394671, ST_GeomFromText('POINT(18.4275603 -66.0394671)', 4326), 18.3912892, -66.0417568, '1981-02-13', '2025-02-11', NULL, NULL, NULL),
  ('1612143', 'Quebrada Juan Diego', 'Valley', 'Puerto Rico', 'PU', 'Río Grande', 'El Yunque', 18.3073237, -65.7684588, ST_GeomFromText('POINT(18.3073237 -65.7684588)', 4326), 18.3096442, -65.7794274, '1981-02-13', '2017-02-28', NULL, NULL, NULL),
  ('1612144', 'Quebrada Juan Diego', 'Valley', 'Puerto Rico', 'PU', 'Fajardo', 'Fajardo', 18.2750841, -65.7142176, ST_GeomFromText('POINT(18.2750841 -65.7142176)', 4326), 18.2827681, -65.7341188, '1981-02-13', '2017-02-28', NULL, NULL, NULL),
  ('1612145', 'Quebrada Juan González', 'Valley', 'Puerto Rico', 'PU', 'Río Grande', 'Rio Grande', 18.3938551, -65.8111177, ST_GeomFromText('POINT(18.3938551 -65.8111177)', 4326), 18.3448433, -65.7883156, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612146', 'Quebrada Justo', 'Valley', 'Puerto Rico', 'PU', 'Añasco', 'Rincon', 18.2958038, -67.2000462, ST_GeomFromText('POINT(18.2958038 -67.2000462)', 4326), 18.3075598, -67.2012553, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612147', 'Quebrada La Sequía', 'Valley', 'Puerto Rico', 'PU', 'Quebradillas', 'Quebradillas', 18.473068, -66.9627694, ST_GeomFromText('POINT(18.473068 -66.9627694)', 4326), 18.4614239, -66.9859258, '1981-02-13', '2017-03-07', NULL, NULL, NULL),
  ('1612148', 'Quebrada La Balza', 'Valley', 'Puerto Rico', 'PU', 'Añasco', 'Central La Plata', 18.291, -67.0446571, ST_GeomFromText('POINT(18.291 -67.0446571)', 4326), 18.2959024, -67.0471096, '1981-02-13', '2017-02-23', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612149', 'Quebrada La Caraima', 'Valley', 'Puerto Rico', 'PU', 'Moca', 'Moca', 18.3750675, -67.1145894, ST_GeomFromText('POINT(18.3750675 -67.1145894)', 4326), 18.3719485, -67.1005348, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612150', 'Quebrada La Casimbra', 'Valley', 'Puerto Rico', 'PU', 'Morovis', 'Ciales', 18.3477443, -66.4008769, ST_GeomFromText('POINT(18.3477443 -66.4008769)', 4326), 18.3367865, -66.4000595, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612151', 'Quebrada La Concha', 'Valley', 'Puerto Rico', 'PU', 'Toa Alta', 'Bayamon', 18.3836694, -66.2322627, ST_GeomFromText('POINT(18.3836694 -66.2322627)', 4326), 18.3730391, -66.2320228, '1981-02-13', '2017-02-17', NULL, NULL, NULL),
  ('1612152', 'Quebrada La Costa', 'Valley', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.0361248, -67.141202, ST_GeomFromText('POINT(18.0361248 -67.141202)', 4326), 18.0567813, -67.1196129, '1981-02-13', '2017-03-07', NULL, NULL, NULL),
  ('1612153', 'Quebrada La Cotorra', 'Valley', 'Puerto Rico', 'PU', 'Coamo', 'Orocovis', 18.1394068, -66.4189251, ST_GeomFromText('POINT(18.1394068 -66.4189251)', 4326), 18.1729064, -66.4386395, '1981-02-13', '2017-03-04', NULL, NULL, NULL),
  ('1612154', 'Quebrada La Granja', 'Valley', 'Puerto Rico', 'PU', 'Yauco', 'Yauco', 18.0758374, -66.8606273, ST_GeomFromText('POINT(18.0758374 -66.8606273)', 4326), 18.0848419, -66.8766094, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1612155', 'Quebrada La Luisa', 'Valley', 'Puerto Rico', 'PU', 'Yauco', 'Yauco', 18.1162311, -66.8248984, ST_GeomFromText('POINT(18.1162311 -66.8248984)', 4326), 18.1322321, -66.8198581, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1612156', 'Quebrada La Máquina', 'Valley', 'Puerto Rico', 'PU', 'Luquillo', 'El Yunque', 18.3301423, -65.7564369, ST_GeomFromText('POINT(18.3301423 -65.7564369)', 4326), 18.3253169, -65.7711871, '1981-02-13', '2017-02-28', NULL, NULL, NULL),
  ('1612157', 'Quebrada La Mina', 'Valley', 'Puerto Rico', 'PU', 'Ciales', 'Jayuya', 18.1917, -66.5147726, ST_GeomFromText('POINT(18.1917 -66.5147726)', 4326), 18.1968576, -66.5305873, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1612158', 'Quebrada La Mina', 'Valley', 'Puerto Rico', 'PU', 'Morovis', 'Ciales', 18.2989536, -66.4009502, ST_GeomFromText('POINT(18.2989536 -66.4009502)', 4326), 18.3100844, -66.3951749, '1981-02-13', '2017-02-23', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612159', 'Quebrada La Mina', 'Valley', 'Puerto Rico', 'PU', 'Cayey', 'Cayey', 18.0616571, -66.1814144, ST_GeomFromText('POINT(18.0616571 -66.1814144)', 4326), 18.0736402, -66.1895517, '1981-02-13', '2017-02-22', NULL, NULL, NULL),
  ('1612160', 'Quebrada La Mocha', 'Valley', 'Puerto Rico', 'PU', 'Ponce', 'Jayuya', 18.126505, -66.6180603, ST_GeomFromText('POINT(18.126505 -66.6180603)', 4326), 18.1278896, -66.6398615, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1612161', 'Quebrada La Mona', 'Valley', 'Puerto Rico', 'PU', 'Añasco', 'Central La Plata', 18.2960327, -67.0470865, ST_GeomFromText('POINT(18.2960327 -67.0470865)', 4326), 18.3065731, -67.0475725, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612162', 'Quebrada La Mota', 'Valley', 'Puerto Rico', 'PU', 'Las Marías', 'Central La Plata', 18.2565219, -67.0332334, ST_GeomFromText('POINT(18.2565219 -67.0332334)', 4326), 18.2468369, -67.0294883, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612163', 'Quebrada La Palma', 'Valley', 'Puerto Rico', 'PU', 'Salinas', 'Cayey', 18.0595006, -66.2395959, ST_GeomFromText('POINT(18.0595006 -66.2395959)', 4326), 18.072394, -66.2036636, '1981-02-13', '2017-02-22', NULL, NULL, NULL),
  ('1612164', 'Quebrada La Palma', 'Valley', 'Puerto Rico', 'PU', 'Mayagüez', 'Rosario', 18.1741982, -67.0514472, ST_GeomFromText('POINT(18.1741982 -67.0514472)', 4326), 18.1662787, -67.0208834, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612165', 'Quebrada La Piedra', 'Valley', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.0926689, -67.1343449, ST_GeomFromText('POINT(18.0926689 -67.1343449)', 4326), 18.0693104, -67.132273, '1981-02-13', '2017-03-07', NULL, NULL, NULL),
  ('1612166', 'Quebrada La Plata', 'Valley', 'Puerto Rico', 'PU', 'Lajas', 'Sabana Grande', 18.0275458, -66.9781995, ST_GeomFromText('POINT(18.0275458 -66.9781995)', 4326), 18.0520352, -66.9720213, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1612167', 'Quebrada La Regadera', 'Valley', 'Puerto Rico', 'PU', 'Arecibo', 'Arecibo', 18.4476851, -66.6777881, ST_GeomFromText('POINT(18.4476851 -66.6777881)', 4326), 18.427951, -66.6612695, '1981-02-13', '2017-02-15', NULL, NULL, NULL),
  ('1612168', 'Quebrada La Represa', 'Valley', 'Puerto Rico', 'PU', 'Yauco', 'Maricao', 18.1374606, -66.8875789, ST_GeomFromText('POINT(18.1374606 -66.8875789)', 4326), 18.1437256, -66.8774851, '1981-02-13', '2017-03-03', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612169', 'Quebrada La Toma', 'Valley', 'Puerto Rico', 'PU', 'Río Grande', 'El Yunque', 18.3294799, -65.7660827, ST_GeomFromText('POINT(18.3294799 -65.7660827)', 4326), 18.328177, -65.7701675, '1981-02-13', '2017-02-28', NULL, NULL, NULL),
  ('1612170', 'Quebrada La Vaca', 'Valley', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.172145, -66.7923473, ST_GeomFromText('POINT(18.172145 -66.7923473)', 4326), 18.1813802, -66.785334, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612171', 'Quebrada La Yegua', 'Valley', 'Puerto Rico', 'PU', 'Bayamón', 'Naranjito', 18.3103496, -66.2052087, ST_GeomFromText('POINT(18.3103496 -66.2052087)', 4326), 18.3061205, -66.1980811, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612172', 'Quebrada La Zapera', 'Valley', 'Puerto Rico', 'PU', 'Cidra', 'Comerio', 18.2053983, -66.139493, ST_GeomFromText('POINT(18.2053983 -66.139493)', 4326), 18.2099323, -66.1261738, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1612173', 'Quebrada La Catalina', 'Valley', 'Puerto Rico', 'PU', 'Cidra', 'Comerio', 18.1821096, -66.1815035, ST_GeomFromText('POINT(18.1821096 -66.1815035)', 4326), 18.1623242, -66.1876509, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1612174', 'Quebrada Laja', 'Valley', 'Puerto Rico', 'PU', 'Yabucoa', 'Punta Guayanes', 18.0518739, -65.8508587, ST_GeomFromText('POINT(18.0518739 -65.8508587)', 4326), 18.0280951, -65.8644389, '1981-02-13', '2017-03-07', NULL, NULL, NULL),
  ('1612175', 'Quebrada Lajas', 'Valley', 'Puerto Rico', 'PU', 'San Sebastián', 'San Sebastian', 18.3112317, -66.956975, ST_GeomFromText('POINT(18.3112317 -66.956975)', 4326), 18.3182359, -66.9408531, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1612176', 'Quebrada Lajas', 'Valley', 'Puerto Rico', 'PU', 'San Lorenzo', 'Yabucoa', 18.1147354, -65.9885108, ST_GeomFromText('POINT(18.1147354 -65.9885108)', 4326), 18.0982224, -66.0146151, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1612177', 'Quebrada Larga', 'Valley', 'Puerto Rico', 'PU', 'Añasco', 'Rincon', 18.2829887, -67.1719152, ST_GeomFromText('POINT(18.2829887 -67.1719152)', 4326), 18.316622, -67.1599106, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612178', 'Quebrada Los Canales', 'Valley', 'Puerto Rico', 'PU', 'Guayanilla', 'Monte Guilarte', 18.1258968, -66.784609, ST_GeomFromText('POINT(18.1258968 -66.784609)', 4326), 18.1357614, -66.7836718, '1981-02-13', '2017-03-03', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612179', 'Quebrada Las Cañas', 'Valley', 'Puerto Rico', 'PU', 'San Sebastián', 'San Sebastian', 18.2714894, -66.9426982, ST_GeomFromText('POINT(18.2714894 -66.9426982)', 4326), 18.2842923, -66.9480586, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1612180', 'Quebrada Las Chorreras', 'Valley', 'Puerto Rico', 'PU', 'Aguas Buenas', 'Naranjito', 18.2796365, -66.1438761, ST_GeomFromText('POINT(18.2796365 -66.1438761)', 4326), 18.2760757, -66.1513405, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612181', 'Quebrada Las Curias', 'Valley', 'Puerto Rico', 'PU', 'San Juan', 'Aguas Buenas', 18.3479964, -66.0657209, ST_GeomFromText('POINT(18.3479964 -66.0657209)', 4326), 18.342782, -66.0510001, '1981-02-13', '2017-02-15', NULL, NULL, NULL),
  ('1612182', 'Quebrada Las Guares', 'Valley', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.1700645, -66.7891553, ST_GeomFromText('POINT(18.1700645 -66.7891553)', 4326), 18.16788, -66.7803236, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612183', 'Quebrada Las Lajas', 'Valley', 'Puerto Rico', 'PU', 'Carolina', 'Gurabo', 18.3445557, -65.919729, ST_GeomFromText('POINT(18.3445557 -65.919729)', 4326), 18.3337337, -65.924713, '1981-02-13', '2017-03-01', NULL, NULL, NULL),
  ('1612184', 'Quebrada Las Lajas', 'Valley', 'Puerto Rico', 'PU', 'Vega Baja', 'Manati', 18.3793364, -66.3935015, ST_GeomFromText('POINT(18.3793364 -66.3935015)', 4326), 18.3744828, -66.3883922, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1612185', 'Quebrada Las Lugas', 'Valley', 'Puerto Rico', 'PU', 'Sabana Grande', 'Sabana Grande', 18.0437294, -66.9199316, ST_GeomFromText('POINT(18.0437294 -66.9199316)', 4326), 18.049596, -66.9185041, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612186', 'Quebrada Las Marías', 'Valley', 'Puerto Rico', 'PU', 'Las Marías', 'Rosario', 18.2481836, -67.0119527, ST_GeomFromText('POINT(18.2481836 -67.0119527)', 4326), 18.2389393, -67.0184492, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1612187', 'Quebrada Las Marías', 'Valley', 'Puerto Rico', 'PU', 'Moca', 'Central La Plata', 18.3645808, -67.1088765, ST_GeomFromText('POINT(18.3645808 -67.1088765)', 4326), 18.3312996, -67.1482968, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1612188', 'Quebrada Las Peñas', 'Valley', 'Puerto Rico', 'PU', 'Bayamón', 'Naranjito', 18.2839938, -66.1432764, ST_GeomFromText('POINT(18.2839938 -66.1432764)', 4326), 18.2871266, -66.1507345, '1981-02-13', '2017-03-03', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612189', 'Quebrada Las Piedras', 'Valley', 'Puerto Rico', 'PU', 'Aguas Buenas', 'Naranjito', 18.2602804, -66.1526186, ST_GeomFromText('POINT(18.2602804 -66.1526186)', 4326), 18.2720026, -66.1557056, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612190', 'Quebrada Las Piñas', 'Valley', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.0864144, -67.1930687, ST_GeomFromText('POINT(18.0864144 -67.1930687)', 4326), 18.0847336, -67.1663989, '1981-02-13', '2017-03-07', NULL, NULL, NULL),
  ('1612191', 'Quebrada Las Torres', 'Valley', 'Puerto Rico', 'PU', 'Vega Baja', 'Manati', 18.3771351, -66.3860487, ST_GeomFromText('POINT(18.3771351 -66.3860487)', 4326), 18.3755056, -66.3790909, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1612192', 'Quebrada Las Tunas', 'Valley', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.0841999, -67.1472105, ST_GeomFromText('POINT(18.0841999 -67.1472105)', 4326), 18.0674349, -67.148632, '1981-02-13', '2017-03-07', NULL, NULL, NULL),
  ('1612193', 'Quebrada Las Varas', 'Valley', 'Puerto Rico', 'PU', 'San Sebastián', 'San Sebastian', 18.3285701, -66.9169216, ST_GeomFromText('POINT(18.3285701 -66.9169216)', 4326), 18.3218647, -66.9399759, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1612194', 'Quebrada Lasalle', 'Valley', 'Puerto Rico', 'PU', 'Moca', 'Central La Plata', 18.3581233, -67.0558476, ST_GeomFromText('POINT(18.3581233 -67.0558476)', 4326), 18.3899912, -67.0534051, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612195', 'Quebrada Laya', 'Valley', 'Puerto Rico', 'PU', 'Añasco', 'Rincon', 18.2974596, -67.1916138, ST_GeomFromText('POINT(18.2974596 -67.1916138)', 4326), 18.3108393, -67.1886007, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612196', 'Quebrada Lazania', 'Valley', 'Puerto Rico', 'PU', 'Cayey', 'Comerio', 18.1393615, -66.1623751, ST_GeomFromText('POINT(18.1393615 -66.1623751)', 4326), 18.1295936, -66.1539975, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1612197', 'Quebrada Limón', 'Valley', 'Puerto Rico', 'PU', 'Ponce', 'Penuelas', 18.0446536, -66.6661043, ST_GeomFromText('POINT(18.0446536 -66.6661043)', 4326), 18.0706949, -66.6743219, '1981-02-13', '2017-03-06', NULL, NULL, NULL),
  ('1612198', 'Quebrada Limón', 'Valley', 'Puerto Rico', 'PU', 'Yauco', 'Yauco', 18.0875005, -66.8161544, ST_GeomFromText('POINT(18.0875005 -66.8161544)', 4326), 18.0958416, -66.8268641, '1981-02-13', '2017-03-10', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612199', 'Quebrada Limón', 'Valley', 'Puerto Rico', 'PU', 'Villalba', 'Orocovis', 18.1265385, -66.4533532, ST_GeomFromText('POINT(18.1265385 -66.4533532)', 4326), 18.1540768, -66.4413125, '1981-02-13', '2017-03-04', NULL, NULL, NULL),
  ('1612200', 'Quebrada Limones', 'Valley', 'Puerto Rico', 'PU', 'Guaynabo', 'Aguas Buenas', 18.3059233, -66.1035121, ST_GeomFromText('POINT(18.3059233 -66.1035121)', 4326), 18.2862162, -66.1088495, '1981-02-13', '2017-02-15', NULL, NULL, NULL),
  ('1612201', 'Quebrada Limones', 'Valley', 'Puerto Rico', 'PU', 'Trujillo Alto', 'Aguas Buenas', 18.3247596, -66.003642, ST_GeomFromText('POINT(18.3247596 -66.003642)', 4326), 18.3151569, -66.0098896, '1981-02-13', '2017-02-15', NULL, NULL, NULL),
  ('1612202', 'Quebrada Limones', 'Valley', 'Puerto Rico', 'PU', 'Carolina', 'Gurabo', 18.3458277, -65.9196722, ST_GeomFromText('POINT(18.3458277 -65.9196722)', 4326), 18.3392474, -65.9306169, '1981-02-13', '2017-03-01', NULL, NULL, NULL),
  ('1612203', 'Quebrada Limones', 'Valley', 'Puerto Rico', 'PU', 'Manatí', 'Ciales', 18.3747261, -66.4844677, ST_GeomFromText('POINT(18.3747261 -66.4844677)', 4326), 18.3764923, -66.4711875, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1612204', 'Quebrada Linguette', 'Valley', 'Puerto Rico', 'PU', 'Río Grande', 'El Yunque', 18.3292072, -65.766246, ST_GeomFromText('POINT(18.3292072 -65.766246)', 4326), 18.3229456, -65.7744154, '1981-02-13', '2017-02-28', NULL, NULL, NULL),
  ('1612205', 'Quebrada Llanada', 'Valley', 'Puerto Rico', 'PU', 'Ciales', 'Ciales', 18.2855058, -66.4899759, ST_GeomFromText('POINT(18.2855058 -66.4899759)', 4326), 18.2695418, -66.4926014, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612206', 'Quebrada Los Cabros', 'Valley', 'Puerto Rico', 'PU', 'Morovis', 'Ciales', 18.2707152, -66.4235157, ST_GeomFromText('POINT(18.2707152 -66.4235157)', 4326), 18.2486444, -66.4219375, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612207', 'Quebrada Los Chorros', 'Valley', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.0788041, -67.129182, ST_GeomFromText('POINT(18.0788041 -67.129182)', 4326), 18.0705922, -67.1230626, '1981-02-13', '2017-03-07', NULL, NULL, NULL),
  ('1612208', 'Quebrada Los Guanos', 'Valley', 'Puerto Rico', 'PU', 'San Juan', 'Aguas Buenas', 18.3585627, -66.0649935, ST_GeomFromText('POINT(18.3585627 -66.0649935)', 4326), 18.3556196, -66.0453549, '1981-02-13', '2017-02-23', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612209', 'Quebrada Los Morones', 'Valley', 'Puerto Rico', 'PU', 'Moca', 'Central La Plata', 18.3598943, -67.0890984, ST_GeomFromText('POINT(18.3598943 -67.0890984)', 4326), 18.3352915, -67.067945, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612210', 'Quebrada Los Muertos', 'Valley', 'Puerto Rico', 'PU', 'Lares', 'San Sebastian', 18.307877, -66.8875275, ST_GeomFromText('POINT(18.307877 -66.8875275)', 4326), 18.2965177, -66.8872388, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1612211', 'Quebrada Los Quiñones', 'Valley', 'Puerto Rico', 'PU', 'Ciales', 'Ciales', 18.3554082, -66.4742647, ST_GeomFromText('POINT(18.3554082 -66.4742647)', 4326), 18.3578815, -66.4649758, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612212', 'Quebrada Los Ramos', 'Valley', 'Puerto Rico', 'PU', 'Rincón', 'Rincon OE W', 18.3323376, -67.2505, ST_GeomFromText('POINT(18.3323376 -67.2505)', 4326), 18.3311054, -67.2226961, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612213', 'Quebrada Los Romanes', 'Valley', 'Puerto Rico', 'PU', 'Moca', 'Central La Plata', 18.3646949, -67.0840442, ST_GeomFromText('POINT(18.3646949 -67.0840442)', 4326), 18.3754157, -67.0793661, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612214', 'Quebrada Los Saltos', 'Valley', 'Puerto Rico', 'PU', 'Orocovis', 'Orocovis', 18.2273604, -66.3920668, ST_GeomFromText('POINT(18.2273604 -66.3920668)', 4326), 18.2013016, -66.403863, '1981-02-13', '2017-03-04', NULL, NULL, NULL),
  ('1612215', 'Quebrada Los Santos', 'Valley', 'Puerto Rico', 'PU', 'Canóvanas', 'El Yunque', 18.2622539, -65.8683751, ST_GeomFromText('POINT(18.2622539 -65.8683751)', 4326), 18.2756562, -65.8522257, '1981-02-13', '2017-02-28', NULL, NULL, NULL),
  ('1612216', 'Quebrada Los Terrores', 'Valley', 'Puerto Rico', 'PU', 'Manatí', 'Manati', 18.3843699, -66.4949681, ST_GeomFromText('POINT(18.3843699 -66.4949681)', 4326), 18.3741924, -66.5041228, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612217', 'Quebrada Los Verracos', 'Valley', 'Puerto Rico', 'PU', 'Las Marías', 'Central La Plata', 18.2660155, -67.000257, ST_GeomFromText('POINT(18.2660155 -67.000257)', 4326), 18.2595521, -66.9924914, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1612218', 'Quebrada Maga', 'Valley', 'Puerto Rico', 'PU', 'Mayagüez', 'Mayaguez', 18.1541975, -67.1501428, ST_GeomFromText('POINT(18.1541975 -67.1501428)', 4326), 18.1582886, -67.1157616, '1981-02-13', '2017-03-03', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612219', 'Quebrada Magueyes', 'Valley', 'Puerto Rico', 'PU', 'Bayamón', 'Naranjito', 18.3246305, -66.1534192, ST_GeomFromText('POINT(18.3246305 -66.1534192)', 4326), 18.3271178, -66.173601, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612220', 'Quebrada Maizales', 'Valley', 'Puerto Rico', 'PU', 'Naguabo', 'Humacao', 18.2088368, -65.7619154, ST_GeomFromText('POINT(18.2088368 -65.7619154)', 4326), 18.2531382, -65.7645949, '1981-02-13', '2017-03-01', NULL, NULL, NULL),
  ('1612221', 'Quebrada Majagual', 'Valley', 'Puerto Rico', 'PU', 'Arroyo', 'Patillas', 18.0160262, -66.0554816, ST_GeomFromText('POINT(18.0160262 -66.0554816)', 4326), 18.0343964, -66.0488156, '1981-02-13', '2017-03-06', NULL, NULL, NULL),
  ('1612222', 'Quebrada Majina', 'Valley', 'Puerto Rico', 'PU', 'Guánica', 'Sabana Grande', 18.0241064, -66.9377959, ST_GeomFromText('POINT(18.0241064 -66.9377959)', 4326), 18.0524252, -66.9364579, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612223', 'Quebrada Mambiche', 'Valley', 'Puerto Rico', 'PU', 'Humacao', 'Humacao', 18.1824198, -65.8115079, ST_GeomFromText('POINT(18.1824198 -65.8115079)', 4326), 18.1968165, -65.8235796, '1981-02-13', '2017-03-01', NULL, NULL, NULL),
  ('1612224', 'Quebrada Mamey', 'Valley', 'Puerto Rico', 'PU', 'Lajas', 'San German', 18.0350799, -67.043845, ST_GeomFromText('POINT(18.0350799 -67.043845)', 4326), 18.0550448, -67.0425293, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1612225', 'Quebrada Mamey', 'Valley', 'Puerto Rico', 'PU', 'Patillas', 'Guayama', 17.9915521, -66.0081533, ST_GeomFromText('POINT(17.9915521 -66.0081533)', 4326), 18.0264535, -65.9944256, '1981-02-13', '2017-03-01', NULL, NULL, NULL),
  ('1612226', 'Quebrada Mamey Chiquita', 'Valley', 'Puerto Rico', 'PU', 'Patillas', 'Patillas', 18.0104691, -66.0074411, ST_GeomFromText('POINT(18.0104691 -66.0074411)', 4326), 18.0237256, -66.0026371, '1981-02-13', '2017-03-06', NULL, NULL, NULL),
  ('1612227', 'Quebrada Manglillo', 'Valley', 'Puerto Rico', 'PU', 'Patillas', 'Punta Tuna', 17.9756624, -65.9326618, ST_GeomFromText('POINT(17.9756624 -65.9326618)', 4326), 17.9845241, -65.9341399, '1981-02-13', '2017-03-07', NULL, NULL, NULL),
  ('1612228', 'Quebrada Mango Prieto', 'Valley', 'Puerto Rico', 'PU', 'Yauco', 'Sabana Grande', 18.050474, -66.884547, ST_GeomFromText('POINT(18.050474 -66.884547)', 4326), 18.0532175, -66.8956011, '1981-02-13', '2017-03-08', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612229', 'Quebrada Manicaboa', 'Valley', 'Puerto Rico', 'PU', 'Ciales', 'Ciales', 18.2924707, -66.4647068, ST_GeomFromText('POINT(18.2924707 -66.4647068)', 4326), 18.2807317, -66.4731772, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612230', 'Quebrada Maolaya', 'Valley', 'Puerto Rico', 'PU', 'Villalba', 'Orocovis', 18.1346357, -66.4968968, ST_GeomFromText('POINT(18.1346357 -66.4968968)', 4326), 18.1331568, -66.5097726, '1981-02-13', '2017-03-04', NULL, NULL, NULL),
  ('1612231', 'Quebrada Máquina', 'Valley', 'Puerto Rico', 'PU', 'Ciales', 'Ciales', 18.3254321, -66.4854286, ST_GeomFromText('POINT(18.3254321 -66.4854286)', 4326), 18.3071262, -66.4786713, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612232', 'Quebrada Maracal', 'Valley', 'Puerto Rico', 'PU', 'Caguas', 'Caguas', 18.1416794, -66.0510462, ST_GeomFromText('POINT(18.1416794 -66.0510462)', 4326), 18.1424745, -66.0290964, '1981-02-13', '2017-02-22', NULL, NULL, NULL),
  ('1612233', 'Quebrada Maracuto', 'Valley', 'Puerto Rico', 'PU', 'Carolina', 'Gurabo', 18.3732957, -65.9564008, ST_GeomFromText('POINT(18.3732957 -65.9564008)', 4326), 18.2766007, -65.9281205, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1612234', 'Quebrada Maresúa', 'Valley', 'Puerto Rico', 'PU', 'San Germán', 'San German', 18.0825167, -67.0603032, ST_GeomFromText('POINT(18.0825167 -67.0603032)', 4326), 18.0644182, -67.0434245, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1612235', 'Quebrada Margarita', 'Valley', 'Puerto Rico', 'PU', 'Quebradillas', 'Quebradillas', 18.3961992, -66.9125282, ST_GeomFromText('POINT(18.3961992 -66.9125282)', 4326), 18.3826754, -66.901024, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612236', 'Quebrada Margarita', 'Valley', 'Puerto Rico', 'PU', 'Guaynabo', 'San Juan', 18.4073997, -66.1044442, ST_GeomFromText('POINT(18.4073997 -66.1044442)', 4326), 18.3940254, -66.1079928, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1612237', 'Quebrada Mariana', 'Valley', 'Puerto Rico', 'PU', 'Humacao', 'Humacao', 18.144913, -65.8272795, ST_GeomFromText('POINT(18.144913 -65.8272795)', 4326), 18.1098092, -65.8656615, '1981-02-13', '2017-03-01', NULL, NULL, NULL),
  ('1612238', 'Quebrada Martina', 'Valley', 'Puerto Rico', 'PU', 'Sabana Grande', 'Sabana Grande', 18.0437359, -66.9200739, ST_GeomFromText('POINT(18.0437359 -66.9200739)', 4326), 18.0495849, -66.9211579, '1981-02-13', '2017-03-08', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612239', 'Quebrada Mata Redonda', 'Valley', 'Puerto Rico', 'PU', 'Fajardo', 'Fajardo', 18.3207805, -65.6385308, ST_GeomFromText('POINT(18.3207805 -65.6385308)', 4326), 18.2906037, -65.6622638, '1981-02-13', '2017-02-28', NULL, NULL, NULL),
  ('1612240', 'Quebrada Matadero', 'Valley', 'Puerto Rico', 'PU', 'Maricao', 'Rosario', 18.1911375, -67.0124887, ST_GeomFromText('POINT(18.1911375 -67.0124887)', 4326), 18.2058556, -66.9911479, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612241', 'Quebrada Méjico', 'Valley', 'Puerto Rico', 'PU', 'Toa Alta', 'Bayamon', 18.3946719, -66.2445424, ST_GeomFromText('POINT(18.3946719 -66.2445424)', 4326), 18.4015249, -66.2310823, '2000-01-01', '2017-02-17', NULL, NULL, NULL),
  ('1612242', 'Quebrada Melanía', 'Valley', 'Puerto Rico', 'PU', 'Guayama', 'Central Aguirre', 17.9412072, -66.1676164, ST_GeomFromText('POINT(17.9412072 -66.1676164)', 4326), 17.9793868, -66.1448891, '1981-02-13', '2017-02-22', NULL, NULL, NULL),
  ('1612243', 'Quebrada Mendoza', 'Valley', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.1039975, -67.1445594, ST_GeomFromText('POINT(18.1039975 -67.1445594)', 4326), 18.0882957, -67.1483909, '1981-02-13', '2017-03-07', NULL, NULL, NULL),
  ('1612244', 'Quebrada Minas', 'Valley', 'Puerto Rico', 'PU', 'Morovis', 'Ciales', 18.2900176, -66.426934, ST_GeomFromText('POINT(18.2900176 -66.426934)', 4326), 18.2853313, -66.4344404, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612245', 'Quebrada Minguillo', 'Valley', 'Puerto Rico', 'PU', 'Ciales', 'Ciales', 18.2956909, -66.4705175, ST_GeomFromText('POINT(18.2956909 -66.4705175)', 4326), 18.3059251, -66.4758045, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612246', 'Quebrada Mohosa', 'Valley', 'Puerto Rico', 'PU', 'Hormigueros', 'Rosario', 18.129824, -67.1218481, ST_GeomFromText('POINT(18.129824 -67.1218481)', 4326), 18.1478182, -67.1026534, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612247', 'Quebrada Mondongo', 'Valley', 'Puerto Rico', 'PU', 'Lajas', 'San German', 18.0294054, -67.0544432, ST_GeomFromText('POINT(18.0294054 -67.0544432)', 4326), 18.0480782, -67.0651064, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1612248', 'Quebrada Mongil', 'Valley', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.3909214, -66.0662253, ST_GeomFromText('POINT(18.3909214 -66.0662253)', 4326), 18.3774216, -66.0667034, '1981-02-13', '2017-03-10', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612249', 'Quebrada Montaña', 'Valley', 'Puerto Rico', 'PU', 'Yauco', 'Monte Guilarte', 18.1412292, -66.8185319, ST_GeomFromText('POINT(18.1412292 -66.8185319)', 4326), 18.1307029, -66.810477, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612250', 'Quebrada Monte Llano', 'Valley', 'Puerto Rico', 'PU', 'Vega Baja', 'Ciales', 18.3447935, -66.3858998, ST_GeomFromText('POINT(18.3447935 -66.3858998)', 4326), 18.3190517, -66.3928963, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612251', 'Quebrada Montería', 'Valley', 'Puerto Rico', 'PU', 'Coamo', 'Coamo', 18.0856066, -66.350639, ST_GeomFromText('POINT(18.0856066 -66.350639)', 4326), 18.1411884, -66.3396126, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1612252', 'Quebrada Montones', 'Valley', 'Puerto Rico', 'PU', 'Las Piedras', 'Juncos', 18.1744255, -65.8957734, ST_GeomFromText('POINT(18.1744255 -65.8957734)', 4326), 18.1491765, -65.8872244, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1612253', 'Quebrada Moralón', 'Valley', 'Puerto Rico', 'PU', 'San Sebastián', 'San Sebastian', 18.328622, -66.9830826, ST_GeomFromText('POINT(18.328622 -66.9830826)', 4326), 18.3125014, -66.971465, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1612254', 'Quebrada Morena', 'Valley', 'Puerto Rico', 'PU', 'Caguas', 'Caguas', 18.1387851, -66.0380793, ST_GeomFromText('POINT(18.1387851 -66.0380793)', 4326), 18.1169819, -66.0416588, '1981-02-13', '2017-02-22', NULL, NULL, NULL),
  ('1612255', 'Quebrada Morillo', 'Valley', 'Puerto Rico', 'PU', 'Cayey', 'Comerio', 18.129332, -66.1676393, ST_GeomFromText('POINT(18.129332 -66.1676393)', 4326), 18.1253201, -66.1623187, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1612256', 'Quebrada Motete', 'Valley', 'Puerto Rico', 'PU', 'Guayanilla', 'Yauco', 18.0644703, -66.781494, ST_GeomFromText('POINT(18.0644703 -66.781494)', 4326), 18.0957129, -66.7701158, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1612257', 'Quebrada Muda', 'Valley', 'Puerto Rico', 'PU', 'Ciales', 'Florida', 18.2702088, -66.5015242, ST_GeomFromText('POINT(18.2702088 -66.5015242)', 4326), 18.2537336, -66.4765527, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612258', 'Quebrada Mueresolo', 'Valley', 'Puerto Rico', 'PU', 'Vega Baja', 'Manati', 18.3978051, -66.3768658, ST_GeomFromText('POINT(18.3978051 -66.3768658)', 4326), 18.3799739, -66.3754713, '1981-02-13', '2017-03-03', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612259', 'Quebrada Mula', 'Valley', 'Puerto Rico', 'PU', 'Naranjito', 'Naranjito', 18.2767344, -66.2067062, ST_GeomFromText('POINT(18.2767344 -66.2067062)', 4326), 18.275126, -66.2352859, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612260', 'Quebrada Mulas', 'Valley', 'Puerto Rico', 'PU', 'Patillas', 'Patillas', 18.0441961, -66.0375916, ST_GeomFromText('POINT(18.0441961 -66.0375916)', 4326), 18.0540033, -66.029672, '1981-02-13', '2017-03-06', NULL, NULL, NULL),
  ('1612261', 'Quebrada Muro', 'Valley', 'Puerto Rico', 'PU', 'Jayuya', 'Florida', 18.2631194, -66.5574799, ST_GeomFromText('POINT(18.2631194 -66.5574799)', 4326), 18.2566433, -66.5455314, '1981-02-13', '2017-02-28', NULL, NULL, NULL),
  ('1612262', 'Quebrada Naranjito', 'Valley', 'Puerto Rico', 'PU', 'Caguas', 'Caguas', 18.1800126, -66.0440031, ST_GeomFromText('POINT(18.1800126 -66.0440031)', 4326), 18.1750427, -66.0191454, '1981-02-13', '2017-02-22', NULL, NULL, NULL),
  ('1612263', 'Quebrada Naranjo', 'Valley', 'Puerto Rico', 'PU', 'San Germán', 'Rosario', 18.1477344, -67.0532346, ST_GeomFromText('POINT(18.1477344 -67.0532346)', 4326), 18.1602304, -67.0322654, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612264', 'Quebrada Naranjo', 'Valley', 'Puerto Rico', 'PU', 'Comerío', 'Comerio', 18.2297804, -66.2019778, ST_GeomFromText('POINT(18.2297804 -66.2019778)', 4326), 18.2250396, -66.1774396, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1612265', 'Quebrada Naranjo', 'Valley', 'Puerto Rico', 'PU', 'Trujillo Alto', 'Gurabo', 18.335828, -65.9865619, ST_GeomFromText('POINT(18.335828 -65.9865619)', 4326), 18.3424382, -65.9783349, '1981-02-13', '2017-03-01', NULL, NULL, NULL),
  ('1612266', 'Quebrada Naranjo', 'Valley', 'Puerto Rico', 'PU', 'Bayamón', 'Naranjito', 18.2967626, -66.2074212, ST_GeomFromText('POINT(18.2967626 -66.2074212)', 4326), 18.2818424, -66.1960658, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612267', 'Quebrada Negrito', 'Valley', 'Puerto Rico', 'PU', 'Lares', 'San Sebastian', 18.259205, -66.9008212, ST_GeomFromText('POINT(18.259205 -66.9008212)', 4326), 18.2689137, -66.8967394, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1612268', 'Quebrada Noriega', 'Valley', 'Puerto Rico', 'PU', 'Añasco', 'Central La Plata', 18.2702804, -67.0774775, ST_GeomFromText('POINT(18.2702804 -67.0774775)', 4326), 18.2602344, -67.0592171, '1981-02-13', '2017-02-23', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612269', 'Quebrada Novillo', 'Valley', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.1974133, -66.7828373, ST_GeomFromText('POINT(18.1974133 -66.7828373)', 4326), 18.2063499, -66.7734208, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612270', 'Quebrada Novillo', 'Valley', 'Puerto Rico', 'PU', 'Orocovis', 'Ciales', 18.2519085, -66.4941426, ST_GeomFromText('POINT(18.2519085 -66.4941426)', 4326), 18.250366, -66.4772979, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612271', 'Quebrada Obispo', 'Valley', 'Puerto Rico', 'PU', 'Humacao', 'Humacao', 18.1611705, -65.8508546, ST_GeomFromText('POINT(18.1611705 -65.8508546)', 4326), 18.1736771, -65.8487356, '1981-02-13', '2023-07-22', NULL, NULL, NULL),
  ('1612272', 'Quebrada Obispo', 'Valley', 'Puerto Rico', 'PU', 'Coamo', 'Coamo', 18.0822102, -66.2923705, ST_GeomFromText('POINT(18.0822102 -66.2923705)', 4326), 18.1181701, -66.2931547, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1612273', 'Quebrada Olivar', 'Valley', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.1741084, -66.7995987, ST_GeomFromText('POINT(18.1741084 -66.7995987)', 4326), 18.1658713, -66.7963279, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612274', 'Quebrada Ortíz', 'Valley', 'Puerto Rico', 'PU', 'Toa Alta', 'Naranjito', 18.3334746, -66.2210178, ST_GeomFromText('POINT(18.3334746 -66.2210178)', 4326), 18.3436606, -66.219836, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612275', 'Quebrada Padilla', 'Valley', 'Puerto Rico', 'PU', 'Barranquitas', 'Barranquitas', 18.1878504, -66.3047345, ST_GeomFromText('POINT(18.1878504 -66.3047345)', 4326), 18.2018171, -66.3010534, '1981-02-13', '2017-02-15', NULL, NULL, NULL),
  ('1612276', 'Quebrada Los Pajaritos', 'Valley', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.0696091, -67.1835778, ST_GeomFromText('POINT(18.0696091 -67.1835778)', 4326), 18.0659893, -67.1578776, '1981-02-13', '2017-03-14', NULL, NULL, NULL),
  ('1612277', 'Quebrada Palenque', 'Valley', 'Puerto Rico', 'PU', 'Patillas', 'Punta Tuna', 17.978319, -65.9936471, ST_GeomFromText('POINT(17.978319 -65.9936471)', 4326), 17.9892879, -65.9870937, '1981-02-13', '2017-03-07', NULL, NULL, NULL),
  ('1612278', 'Quebrada Palma', 'Valley', 'Puerto Rico', 'PU', 'Naguabo', 'Naguabo', 18.2023185, -65.6876555, ST_GeomFromText('POINT(18.2023185 -65.6876555)', 4326), 18.2567409, -65.7033706, '1981-02-13', '2017-03-03', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612279', 'Quebrada Palma', 'Valley', 'Puerto Rico', 'PU', 'Utuado', 'Bayaney', 18.2610913, -66.7796935, ST_GeomFromText('POINT(18.2610913 -66.7796935)', 4326), 18.2431225, -66.7736074, '1981-02-13', '2017-02-17', NULL, NULL, NULL),
  ('1612280', 'Quebrada Palmar', 'Valley', 'Puerto Rico', 'PU', 'Orocovis', 'Jayuya', 18.2304841, -66.5073872, ST_GeomFromText('POINT(18.2304841 -66.5073872)', 4326), 18.2222809, -66.5017588, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1612281', 'Quebrada Palmarejo', 'Valley', 'Puerto Rico', 'PU', 'Arroyo', 'Patillas', 18.0160039, -66.0553989, ST_GeomFromText('POINT(18.0160039 -66.0553989)', 4326), 18.0322836, -66.0642913, '1981-02-13', '2025-02-12', NULL, NULL, NULL),
  ('1612282', 'Quebrada Palmas Bajas', 'Valley', 'Puerto Rico', 'PU', 'Guayama', 'Patillas', 18.0089571, -66.1160903, ST_GeomFromText('POINT(18.0089571 -66.1160903)', 4326), 18.0375475, -66.1336752, '1981-02-13', '2017-03-06', NULL, NULL, NULL),
  ('1612283', 'Quebrada Pasto', 'Valley', 'Puerto Rico', 'PU', 'Utuado', 'Bayaney', 18.3109543, -66.761834, ST_GeomFromText('POINT(18.3109543 -66.761834)', 4326), 18.2832029, -66.7530448, '1981-02-13', '2017-02-17', NULL, NULL, NULL),
  ('1612284', 'Quebrada Pasto Colón', 'Valley', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.2248518, -66.7830429, ST_GeomFromText('POINT(18.2248518 -66.7830429)', 4326), 18.2144626, -66.7804942, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612285', 'Quebrada Pasto Viejo', 'Valley', 'Puerto Rico', 'PU', 'Cayey', 'Cayey', 18.0796786, -66.2155036, ST_GeomFromText('POINT(18.0796786 -66.2155036)', 4326), 18.1037792, -66.2204547, '1981-02-13', '2017-02-22', NULL, NULL, NULL),
  ('1612286', 'Quebrada Pastrana', 'Valley', 'Puerto Rico', 'PU', 'Carolina', 'Gurabo', 18.3633152, -65.9583312, ST_GeomFromText('POINT(18.3633152 -65.9583312)', 4326), 18.3187368, -65.9515965, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1612287', 'Quebrada Patos', 'Valley', 'Puerto Rico', 'PU', 'Naranjito', 'Naranjito', 18.2989154, -66.2281513, ST_GeomFromText('POINT(18.2989154 -66.2281513)', 4326), 18.286514, -66.2308365, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612288', 'Quebrada Peces', 'Valley', 'Puerto Rico', 'PU', 'Sabana Grande', 'Sabana Grande', 18.0567822, -66.9035574, ST_GeomFromText('POINT(18.0567822 -66.9035574)', 4326), 18.0781415, -66.9131216, '1981-02-13', '2017-03-09', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612289', 'Quebrada Pedro Ávila', 'Valley', 'Puerto Rico', 'PU', 'Cayey', 'Cayey', 18.1091354, -66.1905749, ST_GeomFromText('POINT(18.1091354 -66.1905749)', 4326), 18.0922199, -66.2049785, '1981-02-13', '2017-02-22', NULL, NULL, NULL),
  ('1612290', 'Quebrada Pepe Lugo', 'Valley', 'Puerto Rico', 'PU', 'Sabana Grande', 'Sabana Grande', 18.0837565, -66.979302, ST_GeomFromText('POINT(18.0837565 -66.979302)', 4326), 18.0937802, -66.97322, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1612291', 'Quebrada Pepinera', 'Valley', 'Puerto Rico', 'PU', 'Las Marías', 'Central La Plata', 18.2805482, -67.0322427, ST_GeomFromText('POINT(18.2805482 -67.0322427)', 4326), 18.2636467, -67.036428, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612292', 'Quebrada Perchas', 'Valley', 'Puerto Rico', 'PU', 'Morovis', 'Ciales', 18.2945497, -66.410588, ST_GeomFromText('POINT(18.2945497 -66.410588)', 4326), 18.2734129, -66.4152515, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612293', 'Quebrada Piedras', 'Valley', 'Puerto Rico', 'PU', 'San Germán', 'San German', 18.1233511, -67.0139731, ST_GeomFromText('POINT(18.1233511 -67.0139731)', 4326), 18.148761, -66.9912063, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612294', 'Quebrada Pileta', 'Valley', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.1042059, -67.1417091, ST_GeomFromText('POINT(18.1042059 -67.1417091)', 4326), 18.0895653, -67.144988, '1981-02-13', '2017-03-07', NULL, NULL, NULL),
  ('1612295', 'Quebrada Piletas', 'Valley', 'Puerto Rico', 'PU', 'Rincón', 'Rincon OE W', 18.3566763, -67.2691737, ST_GeomFromText('POINT(18.3566763 -67.2691737)', 4326), 18.355254, -67.2456376, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612296', 'Quebrada Piña', 'Valley', 'Puerto Rico', 'PU', 'Comerío', 'Comerio', 18.2153509, -66.2268615, ST_GeomFromText('POINT(18.2153509 -66.2268615)', 4326), 18.1752882, -66.2160529, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1612297', 'Quebrada Piña', 'Valley', 'Puerto Rico', 'PU', 'Toa Alta', 'Naranjito', 18.372067, -66.2364779, ST_GeomFromText('POINT(18.372067 -66.2364779)', 4326), 18.3516217, -66.2201391, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612298', 'Quebrada Placeres', 'Valley', 'Puerto Rico', 'PU', 'Aguada', 'Aguadilla', 18.3930823, -67.1805645, ST_GeomFromText('POINT(18.3930823 -67.1805645)', 4326), 18.3862744, -67.1752131, '1981-02-13', '2017-02-14', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612299', 'Quebrada Plantina', 'Valley', 'Puerto Rico', 'PU', 'Lajas', 'San German', 18.0291468, -67.0741339, ST_GeomFromText('POINT(18.0291468 -67.0741339)', 4326), 18.0540461, -67.0724832, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1612300', 'Quebrada Pozas', 'Valley', 'Puerto Rico', 'PU', 'Ciales', 'Florida', 18.2623804, -66.5035762, ST_GeomFromText('POINT(18.2623804 -66.5035762)', 4326), 18.257613, -66.4923805, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612301', 'Quebrada Prieta', 'Valley', 'Puerto Rico', 'PU', 'Bayamón', 'Naranjito', 18.2782292, -66.1680876, ST_GeomFromText('POINT(18.2782292 -66.1680876)', 4326), 18.2698951, -66.1733805, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612302', 'Quebrada Prieta', 'Valley', 'Puerto Rico', 'PU', 'San Lorenzo', 'Juncos', 18.1595272, -65.9828567, ST_GeomFromText('POINT(18.1595272 -65.9828567)', 4326), 18.1599815, -66.0139343, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1612303', 'Quebrada Prieta', 'Valley', 'Puerto Rico', 'PU', 'Cidra', 'Comerio', 18.1947338, -66.137479, ST_GeomFromText('POINT(18.1947338 -66.137479)', 4326), 18.2070775, -66.1072929, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1612304', 'Quebrada Prieta', 'Valley', 'Puerto Rico', 'PU', 'Comerío', 'Comerio', 18.2038496, -66.240265, ST_GeomFromText('POINT(18.2038496 -66.240265)', 4326), 18.1944804, -66.2673415, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1612305', 'Quebrada Pueblo Viejo', 'Valley', 'Puerto Rico', 'PU', 'Cidra', 'Comerio', 18.2203465, -66.1593707, ST_GeomFromText('POINT(18.2203465 -66.1593707)', 4326), 18.222602, -66.1693042, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1612306', 'Quebrada Puente', 'Valley', 'Puerto Rico', 'PU', 'Ciales', 'Ciales', 18.3289804, -66.479707, ST_GeomFromText('POINT(18.3289804 -66.479707)', 4326), 18.3164458, -66.4775414, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612307', 'Quebrada Pugnado', 'Valley', 'Puerto Rico', 'PU', 'Manatí', 'Ciales', 18.3729782, -66.4828279, ST_GeomFromText('POINT(18.3729782 -66.4828279)', 4326), 18.373651, -66.4703293, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612308', 'Quebrada Pulida', 'Valley', 'Puerto Rico', 'PU', 'Mayagüez', 'Mayaguez', 18.1732991, -67.1506845, ST_GeomFromText('POINT(18.1732991 -67.1506845)', 4326), 18.1719568, -67.135407, '1981-02-13', '2017-03-03', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612309', 'Quebrada Quilan', 'Valley', 'Puerto Rico', 'PU', 'Toa Alta', 'Bayamon', 18.3856172, -66.2302293, ST_GeomFromText('POINT(18.3856172 -66.2302293)', 4326), 18.3933045, -66.2284821, '1981-02-13', '2017-02-17', NULL, NULL, NULL),
  ('1612310', 'Quebrada Quintana', 'Valley', 'Puerto Rico', 'PU', 'San Sebastián', 'Central La Plata', 18.3106467, -67.007531, ST_GeomFromText('POINT(18.3106467 -67.007531)', 4326), 18.3036278, -67.0225843, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612311', 'Quebrada Quintero', 'Valley', 'Puerto Rico', 'PU', 'Ciales', 'Ciales', 18.2685747, -66.4593142, ST_GeomFromText('POINT(18.2685747 -66.4593142)', 4326), 18.2662111, -66.4513568, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612312', 'Quebrada Ratones', 'Valley', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.174255, -66.7638185, ST_GeomFromText('POINT(18.174255 -66.7638185)', 4326), 18.1675219, -66.7614382, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612313', 'Quebrada Riachuelo', 'Valley', 'Puerto Rico', 'PU', 'Corozal', 'Corozal', 18.2717464, -66.353196, ST_GeomFromText('POINT(18.2717464 -66.353196)', 4326), 18.2588857, -66.3247083, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1612314', 'Quebrada Riachuelo', 'Valley', 'Puerto Rico', 'PU', 'Morovis', 'Ciales', 18.3040464, -66.4378995, ST_GeomFromText('POINT(18.3040464 -66.4378995)', 4326), 18.2685905, -66.4427532, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612315', 'Quebrada Riachuelo', 'Valley', 'Puerto Rico', 'PU', 'Ciales', 'Ciales', 18.2746065, -66.4629293, ST_GeomFromText('POINT(18.2746065 -66.4629293)', 4326), 18.2568154, -66.4749625, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612316', 'Quebrada Rincón', 'Valley', 'Puerto Rico', 'PU', 'Fajardo', 'Fajardo', 18.2859371, -65.6946733, ST_GeomFromText('POINT(18.2859371 -65.6946733)', 4326), 18.2745511, -65.6792771, '1981-02-13', '2017-02-28', NULL, NULL, NULL),
  ('1612317', 'Quebrada Rivera', 'Valley', 'Puerto Rico', 'PU', 'Naranjito', 'Naranjito', 18.3010727, -66.2472843, ST_GeomFromText('POINT(18.3010727 -66.2472843)', 4326), 18.2905533, -66.2435833, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612318', 'Quebrada Rivera', 'Valley', 'Puerto Rico', 'PU', 'Bayamón', 'Naranjito', 18.3476528, -66.1676971, ST_GeomFromText('POINT(18.3476528 -66.1676971)', 4326), 18.3318445, -66.1689043, '1981-02-13', '2017-03-03', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612319', 'Quebrada Rodadero', 'Valley', 'Puerto Rico', 'PU', 'Yauco', 'Yauco', 18.087594, -66.8159789, ST_GeomFromText('POINT(18.087594 -66.8159789)', 4326), 18.0996263, -66.8118569, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1612320', 'Quebrada Rodeo', 'Valley', 'Puerto Rico', 'PU', 'San Germán', 'San German', 18.0931977, -67.0388515, ST_GeomFromText('POINT(18.0931977 -67.0388515)', 4326), 18.0873835, -67.0101176, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1612321', 'Quebrada Roncador', 'Valley', 'Puerto Rico', 'PU', 'Utuado', 'Utuado', 18.253708, -66.7351357, ST_GeomFromText('POINT(18.253708 -66.7351357)', 4326), 18.2659341, -66.7490636, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1612322', 'Quebrada Rosales', 'Valley', 'Puerto Rico', 'PU', 'Ponce', 'Jayuya', 18.1388259, -66.6122198, ST_GeomFromText('POINT(18.1388259 -66.6122198)', 4326), 18.1472966, -66.6235737, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1612323', 'Quebrada Sábalos', 'Valley', 'Puerto Rico', 'PU', 'Mayagüez', 'Mayaguez', 18.1841293, -67.1612296, ST_GeomFromText('POINT(18.1841293 -67.1612296)', 4326), 18.1775616, -67.1491905, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612324', 'Quebrada Sabana Llana', 'Valley', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.3942919, -66.0052006, ST_GeomFromText('POINT(18.3942919 -66.0052006)', 4326), 18.3832022, -66.0243734, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1612325', 'Quebrada Salada', 'Valley', 'Puerto Rico', 'PU', 'Guayama', 'Guayama', 17.9662294, -66.0700772, ST_GeomFromText('POINT(17.9662294 -66.0700772)', 4326), 17.9828982, -66.0725118, '1981-02-13', '2017-03-01', NULL, NULL, NULL),
  ('1612326', 'Quebrada Salada', 'Valley', 'Puerto Rico', 'PU', 'San Sebastián', 'San Sebastian', 18.3025671, -66.9222288, ST_GeomFromText('POINT(18.3025671 -66.9222288)', 4326), 18.3030934, -66.9116297, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1612327', 'Quebrada Salada', 'Valley', 'Puerto Rico', 'PU', 'San Sebastián', 'Central La Plata', 18.3471928, -67.0265022, ST_GeomFromText('POINT(18.3471928 -67.0265022)', 4326), 18.3670392, -67.0274463, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612328', 'Quebrada Saliente', 'Valley', 'Puerto Rico', 'PU', 'Ciales', 'Ciales', 18.3105907, -66.4634551, ST_GeomFromText('POINT(18.3105907 -66.4634551)', 4326), 18.3123979, -66.4693217, '1981-02-13', '2017-02-23', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612329', 'Quebrada Salsa', 'Valley', 'Puerto Rico', 'PU', 'Coamo', 'Coamo', 18.1023964, -66.3445272, ST_GeomFromText('POINT(18.1023964 -66.3445272)', 4326), 18.1211892, -66.3072887, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1612330', 'Quebrada Salvatierra', 'Valley', 'Puerto Rico', 'PU', 'San Lorenzo', 'Juncos', 18.1718772, -65.9798486, ST_GeomFromText('POINT(18.1718772 -65.9798486)', 4326), 18.1625975, -66.0185613, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1612331', 'Quebrada San Antón', 'Valley', 'Puerto Rico', 'PU', 'Carolina', 'San Juan', 18.4174718, -66.012244, ST_GeomFromText('POINT(18.4174718 -66.012244)', 4326), 18.3949469, -66.0051495, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1612332', 'Quebrada San Francisco', 'Valley', 'Puerto Rico', 'PU', 'Naranjito', 'Naranjito', 18.2988636, -66.2267245, ST_GeomFromText('POINT(18.2988636 -66.2267245)', 4326), 18.2882505, -66.2206069, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612333', 'Quebrada San Juan', 'Valley', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.2242715, -66.7789923, ST_GeomFromText('POINT(18.2242715 -66.7789923)', 4326), 18.2079343, -66.7729941, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612334', 'Quebrada San Pedro', 'Valley', 'Puerto Rico', 'PU', 'San Germán', 'San German', 18.1125279, -67.0502454, ST_GeomFromText('POINT(18.1125279 -67.0502454)', 4326), 18.119507, -67.034327, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1612335', 'Quebrada Sanjelo', 'Valley', 'Puerto Rico', 'PU', 'Aguas Buenas', 'Caguas', 18.2455484, -66.1101579, ST_GeomFromText('POINT(18.2455484 -66.1101579)', 4326), 18.2328576, -66.1238561, '1981-02-13', '2018-03-24', NULL, NULL, NULL),
  ('1612336', 'Quebrada Santa', 'Valley', 'Puerto Rico', 'PU', 'Juncos', 'Juncos', 18.2139016, -65.9260339, ST_GeomFromText('POINT(18.2139016 -65.9260339)', 4326), 18.1996034, -65.9312694, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1612337', 'Quebrada Santa Catalina', 'Valley', 'Puerto Rico', 'PU', 'Guaynabo', 'Bayamon', 18.423205, -66.1291678, ST_GeomFromText('POINT(18.423205 -66.1291678)', 4326), 18.4037447, -66.1243395, '1981-02-13', '2017-02-17', NULL, NULL, NULL),
  ('1612338', 'Quebrada Santa Olaya', 'Valley', 'Puerto Rico', 'PU', 'Bayamón', 'Naranjito', 18.3276421, -66.1424229, ST_GeomFromText('POINT(18.3276421 -66.1424229)', 4326), 18.3176595, -66.1671809, '1981-02-13', '2017-03-03', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612339', 'Quebrada Santo Domingo', 'Valley', 'Puerto Rico', 'PU', 'Cayey', 'Comerio', 18.1334279, -66.1686453, ST_GeomFromText('POINT(18.1334279 -66.1686453)', 4326), 18.0960858, -66.1594312, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1612340', 'Quebrada Sebastián', 'Valley', 'Puerto Rico', 'PU', 'Añasco', 'Rincon', 18.2971067, -67.1942553, ST_GeomFromText('POINT(18.2971067 -67.1942553)', 4326), 18.307053, -67.1933275, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612342', 'Quebrada Seca', 'Valley', 'Puerto Rico', 'PU', 'Arecibo', 'Camuy', 18.4826164, -66.763295, ST_GeomFromText('POINT(18.4826164 -66.763295)', 4326), 18.4675644, -66.7799066, '1981-02-13', '2017-02-22', NULL, NULL, NULL),
  ('1612343', 'Quebrada Solano', 'Valley', 'Puerto Rico', 'PU', 'Cidra', 'Comerio', 18.2055706, -66.1396113, ST_GeomFromText('POINT(18.2055706 -66.1396113)', 4326), 18.195409, -66.1643466, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1612344', 'Quebrada Sonadora', 'Valley', 'Puerto Rico', 'PU', 'Patillas', 'Patillas', 18.0639626, -66.0486856, ST_GeomFromText('POINT(18.0639626 -66.0486856)', 4326), 18.0803607, -66.0333256, '1981-02-13', '2017-03-06', NULL, NULL, NULL),
  ('1612345', 'Quebrada Sonadora', 'Valley', 'Puerto Rico', 'PU', 'Caguas', 'Caguas', 18.1778284, -66.0653828, ST_GeomFromText('POINT(18.1778284 -66.0653828)', 4326), 18.1520359, -66.069594, '1981-02-13', '2017-02-22', NULL, NULL, NULL),
  ('1612346', 'Quebrada Sonadora', 'Valley', 'Puerto Rico', 'PU', 'Naguabo', 'Humacao', 18.2161026, -65.7962369, ST_GeomFromText('POINT(18.2161026 -65.7962369)', 4326), 18.2443637, -65.8158867, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1612347', 'Quebrada Sonadora', 'Valley', 'Puerto Rico', 'PU', 'Río Grande', 'El Yunque', 18.3270465, -65.8230187, ST_GeomFromText('POINT(18.3270465 -65.8230187)', 4326), 18.3124422, -65.7971387, '1981-02-13', '2017-02-28', NULL, NULL, NULL),
  ('1612348', 'Quebrada Sonadora', 'Valley', 'Puerto Rico', 'PU', 'Guaynabo', 'Naranjito', 18.2978248, -66.1379831, ST_GeomFromText('POINT(18.2978248 -66.1379831)', 4326), 18.2697226, -66.0979414, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612349', 'Quebrada Sonadora', 'Valley', 'Puerto Rico', 'PU', 'Ceiba', 'Fajardo', 18.2655098, -65.7144668, ST_GeomFromText('POINT(18.2655098 -65.7144668)', 4326), 18.2648884, -65.7432105, '1981-02-13', '2017-02-28', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612350', 'Quebrada Sumaria', 'Valley', 'Puerto Rico', 'PU', 'Las Marías', 'San Sebastian', 18.2714899, -66.9450314, ST_GeomFromText('POINT(18.2714899 -66.9450314)', 4326), 18.271939, -66.9281952, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1612351', 'Quebrada Sumidero', 'Valley', 'Puerto Rico', 'PU', 'Ciales', 'Florida', 18.3218586, -66.5841649, ST_GeomFromText('POINT(18.3218586 -66.5841649)', 4326), 18.3165133, -66.563384, '1981-02-13', '2017-02-28', NULL, NULL, NULL),
  ('1612352', 'Quebrada Suspiro', 'Valley', 'Puerto Rico', 'PU', 'Río Grande', 'Rio Grande', 18.3878059, -65.7955407, ST_GeomFromText('POINT(18.3878059 -65.7955407)', 4326), 18.3686236, -65.7824649, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612353', 'Quebrada Susúa', 'Valley', 'Puerto Rico', 'PU', 'Yauco', 'Yauco', 18.0166813, -66.8746096, ST_GeomFromText('POINT(18.0166813 -66.8746096)', 4326), 18.0668343, -66.8783769, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1612354', 'Quebrada Tabonuco', 'Valley', 'Puerto Rico', 'PU', 'Río Grande', 'El Yunque', 18.3574417, -65.7700179, ST_GeomFromText('POINT(18.3574417 -65.7700179)', 4326), 18.3296924, -65.7745988, '1981-02-13', '2017-02-28', NULL, NULL, NULL),
  ('1612355', 'Quebrada Talante', 'Valley', 'Puerto Rico', 'PU', 'Maunabo', 'Yabucoa', 18.0082981, -65.910342, ST_GeomFromText('POINT(18.0082981 -65.910342)', 4326), 18.0345672, -65.9064443, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1612356', 'Quebrada Teresa', 'Valley', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Mayaguez', 18.1352187, -67.14367, ST_GeomFromText('POINT(18.1352187 -67.14367)', 4326), 18.1368021, -67.1599404, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612357', 'Quebrada Tigre', 'Valley', 'Puerto Rico', 'PU', 'Barranquitas', 'Comerio', 18.1923018, -66.2422149, ST_GeomFromText('POINT(18.1923018 -66.2422149)', 4326), 18.1903641, -66.2508225, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1612358', 'Quebrada Tinaja', 'Valley', 'Puerto Rico', 'PU', 'Aguada', 'Aguadilla', 18.3917462, -67.183995, ST_GeomFromText('POINT(18.3917462 -67.183995)', 4326), 18.3850651, -67.1814114, '1981-02-13', '2017-02-14', NULL, NULL, NULL),
  ('1612359', 'Quebrada Torres', 'Valley', 'Puerto Rico', 'PU', 'Morovis', 'Ciales', 18.3493954, -66.4231049, ST_GeomFromText('POINT(18.3493954 -66.4231049)', 4326), 18.338946, -66.434741, '1981-02-13', '2017-02-23', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612360', 'Quebrada Toruno', 'Valley', 'Puerto Rico', 'PU', 'San Germán', 'San German', 18.0967551, -67.0398591, ST_GeomFromText('POINT(18.0967551 -67.0398591)', 4326), 18.1023838, -67.0079933, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1612361', 'Quebrada Toyo', 'Valley', 'Puerto Rico', 'PU', 'Ciales', 'Ciales', 18.3656103, -66.4768329, ST_GeomFromText('POINT(18.3656103 -66.4768329)', 4326), 18.3622771, -66.4678364, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612362', 'Quebrada Trina', 'Valley', 'Puerto Rico', 'PU', 'Cabo Rojo', 'San German', 18.0935444, -67.1051782, ST_GeomFromText('POINT(18.0935444 -67.1051782)', 4326), 18.0733696, -67.1056038, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1612363', 'Quebrada Trinidad', 'Valley', 'Puerto Rico', 'PU', 'Guayama', 'Patillas', 18.0339498, -66.101117, ST_GeomFromText('POINT(18.0339498 -66.101117)', 4326), 18.0326848, -66.086183, '1981-02-13', '2017-03-04', NULL, NULL, NULL),
  ('1612364', 'Quebrada Tumbada', 'Valley', 'Puerto Rico', 'PU', 'Maunabo', 'Yabucoa', 18.01265, -65.9301828, ST_GeomFromText('POINT(18.01265 -65.9301828)', 4326), 18.0271375, -65.9199008, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1612365', 'Quebrada Unidad', 'Valley', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.197159, -66.7910099, ST_GeomFromText('POINT(18.197159 -66.7910099)', 4326), 18.2067068, -66.7833555, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612366', 'Quebrada Vaca', 'Valley', 'Puerto Rico', 'PU', 'Naguabo', 'Humacao', 18.2104899, -65.7662015, ST_GeomFromText('POINT(18.2104899 -65.7662015)', 4326), 18.2414939, -65.7689824, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1612367', 'Quebrada Vélez', 'Valley', 'Puerto Rico', 'PU', 'Las Marías', 'San Sebastian', 18.2600424, -66.9426671, ST_GeomFromText('POINT(18.2600424 -66.9426671)', 4326), 18.2409912, -66.951075, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1612368', 'Quebrada Ventana', 'Valley', 'Puerto Rico', 'PU', 'Ciales', 'Ciales', 18.3352659, -66.4629935, ST_GeomFromText('POINT(18.3352659 -66.4629935)', 4326), 18.3329256, -66.4565664, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612369', 'Quebrada La Verde', 'Valley', 'Puerto Rico', 'PU', 'Las Marías', 'San Sebastian', 18.2630292, -66.9696399, ST_GeomFromText('POINT(18.2630292 -66.9696399)', 4326), 18.2530071, -66.9614464, '1981-02-13', '2017-03-14', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612370', 'Quebrada Verraco', 'Valley', 'Puerto Rico', 'PU', 'San Lorenzo', 'Yabucoa', 18.1062137, -65.9888034, ST_GeomFromText('POINT(18.1062137 -65.9888034)', 4326), 18.0938271, -66.0103657, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1612371', 'Quebrada Vicente', 'Valley', 'Puerto Rico', 'PU', 'Aguas Buenas', 'Comerio', 18.2415894, -66.1440731, ST_GeomFromText('POINT(18.2415894 -66.1440731)', 4326), 18.2315631, -66.1743241, '1981-02-13', '2017-02-24', NULL, NULL, NULL),
  ('1612372', 'Quebrada Vieja', 'Valley', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.1858973, -66.7597968, ST_GeomFromText('POINT(18.1858973 -66.7597968)', 4326), 18.1975241, -66.7591999, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612373', 'Quebrada Villano', 'Valley', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.1798353, -66.7687236, ST_GeomFromText('POINT(18.1798353 -66.7687236)', 4326), 18.1770411, -66.7812443, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1612374', 'Quebrada Villanueva', 'Valley', 'Puerto Rico', 'PU', 'Añasco', 'Rincon', 18.2991857, -67.1718294, ST_GeomFromText('POINT(18.2991857 -67.1718294)', 4326), 18.3097112, -67.1791863, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1612375', 'Quebrada Yagruma', 'Valley', 'Puerto Rico', 'PU', 'Moca', 'Central La Plata', 18.3460517, -67.0896798, ST_GeomFromText('POINT(18.3460517 -67.0896798)', 4326), 18.3320997, -67.1087, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1612376', 'Quebrada Yaurel', 'Valley', 'Puerto Rico', 'PU', 'Arroyo', 'Guayama', 17.9818549, -66.0315292, ST_GeomFromText('POINT(17.9818549 -66.0315292)', 4326), 17.9944727, -66.0477925, '1981-02-13', '2017-03-01', NULL, NULL, NULL),
  ('1612377', 'Quebrada Zumbón', 'Valley', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.0513631, -67.1993769, ST_GeomFromText('POINT(18.0513631 -67.1993769)', 4326), 18.0487201, -67.1713509, '1981-02-13', '2017-03-07', NULL, NULL, NULL),
  ('1612379', 'Quebrada Charco del Muerto', 'Valley', 'Puerto Rico', 'PU', 'Jayuya', 'Florida', 18.264558, -66.6012386, ST_GeomFromText('POINT(18.264558 -66.6012386)', 4326), 18.2575724, -66.6229733, '1981-02-13', '2017-02-28', NULL, NULL, NULL),
  ('1612399', 'Represa de Mayaguez', 'Reservoir', 'Puerto Rico', 'PU', 'Mayagüez', 'Rosario', 18.1985073, -67.0778845, ST_GeomFromText('POINT(18.1985073 -67.0778845)', 4326), NULL, NULL, '1981-02-13', '2014-11-18', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612400', 'Represa de San Germán', 'Reservoir', 'Puerto Rico', 'PU', 'San Germán', 'Rosario', 18.1258825, -67.0067174, ST_GeomFromText('POINT(18.1258825 -67.0067174)', 4326), NULL, NULL, '1981-02-13', '2014-11-18', NULL, NULL, NULL),
  ('1612401', 'Represa de San Juan', 'Reservoir', 'Puerto Rico', 'PU', 'Aguas Buenas', 'Naranjito', 18.2777315, -66.1393336, ST_GeomFromText('POINT(18.2777315 -66.1393336)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612407', 'Rincón Grande', 'Summit', 'Puerto Rico', 'PU', 'Arecibo', 'Arecibo', 18.4720086, -66.6508378, ST_GeomFromText('POINT(18.4720086 -66.6508378)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1612409', 'Rio de la Ciénaga', 'Stream', 'Puerto Rico', 'PU', 'Adjuntas', 'Adjuntas', 18.1555144, -66.7143408, ST_GeomFromText('POINT(18.1555144 -66.7143408)', 4326), 18.135793, -66.7023962, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612410', 'Río de la Mina', 'Stream', 'Puerto Rico', 'PU', 'Río Grande', 'El Yunque', 18.308009, -65.7615515, ST_GeomFromText('POINT(18.308009 -65.7615515)', 4326), 18.3027312, -65.7901629, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612411', 'Río de la Mina', 'Stream', 'Puerto Rico', 'PU', 'Coamo', 'Coamo', 18.0610736, -66.3729475, ST_GeomFromText('POINT(18.0610736 -66.3729475)', 4326), 18.1185715, -66.3935037, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612412', 'Río de la Plata', 'Stream', 'Puerto Rico', 'PU', 'Toa Baja', 'Vega Alta', 18.4757785, -66.255168, ST_GeomFromText('POINT(18.4757785 -66.255168)', 4326), 18.1113498, -66.0537762, '1981-02-13', '2011-06-30', 'Official', 'Board Decision', '1958-01-01'),
  ('1612413', 'Río de las Vacas', 'Stream', 'Puerto Rico', 'PU', 'Ciales', 'Florida', 18.254399, -66.5554503, ST_GeomFromText('POINT(18.254399 -66.5554503)', 4326), 18.2552323, -66.5435058, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612414', 'Río de las Vegas', 'Stream', 'Puerto Rico', 'PU', 'San Lorenzo', 'Yabucoa', 18.1069061, -65.9434965, ST_GeomFromText('POINT(18.1069061 -65.9434965)', 4326), 18.0969065, -65.9762748, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612415', 'Río de Aibonito', 'Stream', 'Puerto Rico', 'PU', 'Aibonito', 'Barranquitas', 18.165514, -66.2926688, ST_GeomFromText('POINT(18.165514 -66.2926688)', 4326), 18.1191269, -66.2368344, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612416', 'Río de Apeadero', 'Stream', 'Puerto Rico', 'PU', 'Patillas', 'Guayama', 17.991355, -66.0076637, ST_GeomFromText('POINT(17.991355 -66.0076637)', 4326), 18.0332981, -65.9809969, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612417', 'Río de Caguana', 'Stream', 'Puerto Rico', 'PU', 'Utuado', 'Utuado', 18.3005078, -66.7054521, ST_GeomFromText('POINT(18.3005078 -66.7054521)', 4326), 18.2713424, -66.7579527, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612418', 'Río del Cristal', 'Stream', 'Puerto Rico', 'PU', 'Luquillo', 'Fajardo', 18.3141202, -65.7293289, ST_GeomFromText('POINT(18.3141202 -65.7293289)', 4326), 18.2960654, -65.7390512, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612419', 'Río del Ingenio', 'Stream', 'Puerto Rico', 'PU', 'Yabucoa', 'Punta Guayanes', 18.0630204, -65.8284949, ST_GeomFromText('POINT(18.0630204 -65.8284949)', 4326), 18.1210724, -65.8868293, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612420', 'Río del Pasto', 'Stream', 'Puerto Rico', 'PU', 'Coamo', 'Coamo', 18.0721843, -66.3790587, ST_GeomFromText('POINT(18.0721843 -66.3790587)', 4326), 18.1174603, -66.3865591, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612423', 'Río Ángeles', 'Stream', 'Puerto Rico', 'PU', 'Lares', 'Bayaney', 18.2757866, -66.8329537, ST_GeomFromText('POINT(18.2757866 -66.8329537)', 4326), 18.2449545, -66.8385094, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612424', 'Río Anón', 'Stream', 'Puerto Rico', 'PU', 'Ponce', 'Jayuya', 18.132116, -66.5798411, ST_GeomFromText('POINT(18.132116 -66.5798411)', 4326), 18.1604575, -66.5814245, '1981-02-13', '2019-02-19', NULL, NULL, NULL),
  ('1612425', 'Río Anton Ruiz', 'Stream', 'Puerto Rico', 'PU', 'Humacao', 'Naguabo', 18.1738489, -65.7396061, ST_GeomFromText('POINT(18.1738489 -65.7396061)', 4326), 18.1774598, -65.7496062, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612426', 'Río Arenas', 'Stream', 'Puerto Rico', 'PU', 'Yabucoa', 'Yabucoa', 18.0769076, -65.9482188, ST_GeomFromText('POINT(18.0769076 -65.9482188)', 4326), 18.0541307, -65.9693302, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612427', 'Río Arenas', 'Stream', 'Puerto Rico', 'PU', 'Las Marías', 'Central La Plata', 18.2788413, -67.006845, ST_GeomFromText('POINT(18.2788413 -67.006845)', 4326), 18.2216216, -67.0012893, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612428', 'Río Arroyata', 'Stream', 'Puerto Rico', 'PU', 'Cidra', 'Comerio', 18.2394, -66.2087789, ST_GeomFromText('POINT(18.2394 -66.2087789)', 4326), 18.1613475, -66.1723891, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612429', 'Río Bairoa', 'Stream', 'Puerto Rico', 'PU', 'Caguas', 'Aguas Buenas', 18.2643982, -66.0146095, ST_GeomFromText('POINT(18.2643982 -66.0146095)', 4326), 18.2499548, -66.1243334, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612430', 'Río Barbas', 'Stream', 'Puerto Rico', 'PU', 'Ciales', 'Florida', 18.2968971, -66.5218387, ST_GeomFromText('POINT(18.2968971 -66.5218387)', 4326), 18.2602321, -66.5385057, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612431', 'Río Bauta', 'Stream', 'Puerto Rico', 'PU', 'Morovis', 'Ciales', 18.3043969, -66.4565599, ST_GeomFromText('POINT(18.3043969 -66.4565599)', 4326), 18.1757915, -66.3748924, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612432', 'Río Bayagán', 'Stream', 'Puerto Rico', 'PU', 'Ponce', 'Ponce', 18.0435751, -66.5857282, ST_GeomFromText('POINT(18.0435751 -66.5857282)', 4326), 18.102739, -66.6096173, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612434', 'Río Blanco', 'Stream', 'Puerto Rico', 'PU', 'Ponce', 'Jayuya', 18.1438485, -66.6079505, ST_GeomFromText('POINT(18.1438485 -66.6079505)', 4326), 18.1641254, -66.6051729, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612435', 'Río Blanco', 'Stream', 'Puerto Rico', 'PU', 'Lares', 'San Sebastian', 18.2532874, -66.9073992, ST_GeomFromText('POINT(18.2532874 -66.9073992)', 4326), 18.19829, -66.7973977, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612436', 'Río Blanco', 'Stream', 'Puerto Rico', 'PU', 'Naguabo', 'Naguabo', 18.1852372, -65.7287727, ST_GeomFromText('POINT(18.1852372 -65.7287727)', 4326), 18.2521781, -65.7854406, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612437', 'Río Bonelli', 'Stream', 'Puerto Rico', 'PU', 'Maricao', 'Maricao', 18.1824568, -66.9582331, ST_GeomFromText('POINT(18.1824568 -66.9582331)', 4326), 18.1424585, -66.9704554, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612438', 'Río Botijas', 'Stream', 'Puerto Rico', 'PU', 'Orocovis', 'Orocovis', 18.2391222, -66.3793367, ST_GeomFromText('POINT(18.2391222 -66.3793367)', 4326), 18.1749581, -66.3715589, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612439', 'Río Bucaná', 'Stream', 'Puerto Rico', 'PU', 'Ponce', 'Playa De Ponce', 17.9685786, -66.5998946, ST_GeomFromText('POINT(17.9685786 -66.5998946)', 4326), 18.0432973, -66.5857282, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612440', 'Río Bucarabones', 'Stream', 'Puerto Rico', 'PU', 'Maricao', 'Maricao', 18.2230108, -66.9437885, ST_GeomFromText('POINT(18.2230108 -66.9437885)', 4326), 18.16218, -66.9004548, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612441', 'Río Bucarabones', 'Stream', 'Puerto Rico', 'PU', 'Toa Alta', 'Bayamon', 18.3866157, -66.2443347, ST_GeomFromText('POINT(18.3866157 -66.2443347)', 4326), 18.3382845, -66.1923897, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612442', 'Río de Caguanita', 'Stream', 'Puerto Rico', 'PU', 'Utuado', 'Utuado', 18.3021744, -66.7101744, ST_GeomFromText('POINT(18.3021744 -66.7101744)', 4326), 18.288564, -66.7176745, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612443', 'Río Caín', 'Stream', 'Puerto Rico', 'PU', 'San Germán', 'San German', 18.0952378, -67.0407342, ST_GeomFromText('POINT(18.0952378 -67.0407342)', 4326), 18.1438472, -66.9826779, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612444', 'Río Caliente', 'Stream', 'Puerto Rico', 'PU', 'Barranquitas', 'Barranquitas', 18.222456, -66.2782242, ST_GeomFromText('POINT(18.222456 -66.2782242)', 4326), 18.2066234, -66.2996134, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612445', 'Río Camuy', 'Stream', 'Puerto Rico', 'PU', 'Camuy', 'Camuy', 18.4877218, -66.8368437, ST_GeomFromText('POINT(18.4877218 -66.8368437)', 4326), 18.2510654, -66.8318426, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612446', 'Río Cañabón', 'Stream', 'Puerto Rico', 'PU', 'Orocovis', 'Barranquitas', 18.2324558, -66.3651699, ST_GeomFromText('POINT(18.2324558 -66.3651699)', 4326), 18.2063458, -66.3346139, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612447', 'Río Cañaboncito', 'Stream', 'Puerto Rico', 'PU', 'Caguas', 'Caguas', 18.2335663, -66.0565545, ST_GeomFromText('POINT(18.2335663 -66.0565545)', 4326), 18.2096787, -66.0962773, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612449', 'Río Cañas', 'Stream', 'Puerto Rico', 'PU', 'Caguas', 'Aguas Buenas', 18.2888415, -66.0296098, ST_GeomFromText('POINT(18.2888415 -66.0296098)', 4326), 18.272176, -66.0946108, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612450', 'Río Cañas', 'Stream', 'Puerto Rico', 'PU', 'Sabana Grande', 'Sabana Grande', 18.033575, -66.8890652, ST_GeomFromText('POINT(18.033575 -66.8890652)', 4326), 18.0705175, -66.9235101, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612451', 'Río Cañas', 'Stream', 'Puerto Rico', 'PU', 'Juana Díaz', 'Santa Isabel', 17.987465, -66.4796159, ST_GeomFromText('POINT(17.987465 -66.4796159)', 4326), 18.0771843, -66.4565603, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612452', 'Río Cañas', 'Stream', 'Puerto Rico', 'PU', 'Ponce', 'Penuelas', 18.0019106, -66.6404508, ST_GeomFromText('POINT(18.0019106 -66.6404508)', 4326), 18.1285712, -66.691285, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612453', 'Río Cañas', 'Stream', 'Puerto Rico', 'PU', 'Mayagüez', 'Rincon', 18.2635634, -67.1349021, ST_GeomFromText('POINT(18.2635634 -67.1349021)', 4326), 18.2093999, -67.0082338, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612454', 'Río Cañas', 'Stream', 'Puerto Rico', 'PU', 'Naranjito', 'Naranjito', 18.3327291, -66.2387792, ST_GeomFromText('POINT(18.3327291 -66.2387792)', 4326), 18.2874533, -66.273224, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612455', 'Río Cañas', 'Stream', 'Puerto Rico', 'PU', 'Aguada', 'Aguadilla', 18.3882802, -67.1404582, ST_GeomFromText('POINT(18.3882802 -67.1404582)', 4326), 18.317172, -67.1710142, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612457', 'Río Candelero', 'Stream', 'Puerto Rico', 'PU', 'Humacao', 'Punta Guayanes', 18.0980189, -65.7896058, ST_GeomFromText('POINT(18.0980189 -65.7896058)', 4326), 18.1088511, -65.8390511, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612458', 'Río Canóvanas', 'Stream', 'Puerto Rico', 'PU', 'Loíza', 'Carolina', 18.3918928, -65.9129424, ST_GeomFromText('POINT(18.3918928 -65.9129424)', 4326), 18.2880092, -65.8493303, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612459', 'Río Canovanillas', 'Stream', 'Puerto Rico', 'PU', 'Carolina', 'Carolina', 18.3824487, -65.9148868, ST_GeomFromText('POINT(18.3824487 -65.9148868)', 4326), 18.2577325, -65.8821081, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612460', 'Río Caonillas', 'Stream', 'Puerto Rico', 'PU', 'Utuado', 'Utuado', 18.3330063, -66.6657295, ST_GeomFromText('POINT(18.3330063 -66.6657295)', 4326), 18.2191228, -66.6401734, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612461', 'Río Caricaboa', 'Stream', 'Puerto Rico', 'PU', 'Jayuya', 'Jayuya', 18.2182896, -66.5901729, ST_GeomFromText('POINT(18.2182896 -66.5901729)', 4326), 18.1805135, -66.5715615, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612462', 'Río Cayaguas', 'Stream', 'Puerto Rico', 'PU', 'San Lorenzo', 'Juncos', 18.1744027, -65.9626637, ST_GeomFromText('POINT(18.1744027 -65.9626637)', 4326), 18.1182945, -65.9279408, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612463', 'Río Cerrillos', 'Stream', 'Puerto Rico', 'PU', 'Ponce', 'Ponce', 18.04613, -66.584651, ST_GeomFromText('POINT(18.04613 -66.584651)', 4326), 18.1438485, -66.6079505, '1981-02-13', '2013-03-21', NULL, NULL, NULL),
  ('1612464', 'Río Chico', 'Stream', 'Puerto Rico', 'PU', 'Patillas', 'Guayama', 17.9785779, -66.004608, ST_GeomFromText('POINT(17.9785779 -66.004608)', 4326), 18.0241315, -66.002386, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612465', 'Río Chiquito', 'Stream', 'Puerto Rico', 'PU', 'Guayama', 'Patillas', 18.0799621, -66.1090546, ST_GeomFromText('POINT(18.0799621 -66.1090546)', 4326), 18.0510745, -66.1279437, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612466', 'Río Chiquito', 'Stream', 'Puerto Rico', 'PU', 'Ponce', 'Ponce', 18.027556, -66.610603, ST_GeomFromText('POINT(18.027556 -66.610603)', 4326), 18.1152385, -66.6257285, '1981-02-13', '2013-03-21', NULL, NULL, NULL),
  ('1612467', 'Río Chiquito', 'Stream', 'Puerto Rico', 'PU', 'Yauco', 'Sabana Grande', 18.1171822, -66.8768432, ST_GeomFromText('POINT(18.1171822 -66.8768432)', 4326), 18.1513472, -66.8890657, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612468', 'Río Chiquito de Cibao', 'Stream', 'Puerto Rico', 'PU', 'Lares', 'San Sebastian', 18.3668935, -66.905455, ST_GeomFromText('POINT(18.3668935 -66.905455)', 4326), 18.3563385, -66.8765656, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612469', 'Río Cialitos', 'Stream', 'Puerto Rico', 'PU', 'Ciales', 'Ciales', 18.3443951, -66.4690599, ST_GeomFromText('POINT(18.3443951 -66.4690599)', 4326), 18.2157897, -66.5346168, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612470', 'Río Cibuco', 'Stream', 'Puerto Rico', 'PU', 'Vega Baja', 'Manati', 18.4860558, -66.3782254, ST_GeomFromText('POINT(18.4860558 -66.3782254)', 4326), 18.2882867, -66.3465584, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612471', 'Río Cidra', 'Stream', 'Puerto Rico', 'PU', 'Adjuntas', 'Adjuntas', 18.1794023, -66.7365634, ST_GeomFromText('POINT(18.1794023 -66.7365634)', 4326), 18.1555144, -66.7151742, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612472', 'Río Cidra', 'Stream', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.1952344, -66.8260092, ST_GeomFromText('POINT(18.1952344 -66.8260092)', 4326), 18.1891237, -66.8096201, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612473', 'Río Clavijo', 'Stream', 'Puerto Rico', 'PU', 'Cidra', 'Comerio', 18.1707916, -66.1248885, ST_GeomFromText('POINT(18.1707916 -66.1248885)', 4326), 18.1602365, -66.1154439, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612474', 'Río Coabey', 'Stream', 'Puerto Rico', 'PU', 'Utuado', 'Bayaney', 18.2482878, -66.7946198, ST_GeomFromText('POINT(18.2482878 -66.7946198)', 4326), 18.2310663, -66.8057311, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612475', 'Río Coamo', 'Stream', 'Puerto Rico', 'PU', 'Santa Isabel', 'Santa Isabel', 17.959411, -66.4282256, ST_GeomFromText('POINT(17.959411 -66.4282256)', 4326), 18.1516257, -66.3393361, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612476', 'Río Cocal', 'Stream', 'Puerto Rico', 'PU', 'Dorado', 'Bayamon', 18.4680007, -66.1982227, ST_GeomFromText('POINT(18.4680007 -66.1982227)', 4326), 18.4549459, -66.2626682, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612477', 'Río Coco', 'Stream', 'Puerto Rico', 'PU', 'Sabana Grande', 'Sabana Grande', 18.0699618, -66.9448991, ST_GeomFromText('POINT(18.0699618 -66.9448991)', 4326), 18.0816281, -66.9165656, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612478', 'Río Corcho', 'Stream', 'Puerto Rico', 'PU', 'Adjuntas', 'Adjuntas', 18.1360709, -66.6760069, ST_GeomFromText('POINT(18.1360709 -66.6760069)', 4326), 18.1552367, -66.6837848, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612479', 'Río Corozal', 'Stream', 'Puerto Rico', 'PU', 'Corozal', 'Corozal', 18.3502284, -66.3340582, ST_GeomFromText('POINT(18.3502284 -66.3340582)', 4326), 18.2896755, -66.3298915, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612480', 'Río Criminales', 'Stream', 'Puerto Rico', 'PU', 'Utuado', 'Bayaney', 18.3035632, -66.8235093, ST_GeomFromText('POINT(18.3035632 -66.8235093)', 4326), 18.2452323, -66.813509, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612481', 'Río Cruces', 'Stream', 'Puerto Rico', 'PU', 'Sabana Grande', 'Sabana Grande', 18.0707949, -66.9873998, ST_GeomFromText('POINT(18.0707949 -66.9873998)', 4326), 18.1438473, -66.9618442, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612482', 'Río Cubuy', 'Stream', 'Puerto Rico', 'PU', 'Naguabo', 'El Yunque', 18.2521781, -65.7857184, ST_GeomFromText('POINT(18.2521781 -65.7857184)', 4326), 18.2827319, -65.8143298, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612483', 'Río Cubuy', 'Stream', 'Puerto Rico', 'PU', 'Loíza', 'Gurabo', 18.2893977, -65.8796082, ST_GeomFromText('POINT(18.2893977 -65.8796082)', 4326), 18.2760654, -65.8398857, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612484', 'Río Cuesta Arriba', 'Stream', 'Puerto Rico', 'PU', 'Bayamón', 'Naranjito', 18.2960642, -66.2087788, ST_GeomFromText('POINT(18.2960642 -66.2087788)', 4326), 18.2746762, -66.1571116, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612485', 'Río Culebra', 'Stream', 'Puerto Rico', 'PU', 'Aguada', 'Aguadilla', 18.3816131, -67.2082365, ST_GeomFromText('POINT(18.3816131 -67.2082365)', 4326), 18.3343935, -67.1704587, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612486', 'Río Culebra', 'Stream', 'Puerto Rico', 'PU', 'Orocovis', 'Ciales', 18.2577323, -66.4551712, ST_GeomFromText('POINT(18.2577323 -66.4551712)', 4326), 18.2346779, -66.4193374, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612487', 'Río Culebrinas', 'Stream', 'Puerto Rico', 'PU', 'Aguada', 'Aguadilla', 18.4057792, -67.1768475, ST_GeomFromText('POINT(18.4057792 -67.1768475)', 4326), 18.2724532, -66.8940657, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612488', 'Río Cupeyes', 'Stream', 'Puerto Rico', 'PU', 'San Germán', 'San German', 18.07635, -67.0090668, ST_GeomFromText('POINT(18.07635 -67.0090668)', 4326), 18.1413474, -66.9776778, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612489', 'Río Cuyón', 'Stream', 'Puerto Rico', 'PU', 'Aibonito', 'Coamo', 18.0824616, -66.3543361, ST_GeomFromText('POINT(18.0824616 -66.3543361)', 4326), 18.1032942, -66.2276677, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612490', 'Río Daguao', 'Stream', 'Puerto Rico', 'PU', 'Ceiba', 'Naguabo', 18.2069029, -65.6643282, ST_GeomFromText('POINT(18.2069029 -65.6643282)', 4326), 18.2613449, -65.6737729, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612491', 'Río Dagüey', 'Stream', 'Puerto Rico', 'PU', 'Añasco', 'Rincon', 18.2713407, -67.1457355, ST_GeomFromText('POINT(18.2713407 -67.1457355)', 4326), 18.3127279, -67.1318469, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612492', 'Río de Barranquitas', 'Stream', 'Puerto Rico', 'PU', 'Barranquitas', 'Barranquitas', 18.169125, -66.2915576, ST_GeomFromText('POINT(18.169125 -66.2915576)', 4326), 18.202457, -66.3337806, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612493', 'Río Demajagua', 'Stream', 'Puerto Rico', 'PU', 'Ceiba', 'Fajardo', 18.2835665, -65.6343281, ST_GeomFromText('POINT(18.2835665 -65.6343281)', 4326), 18.2835664, -65.6732173, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612494', 'Río Descalabrado', 'Stream', 'Puerto Rico', 'PU', 'Santa Isabel', 'Santa Isabel', 17.9813543, -66.4512819, ST_GeomFromText('POINT(17.9813543 -66.4512819)', 4326), 18.1296822, -66.4043372, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612495', 'Río Dos Bocas', 'Stream', 'Puerto Rico', 'PU', 'Corozal', 'Corozal', 18.3274516, -66.3268359, ST_GeomFromText('POINT(18.3274516 -66.3268359)', 4326), 18.2910644, -66.3421139, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612496', 'Río Duey', 'Stream', 'Puerto Rico', 'PU', 'Yauco', 'Yauco', 18.052741, -66.8510095, ST_GeomFromText('POINT(18.052741 -66.8510095)', 4326), 18.1227376, -66.8037868, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612497', 'Río Duey', 'Stream', 'Puerto Rico', 'PU', 'San Germán', 'San German', 18.1171812, -67.0737903, ST_GeomFromText('POINT(18.1171812 -67.0737903)', 4326), 18.1630125, -67.0504571, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612498', 'Río Emajagua', 'Stream', 'Puerto Rico', 'PU', 'San Lorenzo', 'Yabucoa', 18.1207942, -65.987664, ST_GeomFromText('POINT(18.1207942 -65.987664)', 4326), 18.1074611, -66.0451649, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612499', 'Río Espíritu Santo', 'Stream', 'Puerto Rico', 'PU', 'Río Grande', 'Rio Grande', 18.4113369, -65.8034969, ST_GeomFromText('POINT(18.4113369 -65.8034969)', 4326), 18.3071753, -65.8021075, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612500', 'Río Fajardo', 'Stream', 'Puerto Rico', 'PU', 'Fajardo', 'Fajardo', 18.328009, -65.6273837, ST_GeomFromText('POINT(18.328009 -65.6273837)', 4326), 18.2805103, -65.7629403, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612501', 'Río Flores', 'Stream', 'Puerto Rico', 'PU', 'Sabana Grande', 'Barranquitas', 18.2194007, -66.270724, ST_GeomFromText('POINT(18.2194007 -66.270724)', 4326), 18.1224594, -66.9510107, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612502', 'Río Garzas', 'Stream', 'Puerto Rico', 'PU', 'Adjuntas', 'Adjuntas', 18.157181, -66.7429523, ST_GeomFromText('POINT(18.157181 -66.7429523)', 4326), 18.1624584, -66.7610082, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612504', 'Río Grande', 'Stream', 'Puerto Rico', 'PU', 'Río Grande', 'Rio Grande', 18.379116, -65.8243303, ST_GeomFromText('POINT(18.379116 -65.8243303)', 4326), 18.2760656, -65.8248855, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612505', 'Río Grande', 'Stream', 'Puerto Rico', 'PU', 'Sabana Grande', 'Sabana Grande', 18.0702395, -66.9546214, ST_GeomFromText('POINT(18.0702395 -66.9546214)', 4326), 18.1480139, -66.9326774, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612506', 'Río Grande de Arecibo', 'Stream', 'Puerto Rico', 'PU', 'Arecibo', 'Arecibo', 18.4727228, -66.7104527, ST_GeomFromText('POINT(18.4727228 -66.7104527)', 4326), 18.1794023, -66.7360078, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612507', 'Río Grande de Jayuya', 'Stream', 'Puerto Rico', 'PU', 'Jayuya', 'Adjuntas', 18.218845, -66.6404511, ST_GeomFromText('POINT(18.218845 -66.6404511)', 4326), 18.2182896, -66.5901729, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612508', 'Río Grande de Manati', 'Stream', 'Puerto Rico', 'PU', 'Manatí', 'Barceloneta', 18.4816115, -66.5332275, ST_GeomFromText('POINT(18.4816115 -66.5332275)', 4326), 18.1996794, -66.3301695, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612509', 'Río Grande de Patillas', 'Stream', 'Puerto Rico', 'PU', 'Patillas', 'Guayama', 17.9794111, -66.0162749, ST_GeomFromText('POINT(17.9794111 -66.0162749)', 4326), 18.1113498, -66.0537762, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612510', 'Río Grande de Añasco', 'Stream', 'Puerto Rico', 'PU', 'Mayagüez', 'Rincon', 18.2666183, -67.1879583, ST_GeomFromText('POINT(18.2666183 -67.1879583)', 4326), 18.2518986, -66.9073992, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612511', 'Río Guaba', 'Stream', 'Puerto Rico', 'PU', 'Las Marías', 'San Sebastian', 18.2532874, -66.9310106, ST_GeomFromText('POINT(18.2532874 -66.9310106)', 4326), 18.149125, -66.8904547, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612512', 'Río Guadiana', 'Stream', 'Puerto Rico', 'PU', 'Naranjito', 'Naranjito', 18.3235629, -66.2318346, ST_GeomFromText('POINT(18.3235629 -66.2318346)', 4326), 18.2516215, -66.2551684, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612513', 'Río Guajataca', 'Stream', 'Puerto Rico', 'PU', 'Isabela', 'Quebradillas', 18.4979984, -66.9576792, ST_GeomFromText('POINT(18.4979984 -66.9576792)', 4326), 18.2480099, -66.844065, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612514', 'Río Guamaní', 'Stream', 'Puerto Rico', 'PU', 'Guayama', 'Central Aguirre', 17.9430233, -66.1337769, ST_GeomFromText('POINT(17.9430233 -66.1337769)', 4326), 18.0532966, -66.118777, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612515', 'Río Guanajibo', 'Stream', 'Puerto Rico', 'PU', 'Hormigueros', 'Mayaguez', 18.1682894, -67.1807356, ST_GeomFromText('POINT(18.1682894 -67.1807356)', 4326), 18.052185, -66.9276767, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612516', 'Río Guaonica', 'Stream', 'Puerto Rico', 'PU', 'Utuado', 'Utuado', 18.256621, -66.724341, ST_GeomFromText('POINT(18.256621 -66.724341)', 4326), 18.231622, -66.7568415, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612517', 'Río Guatemala', 'Stream', 'Puerto Rico', 'PU', 'San Sebastián', 'Central La Plata', 18.3363387, -67.0046229, ST_GeomFromText('POINT(18.3363387 -67.0046229)', 4326), 18.3638378, -66.937122, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612518', 'Río Guayabo', 'Stream', 'Puerto Rico', 'PU', 'Aguada', 'Aguadilla', 18.3838351, -67.2137921, ST_GeomFromText('POINT(18.3838351 -67.2137921)', 4326), 18.3816131, -67.2079587, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612519', 'Río Guayanés', 'Stream', 'Puerto Rico', 'PU', 'Peñuelas', 'Penuelas', 18.0505187, -66.72073, ST_GeomFromText('POINT(18.0505187 -66.72073)', 4326), 18.110794, -66.7307301, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612520', 'Río Guayanés', 'Stream', 'Puerto Rico', 'PU', 'Yabucoa', 'Punta Guayanes', 18.0582985, -65.8257169, ST_GeomFromText('POINT(18.0582985 -65.8257169)', 4326), 18.0702407, -66.0101642, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612521', 'Río Guayanilla', 'Stream', 'Puerto Rico', 'PU', 'Guayanilla', 'Yauco', 18.0019101, -66.7746195, ST_GeomFromText('POINT(18.0019101 -66.7746195)', 4326), 18.1313485, -66.7787864, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612522', 'Río Guaynabo', 'Stream', 'Puerto Rico', 'PU', 'Guaynabo', 'Bayamon', 18.374394, -66.1346111, ST_GeomFromText('POINT(18.374394 -66.1346111)', 4326), 18.3174519, -66.112111, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612523', 'Río Guayo', 'Stream', 'Puerto Rico', 'PU', 'Lares', 'Monte Guilarte', 18.2199555, -66.830176, ST_GeomFromText('POINT(18.2199555 -66.830176)', 4326), 18.1505142, -66.8168424, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612524', 'Río Guayo', 'Stream', 'Puerto Rico', 'PU', 'Juana Díaz', 'Ponce', 18.040771, -66.537738, ST_GeomFromText('POINT(18.040771 -66.537738)', 4326), 18.1502371, -66.5496169, '1981-02-13', '2013-03-21', NULL, NULL, NULL),
  ('1612525', 'Río Guilarte', 'Stream', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.1985678, -66.796842, ST_GeomFromText('POINT(18.1985678 -66.796842)', 4326), 18.1538476, -66.7771196, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612526', 'Río Gurabo', 'Stream', 'Puerto Rico', 'PU', 'Gurabo', 'Aguas Buenas', 18.27162, -66.0082205, ST_GeomFromText('POINT(18.27162 -66.0082205)', 4326), 18.2702324, -65.8296078, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612527', 'Río Herrera', 'Stream', 'Puerto Rico', 'PU', 'Río Grande', 'Rio Grande', 18.4232805, -65.8290527, ST_GeomFromText('POINT(18.4232805 -65.8290527)', 4326), 18.3085637, -65.8557193, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612528', 'Río Hoconuco', 'Stream', 'Puerto Rico', 'PU', 'San Germán', 'San German', 18.1071816, -67.0804568, ST_GeomFromText('POINT(18.1071816 -67.0804568)', 4326), 18.156069, -66.9979558, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612529', 'Río Hondo', 'Stream', 'Puerto Rico', 'PU', 'Añasco', 'Rincon', 18.2807845, -67.1743472, ST_GeomFromText('POINT(18.2807845 -67.1743472)', 4326), 18.3210609, -67.1462917, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612531', 'Río Hondo', 'Stream', 'Puerto Rico', 'PU', 'Añasco', 'Rincon', 18.2805066, -67.1876808, ST_GeomFromText('POINT(18.2805066 -67.1876808)', 4326), 18.3210608, -67.1590696, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612532', 'Río Hondo', 'Stream', 'Puerto Rico', 'PU', 'Hormigueros', 'Mayaguez', 18.1530124, -67.1593464, ST_GeomFromText('POINT(18.1530124 -67.1593464)', 4326), 18.1694011, -67.0949019, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612533', 'Río Hondo', 'Stream', 'Puerto Rico', 'PU', 'Comerío', 'Comerio', 18.203568, -66.2396124, ST_GeomFromText('POINT(18.203568 -66.2396124)', 4326), 18.2221783, -66.2782242, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612534', 'Río Hondo', 'Stream', 'Puerto Rico', 'PU', 'Bayamón', 'Bayamon', 18.4024481, -66.1576669, ST_GeomFromText('POINT(18.4024481 -66.1576669)', 4326), 18.3524505, -66.1732227, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612535', 'Río Humacao', 'Stream', 'Puerto Rico', 'PU', 'Humacao', 'Punta Guayanes', 18.1199624, -65.7809949, ST_GeomFromText('POINT(18.1199624 -65.7809949)', 4326), 18.1357937, -65.9154407, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612536', 'Río Humata', 'Stream', 'Puerto Rico', 'PU', 'Añasco', 'Central La Plata', 18.2827294, -67.106013, ST_GeomFromText('POINT(18.2827294 -67.106013)', 4326), 18.3168944, -67.1296247, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612537', 'Río Icacos', 'Stream', 'Puerto Rico', 'PU', 'Naguabo', 'El Yunque', 18.2521781, -65.7857184, ST_GeomFromText('POINT(18.2521781 -65.7857184)', 4326), 18.2926954, -65.790277, '1981-02-13', '2013-03-21', 'Official', 'Board Decision', '1968-01-01'),
  ('1612538', 'Río Inabón', 'Stream', 'Puerto Rico', 'PU', 'Ponce', 'Playa De Ponce', 17.9688559, -66.558227, ST_GeomFromText('POINT(17.9688559 -66.558227)', 4326), 18.1666253, -66.5748949, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612539', 'Río Indio', 'Stream', 'Puerto Rico', 'PU', 'Vega Baja', 'Vega Alta', 18.4407801, -66.3682253, ST_GeomFromText('POINT(18.4407801 -66.3682253)', 4326), 18.372172, -66.3957257, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612540', 'Río Ingenio', 'Stream', 'Puerto Rico', 'PU', 'Aguada', 'Aguadilla', 18.3816131, -67.207681, ST_GeomFromText('POINT(18.3816131 -67.207681)', 4326), 18.3271716, -67.1679586, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612541', 'Río Jacaboa', 'Stream', 'Puerto Rico', 'PU', 'Patillas', 'Punta Tuna', 17.9735783, -65.965163, ST_GeomFromText('POINT(17.9735783 -65.965163)', 4326), 18.027465, -65.9643299, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612542', 'Río Jacaguas', 'Stream', 'Puerto Rico', 'PU', 'Juana Díaz', 'Playa De Ponce', 17.9738553, -66.539338, ST_GeomFromText('POINT(17.9738553 -66.539338)', 4326), 18.1760692, -66.4687827, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612543', 'Río Jájome', 'Stream', 'Puerto Rico', 'PU', 'Cayey', 'Cayey', 18.0460743, -66.2015559, ST_GeomFromText('POINT(18.0460743 -66.2015559)', 4326), 18.0463524, -66.1312772, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612544', 'Río Jauca', 'Stream', 'Puerto Rico', 'PU', 'Jayuya', 'Adjuntas', 18.218845, -66.6404511, ST_GeomFromText('POINT(18.218845 -66.6404511)', 4326), 18.1721807, -66.5982284, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612545', 'Río Juan Martín', 'Stream', 'Puerto Rico', 'PU', 'Luquillo', 'Fajardo', 18.3663403, -65.6765506, ST_GeomFromText('POINT(18.3663403 -65.6765506)', 4326), 18.3263421, -65.6976619, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612546', 'Río Jueyes', 'Stream', 'Puerto Rico', 'PU', 'Salinas', 'Salinas', 17.9769106, -66.3382242, ST_GeomFromText('POINT(17.9769106 -66.3382242)', 4326), 18.0569071, -66.2979462, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612548', 'Río Juncal', 'Stream', 'Puerto Rico', 'PU', 'San Sebastián', 'San Sebastian', 18.29273, -66.922955, ST_GeomFromText('POINT(18.29273 -66.922955)', 4326), 18.2721755, -66.887399, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612549', 'Río La Venta', 'Stream', 'Puerto Rico', 'PU', 'Utuado', 'Florida', 18.318007, -66.6093398, ST_GeomFromText('POINT(18.318007 -66.6093398)', 4326), 18.2913416, -66.5765616, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612550', 'Río Lachi', 'Stream', 'Puerto Rico', 'PU', 'Maunabo', 'Yabucoa', 18.0391314, -65.96183, ST_GeomFromText('POINT(18.0391314 -65.96183)', 4326), 18.0338536, -65.9721079, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612552', 'Río Lajas', 'Stream', 'Puerto Rico', 'PU', 'Maricao', 'Maricao', 18.1699573, -66.9640665, ST_GeomFromText('POINT(18.1699573 -66.9640665)', 4326), 18.1544026, -66.9223995, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612553', 'Río Lajas', 'Stream', 'Puerto Rico', 'PU', 'Vega Alta', 'Vega Alta', 18.3938376, -66.2560016, ST_GeomFromText('POINT(18.3938376 -66.2560016)', 4326), 18.3766162, -66.3271137, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612554', 'Río Lapa', 'Stream', 'Puerto Rico', 'PU', 'Cayey', 'Cayey', 18.0355191, -66.2404454, ST_GeomFromText('POINT(18.0355191 -66.2404454)', 4326), 18.0844061, -66.187667, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612555', 'Río Limaní', 'Stream', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.19829, -66.796842, ST_GeomFromText('POINT(18.19829 -66.796842)', 4326), 18.1491255, -66.7987867, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612556', 'Río Limón', 'Stream', 'Puerto Rico', 'PU', 'Utuado', 'Utuado', 18.3221735, -66.6551738, ST_GeomFromText('POINT(18.3221735 -66.6551738)', 4326), 18.240233, -66.6057286, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612557', 'Río Limones', 'Stream', 'Puerto Rico', 'PU', 'Yabucoa', 'Yabucoa', 18.0621863, -65.88044, ST_GeomFromText('POINT(18.0621863 -65.88044)', 4326), 18.1094061, -65.9207185, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612558', 'Río Loco', 'Stream', 'Puerto Rico', 'PU', 'Guánica', 'Guanica', 17.9710775, -66.9215649, ST_GeomFromText('POINT(17.9710775 -66.9215649)', 4326), 18.1296815, -66.9165659, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612559', 'Río Macaná', 'Stream', 'Puerto Rico', 'PU', 'Guayanilla', 'Yauco', 18.0063542, -66.7685084, ST_GeomFromText('POINT(18.0063542 -66.7685084)', 4326), 18.086906, -66.769064, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612560', 'Río Mameyes', 'Stream', 'Puerto Rico', 'PU', 'Luquillo', 'Fajardo OE N', 18.3852276, -65.7498851, ST_GeomFromText('POINT(18.3852276 -65.7498851)', 4326), 18.2835657, -65.7682182, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612561', 'Río Maricao', 'Stream', 'Puerto Rico', 'PU', 'Maricao', 'Rosario', 18.1846785, -67.03129, ST_GeomFromText('POINT(18.1846785 -67.03129)', 4326), 18.1507914, -66.9832334, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612562', 'Río Marín', 'Stream', 'Puerto Rico', 'PU', 'Patillas', 'Patillas', 18.0302424, -66.0115528, ST_GeomFromText('POINT(18.0302424 -66.0115528)', 4326), 18.0649632, -66.0090529, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612563', 'Río Matilde', 'Stream', 'Puerto Rico', 'PU', 'Ponce', 'Punta Cucharas', 17.9819114, -66.6376731, ST_GeomFromText('POINT(17.9819114 -66.6376731)', 4326), 18.0019106, -66.6401731, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612564', 'Río Matón', 'Stream', 'Puerto Rico', 'PU', 'Cayey', 'Comerio', 18.1399594, -66.2101674, ST_GeomFromText('POINT(18.1399594 -66.2101674)', 4326), 18.0869061, -66.1618332, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612565', 'Río Matrullas', 'Stream', 'Puerto Rico', 'PU', 'Ciales', 'Florida', 18.2566211, -66.5010052, ST_GeomFromText('POINT(18.2566211 -66.5010052)', 4326), 18.1799578, -66.4693382, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612566', 'Río Maunabo', 'Stream', 'Puerto Rico', 'PU', 'Maunabo', 'Punta Tuna', 17.9902448, -65.8959956, ST_GeomFromText('POINT(17.9902448 -65.8959956)', 4326), 18.0477419, -65.9843304, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612567', 'Río Mavilla', 'Stream', 'Puerto Rico', 'PU', 'Naranjito', 'Corozal', 18.3657834, -66.3518362, ST_GeomFromText('POINT(18.3657834 -66.3518362)', 4326), 18.2471773, -66.2812799, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612568', 'Río Minillas', 'Stream', 'Puerto Rico', 'PU', 'Bayamón', 'Naranjito', 18.3574503, -66.1418335, ST_GeomFromText('POINT(18.3574503 -66.1418335)', 4326), 18.3357846, -66.1596116, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612569', 'Río Morovis', 'Stream', 'Puerto Rico', 'PU', 'Morovis', 'Ciales', 18.372172, -66.3957257, ST_GeomFromText('POINT(18.372172 -66.3957257)', 4326), 18.3105079, -66.3968369, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612570', 'Río Naranjito', 'Stream', 'Puerto Rico', 'PU', 'Jayuya', 'Florida', 18.2818977, -66.5987841, ST_GeomFromText('POINT(18.2818977 -66.5987841)', 4326), 18.2482882, -66.5718394, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612571', 'Río Naranjo', 'Stream', 'Puerto Rico', 'PU', 'Yauco', 'Yauco', 18.1024607, -66.8635097, ST_GeomFromText('POINT(18.1024607 -66.8635097)', 4326), 18.1357925, -66.8701766, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612572', 'Río Nigua', 'Stream', 'Puerto Rico', 'PU', 'Arroyo', 'Guayama', 17.9596896, -66.0579421, ST_GeomFromText('POINT(17.9596896 -66.0579421)', 4326), 18.0230201, -66.0932209, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612573', 'Río Nigua', 'Stream', 'Puerto Rico', 'PU', 'Salinas', 'Salinas', 17.9688553, -66.3123907, ST_GeomFromText('POINT(17.9688553 -66.3123907)', 4326), 18.0632958, -66.2732237, '1981-02-13', NULL, 'Official', 'Board Decision', '1968-01-01'),
  ('1612574', 'Río Nueve Pasos', 'Stream', 'Puerto Rico', 'PU', 'San Germán', 'Rosario', 18.149402, -67.0640684, ST_GeomFromText('POINT(18.149402 -67.0640684)', 4326), 18.1560688, -67.009345, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612575', 'Río Nuevo', 'Stream', 'Puerto Rico', 'PU', 'Dorado', 'Vega Alta', 18.4146701, -66.2696129, ST_GeomFromText('POINT(18.4146701 -66.2696129)', 4326), 18.4107814, -66.2726686, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612576', 'Río Orocovis', 'Stream', 'Puerto Rico', 'PU', 'Orocovis', 'Ciales', 18.293842, -66.37767, ST_GeomFromText('POINT(18.293842 -66.37767)', 4326), 18.1810691, -66.3746146, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612577', 'Río Palmarejo', 'Stream', 'Puerto Rico', 'PU', 'Utuado', 'Florida', 18.2910639, -66.6146176, ST_GeomFromText('POINT(18.2910639 -66.6146176)', 4326), 18.2641207, -66.6243399, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612578', 'Río Pastillo', 'Stream', 'Puerto Rico', 'PU', 'Ponce', 'Penuelas', 18.0019106, -66.6404508, ST_GeomFromText('POINT(18.0019106 -66.6404508)', 4326), 18.1138494, -66.6815626, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612579', 'Río Pellejas', 'Stream', 'Puerto Rico', 'PU', 'Utuado', 'Adjuntas', 18.2302333, -66.7176743, ST_GeomFromText('POINT(18.2302333 -66.7176743)', 4326), 18.1582922, -66.6826737, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612581', 'Río Piedras', 'Stream', 'Puerto Rico', 'PU', 'Añasco', 'Central La Plata', 18.2930067, -67.1096242, ST_GeomFromText('POINT(18.2930067 -67.1096242)', 4326), 18.3060618, -67.0837906, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612582', 'Río Piedras', 'Stream', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.4221694, -66.0812771, ST_GeomFromText('POINT(18.4221694 -66.0812771)', 4326), 18.3221736, -66.067666, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612583', 'Río Piedras', 'Stream', 'Puerto Rico', 'PU', 'Utuado', 'Bayaney', 18.2780087, -66.830176, ST_GeomFromText('POINT(18.2780087 -66.830176)', 4326), 18.2330106, -66.8157312, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612584', 'Río Pitahaya', 'Stream', 'Puerto Rico', 'PU', 'Luquillo', 'Fajardo', 18.3721731, -65.7107178, ST_GeomFromText('POINT(18.3721731 -65.7107178)', 4326), 18.2941209, -65.7479402, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612585', 'Río Portugués', 'Stream', 'Puerto Rico', 'PU', 'Ponce', 'Playa De Ponce', 17.9808004, -66.6237839, ST_GeomFromText('POINT(17.9808004 -66.6237839)', 4326), 18.1338486, -66.696285, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612586', 'Río Postrero', 'Stream', 'Puerto Rico', 'PU', 'Maricao', 'Maricao', 18.163291, -66.9551776, ST_GeomFromText('POINT(18.163291 -66.9551776)', 4326), 18.1471806, -66.9604553, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612587', 'Río Prieto', 'Stream', 'Puerto Rico', 'PU', 'Ponce', 'Jayuya', 18.1438485, -66.6079505, ST_GeomFromText('POINT(18.1438485 -66.6079505)', 4326), 18.165792, -66.5793393, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612588', 'Río Prieto', 'Stream', 'Puerto Rico', 'PU', 'Maricao', 'Rosario', 18.1846785, -67.03129, ST_GeomFromText('POINT(18.1846785 -67.03129)', 4326), 18.1610687, -67.0021226, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612589', 'Río Prieto', 'Stream', 'Puerto Rico', 'PU', 'Naguabo', 'El Yunque', 18.2532892, -65.7846073, ST_GeomFromText('POINT(18.2532892 -65.7846073)', 4326), 18.2655109, -65.7640515, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612590', 'Río Prieto', 'Stream', 'Puerto Rico', 'PU', 'Yabucoa', 'Yabucoa', 18.0780183, -65.9893305, ST_GeomFromText('POINT(18.0780183 -65.9893305)', 4326), 18.0755183, -66.0084975, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612591', 'Río Prieto', 'Stream', 'Puerto Rico', 'PU', 'Lares', 'San Sebastian', 18.2532874, -66.9073992, ST_GeomFromText('POINT(18.2532874 -66.9073992)', 4326), 18.1410704, -66.7876754, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612592', 'Río Puerto Nuevo', 'Stream', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.4388351, -66.0818326, ST_GeomFromText('POINT(18.4388351 -66.0818326)', 4326), 18.4238361, -66.0993328, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612593', 'Río Roncador', 'Stream', 'Puerto Rico', 'PU', 'Utuado', 'Utuado', 18.2538433, -66.7351746, ST_GeomFromText('POINT(18.2538433 -66.7351746)', 4326), 18.2402327, -66.7660083, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612594', 'Río Rosario', 'Stream', 'Puerto Rico', 'PU', 'Hormigueros', 'Mayaguez', 18.1294025, -67.1332351, ST_GeomFromText('POINT(18.1294025 -67.1332351)', 4326), 18.1846785, -67.0315677, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612595', 'Río Sabana', 'Stream', 'Puerto Rico', 'PU', 'Naguabo', 'El Yunque', 18.2602332, -65.7943296, ST_GeomFromText('POINT(18.2602332 -65.7943296)', 4326), 18.2855096, -65.811552, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612596', 'Río Sabana', 'Stream', 'Puerto Rico', 'PU', 'Cidra', 'Comerio', 18.1732915, -66.1493333, ST_GeomFromText('POINT(18.1732915 -66.1493333)', 4326), 18.1591254, -66.1357219, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612597', 'Río Sabana', 'Stream', 'Puerto Rico', 'PU', 'Luquillo', 'Fajardo OE N', 18.374673, -65.71294, ST_GeomFromText('POINT(18.374673 -65.71294)', 4326), 18.2763437, -65.7637738, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612598', 'Río Saliente', 'Stream', 'Puerto Rico', 'PU', 'Jayuya', 'Jayuya', 18.2182896, -66.5901729, ST_GeomFromText('POINT(18.2182896 -66.5901729)', 4326), 18.1685697, -66.5723949, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612599', 'Río Salientito', 'Stream', 'Puerto Rico', 'PU', 'Jayuya', 'Jayuya', 18.2046791, -66.5548948, ST_GeomFromText('POINT(18.2046791 -66.5548948)', 4326), 18.177458, -66.5371168, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612600', 'Río Saltillo', 'Stream', 'Puerto Rico', 'PU', 'Adjuntas', 'Adjuntas', 18.1555144, -66.7143408, ST_GeomFromText('POINT(18.1555144 -66.7143408)', 4326), 18.1410707, -66.6982294, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612601', 'Río San Patricio', 'Stream', 'Puerto Rico', 'PU', 'Ponce', 'Ponce', 18.1177384, -66.6068395, ST_GeomFromText('POINT(18.1177384 -66.6068395)', 4326), 18.1569034, -66.6529508, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612602', 'Río Sana Muerto', 'Stream', 'Puerto Rico', 'PU', 'Morovis', 'Ciales', 18.2880089, -66.4229484, ST_GeomFromText('POINT(18.2880089 -66.4229484)', 4326), 18.220234, -66.4190596, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612603', 'Río Santiago', 'Stream', 'Puerto Rico', 'PU', 'Naguabo', 'Naguabo', 18.1880148, -65.7251616, ST_GeomFromText('POINT(18.1880148 -65.7251616)', 4326), 18.2574559, -65.7384957, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612604', 'Río Santiago', 'Stream', 'Puerto Rico', 'PU', 'Arecibo', 'Arecibo', 18.4710563, -66.7143416, ST_GeomFromText('POINT(18.4710563 -66.7143416)', 4326), 18.4330022, -66.7201751, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612605', 'Río Sapo', 'Stream', 'Puerto Rico', 'PU', 'Maricao', 'Maricao', 18.1746796, -66.8782322, ST_GeomFromText('POINT(18.1746796 -66.8782322)', 4326), 18.1821792, -66.8940658, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612606', 'Río Seco', 'Stream', 'Puerto Rico', 'PU', 'Hormigueros', 'Mayaguez', 18.1374576, -67.1354573, ST_GeomFromText('POINT(18.1374576 -67.1354573)', 4326), 18.1452351, -67.131013, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612607', 'Río Seco', 'Stream', 'Puerto Rico', 'PU', 'Guayama', 'Central Aguirre', 17.9530227, -66.1879445, ST_GeomFromText('POINT(17.9530227 -66.1879445)', 4326), 18.0352417, -66.1412773, '1981-02-13', '2012-12-31', NULL, NULL, NULL),
  ('1612608', 'Río Sonador', 'Stream', 'Puerto Rico', 'PU', 'San Sebastián', 'Central La Plata', 18.3443938, -67.022401, ST_GeomFromText('POINT(18.3443938 -67.022401)', 4326), 18.2888412, -66.9521221, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612609', 'Río Tallaboa', 'Stream', 'Puerto Rico', 'PU', 'Peñuelas', 'Punta Cucharas', 17.990244, -66.736008, ST_GeomFromText('POINT(17.990244 -66.736008)', 4326), 18.1307932, -66.7151743, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612610', 'Río Tanamá', 'Stream', 'Puerto Rico', 'PU', 'Arecibo', 'Arecibo', 18.4268913, -66.7035082, ST_GeomFromText('POINT(18.4268913 -66.7035082)', 4326), 18.2032901, -66.7510081, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612611', 'Río Toa Vaca', 'Stream', 'Puerto Rico', 'PU', 'Villalba', 'Rio Descalabrado', 18.0999611, -66.4890608, ST_GeomFromText('POINT(18.0999611 -66.4890608)', 4326), 18.1702361, -66.382948, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612612', 'Río Toro', 'Stream', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.186624, -66.7707306, ST_GeomFromText('POINT(18.186624 -66.7707306)', 4326), 18.1674583, -66.7532303, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612613', 'Río Toro', 'Stream', 'Puerto Rico', 'PU', 'Maricao', 'Maricao', 18.1685688, -66.8746211, ST_GeomFromText('POINT(18.1685688 -66.8746211)', 4326), 18.1544026, -66.8835102, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612614', 'Río Toro Negro', 'Stream', 'Puerto Rico', 'PU', 'Ciales', 'Ciales', 18.2952306, -66.4596156, ST_GeomFromText('POINT(18.2952306 -66.4596156)', 4326), 18.1546814, -66.5446168, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612615', 'Río Turabo', 'Stream', 'Puerto Rico', 'PU', 'Caguas', 'Caguas', 18.2257889, -66.0159982, ST_GeomFromText('POINT(18.2257889 -66.0159982)', 4326), 18.1149607, -66.0543317, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612616', 'Río Unibón', 'Stream', 'Puerto Rico', 'PU', 'Morovis', 'Ciales', 18.372172, -66.3957257, ST_GeomFromText('POINT(18.372172 -66.3957257)', 4326), 18.310508, -66.3596142, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612617', 'Río Usabón', 'Stream', 'Puerto Rico', 'PU', 'Aibonito', 'Comerio', 18.1805134, -66.242668, ST_GeomFromText('POINT(18.1805134 -66.242668)', 4326), 18.1466258, -66.2446123, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612618', 'Río Vacas', 'Stream', 'Puerto Rico', 'PU', 'Adjuntas', 'Adjuntas', 18.1794023, -66.7365634, ST_GeomFromText('POINT(18.1794023 -66.7365634)', 4326), 18.1299598, -66.7496192, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612619', 'Río Valenciano', 'Stream', 'Puerto Rico', 'PU', 'Las Piedras', 'Juncos', 18.2374553, -65.9196081, ST_GeomFromText('POINT(18.2374553 -65.9196081)', 4326), 18.1413489, -65.9254408, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612620', 'Río Veguitas', 'Stream', 'Puerto Rico', 'PU', 'Jayuya', 'Jayuya', 18.2021792, -66.5796172, ST_GeomFromText('POINT(18.2021792 -66.5796172)', 4326), 18.1691252, -66.5765615, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612621', 'Río Viejo', 'Stream', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Mayaguez', 18.1244027, -67.1351795, ST_GeomFromText('POINT(18.1244027 -67.1351795)', 4326), 18.0602395, -67.0290669, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612622', 'Río Viví', 'Stream', 'Puerto Rico', 'PU', 'Utuado', 'Utuado', 18.2671761, -66.7082298, ST_GeomFromText('POINT(18.2671761 -66.7082298)', 4326), 18.1491259, -66.6837847, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612623', 'Río Yagüez', 'Stream', 'Puerto Rico', 'PU', 'Mayagüez', 'Mayaguez', 18.2080099, -67.1549019, ST_GeomFromText('POINT(18.2080099 -67.1549019)', 4326), 18.2082886, -67.0326788, '1981-02-13', NULL, 'Official', 'Board Decision', '1966-01-01'),
  ('1612624', 'Río Yahuecas', 'Stream', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.1749576, -66.8012867, ST_GeomFromText('POINT(18.1749576 -66.8012867)', 4326), 18.1349595, -66.7718417, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612625', 'Río Yauco', 'Stream', 'Puerto Rico', 'PU', 'Guayanilla', 'Punta Verraco', 17.981911, -66.7987863, ST_GeomFromText('POINT(17.981911 -66.7987863)', 4326), 18.1535693, -66.9162883, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612626', 'Río Yunes', 'Stream', 'Puerto Rico', 'PU', 'Utuado', 'Florida', 18.3224512, -66.6112843, ST_GeomFromText('POINT(18.3224512 -66.6112843)', 4326), 18.2441217, -66.5812839, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612627', 'Río Zamas', 'Stream', 'Puerto Rico', 'PU', 'Jayuya', 'Jayuya', 18.2099565, -66.6165619, ST_GeomFromText('POINT(18.2099565 -66.6165619)', 4326), 18.175236, -66.5985062, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612633', 'Roca Cocinera', 'Island', 'Puerto Rico', 'PU', 'Arecibo', 'Arecibo', 18.4799447, -66.703786, ST_GeomFromText('POINT(18.4799447 -66.703786)', 4326), NULL, NULL, '1981-02-13', '2011-06-30', 'Official', 'Board Decision', '1958-01-01'),
  ('1612635', 'Roca El Yunque', 'Summit', 'Puerto Rico', 'PU', 'Río Grande', 'El Yunque', 18.3113649, -65.7931345, ST_GeomFromText('POINT(18.3113649 -65.7931345)', 4326), NULL, NULL, '1981-02-13', '2018-03-22', 'Official', 'Board Decision', '1968-01-01'),
  ('1612636', 'Roca Ola', 'Island', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Cabo Rojo', 17.9474657, -67.1821237, ST_GeomFromText('POINT(17.9474657 -67.1821237)', 4326), NULL, NULL, '1981-02-13', '2011-06-30', 'Official', 'Board Decision', '1958-01-01'),
  ('1612637', 'Roca Resuello', 'Island', 'Puerto Rico', 'PU', 'Arecibo', 'Arecibo', 18.4782782, -66.7182306, ST_GeomFromText('POINT(18.4782782 -66.7182306)', 4326), NULL, NULL, '1981-02-13', '2011-06-30', 'Official', 'Board Decision', '1958-03-20'),
  ('1612638', 'Roca Velásquez', 'Island', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.0232958, -67.1776793, ST_GeomFromText('POINT(18.0232958 -67.1776793)', 4326), NULL, NULL, '1981-02-13', '2011-06-30', 'Official', 'Board Decision', '1958-01-01'),
  ('1612668', 'Salinas Fortuna', 'Flat', 'Puerto Rico', 'PU', 'Lajas', 'Guanica', 17.9715003, -66.9900244, ST_GeomFromText('POINT(17.9715003 -66.9900244)', 4326), NULL, NULL, '1981-02-13', '2015-02-06', NULL, NULL, NULL),
  ('1612669', 'Salinas Las Pardas', 'Flat', 'Puerto Rico', 'PU', 'Guánica', 'Guanica', 17.941912, -66.9348981, ST_GeomFromText('POINT(17.941912 -66.9348981)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612670', 'Salinas Providencia', 'Flat', 'Puerto Rico', 'PU', 'Guánica', 'Guanica', 17.9427452, -66.9560094, ST_GeomFromText('POINT(17.9427452 -66.9560094)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612671', 'Jobos Saltillo', 'Falls', 'Puerto Rico', 'PU', 'Utuado', 'Utuado', 18.3218957, -66.6785074, ST_GeomFromText('POINT(18.3218957 -66.6785074)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612672', 'Salto de Doña Juana', 'Falls', 'Puerto Rico', 'PU', 'Orocovis', 'Jayuya', 18.1827356, -66.5118387, ST_GeomFromText('POINT(18.1827356 -66.5118387)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612673', 'Salto de Inabón', 'Gap', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.1529565, -66.8068456, ST_GeomFromText('POINT(18.1529565 -66.8068456)', 4326), NULL, NULL, '1981-02-13', '2016-12-15', NULL, NULL, NULL),
  ('1612674', 'Salto Máquina', 'Gap', 'Puerto Rico', 'PU', 'Hatillo', 'Camuy', 18.4332799, -66.8257317, ST_GeomFromText('POINT(18.4332799 -66.8257317)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612753', 'Sierra de Naranjal', 'Range', 'Puerto Rico', 'PU', 'Las Marías', 'Maricao', 18.2353822, -66.9943869, ST_GeomFromText('POINT(18.2353822 -66.9943869)', 4326), NULL, NULL, '1981-02-13', '2018-03-23', NULL, NULL, NULL),
  ('1612756', 'Sierra de Jájome', 'Range', 'Puerto Rico', 'PU', 'Guayama', 'Cayey', 18.046275, -66.1620403, ST_GeomFromText('POINT(18.046275 -66.1620403)', 4326), NULL, NULL, '1981-02-13', '2018-03-22', NULL, NULL, NULL),
  ('1612757', 'Sierra de Luquillo', 'Range', 'Puerto Rico', 'PU', 'Río Grande', 'El Yunque', 18.2923034, -65.7978693, ST_GeomFromText('POINT(18.2923034 -65.7978693)', 4326), NULL, NULL, '1981-02-13', '2018-03-23', NULL, NULL, NULL),
  ('1612790', 'Tres Hermanas', 'Island', 'Puerto Rico', 'PU', 'Barceloneta', 'Barceloneta', 18.4910555, -66.5743393, ST_GeomFromText('POINT(18.4910555 -66.5743393)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612791', 'Tres Hermanos', 'Island', 'Puerto Rico', 'PU', 'Arecibo', 'Arecibo', 18.4816113, -66.7032304, ST_GeomFromText('POINT(18.4816113 -66.7032304)', 4326), NULL, NULL, '1981-02-13', '2011-06-30', 'Official', 'Board Decision', '1958-01-01'),
  ('1612813', 'Valle de las Cotorras', 'Valley', 'Puerto Rico', 'PU', 'Isabela', 'Quebradillas', 18.41932, -66.9958126, ST_GeomFromText('POINT(18.41932 -66.9958126)', 4326), 18.426591, -66.9963516, '1981-02-13', '2017-03-14', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612876', 'Bahía de la Chiva', 'Bay', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central OE S', 18.1110755, -65.3862691, ST_GeomFromText('POINT(18.1110755 -65.3862691)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612877', 'Bahía Corcho', 'Bay', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central', 18.1074643, -65.4157138, ST_GeomFromText('POINT(18.1074643 -65.4157138)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612878', 'Bahía Icacos', 'Bay', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.1432965, -65.3048798, ST_GeomFromText('POINT(18.1432965 -65.3048798)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612879', 'Bahía Jalova', 'Bay', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East OE S', 18.1216307, -65.3323799, ST_GeomFromText('POINT(18.1216307 -65.3323799)', 4326), NULL, NULL, '1981-02-13', '2012-12-31', NULL, NULL, NULL),
  ('1612880', 'Bahía Playa Blanca', 'Bay', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.1363522, -65.275435, ST_GeomFromText('POINT(18.1363522 -65.275435)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612881', 'Bahía Salinas', 'Bay', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.1441298, -65.297102, ST_GeomFromText('POINT(18.1441298 -65.297102)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612882', 'Bahía Tapón', 'Bay', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central OE S', 18.1113531, -65.4082137, ST_GeomFromText('POINT(18.1113531 -65.4082137)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612884', 'Punta Cabellos Colorados', 'Cape', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central', 18.1613511, -65.3904361, ST_GeomFromText('POINT(18.1613511 -65.3904361)', 4326), NULL, NULL, '1981-02-13', '2011-06-25', 'Official', 'Board Decision', '1958-01-01'),
  ('1612886', 'Cayo de Tierra', 'Island', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central', 18.0888537, -65.4671032, ST_GeomFromText('POINT(18.0888537 -65.4671032)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612887', 'Cayo Chiva', 'Island', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central', 18.1057978, -65.4159916, ST_GeomFromText('POINT(18.1057978 -65.4159916)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612888', 'Cerro Amargura', 'Summit', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central', 18.1515195, -65.3987702, ST_GeomFromText('POINT(18.1515195 -65.3987702)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1612889', 'Cerro Bone', 'Summit', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central', 18.1581782, -65.3878951, ST_GeomFromText('POINT(18.1581782 -65.3878951)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1612890', 'Cerro Camacho', 'Summit', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central', 18.1584075, -65.406398, ST_GeomFromText('POINT(18.1584075 -65.406398)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1612891', 'Cerro Caracas', 'Summit', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central OE S', 18.1109093, -65.4145391, ST_GeomFromText('POINT(18.1109093 -65.4145391)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1612892', 'Cerro del Muerto', 'Summit', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central', 18.156033, -65.3930148, ST_GeomFromText('POINT(18.156033 -65.3930148)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1612893', 'Cerro El Buey', 'Summit', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques West OE S', 18.1063495, -65.5412727, ST_GeomFromText('POINT(18.1063495 -65.5412727)', 4326), NULL, NULL, '1981-02-13', '2018-03-23', NULL, NULL, NULL),
  ('1612894', 'Cerro El Faro', 'Summit', 'Puerto Rico', 'PU', 'Río Grande', 'Rio Grande', 18.3829617, -65.7686473, ST_GeomFromText('POINT(18.3829617 -65.7686473)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1612895', 'Cerro Indio', 'Summit', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.1328326, -65.27847, ST_GeomFromText('POINT(18.1328326 -65.27847)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1612896', 'Cerro Malojillo', 'Summit', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central', 18.1403195, -65.4099232, ST_GeomFromText('POINT(18.1403195 -65.4099232)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1612897', 'Cerro Martineau', 'Summit', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central', 18.1316803, -65.475781, ST_GeomFromText('POINT(18.1316803 -65.475781)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', 'Official', 'Board Decision', '1958-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612898', 'Cerro Matías Jalobre', 'Summit', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.1313018, -65.31726, ST_GeomFromText('POINT(18.1313018 -65.31726)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1612899', 'Cerro Palomas', 'Summit', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.1401975, -65.3471031, ST_GeomFromText('POINT(18.1401975 -65.3471031)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1612900', 'Cerro Playuela', 'Summit', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central OE S', 18.1104557, -65.420884, ST_GeomFromText('POINT(18.1104557 -65.420884)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1612901', 'Cerro Sonadora', 'Summit', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central OE S', 18.1225546, -65.489199, ST_GeomFromText('POINT(18.1225546 -65.489199)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1612905', 'Ensenada Honda', 'Bay', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.118853, -65.3579356, ST_GeomFromText('POINT(18.118853 -65.3579356)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612906', 'Ensenada Sombe', 'Bay', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central OE S', 18.0930203, -65.4615475, ST_GeomFromText('POINT(18.0930203 -65.4615475)', 4326), NULL, NULL, '1981-02-13', '2015-04-24', NULL, NULL, NULL),
  ('1612909', 'Isla Chiva', 'Island', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central OE S', 18.1071868, -65.3840468, ST_GeomFromText('POINT(18.1071868 -65.3840468)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612910', 'Isla de Vieques', 'Island', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central', 18.1230192, -65.4162695, ST_GeomFromText('POINT(18.1230192 -65.4162695)', 4326), NULL, NULL, '1981-02-13', '2011-09-09', 'Official', 'Board Decision', '1950-01-01'),
  ('1612911', 'Isla Yallis', 'Island', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.1480185, -65.3090465, ST_GeomFromText('POINT(18.1480185 -65.3090465)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612912', 'Laguna Algodones', 'Lake', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.1560737, -65.3737693, ST_GeomFromText('POINT(18.1560737 -65.3737693)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612913', 'Laguna Anones', 'Lake', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.1374633, -65.2968241, ST_GeomFromText('POINT(18.1374633 -65.2968241)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612914', 'Laguna Arenas', 'Lake', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques West', 18.1160741, -65.5707156, ST_GeomFromText('POINT(18.1160741 -65.5707156)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612915', 'Laguna El Pobre', 'Lake', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques West', 18.1191294, -65.56266, ST_GeomFromText('POINT(18.1191294 -65.56266)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612916', 'Laguna Kiani', 'Lake', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques West', 18.1146852, -65.5612711, ST_GeomFromText('POINT(18.1146852 -65.5612711)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612917', 'Laguna La Plata', 'Lake', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central OE S', 18.1194085, -65.3779357, ST_GeomFromText('POINT(18.1194085 -65.3779357)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612918', 'Laguna Matías', 'Lake', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.1249639, -65.3290465, ST_GeomFromText('POINT(18.1249639 -65.3290465)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612919', 'Laguna Monte Largo', 'Lake', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.1530183, -65.3629358, ST_GeomFromText('POINT(18.1530183 -65.3629358)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612920', 'Laguna Playa Grande', 'Lake', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques West', 18.0899645, -65.5171037, ST_GeomFromText('POINT(18.0899645 -65.5171037)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612921', 'Laguna Puerto Diablo', 'Lake', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.1446854, -65.3321022, ST_GeomFromText('POINT(18.1446854 -65.3321022)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612922', 'Laguna Yanuel', 'Lake', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.1269082, -65.3721024, ST_GeomFromText('POINT(18.1269082 -65.3721024)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612924', 'Monte Pirata', 'Summit', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques West OE S', 18.0931391, -65.5512716, ST_GeomFromText('POINT(18.0931391 -65.5512716)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL),
  ('1612925', 'Playa Grande', 'Beach', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.1577402, -65.3748804, ST_GeomFromText('POINT(18.1577402 -65.3748804)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612928', 'Puerto Diablo', 'Bay', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.1477407, -65.3321022, ST_GeomFromText('POINT(18.1477407 -65.3321022)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612929', 'Punta Brigadier', 'Cape', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.1585736, -65.3668248, ST_GeomFromText('POINT(18.1585736 -65.3668248)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612930', 'Punta Campanilla', 'Cape', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central', 18.1621844, -65.3993251, ST_GeomFromText('POINT(18.1621844 -65.3993251)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612931', 'Punta Conejo', 'Cape', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central OE S', 18.1085756, -65.3765467, ST_GeomFromText('POINT(18.1085756 -65.3765467)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612932', 'Punta Este', 'Cape', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.13413, -65.2684905, ST_GeomFromText('POINT(18.13413 -65.2684905)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612933', 'Punta Gato', 'Cape', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.143852, -65.3009909, ST_GeomFromText('POINT(18.143852 -65.3009909)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612934', 'Punta Goleta', 'Cape', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.155796, -65.3565468, ST_GeomFromText('POINT(18.155796 -65.3565468)', 4326), NULL, NULL, '1981-02-13', '2011-06-25', 'Official', 'Board Decision', '1958-01-01'),
  ('1612935', 'Punta Icacos', 'Cape', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.144963, -65.3090464, ST_GeomFromText('POINT(18.144963 -65.3090464)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612936', 'Punta Martineau', 'Cape', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central', 18.1438513, -65.4684924, ST_GeomFromText('POINT(18.1438513 -65.4684924)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612937', 'Punta Mulas', 'Cape', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central', 18.1546844, -65.4446034, ST_GeomFromText('POINT(18.1546844 -65.4446034)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612938', 'Punta Negra', 'Cape', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central', 18.0869095, -65.4518252, ST_GeomFromText('POINT(18.0869095 -65.4518252)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612939', 'Punta Salinas', 'Cape', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.1480185, -65.2890463, ST_GeomFromText('POINT(18.1480185 -65.2890463)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612940', 'Punta Vaca', 'Cape', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques West', 18.0805203, -65.5329372, ST_GeomFromText('POINT(18.0805203 -65.5329372)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612941', 'Quebrada Amargura', 'Valley', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central', 18.1620103, -65.4005752, ST_GeomFromText('POINT(18.1620103 -65.4005752)', 4326), 18.1500802, -65.4038702, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1612942', 'Quebrada Cofi', 'Valley', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central', 18.1463003, -65.4490103, ST_GeomFromText('POINT(18.1463003 -65.4490103)', 4326), 18.1308003, -65.4379706, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1612943', 'Quebrada Hueca', 'Valley', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central', 18.1605868, -65.4109665, ST_GeomFromText('POINT(18.1605868 -65.4109665)', 4326), 18.1487632, -65.4059954, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1612944', 'Quebrada La Mina', 'Valley', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central OE S', 18.0957706, -65.4672326, ST_GeomFromText('POINT(18.0957706 -65.4672326)', 4326), 18.1248547, -65.4743229, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1612945', 'Quebrada La Perla', 'Valley', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central OE S', 18.0965253, -65.4813845, ST_GeomFromText('POINT(18.0965253 -65.4813845)', 4326), 18.1102778, -65.4912043, '1981-02-13', '2017-03-02', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612946', 'Quebrada Marunguey', 'Valley', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central', 18.1606541, -65.389608, ST_GeomFromText('POINT(18.1606541 -65.389608)', 4326), 18.1440796, -65.4005961, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1612947', 'Quebrada Pilón', 'Valley', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central OE S', 18.1069341, -65.4696377, ST_GeomFromText('POINT(18.1069341 -65.4696377)', 4326), 18.1136018, -65.4994003, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1612948', 'Quebrada Urbano', 'Valley', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central OE S', 18.09579, -65.491168, ST_GeomFromText('POINT(18.09579 -65.491168)', 4326), 18.1054525, -65.5029756, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1612949', 'Roca Alcatraz', 'Island', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.1232973, -65.3009908, ST_GeomFromText('POINT(18.1232973 -65.3009908)', 4326), NULL, NULL, '1981-02-13', '2011-06-30', 'Official', 'Board Decision', '1958-01-01'),
  ('1612950', 'Roca Cucaracha', 'Island', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.1546849, -65.3226578, ST_GeomFromText('POINT(18.1546849 -65.3226578)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612951', 'Sonda de Vieques', 'Bay', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.2507917, -65.3162692, ST_GeomFromText('POINT(18.2507917 -65.3162692)', 4326), NULL, NULL, '2000-01-01', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1612952', 'Puerto Ferro', 'Bay', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central', 18.1057977, -65.4271028, ST_GeomFromText('POINT(18.1057977 -65.4271028)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612953', 'Puerto Mosquito', 'Bay', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central', 18.1019089, -65.4457141, ST_GeomFromText('POINT(18.1019089 -65.4457141)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612954', 'Puerto Negro', 'Bay', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.1552404, -65.3609914, ST_GeomFromText('POINT(18.1552404 -65.3609914)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612955', 'Punta Arenas', 'Cape', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques West', 18.1191294, -65.5771045, ST_GeomFromText('POINT(18.1191294 -65.5771045)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612956', 'Punta Boca Quebrada', 'Cape', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques West', 18.1024635, -65.5771044, ST_GeomFromText('POINT(18.1024635 -65.5771044)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612957', 'Río Grande De Loiza', 'Stream', 'Puerto Rico', 'PU', 'Loíza', 'Carolina', 18.4382795, -65.87822, ST_GeomFromText('POINT(18.4382795 -65.87822)', 4326), 18.0866289, -66.016831, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612958', 'Bahía de la Ballena', 'Bay', 'Puerto Rico', 'PU', 'Guánica', 'Punta Verraco', 17.9513566, -66.8585086, ST_GeomFromText('POINT(17.9513566 -66.8585086)', 4326), NULL, NULL, '1981-02-13', '2015-08-10', NULL, NULL, NULL),
  ('1612960', 'Cayo Terremoto', 'Island', 'Puerto Rico', 'PU', 'Guánica', 'Guanica', 17.9299678, -66.9723985, ST_GeomFromText('POINT(17.9299678 -66.9723985)', 4326), NULL, NULL, '1981-02-13', '2015-08-10', NULL, NULL, NULL),
  ('1612965', 'Playa Larga', 'Beach', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3213854, -65.2577879, ST_GeomFromText('POINT(18.3213854 -65.2577879)', 4326), NULL, NULL, '1981-02-13', '2020-02-06', 'Official', 'Board Decision', '1950-05-04'),
  ('1612966', 'Punta El Medio', 'Cape', 'Puerto Rico', 'PU', 'Carolina', 'San Juan', 18.4460568, -66.0162766, ST_GeomFromText('POINT(18.4460568 -66.0162766)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612967', 'Quebrada de los Cedros', 'Valley', 'Puerto Rico', 'PU', 'Isabela', 'Isabela', 18.5108227, -67.0958055, ST_GeomFromText('POINT(18.5108227 -67.0958055)', 4326), 18.4800862, -67.0613478, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1612968', 'Río Cayures', 'Stream', 'Puerto Rico', 'PU', 'Santa Isabel', 'Salinas', 17.9680221, -66.3523911, ST_GeomFromText('POINT(17.9680221 -66.3523911)', 4326), 18.0238528, -66.3604469, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612971', 'Cerro de Luis Pena', 'Summit', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3076042, -65.3326056, ST_GeomFromText('POINT(18.3076042 -65.3326056)', 4326), NULL, NULL, '2000-01-01', '2018-03-17', 'Official', 'Board Decision', '1950-05-04'),
  ('1612972', 'Bajo Evelyn', 'Island', 'Puerto Rico', 'PU', 'Naguabo', 'Naguabo', 18.1513502, -65.7409949, ST_GeomFromText('POINT(18.1513502 -65.7409949)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1612977', 'Bahía de Rincón', 'Bay', 'Puerto Rico', 'PU', 'Santa Isabel', 'Salinas', 17.9646889, -66.3329464, ST_GeomFromText('POINT(17.9646889 -66.3329464)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612978', 'Bahía de Sardinas', 'Bay', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3007898, -65.3037692, ST_GeomFromText('POINT(18.3007898 -65.3037692)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1612979', 'Bahía Salina del Sur', 'Bay', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.1313525, -65.3037686, ST_GeomFromText('POINT(18.1313525 -65.3037686)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612980', 'Bahía Salinas', 'Bay', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Cabo Rojo', 17.9480213, -67.199624, ST_GeomFromText('POINT(17.9480213 -67.199624)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612981', 'Bahía Sucia', 'Bay', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Cabo Rojo', 17.9563543, -67.1787903, ST_GeomFromText('POINT(17.9563543 -67.1787903)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612984', 'Balnearin de Añasco', 'Beach', 'Puerto Rico', 'PU', 'Añasco', 'Rincon', 18.2896729, -67.1940698, ST_GeomFromText('POINT(18.2896729 -67.1940698)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612985', 'Balneario Público de Boquerón', 'Beach', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.0132963, -67.1718457, ST_GeomFromText('POINT(18.0132963 -67.1718457)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1612996', 'Cabo el Toro', 'Cape', 'Puerto Rico', 'PU', 'Mayagüez', 'Isla de Mona OE E', 18.1210658, -67.8615747, ST_GeomFromText('POINT(18.1210658 -67.8615747)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1970-01-01'),
  ('1612997', 'Caleta de Cabullones', 'Bay', 'Puerto Rico', 'PU', 'Ponce', 'Playa De Ponce', 17.9646899, -66.5996168, ST_GeomFromText('POINT(17.9646899 -66.5996168)', 4326), NULL, NULL, '1981-02-13', '2015-08-10', 'Official', 'Board Decision', '1979-01-01'),
  ('1613009', 'Caño de San Fernando', 'Stream', 'Puerto Rico', 'PU', 'Guaynabo', 'San Juan', 18.4399462, -66.115444, ST_GeomFromText('POINT(18.4399462 -66.115444)', 4326), 18.4346688, -66.1240552, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613010', 'Caño de Santiago', 'Stream', 'Puerto Rico', 'PU', 'Yabucoa', 'Punta Guayanes', 18.0577429, -65.8265502, ST_GeomFromText('POINT(18.0577429 -65.8265502)', 4326), 18.05052, -65.9107181, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613011', 'Caño Boquernón', 'Lake', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.0077409, -67.1737902, ST_GeomFromText('POINT(18.0077409 -67.1737902)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613013', 'Caño de Martín Peña', 'Stream', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.4382796, -66.0807215, ST_GeomFromText('POINT(18.4382796 -66.0807215)', 4326), 18.4282798, -66.0396101, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613015', 'Caño Madre Vieja', 'Stream', 'Puerto Rico', 'PU', 'Aguadilla', 'Aguadilla', 18.402724, -67.1562918, ST_GeomFromText('POINT(18.402724 -67.1562918)', 4326), 18.4032796, -67.1176802, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613016', 'Caño Majagual', 'Stream', 'Puerto Rico', 'PU', 'Mayagüez', 'Mayaguez', 18.1874552, -67.1601798, ST_GeomFromText('POINT(18.1874552 -67.1601798)', 4326), 18.1896777, -67.1274019, '1981-02-13', '2011-04-29', 'Official', 'Board Decision', '1966-01-01'),
  ('1613026', 'Catarata Coca', 'Falls', 'Puerto Rico', 'PU', 'Río Grande', 'El Yunque', 18.3188417, -65.7718294, ST_GeomFromText('POINT(18.3188417 -65.7718294)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613027', 'Cayo Real', 'Island', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central', 18.088576, -65.4726588, ST_GeomFromText('POINT(18.088576 -65.4726588)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1613028', 'Cayo de Luis Peña', 'Island', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3063451, -65.3329363, ST_GeomFromText('POINT(18.3063451 -65.3329363)', 4326), NULL, NULL, '1981-02-13', '2011-04-29', 'Official', 'Board Decision', '1950-01-01'),
  ('1613029', 'Cayo del Agua', 'Island', 'Puerto Rico', 'PU', 'Culebra', 'Culebra OE W', 18.3119005, -65.3476589, ST_GeomFromText('POINT(18.3119005 -65.3476589)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1613030', 'Cayo Alfeñique', 'Island', 'Puerto Rico', 'PU', 'Santa Isabel', 'Salinas', 17.9269128, -66.3518356, ST_GeomFromText('POINT(17.9269128 -66.3518356)', 4326), NULL, NULL, '1981-02-13', '2011-04-29', 'Official', 'Board Decision', '1958-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613031', 'Cayo Ballena', 'Island', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3474552, -65.2368229, ST_GeomFromText('POINT(18.3474552 -65.2368229)', 4326), NULL, NULL, '1981-02-13', '2011-04-29', 'Official', 'Board Decision', '1950-01-01'),
  ('1613032', 'Cayo Botella', 'Island', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3249557, -65.2407118, ST_GeomFromText('POINT(18.3249557 -65.2407118)', 4326), NULL, NULL, '1981-02-13', '2011-06-06', 'Official', 'Board Decision', '1950-05-04'),
  ('1613033', 'Isla de Cardona', 'Island', 'Puerto Rico', 'PU', 'Ponce', 'Punta Cucharas', 17.9571902, -66.6348952, ST_GeomFromText('POINT(17.9571902 -66.6348952)', 4326), NULL, NULL, '1981-02-13', '2011-09-09', 'Official', 'Board Decision', '1979-01-01'),
  ('1613034', 'Cayo Corral', 'Island', 'Puerto Rico', 'PU', 'Lajas', 'Parguera', 17.9358005, -67.0193436, ST_GeomFromText('POINT(17.9358005 -67.0193436)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613035', 'Cayo Fanduca', 'Island', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.0869039, -67.2149025, ST_GeomFromText('POINT(18.0869039 -67.2149025)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613036', 'Isla de Gata', 'Cape', 'Puerto Rico', 'PU', 'Ponce', 'Playa De Ponce', 17.9627455, -66.6162838, ST_GeomFromText('POINT(17.9627455 -66.6162838)', 4326), NULL, NULL, '1981-02-13', '2011-06-01', 'Official', 'Board Decision', '1979-01-01'),
  ('1613037', 'Cayo Icacos', 'Island', 'Puerto Rico', 'PU', 'Fajardo', 'Cayo Icacos OE N', 18.38634, -65.5887727, ST_GeomFromText('POINT(18.38634 -65.5887727)', 4326), NULL, NULL, '1981-02-13', '2011-04-29', 'Official', 'Board Decision', '1958-01-01'),
  ('1613038', 'Cayo Lobito', 'Island', 'Puerto Rico', 'PU', 'Culebra', 'Culebra OE W', 18.3341217, -65.3926601, ST_GeomFromText('POINT(18.3341217 -65.3926601)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1613039', 'Cayo Lobo', 'Island', 'Puerto Rico', 'PU', 'Culebra', 'Culebra OE W', 18.3243999, -65.3773818, ST_GeomFromText('POINT(18.3243999 -65.3773818)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1613040', 'Cayo María Langa', 'Island', 'Puerto Rico', 'PU', 'Guayanilla', 'Punta Verraco', 17.965523, -66.7501747, ST_GeomFromText('POINT(17.965523 -66.7501747)', 4326), NULL, NULL, '1981-02-13', '2015-08-10', 'Official', 'Board Decision', '1958-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613041', 'Cayo Mata Seca', 'Island', 'Puerto Rico', 'PU', 'Lajas', 'Parguera', 17.9610774, -67.0093436, ST_GeomFromText('POINT(17.9610774 -67.0093436)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1613042', 'Cayo Matojo', 'Island', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3363443, -65.2898799, ST_GeomFromText('POINT(18.3363443 -65.2898799)', 4326), NULL, NULL, '1981-02-13', '2011-04-29', 'Official', 'Board Decision', '1950-01-01'),
  ('1613043', 'Cayo Norte', 'Island', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3368999, -65.2565455, ST_GeomFromText('POINT(18.3368999 -65.2565455)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1613044', 'Cayo Pirata', 'Island', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3063451, -65.2954356, ST_GeomFromText('POINT(18.3063451 -65.2954356)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1613045', 'Cayo Puerca', 'Island', 'Puerto Rico', 'PU', 'Salinas', 'Central Aguirre', 17.9294126, -66.236834, ST_GeomFromText('POINT(17.9294126 -66.236834)', 4326), NULL, NULL, '1981-02-13', '2011-04-29', 'Official', 'Board Decision', '1958-01-01'),
  ('1613046', 'Cayo Ratón', 'Island', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3141226, -65.3532145, ST_GeomFromText('POINT(18.3141226 -65.3532145)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1613047', 'Isla de Ratones', 'Island', 'Puerto Rico', 'PU', 'Ponce', 'Punta Cucharas', 17.9530236, -66.6810071, ST_GeomFromText('POINT(17.9530236 -66.6810071)', 4326), NULL, NULL, '1981-02-13', '2015-08-10', 'Official', 'Board Decision', '1979-01-01'),
  ('1613048', 'Cayo Río', 'Island', 'Puerto Rico', 'PU', 'Peñuelas', 'Punta Cucharas', 17.9824666, -66.7379524, ST_GeomFromText('POINT(17.9824666 -66.7379524)', 4326), NULL, NULL, '1981-02-13', '2015-08-10', NULL, NULL, NULL),
  ('1613049', 'Cayo Sombrerito', 'Island', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3377332, -65.2454341, ST_GeomFromText('POINT(18.3377332 -65.2454341)', 4326), NULL, NULL, '1981-02-13', '2011-04-29', 'Official', 'Board Decision', '1950-01-01'),
  ('1613050', 'Cayo Tiburón', 'Island', 'Puerto Rico', 'PU', 'Culebra', 'Culebra OE E', 18.3449553, -65.237934, ST_GeomFromText('POINT(18.3449553 -65.237934)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613051', 'Cayo Verde', 'Island', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3069007, -65.2904354, ST_GeomFromText('POINT(18.3069007 -65.2904354)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1613052', 'Cayo Yerba', 'Island', 'Puerto Rico', 'PU', 'Culebra', 'Culebra OE W', 18.3188446, -65.3537701, ST_GeomFromText('POINT(18.3188446 -65.3537701)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1613053', 'Cayos de Caracoles', 'Island', 'Puerto Rico', 'PU', 'Santa Isabel', 'Salinas', 17.9283016, -66.3662803, ST_GeomFromText('POINT(17.9283016 -66.3662803)', 4326), NULL, NULL, '1981-02-13', '2011-04-29', 'Official', 'Board Decision', '1958-01-01'),
  ('1613054', 'Cayos Cabezazos', 'Island', 'Puerto Rico', 'PU', 'Santa Isabel', 'Santa Isabel', 17.921635, -66.3829471, ST_GeomFromText('POINT(17.921635 -66.3829471)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613055', 'Cayos Caribes', 'Island', 'Puerto Rico', 'PU', 'Guayama', 'Central Aguirre', 17.9271905, -66.2121114, ST_GeomFromText('POINT(17.9271905 -66.2121114)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613056', 'Isla del Frio', 'Island', 'Puerto Rico', 'PU', 'Ponce', 'Playa De Ponce', 17.9621896, -66.5551713, ST_GeomFromText('POINT(17.9621896 -66.5551713)', 4326), NULL, NULL, '1981-02-13', '2011-06-07', NULL, NULL, NULL),
  ('1613057', 'Cayos Geniquí', 'Island', 'Puerto Rico', 'PU', 'Culebra', 'Culebra OE E', 18.3382888, -65.231545, ST_GeomFromText('POINT(18.3382888 -65.231545)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1613070', 'Cerro Corazón', 'Summit', 'Puerto Rico', 'PU', 'Arroyo', 'Patillas', 18.0128954, -66.0838221, ST_GeomFromText('POINT(18.0128954 -66.0838221)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1613071', 'Cerro Tumbado', 'Summit', 'Puerto Rico', 'PU', 'Guayama', 'Patillas', 18.021878, -66.0951468, ST_GeomFromText('POINT(18.021878 -66.0951468)', 4326), NULL, NULL, '1981-02-13', '2018-03-13', NULL, NULL, NULL),
  ('1613072', 'Cerro Vertero', 'Summit', 'Puerto Rico', 'PU', 'Lajas', 'Guanica', 17.990001, -66.9981312, ST_GeomFromText('POINT(17.990001 -66.9981312)', 4326), NULL, NULL, '1981-02-13', '2018-03-17', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613074', 'Ciénaga Tiburones', 'Swamp', 'Puerto Rico', 'PU', 'Arecibo', 'Arecibo', 18.4730005, -66.6787858, ST_GeomFromText('POINT(18.4730005 -66.6787858)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613075', 'Cordillera Jaicoa', 'Range', 'Puerto Rico', 'PU', 'Moca', 'Moca', 18.4182233, -67.0700234, ST_GeomFromText('POINT(18.4182233 -67.0700234)', 4326), NULL, NULL, '1981-02-13', '2018-03-22', NULL, NULL, NULL),
  ('1613077', 'Cuchilla de Santa Inés', 'Ridge', 'Puerto Rico', 'PU', 'Canóvanas', 'Carolina', 18.406069, -65.8853356, ST_GeomFromText('POINT(18.406069 -65.8853356)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1613078', 'Cuchilla Buena Vista', 'Ridge', 'Puerto Rico', 'PU', 'Utuado', 'Utuado', 18.2678309, -66.6285499, ST_GeomFromText('POINT(18.2678309 -66.6285499)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1613079', 'Chuchilla de Bucarabones', 'Ridge', 'Puerto Rico', 'PU', 'Maricao', 'Maricao', 18.1693275, -66.9076326, ST_GeomFromText('POINT(18.1693275 -66.9076326)', 4326), NULL, NULL, '1981-02-13', '2018-03-23', NULL, NULL, NULL),
  ('1613080', 'Chuchilla de Hato Nuevo', 'Ridge', 'Puerto Rico', 'PU', 'Gurabo', 'Gurabo', 18.2782624, -65.9393107, ST_GeomFromText('POINT(18.2782624 -65.9393107)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1613081', 'Cuchilla El Duque', 'Ridge', 'Puerto Rico', 'PU', 'Naguabo', 'El Yunque', 18.268646, -65.7588482, ST_GeomFromText('POINT(18.268646 -65.7588482)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1613082', 'Cuchilla Naranjo', 'Ridge', 'Puerto Rico', 'PU', 'Luquillo', 'Fajardo', 18.2881866, -65.7333066, ST_GeomFromText('POINT(18.2881866 -65.7333066)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1613084', 'El Alto de Breñas', 'Summit', 'Puerto Rico', 'PU', 'Vega Alta', 'Vega Alta', 18.4804377, -66.3311064, ST_GeomFromText('POINT(18.4804377 -66.3311064)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1613131', 'Isla Monito', 'Island', 'Puerto Rico', 'PU', 'Mayagüez', 'Isla de Mona OE N', 18.1613416, -67.9496314, ST_GeomFromText('POINT(18.1613416 -67.9496314)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613132', 'Isla Piñeros', 'Island', 'Puerto Rico', 'PU', 'Ceiba', 'Cayo Icacos', 18.2521794, -65.591272, ST_GeomFromText('POINT(18.2521794 -65.591272)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613133', 'Islote Número dos', 'Island', 'Puerto Rico', 'PU', 'Carolina', 'Carolina', 18.4410571, -65.9782209, ST_GeomFromText('POINT(18.4410571 -65.9782209)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613135', 'La Curena', 'Summit', 'Puerto Rico', 'PU', 'Añasco', 'Central La Plata', 18.2908707, -67.1111636, ST_GeomFromText('POINT(18.2908707 -67.1111636)', 4326), NULL, NULL, '1981-02-13', '2018-03-20', NULL, NULL, NULL),
  ('1613137', 'Lago Melania', 'Reservoir', 'Puerto Rico', 'PU', 'Guayama', 'Central Aguirre', 17.9782997, -66.1446106, ST_GeomFromText('POINT(17.9782997 -66.1446106)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613138', 'Lago Número Uno', 'Reservoir', 'Puerto Rico', 'PU', 'Ponce', 'Ponce', 18.0655184, -66.5626726, ST_GeomFromText('POINT(18.0655184 -66.5626726)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613139', 'Lago Número Dos', 'Reservoir', 'Puerto Rico', 'PU', 'Ponce', 'Ponce', 18.0630185, -66.5637837, ST_GeomFromText('POINT(18.0630185 -66.5637837)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613140', 'Lago Número Tres', 'Reservoir', 'Puerto Rico', 'PU', 'Ponce', 'Ponce', 18.0594972, -66.5677664, ST_GeomFromText('POINT(18.0594972 -66.5677664)', 4326), NULL, NULL, '1981-02-13', '2013-03-21', NULL, NULL, NULL),
  ('1613141', 'Lago Número Cuatro', 'Reservoir', 'Puerto Rico', 'PU', 'Ponce', 'Ponce', 18.0557936, -66.5717715, ST_GeomFromText('POINT(18.0557936 -66.5717715)', 4326), NULL, NULL, '1981-02-13', '2013-03-21', NULL, NULL, NULL),
  ('1613142', 'Lago Número Cinco', 'Reservoir', 'Puerto Rico', 'PU', 'Ponce', 'Ponce', 18.0594075, -66.5626725, ST_GeomFromText('POINT(18.0594075 -66.5626725)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613143', 'Laguna Los Corozos', 'Lake', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.4396682, -66.0384989, ST_GeomFromText('POINT(18.4396682 -66.0384989)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613144', 'Laguna Zoní', 'Lake', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3202336, -65.2593234, ST_GeomFromText('POINT(18.3202336 -65.2593234)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1613145', 'Quebrada Las Bambúas', 'Valley', 'Puerto Rico', 'PU', 'Caguas', 'Caguas', 18.224644, -66.0137348, ST_GeomFromText('POINT(18.224644 -66.0137348)', 4326), 18.1922439, -66.0163095, '1981-02-13', '2017-02-22', NULL, NULL, NULL),
  ('1613149', 'Los Cerros del Comandante', 'Summit', 'Puerto Rico', 'PU', 'Carolina', 'Carolina', 18.3860754, -65.9956595, ST_GeomFromText('POINT(18.3860754 -65.9956595)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1613150', 'Los Cerros Cusualidad', 'Summit', 'Puerto Rico', 'PU', 'Aguada', 'Aguadilla', 18.3865173, -67.1798312, ST_GeomFromText('POINT(18.3865173 -67.1798312)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1613151', 'Montes de Caneja', 'Summit', 'Puerto Rico', 'PU', 'Guaynabo', 'San Juan', 18.4184262, -66.1076668, ST_GeomFromText('POINT(18.4184262 -66.1076668)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1613152', 'Monte Hormiga', 'Summit', 'Puerto Rico', 'PU', 'Adjuntas', 'Adjuntas', 18.2121788, -66.7421098, ST_GeomFromText('POINT(18.2121788 -66.7421098)', 4326), NULL, NULL, '1981-02-13', '2018-03-23', NULL, NULL, NULL),
  ('1613155', 'Pelá', 'Island', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.2974739, -65.2502165, ST_GeomFromText('POINT(18.2974739 -65.2502165)', 4326), NULL, NULL, '1981-02-13', '2015-02-06', 'Official', 'Board Decision', '1950-01-01'),
  ('1613156', 'Pelaíta', 'Island', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.2994009, -65.2523787, ST_GeomFromText('POINT(18.2994009 -65.2523787)', 4326), NULL, NULL, '1981-02-13', '2011-06-20', NULL, NULL, NULL),
  ('1613157', 'Peñasco Fósil', 'Cliff', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.144963, -65.2940463, ST_GeomFromText('POINT(18.144963 -65.2940463)', 4326), NULL, NULL, '1981-02-13', '2018-03-23', NULL, NULL, NULL),
  ('1613158', 'Península Flamenco', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3355109, -65.3329364, ST_GeomFromText('POINT(18.3355109 -65.3329364)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613159', 'Peñon de Ponce', 'Summit', 'Puerto Rico', 'PU', 'Ponce', 'Punta Cucharas', 17.9798496, -66.6984672, ST_GeomFromText('POINT(17.9798496 -66.6984672)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1613160', 'Peñones de Melones', 'Summit', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Cabo Rojo', 17.9974847, -67.1827008, ST_GeomFromText('POINT(17.9974847 -67.1827008)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1613161', 'Picacho de la Tea', 'Summit', 'Puerto Rico', 'PU', 'Lajas', 'San German', 18.0574717, -67.0128358, ST_GeomFromText('POINT(18.0574717 -67.0128358)', 4326), NULL, NULL, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1613162', 'Piedra del Norte', 'Island', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3207893, -65.2232116, ST_GeomFromText('POINT(18.3207893 -65.2232116)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1613163', 'Piedra Stevens', 'Island', 'Puerto Rico', 'PU', 'Culebra', 'Culebra OE W', 18.3585658, -65.3473813, ST_GeomFromText('POINT(18.3585658 -65.3473813)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1613165', 'Playa de Cascajo', 'Beach', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.2924567, -65.2959912, ST_GeomFromText('POINT(18.2924567 -65.2959912)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1613166', 'Playa de Sardinas', 'Beach', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3021787, -65.3037692, ST_GeomFromText('POINT(18.3021787 -65.3037692)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1613167', 'Playa Brava', 'Beach', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3305111, -65.2857131, ST_GeomFromText('POINT(18.3305111 -65.2857131)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1613168', 'Puerto de Guayanilla', 'Bay', 'Puerto Rico', 'PU', 'Guayanilla', 'Punta Verraco', 17.9799666, -66.7996196, ST_GeomFromText('POINT(17.9799666 -66.7996196)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613169', 'Puerto del Manglar', 'Bay', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3035675, -65.2551566, ST_GeomFromText('POINT(18.3035675 -65.2551566)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613170', 'Puerto Arroyo', 'Bay', 'Puerto Rico', 'PU', 'Guayama', 'Guayama', 17.9563562, -66.0829424, ST_GeomFromText('POINT(17.9563562 -66.0829424)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613171', 'Puerto del Tortuguero', 'Bay', 'Puerto Rico', 'PU', 'Manatí', 'Manati', 18.4730008, -66.4537819, ST_GeomFromText('POINT(18.4730008 -66.4537819)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613172', 'Puerto Patillas', 'Bay', 'Puerto Rico', 'PU', 'Arroyo', 'Guayama', 17.9730225, -66.0162749, ST_GeomFromText('POINT(17.9730225 -66.0162749)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613173', 'Puerto Real', 'Bay', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central', 18.0938535, -65.47877, ST_GeomFromText('POINT(18.0938535 -65.47877)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613175', 'Punta de Maguey', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.2944011, -65.3009913, ST_GeomFromText('POINT(18.2944011 -65.3009913)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1613176', 'Punta de Molinos', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3493994, -65.3384922, ST_GeomFromText('POINT(18.3493994 -65.3384922)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1613177', 'Punta del Soldado', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.2771796, -65.2862687, ST_GeomFromText('POINT(18.2771796 -65.2862687)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1613178', 'Punta Boca Buey', 'Cape', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.0591274, -67.2018467, ST_GeomFromText('POINT(18.0591274 -67.2018467)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613179', 'Punta Boca Prieta', 'Cape', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.0566275, -67.2018467, ST_GeomFromText('POINT(18.0566275 -67.2018467)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613180', 'Punta Guayanilla', 'Cape', 'Puerto Rico', 'PU', 'Peñuelas', 'Punta Verraco', 17.9827443, -66.7551749, ST_GeomFromText('POINT(17.9827443 -66.7551749)', 4326), NULL, NULL, '1981-02-13', '2015-08-10', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613181', 'Punta Guilarte', 'Cape', 'Puerto Rico', 'PU', 'Arroyo', 'Guayama', 17.9619119, -66.0357196, ST_GeomFromText('POINT(17.9619119 -66.0357196)', 4326), NULL, NULL, '1981-02-13', '2011-06-30', 'Official', 'Board Decision', '1958-01-01'),
  ('1613182', 'Punta Higuero', 'Cape', 'Puerto Rico', 'PU', 'Rincón', 'Rincon OE W', 18.362724, -67.2710141, ST_GeomFromText('POINT(18.362724 -67.2710141)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1613183', 'Punta Icacos', 'Cape', 'Puerto Rico', 'PU', 'Yabucoa', 'Punta Guayanes', 18.0691318, -65.7962722, ST_GeomFromText('POINT(18.0691318 -65.7962722)', 4326), NULL, NULL, '1981-02-13', '2011-06-30', 'Official', 'Board Decision', '1958-01-01'),
  ('1613184', 'Punta Las Marias', 'Cape', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.4541119, -66.0393322, ST_GeomFromText('POINT(18.4541119 -66.0393322)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613186', 'Punta Lima', 'Cape', 'Puerto Rico', 'PU', 'Naguabo', 'Naguabo', 18.1788486, -65.690439, ST_GeomFromText('POINT(18.1788486 -65.690439)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613187', 'Punta Manati', 'Cape', 'Puerto Rico', 'PU', 'Manatí', 'Barceloneta', 18.484667, -66.526283, ST_GeomFromText('POINT(18.484667 -66.526283)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613188', 'Punta Matias', 'Cape', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East', 18.1219085, -65.328491, ST_GeomFromText('POINT(18.1219085 -65.328491)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613189', 'Punta Medio Mundo', 'Cape', 'Puerto Rico', 'PU', 'Ceiba', 'Cayo Icacos', 18.2605121, -65.6059944, ST_GeomFromText('POINT(18.2605121 -65.6059944)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613190', 'Punta Melones', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3021786, -65.3107137, ST_GeomFromText('POINT(18.3021786 -65.3107137)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1613191', 'Punta Morrillos', 'Cape', 'Puerto Rico', 'PU', 'Arecibo', 'Arecibo', 18.4824446, -66.7004526, ST_GeomFromText('POINT(18.4824446 -66.7004526)', 4326), NULL, NULL, '1981-02-13', '2011-06-30', 'Official', 'Board Decision', '1958-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613192', 'Punta Muleros', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3035675, -65.2579344, ST_GeomFromText('POINT(18.3035675 -65.2579344)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1613193', 'Punta Arenas', 'Cape', 'Puerto Rico', 'PU', 'Mayagüez', 'Isla de Mona', 18.0827336, -67.9454643, ST_GeomFromText('POINT(18.0827336 -67.9454643)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1970-01-01'),
  ('1613194', 'Punta Ola Grande', 'Cape', 'Puerto Rico', 'PU', 'Guayama', 'Central Aguirre', 17.9308016, -66.1571106, ST_GeomFromText('POINT(17.9308016 -66.1571106)', 4326), NULL, NULL, '1981-02-13', '2011-06-30', 'Official', 'Board Decision', '1958-01-01'),
  ('1613195', 'Punta Padilla', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3007898, -65.2801574, ST_GeomFromText('POINT(18.3007898 -65.2801574)', 4326), NULL, NULL, '1981-02-13', '2011-06-30', 'Official', 'Board Decision', '1950-01-01'),
  ('1613196', 'Punta Peñoncillo', 'Cape', 'Puerto Rico', 'PU', 'Ponce', 'Playa De Ponce', 17.9688563, -66.6179504, ST_GeomFromText('POINT(17.9688563 -66.6179504)', 4326), NULL, NULL, '1981-02-13', '2011-06-30', 'Official', 'Board Decision', '1960-04-26'),
  ('1613197', 'Punta Pepillo', 'Cape', 'Puerto Rico', 'PU', 'Guayanilla', 'Yauco', 18.0010768, -66.7623972, ST_GeomFromText('POINT(18.0010768 -66.7623972)', 4326), NULL, NULL, '1981-02-13', '2011-06-06', 'Official', 'Board Decision', '1958-03-20'),
  ('1613198', 'Punta Puerca', 'Cape', 'Puerto Rico', 'PU', 'Ceiba', 'Isla De Vieques West', 18.2285692, -65.5954385, ST_GeomFromText('POINT(18.2285692 -65.5954385)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613199', 'Punta Quebrada Honda', 'Cape', 'Puerto Rico', 'PU', 'Yabucoa', 'Punta Guayanes', 18.0307997, -65.8304391, ST_GeomFromText('POINT(18.0307997 -65.8304391)', 4326), NULL, NULL, '1981-02-13', '2011-06-30', 'Official', 'Board Decision', '1958-01-01'),
  ('1613200', 'Punta Resaca', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.335511, -65.2912689, ST_GeomFromText('POINT(18.335511 -65.2912689)', 4326), NULL, NULL, '1981-02-13', '2011-06-30', 'Official', 'Board Decision', '1950-01-01'),
  ('1613201', 'Punta San Agustin', 'Cape', 'Puerto Rico', 'PU', 'Río Grande', 'Rio Grande', 18.4193919, -65.8215526, ST_GeomFromText('POINT(18.4193919 -65.8215526)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613202', 'Punta Seria', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3410665, -65.2662681, ST_GeomFromText('POINT(18.3410665 -65.2662681)', 4326), NULL, NULL, '1981-02-13', '2011-06-30', 'Official', 'Board Decision', '1950-01-01'),
  ('1613203', 'Punta Tamarindo', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3188447, -65.3223807, ST_GeomFromText('POINT(18.3188447 -65.3223807)', 4326), NULL, NULL, '1981-02-13', '2011-06-30', 'Official', 'Board Decision', '1950-01-01'),
  ('1613204', 'Punta Tamarindo Grande', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3230113, -65.3304363, ST_GeomFromText('POINT(18.3230113 -65.3304363)', 4326), NULL, NULL, '1981-02-13', '2011-06-30', 'Official', 'Board Decision', '1950-01-01'),
  ('1613205', 'Punta Tampico', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.2985677, -65.3023803, ST_GeomFromText('POINT(18.2985677 -65.3023803)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1613206', 'Punta Vaca', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.2902345, -65.2634902, ST_GeomFromText('POINT(18.2902345 -65.2634902)', 4326), NULL, NULL, '1981-02-13', NULL, 'Official', 'Board Decision', '1950-01-01'),
  ('1613207', 'Quebrada de la Caña', 'Valley', 'Puerto Rico', 'PU', 'Cayey', 'Patillas', 18.1084312, -66.1154765, ST_GeomFromText('POINT(18.1084312 -66.1154765)', 4326), 18.1170854, -66.1005509, '1981-02-13', '2017-03-04', NULL, NULL, NULL),
  ('1613208', 'Quebrada de la Zalla', 'Valley', 'Puerto Rico', 'PU', 'San Sebastián', 'Central La Plata', 18.340189, -67.0184651, ST_GeomFromText('POINT(18.340189 -67.0184651)', 4326), 18.324506, -67.0146893, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1613209', 'Quebrada de las Gatas', 'Valley', 'Puerto Rico', 'PU', 'Moca', 'Central La Plata', 18.3503498, -67.0509147, ST_GeomFromText('POINT(18.3503498 -67.0509147)', 4326), 18.3362627, -67.0565419, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1613210', 'Quebrada de las Quebradillas', 'Valley', 'Puerto Rico', 'PU', 'Caguas', 'Caguas', 18.1948554, -66.0546114, ST_GeomFromText('POINT(18.1948554 -66.0546114)', 4326), 18.1886578, -66.1241249, '1981-02-13', '2017-02-17', NULL, NULL, NULL),
  ('1613211', 'Quebrada de los Méndez', 'Valley', 'Puerto Rico', 'PU', 'Moca', 'Central La Plata', 18.367634, -67.1191406, ST_GeomFromText('POINT(18.367634 -67.1191406)', 4326), 18.3637473, -67.1247103, '1981-02-13', '2017-02-23', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613212', 'Quebrada de Viejo', 'Valley', 'Puerto Rico', 'PU', 'Moca', 'Central La Plata', 18.3565442, -67.068176, ST_GeomFromText('POINT(18.3565442 -67.068176)', 4326), 18.3250746, -67.0568566, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1613213', 'Quebrada del Anón', 'Valley', 'Puerto Rico', 'PU', 'San Sebastián', 'Central La Plata', 18.3198413, -67.0149882, ST_GeomFromText('POINT(18.3198413 -67.0149882)', 4326), 18.3083342, -67.0270149, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1613214', 'Quebrada a Zumbadura', 'Valley', 'Puerto Rico', 'PU', 'Añasco', 'Central La Plata', 18.2789809, -67.0473839, ST_GeomFromText('POINT(18.2789809 -67.0473839)', 4326), 18.2653908, -67.0456165, '1981-02-13', '2017-02-22', NULL, NULL, NULL),
  ('1613215', 'Quebrada Agua Fría', 'Valley', 'Puerto Rico', 'PU', 'Moca', 'Central La Plata', 18.3631718, -67.1074431, ST_GeomFromText('POINT(18.3631718 -67.1074431)', 4326), 18.3513758, -67.0985942, '1981-02-13', '2017-02-22', NULL, NULL, NULL),
  ('1613216', 'Quebrada Alejandro', 'Valley', 'Puerto Rico', 'PU', 'Yabucoa', 'Yabucoa', 18.0776576, -65.9667914, ST_GeomFromText('POINT(18.0776576 -65.9667914)', 4326), 18.060732, -65.9877172, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1613217', 'Quebrada América', 'Valley', 'Puerto Rico', 'PU', 'Las Marías', 'Rosario', 18.2471014, -67.0478083, ST_GeomFromText('POINT(18.2471014 -67.0478083)', 4326), 18.2409055, -67.0260907, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1613218', 'Quebrada Canjilones', 'Valley', 'Puerto Rico', 'PU', 'Maricao', 'Monte Guilarte', 18.1733579, -66.8624807, ST_GeomFromText('POINT(18.1733579 -66.8624807)', 4326), 18.171579, -66.8438983, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1613219', 'Quebrada Aguas Buenas', 'Valley', 'Puerto Rico', 'PU', 'Fajardo', 'Fajardo', 18.2940302, -65.69928, ST_GeomFromText('POINT(18.2940302 -65.69928)', 4326), 18.3031502, -65.7192357, '1981-02-13', '2018-03-24', 'Official', 'Board Decision', '1966-01-01'),
  ('1613220', 'Quebrada Aguas Claras', 'Valley', 'Puerto Rico', 'PU', 'Ceiba', 'Fajardo', 18.2690015, -65.6319653, ST_GeomFromText('POINT(18.2690015 -65.6319653)', 4326), 18.2531084, -65.6707881, '1981-02-13', '2017-02-28', NULL, NULL, NULL),
  ('1613221', 'Quebrada Arena', 'Valley', 'Puerto Rico', 'PU', 'Caguas', 'Aguas Buenas', 18.2944084, -66.0486348, ST_GeomFromText('POINT(18.2944084 -66.0486348)', 4326), 18.3031957, -66.0663746, '1981-02-13', '2017-02-14', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613222', 'Quebrada Arenas', 'Valley', 'Puerto Rico', 'PU', 'Guánica', 'Sabana Grande', 18.0220318, -66.9051281, ST_GeomFromText('POINT(18.0220318 -66.9051281)', 4326), 18.0343676, -66.9146073, '1981-02-13', '2023-07-22', NULL, NULL, NULL),
  ('1613223', 'Quebrada Bárbara', 'Valley', 'Puerto Rico', 'PU', 'Lajas', 'Sabana Grande', 18.02532, -66.963177, ST_GeomFromText('POINT(18.02532 -66.963177)', 4326), 18.0552938, -66.9550854, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1613224', 'Quebrada Berrenchín', 'Valley', 'Puerto Rico', 'PU', 'Yauco', 'Yauco', 18.0262906, -66.8415618, ST_GeomFromText('POINT(18.0262906 -66.8415618)', 4326), 18.0575807, -66.8689514, '1981-02-13', '2017-03-10', NULL, NULL, NULL),
  ('1613225', 'Quebrada Branderi', 'Valley', 'Puerto Rico', 'PU', 'Guayama', 'Guayama', 17.9646106, -66.0872757, ST_GeomFromText('POINT(17.9646106 -66.0872757)', 4326), 17.9730039, -66.1038874, '1981-02-13', '2017-03-01', NULL, NULL, NULL),
  ('1613226', 'Quebrada Cántara', 'Valley', 'Puerto Rico', 'PU', 'Adjuntas', 'Adjuntas', 18.1777575, -66.7375856, ST_GeomFromText('POINT(18.1777575 -66.7375856)', 4326), 18.1856992, -66.7513078, '1981-02-13', '2017-02-14', NULL, NULL, NULL),
  ('1613227', 'Quebrada Carraízo', 'Valley', 'Puerto Rico', 'PU', 'Trujillo Alto', 'Aguas Buenas', 18.3223353, -66.0224819, ST_GeomFromText('POINT(18.3223353 -66.0224819)', 4326), 18.3206146, -66.0355452, '1981-02-13', '2017-02-14', NULL, NULL, NULL),
  ('1613228', 'Quebrada Ceiba', 'Valley', 'Puerto Rico', 'PU', 'Ceiba', 'Fajardo', 18.2809578, -65.6331617, ST_GeomFromText('POINT(18.2809578 -65.6331617)', 4326), 18.2727128, -65.67484, '1981-02-13', '2017-02-28', NULL, NULL, NULL),
  ('1613229', 'Quebrada Chiquita', 'Valley', 'Puerto Rico', 'PU', 'Moca', 'Central La Plata', 18.3389414, -67.0812074, ST_GeomFromText('POINT(18.3389414 -67.0812074)', 4326), 18.3258986, -67.0935531, '1981-02-13', '2017-02-22', NULL, NULL, NULL),
  ('1613230', 'Quebrada El Chorro', 'Valley', 'Puerto Rico', 'PU', 'Lajas', 'San German', 18.044235, -67.0636285, ST_GeomFromText('POINT(18.044235 -67.0636285)', 4326), 18.060086, -67.0551499, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1613231', 'Quebrada Ciénaga', 'Valley', 'Puerto Rico', 'PU', 'Morovis', 'Ciales', 18.2683548, -66.4126968, ST_GeomFromText('POINT(18.2683548 -66.4126968)', 4326), 18.2641067, -66.4011078, '1981-02-13', '2017-02-23', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613232', 'Quebrada Cintrona', 'Valley', 'Puerto Rico', 'PU', 'Las Marías', 'San Sebastian', 18.2750736, -66.98769, ST_GeomFromText('POINT(18.2750736 -66.98769)', 4326), 18.2599787, -66.9883132, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1613233', 'Quebrada Cofresí', 'Valley', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central', 18.1508204, -65.4407666, ST_GeomFromText('POINT(18.1508204 -65.4407666)', 4326), 18.1392011, -65.4312808, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1613234', 'Quebrada Colorada', 'Valley', 'Puerto Rico', 'PU', 'Trujillo Alto', 'Aguas Buenas', 18.3508254, -66.0069877, ST_GeomFromText('POINT(18.3508254 -66.0069877)', 4326), 18.326729, -66.0328842, '1981-02-13', '2017-02-15', NULL, NULL, NULL),
  ('1613235', 'Quebrada Doña Elena', 'Valley', 'Puerto Rico', 'PU', 'Comerío', 'Comerio', 18.249885, -66.2074608, ST_GeomFromText('POINT(18.249885 -66.2074608)', 4326), 18.2502418, -66.2343594, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1613236', 'Quebrada El Revés', 'Valley', 'Puerto Rico', 'PU', 'Orocovis', 'Barranquitas', 18.2325446, -66.3600621, ST_GeomFromText('POINT(18.2325446 -66.3600621)', 4326), 18.2439906, -66.3646744, '1981-02-13', '2017-02-15', NULL, NULL, NULL),
  ('1613237', 'Quebrada Farallón', 'Valley', 'Puerto Rico', 'PU', 'Patillas', 'Patillas', 18.0308607, -66.0294428, ST_GeomFromText('POINT(18.0308607 -66.0294428)', 4326), 18.0454884, -66.0218758, '1981-02-13', '2017-03-06', NULL, NULL, NULL),
  ('1613238', 'Quebrada Fránquez', 'Valley', 'Puerto Rico', 'PU', 'Morovis', 'Ciales', 18.3588172, -66.4282999, ST_GeomFromText('POINT(18.3588172 -66.4282999)', 4326), 18.3318804, -66.4441432, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1613239', 'Quebrada Fría', 'Valley', 'Puerto Rico', 'PU', 'Yauco', 'Sabana Grande', 18.0558768, -66.8876443, ST_GeomFromText('POINT(18.0558768 -66.8876443)', 4326), 18.0613824, -66.8985807, '1981-02-13', '2017-03-08', NULL, NULL, NULL),
  ('1613240', 'Quebrada Fría', 'Valley', 'Puerto Rico', 'PU', 'Las Marías', 'Maricao', 18.234405, -66.9385772, ST_GeomFromText('POINT(18.234405 -66.9385772)', 4326), 18.2259918, -66.9672173, '1981-02-13', '2017-03-03', NULL, NULL, NULL),
  ('1613241', 'Quebrada Grande de Calvache', 'Valley', 'Puerto Rico', 'PU', 'Rincón', 'Rincon', 18.3196699, -67.2308557, ST_GeomFromText('POINT(18.3196699 -67.2308557)', 4326), 18.3170203, -67.1995605, '1981-02-13', '2017-03-08', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613242', 'Quebrada Laguna', 'Valley', 'Puerto Rico', 'PU', 'Vega Baja', 'Manati', 18.3935781, -66.3861943, ST_GeomFromText('POINT(18.3935781 -66.3861943)', 4326), 18.386279, -66.3854819, '1981-02-13', '2017-03-02', NULL, NULL, NULL),
  ('1613243', 'Quebrada Las Ánimas', 'Valley', 'Puerto Rico', 'PU', 'Morovis', 'Ciales', 18.285731, -66.3952799, ST_GeomFromText('POINT(18.285731 -66.3952799)', 4326), 18.2770608, -66.3976321, '1981-02-13', '2017-02-23', NULL, NULL, NULL),
  ('1613244', 'Quebrada Margara', 'Valley', 'Puerto Rico', 'PU', 'Lajas', 'San German', 18.0273239, -67.0860124, ST_GeomFromText('POINT(18.0273239 -67.0860124)', 4326), 18.0542519, -67.0836159, '1981-02-13', '2017-03-09', NULL, NULL, NULL),
  ('1613245', 'Quebrada Mata de Plátano', 'Valley', 'Puerto Rico', 'PU', 'Luquillo', 'Fajardo OE N', 18.3791824, -65.7234506, ST_GeomFromText('POINT(18.3791824 -65.7234506)', 4326), 18.3491837, -65.7449777, '1981-02-13', '2017-02-28', NULL, NULL, NULL),
  ('1613246', 'Quebrada Mayagüecillo', 'Valley', 'Puerto Rico', 'PU', 'Las Marías', 'Maricao', 18.2394702, -66.9857148, ST_GeomFromText('POINT(18.2394702 -66.9857148)', 4326), 18.2090074, -66.9914628, '1981-02-13', '2017-03-03', 'Official', 'Board Decision', '1968-01-01'),
  ('1613247', 'Rada Fajardo', 'Bay', 'Puerto Rico', 'PU', 'Fajardo', 'Cayo Icacos', 18.3646742, -65.5996059, ST_GeomFromText('POINT(18.3646742 -65.5996059)', 4326), NULL, NULL, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613248', 'Represa de Comerío', 'Reservoir', 'Puerto Rico', 'PU', 'Comerío', 'Naranjito', 18.2514633, -66.206801, ST_GeomFromText('POINT(18.2514633 -66.206801)', 4326), NULL, NULL, '1981-02-13', '2015-04-14', NULL, NULL, NULL),
  ('1613249', 'Río Camándulas', 'Stream', 'Puerto Rico', 'PU', 'Luquillo', 'Fajardo', 18.3055095, -65.7246066, ST_GeomFromText('POINT(18.3055095 -65.7246066)', 4326), 18.2960655, -65.7346067, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613250', 'Rio Frío', 'Stream', 'Puerto Rico', 'PU', 'Barranquitas', 'Barranquitas', 18.2194007, -66.270724, ST_GeomFromText('POINT(18.2194007 -66.270724)', 4326), 18.2435663, -66.276002, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613251', 'Río Grande', 'Stream', 'Puerto Rico', 'PU', 'Aguada', 'Aguadilla', 18.3755017, -67.2393473, ST_GeomFromText('POINT(18.3755017 -67.2393473)', 4326), 18.3238379, -67.2076812, '1981-02-13', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613252', 'Río Majada', 'Stream', 'Puerto Rico', 'PU', 'Salinas', 'Coamo', 18.0196864, -66.2590567, ST_GeomFromText('POINT(18.0196864 -66.2590567)', 4326), 18.0732955, -66.1948893, '1981-02-13', NULL, NULL, NULL, NULL),
  ('1613258', 'Sierra Bermeja', 'Range', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Parguera', 17.9956126, -67.1121186, ST_GeomFromText('POINT(17.9956126 -67.1121186)', 4326), NULL, NULL, '1981-02-13', '2018-03-23', NULL, NULL, NULL),
  ('1613259', 'Sierra de Cayey', 'Range', 'Puerto Rico', 'PU', 'Patillas', 'Patillas', 18.1005333, -66.0434614, ST_GeomFromText('POINT(18.1005333 -66.0434614)', 4326), NULL, NULL, '1981-02-13', '2018-03-23', NULL, NULL, NULL),
  ('1613260', 'Sierra de Guardarraya', 'Range', 'Puerto Rico', 'PU', 'Maunabo', 'Yabucoa', 18.0024663, -65.9468359, ST_GeomFromText('POINT(18.0024663 -65.9468359)', 4326), NULL, NULL, '1981-02-13', '2018-03-21', NULL, NULL, NULL),
  ('1613262', 'Playa del Uvero', 'Beach', 'Puerto Rico', 'PU', 'Mayagüez', 'Isla de Mona', 18.0591236, -67.9051861, ST_GeomFromText('POINT(18.0591236 -67.9051861)', 4326), NULL, NULL, '1981-02-13', '2011-06-06', 'Official', 'Board Decision', '1970-01-01'),
  ('1613263', 'Valle de Lajas', 'Valley', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.0110484, -67.1510816, ST_GeomFromText('POINT(18.0110484 -67.1510816)', 4326), 17.9921823, -66.9198985, '1981-02-13', '2018-03-10', NULL, NULL, NULL),
  ('1613264', 'Valle de Yabucoa', 'Valley', 'Puerto Rico', 'PU', 'Yabucoa', 'Punta Guayanes', 18.0563165, -65.8265826, ST_GeomFromText('POINT(18.0563165 -65.8265826)', 4326), 18.0574203, -65.9209082, '1981-02-13', '2017-03-07', NULL, NULL, NULL),
  ('1613316', 'Quebrada Grande', 'Valley', 'Puerto Rico', 'PU', 'Cayey', 'Patillas', 18.1026134, -66.114058, ST_GeomFromText('POINT(18.1026134 -66.114058)', 4326), 18.105815, -66.0749384, '1981-02-13', '2017-03-06', NULL, NULL, NULL),
  ('1613319', 'Punta Arenisca', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3110673, -65.2290449, ST_GeomFromText('POINT(18.3110673 -65.2290449)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1613350', 'Bahía de Mulas', 'Bay', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central', 18.1505179, -65.4504367, ST_GeomFromText('POINT(18.1505179 -65.4504367)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613351', 'Punta de Tierra', 'Cape', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central', 18.0891315, -65.4668254, ST_GeomFromText('POINT(18.0891315 -65.4668254)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1613356', 'Isla San Juan', 'Island', 'Puerto Rico', 'PU', 'Bayamón', 'San Juan', 18.4660562, -66.1037773, ST_GeomFromText('POINT(18.4660562 -66.1037773)', 4326), NULL, NULL, '2000-01-01', '2011-06-01', 'Official', 'Board Decision', '1958-05-27'),
  ('1613358', 'Bahia de Ponce', 'Bay', 'Puerto Rico', 'PU', 'Ponce', 'Punta Cucharas', 17.9738561, -66.6332285, ST_GeomFromText('POINT(17.9738561 -66.6332285)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1613360', 'Bajo Snapper', 'Bay', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.2927344, -65.2684903, ST_GeomFromText('POINT(18.2927344 -65.2684903)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1613364', 'Punta Trulla', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3346778, -65.2457119, ST_GeomFromText('POINT(18.3346778 -65.2457119)', 4326), NULL, NULL, '2000-01-01', '2011-06-30', NULL, NULL, NULL),
  ('1613365', 'Bahía de Oleaje', 'Bay', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3331399, -65.2852678, ST_GeomFromText('POINT(18.3331399 -65.2852678)', 4326), NULL, NULL, '2000-01-01', '2013-08-29', NULL, NULL, NULL),
  ('1613366', 'Bahía de Marejada', 'Bay', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3332888, -65.3001581, ST_GeomFromText('POINT(18.3332888 -65.3001581)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1613368', 'Punta Manchita', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3249557, -65.2629346, ST_GeomFromText('POINT(18.3249557 -65.2629346)', 4326), NULL, NULL, '2000-01-01', '2011-08-05', 'Official', 'Board Decision', '1950-06-28'),
  ('1613369', 'Roca Speck', 'Island', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3263446, -65.263768, ST_GeomFromText('POINT(18.3263446 -65.263768)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1613370', 'Punta Camenterio', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3074562, -65.2865464, ST_GeomFromText('POINT(18.3074562 -65.2865464)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613371', 'Punta Colorado', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.2931865, -65.2832087, ST_GeomFromText('POINT(18.2931865 -65.2832087)', 4326), NULL, NULL, '2000-01-01', '2015-02-16', NULL, NULL, NULL),
  ('1613373', 'Playa Dinero', 'Beach', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.2869014, -65.2843241, ST_GeomFromText('POINT(18.2869014 -65.2843241)', 4326), NULL, NULL, '2000-01-01', '2011-09-09', 'Official', 'Board Decision', '1950-09-14'),
  ('1613374', 'Punta Aloe', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.296901, -65.2954356, ST_GeomFromText('POINT(18.296901 -65.2954356)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1613375', 'Bahía Linda', 'Bay', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.2963455, -65.3009914, ST_GeomFromText('POINT(18.2963455 -65.3009914)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1613377', 'Rociada', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3096784, -65.3357142, ST_GeomFromText('POINT(18.3096784 -65.3357142)', 4326), NULL, NULL, '2000-01-01', '2011-06-30', 'Vacated', 'Board Decision', '1950-09-14'),
  ('1613379', 'Laguna de Lobine', 'Lake', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3013453, -65.3009914, ST_GeomFromText('POINT(18.3013453 -65.3009914)', 4326), NULL, NULL, '2000-01-01', '2015-06-04', NULL, NULL, NULL),
  ('1613380', 'Punta Tamarindo Chico', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3091228, -65.3146027, ST_GeomFromText('POINT(18.3091228 -65.3146027)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1613381', 'Bahía Tarja', 'Bay', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3049563, -65.3121026, ST_GeomFromText('POINT(18.3049563 -65.3121026)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1613382', 'Roca Culumna', 'Island', 'Puerto Rico', 'PU', 'Culebra', 'Culebra OE W', 18.3327329, -65.3918266, ST_GeomFromText('POINT(18.3327329 -65.3918266)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1613383', 'El Ancón', 'Island', 'Puerto Rico', 'PU', 'Culebra', 'Culebra OE W', 18.3516215, -65.3429367, ST_GeomFromText('POINT(18.3516215 -65.3429367)', 4326), NULL, NULL, '2000-01-01', '2011-06-01', 'Official', 'Board Decision', '1950-05-04');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613384', 'Punta Noroeste', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3466217, -65.3426589, ST_GeomFromText('POINT(18.3466217 -65.3426589)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1613390', 'Piragua de Afuera', 'Island', 'Puerto Rico', 'PU', 'Ceiba', 'Cayo Icacos', 18.2727346, -65.5087715, ST_GeomFromText('POINT(18.2727346 -65.5087715)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1613391', 'Piedra del Carabinero', 'Cape', 'Puerto Rico', 'PU', 'Mayagüez', 'Isla de Mona', 18.0682898, -67.9260196, ST_GeomFromText('POINT(18.0682898 -67.9260196)', 4326), NULL, NULL, '2000-01-01', NULL, 'Official', 'Board Decision', '1970-01-01'),
  ('1613395', 'Pico Santa Ana', 'Summit', 'Puerto Rico', 'PU', 'Maricao', 'Maricao', 18.1481546, -66.964067, ST_GeomFromText('POINT(18.1481546 -66.964067)', 4326), NULL, NULL, '2000-01-01', '2018-03-13', NULL, NULL, NULL),
  ('1613398', 'Cabeza de Perro', 'Island', 'Puerto Rico', 'PU', 'Ceiba', 'Isla De Vieques West', 18.2482908, -65.5773829, ST_GeomFromText('POINT(18.2482908 -65.5773829)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1777351', 'Cerros de San Francisco', 'Range', 'Puerto Rico', 'PU', 'Añasco', 'Rincon', 18.3042724, -67.2183998, ST_GeomFromText('POINT(18.3042724 -67.2183998)', 4326), NULL, NULL, '1998-01-29', '2018-03-23', NULL, NULL, NULL),
  ('1848460', 'Island of Puerto Rico', 'Island', 'Puerto Rico', 'PU', 'Orocovis', 'Jayuya', 18.2493993, -66.5010052, ST_GeomFromText('POINT(18.2493993 -66.5010052)', 4326), NULL, NULL, '1999-08-23', NULL, 'Official', 'Congressional Legislation', '1932-01-01'),
  ('1890885', 'Playa Brava', 'Beach', 'Puerto Rico', 'PU', 'Mayagüez', 'Isla de Mona', 18.0569016, -67.877408, ST_GeomFromText('POINT(18.0569016 -67.877408)', 4326), NULL, NULL, '2001-01-29', NULL, 'Official', 'Board Decision', '1970-01-01'),
  ('1990587', 'Aviones Beach', 'Beach', 'Puerto Rico', 'PU', 'Loíza', 'Carolina', 18.4577229, -65.9807209, ST_GeomFromText('POINT(18.4577229 -65.9807209)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1990588', 'Bahía Salinas Beach', 'Beach', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Cabo Rojo', 17.950799, -67.195735, ST_GeomFromText('POINT(17.950799 -67.195735)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1990595', 'Balneario Condado', 'Beach', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.4605007, -66.0837771, ST_GeomFromText('POINT(18.4605007 -66.0837771)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1990597', 'Balneario de Añasco', 'Beach', 'Puerto Rico', 'PU', 'Añasco', 'Rincon', 18.2843953, -67.1915697, ST_GeomFromText('POINT(18.2843953 -67.1915697)', 4326), NULL, NULL, '2000-01-01', '2020-03-09', NULL, NULL, NULL),
  ('1990598', 'Balneario El Tuque', 'Beach', 'Puerto Rico', 'PU', 'Ponce', 'Punta Cucharas', 17.9808004, -66.6432286, ST_GeomFromText('POINT(17.9808004 -66.6432286)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1990599', 'Balneario Municipal de Aguda', 'Beach', 'Puerto Rico', 'PU', 'Aguadilla', 'Aguadilla', 18.3955016, -67.1918475, ST_GeomFromText('POINT(18.3955016 -67.1918475)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1990609', 'Bano Grade Pool', 'Lake', 'Puerto Rico', 'PU', 'Río Grande', 'El Yunque', 18.3016202, -65.7851629, ST_GeomFromText('POINT(18.3016202 -65.7851629)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1990733', 'Cabezo de Perro', 'Island', 'Puerto Rico', 'PU', 'Ceiba', 'Cayo Icacos', 18.2485686, -65.5782162, ST_GeomFromText('POINT(18.2485686 -65.5782162)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1990933', 'Cerro el Vigía', 'Summit', 'Puerto Rico', 'PU', 'Ponce', 'Ponce', 18.0213715, -66.6200457, ST_GeomFromText('POINT(18.0213715 -66.6200457)', 4326), NULL, NULL, '2000-01-01', '2022-06-10', NULL, NULL, NULL),
  ('1991196', 'Corozo Salt Flats', 'Flat', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Cabo Rojo', 17.9552431, -67.2096241, ST_GeomFromText('POINT(17.9552431 -67.2096241)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991249', 'El Alambique Beach', 'Beach', 'Puerto Rico', 'PU', 'Carolina', 'San Juan', 18.4441124, -66.0243321, ST_GeomFromText('POINT(18.4441124 -66.0243321)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991498', 'Culebrita Beach', 'Beach', 'Puerto Rico', 'PU', 'Culebra', 'Culebra OE E', 18.3174559, -65.2276561, ST_GeomFromText('POINT(18.3174559 -65.2276561)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1991504', 'Laguna Lobina', 'Lake', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3013453, -65.3007136, ST_GeomFromText('POINT(18.3013453 -65.3007136)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991505', 'Luis Pena Beach', 'Beach', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3110672, -65.3329363, ST_GeomFromText('POINT(18.3110672 -65.3329363)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991506', 'Melones Beach', 'Beach', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3030119, -65.3107137, ST_GeomFromText('POINT(18.3030119 -65.3107137)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991510', 'Playa Sardinas', 'Beach', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3013453, -65.3032136, ST_GeomFromText('POINT(18.3013453 -65.3032136)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991511', 'Culebra Sound', 'Bay', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3046785, -65.3207139, ST_GeomFromText('POINT(18.3046785 -65.3207139)', 4326), NULL, NULL, '2000-01-01', '2011-08-05', 'Vacated', 'Board Decision', '1950-09-14'),
  ('1991512', 'Puerto de Vieques', 'Bay', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central', 18.1488513, -65.4484923, ST_GeomFromText('POINT(18.1488513 -65.4484923)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991536', 'Isla Ballena', 'Island', 'Puerto Rico', 'PU', 'Guánica', 'Punta Verraco', 17.9446902, -66.8668419, ST_GeomFromText('POINT(17.9446902 -66.8668419)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991537', 'Isla Verde Beach', 'Beach', 'Puerto Rico', 'PU', 'Carolina', 'San Juan', 18.4449457, -66.0140543, ST_GeomFromText('POINT(18.4449457 -66.0140543)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991538', 'Isleta de San Juan', 'Island', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.4641117, -66.0973883, ST_GeomFromText('POINT(18.4641117 -66.0973883)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991614', 'La Pared Beach', 'Beach', 'Puerto Rico', 'PU', 'Luquillo', 'Fajardo OE N', 18.3769878, -65.7151079, ST_GeomFromText('POINT(18.3769878 -65.7151079)', 4326), NULL, NULL, '2000-01-01', '2013-09-18', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1991623', 'Lago Alto', 'Reservoir', 'Puerto Rico', 'PU', 'Trujillo Alto', 'Aguas Buenas', 18.3655048, -66.0048876, ST_GeomFromText('POINT(18.3655048 -66.0048876)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991625', 'Lago de Riego', 'Reservoir', 'Puerto Rico', 'PU', 'Juana Díaz', 'Ponce', 18.0488518, -66.5018389, ST_GeomFromText('POINT(18.0488518 -66.5018389)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991626', 'Lagos de Levitttown', 'Lake', 'Puerto Rico', 'PU', 'Toa Baja', 'Bayamon', 18.4570813, -66.1901835, ST_GeomFromText('POINT(18.4570813 -66.1901835)', 4326), NULL, NULL, '2000-01-01', '2015-04-14', NULL, NULL, NULL),
  ('1991628', 'Laguna de las Mareas', 'Bay', 'Puerto Rico', 'PU', 'Guayama', 'Central Aguirre', 17.9346903, -66.1587774, ST_GeomFromText('POINT(17.9346903 -66.1587774)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991632', 'Lamela Beach', 'Beach', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.0657938, -67.1968466, ST_GeomFromText('POINT(18.0657938 -67.1968466)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991690', 'Los Pozos Beach', 'Beach', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.0021857, -67.1976796, ST_GeomFromText('POINT(18.0021857 -67.1976796)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991713', 'Mar Chiquita', 'Bay', 'Puerto Rico', 'PU', 'Manatí', 'Manati', 18.4738341, -66.4851713, ST_GeomFromText('POINT(18.4738341 -66.4851713)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991861', 'Peninsula de Condado', 'Cape', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.4596674, -66.0784993, ST_GeomFromText('POINT(18.4596674 -66.0784993)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991866', 'Pico Piedra', 'Beach', 'Puerto Rico', 'PU', 'Aguada', 'Aguadilla', 18.385224, -67.2124032, ST_GeomFromText('POINT(18.385224 -67.2124032)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991868', 'Playa Boqueron', 'Beach', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.0102408, -67.1754569, ST_GeomFromText('POINT(18.0102408 -67.1754569)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1991870', 'Playa Bramadero', 'Beach', 'Puerto Rico', 'PU', 'Mayagüez', 'Mayaguez', 18.1699559, -67.1787912, ST_GeomFromText('POINT(18.1699559 -67.1787912)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991871', 'Playa Corcega', 'Beach', 'Puerto Rico', 'PU', 'Rincón', 'Rincon OE W', 18.3291629, -67.2514182, ST_GeomFromText('POINT(18.3291629 -67.2514182)', 4326), NULL, NULL, '2000-01-01', '2013-09-05', NULL, NULL, NULL),
  ('1991872', 'Playa de Guayanilla', 'Beach', 'Puerto Rico', 'PU', 'Guayanilla', 'Yauco', 18.006632, -66.7662862, ST_GeomFromText('POINT(18.006632 -66.7662862)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991873', 'Playa de los Cabes', 'Beach', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.4716114, -66.1198886, ST_GeomFromText('POINT(18.4716114 -66.1198886)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991874', 'Playa de Levittown', 'Beach', 'Puerto Rico', 'PU', 'Toa Baja', 'Bayamon', 18.4527234, -66.1757225, ST_GeomFromText('POINT(18.4527234 -66.1757225)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991875', 'Playa de Vega', 'Beach', 'Puerto Rico', 'PU', 'Vega Baja', 'Manati', 18.4891111, -66.3918366, ST_GeomFromText('POINT(18.4891111 -66.3918366)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991876', 'Playa del Dorado', 'Beach', 'Puerto Rico', 'PU', 'Dorado', 'Vega Alta', 18.4771674, -66.257668, ST_GeomFromText('POINT(18.4771674 -66.257668)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991877', 'Playa del Mar', 'Beach', 'Puerto Rico', 'PU', 'Mayagüez', 'Mayaguez', 18.2402306, -67.1737912, ST_GeomFromText('POINT(18.2402306 -67.1737912)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991878', 'Playa Espinar', 'Beach', 'Puerto Rico', 'PU', 'Aguada', 'Aguadilla', 18.3916128, -67.1962921, ST_GeomFromText('POINT(18.3916128 -67.1962921)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991879', 'Playa Icacos', 'Beach', 'Puerto Rico', 'PU', 'Yabucoa', 'Punta Guayanes', 18.0630211, -65.7996054, ST_GeomFromText('POINT(18.0630211 -65.7996054)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1991880', 'Playa La Puente', 'Beach', 'Puerto Rico', 'PU', 'Rincón', 'Rincon', 18.2624518, -67.1851805, ST_GeomFromText('POINT(18.2624518 -67.1851805)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991881', 'Playa La Ruina', 'Beach', 'Puerto Rico', 'PU', 'Aguadilla', 'Aguadilla', 18.488831, -67.1618476, ST_GeomFromText('POINT(18.488831 -67.1618476)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991882', 'Playa Laguna', 'Beach', 'Puerto Rico', 'PU', 'Mayagüez', 'Mayaguez', 18.1407906, -67.1801801, ST_GeomFromText('POINT(18.1407906 -67.1801801)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991883', 'Playa Las Palmas', 'Beach', 'Puerto Rico', 'PU', 'Arroyo', 'Guayama', 17.9635785, -66.0346085, ST_GeomFromText('POINT(17.9635785 -66.0346085)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991884', 'Playa Mala Pascua', 'Beach', 'Puerto Rico', 'PU', 'Patillas', 'Punta Tuna', 17.9763563, -65.9171068, ST_GeomFromText('POINT(17.9763563 -65.9171068)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991885', 'Playa Mar Chiquita', 'Beach', 'Puerto Rico', 'PU', 'Manatí', 'Manati', 18.471612, -66.4821157, ST_GeomFromText('POINT(18.471612 -66.4821157)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991887', 'Playa Maunabo', 'Beach', 'Puerto Rico', 'PU', 'Maunabo', 'Punta Tuna', 17.9894117, -65.8865509, ST_GeomFromText('POINT(17.9894117 -65.8865509)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991888', 'Playa Puerto Nuevo', 'Beach', 'Puerto Rico', 'PU', 'Vega Baja', 'Manati', 18.4893889, -66.4032256, ST_GeomFromText('POINT(18.4893889 -66.4032256)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991889', 'Playa Puerto Real', 'Beach', 'Puerto Rico', 'PU', 'Fajardo', 'Fajardo', 18.332731, -65.628217, ST_GeomFromText('POINT(18.332731 -65.628217)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991890', 'Playa Punta Arenas', 'Beach', 'Puerto Rico', 'PU', 'Mayagüez', 'Mayaguez', 18.1380129, -67.1835134, ST_GeomFromText('POINT(18.1380129 -67.1835134)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1991891', 'Playa Punta Borinquen', 'Beach', 'Puerto Rico', 'PU', 'Aguadilla', 'Aguadilla OE N', 18.5082748, -67.137403, ST_GeomFromText('POINT(18.5082748 -67.137403)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991892', 'Playa Sabaneta', 'Beach', 'Puerto Rico', 'PU', 'Mayagüez', 'Mayaguez', 18.2346754, -67.1735134, ST_GeomFromText('POINT(18.2346754 -67.1735134)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991893', 'Playa Salinas', 'Beach', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Cabo Rojo', 17.9552432, -67.1907349, ST_GeomFromText('POINT(17.9552432 -67.1907349)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991894', 'Playa Sardinera', 'Beach', 'Puerto Rico', 'PU', 'Mayagüez', 'Isla de Mona', 18.0905111, -67.9401866, ST_GeomFromText('POINT(18.0905111 -67.9401866)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991895', 'Playa Torrecillas Pinones', 'Beach', 'Puerto Rico', 'PU', 'Loíza', 'Carolina', 18.4527231, -65.9629431, ST_GeomFromText('POINT(18.4527231 -65.9629431)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991896', 'Playa Tortuguero', 'Beach', 'Puerto Rico', 'PU', 'Manatí', 'Manati', 18.469112, -66.458782, ST_GeomFromText('POINT(18.469112 -66.458782)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991897', 'Playa Vacia Talega', 'Beach', 'Puerto Rico', 'PU', 'Loíza', 'Carolina', 18.447168, -65.9076648, ST_GeomFromText('POINT(18.447168 -65.9076648)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991898', 'Playuela Beach', 'Beach', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Cabo Rojo', 17.9327441, -67.1876793, ST_GeomFromText('POINT(17.9327441 -67.1876793)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991912', 'Ponce Harbor', 'Bay', 'Puerto Rico', 'PU', 'Ponce', 'Punta Cucharas', 17.9746895, -66.6357285, ST_GeomFromText('POINT(17.9746895 -66.6357285)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991926', 'Punta Ostiones', 'Cape', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.0813487, -67.1968466, ST_GeomFromText('POINT(18.0813487 -67.1968466)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1991929', 'Puerto Chico', 'Bay', 'Puerto Rico', 'PU', 'Fajardo', 'Fajardo', 18.3455082, -65.6340503, ST_GeomFromText('POINT(18.3455082 -65.6340503)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991931', 'Puerto de Las Mareas-Jobos', 'Bay', 'Puerto Rico', 'PU', 'Guayama', 'Central Aguirre', 17.931357, -66.1854444, ST_GeomFromText('POINT(17.931357 -66.1854444)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991933', 'Puerto Maunabo', 'Bay', 'Puerto Rico', 'PU', 'Maunabo', 'Punta Tuna', 17.9860782, -65.9134957, ST_GeomFromText('POINT(17.9860782 -65.9134957)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991939', 'Punta Guilarte Beach', 'Beach', 'Puerto Rico', 'PU', 'Arroyo', 'Guayama', 17.9616341, -66.0357196, ST_GeomFromText('POINT(17.9616341 -66.0357196)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1991940', 'Puntas Arenas Beach', 'Beach', 'Puerto Rico', 'PU', 'Mayagüez', 'Mayaguez', 18.1605119, -67.1832357, ST_GeomFromText('POINT(18.1605119 -67.1832357)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1992219', 'Seven Seas Beach', 'Beach', 'Puerto Rico', 'PU', 'Fajardo', 'Fajardo', 18.3713403, -65.632106, ST_GeomFromText('POINT(18.3713403 -65.632106)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1992271', 'Vajo de Manglar', 'Bay', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.4593898, -66.1109996, ST_GeomFromText('POINT(18.4593898 -66.1109996)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1992434', 'Catarata de la Mina', 'Falls', 'Puerto Rico', 'PU', 'Río Grande', 'El Yunque', 18.3027313, -65.7757183, ST_GeomFromText('POINT(18.3027313 -65.7757183)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1992542', 'Cayo del Agua', 'Island', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3110672, -65.3473811, ST_GeomFromText('POINT(18.3110672 -65.3473811)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1992548', 'Mosquito Bay Beach', 'Beach', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central OE S', 18.0980202, -65.4412696, ST_GeomFromText('POINT(18.0980202 -65.4412696)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1992550', 'Navio Beach', 'Beach', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central OE S', 18.0974646, -65.4387696, ST_GeomFromText('POINT(18.0974646 -65.4387696)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1992551', 'Playa Media Luna', 'Beach', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central OE S', 18.0894094, -65.4557142, ST_GeomFromText('POINT(18.0894094 -65.4557142)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1992553', 'Playa Sun Bay', 'Beach', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central OE S', 18.096909, -65.4604365, ST_GeomFromText('POINT(18.096909 -65.4604365)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1992554', 'Playa Zoni', 'Beach', 'Puerto Rico', 'PU', 'Culebra', 'Culebra OE E', 18.3066229, -65.2443229, ST_GeomFromText('POINT(18.3066229 -65.2443229)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1992628', 'Condado Beach', 'Beach', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.4599451, -66.0779437, ST_GeomFromText('POINT(18.4599451 -66.0779437)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1992641', 'Domes Beach', 'Beach', 'Puerto Rico', 'PU', 'Rincón', 'Rincon OE W', 18.3641129, -67.2701808, ST_GeomFromText('POINT(18.3641129 -67.2701808)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1992661', 'Escambron Beach', 'Beach', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.4655005, -66.0871105, ST_GeomFromText('POINT(18.4655005 -66.0871105)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1992706', 'Gilligans Island', 'Island', 'Puerto Rico', 'PU', 'Guánica', 'Punta Verraco', 17.9424679, -66.8710087, ST_GeomFromText('POINT(17.9424679 -66.8710087)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1992712', 'Bahia de Guanica', 'Bay', 'Puerto Rico', 'PU', 'Guánica', 'Guanica', 17.9619112, -66.9218426, ST_GeomFromText('POINT(17.9619112 -66.9218426)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1992863', 'Joyuda Beach', 'Beach', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.1132918, -67.1821244, ST_GeomFromText('POINT(18.1132918 -67.1821244)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1992874', 'La Damas Pool', 'Lake', 'Puerto Rico', 'PU', 'Luquillo', 'Fajardo', 18.3241195, -65.7421069, ST_GeomFromText('POINT(18.3241195 -65.7421069)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1992922', 'Morro de Humacao', 'Summit', 'Puerto Rico', 'PU', 'Humacao', 'Punta Guayanes', 18.1146849, -65.7815503, ST_GeomFromText('POINT(18.1146849 -65.7815503)', 4326), NULL, NULL, '2000-01-01', '2025-02-12', NULL, NULL, NULL),
  ('1993075', 'Playa Aguila', 'Beach', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Cabo Rojo', 17.9794088, -67.2143464, ST_GeomFromText('POINT(17.9794088 -67.2143464)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993076', 'Playa Buye', 'Beach', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Puerto Real', 18.0402393, -67.2060134, ST_GeomFromText('POINT(18.0402393 -67.2060134)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993077', 'Playa El Combate', 'Beach', 'Puerto Rico', 'PU', 'Cabo Rojo', 'Cabo Rojo', 17.9699647, -67.212402, ST_GeomFromText('POINT(17.9699647 -67.212402)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993078', 'Playa Uvero', 'Beach', 'Puerto Rico', 'PU', 'Mayagüez', 'Isla de Mona', 18.0596792, -67.9049083, ST_GeomFromText('POINT(18.0596792 -67.9049083)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993252', 'Villa Marina Yacht Basin', 'Bay', 'Puerto Rico', 'PU', 'Fajardo', 'Fajardo', 18.3432861, -65.638217, ST_GeomFromText('POINT(18.3432861 -65.638217)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993262', 'Playa el Convento', 'Beach', 'Puerto Rico', 'PU', 'Fajardo', 'Fajardo', 18.3621741, -65.6487727, ST_GeomFromText('POINT(18.3621741 -65.6487727)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993268', 'Ocean Park Beach', 'Beach', 'Puerto Rico', 'PU', 'San Juan', 'San Juan', 18.4546675, -66.0532212, ST_GeomFromText('POINT(18.4546675 -66.0532212)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('2025260', 'Blue Beach', 'Beach', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques Central OE S', 18.1088532, -65.4079359, ST_GeomFromText('POINT(18.1088532 -65.4079359)', 4326), NULL, NULL, '2003-12-18', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2575403', 'Punta Matojo', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3373213, -65.2901052, ST_GeomFromText('POINT(18.3373213 -65.2901052)', 4326), NULL, NULL, '2010-01-26', '2020-02-10', NULL, NULL, NULL),
  ('2575404', 'Punta el Capitán', 'Cape', 'Puerto Rico', 'PU', 'Mayagüez', 'Isla de Mona', 18.1097222, -67.9361111, ST_GeomFromText('POINT(18.1097222 -67.9361111)', 4326), NULL, NULL, '2010-01-26', NULL, NULL, NULL, NULL),
  ('2575405', 'Punta Cabras', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3031869, -65.2811958, ST_GeomFromText('POINT(18.3031869 -65.2811958)', 4326), NULL, NULL, '2010-01-26', '2020-02-06', NULL, NULL, NULL),
  ('2575406', 'Punta Brava', 'Cape', 'Puerto Rico', 'PU', 'Mayagüez', 'Isla de Mona', 18.0561111, -67.8819444, ST_GeomFromText('POINT(18.0561111 -67.8819444)', 4326), NULL, NULL, '2010-01-26', NULL, NULL, NULL, NULL),
  ('2575407', 'Playa Tortuga', 'Beach', 'Puerto Rico', 'PU', 'Culebra', 'Culebra OE E', 18.3182377, -65.227611, ST_GeomFromText('POINT(18.3182377 -65.227611)', 4326), NULL, NULL, '2010-01-26', '2020-02-07', NULL, NULL, NULL),
  ('2575408', 'Playa los Dátiles', 'Beach', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.2981202, -65.3008804, ST_GeomFromText('POINT(18.2981202 -65.3008804)', 4326), NULL, NULL, '2010-01-26', '2020-02-05', NULL, NULL, NULL),
  ('2575409', 'Playa del Este', 'Beach', 'Puerto Rico', 'PU', 'Culebra', 'Culebra OE E', 18.3168868, -65.226023, ST_GeomFromText('POINT(18.3168868 -65.226023)', 4326), NULL, NULL, '2010-01-26', '2020-02-05', NULL, NULL, NULL),
  ('2575410', 'Playa del Cocal', 'Beach', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.302973, -65.3096954, ST_GeomFromText('POINT(18.302973 -65.3096954)', 4326), NULL, NULL, '2010-01-26', '2020-02-07', NULL, NULL, NULL),
  ('2575412', 'Playa de Tórtola', 'Beach', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3319444, -65.2722222, ST_GeomFromText('POINT(18.3319444 -65.2722222)', 4326), NULL, NULL, '2010-01-26', '2020-02-06', NULL, NULL, NULL),
  ('2575413', 'Playa de Magollo', 'Beach', 'Puerto Rico', 'PU', 'Culebra', 'Culebra', 18.3092435, -65.3153695, ST_GeomFromText('POINT(18.3092435 -65.3153695)', 4326), NULL, NULL, '2010-01-26', '2020-02-07', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2575415', 'Laguna Garay', 'Bay', 'Puerto Rico', 'PU', 'Culebra', 'Culebra OE E', 18.3163626, -65.2315941, ST_GeomFromText('POINT(18.3163626 -65.2315941)', 4326), NULL, NULL, '2010-01-26', '2020-02-06', NULL, NULL, NULL),
  ('2575416', 'Isla Desecheo', 'Island', 'Puerto Rico', 'PU', 'Mayagüez', 'Isla Desecheo', 18.3840427, -67.4807507, ST_GeomFromText('POINT(18.3840427 -67.4807507)', 4326), NULL, NULL, '2010-01-26', '2020-02-07', NULL, NULL, NULL),
  ('2575417', 'Ensenada Yegua', 'Bay', 'Puerto Rico', 'PU', 'Fajardo', 'Fajardo OE N', 18.3875, -65.6255556, ST_GeomFromText('POINT(18.3875 -65.6255556)', 4326), NULL, NULL, '2010-01-26', '2011-06-01', 'Official', 'Board Decision', '1974-12-10'),
  ('2575419', 'Cayo Tuna', 'Island', 'Puerto Rico', 'PU', 'Culebra', 'Culebra OE W', 18.3358199, -65.3927647, ST_GeomFromText('POINT(18.3358199 -65.3927647)', 4326), NULL, NULL, '2010-01-26', '2020-02-07', 'Official', 'Board Decision', '1950-05-04'),
  ('2575420', 'Cayo Desgraciado', 'Island', 'Puerto Rico', 'PU', 'Ponce', 'Playa De Ponce', 17.9658333, -66.5655556, ST_GeomFromText('POINT(17.9658333 -66.5655556)', 4326), NULL, NULL, '2010-01-26', NULL, NULL, NULL, NULL),
  ('2575421', 'Cayo Conejo', 'Island', 'Puerto Rico', 'PU', 'Vieques', 'Isla De Vieques East OE S', 18.1222803, -65.3079639, ST_GeomFromText('POINT(18.1222803 -65.3079639)', 4326), NULL, NULL, '2010-01-26', '2020-02-06', NULL, NULL, NULL),
  ('2575425', 'Marc Point (historical)', 'Cape', 'Puerto Rico', 'PU', 'Culebra', 'Culebra OE E', 18.325, -65.2263889, ST_GeomFromText('POINT(18.325 -65.2263889)', 4326), NULL, NULL, '2010-01-26', '2020-02-07', NULL, NULL, NULL),
  ('2575426', 'Las Lavanderas', 'Island', 'Puerto Rico', 'PU', 'Ceiba', 'Cayo Icacos', 18.2666667, -65.55, ST_GeomFromText('POINT(18.2666667 -65.55)', 4326), NULL, NULL, '2010-01-26', '2020-02-10', 'Official', 'Board Decision', '1958-02-06'),
  ('2575427', 'Isleta Marina', 'Island', 'Puerto Rico', 'PU', 'Fajardo', 'Cayo Icacos', 18.3395966, -65.6181622, ST_GeomFromText('POINT(18.3395966 -65.6181622)', 4326), NULL, NULL, '2010-01-26', '2013-08-30', NULL, NULL, NULL),
  ('2575428', 'Isla de Jueyes', 'Island', 'Puerto Rico', 'PU', 'Ponce', 'Playa De Ponce', 17.9611111, -66.59, ST_GeomFromText('POINT(17.9611111 -66.59)', 4326), NULL, NULL, '2010-01-26', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2575430', 'Cerro Anterior', 'Summit', 'Puerto Rico', 'PU', 'Mayagüez', 'Rosario', 18.2028518, -67.1235819, ST_GeomFromText('POINT(18.2028518 -67.1235819)', 4326), NULL, NULL, '2010-01-26', '2018-03-13', 'Official', 'Board Decision', '1958-02-06'),
  ('2575431', 'Cayo Botijuela', 'Island', 'Puerto Rico', 'PU', 'Culebra', 'Culebra OE W', 18.3712531, -65.3766506, ST_GeomFromText('POINT(18.3712531 -65.3766506)', 4326), NULL, NULL, '2010-01-26', '2020-02-07', 'Official', 'Board Decision', '1958-06-28'),
  ('2575433', 'Gata Islets', 'Island', 'Puerto Rico', 'PU', 'Ponce', 'Playa De Ponce', 17.9666667, -66.6166667, ST_GeomFromText('POINT(17.9666667 -66.6166667)', 4326), NULL, NULL, '2010-01-26', '2020-12-30', 'Official', 'Board Decision', '1958-02-06'),
  ('2749934', 'Lago La Plata', 'Reservoir', 'Puerto Rico', 'PU', 'Toa Alta', 'Naranjito', 18.3243812, -66.2327957, ST_GeomFromText('POINT(18.3243812 -66.2327957)', 4326), NULL, NULL, '2013-09-04', NULL, NULL, NULL, NULL),
  ('2749954', 'Lago Toa Vaca', 'Reservoir', 'Puerto Rico', 'PU', 'Villalba', 'Rio Descalabrado', 18.1010685, -66.4732933, ST_GeomFromText('POINT(18.1010685 -66.4732933)', 4326), NULL, NULL, '2013-09-04', NULL, NULL, NULL, NULL),
  ('2749975', 'Lago Cerrillos', 'Reservoir', 'Puerto Rico', 'PU', 'Ponce', 'Ponce', 18.0888306, -66.5792084, ST_GeomFromText('POINT(18.0888306 -66.5792084)', 4326), NULL, NULL, '2013-09-04', NULL, NULL, NULL, NULL),
  ('2786293', 'Quebrada Sartilla', 'Valley', 'Puerto Rico', 'PU', 'Adjuntas', 'Monte Guilarte', 18.188632, -66.7755723, ST_GeomFromText('POINT(18.188632 -66.7755723)', 4326), 18.1991263, -66.7661235, '2018-09-26', '2025-02-19', NULL, NULL, NULL),
  ('2805866', 'Balneario de Rincón', 'Beach', 'Puerto Rico', 'PU', 'Rincón', 'Rincon OE W', 18.3376436, -67.2541605, ST_GeomFromText('POINT(18.3376436 -67.2541605)', 4326), NULL, NULL, '2020-03-09', NULL, NULL, NULL, NULL);


COMMIT;
SET unique_checks = 1;
SET autocommit = 1;

-- PR complete: 1,828 features loaded
