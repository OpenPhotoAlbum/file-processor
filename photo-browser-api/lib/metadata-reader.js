const fs = require('fs');

/**
 * Read and parse JSON metadata sidecar
 * @param {string} jsonPath - Path to .json sidecar file
 * @returns {object} - Parsed metadata or error
 */
function readMetadata(jsonPath) {
  try {
    if (!jsonPath || !fs.existsSync(jsonPath)) {
      return { 
        success: false, 
        error: 'JSON sidecar not found',
        hasMetadata: false 
      };
    }
    
    const jsonContent = fs.readFileSync(jsonPath, 'utf8');
    const metadata = JSON.parse(jsonContent);
    
    return {
      success: true,
      metadata,
      hasMetadata: true,
      jsonPath
    };
    
  } catch (error) {
    return {
      success: false,
      error: `Failed to read metadata: ${error.message}`,
      hasMetadata: false
    };
  }
}

/**
 * Extract basic info from metadata for template
 * @param {object} metadata - Parsed JSON metadata
 * @returns {object} - Template-ready data
 */
function extractBasicInfo(metadata) {
  if (!metadata) {
    return { message: 'No metadata available' };
  }
  
  // Extract fields matching your actual JSON structure
  const basic = {
    message: 'Photo metadata loaded successfully!',
    
    // Basic file info (from 'file' section)
    fileName: metadata.file?.path ? metadata.file.path.split('/').pop() : 'Unknown',
    fileSize: metadata.file?.size ? `${Math.round(metadata.file.size / 1024 / 1024 * 100) / 100} MB` : 'Unknown',
    
    // Camera info (from 'camera' section)
    camera: metadata.camera?.make || 'Unknown',
    model: metadata.camera?.model || 'Unknown',
    
    // Location info (from 'location' section and technical EXIF)
    hasGPS: !!(metadata.technical?.['EXIF:GPSLatitude'] && metadata.technical?.['EXIF:GPSLongitude']),
    latitude: metadata.technical?.['EXIF:GPSLatitude'] || metadata.location?.primary?.latitude || null,
    longitude: metadata.technical?.['EXIF:GPSLongitude'] || metadata.location?.primary?.longitude || null,
    
    // Timestamps (from 'timestamps' section)
    dateTime: metadata.timestamps?.capture || metadata.technical?.['EXIF:DateTimeOriginal'] || 'Unknown',
    
    // Settings (from 'settings' section)
    iso: metadata.settings?.iso || 'Unknown',
    aperture: metadata.settings?.aperture || 'Unknown',
    shutterSpeed: metadata.settings?.shutterSpeed || 'Unknown',
    
    // Landmarks (from 'landmarks' array)
    landmarkCount: metadata.landmarks?.filter(l => l.source !== 'Recreation.gov').length || 0,
    recreationCount: metadata.landmarks?.filter(l => l.source === 'Recreation.gov').length || 0,
    
    // GPS accuracy if available
    gpsAccuracy: metadata.location?.primary?.accuracy || null,
    
    // Raw metadata preview (for debugging)
    rawMetadataKeys: Object.keys(metadata)
  };
  
  return basic;
}

module.exports = { readMetadata, extractBasicInfo };