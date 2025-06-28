import sharp from 'sharp';

export interface ColorAnalysis {
    dominantColor: string;           // Most frequent color after quantization
    meanColor: string;              // Average color after quantization  
    salientColor: string | null;    // Color that stands out most from surroundings
    topColors: Array<{              // Top 3 dominant colors with percentages
        color: string;
        percentage: number;
    }>;
    colorProfile: {                 // Analysis metadata
        quantizationLevel: number;
        imageSize: string;
        analysisMethod: string;
    };
}

function rgbToHex(r: number, g: number, b: number): string {
  return `#${  [r, g, b].map(x => {
    const hex = x.toString(16);
    return hex.length === 1 ? `0${  hex}` : hex;
  }).join('')}`;
}

// Calculate color distance for saliency detection
function colorDistance(r1: number, g1: number, b1: number, r2: number, g2: number, b2: number): number {
  return Math.sqrt(
    Math.pow(r2 - r1, 2) +
        Math.pow(g2 - g1, 2) +
        Math.pow(b2 - b1, 2)
  );
}

// Quantize image to reduce color palette
async function quantizeImage(imagePath: string, colors = 64): Promise<Buffer> {
  return await sharp(imagePath)
    .png({ palette: true, colors })
    .toBuffer();
}

// Extract dominant color using quantized histogram
async function extractDominantColor(imagePath: string, colors = 64): Promise<string> {
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
    
  // Return most frequent color
  const sorted = [...colorCounts.entries()].sort((a, b) => b[1] - a[1]);
  return sorted[0][0];
}

// Extract mean color from quantized image
async function extractMeanColor(imagePath: string, colors = 64): Promise<string> {
  const quantizedBuffer = await quantizeImage(imagePath, colors);
    
  const stats = await sharp(quantizedBuffer).stats();
  const [r, g, b] = stats.channels.map(c => Math.round(c.mean));
    
  return rgbToHex(r, g, b);
}

// Extract top N colors with percentages
async function extractTopColors(imagePath: string, topN = 3, colors = 64): Promise<Array<{color: string, percentage: number}>> {
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
    
  return [...colorCounts.entries()]
    .sort((a, b) => b[1] - a[1])
    .slice(0, topN)
    .map(([color, count]) => ({
      color,
      percentage: Math.round((count / totalPixels) * 100 * 100) / 100
    }));
}

// Find color that stands out most from its surroundings
async function extractSalientColor(imagePath: string, windowSize = 3): Promise<string | null> {
  try {
    const { data, info } = await sharp(imagePath)
      .resize(80, 80, { fit: 'inside' }) // Smaller for performance
      .raw()
      .toBuffer({ resolveWithObject: true });
        
    const { width, height, channels } = info;
    let maxSaliency = 0;
    let salientColor: string | null = null;
        
    // Check each pixel for how much it stands out
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
            if (dx === 0 && dy === 0) continue;
                        
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
                
        if (avgDistance > maxSaliency && avgDistance > 50) { // Minimum threshold
          maxSaliency = avgDistance;
          salientColor = rgbToHex(centerR, centerG, centerB);
        }
      }
    }
        
    return salientColor;
  } catch (error) {
    console.error('Error extracting salient color:', error);
    return null;
  }
}

// Main color extraction function
export async function extractColorAnalysis(imagePath: string): Promise<ColorAnalysis> {
  const quantizationLevel = 64; // Sweet spot of performance vs accuracy
    
  try {
    // Get image dimensions for metadata
    const metadata = await sharp(imagePath).metadata();
    const imageSize = `${metadata.width}x${metadata.height}`;
        
    // Extract all color information in parallel
    const [dominantColor, meanColor, topColors, salientColor] = await Promise.all([
      extractDominantColor(imagePath, quantizationLevel),
      extractMeanColor(imagePath, quantizationLevel),
      extractTopColors(imagePath, 3, quantizationLevel),
      extractSalientColor(imagePath)
    ]);
        
    return {
      dominantColor,
      meanColor,
      salientColor,
      topColors,
      colorProfile: {
        quantizationLevel,
        imageSize,
        analysisMethod: 'quantized_histogram_with_saliency'
      }
    };
  } catch (error) {
    throw new Error(`Failed to extract color analysis: ${error instanceof Error ? error.message : 'Unknown error'}`);
  }
}

// Utility function to get just the dominant color (for database storage)
export async function extractDominantColorOnly(imagePath: string): Promise<string> {
  return await extractDominantColor(imagePath, 64);
}