import { MediaFile } from '../../types/media.js';
import { Logger } from '../../utils/logging/index.js';
import { createValidationErrorFactory, createSystemErrorFactory } from '../../utils/errors/factories.js';
import { FileSystemService } from '../filesystem/index.js';
import { ValidationReport, ValidationService } from './index.js';
import type { ProcessingResult } from '../../types/media.js';
import { processFile } from '../../pipeline/entry.js';
import { ExifExtractor } from '../../utils/extractors/exif.js';
import path from 'path';
import fs from 'fs/promises';
import crypto from 'crypto';

export interface AutoFixResult {
  fixId: string;
  ruleName: string;
  fixed: boolean;
  message: string;
  backupPath?: string;
  error?: string;
}

export interface AutoFixReport {
  file: MediaFile;
  fixAttempted: number;
  fixSucceeded: number;
  fixFailed: number;
  fixes: AutoFixResult[];
  backupDirectory?: string;
  validationBefore: ValidationReport;
  validationAfter?: ValidationReport;
}

export interface AutoFixConfig {
  enableBackup: boolean;
  backupDirectory?: string;
  dryRun: boolean;
  fixTypes: {
    missingMetadata: boolean;
    incorrectFilename: boolean;
    missingGPS: boolean;
    missingColors: boolean;
  };
}

/**
 * AutoFixService - Safe auto-repair capabilities for validation issues
 * 
 * Provides automated fixes for common photo issues while maintaining
 * data integrity through backup and rollback capabilities.
 */
export class AutoFixService {
  private logger = new Logger('AutoFixService');
  private validationErrors = createValidationErrorFactory(this.logger);
  private systemErrors = createSystemErrorFactory(this.logger);
  private fileSystemService = new FileSystemService();
  private validationService: ValidationService;
  private exifExtractor = new ExifExtractor();
  private config: AutoFixConfig;

  constructor(validationService: ValidationService, config?: Partial<AutoFixConfig>) {
    this.validationService = validationService;
    this.config = this.getDefaultConfig();
    if (config) {
      this.config = { ...this.config, ...config };
    }
  }

  /**
   * Get default auto-fix configuration
   */
  private getDefaultConfig(): AutoFixConfig {
    return {
      enableBackup: true,
      dryRun: false,
      fixTypes: {
        missingMetadata: true,
        incorrectFilename: true,
        missingGPS: false, // GPS enrichment only if coordinates exist
        missingColors: true
      }
    };
  }

  /**
   * Create backup of file before modifications
   */
  private async createBackup(file: MediaFile): Promise<string | undefined> {
    if (!this.config.enableBackup || this.config.dryRun) {
      return undefined;
    }

    try {
      // Create backup directory if needed
      const backupBaseDir = this.config.backupDirectory || path.join(path.dirname(file.absolutePath), '.autofix-backup');
      const timestamp = new Date().toISOString().replace(/[:.]/g, '-');
      const backupDir = path.join(backupBaseDir, timestamp);
      
      await fs.mkdir(backupDir, { recursive: true });
      
      // Copy original file
      const backupPath = path.join(backupDir, path.basename(file.absolutePath));
      await fs.copyFile(file.absolutePath, backupPath);
      
      // Copy sidecar if exists
      const sidecarPath = `${file.absolutePath}.json`;
      try {
        await fs.access(sidecarPath);
        await fs.copyFile(sidecarPath, `${backupPath}.json`);
      } catch {
        // No sidecar exists, that's ok
      }
      
      this.logger.info('Backup created', { 
        original: file.path,
        backup: backupPath 
      });
      
      return backupDir;
    } catch (error) {
      this.logger.warn('Backup creation failed', { 
        error: error instanceof Error ? error.message : 'Unknown error',
        file: file.path 
      });
      return undefined;
    }
  }

  /**
   * Fix missing metadata sidecar
   */
  private async fixMissingMetadata(file: MediaFile, validationReport: ValidationReport): Promise<AutoFixResult> {
    const fixId = 'fix-missing-metadata';
    
    if (!this.config.fixTypes.missingMetadata) {
      return {
        fixId,
        ruleName: 'Missing Metadata Sidecar',
        fixed: false,
        message: 'Fix disabled in configuration'
      };
    }

    try {
      // Check if sidecar already exists
      const sidecarPath = `${file.absolutePath}.json`;
      try {
        await fs.access(sidecarPath);
        return {
          fixId,
          ruleName: 'Missing Metadata Sidecar',
          fixed: false,
          message: 'Sidecar already exists'
        };
      } catch {
        // Sidecar doesn't exist, proceed with fix
      }

      if (this.config.dryRun) {
        return {
          fixId,
          ruleName: 'Missing Metadata Sidecar',
          fixed: true,
          message: 'Would generate metadata sidecar (dry run)'
        };
      }

      // Process file to generate metadata
      this.logger.info('Generating metadata sidecar', { file: file.path });
      const result = await processFile(file.absolutePath);

      if (result.processing.success) {
        // Write sidecar file
        await fs.writeFile(sidecarPath, JSON.stringify(result, null, 2));
        
        return {
          fixId,
          ruleName: 'Missing Metadata Sidecar',
          fixed: true,
          message: 'Metadata sidecar generated successfully'
        };
      } else {
        return {
          fixId,
          ruleName: 'Missing Metadata Sidecar',
          fixed: false,
          message: 'Failed to generate metadata',
          error: result.processing.error || 'Processing failed'
        };
      }
    } catch (error) {
      return {
        fixId,
        ruleName: 'Missing Metadata Sidecar',
        fixed: false,
        message: 'Error during metadata generation',
        error: error instanceof Error ? error.message : 'Unknown error'
      };
    }
  }

  /**
   * Fix incorrect filename based on EXIF date
   */
  private async fixIncorrectFilename(file: MediaFile, validationReport: ValidationReport): Promise<AutoFixResult> {
    const fixId = 'fix-incorrect-filename';
    
    if (!this.config.fixTypes.incorrectFilename) {
      return {
        fixId,
        ruleName: 'Incorrect Filename',
        fixed: false,
        message: 'Fix disabled in configuration'
      };
    }

    try {
      // Extract EXIF data to get proper date
      const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
      const timestamp = exifData.timestamps?.dateTimeOriginal || exifData.timestamps?.createDate;
      
      if (!timestamp) {
        return {
          fixId,
          ruleName: 'Incorrect Filename',
          fixed: false,
          message: 'No timestamp found in EXIF data'
        };
      }

      // Generate proper filename
      const date = new Date(timestamp);
      const dateStr = date.toISOString().slice(0, 19).replace(/:/g, '-');
      const ext = path.extname(file.absolutePath);
      const newFilename = `${dateStr}${ext}`;
      let newPath = path.join(path.dirname(file.absolutePath), newFilename);

      // Check if target already exists
      if (newPath === file.absolutePath) {
        return {
          fixId,
          ruleName: 'Incorrect Filename',
          fixed: false,
          message: 'Filename already correct'
        };
      }

      try {
        await fs.access(newPath);
        // File exists, add counter
        let counter = 1;
        let finalPath = newPath;
        while (true) {
          finalPath = path.join(
            path.dirname(file.absolutePath), 
            `${dateStr}_${counter.toString().padStart(3, '0')}${ext}`
          );
          try {
            await fs.access(finalPath);
            counter++;
          } catch {
            break;
          }
        }
        newPath = finalPath;
      } catch {
        // Target doesn't exist, good to go
      }

      if (this.config.dryRun) {
        return {
          fixId,
          ruleName: 'Incorrect Filename',
          fixed: true,
          message: `Would rename to: ${path.basename(newPath)} (dry run)`
        };
      }

      // Rename file
      await fs.rename(file.absolutePath, newPath);
      
      // Rename sidecar if exists
      const sidecarPath = `${file.absolutePath}.json`;
      try {
        await fs.access(sidecarPath);
        await fs.rename(sidecarPath, `${newPath}.json`);
      } catch {
        // No sidecar exists
      }

      return {
        fixId,
        ruleName: 'Incorrect Filename',
        fixed: true,
        message: `Renamed to: ${path.basename(newPath)}`
      };
    } catch (error) {
      return {
        fixId,
        ruleName: 'Incorrect Filename',
        fixed: false,
        message: 'Error during filename correction',
        error: error instanceof Error ? error.message : 'Unknown error'
      };
    }
  }

  /**
   * Fix missing GPS enrichment (when coordinates exist)
   */
  private async fixMissingGPSEnrichment(file: MediaFile, validationReport: ValidationReport): Promise<AutoFixResult> {
    const fixId = 'fix-missing-gps-enrichment';
    
    if (!this.config.fixTypes.missingGPS) {
      return {
        fixId,
        ruleName: 'Missing GPS Enrichment',
        fixed: false,
        message: 'Fix disabled in configuration'
      };
    }

    try {
      // Check if GPS coordinates exist
      const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
      if (!exifData.gps?.latitude || !exifData.gps?.longitude) {
        return {
          fixId,
          ruleName: 'Missing GPS Enrichment',
          fixed: false,
          message: 'No GPS coordinates in file'
        };
      }

      // Check if metadata sidecar exists
      const sidecarPath = `${file.absolutePath}.json`;
      let existingMetadata: ProcessingResult | null = null;
      
      try {
        const sidecarContent = await fs.readFile(sidecarPath, 'utf-8');
        existingMetadata = JSON.parse(sidecarContent);
        
        // Check if already enriched
        if (existingMetadata?.location?.primary) {
          return {
            fixId,
            ruleName: 'Missing GPS Enrichment',
            fixed: false,
            message: 'GPS already enriched in metadata'
          };
        }
      } catch {
        // No sidecar exists or invalid JSON
      }

      if (this.config.dryRun) {
        return {
          fixId,
          ruleName: 'Missing GPS Enrichment',
          fixed: true,
          message: 'Would enrich GPS location data (dry run)'
        };
      }

      // Re-process with GPS enrichment enabled
      this.logger.info('Enriching GPS location data', { 
        file: file.path,
        coordinates: { lat: exifData.gps.latitude, lng: exifData.gps.longitude }
      });
      
      const result = await processFile(file.absolutePath);
      
      // Merge with existing metadata if present
      if (existingMetadata) {
        // Preserve existing metadata and add new GPS enrichment
        Object.assign(result, existingMetadata);
        result.location = result.location || existingMetadata.location;
      }

      if (result.processing.success && result.location?.primary) {
        // Write updated sidecar file
        await fs.writeFile(sidecarPath, JSON.stringify(result, null, 2));
        
        return {
          fixId,
          ruleName: 'Missing GPS Enrichment',
          fixed: true,
          message: 'GPS location enriched successfully'
        };
      } else {
        return {
          fixId,
          ruleName: 'Missing GPS Enrichment',
          fixed: false,
          message: 'Failed to enrich GPS data',
          error: result.processing.error || 'Processing failed'
        };
      }
    } catch (error) {
      return {
        fixId,
        ruleName: 'Missing GPS Enrichment',
        fixed: false,
        message: 'Error during GPS enrichment',
        error: error instanceof Error ? error.message : 'Unknown error'
      };
    }
  }

  /**
   * Fix missing color analysis
   */
  private async fixMissingColors(file: MediaFile, validationReport: ValidationReport): Promise<AutoFixResult> {
    const fixId = 'fix-missing-colors';
    
    if (!this.config.fixTypes.missingColors) {
      return {
        fixId,
        ruleName: 'Missing Color Analysis',
        fixed: false,
        message: 'Fix disabled in configuration'
      };
    }

    try {
      // Check if metadata sidecar exists and has colors
      const sidecarPath = `${file.absolutePath}.json`;
      let existingMetadata: ProcessingResult | null = null;
      
      try {
        const sidecarContent = await fs.readFile(sidecarPath, 'utf-8');
        existingMetadata = JSON.parse(sidecarContent);
        
        // Check if colors already extracted
        // Note: Colors might be stored in technical.colorProfile or a custom field
        if (existingMetadata?.technical?.colorProfile) {
          return {
            fixId,
            ruleName: 'Missing Color Analysis',
            fixed: false,
            message: 'Color information already present in metadata'
          };
        }
      } catch {
        // No sidecar exists or invalid JSON
      }

      if (this.config.dryRun) {
        return {
          fixId,
          ruleName: 'Missing Color Analysis',
          fixed: true,
          message: 'Would extract color information (dry run)'
        };
      }

      // Re-process with color extraction enabled
      this.logger.info('Extracting color information', { file: file.path });
      
      const result = await processFile(file.absolutePath);
      
      // Merge with existing metadata if present
      if (existingMetadata) {
        // Preserve existing metadata
        Object.assign(result, existingMetadata);
      }

      if (result.processing.success) {
        // Note: Color extraction happens in post-processing, so it should be included
        // Write updated sidecar file
        await fs.writeFile(sidecarPath, JSON.stringify(result, null, 2));
        
        return {
          fixId,
          ruleName: 'Missing Color Analysis',
          fixed: true,
          message: 'Color analysis completed successfully'
        };
      } else {
        return {
          fixId,
          ruleName: 'Missing Color Analysis',
          fixed: false,
          message: 'Failed to extract colors',
          error: result.processing.error || 'Processing failed'
        };
      }
    } catch (error) {
      return {
        fixId,
        ruleName: 'Missing Color Analysis',
        fixed: false,
        message: 'Error during color extraction',
        error: error instanceof Error ? error.message : 'Unknown error'
      };
    }
  }

  /**
   * Auto-fix validation issues for a file
   */
  async autoFix(file: MediaFile): Promise<AutoFixReport> {
    this.logger.info('Starting auto-fix process', { file: file.path });

    // Run validation before fixes
    const validationBefore = await this.validationService.validatePhoto(file);
    
    // Create backup if enabled
    const backupDirectory = await this.createBackup(file);
    
    const fixes: AutoFixResult[] = [];
    const report: AutoFixReport = {
      file,
      fixAttempted: 0,
      fixSucceeded: 0,
      fixFailed: 0,
      fixes,
      backupDirectory,
      validationBefore
    };

    // Determine which fixes to attempt based on validation results
    const failedRules = validationBefore.rules.filter(r => !r.result.passed);
    
    // Fix missing metadata sidecar - detect any rule suggesting missing metadata
    const needsMetadata = failedRules.some(r => {
      const name = r.name.toLowerCase();
      return name.includes('metadata') || name.includes('sidecar') || 
             name.includes('timestamp') || name.includes('camera information');
    });
    
    if (needsMetadata) {
      report.fixAttempted++;
      const result = await this.fixMissingMetadata(file, validationBefore);
      fixes.push(result);
      if (result.fixed) {
        report.fixSucceeded++;
      } else {
        report.fixFailed++;
      }
    }

    // Fix incorrect filename - detect timestamp or naming issues
    const needsFilenameCorrection = failedRules.some(r => {
      const name = r.name.toLowerCase();
      return name.includes('filename') || name.includes('naming') || 
             name.includes('timestamp');
    });
    
    if (needsFilenameCorrection) {
      report.fixAttempted++;
      const result = await this.fixIncorrectFilename(file, validationBefore);
      fixes.push(result);
      if (result.fixed) {
        report.fixSucceeded++;
        // Update file path if renamed
        if (result.message.includes('Renamed to:')) {
          const newFilename = result.message.split('Renamed to: ')[1];
          file.absolutePath = path.join(path.dirname(file.absolutePath), newFilename);
          file.path = path.relative(process.cwd(), file.absolutePath);
        }
      } else {
        report.fixFailed++;
      }
    }

    // Fix missing GPS enrichment - detect "GPS Coordinates Present" rule failure
    const needsGPSEnrichment = failedRules.some(r => {
      const name = r.name.toLowerCase();
      return name.includes('gps coordinates') || name.includes('gps');
    });
    
    if (needsGPSEnrichment) {
      report.fixAttempted++;
      const result = await this.fixMissingGPSEnrichment(file, validationBefore);
      fixes.push(result);
      if (result.fixed) {
        report.fixSucceeded++;
      } else {
        report.fixFailed++;
      }
    }

    // Fix missing color analysis - detect color-related failures
    const needsColorAnalysis = failedRules.some(r => {
      const name = r.name.toLowerCase();
      return name.includes('color') || name.includes('colour');
    });
    
    if (needsColorAnalysis) {
      report.fixAttempted++;
      const result = await this.fixMissingColors(file, validationBefore);
      fixes.push(result);
      if (result.fixed) {
        report.fixSucceeded++;
      } else {
        report.fixFailed++;
      }
    }

    // Run validation after fixes if any were successful
    if (report.fixSucceeded > 0 && !this.config.dryRun) {
      report.validationAfter = await this.validationService.validatePhoto(file);
    }

    this.logger.info('Auto-fix process completed', {
      file: file.path,
      attempted: report.fixAttempted,
      succeeded: report.fixSucceeded,
      failed: report.fixFailed,
      beforeScore: validationBefore.weightedScore,
      afterScore: report.validationAfter?.weightedScore
    });

    return report;
  }

  /**
   * Rollback fixes using backup
   */
  async rollback(file: MediaFile, backupDirectory: string): Promise<void> {
    this.logger.info('Rolling back fixes', { file: file.path, backupDirectory });

    try {
      // Find backup file
      const files = await fs.readdir(backupDirectory);
      const backupFile = files.find(f => !f.endsWith('.json'));
      
      if (!backupFile) {
        throw new Error('No backup file found');
      }

      const backupPath = path.join(backupDirectory, backupFile);
      
      // Restore original file
      await fs.copyFile(backupPath, file.absolutePath);
      
      // Restore sidecar if exists
      const backupSidecar = `${backupPath}.json`;
      try {
        await fs.access(backupSidecar);
        await fs.copyFile(backupSidecar, `${file.absolutePath}.json`);
      } catch {
        // No sidecar backup
      }

      this.logger.info('Rollback completed successfully', { file: file.path });
    } catch (rollbackError) {
      const errorMessage = rollbackError instanceof Error ? rollbackError.message : 'Unknown error';
      this.logger.error('Rollback failed: ' + errorMessage);
      throw rollbackError;
    }
  }
}