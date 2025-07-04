/**
 * Landmark Service Factory - Creates configured service instances
 */

import { LandmarkService, LandmarkServiceConfig } from './index.js';
import { NationalParksProvider } from './providers/national-parks.js';
import { GNISProvider } from './providers/gnis.js';
import { RecreationProvider } from './providers/recreation.js';
import { Logger } from '../../utils/logging/index.js';

/**
 * Create LandmarkService from environment variables
 */
export function createLandmarkService(): LandmarkService {
  const config: LandmarkServiceConfig = {
    enabled: process.env.LANDMARKS_ENABLED !== 'false', // Default enabled
    maxRadius: parseInt(process.env.LANDMARKS_MAX_RADIUS || '50000'), // 50km
    maxResults: parseInt(process.env.LANDMARKS_MAX_RESULTS || '10'),
    minConfidence: parseFloat(process.env.LANDMARKS_MIN_CONFIDENCE || '0.3'),
    cacheEnabled: process.env.LANDMARKS_CACHE_ENABLED !== 'false', // Default enabled
    cacheTtlMinutes: parseInt(process.env.LANDMARKS_CACHE_TTL_MINUTES || '60'),
    providers: {
      nationalParks: {
        enabled: process.env.NPS_PROVIDER_ENABLED !== 'false', // Default enabled
        apiKey: process.env.NPS_API_KEY
      },
      naturalFeatures: {
        enabled: process.env.GNIS_PROVIDER_ENABLED !== 'false' // Default enabled
      },
      recreation: {
        enabled: process.env.RECREATION_GOV_PROVIDER_ENABLED !== 'false', // Default enabled
        apiKey: process.env.RECREATION_GOV_API_KEY
      },
      stateParks: {
        enabled: process.env.STATE_PARKS_ENABLED === 'true' // Default disabled for now
      },
      historicSites: {
        enabled: process.env.HISTORIC_SITES_ENABLED === 'true' // Default disabled for now
      }
    }
  };

  const logger = new Logger('Landmark Factory');
  const providers = [];

  // Register National Parks Provider
  if (config.providers.nationalParks.enabled) {
    const npsProvider = new NationalParksProvider(config.providers.nationalParks.apiKey);
    providers.push(npsProvider);
    logger.info('National Parks provider registered');
  }

  // Register GNIS Provider for natural features
  if (config.providers.naturalFeatures.enabled) {
    const gnisProvider = new GNISProvider();
    providers.push(gnisProvider);
    logger.info('GNIS natural features provider registered');
  }

  // Register Recreation.gov Provider
  if (config.providers.recreation.enabled && config.providers.recreation.apiKey) {
    const recreationProvider = new RecreationProvider(config.providers.recreation.apiKey);
    providers.push(recreationProvider);
    logger.info('Recreation.gov facilities provider registered');
  } else if (config.providers.recreation.enabled) {
    logger.warn('Recreation.gov provider enabled but no API key provided');
  }

  // TODO: Register additional providers as they're implemented
  // if (config.providers.stateParks.enabled) {
  //   providers.push(new StateParksProvider());
  // }
  // if (config.providers.historicSites.enabled) {
  //   providers.push(new HistoricSitesProvider());
  // }

  logger.info('Landmark service created', {
    enabled: config.enabled,
    maxRadius: config.maxRadius,
    providerCount: providers.length
  });

  return new LandmarkService(config, providers);
}

/**
 * Singleton instance for shared use across the application
 */
let instance: LandmarkService | null = null;

export function getLandmarkService(): LandmarkService {
  if (!instance) {
    instance = createLandmarkService();
  }
  return instance;
}

/**
 * Reset singleton (useful for testing)
 */
export function resetLandmarkService(): void {
  instance = null;
}