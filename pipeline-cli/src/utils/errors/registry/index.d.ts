/**
 * Error Registry Index
 * Combines all error registries into unified registry
 */
/**
 * Combined error registry from all component registries
 */
export declare const ERROR_REGISTRY: {
    readonly "MPP-LANDMARK-W-001": {
        readonly severity: import("../types.js").ErrorSeverity.WARNING;
        readonly component: import("../types.js").ErrorComponent.LANDMARK;
        readonly message: "Landmark provider is unavailable";
        readonly description: "A landmark data provider (NPS, USGS, etc.) could not be reached";
        readonly userAction: "Check network connectivity and provider configuration";
    };
    readonly "MPP-LANDMARK-W-002": {
        readonly severity: import("../types.js").ErrorSeverity.WARNING;
        readonly component: import("../types.js").ErrorComponent.LANDMARK;
        readonly message: "Landmark provider request timed out";
        readonly description: "Request to landmark data provider exceeded timeout threshold";
        readonly userAction: "Retry the operation or check network connectivity";
    };
    readonly "MPP-LANDMARK-W-003": {
        readonly severity: import("../types.js").ErrorSeverity.WARNING;
        readonly component: import("../types.js").ErrorComponent.LANDMARK;
        readonly message: "Landmark provider rate limit exceeded";
        readonly description: "API rate limits have been exceeded for the landmark provider";
        readonly userAction: "Wait before retrying or configure API key for higher limits";
    };
    readonly "MPP-LANDMARK-W-004": {
        readonly severity: import("../types.js").ErrorSeverity.WARNING;
        readonly component: import("../types.js").ErrorComponent.LANDMARK;
        readonly message: "Landmark provider authentication failed";
        readonly description: "API key or authentication credentials are invalid";
        readonly userAction: "Check API key configuration";
    };
    readonly "MPP-LANDMARK-W-021": {
        readonly severity: import("../types.js").ErrorSeverity.WARNING;
        readonly component: import("../types.js").ErrorComponent.LANDMARK;
        readonly message: "Search radius exceeds maximum allowed distance";
        readonly description: "Requested search radius is larger than system limits";
        readonly userAction: "Reduce search radius or use default value";
    };
    readonly "MPP-LANDMARK-W-022": {
        readonly severity: import("../types.js").ErrorSeverity.WARNING;
        readonly component: import("../types.js").ErrorComponent.LANDMARK;
        readonly message: "No landmarks found near the specified coordinates";
        readonly description: "Search completed but no landmarks were found within the radius";
        readonly userAction: "Increase search radius or verify coordinates";
    };
    readonly "MPP-LANDMARK-W-023": {
        readonly severity: import("../types.js").ErrorSeverity.WARNING;
        readonly component: import("../types.js").ErrorComponent.LANDMARK;
        readonly message: "Invalid GPS coordinates provided for landmark search";
        readonly description: "Latitude or longitude values are outside valid ranges";
        readonly userAction: "Verify latitude and longitude values are valid";
    };
    readonly "MPP-LANDMARK-W-024": {
        readonly severity: import("../types.js").ErrorSeverity.WARNING;
        readonly component: import("../types.js").ErrorComponent.LANDMARK;
        readonly message: "Invalid search options provided";
        readonly description: "Search parameters contain invalid or conflicting values";
        readonly userAction: "Check search parameters and retry";
    };
    readonly "MPP-LANDMARK-W-041": {
        readonly severity: import("../types.js").ErrorSeverity.WARNING;
        readonly component: import("../types.js").ErrorComponent.LANDMARK;
        readonly message: "Landmark cache miss occurred";
        readonly description: "Requested data not found in cache, fetching from providers";
        readonly userAction: "This is normal, data will be fetched from providers";
    };
    readonly "MPP-LANDMARK-W-042": {
        readonly severity: import("../types.js").ErrorSeverity.WARNING;
        readonly component: import("../types.js").ErrorComponent.LANDMARK;
        readonly message: "Landmark cache contains corrupted data";
        readonly description: "Cached landmark data failed validation checks";
        readonly userAction: "Cache will be cleared automatically";
    };
    readonly "MPP-LANDMARK-W-043": {
        readonly severity: import("../types.js").ErrorSeverity.WARNING;
        readonly component: import("../types.js").ErrorComponent.LANDMARK;
        readonly message: "Landmark cache is full";
        readonly description: "Cache has reached maximum capacity";
        readonly userAction: "Old entries will be automatically evicted";
    };
    readonly "MPP-LANDMARK-E-001": {
        readonly severity: import("../types.js").ErrorSeverity.ERROR;
        readonly component: import("../types.js").ErrorComponent.LANDMARK;
        readonly message: "Bundled landmark data is corrupted or invalid";
        readonly description: "Built-in landmark database contains invalid data";
        readonly userAction: "Contact support or update the application";
    };
    readonly "MPP-LANDMARK-E-002": {
        readonly severity: import("../types.js").ErrorSeverity.ERROR;
        readonly component: import("../types.js").ErrorComponent.LANDMARK;
        readonly message: "Landmark data format is invalid";
        readonly description: "Landmark data does not conform to expected schema";
        readonly userAction: "Check data source or provider configuration";
    };
    readonly "MPP-LANDMARK-E-003": {
        readonly severity: import("../types.js").ErrorSeverity.ERROR;
        readonly component: import("../types.js").ErrorComponent.LANDMARK;
        readonly message: "Failed to calculate landmark confidence score";
        readonly description: "Error in distance or confidence calculation algorithm";
        readonly userAction: "Check landmark data and distance calculations";
    };
    readonly "MPP-LANDMARK-E-004": {
        readonly severity: import("../types.js").ErrorSeverity.ERROR;
        readonly component: import("../types.js").ErrorComponent.LANDMARK;
        readonly message: "Landmark boundary containment check failed";
        readonly description: "Error performing spatial boundary intersection queries";
        readonly userAction: "Verify landmark boundary data is valid";
    };
    readonly "MPP-LANDMARK-E-021": {
        readonly severity: import("../types.js").ErrorSeverity.ERROR;
        readonly component: import("../types.js").ErrorComponent.LANDMARK;
        readonly message: "Landmark service failed to initialize";
        readonly description: "Error during landmark service startup or configuration";
        readonly userAction: "Check configuration and dependencies";
    };
    readonly "MPP-LANDMARK-E-022": {
        readonly severity: import("../types.js").ErrorSeverity.ERROR;
        readonly component: import("../types.js").ErrorComponent.LANDMARK;
        readonly message: "Failed to register landmark provider";
        readonly description: "Error adding landmark provider to service registry";
        readonly userAction: "Check provider implementation and configuration";
    };
    readonly "MPP-LANDMARK-E-023": {
        readonly severity: import("../types.js").ErrorSeverity.ERROR;
        readonly component: import("../types.js").ErrorComponent.LANDMARK;
        readonly message: "All landmark providers failed";
        readonly description: "All configured landmark providers returned errors";
        readonly userAction: "Check network connectivity and provider configurations";
    };
    readonly "MPP-LANDMARK-I-001": {
        readonly severity: import("../types.js").ErrorSeverity.INFO;
        readonly component: import("../types.js").ErrorComponent.LANDMARK;
        readonly message: "Landmark service is disabled";
        readonly description: "Landmark enrichment is disabled in configuration";
        readonly userAction: "Enable landmark service in configuration if needed";
    };
    readonly "MPP-SYS-F-001": {
        readonly component: import("../types.js").ErrorComponent.SYSTEM;
        readonly severity: import("../types.js").ErrorSeverity.FATAL;
        readonly message: "Out of memory";
        readonly description: "System has run out of available memory";
        readonly userAction: "Reduce file size or increase available memory";
    };
    readonly "MPP-SYS-E-001": {
        readonly component: import("../types.js").ErrorComponent.SYSTEM;
        readonly severity: import("../types.js").ErrorSeverity.ERROR;
        readonly message: "File processing operation failed";
        readonly description: "A critical file processing operation encountered an error";
        readonly userAction: "Check file permissions, disk space, and file integrity";
    };
    readonly "MPP-SYS-E-002": {
        readonly component: import("../types.js").ErrorComponent.SYSTEM;
        readonly severity: import("../types.js").ErrorSeverity.ERROR;
        readonly message: "External tool not found";
        readonly description: "Required external tool (like ExifTool) is not installed";
        readonly userAction: "Install required external dependencies";
    };
    readonly "MPP-CFG-F-001": {
        readonly component: import("../types.js").ErrorComponent.CONFIG;
        readonly severity: import("../types.js").ErrorSeverity.FATAL;
        readonly message: "Required environment variable missing";
        readonly description: "A required environment variable is not set";
        readonly userAction: "Set missing environment variables in .env file";
    };
    readonly "MPP-CFG-E-002": {
        readonly component: import("../types.js").ErrorComponent.CONFIG;
        readonly severity: import("../types.js").ErrorSeverity.ERROR;
        readonly message: "Invalid configuration value";
        readonly description: "Configuration value is invalid or outside acceptable range";
        readonly userAction: "Check configuration values in .env file";
    };
    readonly "MPP-META-E-001": {
        readonly component: import("../types.js").ErrorComponent.METADATA;
        readonly severity: import("../types.js").ErrorSeverity.WARNING;
        readonly message: "Sidecar metadata parsing failed";
        readonly description: "Sidecar metadata file found but could not be parsed";
        readonly userAction: "Check sidecar file format and content structure";
    };
    readonly "MPP-META-W-002": {
        readonly component: import("../types.js").ErrorComponent.METADATA;
        readonly severity: import("../types.js").ErrorSeverity.WARNING;
        readonly message: "Sidecar metadata format unknown";
        readonly description: "Sidecar file found but format not recognized";
        readonly userAction: "File will be processed without sidecar metadata";
    };
    readonly "MPP-META-E-003": {
        readonly component: import("../types.js").ErrorComponent.METADATA;
        readonly severity: import("../types.js").ErrorSeverity.ERROR;
        readonly message: "Metadata source conflict";
        readonly description: "Multiple metadata sources provide conflicting information";
        readonly userAction: "Review metadata sources for consistency";
    };
    readonly "MPP-PATH-F-001": {
        readonly component: import("../types.js").ErrorComponent.PATH;
        readonly severity: import("../types.js").ErrorSeverity.FATAL;
        readonly message: "File not found";
        readonly description: "Specified file path does not exist or is not accessible";
        readonly userAction: "Verify file path exists and has correct permissions";
    };
    readonly "MPP-PATH-D-002": {
        readonly component: import("../types.js").ErrorComponent.PATH;
        readonly severity: import("../types.js").ErrorSeverity.INFO;
        readonly message: "Optional file not found";
        readonly description: "Optional sidecar file does not exist (normal condition)";
        readonly userAction: "No action required - optional files are expected to be missing";
    };
    readonly "MPP-PATH-E-003": {
        readonly component: import("../types.js").ErrorComponent.PATH;
        readonly severity: import("../types.js").ErrorSeverity.ERROR;
        readonly message: "Path resolution failed";
        readonly description: "Unable to resolve relative path to absolute path";
        readonly userAction: "Check environment configuration for base paths";
    };
    readonly "MPP-PATH-E-004": {
        readonly component: import("../types.js").ErrorComponent.PATH;
        readonly severity: import("../types.js").ErrorSeverity.ERROR;
        readonly message: "File permission denied";
        readonly description: "File exists but cannot be read due to permission restrictions";
        readonly userAction: "Check file permissions or run with appropriate privileges";
    };
    readonly "MPP-TIME-E-001": {
        readonly component: import("../types.js").ErrorComponent.TIMESTAMP;
        readonly severity: import("../types.js").ErrorSeverity.ERROR;
        readonly message: "Timestamp parsing failed";
        readonly description: "Unable to parse timestamp from source data";
        readonly userAction: "Check timestamp format in source metadata";
    };
    readonly "MPP-TIME-W-002": {
        readonly component: import("../types.js").ErrorComponent.TIMESTAMP;
        readonly severity: import("../types.js").ErrorSeverity.WARNING;
        readonly message: "Timestamp format unrecognized";
        readonly description: "Timestamp found but format not recognized by parser";
        readonly userAction: "Timestamp will be skipped, verify format is correct";
    };
    readonly "MPP-TIME-W-003": {
        readonly component: import("../types.js").ErrorComponent.TIMESTAMP;
        readonly severity: import("../types.js").ErrorSeverity.WARNING;
        readonly message: "Timestamp conflict detected";
        readonly description: "Multiple timestamp sources disagree significantly";
        readonly userAction: "Review timestamp sources for accuracy";
    };
    readonly "MPP-TIME-E-004": {
        readonly component: import("../types.js").ErrorComponent.TIMESTAMP;
        readonly severity: import("../types.js").ErrorSeverity.ERROR;
        readonly message: "Invalid timezone in timestamp";
        readonly description: "Timestamp contains invalid or unparseable timezone information";
        readonly userAction: "Check timezone format in source data";
    };
    readonly "MPP-TIME-I-005": {
        readonly component: import("../types.js").ErrorComponent.TIMESTAMP;
        readonly severity: import("../types.js").ErrorSeverity.INFO;
        readonly message: "Using fallback timestamp source";
        readonly description: "Primary timestamp sources unavailable, using fallback";
        readonly userAction: "Consider adding better timestamp metadata to files";
    };
    readonly "MPP-GPS-W-001": {
        readonly component: import("../types.js").ErrorComponent.GPS;
        readonly severity: import("../types.js").ErrorSeverity.WARNING;
        readonly message: "GPS conflict detected between sources";
        readonly description: "Multiple GPS sources found with conflicting coordinates";
        readonly userAction: "Review GPS sources for accuracy";
    };
    readonly "MPP-GPS-E-002": {
        readonly component: import("../types.js").ErrorComponent.GPS;
        readonly severity: import("../types.js").ErrorSeverity.WARNING;
        readonly message: "GPS extraction failed";
        readonly description: "Unable to extract GPS coordinates from any available source";
        readonly userAction: "Check GPS data format in source files";
    };
    readonly "MPP-GPS-W-003": {
        readonly component: import("../types.js").ErrorComponent.GPS;
        readonly severity: import("../types.js").ErrorSeverity.WARNING;
        readonly message: "GPS coordinates appear invalid";
        readonly description: "GPS coordinates are outside valid ranges or appear suspicious";
        readonly userAction: "Verify GPS coordinates are correct";
    };
    readonly "MPP-GPS-I-004": {
        readonly component: import("../types.js").ErrorComponent.GPS;
        readonly severity: import("../types.js").ErrorSeverity.INFO;
        readonly message: "No GPS data found in any source";
        readonly description: "No GPS coordinates found in EXIF, sidecar, or other sources";
        readonly userAction: "This is normal for files without location data";
    };
    readonly "MPP-EXIF-E-001": {
        readonly component: import("../types.js").ErrorComponent.EXIF;
        readonly severity: import("../types.js").ErrorSeverity.ERROR;
        readonly message: "EXIF extraction failed";
        readonly description: "Unable to extract EXIF metadata from image file";
        readonly userAction: "Verify ExifTool is installed and file contains EXIF data";
    };
    readonly "MPP-EXIF-E-002": {
        readonly component: import("../types.js").ErrorComponent.EXIF;
        readonly severity: import("../types.js").ErrorSeverity.ERROR;
        readonly message: "ExifTool command execution failed";
        readonly description: "ExifTool process failed to execute or returned error";
        readonly userAction: "Check ExifTool installation and file permissions";
    };
    readonly "MPP-EXIF-W-003": {
        readonly component: import("../types.js").ErrorComponent.EXIF;
        readonly severity: import("../types.js").ErrorSeverity.WARNING;
        readonly message: "EXIF data corrupted or incomplete";
        readonly description: "EXIF data was found but contains invalid or incomplete information";
        readonly userAction: "File processing can continue but some metadata may be missing";
    };
    readonly "MPP-EXIF-E-004": {
        readonly component: import("../types.js").ErrorComponent.EXIF;
        readonly severity: import("../types.js").ErrorSeverity.ERROR;
        readonly message: "ExifTool timeout exceeded";
        readonly description: "ExifTool command exceeded maximum execution time";
        readonly userAction: "Check system performance or increase timeout setting";
    };
    readonly "MPP-VAL-E-001": {
        readonly component: import("../types.js").ErrorComponent.VALIDATION;
        readonly severity: import("../types.js").ErrorSeverity.ERROR;
        readonly message: "File signature validation failed";
        readonly description: "The file header does not match the expected format signature";
        readonly userAction: "Verify file is not corrupted and is the correct format";
    };
    readonly "MPP-VAL-E-002": {
        readonly component: import("../types.js").ErrorComponent.VALIDATION;
        readonly severity: import("../types.js").ErrorSeverity.ERROR;
        readonly message: "File size mismatch detected";
        readonly description: "Expected file size does not match actual file size";
        readonly userAction: "Check if file was completely downloaded or copied";
    };
    readonly "MPP-VAL-W-001": {
        readonly component: import("../types.js").ErrorComponent.VALIDATION;
        readonly severity: import("../types.js").ErrorSeverity.WARNING;
        readonly message: "Unable to detect MIME type";
        readonly description: "File extension does not match any known MIME type";
        readonly userAction: "Verify file extension is correct or file is supported format";
    };
    readonly "MPP-VAL-W-003": {
        readonly component: import("../types.js").ErrorComponent.VALIDATION;
        readonly severity: import("../types.js").ErrorSeverity.WARNING;
        readonly message: "File format detected differs from extension";
        readonly description: "File extension suggests one format but content indicates another";
        readonly userAction: "Consider renaming file with correct extension";
    };
};
export { VALIDATION_ERRORS } from './validation.js';
export { EXIF_ERRORS } from './exif.js';
export { GPS_ERRORS } from './gps.js';
export { TIMESTAMP_ERRORS } from './timestamp.js';
export { PATH_ERRORS } from './path.js';
export { METADATA_ERRORS } from './metadata.js';
export { CONFIG_ERRORS } from './config.js';
export { SYSTEM_ERRORS } from './system.js';
export { LANDMARK_ERRORS } from './landmark-registry.js';
