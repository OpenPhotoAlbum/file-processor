import { Knex } from 'knex';
import { Logger } from '../../utils/logging/index.js';
import { ProcessingResult } from '../../types/media.js';
import { UnknownJsonContent } from '../../types/semantic-any.js';

const logger = new Logger('LandmarkService');

export interface LandmarkAssociationRecord {
  id: number;
  media_file_id: number;
  landmark_id: number;
  distance_meters: number;
  relevance_score: number;
  provider_name: string;
  association_metadata: UnknownJsonContent;
  created_at: Date;
  updated_at: Date;
}

export interface LandmarkRecord {
  id: number;
  name: string;
  landmark_type: string;
  latitude?: number;
  longitude?: number;
  elevation_meters?: number;
  feature_class?: string;
  feature_code?: string;
  state_province?: string;
  country_name?: string;
  country_code?: string;
  landmark_metadata: UnknownJsonContent;
  data_source: string;
  external_id?: string;
  is_active: boolean;
  created_at: Date;
  updated_at: Date;
}

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
        .where('media_file_id', mediaFileId)
        .del();

      // Process different types of landmarks from the result
      if (result.location?.landmarks) {
        const landmarkAssociations = await this.processLandmarks(
          mediaFileId, 
          result.location.landmarks, 
          'mixed'
        );
        associations.push(...landmarkAssociations);
      }

      if (result.enrichment?.gnis) {
        const gnisAssociations = await this.processGNISLandmarks(
          mediaFileId, 
          result.enrichment.gnis
        );
        associations.push(...gnisAssociations);
      }

      if (result.enrichment?.recreationGov) {
        const recreationAssociations = await this.processRecreationGovLandmarks(
          mediaFileId, 
          result.enrichment.recreationGov
        );
        associations.push(...recreationAssociations);
      }

      if (result.enrichment?.nps) {
        const npsAssociations = await this.processNPSLandmarks(
          mediaFileId, 
          result.enrichment.nps
        );
        associations.push(...npsAssociations);
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
  async findAssociationsByMediaFileId(mediaFileId: number): Promise<(LandmarkAssociationRecord & { landmark: LandmarkRecord })[]> {
    const results = await this.db('media_landmarks as ml')
      .join('landmarks as l', 'ml.landmark_id', 'l.id')
      .select(
        'ml.*',
        'l.name as landmark_name',
        'l.landmark_type as landmark_landmark_type',
        'l.latitude as landmark_latitude',
        'l.longitude as landmark_longitude',
        'l.elevation_meters as landmark_elevation_meters',
        'l.feature_class as landmark_feature_class',
        'l.feature_code as landmark_feature_code',
        'l.state_province as landmark_state_province',
        'l.country_name as landmark_country_name',
        'l.country_code as landmark_country_code',
        'l.landmark_metadata as landmark_landmark_metadata',
        'l.data_source as landmark_data_source',
        'l.external_id as landmark_external_id',
        'l.is_active as landmark_is_active',
        'l.created_at as landmark_created_at',
        'l.updated_at as landmark_updated_at'
      )
      .where('ml.media_file_id', mediaFileId)
      .orderBy('ml.relevance_score', 'desc');

    return results.map(row => ({
      id: row.id,
      media_file_id: row.media_file_id,
      landmark_id: row.landmark_id,
      distance_meters: row.distance_meters,
      relevance_score: row.relevance_score,
      provider_name: row.provider_name,
      association_metadata: row.association_metadata,
      created_at: row.created_at,
      updated_at: row.updated_at,
      landmark: {
        id: row.landmark_id,
        name: row.landmark_name,
        landmark_type: row.landmark_landmark_type,
        latitude: row.landmark_latitude,
        longitude: row.landmark_longitude,
        elevation_meters: row.landmark_elevation_meters,
        feature_class: row.landmark_feature_class,
        feature_code: row.landmark_feature_code,
        state_province: row.landmark_state_province,
        country_name: row.landmark_country_name,
        country_code: row.landmark_country_code,
        landmark_metadata: row.landmark_landmark_metadata,
        data_source: row.landmark_data_source,
        external_id: row.landmark_external_id,
        is_active: row.landmark_is_active,
        created_at: row.landmark_created_at,
        updated_at: row.landmark_updated_at
      }
    }));
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
      .select('l.name', 'l.landmark_type as type')
      .count('ml.id as associationCount')
      .groupBy(['l.id', 'l.name', 'l.landmark_type'])
      .orderBy('associationCount', 'desc')
      .limit(10);

    const providerBreakdown = await this.db('media_landmarks')
      .select('provider_name as provider')
      .count('id as count')
      .groupBy('provider_name')
      .orderBy('count', 'desc');

    return {
      totalLandmarks: totalLandmarks?.count || 0,
      totalAssociations: totalAssociations?.count || 0,
      topLandmarks: topLandmarks.map(row => ({
        name: row.name,
        type: row.type,
        associationCount: Number(row.associationCount)
      })),
      providerBreakdown: providerBreakdown.map(row => ({
        provider: row.provider,
        count: Number(row.count)
      }))
    };
  }

  /**
   * Process generic landmarks
   */
  private async processLandmarks(mediaFileId: number, landmarks: unknown[], provider: string): Promise<number[]> {
    const associations: number[] = [];

    for (const landmarkData of landmarks) {
      try {
        const landmark = landmarkData as UnknownJsonContent;
        
        // Find or create landmark
        const landmarkId = await this.findOrCreateLandmark({
          name: String(landmark.name || 'Unknown'),
          landmark_type: String(landmark.type || 'generic'),
          latitude: landmark.latitude as number | undefined,
          longitude: landmark.longitude as number | undefined,
          elevation_meters: landmark.elevation as number | undefined,
          feature_class: landmark.featureClass as string | undefined,
          feature_code: landmark.featureCode as string | undefined,
          state_province: landmark.state as string | undefined,
          country_name: landmark.country as string | undefined,
          country_code: landmark.countryCode as string | undefined,
          landmark_metadata: landmark,
          data_source: provider,
          external_id: landmark.id as string | undefined,
          is_active: true
        });

        // Create association
        const associationId = await this.createAssociation({
          media_file_id: mediaFileId,
          landmark_id: landmarkId,
          distance_meters: landmark.distance as number || 0,
          relevance_score: landmark.relevance as number || 0.5,
          provider_name: provider,
          association_metadata: {
            original_data: landmark,
            processing_timestamp: new Date().toISOString()
          }
        });

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
   * Find or create landmark
   */
  private async findOrCreateLandmark(landmarkData: Omit<LandmarkRecord, 'id' | 'created_at' | 'updated_at'>): Promise<number> {
    // Check if landmark already exists
    let existingLandmark = null;
    
    if (landmarkData.external_id && landmarkData.data_source) {
      existingLandmark = await this.db('landmarks')
        .select('id')
        .where({
          external_id: landmarkData.external_id,
          data_source: landmarkData.data_source
        })
        .first();
    }

    // Fallback to name and coordinates
    if (!existingLandmark && landmarkData.latitude && landmarkData.longitude) {
      existingLandmark = await this.db('landmarks')
        .select('id')
        .where({
          name: landmarkData.name,
          data_source: landmarkData.data_source
        })
        .whereRaw('ABS(latitude - ?) < 0.001 AND ABS(longitude - ?) < 0.001', 
          [landmarkData.latitude, landmarkData.longitude])
        .first();
    }

    if (existingLandmark) {
      return existingLandmark.id;
    }

    // Create new landmark
    const [id] = await this.db('landmarks').insert({
      ...landmarkData,
      created_at: new Date(),
      updated_at: new Date()
    });

    return id;
  }

  /**
   * Create landmark association
   */
  private async createAssociation(associationData: Omit<LandmarkAssociationRecord, 'id' | 'created_at' | 'updated_at'>): Promise<number> {
    const [id] = await this.db('media_landmarks').insert({
      ...associationData,
      created_at: new Date(),
      updated_at: new Date()
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