#!/usr/bin/env node

// Unified Media Inspector - Combines all inspection functionality
// 
// Usage:
//   ./media-inspector.cjs [MODE] [FILE_PATH]
//
// Modes:
//   basic      - Basic media file information
//   technical  - Technical metadata inspection
//   complete   - Complete inspection with all related data
//   help       - Show this help
//
// Examples:
//   ./media-inspector.cjs basic /photos/archive/2023/07/photo.jpg
//   ./media-inspector.cjs complete /photos/archive/2023/07/photo.jpg

const knex = require('knex');
const path = require('path');

// Database connection
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

function showHelp() {
  console.log('Unified Media Inspector');
  console.log('');
  console.log('Usage: ./media-inspector.cjs [MODE] [FILE_PATH]');
  console.log('');
  console.log('Modes:');
  console.log('  basic      - Basic media file information');
  console.log('  technical  - Technical metadata inspection');
  console.log('  complete   - Complete inspection with all related data');
  console.log('  help       - Show this help');
  console.log('');
  console.log('Examples:');
  console.log('  ./media-inspector.cjs basic /photos/archive/2023/07/photo.jpg');
  console.log('  ./media-inspector.cjs complete /photos/archive/2023/07/photo.jpg');
  process.exit(0);
}

function analyzeResults(data) {
  const analysis = {
    null_fields: {},
    empty_associations: {},
    data_completeness: {},
    landmark_summary: {},
    enrichment_status: {}
  };

  // Analyze null fields
  for (const [key, value] of Object.entries(data)) {
    if (value === null || value === undefined) {
      analysis.null_fields[key] = 'NULL';
    } else if (Array.isArray(value) && value.length === 0) {
      analysis.empty_associations[key] = 'EMPTY_ARRAY';
    } else if (typeof value === 'object' && Object.keys(value).length === 0) {
      analysis.empty_associations[key] = 'EMPTY_OBJECT';
    }
  }

  // Analyze data completeness
  analysis.data_completeness = {
    has_location: !!data.location,
    has_landmarks: data.landmarks && data.landmarks.length > 0,
    has_equipment: !!data.equipment,
    has_software: !!data.software,
    landmark_count: data.landmarks ? data.landmarks.length : 0
  };

  // Landmark summary
  if (data.landmarks && data.landmarks.length > 0) {
    analysis.landmark_summary = {
      total_landmarks: data.landmarks.length,
      by_provider: {},
      by_type: {}
    };

    data.landmarks.forEach(landmark => {
      // Count by provider
      const provider = landmark.provider || 'unknown';
      analysis.landmark_summary.by_provider[provider] = 
        (analysis.landmark_summary.by_provider[provider] || 0) + 1;

      // Count by type (from provider_data)
      let provider_data = {};
      if (landmark.provider_data) {
        try {
          provider_data = typeof landmark.provider_data === 'string' 
            ? JSON.parse(landmark.provider_data) 
            : landmark.provider_data;
        } catch (e) {
          console.warn('Failed to parse provider_data:', e.message);
        }
      }
      const type = provider_data.feature_class || provider_data.type || 'unknown';
      analysis.landmark_summary.by_type[type] = 
        (analysis.landmark_summary.by_type[type] || 0) + 1;
    });
  }

  // Enrichment status
  if (data.location && data.location.geolocation_data) {
    let geo_data = {};
    try {
      geo_data = typeof data.location.geolocation_data === 'string' 
        ? JSON.parse(data.location.geolocation_data)
        : data.location.geolocation_data;
    } catch (e) {
      console.warn('Failed to parse geolocation_data:', e.message);
    }
    analysis.enrichment_status = {
      has_reverse_geocoding: !!geo_data.city,
      has_municipal_boundaries: !!geo_data.municipal_boundary,
      coordinate_precision: data.location.latitude ? 'GPS_AVAILABLE' : 'NO_GPS'
    };
  }

  return analysis;
}

async function basicInspection(filePath) {
  console.log(`🔍 Basic Inspection: ${path.basename(filePath)}`);
  console.log('='.repeat(50));

  try {
    // Find the media file
    const mediaFile = await db('media_files')
      .where('relative_path', 'like', `%${path.basename(filePath)}`)
      .first();

    if (!mediaFile) {
      console.log('❌ File not found in database');
      return;
    }

    console.log('📄 Basic Information:');
    console.log(`  ID: ${mediaFile.id}`);
    console.log(`  Path: ${mediaFile.relative_path}`);
    console.log(`  Hash: ${mediaFile.file_hash}`);
    console.log(`  Size: ${(mediaFile.file_size / 1024 / 1024).toFixed(2)} MB`);
    console.log(`  MIME Type: ${mediaFile.mime_type}`);
    console.log(`  Created: ${mediaFile.created_at}`);
    console.log(`  Timestamp: ${mediaFile.timestamp || 'N/A'}`);

    // Check for associations
    const hasLocation = await db('media_locations').where('file_id', mediaFile.id).first();
    const landmarkCount = await db('media_landmarks')
      .where('file_id', mediaFile.id)
      .count('* as count')
      .first();

    console.log('\n🔗 Associations:');
    console.log(`  Location Data: ${hasLocation ? '✅ Present' : '❌ Missing'}`);
    console.log(`  Landmarks: ${landmarkCount.count} found`);

  } catch (error) {
    console.error('❌ Error during basic inspection:', error.message);
  }
}

async function technicalInspection(filePath) {
  console.log(`🔧 Technical Inspection: ${path.basename(filePath)}`);
  console.log('='.repeat(50));

  try {
    const mediaFile = await db('media_files')
      .where('relative_path', 'like', `%${path.basename(filePath)}`)
      .first();

    if (!mediaFile) {
      console.log('❌ File not found in database');
      return;
    }

    console.log('🔬 Technical Metadata:');
    
    // Parse media metadata
    if (mediaFile.media_metadata) {
      let metadata = {};
      try {
        metadata = typeof mediaFile.media_metadata === 'string' 
          ? JSON.parse(mediaFile.media_metadata)
          : mediaFile.media_metadata;
      } catch (e) {
        console.warn('Failed to parse media_metadata:', e.message);
        return;
      }
      console.log('  Media Properties:');
      if (metadata.media) {
        console.log(`    Type: ${metadata.media.type || 'N/A'}`);
        console.log(`    Format: ${metadata.media.format || 'N/A'}`);
        if (metadata.media.dimensions) {
          console.log(`    Dimensions: ${metadata.media.dimensions.width}x${metadata.media.dimensions.height}`);
          console.log(`    Megapixels: ${metadata.media.dimensions.megapixels || 'N/A'}`);
        }
        console.log(`    Dominant Color: ${metadata.media.dominantColor || 'N/A'}`);
      }

      if (metadata.camera) {
        console.log('  Camera Settings:');
        console.log(`    ISO: ${metadata.camera.iso || 'N/A'}`);
        console.log(`    Aperture: ${metadata.camera.aperture || 'N/A'}`);
        console.log(`    Shutter Speed: ${metadata.camera.shutterSpeed || 'N/A'}`);
        console.log(`    Focal Length: ${metadata.camera.focalLength || 'N/A'}`);
      }

      if (metadata.technical) {
        console.log('  Technical Details:');
        console.log(`    File Type: ${metadata.technical.fileType || 'N/A'}`);
        console.log(`    Color Space: ${metadata.technical.colorSpace || 'N/A'}`);
        console.log(`    Compression: ${metadata.technical.compression || 'N/A'}`);
      }
    }

    // Equipment information
    if (mediaFile.equipment_id) {
      const equipment = await db('equipment').where('id', mediaFile.equipment_id).first();
      if (equipment) {
        console.log('\n📷 Equipment:');
        console.log(`  Make: ${equipment.make}`);
        console.log(`  Model: ${equipment.model}`);
        console.log(`  Lens: ${equipment.lens || 'N/A'}`);
      }
    }

    // Software information
    if (mediaFile.software_id) {
      const software = await db('software').where('id', mediaFile.software_id).first();
      if (software) {
        console.log('\n💻 Software:');
        console.log(`  Name: ${software.software_name}`);
        console.log(`  Version: ${software.software_version || 'N/A'}`);
      }
    }

  } catch (error) {
    console.error('❌ Error during technical inspection:', error.message);
  }
}

async function completeInspection(filePath) {
  console.log(`📊 Complete Inspection: ${path.basename(filePath)}`);
  console.log('='.repeat(60));

  try {
    // Get comprehensive data
    const mediaFile = await db('media_files')
      .where('relative_path', 'like', `%${path.basename(filePath)}`)
      .first();

    if (!mediaFile) {
      console.log('❌ File not found in database');
      return;
    }

    // Get all related data
    const location = await db('media_locations')
      .where('file_id', mediaFile.id)
      .first();

    const landmarks = await db('media_landmarks')
      .where('file_id', mediaFile.id)
      .select('media_landmarks.*');

    const equipment = mediaFile.equipment_id ? 
      await db('equipment').where('id', mediaFile.equipment_id).first() : null;

    const software = mediaFile.software_id ?
      await db('software').where('id', mediaFile.software_id).first() : null;

    const processing_runs = await db('processing_runs')
      .where('file_id', mediaFile.id)
      .orderBy('extracted_at', 'desc');

    // Compile complete data
    const completeData = {
      media_file: mediaFile,
      location: location,
      landmarks: landmarks,
      equipment: equipment,
      software: software,
      processing_runs: processing_runs
    };

    // Perform analysis
    const analysis = analyzeResults(completeData);

    // Display results
    console.log('📋 Complete Data Structure:');
    console.log(JSON.stringify(completeData, null, 2));

    console.log('\n🔍 Analysis Results:');
    console.log(JSON.stringify(analysis, null, 2));

    console.log('\n📈 Summary:');
    console.log(`  Data Completeness: ${analysis.data_completeness.landmark_count} landmarks, ` +
               `${analysis.data_completeness.has_location ? 'location' : 'no location'}, ` +
               `${analysis.data_completeness.has_equipment ? 'equipment' : 'no equipment'}`);
    
    if (analysis.landmark_summary.total_landmarks > 0) {
      console.log(`  Landmark Providers: ${Object.keys(analysis.landmark_summary.by_provider).join(', ')}`);
    }

    console.log(`  Processing Runs: ${processing_runs.length}`);

  } catch (error) {
    console.error('❌ Error during complete inspection:', error.message);
  }
}

async function main() {
  const args = process.argv.slice(2);
  
  if (args.length === 0 || args[0] === 'help') {
    showHelp();
  }

  const mode = args[0];
  const filePath = args[1];

  if (!filePath) {
    console.error('❌ Error: File path required');
    console.log('Use "help" for usage information');
    process.exit(1);
  }

  try {
    switch (mode) {
      case 'basic':
        await basicInspection(filePath);
        break;
      case 'technical':
        await technicalInspection(filePath);
        break;
      case 'complete':
        await completeInspection(filePath);
        break;
      default:
        console.error(`❌ Error: Unknown mode '${mode}'`);
        console.log('Use "help" for usage information');
        process.exit(1);
    }
  } catch (error) {
    console.error('❌ Fatal error:', error.message);
    process.exit(1);
  } finally {
    await db.destroy();
  }
}

// Handle unhandled promise rejections
process.on('unhandledRejection', (reason, promise) => {
  console.error('Unhandled Rejection at:', promise, 'reason:', reason);
  process.exit(1);
});

// Run the main function
main().catch(console.error);