/**
 * Custom error classes with structured error codes
 * Integrates with logging system for consistent error reporting
 */

import { ErrorCode, ErrorSeverity, getErrorInfo } from './codes.js';

/**
 * Base custom error class with error codes
 */
export class MPPError extends Error {
  public readonly code: ErrorCode;
  public readonly severity: ErrorSeverity;
  public readonly context?: Record<string, any>;
  public readonly userAction?: string;
  public readonly cause?: Error;

  constructor(
    code: ErrorCode, 
    context?: Record<string, any>, 
    cause?: Error
  ) {
    const errorInfo = getErrorInfo(code);
    
    // Create descriptive message
    const contextStr = context ? ` (${JSON.stringify(context)})` : '';
    const message = `${errorInfo.message}${contextStr}`;
    
    super(message);
    
    this.name = 'MPPError';
    this.code = code;
    this.severity = errorInfo.severity;
    this.context = context;
    this.userAction = errorInfo.userAction;
    this.cause = cause;
    
    // Maintain proper stack trace
    if (Error.captureStackTrace) {
      Error.captureStackTrace(this, MPPError);
    }
  }

  /**
   * Convert to JSON for logging
   */
  toJSON() {
    return {
      name: this.name,
      code: this.code,
      severity: this.severity,
      message: this.message,
      context: this.context,
      userAction: this.userAction,
      stack: this.stack,
      cause: this.cause ? {
        name: this.cause.name,
        message: this.cause.message
      } : undefined
    };
  }

  /**
   * Get formatted error for user display
   */
  getUserMessage(): string {
    const errorInfo = getErrorInfo(this.code);
    return `${errorInfo.description}. ${this.userAction || ''}`;
  }

  /**
   * Check if error is fatal
   */
  isFatal(): boolean {
    return this.severity === ErrorSeverity.FATAL;
  }

  /**
   * Check if error is warning level
   */
  isWarning(): boolean {
    return this.severity === ErrorSeverity.WARNING;
  }
}

/**
 * Validation-specific error
 */
export class ValidationError extends MPPError {
  constructor(code: ErrorCode, context?: Record<string, any>, cause?: Error) {
    super(code, context, cause);
    this.name = 'ValidationError';
  }
}

/**
 * EXIF extraction error
 */
export class ExifError extends MPPError {
  constructor(code: ErrorCode, context?: Record<string, any>, cause?: Error) {
    super(code, context, cause);
    this.name = 'ExifError';
  }
}

/**
 * GPS processing error
 */
export class GPSError extends MPPError {
  constructor(code: ErrorCode, context?: Record<string, any>, cause?: Error) {
    super(code, context, cause);
    this.name = 'GPSError';
  }
}

/**
 * Timestamp processing error
 */
export class TimestampError extends MPPError {
  constructor(code: ErrorCode, context?: Record<string, any>, cause?: Error) {
    super(code, context, cause);
    this.name = 'TimestampError';
  }
}

/**
 * Path resolution error
 */
export class PathError extends MPPError {
  constructor(code: ErrorCode, context?: Record<string, any>, cause?: Error) {
    super(code, context, cause);
    this.name = 'PathError';
  }
}

/**
 * Metadata processing error
 */
export class MetadataError extends MPPError {
  constructor(code: ErrorCode, context?: Record<string, any>, cause?: Error) {
    super(code, context, cause);
    this.name = 'MetadataError';
  }
}

/**
 * Configuration error
 */
export class ConfigError extends MPPError {
  constructor(code: ErrorCode, context?: Record<string, any>, cause?: Error) {
    super(code, context, cause);
    this.name = 'ConfigError';
  }
}

/**
 * System error
 */
export class SystemError extends MPPError {
  constructor(code: ErrorCode, context?: Record<string, any>, cause?: Error) {
    super(code, context, cause);
    this.name = 'SystemError';
  }
}

/**
 * Landmark processing error
 */
export class LandmarkError extends MPPError {
  constructor(code: ErrorCode, context?: Record<string, any>, cause?: Error) {
    super(code, context, cause);
    this.name = 'LandmarkError';
  }
}