/**
 * Jest test setup - Mock external dependencies and configure test environment
 */

// Increase test timeout for CLI commands
jest.setTimeout(30000);

// Mock fetch for Recreation.gov API calls
import './mocks/modules/fetch';

// Mock MySQL for database queries
jest.mock('mysql2/promise', () => {
  return require('./mocks/modules/mysql').default;
});

// Mock Sharp for image processing (avoid system dependencies in tests)
jest.mock('sharp', () => {
  return jest.fn(() => ({
    resize: jest.fn().mockReturnThis(),
    toBuffer: jest.fn().mockResolvedValue(Buffer.from('mock-image-data')),
    clone: jest.fn().mockReturnThis(),
    removeAlpha: jest.fn().mockReturnThis(),
    raw: jest.fn().mockReturnThis(),
    ensureAlpha: jest.fn().mockReturnThis(),
    toColorspace: jest.fn().mockReturnThis(),
    metadata: jest.fn().mockResolvedValue({
      width: 100,
      height: 100,
      channels: 3,
      density: 72
    })
  }));
});

// Mock Vibrant for color extraction
jest.mock('node-vibrant', () => {
  return {
    from: jest.fn(() => ({
      getPalette: jest.fn().mockResolvedValue({
        Vibrant: { getHex: () => '#ff0000' },
        DarkVibrant: { getHex: () => '#800000' },
        LightVibrant: { getHex: () => '#ff8080' },
        Muted: { getHex: () => '#808080' },
        DarkMuted: { getHex: () => '#404040' },
        LightMuted: { getHex: () => '#c0c0c0' }
      })
    }))
  };
});

// Set environment variables for consistent testing
process.env.NODE_ENV = 'test';
process.env.GEOLOCATION_ENABLED = 'true';
process.env.RECREATION_GOV_PROVIDER_ENABLED = 'true';
process.env.GNIS_PROVIDER_ENABLED = 'true';
process.env.NPS_PROVIDER_ENABLED = 'true';
process.env.LANDMARK_MAX_RADIUS = '50000';

// Mock console methods to reduce test noise (optional)
const originalConsoleError = console.error;
const originalConsoleWarn = console.warn;

beforeAll(() => {
  console.error = jest.fn();
  console.warn = jest.fn();
});

afterAll(() => {
  console.error = originalConsoleError;
  console.warn = originalConsoleWarn;
});