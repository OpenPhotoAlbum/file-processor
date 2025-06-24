import { config } from 'dotenv';
import { processFile } from './pipeline/entry.js';
import { toAbsolutePath } from './utils/paths.js';

// Load environment variables
config();

/**
 * Simple test script to verify the pipeline structure works
 */
async function main() {
  // Use relative paths that get resolved via environment variables
  const testFiles = [
    'sample:jpg_with_gps_iphone.JPG',
    'sample:heic_sample1.HEIC',
    'sample:mov_sample.MOV'
  ];

  for (const relativePath of testFiles) {
    console.log('\n' + '='.repeat(50));
    // Convert relative path to absolute for processing
    const absolutePath = toAbsolutePath(relativePath);
    const result = await processFile(absolutePath);
    console.log('Result:', JSON.stringify(result, null, 2));
  }
}

// Run if called directly
if (import.meta.url === `file://${process.argv[1]}`) {
  main().catch(console.error);
}