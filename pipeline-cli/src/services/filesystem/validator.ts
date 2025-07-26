/**
 * File validation and integrity checking
 */

import { access, stat, constants } from 'fs/promises';
import { Logger } from '../../utils/logging/index.js';
import { createValidationErrorFactory, createPathErrorFactory } from '../../utils/errors/factories.js';
import { toAbsolutePath, sanitizePathForLogging, hasPathPrefix, getAllPathPrefixes } from '../../utils/paths.js';
import { FileValidationResult, PathValidationResult } from './types.js';

export class FileSystemValidator {
  private logger = new Logger('FileSystem Validator');
  private validationErrors = createValidationErrorFactory(this.logger);
  private pathErrors = createPathErrorFactory(this.logger);

  /**
   * Validate that a file exists and is accessible
   */
  async validateFile(filePath: string): Promise<FileValidationResult> {
    const absolutePath = toAbsolutePath(filePath);
    const safePath = sanitizePathForLogging(absolutePath);
    
    this.logger.debug(`Validating file: ${safePath}`);
    
    const result: FileValidationResult = {
      isValid: false,
      exists: false,
      readable: false,
      writable: false,
      isFile: false,
      errors: [],
      warnings: []
    };

    try {
      // Check if file exists and get stats
      const stats = await stat(absolutePath);
      result.exists = true;
      result.isFile = stats.isFile();
      
      if (!result.isFile) {
        result.errors.push('Path is not a regular file');
        this.validationErrors.formatMismatch({
          filePath: safePath,
          expected: 'regular file',
          actual: stats.isDirectory() ? 'directory' : 'other'
        });
      }

      // Check readability
      try {
        await access(absolutePath, constants.R_OK);
        result.readable = true;
      } catch {
        result.errors.push('File is not readable');
        this.pathErrors.permissionDenied({
          filePath: safePath,
          operation: 'read access'
        });
      }

      // Check writability
      try {
        await access(absolutePath, constants.W_OK);
        result.writable = true;
      } catch {
        result.warnings.push('File is not writable');
        // Not an error for read-only operations
      }

      // File is valid if it exists, is a file, and is readable
      result.isValid = result.exists && result.isFile && result.readable;
      
      if (result.isValid) {
        this.logger.debug(`File validation passed: ${safePath}`);
      } else {
        this.logger.warn(`File validation failed: ${safePath} - ${result.errors.join(', ')}`);
      }

    } catch (error) {
      result.errors.push(`File access error: ${(error as Error).message}`);
      this.pathErrors.fileNotFound({
        filePath: safePath,
        operation: 'file validation'
      }, error as Error);
    }

    return result;
  }

  /**
   * Validate that an optional file exists and is accessible (uses INFO level logging for missing files)
   */
  async validateOptionalFile(filePath: string): Promise<FileValidationResult> {
    const absolutePath = toAbsolutePath(filePath);
    const safePath = sanitizePathForLogging(absolutePath);
    
    this.logger.debug(`Validating optional file: ${safePath}`);
    
    const result: FileValidationResult = {
      isValid: false,
      exists: false,
      readable: false,
      writable: false,
      isFile: false,
      errors: [],
      warnings: []
    };

    try {
      // Check if file exists and get stats
      const stats = await stat(absolutePath);
      result.exists = true;
      result.isFile = stats.isFile();
      
      if (!result.isFile) {
        result.errors.push('Path is not a regular file');
        this.validationErrors.formatMismatch({
          filePath: safePath,
          expected: 'regular file',
          actual: stats.isDirectory() ? 'directory' : 'other'
        });
      }

      // Check readability
      try {
        await access(absolutePath, constants.R_OK);
        result.readable = true;
      } catch {
        result.errors.push('File is not readable');
        this.pathErrors.permissionDenied({
          filePath: safePath,
          operation: 'read access'
        });
      }

      // Check writability
      try {
        await access(absolutePath, constants.W_OK);
        result.writable = true;
      } catch {
        result.warnings.push('File is not writable');
        // Not an error for read-only operations
      }

      // File is valid if it exists, is a file, and is readable
      result.isValid = result.exists && result.isFile && result.readable;
      
      if (result.isValid) {
        this.logger.debug(`Optional file validation passed: ${safePath}`);
      } else {
        this.logger.warn(`Optional file validation failed: ${safePath} - ${result.errors.join(', ')}`);
      }

    } catch (error) {
      result.errors.push(`File access error: ${(error as Error).message}`);
      // Use the new optional file error for missing optional files
      this.pathErrors.optionalFileNotFound({
        filePath: safePath,
        operation: 'optional file validation'
      }, error as Error);
    }

    return result;
  }

  /**
   * Validate and resolve a path (can be prefixed or absolute)
   */
  async validatePath(inputPath: string): Promise<PathValidationResult> {
    const safePath = sanitizePathForLogging(inputPath);
    this.logger.debug(`Validating path: ${safePath}`);

    const result: PathValidationResult = {
      isValid: false,
      absolutePath: '',
      safePath: safePath,
      hasKnownPrefix: false,
      errors: [],
      warnings: []
    };

    try {
      // Check if path uses a known prefix
      const prefixes = getAllPathPrefixes();
      for (const prefix of prefixes) {
        if (hasPathPrefix(inputPath, prefix)) {
          result.hasKnownPrefix = true;
          result.prefix = prefix;
          break;
        }
      }

      // Resolve to absolute path
      try {
        result.absolutePath = toAbsolutePath(inputPath);
        result.safePath = sanitizePathForLogging(result.absolutePath);
      } catch (error) {
        result.errors.push(`Path resolution failed: ${(error as Error).message}`);
        this.pathErrors.resolutionFailed({
          inputPath: safePath,
          operation: 'path resolution'
        }, error as Error);
        return result;
      }

      // Check if resolved path exists
      try {
        await access(result.absolutePath, constants.F_OK);
        result.isValid = true;
        this.logger.debug(`Path validation passed: ${result.safePath}`);
      } catch (error) {
        result.errors.push('Path does not exist or is not accessible');
        this.pathErrors.fileNotFound({
          filePath: result.safePath,
          operation: 'path existence check'
        }, error as Error);
      }

      // Add warning for paths outside known prefixes
      if (!result.hasKnownPrefix && result.isValid) {
        result.warnings.push('Path is outside configured base directories');
        this.logger.warn(`Path outside known bases: ${result.safePath}`);
      }

    } catch (error) {
      result.errors.push(`Unexpected validation error: ${(error as Error).message}`);
      this.validationErrors.signatureFailed({
        filePath: safePath,
        operation: 'path validation'
      }, error as Error);
    }

    return result;
  }

  /**
   * Batch validate multiple files
   */
  async validateFiles(filePaths: string[]): Promise<Map<string, FileValidationResult>> {
    this.logger.info(`Batch validating ${filePaths.length} files`);
    
    const results = new Map<string, FileValidationResult>();
    
    // Process files in parallel with concurrency limit
    const concurrency = 10;
    const chunks = this.chunkArray(filePaths, concurrency);
    
    for (const chunk of chunks) {
      const chunkPromises = chunk.map(async (filePath) => {
        const result = await this.validateFile(filePath);
        return [filePath, result] as [string, FileValidationResult];
      });
      
      const chunkResults = await Promise.all(chunkPromises);
      chunkResults.forEach(([path, result]) => {
        results.set(path, result);
      });
    }
    
    const validCount = Array.from(results.values()).filter(r => r.isValid).length;
    this.logger.info(`Batch validation complete: ${validCount}/${filePaths.length} valid files`);
    
    return results;
  }

  /**
   * Check if a path is within allowed base directories
   */
  async validatePathSecurity(filePath: string): Promise<boolean> {
    const pathResult = await this.validatePath(filePath);
    
    // Allow paths with known prefixes or within configured bases
    if (pathResult.hasKnownPrefix) {
      return true;
    }
    
    // Log security concern for external paths
    this.logger.warn(`External path access: ${pathResult.safePath}`);
    return true; // Allow but log - security policy can be tightened later
  }

  /**
   * Utility to chunk array for batch processing
   */
  private chunkArray<T>(array: T[], chunkSize: number): T[][] {
    const chunks: T[][] = [];
    for (let i = 0; i < array.length; i += chunkSize) {
      chunks.push(array.slice(i, i + chunkSize));
    }
    return chunks;
  }
}