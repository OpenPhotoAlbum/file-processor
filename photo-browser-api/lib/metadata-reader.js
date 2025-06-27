const fs = require('fs');

/**
 * Format timestamp into structured date/time object for display
 * @param {*} timestamp - Timestamp value to format
 * @returns {object} - Object with date and time properties
 */
function formatFileTimestamp(timestamp) {
  if (!timestamp) return { date: 'Unknown', time: null };
  
  // If it's an object, try to extract a meaningful value
  if (typeof timestamp === 'object') {
    const value = timestamp.value || timestamp.timestamp || timestamp.date || timestamp.time;
    if (value) {
      return formatFileTimestamp(value);
    }
    if (timestamp instanceof Date) {
      const date = timestamp;
      const dateStr = date.toLocaleDateString('en-US', {
        year: 'numeric',
        month: 'long',
        day: 'numeric'
      });
      const timeStr = date.toLocaleTimeString('en-US', {
        hour: '2-digit',
        minute: '2-digit',
        hour12: true
      }).toLowerCase();
      return { date: dateStr, time: timeStr };
    }
    return { date: JSON.stringify(timestamp), time: null };
  }
  
  try {
    let dateObj;
    
    // Handle EXIF-style timestamps: "2025:06:20 11:36:17-04:00"
    if (typeof timestamp === 'string' && timestamp.includes(':') && timestamp.includes(' ')) {
      // Replace the first two colons with dashes to make it ISO-like
      const isoLike = timestamp.replace(/^(\d{4}):(\d{2}):(\d{2})/, '$1-$2-$3');
      dateObj = new Date(isoLike);
    } else {
      dateObj = new Date(timestamp);
    }
    
    // Check if the date is valid
    if (isNaN(dateObj.getTime())) {
      return { date: String(timestamp), time: null };
    }
    
    const dateStr = dateObj.toLocaleDateString('en-US', {
      year: 'numeric',
      month: 'long',
      day: 'numeric'
    });
    const timeStr = dateObj.toLocaleTimeString('en-US', {
      hour: '2-digit',
      minute: '2-digit',
      hour12: true
    }).toLowerCase();
    return { date: dateStr, time: timeStr };
  } catch {
    return { date: String(timestamp), time: null };
  }
}

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
    let parsedData = JSON.parse(jsonContent);
    
    // Handle nested structure from CLI output
    // Check if this is a CLI response with results array
    if (parsedData.results && Array.isArray(parsedData.results) && parsedData.results.length > 0) {
      // Extract metadata from first result
      parsedData = parsedData.results[0].metadata;
    }
    
    // If still no direct metadata, check if the whole object IS the metadata
    if (!parsedData.file && !parsedData.technical && !parsedData.location) {
      return {
        success: false,
        error: 'Invalid metadata structure - no recognizable metadata found',
        hasMetadata: false
      };
    }
    
    return {
      success: true,
      metadata: parsedData,
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
 * Extract comprehensive info from metadata for template
 * @param {object} metadata - Parsed JSON metadata
 * @returns {object} - Template-ready data
 */
function extractBasicInfo(metadata) {
  if (!metadata) {
    return { message: 'No metadata available' };
  }
  
  // Helper functions
  const formatBytes = (bytes) => {
    if (!bytes) return 'Unknown';
    const mb = bytes / (1024 * 1024);
    return `${Math.round(mb * 100) / 100} MB (${bytes.toLocaleString()} bytes)`;
  };
  
  const calculateMegapixels = (width, height) => {
    if (!width || !height) return null;
    return Math.round(width * height / 1000000 * 10) / 10;
  };
  
  const formatTimestamp = (timestamp) => {
    if (!timestamp) return 'Unknown';
    
    // If it's an object, try to extract a meaningful value
    if (typeof timestamp === 'object') {
      // Try common timestamp object properties
      const value = timestamp.value || timestamp.timestamp || timestamp.date || timestamp.time;
      if (value) {
        return formatTimestamp(value); // Recursively format the extracted value
      }
      // If it's a Date object
      if (timestamp instanceof Date) {
        return timestamp.toLocaleString('en-US', {
          year: 'numeric',
          month: 'long',
          day: 'numeric',
          hour: '2-digit',
          minute: '2-digit',
          second: '2-digit',
          timeZoneName: 'short'
        });
      }
      // Convert object to string as fallback
      return JSON.stringify(timestamp);
    }
    
    try {
      const date = new Date(timestamp);
      return date.toLocaleString('en-US', {
        year: 'numeric',
        month: 'long',
        day: 'numeric',
        hour: '2-digit',
        minute: '2-digit',
        second: '2-digit',
        timeZoneName: 'short'
      });
    } catch {
      return String(timestamp);
    }
  };

  
  // HTML sanitization function
  const sanitizeHtml = (html) => {
    if (!html || typeof html !== 'string') return html;
    
    // Simple sanitization - only remove dangerous elements
    // Allow safe formatting tags like <p>, <br>, <strong>, <em>, <i>, <b>, <a>, etc.
    let sanitized = html
      .replace(/<script\b[^<]*(?:(?!<\/script>)<[^<]*)*<\/script>/gi, '') // Remove script tags
      .replace(/<style\b[^<]*(?:(?!<\/style>)<[^<]*)*<\/style>/gi, '')   // Remove style tags
      .replace(/on\w+\s*=\s*["'][^"']*["']/gi, '')                       // Remove event handlers (onclick, onload, etc.)
      .replace(/javascript:\s*[^"'\s>]*/gi, '')                          // Remove javascript: protocol
      .replace(/<iframe\b[^>]*>/gi, '')                                  // Remove iframe tags
      .replace(/<object\b[^>]*>/gi, '')                                  // Remove object tags
      .replace(/<embed\b[^>]*>/gi, '');                                  // Remove embed tags
    
    return sanitized;
  };

  // Extract comprehensive data
  const data = {
    message: 'Photo metadata loaded successfully!',
    
    // File Information
    fileName: metadata.file?.path ? metadata.file.path.split('/').pop() : 'Unknown',
    filePath: metadata.file?.path || 'Unknown',
    fileSize: formatBytes(metadata.file?.size),
    fileHash: metadata.file?.hash || 'placeholder-hash',
    mimeType: metadata.technical?.['File:MIMEType'] || metadata.file?.mimeType || 'Unknown',
    createdDate: formatFileTimestamp(metadata.file?.created || metadata.technical?.['File:FileCreateDate']),
    modifiedDate: formatFileTimestamp(metadata.file?.modified || metadata.technical?.['File:FileModifyDate']),
    
    // Processing Information
    processor: metadata.processing?.processor || 'ImageProcessor',
    processingSuccess: metadata.processing?.success ? 'SUCCESS' : 'ERROR',
    extractedAt: formatFileTimestamp(metadata.processing?.extractedAt),
    
    // Media Properties
    mediaType: metadata.media?.type || 'image',
    mediaFormat: metadata.media?.format || metadata.technical?.['File:FileTypeExtension'] || 'Unknown',
    imageWidth: metadata.media?.dimensions?.width || metadata.technical?.['EXIF:ExifImageWidth'],
    imageHeight: metadata.media?.dimensions?.height || metadata.technical?.['EXIF:ExifImageHeight'],
    megapixels: null,
    orientation: metadata.technical?.['EXIF:Orientation'] || 'Unknown',
    
    // Camera Information
    camera: metadata.camera?.make || metadata.technical?.['EXIF:Make'] || 'Unknown',
    model: metadata.camera?.model || metadata.technical?.['EXIF:Model'] || 'Unknown',
    lens: metadata.technical?.['EXIF:LensModel'] || metadata.technical?.['EXIF:LensInfo'] || 'Unknown',
    software: metadata.technical?.['EXIF:Software'] || 'Unknown',
    
    // Camera Settings
    iso: metadata.settings?.iso || metadata.technical?.['EXIF:ISO'] || 'Unknown',
    aperture: metadata.settings?.aperture || metadata.technical?.['EXIF:FNumber'] || metadata.technical?.['EXIF:ApertureValue'] || 'Unknown',
    shutterSpeed: metadata.settings?.shutterSpeed || metadata.technical?.['EXIF:ShutterSpeedValue'] || metadata.technical?.['EXIF:ExposureTime'] || 'Unknown',
    focalLength: metadata.technical?.['EXIF:FocalLength'] || 'Unknown',
    focalLength35mm: metadata.technical?.['EXIF:FocalLengthIn35mmFormat'] || 'Unknown',
    flash: metadata.technical?.['EXIF:Flash'] || 'Unknown',
    
    // Timestamps
    primaryTimestamp: formatFileTimestamp(metadata.timestamps?.primary || metadata.timestamps?.capture),
    captureTimestamp: formatFileTimestamp(metadata.timestamps?.capture),
    creationTimestamp: formatFileTimestamp(metadata.timestamps?.creation),
    modificationTimestamp: formatFileTimestamp(metadata.timestamps?.modification),
    allTimestamps: (() => {
      const timestamps = (metadata.timestamps?.alternatives || [])
        .filter(ts => ts.confidence !== 'low') // Exclude low confidence timestamps
        .map(ts => {
          const details = ts.details || ts.method || 'No details available';
          return {
            value: formatFileTimestamp(ts.value || ts.timestamp || ts),
            source: ts.source || 'Unknown',
            confidence: ts.confidence || 'low',
            details: details,
            hasDetails: details !== 'No details available'
          };
        });
      
      // Sort by confidence (high > medium)
      const confidenceOrder = { 'high': 3, 'medium': 2 };
      timestamps.sort((a, b) => (confidenceOrder[b.confidence] || 0) - (confidenceOrder[a.confidence] || 0));
      
      // Mark the highest confidence one
      if (timestamps.length > 0) {
        timestamps[0].isHighestConfidence = true;
      }
      
      return timestamps;
    })(),
    hasAlternativeTimestamps: (metadata.timestamps?.alternatives || []).filter(ts => ts.confidence !== 'low').length > 0,
    timestampConflicts: metadata.timestamps?.conflicts || [],
    
    // Location Information
    hasGPS: !!(metadata.location?.primary?.latitude || metadata.technical?.['EXIF:GPSLatitude']),
    latitude: metadata.location?.primary?.latitude || metadata.technical?.['EXIF:GPSLatitude'] || null,
    longitude: metadata.location?.primary?.longitude || metadata.technical?.['EXIF:GPSLongitude'] || null,
    altitude: metadata.location?.primary?.altitude || metadata.technical?.['EXIF:GPSAltitude'] || null,
    gpsAccuracy: metadata.location?.primary?.accuracy || null,
    gpsSource: metadata.location?.primary?.sourceDetails || metadata.location?.primary?.source || 'EXIF GPS data',
    
    // Geolocation
    city: metadata.location?.geolocation?.city || null,
    state: metadata.location?.geolocation?.state_code || metadata.location?.geolocation?.state || null,
    county: metadata.location?.geolocation?.county_name || metadata.location?.geolocation?.county || null,
    timezone: metadata.location?.geolocation?.timezone || null,
    postalCode: metadata.location?.geolocation?.postal_code || metadata.location?.geolocation?.postalCode || 'Unknown',
    geolocationDistance: metadata.location?.geolocation?.distance ? `${metadata.location.geolocation.distance}m` : null,
    geolocationConfidence: metadata.location?.geolocation?.confidence || null,
    geolocationSource: metadata.location?.geolocation?.source || 'Unknown',
    geolocationMethod: metadata.location?.geolocation?.method || 'Unknown',
    
    // Alternative locations and conflicts
    alternativeLocations: metadata.location?.alternatives || [],
    locationConflicts: metadata.location?.conflicts || [],
    
    // Enrichment Status
    enrichmentStatus: {
      geolocation: metadata.location?.enrichmentStatus?.geolocation || 'SUCCESS',
      landmarks: metadata.location?.enrichmentStatus?.landmarks || 'SUCCESS', 
      cacheHit: metadata.location?.enrichmentStatus?.cacheHit ? 'TRUE' : 'FALSE',
      queryTime: metadata.location?.enrichmentStatus?.queryTimeMs ? `${metadata.location.enrichmentStatus.queryTimeMs}ms` : 'Unknown'
    },
    providersUsed: metadata.location?.enrichmentStatus?.providersUsed || [],
    
    // Landmarks - extract from location.landmarks array with enhanced data
    landmarks: (metadata.location?.landmarks || [])
      .map(item => {
      const landmark = item.landmark || item;
      const landmarkLat = parseFloat(landmark.latitude);
      const landmarkLon = parseFloat(landmark.longitude);
      const photoLat = metadata.location?.primary?.latitude;
      const photoLon = metadata.location?.primary?.longitude;
      
      // Calculate direction if we have coordinates
      let direction = null;
      let compassDirection = null;
      if (photoLat && photoLon && landmarkLat && landmarkLon) {
        direction = calculateBearing(photoLat, photoLon, landmarkLat, landmarkLon);
        compassDirection = bearingToCompass(direction);
      }
      
      const category = landmark.category || 'other';
      
      return {
        name: landmark.name,
        id: landmark.id,
        category: category,
        subcategory: landmark.subcategory,
        latitude: landmarkLat,
        longitude: landmarkLon,
        state: landmark.state,
        county: landmark.county,
        description: sanitizeHtml(landmark.description),
        hasHtmlDescription: landmark.description && landmark.description.includes('<'),
        distance: item.distance ? `${item.distance}m` : null,
        distanceKm: item.distance ? (item.distance / 1000).toFixed(1) : null,
        confidence: item.confidence,
        relationship: item.relationship,
        source: item.source,
        method: item.matchMethod || item.method,
        direction: direction,
        compassDirection: compassDirection,
        icon: getLandmarkIcon(category),
        cssClass: getLandmarkClass(category),
        pillClass: getLandmarkPillClass(category)
      };
    })
    .sort((a, b) => {
      // Sort by distance (closest first)
      const distanceA = parseFloat(a.distance) || Infinity;
      const distanceB = parseFloat(b.distance) || Infinity;
      return distanceA - distanceB;
    }),
    landmarkCount: (metadata.location?.landmarks || []).filter(l => l.source !== 'Recreation.gov').length,
    recreationCount: (metadata.location?.landmarks || []).filter(l => l.source === 'Recreation.gov').length,
    
    // Technical Details (grouped)
    technicalGroups: groupTechnicalData(metadata.technical || {}),
    
    // XMP Region Data (face detection)
    hasRegionData: !!(metadata.technical?.['XMP:RegionType'] || metadata.technical?.['XMP:RegionAreaX']),
    regionTypes: metadata.technical?.['XMP:RegionType'] || null,
    regionData: extractRegionData(metadata.technical || {}),
    
    // Sidecar Files
    sidecarFiles: metadata.sidecars || [],
    
    // Raw metadata preview (for debugging)
    rawMetadataKeys: Object.keys(metadata),
    fullMetadata: JSON.stringify(metadata, null, 2),
    
    // MIME Type Icon
    fileIcon: getFileIcon(metadata.technical?.['File:MIMEType'] || metadata.file?.mimeType || 'unknown'),
    fileIconColor: getFileIconColor(metadata.technical?.['File:MIMEType'] || metadata.file?.mimeType || 'unknown'),
    
    // File Extension for icon
    fileExtension: getFileExtension(metadata.file?.path || metadata.technical?.['File:FileTypeExtension'] || ''),
    
    // Check if it's a video file
    isVideoFile: isVideoFile(metadata.technical?.['File:MIMEType'] || metadata.file?.mimeType || ''),
    
    // Check for unknown values
    isUnknownCamera: (metadata.camera?.make || metadata.technical?.['EXIF:Make'] || 'Unknown') === 'Unknown',
    isUnknownModel: (metadata.camera?.model || metadata.technical?.['EXIF:Model'] || 'Unknown') === 'Unknown',
    isUnknownLens: (metadata.technical?.['EXIF:LensModel'] || metadata.technical?.['EXIF:LensInfo'] || 'Unknown') === 'Unknown',
    isUnknownSoftware: (metadata.technical?.['EXIF:Software'] || 'Unknown') === 'Unknown'
  };
  
  // Calculate megapixels
  if (data.imageWidth && data.imageHeight) {
    data.megapixels = calculateMegapixels(data.imageWidth, data.imageHeight);
  }
  
  return data;
}

/**
 * Group technical metadata by category for better organization
 */
function groupTechnicalData(technical) {
  const groups = {
    'File Information': {},
    'Image Dimensions': {},
    'Camera Settings': {},
    'GPS': {},
    'Date & Time': {},
    'Image Format': {},
    'Color & Profile': {},
    'Apple Features (Maker Notes)': {},
    'Advanced EXIF': {},
    'Computed Values': {}
  };
  
  // Special handling for combined values
  const combinedValues = {};
  
  // First pass - collect values for combination
  Object.entries(technical).forEach(([key, value]) => {
    if (value === null || value === undefined || value === '') return;
    
    // Collect X and Y Resolution for combination
    if (key === 'EXIF:XResolution') {
      combinedValues.xResolution = value;
    } else if (key === 'EXIF:YResolution') {
      combinedValues.yResolution = value;
    }
    
    // Collect JFIF version and unit for combination
    if (key === 'EXIF:JFIFVersion' || key === 'File:JFIFVersion') {
      combinedValues.jfifVersion = value;
    } else if (key === 'EXIF:ResolutionUnit') {
      combinedValues.resolutionUnit = value;
    }
    
    // Collect Region Area components (both W/H and X/Y formats)
    if (key === 'XMP:RegionAreaW') {
      combinedValues.regionAreaW = value;
    } else if (key === 'XMP:RegionAreaH') {
      combinedValues.regionAreaH = value;
    } else if (key === 'XMP:RegionAreaX') {
      combinedValues.regionAreaW = value; // X maps to width
    } else if (key === 'XMP:RegionAreaY') {
      combinedValues.regionAreaH = value; // Y maps to height
    } else if (key === 'XMP:RegionAreaUnit') {
      combinedValues.regionAreaUnit = value;
    }
    
    // Collect Region Applied Dimensions
    if (key === 'XMP:RegionAppliedToDimensionsW') {
      combinedValues.regionAppliedW = value;
    } else if (key === 'XMP:RegionAppliedToDimensionsH') {
      combinedValues.regionAppliedH = value;
    } else if (key === 'XMP:RegionAppliedToDimensionsUnit') {
      combinedValues.regionAppliedUnit = value;
    }
    
    // Collect GPS coordinates for combination
    if (key === 'EXIF:GPSLatitude') {
      combinedValues.latitude = value;
    } else if (key === 'EXIF:GPSLatitudeRef') {
      combinedValues.latitudeRef = value;
    } else if (key === 'EXIF:GPSLongitude') {
      combinedValues.longitude = value;
    } else if (key === 'EXIF:GPSLongitudeRef') {
      combinedValues.longitudeRef = value;
    }
  });
  
  // Categorize technical fields with better organization
  Object.entries(technical).forEach(([key, value]) => {
    // Skip empty or null values
    if (value === null || value === undefined || value === '') return;
    
    // Skip individual entries that we're combining
    const skipKeys = [
      // Resolution combination
      'EXIF:XResolution', 'EXIF:YResolution', 'EXIF:ResolutionUnit',
      // JFIF combination  
      'EXIF:JFIFVersion', 'File:JFIFVersion',
      // Region Area combination
      'XMP:RegionAreaW', 'XMP:RegionAreaH', 'XMP:RegionAreaUnit', 'XMP:RegionAreaX', 'XMP:RegionAreaY',
      // Region Applied Dimensions combination
      'XMP:RegionAppliedToDimensionsW', 'XMP:RegionAppliedToDimensionsH', 'XMP:RegionAppliedToDimensionsUnit',
      // GPS coordinates combination
      'EXIF:GPSLatitude', 'EXIF:GPSLatitudeRef', 'EXIF:GPSLongitude', 'EXIF:GPSLongitudeRef'
    ];
    
    if (skipKeys.includes(key)) {
      return;
    }
    
    // Clean up the key for display (remove prefixes)
    const cleanKey = key.replace(/^(File|EXIF|XMP):/g, '').replace(/([A-Z])/g, ' $1').trim();
    
    if (key.startsWith('File:')) {
      // Check if this is a date field and format it properly
      if (cleanKey.includes('Date') || cleanKey.includes('Time')) {
        const formattedValue = formatFileTimestamp(value);
        groups['File Information'][cleanKey] = formattedValue;
      } else {
        groups['File Information'][cleanKey] = value;
      }
    } else if (key.startsWith('EXIF:GPS') || key.includes('GPS')) {
      // Remove GPS prefix from key since the section is already titled "GPS"
      const gpsKey = cleanKey.replace(/^G P S\s*/, '').replace(/^GPS\s*/, '');
      groups['GPS'][gpsKey] = value;
    } else if (key.includes('Width') || key.includes('Height') || key.includes('Resolution') || key.includes('Orientation') || key.includes('Dimension') || key.includes('Region') || key.includes('JFIF')) {
      groups['Image Dimensions'][cleanKey] = value;
    } else if (key.includes('Date') || key.includes('Time') || key.includes('Timestamp')) {
      // Format date/time values using our structured format
      const formattedValue = formatFileTimestamp(value);
      groups['Date & Time'][cleanKey] = formattedValue;
    } else if (key.includes('ISO') || key.includes('Aperture') || key.includes('Shutter') || key.includes('Exposure') || key.includes('Flash') || key.includes('Focal') || key.includes('FNumber') || key.includes('Metering')) {
      groups['Camera Settings'][cleanKey] = value;
    } else if (key.includes('Color') || key.includes('Profile') || key.includes('ICC') || key.includes('Space') || key.includes('Gamut')) {
      // Remove "ICC_Profile:" prefix from keys since the section is already titled with it
      const colorKey = cleanKey.replace(/^I\s*C\s*C\s*_?\s*Profile\s*:\s*/i, '');
      groups['Color & Profile'][colorKey] = value;
    } else if (key.includes('Apple') || key.includes('MakerNote') || key.includes('iPhone') || key.includes('Run Time') || key.includes('Photo Identifier')) {
      // Remove "Maker Notes:" prefix from keys since the section is already titled with it
      const appleKey = cleanKey.replace(/^Maker Notes?\s*:\s*/i, '');
      groups['Apple Features (Maker Notes)'][appleKey] = value;
    } else if (key.includes('Format') || key.includes('Type') || key.includes('MIME') || key.includes('Compression') || key.includes('Quality')) {
      groups['Image Format'][cleanKey] = value;
    } else if (key.includes('Computed') || key.includes('Circle') || key.includes('FOV') || key.includes('Hyperfocal') || key.includes('Light Value')) {
      groups['Computed Values'][cleanKey] = value;
    } else if (key.startsWith('EXIF:')) {
      groups['Advanced EXIF'][cleanKey] = value;
    } else {
      groups['Advanced EXIF'][cleanKey] = value;
    }
  });
  
  // Add combined values to Image Dimensions
  if (combinedValues.xResolution && combinedValues.yResolution) {
    const unit = combinedValues.resolutionUnit ? ` (${combinedValues.resolutionUnit})` : '';
    groups['Image Dimensions']['X,Y Resolution'] = `${combinedValues.xResolution}, ${combinedValues.yResolution}${unit}`;
  }
  
  if (combinedValues.jfifVersion) {
    const unit = combinedValues.resolutionUnit ? ` • Unit: ${combinedValues.resolutionUnit}` : '';
    groups['Image Dimensions']['JFIF'] = `Version ${combinedValues.jfifVersion}${unit}`;
  }
  
  if (combinedValues.regionAreaW && combinedValues.regionAreaH) {
    const unit = combinedValues.regionAreaUnit ? ` ${combinedValues.regionAreaUnit}` : '';
    groups['Image Dimensions']['Region Area'] = `${combinedValues.regionAreaW} × ${combinedValues.regionAreaH}${unit}`;
  }
  
  if (combinedValues.regionAppliedW && combinedValues.regionAppliedH) {
    const unit = combinedValues.regionAppliedUnit ? ` ${combinedValues.regionAppliedUnit}` : '';
    groups['Image Dimensions']['Region Applied Dimensions'] = `${combinedValues.regionAppliedW} × ${combinedValues.regionAppliedH}${unit}`;
  }
  
  // Add combined GPS coordinates to GPS section
  if (combinedValues.latitude && combinedValues.longitude) {
    const latRef = combinedValues.latitudeRef || '';
    const lonRef = combinedValues.longitudeRef || '';
    groups['GPS']['Coordinates'] = `${combinedValues.latitude}° ${latRef}, ${combinedValues.longitude}° ${lonRef}`;
  }
  
  // Define preferred order for groups
  const preferredOrder = [
    'File Information',
    'Image Dimensions', 
    'Camera Settings',
    'GPS',
    'Date & Time',
    'Image Format',
    'Color & Profile',
    'Apple Features (Maker Notes)',
    'Computed Values',
    'Advanced EXIF'
  ];
  
  // Filter out empty groups and sort by preferred order
  return preferredOrder
    .filter(title => Object.keys(groups[title]).length > 0)
    .map(title => ({ 
      title, 
      data: groups[title],
      count: Object.keys(groups[title]).length 
    }));
}

/**
 * Extract XMP region data
 */
function extractRegionData(technical) {
  const regionData = {};
  
  Object.entries(technical).forEach(([key, value]) => {
    if (key.startsWith('XMP:Region')) {
      regionData[key] = value;
    }
  });
  
  return regionData;
}

/**
 * Calculate bearing between two GPS points
 */
function calculateBearing(lat1, lon1, lat2, lon2) {
  const dLon = (lon2 - lon1) * Math.PI / 180;
  const lat1Rad = lat1 * Math.PI / 180;
  const lat2Rad = lat2 * Math.PI / 180;
  
  const y = Math.sin(dLon) * Math.cos(lat2Rad);
  const x = Math.cos(lat1Rad) * Math.sin(lat2Rad) - Math.sin(lat1Rad) * Math.cos(lat2Rad) * Math.cos(dLon);
  
  let bearing = Math.atan2(y, x) * 180 / Math.PI;
  return (bearing + 360) % 360;
}

/**
 * Convert bearing to compass direction
 */
function bearingToCompass(bearing) {
  const directions = ['N', 'NNE', 'NE', 'ENE', 'E', 'ESE', 'SE', 'SSE', 'S', 'SSW', 'SW', 'WSW', 'W', 'WNW', 'NW', 'NNW'];
  const index = Math.round(bearing / 22.5) % 16;
  return directions[index];
}

/**
 * Get landmark icon based on category
 */
function getLandmarkIcon(category) {
  const icons = {
    'mountain': '🏔️',
    'lake': '🏞️',
    'river': '🌊',
    'water_feature': '💧',
    'recreation_facility': '🏞️',
    'national_recreation_area': '🏛️',
    'natural_feature': '🌲',
    'default': '📍'
  };
  return icons[category] || icons.default;
}

/**
 * Get landmark CSS class based on category
 */
function getLandmarkClass(category) {
  if (['mountain', 'summit'].includes(category)) return 'landmark-mountain';
  if (['lake', 'river', 'water_feature', 'stream', 'swamp'].includes(category)) return 'landmark-water';
  if (['recreation_facility', 'national_recreation_area'].includes(category)) return 'landmark-recreation';
  return 'landmark-other';
}

/**
 * Get landmark pill CSS class based on category
 */
function getLandmarkPillClass(category) {
  if (['mountain', 'summit'].includes(category)) return 'mountain';
  if (['lake', 'river', 'water_feature', 'stream', 'swamp'].includes(category)) return 'water';
  if (['recreation_facility', 'national_recreation_area'].includes(category)) return 'recreation';
  return 'other';
}

/**
 * Get file extension from path or type
 */
function getFileExtension(filePath) {
  if (!filePath) return 'FILE';
  
  // If it's already just an extension
  if (!filePath.includes('/') && !filePath.includes('.')) {
    return filePath.toUpperCase();
  }
  
  // Extract from file path
  const parts = filePath.split('.');
  if (parts.length > 1) {
    const ext = parts[parts.length - 1].toUpperCase();
    // Handle special cases
    if (ext === 'JPEG') return 'JPG';
    if (ext === 'TIFF') return 'TIF';
    if (ext === 'QUICKTIME') return 'MOV';
    return ext;
  }
  
  return 'FILE';
}

/**
 * Get FontAwesome icon class based on MIME type
 */
function getFileIcon(mimeType) {
  if (!mimeType) return 'fas fa-file';
  
  const type = mimeType.toLowerCase();
  
  if (type.includes('jpeg') || type.includes('jpg')) return 'fas fa-file-image';
  if (type.includes('png')) return 'fas fa-file-image';
  if (type.includes('gif')) return 'fas fa-file-image';
  if (type.includes('webp')) return 'fas fa-file-image';
  if (type.includes('tiff') || type.includes('tif')) return 'fas fa-file-image';
  if (type.includes('heic') || type.includes('heif')) return 'fas fa-file-image';
  if (type.includes('bmp')) return 'fas fa-file-image';
  if (type.includes('svg')) return 'fas fa-file-image';
  
  if (type.includes('mp4')) return 'fas fa-file-video';
  if (type.includes('quicktime') || type.includes('mov')) return 'fas fa-file-video';
  if (type.includes('avi')) return 'fas fa-file-video';
  if (type.includes('mkv')) return 'fas fa-file-video';
  if (type.includes('webm')) return 'fas fa-file-video';
  
  if (type.includes('pdf')) return 'fas fa-file-pdf';
  if (type.includes('text') || type.includes('txt')) return 'fas fa-file-alt';
  if (type.includes('audio') || type.includes('mp3') || type.includes('wav')) return 'fas fa-file-audio';
  
  return 'fas fa-file';
}

/**
 * Check if file is a video based on MIME type
 */
function isVideoFile(mimeType) {
  if (!mimeType) return false;
  const type = mimeType.toLowerCase();
  return type.includes('video/') || 
         type.includes('quicktime') || 
         type.includes('mov') || 
         type.includes('avi') || 
         type.includes('mkv') || 
         type.includes('webm');
}

/**
 * Get color for file icon based on MIME type
 */
function getFileIconColor(mimeType) {
  if (!mimeType) return '#757575';
  
  const type = mimeType.toLowerCase();
  
  if (type.includes('jpeg') || type.includes('jpg')) return '#ff9800'; // Orange
  if (type.includes('png')) return '#2196f3'; // Blue
  if (type.includes('gif')) return '#4caf50'; // Green
  if (type.includes('webp')) return '#9c27b0'; // Purple
  if (type.includes('tiff') || type.includes('tif')) return '#795548'; // Brown
  if (type.includes('heic') || type.includes('heif')) return '#607d8b'; // Blue Grey
  if (type.includes('bmp')) return '#ff5722'; // Deep Orange
  if (type.includes('svg')) return '#673ab7'; // Deep Purple
  
  if (type.includes('mp4')) return '#f44336'; // Red
  if (type.includes('quicktime') || type.includes('mov')) return '#e91e63'; // Pink
  if (type.includes('avi')) return '#ff5722'; // Deep Orange
  if (type.includes('mkv')) return '#3f51b5'; // Indigo
  if (type.includes('webm')) return '#009688'; // Teal
  
  if (type.includes('pdf')) return '#f44336'; // Red
  if (type.includes('text') || type.includes('txt')) return '#607d8b'; // Blue Grey
  if (type.includes('audio') || type.includes('mp3') || type.includes('wav')) return '#ff9800'; // Orange
  
  return '#757575'; // Default grey
}

module.exports = { readMetadata, extractBasicInfo };