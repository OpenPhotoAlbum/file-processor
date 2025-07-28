/**
 * MIME type configuration utilities
 * Handles filtering supported MIME types based on environment variables
 */
/**
 * Get the list of enabled MIME types based on environment configuration
 * Users can restrict supported types via ENABLED_MIME_TYPES env var
 */
export declare function getEnabledMimeTypes(): string[];
/**
 * Check if a specific MIME type is enabled
 */
export declare function isMimeTypeEnabled(mimeType: string): boolean;
/**
 * Get all MIME types that are supported by the codebase (regardless of configuration)
 */
export declare function getAllSupportedMimeTypes(): string[];
/**
 * Validate that a MIME type is supported by the codebase
 */
export declare function isMimeTypeSupported(mimeType: string): boolean;
