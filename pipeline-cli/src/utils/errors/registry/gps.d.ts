/**
 * GPS Error Registry
 * All MPP-GPS-* error definitions with hybrid approach
 */
import { ErrorComponent, ErrorSeverity } from '../types.js';
export declare const GPSErrors: {
    readonly CONFLICT_DETECTED: "MPP-GPS-W-001";
    readonly EXTRACTION_FAILED: "MPP-GPS-E-002";
    readonly INVALID_COORDINATES: "MPP-GPS-W-003";
    readonly NO_GPS_DATA: "MPP-GPS-I-004";
};
export declare const GPS_ERRORS: {
    readonly "MPP-GPS-W-001": {
        readonly component: ErrorComponent.GPS;
        readonly severity: ErrorSeverity.WARNING;
        readonly message: "GPS conflict detected between sources";
        readonly description: "Multiple GPS sources found with conflicting coordinates";
        readonly userAction: "Review GPS sources for accuracy";
    };
    readonly "MPP-GPS-E-002": {
        readonly component: ErrorComponent.GPS;
        readonly severity: ErrorSeverity.WARNING;
        readonly message: "GPS extraction failed";
        readonly description: "Unable to extract GPS coordinates from any available source";
        readonly userAction: "Check GPS data format in source files";
    };
    readonly "MPP-GPS-W-003": {
        readonly component: ErrorComponent.GPS;
        readonly severity: ErrorSeverity.WARNING;
        readonly message: "GPS coordinates appear invalid";
        readonly description: "GPS coordinates are outside valid ranges or appear suspicious";
        readonly userAction: "Verify GPS coordinates are correct";
    };
    readonly "MPP-GPS-I-004": {
        readonly component: ErrorComponent.GPS;
        readonly severity: ErrorSeverity.INFO;
        readonly message: "No GPS data found in any source";
        readonly description: "No GPS coordinates found in EXIF, sidecar, or other sources";
        readonly userAction: "This is normal for files without location data";
    };
};
