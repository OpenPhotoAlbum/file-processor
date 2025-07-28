/**
 * Timestamp Error Registry
 * All MPP-TIME-* error definitions with hybrid approach
 */
import { ErrorComponent, ErrorSeverity } from '../types.js';
export declare const TimestampErrors: {
    readonly PARSING_FAILED: "MPP-TIME-E-001";
    readonly FORMAT_UNRECOGNIZED: "MPP-TIME-W-002";
    readonly CONFLICT_DETECTED: "MPP-TIME-W-003";
    readonly INVALID_TIMEZONE: "MPP-TIME-E-004";
    readonly USING_FALLBACK: "MPP-TIME-I-005";
};
export declare const TIMESTAMP_ERRORS: {
    readonly "MPP-TIME-E-001": {
        readonly component: ErrorComponent.TIMESTAMP;
        readonly severity: ErrorSeverity.ERROR;
        readonly message: "Timestamp parsing failed";
        readonly description: "Unable to parse timestamp from source data";
        readonly userAction: "Check timestamp format in source metadata";
    };
    readonly "MPP-TIME-W-002": {
        readonly component: ErrorComponent.TIMESTAMP;
        readonly severity: ErrorSeverity.WARNING;
        readonly message: "Timestamp format unrecognized";
        readonly description: "Timestamp found but format not recognized by parser";
        readonly userAction: "Timestamp will be skipped, verify format is correct";
    };
    readonly "MPP-TIME-W-003": {
        readonly component: ErrorComponent.TIMESTAMP;
        readonly severity: ErrorSeverity.WARNING;
        readonly message: "Timestamp conflict detected";
        readonly description: "Multiple timestamp sources disagree significantly";
        readonly userAction: "Review timestamp sources for accuracy";
    };
    readonly "MPP-TIME-E-004": {
        readonly component: ErrorComponent.TIMESTAMP;
        readonly severity: ErrorSeverity.ERROR;
        readonly message: "Invalid timezone in timestamp";
        readonly description: "Timestamp contains invalid or unparseable timezone information";
        readonly userAction: "Check timezone format in source data";
    };
    readonly "MPP-TIME-I-005": {
        readonly component: ErrorComponent.TIMESTAMP;
        readonly severity: ErrorSeverity.INFO;
        readonly message: "Using fallback timestamp source";
        readonly description: "Primary timestamp sources unavailable, using fallback";
        readonly userAction: "Consider adding better timestamp metadata to files";
    };
};
