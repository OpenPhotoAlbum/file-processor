/**
 * Timestamp Error Registry
 * All MPP-TIME-* error definitions with hybrid approach
 */

import { ErrorComponent, ErrorSeverity } from '../types.js';
import { Logger } from '../../logging/index.js';

// Clean constant names for external reference
export const TimestampErrors = {
  PARSING_FAILED: 'MPP-TIME-E-001',
  FORMAT_UNRECOGNIZED: 'MPP-TIME-W-002',
  CONFLICT_DETECTED: 'MPP-TIME-W-003',
  INVALID_TIMEZONE: 'MPP-TIME-E-004',
  USING_FALLBACK: 'MPP-TIME-I-005'
} as const;

// Registry using the constants
export const TIMESTAMP_ERRORS = {
  [TimestampErrors.PARSING_FAILED]: {
    component: ErrorComponent.TIMESTAMP,
    severity: ErrorSeverity.ERROR,
    message: 'Timestamp parsing failed',
    description: 'Unable to parse timestamp from source data',
    userAction: 'Check timestamp format in source metadata'
  },
  [TimestampErrors.FORMAT_UNRECOGNIZED]: {
    component: ErrorComponent.TIMESTAMP,
    severity: ErrorSeverity.WARNING,
    message: 'Timestamp format unrecognized',
    description: 'Timestamp found but format not recognized by parser',
    userAction: 'Timestamp will be skipped, verify format is correct'
  },
  [TimestampErrors.CONFLICT_DETECTED]: {
    component: ErrorComponent.TIMESTAMP,
    severity: ErrorSeverity.WARNING,
    message: 'Timestamp conflict detected',
    description: 'Multiple timestamp sources disagree significantly',
    userAction: 'Review timestamp sources for accuracy'
  },
  [TimestampErrors.INVALID_TIMEZONE]: {
    component: ErrorComponent.TIMESTAMP,
    severity: ErrorSeverity.ERROR,
    message: 'Invalid timezone in timestamp',
    description: 'Timestamp contains invalid or unparseable timezone information',
    userAction: 'Check timezone format in source data'
  },
  [TimestampErrors.USING_FALLBACK]: {
    component: ErrorComponent.TIMESTAMP,
    severity: ErrorSeverity.INFO,
    message: 'Using fallback timestamp source',
    description: 'Primary timestamp sources unavailable, using fallback',
    userAction: 'Consider adding better timestamp metadata to files'
  }
} as const;

