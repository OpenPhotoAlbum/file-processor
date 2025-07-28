/**
 * Landmark Error Registry
 * Detailed error information for landmark detection system
 */
import { ErrorSeverity, ErrorComponent } from '../types.js';
export declare const LANDMARK_ERRORS: {
    readonly "MPP-LANDMARK-W-001": {
        readonly severity: ErrorSeverity.WARNING;
        readonly component: ErrorComponent.LANDMARK;
        readonly message: "Landmark provider is unavailable";
        readonly description: "A landmark data provider (NPS, USGS, etc.) could not be reached";
        readonly userAction: "Check network connectivity and provider configuration";
    };
    readonly "MPP-LANDMARK-W-002": {
        readonly severity: ErrorSeverity.WARNING;
        readonly component: ErrorComponent.LANDMARK;
        readonly message: "Landmark provider request timed out";
        readonly description: "Request to landmark data provider exceeded timeout threshold";
        readonly userAction: "Retry the operation or check network connectivity";
    };
    readonly "MPP-LANDMARK-W-003": {
        readonly severity: ErrorSeverity.WARNING;
        readonly component: ErrorComponent.LANDMARK;
        readonly message: "Landmark provider rate limit exceeded";
        readonly description: "API rate limits have been exceeded for the landmark provider";
        readonly userAction: "Wait before retrying or configure API key for higher limits";
    };
    readonly "MPP-LANDMARK-W-004": {
        readonly severity: ErrorSeverity.WARNING;
        readonly component: ErrorComponent.LANDMARK;
        readonly message: "Landmark provider authentication failed";
        readonly description: "API key or authentication credentials are invalid";
        readonly userAction: "Check API key configuration";
    };
    readonly "MPP-LANDMARK-W-021": {
        readonly severity: ErrorSeverity.WARNING;
        readonly component: ErrorComponent.LANDMARK;
        readonly message: "Search radius exceeds maximum allowed distance";
        readonly description: "Requested search radius is larger than system limits";
        readonly userAction: "Reduce search radius or use default value";
    };
    readonly "MPP-LANDMARK-W-022": {
        readonly severity: ErrorSeverity.WARNING;
        readonly component: ErrorComponent.LANDMARK;
        readonly message: "No landmarks found near the specified coordinates";
        readonly description: "Search completed but no landmarks were found within the radius";
        readonly userAction: "Increase search radius or verify coordinates";
    };
    readonly "MPP-LANDMARK-W-023": {
        readonly severity: ErrorSeverity.WARNING;
        readonly component: ErrorComponent.LANDMARK;
        readonly message: "Invalid GPS coordinates provided for landmark search";
        readonly description: "Latitude or longitude values are outside valid ranges";
        readonly userAction: "Verify latitude and longitude values are valid";
    };
    readonly "MPP-LANDMARK-W-024": {
        readonly severity: ErrorSeverity.WARNING;
        readonly component: ErrorComponent.LANDMARK;
        readonly message: "Invalid search options provided";
        readonly description: "Search parameters contain invalid or conflicting values";
        readonly userAction: "Check search parameters and retry";
    };
    readonly "MPP-LANDMARK-W-041": {
        readonly severity: ErrorSeverity.WARNING;
        readonly component: ErrorComponent.LANDMARK;
        readonly message: "Landmark cache miss occurred";
        readonly description: "Requested data not found in cache, fetching from providers";
        readonly userAction: "This is normal, data will be fetched from providers";
    };
    readonly "MPP-LANDMARK-W-042": {
        readonly severity: ErrorSeverity.WARNING;
        readonly component: ErrorComponent.LANDMARK;
        readonly message: "Landmark cache contains corrupted data";
        readonly description: "Cached landmark data failed validation checks";
        readonly userAction: "Cache will be cleared automatically";
    };
    readonly "MPP-LANDMARK-W-043": {
        readonly severity: ErrorSeverity.WARNING;
        readonly component: ErrorComponent.LANDMARK;
        readonly message: "Landmark cache is full";
        readonly description: "Cache has reached maximum capacity";
        readonly userAction: "Old entries will be automatically evicted";
    };
    readonly "MPP-LANDMARK-E-001": {
        readonly severity: ErrorSeverity.ERROR;
        readonly component: ErrorComponent.LANDMARK;
        readonly message: "Bundled landmark data is corrupted or invalid";
        readonly description: "Built-in landmark database contains invalid data";
        readonly userAction: "Contact support or update the application";
    };
    readonly "MPP-LANDMARK-E-002": {
        readonly severity: ErrorSeverity.ERROR;
        readonly component: ErrorComponent.LANDMARK;
        readonly message: "Landmark data format is invalid";
        readonly description: "Landmark data does not conform to expected schema";
        readonly userAction: "Check data source or provider configuration";
    };
    readonly "MPP-LANDMARK-E-003": {
        readonly severity: ErrorSeverity.ERROR;
        readonly component: ErrorComponent.LANDMARK;
        readonly message: "Failed to calculate landmark confidence score";
        readonly description: "Error in distance or confidence calculation algorithm";
        readonly userAction: "Check landmark data and distance calculations";
    };
    readonly "MPP-LANDMARK-E-004": {
        readonly severity: ErrorSeverity.ERROR;
        readonly component: ErrorComponent.LANDMARK;
        readonly message: "Landmark boundary containment check failed";
        readonly description: "Error performing spatial boundary intersection queries";
        readonly userAction: "Verify landmark boundary data is valid";
    };
    readonly "MPP-LANDMARK-E-021": {
        readonly severity: ErrorSeverity.ERROR;
        readonly component: ErrorComponent.LANDMARK;
        readonly message: "Landmark service failed to initialize";
        readonly description: "Error during landmark service startup or configuration";
        readonly userAction: "Check configuration and dependencies";
    };
    readonly "MPP-LANDMARK-E-022": {
        readonly severity: ErrorSeverity.ERROR;
        readonly component: ErrorComponent.LANDMARK;
        readonly message: "Failed to register landmark provider";
        readonly description: "Error adding landmark provider to service registry";
        readonly userAction: "Check provider implementation and configuration";
    };
    readonly "MPP-LANDMARK-E-023": {
        readonly severity: ErrorSeverity.ERROR;
        readonly component: ErrorComponent.LANDMARK;
        readonly message: "All landmark providers failed";
        readonly description: "All configured landmark providers returned errors";
        readonly userAction: "Check network connectivity and provider configurations";
    };
    readonly "MPP-LANDMARK-I-001": {
        readonly severity: ErrorSeverity.INFO;
        readonly component: ErrorComponent.LANDMARK;
        readonly message: "Landmark service is disabled";
        readonly description: "Landmark enrichment is disabled in configuration";
        readonly userAction: "Enable landmark service in configuration if needed";
    };
};
