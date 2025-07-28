/**
 * Metadata Error Registry
 * All MPP-META-* error definitions with hybrid approach
 */
import { ErrorComponent, ErrorSeverity } from '../types.js';
export declare const MetadataErrors: {
    readonly PARSING_FAILED: "MPP-META-E-001";
    readonly FORMAT_UNKNOWN: "MPP-META-W-002";
    readonly SOURCE_CONFLICT: "MPP-META-E-003";
};
export declare const METADATA_ERRORS: {
    readonly "MPP-META-E-001": {
        readonly component: ErrorComponent.METADATA;
        readonly severity: ErrorSeverity.WARNING;
        readonly message: "Sidecar metadata parsing failed";
        readonly description: "Sidecar metadata file found but could not be parsed";
        readonly userAction: "Check sidecar file format and content structure";
    };
    readonly "MPP-META-W-002": {
        readonly component: ErrorComponent.METADATA;
        readonly severity: ErrorSeverity.WARNING;
        readonly message: "Sidecar metadata format unknown";
        readonly description: "Sidecar file found but format not recognized";
        readonly userAction: "File will be processed without sidecar metadata";
    };
    readonly "MPP-META-E-003": {
        readonly component: ErrorComponent.METADATA;
        readonly severity: ErrorSeverity.ERROR;
        readonly message: "Metadata source conflict";
        readonly description: "Multiple metadata sources provide conflicting information";
        readonly userAction: "Review metadata sources for consistency";
    };
};
