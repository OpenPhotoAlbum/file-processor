#!/usr/bin/env node

// Quick script to check if a file already exists in the database
// Usage: node check-file-in-db.js <file-path>

const crypto = require('crypto');
const fs = require('fs');
const knex = require('knex');
const path = require('path');

async function generateFileHash(filePath) {
  return new Promise((resolve, reject) => {
    const hash = crypto.createHash('md5');
    const stream = fs.createReadStream(filePath);
    
    stream.on('data', data => hash.update(data));
    stream.on('end', () => resolve(hash.digest('hex')));
    stream.on('error', reject);
  });
}

async function checkFileInDatabase(filePath) {
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
    const hash = await generateFileHash(filePath);
    const result = await db('media_files')
      .select('id', 'relative_path', 'created_at')
      .where('file_hash', hash)
      .first();
    
    if (result) {
      console.log('EXISTS');
      process.exit(0);
    } else {
      console.log('NOT_EXISTS');
      process.exit(1);
    }
  } catch (error) {
    console.error('ERROR:', error.message);
    process.exit(2);
  } finally {
    await db.destroy();
  }
}

const filePath = process.argv[2];
if (!filePath) {
  console.error('Usage: node check-file-in-db.js <file-path>');
  process.exit(2);
}

checkFileInDatabase(filePath);