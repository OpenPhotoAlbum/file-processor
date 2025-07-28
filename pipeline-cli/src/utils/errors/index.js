/**
 * Error system exports and utilities
 * Central point for all error handling functionality
 */
export * from './codes.js';
export * from './classes.js';
import { MPPError, ValidationError, ExifError, GPSError, TimestampError, PathError, MetadataError, ConfigError, SystemError, LandmarkError } from './classes.js';
import { ErrorSeverity } from './codes.js';
/**
 * Error factory functions for easy creation with automatic logging
 */
export class ErrorFactory {
    logger;
    constructor(logger) {
        this.logger = logger;
    }
    /**
     * Create and log validation error
     */
    validation(code, context, cause) {
        const error = new ValidationError(code, context, cause);
        this.logError(error);
        return error;
    }
    /**
     * Create and log EXIF error
     */
    exif(code, context, cause) {
        const error = new ExifError(code, context, cause);
        this.logError(error);
        return error;
    }
    /**
     * Create and log GPS error
     */
    gps(code, context, cause) {
        const error = new GPSError(code, context, cause);
        this.logError(error);
        return error;
    }
    /**
     * Create and log timestamp error
     */
    timestamp(code, context, cause) {
        const error = new TimestampError(code, context, cause);
        this.logError(error);
        return error;
    }
    /**
     * Create and log path error
     */
    path(code, context, cause) {
        const error = new PathError(code, context, cause);
        this.logError(error);
        return error;
    }
    /**
     * Create and log metadata error
     */
    metadata(code, context, cause) {
        const error = new MetadataError(code, context, cause);
        this.logError(error);
        return error;
    }
    /**
     * Create and log configuration error
     */
    config(code, context, cause) {
        const error = new ConfigError(code, context, cause);
        this.logError(error);
        return error;
    }
    /**
     * Create and log system error
     */
    system(code, context, cause) {
        const error = new SystemError(code, context, cause);
        this.logError(error);
        return error;
    }
    /**
     * Create and log landmark error
     */
    landmark(code, context, cause) {
        const error = new LandmarkError(code, context, cause);
        this.logError(error);
        return error;
    }
    /**
     * Log error with appropriate level based on severity
     */
    logError(error) {
        const logData = {
            errorCode: error.code,
            severity: error.severity,
            context: error.context
        };
        switch (error.severity) {
            case ErrorSeverity.FATAL:
                this.logger.fatal(error.message, error, logData);
                break;
            case ErrorSeverity.ERROR:
                this.logger.error(error.message, error, logData);
                break;
            case ErrorSeverity.WARNING:
                this.logger.warn(error.message, logData);
                break;
            case ErrorSeverity.INFO:
                this.logger.info(error.message, logData);
                break;
        }
    }
}
/**
 * Utility functions for error handling
 */
/**
 * Check if an error is an MPP error
 */
export function isMPPError(error) {
    return error instanceof MPPError;
}
/**
 * Get error code from any error (returns null for non-MPP errors)
 */
export function getErrorCode(error) {
    return isMPPError(error) ? error.code : null;
}
/**
 * Check if error should halt processing
 */
export function shouldHaltProcessing(error) {
    return isMPPError(error) && error.isFatal();
}
/**
 * Get user-friendly error message
 */
export function getUserErrorMessage(error) {
    if (isMPPError(error)) {
        return error.getUserMessage();
    }
    return 'An unexpected error occurred. Please check the logs for details.';
}
/**
 * Create error factory for a component
 */
export function createErrorFactory(logger) {
    return new ErrorFactory(logger);
}
//# sourceMappingURL=index.js.map