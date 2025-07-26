import { MediaFile, ProcessingResult } from './media.js';

// Base interface all processors must implement
export interface MediaProcessor {
  supportedMimes: string[];
  extract(file: MediaFile): Promise<ProcessingResult>;
  validate?(file: MediaFile): Promise<boolean>;
}