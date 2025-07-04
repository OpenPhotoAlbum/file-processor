/**
 * CLI command handlers and main processing logic
 */

import { Logger, LogLevel } from '../utils/logging/index.js';
import { createSystemErrorFactory } from '../utils/errors/factories.js';
import { FileSystemService } from '../services/index.js';
import { processFile } from '../pipeline/entry.js';
import { sanitizePathForLogging } from '../utils/paths.js';
import { OutputHandler } from './output.js';
import { normalizeCliOptions } from './validators.js';
import { extractTimestampOnly } from './timestamp-extractor.js';
import { MetadataMerger, MergeOptions } from '../utils/metadata-merger.js';
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
  private metadataMerger = new MetadataMerger();

  /**
   * Main command handler - processes CLI options and executes pipeline
   */
  async handleCommand(rawOptions: CLIOptions): Promise<void> {
    const startTime = Date.now();
    
    try {
      // Validate and normalize options
      const options = normalizeCliOptions(rawOptions);
      
      // Configure global logging based on quiet flag or json mode
      if (options.quiet || options.json || options.timestampOnly) {
        Logger.configure({ level: LogLevel.FATAL });
      }
      
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
      
      // Handle output (skip summary for certain modes)
      const suppressSummaryModes = ['timestampOnly', 'json'] as const;
      const shouldSuppressSummary = suppressSummaryModes.some(mode => options[mode]);
      
      if (!shouldSuppressSummary) {
        const outputOptions: OutputOptions = {
          format: options.json ? 'json' : 'console',
          destination: options.outputPath ? 'file' : 'stdout',
          filePath: options.outputPath,
          overwrite: options.overwrite || false,
          quiet: options.quiet || false
        };
        
        await this.outputHandler.handleOutput(result, outputOptions);
      } else if (options.json && !options.timestampOnly) {
        // For JSON mode, output the actual file metadata, not the processing summary
        if (result.results.length === 1) {
          // Single file - output the metadata directly
          console.log(JSON.stringify(result.results[0].metadata, null, 2));
        } else {
          // Multiple files - output array of metadata
          const metadataArray = result.results.map(r => r.metadata);
          console.log(JSON.stringify(metadataArray, null, 2));
        }
      }
      
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
    
    if (!options.quiet && !options.json && !options.timestampOnly) {
      console.log(`\n🔄 Processing ${files.length} files...\n`);
    }
    
    for (let i = 0; i < files.length; i++) {
      const file = files[i];
      const fileStartTime = Date.now();
      
      if (!options.quiet && !options.json && !options.timestampOnly) {
        console.log(`[${i + 1}/${files.length}] Processing: ${sanitizePathForLogging(file)}`);
      }
      
      try {
        let processedData: any;
        
        if (options.timestampOnly) {
          // Lightweight timestamp extraction only
          const timestamp = await extractTimestampOnly(file);
          processedData = { timestamp };
          
          // For timestamp-only mode, just output the timestamp
          console.log(timestamp);
        } else {
          // Full processing pipeline
          let metadata = await processFile(file);
          
          // Handle merge logic if specified
          if (options.merge || options.mergeSections || options.preserveEnrichment) {
            metadata = await this.handleMetadataMerge(file, metadata, options);
          }
          
          processedData = metadata;
        }
        
        const duration = Date.now() - fileStartTime;
        
        results.push({
          filePath: sanitizePathForLogging(file),
          success: true,
          duration,
          metadata: processedData as unknown as Record<string, unknown>,
          warnings: [] // TODO: Extract warnings from metadata
        });
        
        if (!options.quiet && !options.timestampOnly && !options.json) {
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
        
        if (!options.quiet && !options.json && !options.timestampOnly) {
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
      
      // Close landmark service connections
      const { getLandmarkService } = await import('../services/landmarks/factory.js');
      const landmarkService = getLandmarkService();
      await landmarkService.close();
      
      logger.debug('CLI cleanup completed - all database connections closed');
    } catch (error) {
      logger.warn('Cleanup warning', { error: (error as Error).message });
    }
  }
  
  /**
   * Handle metadata merge when merge flags are specified
   */
  private async handleMetadataMerge(
    filePath: string,
    newMetadata: MediaProcessingResult,
    options: CLIOptions & { mimeTypes?: string[]; outputPath?: string }
  ): Promise<MediaProcessingResult> {
    try {
      // Determine output path for existing metadata
      let metadataPath: string;
      
      if (options.outputPath) {
        // Single file with specific output path
        metadataPath = options.outputPath;
      } else {
        // Generate sidecar path
        metadataPath = `${filePath}.json`;
      }
      
      // Read existing metadata
      const existingMetadata = this.metadataMerger.readExistingMetadata(metadataPath);
      
      if (!existingMetadata) {
        logger.info('No existing metadata found - using new data', { 
          path: sanitizePathForLogging(metadataPath) 
        });
        return newMetadata;
      }
      
      // Create backup if requested
      if (options.backup) {
        this.metadataMerger.createBackup(metadataPath);
      }
      
      // Configure merge options
      const mergeOptions: MergeOptions = {
        mode: options.mergeSections ? 'merge-selective' : 'merge',
        sections: options.mergeSections as Array<'location' | 'timestamps' | 'camera' | 'settings' | 'technical' | 'media'> | undefined,
        preserveEnrichment: options.preserveEnrichment !== false, // Default to true
        createBackup: options.backup,
        dryRun: options.dryRun
      };
      
      // Perform merge
      const mergeResult = this.metadataMerger.merge(existingMetadata, newMetadata, mergeOptions);
      
      // Log merge operation details
      if (!options.quiet) {
        this.metadataMerger.logMergeOperation(mergeResult, metadataPath);
      }
      
      return mergeResult.merged;
      
    } catch (error) {
      logger.error('Metadata merge failed - using new data only', error as Error);
      return newMetadata;
    }
  }
}