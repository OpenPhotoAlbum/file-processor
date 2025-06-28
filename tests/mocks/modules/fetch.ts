/**
 * Mock fetch for Recreation.gov API calls
 */

import { readFileSync } from 'fs';
import { join } from 'path';

const MOCKS_DIR = join(__dirname, '../api-responses');

// Mock response data mapping based on URL patterns
const API_RESPONSES: Record<string, string> = {
  // Acadia National Park area (Maine)
  'latitude=44.32179722&longitude=-68.18823889': 'recreation-gov-acadia.json',
  
  // New Hampshire area (for other test files)
  'latitude=43.235': 'recreation-gov-nh.json',
  'latitude=43.234': 'recreation-gov-nh.json',
  'latitude=43.236': 'recreation-gov-nh.json'
};

export const mockFetch = jest.fn(async (url: string, options?: any): Promise<Response> => {
  // Extract coordinates from URL to determine which mock to use
  let mockFile = 'recreation-gov-nh.json'; // default
  
  for (const [pattern, file] of Object.entries(API_RESPONSES)) {
    if (url.includes(pattern)) {
      mockFile = file;
      break;
    }
  }
  
  const mockPath = join(MOCKS_DIR, mockFile);
  
  try {
    const mockData = readFileSync(mockPath, 'utf-8');
    
    return Promise.resolve({
      ok: true,
      status: 200,
      statusText: 'OK',
      headers: new Headers({ 'content-type': 'application/json' }),
      json: async () => JSON.parse(mockData),
      text: async () => mockData,
      blob: async () => new Blob([mockData]),
      arrayBuffer: async () => new ArrayBuffer(0),
      formData: async () => new FormData(),
      clone: () => mockFetch(url, options),
      body: null,
      bodyUsed: false,
      redirected: false,
      type: 'default',
      url: url
    } as unknown as Response);
  } catch (error) {
    console.warn(`Mock file not found: ${mockPath}, returning empty response`);
    return Promise.resolve({
      ok: true,
      status: 200,
      statusText: 'OK',
      headers: new Headers({ 'content-type': 'application/json' }),
      json: async () => ({ METADATA: { RESULTS: { CURRENT_COUNT: 0, TOTAL_COUNT: 0 } }, RECDATA: [] }),
      text: async () => '{}',
      blob: async () => new Blob(['{}']),
      arrayBuffer: async () => new ArrayBuffer(0),
      formData: async () => new FormData(),
      clone: () => mockFetch(url, options),
      body: null,
      bodyUsed: false,
      redirected: false,
      type: 'default',
      url: url
    } as unknown as Response);
  }
});

// Replace global fetch
(global as any).fetch = mockFetch;