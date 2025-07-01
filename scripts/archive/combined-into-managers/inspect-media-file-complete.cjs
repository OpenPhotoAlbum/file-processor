#!/usr/bin/env node

// Complete media file inspector - returns all related data in structured JSON format
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

function analyzeResults(data) {
  const analysis = {
    null_fields: {},
    empty_associations: {},
    populated_associations: {},
    data_completeness: {
      core_data: true,
      location_data: false,
      landmark_data: false,
      equipment_data: false,
      software_data: false,
      processing_data: false
    },
    issues: []
  };

  // Check for null fields in core media_files record
  if (data.media_files) {
    const nullFields = [];
    Object.entries(data.media_files).forEach(([key, value]) => {
      if (value === null || value === undefined) {
        nullFields.push(key);
      }
    });
    if (nullFields.length > 0) {
      analysis.null_fields.media_files = nullFields;
    }
  }

  // Check for null fields in imaging_trains
  if (data.imaging_trains) {
    const nullFields = [];
    Object.entries(data.imaging_trains).forEach(([key, value]) => {
      if (value === null || value === undefined) {
        nullFields.push(key);
      }
    });
    if (nullFields.length > 0) {
      analysis.null_fields.imaging_trains = nullFields;
    }
    analysis.data_completeness.equipment_data = true;
  } else if (data.media_files && data.media_files.imaging_train_id) {
    analysis.issues.push("imaging_train_id is set but imaging_trains record not found");
  }

  // Check equipment associations
  if (data.equipment && data.equipment.length > 0) {
    analysis.populated_associations.equipment = `${data.equipment.length} records`;
    const roles = data.equipment.map(e => e.role);
    analysis.populated_associations.equipment_roles = roles;
  } else {
    analysis.empty_associations.equipment = "No equipment records found";
  }

  // Check location associations
  if (data.media_locations && data.media_locations.length > 0) {
    analysis.populated_associations.media_locations = `${data.media_locations.length} records`;
    analysis.data_completeness.location_data = true;
    
    // Check for missing foreign key references
    const missingGeoRefs = [];
    data.media_locations.forEach((loc, idx) => {
      if (!loc.city_id) missingGeoRefs.push(`location[${idx}].city_id`);
      if (!loc.state_id) missingGeoRefs.push(`location[${idx}].state_id`);
      if (!loc.country_id) missingGeoRefs.push(`location[${idx}].country_id`);
    });
    if (missingGeoRefs.length > 0) {
      analysis.null_fields.media_locations_foreign_keys = missingGeoRefs;
      analysis.issues.push("Location coordinates exist but geographic foreign keys are NULL");
    }
  } else {
    analysis.empty_associations.media_locations = "No location records found";
  }

  // Check geo reference data
  if (data.geo_cities && data.geo_cities.length > 0) {
    analysis.populated_associations.geo_cities = `${data.geo_cities.length} records`;
  } else {
    analysis.empty_associations.geo_cities = "No city references found";
  }

  // Check landmark associations
  if (data.media_landmarks && data.media_landmarks.length > 0) {
    analysis.populated_associations.media_landmarks = `${data.media_landmarks.length} records`;
    if (data.landmarks && data.landmarks.length > 0) {
      analysis.populated_associations.landmarks = `${data.landmarks.length} records`;
      analysis.data_completeness.landmark_data = true;
      
      // Check for landmarks with "Unknown" names
      const unknownLandmarks = data.landmarks.filter(l => l.name === 'Unknown').length;
      if (unknownLandmarks > 0) {
        analysis.issues.push(`${unknownLandmarks} landmarks have name="Unknown" (check provider_data for actual names)`);
      }
    } else {
      analysis.empty_associations.landmarks = "Landmark relationships exist but landmark records not found";
    }
  } else {
    analysis.empty_associations.media_landmarks = "No landmark associations found";
    analysis.empty_associations.landmarks = "No landmark records found";
  }

  // Check software associations
  if (data.media_software && data.media_software.length > 0) {
    analysis.populated_associations.media_software = `${data.media_software.length} records`;
    if (data.software && data.software.length > 0) {
      analysis.populated_associations.software = `${data.software.length} records`;
      analysis.data_completeness.software_data = true;
      
      // Check for null software versions
      const nullVersions = data.software.filter(s => !s.version).length;
      if (nullVersions > 0) {
        analysis.issues.push(`${nullVersions} software records have NULL version`);
      }
    } else {
      analysis.empty_associations.software = "Software relationships exist but software records not found";
    }
  } else {
    analysis.empty_associations.media_software = "No software associations found";
    analysis.empty_associations.software = "No software records found";
  }

  // Check processing runs
  if (data.processing_runs && data.processing_runs.length > 0) {
    analysis.populated_associations.processing_runs = `${data.processing_runs.length} records`;
    analysis.data_completeness.processing_data = true;
    
    // Check for null provider fields in processing runs
    const nullProviderFields = [];
    data.processing_runs.forEach((run, idx) => {
      if (!run.providers_enabled) nullProviderFields.push(`run[${idx}].providers_enabled`);
      if (!run.providers_with_results) nullProviderFields.push(`run[${idx}].providers_with_results`);
      if (!run.provider_failures) nullProviderFields.push(`run[${idx}].provider_failures`);
    });
    if (nullProviderFields.length > 0) {
      analysis.null_fields.processing_runs_providers = nullProviderFields;
      analysis.issues.push("Processing runs missing provider tracking data");
    }
  } else {
    analysis.empty_associations.processing_runs = "No processing history found";
  }

  // Calculate overall completeness score
  const completenessCount = Object.values(analysis.data_completeness).filter(Boolean).length;
  const totalAspects = Object.keys(analysis.data_completeness).length;
  analysis.completeness_score = `${completenessCount}/${totalAspects} (${Math.round(completenessCount/totalAspects*100)}%)`;

  return analysis;
}

async function getCompleteMediaFileData(identifier) {
  try {
    // Find the target media file
    let mediaFile;
    if (!isNaN(identifier)) {
      mediaFile = await db('media_files').where('id', identifier).first();
    } else if (identifier.length === 32) {
      mediaFile = await db('media_files').where('file_hash', identifier).first();
    } else {
      mediaFile = await db('media_files').where('relative_path', 'like', `%${identifier}%`).first();
    }
    
    if (!mediaFile) {
      return { error: `No media file found for identifier: ${identifier}` };
    }

    const result = {
      target: {
        table: 'media_files',
        id: mediaFile.id,
        identifier: mediaFile.relative_path
      }
    };

    // 1. MEDIA_FILES (core record)
    result.media_files = mediaFile;

    // 2. IMAGING_TRAINS (if linked)
    result.imaging_trains = null;
    if (mediaFile.imaging_train_id) {
      result.imaging_trains = await db('imaging_trains')
        .where('id', mediaFile.imaging_train_id)
        .first();
    }

    // 3. EQUIPMENT (all related equipment records)
    result.equipment = [];
    if (result.imaging_trains) {
      // Primary camera
      if (result.imaging_trains.primary_camera_id) {
        const camera = await db('equipment')
          .where('id', result.imaging_trains.primary_camera_id)
          .first();
        if (camera) {
          result.equipment.push({
            role: 'primary_camera',
            ...camera
          });
        }
      }
      
      // Lens
      if (result.imaging_trains.lens_id) {
        const lens = await db('equipment')
          .where('id', result.imaging_trains.lens_id)
          .first();
        if (lens) {
          result.equipment.push({
            role: 'lens',
            ...lens
          });
        }
      }
      
      // Telescope
      if (result.imaging_trains.telescope_id) {
        const telescope = await db('equipment')
          .where('id', result.imaging_trains.telescope_id)
          .first();
        if (telescope) {
          result.equipment.push({
            role: 'telescope',
            ...telescope
          });
        }
      }
      
      // Mount
      if (result.imaging_trains.mount_id) {
        const mount = await db('equipment')
          .where('id', result.imaging_trains.mount_id)
          .first();
        if (mount) {
          result.equipment.push({
            role: 'mount',
            ...mount
          });
        }
      }
    }

    // 4. MEDIA_LOCATIONS (all location records for this file)
    result.media_locations = await db('media_locations')
      .where('file_id', mediaFile.id);

    // 5. GEO_CITIES (referenced by media_locations)
    result.geo_cities = [];
    const cityIds = result.media_locations
      .map(loc => loc.city_id)
      .filter(id => id !== null);
    if (cityIds.length > 0) {
      result.geo_cities = await db('geo_cities')
        .whereIn('id', cityIds);
    }

    // 6. GEO_STATES (referenced by media_locations)
    result.geo_states = [];
    const stateIds = result.media_locations
      .map(loc => loc.state_id)
      .filter(id => id !== null);
    if (stateIds.length > 0) {
      result.geo_states = await db('geo_states')
        .whereIn('id', stateIds);
    }

    // 7. GEO_COUNTRIES (referenced by media_locations)
    result.geo_countries = [];
    const countryIds = result.media_locations
      .map(loc => loc.country_id)
      .filter(id => id !== null);
    if (countryIds.length > 0) {
      result.geo_countries = await db('geo_countries')
        .whereIn('id', countryIds);
    }

    // 8. MEDIA_LANDMARKS (relationship records)
    result.media_landmarks = await db('media_landmarks')
      .where('file_id', mediaFile.id)
      .orderBy('distance_meters', 'asc');

    // 9. LANDMARKS (referenced by media_landmarks)
    result.landmarks = [];
    const landmarkIds = result.media_landmarks
      .map(rel => rel.landmark_id)
      .filter(id => id !== null);
    if (landmarkIds.length > 0) {
      result.landmarks = await db('landmarks')
        .whereIn('id', landmarkIds);
    }

    // 10. MEDIA_SOFTWARE (relationship records)
    result.media_software = await db('media_software')
      .where('file_id', mediaFile.id);

    // 11. SOFTWARE (referenced by media_software)
    result.software = [];
    const softwareIds = result.media_software
      .map(rel => rel.software_id)
      .filter(id => id !== null);
    if (softwareIds.length > 0) {
      result.software = await db('software')
        .whereIn('id', softwareIds);
    }

    // 12. PROCESSING_RUNS (all processing history for this file)
    result.processing_runs = await db('processing_runs')
      .where('file_id', mediaFile.id)
      .orderBy('extracted_at', 'desc');

    // 13. Check for any other tables that might reference media_files
    // Get all table names first
    const allTablesResult = await db.raw('SHOW TABLES');
    const allTables = allTablesResult[0].map(row => Object.values(row)[0]);
    
    // Check for tables we might have missed that could reference file_id
    const knownTables = new Set([
      'media_files', 'imaging_trains', 'equipment', 'media_locations', 
      'geo_cities', 'geo_states', 'geo_countries', 'media_landmarks', 
      'landmarks', 'media_software', 'software', 'processing_runs'
    ]);
    
    const unknownTables = allTables.filter(table => !knownTables.has(table));
    result.unknown_tables_checked = [];
    
    for (const tableName of unknownTables) {
      try {
        // Check if table has file_id column
        const columns = await db.raw(`DESCRIBE ${tableName}`);
        const hasFileId = columns[0].some(col => col.Field === 'file_id');
        
        if (hasFileId) {
          const records = await db(tableName).where('file_id', mediaFile.id);
          if (records.length > 0) {
            result[tableName] = records;
            result.unknown_tables_checked.push({
              table: tableName,
              records_found: records.length
            });
          }
        }
      } catch (e) {
        // Skip tables we can't access or that don't exist
      }
    }

    // 14. Add metadata about the inspection
    result.inspection_metadata = {
      timestamp: new Date().toISOString(),
      tables_inspected: Object.keys(result).filter(key => 
        !['target', 'inspection_metadata', 'unknown_tables_checked', '_results'].includes(key)
      ),
      total_related_records: Object.keys(result)
        .filter(key => Array.isArray(result[key]))
        .reduce((sum, key) => sum + result[key].length, 0),
      database_connection: {
        host: process.env.DB_HOST || 'localhost',
        port: parseInt(process.env.DB_PORT || '3309'),
        database: process.env.DB_NAME || 'kin'
      }
    };

    // 15. Add results analysis
    result._results = analyzeResults(result);

    return result;

  } catch (error) {
    return {
      error: error.message,
      stack: error.stack,
      timestamp: new Date().toISOString()
    };
  }
}

function createPreviewData(data) {
  const preview = {};
  
  // Helper to preview an object
  function previewObject(obj, maxFields = 3) {
    if (!obj || typeof obj !== 'object') return obj;
    
    const keys = Object.keys(obj);
    if (keys.length <= maxFields) {
      return obj;
    }
    
    const result = {};
    keys.slice(0, maxFields).forEach(key => {
      result[key] = obj[key];
    });
    result['...'] = `${keys.length - maxFields} more fields`;
    return result;
  }
  
  // Helper to preview an array
  function previewArray(arr, maxItems = 2) {
    if (!Array.isArray(arr)) return arr;
    if (arr.length === 0) return arr;
    if (arr.length <= maxItems) {
      return arr.map(item => typeof item === 'object' ? previewObject(item) : item);
    }
    
    const preview = arr.slice(0, maxItems).map(item => 
      typeof item === 'object' ? previewObject(item) : item
    );
    preview.push(`... ${arr.length - maxItems} more items`);
    return preview;
  }
  
  // Preview each top-level key
  Object.keys(data).forEach(key => {
    if (['target', 'inspection_metadata', 'unknown_tables_checked'].includes(key)) {
      // Keep metadata as-is
      preview[key] = data[key];
    } else if (Array.isArray(data[key])) {
      if (data[key].length === 0) {
        preview[key] = [];
      } else {
        preview[key] = previewArray(data[key]);
      }
    } else if (data[key] && typeof data[key] === 'object') {
      // Single object (like media_files, imaging_trains)
      preview[key] = previewObject(data[key]);
    } else {
      // Null or primitive values
      preview[key] = data[key];
    }
  });
  
  return preview;
}

async function main() {
  const identifier = process.argv[2];
  const outputFormat = process.argv[3] || 'json'; // json, pretty, summary, or preview
  
  if (!identifier) {
    console.log('Usage: node inspect-media-file-complete.cjs <identifier> [format]');
    console.log('');
    console.log('identifier: file_id | relative_path | hash');
    console.log('format:     json (default) | pretty | summary | preview');
    console.log('');
    console.log('Examples:');
    console.log('  node inspect-media-file-complete.cjs 51782');
    console.log('  node inspect-media-file-complete.cjs "IMG_6645.jpg" pretty');
    console.log('  node inspect-media-file-complete.cjs "6f8c330c..." summary');
    console.log('  node inspect-media-file-complete.cjs 51782 preview');
    process.exit(1);
  }

  try {
    const data = await getCompleteMediaFileData(identifier);
    
    if (data.error) {
      console.error('ERROR:', data.error);
      process.exit(1);
    }

    switch (outputFormat) {
      case 'pretty':
        console.log(JSON.stringify(data, null, 2));
        break;
      
      case 'preview':
        const previewData = createPreviewData(data);
        console.log(JSON.stringify(previewData, null, 2));
        break;
      
      case 'summary':
        console.log(`Target: ${data.target.table}.id=${data.target.id} (${data.target.identifier})`);
        console.log('Tables with data:');
        data.inspection_metadata.tables_inspected.forEach(table => {
          const value = data[table];
          if (Array.isArray(value)) {
            console.log(`  ${table}: ${value.length} records`);
          } else if (value) {
            console.log(`  ${table}: 1 record`);
          } else {
            console.log(`  ${table}: null`);
          }
        });
        console.log(`Total related records: ${data.inspection_metadata.total_related_records}`);
        break;
      
      case 'json':
      default:
        console.log(JSON.stringify(data));
        break;
    }

  } catch (error) {
    console.error('FATAL ERROR:', error.message);
    process.exit(1);
  } finally {
    await db.destroy();
  }
}

// Run if called directly
if (require.main === module) {
  main();
} else {
  // Export for use as module
  module.exports = { getCompleteMediaFileData };
}