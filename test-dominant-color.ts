import sharp from 'sharp';

// Your mean color approach
export const dominantColorFromImageMean = async (imagepath: string): Promise<string> => {
    function rgbToHex(r: number, g: number, b: number) {
        return "#" + [r, g, b].map(x => {
          const hex = x.toString(16);
          return hex.length === 1 ? "0" + hex : hex;
        }).join("");
    }

    const s = sharp(imagepath);
    
    // Get metadata to determine bit depth
    const metadata = await s.metadata();
    const is16Bit = metadata.depth === 'ushort' || metadata.space?.includes('16');

    const { channels: [rc, gc, bc] } = await s.stats();

    // Normalize 16-bit values (0-65535) to 8-bit values (0-255)
    const normalize = (value: number) => {
        if (is16Bit) {
            return Math.round((value / 65535) * 255);
        }
        return Math.round(value);
    };

    const r = rc ? normalize(rc.mean) : 0;
    const g = gc ? normalize(gc.mean) : 0;
    const b = bc ? normalize(bc.mean) : 0;

    const dominantColor = rgbToHex(r,g,b);

    return dominantColor;
};

// Histogram-based approach
export const dominantColorFromImageHistogram = async (imagepath: string): Promise<string> => {
    function rgbToHex(r: number, g: number, b: number) {
        return "#" + [r, g, b].map(x => {
          const hex = x.toString(16);
          return hex.length === 1 ? "0" + hex : hex;
        }).join("");
    }

    const s = sharp(imagepath);
    
    // Resize for performance (dominant color doesn't need full resolution)
    const { data, info } = await s
        .resize(150, 150, { fit: 'inside' })
        .raw()
        .toBuffer({ resolveWithObject: true });
    
    // Build color histogram (quantize to reduce colors)
    const colorCounts = new Map<string, number>();
    const quantize = (value: number) => Math.round(value / 32) * 32; // Reduces 256 to 8 levels
    
    for (let i = 0; i < data.length; i += info.channels) {
        const r = quantize(data[i]);
        const g = quantize(data[i + 1]);
        const b = quantize(data[i + 2]);
        const key = rgbToHex(r, g, b);
        colorCounts.set(key, (colorCounts.get(key) || 0) + 1);
    }
    
    // Find most frequent color
    const sorted = [...colorCounts.entries()].sort((a, b) => b[1] - a[1]);
    const [dominantColor] = sorted[0];
    
    return dominantColor;
};

// Test both methods
async function testColorExtraction() {
    const imagePath = '/home/stephen/Documents/initial-media-processing/scratch/sample_media/IMG_6645.jpg';
    
    console.log('Testing color extraction methods on Thunder Hole image...\n');
    
    // Mean color method
    const meanColor = await dominantColorFromImageMean(imagePath);
    console.log(`Mean Color Method: ${meanColor}`);
    
    // Histogram method
    const histogramColor = await dominantColorFromImageHistogram(imagePath);
    console.log(`Histogram Method: ${histogramColor}`);
    
    // Try node-vibrant if available
    try {
        const Vibrant = await import('node-vibrant/node');
        const palette = await Vibrant.default.from(imagePath).getPalette();
        console.log('\nNode-Vibrant Palette:');
        console.log(`- Vibrant: ${palette.Vibrant?.hex || 'N/A'}`);
        console.log(`- DarkVibrant: ${palette.DarkVibrant?.hex || 'N/A'}`);
        console.log(`- LightVibrant: ${palette.LightVibrant?.hex || 'N/A'}`);
        console.log(`- Muted: ${palette.Muted?.hex || 'N/A'}`);
        console.log(`- DarkMuted: ${palette.DarkMuted?.hex || 'N/A'}`);
        console.log(`- LightMuted: ${palette.LightMuted?.hex || 'N/A'}`);
    } catch (error) {
        console.log('\nNode-Vibrant not available - install with: npm install node-vibrant');
    }
}

testColorExtraction().catch(console.error);