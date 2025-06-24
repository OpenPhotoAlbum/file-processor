import { ProcessingResult } from '../types/media.js';
import { preProcess } from './pre-processor.js';
import { getProcessor } from './router.js';
import { postProcess } from './post-processor.js';

/**
 * Main entry point for processing any media file
 * This is the single funnel all files go through
 */
export async function processFile(filePath: string): Promise<ProcessingResult> {
  try {
    // update this to our logging system
    console.log(`Processing: ${filePath}`);
    
    // 1. Common pre-processing (shared for all files)
    const file = await preProcess(filePath);
    
    // 2. Route to specific processor based on MIME type
    const processor = getProcessor(file.mimeType);
    const result = await processor.extract(file);
    
    // 3. Common post-processing (shared for all files)
    await postProcess(file, result);
    
    // Return the new consolidated schema directly from processor
    return result;
    
  } catch (error) {
    console.error(`Error processing ${filePath}:`, error);
    
    // Return error in new schema format
    return {
      file: {
        path: filePath,
        hash: 'error',
        size: 0,
        mimeType: 'unknown',
        created: new Date().toISOString(),
        modified: new Date().toISOString()
      },
      processing: {
        success: false,
        processor: 'unknown',
        extractedAt: new Date().toISOString(),
        error: error instanceof Error ? error.message : 'Unknown error'
      },
      media: {
        type: 'unknown',
        format: 'unknown',
        dimensions: {
          width: 0,
          height: 0,
          megapixels: 0,
          orientation: 'unknown'
        }
      },
      timestamps: {
        primary: null,
        capture: null,
        creation: null,
        modification: null,
        alternatives: [],
        conflicts: []
      },
      location: {
        primary: null,
        alternatives: [],
        conflicts: [],
        geolocation: null,
        enrichmentStatus: 'error'
      },
      camera: {},
      settings: {},
      technical: {},
      sidecars: []
    };
  }
}