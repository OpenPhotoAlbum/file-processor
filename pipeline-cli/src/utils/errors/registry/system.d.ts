/**
 * System Error Registry
 * All MPP-SYS-* error definitions with hybrid approach
 */
import { ErrorComponent, ErrorSeverity } from '../types.js';
export declare const SystemErrors: {
    readonly OUT_OF_MEMORY: "MPP-SYS-F-001";
    readonly FILE_OPERATION_FAILED: "MPP-SYS-E-001";
    readonly EXTERNAL_TOOL_NOT_FOUND: "MPP-SYS-E-002";
};
export declare const SYSTEM_ERRORS: {
    readonly "MPP-SYS-F-001": {
        readonly component: ErrorComponent.SYSTEM;
        readonly severity: ErrorSeverity.FATAL;
        readonly message: "Out of memory";
        readonly description: "System has run out of available memory";
        readonly userAction: "Reduce file size or increase available memory";
    };
    readonly "MPP-SYS-E-001": {
        readonly component: ErrorComponent.SYSTEM;
        readonly severity: ErrorSeverity.ERROR;
        readonly message: "File processing operation failed";
        readonly description: "A critical file processing operation encountered an error";
        readonly userAction: "Check file permissions, disk space, and file integrity";
    };
    readonly "MPP-SYS-E-002": {
        readonly component: ErrorComponent.SYSTEM;
        readonly severity: ErrorSeverity.ERROR;
        readonly message: "External tool not found";
        readonly description: "Required external tool (like ExifTool) is not installed";
        readonly userAction: "Install required external dependencies";
    };
};
