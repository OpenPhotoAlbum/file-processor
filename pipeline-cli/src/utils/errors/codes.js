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
/**
 * Get error information by code
 */
export function getErrorInfo(code) {
    return ERROR_REGISTRY[code];
}
/**
 * Get all errors for a specific component
 */
export function getErrorsByComponent(component) {
    return Object.keys(ERROR_REGISTRY).filter(code => ERROR_REGISTRY[code].component === component);
}
/**
 * Get all errors by severity
 */
export function getErrorsBySeverity(severity) {
    return Object.keys(ERROR_REGISTRY).filter(code => ERROR_REGISTRY[code].severity === severity);
}
//# sourceMappingURL=codes.js.map