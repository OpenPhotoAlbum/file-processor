/**
 * GeolocationService factory - creates configured service instance
 */
import { GeolocationService } from './index.js';
/**
 * Create GeolocationService from environment variables
 */
export function createGeolocationService() {
    const config = {
        enabled: process.env.GEOLOCATION_ENABLED !== 'false', // Default to true unless explicitly disabled
        maxRadiusKm: parseInt(process.env.GEOLOCATION_MAX_RADIUS_KM || '10'),
        confidenceThreshold: parseFloat(process.env.GEOLOCATION_CONFIDENCE_THRESHOLD || '0.7'),
        cacheEnabled: true,
        cacheTtlMinutes: parseInt(process.env.GEOLOCATION_CACHE_TTL_MINUTES || '60'),
        dbConfig: {
            host: process.env.MYSQL_HOST || '127.0.0.1',
            port: parseInt(process.env.MYSQL_PORT || '3309'),
            user: process.env.MYSQL_USER || 'root',
            password: process.env.MYSQL_PASSWORD || 'Dalekini21!',
            database: process.env.MYSQL_DATABASE || 'kin'
        }
    };
    return new GeolocationService(config);
}
/**
 * Singleton instance for shared use across the application
 */
let instance = null;
export function getGeolocationService() {
    if (!instance) {
        instance = createGeolocationService();
    }
    return instance;
}
//# sourceMappingURL=factory.js.map