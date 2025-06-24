/**
 * Timestamp extraction utilities - smart consolidation from multiple sources
 * Handles EXIF, sidecar metadata, filesystem, and filename-based timestamps
 */

import { SidecarMetadata, SidecarFormat, SidecarSource } from '../../types/media.js';
import { Logger } from '../logging/index.js';
import { createTimestampErrorFactory } from '../errors/factories.js';

/**
 * Timestamp source types
 */
export type TimestampSource = 'exif' | 'sidecar' | 'filesystem' | 'filename' | 'unknown';

/**
 * Confidence levels for timestamp reliability
 */
export type TimestampConfidence = 'high' | 'medium' | 'low';

/**
 * Individual timestamp information
 */
export interface TimestampInfo {
  timestamp: string;                 // ISO 8601 format (YYYY-MM-DDTHH:mm:ss.sssZ)
  source: TimestampSource;           
  confidence: TimestampConfidence;
  timezone?: string;                 // If known (e.g., "America/New_York")
  originalFormat: string;            // Raw format from source
  sourceDetails: string;             // Detailed source info (e.g., "EXIF:DateTimeOriginal")
}

/**
 * Complete timestamp extraction result
 */
export interface TimestampExtractionResult {
  capture: TimestampInfo | null;     // When photo was actually taken (best guess)
  creation: TimestampInfo | null;    // When file was created/processed  
  modification: TimestampInfo | null; // When file was last changed
  
  primary: TimestampInfo | null;     // Best overall timestamp for "photo date"
  alternatives: TimestampInfo[];     // Other valid timestamps found
  conflicts: string[];               // Detected inconsistencies
}

/**
 * Input sources for timestamp extraction
 */
export interface TimestampExtractionSources {
  exifData?: any;                    // From EXIF extractor
  sidecarMetadata?: SidecarMetadata[]; // From pre-processor  
  fileStats?: any;                   // fs.Stats object
  filePath?: string;                 // For filename-based dates
}

/**
 * Extract and consolidate timestamps from multiple sources
 */
export class TimestampExtractor {
  private logger = new Logger('Timestamp Extractor');
  private timestampErrors = createTimestampErrorFactory(this.logger);

  /**
   * Main timestamp extraction method
   */
  async extractTimestamps(sources: TimestampExtractionSources): Promise<TimestampExtractionResult> {
    this.logger.debug('Starting timestamp extraction', { 
      hasExif: !!sources.exifData,
      sidecarCount: sources.sidecarMetadata?.length || 0,
      hasFileStats: !!sources.fileStats,
      hasFilePath: !!sources.filePath
    });

    const allTimestamps: TimestampInfo[] = [];

    // 1. Extract from EXIF data
    if (sources.exifData) {
      const exifTimestamps = this.extractFromExif(sources.exifData);
      allTimestamps.push(...exifTimestamps);
    }

    // 2. Extract from sidecar metadata
    if (sources.sidecarMetadata) {
      for (const sidecar of sources.sidecarMetadata) {
        const sidecarTimestamps = this.extractFromSidecar(sidecar);
        allTimestamps.push(...sidecarTimestamps);
      }
    }

    // 3. Extract from filesystem
    if (sources.fileStats) {
      const fsTimestamps = this.extractFromFilesystem(sources.fileStats);
      allTimestamps.push(...fsTimestamps);
    }

    // 4. Extract from filename
    if (sources.filePath) {
      const filenameTimestamps = this.extractFromFilename(sources.filePath);
      allTimestamps.push(...filenameTimestamps);
    }

    // 5. Analyze and categorize timestamps
    const result = this.analyzeTimestamps(allTimestamps);

    this.logger.info('Timestamp extraction completed', {
      totalTimestamps: allTimestamps.length,
      hasPrimary: !!result.primary,
      hasCapture: !!result.capture,
      conflicts: result.conflicts.length
    });

    return result;
  }

  /**
   * Extract timestamps from EXIF data
   */
  private extractFromExif(exifData: any): TimestampInfo[] {
    const timestamps: TimestampInfo[] = [];

    // EXIF DateTimeOriginal (highest priority - when photo was taken)
    if (exifData.timestamps?.dateTimeOriginal) {
      timestamps.push({
        timestamp: this.normalizeTimestamp(exifData.timestamps.dateTimeOriginal),
        source: 'exif',
        confidence: 'high',
        originalFormat: exifData.timestamps.dateTimeOriginal,
        sourceDetails: 'EXIF:DateTimeOriginal'
      });
    }

    // EXIF CreateDate (high priority - when file was created)
    if (exifData.timestamps?.createDate) {
      timestamps.push({
        timestamp: this.normalizeTimestamp(exifData.timestamps.createDate),
        source: 'exif',
        confidence: 'high',
        originalFormat: exifData.timestamps.createDate,
        sourceDetails: 'EXIF:CreateDate'
      });
    }

    // EXIF ModifyDate (lower priority - when file was last modified)
    if (exifData.timestamps?.modifyDate) {
      timestamps.push({
        timestamp: this.normalizeTimestamp(exifData.timestamps.modifyDate),
        source: 'exif',
        confidence: 'medium',
        originalFormat: exifData.timestamps.modifyDate,
        sourceDetails: 'EXIF:ModifyDate'
      });
    }

    this.logger.debug('Extracted EXIF timestamps', { count: timestamps.length });
    return timestamps;
  }

  /**
   * Extract timestamps from sidecar metadata
   */
  private extractFromSidecar(sidecar: SidecarMetadata): TimestampInfo[] {
    const timestamps: TimestampInfo[] = [];

    try {
      if (sidecar.source === SidecarSource.GOOGLE_TAKEOUT && sidecar.format === SidecarFormat.JSON) {
        // Google Takeout specific timestamp extraction
        const data = sidecar.data;

        // photoTakenTime (when photo was actually taken)
        if (data.photoTakenTime && typeof data.photoTakenTime === 'object' && data.photoTakenTime !== null) {
          const photoTakenTime = data.photoTakenTime as Record<string, unknown>;
          if (photoTakenTime.timestamp) {
            timestamps.push({
              timestamp: this.normalizeUnixTimestamp(photoTakenTime.timestamp as string | number),
              source: 'sidecar',
              confidence: 'high',
              originalFormat: `${photoTakenTime.timestamp} (${photoTakenTime.formatted || 'unknown'})`,
              sourceDetails: 'Google Takeout photoTakenTime'
            });
          }
        }

        // creationTime (when uploaded/processed by Google)
        if (data.creationTime && typeof data.creationTime === 'object' && data.creationTime !== null) {
          const creationTime = data.creationTime as Record<string, unknown>;
          if (creationTime.timestamp) {
            timestamps.push({
              timestamp: this.normalizeUnixTimestamp(creationTime.timestamp as string | number),
              source: 'sidecar',
              confidence: 'medium',
              originalFormat: `${creationTime.timestamp} (${creationTime.formatted || 'unknown'})`,
              sourceDetails: 'Google Takeout creationTime'
            });
          }
        }
      } else {
        // Generic sidecar timestamp extraction
        const genericTimestamps = this.extractGenericSidecarTimestamps(sidecar);
        timestamps.push(...genericTimestamps);
      }
    } catch (error) {
      this.timestampErrors.formatUnrecognized({
        source: sidecar.source,
        format: sidecar.format,
        sidecarPath: sidecar.path
      }, error as Error);
      
      // Continue processing despite timestamp extraction failure
    }

    this.logger.debug('Extracted sidecar timestamps', { 
      count: timestamps.length,
      source: sidecar.source,
      format: sidecar.format
    });
    return timestamps;
  }

  /**
   * Extract timestamps from generic sidecar data
   */
  private extractGenericSidecarTimestamps(sidecar: SidecarMetadata): TimestampInfo[] {
    const timestamps: TimestampInfo[] = [];
    const data = sidecar.data;

    // Common timestamp field names to look for
    const timestampFields = [
      'timestamp', 'dateTime', 'date', 'time',
      'created', 'createdAt', 'creation', 'creationDate',
      'modified', 'modifiedAt', 'lastModified',
      'captured', 'capturedAt', 'photoDate', 'shotDate'
    ];

    for (const field of timestampFields) {
      const fieldValue = data[field];
      if (fieldValue && (typeof fieldValue === 'string' || typeof fieldValue === 'number')) {
        try {
          timestamps.push({
            timestamp: this.normalizeTimestamp(fieldValue),
            source: 'sidecar',
            confidence: 'medium',
            originalFormat: String(fieldValue),
            sourceDetails: `${sidecar.source} ${field}`
          });
        } catch (error) {
          // Skip invalid timestamps
          continue;
        }
      }
    }

    return timestamps;
  }

  /**
   * Extract timestamps from filesystem metadata
   */
  private extractFromFilesystem(fileStats: any): TimestampInfo[] {
    const timestamps: TimestampInfo[] = [];

    // Birth time (when file was created) - most reliable filesystem timestamp
    if (fileStats.birthtime) {
      timestamps.push({
        timestamp: fileStats.birthtime.toISOString(),
        source: 'filesystem',
        confidence: 'low',
        originalFormat: fileStats.birthtime.toString(),
        sourceDetails: 'File birth time'
      });
    }

    // Modification time (when file content was last changed)
    if (fileStats.mtime) {
      timestamps.push({
        timestamp: fileStats.mtime.toISOString(),
        source: 'filesystem',
        confidence: 'low',
        originalFormat: fileStats.mtime.toString(),
        sourceDetails: 'File modification time'
      });
    }

    // Change time (when file metadata was last changed)
    if (fileStats.ctime) {
      timestamps.push({
        timestamp: fileStats.ctime.toISOString(),
        source: 'filesystem',
        confidence: 'low',
        originalFormat: fileStats.ctime.toString(),
        sourceDetails: 'File change time'
      });
    }

    this.logger.debug('Extracted filesystem timestamps', { count: timestamps.length });
    return timestamps;
  }

  /**
   * Extract timestamps from filename patterns
   */
  private extractFromFilename(filePath: string): TimestampInfo[] {
    const timestamps: TimestampInfo[] = [];
    const filename = filePath.split('/').pop() || '';

    // Common filename timestamp patterns
    const patterns = [
      // YYYY-MM-DD format
      { regex: /(\d{4})-(\d{2})-(\d{2})/, format: 'YYYY-MM-DD' },
      // YYYYMMDD format  
      { regex: /(\d{4})(\d{2})(\d{2})/, format: 'YYYYMMDD' },
      // IMG_YYYYMMDD format
      { regex: /IMG_(\d{4})(\d{2})(\d{2})/, format: 'IMG_YYYYMMDD' },
      // YYYY_MM_DD format
      { regex: /(\d{4})_(\d{2})_(\d{2})/, format: 'YYYY_MM_DD' }
    ];

    for (const pattern of patterns) {
      const match = filename.match(pattern.regex);
      if (match) {
        try {
          const year = match[1];
          const month = match[2];
          const day = match[3];
          const dateStr = `${year}-${month}-${day}T12:00:00.000Z`; // Assume noon UTC
          
          timestamps.push({
            timestamp: dateStr,
            source: 'filename',
            confidence: 'low',
            originalFormat: match[0],
            sourceDetails: `Filename pattern ${pattern.format}`
          });
        } catch (error) {
          // Skip invalid date patterns
          continue;
        }
      }
    }

    this.logger.debug('Extracted filename timestamps', { 
      count: timestamps.length,
      filename 
    });
    return timestamps;
  }

  /**
   * Analyze all timestamps and categorize them
   */
  private analyzeTimestamps(allTimestamps: TimestampInfo[]): TimestampExtractionResult {
    if (allTimestamps.length === 0) {
      return {
        capture: null,
        creation: null,
        modification: null,
        primary: null,
        alternatives: [],
        conflicts: []
      };
    }

    // Sort by confidence and source priority
    const sorted = this.sortTimestampsByPriority(allTimestamps);
    
    // Detect conflicts (timestamps that differ by more than reasonable amount)
    const conflicts = this.detectTimestampConflicts(allTimestamps);

    // Categorize timestamps
    const capture = this.findBestCaptureTimestamp(sorted);
    const creation = this.findBestCreationTimestamp(sorted);
    const modification = this.findBestModificationTimestamp(sorted);

    // Primary is the best capture timestamp, or fallback to creation
    const primary = capture || creation || sorted[0] || null;

    // Alternatives are all other valid timestamps
    const alternatives = sorted.filter(t => t !== primary);

    return {
      capture,
      creation,
      modification,
      primary,
      alternatives,
      conflicts
    };
  }

  /**
   * Sort timestamps by confidence and source priority
   */
  private sortTimestampsByPriority(timestamps: TimestampInfo[]): TimestampInfo[] {
    const sourcePriority: Record<TimestampSource, number> = {
      'exif': 1,
      'sidecar': 2,
      'filename': 3,
      'filesystem': 4,
      'unknown': 5
    };

    const confidencePriority: Record<TimestampConfidence, number> = {
      'high': 1,
      'medium': 2,
      'low': 3
    };

    return [...timestamps].sort((a, b) => {
      // First sort by confidence
      const confDiff = confidencePriority[a.confidence] - confidencePriority[b.confidence];
      if (confDiff !== 0) return confDiff;

      // Then by source priority
      const sourceDiff = sourcePriority[a.source] - sourcePriority[b.source];
      if (sourceDiff !== 0) return sourceDiff;

      // Finally by EXIF DateTimeOriginal preference
      if (a.sourceDetails.includes('DateTimeOriginal')) return -1;
      if (b.sourceDetails.includes('DateTimeOriginal')) return 1;

      return 0;
    });
  }

  /**
   * Find the best timestamp representing when the photo was captured
   */
  private findBestCaptureTimestamp(sortedTimestamps: TimestampInfo[]): TimestampInfo | null {
    // Prefer EXIF DateTimeOriginal or Google Takeout photoTakenTime
    const capturePreferences = [
      'EXIF:DateTimeOriginal',
      'Google Takeout photoTakenTime',
      'EXIF:CreateDate'
    ];

    for (const preference of capturePreferences) {
      const match = sortedTimestamps.find(t => t.sourceDetails.includes(preference));
      if (match) return match;
    }

    // Fallback to highest priority timestamp
    return sortedTimestamps[0] || null;
  }

  /**
   * Find the best timestamp representing when the file was created
   */
  private findBestCreationTimestamp(sortedTimestamps: TimestampInfo[]): TimestampInfo | null {
    const creationPreferences = [
      'EXIF:CreateDate',
      'Google Takeout creationTime',
      'File birth time'
    ];

    for (const preference of creationPreferences) {
      const match = sortedTimestamps.find(t => t.sourceDetails.includes(preference));
      if (match) return match;
    }

    return null;
  }

  /**
   * Find the best timestamp representing when the file was modified
   */
  private findBestModificationTimestamp(sortedTimestamps: TimestampInfo[]): TimestampInfo | null {
    const modificationPreferences = [
      'EXIF:ModifyDate',
      'File modification time'
    ];

    for (const preference of modificationPreferences) {
      const match = sortedTimestamps.find(t => t.sourceDetails.includes(preference));
      if (match) return match;
    }

    return null;
  }

  /**
   * Detect significant conflicts between timestamps
   */
  private detectTimestampConflicts(timestamps: TimestampInfo[]): string[] {
    const conflicts: string[] = [];
    
    if (timestamps.length < 2) return conflicts;

    // Group high-confidence timestamps
    const highConfidence = timestamps.filter(t => t.confidence === 'high');
    
    if (highConfidence.length >= 2) {
      for (let i = 0; i < highConfidence.length - 1; i++) {
        for (let j = i + 1; j < highConfidence.length; j++) {
          const diff = this.getTimestampDifferenceHours(
            highConfidence[i].timestamp,
            highConfidence[j].timestamp
          );
          
          // Flag conflicts > 24 hours between high-confidence sources
          if (Math.abs(diff) > 24) {
            conflicts.push(
              `${highConfidence[i].sourceDetails} vs ${highConfidence[j].sourceDetails}: ${Math.round(diff)}h difference`
            );
          }
        }
      }
    }

    return conflicts;
  }

  /**
   * Get difference between two timestamps in hours
   */
  private getTimestampDifferenceHours(timestamp1: string, timestamp2: string): number {
    const date1 = new Date(timestamp1);
    const date2 = new Date(timestamp2);
    return (date1.getTime() - date2.getTime()) / (1000 * 60 * 60);
  }

  /**
   * Normalize various timestamp formats to ISO 8601
   */
  private normalizeTimestamp(timestamp: string | number): string {
    if (typeof timestamp === 'number') {
      return this.normalizeUnixTimestamp(timestamp);
    }

    try {
      // Try parsing as-is first
      const date = new Date(timestamp);
      if (!isNaN(date.getTime())) {
        return date.toISOString();
      }

      // Handle EXIF format: "2023:12:25 14:30:45" or "2023:12:25 14:30:45-04:00"
      if (timestamp.match(/^\d{4}:\d{2}:\d{2} \d{2}:\d{2}:\d{2}/)) {
        // Replace first two colons with dashes, keep time part
        const parts = timestamp.split(' ');
        const datePart = parts[0].replace(/:/g, '-');
        const timePart = parts[1] || '00:00:00';
        
        // Handle timezone offset if present
        let normalized: string;
        if (parts.length > 2 || timePart.includes('+') || timePart.includes('-')) {
          // Has timezone info - try to parse with timezone
          const timeWithTz = parts.slice(1).join(' ');
          normalized = `${datePart}T${timeWithTz}`;
        } else {
          // No timezone - assume UTC
          normalized = `${datePart}T${timePart}.000Z`;
        }
        
        const parsed = new Date(normalized);
        if (!isNaN(parsed.getTime())) {
          return parsed.toISOString();
        }
      }

      // Handle other common formats...
      // Add more format handlers as needed

      throw new Error(`Unable to parse timestamp: ${timestamp}`);
    } catch (error) {
      this.timestampErrors.parsingFailed({
        timestamp,
        originalFormat: timestamp
      }, error as Error);
      throw error;
    }
  }

  /**
   * Normalize Unix timestamp to ISO 8601
   */
  private normalizeUnixTimestamp(timestamp: number | string): string {
    const num = typeof timestamp === 'string' ? parseInt(timestamp) : timestamp;
    
    // Handle both seconds and milliseconds
    const date = new Date(num > 1e10 ? num : num * 1000);
    
    if (isNaN(date.getTime())) {
      throw new Error(`Invalid Unix timestamp: ${timestamp}`);
    }
    
    return date.toISOString();
  }
}