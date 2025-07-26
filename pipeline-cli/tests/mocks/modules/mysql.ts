/**
 * Mock MySQL connections for database queries
 */

import { readFileSync } from 'fs';
import { join } from 'path';

const MOCKS_DIR = join(__dirname, '../database');

// Mock connection that returns predefined data based on query patterns
export const mockConnection = {
  async execute(query: string, params: any[] = []): Promise<[any[], any]> {
    // Handle GNIS queries
    if (query.includes('SELECT') && query.includes('gnis_features')) {
      // Extract coordinates from params to determine which mock to use
      const lat = params.find((p) => typeof p === 'number' && p > 40 && p < 50);
      
      if (lat && lat > 44) {
        // Acadia area
        const mockData = JSON.parse(readFileSync(join(MOCKS_DIR, 'gnis-acadia.json'), 'utf-8'));
        return [mockData, {}];
      } else {
        // New Hampshire area - return NH landmarks
        const nhLandmarks = [
          {
            id: 10,
            feature_id: "1775466",
            feature_name: "Salmon Falls River Reservoir",
            feature_class: "Reservoir",
            state_name: "New Hampshire",
            state_code: "NH",
            county_name: "Strafford",
            map_name: "Dover East",
            latitude: 43.23841790,
            longitude: -70.81783540,
            elevation_meters: null,
            distance_km: 0.601
          }
        ];
        return [nhLandmarks, {}];
      }
    }
    
    // Handle geolocation queries
    if (query.includes('geo_municipal_boundaries') || query.includes('geo_cities')) {
      const lat = params.find((p, i) => typeof p === 'number' && p > 40 && p < 50);
      
      if (lat && lat > 44) {
        // Acadia area
        const mockData = JSON.parse(readFileSync(join(MOCKS_DIR, 'geolocation-acadia.json'), 'utf-8'));
        return [[mockData], {}];
      } else if (lat) {
        // New Hampshire area
        const mockData = {
          city: "Rollinsford",
          state_code: "NH", 
          county_name: "Strafford",
          timezone: "America/New_York",
          postal_code: "3869",
          distance: 2048,
          confidence: 0.8,
          source: "city_proximity",
          method: "Nearest city centroid"
        };
        return [[mockData], {}];
      }
      
      // No GPS data scenario
      return [[], {}];
    }
    
    // Default empty response
    return [[], {}];
  },
  
  async end() {
    // Mock cleanup
  }
};

// Mock pool
export const mockPool = {
  async getConnection() {
    return mockConnection;
  },
  
  async execute(query: string, params: any[] = []) {
    return mockConnection.execute(query, params);
  },
  
  async end() {
    // Mock cleanup
  }
};

// Mock mysql2/promise module
const mockMysql = {
  createPool: jest.fn(() => mockPool),
  createConnection: jest.fn(() => mockConnection)
};

export default mockMysql;