/**
 * CLI command handlers and main processing logic
 */

import { Logger } from '../utils/logging/index.js';
import { createSystemErrorFactory } from '../utils/errors/factories.js';
import { FileSystemService } from '../services/index.js';
import { processFile } from '../pipeline/entry.js';
import { sanitizePathForLogging } from '../utils/paths.js';
import { OutputHandler } from './output.js';
import { normalizeCliOptions } from './validators.js';
import { 
  CLIOptions, 
  ProcessingResult as CLIProcessingResult, 
  FileProcessingResult, 
  ProcessingSummary, 
  OutputOptions 
} from './types.js';
import { ProcessingResult as MediaProcessingResult } from '../types/media.js';

const logger = new Logger('CLI Handler');
const systemErrors = createSystemErrorFactory(logger);

export class CLIHandler {
  private fs = new FileSystemService();
  private outputHandler = new OutputHandler();

  /**
   * Main command handler - processes CLI options and executes pipeline
   */
  async handleCommand(rawOptions: CLIOptions): Promise<void> {
    const startTime = Date.now();
    
    try {
      // Validate and normalize options
      const options = normalizeCliOptions(rawOptions);
      
      if (!options.quiet) {
        logger.info('Starting media processing pipeline...');
      }

      // Discover files to process
      const filesToProcess = await this.discoverFiles(options);
      
      if (filesToProcess.length === 0) {
        logger.warn('No files found to process');
        return;
      }

      if (!options.quiet) {
        logger.info(`Found ${filesToProcess.length} files to process`);
      }

      // Process files
      const result = await this.processFiles(filesToProcess, options);
      
      // Handle output
      const outputOptions: OutputOptions = {
        format: options.json ? 'json' : 'console',
        destination: options.outputPath ? 'file' : 'stdout',
        filePath: options.outputPath,
        overwrite: options.overwrite || false,
        quiet: options.quiet || false
      };
      
      await this.outputHandler.handleOutput(result, outputOptions);
      
      const totalDuration = Date.now() - startTime;
      
      if (!options.quiet) {
        logger.info(`Pipeline completed in ${this.formatDuration(totalDuration)}`);
      }
      
      // Clean up database connections to allow process to exit
      await this.cleanup();
      
    } catch (error) {
      systemErrors.fileOperationFailed({
        operation: 'CLI command execution',
        stage: 'main handler'
      }, error as Error);
      
      console.error(`\n❌ Error: ${(error as Error).message}`);
      
      // Clean up even on error to allow process to exit
      await this.cleanup();
      process.exit(1);
    }
  }

  /**
   * Discover files based on CLI options
   */
  private async discoverFiles(options: CLIOptions & { mimeTypes?: string[]; outputPath?: string }): Promise<string[]> {
    const allFiles: string[] = [];
    
    // Handle directory scanning
    if (options.directory || options.recursive) {
      const targetPath = options.directory || options.recursive;
      const isRecursive = !!options.recursive;
      
      if (!targetPath) {
        throw new Error('Directory path is required but not provided');
      }
      
      logger.debug(`Scanning ${isRecursive ? 'recursively' : 'directory'}: ${sanitizePathForLogging(targetPath)}`);
      
      const discovery = await this.fs.discoverMediaFiles(targetPath, isRecursive, {
        includeSidecars: false, // CLI focuses on media files
        skipInvalid: false,     // Let processors handle validation
        validateSignatures: false // Skip signature validation during discovery for speed
      });
      
      // Apply MIME type filtering if specified
      let discoveredFiles = discovery.mediaFiles;
      if (options.mimeTypes && options.mimeTypes.length > 0) {
        discoveredFiles = await this.filterFilesByMimeType(discoveredFiles, options.mimeTypes);
      }
      
      allFiles.push(...discoveredFiles);
      
      if (!options.quiet) {
        logger.info(`Directory scan found ${discoveredFiles.length} files`);
      }
    }
    
    // Handle individual files
    if (options.files && options.files.length > 0) {
      logger.debug(`Processing ${options.files.length} individual files`);
      
      // Validate each file
      const validatedFiles: string[] = [];
      for (const file of options.files) {
        const validation = await this.fs.validatePath(file);
        if (validation.isValid) {
          validatedFiles.push(validation.absolutePath);
        } else {
          logger.warn(`Invalid file path: ${sanitizePathForLogging(file)} - ${validation.errors.join(', ')}`);
        }
      }
      
      allFiles.push(...validatedFiles);
    }
    
    // Remove duplicates (in case files are specified both ways)
    const uniqueFiles = [...new Set(allFiles)];
    
    if (uniqueFiles.length !== allFiles.length) {
      logger.debug(`Removed ${allFiles.length - uniqueFiles.length} duplicate files`);
    }
    
    return uniqueFiles;
  }

  /**
   * Filter files by MIME type (basic extension-based filtering)
   */
  private async filterFilesByMimeType(files: string[], allowedMimeTypes: string[]): Promise<string[]> {
    // This is a basic implementation - could be enhanced with actual file inspection
    const mimeTypeMap: Record<string, string> = {
      '.jpg': 'image/jpeg',
      '.jpeg': 'image/jpeg',
      '.png': 'image/png',
      '.gif': 'image/gif',
      '.webp': 'image/webp',
      '.heic': 'image/heic',
      '.heif': 'image/heif',
      '.mp4': 'video/mp4',
      '.mov': 'video/quicktime',
      '.avi': 'video/x-msvideo'
    };
    
    const filteredFiles = files.filter(file => {
      const ext = file.toLowerCase().substring(file.lastIndexOf('.'));
      const mimeType = mimeTypeMap[ext];
      return mimeType && allowedMimeTypes.includes(mimeType);
    });
    
    if (filteredFiles.length < files.length) {
      logger.info(`MIME type filter: ${filteredFiles.length}/${files.length} files match criteria`);
    }
    
    return filteredFiles;
  }

  /**
   * Process all discovered files
   */
  private async processFiles(
    files: string[], 
    options: CLIOptions & { mimeTypes?: string[]; outputPath?: string }
  ): Promise<CLIProcessingResult> {
    const startTime = Date.now();
    const results: FileProcessingResult[] = [];
    
    if (!options.quiet) {
      console.log(`\n🔄 Processing ${files.length} files...\n`);
    }
    
    for (let i = 0; i < files.length; i++) {
      const file = files[i];
      const fileStartTime = Date.now();
      
      if (!options.quiet) {
        console.log(`[${i + 1}/${files.length}] Processing: ${sanitizePathForLogging(file)}`);
      }
      
      try {
        const metadata = await processFile(file);
        const duration = Date.now() - fileStartTime;
        
        results.push({
          filePath: sanitizePathForLogging(file),
          success: metadata.processing.success || true,
          duration,
          metadata: metadata as unknown as Record<string, unknown>,
          warnings: [] // TODO: Extract warnings from metadata
        });
        
        if (!options.quiet) {
          console.log(`  ✅ Completed in ${this.formatDuration(duration)}`);
        }
        
      } catch (error) {
        const duration = Date.now() - fileStartTime;
        const errorMessage = (error as Error).message;
        
        results.push({
          filePath: sanitizePathForLogging(file),
          success: false,
          duration,
          error: errorMessage,
          warnings: []
        });
        
        if (!options.quiet) {
          console.log(`  ❌ Failed: ${errorMessage}`);
        }
        
        logger.error(`Processing failed for ${sanitizePathForLogging(file)}: ${errorMessage}`);
      }
    }
    
    const totalDuration = Date.now() - startTime;
    const summary = this.generateSummary(results, totalDuration);
    
    return {
      success: summary.failedFiles === 0,
      filesProcessed: results.length,
      duration: totalDuration,
      results,
      summary
    };
  }

  /**
   * Generate processing summary statistics
   */
  private generateSummary(results: FileProcessingResult[], totalDuration: number): ProcessingSummary {
    const successful = results.filter(r => r.success);
    const failed = results.filter(r => !r.success);
    const withWarnings = results.filter(r => r.warnings.length > 0);
    
    // MIME type breakdown (basic implementation)
    const mimeTypeBreakdown: Record<string, number> = {};
    results.forEach(result => {
      if (result.success && result.metadata) {
        const mediaResult = result.metadata as unknown as MediaProcessingResult;
        const type = mediaResult.media?.type || 'unknown';
        mimeTypeBreakdown[type] = (mimeTypeBreakdown[type] || 0) + 1;
      }
    });
    
    // Size statistics (would need file metadata)
    const sizeStats = {
      totalSize: 0,
      averageSize: 0,
      largestFile: null as { path: string; size: number } | null,
      smallestFile: null as { path: string; size: number } | null
    };
    
    return {
      totalDiscovered: results.length,
      successfullyProcessed: successful.length,
      failedFiles: failed.length,
      filesWithWarnings: withWarnings.length,
      totalDuration,
      averageDuration: results.length > 0 ? totalDuration / results.length : 0,
      mimeTypeBreakdown,
      sizeStats
    };
  }

  /**
   * Format duration for display
   */
  private formatDuration(ms: number): string {
    if (ms < 1000) {
      return `${ms}ms`;
    } else {
      return `${(ms / 1000).toFixed(1)}s`;
    }
  }

  /**
   * Clean up resources to allow process to exit cleanly
   */
  private async cleanup(): Promise<void> {
    try {
      // Close database connections from services
      const { getGeolocationService } = await import('../services/index.js');
      const geolocationService = getGeolocationService();
      await geolocationService.close();
      
      logger.debug('CLI cleanup completed - database connections closed');
    } catch (error) {
      logger.warn('Cleanup warning', { error: (error as Error).message });
    }
  }
}