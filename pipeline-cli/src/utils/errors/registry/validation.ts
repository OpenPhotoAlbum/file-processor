/**
 * Validation Error Registry
 * All MPP-VAL-* error definitions with hybrid approach
 */

import { ErrorComponent, ErrorSeverity } from '../types.js';
import { Logger } from '../../logging/index.js';

// Clean constant names for external reference
export const ValidationErrors = {
  SIGNATURE_FAILED: 'MPP-VAL-E-001',
  SIZE_MISMATCH: 'MPP-VAL-E-002',
  MIME_TYPE_UNKNOWN: 'MPP-VAL-W-001',
  FORMAT_MISMATCH: 'MPP-VAL-W-003'
} as const;

// Registry using the constants
export const VALIDATION_ERRORS = {
  [ValidationErrors.SIGNATURE_FAILED]: {
    component: ErrorComponent.VALIDATION,
    severity: ErrorSeverity.ERROR,
    message: 'File signature validation failed',
    description: 'The file header does not match the expected format signature',
    userAction: 'Verify file is not corrupted and is the correct format'
  },
  [ValidationErrors.SIZE_MISMATCH]: {
    component: ErrorComponent.VALIDATION,
    severity: ErrorSeverity.ERROR,
    message: 'File size mismatch detected',
    description: 'Expected file size does not match actual file size',
    userAction: 'Check if file was completely downloaded or copied'
  },
  [ValidationErrors.MIME_TYPE_UNKNOWN]: {
    component: ErrorComponent.VALIDATION,
    severity: ErrorSeverity.WARNING,
    message: 'Unable to detect MIME type',
    description: 'File extension does not match any known MIME type',
    userAction: 'Verify file extension is correct or file is supported format'
  },
  [ValidationErrors.FORMAT_MISMATCH]: {
    component: ErrorComponent.VALIDATION,
    severity: ErrorSeverity.WARNING,
    message: 'File format detected differs from extension',
    description: 'File extension suggests one format but content indicates another',
    userAction: 'Consider renaming file with correct extension'
  }
} as const;

