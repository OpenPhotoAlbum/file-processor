#!/usr/bin/env node

// Script to check software associations in the database
const knex = require('knex');

async function checkSoftware() {
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
    console.log('🔍 Checking software data in database...\n');
    
    // Check total software records
    const totalSoftware = await db('software').count('* as count').first();
    const totalAssociations = await db('media_software').count('* as count').first();
    
    console.log(`📊 Software Records: ${totalSoftware.count}`);
    console.log(`📊 Software Associations: ${totalAssociations.count}\n`);
    
    if (totalSoftware.count > 0) {
      console.log('📱 Software found in database:');
      const software = await db('software')
        .select('id', 'name', 'software_type', 'version')
        .limit(10);
      
      software.forEach(sw => {
        console.log(`  ID=${sw.id}: name="${sw.name}" version="${sw.version || 'NULL'}" type=${sw.software_type}`);
      });
      
      console.log('\n🔗 Recent associations:');
      const associations = await db('media_software as ms')
        .join('software as s', 's.id', 'ms.software_id')
        .join('media_files as mf', 'mf.id', 'ms.file_id')
        .select('s.name', 's.version', 'ms.usage_role', 'mf.relative_path')
        .limit(5);
      
      associations.forEach(assoc => {
        console.log(`  ${assoc.relative_path}: ${assoc.name} ${assoc.version || ''} (${assoc.usage_role})`);
      });
    } else {
      console.log('❌ No software records found in database');
      console.log('   The SoftwareService may not be working correctly');
    }
    
  } catch (error) {
    console.error('❌ Error:', error.message);
  } finally {
    await db.destroy();
  }
}

checkSoftware();