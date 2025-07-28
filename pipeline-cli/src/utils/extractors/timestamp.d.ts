/**
 * Timestamp extraction utilities - smart consolidation from multiple sources
 * Handles EXIF, sidecar metadata, filesystem, and filename-based timestamps
 */
import { SidecarMetadata } from '../../types/media.js';
import type { FileStats } from './types.js';
import type { ExternalToolOutput } from '../../types/semantic-any.js';
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
    timestamp: string;
    source: TimestampSource;
    confidence: TimestampConfidence;
    timezone?: string;
    originalFormat: string;
    sourceDetails: string;
}
/**
 * Complete timestamp extraction result
 */
export interface TimestampExtractionResult {
    capture: TimestampInfo | null;
    creation: TimestampInfo | null;
    modification: TimestampInfo | null;
    primary: TimestampInfo | null;
    alternatives: TimestampInfo[];
    conflicts: string[];
}
/**
 * Input sources for timestamp extraction
 */
export interface TimestampExtractionSources {
    exifData?: ExternalToolOutput;
    sidecarMetadata?: SidecarMetadata[];
    fileStats?: FileStats;
    filePath?: string;
}
/**
 * Extract and consolidate timestamps from multiple sources
 */
export declare class TimestampExtractor {
    private logger;
    private timestampErrors;
    /**
     * Main timestamp extraction method
     */
    extractTimestamps(sources: TimestampExtractionSources): Promise<TimestampExtractionResult>;
    /**
     * Extract timestamps from EXIF data
     */
    private extractFromExif;
    /**
     * Extract timestamps from sidecar metadata
     */
    private extractFromSidecar;
    /**
     * Extract timestamps from generic sidecar data
     */
    private extractGenericSidecarTimestamps;
    /**
     * Extract timestamps from filesystem metadata
     */
    private extractFromFilesystem;
    /**
     * Extract timestamps from filename patterns
     */
    private extractFromFilename;
    /**
     * Analyze all timestamps and categorize them
     */
    private analyzeTimestamps;
    /**
     * Sort timestamps by confidence and source priority
     */
    private sortTimestampsByPriority;
    /**
     * Find the best timestamp representing when the photo was captured
     */
    private findBestCaptureTimestamp;
    /**
     * Find the best timestamp representing when the file was created
     */
    private findBestCreationTimestamp;
    /**
     * Find the best timestamp representing when the file was modified
     */
    private findBestModificationTimestamp;
    /**
     * Detect significant conflicts between timestamps
     */
    private detectTimestampConflicts;
    /**
     * Get difference between two timestamps in hours
     */
    private getTimestampDifferenceHours;
    /**
     * Normalize various timestamp formats to ISO 8601
     */
    private normalizeTimestamp;
    /**
     * Normalize Unix timestamp to ISO 8601
     */
    private normalizeUnixTimestamp;
}
