#!/usr/bin/env node

// Script to demonstrate timezone conversion for database queries
const knex = require('knex');

async function checkTimezoneConversion() {
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
    console.log('🕐 Timezone Conversion Analysis\n');
    
    // Get recent files with timezone conversion
    const files = await db.raw(`
      SELECT 
        id,
        relative_path,
        created_at,
        CONVERT_TZ(created_at, '+00:00', '-04:00') as created_at_edt,
        updated_at,
        CONVERT_TZ(updated_at, '+00:00', '-04:00') as updated_at_edt,
        primary_timestamp,
        CONVERT_TZ(primary_timestamp, '+00:00', '-04:00') as primary_timestamp_edt
      FROM media_files 
      ORDER BY id DESC 
      LIMIT 3
    `);
    
    files[0].forEach(file => {
      console.log(`📁 File: ${file.relative_path}`);
      console.log(`   Created (UTC): ${file.created_at}`);
      console.log(`   Created (EDT): ${file.created_at_edt}`);
      console.log(`   Primary (UTC): ${file.primary_timestamp}`);
      console.log(`   Primary (EDT): ${file.primary_timestamp_edt}\n`);
    });
    
    console.log('💡 Solution Options:');
    console.log('1. Set Docker container TZ=America/New_York');
    console.log('2. Use CONVERT_TZ() in queries to display local time');
    console.log('3. Handle timezone conversion in JavaScript application layer');
    
  } catch (error) {
    console.error('❌ Error:', error.message);
  } finally {
    await db.destroy();
  }
}

checkTimezoneConversion();