import { MediaProcessor } from '../types/processors.js';
import { ImageProcessor } from '../processors/image.processor.js';
import { VideoProcessor } from '../processors/video.processor.js';

// Registry of all available processors
const processorMap: Record<string, new() => MediaProcessor> = {
  // Image processors
  'image/jpeg': ImageProcessor,
  'image/jpg': ImageProcessor,
  'image/png': ImageProcessor,
  'image/heic': ImageProcessor,
  'image/gif': ImageProcessor,
  'image/tiff': ImageProcessor,
  'image/webp': ImageProcessor,
  
  // Video processors
  'video/quicktime': VideoProcessor,  // .mov
  'video/mp4': VideoProcessor,        // .mp4, .m4v
  'video/x-msvideo': VideoProcessor,  // .avi
  'video/x-matroska': VideoProcessor, // .mkv
  'video/3gpp': VideoProcessor,       // .3gp
  'video/webm': VideoProcessor        // .webm
};

/**
 * Route files to appropriate processor based on MIME type
 */
export function getProcessor(mimeType: string): MediaProcessor {
  const ProcessorClass = processorMap[mimeType.toLowerCase()];
  
  if (!ProcessorClass) {
    throw new Error(`No processor found for MIME type: ${mimeType}`);
  }
  
  return new ProcessorClass();
}