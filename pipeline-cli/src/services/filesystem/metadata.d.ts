/**
 * File metadata and statistics operations
 */
import { FileSystemMetadata } from './types.js';
export declare class FileSystemMetadataService {
    private logger;
    private systemErrors;
    /**
     * Get comprehensive file metadata
     */
    getFileMetadata(filePath: string, followSymlinks?: boolean): Promise<FileSystemMetadata | null>;
    /**
     * Get metadata for multiple files in batch
     */
    getBatchMetadata(filePaths: string[], followSymlinks?: boolean): Promise<Map<string, FileSystemMetadata | null>>;
    /**
     * Get directory contents with metadata
     */
    getDirectoryContentsWithMetadata(dirPath: string, includeHidden?: boolean): Promise<FileSystemMetadata[]>;
    /**
     * Compare file modification times
     */
    isFileNewer(fileA: FileSystemMetadata, fileB: FileSystemMetadata): boolean;
    /**
     * Check if file was modified within the specified time frame
     */
    wasModifiedWithin(metadata: FileSystemMetadata, milliseconds: number): boolean;
    /**
     * Get total size of multiple files
     */
    getTotalSize(metadataList: FileSystemMetadata[]): number;
    /**
     * Format file size for human reading
     */
    formatFileSize(bytes: number): string;
    /**
     * Format timestamp for human reading
     */
    formatTimestamp(date: Date): string;
    /**
     * Get file age in human-readable format
     */
    getFileAge(metadata: FileSystemMetadata): string;
    /**
     * Utility to chunk array for batch processing
     */
    private chunkArray;
}
