import { Knex } from 'knex';
import { UnknownJsonContent } from '../../types/semantic-any.js';
import { DatabaseCountResult } from './LandmarkService.js';
import { Logger } from '../../utils/logging/index.js';
import { ProcessingResult } from '../../types/media.js';
import { Software, MediaSoftware, SoftwareType } from '../../database/types/tables.js';

const logger = new Logger('SoftwareService');

export type SoftwareRecord = Software;
export type MediaSoftwareRecord = MediaSoftware;

export class SoftwareService {
  private db: Knex;
  private softwareCache: Map<string, number> = new Map();

  constructor(db: Knex) {
    this.db = db;
  }

  /**
   * Store software associations for a media file
   */
  async upsertSoftwareAssociations(mediaFileId: number, result: ProcessingResult): Promise<number[]> {
    try {
      logger.debug(`Processing software for media file ${mediaFileId}`);
      const associations: number[] = [];

      // Clear existing associations for this media file
      await this.db('media_software')
        .where('file_id', mediaFileId)
        .del();

      // Extract software from camera data
      if (result.camera?.software) {
        logger.debug(`Found camera software: ${result.camera.software} (${result.camera.make})`);
        
        // Determine software name based on camera make
        const softwareName = this.determineSoftwareName(result.camera.make);
        const softwareVersion = String(result.camera.software);
        
        logger.info(
          `Creating software record: name="${softwareName}", ` +
          `version="${softwareVersion}", vendor="${result.camera.make}"`
        );
        
        const softwareId = await this.getOrCreateSoftware(
          softwareName,
          SoftwareType.CAPTURE,
          result.camera.make,
          softwareVersion
        );

        const associationId = await this.createAssociation(
          mediaFileId,
          softwareId,
          'capture',
          { source: 'camera_metadata' }
        );

        associations.push(associationId);
      }

      // Extract software from technical metadata
      if (result.technical?.Software) {
        const software = String(result.technical.Software);
        // Parse software string (e.g., "Adobe Photoshop 2023")
        const match = software.match(/^(.+?)\s+(\d+\.?\d*.*?)$/);
        const name = match ? match[1] : software;
        const version = match ? match[2] : undefined;

        const softwareId = await this.getOrCreateSoftware(
          name,
          SoftwareType.PROCESSING,
          undefined,
          version
        );

        const associationId = await this.createAssociation(
          mediaFileId,
          softwareId,
          'processing',
          { source: 'exif_metadata' }
        );

        associations.push(associationId);
      }

      // Check for other software in technical data
      const softwareKeys = ['CreatorTool', 'ProcessingSoftware', 'HistorySoftwareAgent'];
      for (const key of softwareKeys) {
        if (result.technical?.[key]) {
          const software = String(result.technical[key]);
          // eslint-disable-next-line no-await-in-loop
          const softwareId = await this.getOrCreateSoftware(
            software,
            SoftwareType.POST_PROCESSING
          );

          // eslint-disable-next-line no-await-in-loop
          const associationId = await this.createAssociation(
            mediaFileId,
            softwareId,
            'post_processing',
            { source: key.toLowerCase() }
          );

          associations.push(associationId);
        }
      }

      if (associations.length > 0) {
        logger.debug(`Created ${associations.length} software associations for media file ${mediaFileId}`);
      }

      return associations;

    } catch (error) {
      logger.error(`Failed to upsert software associations for media file ${mediaFileId}: ${error}`);
      throw error;
    }
  }

  /**
   * Determine software name based on camera manufacturer
   */
  private determineSoftwareName(cameraMake?: string): string {
    if (!cameraMake) return 'Unknown';
    
    const make = cameraMake.toLowerCase();
    
    if (make.includes('apple')) {
      return 'iOS';
    } else if (make.includes('samsung')) {
      return 'Android';
    } else if (make.includes('google')) {
      return 'Android';
    } else if (make.includes('canon')) {
      return 'Canon Firmware';
    } else if (make.includes('nikon')) {
      return 'Nikon Firmware';
    } else if (make.includes('sony')) {
      return 'Sony Firmware';
    } else {
      return `${cameraMake} Firmware`;
    }
  }

  /**
   * Get or create software record
   */
  private async getOrCreateSoftware(
    name: string,
    type: SoftwareType,
    vendor?: string,
    version?: string
  ): Promise<number> {
    // Create cache key
    const cacheKey = `${name}:${version || 'unknown'}`;
    
    // Check cache
    if (this.softwareCache.has(cacheKey)) {
      return this.softwareCache.get(cacheKey)!;
    }

    // Check if software already exists
    const existingSoftware = await this.db('software')
      .select('id')
      .where('name', name)
      .andWhere(function() {
        if (version) {
          this.where('version', version);
        } else {
          this.whereNull('version');
        }
      })
      .first();

    if (existingSoftware) {
      this.softwareCache.set(cacheKey, existingSoftware.id);
      return existingSoftware.id;
    }

    // Create new software record
    const metadata: UnknownJsonContent = {};
    if (vendor) metadata.vendor = vendor;

    const [id] = await this.db('software').insert({
      name,
      software_type: type,
      version: version || undefined,
      software_metadata: Object.keys(metadata).length > 0 ? metadata : undefined
    });

    const softwareId = Number(id);
    this.softwareCache.set(cacheKey, softwareId);
    
    logger.debug(`Created new software record: ${name} ${version || ''} (${type})`);
    
    return softwareId;
  }

  /**
   * Create software association
   */
  private async createAssociation(
    mediaFileId: number,
    softwareId: number,
    role: string,
    metadata?: UnknownJsonContent
  ): Promise<number> {
    const [id] = await this.db('media_software').insert({
      file_id: mediaFileId,
      software_id: softwareId,
      usage_role: role,
      usage_metadata: metadata || undefined
    });

    return Number(id);
  }

  /**
   * Get software associations for a media file
   */
  async findAssociationsByMediaFileId(mediaFileId: number): Promise<UnknownJsonContent[]> {
    const results = await this.db('media_software as ms')
      .join('software as s', 'ms.software_id', 's.id')
      .select(
        'ms.id',
        'ms.file_id',
        'ms.software_id',
        'ms.usage_role',
        'ms.usage_metadata',
        's.name as software_name',
        's.software_type',
        's.version as software_version'
      )
      .where('ms.file_id', mediaFileId)
      .orderBy('ms.usage_role', 'asc');

    return results;
  }

  /**
   * Get software statistics
   */
  async getSoftwareStats(): Promise<{
    totalSoftware: number;
    totalAssociations: number;
    topSoftware: { name: string; version: string | null; type: string; usageCount: number }[];
    typeBreakdown: { type: string; count: number }[];
  }> {
    const totalSoftware = await this.db('software').count('id as count').first();
    const totalAssociations = await this.db('media_software').count('id as count').first();
    
    const topSoftware = await this.db('media_software as ms')
      .join('software as s', 'ms.software_id', 's.id')
      .select('s.name', 's.version', 's.software_type as type')
      .count('ms.id as usageCount')
      .groupBy(['s.id', 's.name', 's.version', 's.software_type'])
      .orderBy('usageCount', 'desc')
      .limit(10);

    const typeBreakdown = await this.db('media_software as ms')
      .join('software as s', 'ms.software_id', 's.id')
      .select('s.software_type as type')
      .count('ms.id as count')
      .groupBy('s.software_type')
      .orderBy('count', 'desc');

    return {
      totalSoftware: Number((totalSoftware as unknown as DatabaseCountResult)?.count) || 0,
      totalAssociations: Number((totalAssociations as unknown as DatabaseCountResult)?.count) || 0,
      topSoftware: topSoftware.map(row => ({
        name: String(row.name),
        version: row.version ? String(row.version) : null,
        type: String(row.type),
        usageCount: Number(row.usageCount)
      })),
      typeBreakdown: typeBreakdown.map(row => ({
        type: String(row.type),
        count: Number(row.count)
      }))
    };
  }

  /**
   * Clear caches (useful for testing)
   */
  clearCache(): void {
    this.softwareCache.clear();
  }

  /**
   * Get cache statistics
   */
  getCacheStats(): { software: number } {
    return {
      software: this.softwareCache.size
    };
  }
}