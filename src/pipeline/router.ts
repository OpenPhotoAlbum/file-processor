import { MediaProcessor } from '../types/processors.js';
import { ImageProcessor } from '../processors/image.processor.js';

// Registry of all available processors
const processorMap: Record<string, new() => MediaProcessor> = {
  'image/jpeg': ImageProcessor,
  'image/jpg': ImageProcessor,
  'image/png': ImageProcessor,
  'image/heic': ImageProcessor,
  'image/gif': ImageProcessor,
  // TODO: Add video, audio, etc. processors later
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