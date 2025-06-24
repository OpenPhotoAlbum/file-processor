/**
 * Landmark Error Registry
 * Detailed error information for landmark detection system
 */

import { ErrorSeverity, ErrorComponent } from '../types.js';
import { LandmarkErrors } from './landmark.js';

export const LANDMARK_ERRORS = {
  [LandmarkErrors.PROVIDER_UNAVAILABLE]: {
    severity: ErrorSeverity.WARNING,
    component: ErrorComponent.LANDMARK,
    message: 'Landmark provider is unavailable',
    description: 'A landmark data provider (NPS, USGS, etc.) could not be reached',
    userAction: 'Check network connectivity and provider configuration'
  },
  [LandmarkErrors.PROVIDER_TIMEOUT]: {
    severity: ErrorSeverity.WARNING,
    component: ErrorComponent.LANDMARK,
    message: 'Landmark provider request timed out',
    description: 'Request to landmark data provider exceeded timeout threshold',
    userAction: 'Retry the operation or check network connectivity'
  },
  [LandmarkErrors.PROVIDER_RATE_LIMITED]: {
    severity: ErrorSeverity.WARNING,
    component: ErrorComponent.LANDMARK,
    message: 'Landmark provider rate limit exceeded',
    description: 'API rate limits have been exceeded for the landmark provider',
    userAction: 'Wait before retrying or configure API key for higher limits'
  },
  [LandmarkErrors.PROVIDER_AUTHENTICATION_FAILED]: {
    severity: ErrorSeverity.WARNING,
    component: ErrorComponent.LANDMARK,
    message: 'Landmark provider authentication failed',
    description: 'API key or authentication credentials are invalid',
    userAction: 'Check API key configuration'
  },
  [LandmarkErrors.SEARCH_RADIUS_TOO_LARGE]: {
    severity: ErrorSeverity.WARNING,
    component: ErrorComponent.LANDMARK,
    message: 'Search radius exceeds maximum allowed distance',
    description: 'Requested search radius is larger than system limits',
    userAction: 'Reduce search radius or use default value'
  },
  [LandmarkErrors.NO_LANDMARKS_FOUND]: {
    severity: ErrorSeverity.WARNING,
    component: ErrorComponent.LANDMARK,
    message: 'No landmarks found near the specified coordinates',
    description: 'Search completed but no landmarks were found within the radius',
    userAction: 'Increase search radius or verify coordinates'
  },
  [LandmarkErrors.COORDINATES_INVALID]: {
    severity: ErrorSeverity.WARNING,
    component: ErrorComponent.LANDMARK,
    message: 'Invalid GPS coordinates provided for landmark search',
    description: 'Latitude or longitude values are outside valid ranges',
    userAction: 'Verify latitude and longitude values are valid'
  },
  [LandmarkErrors.SEARCH_OPTIONS_INVALID]: {
    severity: ErrorSeverity.WARNING,
    component: ErrorComponent.LANDMARK,
    message: 'Invalid search options provided',
    description: 'Search parameters contain invalid or conflicting values',
    userAction: 'Check search parameters and retry'
  },
  [LandmarkErrors.CACHE_MISS]: {
    severity: ErrorSeverity.WARNING,
    component: ErrorComponent.LANDMARK,
    message: 'Landmark cache miss occurred',
    description: 'Requested data not found in cache, fetching from providers',
    userAction: 'This is normal, data will be fetched from providers'
  },
  [LandmarkErrors.CACHE_CORRUPTED]: {
    severity: ErrorSeverity.WARNING,
    component: ErrorComponent.LANDMARK,
    message: 'Landmark cache contains corrupted data',
    description: 'Cached landmark data failed validation checks',
    userAction: 'Cache will be cleared automatically'
  },
  [LandmarkErrors.CACHE_FULL]: {
    severity: ErrorSeverity.WARNING,
    component: ErrorComponent.LANDMARK,
    message: 'Landmark cache is full',
    description: 'Cache has reached maximum capacity',
    userAction: 'Old entries will be automatically evicted'
  },
  [LandmarkErrors.BUNDLED_DATA_CORRUPTED]: {
    severity: ErrorSeverity.ERROR,
    component: ErrorComponent.LANDMARK,
    message: 'Bundled landmark data is corrupted or invalid',
    description: 'Built-in landmark database contains invalid data',
    userAction: 'Contact support or update the application'
  },
  [LandmarkErrors.LANDMARK_DATA_INVALID]: {
    severity: ErrorSeverity.ERROR,
    component: ErrorComponent.LANDMARK,
    message: 'Landmark data format is invalid',
    description: 'Landmark data does not conform to expected schema',
    userAction: 'Check data source or provider configuration'
  },
  [LandmarkErrors.CONFIDENCE_CALCULATION_FAILED]: {
    severity: ErrorSeverity.ERROR,
    component: ErrorComponent.LANDMARK,
    message: 'Failed to calculate landmark confidence score',
    description: 'Error in distance or confidence calculation algorithm',
    userAction: 'Check landmark data and distance calculations'
  },
  [LandmarkErrors.BOUNDARY_CHECK_FAILED]: {
    severity: ErrorSeverity.ERROR,
    component: ErrorComponent.LANDMARK,
    message: 'Landmark boundary containment check failed',
    description: 'Error performing spatial boundary intersection queries',
    userAction: 'Verify landmark boundary data is valid'
  },
  [LandmarkErrors.SERVICE_INITIALIZATION_FAILED]: {
    severity: ErrorSeverity.ERROR,
    component: ErrorComponent.LANDMARK,
    message: 'Landmark service failed to initialize',
    description: 'Error during landmark service startup or configuration',
    userAction: 'Check configuration and dependencies'
  },
  [LandmarkErrors.PROVIDER_REGISTRATION_FAILED]: {
    severity: ErrorSeverity.ERROR,
    component: ErrorComponent.LANDMARK,
    message: 'Failed to register landmark provider',
    description: 'Error adding landmark provider to service registry',
    userAction: 'Check provider implementation and configuration'
  },
  [LandmarkErrors.MULTIPLE_PROVIDERS_FAILED]: {
    severity: ErrorSeverity.ERROR,
    component: ErrorComponent.LANDMARK,
    message: 'All landmark providers failed',
    description: 'All configured landmark providers returned errors',
    userAction: 'Check network connectivity and provider configurations'
  },
  [LandmarkErrors.SERVICE_DISABLED]: {
    severity: ErrorSeverity.INFO,
    component: ErrorComponent.LANDMARK,
    message: 'Landmark service is disabled',
    description: 'Landmark enrichment is disabled in configuration',
    userAction: 'Enable landmark service in configuration if needed'
  }
} as const;