#!/usr/bin/env node

// Quick script to measure the impact of JSON cleanup

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

async function measureCleanupImpact() {
  try {
    console.log('📊 Measuring JSON cleanup impact...');
    
    // Sample 100 records to check cleanup patterns
    const sampleRecords = await db('media_files as mf')
      .leftJoin('media_locations as ml', 'mf.id', 'ml.file_id')
      .leftJoin('imaging_trains as it', 'mf.imaging_train_id', 'it.id')
      .leftJoin('equipment as eq', 'it.primary_camera_id', 'eq.id')
      .select(
        'mf.id',
        'mf.relative_path',
        'mf.media_metadata',
        'mf.camera_exif',
        'ml.latitude',
        'ml.longitude',
        'eq.make as camera_make',
        'eq.model as camera_model'
      )
      .whereNotNull('mf.media_metadata')
      .limit(100);
    
    let cleanedFiles = 0;
    let stillHasDuplicates = 0;
    let totalJsonSize = 0;
    let filesWithLocationData = 0;
    let filesWithLocationInJson = 0;
    let filesWithCameraData = 0;
    let filesWithCameraInJson = 0;
    
    for (const record of sampleRecords) {
      try {
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
        
        const jsonSize = JSON.stringify(mediaMetadata).length + JSON.stringify(cameraExif).length;
        totalJsonSize += jsonSize;
        
        // Check if file has location data in table
        if (record.latitude && record.longitude) {
          filesWithLocationData++;
          
          // Check if it still has location in JSON (shouldn't after cleanup)
          if (mediaMetadata.location?.primary?.latitude) {
            filesWithLocationInJson++;
          }
        }
        
        // Check if file has camera data in table
        if (record.camera_make && record.camera_model) {
          filesWithCameraData++;
          
          // Check if it still has camera in JSON (shouldn't after cleanup)
          if (mediaMetadata.camera?.make) {
            filesWithCameraInJson++;
          }
        }
        
        // Count files that appear to have been cleaned
        const hasLocationDuplicate = (record.latitude && mediaMetadata.location?.primary?.latitude);
        const hasCameraDuplicate = (record.camera_make && mediaMetadata.camera?.make);
        const hasSettingsDuplicate = (record.iso_value && mediaMetadata.settings?.iso);
        
        if (hasLocationDuplicate || hasCameraDuplicate || hasSettingsDuplicate) {
          stillHasDuplicates++;
        } else if (record.latitude || record.camera_make) {
          cleanedFiles++;
        }
        
      } catch (error) {
        console.log(`Error processing record ${record.id}: ${error.message}`);
      }
    }
    
    const averageJsonSize = Math.round(totalJsonSize / sampleRecords.length);
    const cleanupPercentage = Math.round((cleanedFiles / (cleanedFiles + stillHasDuplicates)) * 100);
    
    console.log('\n📊 CLEANUP IMPACT ANALYSIS:');
    console.log('===========================');
    console.log(`Sample size: ${sampleRecords.length} records`);
    console.log(`Average JSON size per record: ${averageJsonSize} bytes`);
    console.log(`Files with location data in tables: ${filesWithLocationData}`);
    console.log(`Files still with location in JSON: ${filesWithLocationInJson}`);
    console.log(`Files with camera data in tables: ${filesWithCameraData}`);
    console.log(`Files still with camera in JSON: ${filesWithCameraInJson}`);
    console.log(`Files that appear cleaned: ${cleanedFiles}`);
    console.log(`Files still with duplicates: ${stillHasDuplicates}`);
    console.log(`Estimated cleanup completion: ${cleanupPercentage}%`);
    
    // Show specific examples
    console.log('\n🔍 EXAMPLE ANALYSIS:');
    console.log('====================');
    
    const exampleRecord = sampleRecords.find(r => r.latitude && r.camera_make);
    if (exampleRecord) {
      let mediaMetadata = JSON.parse(exampleRecord.media_metadata);
      
      console.log(`File: ${exampleRecord.relative_path}`);
      console.log(`Table data: lat=${exampleRecord.latitude}, make=${exampleRecord.camera_make}`);
      console.log(`JSON has location: ${!!mediaMetadata.location?.primary?.latitude}`);
      console.log(`JSON has camera make: ${!!mediaMetadata.camera?.make}`);
      console.log(`JSON has settings.iso: ${!!mediaMetadata.settings?.iso}`);
      
      if (!mediaMetadata.location?.primary?.latitude && !mediaMetadata.camera?.make) {
        console.log('✅ This file has been successfully cleaned!');
      } else {
        console.log('⚠️  This file still has duplications');
      }
    }
    
  } catch (error) {
    console.error('💥 Fatal error:', error.message);
    process.exit(1);
  } finally {
    await db.destroy();
  }
}

// Command line usage
if (require.main === module) {
  measureCleanupImpact();
}

module.exports = { measureCleanupImpact };