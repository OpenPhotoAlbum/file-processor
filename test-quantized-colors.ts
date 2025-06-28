import sharp from 'sharp';

function rgbToHex(r: number, g: number, b: number) {
    return "#" + [r, g, b].map(x => {
        const hex = x.toString(16);
        return hex.length === 1 ? "0" + hex : hex;
    }).join("");
}

// Quantize colors to reduce palette
export const quantizeImage = async (imagePath: string, colors: number = 256): Promise<Buffer> => {
    return await sharp(imagePath)
        .png({ palette: true, colors }) // Force palette mode with specified colors
        .toBuffer();
};

// Your original mean method but on quantized image
export const meanColorFromQuantized = async (imagePath: string, colors: number = 256): Promise<string> => {
    const quantizedBuffer = await quantizeImage(imagePath, colors);
    
    const stats = await sharp(quantizedBuffer).stats();
    const [r, g, b] = stats.channels.map(c => Math.round(c.mean));
    
    return rgbToHex(r, g, b);
};

// Histogram method on quantized image
export const histogramFromQuantized = async (imagePath: string, colors: number = 256): Promise<string> => {
    const quantizedBuffer = await quantizeImage(imagePath, colors);
    
    const { data, info } = await sharp(quantizedBuffer)
        .resize(150, 150, { fit: 'inside' })
        .raw()
        .toBuffer({ resolveWithObject: true });
    
    const colorCounts = new Map<string, number>();
    
    for (let i = 0; i < data.length; i += info.channels) {
        const r = data[i];
        const g = data[i + 1];
        const b = data[i + 2];
        const key = rgbToHex(r, g, b);
        colorCounts.set(key, (colorCounts.get(key) || 0) + 1);
    }
    
    // Find most frequent color
    const sorted = [...colorCounts.entries()].sort((a, b) => b[1] - a[1]);
    return sorted[0][0];
};

// Get top N colors from quantized image
export const getTopColorsFromQuantized = async (imagePath: string, topN: number = 5, colors: number = 256): Promise<Array<{color: string, count: number, percentage: number}>> => {
    const quantizedBuffer = await quantizeImage(imagePath, colors);
    
    const { data, info } = await sharp(quantizedBuffer)
        .resize(150, 150, { fit: 'inside' })
        .raw()
        .toBuffer({ resolveWithObject: true });
    
    const colorCounts = new Map<string, number>();
    const totalPixels = data.length / info.channels;
    
    for (let i = 0; i < data.length; i += info.channels) {
        const r = data[i];
        const g = data[i + 1];
        const b = data[i + 2];
        const key = rgbToHex(r, g, b);
        colorCounts.set(key, (colorCounts.get(key) || 0) + 1);
    }
    
    // Get top N colors with percentages
    const sorted = [...colorCounts.entries()]
        .sort((a, b) => b[1] - a[1])
        .slice(0, topN)
        .map(([color, count]) => ({
            color,
            count,
            percentage: Math.round((count / totalPixels) * 100 * 100) / 100
        }));
    
    return sorted;
};

// Test different color quantization levels
async function testQuantizedColors() {
    const imagePath = process.argv[2] || '/home/stephen/Documents/initial-media-processing/scratch/sample_media/IMG_6645.jpg';
    
    console.log(`Testing quantized color extraction on ${imagePath}...\n`);
    
    // Test different quantization levels
    const quantizationLevels = [16, 32, 64, 128, 256];
    
    for (const numColors of quantizationLevels) {
        console.log(`=== ${numColors} Color Palette ===`);
        
        const meanColor = await meanColorFromQuantized(imagePath, numColors);
        console.log(`Mean Color: ${meanColor}`);
        
        const histogramColor = await histogramFromQuantized(imagePath, numColors);
        console.log(`Most Frequent: ${histogramColor}`);
        
        const topColors = await getTopColorsFromQuantized(imagePath, 3, numColors);
        console.log('Top 3 Colors:');
        topColors.forEach((c, i) => {
            console.log(`  ${i + 1}. ${c.color} (${c.percentage}%)`);
        });
        
        console.log('');
    }
}

testQuantizedColors().catch(console.error);