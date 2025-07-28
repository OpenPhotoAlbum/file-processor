import { MediaProcessor } from '../types/processors.js';
/**
 * Route files to appropriate processor - heritage detection takes priority over MIME type
 */
export declare function getProcessor(mimeType: string, filePath?: string): Promise<MediaProcessor>;
