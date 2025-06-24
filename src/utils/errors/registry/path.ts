/**
 * Path Error Registry
 * All MPP-PATH-* error definitions with hybrid approach
 */

import { ErrorComponent, ErrorSeverity } from '../types.js';
import { Logger } from '../../logging/index.js';

// Clean constant names for external reference
export const PathErrors = {
  FILE_NOT_FOUND: 'MPP-PATH-F-001',
  RESOLUTION_FAILED: 'MPP-PATH-E-002',
  PERMISSION_DENIED: 'MPP-PATH-E-003'
} as const;

// Registry using the constants
export const PATH_ERRORS = {
  [PathErrors.FILE_NOT_FOUND]: {
    component: ErrorComponent.PATH,
    severity: ErrorSeverity.FATAL,
    message: 'File not found',
    description: 'Specified file path does not exist or is not accessible',
    userAction: 'Verify file path exists and has correct permissions'
  },
  [PathErrors.RESOLUTION_FAILED]: {
    component: ErrorComponent.PATH,
    severity: ErrorSeverity.ERROR,
    message: 'Path resolution failed',
    description: 'Unable to resolve relative path to absolute path',
    userAction: 'Check environment configuration for base paths'
  },
  [PathErrors.PERMISSION_DENIED]: {
    component: ErrorComponent.PATH,
    severity: ErrorSeverity.ERROR,
    message: 'File permission denied',
    description: 'File exists but cannot be read due to permission restrictions',
    userAction: 'Check file permissions or run with appropriate privileges'
  }
} as const;

