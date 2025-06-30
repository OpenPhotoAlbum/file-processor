import { Knex } from 'knex';
import { Logger } from '../../utils/logging/index.js';
import { ProcessingResult } from '../../types/media.js';
import { UnknownJsonContent } from '../../types/semantic-any.js';
import { MediaLandmark, Landmark } from '../../database/types/tables.js';

const logger = new Logger('LandmarkService');

export type LandmarkAssociationRecord = MediaLandmark;
export type LandmarkRecord = Landmark;

export class LandmarkService {
  private db: Knex;
  private associationCache: Map<string, number[]> = new Map();

  constructor(db: Knex) {
    this.db = db;
  }

  /**
   * Store landmark associations for a media file
   */
  async upsertLandmarkAssociations(mediaFileId: number, result: ProcessingResult): Promise<number[]> {
    try {
      const associations: number[] = [];

      // Clear existing associations for this media file
      await this.db('media_landmarks')
        .where('file_id', mediaFileId)
        .del();

      // Process landmarks from location data
      if (result.location?.landmarks && Array.isArray(result.location.landmarks)) {
        const landmarkAssociations = await this.processLandmarks(
          mediaFileId, 
          result.location.landmarks, 
          'GNIS'  // Default to GNIS if provider can't be detected
        );
        associations.push(...landmarkAssociations);
      }

      logger.debug(`Created ${associations.length} landmark associations for media file ${mediaFileId}`);
      return associations;

    } catch (error) {
      logger.error(`Failed to upsert landmark associations for media file ${mediaFileId}: ${error}`);
      throw error;
    }
  }

  /**
   * Find landmark associations by media file ID
   */
  async findAssociationsByMediaFileId(mediaFileId: number): Promise<any[]> {
    const results = await this.db('media_landmarks as ml')
      .join('landmarks as l', 'ml.landmark_id', 'l.id')
      .select(
        'ml.id',
        'ml.file_id',
        'ml.landmark_id',
        'ml.distance_meters',
        'l.name as landmark_name',
        'l.category as landmark_category',
        'l.provider as landmark_provider',
        'l.provider_data as landmark_data'
      )
      .where('ml.file_id', mediaFileId)
      .orderBy('ml.distance_meters', 'asc');

    return results;
  }

  /**
   * Get landmark statistics
   */
  async getLandmarkStats(): Promise<{
    totalLandmarks: number;
    totalAssociations: number;
    topLandmarks: { name: string; type: string; associationCount: number }[];
    providerBreakdown: { provider: string; count: number }[];
  }> {
    const totalLandmarks = await this.db('landmarks').count('id as count').first();
    const totalAssociations = await this.db('media_landmarks').count('id as count').first();
    
    const topLandmarks = await this.db('media_landmarks as ml')
      .join('landmarks as l', 'ml.landmark_id', 'l.id')
      .select('l.name', 'l.category as type')
      .count('ml.id as associationCount')
      .groupBy(['l.id', 'l.name', 'l.category'])
      .orderBy('associationCount', 'desc')
      .limit(10);

    const providerBreakdown = await this.db('media_landmarks as ml')
      .join('landmarks as l', 'ml.landmark_id', 'l.id')
      .select('l.provider')
      .count('ml.id as count')
      .groupBy('l.provider')
      .orderBy('count', 'desc');

    return {
      totalLandmarks: Number((totalLandmarks as any)?.count) || 0,
      totalAssociations: Number((totalAssociations as any)?.count) || 0,
      topLandmarks: topLandmarks.map(row => ({
        name: String(row.name),
        type: String(row.type),
        associationCount: Number(row.associationCount)
      })),
      providerBreakdown: providerBreakdown.map(row => ({
        provider: String(row.provider),
        count: Number(row.count)
      }))
    };
  }

  /**
   * Process generic landmarks
   */
  private async processLandmarks(mediaFileId: number, landmarks: unknown[], defaultProvider: string): Promise<number[]> {
    const associations: number[] = [];

    for (const landmarkData of landmarks) {
      try {
        const landmark = landmarkData as UnknownJsonContent;
        
        // Extract landmark info from nested structure
        const landmarkObj = landmark.landmark as UnknownJsonContent || {};
        const name = String(landmarkObj.name || landmarkObj.fullName || landmark.name || 'Unknown');
        const category = String(landmarkObj.category || landmarkObj.subcategory || landmark.type || landmark.category || 'generic');
        const distance = Number(landmark.distance || 0);
        
        // Auto-detect provider from landmark data
        const detectedProvider = this.detectProvider(landmark);
        const provider = detectedProvider || defaultProvider;
        
        // Find or create landmark
        const landmarkId = await this.findOrCreateLandmark(
          name,
          category,
          provider,
          landmark
        );

        // Create association
        const associationId = await this.createAssociation(
          mediaFileId,
          landmarkId,
          distance
        );

        associations.push(associationId);

      } catch (error) {
        logger.warn(`Failed to process landmark: ${error}`);
      }
    }

    return associations;
  }

  /**
   * Process GNIS landmarks
   */
  private async processGNISLandmarks(mediaFileId: number, gnisData: unknown): Promise<number[]> {
    const gnis = gnisData as UnknownJsonContent;
    const features = gnis.features as unknown[] | undefined;
    
    if (!features) return [];

    return this.processLandmarks(mediaFileId, features, 'gnis');
  }

  /**
   * Process Recreation.gov landmarks
   */
  private async processRecreationGovLandmarks(mediaFileId: number, recreationData: unknown): Promise<number[]> {
    const recreation = recreationData as UnknownJsonContent;
    const facilities = recreation.facilities as unknown[] | undefined;
    
    if (!facilities) return [];

    return this.processLandmarks(mediaFileId, facilities, 'recreation_gov');
  }

  /**
   * Process NPS landmarks
   */
  private async processNPSLandmarks(mediaFileId: number, npsData: unknown): Promise<number[]> {
    const nps = npsData as UnknownJsonContent;
    const parks = nps.parks as unknown[] | undefined;
    
    if (!parks) return [];

    return this.processLandmarks(mediaFileId, parks, 'nps');
  }

  /**
   * Auto-detect provider from landmark data
   */
  private detectProvider(landmark: UnknownJsonContent): string | null {
    // Check source field first
    const source = String(landmark.source || '').toLowerCase();
    if (source.includes('gnis') || source.includes('usgs')) {
      return 'GNIS';
    }
    if (source.includes('recreation')) {
      return 'RECREATION_GOV';
    }
    if (source.includes('nps') || source.includes('national park')) {
      return 'NPS';
    }
    
    // Check nested landmark data
    const landmarkObj = landmark.landmark as UnknownJsonContent || {};
    const nestedSource = String(landmarkObj.source || '').toLowerCase();
    if (nestedSource.includes('gnis') || nestedSource.includes('usgs')) {
      return 'GNIS';
    }
    if (nestedSource.includes('recreation')) {
      return 'RECREATION_GOV';
    }
    if (nestedSource.includes('nps')) {
      return 'NPS';
    }
    
    return null;
  }

  /**
   * Find or create landmark
   */
  private async findOrCreateLandmark(name: string, category: string, provider: string, providerData: any): Promise<number> {
    // Check if landmark already exists
    const existingLandmark = await this.db('landmarks')
      .select('id')
      .where('name', name)
      .andWhere('provider', provider.toUpperCase())
      .first();

    if (existingLandmark) {
      return existingLandmark.id;
    }

    // Create new landmark
    const [id] = await this.db('landmarks').insert({
      name,
      category,
      provider: provider.toUpperCase() as any,
      provider_data: JSON.stringify(providerData) as any
    });

    return Number(id);
  }

  /**
   * Create landmark association
   */
  private async createAssociation(mediaFileId: number, landmarkId: number, distanceMeters: number): Promise<number> {
    const [id] = await this.db('media_landmarks').insert({
      file_id: mediaFileId,
      landmark_id: landmarkId,
      distance_meters: Math.round(distanceMeters)
    });

    return id;
  }

  /**
   * Clear caches (useful for testing)
   */
  clearCache(): void {
    this.associationCache.clear();
  }

  /**
   * Get cache statistics
   */
  getCacheStats(): { associations: number } {
    return {
      associations: this.associationCache.size
    };
  }
}