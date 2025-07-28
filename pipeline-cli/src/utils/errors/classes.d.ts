/**
 * Custom error classes with structured error codes
 * Integrates with logging system for consistent error reporting
 */
import { ErrorCode, ErrorSeverity } from './codes.js';
import type { UnknownJsonContent } from '../../types/semantic-any.js';
/**
 * Base custom error class with error codes
 */
export declare class MPPError extends Error {
    readonly code: ErrorCode;
    readonly severity: ErrorSeverity;
    readonly context?: UnknownJsonContent;
    readonly userAction?: string;
    readonly cause?: Error;
    constructor(code: ErrorCode, context?: UnknownJsonContent, cause?: Error);
    /**
     * Convert to JSON for logging
     */
    toJSON(): {
        name: string;
        code: "MPP-VAL-E-001" | "MPP-VAL-E-002" | "MPP-VAL-W-001" | "MPP-VAL-W-003" | "MPP-EXIF-E-001" | "MPP-EXIF-E-002" | "MPP-EXIF-W-003" | "MPP-EXIF-E-004" | "MPP-GPS-W-001" | "MPP-GPS-E-002" | "MPP-GPS-W-003" | "MPP-GPS-I-004" | "MPP-TIME-E-001" | "MPP-TIME-W-002" | "MPP-TIME-W-003" | "MPP-TIME-E-004" | "MPP-TIME-I-005" | "MPP-PATH-F-001" | "MPP-PATH-D-002" | "MPP-PATH-E-003" | "MPP-PATH-E-004" | "MPP-META-E-001" | "MPP-META-W-002" | "MPP-META-E-003" | "MPP-CFG-F-001" | "MPP-CFG-E-002" | "MPP-SYS-F-001" | "MPP-SYS-E-001" | "MPP-SYS-E-002" | "MPP-LANDMARK-W-001" | "MPP-LANDMARK-W-002" | "MPP-LANDMARK-W-003" | "MPP-LANDMARK-W-004" | "MPP-LANDMARK-W-021" | "MPP-LANDMARK-W-022" | "MPP-LANDMARK-W-023" | "MPP-LANDMARK-W-024" | "MPP-LANDMARK-W-041" | "MPP-LANDMARK-W-042" | "MPP-LANDMARK-W-043" | "MPP-LANDMARK-E-001" | "MPP-LANDMARK-E-002" | "MPP-LANDMARK-E-003" | "MPP-LANDMARK-E-004" | "MPP-LANDMARK-E-021" | "MPP-LANDMARK-E-022" | "MPP-LANDMARK-E-023" | "MPP-LANDMARK-I-001";
        severity: ErrorSeverity;
        message: string;
        context: any;
        userAction: string | undefined;
        stack: string | undefined;
        cause: {
            name: string;
            message: string;
        } | undefined;
    };
    /**
     * Get formatted error for user display
     */
    getUserMessage(): string;
    /**
     * Check if error is fatal
     */
    isFatal(): boolean;
    /**
     * Check if error is warning level
     */
    isWarning(): boolean;
}
/**
 * Validation-specific error
 */
export declare class ValidationError extends MPPError {
    constructor(code: ErrorCode, context?: UnknownJsonContent, cause?: Error);
}
/**
 * EXIF extraction error
 */
export declare class ExifError extends MPPError {
    constructor(code: ErrorCode, context?: UnknownJsonContent, cause?: Error);
}
/**
 * GPS processing error
 */
export declare class GPSError extends MPPError {
    constructor(code: ErrorCode, context?: UnknownJsonContent, cause?: Error);
}
/**
 * Timestamp processing error
 */
export declare class TimestampError extends MPPError {
    constructor(code: ErrorCode, context?: UnknownJsonContent, cause?: Error);
}
/**
 * Path resolution error
 */
export declare class PathError extends MPPError {
    constructor(code: ErrorCode, context?: UnknownJsonContent, cause?: Error);
}
/**
 * Metadata processing error
 */
export declare class MetadataError extends MPPError {
    constructor(code: ErrorCode, context?: UnknownJsonContent, cause?: Error);
}
/**
 * Configuration error
 */
export declare class ConfigError extends MPPError {
    constructor(code: ErrorCode, context?: UnknownJsonContent, cause?: Error);
}
/**
 * System error
 */
export declare class SystemError extends MPPError {
    constructor(code: ErrorCode, context?: UnknownJsonContent, cause?: Error);
}
/**
 * Landmark processing error
 */
export declare class LandmarkError extends MPPError {
    constructor(code: ErrorCode, context?: UnknownJsonContent, cause?: Error);
}
