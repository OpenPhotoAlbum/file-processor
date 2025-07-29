/**
 * CLI command handlers and main processing logic
 */

import { Logger, LogLevel } from '../utils/logging/index.js';
import { createSystemErrorFactory } from '../utils/errors/factories.js';
import { FileSystemService } from '../services/index.js';
import { processFile } from '../pipeline/entry.js';
import { postProcess, PostProcessorOptions } from '../pipeline/post-processor.js';
import { sanitizePathForLogging } from '../utils/paths.js';
import { OutputHandler } from './output.js';
import { normalizeCliOptions } from './validators.js';
import { extractTimestampOnly } from './timestamp-extractor.js';
import { MetadataMerger, MergeOptions, MergeMode, MetadataSection } from '../utils/metadata-merger.js';
import { ValidationService, type AutoFixService } from '../services/validation/index.js';
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

      // Process files (validation or regular processing)
      const result = options.validate 
        ? await this.validateFiles(filesToProcess, options)
        : await this.processFiles(filesToProcess, options);
      
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
      
      // Validate all file paths concurrently
      const validationPromises = options.files.map(async (file) => {
        const validation = await this.fs.validatePath(file);
        if (validation.isValid) {
          return validation.absolutePath;
        } else {
          logger.warn(`Invalid file path: ${sanitizePathForLogging(file)} - ${validation.errors.join(', ')}`);
          return null;
        }
      });
      
      const validationResults = await Promise.all(validationPromises);
      const validatedFiles = validationResults.filter((file): file is string => file !== null);
      
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
  /**
   * Validate files using ValidationService
   */
  private async validateFiles(
    files: string[],
    options: CLIOptions & { mimeTypes?: string[]; outputPath?: string }
  ): Promise<CLIProcessingResult> {
    const startTime = Date.now();
    const results: FileProcessingResult[] = [];
    const validationService = new ValidationService();
    
    // Initialize AutoFixService if auto-fix is enabled
    let autoFixService: AutoFixService | undefined;
    if (options.autoFix) {
      const { AutoFixService } = await import('../services/validation/index.js');
      const defaultFixTypes: string[] = ['metadata', 'filename', 'gps', 'colors'];
      let parsedFixTypes: string[] = defaultFixTypes;
      const fixTypesInput: string[] | string | undefined = options.autoFixTypes;
      if (fixTypesInput) {
        if (Array.isArray(fixTypesInput)) {
          parsedFixTypes = fixTypesInput;
        } else {
          // fixTypesInput is string here due to type narrowing
          const stringInput = fixTypesInput as string;
          parsedFixTypes = stringInput.split(',').map((s: string) => s.trim());
        }
      }
      
      autoFixService = new AutoFixService(validationService, {
        enableBackup: options.backup || false,
        dryRun: options.dryRun || false,
        fixTypes: {
          missingMetadata: parsedFixTypes.includes('metadata'),
          incorrectFilename: parsedFixTypes.includes('filename'),
          missingGPS: parsedFixTypes.includes('gps'),
          missingColors: parsedFixTypes.includes('colors')
        }
      });
    }
    
    if (!options.quiet && !options.json) {
      console.log(`\n🔍 Validating ${files.length} files...\n`);
    }
    
    for (let i = 0; i < files.length; i++) {
      const file = files[i];
      const fileStartTime = Date.now();
      
      if (!options.quiet && !options.json) {
        console.log(`[${i + 1}/${files.length}] Validating: ${sanitizePathForLogging(file)}`);
      }
      
      try {
        // Create MediaFile object manually
        // eslint-disable-next-line no-await-in-loop
        const fileValidation = await this.fs.validateFile(file);
        if (!fileValidation.isValid) {
          throw new Error(fileValidation.errors[0] || 'File validation failed');
        }
        
        // eslint-disable-next-line no-await-in-loop
        const pathValidation = await this.fs.validatePath(file);
        if (!pathValidation.isValid) {
          throw new Error('Path validation failed');
        }
        
        // eslint-disable-next-line no-await-in-loop
        const fileMetadata = await this.fs.getFileMetadata(file);
        if (!fileMetadata) {
          throw new Error('Could not get file metadata');
        }
        
        // Simple MIME type detection based on extension
        const ext = file.toLowerCase().split('.').pop() || '';
        const mimeType = {
          jpg: 'image/jpeg',
          jpeg: 'image/jpeg',
          png: 'image/png',
          heic: 'image/heic',
          gif: 'image/gif',
          tiff: 'image/tiff',
          mp4: 'video/mp4',
          mov: 'video/quicktime'
        }[ext] || 'unknown';
        
        const fileInfo = {
          path: file,
          absolutePath: pathValidation.absolutePath,
          hash: 'temp-hash', // We don't need hash for validation
          size: fileMetadata.size,
          mimeType
        };
        
        // Run validation
        // eslint-disable-next-line no-await-in-loop
        const validationReport = await validationService.validatePhoto(fileInfo);
        
        const duration = Date.now() - fileStartTime;
        
        if (!options.quiet && !options.json) {
          // Console output with validation results
          const passIcon = validationReport.passed ? '✅' : '❌';
          const typeEmoji = validationReport.photoType.type === 'heritage-scan' ? '📜' : '📷';
          
          console.log(`   ${passIcon} ${typeEmoji} ${validationReport.photoType.type} - ` + 
                      `Score: ${validationReport.weightedScore}% (${validationReport.overallScore}% raw)`);
          
          // Show category breakdown
          const categories = ['critical', 'quality', 'bonus', 'expected'] as const;
          categories.forEach(cat => {
            const summary = validationReport.summary[cat];
            if (summary.total > 0) {
              const percentage = summary.maxScore > 0 ? Math.round((summary.score / summary.maxScore) * 100) : 0;
              const passThreshold = validationReport.breakdown.passThresholds[cat] ? '✅' : '❌';
              console.log(`     ${passThreshold} ${cat}: ${summary.passed}/${summary.total} (${percentage}%)`);
            }
          });
          
          // Show failed rules
          const failedRules = validationReport.rules.filter(rule => !rule.result.passed);
          if (failedRules.length > 0) {
            console.log('     Failed rules:');
            failedRules.forEach(rule => {
              console.log(`       • ${rule.name}: ${rule.result.message}`);
            });
          }
          
          console.log(''); // Empty line for readability
        }
        
        // Run auto-fix if enabled and validation failed
        if (autoFixService && !validationReport.passed) {
          if (!options.quiet && !options.json) {
            console.log('   🔧 Running auto-fix...');
          }
          
          try {
            // eslint-disable-next-line no-await-in-loop
            const autoFixReport = await autoFixService.autoFix(fileInfo);
            
            if (!options.quiet && !options.json) {
              console.log(`     Fixes attempted: ${autoFixReport.fixAttempted}`);
              console.log(`     Fixes succeeded: ${autoFixReport.fixSucceeded}`);
              console.log(`     Fixes failed: ${autoFixReport.fixFailed}`);
              
              if (autoFixReport.backupDirectory) {
                console.log(`     Backup saved to: ${autoFixReport.backupDirectory}`);
              }
              
              // Show individual fix results
              autoFixReport.fixes.forEach(fix => {
                const icon = fix.fixed ? '✅' : '❌';
                console.log(`     ${icon} ${fix.ruleName}: ${fix.message}`);
              });
              
              // Show validation score change
              if (autoFixReport.validationAfter) {
                const scoreBefore = autoFixReport.validationBefore.weightedScore;
                const scoreAfter = autoFixReport.validationAfter.weightedScore;
                const improvement = scoreAfter - scoreBefore;
                const passedAfter = autoFixReport.validationAfter.passed ? '✅' : '❌';
                const improvementStr = improvement >= 0 ? '+' : '';
                console.log(`     Score: ${scoreBefore}% → ${scoreAfter}% ` +
                  `(${improvementStr}${improvement}%) ${passedAfter}`);
              }
              
              console.log(''); // Empty line for readability
            }
            
            // Use the after-fix validation report if available
            const finalReport = autoFixReport.validationAfter || validationReport;
            results.push({
              filePath: sanitizePathForLogging(file),
              success: true,
              duration,
              metadata: options.autoFix 
                ? { validation: finalReport, autoFix: autoFixReport } as unknown as Record<string, unknown>
                : finalReport as unknown as Record<string, unknown>,
              warnings: []
            });
          } catch (autoFixError) {
            // Auto-fix failed, but validation succeeded - still report validation results
            logger.warn('Auto-fix failed', { 
              file, 
              error: autoFixError instanceof Error ? autoFixError.message : 'Unknown error' 
            });
            
            results.push({
              filePath: sanitizePathForLogging(file),
              success: true,
              duration,
              metadata: validationReport as unknown as Record<string, unknown>,
              warnings: [`Auto-fix failed: ${autoFixError instanceof Error ? autoFixError.message : 'Unknown error'}`]
            });
          }
        } else {
          // No auto-fix needed or not enabled
          results.push({
            filePath: sanitizePathForLogging(file),
            success: true,
            duration,
            metadata: validationReport as unknown as Record<string, unknown>,
            warnings: []
          });
        }
        
      } catch (error) {
        const duration = Date.now() - fileStartTime;
        const errorMessage = error instanceof Error ? error.message : 'Unknown validation error';
        
        if (!options.quiet && !options.json) {
          console.log(`   ❌ Validation failed: ${errorMessage}\n`);
        }
        
        results.push({
          filePath: sanitizePathForLogging(file),
          success: false,
          duration,
          error: errorMessage,
          warnings: []
        });
      }
    }
    
    const totalDuration = Date.now() - startTime;
    
    // Calculate summary statistics
    const summary = this.generateSummary(results, totalDuration);
    
    return {
      success: results.some(r => r.success),
      filesProcessed: results.length,
      duration: totalDuration,
      results,
      summary
    };
  }

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
        let processedData: { timestamp: string } | MediaProcessingResult;
        
        if (options.timestampOnly) {
          // Sequential processing provides ordered progress feedback and resource management
          // eslint-disable-next-line no-await-in-loop
          const timestamp = await extractTimestampOnly(file);
          processedData = { timestamp };
          
          // For timestamp-only mode, just output the timestamp
          console.log(timestamp);
        } else {
          // Sequential processing allows ordered progress display and prevents API/DB overload
          // eslint-disable-next-line no-await-in-loop
          let metadata = await processFile(file);
          
          // Run post-processor (database storage, cleanup, etc.) if requested
          if (options.outputDb) {
            
            const postProcessorOptions: PostProcessorOptions = {
              outputDatabase: true,
              dbCollection: options.dbCollection,
              extractColors: options.colors !== false, // Default true, false only if explicitly --no-colors
              preserveHistory: options.dbHistory !== false // Default true, false only if explicitly --no-db-history
            };
            
            // eslint-disable-next-line no-await-in-loop
            metadata = await postProcess(metadata, postProcessorOptions);
          }
          
          // Handle merge logic if specified
          if (options.merge || options.mergeSections || options.preserveEnrichment) {
            // Sequential merge maintains file processing order for consistency
            // eslint-disable-next-line no-await-in-loop
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
      
      // Close main database connection (used by post-processor)
      const { closeDatabase } = await import('../database/index.js');
      await closeDatabase();
      
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
        mode: options.mergeSections ? MergeMode.MERGE_SELECTIVE : MergeMode.MERGE,
        sections: options.mergeSections as MetadataSection[] | undefined,
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