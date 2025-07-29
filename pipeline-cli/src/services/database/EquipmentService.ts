import { Knex } from 'knex';
import { Logger } from '../../utils/logging/index.js';
import { EquipmentType } from '../../database/types/tables.js';

const logger = new Logger('EquipmentService');

export class EquipmentService {
  private db: Knex;
  private equipmentCache: Map<string, number> = new Map();
  private imagingTrainCache: Map<string, number> = new Map();

  constructor(db: Knex) {
    this.db = db;
  }

  /**
   * Get or create equipment entry for a camera make/model
   */
  async getOrCreateEquipment(make: string, model: string): Promise<number> {
    const key = `${make}-${model}`;
    
    // Check cache first
    if (this.equipmentCache.has(key)) {
      return this.equipmentCache.get(key)!;
    }

    // Check if already exists in database
    const existing = await this.db('equipment')
      .select('id')
      .where({ make, model })
      .first();

    if (existing) {
      this.equipmentCache.set(key, existing.id);
      return existing.id;
    }

    // Create new equipment entry with race condition handling
    try {
      logger.info(`Creating new equipment entry: ${make} ${model}`);
      
      const equipmentData = {
        equipment_type: EquipmentType.CAMERA,
        make,
        model,
        equipment_metadata: this.generateEquipmentMetadata(make, model),
        is_active: true
      };

      const [id] = await this.db('equipment').insert(equipmentData);
      this.equipmentCache.set(key, id);
      
      return id;
    } catch (error) {
      // Handle race condition - another process may have created it
      if (error instanceof Error && error.message.includes('Duplicate entry')) {
        logger.debug(`Equipment ${make} ${model} already exists, fetching ID`);
        const existingAfterRace = await this.db('equipment')
          .select('id')
          .where({ make, model })
          .first();
        
        if (existingAfterRace) {
          this.equipmentCache.set(key, existingAfterRace.id);
          return existingAfterRace.id;
        }
      }
      throw error;
    }
  }

  /**
   * Get or create imaging train for equipment
   */
  async getOrCreateImagingTrain(equipmentId: number, make: string, model: string): Promise<number> {
    const trainName = `${make} ${model}`;
    
    // Check cache first
    if (this.imagingTrainCache.has(trainName)) {
      return this.imagingTrainCache.get(trainName)!;
    }

    // Check if already exists in database
    const existing = await this.db('imaging_trains')
      .select('id')
      .where({ name: trainName })
      .first();

    if (existing) {
      this.imagingTrainCache.set(trainName, existing.id);
      return existing.id;
    }

    // Create new imaging train with race condition handling
    try {
      logger.info(`Creating new imaging train: ${trainName}`);
      
      const trainData = {
        name: trainName,
        description: `${make} ${model} camera system`,
        primary_camera_id: equipmentId,
        train_metadata: this.generateTrainMetadata(make, model),
        is_active: true
      };

      const [id] = await this.db('imaging_trains').insert(trainData);
      this.imagingTrainCache.set(trainName, id);
      
      return id;
    } catch (error) {
      // Handle race condition - another process may have created it
      if (error instanceof Error && error.message.includes('Duplicate entry')) {
        logger.debug(`Imaging train ${trainName} already exists, fetching ID`);
        const existingAfterRace = await this.db('imaging_trains')
          .select('id')
          .where({ name: trainName })
          .first();
        
        if (existingAfterRace) {
          this.imagingTrainCache.set(trainName, existingAfterRace.id);
          return existingAfterRace.id;
        }
      }
      throw error;
    }
  }

  /**
   * Generate reasonable equipment metadata based on make/model
   */
  private generateEquipmentMetadata(make: string, model: string): Record<string, unknown> {
    const metadata: Record<string, unknown> = {
      notes: `Auto-created during migration for ${make} ${model}`
    };

    // Apple devices
    if (make.toLowerCase() === 'apple') {
      metadata.sensor_type = 'CMOS';
      metadata.max_resolution = '4032x3024';
      
      if (model.includes('iPhone')) {
        metadata.video_capabilities = model.includes('4') && !model.includes('4S') ? '720p HD' : 
          (model.includes('4S') || model.includes('5')) ? '1080p HD' : '4K';
      }
    }
    
    // Canon cameras
    else if (make.toLowerCase() === 'canon') {
      metadata.sensor_type = model.includes('PowerShot A') ? 'CCD' : 'CMOS';
      
      if (model.includes('EOS')) {
        metadata.mount_type = model.includes('R7') ? 'RF' : 'EF/EF-S';
      }
    }
    
    // Nikon cameras
    else if (make.toLowerCase().includes('nikon')) {
      metadata.sensor_type = 'CMOS';
      metadata.mount_type = 'F';
    }
    
    // DJI drones
    else if (make.toLowerCase() === 'dji') {
      metadata.sensor_type = 'CMOS';
      metadata.video_capabilities = '4K';
      metadata.notes = 'DJI drone camera system';
    }
    
    // Google Pixel
    else if (make.toLowerCase() === 'google') {
      metadata.sensor_type = 'CMOS';
      metadata.video_capabilities = '4K';
      metadata.max_resolution = '4032x3024';
    }

    return metadata;
  }

  /**
   * Generate imaging train metadata based on make/model
   */
  private generateTrainMetadata(make: string, model: string): Record<string, unknown> {
    const metadata: Record<string, unknown> = {
      notes: `Auto-created imaging train for ${make} ${model}`
    };

    // Apple iPhone configurations
    if (make.toLowerCase() === 'apple' && model.includes('iPhone')) {
      metadata.setup_type = 'integrated';
      
      // Triple camera systems
      if (model.includes('11 Pro') || model.includes('12 Pro') || 
          model.includes('13 Pro') || model.includes('14 Pro') ||
          model.includes('15 Pro') || model.includes('16 Pro')) {
        metadata.camera_system = 'triple_camera';
        metadata.primary_focal_length = '26mm';
        metadata.ultra_wide_focal_length = '13mm';
        metadata.telephoto_focal_length = model.includes('14 Pro') ? '77mm' : '52mm';
      }
      // Dual camera systems
      else if (model.includes('7 Plus') || model.includes('8 Plus') || 
               model.includes('X') || model.includes('11')) {
        metadata.camera_system = 'dual_camera';
        metadata.primary_focal_length = '26mm';
      }
      // Single camera
      else {
        metadata.camera_system = 'single_camera';
        metadata.primary_focal_length = '28mm';
      }
    }
    
    // Canon cameras
    else if (make.toLowerCase() === 'canon') {
      if (model.includes('EOS')) {
        metadata.setup_type = 'dslr';
        metadata.mount_type = model.includes('R7') ? 'RF' : 'EF/EF-S';
      } else if (model.includes('PowerShot')) {
        metadata.setup_type = 'compact';
      }
    }
    
    // Other cameras
    else {
      metadata.setup_type = 'unknown';
    }

    return metadata;
  }

  /**
   * Clear caches (useful for testing)
   */
  clearCache(): void {
    this.equipmentCache.clear();
    this.imagingTrainCache.clear();
  }

  /**
   * Get cache statistics
   */
  getCacheStats(): { equipment: number; imagingTrains: number } {
    return {
      equipment: this.equipmentCache.size,
      imagingTrains: this.imagingTrainCache.size
    };
  }
}