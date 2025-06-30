-- Query to analyze duplicate landmark associations
-- Shows files with multiple entries for the same landmark

-- Count duplicates by file and landmark
SELECT 
    ml.file_id,
    ml.landmark_id,
    l.name as landmark_name,
    COUNT(*) as duplicate_count,
    GROUP_CONCAT(DISTINCT ml.distance_meters ORDER BY ml.distance_meters) as distances,
    MIN(ml.distance_meters) as min_distance,
    MAX(ml.distance_meters) as max_distance,
    MAX(ml.distance_meters) - MIN(ml.distance_meters) as distance_variance
FROM media_landmarks ml
JOIN landmarks l ON l.id = ml.landmark_id
GROUP BY ml.file_id, ml.landmark_id
HAVING COUNT(*) > 1
ORDER BY duplicate_count DESC, distance_variance DESC
LIMIT 20;

-- Show example of a specific duplicate
SELECT 
    ml.*,
    mf.relative_path,
    l.name as landmark_name
FROM media_landmarks ml
JOIN media_files mf ON mf.id = ml.file_id
JOIN landmarks l ON l.id = ml.landmark_id
WHERE ml.file_id = 84 AND ml.landmark_id = 104488
ORDER BY ml.id;