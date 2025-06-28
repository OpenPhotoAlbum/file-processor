import { Knex } from 'knex';

export async function up(knex: Knex): Promise<void> {
  // Create detected_objects table
  await knex.schema.createTable('detected_objects', (table) => {
    table.bigIncrements('id').primary();
    table.string('object_type', 32).notNullable();
    table.string('object_category', 64).notNullable();
    table.string('object_name', 128);
    table.json('object_metadata');
    
    // Indexes
    table.unique(['object_type', 'object_name']);
    table.index('object_type');
    table.index('object_category');
  });

  // Create media_object_detections table
  await knex.schema.createTable('media_object_detections', (table) => {
    table.bigIncrements('id').primary();
    table.bigInteger('file_id').unsigned().notNullable();
    table.bigInteger('object_id').unsigned().notNullable();
    table.decimal('confidence', 3, 2).notNullable();
    
    // Bounding box (normalized 0-1 coordinates)
    table.decimal('bbox_x', 4, 3).notNullable();
    table.decimal('bbox_y', 4, 3).notNullable();
    table.decimal('bbox_width', 4, 3).notNullable();
    table.decimal('bbox_height', 4, 3).notNullable();
    
    // Detection metadata
    table.string('detection_model', 64).notNullable();
    table.json('detection_metadata');
    table.timestamp('detected_at').defaultTo(knex.fn.now());
    
    // Foreign keys
    table.foreign('file_id').references('id').inTable('media_files').onDelete('CASCADE');
    table.foreign('object_id').references('id').inTable('detected_objects');
    
    // Indexes
    table.index('file_id');
    table.index(['object_id', 'confidence']);
    table.index('confidence');
    table.index('detection_model');
  });

  // Create face_identities table
  await knex.schema.createTable('face_identities', (table) => {
    table.bigIncrements('id').primary();
    table.string('person_name', 128);
    table.json('person_metadata');
    table.binary('face_embedding');
    table.boolean('is_verified').defaultTo(false);
    table.timestamps(true, true);
    
    // Indexes
    table.index('person_name');
    table.index('is_verified');
  });

  // Create face_identity_matches table
  await knex.schema.createTable('face_identity_matches', (table) => {
    table.bigInteger('detection_id').unsigned().notNullable();
    table.bigInteger('identity_id').unsigned().notNullable();
    table.decimal('match_confidence', 3, 2).notNullable();
    table.boolean('is_manual').defaultTo(false);
    table.timestamp('matched_at').defaultTo(knex.fn.now());
    
    // Composite primary key
    table.primary(['detection_id', 'identity_id']);
    
    // Foreign keys
    table.foreign('detection_id').references('id').inTable('media_object_detections').onDelete('CASCADE');
    table.foreign('identity_id').references('id').inTable('face_identities').onDelete('CASCADE');
    
    // Indexes
    table.index('identity_id');
    table.index('match_confidence');
  });
}

export async function down(knex: Knex): Promise<void> {
  // Drop tables in reverse order of dependencies
  await knex.schema.dropTableIfExists('face_identity_matches');
  await knex.schema.dropTableIfExists('face_identities');
  await knex.schema.dropTableIfExists('media_object_detections');
  await knex.schema.dropTableIfExists('detected_objects');
}