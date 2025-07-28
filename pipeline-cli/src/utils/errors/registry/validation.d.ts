/**
 * Validation Error Registry
 * All MPP-VAL-* error definitions with hybrid approach
 */
import { ErrorComponent, ErrorSeverity } from '../types.js';
export declare const ValidationErrors: {
    readonly SIGNATURE_FAILED: "MPP-VAL-E-001";
    readonly SIZE_MISMATCH: "MPP-VAL-E-002";
    readonly MIME_TYPE_UNKNOWN: "MPP-VAL-W-001";
    readonly FORMAT_MISMATCH: "MPP-VAL-W-003";
};
export declare const VALIDATION_ERRORS: {
    readonly "MPP-VAL-E-001": {
        readonly component: ErrorComponent.VALIDATION;
        readonly severity: ErrorSeverity.ERROR;
        readonly message: "File signature validation failed";
        readonly description: "The file header does not match the expected format signature";
        readonly userAction: "Verify file is not corrupted and is the correct format";
    };
    readonly "MPP-VAL-E-002": {
        readonly component: ErrorComponent.VALIDATION;
        readonly severity: ErrorSeverity.ERROR;
        readonly message: "File size mismatch detected";
        readonly description: "Expected file size does not match actual file size";
        readonly userAction: "Check if file was completely downloaded or copied";
    };
    readonly "MPP-VAL-W-001": {
        readonly component: ErrorComponent.VALIDATION;
        readonly severity: ErrorSeverity.WARNING;
        readonly message: "Unable to detect MIME type";
        readonly description: "File extension does not match any known MIME type";
        readonly userAction: "Verify file extension is correct or file is supported format";
    };
    readonly "MPP-VAL-W-003": {
        readonly component: ErrorComponent.VALIDATION;
        readonly severity: ErrorSeverity.WARNING;
        readonly message: "File format detected differs from extension";
        readonly description: "File extension suggests one format but content indicates another";
        readonly userAction: "Consider renaming file with correct extension";
    };
};
