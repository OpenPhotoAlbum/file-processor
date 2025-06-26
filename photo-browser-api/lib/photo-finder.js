const fs = require('fs');
const path = require('path');

// Configuration
const PHOTOS_ROOT = '/photos/archive';

/**
 * Find photo and JSON sidecar by photo ID
 * @param {string} photoId - e.g., "2023-10-21_13-54-03_001"
 * @returns {object} - { photoPath, jsonPath, found }
 */
function findPhotoById(photoId) {
  try {
    // Extract year and month from photo ID
    const match = photoId.match(/^(\d{4})-(\d{2})-\d{2}_\d{2}-\d{2}-\d{2}_\d{3}$/);
    if (!match) {
      return { found: false, error: 'Invalid photo ID format' };
    }
    
    const [, year, month] = match;
    const dirPath = path.join(PHOTOS_ROOT, year, month);
    
    // Check if directory exists
    if (!fs.existsSync(dirPath)) {
      return { found: false, error: `Directory not found: ${dirPath}` };
    }
    
    // Look for photo file (try common extensions)
    const extensions = ['.heic', '.jpeg', '.jpg', '.mov', '.mp4', '.HEIC', '.JPEG', '.JPG'];
    let photoPath = null;
    
    for (const ext of extensions) {
      const testPath = path.join(dirPath, photoId + ext);
      if (fs.existsSync(testPath)) {
        photoPath = testPath;
        break;
      }
    }
    
    if (!photoPath) {
      return { found: false, error: `Photo file not found for ID: ${photoId}` };
    }
    
    // Look for JSON sidecar
    const jsonPath = photoPath + '.json';
    const hasJson = fs.existsSync(jsonPath);
    
    return {
      found: true,
      photoId,
      photoPath,
      jsonPath: hasJson ? jsonPath : null,
      hasMetadata: hasJson
    };
    
  } catch (error) {
    return { found: false, error: error.message };
  }
}

module.exports = { findPhotoById };