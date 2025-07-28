/**
 * File validation and integrity checking
 */
import { FileValidationResult, PathValidationResult } from './types.js';
export declare class FileSystemValidator {
    private logger;
    private validationErrors;
    private pathErrors;
    /**
     * Validate that a file exists and is accessible
     */
    validateFile(filePath: string): Promise<FileValidationResult>;
    /**
     * Validate that an optional file exists and is accessible (uses INFO level logging for missing files)
     */
    validateOptionalFile(filePath: string): Promise<FileValidationResult>;
    /**
     * Validate and resolve a path (can be prefixed or absolute)
     */
    validatePath(inputPath: string): Promise<PathValidationResult>;
    /**
     * Batch validate multiple files
     */
    validateFiles(filePaths: string[]): Promise<Map<string, FileValidationResult>>;
    /**
     * Check if a path is within allowed base directories
     */
    validatePathSecurity(filePath: string): Promise<boolean>;
    /**
     * Utility to chunk array for batch processing
     */
    private chunkArray;
}
