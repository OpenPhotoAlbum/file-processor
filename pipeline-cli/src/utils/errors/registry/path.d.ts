/**
 * Path Error Registry
 * All MPP-PATH-* error definitions with hybrid approach
 */
import { ErrorComponent, ErrorSeverity } from '../types.js';
export declare const PathErrors: {
    readonly FILE_NOT_FOUND: "MPP-PATH-F-001";
    readonly OPTIONAL_FILE_NOT_FOUND: "MPP-PATH-D-002";
    readonly RESOLUTION_FAILED: "MPP-PATH-E-003";
    readonly PERMISSION_DENIED: "MPP-PATH-E-004";
};
export declare const PATH_ERRORS: {
    readonly "MPP-PATH-F-001": {
        readonly component: ErrorComponent.PATH;
        readonly severity: ErrorSeverity.FATAL;
        readonly message: "File not found";
        readonly description: "Specified file path does not exist or is not accessible";
        readonly userAction: "Verify file path exists and has correct permissions";
    };
    readonly "MPP-PATH-D-002": {
        readonly component: ErrorComponent.PATH;
        readonly severity: ErrorSeverity.INFO;
        readonly message: "Optional file not found";
        readonly description: "Optional sidecar file does not exist (normal condition)";
        readonly userAction: "No action required - optional files are expected to be missing";
    };
    readonly "MPP-PATH-E-003": {
        readonly component: ErrorComponent.PATH;
        readonly severity: ErrorSeverity.ERROR;
        readonly message: "Path resolution failed";
        readonly description: "Unable to resolve relative path to absolute path";
        readonly userAction: "Check environment configuration for base paths";
    };
    readonly "MPP-PATH-E-004": {
        readonly component: ErrorComponent.PATH;
        readonly severity: ErrorSeverity.ERROR;
        readonly message: "File permission denied";
        readonly description: "File exists but cannot be read due to permission restrictions";
        readonly userAction: "Check file permissions or run with appropriate privileges";
    };
};
