/**
 * Error system exports and utilities
 * Central point for all error handling functionality
 */
export * from './codes.js';
export * from './classes.js';
import { Logger } from '../logging/index.js';
import { MPPError, ValidationError, ExifError, GPSError, TimestampError, PathError, MetadataError, ConfigError, SystemError, LandmarkError } from './classes.js';
import type { UnknownJsonContent } from '../../types/semantic-any.js';
import { ErrorCode } from './codes.js';
/**
 * Error factory functions for easy creation with automatic logging
 */
export declare class ErrorFactory {
    private logger;
    constructor(logger: Logger);
    /**
     * Create and log validation error
     */
    validation(code: ErrorCode, context?: UnknownJsonContent, cause?: Error): ValidationError;
    /**
     * Create and log EXIF error
     */
    exif(code: ErrorCode, context?: UnknownJsonContent, cause?: Error): ExifError;
    /**
     * Create and log GPS error
     */
    gps(code: ErrorCode, context?: UnknownJsonContent, cause?: Error): GPSError;
    /**
     * Create and log timestamp error
     */
    timestamp(code: ErrorCode, context?: UnknownJsonContent, cause?: Error): TimestampError;
    /**
     * Create and log path error
     */
    path(code: ErrorCode, context?: UnknownJsonContent, cause?: Error): PathError;
    /**
     * Create and log metadata error
     */
    metadata(code: ErrorCode, context?: UnknownJsonContent, cause?: Error): MetadataError;
    /**
     * Create and log configuration error
     */
    config(code: ErrorCode, context?: UnknownJsonContent, cause?: Error): ConfigError;
    /**
     * Create and log system error
     */
    system(code: ErrorCode, context?: UnknownJsonContent, cause?: Error): SystemError;
    /**
     * Create and log landmark error
     */
    landmark(code: ErrorCode, context?: UnknownJsonContent, cause?: Error): LandmarkError;
    /**
     * Log error with appropriate level based on severity
     */
    private logError;
}
/**
 * Utility functions for error handling
 */
/**
 * Check if an error is an MPP error
 */
export declare function isMPPError(error: unknown): error is MPPError;
/**
 * Get error code from any error (returns null for non-MPP errors)
 */
export declare function getErrorCode(error: unknown): ErrorCode | null;
/**
 * Check if error should halt processing
 */
export declare function shouldHaltProcessing(error: unknown): boolean;
/**
 * Get user-friendly error message
 */
export declare function getUserErrorMessage(error: unknown): string;
/**
 * Create error factory for a component
 */
export declare function createErrorFactory(logger: Logger): ErrorFactory;
