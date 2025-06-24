import { MediaFile, ProcessingResult } from '../types/media.js';
import { preProcess } from './pre-processor.js';
import { getProcessor } from './router.js';
import { postProcess } from './post-processor.js';

/**
 * Main entry point for processing any media file
 * This is the single funnel all files go through
 */
export async function processFile(filePath: string): Promise<ProcessingResult> {
  try {
    console.log(`Processing: ${filePath}`);
    
    // 1. Common pre-processing (shared for all files)
    const file = await preProcess(filePath);
    
    // 2. Route to specific processor based on MIME type
    const processor = getProcessor(file.mimeType);
    const metadata = await processor.extract(file);
    
    // 3. Common post-processing (shared for all files)
    const result = await postProcess(file, metadata);
    
    return {
      success: true,
      mediaFile: file,
      metadata,
      ...result
    };
    
  } catch (error) {
    console.error(`Error processing ${filePath}:`, error);
    return {
      success: false,
      mediaFile: { path: filePath } as MediaFile,
      metadata: null,
      error: error instanceof Error ? error.message : 'Unknown error'
    };
  }
}