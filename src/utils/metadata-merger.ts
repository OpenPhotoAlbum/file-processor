/**
 * Metadata merger utility
 * Intelligently merges existing metadata with new extraction results
 */

import { ProcessingResult, ProcessingEvent } from '../types/media.js';
import { Logger } from './logging/index.js';
import { readFileSync, writeFileSync, existsSync, unlinkSync, renameSync } from 'fs';

export interface MergeOptions {
  mode: 'overwrite' | 'merge' | 'merge-selective';
  sections?: Array<'location' | 'timestamps' | 'camera' | 'settings' | 'technical' | 'media'>;
  preserveEnrichment?: boolean;
  createBackup?: boolean;
  dryRun?: boolean;
}

export interface MergeResult {
  merged: ProcessingResult;
  changes: string[];
  preserved: string[];
}

export class MetadataMerger {
  private logger = new Logger('MetadataMerger');
  
  /**
   * Merge existing metadata with new extraction results
   */
  merge(existing: ProcessingResult, newData: ProcessingResult, options: MergeOptions): MergeResult {
    this.logger.info('Starting metadata merge', { 
      mode: options.mode,
      sections: options.sections,
      preserveEnrichment: options.preserveEnrichment 
    });
    
    const changes: string[] = [];
    const preserved: string[] = [];
    
    // Deep clone to avoid mutations
    const merged = JSON.parse(JSON.stringify(existing)) as ProcessingResult;
    
    // Always update file metadata
    merged.file = newData.file;
    changes.push('file metadata');
    
    // Handle processing history
    this.mergeProcessingHistory(merged, newData, changes);
    
    if (options.mode === 'overwrite') {
      // Complete overwrite
      return { merged: newData, changes: ['all fields'], preserved: [] };
    }
    
    // Selective merge based on sections
    const sectionsToMerge = options.sections || ['location', 'timestamps', 'camera', 'settings', 'technical', 'media'];
    
    if (sectionsToMerge.includes('media')) {
      this.mergeMediaSection(merged, existing, newData, changes, preserved);
    }
    
    if (sectionsToMerge.includes('location')) {
      this.mergeLocationSection(merged, existing, newData, changes, preserved, options);
    }
    
    if (sectionsToMerge.includes('timestamps')) {
      this.mergeTimestampsSection(merged, existing, newData, changes, preserved);
    }
    
    if (sectionsToMerge.includes('camera')) {
      this.mergeCameraSection(merged, existing, newData, changes, preserved);
    }
    
    if (sectionsToMerge.includes('settings')) {
      this.mergeSettingsSection(merged, existing, newData, changes, preserved);
    }
    
    if (sectionsToMerge.includes('technical')) {
      this.mergeTechnicalSection(merged, existing, newData, changes, preserved);
    }
    
    // Always merge sidecars
    this.mergeSidecars(merged, existing, newData, changes);
    
    this.logger.info('Merge complete', { 
      changesCount: changes.length,
      preservedCount: preserved.length 
    });
    
    return { merged, changes, preserved };
  }
  
  /**
   * Merge processing history
   */
  private mergeProcessingHistory(merged: ProcessingResult, newData: ProcessingResult, changes: string[]): void {
    // Initialize history if not present
    if (!merged.processingHistory) {
      merged.processingHistory = [];
    }
    
    // Add current processing from existing to history if not already there
    if (merged.processing && !merged.processingHistory.some(p => 
      p.extractedAt === merged.processing.extractedAt && 
      p.processor === merged.processing.processor
    )) {
      merged.processingHistory.push({ ...merged.processing });
    }
    
    // Create new processing event with additional metadata
    const newProcessingEvent: ProcessingEvent = {
      ...newData.processing,
      providersEnabled: this.getEnabledProviders(),
      fieldsUpdated: changes,
      version: process.env.PROCESSOR_VERSION || '1.2.0'
    };
    
    // Add new processing to history
    merged.processingHistory.push(newProcessingEvent);
    
    // Update current processing
    merged.processing = newProcessingEvent;
    
    changes.push('processing history');
  }
  
  /**
   * Merge media section
   */
  private mergeMediaSection(
    merged: ProcessingResult, 
    existing: ProcessingResult, 
    newData: ProcessingResult, 
    changes: string[], 
    preserved: string[]
  ): void {
    // Always update basic media properties
    merged.media = { ...newData.media };
    
    // Preserve custom fields from existing
    if (existing.media) {
      Object.keys(existing.media).forEach(key => {
        if (!(key in newData.media) && existing.media[key as keyof typeof existing.media] !== undefined) {
          (merged.media as any)[key] = existing.media[key as keyof typeof existing.media];
          preserved.push(`media.${key}`);
        }
      });
    }
    
    // Track Live Photo changes specifically
    if (existing.media?.isLivePhoto !== newData.media?.isLivePhoto) {
      changes.push(`media.isLivePhoto: ${existing.media?.isLivePhoto} → ${newData.media?.isLivePhoto}`);
    }
    
    if (newData.media?.livePhotoInfo) {
      changes.push('media.livePhotoInfo');
    }
  }
  
  /**
   * Merge location section intelligently
   */
  private mergeLocationSection(
    merged: ProcessingResult,
    existing: ProcessingResult,
    newData: ProcessingResult,
    changes: string[],
    preserved: string[],
    options: MergeOptions
  ): void {
    if (!existing.location || !options.preserveEnrichment) {
      merged.location = newData.location;
      changes.push('location (complete)');
      return;
    }
    
    // Smart merge location data
    merged.location = {
      primary: existing.location.primary || newData.location.primary,
      alternatives: this.mergeArraysUnique(
        existing.location.alternatives || [],
        newData.location.alternatives || []
      ),
      conflicts: this.mergeArraysUnique(
        existing.location.conflicts || [],
        newData.location.conflicts || []
      ),
      geolocation: existing.location.geolocation || newData.location.geolocation,
      landmarks: this.mergeLandmarks(
        existing.location.landmarks || [],
        newData.location.landmarks || []
      ),
      enrichmentStatus: this.mergeEnrichmentStatus(
        existing.location.enrichmentStatus,
        newData.location.enrichmentStatus
      )
    };
    
    // Track what was preserved
    if (existing.location.geolocation && !newData.location.geolocation) {
      preserved.push('location.geolocation');
    }
    
    if (existing.location.landmarks?.length && !newData.location.landmarks?.length) {
      preserved.push(`location.landmarks (${existing.location.landmarks.length} items)`);
    }
    
    if (newData.location.landmarks?.length) {
      changes.push(`location.landmarks (${newData.location.landmarks.length} new)`);
    }
  }
  
  /**
   * Merge timestamps intelligently
   */
  private mergeTimestampsSection(
    merged: ProcessingResult,
    existing: ProcessingResult,
    newData: ProcessingResult,
    changes: string[],
    preserved: string[]
  ): void {
    if (!existing.timestamps) {
      merged.timestamps = newData.timestamps;
      changes.push('timestamps (complete)');
      return;
    }
    
    // Keep highest confidence timestamps
    merged.timestamps = {
      primary: this.selectBestTimestamp(existing.timestamps.primary, newData.timestamps.primary),
      capture: this.selectBestTimestamp(existing.timestamps.capture, newData.timestamps.capture),
      creation: this.selectBestTimestamp(existing.timestamps.creation, newData.timestamps.creation),
      modification: this.selectBestTimestamp(existing.timestamps.modification, newData.timestamps.modification),
      alternatives: this.mergeTimestampAlternatives(
        existing.timestamps.alternatives || [],
        newData.timestamps.alternatives || []
      ),
      conflicts: this.mergeArraysUnique(
        existing.timestamps.conflicts || [],
        newData.timestamps.conflicts || []
      )
    };
    
    if (existing.timestamps.primary?.timestamp !== merged.timestamps.primary?.timestamp) {
      changes.push('timestamps.primary');
    } else if (existing.timestamps.primary) {
      preserved.push('timestamps.primary');
    }
  }
  
  /**
   * Merge camera section
   */
  private mergeCameraSection(
    merged: ProcessingResult,
    existing: ProcessingResult,
    newData: ProcessingResult,
    changes: string[],
    preserved: string[]
  ): void {
    merged.camera = this.mergeObjects(existing.camera || {}, newData.camera || {});
    
    if (Object.keys(newData.camera || {}).length > 0) {
      changes.push('camera');
    }
    if (Object.keys(existing.camera || {}).length > Object.keys(newData.camera || {}).length) {
      preserved.push('camera (partial)');
    }
  }
  
  /**
   * Merge settings section
   */
  private mergeSettingsSection(
    merged: ProcessingResult,
    existing: ProcessingResult,
    newData: ProcessingResult,
    changes: string[],
    preserved: string[]
  ): void {
    merged.settings = this.mergeObjects(existing.settings || {}, newData.settings || {});
    
    if (Object.keys(newData.settings || {}).length > 0) {
      changes.push('settings');
    }
    if (Object.keys(existing.settings || {}).length > Object.keys(newData.settings || {}).length) {
      preserved.push('settings (partial)');
    }
  }
  
  /**
   * Merge technical section
   */
  private mergeTechnicalSection(
    merged: ProcessingResult,
    existing: ProcessingResult,
    newData: ProcessingResult,
    changes: string[],
    _preserved: string[]
  ): void {
    merged.technical = this.mergeObjects(existing.technical || {}, newData.technical || {});
    
    if (Object.keys(newData.technical || {}).length > 0) {
      changes.push('technical');
    }
  }
  
  /**
   * Merge sidecar arrays
   */
  private mergeSidecars(
    merged: ProcessingResult,
    existing: ProcessingResult,
    newData: ProcessingResult,
    changes: string[]
  ): void {
    const existingSources = new Set(existing.sidecars?.map(s => s.source) || []);
    const newSidecars = newData.sidecars?.filter(s => !existingSources.has(s.source)) || [];
    
    if (newSidecars.length > 0) {
      merged.sidecars = [...(existing.sidecars || []), ...newSidecars];
      changes.push(`sidecars (+${newSidecars.length})`);
    } else {
      merged.sidecars = existing.sidecars || [];
    }
  }
  
  /**
   * Helper: Merge arrays removing duplicates
   */
  private mergeArraysUnique<T>(arr1: T[], arr2: T[]): T[] {
    const combined = [...arr1, ...arr2];
    return Array.from(new Set(combined.map(item => JSON.stringify(item)))).map(item => JSON.parse(item));
  }
  
  /**
   * Helper: Merge landmarks intelligently
   */
  private mergeLandmarks(existing: any[], newLandmarks: any[]): any[] {
    const landmarkMap = new Map();
    
    // Add existing landmarks
    existing.forEach(landmark => {
      const key = `${landmark.name}-${landmark.category}`;
      landmarkMap.set(key, landmark);
    });
    
    // Add new landmarks
    newLandmarks.forEach(landmark => {
      const key = `${landmark.name}-${landmark.category}`;
      if (!landmarkMap.has(key)) {
        landmarkMap.set(key, landmark);
      }
    });
    
    return Array.from(landmarkMap.values());
  }
  
  /**
   * Helper: Merge enrichment status
   */
  private mergeEnrichmentStatus(existing: any, newStatus: any): any {
    if (!existing) return newStatus;
    if (!newStatus) return existing;
    
    return {
      geolocation: existing.geolocation || newStatus.geolocation,
      landmarks: existing.landmarks || newStatus.landmarks,
      providersUsed: Array.from(new Set([
        ...(existing.providersUsed || []),
        ...(newStatus.providersUsed || [])
      ])),
      cacheHit: existing.cacheHit || newStatus.cacheHit,
      queryTimeMs: Math.max(existing.queryTimeMs || 0, newStatus.queryTimeMs || 0)
    };
  }
  
  /**
   * Helper: Select best timestamp based on confidence
   */
  private selectBestTimestamp(existing: any, newTimestamp: any): any {
    if (!existing) return newTimestamp;
    if (!newTimestamp) return existing;
    
    const existingConfidence = existing.confidence || 0;
    const newConfidence = newTimestamp.confidence || 0;
    
    return newConfidence > existingConfidence ? newTimestamp : existing;
  }
  
  /**
   * Helper: Merge timestamp alternatives
   */
  private mergeTimestampAlternatives(existing: any[], newAlts: any[]): any[] {
    const altMap = new Map();
    
    // Add all alternatives with deduplication
    [...existing, ...newAlts].forEach(alt => {
      const key = `${alt.timestamp}-${alt.source}`;
      if (!altMap.has(key) || (alt.confidence || 0) > (altMap.get(key).confidence || 0)) {
        altMap.set(key, alt);
      }
    });
    
    return Array.from(altMap.values()).sort((a, b) => (b.confidence || 0) - (a.confidence || 0));
  }
  
  /**
   * Helper: Merge objects preferring non-empty values
   */
  private mergeObjects(existing: any, newObj: any): any {
    const merged = { ...existing };
    
    Object.entries(newObj).forEach(([key, value]) => {
      if (value !== undefined && value !== null && value !== '') {
        merged[key] = value;
      }
    });
    
    return merged;
  }
  
  /**
   * Helper: Get currently enabled providers
   */
  private getEnabledProviders(): string[] {
    const providers: string[] = [];
    
    if (process.env.GEOLOCATION_ENABLED !== 'false') {
      providers.push('GEOLOCATION');
    }
    if (process.env.RECREATION_GOV_PROVIDER_ENABLED === 'true') {
      providers.push('RECREATION_GOV');
    }
    if (process.env.GNIS_PROVIDER_ENABLED !== 'false') {
      providers.push('GNIS');
    }
    if (process.env.NPS_PROVIDER_ENABLED !== 'false') {
      providers.push('NPS');
    }
    
    return providers;
  }
  
  /**
   * Read existing metadata from file
   */
  readExistingMetadata(filePath: string): ProcessingResult | null {
    try {
      if (!existsSync(filePath)) {
        return null;
      }
      
      const content = readFileSync(filePath, 'utf8');
      const data = JSON.parse(content);
      
      // Handle CLI output format
      if (data.results && data.results[0]?.metadata) {
        return data.results[0].metadata;
      }
      
      // Direct metadata format
      return data;
      
    } catch (error) {
      this.logger.error('Failed to read existing metadata', error as Error);
      return null;
    }
  }
  
  /**
   * Create backup of existing file
   */
  createBackup(filePath: string): void {
    try {
      if (!existsSync(filePath)) {
        return;
      }
      
      const backupPath = `${filePath}.backup`;
      const content = readFileSync(filePath, 'utf8');
      writeFileSync(backupPath, content);
      
      this.logger.info('Created backup', { backupPath });
      
      // Rotate backups (keep last 3)
      this.rotateBackups(filePath, 3);
      
    } catch (error) {
      this.logger.error('Failed to create backup', error as Error);
    }
  }
  
  /**
   * Rotate backup files
   */
  private rotateBackups(filePath: string, maxBackups: number): void {
    try {
      const backupBase = `${filePath}.backup`;
      
      // Move existing backups
      for (let i = maxBackups - 1; i > 0; i--) {
        const oldPath = i === 1 ? backupBase : `${backupBase}.${i}`;
        const newPath = `${backupBase}.${i + 1}`;
        
        if (existsSync(oldPath)) {
          if (existsSync(newPath)) {
            // Delete oldest backup
            unlinkSync(newPath);
          }
          renameSync(oldPath, newPath);
        }
      }
      
    } catch (error) {
      this.logger.error('Failed to rotate backups', error as Error);
    }
  }
  
  /**
   * Log merge operation details
   */
  logMergeOperation(result: MergeResult, outputPath: string): void {
    this.logger.info('=== Merge Operation Summary ===');
    this.logger.info(`Output: ${outputPath}`);
    this.logger.info(`Changes: ${result.changes.length}`);
    result.changes.forEach(change => {
      this.logger.info(`  [CHANGE] ${change}`);
    });
    this.logger.info(`Preserved: ${result.preserved.length}`);
    result.preserved.forEach(preserved => {
      this.logger.info(`  [PRESERVED] ${preserved}`);
    });
  }
}