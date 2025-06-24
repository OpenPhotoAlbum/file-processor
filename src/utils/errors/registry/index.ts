/**
 * Error Registry Index
 * Combines all error registries into unified registry
 */

import { VALIDATION_ERRORS } from './validation.js';
import { EXIF_ERRORS } from './exif.js';
import { GPS_ERRORS } from './gps.js';
import { TIMESTAMP_ERRORS } from './timestamp.js';
import { PATH_ERRORS } from './path.js';
import { METADATA_ERRORS } from './metadata.js';
import { CONFIG_ERRORS } from './config.js';
import { SYSTEM_ERRORS } from './system.js';

/**
 * Combined error registry from all component registries
 */
export const ERROR_REGISTRY = {
  ...VALIDATION_ERRORS,
  ...EXIF_ERRORS,
  ...GPS_ERRORS,
  ...TIMESTAMP_ERRORS,
  ...PATH_ERRORS,
  ...METADATA_ERRORS,
  ...CONFIG_ERRORS,
  ...SYSTEM_ERRORS
} as const;

// Re-export individual registries for direct access
export { VALIDATION_ERRORS } from './validation.js';
export { EXIF_ERRORS } from './exif.js';
export { GPS_ERRORS } from './gps.js';
export { TIMESTAMP_ERRORS } from './timestamp.js';
export { PATH_ERRORS } from './path.js';
export { METADATA_ERRORS } from './metadata.js';
export { CONFIG_ERRORS } from './config.js';
export { SYSTEM_ERRORS } from './system.js';