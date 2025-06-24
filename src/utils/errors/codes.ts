/**
 * Media Processing Pipeline Error Codes
 * Structured error code system for debugging and monitoring
 */

export enum ErrorSeverity {
  FATAL = 'F',    // Process cannot continue
  ERROR = 'E',    // Operation failed, but process can continue  
  WARNING = 'W',  // Issue detected, but operation succeeded
  INFO = 'I'      // Informational, not an error
}

export enum ErrorComponent {
  VALIDATION = 'VAL',     // File validation (signatures, size checks)
  EXIF = 'EXIF',         // EXIF metadata extraction
  GPS = 'GPS',           // GPS coordinate processing
  PATH = 'PATH',         // Path resolution and file access
  METADATA = 'META',     // Sidecar metadata processing
  IMAGE = 'IMG',         // Image processing
  VIDEO = 'VID',         // Video processing
  CONFIG = 'CFG',        // Configuration errors
  SYSTEM = 'SYS'         // System/infrastructure errors
}

/**
 * Error code registry - central definition of all error codes
 */
export const ERROR_REGISTRY = {
  // Validation Errors (VAL)
  'MPP-VAL-E-001': {
    component: ErrorComponent.VALIDATION,
    severity: ErrorSeverity.ERROR,
    message: 'File signature validation failed',
    description: 'The file header does not match the expected format signature',
    userAction: 'Verify file is not corrupted and is the correct format'
  },
  'MPP-VAL-E-002': {
    component: ErrorComponent.VALIDATION,
    severity: ErrorSeverity.ERROR,
    message: 'File size mismatch detected',
    description: 'Expected file size does not match actual file size',
    userAction: 'Check if file was completely downloaded or copied'
  },
  'MPP-VAL-W-003': {
    component: ErrorComponent.VALIDATION,
    severity: ErrorSeverity.WARNING,
    message: 'File format detected differs from extension',
    description: 'File extension suggests one format but content indicates another',
    userAction: 'Consider renaming file with correct extension'
  },

  // EXIF Errors (EXIF)
  'MPP-EXIF-E-001': {
    component: ErrorComponent.EXIF,
    severity: ErrorSeverity.ERROR,
    message: 'EXIF extraction failed',
    description: 'Unable to extract EXIF metadata from image file',
    userAction: 'Verify ExifTool is installed and file contains EXIF data'
  },
  'MPP-EXIF-E-002': {
    component: ErrorComponent.EXIF,
    severity: ErrorSeverity.ERROR,
    message: 'ExifTool command execution failed',
    description: 'ExifTool process failed to execute or returned error',
    userAction: 'Check ExifTool installation and file permissions'
  },
  'MPP-EXIF-W-003': {
    component: ErrorComponent.EXIF,
    severity: ErrorSeverity.WARNING,
    message: 'EXIF data corrupted or incomplete',
    description: 'EXIF data was found but contains invalid or incomplete information',
    userAction: 'File processing can continue but some metadata may be missing'
  },
  'MPP-EXIF-E-004': {
    component: ErrorComponent.EXIF,
    severity: ErrorSeverity.ERROR,
    message: 'ExifTool timeout exceeded',
    description: 'ExifTool processing took longer than configured timeout',
    userAction: 'Increase timeout value or check if file is corrupted'
  },

  // GPS Errors (GPS)
  'MPP-GPS-W-001': {
    component: ErrorComponent.GPS,
    severity: ErrorSeverity.WARNING,
    message: 'GPS conflict detected between sources',
    description: 'Multiple GPS sources provide different coordinates for the same file',
    userAction: 'Review GPS sources and verify which is most accurate'
  },
  'MPP-GPS-E-002': {
    component: ErrorComponent.GPS,
    severity: ErrorSeverity.ERROR,
    message: 'GPS coordinate parsing failed',
    description: 'GPS coordinates found but could not be parsed into valid values',
    userAction: 'Check GPS data format in source metadata'
  },
  'MPP-GPS-W-003': {
    component: ErrorComponent.GPS,
    severity: ErrorSeverity.WARNING,
    message: 'GPS coordinates appear invalid',
    description: 'GPS coordinates are outside valid ranges or appear suspicious',
    userAction: 'Verify GPS coordinates are correct'
  },
  'MPP-GPS-I-004': {
    component: ErrorComponent.GPS,
    severity: ErrorSeverity.INFO,
    message: 'No GPS data found in any source',
    description: 'No GPS coordinates found in EXIF, sidecar, or other sources',
    userAction: 'This is normal for files without location data'
  },

  // Path Errors (PATH)
  'MPP-PATH-F-001': {
    component: ErrorComponent.PATH,
    severity: ErrorSeverity.FATAL,
    message: 'File not found',
    description: 'Specified file path does not exist or is not accessible',
    userAction: 'Verify file path exists and has correct permissions'
  },
  'MPP-PATH-E-002': {
    component: ErrorComponent.PATH,
    severity: ErrorSeverity.ERROR,
    message: 'Path resolution failed',
    description: 'Unable to resolve relative path to absolute path',
    userAction: 'Check environment configuration for base paths'
  },
  'MPP-PATH-E-003': {
    component: ErrorComponent.PATH,
    severity: ErrorSeverity.ERROR,
    message: 'File permission denied',
    description: 'File exists but cannot be read due to permission restrictions',
    userAction: 'Check file permissions or run with appropriate privileges'
  },

  // Metadata Errors (META)
  'MPP-META-E-001': {
    component: ErrorComponent.METADATA,
    severity: ErrorSeverity.ERROR,
    message: 'Sidecar metadata parsing failed',
    description: 'Sidecar metadata file found but could not be parsed',
    userAction: 'Check sidecar file format and content structure'
  },
  'MPP-META-W-002': {
    component: ErrorComponent.METADATA,
    severity: ErrorSeverity.WARNING,
    message: 'Sidecar metadata format unknown',
    description: 'Sidecar file found but format not recognized',
    userAction: 'File will be processed without sidecar metadata'
  },
  'MPP-META-E-003': {
    component: ErrorComponent.METADATA,
    severity: ErrorSeverity.ERROR,
    message: 'Metadata source conflict',
    description: 'Multiple metadata sources provide conflicting information',
    userAction: 'Review metadata sources for consistency'
  },

  // Configuration Errors (CFG)
  'MPP-CFG-F-001': {
    component: ErrorComponent.CONFIG,
    severity: ErrorSeverity.FATAL,
    message: 'Required environment variable missing',
    description: 'A required environment variable is not set',
    userAction: 'Set missing environment variables in .env file'
  },
  'MPP-CFG-E-002': {
    component: ErrorComponent.CONFIG,
    severity: ErrorSeverity.ERROR,
    message: 'Invalid configuration value',
    description: 'Configuration value is invalid or outside acceptable range',
    userAction: 'Check configuration values in .env file'
  },

  // System Errors (SYS)  
  'MPP-SYS-F-001': {
    component: ErrorComponent.SYSTEM,
    severity: ErrorSeverity.FATAL,
    message: 'Out of memory',
    description: 'System has run out of available memory',
    userAction: 'Reduce file size or increase available memory'
  },
  'MPP-SYS-E-002': {
    component: ErrorComponent.SYSTEM,
    severity: ErrorSeverity.ERROR,
    message: 'External tool not found',
    description: 'Required external tool (like ExifTool) is not installed',
    userAction: 'Install required external dependencies'
  }
} as const;

export type ErrorCode = keyof typeof ERROR_REGISTRY;

/**
 * Get error information by code
 */
export function getErrorInfo(code: ErrorCode) {
  return ERROR_REGISTRY[code];
}

/**
 * Get all errors for a specific component
 */
export function getErrorsByComponent(component: ErrorComponent): ErrorCode[] {
  return Object.keys(ERROR_REGISTRY).filter(
    code => ERROR_REGISTRY[code as ErrorCode].component === component
  ) as ErrorCode[];
}

/**
 * Get all errors by severity
 */
export function getErrorsBySeverity(severity: ErrorSeverity): ErrorCode[] {
  return Object.keys(ERROR_REGISTRY).filter(
    code => ERROR_REGISTRY[code as ErrorCode].severity === severity
  ) as ErrorCode[];
}