/**
 * Metadata Error Registry
 * All MPP-META-* error definitions with hybrid approach
 */

import { ErrorComponent, ErrorSeverity } from '../types.js';
import { Logger } from '../../logging/index.js';

// Clean constant names for external reference
export const MetadataErrors = {
  PARSING_FAILED: 'MPP-META-E-001',
  FORMAT_UNKNOWN: 'MPP-META-W-002',
  SOURCE_CONFLICT: 'MPP-META-E-003'
} as const;

// Registry using the constants
export const METADATA_ERRORS = {
  [MetadataErrors.PARSING_FAILED]: {
    component: ErrorComponent.METADATA,
    severity: ErrorSeverity.WARNING,
    message: 'Sidecar metadata parsing failed',
    description: 'Sidecar metadata file found but could not be parsed',
    userAction: 'Check sidecar file format and content structure'
  },
  [MetadataErrors.FORMAT_UNKNOWN]: {
    component: ErrorComponent.METADATA,
    severity: ErrorSeverity.WARNING,
    message: 'Sidecar metadata format unknown',
    description: 'Sidecar file found but format not recognized',
    userAction: 'File will be processed without sidecar metadata'
  },
  [MetadataErrors.SOURCE_CONFLICT]: {
    component: ErrorComponent.METADATA,
    severity: ErrorSeverity.ERROR,
    message: 'Metadata source conflict',
    description: 'Multiple metadata sources provide conflicting information',
    userAction: 'Review metadata sources for consistency'
  }
} as const;

