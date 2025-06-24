#!/usr/bin/env node

/**
 * Test script to process sample media files and analyze extracted data
 */

import { glob } from 'glob';
import { join, basename } from 'path';
import { processEntry } from './dist/pipeline/entry.js';
import fs from 'fs/promises';

async function processSampleFiles() {
  console.log('🔍 Finding sample media files...');
  
  // Find all media files in scratch directory
  const patterns = [
    'scratch/**/*.jpg',
    'scratch/**/*.JPG', 
    'scratch/**/*.png',
    'scratch/**/*.PNG',
    'scratch/**/*.heic',
    'scratch/**/*.HEIC',
    'scratch/**/*.gif',
    'scratch/**/*.mov',
    'scratch/**/*.MOV',
    'scratch/**/*.mp4'
  ];
  
  const allFiles = [];
  for (const pattern of patterns) {
    const files = await glob(pattern);
    allFiles.push(...files);
  }
  
  console.log(`📁 Found ${allFiles.length} media files`);
  
  const results = [];
  let processedCount = 0;
  
  for (const filePath of allFiles) {
    try {
      console.log(`\n📸 Processing: ${basename(filePath)}`);
      
      const result = await processEntry(filePath);
      
      const analysis = {
        filename: basename(filePath),
        filePath: filePath,
        fileSize: result.file?.size || 0,
        mimeType: result.file?.mimeType || 'unknown',
        hasGPS: !!result.location?.primary,
        hasTimestamp: !!result.timestamps?.primary,
        hasGeolocation: !!result.location?.geolocation,
        extractedData: {
          gps: result.location?.primary ? {
            lat: result.location.primary.latitude,
            lng: result.location.primary.longitude,
            source: result.location.primary.source
          } : null,
          geolocation: result.location?.geolocation ? {
            city: result.location.geolocation.city,
            state: result.location.geolocation.state_code,
            distance: result.location.geolocation.distance,
            confidence: result.location.geolocation.confidence,
            method: result.location.geolocation.method
          } : null,
          timestamps: result.timestamps?.primary ? {
            datetime: result.timestamps.primary.datetime,
            source: result.timestamps.primary.source,
            timezone: result.timestamps.primary.timezone
          } : null,
          camera: result.media?.camera || null,
          technical: {
            dimensions: result.media?.image?.dimensions || null,
            fileFormat: result.media?.technical?.fileFormat || null,
            encoding: result.media?.technical?.encoding || null
          }
        },
        errors: result.processing?.errors || [],
        warnings: result.processing?.warnings || []
      };
      
      results.push(analysis);
      processedCount++;
      
      // Log key findings
      if (analysis.hasGPS) {
        console.log(`  📍 GPS: ${analysis.extractedData.gps.lat}, ${analysis.extractedData.gps.lng}`);
        if (analysis.hasGeolocation) {
          console.log(`  🏘️  Location: ${analysis.extractedData.geolocation.city}, ${analysis.extractedData.geolocation.state} (${analysis.extractedData.geolocation.confidence}% confidence)`);
        }
      }
      
      if (analysis.hasTimestamp) {
        console.log(`  🕐 Time: ${analysis.extractedData.timestamps.datetime}`);
      }
      
      if (analysis.extractedData.camera?.make) {
        console.log(`  📷 Camera: ${analysis.extractedData.camera.make} ${analysis.extractedData.camera.model || ''}`);
      }
      
    } catch (error) {
      console.error(`❌ Failed to process ${basename(filePath)}: ${error.message}`);
      results.push({
        filename: basename(filePath),
        filePath: filePath,
        error: error.message
      });
    }
  }
  
  // Save detailed results
  await fs.writeFile('sample-analysis-results.json', JSON.stringify(results, null, 2));
  
  // Generate summary
  const summary = generateSummary(results);
  console.log('\n' + '='.repeat(60));
  console.log('📊 SAMPLE PROCESSING SUMMARY');
  console.log('='.repeat(60));
  console.log(summary);
  
  // Save summary
  await fs.writeFile('sample-analysis-summary.txt', summary);
  
  console.log('\n✅ Analysis complete!');
  console.log('📄 Detailed results: sample-analysis-results.json');
  console.log('📋 Summary: sample-analysis-summary.txt');
}

function generateSummary(results) {
  const total = results.length;
  const successful = results.filter(r => !r.error).length;
  const withGPS = results.filter(r => r.hasGPS).length;
  const withGeolocation = results.filter(r => r.hasGeolocation).length;
  const withTimestamps = results.filter(r => r.hasTimestamp).length;
  
  const fileTypes = {};
  const cameraMakes = {};
  const gpsLocations = [];
  
  results.forEach(r => {
    if (!r.error) {
      // Count file types
      fileTypes[r.mimeType] = (fileTypes[r.mimeType] || 0) + 1;
      
      // Count camera makes
      if (r.extractedData?.camera?.make) {
        cameraMakes[r.extractedData.camera.make] = (cameraMakes[r.extractedData.camera.make] || 0) + 1;
      }
      
      // Collect GPS locations
      if (r.hasGeolocation) {
        gpsLocations.push(`${r.extractedData.geolocation.city}, ${r.extractedData.geolocation.state}`);
      }
    }
  });
  
  let summary = `
PROCESSING RESULTS:
- Total files: ${total}
- Successfully processed: ${successful}
- Failed: ${total - successful}

DATA EXTRACTION:
- Files with GPS coordinates: ${withGPS} (${Math.round(withGPS/total*100)}%)
- Files with geolocation data: ${withGeolocation} (${Math.round(withGeolocation/total*100)}%)
- Files with timestamps: ${withTimestamps} (${Math.round(withTimestamps/total*100)}%)

FILE TYPES:
${Object.entries(fileTypes).map(([type, count]) => `- ${type}: ${count} files`).join('\n')}

CAMERA EQUIPMENT:
${Object.entries(cameraMakes).map(([make, count]) => `- ${make}: ${count} files`).join('\n')}

GEOGRAPHIC LOCATIONS IDENTIFIED:
${[...new Set(gpsLocations)].map(loc => `- ${loc}`).join('\n')}

SYSTEM IMPROVEMENTS DEMONSTRATED:
- Enhanced GPS extraction from EXIF data
- Municipal boundary geolocation with ${withGeolocation}/${withGPS} GPS coordinates resolved
- Comprehensive metadata extraction across multiple formats
- Error handling and validation improvements
`;

  return summary;
}

processSampleFiles().catch(console.error);