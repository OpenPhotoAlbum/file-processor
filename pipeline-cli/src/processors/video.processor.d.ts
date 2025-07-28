import { BaseProcessor } from './base.processor.js';
import { MediaFile, ProcessingResult } from '../types/media.js';
/**
 * Processor for video files (MP4, MOV, AVI, etc.)
 * Handles metadata extraction for video files
 */
export declare class VideoProcessor extends BaseProcessor {
    private logger;
    private fs;
    private exifExtractor;
    private gpsExtractor;
    private timestampExtractor;
    private livePhotoDetector;
    /**
     * Get supported video MIME types
     */
    get supportedMimes(): string[];
    /**
     * Validate video file
     */
    validate(file: MediaFile): Promise<boolean>;
    /**
     * Extract metadata from video file
     * Videos often contain EXIF data similar to images
     */
    extract(file: MediaFile): Promise<ProcessingResult>;
}
