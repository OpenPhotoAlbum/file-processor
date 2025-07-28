/**
 * Configuration Error Registry
 * All MPP-CFG-* error definitions with hybrid approach
 */
import { ErrorComponent, ErrorSeverity } from '../types.js';
export declare const ConfigErrors: {
    readonly ENV_VAR_MISSING: "MPP-CFG-F-001";
    readonly INVALID_VALUE: "MPP-CFG-E-002";
};
export declare const CONFIG_ERRORS: {
    readonly "MPP-CFG-F-001": {
        readonly component: ErrorComponent.CONFIG;
        readonly severity: ErrorSeverity.FATAL;
        readonly message: "Required environment variable missing";
        readonly description: "A required environment variable is not set";
        readonly userAction: "Set missing environment variables in .env file";
    };
    readonly "MPP-CFG-E-002": {
        readonly component: ErrorComponent.CONFIG;
        readonly severity: ErrorSeverity.ERROR;
        readonly message: "Invalid configuration value";
        readonly description: "Configuration value is invalid or outside acceptable range";
        readonly userAction: "Check configuration values in .env file";
    };
};
