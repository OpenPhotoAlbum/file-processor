import { MediaProcessor } from '../types/processors.js';
import { ImageProcessor } from '../processors/image.processor.js';
import { VideoProcessor } from '../processors/video.processor.js';
import { HeritageProcessor } from '../processors/heritage.processor.js';
import { ExifExtractor } from '../utils/extractors/exif.js';

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
 * Route files to appropriate processor - heritage detection takes priority over MIME type
 */
export async function getProcessor(mimeType: string, filePath?: string): Promise<MediaProcessor> {
  // Check for heritage photos first if we have file path
  if (filePath) {
    try {
      const exifExtractor = new ExifExtractor();
      const exifData = await exifExtractor.extractExifData(filePath);

      // Heritage detection takes priority over MIME type
      if (exifData.heritage?.digitalSourceType?.includes('Scanned')) {
        return new HeritageProcessor();
      }
    } catch {
      // If EXIF extraction fails, fall back to MIME routing
      // This is expected for files without EXIF data
    }
  }

  // Standard MIME type routing
  const ProcessorClass = processorMap[mimeType.toLowerCase()];

  if (!ProcessorClass) {
    throw new Error(`No processor found for MIME type: ${mimeType}`);
  }

  return new ProcessorClass();
}