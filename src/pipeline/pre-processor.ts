import { MediaFile, SidecarMetadata, SidecarFormat, SidecarSource } from '../types/media.js';
import { detectMimeType } from '../utils/mime.js';
import { toRelativePath, sanitizePathForLogging } from '../utils/paths.js';
import { readFile } from 'fs/promises';
import { basename, extname } from 'path';
import { Logger } from '../utils/logging/index.js';
import { createSystemErrorFactory, createMetadataErrorFactory, createValidationErrorFactory } from '../utils/errors/factories.js';
import { FileSystemService } from '../services/index.js';

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
  const fs = new FileSystemService();
  const safePath = sanitizePathForLogging(absolutePath);
  
  logger.info(`Pre-processing: ${safePath}`);
  
  try {
    // Validate file and get metadata using FileSystemService
    const validation = await fs.validateFile(absolutePath);
    if (!validation.isValid) {
      throw new Error(`File validation failed: ${validation.errors.join(', ')}`);
    }
    
    const metadata = await fs.getFileMetadata(absolutePath);
    if (!metadata) {
      throw new Error('Failed to retrieve file metadata');
    }
    
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
    
    // Discover sidecar metadata files using FileSystemService
    const sidecarMetadata = await discoverSidecarFiles(absolutePath, fs);
  
    logger.info(`  MIME type: ${mimeType}`);
    logger.info(`  File size: ${metadata.size} bytes`);
    logger.info(`  Relative path: ${relativePath}`);
    if (sidecarMetadata.length > 0) {
      logger.info(`  Found ${sidecarMetadata.length} sidecar metadata file(s)`);
    }
  
    return {
      path: relativePath,          // Store relative path
      absolutePath,               // Keep absolute for processing
      hash: 'placeholder-hash',   // TODO: Generate actual hash
      size: metadata.size,
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
 * Supports multiple sources and formats using FileSystemService
 */
async function discoverSidecarFiles(mediaFilePath: string, fs: FileSystemService): Promise<SidecarMetadata[]> {
  const sidecarFiles: SidecarMetadata[] = [];
  const fileName = basename(mediaFilePath); // Keep full filename with extension
  const baseName = basename(mediaFilePath, extname(mediaFilePath)); // Base name without extension
  
  // Use FileSystemService to find sidecar files efficiently
  const discoveredSidecars = await fs.findSidecarFiles(mediaFilePath, {
    extensions: ['.json', '.xmp', '.metadata.json', '.meta', '.txt', '.xml'],
    searchParentDirs: false // Only search in same directory for now
  });
  
  // Map discovered files to our sidecar metadata format
  for (const sidecarPath of discoveredSidecars) {
    const sidecarExtension = extname(sidecarPath);
    const sidecarBaseName = basename(sidecarPath, sidecarExtension);
    
    // Determine source and format based on file patterns
    let source = SidecarSource.CUSTOM;
    let format = SidecarFormat.TEXT;
    
    if (sidecarExtension === '.json') {
      // Google Takeout files use full filename, others use base name
      if (sidecarBaseName === fileName || sidecarBaseName === `${baseName  }.metadata`) {
        source = sidecarBaseName === fileName ? SidecarSource.GOOGLE_TAKEOUT : SidecarSource.CUSTOM;
        format = SidecarFormat.JSON;
      }
    } else if (sidecarExtension === '.xmp') {
      source = SidecarSource.ADOBE_BRIDGE;
      format = SidecarFormat.XMP;
    } else if (sidecarExtension === '.xml') {
      source = SidecarSource.UNKNOWN;
      format = SidecarFormat.XML;
    } else if (sidecarExtension === '.txt' || sidecarExtension === '.meta') {
      source = SidecarSource.CUSTOM;
      format = SidecarFormat.TEXT;
    }
    
    // Read and parse the sidecar file
    try {
      const sidecarContent = await readSidecarFile(sidecarPath, format);
      if (sidecarContent) {
        sidecarFiles.push({
          source,
          format,
          path: toRelativePath(sidecarPath),
          absolutePath: sidecarPath,
          data: sidecarContent
        });
      }
    } catch (error) {
      // Log error but continue with other sidecar files
      const logger = new Logger('Pre-processor');
      const metadataErrors = createMetadataErrorFactory(logger);
      metadataErrors.parsingFailed({
        sidecarPath: sanitizePathForLogging(sidecarPath),
        format,
        operation: 'sidecar content reading'
      }, error as Error);
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