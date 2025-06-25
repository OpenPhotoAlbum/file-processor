USE kin;

-- GNIS Geographic Features for MP
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
  ('1390291', 'Bo''bo'' Achugao Lagu', 'Spring', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2363889, 145.7641667, ST_GeomFromText('POINT(15.2363889 145.7641667)', 4326), NULL, NULL, '2000-01-01', '2012-08-15', NULL, NULL, NULL),
  ('1390292', 'Landeran Achugao', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2391667, 145.7655556, ST_GeomFromText('POINT(15.2391667 145.7655556)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390293', 'Puntan Achugao', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2486111, 145.7669444, ST_GeomFromText('POINT(15.2486111 145.7669444)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390295', 'Unai Achugao', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2436111, 145.7594444, ST_GeomFromText('POINT(15.2436111 145.7594444)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390296', 'Laderan Adilok', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.1858333, 145.7602778, ST_GeomFromText('POINT(15.1858333 145.7602778)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390299', 'Puntan Afetna', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.1280556, 145.6897222, ST_GeomFromText('POINT(15.1280556 145.6897222)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390300', 'Unai Afetna', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.1302778, 145.6905556, ST_GeomFromText('POINT(15.1302778 145.6905556)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390301', 'Afuefuniya Point', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Rota', 'Rota', 14.1122222, 145.1952778, ST_GeomFromText('POINT(14.1122222 145.1952778)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390302', 'Saddok As Agatan', 'Stream', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.2383333, 145.7486111, ST_GeomFromText('POINT(15.2383333 145.7486111)', 4326), 15.2383333, 145.7486111, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390303', 'Agingan', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Tinian', 15.1147222, 145.6991667, ST_GeomFromText('POINT(15.1147222 145.6991667)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1390304', 'Laderan Agingan', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Tinian', 15.1166667, 145.6997222, ST_GeomFromText('POINT(15.1166667 145.6997222)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390305', 'Puntan Agingan', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Tinian', 15.1188889, 145.6886111, ST_GeomFromText('POINT(15.1188889 145.6886111)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390307', 'Aguijan Island', 'Island', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Aguijan', 14.8516667, 145.5569444, ST_GeomFromText('POINT(14.8516667 145.5569444)', 4326), NULL, NULL, '2000-01-01', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('1390311', 'Laderan I Akgak', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.1977778, 145.7466667, ST_GeomFromText('POINT(15.1977778 145.7466667)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390314', 'Alamagan Island', 'Island', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Alamagan Island', 17.6016667, 145.8383333, ST_GeomFromText('POINT(17.6016667 145.8383333)', 4326), NULL, NULL, '2000-01-01', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('1390315', 'Anatahan Island', 'Island', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Anatahan Island', 16.3577778, 145.6661111, ST_GeomFromText('POINT(16.3577778 145.6661111)', 4326), NULL, NULL, '2000-01-01', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('1390316', 'Angyuta Island', 'Island', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Rota', 'Rota', 14.1344444, 145.1291667, ST_GeomFromText('POINT(14.1344444 145.1291667)', 4326), NULL, NULL, '2000-01-01', '2021-08-06', NULL, NULL, NULL),
  ('1390317', 'Apaan Bay', 'Bay', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Pagan Island', 18.1197222, 145.7547222, ST_GeomFromText('POINT(18.1197222 145.7547222)', 4326), NULL, NULL, '2000-01-01', NULL, 'Official', 'Board Decision', '1955-01-01'),
  ('1390319', 'Apansanmeena', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Pagan Island', 18.1188889, 145.7652778, ST_GeomFromText('POINT(18.1188889 145.7652778)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390320', 'Apansantate', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Pagan Island', 18.1055556, 145.7725, ST_GeomFromText('POINT(18.1055556 145.7725)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1390321', 'Kannat I Apikot', 'Stream', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.2161111, 145.7366667, ST_GeomFromText('POINT(15.2161111 145.7366667)', 4326), 15.2161111, 145.7366667, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390322', 'Puntan Asiga', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian', 15.0566667, 145.6561111, ST_GeomFromText('POINT(15.0566667 145.6561111)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390324', 'Unai Asiga', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian', 15.0405556, 145.6447222, ST_GeomFromText('POINT(15.0405556 145.6447222)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390325', 'Asuncion Island', 'Island', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Asuncion Island', 19.6677778, 145.4044444, ST_GeomFromText('POINT(19.6677778 145.4044444)', 4326), NULL, NULL, '2000-01-01', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('1390326', 'Asuzudo Point', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Rota', 'Rota OE E', 14.1986111, 145.2408333, ST_GeomFromText('POINT(14.1986111 145.2408333)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390328', 'Puntan Atgidon', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian OE W', 15.015, 145.5811111, ST_GeomFromText('POINT(15.015 145.5811111)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390330', 'Unai Babui', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian OE W', 15.0769444, 145.6194444, ST_GeomFromText('POINT(15.0769444 145.6194444)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390331', 'Banaderu', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE N', 15.2777778, 145.8133333, ST_GeomFromText('POINT(15.2777778 145.8133333)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390332', 'Laderan Banaderu', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE N', 15.2763889, 145.8066667, ST_GeomFromText('POINT(15.2763889 145.8066667)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390333', 'Bandeera', 'Summit', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Mount Pagan', 18.1302778, 145.7638889, ST_GeomFromText('POINT(18.1302778 145.7638889)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1390334', 'Banzai Cliff', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE N', 15.2858333, 145.8119444, ST_GeomFromText('POINT(15.2858333 145.8119444)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390335', 'Laderan Bapot', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian OE S', 14.9866667, 145.6536111, ST_GeomFromText('POINT(14.9866667 145.6536111)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390336', 'Puntan Bapot', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.1544444, 145.7677778, ST_GeomFromText('POINT(15.1544444 145.7677778)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390337', 'Unai Baput', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.1616667, 145.7608333, ST_GeomFromText('POINT(15.1616667 145.7608333)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390339', 'Puntan Barangka', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian OE S', 14.9702778, 145.6633333, ST_GeomFromText('POINT(14.9702778 145.6633333)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390344', 'Carolinas', 'Summit', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian OE S', 14.9338889, 145.6366667, ST_GeomFromText('POINT(14.9338889 145.6366667)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390345', 'Puntan Carolinas', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian OE S', 14.9219444, 145.6330556, ST_GeomFromText('POINT(14.9219444 145.6330556)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390348', 'Lagunan Chalan Kanoa', 'Bay', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.1367173, 145.6934033, ST_GeomFromText('POINT(15.1367173 145.6934033)', 4326), NULL, NULL, '2000-01-01', '2020-03-03', NULL, NULL, NULL),
  ('1390349', 'Unai Chalan Kanoa', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.145, 145.6977778, ST_GeomFromText('POINT(15.145 145.6977778)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390350', 'Laderan Chiget', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian', 15.0586111, 145.6491667, ST_GeomFromText('POINT(15.0586111 145.6491667)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1390351', 'Puntan Chiget', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian', 15.0594444, 145.6555556, ST_GeomFromText('POINT(15.0594444 145.6555556)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390353', 'Unai Chiget', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian', 15.0605556, 145.6541667, ST_GeomFromText('POINT(15.0605556 145.6541667)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390354', 'Unai Chulu', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian OE W', 15.0708333, 145.6136111, ST_GeomFromText('POINT(15.0708333 145.6136111)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390356', 'Laderan Dagu', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian OE S', 14.9961111, 145.6547222, ST_GeomFromText('POINT(14.9961111 145.6547222)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390357', 'Laderan Dagu', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.1358333, 145.73, ST_GeomFromText('POINT(15.1358333 145.73)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390359', 'Laderan Dandan', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.1538889, 145.7302778, ST_GeomFromText('POINT(15.1538889 145.7302778)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390360', 'Puntan Dandan', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE S', 15.1216667, 145.7519444, ST_GeomFromText('POINT(15.1216667 145.7519444)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390362', 'Unai Dandan', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.1344444, 145.7394444, ST_GeomFromText('POINT(15.1344444 145.7394444)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390363', 'Unai Dangkolo', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian', 15.0355556, 145.6461111, ST_GeomFromText('POINT(15.0355556 145.6461111)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390365', 'Degusa', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Pagan Island', 18.1125, 145.7869444, ST_GeomFromText('POINT(18.1125 145.7869444)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1390367', 'Unai Denikuio Agingan', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Tinian', 15.1119444, 145.7011111, ST_GeomFromText('POINT(15.1119444 145.7011111)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390368', 'Puntan Diapblo', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian OE SW', 14.9947222, 145.5838889, ST_GeomFromText('POINT(14.9947222 145.5838889)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390370', 'Puntan Do''gas', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2411111, 145.7519444, ST_GeomFromText('POINT(15.2411111 145.7519444)', 4326), NULL, NULL, '2000-01-01', '2012-08-15', NULL, NULL, NULL),
  ('1390371', 'East Island', 'Island', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Maug Island', 20.0219444, 145.2352778, ST_GeomFromText('POINT(20.0219444 145.2352778)', 4326), NULL, NULL, '2000-01-01', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('1390373', 'Kannat I Etdot', 'Stream', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.1561111, 145.7286111, ST_GeomFromText('POINT(15.1561111 145.7286111)', 4326), 15.1561111, 145.7286111, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390374', 'Laderan I Etdot', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.1788889, 145.7333333, ST_GeomFromText('POINT(15.1788889 145.7333333)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390376', 'I Fadang', 'Bench', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Tinian', 15.1197222, 145.7275, ST_GeomFromText('POINT(15.1197222 145.7275)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390379', 'Kannat Falipe', 'Stream', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.1977778, 145.7275, ST_GeomFromText('POINT(15.1977778 145.7275)', 4326), 15.1977778, 145.7275, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390381', 'Kannat Fanaganan Kattan', 'Stream', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.2069444, 145.7272222, ST_GeomFromText('POINT(15.2069444 145.7272222)', 4326), 15.2069444, 145.7272222, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390382', 'Kannat Fanaganan Lichan', 'Stream', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.2061111, 145.7236111, ST_GeomFromText('POINT(15.2061111 145.7236111)', 4326), 15.2061111, 145.7236111, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1390384', 'Kannat Fanhang Kattan', 'Stream', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2336111, 145.7775, ST_GeomFromText('POINT(15.2336111 145.7775)', 4326), 15.2336111, 145.7775, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390385', 'Kannat Fanhang Lichan', 'Stream', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2266667, 145.7775, ST_GeomFromText('POINT(15.2266667 145.7775)', 4326), 15.2266667, 145.7775, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390386', 'Unai Fanhang', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2241667, 145.7880556, ST_GeomFromText('POINT(15.2241667 145.7880556)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390387', 'Puntan As Fani', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Rota', 'Rota OE E', 14.1616667, 145.2791667, ST_GeomFromText('POINT(14.1616667 145.2791667)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390390', 'Kannat Fanochuluyan', 'Stream', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE N', 15.2566667, 145.8077778, ST_GeomFromText('POINT(15.2566667 145.8077778)', 4326), 15.2566667, 145.8077778, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390391', 'Bahia Fanonchuluyan', 'Bay', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE N', 15.2529674, 145.8153177, ST_GeomFromText('POINT(15.2529674 145.8153177)', 4326), NULL, NULL, '2000-01-01', '2020-03-03', NULL, NULL, NULL),
  ('1390392', 'Puntan Fanonchuluyan', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE N', 15.2511111, 145.8091667, ST_GeomFromText('POINT(15.2511111 145.8091667)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390393', 'Farallon de Medinilla', 'Island', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Farallon de Medinilla', 16.0191667, 146.0775, ST_GeomFromText('POINT(16.0191667 146.0775)', 4326), NULL, NULL, '2000-01-01', NULL, 'Official', 'Board Decision', '1955-01-01'),
  ('1390394', 'Farallon de Pajaros', 'Island', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Farallon de Pajaros', 20.5380556, 144.8980556, ST_GeomFromText('POINT(20.5380556 144.8980556)', 4326), NULL, NULL, '2000-01-01', NULL, 'Official', 'Board Decision', '1955-01-01'),
  ('1390396', 'Puntan Fina''atkos', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Rota', 'Rota OE E', 14.1872222, 145.2869444, ST_GeomFromText('POINT(14.1872222 145.2869444)', 4326), NULL, NULL, '2000-01-01', '2012-11-13', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1390399', 'Puntan Flores', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.2297222, 145.7380556, ST_GeomFromText('POINT(15.2297222 145.7380556)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390400', 'Kannat As Frailan', 'Stream', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.235, 145.79, ST_GeomFromText('POINT(15.235 145.79)', 4326), 15.235, 145.79, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390401', 'Okso Frailon', 'Summit', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.2208333, 145.7383333, ST_GeomFromText('POINT(15.2208333 145.7383333)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390408', 'Laderan Gayan', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Tinian', 15.1041667, 145.7422222, ST_GeomFromText('POINT(15.1041667 145.7422222)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390411', 'Kannat Gloria', 'Stream', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2002778, 145.7786111, ST_GeomFromText('POINT(15.2002778 145.7786111)', 4326), 15.2002778, 145.7786111, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390412', 'Puntan Gloria', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.1994444, 145.7788889, ST_GeomFromText('POINT(15.1994444 145.7788889)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390413', 'Laderan Gntot', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian', 15.0572222, 145.6330556, ST_GeomFromText('POINT(15.0572222 145.6330556)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390416', 'Laderan Gonna''', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Tinian', 15.1194444, 145.7177778, ST_GeomFromText('POINT(15.1194444 145.7177778)', 4326), NULL, NULL, '2000-01-01', '2012-11-13', NULL, NULL, NULL),
  ('1390419', 'Guguan Island', 'Island', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Guguan Island', 17.315, 145.8477778, ST_GeomFromText('POINT(17.315 145.8477778)', 4326), NULL, NULL, '2000-01-01', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('1390421', 'Hagoi', 'Lake', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian OE W', 15.0669444, 145.6222222, ST_GeomFromText('POINT(15.0669444 145.6222222)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1390422', 'Hagoi Susupi', 'Lake', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.1521464, 145.7121585, ST_GeomFromText('POINT(15.1521464 145.7121585)', 4326), NULL, NULL, '2000-01-01', '2020-03-03', NULL, NULL, NULL),
  ('1390423', 'Hakmang', 'Bench', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.1622222, 145.7733333, ST_GeomFromText('POINT(15.1622222 145.7733333)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390424', 'Laderan Hakmang', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.1588889, 145.7830556, ST_GeomFromText('POINT(15.1588889 145.7830556)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390425', 'Puntan Hakmang', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.15, 145.7858333, ST_GeomFromText('POINT(15.15 145.7858333)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390427', 'Unai Hakmang', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.1519444, 145.7861111, ST_GeomFromText('POINT(15.1519444 145.7861111)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390429', 'Kannat Halaihai', 'Stream', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.1827778, 145.7777778, ST_GeomFromText('POINT(15.1827778 145.7777778)', 4326), 15.1827778, 145.7777778, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390430', 'Puntan Halaihai', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.1802778, 145.7813889, ST_GeomFromText('POINT(15.1802778 145.7813889)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390431', 'Unai Halaihai', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.1825, 145.7786111, ST_GeomFromText('POINT(15.1825 145.7786111)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390433', 'Saddok I Hasngot', 'Stream', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2086111, 145.7752778, ST_GeomFromText('POINT(15.2086111 145.7752778)', 4326), 15.2086111, 145.7752778, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390434', 'Unai I Hasngot', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2086111, 145.7755556, ST_GeomFromText('POINT(15.2086111 145.7755556)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1390435', 'Hira Rock', 'Island', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Mount Pagan', 18.1358333, 145.8169444, ST_GeomFromText('POINT(18.1358333 145.8169444)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390437', 'Laderan I Ifa', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Tinian', 15.1091667, 145.7444444, ST_GeomFromText('POINT(15.1091667 145.7444444)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390444', 'Kalabera Pass', 'Gap', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2441667, 145.7836111, ST_GeomFromText('POINT(15.2441667 145.7836111)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390445', 'Laderan Kalaberan Kattan', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE N', 15.2688889, 145.8063889, ST_GeomFromText('POINT(15.2688889 145.8063889)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390446', 'Laderan Kalaberan Lichan', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2444444, 145.7927778, ST_GeomFromText('POINT(15.2444444 145.7927778)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390447', 'Kammer Beach', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian OE SW', 14.9636111, 145.6230556, ST_GeomFromText('POINT(14.9636111 145.6230556)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390449', 'Kastiyu', 'Summit', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian OE S', 14.9533333, 145.6483333, ST_GeomFromText('POINT(14.9533333 145.6483333)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390450', 'Puntan Kastiyu', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian OE S', 14.9480556, 145.6622222, ST_GeomFromText('POINT(14.9480556 145.6622222)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390452', 'Unai Chalan Kiya', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.1613889, 145.7041667, ST_GeomFromText('POINT(15.1613889 145.7041667)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390454', 'Kutake Yashi', 'Summit', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Pagan Island', 18.057824, 145.724201, ST_GeomFromText('POINT(18.057824 145.724201)', 4326), NULL, NULL, '2000-01-01', '2025-05-12', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1390455', 'Puntan Laggua Kattan', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE N', 15.285, 145.8163889, ST_GeomFromText('POINT(15.285 145.8163889)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390456', 'Puntan Laggua', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE N', 15.2713889, 145.8269444, ST_GeomFromText('POINT(15.2713889 145.8269444)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390457', 'Unai Laggua', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE N', 15.2736111, 145.8238889, ST_GeomFromText('POINT(15.2736111 145.8238889)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390458', 'Laderan Laggun', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE N', 15.2680556, 145.8169444, ST_GeomFromText('POINT(15.2680556 145.8169444)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390459', 'Lagunan Garapan', 'Bay', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.1863574, 145.706849, ST_GeomFromText('POINT(15.1863574 145.706849)', 4326), NULL, NULL, '2000-01-01', '2020-03-03', NULL, NULL, NULL),
  ('1390462', 'Puntan Lamanibot Sanhilo', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian OE W', 15.0513889, 145.595, ST_GeomFromText('POINT(15.0513889 145.595)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390465', 'Unai Lamlam', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian', 15.0866667, 145.6302778, ST_GeomFromText('POINT(15.0866667 145.6302778)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390468', 'Puntan Laolao Kattan', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.1652778, 145.7938889, ST_GeomFromText('POINT(15.1652778 145.7938889)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390469', 'Unai Laolao Kattan', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.1733333, 145.7833333, ST_GeomFromText('POINT(15.1733333 145.7833333)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390470', 'Bahia Laolao', 'Bay', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.1440386, 145.7601157, ST_GeomFromText('POINT(15.1440386 145.7601157)', 4326), NULL, NULL, '2000-01-01', '2020-03-03', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1390472', 'Kannat Laolao', 'Stream', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.1588889, 145.7477778, ST_GeomFromText('POINT(15.1588889 145.7477778)', 4326), 15.1588889, 145.7477778, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390473', 'Kannat Taddong Laolao', 'Stream', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.1708333, 145.7625, ST_GeomFromText('POINT(15.1708333 145.7625)', 4326), 15.1708333, 145.7625, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390474', 'Laderan Laolao', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.1638889, 145.7636111, ST_GeomFromText('POINT(15.1638889 145.7636111)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390476', 'Unai Laolao', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.1597222, 145.7511111, ST_GeomFromText('POINT(15.1597222 145.7511111)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390477', 'Kannat Laremies', 'Stream', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.2155556, 145.7411111, ST_GeomFromText('POINT(15.2155556 145.7411111)', 4326), 15.2155556, 145.7411111, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390478', 'Lasu', 'Summit', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian', 15.0402778, 145.6275, ST_GeomFromText('POINT(15.0402778 145.6275)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390479', 'Laderan Lasu', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian', 15.0319444, 145.6308333, ST_GeomFromText('POINT(15.0319444 145.6308333)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390482', 'Sabanan I Lipiog', 'Summit', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2463889, 145.7930556, ST_GeomFromText('POINT(15.2463889 145.7930556)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390489', 'Laderan Machiget', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.1994444, 145.7608333, ST_GeomFromText('POINT(15.1994444 145.7608333)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390492', 'Laderan I Maddock', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE N', 15.2627778, 145.8205556, ST_GeomFromText('POINT(15.2627778 145.8205556)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1390493', 'Puntan I Maddock', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE N', 15.2591667, 145.8238889, ST_GeomFromText('POINT(15.2591667 145.8238889)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390494', 'Maga', 'Summit', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian OE W', 15.0513889, 145.6183333, ST_GeomFromText('POINT(15.0513889 145.6183333)', 4326), NULL, NULL, '2000-01-01', NULL, 'Official', 'Board Decision', '1955-01-01'),
  ('1390496', 'Laderan Mahalang', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian OE W', 15.0527778, 145.6194444, ST_GeomFromText('POINT(15.0527778 145.6194444)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390498', 'Isleta Maigo Fahang', 'Island', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE N', 15.2561111, 145.8111111, ST_GeomFromText('POINT(15.2561111 145.8111111)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390500', 'Saddock Mames', 'Stream', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2327778, 145.755, ST_GeomFromText('POINT(15.2327778 145.755)', 4326), 15.2327778, 145.755, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390501', 'Isleta Managaha', 'Island', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.24, 145.7105556, ST_GeomFromText('POINT(15.24 145.7105556)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390503', 'Laderan Mangpang', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian', 15.0438889, 145.6269444, ST_GeomFromText('POINT(15.0438889 145.6269444)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390506', 'Mariana Islands', 'Island', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Alamagan Island', 17.5986111, 145.8386111, ST_GeomFromText('POINT(17.5986111 145.8386111)', 4326), NULL, NULL, '2000-01-01', NULL, 'Official', 'Board Decision', '1955-01-01'),
  ('1390508', 'Maru Mountain', 'Summit', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Pagan Island', 18.092094, 145.753899, ST_GeomFromText('POINT(18.092094 145.753899)', 4326), NULL, NULL, '2000-01-01', '2025-05-12', NULL, NULL, NULL),
  ('1390510', 'Kannat Masalok', 'Valley', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian', 15.0066667, 145.6677778, ST_GeomFromText('POINT(15.0066667 145.6677778)', 4326), 15.0066667, 145.6677778, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1390511', 'Laderan Masalok', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian', 15.0113889, 145.6613889, ST_GeomFromText('POINT(15.0113889 145.6613889)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390512', 'Puntan Masalok', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian', 15.01, 145.6686111, ST_GeomFromText('POINT(15.01 145.6686111)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390513', 'Unai Masalok', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian', 15.0183333, 145.6541667, ST_GeomFromText('POINT(15.0183333 145.6541667)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390516', 'As Matuis', 'Summit', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE N', 15.2605556, 145.7908333, ST_GeomFromText('POINT(15.2605556 145.7908333)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390517', 'Maug Islands', 'Island', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Maug Island', 20.0233333, 145.2225, ST_GeomFromText('POINT(20.0233333 145.2225)', 4326), NULL, NULL, '2000-01-01', NULL, 'Official', 'Board Decision', '1955-01-01'),
  ('1390518', 'Micro Beach', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.2169444, 145.7138889, ST_GeomFromText('POINT(15.2169444 145.7138889)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390520', 'Minachage', 'Gap', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Rota', 'Rota', 14.1344444, 145.1844444, ST_GeomFromText('POINT(14.1344444 145.1844444)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390521', 'Mochon Point', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Rota', 'Rota OE E', 14.1966667, 145.2613889, ST_GeomFromText('POINT(14.1966667 145.2613889)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390524', 'Puntan Muchot', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.2180556, 145.7141667, ST_GeomFromText('POINT(15.2180556 145.7141667)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390526', 'Naftan', 'Summit', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Tinian', 15.1091667, 145.7463889, ST_GeomFromText('POINT(15.1091667 145.7463889)', 4326), NULL, NULL, '2000-01-01', NULL, 'Official', 'Board Decision', '1955-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1390527', 'Naftan Rock', 'Island', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Aguijan', 14.8333333, 145.5302778, ST_GeomFromText('POINT(14.8333333 145.5302778)', 4326), NULL, NULL, '2000-01-01', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('1390528', 'I Naftan', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Tinian', 15.1122222, 145.7452778, ST_GeomFromText('POINT(15.1122222 145.7452778)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390529', 'Laderan I Naftan', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Tinian', 15.1075, 145.7483333, ST_GeomFromText('POINT(15.1075 145.7483333)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390530', 'Puntan I Naftan', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Tinian', 15.0911111, 145.7461111, ST_GeomFromText('POINT(15.0911111 145.7461111)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390531', 'Kannat Nanasu', 'Stream', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2380556, 145.7775, ST_GeomFromText('POINT(15.2380556 145.7775)', 4326), 15.2380556, 145.7775, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390533', 'Unai Nanasu', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2263889, 145.7905556, ST_GeomFromText('POINT(15.2263889 145.7905556)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390534', 'Puntan Nanesu', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2277778, 145.7958333, ST_GeomFromText('POINT(15.2277778 145.7958333)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390536', 'North Island', 'Island', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Maug Island', 20.0336111, 145.2219444, ST_GeomFromText('POINT(20.0336111 145.2219444)', 4326), NULL, NULL, '2000-01-01', NULL, 'Official', 'Board Decision', '1955-01-01'),
  ('1390541', 'Opyan', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Tinian', 15.1072222, 145.7252778, ST_GeomFromText('POINT(15.1072222 145.7252778)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390542', 'Laderan Opyan', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Tinian', 15.1108333, 145.7166667, ST_GeomFromText('POINT(15.1108333 145.7166667)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1390543', 'Puntan Opyan', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Tinian', 15.1052778, 145.705, ST_GeomFromText('POINT(15.1052778 145.705)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390544', 'Puntan Unai Opyan', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Tinian', 15.1041667, 145.7291667, ST_GeomFromText('POINT(15.1041667 145.7291667)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390545', 'Unai Opyan', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Tinian', 15.1047222, 145.7358333, ST_GeomFromText('POINT(15.1047222 145.7358333)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390546', 'Pagan Island', 'Island', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Pagan Island', 18.1108333, 145.7722222, ST_GeomFromText('POINT(18.1108333 145.7722222)', 4326), NULL, NULL, '2000-01-01', NULL, 'Official', 'Board Decision', '1955-01-01'),
  ('1390547', 'Mount Pagan', 'Summit', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Mount Pagan', 18.141651, 145.785631, ST_GeomFromText('POINT(18.141651 145.785631)', 4326), NULL, NULL, '2000-01-01', '2025-05-12', 'Official', 'Board Decision', '1944-01-01'),
  ('1390550', 'Bo''bo'' Papago''', 'Spring', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.1837836, 145.7565969, ST_GeomFromText('POINT(15.1837836 145.7565969)', 4326), NULL, NULL, '2000-01-01', '2018-01-19', NULL, NULL, NULL),
  ('1390551', 'Kannat Papao', 'Stream', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2455556, 145.7725, ST_GeomFromText('POINT(15.2455556 145.7725)', 4326), 15.2455556, 145.7725, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390552', 'Laderan Papao', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2447222, 145.7766667, ST_GeomFromText('POINT(15.2447222 145.7766667)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390553', 'Unai Papao', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE N', 15.2513889, 145.7744444, ST_GeomFromText('POINT(15.2513889 145.7744444)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390554', 'Pariyaaru', 'Bay', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Pagan Island', 18.0552778, 145.7155556, ST_GeomFromText('POINT(18.0552778 145.7155556)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1390557', 'Unai Peo', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Tinian', 15.1066667, 145.7141667, ST_GeomFromText('POINT(15.1066667 145.7141667)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390558', 'Periiruu', 'Bay', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Pagan Island', 18.0647222, 145.7177778, ST_GeomFromText('POINT(18.0647222 145.7177778)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390560', 'Piarama', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Pagan Island', 18.0519444, 145.7280556, ST_GeomFromText('POINT(18.0519444 145.7280556)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390561', 'Pidos Kalaho', 'Summit', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE N', 15.27723, 145.806684, ST_GeomFromText('POINT(15.27723 145.806684)', 4326), NULL, NULL, '2000-01-01', '2025-05-12', NULL, NULL, NULL),
  ('1390562', 'Piña', 'Summit', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian OE S', 14.9869444, 145.6583333, ST_GeomFromText('POINT(14.9869444 145.6583333)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390564', 'Kannat I Pitot', 'Stream', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2041667, 145.7780556, ST_GeomFromText('POINT(15.2041667 145.7780556)', 4326), 15.2041667, 145.7780556, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390566', 'Pontanjaburo', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Pagan Island', 18.0891667, 145.7347222, ST_GeomFromText('POINT(18.0891667 145.7347222)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390567', 'Puerto Rico', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.2183333, 145.7294444, ST_GeomFromText('POINT(15.2183333 145.7294444)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390570', 'Kannat Taddong Rapugao', 'Stream', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.2233333, 145.7427778, ST_GeomFromText('POINT(15.2233333 145.7427778)', 4326), 15.2233333, 145.7427778, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390572', 'Rota', 'Island', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Rota', 'Rota', 14.1536111, 145.2030556, ST_GeomFromText('POINT(14.1536111 145.2030556)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1390575', 'Kannat Rueda', 'Stream', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.1836111, 145.72, ST_GeomFromText('POINT(15.1836111 145.72)', 4326), 15.1836111, 145.72, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390576', 'Laderan Rueda', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.1780556, 145.7183333, ST_GeomFromText('POINT(15.1780556 145.7183333)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390577', 'Sabana', 'Summit', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Rota', 'Rota', 14.1436111, 145.1855556, ST_GeomFromText('POINT(14.1436111 145.1855556)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390579', 'Puntan Sabaneta', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE N', 15.2877778, 145.8088889, ST_GeomFromText('POINT(15.2877778 145.8088889)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390580', 'Saddok Tasi', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.2261111, 145.7372222, ST_GeomFromText('POINT(15.2261111 145.7372222)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390583', 'Saipan Island', 'Island', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.1925, 145.7480556, ST_GeomFromText('POINT(15.1925 145.7480556)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390593', 'Sanmeina', 'Island', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Pagan Island', 18.105, 145.7636111, ST_GeomFromText('POINT(18.105 145.7636111)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390595', 'Sarahai', 'Bay', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Pagan Island', 18.0586111, 145.7172222, ST_GeomFromText('POINT(18.0586111 145.7172222)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390596', 'Sarigan Island', 'Island', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Sarigan Island', 16.7097222, 145.7836111, ST_GeomFromText('POINT(16.7097222 145.7836111)', 4326), NULL, NULL, '2000-01-01', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('1390597', 'Sasanhaya', 'Bay', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Rota', 'Rota', 14.1241667, 145.1458333, ST_GeomFromText('POINT(14.1241667 145.1458333)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1390605', 'South Point', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Pagan Island', 18.05, 145.7172222, ST_GeomFromText('POINT(18.05 145.7172222)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390607', 'Suicide Cliff', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian OE S', 14.9394444, 145.6488889, ST_GeomFromText('POINT(14.9394444 145.6488889)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390608', 'Susupi', 'Flat', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.155, 145.7055556, ST_GeomFromText('POINT(15.155 145.7055556)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390610', 'Puntan Susupi', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.155, 145.6977778, ST_GeomFromText('POINT(15.155 145.6977778)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390612', 'Kannat Taddong Mahettok', 'Stream', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.2275, 145.7461111, ST_GeomFromText('POINT(15.2275 145.7461111)', 4326), 15.2275, 145.7461111, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390613', 'Kannat Taddong', 'Valley', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian OE S', 14.9541667, 145.6402778, ST_GeomFromText('POINT(14.9541667 145.6402778)', 4326), 14.9541667, 145.6402778, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390614', 'Taga Beach', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian OE S', 14.9563889, 145.6275, ST_GeomFromText('POINT(14.9563889 145.6275)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390615', 'Puntan Tahgong', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian', 15.0986111, 145.6422222, ST_GeomFromText('POINT(15.0986111 145.6422222)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390617', 'Taipingot', 'Summit', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Rota', 'Rota', 14.125797, 145.12742, ST_GeomFromText('POINT(14.125797 145.12742)', 4326), NULL, NULL, '2000-01-01', '2025-05-12', NULL, NULL, NULL),
  ('1390619', 'Laderan Takpochao', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.1811111, 145.7411111, ST_GeomFromText('POINT(15.1811111 145.7411111)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1390623', 'Laderan As Taman', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.1902778, 145.7275, ST_GeomFromText('POINT(15.1902778 145.7275)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390624', 'Tanapag', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.2341667, 145.7469444, ST_GeomFromText('POINT(15.2341667 145.7469444)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390626', 'Lagunan Tanapag', 'Bay', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.2411313, 145.733618, ST_GeomFromText('POINT(15.2411313 145.733618)', 4326), NULL, NULL, '2000-01-01', '2020-03-03', NULL, NULL, NULL),
  ('1390628', 'Unai Tanapag', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.2361111, 145.7452778, ST_GeomFromText('POINT(15.2361111 145.7452778)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390630', 'Laderan Tangke', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE N', 15.25, 145.8033333, ST_GeomFromText('POINT(15.25 145.8033333)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390631', 'Puntan Tangke', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2408333, 145.8069444, ST_GeomFromText('POINT(15.2408333 145.8069444)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390632', 'Kannat Tapblan Kattan', 'Stream', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.1658333, 145.7230556, ST_GeomFromText('POINT(15.1658333 145.7230556)', 4326), 15.1658333, 145.7230556, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390633', 'Kannat Tapblan Lichan', 'Stream', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.1591667, 145.7305556, ST_GeomFromText('POINT(15.1591667 145.7305556)', 4326), 15.1591667, 145.7305556, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390634', 'Tarage', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Mount Pagan', 18.17, 145.7938889, ST_GeomFromText('POINT(18.17 145.7938889)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390640', 'Tinian Island', 'Island', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian OE W', 15.0133333, 145.6241667, ST_GeomFromText('POINT(15.0133333 145.6241667)', 4326), NULL, NULL, '2000-01-01', NULL, 'Official', 'Board Decision', '1944-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1390643', 'Tinian Harbor', 'Bay', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian OE SW', 14.9555556, 145.6141667, ST_GeomFromText('POINT(14.9555556 145.6141667)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390644', 'Togari Mountain', 'Summit', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Pagan Island', 18.078407, 145.742161, ST_GeomFromText('POINT(18.078407 145.742161)', 4326), NULL, NULL, '2000-01-01', '2025-05-12', NULL, NULL, NULL),
  ('1390645', 'Togari Rock', 'Island', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Pagan Island', 18.105, 145.8044444, ST_GeomFromText('POINT(18.105 145.8044444)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390648', 'Unai Tuturam', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.1511111, 145.7444444, ST_GeomFromText('POINT(15.1511111 145.7444444)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390650', 'Unairikiki', 'Bay', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Pagan Island', 18.1091667, 145.8033333, ST_GeomFromText('POINT(18.1091667 145.8033333)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1390653', 'West Island', 'Island', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Maug Island', 20.0205556, 145.2111111, ST_GeomFromText('POINT(20.0205556 145.2111111)', 4326), NULL, NULL, '2000-01-01', NULL, 'Official', 'Board Decision', '1944-01-01'),
  ('1393395', 'Bo''bo'' Achugao Haya', 'Spring', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2329384, 145.7781711, ST_GeomFromText('POINT(15.2329384 145.7781711)', 4326), NULL, NULL, '2000-01-01', '2018-01-19', NULL, NULL, NULL),
  ('1393396', 'Okso'' Achugao', 'Summit', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2375, 145.7725, ST_GeomFromText('POINT(15.2375 145.7725)', 4326), NULL, NULL, '2000-01-01', '2012-11-13', NULL, NULL, NULL),
  ('1393398', 'Bo''bo'' Agatan', 'Spring', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2314129, 145.7551919, ST_GeomFromText('POINT(15.2314129 145.7551919)', 4326), NULL, NULL, '2000-01-01', '2018-01-19', NULL, NULL, NULL),
  ('1393405', 'Laderan Carolinas Sampapa''', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian OE S', 14.9236111, 145.6344444, ST_GeomFromText('POINT(14.9236111 145.6344444)', 4326), NULL, NULL, '2000-01-01', '2012-11-13', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1393406', 'Laderan Carolinas Sanhilo''', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian OE S', 14.9275, 145.6361111, ST_GeomFromText('POINT(14.9275 145.6361111)', 4326), NULL, NULL, '2000-01-01', '2012-11-13', NULL, NULL, NULL),
  ('1393411', 'Kannat I Daʻok', 'Stream', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.1852778, 145.7705556, ST_GeomFromText('POINT(15.1852778 145.7705556)', 4326), 15.184554, 145.759183, '2000-01-01', '2020-12-30', NULL, NULL, NULL),
  ('1393412', 'Laderan I Da''ok', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.1852778, 145.7661111, ST_GeomFromText('POINT(15.1852778 145.7661111)', 4326), NULL, NULL, '2000-01-01', '2012-11-13', NULL, NULL, NULL),
  ('1393413', 'I Denne''', 'Summit', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2047222, 145.7522222, ST_GeomFromText('POINT(15.2047222 145.7522222)', 4326), NULL, NULL, '2000-01-01', '2012-11-13', NULL, NULL, NULL),
  ('1393414', 'Saddok I Denneʻ', 'Stream', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.1970517, 145.7797757, ST_GeomFromText('POINT(15.1970517 145.7797757)', 4326), 15.1982372, 145.7672927, '2000-01-01', '2020-12-30', NULL, NULL, NULL),
  ('1393415', 'Unai Dikike'' Agingan', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Tinian', 15.1166667, 145.6933333, ST_GeomFromText('POINT(15.1166667 145.6933333)', 4326), NULL, NULL, '2000-01-01', '2012-11-13', NULL, NULL, NULL),
  ('1393416', 'Unai Dikike''Matuis', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE N', 15.2619444, 145.7822222, ST_GeomFromText('POINT(15.2619444 145.7822222)', 4326), NULL, NULL, '2000-01-01', '2012-11-13', NULL, NULL, NULL),
  ('1393417', 'Okso'' Do''gas', 'Summit', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2341667, 145.7702778, ST_GeomFromText('POINT(15.2341667 145.7702778)', 4326), NULL, NULL, '2000-01-01', '2012-11-13', NULL, NULL, NULL),
  ('1393418', 'Saddok Doʻgas', 'Stream', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2392322, 145.7571804, ST_GeomFromText('POINT(15.2392322 145.7571804)', 4326), 15.2294704, 145.7597017, '2000-01-01', '2020-12-30', NULL, NULL, NULL),
  ('1393423', 'Unai Fanochuluyan', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE N', 15.2575, 145.8097222, ST_GeomFromText('POINT(15.2575 145.8097222)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1393425', 'Fina'' Atkos', 'Bay', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Rota', 'Rota OE E', 14.1644444, 145.2813889, ST_GeomFromText('POINT(14.1644444 145.2813889)', 4326), NULL, NULL, '2000-01-01', '2012-11-11', NULL, NULL, NULL),
  ('1393428', 'Okso'' Gualo'' Rai', 'Summit', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.1969444, 145.7219444, ST_GeomFromText('POINT(15.1969444 145.7219444)', 4326), NULL, NULL, '2000-01-01', '2012-11-13', NULL, NULL, NULL),
  ('1393430', 'Puntan Haiña', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Rota', 'Rota OE E', 14.13, 145.2263889, ST_GeomFromText('POINT(14.13 145.2263889)', 4326), NULL, NULL, '2000-01-01', '2012-08-15', NULL, NULL, NULL),
  ('1393432', 'Puntan Lamanibot Sampapa''', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian OE W', 15.0358333, 145.5866667, ST_GeomFromText('POINT(15.0358333 145.5866667)', 4326), NULL, NULL, '2000-01-01', '2012-11-13', NULL, NULL, NULL),
  ('1393433', 'Okso'' Laolao', 'Summit', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.1672222, 145.7475, ST_GeomFromText('POINT(15.1672222 145.7475)', 4326), NULL, NULL, '2000-01-01', '2012-11-13', NULL, NULL, NULL),
  ('1393437', 'Isleta Maigo'' Lu''ao', 'Island', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.1491667, 145.7886111, ST_GeomFromText('POINT(15.1491667 145.7886111)', 4326), NULL, NULL, '2000-01-01', '2012-11-13', NULL, NULL, NULL),
  ('1393439', 'Kannat Makpeʻ', 'Stream', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE N', 15.2681036, 145.7953074, ST_GeomFromText('POINT(15.2681036 145.7953074)', 4326), 15.2697581, 145.8029034, '2000-01-01', '2020-12-30', NULL, NULL, NULL),
  ('1393440', 'Laderan Makpe''', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE N', 15.2725, 145.7955556, ST_GeomFromText('POINT(15.2725 145.7955556)', 4326), NULL, NULL, '2000-01-01', '2012-11-13', NULL, NULL, NULL),
  ('1393441', 'Puntan Makpe''', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE N', 15.2738889, 145.7919444, ST_GeomFromText('POINT(15.2738889 145.7919444)', 4326), NULL, NULL, '2000-01-01', '2012-11-13', NULL, NULL, NULL),
  ('1393442', 'Unai Makpe''', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE N', 15.2688889, 145.7875, ST_GeomFromText('POINT(15.2688889 145.7875)', 4326), NULL, NULL, '2000-01-01', '2012-11-13', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1393444', 'Sisonyan Makpo''', 'Swamp', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian OE S', 14.9752778, 145.6516667, ST_GeomFromText('POINT(14.9752778 145.6516667)', 4326), NULL, NULL, '2000-01-01', '2012-11-13', NULL, NULL, NULL),
  ('1393445', 'Puntan Malilok', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Rota', 'Rota OE E', 14.1163889, 145.2116667, ST_GeomFromText('POINT(14.1163889 145.2116667)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1393446', 'Bo''bo'' Mames', 'Spring', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2342389, 145.7569654, ST_GeomFromText('POINT(15.2342389 145.7569654)', 4326), NULL, NULL, '2000-01-01', '2018-01-19', NULL, NULL, NULL),
  ('1393449', 'As Niebes', 'Summit', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Rota', 'Rota OE E', 14.1666667, 145.2566667, ST_GeomFromText('POINT(14.1666667 145.2566667)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1393453', 'Kannat Taddong Papagoʻ', 'Stream', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.1842981, 145.7697983, ST_GeomFromText('POINT(15.1842981 145.7697983)', 4326), 15.1849919, 145.7536943, '2000-01-01', '2020-12-30', NULL, NULL, NULL),
  ('1393454', 'Puntan Pona', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Rota', 'Rota', 14.1119444, 145.1688889, ST_GeomFromText('POINT(14.1119444 145.1688889)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1393459', 'Puntan Sagua''gahga', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Rota', 'Rota OE E', 14.1530556, 145.2669444, ST_GeomFromText('POINT(14.1530556 145.2669444)', 4326), NULL, NULL, '2000-01-01', '2012-11-13', NULL, NULL, NULL),
  ('1393461', 'Puntan Sailigai', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Rota', 'Rota', 14.1655556, 145.1566667, ST_GeomFromText('POINT(14.1655556 145.1566667)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1393462', 'Puntan Senhanom', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Rota', 'Rota', 14.1213889, 145.1191667, ST_GeomFromText('POINT(14.1213889 145.1191667)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1393467', 'Puntan Taipingot', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Rota', 'Rota', 14.1166667, 145.1202778, ST_GeomFromText('POINT(14.1166667 145.1202778)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1393468', 'Okso'' Takpochao', 'Summit', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.185, 145.7411111, ST_GeomFromText('POINT(15.185 145.7411111)', 4326), NULL, NULL, '2000-01-01', '2012-11-13', NULL, NULL, NULL),
  ('1393470', 'Unai Talofo''fo''', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2144444, 145.7788889, ST_GeomFromText('POINT(15.2144444 145.7788889)', 4326), NULL, NULL, '2000-01-01', '2012-11-13', NULL, NULL, NULL),
  ('1393473', 'Saddok Talufoʻfoʻ', 'Stream', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2159852, 145.7806198, ST_GeomFromText('POINT(15.2159852 145.7806198)', 4326), 15.2277559, 145.7643549, '2000-01-01', '2020-12-30', NULL, NULL, NULL),
  ('1393474', 'Okso'' Talufo''fo', 'Summit', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2277778, 145.7630556, ST_GeomFromText('POINT(15.2277778 145.7630556)', 4326), NULL, NULL, '2000-01-01', '2012-11-13', NULL, NULL, NULL),
  ('1393477', 'Bo''bo''As Teo''', 'Spring', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.1921199, 145.7626204, ST_GeomFromText('POINT(15.1921199 145.7626204)', 4326), NULL, NULL, '2000-01-01', '2018-01-19', NULL, NULL, NULL),
  ('1393632', 'Okso'' Tipo''Poli', 'Summit', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.18, 145.7313889, ST_GeomFromText('POINT(15.18 145.7313889)', 4326), NULL, NULL, '2000-01-01', '2012-11-13', NULL, NULL, NULL),
  ('1397632', 'Bobo Achugao', 'Spring', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2377444, 145.766806, ST_GeomFromText('POINT(15.2377444 145.766806)', 4326), NULL, NULL, '1992-11-01', '2018-01-19', NULL, NULL, NULL),
  ('1397634', 'Laderan Apaka', 'Cliff', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian OE S', 14.9736111, 145.6555556, ST_GeomFromText('POINT(14.9736111 145.6555556)', 4326), NULL, NULL, '1992-11-01', NULL, NULL, NULL, NULL),
  ('1930554', 'Agrihan', 'Island', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Agrigan Island', 18.7675, 145.6672222, ST_GeomFromText('POINT(18.7675 145.6672222)', 4326), NULL, NULL, '2001-08-06', NULL, NULL, NULL, NULL),
  ('1945632', 'Alutom', 'Summit', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Aguijan', 14.8541667, 145.5508333, ST_GeomFromText('POINT(14.8541667 145.5508333)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1945633', 'Asiga Bay', 'Bay', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian', 15.0327778, 145.6511111, ST_GeomFromText('POINT(15.0327778 145.6511111)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1945634', 'Bandera Peninsula', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Mount Pagan', 18.1311111, 145.7633333, ST_GeomFromText('POINT(18.1311111 145.7633333)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1945636', 'Lagona Lake', 'Lake', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Northern Islands', 'Mount Pagan', 18.145, 145.7702778, ST_GeomFromText('POINT(18.145 145.7702778)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1945637', 'Leprosarium Beach', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian OE SW', 14.9813889, 145.6097222, ST_GeomFromText('POINT(14.9813889 145.6097222)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1945638', 'Tachogna Beach', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Tinian', 'Tinian OE S', 14.9519444, 145.6294444, ST_GeomFromText('POINT(14.9519444 145.6294444)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1945644', 'Aratsu-wan', 'Bay', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Rota', 'Rota OE E', 14.1436111, 145.2375, ST_GeomFromText('POINT(14.1436111 145.2375)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1945647', 'Kokomo Beach', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Rota', 'Rota', 14.1291667, 145.1616667, ST_GeomFromText('POINT(14.1291667 145.1616667)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1945648', 'Lalayak Beach', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Rota', 'Rota OE E', 14.1961111, 145.2325, ST_GeomFromText('POINT(14.1961111 145.2325)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1945650', 'Mochong Beach', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Rota', 'Rota OE E', 14.1983333, 145.2494444, ST_GeomFromText('POINT(14.1983333 145.2494444)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1945651', 'Ogo Stream', 'Stream', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Rota', 'Rota', 14.1141667, 145.1855556, ST_GeomFromText('POINT(14.1141667 145.1855556)', 4326), 14.1141667, 145.1855556, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1945675', 'Teteto Beach', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Rota', 'Rota', 14.1722222, 145.1888889, ST_GeomFromText('POINT(14.1722222 145.1888889)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1945677', 'Tweksberry Beach', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Rota', 'Rota', 14.1325, 145.1294444, ST_GeomFromText('POINT(14.1325 145.1294444)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1945678', 'Two Brothers Beach', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Rota', 'Rota', 14.115, 145.205, ST_GeomFromText('POINT(14.115 145.205)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1945683', 'Boy Scout Beach', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Tinian', 15.0977778, 145.7430556, ST_GeomFromText('POINT(15.0977778 145.7430556)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1945686', 'Chalan Lao Lao Beach', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.1722222, 145.7086111, ST_GeomFromText('POINT(15.1722222 145.7086111)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1945692', 'Forbidden Beach', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.15, 145.7866667, ST_GeomFromText('POINT(15.15 145.7866667)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1945700', 'Kilili Beach', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.1630556, 145.7052778, ST_GeomFromText('POINT(15.1630556 145.7052778)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1945707', 'Nafutan Peninsula', 'Cape', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Tinian', 15.0980556, 145.7461111, ST_GeomFromText('POINT(15.0980556 145.7461111)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1945710', 'Oleai Beach', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.1655556, 145.7063889, ST_GeomFromText('POINT(15.1655556 145.7063889)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1945713', 'Outer Cove', 'Bay', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.2191562, 145.7225943, ST_GeomFromText('POINT(15.2191562 145.7225943)', 4326), NULL, NULL, '2000-01-01', '2020-03-03', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1945718', 'Mount Petosukara', 'Summit', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.2463889, 145.7930556, ST_GeomFromText('POINT(15.2463889 145.7930556)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1945719', 'Pontamucho Swamp', 'Swamp', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.2138889, 145.7205556, ST_GeomFromText('POINT(15.2138889 145.7205556)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1945720', 'Purple Heart Ridge', 'Ridge', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan', 15.1763889, 145.7527778, ST_GeomFromText('POINT(15.1763889 145.7527778)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1945724', 'San Jose Beach', 'Beach', 'Commonwealth of the Northern Mariana Islands', 'CO', 'Saipan', 'Saipan OE W', 15.1680556, 145.7075, ST_GeomFromText('POINT(15.1680556 145.7075)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);


COMMIT;
SET unique_checks = 1;
SET autocommit = 1;

-- MP complete: 274 features loaded
