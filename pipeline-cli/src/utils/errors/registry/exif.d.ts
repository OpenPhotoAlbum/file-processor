/**
 * EXIF Error Registry
 * All MPP-EXIF-* error definitions with hybrid approach
 */
import { ErrorComponent, ErrorSeverity } from '../types.js';
export declare const ExifErrors: {
    readonly EXTRACTION_FAILED: "MPP-EXIF-E-001";
    readonly EXIFTOOL_EXECUTION_FAILED: "MPP-EXIF-E-002";
    readonly DATA_CORRUPTED: "MPP-EXIF-W-003";
    readonly TIMEOUT_EXCEEDED: "MPP-EXIF-E-004";
};
export declare const EXIF_ERRORS: {
    readonly "MPP-EXIF-E-001": {
        readonly component: ErrorComponent.EXIF;
        readonly severity: ErrorSeverity.ERROR;
        readonly message: "EXIF extraction failed";
        readonly description: "Unable to extract EXIF metadata from image file";
        readonly userAction: "Verify ExifTool is installed and file contains EXIF data";
    };
    readonly "MPP-EXIF-E-002": {
        readonly component: ErrorComponent.EXIF;
        readonly severity: ErrorSeverity.ERROR;
        readonly message: "ExifTool command execution failed";
        readonly description: "ExifTool process failed to execute or returned error";
        readonly userAction: "Check ExifTool installation and file permissions";
    };
    readonly "MPP-EXIF-W-003": {
        readonly component: ErrorComponent.EXIF;
        readonly severity: ErrorSeverity.WARNING;
        readonly message: "EXIF data corrupted or incomplete";
        readonly description: "EXIF data was found but contains invalid or incomplete information";
        readonly userAction: "File processing can continue but some metadata may be missing";
    };
    readonly "MPP-EXIF-E-004": {
        readonly component: ErrorComponent.EXIF;
        readonly severity: ErrorSeverity.ERROR;
        readonly message: "ExifTool timeout exceeded";
        readonly description: "ExifTool command exceeded maximum execution time";
        readonly userAction: "Check system performance or increase timeout setting";
    };
};
