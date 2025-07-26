/**
 * Services module exports
 */

export { FileSystemService } from './filesystem/index.js';
export * from './filesystem/types.js';

export { GeolocationService } from './geolocation/index.js';
export { createGeolocationService, getGeolocationService } from './geolocation/factory.js';
export type { LocationMatch, GeolocationConfig } from './geolocation/index.js';

export { LandmarkService } from './landmarks/index.js';
export { createLandmarkService, getLandmarkService } from './landmarks/factory.js';
export type { 
  Landmark, 
  LandmarkMatch, 
  LandmarkSearchOptions, 
  LandmarkServiceConfig,
  EnrichmentStatus 
} from './landmarks/types.js';