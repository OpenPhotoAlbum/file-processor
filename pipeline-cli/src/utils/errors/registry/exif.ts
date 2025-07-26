/**
 * EXIF Error Registry
 * All MPP-EXIF-* error definitions with hybrid approach
 */

import { ErrorComponent, ErrorSeverity } from '../types.js';
import { Logger } from '../../logging/index.js';

// Clean constant names for external reference
export const ExifErrors = {
  EXTRACTION_FAILED: 'MPP-EXIF-E-001',
  EXIFTOOL_EXECUTION_FAILED: 'MPP-EXIF-E-002',
  DATA_CORRUPTED: 'MPP-EXIF-W-003',
  TIMEOUT_EXCEEDED: 'MPP-EXIF-E-004'
} as const;

// Registry using the constants
export const EXIF_ERRORS = {
  [ExifErrors.EXTRACTION_FAILED]: {
    component: ErrorComponent.EXIF,
    severity: ErrorSeverity.ERROR,
    message: 'EXIF extraction failed',
    description: 'Unable to extract EXIF metadata from image file',
    userAction: 'Verify ExifTool is installed and file contains EXIF data'
  },
  [ExifErrors.EXIFTOOL_EXECUTION_FAILED]: {
    component: ErrorComponent.EXIF,
    severity: ErrorSeverity.ERROR,
    message: 'ExifTool command execution failed',
    description: 'ExifTool process failed to execute or returned error',
    userAction: 'Check ExifTool installation and file permissions'
  },
  [ExifErrors.DATA_CORRUPTED]: {
    component: ErrorComponent.EXIF,
    severity: ErrorSeverity.WARNING,
    message: 'EXIF data corrupted or incomplete',
    description: 'EXIF data was found but contains invalid or incomplete information',
    userAction: 'File processing can continue but some metadata may be missing'
  },
  [ExifErrors.TIMEOUT_EXCEEDED]: {
    component: ErrorComponent.EXIF,
    severity: ErrorSeverity.ERROR,
    message: 'ExifTool timeout exceeded',
    description: 'ExifTool command exceeded maximum execution time',
    userAction: 'Check system performance or increase timeout setting'
  }
} as const;

