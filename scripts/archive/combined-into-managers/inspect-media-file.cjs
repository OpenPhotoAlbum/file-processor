#!/usr/bin/env node

// Comprehensive media file inspector - shows everything the database knows about a file
const knex = require('knex');

const db = knex({
  client: 'mysql2',
  connection: {
    host: process.env.DB_HOST || 'localhost',
    port: parseInt(process.env.DB_PORT || '3309'),
    user: process.env.DB_USER || 'kin',
    password: process.env.DB_PASSWORD || 'Dalekini21!',
    database: process.env.DB_NAME || 'kin'
  }
});

async function inspectMediaFile(identifier) {
  try {
    console.log('🔍 Media File Inspector');
    console.log('='.repeat(80));
    
    // Find the media file by ID, relative_path, or hash
    let mediaFile;
    if (!isNaN(identifier)) {
      // Numeric - assume it's an ID
      mediaFile = await db('media_files').where('id', identifier).first();
    } else if (identifier.length === 32) {
      // 32 chars - assume it's an MD5 hash
      mediaFile = await db('media_files').where('file_hash', identifier).first();
    } else {
      // Assume it's a relative path
      mediaFile = await db('media_files').where('relative_path', 'like', `%${identifier}%`).first();
    }
    
    if (!mediaFile) {
      console.log(`❌ No media file found for identifier: ${identifier}`);
      console.log('💡 Try: file ID, relative path, or MD5 hash');
      return;
    }
    
    console.log(`📁 MEDIA FILE: ${mediaFile.relative_path}`);
    console.log('='.repeat(80));
    
    // 1. CORE FILE INFO
    console.log('📋 CORE FILE INFORMATION');
    console.log(`   ID: ${mediaFile.id}`);
    console.log(`   Collection: ${mediaFile.collection}`);
    console.log(`   File Hash: ${mediaFile.file_hash}`);
    console.log(`   File Size: ${mediaFile.file_size?.toLocaleString()} bytes`);
    console.log(`   MIME Type: ${mediaFile.mime_type}`);
    console.log(`   Media Type: ${mediaFile.media_type}`);
    console.log(`   Media Format: ${mediaFile.media_format}`);
    console.log(`   Live Photo: ${mediaFile.is_live_photo ? 'Yes' : 'No'}`);
    console.log(`   Frame Count: ${mediaFile.frame_count}`);
    console.log('');
    
    // 2. TIMESTAMPS (with timezone conversion)
    console.log('⏰ TIMESTAMPS (EDT/EST)');
    const formatTime = (utcTime) => utcTime ? new Date(utcTime).toLocaleString('en-US', {timeZone: 'America/New_York'}) : 'Not set';
    console.log(`   Primary Timestamp: ${formatTime(mediaFile.primary_timestamp)}`);
    console.log(`   Timestamp Source: ${mediaFile.timestamp_source}`);
    console.log(`   Timestamp Confidence: ${mediaFile.timestamp_confidence}`);
    console.log(`   File Created: ${formatTime(mediaFile.file_created_at)}`);
    console.log(`   File Modified: ${formatTime(mediaFile.file_modified_at)}`);
    console.log(`   Record Created: ${formatTime(mediaFile.created_at)}`);
    console.log(`   Record Updated: ${formatTime(mediaFile.updated_at)}`);
    console.log('');
    
    // 3. CAMERA/EQUIPMENT INFO
    if (mediaFile.imaging_train_id) {
      console.log('📷 CAMERA & EQUIPMENT');
      const imagingTrain = await db('imaging_trains')
        .select('*')
        .where('id', mediaFile.imaging_train_id)
        .first();
      
      if (imagingTrain) {
        console.log(`   Imaging Train: ${imagingTrain.name || `ID ${imagingTrain.id}`}`);
        if (imagingTrain.description) console.log(`   Description: ${imagingTrain.description}`);
        
        // Get primary camera details
        if (imagingTrain.primary_camera_id) {
          const camera = await db('equipment')
            .select('*')
            .where('id', imagingTrain.primary_camera_id)
            .first();
          
          if (camera) {
            console.log(`   Camera Make: ${camera.make}`);
            console.log(`   Camera Model: ${camera.model}`);
            console.log(`   Camera Type: ${camera.equipment_type}`);
          }
        }
        
        // Get lens details
        if (imagingTrain.lens_id) {
          const lens = await db('equipment')
            .select('*')
            .where('id', imagingTrain.lens_id)
            .first();
          
          if (lens) {
            console.log(`   Lens: ${lens.make} ${lens.model}`);
          }
        }
      }
    }
    
    // Camera settings from media file
    if (mediaFile.iso_value || mediaFile.aperture_f_number || mediaFile.shutter_speed_seconds || mediaFile.focal_length_mm) {
      console.log('📸 CAMERA SETTINGS');
      if (mediaFile.iso_value) console.log(`   ISO: ${mediaFile.iso_value}`);
      if (mediaFile.aperture_f_number) console.log(`   Aperture: f/${mediaFile.aperture_f_number}`);
      if (mediaFile.shutter_speed_seconds) console.log(`   Shutter Speed: ${mediaFile.shutter_speed_seconds}s`);
      if (mediaFile.focal_length_mm) console.log(`   Focal Length: ${mediaFile.focal_length_mm}mm`);
    }
    console.log('');
    
    // 4. COLOR ANALYSIS
    if (mediaFile.dominant_color_hex || mediaFile.mean_color_hex || mediaFile.salient_color_hex) {
      console.log('🎨 COLOR ANALYSIS');
      if (mediaFile.dominant_color_hex) console.log(`   Dominant Color: ${mediaFile.dominant_color_hex}`);
      if (mediaFile.mean_color_hex) console.log(`   Mean Color: ${mediaFile.mean_color_hex}`);
      if (mediaFile.salient_color_hex) console.log(`   Salient Color: ${mediaFile.salient_color_hex}`);
      console.log('');
    }
    
    // 5. LOCATION DATA
    const locations = await db('media_locations as ml')
      .leftJoin('geo_cities as c', 'ml.city_id', 'c.id')
      .leftJoin('geo_states as s', 'ml.state_id', 's.id')
      .leftJoin('geo_countries as co', 'ml.country_id', 'co.id')
      .select(
        'ml.*',
        'c.city as city_name', 'c.timezone as city_timezone', 'c.county_name',
        's.name as state_name', 's.code as state_code',
        'co.country_name', 'co.country_code'
      )
      .where('ml.file_id', mediaFile.id);
    
    if (locations.length > 0) {
      console.log('🌍 LOCATION DATA');
      locations.forEach((loc, idx) => {
        console.log(`   Location ${idx + 1}:`);
        console.log(`     Coordinates: ${loc.latitude}, ${loc.longitude}`);
        console.log(`     GPS Source: ${loc.gps_source}`);
        console.log(`     GPS Confidence: ${loc.gps_confidence}`);
        if (loc.city_name) console.log(`     City: ${loc.city_name}, ${loc.state_code}`);
        if (loc.county_name) console.log(`     County: ${loc.county_name}`);
        if (loc.country_name) console.log(`     Country: ${loc.country_name}`);
        if (loc.city_timezone) console.log(`     Timezone: ${loc.city_timezone}`);
        if (loc.geolocation_data) {
          try {
            const geoData = typeof loc.geolocation_data === 'string' 
              ? JSON.parse(loc.geolocation_data) 
              : loc.geolocation_data;
            console.log(`     Geolocation Method: ${geoData.method || 'unknown'}`);
            if (geoData.distance) console.log(`     Distance to Reference: ${geoData.distance}m`);
            if (geoData.confidence) console.log(`     Confidence: ${(geoData.confidence * 100).toFixed(1)}%`);
          } catch (e) {
            console.log(`     Geolocation Data: ${loc.geolocation_data}`);
          }
        }
        console.log('');
      });
    }
    
    // 6. LANDMARKS
    const landmarks = await db('media_landmarks as ml')
      .join('landmarks as l', 'ml.landmark_id', 'l.id')
      .select('l.*', 'ml.distance_meters')
      .where('ml.file_id', mediaFile.id)
      .orderBy('ml.distance_meters', 'asc');
    
    if (landmarks.length > 0) {
      console.log('🏔️  NEARBY LANDMARKS');
      landmarks.forEach((landmark, idx) => {
        const distance = landmark.distance_meters < 1000 
          ? `${landmark.distance_meters}m`
          : `${(landmark.distance_meters / 1000).toFixed(1)}km`;
        // Try to get the real landmark name from provider data
        let displayName = landmark.name;
        let extraInfo = {};
        
        if (landmark.provider_data) {
          try {
            const data = typeof landmark.provider_data === 'string' 
              ? JSON.parse(landmark.provider_data) 
              : landmark.provider_data;
            
            // Use provider data name if available and more descriptive
            if (data.name && data.name !== 'Unknown') {
              displayName = data.name;
            }
            if (data.fullName && data.fullName !== displayName) {
              displayName = data.fullName;
            }
            
            extraInfo = data;
          } catch (e) {
            // Keep original name if parsing fails
          }
        }
        
        console.log(`   ${idx + 1}. ${displayName} (${distance})`);
        console.log(`      Category: ${landmark.category}`);
        console.log(`      Provider: ${landmark.provider}`);
        
        if (extraInfo.latitude && extraInfo.longitude) {
          console.log(`      Coordinates: ${extraInfo.latitude}, ${extraInfo.longitude}`);
        }
        if (extraInfo.subcategory) {
          console.log(`      Type: ${extraInfo.subcategory}`);
        }
        if (extraInfo.description) {
          console.log(`      Description: ${extraInfo.description}`);
        }
        if (extraInfo.state) {
          console.log(`      State: ${extraInfo.state}`);
        }
        console.log('');
      });
    }
    
    // 7. SOFTWARE ASSOCIATIONS
    const software = await db('media_software as ms')
      .join('software as s', 'ms.software_id', 's.id')
      .select('s.*', 'ms.usage_role', 'ms.usage_metadata')
      .where('ms.file_id', mediaFile.id);
    
    if (software.length > 0) {
      console.log('💻 SOFTWARE ASSOCIATIONS');
      software.forEach((sw, idx) => {
        console.log(`   ${idx + 1}. ${sw.name} ${sw.version || ''}`);
        console.log(`      Type: ${sw.software_type}`);
        console.log(`      Role: ${sw.usage_role}`);
        if (sw.usage_metadata) {
          console.log(`      Metadata: ${JSON.stringify(sw.usage_metadata)}`);
        }
        console.log('');
      });
    }
    
    // 8. PROCESSING RUNS
    const processRuns = await db('processing_runs')
      .select('*')
      .where('file_id', mediaFile.id)
      .orderBy('extracted_at', 'desc');
    
    if (processRuns.length > 0) {
      console.log('⚙️  PROCESSING HISTORY');
      processRuns.forEach((run, idx) => {
        console.log(`   Run ${idx + 1} (${formatTime(run.extracted_at)}):`);
        console.log(`     Processor: ${run.processor}`);
        console.log(`     Success: ${run.success ? 'Yes' : 'No'}`);
        console.log(`     Version: ${run.processing_version}`);
        console.log(`     Duration: ${run.processing_duration_ms}ms`);
        if (run.providers_enabled) console.log(`     Providers: ${run.providers_enabled}`);
        if (run.notes) console.log(`     Notes: ${run.notes}`);
        console.log('');
      });
    }
    
    // 9. METADATA (JSON) - Show summary, not full dump
    if (mediaFile.media_metadata) {
      console.log('📄 STORED METADATA SUMMARY');
      try {
        const metadata = typeof mediaFile.media_metadata === 'string' 
          ? JSON.parse(mediaFile.media_metadata) 
          : mediaFile.media_metadata;
        
        console.log(`   Media: ${Object.keys(metadata.media || {}).length} fields`);
        console.log(`   Location: ${Object.keys(metadata.location || {}).length} fields`);
        console.log(`   Camera: ${Object.keys(metadata.camera || {}).length} fields`);
        console.log(`   Settings: ${Object.keys(metadata.settings || {}).length} fields`);
        console.log(`   Technical: ${Object.keys(metadata.technical || {}).length} fields`);
        console.log(`   Processing: ${Object.keys(metadata.processing || {}).length} fields`);
        
        // Show a few key details
        if (metadata.media?.dimensions) {
          console.log(`   Dimensions: ${metadata.media.dimensions.width}x${metadata.media.dimensions.height}`);
        }
        if (metadata.location?.primary?.latitude) {
          console.log(`   GPS: ${metadata.location.primary.latitude}, ${metadata.location.primary.longitude}`);
        }
        
      } catch (e) {
        console.log('   Failed to parse metadata JSON:', e.message);
        console.log('   Raw length:', mediaFile.media_metadata?.length || 0, 'characters');
      }
      console.log('');
    }
    
    console.log('='.repeat(80));
    console.log('✅ Inspection complete');
    
  } catch (error) {
    console.error('❌ Error:', error.message);
  } finally {
    await db.destroy();
  }
}

// Command line usage
const identifier = process.argv[2];
if (!identifier) {
  console.log('Usage: node inspect-media-file.cjs <file_id|relative_path|hash>');
  console.log('');
  console.log('Examples:');
  console.log('  node inspect-media-file.cjs 51782');
  console.log('  node inspect-media-file.cjs "IMG_6645.jpg"');
  console.log('  node inspect-media-file.cjs "2019/12/photo.jpg"');
  console.log('  node inspect-media-file.cjs "a1b2c3d4e5f6..."  # MD5 hash');
  process.exit(1);
}

inspectMediaFile(identifier);