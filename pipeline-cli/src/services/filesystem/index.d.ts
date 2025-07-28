/**
 * Centralized filesystem service for media processing pipeline
 * Provides unified interface for all file system operations
 */
import { ScanOptions, MediaDiscoveryOptions, MediaDiscoveryResult, FileValidationResult, PathValidationResult, SidecarSearchOptions } from './types.js';
export declare class FileSystemService {
    private logger;
    private systemErrors;
    private scanner;
    private validator;
    private metadata;
    /**
     * Scan directory for files with flexible options
     */
    scanDirectory(options: ScanOptions): Promise<string[]>;
    /**
     * Discover media files with comprehensive options
     */
    discoverMediaFiles(path: string, recursive?: boolean, options?: MediaDiscoveryOptions): Promise<MediaDiscoveryResult>;
    /**
     * Validate file existence, permissions, and accessibility
     */
    validateFile(filePath: string): Promise<FileValidationResult>;
    /**
     * Validate optional file (uses INFO level logging for missing files)
     */
    validateOptionalFile(filePath: string): Promise<FileValidationResult>;
    /**
     * Validate and resolve path (handles prefixes and absolute paths)
     */
    validatePath(inputPath: string): Promise<PathValidationResult>;
    /**
     * Get comprehensive file metadata
     */
    getFileMetadata(filePath: string): Promise<import('./types.js').FileSystemMetadata | null>;
    /**
     * Find sidecar files associated with a media file
     */
    findSidecarFiles(mediaFilePath: string, options?: SidecarSearchOptions): Promise<string[]>;
    /**
     * Batch operations for multiple files
     */
    batchValidateFiles(filePaths: string[]): Promise<Map<string, FileValidationResult>>;
    batchGetMetadata(filePaths: string[]): Promise<Map<string, import('./types.js').FileSystemMetadata | null>>;
    /**
     * Utility methods for common operations
     */
    /**
     * Check if path is safe for processing (security validation)
     */
    isPathSafe(filePath: string): Promise<boolean>;
    /**
     * Get directory contents with full metadata
     */
    getDirectoryContents(dirPath: string, includeHidden?: boolean): Promise<import('./types.js').FileSystemMetadata[]>;
    /**
     * Quick file existence check
     */
    fileExists(filePath: string): Promise<boolean>;
    /**
     * Format file size for display
     */
    formatFileSize(bytes: number): string;
    /**
     * Format timestamp for display
     */
    formatTimestamp(date: Date): string;
    /**
     * Get human-readable file age
     */
    getFileAge(metadata: import('./types.js').FileSystemMetadata): string;
    /**
     * Search parent directories for sidecar files
     */
    private searchParentDirectoriesForSidecars;
}
export * from './types.js';
export { FileSystemScanner } from './scanner.js';
export { FileSystemValidator } from './validator.js';
export { FileSystemMetadataService } from './metadata.js';
