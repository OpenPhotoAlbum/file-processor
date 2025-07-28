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
import { SIDECAR_EXTENSIONS } from './types.js';
export class FileSystemService {
    logger = new Logger('FileSystem Service');
    systemErrors = createSystemErrorFactory(this.logger);
    // Component services
    scanner = new FileSystemScanner();
    validator = new FileSystemValidator();
    metadata = new FileSystemMetadataService();
    /**
     * Scan directory for files with flexible options
     */
    async scanDirectory(options) {
        this.logger.info(`Scanning directory: ${sanitizePathForLogging(options.path)}`);
        return this.scanner.scanDirectory(options);
    }
    /**
     * Discover media files with comprehensive options
     */
    async discoverMediaFiles(path, recursive = false, options = {}) {
        return this.scanner.discoverMediaFiles(path, recursive, options);
    }
    /**
     * Validate file existence, permissions, and accessibility
     */
    async validateFile(filePath) {
        return this.validator.validateFile(filePath);
    }
    /**
     * Validate optional file (uses INFO level logging for missing files)
     */
    async validateOptionalFile(filePath) {
        return this.validator.validateOptionalFile(filePath);
    }
    /**
     * Validate and resolve path (handles prefixes and absolute paths)
     */
    async validatePath(inputPath) {
        return this.validator.validatePath(inputPath);
    }
    /**
     * Get comprehensive file metadata
     */
    async getFileMetadata(filePath) {
        return this.metadata.getFileMetadata(filePath);
    }
    /**
     * Find sidecar files associated with a media file
     */
    async findSidecarFiles(mediaFilePath, options = {}) {
        const absolutePath = toAbsolutePath(mediaFilePath);
        const safePath = sanitizePathForLogging(absolutePath);
        const dir = dirname(absolutePath);
        const baseName = basename(absolutePath, extname(absolutePath));
        this.logger.debug(`Searching for sidecar files: ${safePath}`);
        const sidecarFiles = [];
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
                const parentSidecars = await this.searchParentDirectoriesForSidecars(absolutePath, baseName, extensions, options.maxParentDepth || 2);
                sidecarFiles.push(...parentSidecars);
            }
        }
        catch (error) {
            this.systemErrors.fileOperationFailed({
                filePath: safePath,
                operation: 'sidecar file search'
            }, error);
        }
        this.logger.debug(`Found ${sidecarFiles.length} sidecar files for: ${safePath}`);
        return sidecarFiles;
    }
    /**
     * Batch operations for multiple files
     */
    async batchValidateFiles(filePaths) {
        return this.validator.validateFiles(filePaths);
    }
    async batchGetMetadata(filePaths) {
        return this.metadata.getBatchMetadata(filePaths);
    }
    /**
     * Utility methods for common operations
     */
    /**
     * Check if path is safe for processing (security validation)
     */
    async isPathSafe(filePath) {
        return this.validator.validatePathSecurity(filePath);
    }
    /**
     * Get directory contents with full metadata
     */
    async getDirectoryContents(dirPath, includeHidden = false) {
        return this.metadata.getDirectoryContentsWithMetadata(dirPath, includeHidden);
    }
    /**
     * Quick file existence check
     */
    async fileExists(filePath) {
        const result = await this.validateFile(filePath);
        return result.exists;
    }
    /**
     * Format file size for display
     */
    formatFileSize(bytes) {
        return this.metadata.formatFileSize(bytes);
    }
    /**
     * Format timestamp for display
     */
    formatTimestamp(date) {
        return this.metadata.formatTimestamp(date);
    }
    /**
     * Get human-readable file age
     */
    getFileAge(metadata) {
        return this.metadata.getFileAge(metadata);
    }
    /**
     * Search parent directories for sidecar files
     */
    async searchParentDirectoriesForSidecars(filePath, baseName, extensions, maxDepth) {
        const sidecarFiles = [];
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
//# sourceMappingURL=index.js.map