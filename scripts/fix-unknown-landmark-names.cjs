#!/usr/bin/env node

// Script to fix landmarks with name="Unknown" by extracting actual names from provider_data

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

async function fixUnknownLandmarkNames() {
  try {
    console.log('🔍 Finding landmarks with name="Unknown"...');
    
    // Find all landmarks with name="Unknown"
    const unknownLandmarks = await db('landmarks')
      .select('id', 'name', 'provider', 'provider_data')
      .where('name', 'Unknown');
    
    console.log(`📊 Found ${unknownLandmarks.length} landmarks with name="Unknown"`);
    
    if (unknownLandmarks.length === 0) {
      console.log('✅ No landmarks need fixing');
      return;
    }
    
    let fixed = 0;
    let errors = 0;
    
    for (const landmark of unknownLandmarks) {
      try {
        // Parse provider data (handle both string and object)
        let providerData;
        if (typeof landmark.provider_data === 'string') {
          providerData = JSON.parse(landmark.provider_data);
        } else if (typeof landmark.provider_data === 'object') {
          providerData = landmark.provider_data;
        } else {
          console.log(`⚠️  Invalid provider_data type for landmark ${landmark.id}: ${typeof landmark.provider_data}`);
          continue;
        }
        
        // Extract the actual name from the nested structure
        let actualName = null;
        let actualCategory = null;
        
        // Try to extract from landmark.landmark.name (most common structure)
        if (providerData.landmark && providerData.landmark.name) {
          actualName = providerData.landmark.name;
          actualCategory = providerData.landmark.category || providerData.landmark.subcategory;
        }
        // Fallback to direct name
        else if (providerData.name) {
          actualName = providerData.name;
          actualCategory = providerData.category || providerData.type;
        }
        // Try fullName as fallback
        else if (providerData.landmark && providerData.landmark.fullName) {
          actualName = providerData.landmark.fullName;
          actualCategory = providerData.landmark.category || providerData.landmark.subcategory;
        }
        
        if (actualName && actualName !== 'Unknown') {
          console.log(`🔧 Fixing landmark ${landmark.id}: "${actualName}" (${landmark.provider})`);
          
          // Update the landmark
          const updateData = {
            name: actualName
          };
          
          // Also update category if we found a better one
          if (actualCategory) {
            updateData.category = actualCategory;
          }
          
          await db('landmarks')
            .where('id', landmark.id)
            .update(updateData);
          
          console.log(`   ✅ Updated: ${JSON.stringify(updateData)}`);
          fixed++;
        } else {
          console.log(`⚠️  Could not extract name for landmark ${landmark.id} (${landmark.provider})`);
          console.log(`   Provider data structure: ${JSON.stringify(providerData).substring(0, 200)}...`);
        }
        
      } catch (error) {
        console.error(`❌ Error fixing landmark ${landmark.id}: ${error.message}`);
        errors++;
      }
    }
    
    console.log('\n📊 Summary:');
    console.log(`   Landmarks processed: ${unknownLandmarks.length}`);
    console.log(`   Successfully fixed: ${fixed}`);
    console.log(`   Errors: ${errors}`);
    console.log('✅ Landmark name fix completed');
    
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
  fixUnknownLandmarkNames();
}

module.exports = { fixUnknownLandmarkNames };