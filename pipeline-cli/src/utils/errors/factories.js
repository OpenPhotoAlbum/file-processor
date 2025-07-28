/**
 * Component-specific error factories
 * Separated from registries to avoid circular dependencies
 */
import { Logger } from '../logging/index.js';
import { createErrorFactory } from './index.js';
import { TimestampErrors } from './registry/timestamp.js';
import { GPSErrors } from './registry/gps.js';
import { ExifErrors } from './registry/exif.js';
import { MetadataErrors } from './registry/metadata.js';
import { SystemErrors } from './registry/system.js';
import { ValidationErrors } from './registry/validation.js';
import { PathErrors } from './registry/path.js';
import { ConfigErrors } from './registry/config.js';
import { LandmarkErrors } from './registry/landmark.js';
// Timestamp error factory
export function createTimestampErrorFactory(logger) {
    const factory = createErrorFactory(logger);
    return {
        parsingFailed: (context, error) => factory.timestamp(TimestampErrors.PARSING_FAILED, context, error),
        formatUnrecognized: (context, error) => factory.timestamp(TimestampErrors.FORMAT_UNRECOGNIZED, context, error),
        conflictDetected: (context) => factory.timestamp(TimestampErrors.CONFLICT_DETECTED, context),
        invalidTimezone: (context, error) => factory.timestamp(TimestampErrors.INVALID_TIMEZONE, context, error),
        usingFallback: (context) => factory.timestamp(TimestampErrors.USING_FALLBACK, context)
    };
}
// GPS error factory
export function createGPSErrorFactory(logger) {
    const factory = createErrorFactory(logger);
    return {
        conflictDetected: (context) => factory.gps(GPSErrors.CONFLICT_DETECTED, context),
        extractionFailed: (context, error) => factory.gps(GPSErrors.EXTRACTION_FAILED, context, error),
        invalidCoordinates: (context) => factory.gps(GPSErrors.INVALID_COORDINATES, context),
        noGPSData: (context) => factory.gps(GPSErrors.NO_GPS_DATA, context)
    };
}
// EXIF error factory
export function createExifErrorFactory(logger) {
    const factory = createErrorFactory(logger);
    return {
        extractionFailed: (context, error) => factory.exif(ExifErrors.EXTRACTION_FAILED, context, error),
        exiftoolExecutionFailed: (context, error) => factory.exif(ExifErrors.EXIFTOOL_EXECUTION_FAILED, context, error),
        dataCorrupted: (context) => factory.exif(ExifErrors.DATA_CORRUPTED, context),
        timeoutExceeded: (context) => factory.exif(ExifErrors.TIMEOUT_EXCEEDED, context)
    };
}
// Metadata error factory
export function createMetadataErrorFactory(logger) {
    const factory = createErrorFactory(logger);
    return {
        parsingFailed: (context, error) => factory.metadata(MetadataErrors.PARSING_FAILED, context, error),
        formatUnknown: (context, error) => factory.metadata(MetadataErrors.FORMAT_UNKNOWN, context, error),
        sourceConflict: (context) => factory.metadata(MetadataErrors.SOURCE_CONFLICT, context)
    };
}
// System error factory
export function createSystemErrorFactory(logger) {
    const factory = createErrorFactory(logger);
    return {
        outOfMemory: (context) => factory.system(SystemErrors.OUT_OF_MEMORY, context),
        fileOperationFailed: (context, error) => factory.system(SystemErrors.FILE_OPERATION_FAILED, context, error),
        externalToolNotFound: (context) => factory.system(SystemErrors.EXTERNAL_TOOL_NOT_FOUND, context)
    };
}
// Validation error factory
export function createValidationErrorFactory(logger) {
    const factory = createErrorFactory(logger);
    return {
        signatureFailed: (context, error) => factory.validation(ValidationErrors.SIGNATURE_FAILED, context, error),
        sizeMismatch: (context) => factory.validation(ValidationErrors.SIZE_MISMATCH, context),
        mimeTypeUnknown: (context) => factory.validation(ValidationErrors.MIME_TYPE_UNKNOWN, context),
        formatMismatch: (context) => factory.validation(ValidationErrors.FORMAT_MISMATCH, context)
    };
}
// Path error factory
export function createPathErrorFactory(logger) {
    const factory = createErrorFactory(logger);
    return {
        fileNotFound: (context, error) => factory.path(PathErrors.FILE_NOT_FOUND, context, error),
        optionalFileNotFound: (context, error) => factory.path(PathErrors.OPTIONAL_FILE_NOT_FOUND, context, error),
        resolutionFailed: (context, error) => factory.path(PathErrors.RESOLUTION_FAILED, context, error),
        permissionDenied: (context, error) => factory.path(PathErrors.PERMISSION_DENIED, context, error)
    };
}
// Config error factory
export function createConfigErrorFactory(logger) {
    const factory = createErrorFactory(logger);
    return {
        envVarMissing: (context, error) => factory.config(ConfigErrors.ENV_VAR_MISSING, context, error),
        invalidValue: (context, error) => factory.config(ConfigErrors.INVALID_VALUE, context, error)
    };
}
// Landmark error factory
export function createLandmarkErrorFactory(logger = new Logger('Landmark Factory')) {
    const factory = createErrorFactory(logger);
    return {
        providerUnavailable: (context, error) => factory.landmark(LandmarkErrors.PROVIDER_UNAVAILABLE, context, error),
        providerTimeout: (context, error) => factory.landmark(LandmarkErrors.PROVIDER_TIMEOUT, context, error),
        noLandmarksFound: (context) => factory.landmark(LandmarkErrors.NO_LANDMARKS_FOUND, context),
        coordinatesInvalid: (context, error) => factory.landmark(LandmarkErrors.COORDINATES_INVALID, context, error),
        serviceDisabled: (context) => factory.landmark(LandmarkErrors.SERVICE_DISABLED, context),
        bundledDataCorrupted: (context, error) => factory.landmark(LandmarkErrors.BUNDLED_DATA_CORRUPTED, context, error)
    };
}
//# sourceMappingURL=factories.js.map