#!/usr/bin/env node

// Script to verify the landmark duplicate fix and show GPS coordinate consistency
const knex = require('knex');

async function verifyLandmarkFix() {
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

  try {
    console.log('🔍 Checking for duplicate landmark associations...\n');
    
    // Check for duplicates
    const duplicates = await db('media_landmarks')
      .select('file_id', 'landmark_id')
      .count('* as count')
      .groupBy('file_id', 'landmark_id')
      .having('count', '>', 1);
    
    if (duplicates.length === 0) {
      console.log('✅ No duplicate file/landmark pairs found!');
      console.log('   The unique constraint is working correctly.\n');
    } else {
      console.log(`❌ Found ${duplicates.length} duplicate file/landmark pairs`);
      console.log('   Run the migration to fix this.\n');
    }
    
    // Check GPS coordinate precision
    console.log('📍 Checking GPS coordinate precision...\n');
    
    const locations = await db('media_locations')
      .select('latitude', 'longitude')
      .limit(10);
    
    console.log('Sample GPS coordinates:');
    locations.forEach(loc => {
      const latDecimals = String(loc.latitude).split('.')[1]?.length || 0;
      const lonDecimals = String(loc.longitude).split('.')[1]?.length || 0;
      console.log(`  Lat: ${loc.latitude} (${latDecimals} decimals), Lon: ${loc.longitude} (${lonDecimals} decimals)`);
    });
    
    // Check distance variations for same landmarks
    console.log('\n📏 Checking distance variations for landmarks...\n');
    
    const landmarkStats = await db('media_landmarks as ml')
      .join('landmarks as l', 'l.id', 'ml.landmark_id')
      .select('l.name')
      .min('ml.distance_meters as min_distance')
      .max('ml.distance_meters as max_distance')
      .count('* as photo_count')
      .groupBy('l.id', 'l.name')
      .having('photo_count', '>', 10)
      .orderByRaw('(MAX(ml.distance_meters) - MIN(ml.distance_meters)) DESC')
      .limit(10);
    
    console.log('Top 10 landmarks by distance variation:');
    console.log('(Large variations suggest GPS coordinate inconsistency)\n');
    
    landmarkStats.forEach(stat => {
      const variation = stat.max_distance - stat.min_distance;
      console.log(`  ${stat.name}:`);
      console.log(`    Photos: ${stat.photo_count}`);
      console.log(`    Distance range: ${stat.min_distance}m - ${stat.max_distance}m`);
      console.log(`    Variation: ${variation}m`);
    });
    
    console.log('\n✅ Analysis complete!');
    
  } catch (error) {
    console.error('❌ Error:', error.message);
  } finally {
    await db.destroy();
  }
}

verifyLandmarkFix();