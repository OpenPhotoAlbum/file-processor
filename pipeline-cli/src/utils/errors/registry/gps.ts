/**
 * GPS Error Registry
 * All MPP-GPS-* error definitions with hybrid approach
 */

import { ErrorComponent, ErrorSeverity } from '../types.js';
import { Logger } from '../../logging/index.js';

// Clean constant names for external reference
export const GPSErrors = {
  CONFLICT_DETECTED: 'MPP-GPS-W-001',
  EXTRACTION_FAILED: 'MPP-GPS-E-002',
  INVALID_COORDINATES: 'MPP-GPS-W-003',
  NO_GPS_DATA: 'MPP-GPS-I-004'
} as const;

// Registry using the constants
export const GPS_ERRORS = {
  [GPSErrors.CONFLICT_DETECTED]: {
    component: ErrorComponent.GPS,
    severity: ErrorSeverity.WARNING,
    message: 'GPS conflict detected between sources',
    description: 'Multiple GPS sources found with conflicting coordinates',
    userAction: 'Review GPS sources for accuracy'
  },
  [GPSErrors.EXTRACTION_FAILED]: {
    component: ErrorComponent.GPS,
    severity: ErrorSeverity.WARNING,
    message: 'GPS extraction failed',
    description: 'Unable to extract GPS coordinates from any available source',
    userAction: 'Check GPS data format in source files'
  },
  [GPSErrors.INVALID_COORDINATES]: {
    component: ErrorComponent.GPS,
    severity: ErrorSeverity.WARNING,
    message: 'GPS coordinates appear invalid',
    description: 'GPS coordinates are outside valid ranges or appear suspicious',
    userAction: 'Verify GPS coordinates are correct'
  },
  [GPSErrors.NO_GPS_DATA]: {
    component: ErrorComponent.GPS,
    severity: ErrorSeverity.INFO,
    message: 'No GPS data found in any source',
    description: 'No GPS coordinates found in EXIF, sidecar, or other sources',
    userAction: 'This is normal for files without location data'
  }
} as const;

