/**
 * Error system exports and utilities
 * Central point for all error handling functionality
 */

export * from './codes.js';
export * from './classes.js';

import { Logger } from '../logging/index.js';
import { MPPError, ValidationError, ExifError, GPSError, PathError, MetadataError, ConfigError, SystemError } from './classes.js';
import { ErrorCode, ErrorSeverity } from './codes.js';

/**
 * Error factory functions for easy creation with automatic logging
 */
export class ErrorFactory {
  constructor(private logger: Logger) {}

  /**
   * Create and log validation error
   */
  validation(code: ErrorCode, context?: Record<string, any>, cause?: Error): ValidationError {
    const error = new ValidationError(code, context, cause);
    this.logError(error);
    return error;
  }

  /**
   * Create and log EXIF error
   */
  exif(code: ErrorCode, context?: Record<string, any>, cause?: Error): ExifError {
    const error = new ExifError(code, context, cause);
    this.logError(error);
    return error;
  }

  /**
   * Create and log GPS error
   */
  gps(code: ErrorCode, context?: Record<string, any>, cause?: Error): GPSError {
    const error = new GPSError(code, context, cause);
    this.logError(error);
    return error;
  }

  /**
   * Create and log path error
   */
  path(code: ErrorCode, context?: Record<string, any>, cause?: Error): PathError {
    const error = new PathError(code, context, cause);
    this.logError(error);
    return error;
  }

  /**
   * Create and log metadata error
   */
  metadata(code: ErrorCode, context?: Record<string, any>, cause?: Error): MetadataError {
    const error = new MetadataError(code, context, cause);
    this.logError(error);
    return error;
  }

  /**
   * Create and log configuration error
   */
  config(code: ErrorCode, context?: Record<string, any>, cause?: Error): ConfigError {
    const error = new ConfigError(code, context, cause);
    this.logError(error);
    return error;
  }

  /**
   * Create and log system error
   */
  system(code: ErrorCode, context?: Record<string, any>, cause?: Error): SystemError {
    const error = new SystemError(code, context, cause);
    this.logError(error);
    return error;
  }

  /**
   * Log error with appropriate level based on severity
   */
  private logError(error: MPPError): void {
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
export function isMPPError(error: any): error is MPPError {
  return error instanceof MPPError;
}

/**
 * Get error code from any error (returns null for non-MPP errors)
 */
export function getErrorCode(error: any): ErrorCode | null {
  return isMPPError(error) ? error.code : null;
}

/**
 * Check if error should halt processing
 */
export function shouldHaltProcessing(error: any): boolean {
  return isMPPError(error) && error.isFatal();
}

/**
 * Get user-friendly error message
 */
export function getUserErrorMessage(error: any): string {
  if (isMPPError(error)) {
    return error.getUserMessage();
  }
  return 'An unexpected error occurred. Please check the logs for details.';
}

/**
 * Create error factory for a component
 */
export function createErrorFactory(logger: Logger): ErrorFactory {
  return new ErrorFactory(logger);
}