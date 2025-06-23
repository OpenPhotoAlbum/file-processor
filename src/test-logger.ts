/**
 * Test the logger system with different components and log levels
 */

import { config } from 'dotenv';
import { Logger } from './utils/logging/index.js';
import { validateLoggingConfig } from './utils/config/logging.js';

// Load environment variables first
config();

// Validate configuration and show any warnings
const { config: logConfig, warnings } = validateLoggingConfig();
if (warnings.length > 0) {
  console.warn('⚠️  Logging configuration warnings:');
  warnings.forEach(warning => console.warn(`   ${warning}`));
  console.log('');
}

console.log('📋 Current logging configuration:');
console.log(`   Level: ${logConfig.level}`);
console.log(`   Outputs: ${logConfig.outputs.join(', ')}`);
console.log(`   File path: ${logConfig.filePath}`);
console.log(`   Colors: ${logConfig.colorize ? 'enabled' : 'disabled'}`);
console.log('');

// Create loggers for different components
const imageProcessor = new Logger('Image Processor');
const gpsExtractor = new Logger('GPS Extraction');
const exifExtractor = new Logger('EXIF Extractor');
const validator = new Logger('Image Validation');
const router = new Logger('Pipeline Router');

async function testLogger() {
  console.log('🧪 Testing Logger System\n');
  
  // Test different log levels
  imageProcessor.info('Starting metadata extraction', { 
    fileId: 'sample:jpg_with_gps_iphone.JPG',
    size: 1740252 
  });
  
  exifExtractor.debug('Running ExifTool command', { 
    command: 'exiftool -json -G', 
    timeout: 5000 
  });
  
  gpsExtractor.info('Found GPS coordinates', { 
    latitude: 42.985177,
    longitude: -70.951147,
    source: 'exif' 
  });
  
  gpsExtractor.warn('GPS conflict detected', { 
    sources: ['exif', 'google'],
    distance: '50m',
    primary: 'exif' 
  });
  
  validator.error('File signature validation failed', 
    new Error('Invalid JPEG signature'), 
    { 
      fileId: 'sample:corrupt.jpg',
      expected: 'ffd8ff',
      actual: '89504e' 
    }
  );
  
  router.info('Routing to processor', { 
    mimeType: 'image/heic',
    processor: 'ImageProcessor' 
  });
  
  imageProcessor.info('Extraction completed', { 
    fileId: 'sample:jpg_with_gps_iphone.JPG',
    fieldsExtracted: 25,
    duration: '340ms' 
  });
  
  // Test fatal error
  imageProcessor.fatal('Critical processing failure', 
    new Error('Out of memory'), 
    { 
      fileId: 'sample:huge_file.jpg',
      memoryUsed: '8GB' 
    }
  );

  console.log('\n✅ Logger test completed!');
  console.log('📁 Check logs/test.log for file output');
}

// Run the test
testLogger().catch(console.error);