#!/usr/bin/env node
import { testConnection, runMigrations, runSeeds, closeDatabase } from '../database/index.js';
import { Logger } from '../utils/logging/index.js';

const logger = new Logger('DatabaseSetup');

async function setupDatabase() {
  try {
    // Test connection
    const connected = await testConnection();
    if (!connected) {
      logger.error('Cannot proceed without database connection');
      process.exit(1);
    }

    // Run migrations
    await runMigrations();

    // Run seeds
    await runSeeds();

    logger.info('Database setup completed successfully!');
  } catch (error) {
    logger.error(`Database setup failed: ${error}`);
    process.exit(1);
  } finally {
    await closeDatabase();
  }
}

// Run the setup
setupDatabase().catch(console.error);