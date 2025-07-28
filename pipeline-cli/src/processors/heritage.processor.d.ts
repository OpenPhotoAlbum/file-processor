import { BaseProcessor } from './base.processor.js';
import { MediaFile, ProcessingResult } from '../types/media.js';
export declare class HeritageProcessor extends BaseProcessor {
    supportedMimes: string[];
    private logger;
    private validationErrors;
    private systemErrors;
    private exifExtractor;
    private timestampExtractor;
    private gpsExtractor;
    extract(file: MediaFile): Promise<ProcessingResult>;
    private parseSeriesInfo;
    private loadTranscription;
    private detectCreatorType;
}
