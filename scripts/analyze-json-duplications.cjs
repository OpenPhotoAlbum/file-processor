#!/usr/bin/env node

// Script to analyze JSON column duplications with relational table data

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

async function analyzeJsonDuplications() {
  try {
    console.log('🔍 Analyzing JSON column duplications...');
    
    // Get a sample of records with both JSON data and relational data
    const sampleRecords = await db('media_files as mf')
      .leftJoin('media_locations as ml', 'mf.id', 'ml.file_id')
      .leftJoin('imaging_trains as it', 'mf.imaging_train_id', 'it.id')
      .leftJoin('equipment as eq', 'it.primary_camera_id', 'eq.id')
      .select(
        'mf.id',
        'mf.relative_path',
        'mf.media_metadata',
        'mf.camera_exif',
        'mf.iso_value',
        'mf.aperture_f_number',
        'mf.shutter_speed_seconds',
        'mf.focal_length_mm',
        'ml.latitude',
        'ml.longitude',
        'eq.make as camera_make',
        'eq.model as camera_model'
      )
      .whereNotNull('mf.media_metadata')
      .limit(5);
    
    console.log(`📊 Analyzing ${sampleRecords.length} sample records...\n`);
    
    const analysis = {
      gps_duplications: 0,
      camera_settings_duplications: 0,
      equipment_duplications: 0,
      total_json_size_before: 0,
      estimated_savings: 0
    };
    
    for (const record of sampleRecords) {
      console.log(`🔎 Record ${record.id}: ${record.relative_path}`);
      
      // Parse JSON data
      let mediaMetadata = {};
      let cameraExif = {};
      
      try {
        if (typeof record.media_metadata === 'string') {
          mediaMetadata = JSON.parse(record.media_metadata);
        } else if (record.media_metadata) {
          mediaMetadata = record.media_metadata;
        }
        
        if (typeof record.camera_exif === 'string') {
          cameraExif = JSON.parse(record.camera_exif);
        } else if (record.camera_exif) {
          cameraExif = record.camera_exif;
        }
      } catch (e) {
        console.log(`   ⚠️  Failed to parse JSON: ${e.message}`);
        continue;
      }
      
      const originalSize = JSON.stringify(mediaMetadata).length + JSON.stringify(cameraExif).length;
      analysis.total_json_size_before += originalSize;
      
      // Check GPS duplications
      const gpsInJson = mediaMetadata.location?.primary;
      if (gpsInJson && record.latitude && record.longitude) {
        console.log(`   📍 GPS duplication found:`);
        console.log(`      Table: lat=${record.latitude}, lon=${record.longitude}`);
        console.log(`      JSON:  lat=${gpsInJson.latitude}, lon=${gpsInJson.longitude}`);
        analysis.gps_duplications++;
        
        // Remove GPS from JSON
        if (mediaMetadata.location) {
          delete mediaMetadata.location.primary.latitude;
          delete mediaMetadata.location.primary.longitude;
          if (mediaMetadata.location.primary.altitude) {
            delete mediaMetadata.location.primary.altitude;
          }
        }
      }
      
      // Check camera settings duplications
      const settingsInJson = mediaMetadata.settings;
      if (settingsInJson && (record.iso_value || record.aperture_f_number || record.shutter_speed_seconds)) {
        console.log(`   📷 Camera settings duplication found:`);
        console.log(`      Table: iso=${record.iso_value}, aperture=${record.aperture_f_number}, shutter=${record.shutter_speed_seconds}`);
        console.log(`      JSON:  iso=${settingsInJson.iso}, aperture=${settingsInJson.aperture}, shutter=${settingsInJson.shutterSpeed}`);
        analysis.camera_settings_duplications++;
        
        // Remove duplicated settings from JSON
        if (settingsInJson.iso && record.iso_value) delete settingsInJson.iso;
        if (settingsInJson.aperture && record.aperture_f_number) delete settingsInJson.aperture;
        if (settingsInJson.shutterSpeed && record.shutter_speed_seconds) delete settingsInJson.shutterSpeed;
        if (settingsInJson.focalLength && record.focal_length_mm) delete settingsInJson.focalLength;
      }
      
      // Check equipment duplications
      const cameraInJson = mediaMetadata.camera;
      if (cameraInJson && (record.camera_make || record.camera_model)) {
        console.log(`   📹 Equipment duplication found:`);
        console.log(`      Table: make=${record.camera_make}, model=${record.camera_model}`);
        console.log(`      JSON:  make=${cameraInJson.make}, model=${cameraInJson.model}`);
        analysis.equipment_duplications++;
        
        // Remove duplicated equipment from JSON
        if (cameraInJson.make && record.camera_make) delete cameraInJson.make;
        if (cameraInJson.model && record.camera_model) delete cameraInJson.model;
      }
      
      // Remove redundant EXIF GPS data
      const gpsExifKeys = Object.keys(cameraExif).filter(key => 
        key.includes('GPS') || key.includes('Position')
      );
      if (gpsExifKeys.length > 0 && record.latitude) {
        console.log(`   🗑️  Removing ${gpsExifKeys.length} redundant GPS EXIF fields`);
        gpsExifKeys.forEach(key => delete cameraExif[key]);
      }
      
      // Remove redundant camera settings EXIF data
      const settingsExifKeys = Object.keys(cameraExif).filter(key => 
        (key.includes('ISO') && record.iso_value) ||
        (key.includes('Aperture') && record.aperture_f_number) ||
        (key.includes('Shutter') && record.shutter_speed_seconds) ||
        (key.includes('FocalLength') && record.focal_length_mm)
      );
      if (settingsExifKeys.length > 0) {
        console.log(`   🗑️  Removing ${settingsExifKeys.length} redundant settings EXIF fields`);
        settingsExifKeys.forEach(key => delete cameraExif[key]);
      }
      
      const newSize = JSON.stringify(mediaMetadata).length + JSON.stringify(cameraExif).length;
      const savings = originalSize - newSize;
      analysis.estimated_savings += savings;
      
      console.log(`   💾 Size: ${originalSize} → ${newSize} bytes (-${savings} bytes, ${Math.round(savings/originalSize*100)}% reduction)`);
      console.log('');
    }
    
    console.log('📊 ANALYSIS SUMMARY:');
    console.log('==================');
    console.log(`GPS duplications found: ${analysis.gps_duplications}`);
    console.log(`Camera settings duplications found: ${analysis.camera_settings_duplications}`);
    console.log(`Equipment duplications found: ${analysis.equipment_duplications}`);
    console.log(`Total JSON size before: ${analysis.total_json_size_before} bytes`);
    console.log(`Estimated savings: ${analysis.estimated_savings} bytes (${Math.round(analysis.estimated_savings/analysis.total_json_size_before*100)}%)`);
    
    console.log('\n🎯 RECOMMENDATIONS:');
    console.log('===================');
    
    if (analysis.gps_duplications > 0) {
      console.log('• Remove GPS coordinates from media_metadata.location since they\'re in media_locations table');
      console.log('• Remove GPS EXIF fields since coordinates are normalized in media_locations');
    }
    
    if (analysis.camera_settings_duplications > 0) {
      console.log('• Remove camera settings (ISO, aperture, shutter, focal length) from media_metadata.settings');
      console.log('• Keep only non-normalized settings in JSON (like flash, focus mode, etc.)');
    }
    
    if (analysis.equipment_duplications > 0) {
      console.log('• Remove camera make/model from media_metadata.camera since they\'re in equipment table');
      console.log('• Keep only software version and lens details in JSON');
    }
    
    console.log('• Remove duplicate EXIF fields that are already normalized in table columns');
    console.log('• Keep technical/diagnostic EXIF data that isn\'t normalized');
    
  } catch (error) {
    console.error('💥 Fatal error:', error.message);
    console.error(error.stack);
    process.exit(1);
  } finally {
    await db.destroy();
  }
}

// Command line usage
if (require.main === module) {
  analyzeJsonDuplications();
}

module.exports = { analyzeJsonDuplications };