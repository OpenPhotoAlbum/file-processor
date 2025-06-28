import { spawn } from 'child_process';
import { readFileSync } from 'fs';
import { join } from 'path';

const PROJECT_ROOT = join(__dirname, '../..');
const MOCKS_DIR = join(__dirname, 'mocks');

// Test cases with their expected files
const TEST_CASES = [
  // Core image processing with GPS and enrichment
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
  },
  
  // Live Photo detection
  {
    filename: 'heic_sample2.HEIC',
    description: 'Apple Live Photo detection and metadata',
    expectedFile: 'heic_sample2.expected.json'
  },
  
  // Video processing
  {
    filename: 'mov_sample.MOV',
    description: 'MOV video file processing',
    expectedFile: 'mov_sample.expected.json'
  },
  {
    filename: 'mp4_sample.mp4',
    description: 'MP4 video file processing',
    expectedFile: 'mp4_sample.expected.json'
  },
  
  // No GPS data scenario
  {
    filename: 'jpg_no_gps.jpg',
    description: 'JPEG without GPS data (geolocation disabled)',
    expectedFile: 'jpg_no_gps.expected.json'
  },
  
  // Different manufacturer/camera
  {
    filename: 'jpg_canon_dslr.jpg',
    description: 'Canon DSLR photo with rich metadata',
    expectedFile: 'jpg_canon_dslr.expected.json'
  },
  
  // Format coverage
  {
    filename: 'png_sample.PNG',
    description: 'PNG format processing',
    expectedFile: 'png_sample.expected.json'
  },
  {
    filename: 'gif_animation.gif',
    description: 'GIF animation processing',
    expectedFile: 'gif_animation.expected.json'
  },
  
  // Rotation metadata
  {
    filename: 'jpg_rotate_180.JPG',
    description: 'JPEG with 180-degree rotation metadata',
    expectedFile: 'jpg_rotate_180.expected.json'
  },
  {
    filename: 'jpg_rotate_90.JPG',
    description: 'JPEG with 90-degree rotation metadata',
    expectedFile: 'jpg_rotate_90.expected.json'
  }
];

// Helper function to execute CLI command and return JSON response
async function executeCLI(filename: string): Promise<any> {
  return new Promise((resolve, reject) => {
    const child = spawn('node', ['dist/main.js', '--files', `sample:${filename}`, '--json'], {
      cwd: PROJECT_ROOT,
      stdio: ['inherit', 'pipe', 'pipe'],
      env: {
        ...process.env,
        GEOLOCATION_ENABLED: 'true',
        RECREATION_GOV_PROVIDER_ENABLED: 'true',
        GNIS_PROVIDER_ENABLED: 'true',
        NPS_PROVIDER_ENABLED: 'true',
        LANDMARK_MAX_RADIUS: '50000'
      }
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
  
  // Normalize technical metadata file access timestamps (vary by test run)
  if (normalized.technical) {
    if (normalized.technical['File:FileAccessDate']) {
      normalized.technical['File:FileAccessDate'] = 'normalized-timestamp';
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

  test('Video processor handles MOV and MP4 files correctly', async () => {
    const movResponse = await executeCLI('mov_sample.MOV');
    const mp4Response = await executeCLI('mp4_sample.mp4');
    
    // Check processor type
    expect(movResponse.processing.processor).toBe('VideoProcessor');
    expect(mp4Response.processing.processor).toBe('VideoProcessor');
    
    // Check media type
    expect(movResponse.media.type).toBe('video');
    expect(mp4Response.media.type).toBe('video');
    
    // Check formats
    expect(movResponse.media.format).toBe('quicktime');
    expect(mp4Response.media.format).toBe('mp4');
  });

  test('No GPS data scenario disables geolocation correctly', async () => {
    const response = await executeCLI('jpg_no_gps.jpg');
    const location = response.location;
    
    // Should have no GPS data
    expect(location.primary).toBeNull();
    expect(location.geolocation).toBeNull();
    expect(location.landmarks).toEqual([]);
    
    // Enrichment status should reflect disabled state
    expect(location.enrichmentStatus.geolocation).toBe('disabled');
    expect(location.enrichmentStatus.landmarks).toBe('disabled');
    expect(location.enrichmentStatus.providersUsed).toEqual([]);
  });

  test('Canon DSLR metadata differs from iPhone metadata', async () => {
    const canonResponse = await executeCLI('jpg_canon_dslr.jpg');
    const iphoneResponse = await executeCLI('jpg_with_gps_iphone.JPG');
    
    // Different manufacturers
    expect(canonResponse.camera.make).toBe('Canon');
    expect(iphoneResponse.camera.make).toBe('Apple');
    
    // Different models
    expect(canonResponse.camera.model).toBe('Canon EOS REBEL T2i');
    expect(iphoneResponse.camera.model).toBe('iPhone X');
    
    // Canon should have lens info
    expect(canonResponse.camera.lens).toContain('Canon EF-S');
    expect(iphoneResponse.camera.lens).toContain('iPhone X');
  });

  test('Format variety processes correctly', async () => {
    const pngResponse = await executeCLI('png_sample.PNG');
    const gifResponse = await executeCLI('gif_animation.gif');
    
    // Both should use ImageProcessor
    expect(pngResponse.processing.processor).toBe('ImageProcessor');
    expect(gifResponse.processing.processor).toBe('ImageProcessor');
    
    // Check media formats
    expect(pngResponse.media.format).toBe('png');
    expect(gifResponse.media.format).toBe('gif');
    
    // Both should have dimensions
    expect(pngResponse.media.dimensions).toHaveProperty('width');
    expect(pngResponse.media.dimensions).toHaveProperty('height');
    expect(gifResponse.media.dimensions).toHaveProperty('width');
    expect(gifResponse.media.dimensions).toHaveProperty('height');
  });

  test('Rotation metadata is captured correctly', async () => {
    const rotate180Response = await executeCLI('jpg_rotate_180.JPG');
    const rotate90Response = await executeCLI('jpg_rotate_90.JPG');
    
    // Both should have orientation data
    expect(rotate180Response.media.dimensions).toHaveProperty('orientation');
    expect(rotate90Response.media.dimensions).toHaveProperty('orientation');
    
    // Orientations should be different
    expect(rotate180Response.media.dimensions.orientation).not.toBe(
      rotate90Response.media.dimensions.orientation
    );
  });
});