#!/usr/bin/env node
/**
 * Recreation.gov ETL Pipeline
 * 
 * Extracts facility data from Recreation.gov RIDB API and loads it into our database
 * for fast offline landmark detection. Replaces live API calls with local spatial queries.
 * 
 * Usage:
 *   npm run etl:recreation           # Full refresh
 *   npm run etl:recreation -- --incremental  # Incremental update
 */

import { config } from 'dotenv';
import mysql from 'mysql2/promise';
import { Logger } from '../utils/logging/index.js';

// Load environment variables
config();

interface RecreationFacility {
  FacilityID: string;
  FacilityName: string;
  FacilityTypeDescription: string;
  FacilityLatitude: number;
  FacilityLongitude: number;
  FacilityDescription?: string;
  FacilityDirections?: string;
  FacilityPhone?: string;
  FacilityEmail?: string;
  FacilityReservationURL?: string;
  FacilityAdaAccess?: string;
  StayLimit?: string;
  Keywords?: string;
  LastUpdatedDate?: string;
  ORGANIZATION?: Array<{
    OrgID: string;
    OrgName: string;
    OrgType: string;
    ParentOrgID?: string;
  }>;
}

interface RecreationApiResponse {
  METADATA: {
    RESULTS: {
      CURRENT_COUNT: number;
      TOTAL_COUNT: number;
    };
  };
  RECDATA: RecreationFacility[];
}

class RecreationETL {
  private logger = new Logger('Recreation ETL');
  private db?: mysql.Connection;
  private apiKey: string;
  private batchId: string;
  private baseUrl = 'https://ridb.recreation.gov/api/v1';
  
  constructor() {
    this.apiKey = process.env.RECREATION_GOV_API_KEY || '';
    this.batchId = new Date().toISOString().replace(/[:.]/g, '-');
    
    if (!this.apiKey) {
      throw new Error('RECREATION_GOV_API_KEY environment variable is required');
    }
  }

  async run(incremental = false): Promise<void> {
    this.logger.info(`Starting Recreation.gov ETL ${incremental ? 'incremental' : 'full'} refresh`);
    
    try {
      await this.connect();
      
      if (!incremental) {
        await this.truncateTable();
      }
      
      let offset = 0;
      let totalProcessed = 0;
      const limit = 50; // Recreation.gov API pagination limit
      
      while (true) {
        const facilities = await this.fetchFacilities(offset, limit);
        
        if (facilities.length === 0) {
          break;
        }
        
        await this.loadFacilities(facilities);
        totalProcessed += facilities.length;
        offset += limit;
        
        this.logger.info(`Processed ${totalProcessed} facilities...`);
        
        // Rate limiting - Recreation.gov likely has rate limits
        await this.sleep(100); // 100ms delay between requests
      }
      
      await this.updateStats();
      this.logger.info(`ETL completed successfully. Processed ${totalProcessed} facilities.`);
      
    } catch (error) {
      this.logger.error('ETL failed', error as Error);
      throw error;
    } finally {
      if (this.db) {
        await this.db.end();
      }
    }
  }

  private async connect(): Promise<void> {
    this.db = await mysql.createConnection({
      host: process.env.DB_HOST || '127.0.0.1',
      port: parseInt(process.env.DB_PORT || '3309'),
      user: process.env.DB_USER || 'kin',
      password: process.env.DB_PASSWORD || 'kin123',
      database: process.env.DB_NAME || 'kin'
    });
    
    this.logger.info('Connected to database');
  }

  private async truncateTable(): Promise<void> {
    if (!this.db) throw new Error('Database not connected');
    
    await this.db.execute('TRUNCATE TABLE recreation_facilities');
    this.logger.info('Truncated recreation_facilities table');
  }

  private async fetchFacilities(offset: number, limit: number): Promise<RecreationFacility[]> {
    const url = `${this.baseUrl}/facilities?limit=${limit}&offset=${offset}&full=true`;
    
    this.logger.debug(`Fetching facilities: offset=${offset}, limit=${limit}`);
    
    try {
      const response = await fetch(url, {
        headers: {
          'accept': 'application/json',
          'apikey': this.apiKey
        }
      });

      if (!response.ok) {
        throw new Error(`Recreation.gov API error: ${response.status} ${response.statusText}`);
      }

      const data = await response.json() as RecreationApiResponse;
      
      // Filter out facilities without valid coordinates
      const validFacilities = data.RECDATA.filter(facility => 
        facility.FacilityLatitude && 
        facility.FacilityLongitude &&
        facility.FacilityLatitude !== 0 &&
        facility.FacilityLongitude !== 0
      );
      
      this.logger.debug(`Fetched ${data.RECDATA.length} facilities, ${validFacilities.length} with valid coordinates`);
      
      return validFacilities;
      
    } catch (error) {
      this.logger.error(`Failed to fetch facilities at offset ${offset}`, error as Error);
      throw error;
    }
  }

  private async loadFacilities(facilities: RecreationFacility[]): Promise<void> {
    if (!this.db) throw new Error('Database not connected');

    const insertQuery = `
      INSERT INTO recreation_facilities (
        facility_id, facility_name, facility_type, latitude, longitude, coordinates,
        description, directions, phone, email, reservation_url, ada_access, stay_limit, keywords,
        organization_id, organization_name, parent_organization_id, last_updated_date, 
        data_source, etl_batch_id
      ) VALUES (?, ?, ?, ?, ?, ST_GeomFromText(?, 4326), ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
      ON DUPLICATE KEY UPDATE
        facility_name = VALUES(facility_name),
        facility_type = VALUES(facility_type),
        latitude = VALUES(latitude),
        longitude = VALUES(longitude),
        coordinates = VALUES(coordinates),
        description = VALUES(description),
        directions = VALUES(directions),
        phone = VALUES(phone),
        email = VALUES(email),
        reservation_url = VALUES(reservation_url),
        ada_access = VALUES(ada_access),
        stay_limit = VALUES(stay_limit),
        keywords = VALUES(keywords),
        organization_id = VALUES(organization_id),
        organization_name = VALUES(organization_name),
        parent_organization_id = VALUES(parent_organization_id),
        last_updated_date = VALUES(last_updated_date),
        etl_batch_id = VALUES(etl_batch_id),
        updated_at = CURRENT_TIMESTAMP
    `;

    for (const facility of facilities) {
      try {
        // Get primary organization (first one)
        const primaryOrg = facility.ORGANIZATION?.[0];
        
        const values = [
          facility.FacilityID,
          facility.FacilityName,
          facility.FacilityTypeDescription,
          facility.FacilityLatitude,
          facility.FacilityLongitude,
          `POINT(${facility.FacilityLongitude} ${facility.FacilityLatitude})`, // Note: longitude first for POINT
          this.cleanHtml(facility.FacilityDescription),
          facility.FacilityDirections,
          facility.FacilityPhone,
          facility.FacilityEmail,
          facility.FacilityReservationURL,
          facility.FacilityAdaAccess,
          facility.StayLimit,
          facility.Keywords,
          primaryOrg?.OrgID,
          primaryOrg?.OrgName,
          primaryOrg?.ParentOrgID,
          facility.LastUpdatedDate ? new Date(facility.LastUpdatedDate) : null,
          'recreation_gov_api',
          this.batchId
        ];

        await this.db.execute(insertQuery, values);
        
      } catch (error) {
        this.logger.warn(`Failed to insert facility ${facility.FacilityID}: ${facility.FacilityName}`, {
          error: (error as Error).message
        });
      }
    }
  }

  private cleanHtml(text?: string): string | null {
    if (!text) return null;
    // Strip HTML tags and clean up whitespace
    return text.replace(/<[^>]*>/g, '').trim() || null;
  }

  private async updateStats(): Promise<void> {
    if (!this.db) throw new Error('Database not connected');
    
    const [rows] = await this.db.execute(`
      SELECT 
        COUNT(*) as total_facilities,
        COUNT(DISTINCT facility_type) as facility_types,
        COUNT(DISTINCT organization_id) as organizations,
        MIN(last_updated_date) as oldest_update,
        MAX(last_updated_date) as newest_update
      FROM recreation_facilities 
      WHERE etl_batch_id = ?
    `, [this.batchId]) as [mysql.RowDataPacket[], mysql.FieldPacket[]];
    
    this.logger.info('ETL Statistics', rows[0]);
  }

  private sleep(ms: number): Promise<void> {
    return new Promise(resolve => setTimeout(resolve, ms));
  }
}

// CLI execution
async function main() {
  const incremental = process.argv.includes('--incremental');
  
  try {
    const etl = new RecreationETL();
    await etl.run(incremental);
    process.exit(0);
  } catch (error) {
    console.error('ETL failed:', error);
    process.exit(1);
  }
}

// Run if called directly
if (import.meta.url === `file://${process.argv[1]}`) {
  main();
}

export { RecreationETL };