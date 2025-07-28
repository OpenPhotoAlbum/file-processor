/**
 * Component-specific error factories
 * Separated from registries to avoid circular dependencies
 */
import { Logger } from '../logging/index.js';
export declare function createTimestampErrorFactory(logger: Logger): {
    parsingFailed: (context: object, error?: Error) => import("./classes.js").TimestampError;
    formatUnrecognized: (context: object, error?: Error) => import("./classes.js").TimestampError;
    conflictDetected: (context: object) => import("./classes.js").TimestampError;
    invalidTimezone: (context: object, error?: Error) => import("./classes.js").TimestampError;
    usingFallback: (context: object) => import("./classes.js").TimestampError;
};
export declare function createGPSErrorFactory(logger: Logger): {
    conflictDetected: (context: object) => import("./classes.js").GPSError;
    extractionFailed: (context: object, error?: Error) => import("./classes.js").GPSError;
    invalidCoordinates: (context: object) => import("./classes.js").GPSError;
    noGPSData: (context: object) => import("./classes.js").GPSError;
};
export declare function createExifErrorFactory(logger: Logger): {
    extractionFailed: (context: object, error?: Error) => import("./classes.js").ExifError;
    exiftoolExecutionFailed: (context: object, error?: Error) => import("./classes.js").ExifError;
    dataCorrupted: (context: object) => import("./classes.js").ExifError;
    timeoutExceeded: (context: object) => import("./classes.js").ExifError;
};
export declare function createMetadataErrorFactory(logger: Logger): {
    parsingFailed: (context: object, error?: Error) => import("./classes.js").MetadataError;
    formatUnknown: (context: object, error?: Error) => import("./classes.js").MetadataError;
    sourceConflict: (context: object) => import("./classes.js").MetadataError;
};
export declare function createSystemErrorFactory(logger: Logger): {
    outOfMemory: (context: object) => import("./classes.js").SystemError;
    fileOperationFailed: (context: object, error?: Error) => import("./classes.js").SystemError;
    externalToolNotFound: (context: object) => import("./classes.js").SystemError;
};
export declare function createValidationErrorFactory(logger: Logger): {
    signatureFailed: (context: object, error?: Error) => import("./classes.js").ValidationError;
    sizeMismatch: (context: object) => import("./classes.js").ValidationError;
    mimeTypeUnknown: (context: object) => import("./classes.js").ValidationError;
    formatMismatch: (context: object) => import("./classes.js").ValidationError;
};
export declare function createPathErrorFactory(logger: Logger): {
    fileNotFound: (context: object, error?: Error) => import("./classes.js").PathError;
    optionalFileNotFound: (context: object, error?: Error) => import("./classes.js").PathError;
    resolutionFailed: (context: object, error?: Error) => import("./classes.js").PathError;
    permissionDenied: (context: object, error?: Error) => import("./classes.js").PathError;
};
export declare function createConfigErrorFactory(logger: Logger): {
    envVarMissing: (context: object, error?: Error) => import("./classes.js").ConfigError;
    invalidValue: (context: object, error?: Error) => import("./classes.js").ConfigError;
};
export declare function createLandmarkErrorFactory(logger?: Logger): {
    providerUnavailable: (context: object, error?: Error) => import("./classes.js").LandmarkError;
    providerTimeout: (context: object, error?: Error) => import("./classes.js").LandmarkError;
    noLandmarksFound: (context: object) => import("./classes.js").LandmarkError;
    coordinatesInvalid: (context: object, error?: Error) => import("./classes.js").LandmarkError;
    serviceDisabled: (context: object) => import("./classes.js").LandmarkError;
    bundledDataCorrupted: (context: object, error?: Error) => import("./classes.js").LandmarkError;
};
