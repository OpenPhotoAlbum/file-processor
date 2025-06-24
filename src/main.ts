import { config } from 'dotenv';
import { processFile } from './pipeline/entry.js';
import { toAbsolutePath, sanitizePathForLogging } from './utils/paths.js';
import { Logger } from './utils/logging/index.js';
import { createSystemErrorFactory } from './utils/errors/factories.js';

// Load environment variables
config();

/**
 * Simple test script to verify the pipeline structure works
 */
async function main() {
  const logger = new Logger('Main Pipeline');
  const systemErrors = createSystemErrorFactory(logger);
  
  // Use relative paths that get resolved via environment variables
  const testFiles = [
    'sample:jpg_with_gps_iphone.JPG',
    'sample:heic_sample1.HEIC',
    'sample:mov_sample.MOV'
  ];

  logger.info(`Starting pipeline test with ${testFiles.length} files`);

  for (const relativePath of testFiles) {
    console.log('\n' + '='.repeat(50));
    
    try {
      logger.info(`Processing: ${relativePath}`);
      
      // Convert relative path to absolute for processing
      const absolutePath = toAbsolutePath(relativePath);
      const safePath = sanitizePathForLogging(absolutePath);
      
      const result = await processFile(absolutePath);
      console.log('Result:', JSON.stringify(result, null, 2));
      
      if (result.success) {
        logger.info(`Successfully processed: ${safePath}`);
      } else {
        logger.warn(`Processing completed with warnings: ${safePath}`);
      }
      
    } catch (error) {
      const safePath = sanitizePathForLogging(relativePath);
      systemErrors.fileOperationFailed({
        filePath: safePath,
        operation: 'main pipeline processing'
      }, error as Error);
      
      console.error(`Failed to process ${relativePath}:`, error);
    }
  }
  
  logger.info('Pipeline test completed');
}

// Run if called directly
if (import.meta.url === `file://${process.argv[1]}`) {
  main().catch((error) => {
    const logger = new Logger('Main Pipeline');
    const systemErrors = createSystemErrorFactory(logger);
    
    systemErrors.fileOperationFailed({
      operation: 'main pipeline execution',
      stage: 'application startup'
    }, error as Error);
    
    console.error('Fatal error in main pipeline:', error);
    process.exit(1);
  });
}