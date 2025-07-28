/**
 * Media Processing Pipeline Error Codes
 * Structured error code system for debugging and monitoring
 */
import { ErrorSeverity, ErrorComponent } from './types.js';
export { ErrorSeverity, ErrorComponent };
import { ERROR_REGISTRY } from './registry/index.js';
export { ERROR_REGISTRY };
export type ErrorCode = keyof typeof ERROR_REGISTRY;
/**
 * Get error information by code
 */
export declare function getErrorInfo(code: ErrorCode): {
    readonly component: ErrorComponent.VALIDATION;
    readonly severity: ErrorSeverity.ERROR;
    readonly message: "File signature validation failed";
    readonly description: "The file header does not match the expected format signature";
    readonly userAction: "Verify file is not corrupted and is the correct format";
} | {
    readonly component: ErrorComponent.VALIDATION;
    readonly severity: ErrorSeverity.ERROR;
    readonly message: "File size mismatch detected";
    readonly description: "Expected file size does not match actual file size";
    readonly userAction: "Check if file was completely downloaded or copied";
} | {
    readonly component: ErrorComponent.VALIDATION;
    readonly severity: ErrorSeverity.WARNING;
    readonly message: "Unable to detect MIME type";
    readonly description: "File extension does not match any known MIME type";
    readonly userAction: "Verify file extension is correct or file is supported format";
} | {
    readonly component: ErrorComponent.VALIDATION;
    readonly severity: ErrorSeverity.WARNING;
    readonly message: "File format detected differs from extension";
    readonly description: "File extension suggests one format but content indicates another";
    readonly userAction: "Consider renaming file with correct extension";
} | {
    readonly component: ErrorComponent.EXIF;
    readonly severity: ErrorSeverity.ERROR;
    readonly message: "EXIF extraction failed";
    readonly description: "Unable to extract EXIF metadata from image file";
    readonly userAction: "Verify ExifTool is installed and file contains EXIF data";
} | {
    readonly component: ErrorComponent.EXIF;
    readonly severity: ErrorSeverity.ERROR;
    readonly message: "ExifTool command execution failed";
    readonly description: "ExifTool process failed to execute or returned error";
    readonly userAction: "Check ExifTool installation and file permissions";
} | {
    readonly component: ErrorComponent.EXIF;
    readonly severity: ErrorSeverity.WARNING;
    readonly message: "EXIF data corrupted or incomplete";
    readonly description: "EXIF data was found but contains invalid or incomplete information";
    readonly userAction: "File processing can continue but some metadata may be missing";
} | {
    readonly component: ErrorComponent.EXIF;
    readonly severity: ErrorSeverity.ERROR;
    readonly message: "ExifTool timeout exceeded";
    readonly description: "ExifTool command exceeded maximum execution time";
    readonly userAction: "Check system performance or increase timeout setting";
} | {
    readonly component: ErrorComponent.GPS;
    readonly severity: ErrorSeverity.WARNING;
    readonly message: "GPS conflict detected between sources";
    readonly description: "Multiple GPS sources found with conflicting coordinates";
    readonly userAction: "Review GPS sources for accuracy";
} | {
    readonly component: ErrorComponent.GPS;
    readonly severity: ErrorSeverity.WARNING;
    readonly message: "GPS extraction failed";
    readonly description: "Unable to extract GPS coordinates from any available source";
    readonly userAction: "Check GPS data format in source files";
} | {
    readonly component: ErrorComponent.GPS;
    readonly severity: ErrorSeverity.WARNING;
    readonly message: "GPS coordinates appear invalid";
    readonly description: "GPS coordinates are outside valid ranges or appear suspicious";
    readonly userAction: "Verify GPS coordinates are correct";
} | {
    readonly component: ErrorComponent.GPS;
    readonly severity: ErrorSeverity.INFO;
    readonly message: "No GPS data found in any source";
    readonly description: "No GPS coordinates found in EXIF, sidecar, or other sources";
    readonly userAction: "This is normal for files without location data";
} | {
    readonly component: ErrorComponent.TIMESTAMP;
    readonly severity: ErrorSeverity.ERROR;
    readonly message: "Timestamp parsing failed";
    readonly description: "Unable to parse timestamp from source data";
    readonly userAction: "Check timestamp format in source metadata";
} | {
    readonly component: ErrorComponent.TIMESTAMP;
    readonly severity: ErrorSeverity.WARNING;
    readonly message: "Timestamp format unrecognized";
    readonly description: "Timestamp found but format not recognized by parser";
    readonly userAction: "Timestamp will be skipped, verify format is correct";
} | {
    readonly component: ErrorComponent.TIMESTAMP;
    readonly severity: ErrorSeverity.WARNING;
    readonly message: "Timestamp conflict detected";
    readonly description: "Multiple timestamp sources disagree significantly";
    readonly userAction: "Review timestamp sources for accuracy";
} | {
    readonly component: ErrorComponent.TIMESTAMP;
    readonly severity: ErrorSeverity.ERROR;
    readonly message: "Invalid timezone in timestamp";
    readonly description: "Timestamp contains invalid or unparseable timezone information";
    readonly userAction: "Check timezone format in source data";
} | {
    readonly component: ErrorComponent.TIMESTAMP;
    readonly severity: ErrorSeverity.INFO;
    readonly message: "Using fallback timestamp source";
    readonly description: "Primary timestamp sources unavailable, using fallback";
    readonly userAction: "Consider adding better timestamp metadata to files";
} | {
    readonly component: ErrorComponent.PATH;
    readonly severity: ErrorSeverity.FATAL;
    readonly message: "File not found";
    readonly description: "Specified file path does not exist or is not accessible";
    readonly userAction: "Verify file path exists and has correct permissions";
} | {
    readonly component: ErrorComponent.PATH;
    readonly severity: ErrorSeverity.INFO;
    readonly message: "Optional file not found";
    readonly description: "Optional sidecar file does not exist (normal condition)";
    readonly userAction: "No action required - optional files are expected to be missing";
} | {
    readonly component: ErrorComponent.PATH;
    readonly severity: ErrorSeverity.ERROR;
    readonly message: "Path resolution failed";
    readonly description: "Unable to resolve relative path to absolute path";
    readonly userAction: "Check environment configuration for base paths";
} | {
    readonly component: ErrorComponent.PATH;
    readonly severity: ErrorSeverity.ERROR;
    readonly message: "File permission denied";
    readonly description: "File exists but cannot be read due to permission restrictions";
    readonly userAction: "Check file permissions or run with appropriate privileges";
} | {
    readonly component: ErrorComponent.METADATA;
    readonly severity: ErrorSeverity.WARNING;
    readonly message: "Sidecar metadata parsing failed";
    readonly description: "Sidecar metadata file found but could not be parsed";
    readonly userAction: "Check sidecar file format and content structure";
} | {
    readonly component: ErrorComponent.METADATA;
    readonly severity: ErrorSeverity.WARNING;
    readonly message: "Sidecar metadata format unknown";
    readonly description: "Sidecar file found but format not recognized";
    readonly userAction: "File will be processed without sidecar metadata";
} | {
    readonly component: ErrorComponent.METADATA;
    readonly severity: ErrorSeverity.ERROR;
    readonly message: "Metadata source conflict";
    readonly description: "Multiple metadata sources provide conflicting information";
    readonly userAction: "Review metadata sources for consistency";
} | {
    readonly component: ErrorComponent.CONFIG;
    readonly severity: ErrorSeverity.FATAL;
    readonly message: "Required environment variable missing";
    readonly description: "A required environment variable is not set";
    readonly userAction: "Set missing environment variables in .env file";
} | {
    readonly component: ErrorComponent.CONFIG;
    readonly severity: ErrorSeverity.ERROR;
    readonly message: "Invalid configuration value";
    readonly description: "Configuration value is invalid or outside acceptable range";
    readonly userAction: "Check configuration values in .env file";
} | {
    readonly component: ErrorComponent.SYSTEM;
    readonly severity: ErrorSeverity.FATAL;
    readonly message: "Out of memory";
    readonly description: "System has run out of available memory";
    readonly userAction: "Reduce file size or increase available memory";
} | {
    readonly component: ErrorComponent.SYSTEM;
    readonly severity: ErrorSeverity.ERROR;
    readonly message: "File processing operation failed";
    readonly description: "A critical file processing operation encountered an error";
    readonly userAction: "Check file permissions, disk space, and file integrity";
} | {
    readonly component: ErrorComponent.SYSTEM;
    readonly severity: ErrorSeverity.ERROR;
    readonly message: "External tool not found";
    readonly description: "Required external tool (like ExifTool) is not installed";
    readonly userAction: "Install required external dependencies";
} | {
    readonly severity: ErrorSeverity.WARNING;
    readonly component: ErrorComponent.LANDMARK;
    readonly message: "Landmark provider is unavailable";
    readonly description: "A landmark data provider (NPS, USGS, etc.) could not be reached";
    readonly userAction: "Check network connectivity and provider configuration";
} | {
    readonly severity: ErrorSeverity.WARNING;
    readonly component: ErrorComponent.LANDMARK;
    readonly message: "Landmark provider request timed out";
    readonly description: "Request to landmark data provider exceeded timeout threshold";
    readonly userAction: "Retry the operation or check network connectivity";
} | {
    readonly severity: ErrorSeverity.WARNING;
    readonly component: ErrorComponent.LANDMARK;
    readonly message: "Landmark provider rate limit exceeded";
    readonly description: "API rate limits have been exceeded for the landmark provider";
    readonly userAction: "Wait before retrying or configure API key for higher limits";
} | {
    readonly severity: ErrorSeverity.WARNING;
    readonly component: ErrorComponent.LANDMARK;
    readonly message: "Landmark provider authentication failed";
    readonly description: "API key or authentication credentials are invalid";
    readonly userAction: "Check API key configuration";
} | {
    readonly severity: ErrorSeverity.WARNING;
    readonly component: ErrorComponent.LANDMARK;
    readonly message: "Search radius exceeds maximum allowed distance";
    readonly description: "Requested search radius is larger than system limits";
    readonly userAction: "Reduce search radius or use default value";
} | {
    readonly severity: ErrorSeverity.WARNING;
    readonly component: ErrorComponent.LANDMARK;
    readonly message: "No landmarks found near the specified coordinates";
    readonly description: "Search completed but no landmarks were found within the radius";
    readonly userAction: "Increase search radius or verify coordinates";
} | {
    readonly severity: ErrorSeverity.WARNING;
    readonly component: ErrorComponent.LANDMARK;
    readonly message: "Invalid GPS coordinates provided for landmark search";
    readonly description: "Latitude or longitude values are outside valid ranges";
    readonly userAction: "Verify latitude and longitude values are valid";
} | {
    readonly severity: ErrorSeverity.WARNING;
    readonly component: ErrorComponent.LANDMARK;
    readonly message: "Invalid search options provided";
    readonly description: "Search parameters contain invalid or conflicting values";
    readonly userAction: "Check search parameters and retry";
} | {
    readonly severity: ErrorSeverity.WARNING;
    readonly component: ErrorComponent.LANDMARK;
    readonly message: "Landmark cache miss occurred";
    readonly description: "Requested data not found in cache, fetching from providers";
    readonly userAction: "This is normal, data will be fetched from providers";
} | {
    readonly severity: ErrorSeverity.WARNING;
    readonly component: ErrorComponent.LANDMARK;
    readonly message: "Landmark cache contains corrupted data";
    readonly description: "Cached landmark data failed validation checks";
    readonly userAction: "Cache will be cleared automatically";
} | {
    readonly severity: ErrorSeverity.WARNING;
    readonly component: ErrorComponent.LANDMARK;
    readonly message: "Landmark cache is full";
    readonly description: "Cache has reached maximum capacity";
    readonly userAction: "Old entries will be automatically evicted";
} | {
    readonly severity: ErrorSeverity.ERROR;
    readonly component: ErrorComponent.LANDMARK;
    readonly message: "Bundled landmark data is corrupted or invalid";
    readonly description: "Built-in landmark database contains invalid data";
    readonly userAction: "Contact support or update the application";
} | {
    readonly severity: ErrorSeverity.ERROR;
    readonly component: ErrorComponent.LANDMARK;
    readonly message: "Landmark data format is invalid";
    readonly description: "Landmark data does not conform to expected schema";
    readonly userAction: "Check data source or provider configuration";
} | {
    readonly severity: ErrorSeverity.ERROR;
    readonly component: ErrorComponent.LANDMARK;
    readonly message: "Failed to calculate landmark confidence score";
    readonly description: "Error in distance or confidence calculation algorithm";
    readonly userAction: "Check landmark data and distance calculations";
} | {
    readonly severity: ErrorSeverity.ERROR;
    readonly component: ErrorComponent.LANDMARK;
    readonly message: "Landmark boundary containment check failed";
    readonly description: "Error performing spatial boundary intersection queries";
    readonly userAction: "Verify landmark boundary data is valid";
} | {
    readonly severity: ErrorSeverity.ERROR;
    readonly component: ErrorComponent.LANDMARK;
    readonly message: "Landmark service failed to initialize";
    readonly description: "Error during landmark service startup or configuration";
    readonly userAction: "Check configuration and dependencies";
} | {
    readonly severity: ErrorSeverity.ERROR;
    readonly component: ErrorComponent.LANDMARK;
    readonly message: "Failed to register landmark provider";
    readonly description: "Error adding landmark provider to service registry";
    readonly userAction: "Check provider implementation and configuration";
} | {
    readonly severity: ErrorSeverity.ERROR;
    readonly component: ErrorComponent.LANDMARK;
    readonly message: "All landmark providers failed";
    readonly description: "All configured landmark providers returned errors";
    readonly userAction: "Check network connectivity and provider configurations";
} | {
    readonly severity: ErrorSeverity.INFO;
    readonly component: ErrorComponent.LANDMARK;
    readonly message: "Landmark service is disabled";
    readonly description: "Landmark enrichment is disabled in configuration";
    readonly userAction: "Enable landmark service in configuration if needed";
};
/**
 * Get all errors for a specific component
 */
export declare function getErrorsByComponent(component: ErrorComponent): ErrorCode[];
/**
 * Get all errors by severity
 */
export declare function getErrorsBySeverity(severity: ErrorSeverity): ErrorCode[];
