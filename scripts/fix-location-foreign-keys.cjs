#!/usr/bin/env node

// Script to populate missing foreign keys in media_locations table
// This fixes existing records that have geolocation_data but NULL city_id, state_id, country_id

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

async function fixLocationForeignKeys() {
  try {
    console.log('🔍 Finding media_locations records with missing foreign keys...');
    
    // Find all media_locations with geolocation_data but NULL foreign keys
    const recordsToFix = await db('media_locations')
      .select('file_id', 'geolocation_data')
      .where(function() {
        this.whereNull('city_id')
          .orWhereNull('state_id')
          .orWhereNull('country_id');
      })
      .whereNotNull('geolocation_data');
    
    console.log(`📊 Found ${recordsToFix.length} records to fix`);
    
    if (recordsToFix.length === 0) {
      console.log('✅ No records need fixing');
      return;
    }
    
    let fixed = 0;
    let errors = 0;
    
    for (const record of recordsToFix) {
      try {
        // Parse geolocation data (handle both string and object)
        let locationData;
        if (typeof record.geolocation_data === 'string') {
          locationData = JSON.parse(record.geolocation_data);
        } else if (typeof record.geolocation_data === 'object') {
          locationData = record.geolocation_data;
        } else {
          console.log(`⚠️  Invalid geolocation_data type for file_id ${record.file_id}: ${typeof record.geolocation_data}`);
          continue;
        }
        const geolocation = locationData.geolocation;
        
        if (!geolocation) {
          console.log(`⚠️  No geolocation data in record for file_id ${record.file_id}`);
          continue;
        }
        
        console.log(`🔧 Fixing file_id ${record.file_id}: ${geolocation.city}, ${geolocation.state_code}`);
        
        // Resolve foreign keys
        let cityId = null;
        let stateId = null;
        let countryId = null;
        
        // Resolve country (US is implied from state codes like MA)
        const countryCode = geolocation.state_code ? 'US' : null;
        if (countryCode) {
          const country = await db('geo_countries')
            .select('id')
            .where('country_code', countryCode)
            .first();
          if (country) {
            countryId = country.id;
            console.log(`   Country: ${countryCode} -> ID ${countryId}`);
          }
        }
        
        // Resolve state by state code
        if (geolocation.state_code) {
          const state = await db('geo_states')
            .select('id')
            .where('code', geolocation.state_code)
            .first();
          if (state) {
            stateId = state.id;
            console.log(`   State: ${geolocation.state_code} -> ID ${stateId}`);
          }
        }
        
        // Resolve city by name and state
        if (geolocation.city && stateId) {
          // Try exact city name match first
          let city = await db('geo_cities')
            .select('id')
            .where('city', geolocation.city)
            .where('state_code', geolocation.state_code)
            .first();
          
          // If no exact match, try case-insensitive search
          if (!city) {
            city = await db('geo_cities')
              .select('id')
              .whereRaw('LOWER(city) = LOWER(?)', [geolocation.city])
              .where('state_code', geolocation.state_code)
              .first();
          }
          
          if (city) {
            cityId = city.id;
            console.log(`   City: ${geolocation.city} -> ID ${cityId}`);
          } else {
            console.log(`   ⚠️  Could not resolve city: ${geolocation.city}, ${geolocation.state_code}`);
          }
        }
        
        // Update the record
        const updateData = {};
        if (cityId) updateData.city_id = cityId;
        if (stateId) updateData.state_id = stateId;
        if (countryId) updateData.country_id = countryId;
        
        if (Object.keys(updateData).length > 0) {
          await db('media_locations')
            .where('file_id', record.file_id)
            .update(updateData);
          
          console.log(`   ✅ Updated with: ${JSON.stringify(updateData)}`);
          fixed++;
        } else {
          console.log(`   ⚠️  No foreign keys could be resolved`);
        }
        
      } catch (error) {
        console.error(`❌ Error fixing file_id ${record.file_id}: ${error.message}`);
        errors++;
      }
    }
    
    console.log('\n📊 Summary:');
    console.log(`   Records processed: ${recordsToFix.length}`);
    console.log(`   Successfully fixed: ${fixed}`);
    console.log(`   Errors: ${errors}`);
    console.log('✅ Foreign key fix completed');
    
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
  fixLocationForeignKeys();
}

module.exports = { fixLocationForeignKeys };