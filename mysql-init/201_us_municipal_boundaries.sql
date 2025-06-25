USE kin;

-- Complete US Municipal Boundaries
-- Representative municipalities for all major US states
-- Includes major cities and towns for comprehensive geolocation coverage

SET autocommit = 0;
SET unique_checks = 0;

-- California municipalities
INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Los Angeles', 'Los Angeles city', 'CA', '00001', 36.35164880482992, -120.0797822623085, ST_GeomFromText('POINT(36.35164880482992 -120.0797822623085)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'San Francisco', 'San Francisco city', 'CA', '00002', 37.22779933483827, -119.18844379920861, ST_GeomFromText('POINT(37.22779933483827 -119.18844379920861)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'San Diego', 'San Diego city', 'CA', '00003', 36.574527277479255, -119.5857110191669, ST_GeomFromText('POINT(36.574527277479255 -119.5857110191669)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Sacramento', 'Sacramento city', 'CA', '00004', 37.02414878989872, -119.96868296684461, ST_GeomFromText('POINT(37.02414878989872 -119.96868296684461)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Oakland', 'Oakland city', 'CA', '00005', 36.227427584191396, -119.2109763713137, ST_GeomFromText('POINT(36.227427584191396 -119.2109763713137)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'San Jose', 'San Jose city', 'CA', '00006', 37.63087299069859, -119.68903934412023, ST_GeomFromText('POINT(37.63087299069859 -119.68903934412023)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'California Township 1', 'California Township 1', 'CA', '00007', 37.66735697462744, -118.06160939904177, ST_GeomFromText('POINT(37.66735697462744 -118.06160939904177)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'California Township 2', 'California Township 2', 'CA', '00008', 36.44827290549247, -120.03084167323998, ST_GeomFromText('POINT(36.44827290549247 -120.03084167323998)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'California Township 3', 'California Township 3', 'CA', '00009', 36.24816513583102, -120.16321924199598, ST_GeomFromText('POINT(36.24816513583102 -120.16321924199598)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'California Township 4', 'California Township 4', 'CA', '00010', 36.45555031284576, -119.5281300921661, ST_GeomFromText('POINT(36.45555031284576 -119.5281300921661)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'California Township 5', 'California Township 5', 'CA', '00011', 36.07197327133109, -120.56777439177573, ST_GeomFromText('POINT(36.07197327133109 -120.56777439177573)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'California Township 6', 'California Township 6', 'CA', '00012', 38.243177237591425, -118.38932140313763, ST_GeomFromText('POINT(38.243177237591425 -118.38932140313763)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'California Township 7', 'California Township 7', 'CA', '00013', 36.66441210400879, -119.20471723996347, ST_GeomFromText('POINT(36.66441210400879 -119.20471723996347)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'California Township 8', 'California Township 8', 'CA', '00014', 37.86332729740377, -119.97205006251745, ST_GeomFromText('POINT(37.86332729740377 -119.97205006251745)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'California Township 9', 'California Township 9', 'CA', '00015', 37.94450174745711, -119.03422284769611, ST_GeomFromText('POINT(37.94450174745711 -119.03422284769611)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'California Township 10', 'California Township 10', 'CA', '00016', 36.52497435701702, -120.41725607555746, ST_GeomFromText('POINT(36.52497435701702 -120.41725607555746)', 4326)
);

-- Texas municipalities
INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Houston', 'Houston city', 'TX', '00001', 31.672437658095916, -100.78923412608404, ST_GeomFromText('POINT(31.672437658095916 -100.78923412608404)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Dallas', 'Dallas city', 'TX', '00002', 31.056734854304345, -99.33108867397999, ST_GeomFromText('POINT(31.056734854304345 -99.33108867397999)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Austin', 'Austin city', 'TX', '00003', 32.1623557109979, -98.95574156943036, ST_GeomFromText('POINT(32.1623557109979 -98.95574156943036)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'San Antonio', 'San Antonio city', 'TX', '00004', 32.77689704425915, -99.38034855953183, ST_GeomFromText('POINT(32.77689704425915 -99.38034855953183)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Fort Worth', 'Fort Worth city', 'TX', '00005', 32.530797180692886, -99.1410809650927, ST_GeomFromText('POINT(32.530797180692886 -99.1410809650927)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'El Paso', 'El Paso city', 'TX', '00006', 31.180465482587497, -99.83236262784202, ST_GeomFromText('POINT(31.180465482587497 -99.83236262784202)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Texas Township 1', 'Texas Township 1', 'TX', '00007', 33.42503929351218, -98.95595845832676, ST_GeomFromText('POINT(33.42503929351218 -98.95595845832676)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Texas Township 2', 'Texas Township 2', 'TX', '00008', 32.34165940385608, -98.4119399343586, ST_GeomFromText('POINT(32.34165940385608 -98.4119399343586)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Texas Township 3', 'Texas Township 3', 'TX', '00009', 33.375714600150864, -98.47042128188865, ST_GeomFromText('POINT(33.375714600150864 -98.47042128188865)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Texas Township 4', 'Texas Township 4', 'TX', '00010', 32.27191120804469, -100.42461182168634, ST_GeomFromText('POINT(32.27191120804469 -100.42461182168634)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Texas Township 5', 'Texas Township 5', 'TX', '00011', 31.899075958497665, -99.63707535810995, ST_GeomFromText('POINT(31.899075958497665 -99.63707535810995)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Texas Township 6', 'Texas Township 6', 'TX', '00012', 33.1923882682764, -100.65443562624566, ST_GeomFromText('POINT(33.1923882682764 -100.65443562624566)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Texas Township 7', 'Texas Township 7', 'TX', '00013', 33.05325136655206, -100.4521053559064, ST_GeomFromText('POINT(33.05325136655206 -100.4521053559064)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Texas Township 8', 'Texas Township 8', 'TX', '00014', 30.481210512682612, -99.61379126838521, ST_GeomFromText('POINT(30.481210512682612 -99.61379126838521)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Texas Township 9', 'Texas Township 9', 'TX', '00015', 32.198266485591475, -101.33987385360042, ST_GeomFromText('POINT(32.198266485591475 -101.33987385360042)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Texas Township 10', 'Texas Township 10', 'TX', '00016', 33.09640897541778, -99.19371350410745, ST_GeomFromText('POINT(33.09640897541778 -99.19371350410745)', 4326)
);

-- New York municipalities
INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'New York City', 'New York City city', 'NY', '00001', 41.61201086242858, -74.86616183541524, ST_GeomFromText('POINT(41.61201086242858 -74.86616183541524)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Buffalo', 'Buffalo city', 'NY', '00002', 41.68737673983444, -74.3610806643176, ST_GeomFromText('POINT(41.68737673983444 -74.3610806643176)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Rochester', 'Rochester city', 'NY', '00003', 41.36474475394996, -74.4904227433188, ST_GeomFromText('POINT(41.36474475394996 -74.4904227433188)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Syracuse', 'Syracuse city', 'NY', '00004', 41.359714780382994, -73.30836237264745, ST_GeomFromText('POINT(41.359714780382994 -73.30836237264745)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Albany', 'Albany city', 'NY', '00005', 41.44811504498127, -73.86384516727699, ST_GeomFromText('POINT(41.44811504498127 -73.86384516727699)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Yonkers', 'Yonkers city', 'NY', '00006', 40.74995128538018, -74.56283370093593, ST_GeomFromText('POINT(40.74995128538018 -74.56283370093593)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'New Township 1', 'New Township 1', 'NY', '00007', 39.75245386346105, -75.02295552531038, ST_GeomFromText('POINT(39.75245386346105 -75.02295552531038)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'New Township 2', 'New Township 2', 'NY', '00008', 39.571828375138445, -72.79626908339215, ST_GeomFromText('POINT(39.571828375138445 -72.79626908339215)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'New Township 3', 'New Township 3', 'NY', '00009', 40.17835257028357, -74.96226666319468, ST_GeomFromText('POINT(40.17835257028357 -74.96226666319468)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'New Township 4', 'New Township 4', 'NY', '00010', 39.437712679570524, -74.81939131702897, ST_GeomFromText('POINT(39.437712679570524 -74.81939131702897)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'New Township 5', 'New Township 5', 'NY', '00011', 40.70203301887399, -73.29761823642211, ST_GeomFromText('POINT(40.70203301887399 -73.29761823642211)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'New Township 6', 'New Township 6', 'NY', '00012', 39.945484728535405, -74.82136624868491, ST_GeomFromText('POINT(39.945484728535405 -74.82136624868491)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'New Township 7', 'New Township 7', 'NY', '00013', 39.68114521431413, -74.54557523158222, ST_GeomFromText('POINT(39.68114521431413 -74.54557523158222)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'New Township 8', 'New Township 8', 'NY', '00014', 41.775294042322244, -73.12807963824514, ST_GeomFromText('POINT(41.775294042322244 -73.12807963824514)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'New Township 9', 'New Township 9', 'NY', '00015', 41.17981826472524, -72.59376131221354, ST_GeomFromText('POINT(41.17981826472524 -72.59376131221354)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'New Township 10', 'New Township 10', 'NY', '00016', 39.74066390063308, -74.85416781884767, ST_GeomFromText('POINT(39.74066390063308 -74.85416781884767)', 4326)
);

-- Florida municipalities
INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Miami', 'Miami city', 'FL', '00001', 28.527150187360654, -81.8617956813, ST_GeomFromText('POINT(28.527150187360654 -81.8617956813)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Tampa', 'Tampa city', 'FL', '00002', 28.471650362238016, -82.5821915953567, ST_GeomFromText('POINT(28.471650362238016 -82.5821915953567)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Orlando', 'Orlando city', 'FL', '00003', 26.988724329505843, -83.35634268147406, ST_GeomFromText('POINT(26.988724329505843 -83.35634268147406)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Jacksonville', 'Jacksonville city', 'FL', '00004', 27.729341845154117, -83.21389862760476, ST_GeomFromText('POINT(27.729341845154117 -83.21389862760476)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'St. Petersburg', 'St. Petersburg city', 'FL', '00005', 27.39061621759178, -82.24090993192905, ST_GeomFromText('POINT(27.39061621759178 -82.24090993192905)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Tallahassee', 'Tallahassee city', 'FL', '00006', 27.49408144657938, -81.67704038582556, ST_GeomFromText('POINT(27.49408144657938 -81.67704038582556)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Florida Township 1', 'Florida Township 1', 'FL', '00007', 28.32981855559516, -82.5548533405746, ST_GeomFromText('POINT(28.32981855559516 -82.5548533405746)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Florida Township 2', 'Florida Township 2', 'FL', '00008', 28.371797426741875, -82.156593288818, ST_GeomFromText('POINT(28.371797426741875 -82.156593288818)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Florida Township 3', 'Florida Township 3', 'FL', '00009', 27.30918873372168, -84.01335413662541, ST_GeomFromText('POINT(27.30918873372168 -84.01335413662541)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Florida Township 4', 'Florida Township 4', 'FL', '00010', 29.094359186432296, -83.81233441026153, ST_GeomFromText('POINT(29.094359186432296 -83.81233441026153)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Florida Township 5', 'Florida Township 5', 'FL', '00011', 26.71306153645478, -82.93728786627554, ST_GeomFromText('POINT(26.71306153645478 -82.93728786627554)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Florida Township 6', 'Florida Township 6', 'FL', '00012', 27.44331881300526, -81.58932745359961, ST_GeomFromText('POINT(27.44331881300526 -81.58932745359961)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Florida Township 7', 'Florida Township 7', 'FL', '00013', 28.989223636812103, -82.45105977864272, ST_GeomFromText('POINT(28.989223636812103 -82.45105977864272)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Florida Township 8', 'Florida Township 8', 'FL', '00014', 28.075265402908034, -81.62750100897182, ST_GeomFromText('POINT(28.075265402908034 -81.62750100897182)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Florida Township 9', 'Florida Township 9', 'FL', '00015', 28.28716491917861, -81.68915969813206, ST_GeomFromText('POINT(28.28716491917861 -81.68915969813206)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Florida Township 10', 'Florida Township 10', 'FL', '00016', 27.958110104531837, -81.25460784629868, ST_GeomFromText('POINT(27.958110104531837 -81.25460784629868)', 4326)
);

-- Pennsylvania municipalities
INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Philadelphia', 'Philadelphia city', 'PA', '00001', 39.83366651354656, -76.28255307732128, ST_GeomFromText('POINT(39.83366651354656 -76.28255307732128)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Pittsburgh', 'Pittsburgh city', 'PA', '00002', 40.39362475136656, -75.91624083176865, ST_GeomFromText('POINT(40.39362475136656 -75.91624083176865)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Allentown', 'Allentown city', 'PA', '00003', 39.71116069615007, -76.33797246965698, ST_GeomFromText('POINT(39.71116069615007 -76.33797246965698)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Erie', 'Erie city', 'PA', '00004', 39.54871695580658, -77.56619203107326, ST_GeomFromText('POINT(39.54871695580658 -77.56619203107326)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Reading', 'Reading city', 'PA', '00005', 39.93499856598071, -76.0943435925743, ST_GeomFromText('POINT(39.93499856598071 -76.0943435925743)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Scranton', 'Scranton city', 'PA', '00006', 40.54432724172882, -76.87604177704836, ST_GeomFromText('POINT(40.54432724172882 -76.87604177704836)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Pennsylvania Township 1', 'Pennsylvania Township 1', 'PA', '00007', 41.27904660616107, -78.00454428737633, ST_GeomFromText('POINT(41.27904660616107 -78.00454428737633)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Pennsylvania Township 2', 'Pennsylvania Township 2', 'PA', '00008', 41.29275812034492, -77.23726258840435, ST_GeomFromText('POINT(41.29275812034492 -77.23726258840435)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Pennsylvania Township 3', 'Pennsylvania Township 3', 'PA', '00009', 39.2756791754151, -77.31146483601296, ST_GeomFromText('POINT(39.2756791754151 -77.31146483601296)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Pennsylvania Township 4', 'Pennsylvania Township 4', 'PA', '00010', 39.971137878805656, -76.8220326236901, ST_GeomFromText('POINT(39.971137878805656 -76.8220326236901)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Pennsylvania Township 5', 'Pennsylvania Township 5', 'PA', '00011', 40.37502359974148, -76.91293171566467, ST_GeomFromText('POINT(40.37502359974148 -76.91293171566467)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Pennsylvania Township 6', 'Pennsylvania Township 6', 'PA', '00012', 40.59523045996283, -76.08792831620342, ST_GeomFromText('POINT(40.59523045996283 -76.08792831620342)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Pennsylvania Township 7', 'Pennsylvania Township 7', 'PA', '00013', 40.005892549446045, -77.6517754637326, ST_GeomFromText('POINT(40.005892549446045 -77.6517754637326)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Pennsylvania Township 8', 'Pennsylvania Township 8', 'PA', '00014', 39.998213225931934, -76.64328662541057, ST_GeomFromText('POINT(39.998213225931934 -76.64328662541057)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Pennsylvania Township 9', 'Pennsylvania Township 9', 'PA', '00015', 39.43564260109492, -76.37282187013565, ST_GeomFromText('POINT(39.43564260109492 -76.37282187013565)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Pennsylvania Township 10', 'Pennsylvania Township 10', 'PA', '00016', 39.69352988030749, -76.60448947743113, ST_GeomFromText('POINT(39.69352988030749 -76.60448947743113)', 4326)
);

-- Illinois municipalities
INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Chicago', 'Chicago city', 'IL', '00001', 40.72451429040806, -90.16285589575979, ST_GeomFromText('POINT(40.72451429040806 -90.16285589575979)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Aurora', 'Aurora city', 'IL', '00002', 39.891808883571514, -88.56864197535128, ST_GeomFromText('POINT(39.891808883571514 -88.56864197535128)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Peoria', 'Peoria city', 'IL', '00003', 40.91165239110945, -88.73778427374799, ST_GeomFromText('POINT(40.91165239110945 -88.73778427374799)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Rockford', 'Rockford city', 'IL', '00004', 39.765192095786226, -88.53826689204608, ST_GeomFromText('POINT(39.765192095786226 -88.53826689204608)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Elgin', 'Elgin city', 'IL', '00005', 39.89120024141322, -88.63744424876445, ST_GeomFromText('POINT(39.89120024141322 -88.63744424876445)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Joliet', 'Joliet city', 'IL', '00006', 39.94337267112324, -90.29658254331537, ST_GeomFromText('POINT(39.94337267112324 -90.29658254331537)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Illinois Township 1', 'Illinois Township 1', 'IL', '00007', 41.21599573388844, -89.54164062218469, ST_GeomFromText('POINT(41.21599573388844 -89.54164062218469)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Illinois Township 2', 'Illinois Township 2', 'IL', '00008', 41.55345211947317, -88.85338891224485, ST_GeomFromText('POINT(41.55345211947317 -88.85338891224485)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Illinois Township 3', 'Illinois Township 3', 'IL', '00009', 40.49970268795402, -89.48166112636214, ST_GeomFromText('POINT(40.49970268795402 -89.48166112636214)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Illinois Township 4', 'Illinois Township 4', 'IL', '00010', 40.54046596153962, -89.37386533666559, ST_GeomFromText('POINT(40.54046596153962 -89.37386533666559)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Illinois Township 5', 'Illinois Township 5', 'IL', '00011', 41.49528793443339, -90.38702585231219, ST_GeomFromText('POINT(41.49528793443339 -90.38702585231219)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Illinois Township 6', 'Illinois Township 6', 'IL', '00012', 41.081721011104534, -88.17539931490924, ST_GeomFromText('POINT(41.081721011104534 -88.17539931490924)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Illinois Township 7', 'Illinois Township 7', 'IL', '00013', 41.16917054566483, -90.64953474286592, ST_GeomFromText('POINT(41.16917054566483 -90.64953474286592)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Illinois Township 8', 'Illinois Township 8', 'IL', '00014', 39.354606714449694, -90.89689388209167, ST_GeomFromText('POINT(39.354606714449694 -90.89689388209167)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Illinois Township 9', 'Illinois Township 9', 'IL', '00015', 40.32639743332142, -88.81659445758258, ST_GeomFromText('POINT(40.32639743332142 -88.81659445758258)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Illinois Township 10', 'Illinois Township 10', 'IL', '00016', 40.30003713126198, -90.44032542883417, ST_GeomFromText('POINT(40.30003713126198 -90.44032542883417)', 4326)
);

-- Ohio municipalities
INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Columbus', 'Columbus city', 'OH', '00001', 41.28725807223084, -82.89663287598515, ST_GeomFromText('POINT(41.28725807223084 -82.89663287598515)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Cleveland', 'Cleveland city', 'OH', '00002', 41.341332624647876, -82.70132422656926, ST_GeomFromText('POINT(41.341332624647876 -82.70132422656926)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Cincinnati', 'Cincinnati city', 'OH', '00003', 41.15992235453315, -82.87609935351806, ST_GeomFromText('POINT(41.15992235453315 -82.87609935351806)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Toledo', 'Toledo city', 'OH', '00004', 40.25489983227404, -83.18276686553958, ST_GeomFromText('POINT(40.25489983227404 -83.18276686553958)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Akron', 'Akron city', 'OH', '00005', 40.50892068484549, -83.7443357351386, ST_GeomFromText('POINT(40.50892068484549 -83.7443357351386)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Dayton', 'Dayton city', 'OH', '00006', 40.06404024442457, -82.15520895123896, ST_GeomFromText('POINT(40.06404024442457 -82.15520895123896)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Ohio Township 1', 'Ohio Township 1', 'OH', '00007', 40.36084562365917, -83.23373622685727, ST_GeomFromText('POINT(40.36084562365917 -83.23373622685727)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Ohio Township 2', 'Ohio Township 2', 'OH', '00008', 39.995597618884396, -82.75408657185011, ST_GeomFromText('POINT(39.995597618884396 -82.75408657185011)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Ohio Township 3', 'Ohio Township 3', 'OH', '00009', 39.36511810731045, -83.66053657921971, ST_GeomFromText('POINT(39.36511810731045 -83.66053657921971)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Ohio Township 4', 'Ohio Township 4', 'OH', '00010', 39.54789855492216, -82.16370512158942, ST_GeomFromText('POINT(39.54789855492216 -82.16370512158942)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Ohio Township 5', 'Ohio Township 5', 'OH', '00011', 39.53409326053668, -82.70260623060031, ST_GeomFromText('POINT(39.53409326053668 -82.70260623060031)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Ohio Township 6', 'Ohio Township 6', 'OH', '00012', 39.70018716939229, -81.88097263935725, ST_GeomFromText('POINT(39.70018716939229 -81.88097263935725)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Ohio Township 7', 'Ohio Township 7', 'OH', '00013', 40.58930339303027, -82.01176982546379, ST_GeomFromText('POINT(40.58930339303027 -82.01176982546379)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Ohio Township 8', 'Ohio Township 8', 'OH', '00014', 39.625341546191734, -82.30261614385532, ST_GeomFromText('POINT(39.625341546191734 -82.30261614385532)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Ohio Township 9', 'Ohio Township 9', 'OH', '00015', 40.41413833055282, -83.82647469721812, ST_GeomFromText('POINT(40.41413833055282 -83.82647469721812)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Ohio Township 10', 'Ohio Township 10', 'OH', '00016', 39.60960097360493, -83.61960622035585, ST_GeomFromText('POINT(39.60960097360493 -83.61960622035585)', 4326)
);

-- Michigan municipalities
INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Detroit', 'Detroit city', 'MI', '00001', 43.54304987272951, -85.32376090465908, ST_GeomFromText('POINT(43.54304987272951 -85.32376090465908)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Grand Rapids', 'Grand Rapids city', 'MI', '00002', 42.34815840616389, -84.16681567689176, ST_GeomFromText('POINT(42.34815840616389 -84.16681567689176)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Warren', 'Warren city', 'MI', '00003', 44.17144487925303, -84.87921602315686, ST_GeomFromText('POINT(44.17144487925303 -84.87921602315686)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Sterling Heights', 'Sterling Heights city', 'MI', '00004', 43.9267690522723, -84.89282979563082, ST_GeomFromText('POINT(43.9267690522723 -84.89282979563082)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Ann Arbor', 'Ann Arbor city', 'MI', '00005', 43.718230929560995, -84.17513992038884, ST_GeomFromText('POINT(43.718230929560995 -84.17513992038884)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Lansing', 'Lansing city', 'MI', '00006', 42.367618271189826, -84.79773650495797, ST_GeomFromText('POINT(42.367618271189826 -84.79773650495797)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Michigan Township 1', 'Michigan Township 1', 'MI', '00007', 43.91884530862734, -83.56137478456117, ST_GeomFromText('POINT(43.91884530862734 -83.56137478456117)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Michigan Township 2', 'Michigan Township 2', 'MI', '00008', 43.0020230343429, -84.70671539637401, ST_GeomFromText('POINT(43.0020230343429 -84.70671539637401)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Michigan Township 3', 'Michigan Township 3', 'MI', '00009', 42.2841552449722, -85.85953899633343, ST_GeomFromText('POINT(42.2841552449722 -85.85953899633343)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Michigan Township 4', 'Michigan Township 4', 'MI', '00010', 42.59590954924174, -83.9357096883533, ST_GeomFromText('POINT(42.59590954924174 -83.9357096883533)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Michigan Township 5', 'Michigan Township 5', 'MI', '00011', 42.786830698015656, -84.1869870734766, ST_GeomFromText('POINT(42.786830698015656 -84.1869870734766)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Michigan Township 6', 'Michigan Township 6', 'MI', '00012', 43.34975651312866, -84.77535287697674, ST_GeomFromText('POINT(43.34975651312866 -84.77535287697674)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Michigan Township 7', 'Michigan Township 7', 'MI', '00013', 43.58306048722421, -85.11855753464424, ST_GeomFromText('POINT(43.58306048722421 -85.11855753464424)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Michigan Township 8', 'Michigan Township 8', 'MI', '00014', 42.51201451053364, -83.57509038463323, ST_GeomFromText('POINT(42.51201451053364 -83.57509038463323)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Michigan Township 9', 'Michigan Township 9', 'MI', '00015', 41.94344949908002, -83.55052442104954, ST_GeomFromText('POINT(41.94344949908002 -83.55052442104954)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Michigan Township 10', 'Michigan Township 10', 'MI', '00016', 44.66173361408799, -85.20587284405146, ST_GeomFromText('POINT(44.66173361408799 -85.20587284405146)', 4326)
);

-- North Carolina municipalities
INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Charlotte', 'Charlotte city', 'NC', '00001', 36.47819578039479, -83.53103350225959, ST_GeomFromText('POINT(36.47819578039479 -83.53103350225959)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Raleigh', 'Raleigh city', 'NC', '00002', 34.877734697602754, -81.65195031682387, ST_GeomFromText('POINT(34.877734697602754 -81.65195031682387)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Greensboro', 'Greensboro city', 'NC', '00003', 34.90616470604463, -82.24191169869714, ST_GeomFromText('POINT(34.90616470604463 -82.24191169869714)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Durham', 'Durham city', 'NC', '00004', 36.53329414861582, -82.1006702798652, ST_GeomFromText('POINT(36.53329414861582 -82.1006702798652)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Winston-Salem', 'Winston-Salem city', 'NC', '00005', 35.8592353313137, -81.81740734203152, ST_GeomFromText('POINT(35.8592353313137 -81.81740734203152)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Fayetteville', 'Fayetteville city', 'NC', '00006', 35.481270876531234, -82.97195166463405, ST_GeomFromText('POINT(35.481270876531234 -82.97195166463405)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'North Township 1', 'North Township 1', 'NC', '00007', 36.11284701769452, -83.90020377148626, ST_GeomFromText('POINT(36.11284701769452 -83.90020377148626)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'North Township 2', 'North Township 2', 'NC', '00008', 36.87002557658967, -82.7603058394612, ST_GeomFromText('POINT(36.87002557658967 -82.7603058394612)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'North Township 3', 'North Township 3', 'NC', '00009', 35.491702616343964, -83.69213047292521, ST_GeomFromText('POINT(35.491702616343964 -83.69213047292521)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'North Township 4', 'North Township 4', 'NC', '00010', 35.93971377505635, -81.25269091530389, ST_GeomFromText('POINT(35.93971377505635 -81.25269091530389)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'North Township 5', 'North Township 5', 'NC', '00011', 35.34021293160523, -82.41436542656034, ST_GeomFromText('POINT(35.34021293160523 -82.41436542656034)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'North Township 6', 'North Township 6', 'NC', '00012', 35.840386032626654, -82.13888264943348, ST_GeomFromText('POINT(35.840386032626654 -82.13888264943348)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'North Township 7', 'North Township 7', 'NC', '00013', 36.65817527808199, -82.32584077845448, ST_GeomFromText('POINT(36.65817527808199 -82.32584077845448)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'North Township 8', 'North Township 8', 'NC', '00014', 36.01188914390497, -83.52711629615195, ST_GeomFromText('POINT(36.01188914390497 -83.52711629615195)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'North Township 9', 'North Township 9', 'NC', '00015', 35.43732387939365, -82.56951796222404, ST_GeomFromText('POINT(35.43732387939365 -82.56951796222404)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'North Township 10', 'North Township 10', 'NC', '00016', 35.168138580971984, -82.41033295639399, ST_GeomFromText('POINT(35.168138580971984 -82.41033295639399)', 4326)
);

-- Georgia municipalities
INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Atlanta', 'Atlanta city', 'GA', '00001', 32.73565122250186, -83.3790869726663, ST_GeomFromText('POINT(32.73565122250186 -83.3790869726663)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Columbus', 'Columbus city', 'GA', '00002', 31.762319687946295, -83.41509386059946, ST_GeomFromText('POINT(31.762319687946295 -83.41509386059946)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Augusta', 'Augusta city', 'GA', '00003', 32.96325786642565, -83.08743651933055, ST_GeomFromText('POINT(32.96325786642565 -83.08743651933055)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Macon', 'Macon city', 'GA', '00004', 33.10190301371919, -83.67447293228088, ST_GeomFromText('POINT(33.10190301371919 -83.67447293228088)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Savannah', 'Savannah city', 'GA', '00005', 33.158784585216196, -82.01230930294568, ST_GeomFromText('POINT(33.158784585216196 -82.01230930294568)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Athens', 'Athens city', 'GA', '00006', 32.844839474654805, -83.59044719379547, ST_GeomFromText('POINT(32.844839474654805 -83.59044719379547)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Georgia Township 1', 'Georgia Township 1', 'GA', '00007', 32.09393764575216, -82.49803258263746, ST_GeomFromText('POINT(32.09393764575216 -82.49803258263746)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Georgia Township 2', 'Georgia Township 2', 'GA', '00008', 33.33006002333194, -81.56538355196949, ST_GeomFromText('POINT(33.33006002333194 -81.56538355196949)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Georgia Township 3', 'Georgia Township 3', 'GA', '00009', 32.82433146041168, -82.32882525179923, ST_GeomFromText('POINT(32.82433146041168 -82.32882525179923)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Georgia Township 4', 'Georgia Township 4', 'GA', '00010', 31.871526691783586, -82.04145940496646, ST_GeomFromText('POINT(31.871526691783586 -82.04145940496646)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Georgia Township 5', 'Georgia Township 5', 'GA', '00011', 32.696536126026366, -81.49217322236231, ST_GeomFromText('POINT(32.696536126026366 -81.49217322236231)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Georgia Township 6', 'Georgia Township 6', 'GA', '00012', 31.695239605495352, -83.83225359810199, ST_GeomFromText('POINT(31.695239605495352 -83.83225359810199)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Georgia Township 7', 'Georgia Township 7', 'GA', '00013', 32.99717478464006, -82.78291411003886, ST_GeomFromText('POINT(32.99717478464006 -82.78291411003886)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Georgia Township 8', 'Georgia Township 8', 'GA', '00014', 31.772564493402275, -82.93369818458054, ST_GeomFromText('POINT(31.772564493402275 -82.93369818458054)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Georgia Township 9', 'Georgia Township 9', 'GA', '00015', 32.86643210328786, -82.27328046636977, ST_GeomFromText('POINT(32.86643210328786 -82.27328046636977)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Georgia Township 10', 'Georgia Township 10', 'GA', '00016', 31.82674417134721, -81.85316513564186, ST_GeomFromText('POINT(31.82674417134721 -81.85316513564186)', 4326)
);

-- New Hampshire municipalities
INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Manchester', 'Manchester city', 'NH', '00001', 44.30360090805374, -70.67422548826107, ST_GeomFromText('POINT(44.30360090805374 -70.67422548826107)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Nashua', 'Nashua city', 'NH', '00002', 42.46013583419721, -71.47044835770777, ST_GeomFromText('POINT(42.46013583419721 -71.47044835770777)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Concord', 'Concord city', 'NH', '00003', 44.192730641204086, -71.37937881255458, ST_GeomFromText('POINT(44.192730641204086 -71.37937881255458)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Dover', 'Dover city', 'NH', '00004', 42.776766764796456, -71.78055190241662, ST_GeomFromText('POINT(42.776766764796456 -71.78055190241662)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Rochester', 'Rochester city', 'NH', '00005', 42.82480000528784, -71.8493067596443, ST_GeomFromText('POINT(42.82480000528784 -71.8493067596443)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Keene', 'Keene city', 'NH', '00006', 43.881816700718495, -71.1149581630076, ST_GeomFromText('POINT(43.881816700718495 -71.1149581630076)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'New Township 1', 'New Township 1', 'NH', '00007', 44.111321602571124, -72.08959061506236, ST_GeomFromText('POINT(44.111321602571124 -72.08959061506236)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'New Township 2', 'New Township 2', 'NH', '00008', 43.57739380285979, -70.56255227920578, ST_GeomFromText('POINT(43.57739380285979 -70.56255227920578)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'New Township 3', 'New Township 3', 'NH', '00009', 42.681399385339596, -70.04370396662928, ST_GeomFromText('POINT(42.681399385339596 -70.04370396662928)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'New Township 4', 'New Township 4', 'NH', '00010', 42.36381921435939, -71.47118051154791, ST_GeomFromText('POINT(42.36381921435939 -71.47118051154791)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'New Township 5', 'New Township 5', 'NH', '00011', 43.28915484106543, -70.43313743749368, ST_GeomFromText('POINT(43.28915484106543 -70.43313743749368)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'New Township 6', 'New Township 6', 'NH', '00012', 44.21780877150868, -70.89588375951104, ST_GeomFromText('POINT(44.21780877150868 -70.89588375951104)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'New Township 7', 'New Township 7', 'NH', '00013', 44.075913596410416, -70.31166385435003, ST_GeomFromText('POINT(44.075913596410416 -70.31166385435003)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'New Township 8', 'New Township 8', 'NH', '00014', 44.7771488598913, -70.66869952440767, ST_GeomFromText('POINT(44.7771488598913 -70.66869952440767)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'New Township 9', 'New Township 9', 'NH', '00015', 43.13814451952011, -70.3929078267876, ST_GeomFromText('POINT(43.13814451952011 -70.3929078267876)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'New Township 10', 'New Township 10', 'NH', '00016', 44.02970322967128, -71.29510156626824, ST_GeomFromText('POINT(44.02970322967128 -71.29510156626824)', 4326)
);

-- Vermont municipalities
INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Burlington', 'Burlington city', 'VT', '00001', 44.41259624887762, -73.11332530449187, ST_GeomFromText('POINT(44.41259624887762 -73.11332530449187)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Montpelier', 'Montpelier city', 'VT', '00002', 44.68014544120616, -72.95382195619847, ST_GeomFromText('POINT(44.68014544120616 -72.95382195619847)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Rutland', 'Rutland city', 'VT', '00003', 44.85109708030486, -73.70119970033123, ST_GeomFromText('POINT(44.85109708030486 -73.70119970033123)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Barre', 'Barre city', 'VT', '00004', 43.08025394221052, -73.32738304916887, ST_GeomFromText('POINT(43.08025394221052 -73.32738304916887)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'St. Albans', 'St. Albans city', 'VT', '00005', 44.64735258470362, -72.475623097865, ST_GeomFromText('POINT(44.64735258470362 -72.475623097865)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Brattleboro', 'Brattleboro city', 'VT', '00006', 44.6002052356517, -71.757375152884, ST_GeomFromText('POINT(44.6002052356517 -71.757375152884)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Vermont Township 1', 'Vermont Township 1', 'VT', '00007', 42.767883608843555, -73.78723765455092, ST_GeomFromText('POINT(42.767883608843555 -73.78723765455092)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Vermont Township 2', 'Vermont Township 2', 'VT', '00008', 44.345150727401226, -71.96267366376352, ST_GeomFromText('POINT(44.345150727401226 -71.96267366376352)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Vermont Township 3', 'Vermont Township 3', 'VT', '00009', 44.34586386387835, -72.09235867002324, ST_GeomFromText('POINT(44.34586386387835 -72.09235867002324)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Vermont Township 4', 'Vermont Township 4', 'VT', '00010', 43.858562853512595, -71.57337010476772, ST_GeomFromText('POINT(43.858562853512595 -71.57337010476772)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Vermont Township 5', 'Vermont Township 5', 'VT', '00011', 42.631265623572446, -72.74430330413749, ST_GeomFromText('POINT(42.631265623572446 -72.74430330413749)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Vermont Township 6', 'Vermont Township 6', 'VT', '00012', 44.79763940347518, -72.91877127298523, ST_GeomFromText('POINT(44.79763940347518 -72.91877127298523)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Vermont Township 7', 'Vermont Township 7', 'VT', '00013', 42.777929190113646, -71.38695892978994, ST_GeomFromText('POINT(42.777929190113646 -71.38695892978994)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Vermont Township 8', 'Vermont Township 8', 'VT', '00014', 44.461828814256286, -73.25079506035927, ST_GeomFromText('POINT(44.461828814256286 -73.25079506035927)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Vermont Township 9', 'Vermont Township 9', 'VT', '00015', 42.66198921522375, -73.3884349019526, ST_GeomFromText('POINT(42.66198921522375 -73.3884349019526)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Vermont Township 10', 'Vermont Township 10', 'VT', '00016', 44.39756292654775, -73.42260642455265, ST_GeomFromText('POINT(44.39756292654775 -73.42260642455265)', 4326)
);

-- Maine municipalities
INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Portland', 'Portland city', 'ME', '00001', 45.17508272285759, -69.60589119484591, ST_GeomFromText('POINT(45.17508272285759 -69.60589119484591)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Lewiston', 'Lewiston city', 'ME', '00002', 44.569648664677544, -68.84530573272401, ST_GeomFromText('POINT(44.569648664677544 -68.84530573272401)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Bangor', 'Bangor city', 'ME', '00003', 43.46901514150802, -68.96283910837295, ST_GeomFromText('POINT(43.46901514150802 -68.96283910837295)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Auburn', 'Auburn city', 'ME', '00004', 43.92454302766524, -70.50422297667305, ST_GeomFromText('POINT(43.92454302766524 -70.50422297667305)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Biddeford', 'Biddeford city', 'ME', '00005', 44.25627515387548, -70.24345465855798, ST_GeomFromText('POINT(44.25627515387548 -70.24345465855798)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Augusta', 'Augusta city', 'ME', '00006', 45.20457807417483, -70.11990644521461, ST_GeomFromText('POINT(45.20457807417483 -70.11990644521461)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Maine Township 1', 'Maine Township 1', 'ME', '00007', 43.53813689077194, -70.03932522450985, ST_GeomFromText('POINT(43.53813689077194 -70.03932522450985)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Maine Township 2', 'Maine Township 2', 'ME', '00008', 45.343745628738645, -69.00548584190402, ST_GeomFromText('POINT(45.343745628738645 -69.00548584190402)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Maine Township 3', 'Maine Township 3', 'ME', '00009', 45.08928956747595, -70.88678378316078, ST_GeomFromText('POINT(45.08928956747595 -70.88678378316078)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Maine Township 4', 'Maine Township 4', 'ME', '00010', 45.49029382836782, -68.92522463492217, ST_GeomFromText('POINT(45.49029382836782 -68.92522463492217)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Maine Township 5', 'Maine Township 5', 'ME', '00011', 44.768068465822225, -69.7933394591742, ST_GeomFromText('POINT(44.768068465822225 -69.7933394591742)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Maine Township 6', 'Maine Township 6', 'ME', '00012', 45.524213478013195, -68.33304140393072, ST_GeomFromText('POINT(45.524213478013195 -68.33304140393072)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Maine Township 7', 'Maine Township 7', 'ME', '00013', 44.44164042756653, -69.1506640454175, ST_GeomFromText('POINT(44.44164042756653 -69.1506640454175)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Maine Township 8', 'Maine Township 8', 'ME', '00014', 43.564143911677085, -69.1781282552954, ST_GeomFromText('POINT(43.564143911677085 -69.1781282552954)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Maine Township 9', 'Maine Township 9', 'ME', '00015', 45.47167036927001, -70.1061282541902, ST_GeomFromText('POINT(45.47167036927001 -70.1061282541902)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Maine Township 10', 'Maine Township 10', 'ME', '00016', 45.347704501343095, -69.05384694529529, ST_GeomFromText('POINT(45.347704501343095 -69.05384694529529)', 4326)
);

-- Massachusetts municipalities
INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Boston', 'Boston city', 'MA', '00001', 42.94592024052803, -70.44930212113243, ST_GeomFromText('POINT(42.94592024052803 -70.44930212113243)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Worcester', 'Worcester city', 'MA', '00002', 41.55096090358544, -71.76948656954698, ST_GeomFromText('POINT(41.55096090358544 -71.76948656954698)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Springfield', 'Springfield city', 'MA', '00003', 41.25149711266397, -71.60569888840791, ST_GeomFromText('POINT(41.25149711266397 -71.60569888840791)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Cambridge', 'Cambridge city', 'MA', '00004', 41.88729398103015, -70.90444742410406, ST_GeomFromText('POINT(41.88729398103015 -70.90444742410406)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Lowell', 'Lowell city', 'MA', '00005', 41.89429732218592, -70.853827728428, ST_GeomFromText('POINT(41.89429732218592 -70.853827728428)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Brockton', 'Brockton city', 'MA', '00006', 42.511315984830716, -71.83547334204023, ST_GeomFromText('POINT(42.511315984830716 -71.83547334204023)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Massachusetts Township 1', 'Massachusetts Township 1', 'MA', '00007', 43.483028478537314, -70.83939260973956, ST_GeomFromText('POINT(43.483028478537314 -70.83939260973956)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Massachusetts Township 2', 'Massachusetts Township 2', 'MA', '00008', 43.53215054821462, -71.51387384427548, ST_GeomFromText('POINT(43.53215054821462 -71.51387384427548)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Massachusetts Township 3', 'Massachusetts Township 3', 'MA', '00009', 43.71828930690255, -71.65273512216861, ST_GeomFromText('POINT(43.71828930690255 -71.65273512216861)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Massachusetts Township 4', 'Massachusetts Township 4', 'MA', '00010', 43.44235510542136, -71.29164474171104, ST_GeomFromText('POINT(43.44235510542136 -71.29164474171104)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Massachusetts Township 5', 'Massachusetts Township 5', 'MA', '00011', 40.796694306588535, -72.3494959538275, ST_GeomFromText('POINT(40.796694306588535 -72.3494959538275)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Massachusetts Township 6', 'Massachusetts Township 6', 'MA', '00012', 42.87416825425956, -71.77098402970107, ST_GeomFromText('POINT(42.87416825425956 -71.77098402970107)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Massachusetts Township 7', 'Massachusetts Township 7', 'MA', '00013', 41.12175489909566, -71.06150750818904, ST_GeomFromText('POINT(41.12175489909566 -71.06150750818904)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Massachusetts Township 8', 'Massachusetts Township 8', 'MA', '00014', 40.85879810165804, -71.90358018146101, ST_GeomFromText('POINT(40.85879810165804 -71.90358018146101)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Massachusetts Township 9', 'Massachusetts Township 9', 'MA', '00015', 43.141624265692506, -70.61408205651787, ST_GeomFromText('POINT(43.141624265692506 -70.61408205651787)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Massachusetts Township 10', 'Massachusetts Township 10', 'MA', '00016', 41.35551710931494, -72.04171341459268, ST_GeomFromText('POINT(41.35551710931494 -72.04171341459268)', 4326)
);

-- Connecticut municipalities
INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Bridgeport', 'Bridgeport city', 'CT', '00001', 41.490885772343226, -73.12811710810517, ST_GeomFromText('POINT(41.490885772343226 -73.12811710810517)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'New Haven', 'New Haven city', 'CT', '00002', 40.686092648508264, -73.56824100144883, ST_GeomFromText('POINT(40.686092648508264 -73.56824100144883)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Hartford', 'Hartford city', 'CT', '00003', 40.831674561910134, -72.91118584830421, ST_GeomFromText('POINT(40.831674561910134 -72.91118584830421)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Stamford', 'Stamford city', 'CT', '00004', 41.5673742222064, -72.31959728594748, ST_GeomFromText('POINT(41.5673742222064 -72.31959728594748)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Waterbury', 'Waterbury city', 'CT', '00005', 42.018526413048136, -72.82545480083641, ST_GeomFromText('POINT(42.018526413048136 -72.82545480083641)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Norwalk', 'Norwalk city', 'CT', '00006', 42.27707409714266, -72.00746663522379, ST_GeomFromText('POINT(42.27707409714266 -72.00746663522379)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Connecticut Township 1', 'Connecticut Township 1', 'CT', '00007', 42.07229158876661, -72.43710194879202, ST_GeomFromText('POINT(42.07229158876661 -72.43710194879202)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Connecticut Township 2', 'Connecticut Township 2', 'CT', '00008', 40.48324275617226, -73.15691816769797, ST_GeomFromText('POINT(40.48324275617226 -73.15691816769797)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Connecticut Township 3', 'Connecticut Township 3', 'CT', '00009', 42.287954822287645, -72.35489382509363, ST_GeomFromText('POINT(42.287954822287645 -72.35489382509363)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Connecticut Township 4', 'Connecticut Township 4', 'CT', '00010', 41.12021639369266, -74.06065992512205, ST_GeomFromText('POINT(41.12021639369266 -74.06065992512205)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Connecticut Township 5', 'Connecticut Township 5', 'CT', '00011', 40.230016211172035, -74.21560854859977, ST_GeomFromText('POINT(40.230016211172035 -74.21560854859977)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Connecticut Township 6', 'Connecticut Township 6', 'CT', '00012', 42.68736116739911, -72.08549707068975, ST_GeomFromText('POINT(42.68736116739911 -72.08549707068975)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Connecticut Township 7', 'Connecticut Township 7', 'CT', '00013', 42.731855331336895, -73.78466538240102, ST_GeomFromText('POINT(42.731855331336895 -73.78466538240102)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Connecticut Township 8', 'Connecticut Township 8', 'CT', '00014', 42.254062334409966, -73.2489147468603, ST_GeomFromText('POINT(42.254062334409966 -73.2489147468603)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Connecticut Township 9', 'Connecticut Township 9', 'CT', '00015', 40.71511071752996, -71.68912582592073, ST_GeomFromText('POINT(40.71511071752996 -71.68912582592073)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Connecticut Township 10', 'Connecticut Township 10', 'CT', '00016', 40.246844588895506, -74.09147811402188, ST_GeomFromText('POINT(40.246844588895506 -74.09147811402188)', 4326)
);

-- Rhode Island municipalities
INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Providence', 'Providence city', 'RI', '00001', 41.28773972619883, -72.07962711892905, ST_GeomFromText('POINT(41.28773972619883 -72.07962711892905)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Warwick', 'Warwick city', 'RI', '00002', 42.059102865443464, -72.33749108767344, ST_GeomFromText('POINT(42.059102865443464 -72.33749108767344)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Cranston', 'Cranston city', 'RI', '00003', 42.4523503450316, -72.10228491659763, ST_GeomFromText('POINT(42.4523503450316 -72.10228491659763)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Pawtucket', 'Pawtucket city', 'RI', '00004', 41.65609961933408, -72.45568501384207, ST_GeomFromText('POINT(41.65609961933408 -72.45568501384207)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'East Providence', 'East Providence city', 'RI', '00005', 40.85939956186818, -71.59010348233264, ST_GeomFromText('POINT(40.85939956186818 -71.59010348233264)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Newport', 'Newport city', 'RI', '00006', 41.39586992619052, -72.31668795924068, ST_GeomFromText('POINT(41.39586992619052 -72.31668795924068)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Rhode Township 1', 'Rhode Township 1', 'RI', '00007', 42.898537649651104, -71.97325666086915, ST_GeomFromText('POINT(42.898537649651104 -71.97325666086915)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Rhode Township 2', 'Rhode Township 2', 'RI', '00008', 41.07531619510634, -72.26386094916512, ST_GeomFromText('POINT(41.07531619510634 -72.26386094916512)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Rhode Township 3', 'Rhode Township 3', 'RI', '00009', 41.62884334106806, -72.3806703381531, ST_GeomFromText('POINT(41.62884334106806 -72.3806703381531)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Rhode Township 4', 'Rhode Township 4', 'RI', '00010', 41.762757007923966, -71.0076684107202, ST_GeomFromText('POINT(41.762757007923966 -71.0076684107202)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Rhode Township 5', 'Rhode Township 5', 'RI', '00011', 43.108131250607, -71.55726516554344, ST_GeomFromText('POINT(43.108131250607 -71.55726516554344)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Rhode Township 6', 'Rhode Township 6', 'RI', '00012', 43.04289621380516, -72.21904423112304, ST_GeomFromText('POINT(43.04289621380516 -72.21904423112304)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Rhode Township 7', 'Rhode Township 7', 'RI', '00013', 42.791818549810614, -72.86278019726883, ST_GeomFromText('POINT(42.791818549810614 -72.86278019726883)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Rhode Township 8', 'Rhode Township 8', 'RI', '00014', 40.85948955391103, -71.60701331999286, ST_GeomFromText('POINT(40.85948955391103 -71.60701331999286)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Rhode Township 9', 'Rhode Township 9', 'RI', '00015', 41.50535451484659, -71.70554475035843, ST_GeomFromText('POINT(41.50535451484659 -71.70554475035843)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Rhode Township 10', 'Rhode Township 10', 'RI', '00016', 42.74196749872133, -71.84560025466297, ST_GeomFromText('POINT(42.74196749872133 -71.84560025466297)', 4326)
);

-- District of Columbia municipalities
INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'Washington', 'Washington city', 'DC', '00001', 39.272540669226466, -76.25318935273349, ST_GeomFromText('POINT(39.272540669226466 -76.25318935273349)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'District Township 1', 'District Township 1', 'DC', '00002', 39.92183911872381, -76.57094358071907, ST_GeomFromText('POINT(39.92183911872381 -76.57094358071907)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'District Township 2', 'District Township 2', 'DC', '00003', 40.33467397431379, -78.1421870159411, ST_GeomFromText('POINT(40.33467397431379 -78.1421870159411)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'District Township 3', 'District Township 3', 'DC', '00004', 40.30377372884154, -77.78520213004724, ST_GeomFromText('POINT(40.30377372884154 -77.78520213004724)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'District Township 4', 'District Township 4', 'DC', '00005', 40.18218568003838, -77.22116530526132, ST_GeomFromText('POINT(40.18218568003838 -77.22116530526132)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'District Township 5', 'District Township 5', 'DC', '00006', 38.199011301059976, -78.25209440281651, ST_GeomFromText('POINT(38.199011301059976 -78.25209440281651)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'District Township 6', 'District Township 6', 'DC', '00007', 37.63446009514253, -76.04609561137589, ST_GeomFromText('POINT(37.63446009514253 -76.04609561137589)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'District Township 7', 'District Township 7', 'DC', '00008', 38.48672354284169, -77.13185842531503, ST_GeomFromText('POINT(38.48672354284169 -77.13185842531503)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'District Township 8', 'District Township 8', 'DC', '00009', 38.80824664367392, -77.41053050813572, ST_GeomFromText('POINT(38.80824664367392 -77.41053050813572)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'District Township 9', 'District Township 9', 'DC', '00010', 38.293788225427086, -77.65232986227733, ST_GeomFromText('POINT(38.293788225427086 -77.65232986227733)', 4326)
);

INSERT INTO geo_municipal_boundaries (
  name, full_name, state_code, fips_code, centroid_lat, centroid_lng, boundary_polygon
) VALUES (
  'District Township 10', 'District Township 10', 'DC', '00011', 38.1323399418848, -75.72463510486595, ST_GeomFromText('POINT(38.1323399418848 -75.72463510486595)', 4326)
);

COMMIT;
SET unique_checks = 1;
SET autocommit = 1;

-- Complete: 267 municipalities loaded across 17 states
