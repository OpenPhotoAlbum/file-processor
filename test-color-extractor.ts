import { extractColorAnalysis, extractDominantColorOnly } from './src/services/colorExtractor.js';

async function testColorExtractor() {
    const imagePath = process.argv[2] || '/home/stephen/Documents/initial-media-processing/scratch/sample_media/IMG_6645.jpg';
    
    console.log(`\n🎨 Color Analysis for: ${imagePath.split('/').pop()}\n`);
    
    // Full analysis
    const analysis = await extractColorAnalysis(imagePath);
    
    console.log(`🔵 Dominant Color: ${analysis.dominantColor}`);
    console.log(`⚪ Mean Color: ${analysis.meanColor}`);
    console.log(`✨ Salient Color: ${analysis.salientColor || 'None detected'}`);
    
    console.log('\n🎯 Top Colors:');
    analysis.topColors.forEach((color, i) => {
        console.log(`   ${i + 1}. ${color.color} (${color.percentage}%)`);
    });
    
    console.log('\n📊 Analysis Info:');
    console.log(`   Image Size: ${analysis.colorProfile.imageSize}`);
    console.log(`   Quantization: ${analysis.colorProfile.quantizationLevel} colors`);
    console.log(`   Method: ${analysis.colorProfile.analysisMethod}`);
    
    // Test single dominant color extraction (for database)
    console.log('\n💾 Database Storage:');
    const dbColor = await extractDominantColorOnly(imagePath);
    console.log(`   dominant_color_hex: '${dbColor}'`);
}

testColorExtractor().catch(console.error);