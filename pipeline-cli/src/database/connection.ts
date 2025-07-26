import mysql from 'mysql2/promise';
import { Logger } from '../utils/logging/index.js';

const logger = new Logger('DatabaseConnection');

export interface DatabaseConfig {
  host: string;
  port: number;
  user: string;
  password: string;
  database: string;
  connectionLimit?: number;
  acquireTimeout?: number;
  timeout?: number;
}

export class DatabaseConnection {
  private pool: mysql.Pool | null = null;
  private config: DatabaseConfig;

  constructor(config: DatabaseConfig) {
    this.config = {
      connectionLimit: 10,
      acquireTimeout: 60000,
      timeout: 60000,
      ...config
    };
  }

  async connect(): Promise<void> {
    try {
      this.pool = mysql.createPool({
        host: this.config.host,
        port: this.config.port,
        user: this.config.user,
        password: this.config.password,
        database: this.config.database,
        connectionLimit: this.config.connectionLimit,
        connectTimeout: this.config.timeout,
        supportBigNumbers: true,
        bigNumberStrings: true,
        dateStrings: false,
        timezone: 'Z'
      } as mysql.PoolOptions);

      // Test the connection
      const connection = await this.pool.getConnection();
      await connection.ping();
      connection.release();

      logger.info('Database connection established', {
        host: this.config.host,
        database: this.config.database,
        connectionLimit: this.config.connectionLimit
      });
    } catch (error) {
      logger.error(`Failed to connect to database: ${error}`);
      throw error;
    }
  }

  async disconnect(): Promise<void> {
    if (this.pool) {
      await this.pool.end();
      this.pool = null;
      logger.info('Database connection closed');
    }
  }

  getPool(): mysql.Pool {
    if (!this.pool) {
      throw new Error('Database not connected. Call connect() first.');
    }
    return this.pool;
  }

  async execute(sql: string, params?: unknown[]): Promise<[unknown, mysql.FieldPacket[]]> {
    const pool = this.getPool();
    return pool.execute(sql, params);
  }

  async query(sql: string, params?: unknown[]): Promise<[unknown, mysql.FieldPacket[]]> {
    const pool = this.getPool();
    return pool.query(sql, params);
  }

  async transaction<T>(callback: (connection: mysql.PoolConnection) => Promise<T>): Promise<T> {
    const pool = this.getPool();
    const connection = await pool.getConnection();
    
    try {
      await connection.beginTransaction();
      const result = await callback(connection);
      await connection.commit();
      return result;
    } catch (error) {
      await connection.rollback();
      throw error;
    } finally {
      connection.release();
    }
  }
}

// Database configuration from environment variables
export function createDatabaseConfig(): DatabaseConfig {
  return {
    host: process.env.DB_HOST || 'localhost',
    port: parseInt(process.env.DB_PORT || '3306'),
    user: process.env.DB_USER || 'kin',
    password: process.env.DB_PASSWORD || 'Dalekini21!',
    database: process.env.DB_NAME || 'kin',
    connectionLimit: parseInt(process.env.DB_CONNECTION_LIMIT || '10'),
    acquireTimeout: parseInt(process.env.DB_ACQUIRE_TIMEOUT || '60000'),
    timeout: parseInt(process.env.DB_TIMEOUT || '60000')
  };
}

// Singleton database instance
let databaseInstance: DatabaseConnection | null = null;

export async function getDatabase(): Promise<DatabaseConnection> {
  if (!databaseInstance) {
    const config = createDatabaseConfig();
    databaseInstance = new DatabaseConnection(config);
    await databaseInstance.connect();
  }
  return databaseInstance;
}

export async function closeDatabaseConnection(): Promise<void> {
  if (databaseInstance) {
    await databaseInstance.disconnect();
    databaseInstance = null;
  }
}