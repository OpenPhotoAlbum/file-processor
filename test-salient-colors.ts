import sharp from 'sharp';

function rgbToHex(r: number, g: number, b: number) {
    return "#" + [r, g, b].map(x => {
        const hex = x.toString(16);
        return hex.length === 1 ? "0" + hex : hex;
    }).join("");
}

// Calculate color difference using Delta E (simplified)
function colorDistance(r1: number, g1: number, b1: number, r2: number, g2: number, b2: number): number {
    return Math.sqrt(
        Math.pow(r2 - r1, 2) +
        Math.pow(g2 - g1, 2) +
        Math.pow(b2 - b2, 2)
    );
}

// Find colors that stand out from their local neighborhood
export const findSalientColors = async (imagePath: string, windowSize: number = 5): Promise<Array<{color: string, saliency: number, x: number, y: number}>> => {
    // Resize for performance and get raw pixel data
    const { data, info } = await sharp(imagePath)
        .resize(100, 100, { fit: 'inside' }) // Small size for performance
        .raw()
        .toBuffer({ resolveWithObject: true });
    
    const { width, height, channels } = info;
    const saliencyMap: Array<{color: string, saliency: number, x: number, y: number}> = [];
    
    // For each pixel, calculate how different it is from its neighborhood
    for (let y = windowSize; y < height - windowSize; y++) {
        for (let x = windowSize; x < width - windowSize; x++) {
            const centerIdx = (y * width + x) * channels;
            const centerR = data[centerIdx];
            const centerG = data[centerIdx + 1];
            const centerB = data[centerIdx + 2];
            
            let totalDistance = 0;
            let neighborCount = 0;
            
            // Check surrounding pixels in window
            for (let dy = -windowSize; dy <= windowSize; dy++) {
                for (let dx = -windowSize; dx <= windowSize; dx++) {
                    if (dx === 0 && dy === 0) continue; // Skip center pixel
                    
                    const neighborY = y + dy;
                    const neighborX = x + dx;
                    const neighborIdx = (neighborY * width + neighborX) * channels;
                    
                    const neighborR = data[neighborIdx];
                    const neighborG = data[neighborIdx + 1];
                    const neighborB = data[neighborIdx + 2];
                    
                    totalDistance += colorDistance(centerR, centerG, centerB, neighborR, neighborG, neighborB);
                    neighborCount++;
                }
            }
            
            const avgDistance = totalDistance / neighborCount;
            
            // Only record pixels with high saliency
            if (avgDistance > 50) { // Threshold for "standing out"
                saliencyMap.push({
                    color: rgbToHex(centerR, centerG, centerB),
                    saliency: avgDistance,
                    x: Math.round((x / width) * 100), // Percentage position
                    y: Math.round((y / height) * 100)
                });
            }
        }
    }
    
    // Sort by saliency and return top colors
    return saliencyMap
        .sort((a, b) => b.saliency - a.saliency)
        .slice(0, 10);
};

// Alternative: Find colors that are rare but vibrant (high saturation)
export const findVibrantOutliers = async (imagePath: string): Promise<Array<{color: string, saturation: number, rarity: number, score: number}>> => {
    const { data, info } = await sharp(imagePath)
        .resize(150, 150, { fit: 'inside' })
        .raw()
        .toBuffer({ resolveWithObject: true });
    
    const colorCounts = new Map<string, number>();
    const colorSaturations = new Map<string, number>();
    const totalPixels = data.length / info.channels;
    
    // Build color frequency and saturation maps
    for (let i = 0; i < data.length; i += info.channels) {
        const r = data[i];
        const g = data[i + 1];
        const b = data[i + 2];
        const hex = rgbToHex(r, g, b);
        
        // Calculate saturation (simplified HSV)
        const max = Math.max(r, g, b);
        const min = Math.min(r, g, b);
        const saturation = max === 0 ? 0 : (max - min) / max;
        
        colorCounts.set(hex, (colorCounts.get(hex) || 0) + 1);
        colorSaturations.set(hex, saturation);
    }
    
    const outliers: Array<{color: string, saturation: number, rarity: number, score: number}> = [];
    
    for (const [color, count] of colorCounts.entries()) {
        const frequency = count / totalPixels;
        const rarity = 1 - frequency; // Higher rarity = less frequent
        const saturation = colorSaturations.get(color) || 0;
        
        // Score combines rarity and saturation - rare + vibrant = interesting
        const score = rarity * saturation;
        
        // Only include colors that are both rare (< 1%) and somewhat saturated
        if (frequency < 0.01 && saturation > 0.3) {
            outliers.push({
                color,
                saturation: Math.round(saturation * 100) / 100,
                rarity: Math.round(rarity * 100) / 100,
                score: Math.round(score * 100) / 100
            });
        }
    }
    
    return outliers
        .sort((a, b) => b.score - a.score)
        .slice(0, 10);
};

// Test both methods
async function testSalientColors() {
    const imagePath = process.argv[2] || '/home/stephen/Documents/initial-media-processing/scratch/sample_media/IMG_6645.jpg';
    
    console.log(`Finding salient/standout colors in ${imagePath}...\n`);
    
    console.log('=== Local Contrast Method ===');
    const salientColors = await findSalientColors(imagePath);
    console.log('Top colors that stand out from their surroundings:');
    salientColors.slice(0, 5).forEach((item, i) => {
        console.log(`${i + 1}. ${item.color} (saliency: ${Math.round(item.saliency)}, pos: ${item.x}%,${item.y}%)`);
    });
    
    console.log('\n=== Vibrant Outliers Method ===');
    const outliers = await findVibrantOutliers(imagePath);
    console.log('Rare but vibrant colors:');
    outliers.slice(0, 5).forEach((item, i) => {
        console.log(`${i + 1}. ${item.color} (sat: ${item.saturation}, rarity: ${item.rarity}, score: ${item.score})`);
    });
}

testSalientColors().catch(console.error);