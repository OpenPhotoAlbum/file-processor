/**
 * CLI argument validation functions
 */

import { getAllSupportedMimeTypes } from '../utils/mime-config.js';
import { Logger } from '../utils/logging/index.js';
import { createValidationErrorFactory } from '../utils/errors/factories.js';

const logger = new Logger('CLI Validator');
const validationErrors = createValidationErrorFactory(logger);

/**
 * Validate MIME type string (comma-separated values)
 */
export function validateMimeTypes(value: string): string[] {
  const supportedTypes = getAllSupportedMimeTypes();
  const requestedTypes = value.split(',').map(type => type.trim().toLowerCase());
  const validTypes: string[] = [];
  const invalidTypes: string[] = [];
  
  for (const type of requestedTypes) {
    if (supportedTypes.includes(type)) {
      validTypes.push(type);
    } else {
      invalidTypes.push(type);
    }
  }
  
  if (invalidTypes.length > 0) {
    validationErrors.formatMismatch({
      invalidMimeTypes: invalidTypes,
      supportedTypes: supportedTypes.slice(0, 10), // Show first 10 for brevity
      operation: 'MIME type validation'
    });
    
    logger.warn(`Invalid MIME types: ${invalidTypes.join(', ')}`);
    logger.info(`Supported types: ${supportedTypes.join(', ')}`);
  }
  
  if (validTypes.length === 0) {
    throw new Error(`No valid MIME types provided. Supported: ${supportedTypes.join(', ')}`);
  }
  
  logger.debug(`Validated MIME types: ${validTypes.join(', ')}`);
  return validTypes;
}

/**
 * Validate output file path
 */
export function validateOutputPath(filePath: string): string {
  if (!filePath.trim()) {
    throw new Error('Output file path cannot be empty');
  }
  
  // Add .json extension if not present
  const normalizedPath = filePath.endsWith('.json') ? filePath : `${filePath}.json`;
  
  logger.debug(`Validated output path: ${normalizedPath}`);
  return normalizedPath;
}

/**
 * Validate that at least one input source is provided
 */
export function validateInputSources(options: {
  directory?: string;
  recursive?: string;
  files?: string[];
}): void {
  const hasDirectory = options.directory?.trim();
  const hasRecursive = options.recursive?.trim();
  const hasFiles = options.files && options.files.length > 0;
  
  if (!hasDirectory && !hasRecursive && !hasFiles) {
    throw new Error(
      'No input sources specified. Use -D <directory>, -R <directory>, or -f <files...>'
    );
  }
  
  // Validate mutual exclusivity of directory options
  if (hasDirectory && hasRecursive) {
    throw new Error(
      'Cannot specify both -D (directory) and -R (recursive) options. Use one or the other.'
    );
  }
  
  if ((hasDirectory || hasRecursive) && hasFiles) {
    logger.warn('Both directory and file options specified. Files will be processed in addition to directory scan.');
  }
}

/**
 * Validate file extensions (optional utility)
 */
export function validateFileExtensions(extensions: string[]): string[] {
  const validExtensions = extensions
    .map(ext => ext.trim().toLowerCase())
    .filter(ext => ext.startsWith('.'))
    .filter(ext => ext.length > 1);
  
  const invalidExtensions = extensions.filter(ext => !validExtensions.includes(ext.toLowerCase()));
  
  if (invalidExtensions.length > 0) {
    logger.warn(`Invalid extensions ignored: ${invalidExtensions.join(', ')}`);
  }
  
  return validExtensions;
}

/**
 * Normalize and validate CLI options
 */
export function normalizeCliOptions(rawOptions: any): any {
  const normalized = { ...rawOptions };
  
  // Normalize MIME types if provided
  if (normalized.mime) {
    try {
      normalized.mimeTypes = validateMimeTypes(normalized.mime);
    } catch (error) {
      logger.error(`MIME type validation failed: ${(error as Error).message}`);
      throw error;
    }
  }
  
  // Normalize output path if provided
  if (normalized.output) {
    try {
      normalized.outputPath = validateOutputPath(normalized.output);
    } catch (error) {
      logger.error(`Output path validation failed: ${(error as Error).message}`);
      throw error;
    }
  }
  
  // Validate input sources
  try {
    validateInputSources(normalized);
  } catch (error) {
    logger.error(`Input validation failed: ${(error as Error).message}`);
    throw error;
  }
  
  return normalized;
}