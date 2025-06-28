import { spawn } from 'child_process';
import { readFileSync } from 'fs';
import { join } from 'path';

const PROJECT_ROOT = join(__dirname, '../..');
const MOCKS_DIR = join(__dirname, 'mocks');

// Test cases with their expected files
const TEST_CASES = [
  {
    filename: 'IMG_6645.jpg',
    description: 'Acadia National Park photo with GPS and landmarks',
    expectedFile: 'IMG_6645.expected.json'
  },
  {
    filename: 'jpg_with_gps_iphone.JPG', 
    description: 'iPhone photo with GPS coordinates',
    expectedFile: 'jpg_with_gps_iphone.expected.json'
  },
  {
    filename: 'heic_sample1.HEIC',
    description: 'HEIC format with GPS data',
    expectedFile: 'heic_sample1.expected.json'
  }
];

// Helper function to execute CLI command and return JSON response
async function executeCLI(filename: string): Promise<any> {
  return new Promise((resolve, reject) => {
    const child = spawn('node', ['dist/main.js', '--files', `sample:${filename}`, '--json'], {
      cwd: PROJECT_ROOT,
      stdio: ['inherit', 'pipe', 'pipe']
    });

    let stdout = '';
    let stderr = '';
    
    // Set timeout to prevent hanging tests
    const timeout = setTimeout(() => {
      child.kill('SIGKILL');
      reject(new Error(`CLI command timed out after 30 seconds for ${filename}`));
    }, 30000);

    child.stdout.on('data', (data) => {
      stdout += data.toString();
    });

    child.stderr.on('data', (data) => {
      stderr += data.toString();
    });

    child.on('close', (code) => {
      clearTimeout(timeout);
      
      if (code !== 0) {
        reject(new Error(`CLI failed with code ${code}: ${stderr}`));
        return;
      }

      try {
        // Parse JSON from stdout
        const result = JSON.parse(stdout.trim());
        resolve(result);
      } catch (error) {
        reject(new Error(`Failed to parse JSON output: ${error}\nStdout: ${stdout}\nStderr: ${stderr}`));
      }
    });

    child.on('error', (error) => {
      clearTimeout(timeout);
      reject(new Error(`Failed to spawn CLI process: ${error.message}`));
    });
  });
}

// Helper function to normalize dynamic fields for comparison
function normalizeDynamicFields(response: any): any {
  const normalized = JSON.parse(JSON.stringify(response));
  
  // Normalize processing timestamp (new direct format)
  if (normalized.processing?.extractedAt) {
    normalized.processing.extractedAt = 'normalized-timestamp';
  }
  
  // Normalize file metadata
  if (normalized.file) {
    if (normalized.file.created) normalized.file.created = 'normalized-timestamp';
    if (normalized.file.modified) normalized.file.modified = 'normalized-timestamp';
    if (normalized.file.hash) normalized.file.hash = 'normalized-hash';
  }
  
  // Normalize enrichment timing
  if (normalized.location?.enrichmentStatus?.queryTimeMs) {
    normalized.location.enrichmentStatus.queryTimeMs = 0;
  }
  
  // Normalize landmark timestamps
  if (normalized.location?.landmarks) {
    for (const landmark of normalized.location.landmarks) {
      if (landmark.landmark?.lastUpdated) {
        landmark.landmark.lastUpdated = 'normalized-timestamp';
      }
    }
  }
  
  // Remove filesystem timestamps (they're not stable across runs)
  if (normalized.timestamps?.alternatives) {
    normalized.timestamps.alternatives = normalized.timestamps.alternatives.filter(
      (ts: any) => ts.source !== 'filesystem'
    );
  }
  
  return normalized;
}

// Helper function to load expected response
function loadExpectedResponse(filename: string): any {
  const expectedPath = join(MOCKS_DIR, filename);
  const content = readFileSync(expectedPath, 'utf-8');
  return JSON.parse(content);
}

describe('CLI Response Integration Tests', () => {
  beforeAll(async () => {
    // Build the project before running tests
    const buildResult = await new Promise<number>((resolve) => {
      const child = spawn('npm', ['run', 'build:fast'], {
        cwd: PROJECT_ROOT,
        stdio: 'inherit'
      });
      child.on('close', resolve);
    });
    
    if (buildResult !== 0) {
      throw new Error('Build failed before running tests');
    }
  });

  TEST_CASES.forEach(({ filename, description, expectedFile }) => {
    test(`${description} (${filename})`, async () => {
      // Load expected response and normalize it
      const expected = loadExpectedResponse(expectedFile);
      const normalizedExpected = normalizeDynamicFields(expected);
      
      // Execute CLI command and get actual response
      const actual = await executeCLI(filename);
      const normalizedActual = normalizeDynamicFields(actual);
      
      // Compare normalized responses
      expect(normalizedActual).toEqual(normalizedExpected);
    });
  });

  // Additional structural tests
  test('All responses have required top-level structure', async () => {
    for (const { filename } of TEST_CASES) {
      const response = await executeCLI(filename);
      
      // Check for direct file metadata structure (new JSON format)
      expect(response).toHaveProperty('file');
      expect(response).toHaveProperty('processing');
      expect(response).toHaveProperty('media');
      expect(response).toHaveProperty('timestamps');
      expect(response).toHaveProperty('location');
      expect(response).toHaveProperty('camera');
      expect(response).toHaveProperty('technical');
      expect(response).toHaveProperty('sidecars');
      
      expect(response.processing).toHaveProperty('success', true);
    }
  });

  test('GPS coordinates and geolocation work correctly', async () => {
    const response = await executeCLI('IMG_6645.jpg');
    const location = response.location; // Direct property access in new format
    
    // Check GPS coordinates
    expect(location.primary).toHaveProperty('latitude');
    expect(location.primary).toHaveProperty('longitude');
    expect(location.primary.latitude).toBeCloseTo(44.32179722, 5);
    expect(location.primary.longitude).toBeCloseTo(-68.18823889, 5);
    
    // Check geolocation resolution
    expect(location.geolocation).toHaveProperty('city', 'Seal Harbor');
    expect(location.geolocation).toHaveProperty('state_code', 'ME');
    
    // Check landmarks (should have multiple landmarks now with GNIS)
    expect(location.landmarks.length).toBeGreaterThan(1);
    
    // Check that we have both GNIS and National Parks landmarks
    const landmarkNames = location.landmarks.map((l: any) => l.landmark.name);
    const landmarkSources = location.landmarks.map((l: any) => l.source);
    
    expect(landmarkSources).toContain('USGS GNIS');
    expect(landmarkNames).toContain('Thunder Hole'); // Close GNIS feature
  });
});