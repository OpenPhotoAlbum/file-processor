#!/usr/bin/env node

/**
 * Simple test script to process a few sample files
 */

import { processFile } from './dist/pipeline/entry.js';
import { readdir } from 'fs/promises';
import fs from 'fs/promises';

async function testSampleFiles() {
  console.log('🔍 Testing sample media files...');
  
  // Manually specify known sample files with correct paths
  const testFiles = [
    'scratch/sample_media/jpg_with_gps_iphone.JPG',
    'scratch/sample_media/jpg_canon_dslr.jpg', 
    'scratch/sample_media/jpg_no_gps.jpg',
    'scratch/sample_media/heic_sample1.HEIC',
    'scratch/sample_media/png_sample.PNG'
  ];
  
  const results = [];
  
  for (const filePath of testFiles) {
    try {
      console.log(`\n📸 Processing: ${filePath}`);
      
      const result = await processFile(filePath);
      
      const analysis = {
        filename: filePath,
        hasGPS: !!result.location?.primary,
        hasGeolocation: !!result.location?.geolocation,
        hasTimestamps: !!result.timestamps?.primary,
        gpsData: result.location?.primary || null,
        geolocationData: result.location?.geolocation || null,
        timestampData: result.timestamps?.primary || null,
        cameraData: result.media?.camera || null,
        errors: result.processing?.errors || [],
        success: !result.processing?.errors?.length
      };
      
      results.push(analysis);
      
      // Log key findings
      console.log(`  ✅ Processed successfully`);
      if (analysis.hasGPS) {
        console.log(`  📍 GPS: ${analysis.gpsData.latitude}, ${analysis.gpsData.longitude}`);
        if (analysis.hasGeolocation) {
          console.log(`  🏘️  Location: ${analysis.geolocationData.city}, ${analysis.geolocationData.state_code} (confidence: ${analysis.geolocationData.confidence})`);
        }
      } else {
        console.log(`  📍 No GPS data found`);
      }
      
      if (analysis.hasTimestamps) {
        console.log(`  🕐 Timestamp: ${analysis.timestampData.datetime}`);
      }
      
      if (analysis.cameraData?.make) {
        console.log(`  📷 Camera: ${analysis.cameraData.make} ${analysis.cameraData.model || ''}`);
      }
      
    } catch (error) {
      console.error(`❌ Failed to process ${filePath}: ${error.message}`);
      results.push({
        filename: filePath,
        error: error.message,
        success: false
      });
    }
  }
  
  // Generate summary
  console.log('\n' + '='.repeat(50));
  console.log('📊 SUMMARY');
  console.log('='.repeat(50));
  
  const successful = results.filter(r => r.success).length;
  const withGPS = results.filter(r => r.hasGPS).length;
  const withGeolocation = results.filter(r => r.hasGeolocation).length;
  const withTimestamps = results.filter(r => r.hasTimestamps).length;
  
  console.log(`Total files processed: ${results.length}`);
  console.log(`Successfully processed: ${successful}`);
  console.log(`Files with GPS: ${withGPS}`);
  console.log(`Files with geolocation: ${withGeolocation}`);
  console.log(`Files with timestamps: ${withTimestamps}`);
  
  // Show geolocation improvements
  if (withGeolocation > 0) {
    console.log('\n🌍 GEOLOCATION ENHANCEMENTS:');
    results.filter(r => r.hasGeolocation).forEach(r => {
      console.log(`  ${r.filename}: ${r.geolocationData.city}, ${r.geolocationData.state_code} (${r.geolocationData.confidence}% confidence, ${r.geolocationData.distance}m away)`);
    });
  }
  
  // Save results
  await fs.writeFile('sample-test-results.json', JSON.stringify(results, null, 2));
  console.log('\n💾 Results saved to sample-test-results.json');
}

testSampleFiles().catch(console.error);