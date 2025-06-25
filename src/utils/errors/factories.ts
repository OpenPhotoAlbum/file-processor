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
export function createTimestampErrorFactory(logger: Logger) {
  const factory = createErrorFactory(logger);
  return {
    parsingFailed: (context: object, error?: Error) => 
      factory.timestamp(TimestampErrors.PARSING_FAILED, context, error),
    formatUnrecognized: (context: object, error?: Error) => 
      factory.timestamp(TimestampErrors.FORMAT_UNRECOGNIZED, context, error),
    conflictDetected: (context: object) => 
      factory.timestamp(TimestampErrors.CONFLICT_DETECTED, context),
    invalidTimezone: (context: object, error?: Error) => 
      factory.timestamp(TimestampErrors.INVALID_TIMEZONE, context, error),
    usingFallback: (context: object) => 
      factory.timestamp(TimestampErrors.USING_FALLBACK, context)
  };
}

// GPS error factory
export function createGPSErrorFactory(logger: Logger) {
  const factory = createErrorFactory(logger);
  return {
    conflictDetected: (context: object) => 
      factory.gps(GPSErrors.CONFLICT_DETECTED, context),
    extractionFailed: (context: object, error?: Error) => 
      factory.gps(GPSErrors.EXTRACTION_FAILED, context, error),
    invalidCoordinates: (context: object) => 
      factory.gps(GPSErrors.INVALID_COORDINATES, context),
    noGPSData: (context: object) => 
      factory.gps(GPSErrors.NO_GPS_DATA, context)
  };
}

// EXIF error factory
export function createExifErrorFactory(logger: Logger) {
  const factory = createErrorFactory(logger);
  return {
    extractionFailed: (context: object, error?: Error) => 
      factory.exif(ExifErrors.EXTRACTION_FAILED, context, error),
    exiftoolExecutionFailed: (context: object, error?: Error) => 
      factory.exif(ExifErrors.EXIFTOOL_EXECUTION_FAILED, context, error),
    dataCorrupted: (context: object) => 
      factory.exif(ExifErrors.DATA_CORRUPTED, context),
    timeoutExceeded: (context: object) => 
      factory.exif(ExifErrors.TIMEOUT_EXCEEDED, context)
  };
}

// Metadata error factory
export function createMetadataErrorFactory(logger: Logger) {
  const factory = createErrorFactory(logger);
  return {
    parsingFailed: (context: object, error?: Error) => 
      factory.metadata(MetadataErrors.PARSING_FAILED, context, error),
    formatUnknown: (context: object, error?: Error) => 
      factory.metadata(MetadataErrors.FORMAT_UNKNOWN, context, error),
    sourceConflict: (context: object) => 
      factory.metadata(MetadataErrors.SOURCE_CONFLICT, context)
  };
}

// System error factory
export function createSystemErrorFactory(logger: Logger) {
  const factory = createErrorFactory(logger);
  return {
    outOfMemory: (context: object) => 
      factory.system(SystemErrors.OUT_OF_MEMORY, context),
    fileOperationFailed: (context: object, error?: Error) => 
      factory.system(SystemErrors.FILE_OPERATION_FAILED, context, error),
    externalToolNotFound: (context: object) => 
      factory.system(SystemErrors.EXTERNAL_TOOL_NOT_FOUND, context)
  };
}

// Validation error factory
export function createValidationErrorFactory(logger: Logger) {
  const factory = createErrorFactory(logger);
  return {
    signatureFailed: (context: object, error?: Error) => 
      factory.validation(ValidationErrors.SIGNATURE_FAILED, context, error),
    sizeMismatch: (context: object) => 
      factory.validation(ValidationErrors.SIZE_MISMATCH, context),
    mimeTypeUnknown: (context: object) => 
      factory.validation(ValidationErrors.MIME_TYPE_UNKNOWN, context),
    formatMismatch: (context: object) => 
      factory.validation(ValidationErrors.FORMAT_MISMATCH, context)
  };
}

// Path error factory
export function createPathErrorFactory(logger: Logger) {
  const factory = createErrorFactory(logger);
  return {
    fileNotFound: (context: object, error?: Error) => 
      factory.path(PathErrors.FILE_NOT_FOUND, context, error),
    optionalFileNotFound: (context: object, error?: Error) => 
      factory.path(PathErrors.OPTIONAL_FILE_NOT_FOUND, context, error),
    resolutionFailed: (context: object, error?: Error) => 
      factory.path(PathErrors.RESOLUTION_FAILED, context, error),
    permissionDenied: (context: object, error?: Error) => 
      factory.path(PathErrors.PERMISSION_DENIED, context, error)
  };
}

// Config error factory
export function createConfigErrorFactory(logger: Logger) {
  const factory = createErrorFactory(logger);
  return {
    envVarMissing: (context: object, error?: Error) => 
      factory.config(ConfigErrors.ENV_VAR_MISSING, context, error),
    invalidValue: (context: object, error?: Error) => 
      factory.config(ConfigErrors.INVALID_VALUE, context, error)
  };
}

// Landmark error factory
export function createLandmarkErrorFactory(logger: Logger = new Logger('Landmark Factory')) {
  const factory = createErrorFactory(logger);
  return {
    providerUnavailable: (context: object, error?: Error) => 
      factory.landmark(LandmarkErrors.PROVIDER_UNAVAILABLE, context, error),
    providerTimeout: (context: object, error?: Error) => 
      factory.landmark(LandmarkErrors.PROVIDER_TIMEOUT, context, error),
    noLandmarksFound: (context: object) => 
      factory.landmark(LandmarkErrors.NO_LANDMARKS_FOUND, context),
    coordinatesInvalid: (context: object, error?: Error) => 
      factory.landmark(LandmarkErrors.COORDINATES_INVALID, context, error),
    serviceDisabled: (context: object) => 
      factory.landmark(LandmarkErrors.SERVICE_DISABLED, context),
    bundledDataCorrupted: (context: object, error?: Error) => 
      factory.landmark(LandmarkErrors.BUNDLED_DATA_CORRUPTED, context, error)
  };
}