#!/usr/bin/env node

// Script to clear incorrect software records so new logic can create correct ones
const knex = require('knex');

async function clearSoftware() {
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
    console.log('🧹 Clearing existing software records...');
    
    const associationsDeleted = await db('media_software').del();
    const softwareDeleted = await db('software').del();
    
    console.log(`✅ Deleted ${associationsDeleted} software associations`);
    console.log(`✅ Deleted ${softwareDeleted} software records`);
    console.log('🎯 Ready to test corrected software logic');
    
  } catch (error) {
    console.error('❌ Error:', error.message);
  } finally {
    await db.destroy();
  }
}

clearSoftware();