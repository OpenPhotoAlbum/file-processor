/**
 * Media Processing Pipeline Error Codes
 * Structured error code system for debugging and monitoring
 */

// Import and re-export types from types.ts
import { ErrorSeverity, ErrorComponent } from './types.js';
export { ErrorSeverity, ErrorComponent };

// Import combined registry from separate files
import { ERROR_REGISTRY } from './registry/index.js';
export { ERROR_REGISTRY };

export type ErrorCode = keyof typeof ERROR_REGISTRY;

/**
 * Get error information by code
 */
export function getErrorInfo(code: ErrorCode) {
  return ERROR_REGISTRY[code];
}

/**
 * Get all errors for a specific component
 */
export function getErrorsByComponent(component: ErrorComponent): ErrorCode[] {
  return Object.keys(ERROR_REGISTRY).filter(
    code => ERROR_REGISTRY[code as ErrorCode].component === component
  ) as ErrorCode[];
}

/**
 * Get all errors by severity
 */
export function getErrorsBySeverity(severity: ErrorSeverity): ErrorCode[] {
  return Object.keys(ERROR_REGISTRY).filter(
    code => ERROR_REGISTRY[code as ErrorCode].severity === severity
  ) as ErrorCode[];
}