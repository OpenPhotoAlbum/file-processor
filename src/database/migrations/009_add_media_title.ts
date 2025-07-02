import { Knex } from 'knex';

export async function up(knex: Knex): Promise<void> {
  await knex.schema.alterTable('media_files', (table) => {
    table.string('title', 255).nullable().comment('Human-friendly title for media, especially videos');
    table.index('title', 'idx_media_files_title');
  });
}

export async function down(knex: Knex): Promise<void> {
  await knex.schema.alterTable('media_files', (table) => {
    table.dropIndex('title', 'idx_media_files_title');
    table.dropColumn('title');
  });
}