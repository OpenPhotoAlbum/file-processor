const sharp = require('sharp');
const Vibrant = require('node-vibrant');

async function testColors() {
    const imagePath = '/home/stephen/Documents/initial-media-processing/scratch/sample_media/IMG_6645.jpg';
    
    // Mean color test
    const stats = await sharp(imagePath).stats();
    const [r, g, b] = stats.channels.map(c => Math.round(c.mean));
    const meanHex = '#' + [r, g, b].map(x => x.toString(16).padStart(2, '0')).join('');
    
    console.log(`Mean Color: ${meanHex} (RGB: ${r}, ${g}, ${b})`);
    
    // Vibrant colors
    const palette = await Vibrant.from(imagePath).getPalette();
    console.log('\nVibrant.js Palette:');
    console.log(`- Vibrant: ${palette.Vibrant?.hex || 'N/A'}`);
    console.log(`- DarkVibrant: ${palette.DarkVibrant?.hex || 'N/A'}`);
    console.log(`- LightVibrant: ${palette.LightVibrant?.hex || 'N/A'}`);
    console.log(`- Muted: ${palette.Muted?.hex || 'N/A'}`);
    console.log(`- DarkMuted: ${palette.DarkMuted?.hex || 'N/A'}`);
    console.log(`- LightMuted: ${palette.LightMuted?.hex || 'N/A'}`);
}

testColors().catch(console.error);