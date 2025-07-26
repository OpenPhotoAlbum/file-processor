/**
 * MIME type configuration utilities
 * Handles filtering supported MIME types based on environment variables
 */

import { SupportedMimeType } from '../types/media.js';
import { Logger } from './logging/index.js';

const logger = new Logger('MIME Config');

/**
 * Get the list of enabled MIME types based on environment configuration
 * Users can restrict supported types via ENABLED_MIME_TYPES env var
 */
export function getEnabledMimeTypes(): string[] {
  // Get all supported MIME types from enum
  const allSupported = Object.values(SupportedMimeType);
  
  // Check if user wants to filter types
  const enabledTypesEnv = process.env.ENABLED_MIME_TYPES;
  
  if (!enabledTypesEnv) {
    // No filtering - return all supported types
    logger.debug('No MIME type filtering configured, using all supported types', {
      count: allSupported.length,
      types: allSupported
    });
    return allSupported;
  }
  
  // Parse user configuration
  const requestedTypes = enabledTypesEnv
    .split(',')
    .map(t => t.trim().toLowerCase())
    .filter(t => t.length > 0);
  
  // Validate that all requested types are actually supported
  const validTypes: string[] = [];
  const invalidTypes: string[] = [];
  
  for (const requestedType of requestedTypes) {
    const isSupported = allSupported.some(supported => 
      supported.toLowerCase() === requestedType
    );
    
    if (isSupported) {
      // Find the correct case version from the enum
      const correctCase = allSupported.find(supported => 
        supported.toLowerCase() === requestedType
      );
      if (correctCase) {
        validTypes.push(correctCase);
      }
    } else {
      invalidTypes.push(requestedType);
    }
  }
  
  // Log configuration results
  if (invalidTypes.length > 0) {
    logger.warn('Some requested MIME types are not supported by the codebase', {
      invalidTypes,
      supportedTypes: allSupported
    });
  }
  
  if (validTypes.length === 0) {
    logger.warn('No valid MIME types in configuration, falling back to all supported types', {
      requestedTypes,
      fallbackTypes: allSupported
    });
    return allSupported;
  }
  
  logger.info('MIME type filtering configured', {
    requestedCount: requestedTypes.length,
    validCount: validTypes.length,
    enabledTypes: validTypes,
    skippedTypes: allSupported.filter(t => !validTypes.includes(t))
  });
  
  return validTypes;
}

/**
 * Check if a specific MIME type is enabled
 */
export function isMimeTypeEnabled(mimeType: string): boolean {
  const enabledTypes = getEnabledMimeTypes();
  return enabledTypes.includes(mimeType);
}

/**
 * Get all MIME types that are supported by the codebase (regardless of configuration)
 */
export function getAllSupportedMimeTypes(): string[] {
  return Object.values(SupportedMimeType);
}

/**
 * Validate that a MIME type is supported by the codebase
 */
export function isMimeTypeSupported(mimeType: string): boolean {
  return getAllSupportedMimeTypes().includes(mimeType);
}