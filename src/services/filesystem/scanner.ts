/**
 * Directory scanning and file enumeration functionality
 */

import { readdir, stat } from 'fs/promises';
import { join, extname, basename } from 'path';
import { Logger } from '../../utils/logging/index.js';
import { createSystemErrorFactory } from '../../utils/errors/factories.js';
import { toAbsolutePath, sanitizePathForLogging } from '../../utils/paths.js';
import { 
  ScanOptions, 
  MediaDiscoveryOptions, 
  MediaDiscoveryResult, 
  MEDIA_EXTENSIONS 
} from './types.js';

export class FileSystemScanner {
  private logger = new Logger('FileSystem Scanner');
  private systemErrors = createSystemErrorFactory(this.logger);

  /**
   * Scan directory for files matching the specified criteria
   */
  async scanDirectory(options: ScanOptions): Promise<string[]> {
    const startTime = Date.now();
    const absolutePath = toAbsolutePath(options.path);
    const safePath = sanitizePathForLogging(absolutePath);
    
    this.logger.info(`Scanning directory: ${safePath}`);
    
    try {
      const files = await this.scanDirectoryRecursive(
        absolutePath,
        options,
        0,
        options.maxDepth ?? -1
      );
      
      const duration = Date.now() - startTime;
      this.logger.info(`Found ${files.length} files in ${duration}ms: ${safePath}`);
      
      return files;
    } catch (error) {
      this.systemErrors.fileOperationFailed({
        filePath: safePath,
        operation: 'directory scanning'
      }, error as Error);
      
      return [];
    }
  }

  /**
   * Discover media files with additional processing options
   */
  async discoverMediaFiles(
    path: string, 
    recursive: boolean = false,
    options: MediaDiscoveryOptions = {}
  ): Promise<MediaDiscoveryResult> {
    const startTime = Date.now();
    const absolutePath = toAbsolutePath(path);
    const safePath = sanitizePathForLogging(absolutePath);
    
    this.logger.info(`Discovering media files: ${safePath}`);
    
    const scanOptions: ScanOptions = {
      path: absolutePath,
      recursive,
      extensions: this.getAllMediaExtensions(),
      includeHidden: false
    };

    if (options.maxFileSize) {
      // Add size filtering logic if needed
      this.logger.debug(`Filtering files larger than ${options.maxFileSize} bytes`);
    }

    try {
      const allFiles = await this.scanDirectory(scanOptions);
      const mediaFiles: string[] = [];
      const sidecarFiles: string[] = [];
      const invalidFiles: string[] = [];
      
      for (const file of allFiles) {
        const ext = extname(file).toLowerCase();
        
        // Categorize files
        if (this.isMediaExtension(ext)) {
          if (options.skipInvalid) {
            // TODO: Add file validation here when validator is implemented
            mediaFiles.push(file);
          } else {
            mediaFiles.push(file);
          }
        } else if (this.isSidecarExtension(ext)) {
          if (options.includeSidecars) {
            sidecarFiles.push(file);
          }
        }
      }

      const result: MediaDiscoveryResult = {
        mediaFiles,
        sidecarFiles,
        invalidFiles,
        totalScanned: allFiles.length,
        scanDuration: Date.now() - startTime
      };
      
      this.logger.info(
        `Media discovery complete: ${result.mediaFiles.length} media, ` +
        `${result.sidecarFiles.length} sidecars, ${result.totalScanned} total`
      );
      
      return result;
    } catch (error) {
      this.systemErrors.fileOperationFailed({
        filePath: safePath,
        operation: 'media file discovery'
      }, error as Error);
      
      return {
        mediaFiles: [],
        sidecarFiles: [],
        invalidFiles: [],
        totalScanned: 0,
        scanDuration: Date.now() - startTime
      };
    }
  }

  /**
   * Recursive directory scanning implementation
   */
  private async scanDirectoryRecursive(
    dirPath: string,
    options: ScanOptions,
    currentDepth: number,
    maxDepth: number
  ): Promise<string[]> {
    const files: string[] = [];
    
    // Check depth limit
    if (maxDepth >= 0 && currentDepth > maxDepth) {
      return files;
    }

    try {
      const entries = await readdir(dirPath, { withFileTypes: true });
      
      for (const entry of entries) {
        const fullPath = join(dirPath, entry.name);
        
        // Skip hidden files unless explicitly included
        if (!options.includeHidden && entry.name.startsWith('.')) {
          continue;
        }

        if (entry.isDirectory()) {
          if (options.recursive) {
            const subFiles = await this.scanDirectoryRecursive(
              fullPath,
              options,
              currentDepth + 1,
              maxDepth
            );
            files.push(...subFiles);
          }
        } else if (entry.isFile() || (entry.isSymbolicLink() && options.followSymlinks)) {
          // Apply filters
          if (this.passesFilters(fullPath, options)) {
            files.push(fullPath);
          }
        }
      }
    } catch (error) {
      const safePath = sanitizePathForLogging(dirPath);
      this.systemErrors.fileOperationFailed({
        filePath: safePath,
        operation: 'directory reading',
        depth: currentDepth
      }, error as Error);
    }

    return files;
  }

  /**
   * Check if file passes the specified filters
   */
  private passesFilters(filePath: string, options: ScanOptions): boolean {
    const ext = extname(filePath).toLowerCase();
    
    // Extension filter
    if (options.extensions && options.extensions.length > 0) {
      if (!options.extensions.includes(ext)) {
        return false;
      }
    }
    
    // MIME type filter would require file inspection
    // For now, we'll rely on extension mapping
    if (options.mimeTypes && options.mimeTypes.length > 0) {
      const mimeType = this.getMimeTypeFromExtension(ext);
      if (mimeType && !options.mimeTypes.includes(mimeType)) {
        return false;
      }
    }
    
    return true;
  }

  /**
   * Get all supported media file extensions
   */
  private getAllMediaExtensions(): string[] {
    return [
      ...MEDIA_EXTENSIONS.IMAGE,
      ...MEDIA_EXTENSIONS.VIDEO,
      ...MEDIA_EXTENSIONS.AUDIO
    ];
  }

  /**
   * Check if extension is a known media extension
   */
  private isMediaExtension(extension: string): boolean {
    return this.getAllMediaExtensions().includes(extension.toLowerCase());
  }

  /**
   * Check if extension is a known sidecar extension
   */
  private isSidecarExtension(extension: string): boolean {
    const sidecarExts = ['.xmp', '.json', '.xml', '.txt', '.yaml', '.yml'];
    return sidecarExts.includes(extension.toLowerCase());
  }

  /**
   * Map file extension to MIME type (basic mapping)
   */
  private getMimeTypeFromExtension(extension: string): string | null {
    const mimeMap: Record<string, string> = {
      '.jpg': 'image/jpeg',
      '.jpeg': 'image/jpeg',
      '.png': 'image/png',
      '.gif': 'image/gif',
      '.webp': 'image/webp',
      '.heic': 'image/heic',
      '.heif': 'image/heif',
      '.mp4': 'video/mp4',
      '.mov': 'video/quicktime',
      '.avi': 'video/x-msvideo',
      '.mp3': 'audio/mpeg',
      '.wav': 'audio/wav',
      '.flac': 'audio/flac'
    };
    
    return mimeMap[extension.toLowerCase()] || null;
  }
}