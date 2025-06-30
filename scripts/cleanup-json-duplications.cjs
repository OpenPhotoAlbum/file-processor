#!/usr/bin/env node

// Script to remove duplicated data from JSON columns that's already stored in relational tables

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

function cleanJsonData(mediaMetadata, cameraExif, record) {
  let changes = [];
  
  // 1. Clean GPS data from media_metadata if it exists in media_locations table
  if (mediaMetadata.location?.primary && (record.latitude || record.longitude)) {
    const location = mediaMetadata.location.primary;
    if (location.latitude && record.latitude) {
      delete location.latitude;
      changes.push('location.primary.latitude');
    }
    if (location.longitude && record.longitude) {
      delete location.longitude;
      changes.push('location.primary.longitude');
    }
    if (location.altitude) {
      delete location.altitude;
      changes.push('location.primary.altitude');
    }
    
    // Clean up empty location object
    if (Object.keys(location).length === 0) {
      delete mediaMetadata.location.primary;
      if (Object.keys(mediaMetadata.location).length === 0) {
        delete mediaMetadata.location;
      }
    }
  }
  
  // 2. Clean camera settings from media_metadata if they exist in table columns
  if (mediaMetadata.settings) {
    const settings = mediaMetadata.settings;
    if (settings.iso && record.iso_value) {
      delete settings.iso;
      changes.push('settings.iso');
    }
    if (settings.aperture && record.aperture_f_number) {
      delete settings.aperture;
      changes.push('settings.aperture');
    }
    if (settings.shutterSpeed && record.shutter_speed_seconds) {
      delete settings.shutterSpeed;
      changes.push('settings.shutterSpeed');
    }
    if (settings.focalLength && record.focal_length_mm) {
      delete settings.focalLength;
      changes.push('settings.focalLength');
    }
    
    // Clean up empty settings object
    if (Object.keys(settings).length === 0) {
      delete mediaMetadata.settings;
    }
  }
  
  // 3. Clean camera make/model from media_metadata if they exist in equipment table
  if (mediaMetadata.camera && (record.camera_make || record.camera_model)) {
    const camera = mediaMetadata.camera;
    if (camera.make && record.camera_make) {
      delete camera.make;
      changes.push('camera.make');
    }
    if (camera.model && record.camera_model) {
      delete camera.model;
      changes.push('camera.model');
    }
    
    // Clean up empty camera object
    if (Object.keys(camera).length === 0) {
      delete mediaMetadata.camera;
    }
  }
  
  // 4. Clean GPS EXIF fields if coordinates exist in media_locations table
  if (record.latitude || record.longitude) {
    const gpsExifKeys = Object.keys(cameraExif).filter(key => 
      key.includes('GPS') || 
      key.includes('Position') ||
      key.includes('Composite:GPS')
    );
    
    gpsExifKeys.forEach(key => {
      delete cameraExif[key];
      changes.push(`exif.${key}`);
    });
  }
  
  // 5. Clean camera settings EXIF fields if they exist in table columns
  const settingsToRemove = [];
  
  Object.keys(cameraExif).forEach(key => {
    // Remove ISO EXIF if we have iso_value in table
    if ((key.includes('ISO') || key === 'EXIF:PhotographicSensitivity') && record.iso_value) {
      settingsToRemove.push(key);
    }
    // Remove aperture EXIF if we have aperture_f_number in table
    else if ((key.includes('Aperture') || key.includes('FNumber')) && record.aperture_f_number) {
      settingsToRemove.push(key);
    }
    // Remove shutter speed EXIF if we have shutter_speed_seconds in table
    else if ((key.includes('Shutter') || key.includes('ExposureTime')) && record.shutter_speed_seconds) {
      settingsToRemove.push(key);
    }
    // Remove focal length EXIF if we have focal_length_mm in table
    else if (key.includes('FocalLength') && !key.includes('35') && record.focal_length_mm) {
      settingsToRemove.push(key);
    }
  });
  
  settingsToRemove.forEach(key => {
    delete cameraExif[key];
    changes.push(`exif.${key}`);
  });
  
  return changes;
}

async function cleanupJsonDuplications(dryRun = false) {
  try {
    console.log(`🔍 ${dryRun ? 'DRY RUN: Analyzing' : 'Cleaning'} JSON column duplications...`);
    
    // Get all records with JSON data and potential relational data
    const batchSize = 100;
    let offset = 0;
    let totalRecords = 0;
    let totalChanges = 0;
    let totalSizeSaved = 0;
    
    while (true) {
      const records = await db('media_files as mf')
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
        .limit(batchSize)
        .offset(offset);
      
      if (records.length === 0) break;
      
      console.log(`📦 Processing batch ${Math.floor(offset/batchSize) + 1} (${records.length} records)...`);
      
      for (const record of records) {
        try {
          // Parse JSON data
          let mediaMetadata = {};
          let cameraExif = {};
          
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
          
          const originalSize = JSON.stringify(mediaMetadata).length + JSON.stringify(cameraExif).length;
          
          // Clean the data
          const changes = cleanJsonData(mediaMetadata, cameraExif, record);
          
          if (changes.length > 0) {
            const newSize = JSON.stringify(mediaMetadata).length + JSON.stringify(cameraExif).length;
            const sizeSaved = originalSize - newSize;
            
            if (!dryRun) {
              // Update the database
              await db('media_files')
                .where('id', record.id)
                .update({
                  media_metadata: JSON.stringify(mediaMetadata),
                  camera_exif: JSON.stringify(cameraExif)
                });
            }
            
            console.log(`   ✂️  ${record.relative_path}: removed ${changes.length} duplications (-${sizeSaved} bytes)`);
            if (changes.length <= 10) {
              console.log(`      Removed: ${changes.join(', ')}`);
            } else {
              console.log(`      Removed: ${changes.slice(0, 10).join(', ')}, ... +${changes.length - 10} more`);
            }
            
            totalChanges += changes.length;
            totalSizeSaved += sizeSaved;
          }
          
          totalRecords++;
          
        } catch (error) {
          console.error(`❌ Error processing record ${record.id}: ${error.message}`);
        }
      }
      
      offset += batchSize;
      
      // Progress update every 500 records
      if (totalRecords % 500 === 0) {
        console.log(`🔄 Processed ${totalRecords} records, removed ${totalChanges} duplications, saved ${totalSizeSaved} bytes`);
      }
    }
    
    console.log('\n📊 CLEANUP SUMMARY:');
    console.log('==================');
    console.log(`Records processed: ${totalRecords}`);
    console.log(`Duplications removed: ${totalChanges}`);
    console.log(`Total size saved: ${totalSizeSaved} bytes (${(totalSizeSaved/1024).toFixed(1)} KB)`);
    console.log(`Average savings per record: ${Math.round(totalSizeSaved/totalRecords)} bytes`);
    
    if (dryRun) {
      console.log('\n💡 This was a dry run. No changes were made.');
      console.log('   Run without --dry-run to apply changes.');
    } else {
      console.log(`\n✅ ${dryRun ? 'Analysis' : 'Cleanup'} completed successfully!`);
    }
    
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
  const dryRun = process.argv.includes('--dry-run');
  cleanupJsonDuplications(dryRun);
}

module.exports = { cleanupJsonDuplications };