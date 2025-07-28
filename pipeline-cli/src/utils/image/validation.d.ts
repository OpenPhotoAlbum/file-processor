/**
 * Image validation utilities
 * Shared validation logic that can be used by any image processor
 */
import { MediaFile } from '../../types/media.js';
export interface ValidationResult {
    isValid: boolean;
    errors: string[];
    warnings: string[];
    detectedMimeType?: string;
    fileSignature?: string;
}
/**
 * Comprehensive image validation utilities
 */
export declare class ImageValidator {
    /**
     * Run all validation checks
     */
    validateImage(file: MediaFile): Promise<ValidationResult>;
    /**
     * Basic file validation
     */
    basicValidation(file: MediaFile): Promise<ValidationResult>;
    /**
     * Validate file signature matches content
     */
    validateFileSignature(file: MediaFile): Promise<ValidationResult & {
        detectedMimeType?: string;
        fileSignature?: string;
    }>;
    /**
     * Check file integrity
     */
    validateIntegrity(file: MediaFile): Promise<ValidationResult>;
    /**
     * Read file signature (magic bytes)
     */
    private readFileSignature;
    /**
     * Detect file type from magic bytes
     */
    private detectSignature;
    /**
     * Map signature to MIME type
     */
    private signatureToMimeType;
    /**
     * Read entire file to check integrity
     */
    private readFileCompletely;
    /**
     * Merge validation results
     */
    private mergeResults;
}
