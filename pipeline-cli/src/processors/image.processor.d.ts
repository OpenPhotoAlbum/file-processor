import { BaseProcessor } from './base.processor.js';
import { MediaFile, ProcessingResult } from '../types/media.js';
/**
 * Processor for image files (JPEG, PNG, HEIC, GIF, etc.)
 * Handles EXIF extraction, GPS parsing, thumbnail generation
 */
export declare class ImageProcessor extends BaseProcessor {
    private logger;
    private validationErrors;
    private systemErrors;
    private fs;
    private validator;
    private exifExtractor;
    private gpsExtractor;
    private timestampExtractor;
    /**
     * Get supported MIME types - combines codebase capabilities with user configuration
     * Based on SupportedMimeType enum but filtered by ENABLED_MIME_TYPES env var
     */
    get supportedMimes(): string[];
    /**
     * Get all MIME types that the codebase can handle (regardless of configuration)
     */
    get allSupportedMimes(): string[];
    /**
     * Enhanced validation using FileSystemService and image utilities
     */
    validate(file: MediaFile): Promise<boolean>;
    extract(file: MediaFile): Promise<ProcessingResult>;
}
