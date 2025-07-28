import { MediaProcessor } from '../types/processors.js';
import { MediaFile, ProcessingResult } from '../types/media.js';
/**
 * Abstract base class for all media processors
 * Provides common functionality and enforces interface
 */
export declare abstract class BaseProcessor implements MediaProcessor {
    abstract supportedMimes: string[];
    abstract extract(file: MediaFile): Promise<ProcessingResult>;
    validate(file: MediaFile): Promise<boolean>;
}
