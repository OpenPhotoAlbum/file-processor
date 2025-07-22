#!/usr/bin/env node

import fs from 'fs';
import path from 'path';
import dotenv from 'dotenv';
import FormData from 'form-data';
import fetch from 'node-fetch';

dotenv.config();

async function transcribeImage(imagePath) {
  if (!imagePath) {
    console.error('Usage: npm run transcribe <image-path>');
    process.exit(1);
  }

  if (!fs.existsSync(imagePath)) {
    console.error(`Error: Image file not found: ${imagePath}`);
    process.exit(1);
  }

  const apiKey = process.env.IMAGETOTEXT_API_KEY;
  if (!apiKey) {
    console.error('Error: IMAGETOTEXT_API_KEY not found in .env file');
    process.exit(1);
  }

  try {
    console.log(`Transcribing: ${imagePath}`);
    
    const form = new FormData();
    form.append('image', fs.createReadStream(imagePath));

    const response = await fetch('https://www.imagetotext.info/api/imageToText', {
      method: 'POST',
      headers: {
        'Authorization': `Bearer ${apiKey}`,
        ...form.getHeaders()
      },
      body: form
    });

    const result = await response.json();
    
    if (result.error) {
      console.error('API Error:', result.message);
      process.exit(1);
    }

    // Clean up HTML entities and formatting
    let cleanText = result.result
      .replace(/\ufeff/g, '') // Remove BOM
      .replace(/<br\s*\/?>/g, '\n') // Convert <br> to newlines
      .replace(/&amp;/g, '&') // Convert HTML entities
      .replace(/&#039;/g, "'")
      .replace(/&quot;/g, '"')
      .replace(/&lt;/g, '<')
      .replace(/&gt;/g, '>')
      .replace(/\r\n/g, '\n') // Normalize line endings
      .replace(/\r/g, '\n')
      .trim();

    // Generate output filename
    const outputPath = imagePath + '.txt';
    
    // Write cleaned text to file
    fs.writeFileSync(outputPath, cleanText, 'utf8');
    
    console.log(`✅ Transcription saved: ${outputPath}`);
    console.log(`📝 Text preview: ${cleanText.substring(0, 100)}${cleanText.length > 100 ? '...' : ''}`);
    
  } catch (error) {
    console.error('Error:', error.message);
    process.exit(1);
  }
}

// Get image path from command line arguments
const imagePath = process.argv[2];
transcribeImage(imagePath);