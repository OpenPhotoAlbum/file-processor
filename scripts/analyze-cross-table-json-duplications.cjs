#!/usr/bin/env node

// Script to analyze cross-table JSON column duplications

const knex = require('knex');

const db = knex({
  client: 'mysql2',
  connection: {
    host: process.env.DB_HOST || 'localhost',
    port: parseInt(process.env.DB_PORT || '3309'),
    user: process.env.DB_USER || 'kin',
    password: process.env.DB_PASSWORD || 'Dalekini21!',
    database: process.env.DB_NAME || 'kin'
  }
});

function compareObjects(obj1, obj2, path = '') {
  const differences = [];
  const duplications = [];
  
  if (!obj1 && !obj2) return { duplications, differences };
  if (!obj1 || !obj2) {
    differences.push(`${path}: one is null`);
    return { duplications, differences };
  }
  
  // Check if they're arrays
  if (Array.isArray(obj1) && Array.isArray(obj2)) {
    if (obj1.length === obj2.length) {
      duplications.push(`${path}: identical arrays (${obj1.length} items)`);
    } else {
      differences.push(`${path}: different array lengths (${obj1.length} vs ${obj2.length})`);
    }
    return { duplications, differences };
  }
  
  // Check if they're objects
  if (typeof obj1 === 'object' && typeof obj2 === 'object') {
    const keys1 = Object.keys(obj1);
    const keys2 = Object.keys(obj2);
    const allKeys = new Set([...keys1, ...keys2]);
    
    let hasIdenticalContent = true;
    
    for (const key of allKeys) {
      const newPath = path ? `${path}.${key}` : key;
      
      if (!(key in obj1)) {
        differences.push(`${newPath}: only in second object`);
        hasIdenticalContent = false;
      } else if (!(key in obj2)) {
        differences.push(`${newPath}: only in first object`);
        hasIdenticalContent = false;
      } else {
        const result = compareObjects(obj1[key], obj2[key], newPath);
        duplications.push(...result.duplications);
        differences.push(...result.differences);
        if (result.differences.length > 0) {
          hasIdenticalContent = false;
        }
      }
    }
    
    if (hasIdenticalContent && allKeys.size > 0) {
      duplications.push(`${path}: identical objects (${allKeys.size} keys)`);
    }
    
    return { duplications, differences };
  }
  
  // Primitive values
  if (obj1 === obj2) {
    duplications.push(`${path}: identical values`);
  } else {
    differences.push(`${path}: different values`);
  }
  
  return { duplications, differences };
}

async function analyzeCrossTableDuplications() {
  try {
    console.log('🔍 Analyzing cross-table JSON duplications...');
    
    // Get sample records with both media_metadata and related location data
    const sampleRecords = await db('media_files as mf')
      .leftJoin('media_locations as ml', 'mf.id', 'ml.file_id')
      .select(
        'mf.id',
        'mf.relative_path',
        'mf.media_metadata',
        'ml.geolocation_data'
      )
      .whereNotNull('mf.media_metadata')
      .whereNotNull('ml.geolocation_data')
      .limit(5);
    
    console.log(`📊 Analyzing ${sampleRecords.length} records with both JSON columns...\n`);
    
    const analysis = {
      total_location_duplications: 0,
      total_size_duplication: 0,
      duplication_patterns: new Map(),
      recommendations: []
    };
    
    for (const record of sampleRecords) {
      console.log(`🔎 Record ${record.id}: ${record.relative_path}`);
      
      try {
        // Parse JSON data
        let mediaMetadata = {};
        let geolocationData = {};
        
        if (typeof record.media_metadata === 'string') {
          mediaMetadata = JSON.parse(record.media_metadata);
        } else if (record.media_metadata) {
          mediaMetadata = record.media_metadata;
        }
        
        if (typeof record.geolocation_data === 'string') {
          geolocationData = JSON.parse(record.geolocation_data);
        } else if (record.geolocation_data) {
          geolocationData = record.geolocation_data;
        }
        
        // Compare location data structures
        const locationInMetadata = mediaMetadata.location || {};
        const comparison = compareObjects(locationInMetadata, geolocationData);
        
        if (comparison.duplications.length > 0) {
          console.log(`   📍 Location data duplications found:`);
          comparison.duplications.slice(0, 5).forEach(dup => {
            console.log(`      ✓ ${dup}`);
          });
          if (comparison.duplications.length > 5) {
            console.log(`      ... and ${comparison.duplications.length - 5} more duplications`);
          }
          
          analysis.total_location_duplications++;
          
          // Calculate size impact
          const locationMetadataSize = JSON.stringify(locationInMetadata).length;
          const geolocationDataSize = JSON.stringify(geolocationData).length;
          const duplicatedSize = Math.min(locationMetadataSize, geolocationDataSize);
          
          analysis.total_size_duplication += duplicatedSize;
          
          console.log(`   💾 Duplication size: ~${duplicatedSize} bytes`);
          
          // Track patterns
          const pattern = Object.keys(locationInMetadata).sort().join(',');
          if (!analysis.duplication_patterns.has(pattern)) {
            analysis.duplication_patterns.set(pattern, 0);
          }
          analysis.duplication_patterns.set(pattern, analysis.duplication_patterns.get(pattern) + 1);
        }
        
        if (comparison.differences.length > 0) {
          console.log(`   ⚠️  Differences found:`);
          comparison.differences.slice(0, 3).forEach(diff => {
            console.log(`      △ ${diff}`);
          });
          if (comparison.differences.length > 3) {
            console.log(`      ... and ${comparison.differences.length - 3} more differences`);
          }
        }
        
        console.log('');
        
      } catch (error) {
        console.log(`   ❌ Error processing: ${error.message}`);
      }
    }
    
    console.log('📊 CROSS-TABLE DUPLICATION ANALYSIS:');
    console.log('====================================');
    console.log(`Records with location duplications: ${analysis.total_location_duplications}/${sampleRecords.length}`);
    console.log(`Total duplicated size: ${analysis.total_size_duplication} bytes (${(analysis.total_size_duplication/1024).toFixed(1)} KB)`);
    console.log(`Average duplication per record: ${Math.round(analysis.total_size_duplication/sampleRecords.length)} bytes`);
    
    console.log('\n🔍 Common duplication patterns:');
    for (const [pattern, count] of analysis.duplication_patterns.entries()) {
      console.log(`   ${pattern}: ${count} occurrences`);
    }
    
    console.log('\n🎯 RECOMMENDATIONS:');
    console.log('==================');
    console.log('• Remove location data from media_files.media_metadata.location');
    console.log('• Keep location data only in media_locations.geolocation_data'); 
    console.log('• Benefits:');
    console.log('  - Eliminates ~' + Math.round(analysis.total_size_duplication/sampleRecords.length) + ' bytes per record duplication');
    console.log('  - Single source of truth for location data');
    console.log('  - Proper table separation (media data vs location data)');
    console.log('  - Prevents data inconsistency issues');
    
    // Estimate total database impact
    const totalMediaFiles = await db('media_files').count('id as count').first();
    const estimatedTotalSavings = Math.round(analysis.total_size_duplication/sampleRecords.length * (totalMediaFiles as any).count);
    
    console.log(`\n💾 Estimated total database savings: ${(estimatedTotalSavings/1024/1024).toFixed(1)} MB`);
    
  } catch (error) {
    console.error('💥 Fatal error:', error.message);
    console.error(error.stack);
    process.exit(1);
  } finally {
    await db.destroy();
  }
}

// Command line usage
if (require.main === module) {
  analyzeCrossTableDuplications();
}

module.exports = { analyzeCrossTableDuplications };