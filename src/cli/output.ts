/**
 * CLI output formatting and file writing
 */

import { writeFile, access } from 'fs/promises';
import { resolve } from 'path';
import { Logger } from '../utils/logging/index.js';
import { createSystemErrorFactory } from '../utils/errors/factories.js';
import { sanitizePathForLogging } from '../utils/paths.js';
import { ProcessingResult, OutputOptions } from './types.js';

const logger = new Logger('CLI Output');
const systemErrors = createSystemErrorFactory(logger);

export class OutputHandler {
  /**
   * Handle output based on CLI options
   */
  async handleOutput(result: ProcessingResult, options: OutputOptions): Promise<void> {
    logger.debug(`Handling output: format=${options.format}, destination=${options.destination}`);
    
    if (options.destination === 'file' && options.filePath) {
      await this.writeToFile(result, options);
    } else {
      this.writeToConsole(result, options);
    }
  }

  /**
   * Write results to console
   */
  private writeToConsole(result: ProcessingResult, options: OutputOptions): void {
    if (options.format === 'json') {
      this.writeJsonToConsole(result, options.quiet);
    } else {
      this.writeFormattedToConsole(result, options.quiet);
    }
  }

  /**
   * Write JSON output to console
   */
  private writeJsonToConsole(result: ProcessingResult, quiet: boolean): void {
    if (quiet) {
      // In quiet mode, output only the essential data
      const minimalResult = {
        success: result.success,
        filesProcessed: result.filesProcessed,
        duration: result.duration,
        summary: result.summary
      };
      console.log(JSON.stringify(minimalResult, null, 2));
    } else {
      console.log(JSON.stringify(result, null, 2));
    }
  }

  /**
   * Write formatted output to console
   */
  private writeFormattedToConsole(result: ProcessingResult, quiet: boolean): void {
    if (quiet) {
      // Minimal output in quiet mode
      console.log(`Processed ${result.filesProcessed} files in ${result.duration}ms`);
      if (!result.success) {
        console.log(`⚠️  ${result.summary.failedFiles} files failed`);
      }
      return;
    }

    // Full formatted output
    console.log(`\n${  '='.repeat(60)}`);
    console.log('📊 PROCESSING RESULTS');
    console.log('='.repeat(60));
    
    console.log('\n📈 Summary:');
    console.log(`  ✅ Successfully processed: ${result.summary.successfullyProcessed}`);
    console.log(`  ❌ Failed: ${result.summary.failedFiles}`);
    console.log(`  ⚠️  With warnings: ${result.summary.filesWithWarnings}`);
    console.log(`  ⏱️  Total time: ${this.formatDuration(result.summary.totalDuration)}`);
    console.log(`  ⚡ Average time: ${this.formatDuration(result.summary.averageDuration)}`);

    // File size statistics
    if (result.summary.sizeStats.totalSize > 0) {
      console.log('\n📁 File Statistics:');
      console.log(`  📊 Total size: ${this.formatFileSize(result.summary.sizeStats.totalSize)}`);
      console.log(`  📐 Average size: ${this.formatFileSize(result.summary.sizeStats.averageSize)}`);
      
      if (result.summary.sizeStats.largestFile) {
        console.log(`  📈 Largest: ${result.summary.sizeStats.largestFile.path} (${this.formatFileSize(result.summary.sizeStats.largestFile.size)})`);
      }
      
      if (result.summary.sizeStats.smallestFile) {
        console.log(`  📉 Smallest: ${result.summary.sizeStats.smallestFile.path} (${this.formatFileSize(result.summary.sizeStats.smallestFile.size)})`);
      }
    }

    // MIME type breakdown
    if (Object.keys(result.summary.mimeTypeBreakdown).length > 0) {
      console.log('\n🎯 File Types:');
      Object.entries(result.summary.mimeTypeBreakdown)
        .sort(([,a], [,b]) => b - a)
        .forEach(([mimeType, count]) => {
          console.log(`  ${this.getMimeTypeIcon(mimeType)} ${mimeType}: ${count}`);
        });
    }

    // Show individual failures if any
    const failures = result.results.filter(r => !r.success);
    if (failures.length > 0) {
      console.log('\n❌ Failed Files:');
      failures.forEach(failure => {
        console.log(`  • ${failure.filePath}: ${failure.error}`);
      });
    }

    // Show warnings if any
    const withWarnings = result.results.filter(r => r.warnings.length > 0);
    if (withWarnings.length > 0) {
      console.log('\n⚠️  Files with Warnings:');
      withWarnings.forEach(warning => {
        console.log(`  • ${warning.filePath}:`);
        warning.warnings.forEach(w => console.log(`    - ${w}`));
      });
    }

    console.log(`\n${  '='.repeat(60)}`);
  }

  /**
   * Write results to file
   */
  private async writeToFile(result: ProcessingResult, options: OutputOptions): Promise<void> {
    if (!options.filePath) {
      throw new Error('File path is required for file output');
    }

    const absolutePath = resolve(options.filePath);
    const safePath = sanitizePathForLogging(absolutePath);
    
    logger.info(`Writing results to file: ${safePath}`);

    try {
      // Check if file exists and handle overwrite logic
      if (!options.overwrite) {
        try {
          await access(absolutePath);
          // File exists and overwrite is false - generate numbered filename
          const numberedPath = await this.generateNumberedPath(absolutePath);
          logger.info(`File exists, using numbered path: ${sanitizePathForLogging(numberedPath)}`);
          await this.writeJsonToFile(result, numberedPath);
          return;
        } catch {
          // File doesn't exist, proceed with original path
        }
      }

      await this.writeJsonToFile(result, absolutePath);
      
    } catch (error) {
      systemErrors.fileOperationFailed({
        filePath: safePath,
        operation: 'result file writing'
      }, error as Error);
      
      throw new Error(`Failed to write results to file: ${(error as Error).message}`);
    }
  }

  /**
   * Write JSON data to file
   */
  private async writeJsonToFile(result: ProcessingResult, filePath: string): Promise<void> {
    const jsonContent = JSON.stringify(result, null, 2);
    await writeFile(filePath, jsonContent, 'utf-8');
    
    const safePath = sanitizePathForLogging(filePath);
    logger.info(`Results written to: ${safePath} (${jsonContent.length} bytes)`);
    
    console.log(`\n📝 Results saved to: ${safePath}`);
  }

  /**
   * Generate numbered filename if file exists
   */
  private async generateNumberedPath(originalPath: string): Promise<string> {
    const ext = '.json';
    const basePath = originalPath.replace(/\.json$/, '');
    let counter = 1;
    
    while (counter < 1000) { // Prevent infinite loop
      const numberedPath = `${basePath}-${counter}${ext}`;
      try {
        await access(numberedPath);
        counter++;
      } catch {
        return numberedPath;
      }
    }
    
    throw new Error('Could not generate unique filename (too many existing files)');
  }

  /**
   * Format duration for display
   */
  private formatDuration(ms: number): string {
    if (ms < 1000) {
      return `${ms}ms`;
    } else if (ms < 60000) {
      return `${(ms / 1000).toFixed(1)}s`;
    } else {
      const minutes = Math.floor(ms / 60000);
      const seconds = ((ms % 60000) / 1000).toFixed(1);
      return `${minutes}m ${seconds}s`;
    }
  }

  /**
   * Format file size for display
   */
  private formatFileSize(bytes: number): string {
    const units = ['B', 'KB', 'MB', 'GB', 'TB'];
    let size = bytes;
    let unitIndex = 0;
    
    while (size >= 1024 && unitIndex < units.length - 1) {
      size /= 1024;
      unitIndex++;
    }
    
    return `${size.toFixed(unitIndex === 0 ? 0 : 1)} ${units[unitIndex]}`;
  }

  /**
   * Get icon for MIME type
   */
  private getMimeTypeIcon(mimeType: string): string {
    if (mimeType.startsWith('image/')) return '🖼️';
    if (mimeType.startsWith('video/')) return '🎥';
    if (mimeType.startsWith('audio/')) return '🎵';
    return '📄';
  }
}