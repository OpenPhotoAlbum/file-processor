import { MediaFile } from './media.js';

// Base interface all processors must implement
export interface MediaProcessor {
  supportedMimes: string[];
  extract(file: MediaFile): Promise<any>; // TODO: type metadata properly
  validate?(file: MediaFile): Promise<boolean>;
}