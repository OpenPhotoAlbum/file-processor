#!/usr/bin/env node
/**
 * Chronological Photo Import Script
 * 
 * Organizes photos from Google Takeout into chronological structure
 * Handles the transition from era-based to year-based organization
 */

import { readdir, stat, mkdir, copyFile } from 'fs/promises';
import { join, basename, extname, dirname } from 'path';
import { existsSync } from 'fs';
import { Logger } from '../src/utils/logging/index.js';

interface ImportOptions {
  sourceDir: string;
  destDir: string;
  dryRun: boolean;
  organizationStrategy: 'chronological' | 'preserve-google-structure';
}

interface PhotoMetadata {
  originalPath: string;
  year: number;
  month?: number;
  day?: number;
  captureDate?: Date;
  estimatedDate?: Date;
}

class ChronologicalImporter {
  private logger = new Logger('Chronological Importer');
  private stats = {
    totalFiles: 0,
    processed: 0,
    organized: 0,
    errors: 0
  };

  async import(options: ImportOptions) {
    this.logger.info('Starting chronological import', {
      source: options.sourceDir,
      destination: options.destDir,
      dryRun: options.dryRun
    });

    try {
      // Step 1: Scan and analyze Google Takeout structure
      const googleYearDirs = await this.scanGoogleTakeoutStructure(options.sourceDir);
      
      // Step 2: Process each year directory
      for (const yearDir of googleYearDirs) {
        await this.processYearDirectory(yearDir, options);
      }

      this.logger.info('Import completed', this.stats);
      
    } catch (error) {
      this.logger.error('Import failed', error as Error);
      throw error;
    }
  }

  private async scanGoogleTakeoutStructure(sourceDir: string): Promise<string[]> {
    this.logger.info('Scanning Google Takeout structure');
    
    const entries = await readdir(sourceDir, { withFileTypes: true });
    const yearDirs: string[] = [];

    for (const entry of entries) {
      if (entry.isDirectory() && entry.name.startsWith('Photos from ')) {
        const fullPath = join(sourceDir, entry.name);
        yearDirs.push(fullPath);
        
        // Extract year and log
        const year = entry.name.match(/Photos from (\d{4})/)?.[1];
        const size = await this.getDirectorySize(fullPath);
        this.logger.info(`Found year directory: ${year} (${this.formatSize(size)})`);
      }
    }

    // Sort chronologically
    yearDirs.sort((a, b) => {
      const yearA = parseInt(basename(a).match(/(\d{4})/)?.[1] || '0');
      const yearB = parseInt(basename(b).match(/(\d{4})/)?.[1] || '0');
      return yearA - yearB;
    });

    this.logger.info(`Found ${yearDirs.length} year directories`);
    return yearDirs;
  }

  private async processYearDirectory(yearDirPath: string, options: ImportOptions) {
    const yearMatch = basename(yearDirPath).match(/Photos from (\d{4})/);
    if (!yearMatch) {
      this.logger.warn(`Could not extract year from: ${yearDirPath}`);
      return;
    }

    const year = parseInt(yearMatch[1]);
    this.logger.info(`Processing year: ${year}`);

    // Create year directory structure
    const yearDestDir = join(options.destDir, 'archive', year.toString());
    
    if (!options.dryRun) {
      await mkdir(yearDestDir, { recursive: true });
    }

    // Process all photos in this year directory
    await this.processPhotosInDirectory(yearDirPath, yearDestDir, year, options);
  }

  private async processPhotosInDirectory(
    sourceDir: string, 
    destDir: string, 
    year: number, 
    options: ImportOptions
  ) {
    const entries = await readdir(sourceDir, { withFileTypes: true });
    
    for (const entry of entries) {
      const sourcePath = join(sourceDir, entry.name);
      
      if (entry.isDirectory()) {
        // Recursively process subdirectories
        const subDestDir = join(destDir, entry.name);
        if (!options.dryRun) {
          await mkdir(subDestDir, { recursive: true });
        }
        await this.processPhotosInDirectory(sourcePath, subDestDir, year, options);
        
      } else if (this.isMediaFile(entry.name)) {
        // Process individual media file
        await this.processMediaFile(sourcePath, destDir, year, options);
      }
    }
  }

  private async processMediaFile(
    sourcePath: string,
    destDir: string,
    year: number,
    options: ImportOptions
  ) {
    this.stats.totalFiles++;
    
    try {
      // Extract metadata to determine organization strategy
      const metadata = await this.extractPhotoMetadata(sourcePath, year);
      
      // Determine destination path based on capture date
      const destPath = await this.determineDestinationPath(
        sourcePath, 
        destDir, 
        metadata, 
        options
      );

      if (!options.dryRun) {
        // Ensure destination directory exists
        await mkdir(dirname(destPath), { recursive: true });
        
        // Copy file (preserving timestamps)
        await copyFile(sourcePath, destPath);
        
        // Copy any associated JSON metadata
        await this.copyAssociatedMetadata(sourcePath, destPath);
      }

      this.logger.debug(`Organized: ${basename(sourcePath)} → ${destPath}`);
      this.stats.organized++;
      
    } catch (error) {
      this.logger.warn(`Failed to process ${sourcePath}`, { 
        error: (error as Error).message 
      });
      this.stats.errors++;
    }
    
    this.stats.processed++;
    
    // Progress logging
    if (this.stats.processed % 1000 === 0) {
      this.logger.info(`Progress: ${this.stats.processed}/${this.stats.totalFiles} files`);
    }
  }

  private async extractPhotoMetadata(filePath: string, fallbackYear: number): Promise<PhotoMetadata> {
    const stats = await stat(filePath);
    const filename = basename(filePath);
    
    // Try to extract date from filename first
    const filenameDate = this.extractDateFromFilename(filename);
    if (filenameDate) {
      return {
        originalPath: filePath,
        year: filenameDate.getFullYear(),
        month: filenameDate.getMonth() + 1,
        day: filenameDate.getDate(),
        captureDate: filenameDate
      };
    }

    // Fall back to file modification time or Google Takeout year
    return {
      originalPath: filePath,
      year: fallbackYear,
      estimatedDate: stats.mtime
    };
  }

  private extractDateFromFilename(filename: string): Date | null {
    // Common date patterns in filenames
    const patterns = [
      /(\d{4})-(\d{2})-(\d{2})[_\s](\d{2})[\.:_](\d{2})[\.:_](\d{2})/, // 2024-01-15_14:30:52
      /(\d{4})(\d{2})(\d{2})[_\s](\d{2})(\d{2})(\d{2})/, // 20240115_143052
      /IMG[_\s](\d{4})(\d{2})(\d{2})[_\s](\d{2})(\d{2})(\d{2})/, // IMG_20240115_143052
      /(\d{4})-(\d{2})-(\d{2})/, // 2024-01-15
    ];

    for (const pattern of patterns) {
      const match = filename.match(pattern);
      if (match) {
        const [, year, month, day, hour = '12', minute = '0', second = '0'] = match;
        const date = new Date(
          parseInt(year),
          parseInt(month) - 1, // Month is 0-indexed
          parseInt(day),
          parseInt(hour),
          parseInt(minute),
          parseInt(second)
        );
        
        // Validate date
        if (date.getFullYear() >= 1900 && date.getFullYear() <= new Date().getFullYear() + 1) {
          return date;
        }
      }
    }

    return null;
  }

  private async determineDestinationPath(
    sourcePath: string,
    destDir: string,
    metadata: PhotoMetadata,
    options: ImportOptions
  ): Promise<string> {
    const filename = basename(sourcePath);
    const ext = extname(sourcePath);
    
    if (metadata.captureDate && metadata.month && metadata.day) {
      // Organize by specific date
      const monthName = metadata.captureDate.toLocaleDateString('en-US', { month: 'long' }).toLowerCase();
      const monthDir = `${metadata.month.toString().padStart(2, '0')}-${monthName}`;
      const dateStr = metadata.captureDate.toISOString().split('T')[0];
      
      // Determine if this is part of an event or just daily photos
      const eventDir = this.determineEventDirectory(sourcePath, metadata.captureDate);
      
      return join(destDir, monthDir, eventDir, this.generateNewFilename(metadata.captureDate, filename));
      
    } else {
      // Fallback: organize by year only
      return join(destDir, 'unsorted', filename);
    }
  }

  private determineEventDirectory(sourcePath: string, date: Date): string {
    // Check if multiple photos exist on this date (indicating an event)
    const dateStr = date.toISOString().split('T')[0];
    
    // For now, use a simple daily-photos pattern
    // This could be enhanced with event detection logic
    return `${dateStr}_daily-photos`;
  }

  private generateNewFilename(date: Date, originalFilename: string): string {
    const ext = extname(originalFilename);
    const dateStr = date.toISOString().replace(/[:.]/g, '-').split('T')[0];
    const timeStr = date.toISOString().split('T')[1].replace(/[:.]/g, '').substring(0, 6);
    
    // Extract device info if possible
    const device = this.extractDeviceFromFilename(originalFilename);
    
    return `${dateStr}_${timeStr}_${device}_001${ext}`;
  }

  private extractDeviceFromFilename(filename: string): string {
    if (filename.toLowerCase().includes('iphone') || filename.startsWith('IMG_')) {
      return 'iphone';
    } else if (filename.toLowerCase().includes('pixel')) {
      return 'pixel';
    } else if (filename.toLowerCase().includes('canon')) {
      return 'canon';
    } else {
      return 'unknown';
    }
  }

  private async copyAssociatedMetadata(sourcePath: string, destPath: string) {
    // Copy associated .json file if it exists
    const sourceJson = sourcePath + '.json';
    if (existsSync(sourceJson)) {
      const destJson = destPath + '.json';
      await copyFile(sourceJson, destJson);
    }
  }

  private isMediaFile(filename: string): boolean {
    const mediaExtensions = ['.jpg', '.jpeg', '.heic', '.png', '.gif', '.mp4', '.mov', '.avi'];
    const ext = extname(filename).toLowerCase();
    return mediaExtensions.includes(ext);
  }

  private async getDirectorySize(dirPath: string): Promise<number> {
    let size = 0;
    try {
      const entries = await readdir(dirPath, { withFileTypes: true });
      for (const entry of entries) {
        const fullPath = join(dirPath, entry.name);
        if (entry.isDirectory()) {
          size += await this.getDirectorySize(fullPath);
        } else {
          const stats = await stat(fullPath);
          size += stats.size;
        }
      }
    } catch (error) {
      // Directory might be inaccessible
    }
    return size;
  }

  private formatSize(bytes: number): string {
    const units = ['B', 'KB', 'MB', 'GB', 'TB'];
    let size = bytes;
    let unitIndex = 0;
    
    while (size >= 1024 && unitIndex < units.length - 1) {
      size /= 1024;
      unitIndex++;
    }
    
    return `${size.toFixed(1)} ${units[unitIndex]}`;
  }
}

// CLI execution
async function main() {
  const args = process.argv.slice(2);
  const sourceDir = args[0] || process.env.GOOGLE_TAKEOUT_PATH;
  const destDir = args[1] || '/photos';
  const dryRun = args.includes('--dry-run');

  if (!sourceDir) {
    console.error('Usage: chronological-import.ts <source-dir> [dest-dir] [--dry-run]');
    console.error('Example: node chronological-import.js "/home/stephen/GOOGLE-TAKEOUT-PROCESSING/Takeout/Google Photos" "/photos" --dry-run');
    process.exit(1);
  }

  const importer = new ChronologicalImporter();
  
  try {
    await importer.import({
      sourceDir,
      destDir,
      dryRun,
      organizationStrategy: 'chronological'
    });
    
    console.log('✅ Import completed successfully');
    
  } catch (error) {
    console.error('❌ Import failed:', error);
    process.exit(1);
  }
}

// Run if called directly
if (import.meta.url === `file://${process.argv[1]}`) {
  main();
}

export { ChronologicalImporter };