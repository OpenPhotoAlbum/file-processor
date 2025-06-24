import { MediaFile, SidecarMetadata, SidecarFormat, SidecarSource } from '../types/media.js';
import { detectMimeType } from '../utils/mime.js';
import { toRelativePath, sanitizePathForLogging } from '../utils/paths.js';
import { stat, readFile, access } from 'fs/promises';
import { dirname, basename, extname, join } from 'path';
import { Logger } from '../utils/logging/index.js';
import { createSystemErrorFactory, createMetadataErrorFactory, createValidationErrorFactory } from '../utils/errors/factories.js';

/**
 * Common pre-processing steps for ALL file types
 * - Validate file exists
 * - Generate hash
 * - Detect MIME type
 * - Discover sidecar metadata files
 */
export async function preProcess(absolutePath: string): Promise<MediaFile> {
  const logger = new Logger('Pre-processor');
  const systemErrors = createSystemErrorFactory(logger);
  const validationErrors = createValidationErrorFactory(logger);
  const safePath = sanitizePathForLogging(absolutePath);
  
  logger.info(`Pre-processing: ${safePath}`);
  
  try {
    // Check if file exists and get size
    const stats = await stat(absolutePath);
    
    // Detect MIME type from extension
    const mimeType = detectMimeType(absolutePath);
    if (!mimeType) {
      validationErrors.mimeTypeUnknown({
        filePath: safePath,
        operation: 'MIME type detection'
      });
    }
    
    // Convert to relative path for storage
    const relativePath = toRelativePath(absolutePath);
    
    // Discover sidecar metadata files
    const sidecarMetadata = await discoverSidecarFiles(absolutePath);
  
    logger.info(`  MIME type: ${mimeType}`);
    logger.info(`  File size: ${stats.size} bytes`);
    logger.info(`  Relative path: ${relativePath}`);
    if (sidecarMetadata.length > 0) {
      logger.info(`  Found ${sidecarMetadata.length} sidecar metadata file(s)`);
    }
  
    return {
      path: relativePath,          // Store relative path
      absolutePath,               // Keep absolute for processing
      hash: 'placeholder-hash',   // TODO: Generate actual hash
      size: stats.size,
      mimeType,
      sidecarMetadata             // Generic sidecar metadata from any source
    };
  } catch (error) {
    systemErrors.fileOperationFailed({
      filePath: safePath,
      operation: 'file pre-processing'
    }, error as Error);
    throw error;
  }
}

/**
 * Discover sidecar metadata files for a given media file
 * Supports multiple sources and formats
 */
async function discoverSidecarFiles(mediaFilePath: string): Promise<SidecarMetadata[]> {
  const sidecarFiles: SidecarMetadata[] = [];
  const dir = dirname(mediaFilePath);
  const fileName = basename(mediaFilePath); // Keep full filename with extension
  const baseName = basename(mediaFilePath, extname(mediaFilePath)); // Base name without extension
  
  // Common sidecar file patterns and their sources
  const patterns = [
    // Google Takeout JSON files (use full filename)
    { extension: '.json', source: SidecarSource.GOOGLE_TAKEOUT, format: SidecarFormat.JSON, useFullName: true },
    
    // Adobe Bridge/Lightroom XMP files (typically use base name)
    { extension: '.xmp', source: SidecarSource.ADOBE_BRIDGE, format: SidecarFormat.XMP, useFullName: false },
    
    // Generic metadata files
    { extension: '.metadata.json', source: SidecarSource.CUSTOM, format: SidecarFormat.JSON, useFullName: false },
    { extension: '.meta', source: SidecarSource.CUSTOM, format: SidecarFormat.TEXT, useFullName: false },
    { extension: '.txt', source: SidecarSource.CUSTOM, format: SidecarFormat.TEXT, useFullName: false },
    
    // Video metadata (for future video support)
    { extension: '.xml', source: SidecarSource.UNKNOWN, format: SidecarFormat.XML, useFullName: false }
  ];
  
  for (const pattern of patterns) {
    // Choose filename strategy based on pattern
    const nameToUse = pattern.useFullName ? fileName : baseName;
    const sidecarPath = join(dir, nameToUse + pattern.extension);
    
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
async function readSidecarFile(filePath: string, format: SidecarFormat): Promise<any> {
  try {
    const content = await readFile(filePath, 'utf8');
    
    switch (format) {
    case SidecarFormat.JSON:
      return JSON.parse(content);
        
    case SidecarFormat.XMP:
      // TODO: Implement XMP parsing
      return { rawXMP: content };
        
    case SidecarFormat.XML:
      // TODO: Implement XML parsing
      return { rawXML: content };
        
    case SidecarFormat.TEXT:
      // Parse simple key=value format
      return parseTextMetadata(content);
        
    default:
      return { rawContent: content };
    }
  } catch (error) {
    const logger = new Logger('Pre-processor');
    const metadataErrors = createMetadataErrorFactory(logger);
    metadataErrors.formatUnknown({
      sidecarPath: filePath,
      format,
      operation: 'sidecar file parsing'
    }, error as Error);
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