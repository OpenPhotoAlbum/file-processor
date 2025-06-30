#!/usr/bin/env node
import fs from 'fs/promises';
import path from 'path';
import sharp from 'sharp';
import { exec } from 'child_process';
import { promisify } from 'util';
import { Logger } from '../utils/logging/index.js';
import { extractColorAnalysis } from '../services/colorExtractor.js';

const execAsync = promisify(exec);

const logger = new Logger('ColorExtraction');

interface ExtractionProgress {
  totalImages: number;
  processedImages: number;
  successfulExtractions: number;
  failedExtractions: number;
  skippedFiles: number;
  colorsUpdated: number;
  startTime: Date;
  currentBatch: number;
  totalBatches: number;
}

interface JSONMetadata {
  success?: boolean;
  results?: Array<{
    metadata?: {
      media?: {
        dominantColor?: string;
        meanColor?: string;
        salientColor?: string;
      };
    };
  }>;
}

class ColorExtractionService {
  private progress: ExtractionProgress;

  constructor() {
    this.progress = {
      totalImages: 0,
      processedImages: 0,
      successfulExtractions: 0,
      failedExtractions: 0,
      skippedFiles: 0,
      colorsUpdated: 0,
      startTime: new Date(),
      currentBatch: 0,
      totalBatches: 0
    };
  }

  private async convertWithImageMagick(imagePath: string, tempPath: string): Promise<boolean> {
    try {
      await execAsync(`magick "${imagePath}" "${tempPath}"`);
      return true;
    } catch (error) {
      logger.debug(`ImageMagick conversion failed: ${error}`);
      return false;
    }
  }

  private async convertWithFFmpeg(imagePath: string, tempPath: string): Promise<boolean> {
    try {
      await execAsync(`ffmpeg -i "${imagePath}" -y "${tempPath}" 2>/dev/null`);
      return true;
    } catch (error) {
      logger.debug(`FFmpeg conversion failed: ${error}`);
      return false;
    }
  }

  private async convertWithHeifConvert(imagePath: string, tempPath: string): Promise<boolean> {
    try {
      await execAsync(`heif-convert "${imagePath}" "${tempPath}"`);
      return true;
    } catch (error) {
      logger.debug(`heif-convert failed: ${error}`);
      return false;
    }
  }

  private async createTempJpgIfNeeded(imagePath: string): Promise<{ tempPath: string | null; canProcess: boolean }> {
    try {
      // First try to process the file directly - this will work for most formats
      // Test both metadata reading AND actual image processing
      const image = sharp(imagePath);
      await image.metadata();
      
      // Also test that we can actually process the image for color extraction
      await image.resize(10, 10).raw().toBuffer();
      
      return { tempPath: null, canProcess: true }; // File is supported directly
    } catch {
      // File format not directly supported by Sharp, try converting to temp JPG
      logger.debug(`Direct processing failed for ${imagePath}, attempting conversion with multiple tools`);
      
      const tempDir = '/tmp';
      const ext = path.extname(imagePath);
      const baseName = path.basename(imagePath, ext);
      const tempPath = path.join(tempDir, `${baseName}_temp_${Date.now()}.jpg`);
      
      // Try conversion methods in order of preference
      const conversionMethods = [
        { name: 'Sharp', fn: async () => {
          await sharp(imagePath).jpeg({ quality: 90 }).toFile(tempPath);
          return true;
        }},
        { name: 'heif-convert', fn: () => this.convertWithHeifConvert(imagePath, tempPath) },
        { name: 'ImageMagick', fn: () => this.convertWithImageMagick(imagePath, tempPath) },
        { name: 'FFmpeg', fn: () => this.convertWithFFmpeg(imagePath, tempPath) }
      ];
      
      for (const method of conversionMethods) {
        try {
          logger.debug(`Trying ${method.name} conversion: ${imagePath} -> ${tempPath}`);
          const success = await method.fn();
          
          if (success) {
            // Verify the converted file works with Sharp
            await sharp(tempPath).metadata();
            logger.info(`✓ Successfully converted ${path.extname(imagePath).toUpperCase()} file ` +
              `using ${method.name}: ${path.basename(imagePath)}`);
            return { tempPath, canProcess: true };
          }
        } catch (methodError) {
          logger.debug(`${method.name} conversion failed: ${methodError}`);
          // Clean up failed attempt
          try {
            await fs.unlink(tempPath);
          } catch {
            // Ignore cleanup errors
          }
        }
      }
      
      logger.warn(`All conversion methods failed for ${imagePath}`);
      return { tempPath: null, canProcess: false };
    }
  }

  private async cleanupTempFile(tempPath: string | null): Promise<void> {
    if (!tempPath) return;
    
    try {
      await fs.unlink(tempPath);
      logger.debug(`Cleaned up temporary file: ${tempPath}`);
    } catch (error) {
      logger.warn(`Failed to cleanup temporary file ${tempPath}: ${error}`);
    }
  }

  async findImageFiles(directory: string): Promise<string[]> {
    const images: string[] = [];
    const supportedExtensions = [
      '.jpg', '.jpeg', '.png', '.tiff', '.tif', '.bmp', 
      '.heic', '.heif', '.webp', '.avif', '.gif', 
      '.svg', '.raw', '.cr2', '.nef', '.arw', '.dng'
    ];
    
    async function walk(dir: string): Promise<void> {
      try {
        const entries = await fs.readdir(dir, { withFileTypes: true });
        
        for (const entry of entries) {
          const fullPath = path.join(dir, entry.name);
          
          if (entry.isDirectory()) {
            await walk(fullPath);
          } else {
            const ext = path.extname(entry.name).toLowerCase();
            if (supportedExtensions.includes(ext)) {
              images.push(fullPath);
            }
          }
        }
      } catch (error) {
        logger.warn(`Error reading directory ${dir}: ${error}`);
      }
    }
    
    await walk(directory);
    return images;
  }

  async extractAndUpdateColors(imagePath: string): Promise<boolean> {
    let tempPath: string | null = null;
    const startTime = Date.now();
    
    try {
      const jsonPath = `${imagePath}.json`;
      
      // Check if JSON metadata file exists
      try {
        await fs.access(jsonPath);
      } catch {
        logger.debug(`No JSON metadata found for ${imagePath}, skipping`);
        this.progress.skippedFiles++;
        return false;
      }

      // Read existing JSON metadata
      const jsonContent = await fs.readFile(jsonPath, 'utf-8');
      const metadata: JSONMetadata = JSON.parse(jsonContent);

      if (!metadata.results || metadata.results.length === 0) {
        logger.debug(`No results in JSON for ${imagePath}, skipping`);
        this.progress.skippedFiles++;
        return false;
      }

      // Check if any colors already exist - skip if any are present
      const existingMedia = metadata.results[0].metadata?.media;
      if (existingMedia?.dominantColor || existingMedia?.meanColor || existingMedia?.salientColor) {
        logger.debug(`Some colors already exist for ${imagePath}, skipping`);
        this.progress.skippedFiles++;
        return true;
      }

      // Handle unsupported formats by converting to temporary JPG if needed
      const { tempPath: convertedPath, canProcess } = await this.createTempJpgIfNeeded(imagePath);
      tempPath = convertedPath;
      
      // Skip if file cannot be processed
      if (!canProcess) {
        logger.warn(`Cannot process unsupported file format: ${imagePath}`);
        this.progress.skippedFiles++;
        return false;
      }
      
      const fileToAnalyze = tempPath || imagePath;
      
      // Extract colors from image (original or temporary conversion)
      logger.debug(`Extracting colors for ${imagePath}${tempPath ? ' (via temp JPG)' : ''}`);
      const colorAnalysis = await extractColorAnalysis(fileToAnalyze);

      // Update the JSON metadata
      if (!metadata.results[0].metadata) {
        metadata.results[0].metadata = {};
      }
      if (!metadata.results[0].metadata.media) {
        metadata.results[0].metadata.media = {};
      }

      const mediaMetadata = metadata.results[0].metadata.media;
      mediaMetadata.dominantColor = colorAnalysis.dominantColor;
      mediaMetadata.meanColor = colorAnalysis.meanColor;
      mediaMetadata.salientColor = colorAnalysis.salientColor || undefined;

      // Also store the full color analysis in technical section for reference
      if (!metadata.results[0].metadata.media) {
        metadata.results[0].metadata.media = {};
      }
      
      // Add color analysis details to technical metadata
      (metadata.results[0].metadata.media as any).colorAnalysis = {
        topColors: colorAnalysis.topColors,
        colorProfile: colorAnalysis.colorProfile,
        extractedAt: new Date().toISOString()
      };

      // Write updated JSON back to file
      await fs.writeFile(jsonPath, JSON.stringify(metadata, null, 2), 'utf-8');
      
      const totalTime = Date.now() - startTime;
      logger.debug(`Colors extracted for ${path.basename(imagePath)} in ${totalTime}ms`);
      this.progress.colorsUpdated++;
      return true;

    } catch (error) {
      logger.error(`Failed to extract colors for ${imagePath}: ${error}`);
      return false;
    } finally {
      // Always cleanup temporary file if it was created
      await this.cleanupTempFile(tempPath);
    }
  }

  private logProgress(): void {
    const elapsed = Date.now() - this.progress.startTime.getTime();
    const rate = this.progress.processedImages / (elapsed / 1000);
    const eta = this.progress.totalImages > this.progress.processedImages 
      ? (this.progress.totalImages - this.progress.processedImages) / rate 
      : 0;

    logger.info(`Progress: ${this.progress.processedImages}/${this.progress.totalImages} ` +
      `(${(this.progress.processedImages / this.progress.totalImages * 100).toFixed(1)}%) ` +
      `| Success: ${this.progress.successfulExtractions} ` +
      `| Failed: ${this.progress.failedExtractions} ` +
      `| Skipped: ${this.progress.skippedFiles} ` +
      `| Colors updated: ${this.progress.colorsUpdated} ` +
      `| Rate: ${rate.toFixed(1)} images/sec ` +
      `| ETA: ${Math.round(eta)}s`);
  }

  async runExtraction(archivePath: string, batchSize = 5): Promise<void> {
    logger.info('Starting color extraction for image collection...');
    logger.info(`Scanning directory: ${archivePath}`);
    
    // Find all image files
    const imageFiles = await this.findImageFiles(archivePath);
    this.progress.totalImages = imageFiles.length;
    
    logger.info(`Found ${imageFiles.length.toLocaleString()} image files to process`);
    
    if (imageFiles.length === 0) {
      logger.error('No image files found');
      return;
    }

    // Process in batches
    const batches: string[][] = [];
    for (let i = 0; i < imageFiles.length; i += batchSize) {
      batches.push(imageFiles.slice(i, i + batchSize));
    }
    
    this.progress.totalBatches = batches.length;
    logger.info(`Processing ${batches.length} batches of ${batchSize} images each ` +
      '(parallel processing within batches)');

    // Process each batch
    for (let i = 0; i < batches.length; i++) {
      const batch = batches[i];
      this.progress.currentBatch = i + 1;
      
      const batchStartTime = Date.now();
      logger.info(`Processing batch ${i + 1}/${batches.length} (${batch.length} images) - parallel processing`);
      
      // Process files in parallel within the batch for speed
      const batchPromises = batch.map(async (imagePath) => {
        const fileStartTime = Date.now();
        const success = await this.extractAndUpdateColors(imagePath);
        const fileDuration = Date.now() - fileStartTime;
        return { success, imagePath, duration: fileDuration };
      });
      
      const results = await Promise.all(batchPromises);
      const batchDuration = Date.now() - batchStartTime;
      
      // Log batch timing info
      const avgFileTime = results.reduce((sum, r) => sum + r.duration, 0) / results.length;
      const actuallyProcessed = results.filter(r => r.success).length;
      logger.info(`Batch ${i + 1} completed in ${(batchDuration/1000).toFixed(1)}s ` +
        `(${actuallyProcessed}/${batch.length} processed, avg ${(avgFileTime/1000).toFixed(1)}s per file, ` +
        `${(batchDuration/avgFileTime).toFixed(1)}x speedup)`);
      
      // Update progress counters after all promises complete (thread-safe)
      for (const result of results) {
        this.progress.processedImages++;
        if (result.success) {
          this.progress.successfulExtractions++;
        } else {
          this.progress.failedExtractions++;
        }
      }
      
      // Log progress every 10 batches or at the end
      if ((i + 1) % 10 === 0 || i === batches.length - 1) {
        this.logProgress();
      }
    }

    // Final summary
    const totalTime = (Date.now() - this.progress.startTime.getTime()) / 1000;
    logger.info('Color extraction completed!');
    logger.info(`Total images processed: ${this.progress.processedImages.toLocaleString()}`);
    logger.info(`Successful extractions: ${this.progress.successfulExtractions.toLocaleString()}`);
    logger.info(`Failed extractions: ${this.progress.failedExtractions.toLocaleString()}`);
    logger.info(`Skipped files: ${this.progress.skippedFiles.toLocaleString()}`);
    logger.info(`Colors updated: ${this.progress.colorsUpdated.toLocaleString()}`);
    logger.info(`Total time: ${Math.round(totalTime)}s`);
    logger.info(`Average rate: ${(this.progress.processedImages / totalTime).toFixed(1)} images/sec`);
  }
}

async function main() {
  const archivePath = process.argv[2] || '/photos/archive';
  const batchSize = parseInt(process.argv[3]) || 5;
  
  try {
    logger.info('Starting color extraction service...');
    const extractionService = new ColorExtractionService();
    
    await extractionService.runExtraction(archivePath, batchSize);
    
  } catch (error) {
    logger.error(`Color extraction failed: ${error}`);
    process.exit(1);
  }
}

if (import.meta.url === `file://${process.argv[1]}`) {
  main().catch(error => {
    logger.error(`Script execution failed: ${error}`);
    process.exit(1);
  });
}