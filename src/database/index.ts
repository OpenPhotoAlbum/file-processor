import knex, { Knex } from 'knex';
import config from './knexfile.js';
import { Logger } from '../utils/logging/index.js';
import { fileURLToPath } from 'url';

const logger = new Logger('Database');

// Detect if we're running from dist (compiled) or src
const __filename = fileURLToPath(import.meta.url);
const isCompiledCode = __filename.includes('/dist/');

// Get environment or default to development
const environment = process.env.NODE_ENV || 'development';
const knexConfig = { ...config[environment] };

// Override extension if running from compiled code
if (isCompiledCode && knexConfig.migrations) {
  knexConfig.migrations.extension = 'js';
}
if (isCompiledCode && knexConfig.seeds) {
  knexConfig.seeds.extension = 'js';
}

// Create the Knex instance
export const db: Knex = knex(knexConfig);

// Test database connection
export async function testConnection(): Promise<boolean> {
  try {
    await db.raw('SELECT 1');
    logger.info('Database connection established', {
      environment,
      client: knexConfig.client,
      database: typeof knexConfig.connection === 'object' && 'database' in knexConfig.connection
        ? knexConfig.connection.database
        : 'unknown'
    });
    return true;
  } catch (error) {
    logger.error(`Failed to connect to database: ${error}`);
    return false;
  }
}

// Run migrations
export async function runMigrations(): Promise<void> {
  try {
    logger.info('Running database migrations...');
    const [batch, migrations] = await db.migrate.latest();
    
    if (migrations.length === 0) {
      logger.info('Database is already up to date');
    } else {
      logger.info(`Ran ${migrations.length} migrations`, {
        batch,
        migrations
      });
    }
  } catch (error) {
    logger.error(`Migration failed: ${error}`);
    throw error;
  }
}

// Rollback migrations
export async function rollbackMigrations(): Promise<void> {
  try {
    logger.info('Rolling back migrations...');
    const [batch, migrations] = await db.migrate.rollback();
    
    if (migrations.length === 0) {
      logger.info('No migrations to rollback');
    } else {
      logger.info(`Rolled back ${migrations.length} migrations`, {
        batch,
        migrations
      });
    }
  } catch (error) {
    logger.error(`Rollback failed: ${error}`);
    throw error;
  }
}

// Run seeds
export async function runSeeds(): Promise<void> {
  try {
    logger.info('Running database seeds...');
    await db.seed.run();
    logger.info('Database seeding completed');
  } catch (error) {
    logger.error(`Seeding failed: ${error}`);
    throw error;
  }
}

// Clean shutdown
export async function closeDatabase(): Promise<void> {
  await db.destroy();
  logger.info('Database connection closed');
}

// Export the database instance as default
export default db;