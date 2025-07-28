import { MediaFile } from '../../types/media.js';
export interface ValidationRule {
    id: string;
    name: string;
    description: string;
    category: 'critical' | 'quality' | 'bonus' | 'expected';
    weight: number;
    validate: (file: MediaFile, metadata?: any) => Promise<ValidationResult>;
}
export interface ValidationResult {
    passed: boolean;
    score: number;
    message: string;
    details?: string;
}
export interface PhotoTypeDetection {
    type: 'post-digital' | 'heritage-scan' | 'unknown';
    confidence: 'high' | 'medium' | 'low';
    evidence: string[];
}
export interface ValidationReport {
    file: MediaFile;
    photoType: PhotoTypeDetection;
    rules: Array<ValidationRule & {
        result: ValidationResult;
    }>;
    overallScore: number;
    passed: boolean;
    summary: {
        critical: {
            passed: number;
            total: number;
        };
        quality: {
            passed: number;
            total: number;
        };
        bonus: {
            passed: number;
            total: number;
        };
        expected: {
            passed: number;
            total: number;
        };
    };
}
/**
 * ValidationService - Core photo validation and type detection
 *
 * Detects photo types (post-digital vs heritage-scan) and runs validation rules
 * against photos to ensure they meet quality and completeness standards.
 */
export declare class ValidationService {
    private logger;
    private validationErrors;
    private systemErrors;
    private exifExtractor;
    /**
     * Detect photo type based on metadata and file characteristics
     */
    detectPhotoType(file: MediaFile): Promise<PhotoTypeDetection>;
    /**
     * Get validation rules for a specific photo type
     */
    getValidationRules(photoType: 'post-digital' | 'heritage-scan'): ValidationRule[];
    /**
     * Post-digital photo validation rules
     */
    private getPostDigitalRules;
    /**
     * Heritage-scan photo validation rules
     */
    private getHeritageScanRules;
    /**
     * Run validation against a photo
     */
    validatePhoto(file: MediaFile): Promise<ValidationReport>;
    /**
     * Simple pass/fail validation for critical requirements only
     */
    validateCriticalRequirements(file: MediaFile): Promise<{
        passed: boolean;
        failures: string[];
    }>;
}
