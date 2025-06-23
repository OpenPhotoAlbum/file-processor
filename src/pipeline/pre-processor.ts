import { MediaFile, SidecarMetadata } from '../types/media.js';
import { detectMimeType } from '../utils/mime.js';
import { toRelativePath, sanitizePathForLogging } from '../utils/paths.js';
import { stat, readFile, access } from 'fs/promises';
import { dirname, basename, extname, join } from 'path';

/**
 * Common pre-processing steps for ALL file types
 * - Validate file exists
 * - Generate hash
 * - Detect MIME type
 * - Discover sidecar metadata files
 */
export async function preProcess(absolutePath: string): Promise<MediaFile> {
  const safePath = sanitizePathForLogging(absolutePath);
  console.log(`Pre-processing: ${safePath}`);
  
  // Check if file exists and get size
  const stats = await stat(absolutePath);
  
  // Detect MIME type from extension
  const mimeType = detectMimeType(absolutePath);
  
  // Convert to relative path for storage
  const relativePath = toRelativePath(absolutePath);
  
  // Discover sidecar metadata files
  const sidecarMetadata = await discoverSidecarFiles(absolutePath);
  
  console.log(`  MIME type: ${mimeType}`);
  console.log(`  File size: ${stats.size} bytes`);
  console.log(`  Relative path: ${relativePath}`);
  if (sidecarMetadata.length > 0) {
    console.log(`  Found ${sidecarMetadata.length} sidecar metadata file(s)`);
  }
  
  return {
    path: relativePath,          // Store relative path
    absolutePath,               // Keep absolute for processing
    hash: 'placeholder-hash',   // TODO: Generate actual hash
    size: stats.size,
    mimeType,
    sidecarMetadata             // Generic sidecar metadata from any source
  };
}

/**
 * Discover sidecar metadata files for a given media file
 * Supports multiple sources and formats
 */
async function discoverSidecarFiles(mediaFilePath: string): Promise<SidecarMetadata[]> {
  const sidecarFiles: SidecarMetadata[] = [];
  const dir = dirname(mediaFilePath);
  const baseName = basename(mediaFilePath, extname(mediaFilePath));
  
  // Common sidecar file patterns and their sources
  const patterns = [
    // Google Takeout JSON files
    { extension: '.json', source: 'google-takeout', format: 'json' },
    
    // Adobe Bridge/Lightroom XMP files
    { extension: '.xmp', source: 'adobe-bridge', format: 'xmp' },
    
    // Generic metadata files
    { extension: '.metadata.json', source: 'custom', format: 'json' },
    { extension: '.meta', source: 'custom', format: 'text' },
    { extension: '.txt', source: 'custom', format: 'text' },
    
    // Video metadata (for future video support)
    { extension: '.xml', source: 'unknown', format: 'xml' }
  ];
  
  for (const pattern of patterns) {
    const sidecarPath = join(dir, baseName + pattern.extension);
    
    try {
      await access(sidecarPath);
      
      // File exists, try to read and parse it
      const sidecarContent = await readSidecarFile(sidecarPath, pattern.format);
      if (sidecarContent) {
        sidecarFiles.push({
          source: pattern.source,
          format: pattern.format,
          path: toRelativePath(sidecarPath),
          absolutePath: sidecarPath,
          data: sidecarContent
        });
      }
    } catch {
      // File doesn't exist, continue to next pattern
      continue;
    }
  }
  
  return sidecarFiles;
}

/**
 * Read and parse sidecar file based on format
 */
async function readSidecarFile(filePath: string, format: string): Promise<any> {
  try {
    const content = await readFile(filePath, 'utf8');
    
    switch (format) {
      case 'json':
        return JSON.parse(content);
        
      case 'xmp':
        // TODO: Implement XMP parsing
        return { rawXMP: content };
        
      case 'xml':
        // TODO: Implement XML parsing
        return { rawXML: content };
        
      case 'text':
        // Parse simple key=value format
        return parseTextMetadata(content);
        
      default:
        return { rawContent: content };
    }
  } catch (error) {
    console.warn(`Failed to parse sidecar file ${filePath}:`, error);
    return null;
  }
}

/**
 * Parse simple text metadata in key=value format
 */
function parseTextMetadata(content: string): Record<string, string> {
  const metadata: Record<string, string> = {};
  
  const lines = content.split('\n');
  for (const line of lines) {
    const trimmed = line.trim();
    if (trimmed && !trimmed.startsWith('#')) {
      const [key, ...valueParts] = trimmed.split('=');
      if (key && valueParts.length > 0) {
        metadata[key.trim()] = valueParts.join('=').trim();
      }
    }
  }
  
  return metadata;
}