/**
 * Centralized filesystem service for media processing pipeline
 * Provides unified interface for all file system operations
 */

import { join, dirname, basename, extname } from 'path';
import { Logger } from '../../utils/logging/index.js';
import { createSystemErrorFactory } from '../../utils/errors/factories.js';
import { toAbsolutePath, sanitizePathForLogging } from '../../utils/paths.js';
import { FileSystemScanner } from './scanner.js';
import { FileSystemValidator } from './validator.js';
import { FileSystemMetadataService } from './metadata.js';
import { 
  ScanOptions, 
  MediaDiscoveryOptions, 
  MediaDiscoveryResult,
  FileValidationResult,
  PathValidationResult,
  SidecarSearchOptions,
  SIDECAR_EXTENSIONS
} from './types.js';

export class FileSystemService {
  private logger = new Logger('FileSystem Service');
  private systemErrors = createSystemErrorFactory(this.logger);
  
  // Component services
  private scanner = new FileSystemScanner();
  private validator = new FileSystemValidator();
  private metadata = new FileSystemMetadataService();

  /**
   * Scan directory for files with flexible options
   */
  async scanDirectory(options: ScanOptions): Promise<string[]> {
    this.logger.info(`Scanning directory: ${sanitizePathForLogging(options.path)}`);
    return this.scanner.scanDirectory(options);
  }

  /**
   * Discover media files with comprehensive options
   */
  async discoverMediaFiles(
    path: string, 
    recursive: boolean = false,
    options: MediaDiscoveryOptions = {}
  ): Promise<MediaDiscoveryResult> {
    return this.scanner.discoverMediaFiles(path, recursive, options);
  }

  /**
   * Validate file existence, permissions, and accessibility
   */
  async validateFile(filePath: string): Promise<FileValidationResult> {
    return this.validator.validateFile(filePath);
  }

  /**
   * Validate optional file (uses INFO level logging for missing files)
   */
  async validateOptionalFile(filePath: string): Promise<FileValidationResult> {
    return this.validator.validateOptionalFile(filePath);
  }

  /**
   * Validate and resolve path (handles prefixes and absolute paths)
   */
  async validatePath(inputPath: string): Promise<PathValidationResult> {
    return this.validator.validatePath(inputPath);
  }

  /**
   * Get comprehensive file metadata
   */
  async getFileMetadata(filePath: string): Promise<import('./types.js').FileSystemMetadata | null> {
    return this.metadata.getFileMetadata(filePath);
  }

  /**
   * Find sidecar files associated with a media file
   */
  async findSidecarFiles(
    mediaFilePath: string, 
    options: SidecarSearchOptions = {}
  ): Promise<string[]> {
    const absolutePath = toAbsolutePath(mediaFilePath);
    const safePath = sanitizePathForLogging(absolutePath);
    const dir = dirname(absolutePath);
    const baseName = basename(absolutePath, extname(absolutePath));
    
    this.logger.debug(`Searching for sidecar files: ${safePath}`);
    
    const sidecarFiles: string[] = [];
    const extensions = options.extensions || SIDECAR_EXTENSIONS;
    
    try {
      // Search for sidecars in the same directory
      for (const ext of extensions) {
        const sidecarPath = join(dir, `${baseName}${ext}`);
        const validation = await this.validateOptionalFile(sidecarPath);
        
        if (validation.isValid) {
          sidecarFiles.push(sidecarPath);
          this.logger.debug(`Found sidecar: ${sanitizePathForLogging(sidecarPath)}`);
        }
      }
      
      // Search in parent directories if requested
      if (options.searchParentDirs) {
        const parentSidecars = await this.searchParentDirectoriesForSidecars(
          absolutePath,
          baseName,
          extensions,
          options.maxParentDepth || 2
        );
        sidecarFiles.push(...parentSidecars);
      }
      
    } catch (error) {
      this.systemErrors.fileOperationFailed({
        filePath: safePath,
        operation: 'sidecar file search'
      }, error as Error);
    }
    
    this.logger.debug(`Found ${sidecarFiles.length} sidecar files for: ${safePath}`);
    return sidecarFiles;
  }

  /**
   * Batch operations for multiple files
   */
  async batchValidateFiles(filePaths: string[]): Promise<Map<string, FileValidationResult>> {
    return this.validator.validateFiles(filePaths);
  }

  async batchGetMetadata(filePaths: string[]): Promise<Map<string, import('./types.js').FileSystemMetadata | null>> {
    return this.metadata.getBatchMetadata(filePaths);
  }

  /**
   * Utility methods for common operations
   */
  
  /**
   * Check if path is safe for processing (security validation)
   */
  async isPathSafe(filePath: string): Promise<boolean> {
    return this.validator.validatePathSecurity(filePath);
  }

  /**
   * Get directory contents with full metadata
   */
  async getDirectoryContents(dirPath: string, includeHidden: boolean = false): Promise<import('./types.js').FileSystemMetadata[]> {
    return this.metadata.getDirectoryContentsWithMetadata(dirPath, includeHidden);
  }

  /**
   * Quick file existence check
   */
  async fileExists(filePath: string): Promise<boolean> {
    const result = await this.validateFile(filePath);
    return result.exists;
  }

  /**
   * Format file size for display
   */
  formatFileSize(bytes: number): string {
    return this.metadata.formatFileSize(bytes);
  }

  /**
   * Format timestamp for display
   */
  formatTimestamp(date: Date): string {
    return this.metadata.formatTimestamp(date);
  }

  /**
   * Get human-readable file age
   */
  getFileAge(metadata: import('./types.js').FileSystemMetadata): string {
    return this.metadata.getFileAge(metadata);
  }

  /**
   * Search parent directories for sidecar files
   */
  private async searchParentDirectoriesForSidecars(
    filePath: string,
    baseName: string,
    extensions: readonly string[],
    maxDepth: number
  ): Promise<string[]> {
    const sidecarFiles: string[] = [];
    let currentDir = dirname(filePath);
    let depth = 0;
    
    while (depth < maxDepth) {
      const parentDir = dirname(currentDir);
      
      // Stop if we've reached the root or haven't moved up
      if (parentDir === currentDir) {
        break;
      }
      
      // Search for sidecars in this parent directory
      for (const ext of extensions) {
        const sidecarPath = join(parentDir, `${baseName}${ext}`);
        const validation = await this.validateOptionalFile(sidecarPath);
        
        if (validation.isValid) {
          sidecarFiles.push(sidecarPath);
          this.logger.debug(`Found parent sidecar: ${sanitizePathForLogging(sidecarPath)}`);
        }
      }
      
      currentDir = parentDir;
      depth++;
    }
    
    return sidecarFiles;
  }
}

// Export the service and types for convenience
export * from './types.js';
export { FileSystemScanner } from './scanner.js';
export { FileSystemValidator } from './validator.js';
export { FileSystemMetadataService } from './metadata.js';