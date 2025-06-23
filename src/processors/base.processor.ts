import { MediaProcessor } from '../types/processors.js';
import { MediaFile } from '../types/media.js';

/**
 * Abstract base class for all media processors
 * Provides common functionality and enforces interface
 */
export abstract class BaseProcessor implements MediaProcessor {
  abstract supportedMimes: string[];
  abstract extract(file: MediaFile): Promise<any>;
  
  // Optional validation method
  async validate(file: MediaFile): Promise<boolean> {
    return this.supportedMimes.includes(file.mimeType.toLowerCase());
  }
}