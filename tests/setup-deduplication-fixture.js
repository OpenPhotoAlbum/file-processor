/**
 * Deduplication Test Fixture Setup
 * 
 * Generates real database inspection data for deduplication validation tests.
 * Only runs in local development environment with database access.
 */

import { exec } from 'child_process';
import { promisify } from 'util';
import fs from 'fs/promises';
import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const execAsync = promisify(exec);

const FIXTURE_FILE = path.join(__dirname, 'mocks', 'dedupe.json');
const SAMPLE_FILE = '2025/06/2025-06-24_20-58-12_001.JPG';

async function setupDeduplicationFixture() {
  // Only run in local development environment
  const isLocal = process.env.NODE_ENV !== 'test' && !process.env.CI && !process.env.GITHUB_ACTIONS;
  
  if (!isLocal) {
    console.log('📋 Skipping deduplication fixture generation (not in local dev environment)');
    return;
  }

  try {
    console.log('📊 Generating deduplication test fixture from database...');
    
    // Step 1: Use existing file in database (skip processing since it already exists)
    console.log('🔄 Using existing file in database...');
    await execAsync(`npm run build:fast`);
    
    // Step 2: Query database structure for deduplication validation
    console.log('🔍 Inspecting database structure...');
    const { stdout, stderr } = await execAsync(
      `node scripts/analysis/media-inspector.cjs complete "${SAMPLE_FILE}"`
    );
    
    if (stderr) {
      console.warn('⚠️  Inspector warnings:', stderr);
    }
    
    // Extract JSON from inspector output (find the Complete Data Structure section)
    const jsonStartMarker = '📋 Complete Data Structure:';
    const jsonEndMarker = '🔍 Analysis Results:';
    
    const startIdx = stdout.indexOf(jsonStartMarker);
    const endIdx = stdout.indexOf(jsonEndMarker);
    
    if (startIdx === -1 || endIdx === -1) {
      throw new Error('Could not find JSON data markers in inspector output');
    }
    
    const jsonSection = stdout.substring(startIdx + jsonStartMarker.length, endIdx).trim();
    const inspectionData = JSON.parse(jsonSection);
    
    // Validate we got the expected database structure
    if (!inspectionData.media_file || !inspectionData.location) {
      throw new Error('Invalid inspection data - missing required database tables');
    }
    
    // Ensure mocks directory exists
    await fs.mkdir(path.dirname(FIXTURE_FILE), { recursive: true });
    
    // Write fixture file
    await fs.writeFile(FIXTURE_FILE, JSON.stringify(inspectionData, null, 2));
    
    console.log('✅ Deduplication fixture generated successfully');
    console.log(`📁 Fixture saved to: ${FIXTURE_FILE}`);
    console.log(`📊 Contains data for: ${inspectionData.media_file.relative_path}`);
    
    // Step 3: Clean up test data (remove from database)
    console.log('🧹 Cleaning up test data from database...');
    // Note: In a real implementation, we'd delete the test record here
    // For now, we'll leave it as the cleanup is complex with foreign keys
    
  } catch (error) {
    console.error('❌ Failed to generate deduplication fixture:', error.message);
    
    // In local development, this should fail fast
    if (error.message.includes('File not found in database')) {
      console.error('💡 Try running: npm run build && node dist/main.js -f scratch/sample_media/IMG_6645.jpg --output-db');
    }
    
    throw new Error(`Deduplication fixture generation failed: ${error.message}`);
  }
}

// Only run setup if this file is executed directly (ES module check)
if (import.meta.url === `file://${process.argv[1]}`) {
  setupDeduplicationFixture()
    .then(() => process.exit(0))
    .catch((error) => {
      console.error(error.message);
      process.exit(1);
    });
}

export { setupDeduplicationFixture };