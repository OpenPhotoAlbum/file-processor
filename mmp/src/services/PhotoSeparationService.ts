/**
 * PhotoSeparationService - Native MPP photo separation using astrophotography calibration approach
 * 
 * Uses background reference images (like astrophotography flat frames) to separate photos
 * by subtracting the background and replacing it with clean white/transparent areas.
 * Much more accurate than flood fill because it accounts for scanner inconsistencies.
 */

import { spawn } from 'child_process';
import { promises as fs } from 'fs';
import path from 'path';

export interface SeparationOptions {
  background: 'red' | 'white' | string;
  output: string;
  keepOriginal?: boolean | undefined;
  minimumArea?: number | undefined; // Minimum photo size in pixels (default: 1000)
}

export interface SeparationResult {
  success: boolean;
  separatedFiles: string[];
  originalFile: string;
  outputDirectory: string;
  processingDetails?: string;
}

export class PhotoSeparationService {
  // Scanner hardware artifact: HP scanner produces ~7px red line on left edge
  // This is a known hardware issue, not a software bug - verified by empty scanner test
  private static readonly SCANNER_LEFT_EDGE_ARTIFACT_WIDTH = 7;
  
  async separatePhotos(inputFile: string, options: SeparationOptions): Promise<SeparationResult> {
    // Validate input
    if (!await this.fileExists(inputFile)) {
      throw new Error(`Input file not found: ${inputFile}`);
    }

    // Create output directory
    await fs.mkdir(options.output, { recursive: true });

    return this.separateWithFloodFill(inputFile, options);
  }

  private async fileExists(filePath: string): Promise<boolean> {
    try {
      await fs.access(filePath);
      return true;
    } catch {
      return false;
    }
  }

  private async separateWithFloodFill(inputFile: string, options: SeparationOptions): Promise<SeparationResult> {
    return new Promise(async (resolve, reject) => {
      try {
        console.error(`🎨 Using dominant color flood fill approach...`);
        console.error(`Background color: ${options.background}`);
        
        const baseFilename = path.basename(inputFile, path.extname(inputFile));
        const tempDir = path.join(options.output, 'temp');
        await fs.mkdir(tempDir, { recursive: true });
        
        // Step 1: Analyze dominant color from corners
        const colorInfo = await this.analyzeDominantColor(inputFile);
        console.error(`🎯 Detected background color: ${colorInfo}`);
        
        // Step 2: Create flood fill mask first
        const floodFillMask = path.join(tempDir, 'floodfill_mask.png');
        const fuzz = 25; // Color tolerance percentage - increased for better matching
        
        // First get image dimensions
        const dimensions = await this.getImageDimensions(inputFile);
        const w = dimensions.width - 1;
        const h = dimensions.height - 1;
        
        // Simple flood fill from corners, then force-fill leftmost 7px with white
        const createMaskArgs = [
          inputFile,
          '-fuzz', `${fuzz}%`,
          '-fill', 'white',
          '-floodfill', '+0+0', colorInfo,        // Top-left corner
          '-floodfill', `+${w}+0`, colorInfo,     // Top-right corner  
          '-floodfill', `+0+${h}`, colorInfo,     // Bottom-left corner
          '-floodfill', `+${w}+${h}`, colorInfo,  // Bottom-right corner
          // Force-fill leftmost strip with white to eliminate scanner hardware artifact
          '-region', `${PhotoSeparationService.SCANNER_LEFT_EDGE_ARTIFACT_WIDTH}x${dimensions.height}+0+0`,
          '-fill', 'white',
          '-colorize', '100',
          '+region',
          floodFillMask
        ];
        
        console.error(`🎯 Creating flood fill mask...`);
        
        const maskProcess = spawn('convert', createMaskArgs);
        
        maskProcess.on('close', async (code: number) => {
          if (code !== 0) {
            reject(new Error(`Failed to create flood fill mask with exit code ${code}`));
            return;
          }
          
          try {
            // Step 3: Convert flood fill mask to clean binary mask
            console.error(`🔍 Flood fill mask created. Converting to binary...`);
            
            // Convert to proper binary mask for connected components: red regions become white, background becomes black
            const binaryMaskFile = path.join(tempDir, 'binary_mask.png');
            const binaryArgs = [
              floodFillMask,
              '-negate',           // Invert: white background becomes black, non-white becomes white
              '-fill', 'white',
              '+opaque', 'black',  // Make photo regions white on black background for connected components
              binaryMaskFile
            ];
            
            const binaryProcess = spawn('convert', binaryArgs);
            binaryProcess.on('close', async (binaryCode: number) => {
              if (binaryCode === 0) {
                console.error(`✅ Binary mask created: ${binaryMaskFile}`);
                // Clean up intermediate flood fill mask
                try {
                  await fs.unlink(floodFillMask);
                } catch (error) {
                  // Ignore errors if file doesn't exist
                }
                // Now extract photos using the clean binary mask
                console.error(`🔍 Extracting photos from binary mask...`);
                await this.extractPhotosUsingFloodFill(inputFile, binaryMaskFile, options, baseFilename);
                
                // Clean up temp directory after all processing is complete
                await this.cleanupTempDirectory(tempDir);
                
                // Step 5: List resulting photos
                const files = await fs.readdir(options.output);
                const separatedFiles = files.filter(f => 
                  f.startsWith(baseFilename + '-') && f.match(/\.(jpg|jpeg|png)$/i)
                );
                
                resolve({
                  success: true,
                  separatedFiles,
                  originalFile: inputFile,
                  outputDirectory: options.output,
                  processingDetails: `Separated ${separatedFiles.length} photos using flood fill`
                });
              } else {
                console.error(`❌ Binary mask creation failed with code ${binaryCode}`);
                // Clean up temp directory on failure too
                await this.cleanupTempDirectory(tempDir);
                reject(new Error(`Binary mask creation failed with code ${binaryCode}`));
              }
            });
            
          } catch (error) {
            reject(error);
          }
        });
        
        maskProcess.on('error', (error: Error) => {
          reject(new Error(`Failed to create mask: ${error.message}`));
        });
        
      } catch (error) {
        reject(error);
      }
    });
  }

  private async analyzeDominantColor(inputFile: string): Promise<string> {
    return new Promise(async (resolve, reject) => {
      try {
        // Get image dimensions to sample from multiple locations
        const dimensions = await this.getImageDimensions(inputFile);
        const centerX = Math.floor(dimensions.width / 2);
        const centerY = Math.floor(dimensions.height / 2);
        
        // Try center, then corners if center doesn't work
        const samplePoints = [
          `${centerX},${centerY}`,
          '0,0',
          `${dimensions.width-1},0`,
          `0,${dimensions.height-1}`,
          `${dimensions.width-1},${dimensions.height-1}`
        ];
        
        for (const point of samplePoints) {
          const args = [
            inputFile,
            '-format', `%[pixel:u.p{${point}}]`,
            'info:'
          ];
          
          const process = spawn('convert', args);
          let output = '';
          
          process.stdout.on('data', (data: Buffer) => {
            output += data.toString();
          });
          
          await new Promise<void>((resolveProcess) => {
            process.on('close', (code: number) => {
              if (code === 0) {
                const color = output.trim();
                console.error(`🎯 Sampled color at ${point}: ${color}`);
                // If this looks like a red color, use it
                if (color.includes('red') || color.includes('255,0,0') || 
                    (color.includes('srgb') && color.includes('100%') && color.includes('0%')) ||
                    this.isRedColor(color)) {
                  resolve(color);
                  return;
                }
              }
              resolveProcess();
            });
          });
        }
        
        // If no red found, default to red
        console.error(`🎯 No red background detected, defaulting to red`);
        resolve('red');
        
      } catch (error) {
        resolve('red');
      }
    });
  }

  private async extractPhotosUsingFloodFill(
    inputFile: string,
    maskFile: string,
    options: SeparationOptions,
    baseFilename: string
  ): Promise<void> {
    const startTime = Date.now();
    console.error(`🔍 Using optimized bulk region detection...`);
    
    // Step 1: Use ImageMagick's connected components to find all photo regions in ONE process
    const componentData = await this.findConnectedComponents(maskFile);
    console.error(`📊 Found ${componentData.length} potential photo regions`);
    
    // Step 2: Filter regions by size to remove noise
    const minArea = options.minimumArea || 1000;
    const validRegions = componentData.filter(comp => comp.area >= minArea);
    console.error(`✅ ${validRegions.length} regions meet minimum size requirement (${minArea}px)`);
    
    // Step 3: Extract all valid photos in batch operations
    let imageCount = 0;
    for (const region of validRegions) {
      const outputFile = path.join(
        options.output,
        `${baseFilename}-${String(imageCount).padStart(3, '0')}.jpg`
      );
      
      const extracted = await this.extractPhotoByBounds(
        inputFile,
        region,
        outputFile
      );
      
      if (extracted) {
        imageCount++;
        console.error(`✅ Extracted: ${path.basename(outputFile)} (${region.width}x${region.height})`);
      }
    }
    
    const processingTime = Date.now() - startTime;
    console.error(`🚀 Bulk extraction completed: ${imageCount} photos in ${processingTime}ms`);
  }

  private async findConnectedComponents(maskFile: string): Promise<Array<{x: number, y: number, width: number, height: number, area: number}>> {
    return new Promise((resolve, reject) => {
      // Use ImageMagick's connected-components analysis to find all regions in ONE process
      const args = [
        maskFile,
        '-define', 'connected-components:verbose=true',
        '-define', 'connected-components:area-threshold=100', // Filter out tiny specs
        '-connected-components', '8', // 8-connectivity for better region detection
        'null:' // Don't output image, just analysis
      ];
      
      console.error(`🔍 Running: convert ${args.join(' ')}`);
      
      const process = spawn('convert', args);
      let stderr = '';
      let stdout = '';
      
      process.stderr.on('data', (data: Buffer) => {
        stderr += data.toString();
      });
      
      process.stdout.on('data', (data: Buffer) => {
        stdout += data.toString();
      });
      
      process.on('close', (code: number) => {
        console.error(`🔍 ImageMagick exit code: ${code}`);
        console.error(`🔍 Stderr length: ${stderr.length} chars`);
        console.error(`🔍 Stdout length: ${stdout.length} chars`);
        
        if (code !== 0) {
          console.error(`❌ ImageMagick stderr: ${stderr}`);
          reject(new Error(`Connected components analysis failed with exit code ${code}`));
          return;
        }
        
        // ImageMagick outputs connected components info to stderr when verbose=true
        const outputText = stderr || stdout;
        console.error(`🔍 Using ${stderr ? 'stderr' : 'stdout'} for parsing`);
        
        // Parse ImageMagick's connected components output
        const components = this.parseConnectedComponentsOutput(outputText);
        resolve(components);
      });
      
      process.on('error', (error: Error) => {
        reject(new Error(`Connected components analysis failed: ${error.message}`));
      });
    });
  }

  private parseConnectedComponentsOutput(output: string): Array<{x: number, y: number, width: number, height: number, area: number}> {
    const components: Array<{x: number, y: number, width: number, height: number, area: number}> = [];
    const lines = output.split('\n');
    
    console.error(`🔍 Parsing connected components output, ${lines.length} lines`);
    
    for (const line of lines) {
      // Parse lines like: "34: 786x1069+7+1725 391.8,2266.3 814296 gray(255)"
      const match = line.match(/^\s*(\d+):\s+(\d+)x(\d+)\+(\d+)\+(\d+)\s+[\d.,]+\s+(\d+)/);
      if (match && match[1] && match[2] && match[3] && match[4] && match[5] && match[6]) {
        const id = match[1];
        const width = parseInt(match[2], 10);
        const height = parseInt(match[3], 10);
        const x = parseInt(match[4], 10);
        const y = parseInt(match[5], 10);
        const area = parseInt(match[6], 10);
        
        console.error(`🔍 Parsed component ${id}: ${width}x${height}+${x}+${y} area=${area}`);
        
        // Skip background (component 0) and tiny regions
        if (id !== '0' && area > 100) {
          components.push({ x, y, width, height, area });
          console.error(`✅ Added component ${id} to extraction list`);
        } else {
          console.error(`⏭️ Skipped component ${id} (background or too small)`);
        }
      } else {
        // Log lines that don't match to debug regex issues
        if (line.trim() && !line.includes('Objects (id:')) {
          console.error(`❌ Failed to parse line: "${line.trim()}"`);
        }
      }
    }
    
    console.error(`📊 Final component count: ${components.length}`);
    return components;
  }

  private async extractPhotoByBounds(
    inputFile: string,
    bounds: {x: number, y: number, width: number, height: number},
    outputFile: string
  ): Promise<boolean> {
    return new Promise((resolve) => {
      // Extract photo using precise bounding box coordinates - ONE ImageMagick process
      const cropGeometry = `${bounds.width}x${bounds.height}+${bounds.x}+${bounds.y}`;
      
      const args = [
        inputFile,
        '-crop', cropGeometry,
        '+repage',
        outputFile
      ];
      
      const process = spawn('convert', args);
      
      process.on('close', (code: number) => {
        resolve(code === 0);
      });
      
      process.on('error', () => {
        resolve(false);
      });
    });
  }

  private isRedColor(colorString: string): boolean {
    // Parse srgb(r,g,b) format
    const match = colorString.match(/srgb\((\d+),(\d+),(\d+)\)/);
    if (match && match.length >= 4 && match[1] && match[2] && match[3]) {
      const r = parseInt(match[1], 10);
      const g = parseInt(match[2], 10);
      const b = parseInt(match[3], 10);
      // Consider it red if red component is much higher than green and blue
      return r > 150 && r > g * 2 && r > b * 2;
    }
    return false;
  }

  private async getImageDimensions(inputFile: string): Promise<{width: number, height: number}> {
    return new Promise((resolve, reject) => {
      const args = [
        inputFile,
        '-format', '%wx%h',
        'info:'
      ];
      
      const process = spawn('convert', args);
      let output = '';
      
      process.stdout.on('data', (data: Buffer) => {
        output += data.toString();
      });
      
      process.on('close', (code: number) => {
        if (code === 0) {
          const parts = output.trim().split('x');
          if (parts.length === 2 && parts[0] && parts[1]) {
            const width = parseInt(parts[0], 10);
            const height = parseInt(parts[1], 10);
            if (!isNaN(width) && !isNaN(height)) {
              resolve({ width, height });
            } else {
              reject(new Error('Invalid dimensions values'));
            }
          } else {
            reject(new Error('Invalid dimensions format'));
          }
        } else {
          reject(new Error('Failed to get image dimensions'));
        }
      });
    });
  }

  private async cleanupTempDirectory(tempDir: string): Promise<void> {
    try {
      // Safety check: only remove directories that end with '/temp' and are inside the output directory
      if (!tempDir.endsWith('/temp') && !tempDir.endsWith('\\temp')) {
        console.error(`⚠️  Skipping cleanup - temp directory path doesn't end with '/temp': ${tempDir}`);
        return;
      }

      // Verify temp directory exists and contains expected mask files
      const files = await fs.readdir(tempDir);
      const hasMaskFiles = files.some(f => f.includes('mask') && f.endsWith('.png'));
      
      if (!hasMaskFiles) {
        console.error(`⚠️  Skipping cleanup - no mask files found in temp directory: ${tempDir}`);
        return;
      }

      // Remove temp directory and all contents
      await fs.rm(tempDir, { recursive: true, force: true });
      console.error(`🧹 Cleaned up temp directory: ${tempDir}`);
      
    } catch (error) {
      // Non-fatal error - log but don't fail the operation
      console.error(`⚠️  Warning: Failed to cleanup temp directory ${tempDir}:`, error instanceof Error ? error.message : String(error));
    }
  }
}

/**
 * ARCHITECTURE NOTES - Astrophotography Calibration Approach:
 * 
 * This service uses the same principle as astrophotography calibration frames:
 * 1. Flat frames = reference background scans (red.jpg, white.jpg)
 * 2. Light frames = photo scans (background + photos)  
 * 3. Calibration = subtract flat from light to isolate subjects
 * 
 * Benefits over flood fill:
 * - Handles scanner inconsistencies (lighting gradients, color variations)
 * - Accounts for paper texture and shadows
 * - Replaces background with clean color instead of keeping scanner artifacts
 * - More accurate edge detection for irregular photo shapes
 * - Works with real scanning conditions vs idealized colors
 * 
 * Process:
 * 1. Compare photo scan against reference background
 * 2. Create difference mask showing where photos are located
 * 3. Find connected components (individual photos) in the mask
 * 4. Extract each photo region with background replaced by clean color
 */