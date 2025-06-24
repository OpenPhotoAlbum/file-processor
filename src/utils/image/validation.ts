/**
 * Image validation utilities
 * Shared validation logic that can be used by any image processor
 */

import { MediaFile } from '../../types/media.js';
import { stat } from 'fs/promises';
import { createReadStream } from 'fs';

/**
 * File signature constants (magic bytes) for image format detection
 */
const FILE_SIGNATURES = {
  JPEG: 'ffd8ff',
  PNG: '89504e470d0a1a0a',
  GIF_87A: '474946383761',
  GIF_89A: '474946383961', 
  TIFF_LITTLE_ENDIAN: '49492a00',
  TIFF_BIG_ENDIAN: '4d4d002a',
  BMP: '424d',
  WEBP_RIFF: '52494646',
  WEBP_WEBP: '57454250',
  HEIC_FTYP: '66747970',
  HEIC_HEIC: '68656963',
  HEIC_HEIX: '68656978',
  HEIC_MIF1: '6d696631'
} as const;

export interface ValidationResult {
  isValid: boolean;
  errors: string[];
  warnings: string[];
  detectedMimeType?: string;
  fileSignature?: string;
}

/**
 * Comprehensive image validation utilities
 */
export class ImageValidator {
  
  /**
   * Run all validation checks
   */
  async validateImage(file: MediaFile): Promise<ValidationResult> {
    const result: ValidationResult = {
      isValid: true,
      errors: [],
      warnings: []
    };
    
    // 1. Basic validation
    const basicResult = await this.basicValidation(file);
    this.mergeResults(result, basicResult);
    
    // 2. File signature validation
    const signatureResult = await this.validateFileSignature(file);
    this.mergeResults(result, signatureResult);
    result.detectedMimeType = signatureResult.detectedMimeType;
    result.fileSignature = signatureResult.fileSignature;
    
    // 3. Integrity validation
    const integrityResult = await this.validateIntegrity(file);
    this.mergeResults(result, integrityResult);
    
    result.isValid = result.errors.length === 0;
    return result;
  }
  
  /**
   * Basic file validation
   */
  async basicValidation(file: MediaFile): Promise<ValidationResult> {
    const result: ValidationResult = { isValid: true, errors: [], warnings: [] };
    
    // Check file size
    if (file.size === 0) {
      result.errors.push('File is empty');
    } else if (file.size > 100 * 1024 * 1024) { // 100MB
      result.errors.push(`File too large: ${(file.size / 1024 / 1024).toFixed(1)}MB`);
    }
    
    // Check file accessibility
    try {
      const stats = await stat(file.absolutePath);
      if (!stats.isFile()) {
        result.errors.push('Not a regular file');
      }
    } catch (error) {
      result.errors.push(`Cannot access file: ${error}`);
    }
    
    return result;
  }
  
  /**
   * Validate file signature matches content
   */
  async validateFileSignature(file: MediaFile): Promise<ValidationResult & { detectedMimeType?: string; fileSignature?: string }> {
    const result: ValidationResult & { detectedMimeType?: string; fileSignature?: string } = {
      isValid: true,
      errors: [],
      warnings: []
    };
    
    try {
      const signature = await this.readFileSignature(file.absolutePath);
      const detectedMime = this.signatureToMimeType(signature);
      
      result.fileSignature = signature;
      result.detectedMimeType = detectedMime;
      
      if (signature === 'unknown') {
        result.errors.push('Unknown or invalid file signature');
      } else if (detectedMime && detectedMime !== file.mimeType) {
        result.warnings.push(`MIME type mismatch: declared ${file.mimeType}, detected ${detectedMime}`);
      }
      
    } catch (error) {
      result.errors.push(`Cannot read file signature: ${error}`);
    }
    
    return result;
  }
  
  /**
   * Check file integrity
   */
  async validateIntegrity(file: MediaFile): Promise<ValidationResult> {
    const result: ValidationResult = { isValid: true, errors: [], warnings: [] };
    
    try {
      const bytesRead = await this.readFileCompletely(file.absolutePath);
      
      if (bytesRead !== file.size) {
        result.errors.push(`File size mismatch: expected ${file.size}, read ${bytesRead} bytes`);
      }
      
    } catch (error) {
      result.errors.push(`File integrity check failed: ${error}`);
    }
    
    return result;
  }
  
  /**
   * Read file signature (magic bytes)
   */
  private async readFileSignature(filePath: string): Promise<string> {
    const buffer = Buffer.alloc(20); // Read more bytes for complex formats
    
    const stream = createReadStream(filePath, { start: 0, end: 19 });
    await new Promise<void>((resolve, reject) => {
      let offset = 0;
      stream.on('data', (chunk) => {
        const buf = chunk instanceof Buffer ? chunk : Buffer.from(chunk);
        buf.copy(buffer, offset);
        offset += buf.length;
      });
      stream.on('end', () => resolve());
      stream.on('error', reject);
    });
    
    return this.detectSignature(buffer);
  }
  
  /**
   * Detect file type from magic bytes
   */
  private detectSignature(buffer: Buffer): string {
    const hex = buffer.toString('hex').toLowerCase();
    
    // JPEG
    if (hex.startsWith(FILE_SIGNATURES.JPEG)) return 'jpeg';
    
    // PNG
    if (hex.startsWith(FILE_SIGNATURES.PNG)) return 'png';
    
    // GIF (both 87a and 89a versions)
    if (hex.startsWith(FILE_SIGNATURES.GIF_87A) || hex.startsWith(FILE_SIGNATURES.GIF_89A)) return 'gif';
    
    // TIFF (little-endian and big-endian)
    if (hex.startsWith(FILE_SIGNATURES.TIFF_LITTLE_ENDIAN) || hex.startsWith(FILE_SIGNATURES.TIFF_BIG_ENDIAN)) return 'tiff';
    
    // HEIC/HEIF (check ftyp box at offset 4)
    if (hex.substring(8, 16) === FILE_SIGNATURES.HEIC_FTYP) {
      const brand = hex.substring(16, 24);
      const validBrands = [FILE_SIGNATURES.HEIC_HEIC, FILE_SIGNATURES.HEIC_HEIX, FILE_SIGNATURES.HEIC_MIF1];
      if (validBrands.includes(brand as typeof FILE_SIGNATURES.HEIC_HEIC)) {
        return 'heic';
      }
    }
    
    // BMP
    if (hex.startsWith(FILE_SIGNATURES.BMP)) return 'bmp';
    
    // WebP (RIFF + WebP signature)
    if (hex.startsWith(FILE_SIGNATURES.WEBP_RIFF) && hex.substring(16, 24) === FILE_SIGNATURES.WEBP_WEBP) {
      return 'webp';
    }
    
    return 'unknown';
  }
  
  /**
   * Map signature to MIME type
   */
  private signatureToMimeType(signature: string): string | undefined {
    const map: Record<string, string> = {
      'jpeg': 'image/jpeg',
      'png': 'image/png',
      'gif': 'image/gif',
      'tiff': 'image/tiff',
      'heic': 'image/heic',
      'bmp': 'image/bmp',
      'webp': 'image/webp'
    };
    
    return map[signature] || undefined;
  }
  
  /**
   * Read entire file to check integrity
   */
  private async readFileCompletely(filePath: string): Promise<number> {
    const stream = createReadStream(filePath);
    let bytesRead = 0;
    
    await new Promise<void>((resolve, reject) => {
      stream.on('data', (chunk) => {
        const buf = chunk instanceof Buffer ? chunk : Buffer.from(chunk);
        bytesRead += buf.length;
      });
      stream.on('end', () => resolve());
      stream.on('error', reject);
    });
    
    return bytesRead;
  }
  
  /**
   * Merge validation results
   */
  private mergeResults(target: ValidationResult, source: ValidationResult): void {
    target.errors.push(...source.errors);
    target.warnings.push(...source.warnings);
  }
}