USE kin;

-- GNIS Geographic Features for VI
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
  ('1613679', 'Ajax Peak', 'Summit', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3566343, -64.7262451, ST_GeomFromText('POINT(18.3566343 -64.7262451)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL),
  ('1613680', 'Aldershvile Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7427603, -64.7173232, ST_GeomFromText('POINT(17.7427603 -64.7173232)', 4326), NULL, NULL, '1981-01-26', '2018-03-30', NULL, NULL, NULL),
  ('1613685', 'Altona Lagoon', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.7513619, -64.6879195, ST_GeomFromText('POINT(17.7513619 -64.6879195)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613686', 'America Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3536026, -64.7495588, ST_GeomFromText('POINT(18.3536026 -64.7495588)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL),
  ('1613687', 'America Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3580091, -64.750415, ST_GeomFromText('POINT(18.3580091 -64.750415)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613689', 'Anna Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.368842, -64.7340258, ST_GeomFromText('POINT(18.368842 -64.7340258)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613692', 'Annaberg Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3643978, -64.7279145, ST_GeomFromText('POINT(18.3643978 -64.7279145)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613694', 'Annaly Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Baron Bluff', 17.7658333, -64.8502778, ST_GeomFromText('POINT(17.7658333 -64.8502778)', 4326), NULL, NULL, '1981-01-26', '2013-04-17', NULL, NULL, NULL),
  ('1613697', 'Banana Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3296784, -64.9440347, ST_GeomFromText('POINT(18.3296784 -64.9440347)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613698', 'Barents Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3449552, -65.0318164, ST_GeomFromText('POINT(18.3449552 -65.0318164)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613699', 'Baron Bluff', 'Cliff', 'United States Virgin Islands', 'UN', 'St. Croix', 'Baron Bluff', 17.7838604, -64.7793104, ST_GeomFromText('POINT(17.7838604 -64.7793104)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613700', 'Barrel of Beef', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3135661, -64.9145881, ST_GeomFromText('POINT(18.3135661 -64.9145881)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613703', 'Base Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3555471, -64.7113772, ST_GeomFromText('POINT(18.3555471 -64.7113772)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL),
  ('1613704', 'Battery Gut', 'Stream', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3296766, -64.7648598, ST_GeomFromText('POINT(18.3296766 -64.7648598)', 4326), 18.3438428, -64.7601376, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613705', 'Beauregard Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.7552506, -64.6870861, ST_GeomFromText('POINT(17.7552506 -64.6870861)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613711', 'Benner Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3185657, -64.8676414, ST_GeomFromText('POINT(18.3185657 -64.8676414)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613712', 'Benner Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3286033, -64.8593752, ST_GeomFromText('POINT(18.3286033 -64.8593752)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL),
  ('1613713', 'Berg Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3445222, -64.9333747, ST_GeomFromText('POINT(18.3445222 -64.9333747)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL),
  ('1613715', 'Bethesda Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.357045, -65.0036322, ST_GeomFromText('POINT(18.357045 -65.0036322)', 4326), NULL, NULL, '1981-01-26', '2017-08-23', NULL, NULL, NULL),
  ('1613719', 'Beverhout Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3152323, -64.852363, ST_GeomFromText('POINT(18.3152323 -64.852363)', 4326), NULL, NULL, '1981-01-26', '2011-05-13', 'Official', 'Board Decision', '1958-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613721', 'Black Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.345789, -64.985703, ST_GeomFromText('POINT(18.345789 -64.985703)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613722', 'Blackrock Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3389554, -64.6709711, ST_GeomFromText('POINT(18.3389554 -64.6709711)', 4326), NULL, NULL, '1981-01-26', '2017-08-23', 'Official', 'Board Decision', '1958-01-01'),
  ('1613723', 'Blasbalg Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3174545, -64.7918051, ST_GeomFromText('POINT(18.3174545 -64.7918051)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613725', 'Blinders Rocks', 'Island', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3441209, -64.6829135, ST_GeomFromText('POINT(18.3441209 -64.6829135)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1613726', 'Blue Mountain', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Baron Bluff', 17.7547947, -64.7995918, ST_GeomFromText('POINT(17.7547947 -64.7995918)', 4326), NULL, NULL, '1981-01-26', '2018-03-30', NULL, NULL, NULL),
  ('1613727', 'Bluebeard Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3401416, -64.9238866, ST_GeomFromText('POINT(18.3401416 -64.9238866)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL),
  ('1613728', 'Blunder Rock', 'Pillar', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3641199, -64.7959719, ST_GeomFromText('POINT(18.3641199 -64.7959719)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613729', 'Boatman Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3171769, -64.7748601, ST_GeomFromText('POINT(18.3171769 -64.7748601)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613731', 'Bolongo Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3116212, -64.8956982, ST_GeomFromText('POINT(18.3116212 -64.8956982)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613732', 'Bolongo Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.311899, -64.8940314, ST_GeomFromText('POINT(18.311899 -64.8940314)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613736', 'Booby Rock', 'Island', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.302178, -64.7098583, ST_GeomFromText('POINT(18.302178 -64.7098583)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613737', 'Borck Creek', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3538426, -64.7009695, ST_GeomFromText('POINT(18.3538426 -64.7009695)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613739', 'Bordeaux Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3616221, -65.0187598, ST_GeomFromText('POINT(18.3616221 -65.0187598)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613740', 'Bordeaux Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3557175, -65.0246815, ST_GeomFromText('POINT(18.3557175 -65.0246815)', 4326), NULL, NULL, '1981-01-26', '2017-08-23', NULL, NULL, NULL),
  ('1613741', 'Bordeaux Mountain', 'Summit', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.333996, -64.7279775, ST_GeomFromText('POINT(18.333996 -64.7279775)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', 'Official', 'Board Decision', '1958-01-01'),
  ('1613742', 'Bordeaux Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3621778, -65.0237602, ST_GeomFromText('POINT(18.3621778 -65.0237602)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1613743', 'Botany Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3569, -65.0351499, ST_GeomFromText('POINT(18.3569 -65.0351499)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613744', 'Botany Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3605112, -65.033483, ST_GeomFromText('POINT(18.3605112 -65.033483)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1613745', 'Bovoni Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3118991, -64.8898646, ST_GeomFromText('POINT(18.3118991 -64.8898646)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613746', 'Bovocoap Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3107882, -64.7812492, ST_GeomFromText('POINT(18.3107882 -64.7812492)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1960-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613747', 'Bovoni Cay', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3121769, -64.872086, ST_GeomFromText('POINT(18.3121769 -64.872086)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1613749', 'Brewers Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3432892, -64.9801473, ST_GeomFromText('POINT(18.3432892 -64.9801473)', 4326), NULL, NULL, '1981-01-26', '2010-01-26', NULL, NULL, NULL),
  ('1613750', 'Brommer Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3432571, -64.969432, ST_GeomFromText('POINT(18.3432571 -64.969432)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL),
  ('1613752', 'Brown Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3627312, -64.7051363, ST_GeomFromText('POINT(18.3627312 -64.7051363)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613753', 'Buck Island', 'Island', 'United States Virgin Islands', 'UN', 'St. Croix', 'Buck Island', 17.7869174, -64.6193064, ST_GeomFromText('POINT(17.7869174 -64.6193064)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613754', 'Buck Island', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.277455, -64.8937538, ST_GeomFromText('POINT(18.277455 -64.8937538)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613758', 'Bull Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3627315, -64.853196, ST_GeomFromText('POINT(18.3627315 -64.853196)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613759', 'Bull Rock', 'Pillar', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3574537, -64.8409734, ST_GeomFromText('POINT(18.3574537 -64.8409734)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613761', 'Bunker Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3466958, -64.9300939, ST_GeomFromText('POINT(18.3466958 -64.9300939)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL),
  ('1613762', 'Butler Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Frederiksted', 17.749973, -64.8912573, ST_GeomFromText('POINT(17.749973 -64.8912573)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613765', 'Cabes Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3396764, -64.8501406, ST_GeomFromText('POINT(18.3396764 -64.8501406)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613766', 'Cabrita Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3256626, -64.8348656, ST_GeomFromText('POINT(18.3256626 -64.8348656)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', 'Official', 'Board Decision', '1958-01-01'),
  ('1613767', 'Cabrita Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3249543, -64.8318065, ST_GeomFromText('POINT(18.3249543 -64.8318065)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613768', 'Cabritaberg', 'Ridge', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3341769, -64.9713391, ST_GeomFromText('POINT(18.3341769 -64.9713391)', 4326), NULL, NULL, '1981-01-26', '2021-02-01', 'Official', 'Board Decision', '1922-11-02'),
  ('1613769', 'Cabrithorn Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3074554, -64.7215252, ST_GeomFromText('POINT(18.3074554 -64.7215252)', 4326), NULL, NULL, '1981-01-26', '2011-05-13', 'Official', 'Board Decision', '1958-02-27'),
  ('1613771', 'Caledonia Valley', 'Valley', 'United States Virgin Islands', 'UN', 'St. Croix', 'Hams Bay', 17.7644918, -64.8820485, ST_GeomFromText('POINT(17.7644918 -64.8820485)', 4326), 17.7560088, -64.8551541, '1981-01-26', '2018-04-06', NULL, NULL, NULL),
  ('1613772', 'Calf Rock', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3041214, -64.8454182, ST_GeomFromText('POINT(18.3041214 -64.8454182)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613774', 'Camelberg Peak', 'Summit', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3368551, -64.7532785, ST_GeomFromText('POINT(18.3368551 -64.7532785)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL),
  ('1613782', 'Caneel Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3432872, -64.7884718, ST_GeomFromText('POINT(18.3432872 -64.7884718)', 4326), NULL, NULL, '1981-01-26', '2011-05-13', 'Official', 'Board Decision', '1958-01-01'),
  ('1613784', 'Caneel Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3370585, -64.7866129, ST_GeomFromText('POINT(18.3370585 -64.7866129)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', 'Official', 'Board Decision', '1960-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613785', 'Canegarden Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7024747, -64.732089, ST_GeomFromText('POINT(17.7024747 -64.732089)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613786', 'Capella Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.2760663, -64.8923648, ST_GeomFromText('POINT(18.2760663 -64.8923648)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1613787', 'Capella Islands', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.2771774, -64.8904202, ST_GeomFromText('POINT(18.2771774 -64.8904202)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1613789', 'Careen Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3351497, -64.942456, ST_GeomFromText('POINT(18.3351497 -64.942456)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL),
  ('1613790', 'Careening Cove', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.331067, -64.9337563, ST_GeomFromText('POINT(18.331067 -64.9337563)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613791', 'Caret Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3721778, -64.984869, ST_GeomFromText('POINT(18.3721778 -64.984869)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1613793', 'Caret Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3727333, -64.9818132, ST_GeomFromText('POINT(18.3727333 -64.9818132)', 4326), NULL, NULL, '1981-01-26', '2011-05-13', 'Official', 'Board Decision', '1958-01-01'),
  ('1613796', 'Carol Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3191225, -64.9462568, ST_GeomFromText('POINT(18.3191225 -64.9462568)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1613798', 'Carolina Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3263451, -64.9493127, ST_GeomFromText('POINT(18.3263451 -64.9493127)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1613799', 'Carval Rock', 'Island', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3696754, -64.7943052, ST_GeomFromText('POINT(18.3696754 -64.7943052)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613800', 'Cas Cay', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3068992, -64.8651414, ST_GeomFromText('POINT(18.3068992 -64.8651414)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1613802', 'Cassi Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3473746, -64.8831366, ST_GeomFromText('POINT(18.3473746 -64.8831366)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL),
  ('1613807', 'Cave Cove', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie OE N', 18.3963441, -64.9737567, ST_GeomFromText('POINT(18.3963441 -64.9737567)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1613809', 'Chenay Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.7616396, -64.6601413, ST_GeomFromText('POINT(17.7616396 -64.6601413)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613810', 'Chocolate Hole', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.315788, -64.7848604, ST_GeomFromText('POINT(18.315788 -64.7848604)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613812', 'Christiansted Harbor', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.7530284, -64.7031975, ST_GeomFromText('POINT(17.7530284 -64.7031975)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613814', 'Cinnamon Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3543981, -64.7593042, ST_GeomFromText('POINT(18.3543981 -64.7593042)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613815', 'Cinnamon Cay', 'Island', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3563424, -64.7568041, ST_GeomFromText('POINT(18.3563424 -64.7568041)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613818', 'Coakley Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.7608065, -64.6437521, ST_GeomFromText('POINT(17.7608065 -64.6437521)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613819', 'Cob Gut', 'Stream', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3146775, -64.7129139, ST_GeomFromText('POINT(18.3146775 -64.7129139)', 4326), 18.3296769, -64.7145808, '1981-01-26', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613821', 'Cockroach Island', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage OE N', 18.4038458, -65.0604288, ST_GeomFromText('POINT(18.4038458 -65.0604288)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613822', 'Cocoloba Cay', 'Island', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3152327, -64.7601374, ST_GeomFromText('POINT(18.3152327 -64.7601374)', 4326), NULL, NULL, '1981-01-26', '2011-05-13', 'Official', 'Board Decision', '1958-02-27'),
  ('1613823', 'Coculus Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3099546, -64.8981983, ST_GeomFromText('POINT(18.3099546 -64.8981983)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613824', 'Coculus Rock', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3138435, -64.8606966, ST_GeomFromText('POINT(18.3138435 -64.8606966)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613825', 'Coki Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3505096, -64.8659745, ST_GeomFromText('POINT(18.3505096 -64.8659745)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613826', 'Coki Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3493985, -64.8626411, ST_GeomFromText('POINT(18.3493985 -64.8626411)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613827', 'Compass Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3160657, -64.8648635, ST_GeomFromText('POINT(18.3160657 -64.8648635)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1613832', 'Congo Cay', 'Island', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.367731, -64.8026388, ST_GeomFromText('POINT(18.367731 -64.8026388)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613833', 'Congo Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3668977, -64.807639, ST_GeomFromText('POINT(18.3668977 -64.807639)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613837', 'Contant Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3202322, -64.794583, ST_GeomFromText('POINT(18.3202322 -64.794583)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613840', 'Coral Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3302325, -64.6909692, ST_GeomFromText('POINT(18.3302325 -64.6909692)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613842', 'Coral Harbor', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.343843, -64.7120808, ST_GeomFromText('POINT(18.343843 -64.7120808)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613844', 'Scorpion Rock', 'Pillar', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3221777, -64.9279224, ST_GeomFromText('POINT(18.3221777 -64.9279224)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613848', 'Cottongarden Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Buck Island', 17.7602512, -64.585416, ST_GeomFromText('POINT(17.7602512 -64.585416)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613849', 'Cottongarden Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Buck Island', 17.7616401, -64.5834715, ST_GeomFromText('POINT(17.7616401 -64.5834715)', 4326), NULL, NULL, '1981-01-26', '2020-11-12', NULL, NULL, NULL),
  ('1613850', 'Cow Rock', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3038436, -64.8473628, ST_GeomFromText('POINT(18.3038436 -64.8473628)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613852', 'Cowell Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3224555, -64.9329227, ST_GeomFromText('POINT(18.3224555 -64.9329227)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613853', 'Cowpet Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3160657, -64.8420848, ST_GeomFromText('POINT(18.3160657 -64.8420848)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613855', 'Cricket Rock', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage OE N', 18.4082904, -65.049317, ST_GeomFromText('POINT(18.4082904 -65.049317)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613856', 'Crown Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3360677, -64.9476463, ST_GeomFromText('POINT(18.3360677 -64.9476463)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613857', 'Crown Mountain', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3569309, -64.9730485, ST_GeomFromText('POINT(18.3569309 -64.9730485)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL),
  ('1613858', 'Cruz Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3318986, -64.7976387, ST_GeomFromText('POINT(18.3318986 -64.7976387)', 4326), NULL, NULL, '1981-01-26', '2011-05-13', 'Official', 'Board Decision', '1958-01-01'),
  ('1613861', 'Current Rock', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3149545, -64.8343067, ST_GeomFromText('POINT(18.3149545 -64.8343067)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613862', 'Darby Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.75466, -64.6738395, ST_GeomFromText('POINT(17.75466 -64.6738395)', 4326), NULL, NULL, '1981-01-26', '2018-03-30', NULL, NULL, NULL),
  ('1613863', 'David Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3416219, -65.0265383, ST_GeomFromText('POINT(18.3416219 -65.0265383)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1613864', 'Davis Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Croix', 'Baron Bluff', 17.7624726, -64.8320899, ST_GeomFromText('POINT(17.7624726 -64.8320899)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613865', 'Deck Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3118991, -64.8454182, ST_GeomFromText('POINT(18.3118991 -64.8454182)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613866', 'Denis Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3527314, -64.7756936, ST_GeomFromText('POINT(18.3527314 -64.7756936)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1613867', 'Devers Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3130103, -64.7837493, ST_GeomFromText('POINT(18.3130103 -64.7837493)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1613872', 'Diedrichs Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Buck Island', 17.7835841, -64.6223621, ST_GeomFromText('POINT(17.7835841 -64.6223621)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613873', 'Din Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3471776, -65.0751525, ST_GeomFromText('POINT(18.3471776 -65.0751525)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1613874', 'Dittlif Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3105105, -64.7662487, ST_GeomFromText('POINT(18.3105105 -64.7662487)', 4326), NULL, NULL, '1981-01-26', '2011-05-13', 'Official', 'Board Decision', '1960-01-01'),
  ('1613875', 'Dog Island', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.2957883, -64.8156949, ST_GeomFromText('POINT(18.2957883 -64.8156949)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613877', 'Dog Rocks', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.2949549, -64.8123614, ST_GeomFromText('POINT(18.2949549 -64.8123614)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613878', 'Domkirk Rock', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3349553, -65.0843196, ST_GeomFromText('POINT(18.3349553 -65.0843196)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1613881', 'Dorothea Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3702337, -64.9620905, ST_GeomFromText('POINT(18.3702337 -64.9620905)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1960-01-01'),
  ('1613882', 'Dorothea Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3713447, -64.9598682, ST_GeomFromText('POINT(18.3713447 -64.9598682)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1613884', 'Druif Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3169002, -64.9598685, ST_GeomFromText('POINT(18.3169002 -64.9598685)', 4326), NULL, NULL, '1981-01-26', '2011-05-13', 'Official', 'Board Decision', '1958-01-01'),
  ('1613886', 'Drunk Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3082889, -64.7004136, ST_GeomFromText('POINT(18.3082889 -64.7004136)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613887', 'Dry Rock', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3013439, -65.0101485, ST_GeomFromText('POINT(18.3013439 -65.0101485)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613888', 'Durloe Cays', 'Island', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3535647, -64.7931941, ST_GeomFromText('POINT(18.3535647 -64.7931941)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613890', 'Dutchcap Cay', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage OE N', 18.3796787, -65.061818, ST_GeomFromText('POINT(18.3796787 -65.061818)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613894', 'Mount Eagle', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Baron Bluff', 17.761275, -64.8116247, ST_GeomFromText('POINT(17.761275 -64.8116247)', 4326), NULL, NULL, '1981-01-26', '2018-03-30', NULL, NULL, NULL),
  ('1613896', 'East End Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Buck Island', 17.7535846, -64.5662484, ST_GeomFromText('POINT(17.7535846 -64.5662484)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1960-01-01'),
  ('1613897', 'East End Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3382879, -64.6629131, ST_GeomFromText('POINT(18.3382879 -64.6629131)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1960-01-01'),
  ('1613898', 'East End Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3396768, -64.6601354, ST_GeomFromText('POINT(18.3396768 -64.6601354)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613900', 'East Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Buck Island', 17.7552778, -64.5655556, ST_GeomFromText('POINT(17.7552778 -64.5655556)', 4326), NULL, NULL, '2000-01-01', '2020-11-11', 'Official', 'Board Decision', '1998-01-01'),
  ('1613901', 'Elephant Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3232894, -64.9529239, ST_GeomFromText('POINT(18.3232894 -64.9529239)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613903', 'Elk Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.345232, -64.6843024, ST_GeomFromText('POINT(18.345232 -64.6843024)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613911', 'Europa Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.317455, -64.7312477, ST_GeomFromText('POINT(18.317455 -64.7312477)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1960-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613912', 'Eva Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3566205, -64.8531961, ST_GeomFromText('POINT(18.3566205 -64.8531961)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613913', 'Eva Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3552316, -64.8512516, ST_GeomFromText('POINT(18.3552316 -64.8512516)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613916', 'Fareham Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7124742, -64.6712536, ST_GeomFromText('POINT(17.7124742 -64.6712536)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613917', 'Fareham Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7130298, -64.6687535, ST_GeomFromText('POINT(17.7130298 -64.6687535)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613918', 'Ferrall Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7052522, -64.6934767, ST_GeomFromText('POINT(17.7052522 -64.6934767)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613919', 'Fish Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3193992, -64.7640263, ST_GeomFromText('POINT(18.3193992 -64.7640263)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613921', 'Fish Bay Gut', 'Stream', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3227324, -64.7651376, ST_GeomFromText('POINT(18.3227324 -64.7651376)', 4326), 18.342454, -64.7568041, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613922', 'Fish Cay', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3096769, -64.83264, ST_GeomFromText('POINT(18.3096769 -64.83264)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613923', 'Flag Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3299853, -64.910743, ST_GeomFromText('POINT(18.3299853 -64.910743)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL),
  ('1613924', 'Flagstok Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3635155, -65.0027999, ST_GeomFromText('POINT(18.3635155 -65.0027999)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613925', 'Flamingo Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3116222, -64.9598684, ST_GeomFromText('POINT(18.3116222 -64.9598684)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613926', 'Flamingo Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.306622, -64.9573682, ST_GeomFromText('POINT(18.306622 -64.9573682)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613927', 'Flanagan Island', 'Island', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3266217, -64.6501351, ST_GeomFromText('POINT(18.3266217 -64.6501351)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613929', 'Flat Cays', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3166218, -64.9895919, ST_GeomFromText('POINT(18.3166218 -64.9895919)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613930', 'Footer Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3446764, -64.8615299, ST_GeomFromText('POINT(18.3446764 -64.8615299)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613935', 'Fortsberg', 'Summit', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3444975, -64.7057154, ST_GeomFromText('POINT(18.3444975 -64.7057154)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', 'Official', 'Board Decision', '1958-01-01'),
  ('1613936', 'Fortuna Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3424551, -65.0182044, ST_GeomFromText('POINT(18.3424551 -65.0182044)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613937', 'Fortuna Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3520711, -65.0053646, ST_GeomFromText('POINT(18.3520711 -65.0053646)', 4326), NULL, NULL, '1981-01-26', '2017-08-23', NULL, NULL, NULL),
  ('1613939', 'Francis Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3646755, -64.7495817, ST_GeomFromText('POINT(18.3646755 -64.7495817)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1613940', 'Frank Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3282875, -64.7990275, ST_GeomFromText('POINT(18.3282875 -64.7990275)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613944', 'Frederiksberg Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.338289, -64.9254224, ST_GeomFromText('POINT(18.338289 -64.9254224)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613948', 'Frenchman Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3135659, -64.9070877, ST_GeomFromText('POINT(18.3135659 -64.9070877)', 4326), NULL, NULL, '1981-01-26', '2011-05-13', 'Official', 'Board Decision', '1958-01-01'),
  ('1613949', 'Mount Washington', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Frederiksted', 17.7486633, -64.8769006, ST_GeomFromText('POINT(17.7486633 -64.8769006)', 4326), NULL, NULL, '1981-01-26', '2018-03-30', 'Official', 'Board Decision', '1978-01-01'),
  ('1613950', 'Frenchman Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3448644, -64.9424696, ST_GeomFromText('POINT(18.3448644 -64.9424696)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL),
  ('1613953', 'Friis Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3249549, -64.6995804, ST_GeomFromText('POINT(18.3249549 -64.6995804)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613956', 'Gallows Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7485842, -64.7009753, ST_GeomFromText('POINT(17.7485842 -64.7009753)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613957', 'Genti Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.322177, -64.7495815, ST_GeomFromText('POINT(18.322177 -64.7495815)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1613958', 'Gift Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3254183, -64.7725327, ST_GeomFromText('POINT(18.3254183 -64.7725327)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL),
  ('1613960', 'Goat Hills', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Buck Island', 17.7527577, -64.5782235, ST_GeomFromText('POINT(17.7527577 -64.5782235)', 4326), NULL, NULL, '1981-01-26', '2018-03-30', NULL, NULL, NULL),
  ('1613964', 'Grootpan Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3099553, -64.7173585, ST_GeomFromText('POINT(18.3099553 -64.7173585)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613965', 'Gorret Rock', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage OE N', 18.3777341, -65.0637626, ST_GeomFromText('POINT(18.3777341 -65.0637626)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1613966', 'Government Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3437992, -64.9294746, ST_GeomFromText('POINT(18.3437992 -64.9294746)', 4326), NULL, NULL, '1981-01-26', '2023-07-22', NULL, NULL, NULL),
  ('1613967', 'Gowed Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3524539, -64.6801358, ST_GeomFromText('POINT(18.3524539 -64.6801358)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613968', 'Grambokola Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3274326, -64.9638672, ST_GeomFromText('POINT(18.3274326 -64.9638672)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', 'Official', 'Board Decision', '1958-01-01'),
  ('1613971', 'Grapetree Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Grass Point', 17.7466403, -64.5915274, ST_GeomFromText('POINT(17.7466403 -64.5915274)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613972', 'Grapetree Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Grass Point', 17.7455292, -64.5984723, ST_GeomFromText('POINT(17.7455292 -64.5984723)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613973', 'Grass Cay', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3591203, -64.8326399, ST_GeomFromText('POINT(18.3591203 -64.8326399)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613974', 'Grass Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Grass Point', 17.7333072, -64.6106952, ST_GeomFromText('POINT(17.7333072 -64.6106952)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613975', 'Great Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3213433, -64.8376402, ST_GeomFromText('POINT(18.3213433 -64.8376402)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613976', 'Great Cruz Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3207878, -64.7895828, ST_GeomFromText('POINT(18.3207878 -64.7895828)', 4326), NULL, NULL, '1981-01-26', '2011-05-13', 'Official', 'Board Decision', '1960-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613977', 'Great Lameshur Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3166218, -64.7229142, ST_GeomFromText('POINT(18.3166218 -64.7229142)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1960-01-01'),
  ('1613978', 'Great Pond', 'Lake', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7255295, -64.6568085, ST_GeomFromText('POINT(17.7255295 -64.6568085)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613980', 'Great Pond Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7183074, -64.653753, ST_GeomFromText('POINT(17.7183074 -64.653753)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613981', 'Great Saint James Island', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3096769, -64.828751, ST_GeomFromText('POINT(18.3096769 -64.828751)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613982', 'Green Cay', 'Island', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.7669172, -64.6656968, ST_GeomFromText('POINT(17.7669172 -64.6656968)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613983', 'Green Cay', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3102325, -64.907921, ST_GeomFromText('POINT(18.3102325 -64.907921)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613985', 'Greig Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Baron Bluff', 17.7767294, -64.7624739, ST_GeomFromText('POINT(17.7767294 -64.7624739)', 4326), NULL, NULL, '1981-01-26', '2018-03-30', NULL, NULL, NULL),
  ('1613986', 'Grouper Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3574537, -64.8473625, ST_GeomFromText('POINT(18.3574537 -64.8473625)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613988', 'Guinea Gut', 'Stream', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3232878, -64.7876384, ST_GeomFromText('POINT(18.3232878 -64.7876384)', 4326), 18.3371764, -64.7765269, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613989', 'Halfpenny Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7038634, -64.6965324, ST_GeomFromText('POINT(17.7038634 -64.6965324)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1613990', 'Hams Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Hams Bay', 17.7646948, -64.8826461, ST_GeomFromText('POINT(17.7646948 -64.8826461)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1957-01-01'),
  ('1613992', 'Hams Bluff', 'Cliff', 'United States Virgin Islands', 'UN', 'St. Croix', 'Baron Bluff', 17.7708057, -64.8726459, ST_GeomFromText('POINT(17.7708057 -64.8726459)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1957-01-01'),
  ('1613994', 'Hans Lollik Island', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie OE N', 18.3980094, -64.9079202, ST_GeomFromText('POINT(18.3980094 -64.9079202)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613995', 'Hans Lollik Rock', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie OE N', 18.3843983, -64.9004201, ST_GeomFromText('POINT(18.3843983 -64.9004201)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1613996', 'Hansen Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3424543, -64.6748578, ST_GeomFromText('POINT(18.3424543 -64.6748578)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613997', 'Harbor Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3405098, -64.7070807, ST_GeomFromText('POINT(18.3405098 -64.7070807)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1613999', 'Hart Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3152325, -64.7793046, ST_GeomFromText('POINT(18.3152325 -64.7793046)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614000', 'Hassel Island', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3294003, -64.935423, ST_GeomFromText('POINT(18.3294003 -64.935423)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614002', 'Havensight Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3307335, -64.9235357, ST_GeomFromText('POINT(18.3307335 -64.9235357)', 4326), NULL, NULL, '1981-01-26', '2015-02-16', NULL, NULL, NULL),
  ('1614003', 'Hawk Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3531105, -64.9757917, ST_GeomFromText('POINT(18.3531105 -64.9757917)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1614004', 'Hawksnest Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3480093, -64.782916, ST_GeomFromText('POINT(18.3480093 -64.782916)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1960-01-01'),
  ('1614005', 'Hawksnest Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.353287, -64.7848606, ST_GeomFromText('POINT(18.353287 -64.7848606)', 4326), NULL, NULL, '1981-01-26', '2011-05-13', 'Official', 'Board Decision', '1958-01-01'),
  ('1614006', 'Haypiece Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3302441, -64.9582374, ST_GeomFromText('POINT(18.3302441 -64.9582374)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', 'Official', 'Board Decision', '1958-01-01'),
  ('1614007', 'Hendrik Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3668999, -64.9923693, ST_GeomFromText('POINT(18.3668999 -64.9923693)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1614008', 'Henley Cay', 'Island', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3535647, -64.7931941, ST_GeomFromText('POINT(18.3535647 -64.7931941)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1614021', 'Hughes Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Grass Point', 17.7452514, -64.5859716, ST_GeomFromText('POINT(17.7452514 -64.5859716)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614022', 'Hull Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3702338, -64.9545903, ST_GeomFromText('POINT(18.3702338 -64.9545903)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1614024', 'Hurricane Hole', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3432876, -64.6965249, ST_GeomFromText('POINT(18.3432876 -64.6965249)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614025', 'Inner Brass Island', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie OE N', 18.383011, -64.9707014, ST_GeomFromText('POINT(18.383011 -64.9707014)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614026', 'Isaac Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Grass Point', 17.749418, -64.5718042, ST_GeomFromText('POINT(17.749418 -64.5718042)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1614027', 'Isaac Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Grass Point', 17.7463624, -64.5759711, ST_GeomFromText('POINT(17.7463624 -64.5759711)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614028', 'Jack Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Grass Point', 17.7460847, -64.5809714, ST_GeomFromText('POINT(17.7460847 -64.5809714)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614030', 'Jersey Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3105102, -64.8587522, ST_GeomFromText('POINT(18.3105102 -64.8587522)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614034', 'Johns Folly Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3168997, -64.7006915, ST_GeomFromText('POINT(18.3168997 -64.7006915)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614035', 'Johnson Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3316213, -64.7031916, ST_GeomFromText('POINT(18.3316213 -64.7031916)', 4326), NULL, NULL, '1981-01-26', '2014-04-22', NULL, NULL, NULL),
  ('1614039', 'Jumbie Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3521759, -64.7740268, ST_GeomFromText('POINT(18.3521759 -64.7740268)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614040', 'Kalkun Cay', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.350511, -65.0576514, ST_GeomFromText('POINT(18.350511 -65.0576514)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1614041', 'Kastel Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3727334, -64.9737575, ST_GeomFromText('POINT(18.3727334 -64.9737575)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614042', 'Kiddel Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3077332, -64.7137473, ST_GeomFromText('POINT(18.3077332 -64.7137473)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614043', 'Kiddel Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3060667, -64.7115249, ST_GeomFromText('POINT(18.3060667 -64.7115249)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1614044', 'King Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3525404, -64.7318849, ST_GeomFromText('POINT(18.3525404 -64.7318849)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL),
  ('1614048', 'Kirkegaard Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Baron Bluff', 17.7711211, -64.7632849, ST_GeomFromText('POINT(17.7711211 -64.7632849)', 4326), NULL, NULL, '1981-01-26', '2018-03-30', NULL, NULL, NULL),
  ('1614049', 'Klein Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3193991, -64.7687488, ST_GeomFromText('POINT(18.3193991 -64.7687488)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614050', 'Klok Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3474727, -65.0258142, ST_GeomFromText('POINT(18.3474727 -65.0258142)', 4326), NULL, NULL, '1981-01-26', '2017-08-23', NULL, NULL, NULL),
  ('1614052', 'Knight Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Buck Island', 17.7571957, -64.593472, ST_GeomFromText('POINT(17.7571957 -64.593472)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614053', 'Konink Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3724556, -64.9801466, ST_GeomFromText('POINT(18.3724556 -64.9801466)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1614054', 'Krabbepan Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3441218, -65.0176489, ST_GeomFromText('POINT(18.3441218 -65.0176489)', 4326), NULL, NULL, '1981-01-26', '2011-05-13', 'Official', 'Board Decision', '1958-02-27'),
  ('1614055', 'Krause Lagoon', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Long Point', 17.7043956, -64.7671723, ST_GeomFromText('POINT(17.7043956 -64.7671723)', 4326), NULL, NULL, '1981-01-26', '2013-05-19', 'Official', 'Board Decision', '1967-01-01'),
  ('1614056', 'Krum Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3266227, -64.960702, ST_GeomFromText('POINT(18.3266227 -64.960702)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1614062', 'Lagoon Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3305102, -64.7004138, ST_GeomFromText('POINT(18.3305102 -64.7004138)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1614064', 'Lang Peak', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7333043, -64.6815332, ST_GeomFromText('POINT(17.7333043 -64.6815332)', 4326), NULL, NULL, '1981-01-26', '2018-03-30', NULL, NULL, NULL),
  ('1614065', 'Langmath', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3348496, -64.8736724, ST_GeomFromText('POINT(18.3348496 -64.8736724)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL),
  ('1614068', 'Leduck Island', 'Island', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3163441, -64.6879134, ST_GeomFromText('POINT(18.3163441 -64.6879134)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1614069', 'Lee Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3514362, -64.9273811, ST_GeomFromText('POINT(18.3514362 -64.9273811)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL),
  ('1614071', 'Leinster Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3674532, -64.7284702, ST_GeomFromText('POINT(18.3674532 -64.7284702)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1614073', 'Leinster Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3645815, -64.7126472, ST_GeomFromText('POINT(18.3645815 -64.7126472)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL),
  ('1614074', 'Leinster Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.367731, -64.7206922, ST_GeomFromText('POINT(18.367731 -64.7206922)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614076', 'Lerkenlund Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3632891, -64.9357006, ST_GeomFromText('POINT(18.3632891 -64.9357006)', 4326), NULL, NULL, '1981-01-26', '2011-05-13', 'Official', 'Board Decision', '1958-01-01'),
  ('1614079', 'Limestone Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3188448, -64.9490347, ST_GeomFromText('POINT(18.3188448 -64.9490347)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614081', 'Limetree Bay (historical)', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7041414, -64.7459782, ST_GeomFromText('POINT(17.7041414 -64.7459782)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1614082', 'Limetree Cove', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3438431, -64.6781912, ST_GeomFromText('POINT(18.3438431 -64.6781912)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614083', 'Lind Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3368985, -64.7987499, ST_GeomFromText('POINT(18.3368985 -64.7987499)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1614084', 'Lindbergh Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3313889, -64.9677778, ST_GeomFromText('POINT(18.3313889 -64.9677778)', 4326), NULL, NULL, '1981-01-26', '2015-05-21', 'Official', 'Board Decision', '1958-01-01'),
  ('1614085', 'Lisenlund Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3271237, -64.9207888, ST_GeomFromText('POINT(18.3271237 -64.9207888)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL),
  ('1614086', 'Little Coculus Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3105102, -64.9034763, ST_GeomFromText('POINT(18.3105102 -64.9034763)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614088', 'Little Hans Lollik Island', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie OE N', 18.4091202, -64.9079201, ST_GeomFromText('POINT(18.4091202 -64.9079201)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614090', 'Little Lameshur Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3188439, -64.7268032, ST_GeomFromText('POINT(18.3188439 -64.7268032)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1960-01-01'),
  ('1614092', 'Little Saint James Island', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.2999548, -64.8251397, ST_GeomFromText('POINT(18.2999548 -64.8251397)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614093', 'Little Saint Thomas', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3557889, -65.0412614, ST_GeomFromText('POINT(18.3557889 -65.0412614)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614094', 'Lizard Rocks', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie OE N', 18.3857888, -64.9898687, ST_GeomFromText('POINT(18.3857888 -64.9898687)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1614095', 'Long Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3349546, -64.6759689, ST_GeomFromText('POINT(18.3349546 -64.6759689)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614096', 'Long Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3349554, -64.9229222, ST_GeomFromText('POINT(18.3349554 -64.9229222)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614097', 'Long Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Long Point', 17.6802537, -64.8384795, ST_GeomFromText('POINT(17.6802537 -64.8384795)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614098', 'Long Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3030103, -64.8781974, ST_GeomFromText('POINT(18.3030103 -64.8781974)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1614099', 'Long Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.332177, -64.6776356, ST_GeomFromText('POINT(18.332177 -64.6776356)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614100', 'Long Point Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Long Point', 17.6830314, -64.841535, ST_GeomFromText('POINT(17.6830314 -64.841535)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614106', 'Lovango Cay', 'Island', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3624533, -64.80375, ST_GeomFromText('POINT(18.3624533 -64.80375)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614108', 'Lovenlund Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3666213, -64.913199, ST_GeomFromText('POINT(18.3666213 -64.913199)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614112', 'Lucas Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3424551, -65.0112596, ST_GeomFromText('POINT(18.3424551 -65.0112596)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614115', 'Magens Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3707888, -64.9357004, ST_GeomFromText('POINT(18.3707888 -64.9357004)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1614116', 'Maho Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3585646, -64.7473595, ST_GeomFromText('POINT(18.3585646 -64.7473595)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614118', 'Maho Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.360509, -64.7456927, ST_GeomFromText('POINT(18.360509 -64.7456927)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614119', 'Mail Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3724556, -64.9770909, ST_GeomFromText('POINT(18.3724556 -64.9770909)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614120', 'Mamey Peak', 'Summit', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3477694, -64.7394333, ST_GeomFromText('POINT(18.3477694 -64.7394333)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL),
  ('1614121', 'Manchenil Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7041412, -64.7076439, ST_GeomFromText('POINT(17.7041412 -64.7076439)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614124', 'Mandal Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3616207, -64.8962536, ST_GeomFromText('POINT(18.3616207 -64.8962536)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614125', 'Mandal Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3615567, -64.8922402, ST_GeomFromText('POINT(18.3615567 -64.8922402)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', 'Official', 'Board Decision', '1958-01-01'),
  ('1614126', 'Mandal Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3618985, -64.8906978, ST_GeomFromText('POINT(18.3618985 -64.8906978)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614127', 'Mangrove Lagoon', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3155101, -64.878753, ST_GeomFromText('POINT(18.3155101 -64.878753)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614129', 'Mardenboro Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3513427, -64.6987472, ST_GeomFromText('POINT(18.3513427 -64.6987472)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1614130', 'Margaret Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3373696, -64.7795407, ST_GeomFromText('POINT(18.3373696 -64.7795407)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL),
  ('1614131', 'Maria Bluff', 'Cliff', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3149546, -64.7884717, ST_GeomFromText('POINT(18.3149546 -64.7884717)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614132', 'Maria Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7419561, -64.6645228, ST_GeomFromText('POINT(17.7419561 -64.6645228)', 4326), NULL, NULL, '1981-01-26', '2018-03-30', NULL, NULL, NULL),
  ('1614134', 'Maroon Hole', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Baron Bluff', 17.7696947, -64.868757, ST_GeomFromText('POINT(17.7696947 -64.868757)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614135', 'Maroon Ridge', 'Ridge', 'United States Virgin Islands', 'UN', 'St. Croix', 'Baron Bluff', 17.7630172, -64.8635551, ST_GeomFromText('POINT(17.7630172 -64.8635551)', 4326), NULL, NULL, '1981-01-26', '2018-03-30', NULL, NULL, NULL),
  ('1614136', 'Mars Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Long Point', 17.7060136, -64.8745738, ST_GeomFromText('POINT(17.7060136 -64.8745738)', 4326), NULL, NULL, '1981-01-26', '2018-03-30', NULL, NULL, NULL),
  ('1614137', 'Mary Creek', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3655088, -64.7370814, ST_GeomFromText('POINT(18.3655088 -64.7370814)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614138', 'Mary Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3705086, -64.7434705, ST_GeomFromText('POINT(18.3705086 -64.7434705)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614142', 'May Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3288431, -64.8065278, ST_GeomFromText('POINT(18.3288431 -64.8065278)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614143', 'Mennebeck Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3543983, -64.6851359, ST_GeomFromText('POINT(18.3543983 -64.6851359)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1614146', 'Milord Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7141408, -64.6645867, ST_GeomFromText('POINT(17.7141408 -64.6645867)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614147', 'Mingo Cay', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3596758, -64.8201394, ST_GeomFromText('POINT(18.3596758 -64.8201394)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1614148', 'Minna Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3206096, -64.7115486, ST_GeomFromText('POINT(18.3206096 -64.7115486)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL),
  ('1614152', 'Montalvan Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3041217, -65.0020925, ST_GeomFromText('POINT(18.3041217 -65.0020925)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1614154', 'Monte Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3199546, -64.7726378, ST_GeomFromText('POINT(18.3199546 -64.7726378)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614157', 'Moravian Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3263431, -64.7993054, ST_GeomFromText('POINT(18.3263431 -64.7993054)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1614158', 'More Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3589414, -64.6972758, ST_GeomFromText('POINT(18.3589414 -64.6972758)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL),
  ('1614159', 'Morne Rond', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Buck Island', 17.7540435, -64.5710375, ST_GeomFromText('POINT(17.7540435 -64.5710375)', 4326), NULL, NULL, '1981-01-26', '2018-03-30', NULL, NULL, NULL),
  ('1614161', 'Morningstar Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3191218, -64.9195885, ST_GeomFromText('POINT(18.3191218 -64.9195885)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614162', 'Mosquito Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3246782, -64.9623688, ST_GeomFromText('POINT(18.3246782 -64.9623688)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1614164', 'Mother East Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3627316, -64.8690301, ST_GeomFromText('POINT(18.3627316 -64.8690301)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614171', 'Muhlenfels Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3207886, -64.9226443, ST_GeomFromText('POINT(18.3207886 -64.9226443)', 4326), NULL, NULL, '1981-01-26', '2011-05-13', 'Official', 'Board Decision', '1958-01-01'),
  ('1614172', 'Muller Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3246767, -64.8445848, ST_GeomFromText('POINT(18.3246767 -64.8445848)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614175', 'Nana Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3422703, -64.9604065, ST_GeomFromText('POINT(18.3422703 -64.9604065)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', 'Official', 'Board Decision', '1958-01-01'),
  ('1614176', 'Nancy Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3454051, -64.6726175, ST_GeomFromText('POINT(18.3454051 -64.6726175)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL),
  ('1614177', 'Nanny Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3127331, -64.6993025, ST_GeomFromText('POINT(18.3127331 -64.6993025)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614179', 'Nazareth Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3180101, -64.8551409, ST_GeomFromText('POINT(18.3180101 -64.8551409)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1614181', 'Neltjeberg Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3716224, -64.9684796, ST_GeomFromText('POINT(18.3716224 -64.9684796)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614183', 'Newfound Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3460654, -64.6679132, ST_GeomFromText('POINT(18.3460654 -64.6679132)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614189', 'Nulliberg', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3257849, -64.8965336, ST_GeomFromText('POINT(18.3257849 -64.8965336)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1614192', 'Ornen Rock', 'Pillar', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie OE N', 18.3885663, -64.9490337, ST_GeomFromText('POINT(18.3885663 -64.9490337)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614193', 'Otter Creek', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3505095, -64.6915248, ST_GeomFromText('POINT(18.3505095 -64.6915248)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614194', 'Outer Brass Island', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie OE N', 18.3946775, -64.9709788, ST_GeomFromText('POINT(18.3946775 -64.9709788)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614196', 'Oxford Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Long Point', 17.7465056, -64.8574913, ST_GeomFromText('POINT(17.7465056 -64.8574913)', 4326), NULL, NULL, '1981-01-26', '2018-03-28', NULL, NULL, NULL),
  ('1614197', 'Packet Rock', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.299677, -64.8904201, ST_GeomFromText('POINT(18.299677 -64.8904201)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614198', 'Pacquereau Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.322733, -64.9218109, ST_GeomFromText('POINT(18.322733 -64.9218109)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614202', 'Patricia Cay', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3068991, -64.8718082, ST_GeomFromText('POINT(18.3068991 -64.8718082)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614203', 'Patrick Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.304677, -64.8698638, ST_GeomFromText('POINT(18.304677 -64.8698638)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614206', 'Pelican Cay', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie OE N', 18.4141201, -64.9079201, ST_GeomFromText('POINT(18.4141201 -64.9079201)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1614208', 'Pen Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3407876, -64.7131919, ST_GeomFromText('POINT(18.3407876 -64.7131919)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1614209', 'Perkins Cay', 'Island', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3541203, -64.7773603, ST_GeomFromText('POINT(18.3541203 -64.7773603)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614210', 'Perseverance Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3493999, -64.9923698, ST_GeomFromText('POINT(18.3493999 -64.9923698)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614211', 'Peter Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3541203, -64.7629154, ST_GeomFromText('POINT(18.3541203 -64.7629154)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614212', 'Peter Peak', 'Summit', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3473158, -64.7622107, ST_GeomFromText('POINT(18.3473158 -64.7622107)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL),
  ('1614216', 'Peterson Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.343193, -64.884461, ST_GeomFromText('POINT(18.343193 -64.884461)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL),
  ('1614218', 'Picara Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie OE N', 18.3832885, -64.9404223, ST_GeomFromText('POINT(18.3832885 -64.9404223)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614221', 'Mount Pleasant', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3442735, -64.8664273, ST_GeomFromText('POINT(18.3442735 -64.8664273)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL),
  ('1614223', 'Point Cudejarre', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Buck Island', 17.7513623, -64.5684707, ST_GeomFromText('POINT(17.7513623 -64.5684707)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614224', 'Pond Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3316214, -64.6751356, ST_GeomFromText('POINT(18.3316214 -64.6751356)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614225', 'Popilleau Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3477317, -64.7051363, ST_GeomFromText('POINT(18.3477317 -64.7051363)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1614226', 'Porpoise Rocks', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.309122, -64.9707021, ST_GeomFromText('POINT(18.309122 -64.9707021)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614227', 'Pow Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.7613621, -64.6312515, ST_GeomFromText('POINT(17.7613621 -64.6312515)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614228', 'Prettyklip Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3355098, -64.8479182, ST_GeomFromText('POINT(18.3355098 -64.8479182)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614229', 'Princess Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3546761, -64.6931915, ST_GeomFromText('POINT(18.3546761 -64.6931915)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1614230', 'Privateer Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3341214, -64.6654131, ST_GeomFromText('POINT(18.3341214 -64.6654131)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614231', 'Privateer Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3338436, -64.6620798, ST_GeomFromText('POINT(18.3338436 -64.6620798)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614233', 'Prospect Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7285701, -64.6773023, ST_GeomFromText('POINT(17.7285701 -64.6773023)', 4326), NULL, NULL, '1981-01-26', '2018-03-30', NULL, NULL, NULL),
  ('1614234', 'Prospect Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Hams Bay', 17.7537454, -64.8777812, ST_GeomFromText('POINT(17.7537454 -64.8777812)', 4326), NULL, NULL, '1981-01-26', '2018-03-28', NULL, NULL, NULL),
  ('1614238', 'Protestant Cay', 'Island', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7496952, -64.7026421, ST_GeomFromText('POINT(17.7496952 -64.7026421)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614239', 'Providence Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3196781, -64.9576463, ST_GeomFromText('POINT(18.3196781 -64.9576463)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1614240', 'Prune Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.7633064, -64.65153, ST_GeomFromText('POINT(17.7633064 -64.65153)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614241', 'Pull Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.7658063, -64.6554189, ST_GeomFromText('POINT(17.7658063 -64.6554189)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614243', 'Punnett Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.761084, -64.6745859, ST_GeomFromText('POINT(17.761084 -64.6745859)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614244', 'Punnett Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.7619173, -64.6726414, ST_GeomFromText('POINT(17.7619173 -64.6726414)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614245', 'Ram Head', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.2985671, -64.7029136, ST_GeomFromText('POINT(18.2985671 -64.7029136)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614246', 'Ram Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3026992, -64.7014021, ST_GeomFromText('POINT(18.3026992 -64.7014021)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL),
  ('1614247', 'Ramgoat Cay', 'Island', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3552313, -64.7893051, ST_GeomFromText('POINT(18.3552313 -64.7893051)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1614250', 'Rata Cay', 'Island', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3560647, -64.7968053, ST_GeomFromText('POINT(18.3560647 -64.7968053)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1614253', 'Red Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3341787, -64.8478317, ST_GeomFromText('POINT(18.3341787 -64.8478317)', 4326), NULL, NULL, '1981-01-26', '2013-08-29', NULL, NULL, NULL),
  ('1614254', 'Red Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3074547, -64.8618078, ST_GeomFromText('POINT(18.3074547 -64.8618078)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1614255', 'Red Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3296781, -64.9715357, ST_GeomFromText('POINT(18.3296781 -64.9715357)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614256', 'Red Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3302326, -64.6709688, ST_GeomFromText('POINT(18.3302326 -64.6709688)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614257', 'Redhook Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3280099, -64.8398624, ST_GeomFromText('POINT(18.3280099 -64.8398624)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614258', 'Redhook Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3303644, -64.8469165, ST_GeomFromText('POINT(18.3303644 -64.8469165)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', 'Official', 'Board Decision', '1958-01-01'),
  ('1614259', 'Redhook Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3299543, -64.8448626, ST_GeomFromText('POINT(18.3299543 -64.8448626)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614260', 'Reef Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3188437, -64.7495815, ST_GeomFromText('POINT(18.3188437 -64.7495815)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614262', 'Regis Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3274561, -64.956813, ST_GeomFromText('POINT(18.3274561 -64.956813)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614263', 'Rendezvous Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3141215, -64.7729155, ST_GeomFromText('POINT(18.3141215 -64.7729155)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614264', 'Reseau Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3674558, -64.9412564, ST_GeomFromText('POINT(18.3674558 -64.9412564)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1614269', 'Robin Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7288628, -64.6284739, ST_GeomFromText('POINT(17.7288628 -64.6284739)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1614270', 'Rod Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Grass Point', 17.7333072, -64.6179178, ST_GeomFromText('POINT(17.7333072 -64.6179178)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614271', 'Roman Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3216182, -64.7837514, ST_GeomFromText('POINT(18.3216182 -64.7837514)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL),
  ('1614272', 'Romney Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Buck Island', 17.7571957, -64.6006946, ST_GeomFromText('POINT(17.7571957 -64.6006946)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614273', 'Rose Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Baron Bluff', 17.7527685, -64.8582872, ST_GeomFromText('POINT(17.7527685 -64.8582872)', 4326), NULL, NULL, '1981-01-26', '2018-03-28', NULL, NULL, NULL),
  ('1614275', 'Rotto Cay', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3141213, -64.8643079, ST_GeomFromText('POINT(18.3141213 -64.8643079)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614276', 'Rough Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie OE N', 18.4018996, -64.9748677, ST_GeomFromText('POINT(18.4018996 -64.9748677)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1614277', 'Round Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3382878, -64.6829135, ST_GeomFromText('POINT(18.3382878 -64.6829135)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614281', 'Runnel Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3441218, -65.006537, ST_GeomFromText('POINT(18.3441218 -65.006537)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614282', 'Rupert Rock', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3282888, -64.9259779, ST_GeomFromText('POINT(18.3282888 -64.9259779)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614284', 'Ruy Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3713447, -64.9632016, ST_GeomFromText('POINT(18.3713447 -64.9632016)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1614285', 'Ruyter Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3280118, -64.9484794, ST_GeomFromText('POINT(18.3280118 -64.9484794)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1614287', 'Saba Island', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3055106, -65.0007035, ST_GeomFromText('POINT(18.3055106 -65.0007035)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614289', 'Sabbat Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3213439, -64.6970803, ST_GeomFromText('POINT(18.3213439 -64.6970803)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614291', 'Saint Croix', 'Island', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7396955, -64.738755, ST_GeomFromText('POINT(17.7396955 -64.738755)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614292', 'Saint George Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Long Point', 17.7192265, -64.8563405, ST_GeomFromText('POINT(17.7192265 -64.8563405)', 4326), NULL, NULL, '1981-01-26', '2018-03-30', NULL, NULL, NULL),
  ('1614294', 'Saint James Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3105102, -64.8373624, ST_GeomFromText('POINT(18.3105102 -64.8373624)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614296', 'Saint John', 'Island', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3396764, -64.7495816, ST_GeomFromText('POINT(18.3396764 -64.7495816)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614298', 'Saint John Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3374542, -64.8479182, ST_GeomFromText('POINT(18.3374542 -64.8479182)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614304', 'Saint Peter', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3560678, -64.9470906, ST_GeomFromText('POINT(18.3560678 -64.9470906)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614305', 'Saint Thomas', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3532896, -64.9365344, ST_GeomFromText('POINT(18.3532896 -64.9365344)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1614306', 'Saint Thomas Harbor', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3299555, -64.9287559, ST_GeomFromText('POINT(18.3299555 -64.9287559)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614308', 'Salomon Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3407873, -64.7912496, ST_GeomFromText('POINT(18.3407873 -64.7912496)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614309', 'Salt Cay', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3619003, -65.0495952, ST_GeomFromText('POINT(18.3619003 -65.0495952)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614311', 'Salt Pond', 'Lake', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3077333, -64.7029137, ST_GeomFromText('POINT(18.3077333 -64.7029137)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614312', 'Salt River', 'Stream', 'United States Virgin Islands', 'UN', 'St. Croix', 'Baron Bluff', 17.7683053, -64.7598659, ST_GeomFromText('POINT(17.7683053 -64.7598659)', 4326), 17.7655281, -64.8037562, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614313', 'Salt River Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Baron Bluff', 17.7777492, -64.7556987, ST_GeomFromText('POINT(17.7777492 -64.7556987)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614314', 'Saltpond Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3077333, -64.7093027, ST_GeomFromText('POINT(18.3077333 -64.7093027)', 4326), NULL, NULL, '1981-01-26', '2011-05-13', 'Official', 'Board Decision', '1960-07-14'),
  ('1614315', 'Saltwater Money Rock', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3446776, -65.0490396, ST_GeomFromText('POINT(18.3446776 -65.0490396)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614316', 'Sanders Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3360656, -64.7115251, ST_GeomFromText('POINT(18.3360656 -64.7115251)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614317', 'Sandy Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3538443, -65.0370944, ST_GeomFromText('POINT(18.3538443 -65.0370944)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1614318', 'Sandy Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Frederiksted', 17.6791427, -64.9029246, ST_GeomFromText('POINT(17.6791427 -64.9029246)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614320', 'Santa Maria Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3643998, -64.9962584, ST_GeomFromText('POINT(18.3643998 -64.9962584)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614322', 'Sara Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3370026, -64.9610155, ST_GeomFromText('POINT(18.3370026 -64.9610155)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', 'Official', 'Board Decision', '1958-01-01'),
  ('1614323', 'Savana Island', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3407887, -65.0782082, ST_GeomFromText('POINT(18.3407887 -65.0782082)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614327', 'Seven Hills', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7425084, -64.6408291, ST_GeomFromText('POINT(17.7425084 -64.6408291)', 4326), NULL, NULL, '1981-01-26', '2018-03-30', NULL, NULL, NULL),
  ('1614328', 'Shark Island', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3371764, -64.8445848, ST_GeomFromText('POINT(18.3371764 -64.8445848)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614332', 'Signal Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3542555, -64.9444746, ST_GeomFromText('POINT(18.3542555 -64.9444746)', 4326), NULL, NULL, '1981-01-26', '2016-12-03', NULL, NULL, NULL),
  ('1614335', 'Skipper Jacob Rock', 'Island', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.328843, -64.8048612, ST_GeomFromText('POINT(18.328843 -64.8048612)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614337', 'Smith Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3390161, -64.8557925, ST_GeomFromText('POINT(18.3390161 -64.8557925)', 4326), NULL, NULL, '1981-01-26', '2013-08-29', NULL, NULL, NULL),
  ('1614342', 'Solitude Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.7594177, -64.6281958, ST_GeomFromText('POINT(17.7594177 -64.6281958)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1614344', 'Southgate Lagoon', 'Lake', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.7594174, -64.666808, ST_GeomFromText('POINT(17.7594174 -64.666808)', 4326), NULL, NULL, '1981-01-26', '2010-03-31', 'Official', 'Board Decision', '1983-07-14'),
  ('1614345', 'Southside Pond', 'Lake', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3327325, -64.6734689, ST_GeomFromText('POINT(18.3327325 -64.6734689)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614349', 'Sprat Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3191225, -64.9443122, ST_GeomFromText('POINT(18.3191225 -64.9443122)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614351', 'Sprat Hole', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Frederiksted', 17.7391401, -64.8920907, ST_GeomFromText('POINT(17.7391401 -64.8920907)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614352', 'Sprat Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3177334, -64.9401453, ST_GeomFromText('POINT(18.3177334 -64.9401453)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614353', 'Spring Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7094188, -64.6826429, ST_GeomFromText('POINT(17.7094188 -64.6826429)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614354', 'Spring Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.352454, -64.8748638, ST_GeomFromText('POINT(18.352454 -64.8748638)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614355', 'Spring Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3527318, -64.877364, ST_GeomFromText('POINT(18.3527318 -64.877364)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614359', 'Stalley Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3077324, -64.8815309, ST_GeomFromText('POINT(18.3077324 -64.8815309)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614360', 'Steven Cay', 'Island', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3305097, -64.8070834, ST_GeomFromText('POINT(18.3305097 -64.8070834)', 4326), NULL, NULL, '1981-01-26', '2011-05-13', 'Official', 'Board Decision', '1958-02-27');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1614362', 'Stony Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3582873, -64.8670856, ST_GeomFromText('POINT(18.3582873 -64.8670856)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614365', 'Stumpy Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3641221, -65.0079257, ST_GeomFromText('POINT(18.3641221 -65.0079257)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1614366', 'Stumpy Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3682888, -65.0068144, ST_GeomFromText('POINT(18.3682888 -65.0068144)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1614367', 'Sugar Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Baron Bluff', 17.7730273, -64.7595879, ST_GeomFromText('POINT(17.7730273 -64.7595879)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614368', 'Sugarloaf Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Buck Island', 17.7527485, -64.5781956, ST_GeomFromText('POINT(17.7527485 -64.5781956)', 4326), NULL, NULL, '1981-01-26', '2018-03-30', NULL, NULL, NULL),
  ('1614369', 'Sula Cay', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage OE N', 18.4030126, -65.0582065, ST_GeomFromText('POINT(18.4030126 -65.0582065)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1614370', 'Sunsi Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3538429, -64.8779195, ST_GeomFromText('POINT(18.3538429 -64.8779195)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1614371', 'Sunsi Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3546763, -64.879864, ST_GeomFromText('POINT(18.3546763 -64.879864)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1614372', 'Surlaine Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7074743, -64.6856986, ST_GeomFromText('POINT(17.7074743 -64.6856986)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614374', 'Tague Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Buck Island', 17.7560846, -64.6048615, ST_GeomFromText('POINT(17.7560846 -64.6048615)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1614375', 'Tague Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Buck Island', 17.7610845, -64.6126396, ST_GeomFromText('POINT(17.7610845 -64.6126396)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614376', 'Target Rock', 'Pillar', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3599556, -65.0332052, ST_GeomFromText('POINT(18.3599556 -65.0332052)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614379', 'Thatch Cay', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3591205, -64.8609742, ST_GeomFromText('POINT(18.3591205 -64.8609742)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614381', 'The Stragglers', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3032881, -64.8354178, ST_GeomFromText('POINT(18.3032881 -64.8354178)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614382', 'Threadneedle Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3671755, -64.713192, ST_GeomFromText('POINT(18.3671755 -64.713192)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614384', 'Triangle Island', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3135661, -64.9168104, ST_GeomFromText('POINT(18.3135661 -64.9168104)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614385', 'Tropaco Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie OE N', 18.3769002, -64.9526456, ST_GeomFromText('POINT(18.3769002 -64.9526456)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1614386', 'Trunk Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3524536, -64.7698601, ST_GeomFromText('POINT(18.3524536 -64.7698601)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1614387', 'Trunk Cay', 'Island', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3552313, -64.7690267, ST_GeomFromText('POINT(18.3552313 -64.7690267)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1614388', 'Turner Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.325232, -64.7970831, ST_GeomFromText('POINT(18.325232 -64.7970831)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1614389', 'Turner Hole', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Grass Point', 17.7427514, -64.6040281, ST_GeomFromText('POINT(17.7427514 -64.6040281)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614390', 'Turner Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3396766, -64.6906914, ST_GeomFromText('POINT(18.3396766 -64.6906914)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614391', 'Turpentine Run', 'Stream', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3210657, -64.8776419, ST_GeomFromText('POINT(18.3210657 -64.8776419)', 4326), 18.3335659, -64.9084768, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1614392', 'Turtle Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3516203, -64.7879161, ST_GeomFromText('POINT(18.3516203 -64.7879161)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614393', 'Turtleback Rock', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3468985, -64.8581964, ST_GeomFromText('POINT(18.3468985 -64.8581964)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614394', 'Turtledove Cay', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3091217, -65.0007035, ST_GeomFromText('POINT(18.3091217 -65.0007035)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614396', 'Tutu Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3560653, -64.8881977, ST_GeomFromText('POINT(18.3560653 -64.8881977)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614397', 'Two Brothers', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3430095, -64.8170838, ST_GeomFromText('POINT(18.3430095 -64.8170838)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614403', 'Vagthus Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.6983082, -64.7173665, ST_GeomFromText('POINT(17.6983082 -64.7173665)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614404', 'Vessup Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3252322, -64.8501406, ST_GeomFromText('POINT(18.3252322 -64.8501406)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01');

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1614407', 'Virgin Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3357887, -65.0848752, ST_GeomFromText('POINT(18.3357887 -65.0848752)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1614408', 'Vluck Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3721777, -64.9904246, ST_GeomFromText('POINT(18.3721777 -64.9904246)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614411', 'Water Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3474541, -64.8637523, ST_GeomFromText('POINT(18.3474541 -64.8637523)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614412', 'Water Creek', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3482874, -64.690136, ST_GeomFromText('POINT(18.3482874 -64.690136)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614413', 'Water Island', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3207894, -64.9512572, ST_GeomFromText('POINT(18.3207894 -64.9512572)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614414', 'Water Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3163434, -64.8356956, ST_GeomFromText('POINT(18.3163434 -64.8356956)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614415', 'Waterlemon Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3646756, -64.7226367, ST_GeomFromText('POINT(18.3646756 -64.7226367)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614416', 'Waterlemon Cay', 'Island', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3668977, -64.72347, ST_GeomFromText('POINT(18.3668977 -64.72347)', 4326), NULL, NULL, '1981-01-26', NULL, 'Official', 'Board Decision', '1958-01-01'),
  ('1614417', 'Welk Rocks', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3063436, -64.8209729, ST_GeomFromText('POINT(18.3063436 -64.8209729)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614418', 'West Cay', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3591224, -65.0457061, ST_GeomFromText('POINT(18.3591224 -65.0457061)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1614420', 'Westend Saltpond', 'Lake', 'United States Virgin Islands', 'UN', 'St. Croix', 'Frederiksted', 17.6902534, -64.8915355, ST_GeomFromText('POINT(17.6902534 -64.8915355)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614423', 'Whistling Cay', 'Island', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3702308, -64.7537486, ST_GeomFromText('POINT(18.3702308 -64.7537486)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614424', 'White Cliffs', 'Cliff', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3171773, -64.737359, ST_GeomFromText('POINT(18.3171773 -64.737359)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614425', 'White Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3141218, -64.732081, ST_GeomFromText('POINT(18.3141218 -64.732081)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614428', 'William Head', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.344119, -65.0254292, ST_GeomFromText('POINT(18.344119 -65.0254292)', 4326), NULL, NULL, '1981-01-26', '2017-08-23', NULL, NULL, NULL),
  ('1614433', 'Wintberg Peak', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3453342, -64.9066857, ST_GeomFromText('POINT(18.3453342 -64.9066857)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL),
  ('1614435', 'Yellowcliff Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Buck Island', 17.7602511, -64.6226401, ST_GeomFromText('POINT(17.7602511 -64.6226401)', 4326), NULL, NULL, '1981-01-26', NULL, NULL, NULL, NULL),
  ('1614438', 'Mount Zion', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3331236, -64.889956, ST_GeomFromText('POINT(18.3331236 -64.889956)', 4326), NULL, NULL, '1981-01-26', '2017-08-24', NULL, NULL, NULL),
  ('1614445', 'Shoy Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.7594173, -64.682086, ST_GeomFromText('POINT(17.7594173 -64.682086)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1614447', 'Altona Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7476339, -64.6925808, ST_GeomFromText('POINT(17.7476339 -64.6925808)', 4326), NULL, NULL, '2000-01-01', '2018-03-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1614450', 'Christmas Cove', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.310614, -64.8326888, ST_GeomFromText('POINT(18.310614 -64.8326888)', 4326), NULL, NULL, '2000-01-01', '2015-02-16', NULL, NULL, NULL),
  ('1614451', 'Little Krum Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3319008, -64.9540353, ST_GeomFromText('POINT(18.3319008 -64.9540353)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1614453', 'Druif Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3144001, -64.9595906, ST_GeomFromText('POINT(18.3144001 -64.9595906)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1614454', 'Flamingo Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3077749, -64.9569465, ST_GeomFromText('POINT(18.3077749 -64.9569465)', 4326), NULL, NULL, '2000-01-01', '2017-08-24', NULL, NULL, NULL),
  ('1614455', 'Revenge Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3094, -64.9532013, ST_GeomFromText('POINT(18.3094 -64.9532013)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1614456', 'Providence Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3198586, -64.9540168, ST_GeomFromText('POINT(18.3198586 -64.9540168)', 4326), NULL, NULL, '2000-01-01', '2017-08-24', NULL, NULL, NULL),
  ('1614457', 'Limestone Rock', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3177336, -64.9462568, ST_GeomFromText('POINT(18.3177336 -64.9462568)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1614458', 'Sand Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3230114, -64.9415343, ST_GeomFromText('POINT(18.3230114 -64.9415343)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1614459', 'Point Knoll', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3174551, -64.9223664, ST_GeomFromText('POINT(18.3174551 -64.9223664)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1614460', 'Sandy Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3291229, -64.9465348, ST_GeomFromText('POINT(18.3291229 -64.9465348)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1614461', 'Banana Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3285673, -64.9429235, ST_GeomFromText('POINT(18.3285673 -64.9429235)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1614462', 'Frederik Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.328736, -64.9317693, ST_GeomFromText('POINT(18.328736 -64.9317693)', 4326), NULL, NULL, '2000-01-01', '2015-03-25', NULL, NULL, NULL),
  ('1614463', 'Sandy Point Rock', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3294007, -64.9465348, ST_GeomFromText('POINT(18.3294007 -64.9465348)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1614465', 'Bluebeard Castle', 'Pillar', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3371777, -64.9223667, ST_GeomFromText('POINT(18.3371777 -64.9223667)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1614466', 'Blackbeard Castle', 'Pillar', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3444002, -64.9265337, ST_GeomFromText('POINT(18.3444002 -64.9265337)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1759834', 'Ruth Island', 'Island', 'United States Virgin Islands', 'UN', 'St. Croix', 'Long Point', 17.6841422, -64.7612565, ST_GeomFromText('POINT(17.6841422 -64.7612565)', 4326), NULL, NULL, '1997-08-27', NULL, 'Official', 'Board Decision', '1998-01-01'),
  ('1993328', 'Acacia Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Long Point', 17.7352897, -64.8641646, ST_GeomFromText('POINT(17.7352897 -64.8641646)', 4326), NULL, NULL, '2000-01-01', '2018-03-28', NULL, NULL, NULL),
  ('1993332', 'Adventure Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Long Point', 17.7110542, -64.809528, ST_GeomFromText('POINT(17.7110542 -64.809528)', 4326), NULL, NULL, '2000-01-01', '2018-03-28', NULL, NULL, NULL),
  ('1993333', 'Aitken Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Baron Bluff', 17.7810825, -64.7612543, ST_GeomFromText('POINT(17.7810825 -64.7612543)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993339', 'Altona Lagoon Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7477509, -64.6915307, ST_GeomFromText('POINT(17.7477509 -64.6915307)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1993348', 'Annaberg Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3635645, -64.7245812, ST_GeomFromText('POINT(18.3635645 -64.7245812)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993351', 'Annaly Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Baron Bluff', 17.7536889, -64.8533028, ST_GeomFromText('POINT(17.7536889 -64.8533028)', 4326), NULL, NULL, '2000-01-01', '2018-03-30', NULL, NULL, NULL),
  ('1993352', 'Annaly Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Baron Bluff', 17.7644171, -64.8482012, ST_GeomFromText('POINT(17.7644171 -64.8482012)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993355', 'Bee Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Grass Point', 17.7445706, -64.6140308, ST_GeomFromText('POINT(17.7445706 -64.6140308)', 4326), NULL, NULL, '2000-01-01', '2018-03-28', NULL, NULL, NULL),
  ('1993360', 'Big Cleaninghole', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3299558, -64.9343118, ST_GeomFromText('POINT(18.3299558 -64.9343118)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993361', 'Blue Cobblestone Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3030113, -64.7026359, ST_GeomFromText('POINT(18.3030113 -64.7026359)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993363', 'Bolongo Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3174516, -64.8959781, ST_GeomFromText('POINT(18.3174516 -64.8959781)', 4326), NULL, NULL, '2000-01-01', '2017-08-24', NULL, NULL, NULL),
  ('1993364', 'Bordeaux Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3613443, -65.0159818, ST_GeomFromText('POINT(18.3613443 -65.0159818)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993365', 'Bordeaux North Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3372422, -64.7208873, ST_GeomFromText('POINT(18.3372422 -64.7208873)', 4326), NULL, NULL, '2000-01-01', '2017-08-24', NULL, NULL, NULL),
  ('1993367', 'Boulder Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie OE N', 18.3766223, -64.9662571, ST_GeomFromText('POINT(18.3766223 -64.9662571)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1993370', 'Bovoni Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3148701, -64.8919817, ST_GeomFromText('POINT(18.3148701 -64.8919817)', 4326), NULL, NULL, '2000-01-01', '2017-08-24', NULL, NULL, NULL),
  ('1993371', 'Breids Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Long Point', 17.6852535, -64.8254238, ST_GeomFromText('POINT(17.6852535 -64.8254238)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993372', 'Brown Bay Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3607869, -64.7059696, ST_GeomFromText('POINT(18.3607869 -64.7059696)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993374', 'Buccaneer Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.7558063, -64.6837528, ST_GeomFromText('POINT(17.7558063 -64.6837528)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993383', 'Cabrita Point Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3257877, -64.8334733, ST_GeomFromText('POINT(18.3257877 -64.8334733)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993384', 'Cane Bay Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Croix', 'Baron Bluff', 17.7741389, -64.8095894, ST_GeomFromText('POINT(17.7741389 -64.8095894)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993386', 'Caneel Bay Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3480093, -64.7845828, ST_GeomFromText('POINT(18.3480093 -64.7845828)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993388', 'Canegarden Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7054865, -64.7247196, ST_GeomFromText('POINT(17.7054865 -64.7247196)', 4326), NULL, NULL, '2000-01-01', '2018-03-30', NULL, NULL, NULL),
  ('1993389', 'Canegarden Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7002525, -64.7226444, ST_GeomFromText('POINT(17.7002525 -64.7226444)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993390', 'Carden Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.7594177, -64.6387519, ST_GeomFromText('POINT(17.7594177 -64.6387519)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1993391', 'Carlton Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Croix', 'Long Point', 17.6821981, -64.8334795, ST_GeomFromText('POINT(17.6821981 -64.8334795)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993393', 'Carty Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Grass Point', 17.7344183, -64.6154176, ST_GeomFromText('POINT(17.7344183 -64.6154176)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993395', 'Cay Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.7491396, -64.7031976, ST_GeomFromText('POINT(17.7491396 -64.7031976)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993407', 'Cinnamon Bay Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3563424, -64.7523596, ST_GeomFromText('POINT(18.3563424 -64.7523596)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993409', 'Cinnamon Bay Campground Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3524536, -64.7604153, ST_GeomFromText('POINT(18.3524536 -64.7604153)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993412', 'Cocoloba Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3152327, -64.7598596, ST_GeomFromText('POINT(18.3152327 -64.7598596)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993413', 'Coki Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3496763, -64.8654189, ST_GeomFromText('POINT(18.3496763 -64.8654189)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993415', 'Concordia Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3088285, -64.7109286, ST_GeomFromText('POINT(18.3088285 -64.7109286)', 4326), NULL, NULL, '2000-01-01', '2017-08-24', NULL, NULL, NULL),
  ('1993416', 'Congo Ridge', 'Summit', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3676263, -64.8039035, ST_GeomFromText('POINT(18.3676263 -64.8039035)', 4326), NULL, NULL, '2000-01-01', '2017-08-24', NULL, NULL, NULL),
  ('1993421', 'Container Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.6966417, -64.7482006, ST_GeomFromText('POINT(17.6966417 -64.7482006)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1993423', 'Cormorant Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.7752493, -64.7426428, ST_GeomFromText('POINT(17.7752493 -64.7426428)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993424', 'Cormorant Beach Club', 'Beach', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.7758048, -64.7431983, ST_GeomFromText('POINT(17.7758048 -64.7431983)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993425', 'Cottongarden Bay Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Croix', 'Buck Island', 17.7591401, -64.5845827, ST_GeomFromText('POINT(17.7591401 -64.5845827)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993426', 'Cramer Park Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Croix', 'Buck Island', 17.7602512, -64.5812492, ST_GeomFromText('POINT(17.7602512 -64.5812492)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993430', 'Cruz Bay Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3302319, -64.7973609, ST_GeomFromText('POINT(18.3302319 -64.7973609)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993444', 'Elephant Rock', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3241228, -64.9518128, ST_GeomFromText('POINT(18.3241228 -64.9518128)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993447', 'Ensomhed Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3690765, -64.9544549, ST_GeomFromText('POINT(18.3690765 -64.9544549)', 4326), NULL, NULL, '2000-01-01', '2013-08-29', NULL, NULL, NULL),
  ('1993452', 'Fish Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie OE N', 18.3863443, -64.9759793, ST_GeomFromText('POINT(18.3863443 -64.9759793)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993460', 'Fortuna Bay Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3449551, -65.0159821, ST_GeomFromText('POINT(18.3449551 -65.0159821)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993463', 'Francis Bay Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3649532, -64.7434705, ST_GeomFromText('POINT(18.3649532 -64.7434705)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1993464', 'Fredensborg Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Long Point', 17.7330891, -64.7824122, ST_GeomFromText('POINT(17.7330891 -64.7824122)', 4326), NULL, NULL, '2000-01-01', '2018-03-30', NULL, NULL, NULL),
  ('1993465', 'Fredensborg Pond', 'Reservoir', 'United States Virgin Islands', 'UN', 'St. Croix', 'Long Point', 17.7352514, -64.7893119, ST_GeomFromText('POINT(17.7352514 -64.7893119)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993478', 'Gowed Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3521762, -64.6804135, ST_GeomFromText('POINT(18.3521762 -64.6804135)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993480', 'Grapetree Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Croix', 'Grass Point', 17.745807, -64.6023614, ST_GeomFromText('POINT(17.745807 -64.6023614)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993481', 'Grassy Point Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Croix', 'Grass Point', 17.7341405, -64.6115286, ST_GeomFromText('POINT(17.7341405 -64.6115286)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993486', 'Hansen Bay Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3424543, -64.6754134, ST_GeomFromText('POINT(18.3424543 -64.6754134)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993487', 'Hart Bay Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3138436, -64.7809714, ST_GeomFromText('POINT(18.3138436 -64.7809714)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993488', 'Harvey Island', 'Island', 'United States Virgin Islands', 'UN', 'St. Croix', 'Long Point', 17.6838644, -64.7615342, ST_GeomFromText('POINT(17.6838644 -64.7615342)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993490', 'Haulover Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3482875, -64.6793024, ST_GeomFromText('POINT(18.3482875 -64.6793024)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993494', 'Honeymoon Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3141222, -64.9607018, ST_GeomFromText('POINT(18.3141222 -64.9607018)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1993495', 'Indian Inscription Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3691198, -64.7976387, ST_GeomFromText('POINT(18.3691198 -64.7976387)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993524', 'Jack Rock', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3252322, -64.8476405, ST_GeomFromText('POINT(18.3252322 -64.8476405)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993527', 'Judiths Fancy Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.7749715, -64.742365, ST_GeomFromText('POINT(17.7749715 -64.742365)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993528', 'Kings Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Long Point', 17.692753, -64.778201, ST_GeomFromText('POINT(17.692753 -64.778201)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993533', 'LaGrange Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Croix', 'Frederiksted', 17.7216409, -64.8851464, ST_GeomFromText('POINT(17.7216409 -64.8851464)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993536', 'Large Pond', 'Reservoir', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3266209, -64.7959719, ST_GeomFromText('POINT(18.3266209 -64.7959719)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993541', 'Lerkenlund Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3602425, -64.9403848, ST_GeomFromText('POINT(18.3602425 -64.9403848)', 4326), NULL, NULL, '2000-01-01', '2018-04-06', NULL, NULL, NULL),
  ('1993543', 'Limetree Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3168994, -64.9131992, ST_GeomFromText('POINT(18.3168994 -64.9131992)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993550', 'Little Cinnamon Bay Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3538425, -64.755693, ST_GeomFromText('POINT(18.3538425 -64.755693)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993551', 'Little Clearinghole', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3349561, -64.9393123, ST_GeomFromText('POINT(18.3349561 -64.9393123)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1993552', 'Little Reef Bay Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3216214, -64.7509704, ST_GeomFromText('POINT(18.3216214 -64.7509704)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993554', 'Long Bay Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.336899, -64.6743022, ST_GeomFromText('POINT(18.336899 -64.6743022)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993560', 'Mandahl Bay Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3607875, -64.897087, ST_GeomFromText('POINT(18.3607875 -64.897087)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993562', 'Manning Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Long Point', 17.6933086, -64.8004235, ST_GeomFromText('POINT(17.6933086 -64.8004235)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993571', 'Mount McWilliam', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Long Point', 17.7282025, -64.833566, ST_GeomFromText('POINT(17.7282025 -64.833566)', 4326), NULL, NULL, '2000-01-01', '2018-03-28', NULL, NULL, NULL),
  ('1993576', 'Montagne Rouge', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.2780614, -64.8926673, ST_GeomFromText('POINT(18.2780614 -64.8926673)', 4326), NULL, NULL, '2000-01-01', '2017-08-24', NULL, NULL, NULL),
  ('1993577', 'Montalvan Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3045114, -65.0016665, ST_GeomFromText('POINT(18.3045114 -65.0016665)', 4326), NULL, NULL, '2000-01-01', '2017-08-23', 'Official', 'Board Decision', '1958-02-27'),
  ('1993583', 'Morningstar Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3199551, -64.9201441, ST_GeomFromText('POINT(18.3199551 -64.9201441)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993584', 'Morrisette Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3364299, -64.7928576, ST_GeomFromText('POINT(18.3364299 -64.7928576)', 4326), NULL, NULL, '2000-01-01', '2020-04-09', NULL, NULL, NULL),
  ('1993585', 'Mount Fancy Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7233335, -64.6386223, ST_GeomFromText('POINT(17.7233335 -64.6386223)', 4326), NULL, NULL, '2000-01-01', '2018-03-30', NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1993586', 'Mount Fancy Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7216407, -64.6395857, ST_GeomFromText('POINT(17.7216407 -64.6395857)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993587', 'Mountain Top', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3558759, -64.9472655, ST_GeomFromText('POINT(18.3558759 -64.9472655)', 4326), NULL, NULL, '2000-01-01', '2018-07-21', NULL, NULL, NULL),
  ('1993590', 'Muller Bay Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3235656, -64.844307, ST_GeomFromText('POINT(18.3235656 -64.844307)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993595', 'Negro Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Long Point', 17.6946975, -64.7857011, ST_GeomFromText('POINT(17.6946975 -64.7857011)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993599', 'Nugent Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7108076, -64.6804205, ST_GeomFromText('POINT(17.7108076 -64.6804205)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993603', 'Oppenheimer Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3530092, -64.7765269, ST_GeomFromText('POINT(18.3530092 -64.7765269)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993608', 'Parrot Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3191215, -64.7529149, ST_GeomFromText('POINT(18.3191215 -64.7529149)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993610', 'Pelican Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3366209, -64.8518072, ST_GeomFromText('POINT(18.3366209 -64.8518072)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993611', 'Pelican Cove Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.7658054, -64.7351429, ST_GeomFromText('POINT(17.7658054 -64.7351429)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993613', 'Peter Bay Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3524536, -64.7609709, ST_GeomFromText('POINT(18.3524536 -64.7609709)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1993616', 'Peterborg Peninsula', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3716217, -64.9254219, ST_GeomFromText('POINT(18.3716217 -64.9254219)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993617', 'Picture Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3396765, -64.732359, ST_GeomFromText('POINT(18.3396765 -64.732359)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993619', 'Pinham Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Grass Point', 17.7308072, -64.6223625, ST_GeomFromText('POINT(17.7308072 -64.6223625)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993620', 'Pleasant Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3621758, -64.6940249, ST_GeomFromText('POINT(18.3621758 -64.6940249)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993621', 'Pole Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.748161, -64.6451602, ST_GeomFromText('POINT(17.748161 -64.6451602)', 4326), NULL, NULL, '2000-01-01', '2018-03-30', NULL, NULL, NULL),
  ('1993622', 'Pope Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3446764, -64.6937471, ST_GeomFromText('POINT(18.3446764 -64.6937471)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993623', 'Powell Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Buck Island', 17.7613622, -64.6165286, ST_GeomFromText('POINT(17.7613622 -64.6165286)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993625', 'Prune Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.7619175, -64.6518078, ST_GeomFromText('POINT(17.7619175 -64.6518078)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993626', 'Punch Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Long Point', 17.742152, -64.8747192, ST_GeomFromText('POINT(17.742152 -64.8747192)', 4326), NULL, NULL, '2000-01-01', '2018-03-30', NULL, NULL, NULL),
  ('1993628', 'Rainbow Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Croix', 'Frederiksted', 17.7344182, -64.8893129, ST_GeomFromText('POINT(17.7344182 -64.8893129)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1993631', 'Recovery Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7338021, -64.6958078, ST_GeomFromText('POINT(17.7338021 -64.6958078)', 4326), NULL, NULL, '2000-01-01', '2018-03-30', NULL, NULL, NULL),
  ('1993633', 'Reef Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Croix', 'Buck Island', 17.7546958, -64.6031947, ST_GeomFromText('POINT(17.7546958 -64.6031947)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993636', 'Rover Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie OE N', 18.395233, -64.9748678, ST_GeomFromText('POINT(18.395233 -64.9748678)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993638', 'Rustoptwist Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Baron Bluff', 17.7813604, -64.7729214, ST_GeomFromText('POINT(17.7813604 -64.7729214)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993641', 'Saint Croix Country Club Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Croix', 'Frederiksted', 17.719141, -64.884313, ST_GeomFromText('POINT(17.719141 -64.884313)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993646', 'Salt Pond Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3085667, -64.705136, ST_GeomFromText('POINT(18.3085667 -64.705136)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993647', 'Salt River Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Croix', 'Baron Bluff', 17.7810825, -64.7612543, ST_GeomFromText('POINT(17.7810825 -64.7612543)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993649', 'Salomon Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3382873, -64.7951387, ST_GeomFromText('POINT(18.3382873 -64.7951387)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993650', 'Sandbay Punt (historical)', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3549554, -65.0345943, ST_GeomFromText('POINT(18.3549554 -65.0345943)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993651', 'Sandy Point Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Croix', 'Frederiksted', 17.6769206, -64.9018135, ST_GeomFromText('POINT(17.6769206 -64.9018135)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1993652', 'Sapphire Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.334401, -64.9487574, ST_GeomFromText('POINT(18.334401 -64.9487574)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993653', 'Savana Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3373913, -65.0834465, ST_GeomFromText('POINT(18.3373913 -65.0834465)', 4326), NULL, NULL, '2000-01-01', '2017-08-23', NULL, NULL, NULL),
  ('1993654', 'Scott Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3160657, -64.8643079, ST_GeomFromText('POINT(18.3160657 -64.8643079)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993658', 'Shipley Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3343569, -64.9369311, ST_GeomFromText('POINT(18.3343569 -64.9369311)', 4326), NULL, NULL, '2000-01-01', '2017-08-24', NULL, NULL, NULL),
  ('1993660', 'Sight Mound', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7403832, -64.6601088, ST_GeomFromText('POINT(17.7403832 -64.6601088)', 4326), NULL, NULL, '2000-01-01', '2018-03-30', NULL, NULL, NULL),
  ('1993661', 'Small Pond', 'Reservoir', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3280098, -64.7981942, ST_GeomFromText('POINT(18.3280098 -64.7981942)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993662', 'Sonofa Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7066411, -64.6806985, ST_GeomFromText('POINT(17.7066411 -64.6806985)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993666', 'Stumpy Bay Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3635665, -65.006259, ST_GeomFromText('POINT(18.3635665 -65.006259)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993667', 'Sugar Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.7530283, -64.7165314, ST_GeomFromText('POINT(17.7530283 -64.7165314)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993668', 'Sugarbird Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3127333, -64.9604239, ST_GeomFromText('POINT(18.3127333 -64.9604239)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1993673', 'Tamarind Reef Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.7610841, -64.6670858, ST_GeomFromText('POINT(17.7610841 -64.6670858)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993674', 'Tektite Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3074554, -64.7206918, ST_GeomFromText('POINT(18.3074554 -64.7206918)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993676', 'Thatch Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3586728, -64.8510619, ST_GeomFromText('POINT(18.3586728 -64.8510619)', 4326), NULL, NULL, '2000-01-01', '2017-08-24', NULL, NULL, NULL),
  ('1993678', 'Tombstone Rock', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3624558, -64.9368118, ST_GeomFromText('POINT(18.3624558 -64.9368118)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993679', 'Turquoise Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3224544, -64.8415291, ST_GeomFromText('POINT(18.3224544 -64.8415291)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993680', 'Turquoise Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3207878, -64.8418069, ST_GeomFromText('POINT(18.3207878 -64.8418069)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993681', 'Tutu Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3546764, -64.8895867, ST_GeomFromText('POINT(18.3546764 -64.8895867)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993697', 'Waterlemon Cay Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3668977, -64.7229144, ST_GeomFromText('POINT(18.3668977 -64.7229144)', 4326), NULL, NULL, '2000-01-01', '2013-08-27', NULL, NULL, NULL),
  ('1993698', 'Watercreek Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3477318, -64.6929137, ST_GeomFromText('POINT(18.3477318 -64.6929137)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993700', 'West Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.7888616, -64.6279177, ST_GeomFromText('POINT(17.7888616 -64.6279177)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1993702', 'West End Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Frederiksted', 17.7019196, -64.8865353, ST_GeomFromText('POINT(17.7019196 -64.8865353)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993705', 'Wismenog Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.7591399, -64.6404185, ST_GeomFromText('POINT(17.7591399 -64.6404185)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993706', 'Woodcottage Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Grass Point', 17.7341405, -64.6184734, ST_GeomFromText('POINT(17.7341405 -64.6184734)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993707', 'Yawzi Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3152329, -64.725692, ST_GeomFromText('POINT(18.3152329 -64.725692)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993733', 'Annaberg Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Long Point', 17.7111395, -64.7808962, ST_GeomFromText('POINT(17.7111395 -64.7808962)', 4326), NULL, NULL, '2000-01-01', '2018-03-28', NULL, NULL, NULL),
  ('1993737', 'Backefall Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3443996, -65.0148709, ST_GeomFromText('POINT(18.3443996 -65.0148709)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993740', 'Bananabay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3285673, -64.9434791, ST_GeomFromText('POINT(18.3285673 -64.9434791)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993742', 'Bastiste Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7033079, -64.7031993, ST_GeomFromText('POINT(17.7033079 -64.7031993)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993743', 'Baye de Grigri', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3321787, -64.9482017, ST_GeomFromText('POINT(18.3321787 -64.9482017)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993747', 'Bluebeard Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3246767, -64.8384735, ST_GeomFromText('POINT(18.3246767 -64.8384735)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1993748', 'Boatman Point Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3168992, -64.7748601, ST_GeomFromText('POINT(18.3168992 -64.7748601)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993749', 'Bodkin Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Baron Bluff', 17.7514086, -64.8386766, ST_GeomFromText('POINT(17.7514086 -64.8386766)', 4326), NULL, NULL, '2000-01-01', '2018-03-30', NULL, NULL, NULL),
  ('1993750', 'Boiler Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Buck Island', 17.760529, -64.5781935, ST_GeomFromText('POINT(17.760529 -64.5781935)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993753', 'Brass Islands', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie OE N', 18.3866221, -64.9743125, ST_GeomFromText('POINT(18.3866221 -64.9743125)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993754', 'Brewers Bay Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3435671, -64.9770917, ST_GeomFromText('POINT(18.3435671 -64.9770917)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993755', 'Broken Island', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.2752329, -64.8870868, ST_GeomFromText('POINT(18.2752329 -64.8870868)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993761', 'Cabo de las Flechas', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.7827169, -64.7487968, ST_GeomFromText('POINT(17.7827169 -64.7487968)', 4326), NULL, NULL, '2000-01-01', '2018-03-28', NULL, NULL, NULL),
  ('1993763', 'Cane Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Baron Bluff', 17.7733057, -64.8107005, ST_GeomFromText('POINT(17.7733057 -64.8107005)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993766', 'Canegarden Cliff', 'Cliff', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7041413, -64.7273666, ST_GeomFromText('POINT(17.7041413 -64.7273666)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993769', 'Cathys Fancy Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.7574725, -64.7237539, ST_GeomFromText('POINT(17.7574725 -64.7237539)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1993774', 'Christian Cove', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3316208, -64.7951386, ST_GeomFromText('POINT(18.3316208 -64.7951386)', 4326), NULL, NULL, '2000-01-01', '2011-05-13', 'Official', 'Board Decision', '1958-02-27'),
  ('1993786', 'Coculus Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3105102, -64.9004206, ST_GeomFromText('POINT(18.3105102 -64.9004206)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993789', 'Cowell Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3257362, -64.9328391, ST_GeomFromText('POINT(18.3257362 -64.9328391)', 4326), NULL, NULL, '2000-01-01', '2017-08-24', NULL, NULL, NULL),
  ('1993810', 'Deckbay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3105111, -64.952368, ST_GeomFromText('POINT(18.3105111 -64.952368)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993813', 'Ditleff Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.316066, -64.7668042, ST_GeomFromText('POINT(18.316066 -64.7668042)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993815', 'Doubloon Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.333494, -64.7567418, ST_GeomFromText('POINT(18.333494 -64.7567418)', 4326), NULL, NULL, '2000-01-01', '2017-08-24', NULL, NULL, NULL),
  ('1993825', 'Erins Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.349954, -64.6740245, ST_GeomFromText('POINT(18.349954 -64.6740245)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993834', 'Flamingo Pond', 'Lake', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3119, -64.9559793, ST_GeomFromText('POINT(18.3119 -64.9559793)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993835', 'Flat Cay', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.316344, -64.9898697, ST_GeomFromText('POINT(18.316344 -64.9898697)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993845', 'Frederiksted Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Croix', 'Frederiksted', 17.7155301, -64.8840352, ST_GeomFromText('POINT(17.7155301 -64.8840352)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1993848', 'French Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3174549, -64.9140325, ST_GeomFromText('POINT(18.3174549 -64.9140325)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993849', 'French Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3441378, -64.941227, ST_GeomFromText('POINT(18.3441378 -64.941227)', 4326), NULL, NULL, '2000-01-01', '2017-08-24', NULL, NULL, NULL),
  ('1993852', 'Galge Cove', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.331343, -64.7965275, ST_GeomFromText('POINT(18.331343 -64.7965275)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993853', 'Gibney Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3524536, -64.7765269, ST_GeomFromText('POINT(18.3524536 -64.7765269)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993854', 'Grasklip Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie OE N', 18.3932885, -64.9673676, ST_GeomFromText('POINT(18.3932885 -64.9673676)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993860', 'Haulover Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.348843, -64.6765245, ST_GeomFromText('POINT(18.348843 -64.6765245)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993862', 'Hawknest Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3468983, -64.7773603, ST_GeomFromText('POINT(18.3468983 -64.7773603)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993864', 'Honeymoon Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3387717, -64.7939944, ST_GeomFromText('POINT(18.3387717 -64.7939944)', 4326), NULL, NULL, '2000-01-01', '2013-08-29', NULL, NULL, NULL),
  ('1993866', 'Isaacs Bay Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Croix', 'Buck Island', 17.7508069, -64.5718042, ST_GeomFromText('POINT(17.7508069 -64.5718042)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993869', 'Johns Folly Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3168996, -64.7023582, ST_GeomFromText('POINT(18.3168996 -64.7023582)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1993872', 'Kaserne Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Long Point', 17.7230272, -64.7805887, ST_GeomFromText('POINT(17.7230272 -64.7805887)', 4326), NULL, NULL, '2000-01-01', '2018-03-28', NULL, NULL, NULL),
  ('1993875', 'Krause Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Long Point', 17.689295, -64.765508, ST_GeomFromText('POINT(17.689295 -64.765508)', 4326), NULL, NULL, '2000-01-01', '2013-05-19', NULL, NULL, NULL),
  ('1993900', 'Lee Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3605095, -64.8759749, ST_GeomFromText('POINT(18.3605095 -64.8759749)', 4326), NULL, NULL, '2000-01-01', '2011-05-13', 'Official', 'Board Decision', '1958-02-27'),
  ('1993902', 'Limetree Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.6908086, -64.7493118, ST_GeomFromText('POINT(17.6908086 -64.7493118)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993904', 'Lindberg Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3352339, -64.9643134, ST_GeomFromText('POINT(18.3352339 -64.9643134)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993906', 'Little Bordeaux Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.3616221, -65.0123705, ST_GeomFromText('POINT(18.3616221 -65.0123705)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993907', 'Little Flat Cay', 'Island', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.317733, -64.9890363, ST_GeomFromText('POINT(18.317733 -64.9890363)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993908', 'Little Maho Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.36162, -64.7448594, ST_GeomFromText('POINT(18.36162 -64.7448594)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993909', 'Little Maho Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3621756, -64.744026, ST_GeomFromText('POINT(18.3621756 -64.744026)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993910', 'Littlebay Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Hams Bay', 17.7671947, -64.8815348, ST_GeomFromText('POINT(17.7671947 -64.8815348)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1993911', 'Lollik Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie OE N', 18.3982507, -64.9071319, ST_GeomFromText('POINT(18.3982507 -64.9071319)', 4326), NULL, NULL, '2000-01-01', '2017-08-24', NULL, NULL, NULL),
  ('1993914', 'Magens Bay Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3646774, -64.9223664, ST_GeomFromText('POINT(18.3646774 -64.9223664)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993915', 'Maho Bay Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3566202, -64.7484706, ST_GeomFromText('POINT(18.3566202 -64.7484706)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993921', 'Maronberg', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Baron Bluff', 17.7630663, -64.8634813, ST_GeomFromText('POINT(17.7630663 -64.8634813)', 4326), NULL, NULL, '2000-01-01', '2018-03-30', NULL, NULL, NULL),
  ('1993922', 'Martel Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.7574728, -64.6823638, ST_GeomFromText('POINT(17.7574728 -64.6823638)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993924', 'Monks Bath Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Croix', 'Hams Bay', 17.7624726, -64.8862572, ST_GeomFromText('POINT(17.7624726 -64.8862572)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993926', 'Mouillage Cove', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.2766217, -64.8962539, ST_GeomFromText('POINT(18.2766217 -64.8962539)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993928', 'Nathaniel Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3455097, -64.6923582, ST_GeomFromText('POINT(18.3455097 -64.6923582)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993933', 'North Star Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Croix', 'Baron Bluff', 17.7652504, -64.8245898, ST_GeomFromText('POINT(17.7652504 -64.8245898)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993934', 'Nugent Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Christiansted', 17.7116409, -64.6751426, ST_GeomFromText('POINT(17.7116409 -64.6751426)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1993938', 'Oyen Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3182242, -64.7582797, ST_GeomFromText('POINT(18.3182242 -64.7582797)', 4326), NULL, NULL, '2000-01-01', '2017-08-24', NULL, NULL, NULL),
  ('1993940', 'Peace Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3515025, -64.7774471, ST_GeomFromText('POINT(18.3515025 -64.7774471)', 4326), NULL, NULL, '2000-01-01', '2017-08-24', NULL, NULL, NULL),
  ('1993945', 'Pentheny Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Grass Point', 17.7375258, -64.611594, ST_GeomFromText('POINT(17.7375258 -64.611594)', 4326), NULL, NULL, '2000-01-01', '2018-03-28', NULL, NULL, NULL),
  ('1993947', 'Pineapple Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3460653, -64.8679191, ST_GeomFromText('POINT(18.3460653 -64.8679191)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993948', 'Pinham Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Grass Point', 17.731085, -64.6212514, ST_GeomFromText('POINT(17.731085 -64.6212514)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993952', 'Powell Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Croix', 'Buck Island', 17.7605289, -64.6131951, ST_GeomFromText('POINT(17.7605289 -64.6131951)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993954', 'Prince Ruperts Cove', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3282887, -64.9237556, ST_GeomFromText('POINT(18.3282887 -64.9237556)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993965', 'Revenge Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3227336, -64.9429233, ST_GeomFromText('POINT(18.3227336 -64.9429233)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993967', 'Revengebay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3199557, -64.9407009, ST_GeomFromText('POINT(18.3199557 -64.9407009)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993975', 'Saint Mary''s Creek Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3646756, -64.7379148, ST_GeomFromText('POINT(18.3646756 -64.7379148)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1993992', 'Sandbay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3232892, -64.94209, ST_GeomFromText('POINT(18.3232892 -64.94209)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993995', 'Secret Harbor Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Cruz Bay', 18.3180101, -64.8529185, ST_GeomFromText('POINT(18.3180101 -64.8529185)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1993997', 'Shoys Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.7599727, -64.6809749, ST_GeomFromText('POINT(17.7599727 -64.6809749)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1994000', 'Southwest Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Frederiksted', 17.6738651, -64.9007024, ST_GeomFromText('POINT(17.6738651 -64.9007024)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1994006', 'Trunk Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3516203, -64.7701379, ST_GeomFromText('POINT(18.3516203 -64.7701379)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1994015', 'Water Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3663422, -64.717081, ST_GeomFromText('POINT(18.3663422 -64.717081)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1994020', 'West Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Savana Passage', 18.353011, -65.0401502, ST_GeomFromText('POINT(18.353011 -65.0401502)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1994021', 'Westend Peninsula', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Frederiksted', 17.6841425, -64.8948689, ST_GeomFromText('POINT(17.6841425 -64.8948689)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1994022', 'Whale Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Buck Island', 17.7602512, -64.5743044, ST_GeomFromText('POINT(17.7602512 -64.5743044)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1994024', 'Whitesand Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3530094, -64.6976361, ST_GeomFromText('POINT(18.3530094 -64.6976361)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('1994048', 'Belvedere Hill', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Baron Bluff', 17.767139, -64.8014072, ST_GeomFromText('POINT(17.767139 -64.8014072)', 4326), NULL, NULL, '2000-01-01', '2018-03-30', NULL, NULL, NULL),
  ('1994049', 'Hull Bay Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3691227, -64.9568126, ST_GeomFromText('POINT(18.3691227 -64.9568126)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1994053', 'Long-Bay Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3368998, -64.9206999, ST_GeomFromText('POINT(18.3368998 -64.9206999)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1994054', 'Mount Logan', 'Summit', 'United States Virgin Islands', 'UN', 'St. Croix', 'Long Point', 17.7239747, -64.8662594, ST_GeomFromText('POINT(17.7239747 -64.8662594)', 4326), NULL, NULL, '2000-01-01', '2018-03-28', NULL, NULL, NULL),
  ('1994055', 'Reef Bay Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3224547, -64.745137, ST_GeomFromText('POINT(18.3224547 -64.745137)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1994059', 'Sprat Hall Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. Croix', 'Frederiksted', 17.74164, -64.8926463, ST_GeomFromText('POINT(17.74164 -64.8926463)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1994066', 'Cay Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3371785, -64.9390345, ST_GeomFromText('POINT(18.3371785 -64.9390345)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('1994068', 'Reef Bay Beach', 'Beach', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3168993, -64.7568039, ST_GeomFromText('POINT(18.3168993 -64.7568039)', 4326), NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL),
  ('2575364', 'Beverhoutberg', 'Summit', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3329841, -64.7665401, ST_GeomFromText('POINT(18.3329841 -64.7665401)', 4326), NULL, NULL, '2010-01-21', '2017-08-24', 'Official', 'Board Decision', '1921-12-07'),
  ('2575365', 'Coconut Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie OE N', 18.3938889, -64.9038889, ST_GeomFromText('POINT(18.3938889 -64.9038889)', 4326), NULL, NULL, '2010-01-21', NULL, NULL, NULL, NULL);

INSERT IGNORE INTO geo_geographic_features (
  feature_id, feature_name, feature_class, state_name, state_code,
  county_name, map_name, latitude, longitude, coordinates,
  source_latitude, source_longitude, date_created, date_edited,
  bgn_type, bgn_authority, bgn_date
) VALUES
  ('2575367', 'Grambokola Peninsula', 'Cape', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3333333, -64.9666667, ST_GeomFromText('POINT(18.3333333 -64.9666667)', 4326), NULL, NULL, '2010-01-21', NULL, NULL, NULL, NULL),
  ('2575369', 'Lameshur Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Coral Bay', 18.3161111, -64.7272222, ST_GeomFromText('POINT(18.3161111 -64.7272222)', 4326), NULL, NULL, '2010-01-21', '2011-05-13', 'Official', 'Board Decision', '1960-07-14'),
  ('2575370', 'Lilliendahl Col', 'Gap', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.35, -64.95, ST_GeomFromText('POINT(18.35 -64.95)', 4326), NULL, NULL, '2010-01-21', NULL, NULL, NULL, NULL),
  ('2575371', 'Lilliendahl Ravine', 'Valley', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3674549, -64.9666203, ST_GeomFromText('POINT(18.3674549 -64.9666203)', 4326), 18.3654318, -64.9665784, '2010-01-21', '2021-04-19', NULL, NULL, NULL),
  ('2575373', 'Southgate Pond', 'Lake', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.7608333, -64.6658333, ST_GeomFromText('POINT(17.7608333 -64.6658333)', 4326), NULL, NULL, '2010-01-21', NULL, NULL, NULL, NULL),
  ('2575374', 'Southwest Cape', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Frederiksted', 17.6833333, -64.9, ST_GeomFromText('POINT(17.6833333 -64.9)', 4326), NULL, NULL, '2010-01-21', '2011-05-13', 'Official', 'Board Decision', '1958-05-27'),
  ('2680030', 'Neltjeberg', 'Summit', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3663091, -64.9728086, ST_GeomFromText('POINT(18.3663091 -64.9728086)', 4326), NULL, NULL, '2011-05-13', '2017-08-24', NULL, NULL, NULL),
  ('2749838', 'Honeymoon Bay', 'Bay', 'United States Virgin Islands', 'UN', 'St. John', 'Cruz Bay', 18.3393114, -64.7942948, ST_GeomFromText('POINT(18.3393114 -64.7942948)', 4326), NULL, NULL, '2013-08-29', NULL, NULL, NULL, NULL),
  ('2777687', 'Hawksbill Cove', 'Bay', 'United States Virgin Islands', 'UN', 'St. Thomas', 'Charlotte Amalie', 18.3327345, -64.9775505, ST_GeomFromText('POINT(18.3327345 -64.9775505)', 4326), NULL, NULL, '2015-11-14', '2017-02-09', 'Official', 'Board Decision', '2015-11-12'),
  ('2791219', 'Judith Point', 'Cape', 'United States Virgin Islands', 'UN', 'St. Croix', 'Beauregard Bay', 17.7741625, -64.7394194, ST_GeomFromText('POINT(17.7741625 -64.7394194)', 4326), NULL, NULL, '2018-03-28', NULL, NULL, NULL, NULL);


COMMIT;
SET unique_checks = 1;
SET autocommit = 1;

-- VI complete: 680 features loaded
