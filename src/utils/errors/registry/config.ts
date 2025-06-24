/**
 * Configuration Error Registry
 * All MPP-CFG-* error definitions with hybrid approach
 */

import { ErrorComponent, ErrorSeverity } from '../types.js';
import { Logger } from '../../logging/index.js';

// Clean constant names for external reference
export const ConfigErrors = {
  ENV_VAR_MISSING: 'MPP-CFG-F-001',
  INVALID_VALUE: 'MPP-CFG-E-002'
} as const;

// Registry using the constants
export const CONFIG_ERRORS = {
  [ConfigErrors.ENV_VAR_MISSING]: {
    component: ErrorComponent.CONFIG,
    severity: ErrorSeverity.FATAL,
    message: 'Required environment variable missing',
    description: 'A required environment variable is not set',
    userAction: 'Set missing environment variables in .env file'
  },
  [ConfigErrors.INVALID_VALUE]: {
    component: ErrorComponent.CONFIG,
    severity: ErrorSeverity.ERROR,
    message: 'Invalid configuration value',
    description: 'Configuration value is invalid or outside acceptable range',
    userAction: 'Check configuration values in .env file'
  }
} as const;

