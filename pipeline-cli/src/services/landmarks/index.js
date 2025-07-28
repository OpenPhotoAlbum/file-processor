/**
 * Landmark Service - Central orchestrator for landmark detection
 * Coordinates multiple landmark providers and merges results
 */
import { Logger } from '../../utils/logging/index.js';
import { createLandmarkErrorFactory } from '../../utils/errors/factories.js';
import { LandmarkCategory, LandmarkRelationship } from './types.js';
export * from './types.js';
/**
 * Main landmark service class
 */
export class LandmarkService {
    config;
    logger = new Logger('Landmark Service');
    errorFactory = createLandmarkErrorFactory();
    providers = [];
    cache = new Map();
    constructor(config, providers = []) {
        this.config = config;
        this.providers = providers.sort((a, b) => a.priority - b.priority);
        this.logger.info('Landmark service initialized', {
            enabled: config.enabled,
            providerCount: providers.length,
            providers: providers.map(p => p.name)
        });
    }
    /**
     * Register a landmark provider
     */
    registerProvider(provider) {
        this.providers.push(provider);
        this.providers.sort((a, b) => a.priority - b.priority);
        this.logger.info('Provider registered', {
            name: provider.name,
            priority: provider.priority
        });
    }
    /**
     * Find landmarks near GPS coordinates
     */
    async findNearbyLandmarks(lat, lng, options = {}) {
        const startTime = Date.now();
        if (!this.config.enabled) {
            return {
                matches: [],
                status: {
                    landmarks: 'disabled',
                    providersUsed: [],
                    cacheHit: false,
                    queryTimeMs: 0
                }
            };
        }
        try {
            // Apply default options
            const searchOptions = {
                maxRadius: this.config.maxRadius,
                maxResults: this.config.maxResults,
                minConfidence: this.config.minConfidence,
                includeBoundaryChecks: true,
                ...options
            };
            // Check cache first
            const cacheKey = this.generateCacheKey(lat, lng, searchOptions);
            if (this.config.cacheEnabled) {
                const cached = this.getCachedResult(cacheKey);
                if (cached) {
                    return {
                        matches: cached,
                        status: {
                            landmarks: 'success',
                            providersUsed: ['cache'],
                            cacheHit: true,
                            queryTimeMs: Date.now() - startTime
                        }
                    };
                }
            }
            // Query all providers
            const allMatches = [];
            const providersUsed = [];
            const errors = [];
            for (const provider of this.providers) {
                try {
                    const matches = await provider.findNearbyLandmarks(lat, lng, searchOptions);
                    if (matches.length > 0) {
                        allMatches.push(...matches);
                        providersUsed.push(provider.name);
                    }
                }
                catch (error) {
                    const errorMsg = `Provider ${provider.name} failed: ${error.message}`;
                    this.logger.warn(errorMsg, { lat, lng, provider: provider.name });
                    errors.push(errorMsg);
                }
            }
            // Merge, deduplicate, and rank results
            const finalMatches = this.mergeAndRankMatches(allMatches, searchOptions);
            // Cache results
            if (this.config.cacheEnabled && finalMatches.length > 0) {
                this.cacheResult(cacheKey, finalMatches);
            }
            const status = {
                landmarks: finalMatches.length > 0 ? 'success' : 'not_found',
                providersUsed,
                cacheHit: false,
                queryTimeMs: Date.now() - startTime
            };
            if (errors.length > 0 && finalMatches.length === 0) {
                status.landmarks = 'error';
            }
            else if (errors.length > 0) {
                status.landmarks = 'partial';
            }
            this.logger.debug('Landmark search completed', {
                lat, lng,
                matchCount: finalMatches.length,
                providersUsed,
                queryTimeMs: status.queryTimeMs
            });
            return { matches: finalMatches, status };
        }
        catch (error) {
            const errorMsg = `Landmark search failed: ${error.message}`;
            this.logger.error(errorMsg, error, { lat, lng });
            return {
                matches: [],
                status: {
                    landmarks: 'error',
                    providersUsed: [],
                    cacheHit: false,
                    queryTimeMs: Date.now() - startTime
                }
            };
        }
    }
    /**
     * Merge and deduplicate matches from multiple providers
     */
    mergeAndRankMatches(matches, options) {
        // Deduplicate by landmark ID (keep highest confidence)
        const deduped = new Map();
        for (const match of matches) {
            const key = match.landmark.id;
            const existing = deduped.get(key);
            if (!existing || match.confidence > existing.confidence) {
                deduped.set(key, match);
            }
        }
        // Convert back to array and apply filters
        let filteredMatches = Array.from(deduped.values());
        // Filter by confidence threshold
        if (options.minConfidence) {
            filteredMatches = filteredMatches.filter(m => m.confidence >= options.minConfidence);
        }
        // Filter by categories
        if (options.categories && options.categories.length > 0) {
            filteredMatches = filteredMatches.filter(m => options.categories.includes(m.landmark.category));
        }
        // Sort by confidence (descending), then by distance (ascending)
        filteredMatches.sort((a, b) => {
            if (Math.abs(a.confidence - b.confidence) > 0.05) {
                return b.confidence - a.confidence;
            }
            return a.distance - b.distance;
        });
        // Limit results
        if (options.maxResults) {
            filteredMatches = filteredMatches.slice(0, options.maxResults);
        }
        return filteredMatches;
    }
    /**
     * Calculate confidence score for a landmark match
     */
    calculateConfidence(distance, landmark, relationship) {
        let confidence = 1.0;
        // Base confidence on relationship
        switch (relationship) {
            case LandmarkRelationship.WITHIN_BOUNDARY:
                confidence = 1.0;
                break;
            case LandmarkRelationship.AT_ENTRANCE:
                confidence = 0.9;
                break;
            case LandmarkRelationship.NEARBY:
                confidence = Math.max(0.3, 1 - (distance / 5000));
                break;
            case LandmarkRelationship.VISIBLE_FROM:
                confidence = Math.max(0.2, 1 - (distance / 50000));
                break;
            case LandmarkRelationship.OVERLOOK:
                confidence = 0.8;
                break;
        }
        // Boost for landmark significance
        if (landmark.category === LandmarkCategory.NATIONAL_PARK) {
            confidence *= 1.2;
        }
        if (landmark.category === LandmarkCategory.NATIONAL_MONUMENT) {
            confidence *= 1.1;
        }
        if (landmark.subcategory?.toLowerCase().includes('world heritage')) {
            confidence *= 1.3;
        }
        // Reduce for very distant matches
        if (distance > 25000) {
            confidence *= 0.7;
        }
        return Math.min(1.0, Math.round(confidence * 100) / 100);
    }
    /**
     * Calculate distance between two coordinates (Haversine formula)
     */
    calculateDistance(lat1, lng1, lat2, lng2) {
        const R = 6371000; // Earth's radius in meters
        const dLat = this.toRadians(lat2 - lat1);
        const dLng = this.toRadians(lng2 - lng1);
        const a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
            Math.cos(this.toRadians(lat1)) * Math.cos(this.toRadians(lat2)) *
                Math.sin(dLng / 2) * Math.sin(dLng / 2);
        const c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
        return R * c;
    }
    toRadians(degrees) {
        return degrees * (Math.PI / 180);
    }
    /**
     * Generate cache key for a search
     */
    generateCacheKey(lat, lng, options) {
        const rounded = {
            lat: Math.round(lat * 1000) / 1000,
            lng: Math.round(lng * 1000) / 1000
        };
        const optionsKey = JSON.stringify({
            maxRadius: options.maxRadius,
            categories: options.categories?.sort(),
            minConfidence: options.minConfidence
        });
        return `landmarks:${rounded.lat}:${rounded.lng}:${Buffer.from(optionsKey).toString('base64')}`;
    }
    /**
     * Get cached result if valid
     */
    getCachedResult(key) {
        const cached = this.cache.get(key);
        if (!cached)
            return null;
        const ageMinutes = (Date.now() - cached.timestamp) / (1000 * 60);
        if (ageMinutes > this.config.cacheTtlMinutes) {
            this.cache.delete(key);
            return null;
        }
        return cached.data;
    }
    /**
     * Cache search results
     */
    cacheResult(key, matches) {
        this.cache.set(key, {
            data: matches,
            timestamp: Date.now()
        });
        // Simple cache cleanup: remove 10% oldest entries if cache is too large
        if (this.cache.size > 1000) {
            const entries = Array.from(this.cache.entries());
            entries.sort((a, b) => a[1].timestamp - b[1].timestamp);
            const toRemove = entries.slice(0, Math.floor(entries.length * 0.1));
            toRemove.forEach(([key]) => this.cache.delete(key));
        }
    }
    /**
     * Clear all caches
     */
    clearCache() {
        this.cache.clear();
        this.providers.forEach(provider => provider.clearCache());
        this.logger.info('All landmark caches cleared');
    }
    /**
     * Get service statistics
     */
    getStats() {
        return {
            cacheSize: this.cache.size,
            providerCount: this.providers.length,
            providers: this.providers.map(p => ({
                name: p.name,
                categories: p.categories.map(c => c.toString())
            }))
        };
    }
    /**
     * Close all provider connections
     */
    async close() {
        for (const provider of this.providers) {
            if ('close' in provider && typeof provider.close === 'function') {
                try {
                    await provider.close();
                    this.logger.debug(`Closed provider: ${provider.name}`);
                }
                catch (error) {
                    this.logger.warn(`Failed to close provider ${provider.name}`, {
                        error: error.message
                    });
                }
            }
        }
        this.logger.info('All landmark provider connections closed');
    }
}
//# sourceMappingURL=index.js.map