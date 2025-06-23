import { BaseProcessor } from './base.processor.js';
import { MediaFile } from '../types/media.js';

/**
 * Processor for image files (JPEG, PNG, HEIC, GIF, etc.)
 * Handles EXIF extraction, GPS parsing, thumbnail generation
 */
export class ImageProcessor extends BaseProcessor {
  supportedMimes = [
    'image/jpeg',
    'image/jpg', 
    'image/png',
    'image/heic',
    'image/gif',
    'image/tiff'
  ];

  async extract(file: MediaFile): Promise<any> {
    console.log(`Extracting image metadata from: ${file.path}`);
    
    // TODO: Implement actual image processing using file.absolutePath
    // - ExifTool extraction
    // - GPS parsing
    // - Thumbnail generation
    // - Dimension detection
    // - Image Taken Date extraction (I want this to be high priority, there are a lot of places this data is stored, and some very helpful fallback scenarios when it isn't available)
    // - Dominant color extraction
    
    return {
      type: 'image',
      processor: 'ImageProcessor',
      extractedAt: new Date().toISOString(),
      // Placeholder data
      exif: {},
      dimensions: { width: 0, height: 0 },
      gps: null,
      thumbnail: null
    };
  }
}