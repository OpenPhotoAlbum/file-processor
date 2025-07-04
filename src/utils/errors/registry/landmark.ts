/**
 * Landmark Error Registry
 * Centralized error codes for landmark system
 */

export const LandmarkErrors = {
  // Provider errors (MPP-LANDMARK-W-001 to MPP-LANDMARK-W-020)
  PROVIDER_UNAVAILABLE: 'MPP-LANDMARK-W-001',
  PROVIDER_TIMEOUT: 'MPP-LANDMARK-W-002',
  PROVIDER_RATE_LIMITED: 'MPP-LANDMARK-W-003',
  PROVIDER_AUTHENTICATION_FAILED: 'MPP-LANDMARK-W-004',
  
  // Search errors (MPP-LANDMARK-W-021 to MPP-LANDMARK-W-040)
  SEARCH_RADIUS_TOO_LARGE: 'MPP-LANDMARK-W-021',
  NO_LANDMARKS_FOUND: 'MPP-LANDMARK-W-022',
  COORDINATES_INVALID: 'MPP-LANDMARK-W-023',
  SEARCH_OPTIONS_INVALID: 'MPP-LANDMARK-W-024',
  
  // Cache errors (MPP-LANDMARK-W-041 to MPP-LANDMARK-W-060)
  CACHE_MISS: 'MPP-LANDMARK-W-041',
  CACHE_CORRUPTED: 'MPP-LANDMARK-W-042',
  CACHE_FULL: 'MPP-LANDMARK-W-043',
  
  // Data errors (MPP-LANDMARK-E-001 to MPP-LANDMARK-E-020)
  BUNDLED_DATA_CORRUPTED: 'MPP-LANDMARK-E-001',
  LANDMARK_DATA_INVALID: 'MPP-LANDMARK-E-002',
  CONFIDENCE_CALCULATION_FAILED: 'MPP-LANDMARK-E-003',
  BOUNDARY_CHECK_FAILED: 'MPP-LANDMARK-E-004',
  
  // Service errors (MPP-LANDMARK-E-021 to MPP-LANDMARK-E-040)
  SERVICE_INITIALIZATION_FAILED: 'MPP-LANDMARK-E-021',
  PROVIDER_REGISTRATION_FAILED: 'MPP-LANDMARK-E-022',
  MULTIPLE_PROVIDERS_FAILED: 'MPP-LANDMARK-E-023',
  SERVICE_DISABLED: 'MPP-LANDMARK-I-001'
} as const;

export type LandmarkErrorCode = typeof LandmarkErrors[keyof typeof LandmarkErrors];