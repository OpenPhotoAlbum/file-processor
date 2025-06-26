#!/usr/bin/env ts-node

import * as fs from 'fs';
import * as path from 'path';
import { PhotoBrowserGenerator } from './PhotoBrowserGenerator';
// Use the same interface as PhotoBrowserGenerator

async function generateTestPage() {
  console.log('🚀 Starting Phase 0: Single Photo Page Generation');
  
  // Our test photo (Acadia beach scene)
  const testPhotoPath = '/photos/archive/2022/01/2022-01-01_00-00-00_008.jpeg';
  const testMetadataPath = testPhotoPath + '.json';
  
  console.log(`📸 Using test photo: ${testPhotoPath}`);
  
  // Load metadata
  let metadata: any;
  try {
    const metadataContent = fs.readFileSync(testMetadataPath, 'utf-8');
    metadata = JSON.parse(metadataContent);
    console.log('✅ Metadata loaded successfully');
    console.log(`📊 Landmarks found: ${metadata.location.landmarks?.length || 0}`);
    console.log(`📍 GPS coordinates: ${metadata.location.primary ? 'Yes' : 'No'}`);
  } catch (error) {
    console.error('❌ Failed to load metadata:', error);
    return;
  }
  
  // Generate page
  console.log('🔨 Generating photo browser page...');
  const generator = new PhotoBrowserGenerator();
  const html = generator.generatePhotoPage(testPhotoPath, metadata);
  
  // Save output
  const outputPath = '/home/stephen/Documents/initial-media-processing/test-photo-page.html';
  fs.writeFileSync(outputPath, html);
  
  console.log('✅ Photo page generated successfully!');
  console.log(`📄 Output: ${outputPath}`);
  console.log('🌐 Open in browser to view the result');
  
  // Show some stats
  console.log('\n📊 Photo Statistics:');
  console.log(`- Camera: ${metadata.camera?.make} ${metadata.camera?.model}`);
  console.log(`- Dimensions: ${metadata.media.dimensions.width}×${metadata.media.dimensions.height}`);
  console.log(`- File size: ${(metadata.file.size / 1024 / 1024).toFixed(1)} MB`);
  console.log(`- Landmarks: ${metadata.location.landmarks?.length || 0}`);
  if (metadata.location.landmarks && metadata.location.landmarks.length > 0) {
    console.log('- Landmark names:');
    metadata.location.landmarks.forEach(l => {
      console.log(`  • ${l.landmark.name} (${l.source})`);
    });
  }
}

// Run the generator
generateTestPage().catch(console.error);