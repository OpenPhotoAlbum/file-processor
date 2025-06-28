import { Knex } from 'knex';

export async function up(knex: Knex): Promise<void> {
  // Create equipment table first (referenced by imaging_trains)
  await knex.schema.createTable('equipment', (table) => {
    table.bigIncrements('id').primary();
    table.enum('equipment_type', ['camera', 'lens', 'telescope', 'mount', 'filter', 'guider']).notNullable();
    table.string('make', 64).notNullable();
    table.string('model', 128).notNullable();
    table.json('equipment_metadata');
    table.boolean('is_active').defaultTo(true);
    
    // Indexes
    table.unique(['equipment_type', 'make', 'model']);
    table.index('equipment_type');
    table.index(['make', 'model']);
  });

  // Create imaging_trains table
  await knex.schema.createTable('imaging_trains', (table) => {
    table.bigIncrements('id').primary();
    table.string('name', 128).notNullable();
    table.text('description');
    table.bigInteger('primary_camera_id').unsigned().notNullable();
    table.bigInteger('lens_id').unsigned();
    table.bigInteger('telescope_id').unsigned();
    table.bigInteger('mount_id').unsigned();
    table.json('train_metadata');
    table.boolean('is_active').defaultTo(true);
    
    // Foreign keys
    table.foreign('primary_camera_id').references('id').inTable('equipment');
    table.foreign('lens_id').references('id').inTable('equipment');
    table.foreign('telescope_id').references('id').inTable('equipment');
    table.foreign('mount_id').references('id').inTable('equipment');
    
    // Indexes
    table.index('primary_camera_id');
    table.index('telescope_id');
  });

  // Create media_files table
  await knex.schema.createTable('media_files', (table) => {
    table.bigIncrements('id').primary();
    
    // File organization
    table.enum('collection', ['archive', 'staging', 'processed']).notNullable();
    table.string('relative_path', 512).notNullable();
    table.string('file_hash', 64).unique().notNullable();
    table.bigInteger('file_size').notNullable();
    table.string('mime_type', 128).notNullable();
    
    // Media classification
    table.enum('media_type', ['image', 'video']).notNullable();
    table.string('media_format', 16).notNullable();
    table.boolean('is_live_photo').defaultTo(false);
    
    // Timestamps
    table.timestamp('primary_timestamp').notNullable();
    table.enum('timestamp_source', ['exif', 'filename', 'filesystem']).notNullable();
    table.enum('timestamp_confidence', ['high', 'medium', 'low']).notNullable();
    
    // Equipment
    table.bigInteger('imaging_train_id').unsigned();
    
    // Camera settings
    table.integer('iso_value');
    table.decimal('aperture_f_number', 3, 1);
    table.decimal('shutter_speed_seconds', 10, 6);
    table.integer('frame_count').defaultTo(1);
    table.decimal('integration_time_seconds', 10, 6);
    table.integer('focal_length_mm');
    
    // Visual properties
    table.string('dominant_color_hex', 7);
    table.string('mean_color_hex', 7);
    table.string('salient_color_hex', 7);
    
    // Flexible metadata
    table.json('media_metadata');
    table.json('camera_exif');
    
    // File system timestamps
    table.timestamp('file_created_at').notNullable();
    table.timestamp('file_modified_at').notNullable();
    
    // Database tracking
    table.timestamps(true, true);
    
    // Foreign keys
    table.foreign('imaging_train_id').references('id').inTable('imaging_trains');
    
    // Indexes
    table.index(['collection', 'relative_path']);
    table.index('file_hash');
    table.index('primary_timestamp');
    table.index(['collection', 'primary_timestamp']);
    table.index(['media_type', 'media_format']);
    table.index(['iso_value', 'aperture_f_number', 'shutter_speed_seconds']);
    table.index('integration_time_seconds');
    table.index('imaging_train_id');
    table.index('dominant_color_hex');
    table.index('mean_color_hex');
    table.index('salient_color_hex');
  });

  // Create media_locations table
  await knex.schema.createTable('media_locations', (table) => {
    table.bigInteger('file_id').unsigned().primary();
    table.decimal('latitude', 10, 8).notNullable();
    table.decimal('longitude', 11, 8).notNullable();
    table.enum('gps_source', ['exif', 'manual', 'estimated']).notNullable();
    table.enum('gps_confidence', ['high', 'medium', 'low']).notNullable();
    table.json('geolocation_data');
    
    // Foreign keys
    table.foreign('file_id').references('id').inTable('media_files').onDelete('CASCADE');
    
    // Spatial index (MySQL specific)
    if (knex.client.config.client === 'mysql2') {
      table.index(['latitude', 'longitude'], 'idx_coordinates', 'SPATIAL');
    }
  });

  // Create landmarks table
  await knex.schema.createTable('landmarks', (table) => {
    table.bigIncrements('id').primary();
    table.string('name', 255).notNullable();
    table.string('category', 64).notNullable();
    table.enum('provider', ['GNIS', 'RECREATION_GOV', 'NPS']).notNullable();
    table.json('provider_data');
    
    // Indexes
    table.unique(['name', 'provider']);
    table.index('category');
    table.index('provider');
  });

  // Create media_landmarks table
  await knex.schema.createTable('media_landmarks', (table) => {
    table.bigIncrements('id').primary();
    table.bigInteger('file_id').unsigned().notNullable();
    table.bigInteger('landmark_id').unsigned().notNullable();
    table.integer('distance_meters').notNullable();
    
    // Foreign keys
    table.foreign('file_id').references('id').inTable('media_files').onDelete('CASCADE');
    table.foreign('landmark_id').references('id').inTable('landmarks').onDelete('CASCADE');
    
    // Indexes
    table.index('file_id');
    table.index(['landmark_id', 'distance_meters']);
    table.index(['file_id', 'distance_meters']);
  });

  // Create software table
  await knex.schema.createTable('software', (table) => {
    table.bigIncrements('id').primary();
    table.string('name', 128).notNullable();
    table.enum('software_type', ['capture', 'processing', 'post_processing', 'analysis']).notNullable();
    table.string('version', 64);
    table.json('software_metadata');
    
    // Indexes
    table.unique(['name', 'version']);
    table.index('software_type');
    table.index('name');
  });

  // Create media_software table
  await knex.schema.createTable('media_software', (table) => {
    table.bigIncrements('id').primary();
    table.bigInteger('file_id').unsigned().notNullable();
    table.bigInteger('software_id').unsigned().notNullable();
    table.string('usage_role', 32).notNullable();
    table.json('usage_metadata');
    
    // Foreign keys
    table.foreign('file_id').references('id').inTable('media_files').onDelete('CASCADE');
    table.foreign('software_id').references('id').inTable('software');
    
    // Indexes
    table.index('file_id');
    table.index(['software_id', 'usage_role']);
  });

  // Create processing_runs table
  await knex.schema.createTable('processing_runs', (table) => {
    table.bigIncrements('id').primary();
    table.bigInteger('file_id').unsigned().notNullable();
    table.string('processor', 64).notNullable();
    table.boolean('success').notNullable();
    table.timestamp('extracted_at').notNullable();
    table.string('processing_version', 32);
    table.json('providers_enabled');
    table.json('providers_with_results');
    table.json('provider_failures');
    table.integer('processing_duration_ms');
    table.text('notes');
    
    // Foreign keys
    table.foreign('file_id').references('id').inTable('media_files').onDelete('CASCADE');
    
    // Indexes
    table.index(['file_id', 'extracted_at']);
    table.index(['processor', 'success']);
    table.index('extracted_at');
  });

  // Create processing_field_updates table
  await knex.schema.createTable('processing_field_updates', (table) => {
    table.bigIncrements('id').primary();
    table.bigInteger('processing_run_id').unsigned().notNullable();
    table.string('field_name', 64).notNullable();
    
    // Foreign keys
    table.foreign('processing_run_id').references('id').inTable('processing_runs').onDelete('CASCADE');
    
    // Indexes
    table.index(['processing_run_id', 'field_name']);
    table.index('field_name');
  });
}

export async function down(knex: Knex): Promise<void> {
  // Drop tables in reverse order of dependencies
  await knex.schema.dropTableIfExists('processing_field_updates');
  await knex.schema.dropTableIfExists('processing_runs');
  await knex.schema.dropTableIfExists('media_software');
  await knex.schema.dropTableIfExists('software');
  await knex.schema.dropTableIfExists('media_landmarks');
  await knex.schema.dropTableIfExists('landmarks');
  await knex.schema.dropTableIfExists('media_locations');
  await knex.schema.dropTableIfExists('media_files');
  await knex.schema.dropTableIfExists('imaging_trains');
  await knex.schema.dropTableIfExists('equipment');
}