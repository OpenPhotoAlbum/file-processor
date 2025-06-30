#!/usr/bin/env node

// Technical media file inspector - shows all database fields with technical detail
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

function formatTimestamp(timestamp) {
  if (!timestamp) return 'NULL';
  const utc = new Date(timestamp).toISOString();
  const local = new Date(timestamp).toLocaleString('en-US', {timeZone: 'America/New_York'});
  return `${utc} (${local} EDT/EST)`;
}

function formatJsonField(field) {
  if (!field) return 'NULL';
  if (typeof field === 'string') {
    try {
      const parsed = JSON.parse(field);
      const keys = Object.keys(parsed);
      return `JSON(${keys.length} keys): [${keys.slice(0, 5).join(', ')}${keys.length > 5 ? '...' : ''}]`;
    } catch (e) {
      return `INVALID_JSON(${field.length} chars)`;
    }
  }
  return `OBJECT(${Object.keys(field).length} keys)`;
}

function formatField(value, type = 'string') {
  if (value === null || value === undefined) return 'NULL';
  if (type === 'timestamp') return formatTimestamp(value);
  if (type === 'json') return formatJsonField(value);
  if (type === 'boolean') return value ? 'TRUE' : 'FALSE';
  if (type === 'number') return value.toString();
  return value.toString();
}

async function inspectMediaFileTechnical(identifier) {
  try {
    console.log('='.repeat(100));
    console.log('TECHNICAL MEDIA FILE INSPECTION');
    console.log('='.repeat(100));
    
    // Find the media file
    let mediaFile;
    if (!isNaN(identifier)) {
      mediaFile = await db('media_files').where('id', identifier).first();
    } else if (identifier.length === 32) {
      mediaFile = await db('media_files').where('file_hash', identifier).first();
    } else {
      mediaFile = await db('media_files').where('relative_path', 'like', `%${identifier}%`).first();
    }
    
    if (!mediaFile) {
      console.log(`ERROR: No media file found for identifier: ${identifier}`);
      return;
    }
    
    console.log(`TARGET: media_files.id=${mediaFile.id} (${mediaFile.relative_path})`);
    console.log('='.repeat(100));
    
    // 1. MEDIA_FILES TABLE - All fields
    console.log('TABLE: media_files');
    console.log('-'.repeat(100));
    console.log(`id                    : ${formatField(mediaFile.id, 'number')}`);
    console.log(`collection            : ${formatField(mediaFile.collection)}`);
    console.log(`relative_path         : ${formatField(mediaFile.relative_path)}`);
    console.log(`file_hash             : ${formatField(mediaFile.file_hash)}`);
    console.log(`file_size             : ${formatField(mediaFile.file_size, 'number')}`);
    console.log(`mime_type             : ${formatField(mediaFile.mime_type)}`);
    console.log(`media_type            : ${formatField(mediaFile.media_type)}`);
    console.log(`media_format          : ${formatField(mediaFile.media_format)}`);
    console.log(`is_live_photo         : ${formatField(mediaFile.is_live_photo, 'boolean')}`);
    console.log(`primary_timestamp     : ${formatField(mediaFile.primary_timestamp, 'timestamp')}`);
    console.log(`timestamp_source      : ${formatField(mediaFile.timestamp_source)}`);
    console.log(`timestamp_confidence  : ${formatField(mediaFile.timestamp_confidence)}`);
    console.log(`imaging_train_id      : ${formatField(mediaFile.imaging_train_id, 'number')}`);
    console.log(`iso_value             : ${formatField(mediaFile.iso_value, 'number')}`);
    console.log(`aperture_f_number     : ${formatField(mediaFile.aperture_f_number, 'number')}`);
    console.log(`shutter_speed_seconds : ${formatField(mediaFile.shutter_speed_seconds, 'number')}`);
    console.log(`frame_count           : ${formatField(mediaFile.frame_count, 'number')}`);
    console.log(`integration_time_seconds: ${formatField(mediaFile.integration_time_seconds, 'number')}`);
    console.log(`focal_length_mm       : ${formatField(mediaFile.focal_length_mm, 'number')}`);
    console.log(`dominant_color_hex    : ${formatField(mediaFile.dominant_color_hex)}`);
    console.log(`mean_color_hex        : ${formatField(mediaFile.mean_color_hex)}`);
    console.log(`salient_color_hex     : ${formatField(mediaFile.salient_color_hex)}`);
    console.log(`media_metadata        : ${formatField(mediaFile.media_metadata, 'json')}`);
    console.log(`camera_exif           : ${formatField(mediaFile.camera_exif, 'json')}`);
    console.log(`file_created_at       : ${formatField(mediaFile.file_created_at, 'timestamp')}`);
    console.log(`file_modified_at      : ${formatField(mediaFile.file_modified_at, 'timestamp')}`);
    console.log(`created_at            : ${formatField(mediaFile.created_at, 'timestamp')}`);
    console.log(`updated_at            : ${formatField(mediaFile.updated_at, 'timestamp')}`);
    console.log('');
    
    // 2. IMAGING_TRAINS TABLE (if linked)
    if (mediaFile.imaging_train_id) {
      const imagingTrain = await db('imaging_trains').where('id', mediaFile.imaging_train_id).first();
      if (imagingTrain) {
        console.log('TABLE: imaging_trains');
        console.log('-'.repeat(100));
        console.log(`id                   : ${formatField(imagingTrain.id, 'number')}`);
        console.log(`name                 : ${formatField(imagingTrain.name)}`);
        console.log(`description          : ${formatField(imagingTrain.description)}`);
        console.log(`primary_camera_id    : ${formatField(imagingTrain.primary_camera_id, 'number')}`);
        console.log(`lens_id              : ${formatField(imagingTrain.lens_id, 'number')}`);
        console.log(`telescope_id         : ${formatField(imagingTrain.telescope_id, 'number')}`);
        console.log(`mount_id             : ${formatField(imagingTrain.mount_id, 'number')}`);
        console.log(`train_metadata       : ${formatField(imagingTrain.train_metadata, 'json')}`);
        console.log(`is_active            : ${formatField(imagingTrain.is_active, 'boolean')}`);
        console.log('');
        
        // 2a. PRIMARY CAMERA (if linked)
        if (imagingTrain.primary_camera_id) {
          const camera = await db('equipment').where('id', imagingTrain.primary_camera_id).first();
          if (camera) {
            console.log('TABLE: equipment (primary_camera)');
            console.log('-'.repeat(100));
            console.log(`id                  : ${formatField(camera.id, 'number')}`);
            console.log(`equipment_type      : ${formatField(camera.equipment_type)}`);
            console.log(`make                : ${formatField(camera.make)}`);
            console.log(`model               : ${formatField(camera.model)}`);
            console.log(`equipment_metadata  : ${formatField(camera.equipment_metadata, 'json')}`);
            console.log(`is_active           : ${formatField(camera.is_active, 'boolean')}`);
            console.log('');
          }
        }
        
        // 2b. LENS (if linked)
        if (imagingTrain.lens_id) {
          const lens = await db('equipment').where('id', imagingTrain.lens_id).first();
          if (lens) {
            console.log('TABLE: equipment (lens)');
            console.log('-'.repeat(100));
            console.log(`id                  : ${formatField(lens.id, 'number')}`);
            console.log(`equipment_type      : ${formatField(lens.equipment_type)}`);
            console.log(`make                : ${formatField(lens.make)}`);
            console.log(`model               : ${formatField(lens.model)}`);
            console.log(`equipment_metadata  : ${formatField(lens.equipment_metadata, 'json')}`);
            console.log(`is_active           : ${formatField(lens.is_active, 'boolean')}`);
            console.log('');
          }
        }
      }
    }
    
    // 3. MEDIA_LOCATIONS TABLE
    const locations = await db('media_locations').where('file_id', mediaFile.id);
    if (locations.length > 0) {
      locations.forEach((loc, idx) => {
        console.log(`TABLE: media_locations (${idx + 1}/${locations.length})`);
        console.log('-'.repeat(100));
        console.log(`file_id             : ${formatField(loc.file_id, 'number')}`);
        console.log(`latitude            : ${formatField(loc.latitude, 'number')}`);
        console.log(`longitude           : ${formatField(loc.longitude, 'number')}`);
        console.log(`gps_source          : ${formatField(loc.gps_source)}`);
        console.log(`gps_confidence      : ${formatField(loc.gps_confidence)}`);
        console.log(`city_id             : ${formatField(loc.city_id, 'number')}`);
        console.log(`state_id            : ${formatField(loc.state_id, 'number')}`);
        console.log(`country_id          : ${formatField(loc.country_id, 'number')}`);
        console.log(`geolocation_data    : ${formatField(loc.geolocation_data, 'json')}`);
        console.log('');
      });
    }
    
    // 4. MEDIA_LANDMARKS TABLE
    const landmarkRels = await db('media_landmarks').where('file_id', mediaFile.id).orderBy('distance_meters', 'asc');
    if (landmarkRels.length > 0) {
      console.log(`TABLE: media_landmarks (${landmarkRels.length} records)`);
      console.log('-'.repeat(100));
      landmarkRels.forEach((rel, idx) => {
        console.log(`[${idx + 1}] id=${rel.id} file_id=${rel.file_id} landmark_id=${rel.landmark_id} distance_meters=${rel.distance_meters}`);
      });
      console.log('');
      
      // 4a. LANDMARKS TABLE (referenced)
      const landmarkIds = landmarkRels.map(r => r.landmark_id);
      const landmarks = await db('landmarks').whereIn('id', landmarkIds);
      landmarks.forEach((landmark, idx) => {
        console.log(`TABLE: landmarks (${idx + 1}/${landmarks.length}) [id=${landmark.id}]`);
        console.log('-'.repeat(100));
        console.log(`id                  : ${formatField(landmark.id, 'number')}`);
        console.log(`name                : ${formatField(landmark.name)}`);
        console.log(`category            : ${formatField(landmark.category)}`);
        console.log(`provider            : ${formatField(landmark.provider)}`);
        console.log(`provider_data       : ${formatField(landmark.provider_data, 'json')}`);
        console.log('');
      });
    }
    
    // 5. MEDIA_SOFTWARE TABLE
    const softwareRels = await db('media_software').where('file_id', mediaFile.id);
    if (softwareRels.length > 0) {
      console.log(`TABLE: media_software (${softwareRels.length} records)`);
      console.log('-'.repeat(100));
      softwareRels.forEach((rel, idx) => {
        console.log(`[${idx + 1}] id=${rel.id} file_id=${rel.file_id} software_id=${rel.software_id} usage_role=${rel.usage_role}`);
        console.log(`    usage_metadata: ${formatField(rel.usage_metadata, 'json')}`);
      });
      console.log('');
      
      // 5a. SOFTWARE TABLE (referenced)
      const softwareIds = softwareRels.map(r => r.software_id);
      const software = await db('software').whereIn('id', softwareIds);
      software.forEach((sw, idx) => {
        console.log(`TABLE: software (${idx + 1}/${software.length}) [id=${sw.id}]`);
        console.log('-'.repeat(100));
        console.log(`id                  : ${formatField(sw.id, 'number')}`);
        console.log(`name                : ${formatField(sw.name)}`);
        console.log(`software_type       : ${formatField(sw.software_type)}`);
        console.log(`version             : ${formatField(sw.version)}`);
        console.log(`software_metadata   : ${formatField(sw.software_metadata, 'json')}`);
        console.log('');
      });
    }
    
    // 6. PROCESSING_RUNS TABLE
    const processRuns = await db('processing_runs').where('file_id', mediaFile.id).orderBy('extracted_at', 'desc');
    if (processRuns.length > 0) {
      processRuns.forEach((run, idx) => {
        console.log(`TABLE: processing_runs (${idx + 1}/${processRuns.length}) [id=${run.id}]`);
        console.log('-'.repeat(100));
        console.log(`id                       : ${formatField(run.id, 'number')}`);
        console.log(`file_id                  : ${formatField(run.file_id, 'number')}`);
        console.log(`processor                : ${formatField(run.processor)}`);
        console.log(`success                  : ${formatField(run.success, 'boolean')}`);
        console.log(`extracted_at             : ${formatField(run.extracted_at, 'timestamp')}`);
        console.log(`processing_version       : ${formatField(run.processing_version)}`);
        console.log(`providers_enabled        : ${formatField(run.providers_enabled)}`);
        console.log(`providers_with_results   : ${formatField(run.providers_with_results)}`);
        console.log(`provider_failures        : ${formatField(run.provider_failures)}`);
        console.log(`processing_duration_ms   : ${formatField(run.processing_duration_ms, 'number')}`);
        console.log(`notes                    : ${formatField(run.notes)}`);
        console.log('');
      });
    }
    
    // 7. GEO REFERENCE TABLES (if location data exists)
    if (locations.length > 0) {
      const cityIds = locations.map(l => l.city_id).filter(id => id);
      const stateIds = locations.map(l => l.state_id).filter(id => id);
      const countryIds = locations.map(l => l.country_id).filter(id => id);
      
      if (cityIds.length > 0) {
        const cities = await db('geo_cities').whereIn('id', cityIds);
        cities.forEach((city, idx) => {
          console.log(`TABLE: geo_cities (${idx + 1}/${cities.length}) [id=${city.id}]`);
          console.log('-'.repeat(100));
          console.log(`id                  : ${formatField(city.id, 'number')}`);
          console.log(`postal_code         : ${formatField(city.postal_code)}`);
          console.log(`latitude            : ${formatField(city.latitude, 'number')}`);
          console.log(`longitude           : ${formatField(city.longitude, 'number')}`);
          console.log(`city                : ${formatField(city.city)}`);
          console.log(`state_code          : ${formatField(city.state_code)}`);
          console.log(`county_name         : ${formatField(city.county_name)}`);
          console.log(`county_names_all    : ${formatField(city.county_names_all)}`);
          console.log(`timezone            : ${formatField(city.timezone)}`);
          console.log(`created_at          : ${formatField(city.created_at, 'timestamp')}`);
          console.log(`updated_at          : ${formatField(city.updated_at, 'timestamp')}`);
          console.log('');
        });
      }
      
      if (stateIds.length > 0) {
        const states = await db('geo_states').whereIn('id', stateIds);
        states.forEach((state, idx) => {
          console.log(`TABLE: geo_states (${idx + 1}/${states.length}) [id=${state.id}]`);
          console.log('-'.repeat(100));
          console.log(`id                  : ${formatField(state.id, 'number')}`);
          console.log(`code                : ${formatField(state.code)}`);
          console.log(`name                : ${formatField(state.name)}`);
          console.log(`country_code        : ${formatField(state.country_code)}`);
          console.log(`created_at          : ${formatField(state.created_at, 'timestamp')}`);
          console.log(`updated_at          : ${formatField(state.updated_at, 'timestamp')}`);
          console.log('');
        });
      }
      
      if (countryIds.length > 0) {
        const countries = await db('geo_countries').whereIn('id', countryIds);
        countries.forEach((country, idx) => {
          console.log(`TABLE: geo_countries (${idx + 1}/${countries.length}) [id=${country.id}]`);
          console.log('-'.repeat(100));
          console.log(`id                  : ${formatField(country.id, 'number')}`);
          console.log(`country_code        : ${formatField(country.country_code)}`);
          console.log(`iso3                : ${formatField(country.iso3)}`);
          console.log(`country_name        : ${formatField(country.country_name)}`);
          console.log(`phone_code          : ${formatField(country.phone_code)}`);
          console.log(`created_at          : ${formatField(country.created_at, 'timestamp')}`);
          console.log(`updated_at          : ${formatField(country.updated_at, 'timestamp')}`);
          console.log('');
        });
      }
    }
    
    console.log('='.repeat(100));
    console.log('INSPECTION COMPLETE');
    console.log('='.repeat(100));
    
  } catch (error) {
    console.error('ERROR:', error.message);
    console.error(error.stack);
  } finally {
    await db.destroy();
  }
}

// Command line usage
const identifier = process.argv[2];
if (!identifier) {
  console.log('Usage: node inspect-media-file-technical.cjs <file_id|relative_path|hash>');
  console.log('');
  console.log('Examples:');
  console.log('  node inspect-media-file-technical.cjs 51782');
  console.log('  node inspect-media-file-technical.cjs "IMG_6645.jpg"');
  console.log('  node inspect-media-file-technical.cjs "6f8c330c41efd3306ff9de744667c92f"');
  process.exit(1);
}

inspectMediaFileTechnical(identifier);