import knex, { Knex } from 'knex';
import config from './knexfile.js';

let knexInstance: Knex | null = null;

export function initializeDatabase(): Knex {
  if (!knexInstance) {
    const environment = process.env.NODE_ENV || 'development';
    const knexConfig = config[environment];
    
    if (!knexConfig) {
      throw new Error(`No database configuration found for environment: ${environment}`);
    }
    
    knexInstance = knex(knexConfig);
  }
  
  return knexInstance;
}

export function getDatabase(): Knex {
  if (!knexInstance) {
    throw new Error('Database not initialized. Call initializeDatabase() first.');
  }
  
  return knexInstance;
}

export async function closeDatabaseConnection(): Promise<void> {
  if (knexInstance) {
    await knexInstance.destroy();
    knexInstance = null;
  }
}

export default initializeDatabase;