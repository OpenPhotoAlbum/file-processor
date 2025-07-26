/**
 * System Error Registry
 * All MPP-SYS-* error definitions with hybrid approach
 */

import { ErrorComponent, ErrorSeverity } from '../types.js';
import { Logger } from '../../logging/index.js';

// Clean constant names for external reference
export const SystemErrors = {
  OUT_OF_MEMORY: 'MPP-SYS-F-001',
  FILE_OPERATION_FAILED: 'MPP-SYS-E-001',
  EXTERNAL_TOOL_NOT_FOUND: 'MPP-SYS-E-002'
} as const;

// Registry using the constants
export const SYSTEM_ERRORS = {
  [SystemErrors.OUT_OF_MEMORY]: {
    component: ErrorComponent.SYSTEM,
    severity: ErrorSeverity.FATAL,
    message: 'Out of memory',
    description: 'System has run out of available memory',
    userAction: 'Reduce file size or increase available memory'
  },
  [SystemErrors.FILE_OPERATION_FAILED]: {
    component: ErrorComponent.SYSTEM,
    severity: ErrorSeverity.ERROR,
    message: 'File processing operation failed',
    description: 'A critical file processing operation encountered an error',
    userAction: 'Check file permissions, disk space, and file integrity'
  },
  [SystemErrors.EXTERNAL_TOOL_NOT_FOUND]: {
    component: ErrorComponent.SYSTEM,
    severity: ErrorSeverity.ERROR,
    message: 'External tool not found',
    description: 'Required external tool (like ExifTool) is not installed',
    userAction: 'Install required external dependencies'
  }
} as const;

