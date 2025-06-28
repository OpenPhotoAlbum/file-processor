import type { Knex } from 'knex';
import dotenv from 'dotenv';

dotenv.config();

const config: { [key: string]: Knex.Config } = {
  development: {
    client: 'mysql2',
    connection: {
      host: process.env.DB_HOST || 'localhost',
      port: parseInt(process.env.DB_PORT || '3306'),
      user: process.env.DB_USER || 'media_user',
      password: process.env.DB_PASSWORD || '',
      database: process.env.DB_NAME || 'media_processing',
      supportBigNumbers: true,
      bigNumberStrings: true,
      dateStrings: false,
      timezone: 'Z'
    },
    pool: {
      min: 2,
      max: 10
    },
    migrations: {
      directory: './migrations',
      extension: 'ts',
      tableName: 'knex_migrations'
    },
    seeds: {
      directory: './seeds',
      extension: 'ts'
    }
  },

  production: {
    client: 'mysql2',
    connection: {
      host: process.env.DB_HOST,
      port: parseInt(process.env.DB_PORT || '3306'),
      user: process.env.DB_USER,
      password: process.env.DB_PASSWORD,
      database: process.env.DB_NAME,
      supportBigNumbers: true,
      bigNumberStrings: true,
      dateStrings: false,
      timezone: 'Z'
    },
    pool: {
      min: 2,
      max: 10
    },
    migrations: {
      directory: '../../dist/database/migrations',
      extension: 'js',
      tableName: 'knex_migrations'
    },
    seeds: {
      directory: '../../dist/database/seeds',
      extension: 'js'
    }
  }
};

export default config;