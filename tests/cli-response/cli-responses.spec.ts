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
    const outputFile = `/tmp/test-${Date.now()}`;
    const child = spawn('node', ['dist/main.js', '-f', `sample:${filename}`, '--json', '-o', outputFile, '--overwrite'], {
      cwd: PROJECT_ROOT,
      stdio: ['inherit', 'pipe', 'pipe']
    });

    let stderr = '';
    
    // Set timeout to prevent hanging tests
    const timeout = setTimeout(() => {
      child.kill('SIGKILL');
      reject(new Error(`CLI command timed out after 30 seconds for ${filename}`));
    }, 30000);

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
        // Read the generated JSON file (CLI auto-adds .json extension)
        const content = readFileSync(`${outputFile}.json`, 'utf-8');
        const result = JSON.parse(content);
        resolve(result);
      } catch (error) {
        reject(new Error(`Failed to read/parse output file: ${error}`));
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
  
  // Normalize timing fields
  if (normalized.duration) normalized.duration = 0;
  if (normalized.summary?.totalDuration) normalized.summary.totalDuration = 0;
  if (normalized.summary?.averageDuration) normalized.summary.averageDuration = 0;
  
  // Normalize result-level dynamic fields
  if (normalized.results) {
    for (const result of normalized.results) {
      if (result.duration) result.duration = 0;
      
      if (result.metadata?.processing?.extractedAt) {
        result.metadata.processing.extractedAt = 'normalized-timestamp';
      }
      
      if (result.metadata?.file) {
        if (result.metadata.file.created) result.metadata.file.created = 'normalized-timestamp';
        if (result.metadata.file.modified) result.metadata.file.modified = 'normalized-timestamp';
        if (result.metadata.file.hash) result.metadata.file.hash = 'normalized-hash';
      }
      
      // Normalize enrichment timing
      if (result.metadata?.location?.enrichmentStatus?.queryTimeMs) {
        result.metadata.location.enrichmentStatus.queryTimeMs = 0;
      }
      
      // Normalize landmark timestamps
      if (result.metadata?.location?.landmarks) {
        for (const landmark of result.metadata.location.landmarks) {
          if (landmark.landmark?.lastUpdated) {
            landmark.landmark.lastUpdated = 'normalized-timestamp';
          }
        }
      }
      
      // Remove filesystem timestamps (they're not stable across runs)
      if (result.metadata?.timestamps?.alternatives) {
        result.metadata.timestamps.alternatives = result.metadata.timestamps.alternatives.filter(
          (ts: any) => ts.source !== 'filesystem'
        );
      }
    }
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
      
      expect(response).toHaveProperty('success', true);
      expect(response).toHaveProperty('filesProcessed', 1);
      expect(response).toHaveProperty('duration');
      expect(response).toHaveProperty('results');
      expect(response).toHaveProperty('summary');
      
      expect(response.results).toHaveLength(1);
      expect(response.results[0]).toHaveProperty('success', true);
      expect(response.results[0]).toHaveProperty('metadata');
    }
  });

  test('GPS coordinates and geolocation work correctly', async () => {
    const response = await executeCLI('IMG_6645.jpg');
    const location = response.results[0].metadata.location;
    
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