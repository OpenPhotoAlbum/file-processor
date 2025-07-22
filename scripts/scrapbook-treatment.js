#!/usr/bin/env node

import fs from 'fs';
import path from 'path';
import dotenv from 'dotenv';
import FormData from 'form-data';
import fetch from 'node-fetch';
import { execSync } from 'child_process';
import readline from 'readline';

dotenv.config();

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

async function question(prompt) {
  return new Promise((resolve) => {
    rl.question(prompt, resolve);
  });
}

// GPS coordinates for common locations
const LOCATIONS = {
  'Lancaster,PA': { lat: 40.0379, lng: -76.3055 },
  'Lawrence,MA': { lat: 42.7067, lng: -71.1631 },
  'Boston,MA': { lat: 42.3601, lng: -71.0589 },
  'Constantinople': { lat: 41.0082, lng: 28.9784 },
  'Syracuse,NY': { lat: 43.0481, lng: -76.1474 }
};

async function ocrImage(imagePath) {
  const apiKey = process.env.IMAGETOTEXT_API_KEY;
  if (!apiKey) {
    throw new Error('IMAGETOTEXT_API_KEY not found in .env file');
  }

  console.log(`📸 OCR processing: ${path.basename(imagePath)}`);
  
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
    throw new Error(`API Error: ${result.message}`);
  }

  // Clean up HTML entities and formatting
  return result.result
    .replace(/\ufeff/g, '')
    .replace(/<br\s*\/?>/g, '\n')
    .replace(/&amp;/g, '&')
    .replace(/&#039;/g, "'")
    .replace(/&quot;/g, '"')
    .replace(/&lt;/g, '<')
    .replace(/&gt;/g, '>')
    .replace(/\r\n/g, '\n')
    .replace(/\r/g, '\n')
    .trim();
}

function detectSeries(imagePath) {
  const filename = path.basename(imagePath);
  
  // Stephen baby book pattern: 001-1751828227535.jpg
  const babyBookMatch = filename.match(/^(\d{3})-\d+\.jpg$/);
  if (babyBookMatch) {
    const pageNum = parseInt(babyBookMatch[1]);
    return {
      type: 'stephen-baby-book',
      pageNumber: pageNum,
      totalPages: 32,
      seriesName: 'Stephen-Young-Baby-Book-32-Pages',
      description: `Page ${pageNum} of 32-page baby book series documenting Stephen Young childhood 1986-1990`
    };
  }

  // Ancestry pattern: various formats in ancestry/done/
  if (imagePath.includes('/ancestry/')) {
    return {
      type: 'ancestry-document',
      seriesName: 'Family-Heritage-Collection',
      description: 'Heritage family document with genealogical and historical significance'
    };
  }

  return null;
}

function generateBabyBookContext(pageNumber, ocrText) {
  // Baby book specific context based on page number patterns
  const contexts = {
    1: 'Cover page',
    2: 'Birth announcement and details', 
    3: 'First month calendar',
    4: 'Hospital photos and documentation',
    5: 'Second month development',
    6: 'World events during birth year',
    7: 'June 1986 calendar - two months old',
    8: 'Family photos and first home address',
    9: 'July 1986 baptism and three months',
    10: 'Family tree and genealogy',
    11: 'August 1986 four months development',
    12: 'Growth chart and measurements',
    13: 'September 1986 five months mobility',
    14: 'Health record and immunizations',
    15: 'October 1986 six months milestones',
    16: 'Feeding habits documentation',
    17: 'November 1986 seven months crawling'
  };

  return contexts[pageNumber] || `Baby book page ${pageNumber}`;
}

async function getClaudeAnalysis(imagePath, ocrText) {
  // This function will prompt Claude to analyze the image
  console.log(`🤖 Requesting Claude's visual analysis of ${path.basename(imagePath)}...`);
  console.log(`📋 OCR Text for context: ${ocrText.substring(0, 150)}...`);
  console.log(`\n🔍 Please analyze this image and provide:\n`);
  console.log(`   - Visual observations (layout, photos, decorations, condition)`);
  console.log(`   - Contextual insights (time period indicators, cultural elements)`);
  console.log(`   - Heritage significance (family importance, emotional context)`);
  console.log(`   - Preservation notes (document condition, notable features)\n`);
  
  const analysis = await question(`Enter Claude's analysis: `);
  return analysis;
}

async function createFormattedTranscription(imagePath, ocrText, context, claudeAnalysis) {
  const series = detectSeries(imagePath);
  const filename = path.basename(imagePath, '.jpg');
  
  let content = `${series?.seriesName || 'Document'} - Page ${filename} Transcription\n`;
  
  if (series?.type === 'stephen-baby-book') {
    content += `${generateBabyBookContext(series.pageNumber, ocrText)}\n\n`;
  }
  
  content += `${ocrText}\n\n`;
  content += `---\n`;
  content += `Family Context: ${context.familyContext || 'Please add family context and significance'}\n\n`;
  
  if (series?.type === 'stephen-baby-book') {
    content += `Developmental Milestones: ${context.milestones || 'Document developmental achievements for this period'}\n\n`;
    content += `Family Activities: ${context.activities || 'Record family events and activities'}\n\n`;
  }
  
  if (claudeAnalysis) {
    content += `Visual Analysis: ${claudeAnalysis}\n\n`;
  }
  
  content += `Historical Significance: ${context.significance || 'Describe historical importance and family heritage value'}\n\n`;
  content += `Page Details: ${series?.description || 'Document details and collection information'}`;

  return content;
}

async function applyExifMetadata(imagePath, context, series, claudeAnalysis) {
  const { date, location, description, keywords } = context;
  
  console.log(`🏷️  Applying EXIF metadata to ${path.basename(imagePath)}`);
  
  // Set date
  if (date) {
    execSync(`exiftool -overwrite_original -DateTimeOriginal="${date}" "${imagePath}"`);
  }
  
  // Set GPS coordinates
  if (location && LOCATIONS[location]) {
    const { lat, lng } = LOCATIONS[location];
    execSync(`exiftool -overwrite_original -GPSLatitude=${lat} -GPSLongitude=${lng} -GPSLatitudeRef=N -GPSLongitudeRef=W "${imagePath}"`);
  }
  
  // Set description (enhanced with Claude's insights)
  if (description) {
    let enhancedDescription = description;
    if (claudeAnalysis) {
      enhancedDescription += ` Claude's visual analysis: ${claudeAnalysis.substring(0, 200)}${claudeAnalysis.length > 200 ? '...' : ''}`;
    }
    execSync(`exiftool -overwrite_original -ImageDescription="${enhancedDescription.replace(/"/g, '\\"')}" "${imagePath}"`);
  }
  
  // Set keywords
  if (keywords) {
    execSync(`exiftool -overwrite_original -Keywords="${keywords}" "${imagePath}"`);
  }
  
  // Standard metadata
  execSync(`exiftool -overwrite_original -Creator="Heritage Archive" -Copyright="Family Archive" -Subject="Family History" "${imagePath}"`);
  
  // Heritage marker for 100% reliable detection
  execSync(`exiftool -overwrite_original -DigitalSourceType="Scanned from original" "${imagePath}"`);
  
  // Claude's analysis in UserComment field
  if (claudeAnalysis) {
    execSync(`exiftool -overwrite_original -UserComment="Claude Analysis: ${claudeAnalysis.substring(0, 100).replace(/"/g, '\\"')}" "${imagePath}"`);
  }
  
  // Series linking
  if (series) {
    execSync(`exiftool -overwrite_original -DocumentName="${series.seriesName}" -Software="${series.description}" "${imagePath}"`);
  }
  
  console.log(`✅ EXIF metadata applied with Claude's insights`);
}

async function fullAutomation(imagePath, options) {
  console.log(`🤖 Full automation mode for ${path.basename(imagePath)}`);
  
  // OCR
  const ocrText = await ocrImage(imagePath);
  
  // Get Claude's analysis
  const claudeAnalysis = options.skipClaude ? null : await getClaudeAnalysis(imagePath, ocrText);
  
  // Auto-detect series
  const series = detectSeries(imagePath);
  
  // Create context from options
  const context = {
    date: options.date,
    location: options.location,
    description: options.description,
    keywords: options.keywords,
    familyContext: options.familyContext || 'Auto-processed heritage document',
    significance: options.significance || 'Part of family archive preservation project'
  };
  
  // Create formatted transcription
  const transcription = await createFormattedTranscription(imagePath, ocrText, context, claudeAnalysis);
  const txtPath = imagePath + '.txt';
  fs.writeFileSync(txtPath, transcription, 'utf8');
  console.log(`📝 Transcription saved: ${txtPath}`);
  
  // Apply EXIF
  await applyExifMetadata(imagePath, context, series, claudeAnalysis);
  
  console.log(`🎉 Full treatment completed for ${path.basename(imagePath)}`);
}

async function interactiveMode(imagePath) {
  console.log(`🎯 Interactive mode for ${path.basename(imagePath)}`);
  
  // OCR first
  const ocrText = await ocrImage(imagePath);
  const series = detectSeries(imagePath);
  
  console.log(`\n📖 OCR Result Preview:\n${ocrText.substring(0, 200)}...\n`);
  
  // Get Claude's analysis
  const claudeAnalysis = await getClaudeAnalysis(imagePath, ocrText);
  
  // Interactive prompts
  const date = await question('📅 Enter date (YYYY:MM:DD HH:MM:SS): ');
  const location = await question(`📍 Enter location (${Object.keys(LOCATIONS).join(', ')} or custom): `);
  const description = await question('📄 Enter description: ');
  const keywords = await question('🏷️  Enter keywords (comma-separated): ');
  const familyContext = await question('👨‍👩‍👧‍👦 Enter family context: ');
  const significance = await question('⭐ Enter historical significance: ');
  
  const context = {
    date, location, description, keywords, familyContext, significance
  };
  
  // Create formatted transcription
  const transcription = await createFormattedTranscription(imagePath, ocrText, context, claudeAnalysis);
  const txtPath = imagePath + '.txt';
  fs.writeFileSync(txtPath, transcription, 'utf8');
  console.log(`📝 Transcription saved: ${txtPath}`);
  
  // Apply EXIF
  await applyExifMetadata(imagePath, context, series, claudeAnalysis);
  
  console.log(`🎉 Interactive treatment completed!`);
  rl.close();
}

async function exifOnlyMode(imagePath) {
  console.log(`🏷️  EXIF-only mode for ${path.basename(imagePath)}`);
  
  const txtPath = imagePath + '.txt';
  if (!fs.existsSync(txtPath)) {
    console.error(`Error: No .txt file found at ${txtPath}`);
    process.exit(1);
  }
  
  const series = detectSeries(imagePath);
  
  // Auto-detect context from existing txt file
  const txtContent = fs.readFileSync(txtPath, 'utf8');
  
  let context = {
    description: 'Heritage document with family significance',
    keywords: 'family history,heritage,archive',
    location: 'Lawrence,MA' // Default
  };
  
  // Smart detection for baby book
  if (series?.type === 'stephen-baby-book') {
    context.location = series.pageNumber <= 8 ? 'Lancaster,PA' : 'Lawrence,MA';
    context.keywords = 'Stephen Young,baby book,family history,childhood development,1986-1990';
    
    // Extract date hints from content
    if (txtContent.includes('1986')) {
      const monthMatch = txtContent.match(/(January|February|March|April|May|June|July|August|September|October|November|December) 1986/);
      if (monthMatch) {
        const months = ['January','February','March','April','May','June','July','August','September','October','November','December'];
        const monthNum = months.indexOf(monthMatch[1]) + 1;
        context.date = `1986:${monthNum.toString().padStart(2, '0')}:15 12:00:00`;
      }
    }
  }
  
  await applyExifMetadata(imagePath, context, series);
  
  console.log(`🎉 EXIF treatment completed!`);
}

// Main execution
async function main() {
  const args = process.argv.slice(2);
  const imagePath = args[0];
  
  if (!imagePath) {
    console.log(`
🔧 Heritage Photo Scrapbook Treatment Tool

This tool adds comprehensive metadata to heritage photos including:
- Rich descriptions and contextual information
- Series linking and document organization  
- IPTC metadata for professional archival standards
- DigitalSourceType marker for automatic heritage detection

The DigitalSourceType="Scanned from original" field ensures photos are 
automatically classified as heritage documents by the processing pipeline.

Usage:
  npm run scrapbook-treatment <image> [options]

Modes:
  --auto                     Full automation with minimal options
  --interactive             Interactive mode with prompts  
  --exif-only               Apply EXIF only (requires existing .txt)

Auto mode options:
  --date="YYYY:MM:DD HH:MM:SS"
  --location="Lancaster,PA"  
  --description="text"
  --keywords="comma,separated"
  --family-context="text"
  --skip-claude               Skip Claude's visual analysis

Examples:
  npm run scrapbook-treatment baby001.jpg --auto --date="1986:04:15 12:00:00" --location="Lancaster,PA"
  npm run scrapbook-treatment document.jpg --interactive
  npm run scrapbook-treatment heritage.jpg --exif-only
`);
    process.exit(1);
  }
  
  if (!fs.existsSync(imagePath)) {
    console.error(`Error: Image file not found: ${imagePath}`);
    process.exit(1);
  }
  
  try {
    if (args.includes('--interactive')) {
      await interactiveMode(imagePath);
    } else if (args.includes('--exif-only')) {
      await exifOnlyMode(imagePath);
    } else {
      // Auto mode (default)
      const options = {};
      args.forEach(arg => {
        if (arg.startsWith('--date=')) options.date = arg.split('=')[1];
        if (arg.startsWith('--location=')) options.location = arg.split('=')[1];
        if (arg.startsWith('--description=')) options.description = arg.split('=')[1];
        if (arg.startsWith('--keywords=')) options.keywords = arg.split('=')[1];
        if (arg.startsWith('--family-context=')) options.familyContext = arg.split('=')[1];
        if (arg === '--skip-claude') options.skipClaude = true;
      });
      
      await fullAutomation(imagePath, options);
    }
  } catch (error) {
    console.error('Error:', error.message);
    process.exit(1);
  }
}

main();