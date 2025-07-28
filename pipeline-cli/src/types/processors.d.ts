import { MediaFile, ProcessingResult } from './media.js';
export interface MediaProcessor {
    supportedMimes: string[];
    extract(file: MediaFile): Promise<ProcessingResult>;
    validate?(file: MediaFile): Promise<boolean>;
}
