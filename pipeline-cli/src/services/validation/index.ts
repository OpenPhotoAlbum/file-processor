import { MediaFile } from '../../types/media.js';
import { Logger } from '../../utils/logging/index.js';
import { createValidationErrorFactory, createSystemErrorFactory } from '../../utils/errors/factories.js';
import { ExifExtractor } from '../../utils/extractors/exif.js';
import { getProcessor } from '../../pipeline/router.js';
import { HeritageProcessor } from '../../processors/heritage.processor.js';

export interface ValidationRule {
  id: string;
  name: string;
  description: string;
  category: 'critical' | 'quality' | 'bonus' | 'expected';
  weight: number;
  validate: (file: MediaFile, metadata?: any) => Promise<ValidationResult>;
}

export interface ValidationResult {
  passed: boolean;
  score: number;
  message: string;
  details?: string;
}

export interface PhotoTypeDetection {
  type: 'post-digital' | 'heritage-scan' | 'unknown';
  confidence: 'high' | 'medium' | 'low';
  evidence: string[];
}

export interface ScoringConfig {
  thresholds: {
    critical: number;    // All critical rules must pass (100%)
    quality: number;     // Quality threshold (default: 70%)
    bonus: number;       // Bonus threshold (default: 50%)
    expected: number;    // Expected threshold (default: 80%)
    overall: number;     // Overall weighted score threshold (default: 75%)
  };
  weights: {
    critical: number;    // Weight multiplier for critical rules (default: 3.0)
    quality: number;     // Weight multiplier for quality rules (default: 2.0)
    bonus: number;       // Weight multiplier for bonus rules (default: 1.0)
    expected: number;    // Weight multiplier for expected rules (default: 2.5)
  };
}

export interface ValidationReport {
  file: MediaFile;
  photoType: PhotoTypeDetection;
  rules: Array<ValidationRule & { result: ValidationResult }>;
  overallScore: number;
  weightedScore: number;
  passed: boolean;
  config: ScoringConfig;
  summary: {
    critical: { passed: number; total: number; score: number; maxScore: number };
    quality: { passed: number; total: number; score: number; maxScore: number };
    bonus: { passed: number; total: number; score: number; maxScore: number };
    expected: { passed: number; total: number; score: number; maxScore: number };
  };
  breakdown: {
    categoryScores: Record<string, number>;
    weightedCategoryScores: Record<string, number>;
    passThresholds: Record<string, boolean>;
  };
}

/**
 * ValidationService - Core photo validation and type detection
 * 
 * Detects photo types (post-digital vs heritage-scan) and runs validation rules
 * against photos to ensure they meet quality and completeness standards.
 */
export class ValidationService {
  private logger = new Logger('ValidationService');
  private validationErrors = createValidationErrorFactory(this.logger);
  private systemErrors = createSystemErrorFactory(this.logger);
  private exifExtractor = new ExifExtractor();
  private config: ScoringConfig;

  constructor(config?: Partial<ScoringConfig>) {
    this.config = this.getDefaultConfig();
    if (config) {
      this.config = this.mergeConfig(this.config, config);
    }
  }

  /**
   * Get default scoring configuration
   */
  private getDefaultConfig(): ScoringConfig {
    return {
      thresholds: {
        critical: 100,    // All critical rules must pass
        quality: 70,      // 70% of quality rules must pass
        bonus: 50,        // 50% of bonus rules must pass
        expected: 80,     // 80% of expected rules must pass
        overall: 75       // 75% overall weighted score to pass
      },
      weights: {
        critical: 3.0,    // Critical rules weighted 3x
        quality: 2.0,     // Quality rules weighted 2x
        bonus: 1.0,       // Bonus rules normal weight
        expected: 2.5     // Expected rules weighted 2.5x
      }
    };
  }

  /**
   * Merge configuration with defaults
   */
  private mergeConfig(defaultConfig: ScoringConfig, partialConfig: Partial<ScoringConfig>): ScoringConfig {
    return {
      thresholds: { ...defaultConfig.thresholds, ...partialConfig.thresholds },
      weights: { ...defaultConfig.weights, ...partialConfig.weights }
    };
  }

  /**
   * Update scoring configuration
   */
  updateConfig(config: Partial<ScoringConfig>): void {
    this.config = this.mergeConfig(this.config, config);
    this.logger.info('Validation config updated', { config: this.config });
  }

  /**
   * Detect photo type based on metadata and file characteristics
   */
  async detectPhotoType(file: MediaFile): Promise<PhotoTypeDetection> {
    const evidence: string[] = [];
    
    try {
      // Use existing router logic to detect heritage photos
      const processor = await getProcessor(file.mimeType, file.absolutePath);
      
      if (processor instanceof HeritageProcessor) {
        // Heritage processor was selected - this is a heritage-scan photo
        evidence.push('Selected HeritageProcessor via router');
        
        // Extract EXIF to get more evidence
        try {
          const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
          
          if (exifData.heritage?.digitalSourceType?.includes('Scanned')) {
            evidence.push(`XMP digitalSourceType: ${exifData.heritage.digitalSourceType}`);
          }
          
          if (exifData.heritage?.creator) {
            evidence.push(`XMP creator field present: ${exifData.heritage.creator}`);
          }
          
          if (exifData.heritage?.documentName) {
            evidence.push(`XMP documentName present: ${exifData.heritage.documentName}`);
          }
          
        } catch (exifError) {
          evidence.push('EXIF extraction failed - using router detection only');
        }
        
        return {
          type: 'heritage-scan',
          confidence: 'high',
          evidence
        };
      } else {
        // Standard image/video processor was selected - this is post-digital
        evidence.push('Selected standard processor (not HeritageProcessor)');
        
        // Look for additional post-digital evidence
        try {
          const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
          
          if (exifData.camera?.make) {
            evidence.push(`Camera make detected: ${exifData.camera.make}`);
          }
          
          if (exifData.camera?.model) {
            evidence.push(`Camera model detected: ${exifData.camera.model}`);
          }
          
          if (exifData.gps?.latitude && exifData.gps?.longitude) {
            evidence.push('GPS coordinates present');
          }
          
          if (exifData.timestamps?.dateTimeOriginal) {
            evidence.push('Original capture timestamp present');
          }
          
        } catch (exifError) {
          evidence.push('EXIF extraction failed - using router detection only');
        }
        
        return {
          type: 'post-digital',
          confidence: 'high',
          evidence
        };
      }
      
    } catch (routerError) {
      // Router failed - fall back to basic detection
      evidence.push(`Router detection failed: ${routerError instanceof Error ? routerError.message : 'Unknown error'}`);
      
      return {
        type: 'unknown',
        confidence: 'low',
        evidence
      };
    }
  }

  /**
   * Get validation rules for a specific photo type
   */
  getValidationRules(photoType: 'post-digital' | 'heritage-scan'): ValidationRule[] {
    if (photoType === 'post-digital') {
      return this.getPostDigitalRules();
    } else {
      return this.getHeritageScanRules();
    }
  }

  /**
   * Post-digital photo validation rules
   */
  private getPostDigitalRules(): ValidationRule[] {
    return [
      // Critical rules (7 total)
      {
        id: 'pd-critical-file-readable',
        name: 'File Readable',
        description: 'File can be opened and read',
        category: 'critical',
        weight: 10,
        validate: async (file: MediaFile) => {
          try {
            const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
            return {
              passed: true,
              score: 10,
              message: 'File successfully read'
            };
          } catch (error) {
            return {
              passed: false,
              score: 0,
              message: 'File cannot be read',
              details: error instanceof Error ? error.message : 'Unknown error'
            };
          }
        }
      },
      {
        id: 'pd-critical-valid-format',
        name: 'Valid Image Format',
        description: 'File is a supported image format',
        category: 'critical',
        weight: 10,
        validate: async (file: MediaFile) => {
          const supportedTypes = ['image/jpeg', 'image/jpg', 'image/png', 'image/heic', 'image/gif', 'image/tiff', 'image/webp'];
          const passed = supportedTypes.includes(file.mimeType.toLowerCase());
          return {
            passed,
            score: passed ? 10 : 0,
            message: passed ? `Valid format: ${file.mimeType}` : `Unsupported format: ${file.mimeType}`
          };
        }
      },
      {
        id: 'pd-critical-has-dimensions',
        name: 'Has Dimensions',
        description: 'Image has valid width and height',
        category: 'critical',
        weight: 10,
        validate: async (file: MediaFile) => {
          try {
            const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
            const width = exifData.image.width;
            const height = exifData.image.height;
            
            if (width && height && width > 0 && height > 0) {
              return {
                passed: true,
                score: 10,
                message: `Valid dimensions: ${width}x${height}`
              };
            } else {
              return {
                passed: false,
                score: 0,
                message: 'Missing or invalid dimensions'
              };
            }
          } catch (error) {
            return {
              passed: false,
              score: 0,
              message: 'Could not extract dimensions',
              details: error instanceof Error ? error.message : 'Unknown error'
            };
          }
        }
      },
      {
        id: 'pd-critical-has-timestamp',
        name: 'Has Timestamp',
        description: 'Image has capture or creation timestamp',
        category: 'critical',
        weight: 10,
        validate: async (file: MediaFile) => {
          try {
            // First check for metadata sidecar (created by auto-fix)
            const sidecarPath = `${file.absolutePath}.json`;
            try {
              const sidecarContent = await import('fs/promises').then(fs => fs.readFile(sidecarPath, 'utf-8'));
              const metadata = JSON.parse(sidecarContent);
              
              if (metadata.timestamps?.primary?.timestamp || metadata.timestamps?.capture?.timestamp) {
                const timestamp = metadata.timestamps.primary?.timestamp || metadata.timestamps.capture?.timestamp;
                return {
                  passed: true,
                  score: 10,
                  message: `Timestamp present in metadata: ${timestamp}`
                };
              }
            } catch {
              // No sidecar or invalid JSON, fall back to EXIF
            }
            
            // Fallback to direct EXIF extraction
            const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
            
            if (exifData.timestamps?.dateTimeOriginal || exifData.timestamps?.createDate) {
              const timestamp = exifData.timestamps.dateTimeOriginal || exifData.timestamps.createDate;
              return {
                passed: true,
                score: 10,
                message: `Timestamp present in EXIF: ${timestamp}`
              };
            } else {
              return {
                passed: false,
                score: 0,
                message: 'No capture or creation timestamp found'
              };
            }
          } catch (error) {
            return {
              passed: false,
              score: 0,
              message: 'Could not extract timestamp',
              details: error instanceof Error ? error.message : 'Unknown error'
            };
          }
        }
      },
      {
        id: 'pd-critical-minimum-resolution',
        name: 'Minimum Resolution',
        description: 'Image meets minimum resolution requirements (>= 0.5MP)',
        category: 'critical',
        weight: 10,
        validate: async (file: MediaFile) => {
          try {
            const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
            const megapixels = exifData.image.megapixels || 0;
            const passed = megapixels >= 0.5;
            
            return {
              passed,
              score: passed ? 10 : 0,
              message: passed ? `Resolution adequate: ${megapixels}MP` : `Resolution too low: ${megapixels}MP (minimum 0.5MP)`
            };
          } catch (error) {
            return {
              passed: false,
              score: 0,
              message: 'Could not determine resolution',
              details: error instanceof Error ? error.message : 'Unknown error'
            };
          }
        }
      },
      {
        id: 'pd-critical-file-size',
        name: 'Reasonable File Size',
        description: 'File size is reasonable (not corrupted)',
        category: 'critical',
        weight: 10,
        validate: async (file: MediaFile) => {
          const size = file.size;
          // Minimum 1KB, maximum 100MB for regular photos
          const passed = size >= 1024 && size <= 100 * 1024 * 1024;
          
          return {
            passed,
            score: passed ? 10 : 0,
            message: passed ? `File size OK: ${Math.round(size / 1024)}KB` : `File size issue: ${Math.round(size / 1024)}KB`
          };
        }
      },
      {
        id: 'pd-critical-hash-present',
        name: 'File Hash Present',
        description: 'File has valid content hash for deduplication',
        category: 'critical',
        weight: 10,
        validate: async (file: MediaFile) => {
          const passed = !!file.hash && file.hash.length > 0;
          
          return {
            passed,
            score: passed ? 10 : 0,
            message: passed ? 'File hash present' : 'File hash missing'
          };
        }
      },
      
      // Quality rules (4 total)
      {
        id: 'pd-quality-camera-info',
        name: 'Camera Information Present',
        description: 'Image contains camera make and model information',
        category: 'quality',
        weight: 5,
        validate: async (file: MediaFile) => {
          try {
            // Check metadata sidecar first
            const sidecarPath = `${file.absolutePath}.json`;
            try {
              const sidecarContent = await import('fs/promises').then(fs => fs.readFile(sidecarPath, 'utf-8'));
              const metadata = JSON.parse(sidecarContent);
              
              const hasMake = !!metadata.technical?.camera?.make;
              const hasModel = !!metadata.technical?.camera?.model;
              if (hasMake && hasModel) {
                return {
                  passed: true,
                  score: 5,
                  message: `Camera: ${metadata.technical.camera.make} ${metadata.technical.camera.model}`
                };
              }
            } catch {
              // No sidecar, fall back to EXIF
            }
            
            // Fallback to EXIF
            const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
            
            const hasMake = !!exifData.camera?.make;
            const hasModel = !!exifData.camera?.model;
            const passed = hasMake && hasModel;
            
            return {
              passed,
              score: passed ? 5 : 0,
              message: passed ? `Camera: ${exifData.camera.make} ${exifData.camera.model}` : 'Camera information missing'
            };
          } catch (error) {
            return {
              passed: false,
              score: 0,
              message: 'Could not extract camera information',
              details: error instanceof Error ? error.message : 'Unknown error'
            };
          }
        }
      },
      {
        id: 'pd-quality-gps-coordinates',
        name: 'GPS Coordinates Present',
        description: 'Image contains GPS location data',
        category: 'quality',
        weight: 5,
        validate: async (file: MediaFile) => {
          try {
            // Check metadata sidecar first
            const sidecarPath = `${file.absolutePath}.json`;
            try {
              const sidecarContent = await import('fs/promises').then(fs => fs.readFile(sidecarPath, 'utf-8'));
              const metadata = JSON.parse(sidecarContent);
              
              const hasGPS = metadata.location?.primary?.coordinates;
              if (hasGPS) {
                return {
                  passed: true,
                  score: 5,
                  message: `GPS: ${hasGPS.latitude}, ${hasGPS.longitude}`
                };
              }
            } catch {
              // No sidecar, fall back to EXIF
            }
            
            // Fallback to EXIF
            const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
            
            const hasGPS = exifData.gps && exifData.gps.latitude && exifData.gps.longitude;
            
            return {
              passed: !!hasGPS,
              score: hasGPS ? 5 : 0,
              message: hasGPS ? `GPS: ${exifData.gps!.latitude}, ${exifData.gps!.longitude}` : 'No GPS coordinates found'
            };
          } catch (error) {
            return {
              passed: false,
              score: 0,
              message: 'Could not extract GPS data',
              details: error instanceof Error ? error.message : 'Unknown error'
            };
          }
        }
      },
      {
        id: 'pd-quality-exposure-settings',
        name: 'Exposure Settings Present',
        description: 'Image contains camera exposure settings (ISO, aperture, shutter)',
        category: 'quality',
        weight: 5,
        validate: async (file: MediaFile) => {
          try {
            const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
            
            const hasISO = !!exifData.settings?.iso;
            const hasAperture = !!exifData.settings?.aperture;
            const hasShutter = !!exifData.settings?.shutterSpeed;
            const count = [hasISO, hasAperture, hasShutter].filter(Boolean).length;
            
            return {
              passed: count >= 2, // At least 2 of 3 exposure settings
              score: count >= 2 ? 5 : Math.round((count / 3) * 5),
              message: `Exposure settings: ${count}/3 present (ISO: ${hasISO}, Aperture: ${hasAperture}, Shutter: ${hasShutter})`
            };
          } catch (error) {
            return {
              passed: false,
              score: 0,
              message: 'Could not extract exposure settings',
              details: error instanceof Error ? error.message : 'Unknown error'
            };
          }
        }
      },
      {
        id: 'pd-quality-color-space',
        name: 'Proper Color Space',
        description: 'Image uses standard color space (sRGB, Adobe RGB, etc.)',
        category: 'quality',
        weight: 5,
        validate: async (file: MediaFile) => {
          try {
            const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
            
            const colorSpace = exifData.image?.colorSpace;
            const standardSpaces = ['sRGB', 'Adobe RGB', 'ProPhoto RGB', 'Display P3'];
            const passed = !!colorSpace && standardSpaces.some(space => 
              colorSpace.toLowerCase().includes(space.toLowerCase())
            );
            
            return {
              passed,
              score: passed ? 5 : (colorSpace ? 2 : 0), // Partial credit if color space present but not standard
              message: colorSpace ? `Color space: ${colorSpace}` : 'No color space information'
            };
          } catch (error) {
            return {
              passed: false,
              score: 0,
              message: 'Could not extract color space information',
              details: error instanceof Error ? error.message : 'Unknown error'
            };
          }
        }
      },
      
      // Bonus rules (2 total)
      {
        id: 'pd-bonus-focal-length',
        name: 'Focal Length Information',
        description: 'Image contains lens focal length data',
        category: 'bonus',
        weight: 3,
        validate: async (file: MediaFile) => {
          try {
            const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
            
            const focalLength = exifData.settings?.focalLength;
            const passed = !!focalLength;
            
            return {
              passed,
              score: passed ? 3 : 0,
              message: passed ? `Focal length: ${focalLength}mm` : 'No focal length information'
            };
          } catch (error) {
            return {
              passed: false,
              score: 0,
              message: 'Could not extract focal length',
              details: error instanceof Error ? error.message : 'Unknown error'
            };
          }
        }
      },
      {
        id: 'pd-bonus-high-resolution',
        name: 'High Resolution Image',
        description: 'Image exceeds 8MP for excellent detail preservation',
        category: 'bonus',
        weight: 3,
        validate: async (file: MediaFile) => {
          try {
            const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
            const megapixels = exifData.image.megapixels || 0;
            const passed = megapixels >= 8.0;
            
            return {
              passed,
              score: passed ? 3 : 0,
              message: `Resolution: ${megapixels}MP ${passed ? '(High resolution)' : '(Standard resolution)'}`
            };
          } catch (error) {
            return {
              passed: false,
              score: 0,
              message: 'Could not determine resolution',
              details: error instanceof Error ? error.message : 'Unknown error'
            };
          }
        }
      }
    ];
  }

  /**
   * Heritage-scan photo validation rules
   */
  private getHeritageScanRules(): ValidationRule[] {
    return [
      // Critical rules (6 total)
      {
        id: 'hs-critical-file-readable',
        name: 'File Readable',
        description: 'Scanned file can be opened and read',
        category: 'critical',
        weight: 10,
        validate: async (file: MediaFile) => {
          try {
            const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
            return {
              passed: true,
              score: 10,
              message: 'Scanned file successfully read'
            };
          } catch (error) {
            return {
              passed: false,
              score: 0,
              message: 'Scanned file cannot be read',
              details: error instanceof Error ? error.message : 'Unknown error'
            };
          }
        }
      },
      {
        id: 'hs-critical-heritage-metadata',
        name: 'Heritage Metadata Present',
        description: 'Has XMP heritage metadata indicating scan source',
        category: 'critical',
        weight: 10,
        validate: async (file: MediaFile) => {
          try {
            const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
            
            if (exifData.heritage?.digitalSourceType?.includes('Scanned')) {
              return {
                passed: true,
                score: 10,
                message: `Heritage metadata present: ${exifData.heritage.digitalSourceType}`
              };
            } else {
              return {
                passed: false,
                score: 0,
                message: 'No heritage scan metadata found'
              };
            }
          } catch (error) {
            return {
              passed: false,
              score: 0,
              message: 'Could not extract heritage metadata',
              details: error instanceof Error ? error.message : 'Unknown error'
            };
          }
        }
      },
      {
        id: 'hs-critical-scan-resolution',
        name: 'Adequate Scan Resolution',
        description: 'Scan resolution adequate for heritage preservation (>= 600 DPI equivalent)',
        category: 'critical',
        weight: 10,
        validate: async (file: MediaFile) => {
          try {
            const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
            const megapixels = exifData.image.megapixels || 0;
            // For heritage scans, we want higher resolution (typically 2MP+ for decent quality)
            const passed = megapixels >= 2.0;
            
            return {
              passed,
              score: passed ? 10 : 0,
              message: passed ? `Scan resolution adequate: ${megapixels}MP` : `Scan resolution low: ${megapixels}MP (heritage photos need >= 2MP)`
            };
          } catch (error) {
            return {
              passed: false,
              score: 0,
              message: 'Could not determine scan resolution',
              details: error instanceof Error ? error.message : 'Unknown error'
            };
          }
        }
      },
      {
        id: 'hs-critical-valid-format',
        name: 'Valid Heritage Format',
        description: 'File format suitable for long-term heritage preservation',
        category: 'critical',
        weight: 10,
        validate: async (file: MediaFile) => {
          // For heritage, prefer TIFF or high-quality JPEG
          const heritageFormats = ['image/tiff', 'image/jpeg', 'image/jpg'];
          const passed = heritageFormats.includes(file.mimeType.toLowerCase());
          return {
            passed,
            score: passed ? 10 : 0,
            message: passed ? `Heritage-suitable format: ${file.mimeType}` : `Format not ideal for heritage: ${file.mimeType}`
          };
        }
      },
      {
        id: 'hs-critical-has-dimensions',
        name: 'Has Scan Dimensions',
        description: 'Scanned image has valid dimensions',
        category: 'critical',
        weight: 10,
        validate: async (file: MediaFile) => {
          try {
            const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
            const width = exifData.image.width;
            const height = exifData.image.height;
            
            if (width && height && width > 0 && height > 0) {
              return {
                passed: true,
                score: 10,
                message: `Valid scan dimensions: ${width}x${height}`
              };
            } else {
              return {
                passed: false,
                score: 0,
                message: 'Missing or invalid scan dimensions'
              };
            }
          } catch (error) {
            return {
              passed: false,
              score: 0,
              message: 'Could not extract scan dimensions',
              details: error instanceof Error ? error.message : 'Unknown error'
            };
          }
        }
      },
      {
        id: 'hs-critical-file-integrity',
        name: 'File Integrity',
        description: 'Heritage scan file has reasonable size and is not corrupted',
        category: 'critical',
        weight: 10,
        validate: async (file: MediaFile) => {
          const size = file.size;
          // Heritage scans should be larger (minimum 100KB, maximum 500MB)
          const passed = size >= 100 * 1024 && size <= 500 * 1024 * 1024;
          
          return {
            passed,
            score: passed ? 10 : 0,
            message: passed ? `Heritage file size OK: ${Math.round(size / (1024 * 1024))}MB` : `Heritage file size issue: ${Math.round(size / 1024)}KB`
          };
        }
      },
      
      // Quality rules (3 total)
      {
        id: 'hs-quality-scan-dpi',
        name: 'Adequate Scan DPI',
        description: 'Scan resolution metadata indicates adequate DPI (≥ 300 DPI)',
        category: 'quality',
        weight: 5,
        validate: async (file: MediaFile) => {
          try {
            const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
            
            const xResolution = 0; // Not available in current image interface
            const yResolution = 0; // Not available in current image interface
            const avgDPI = xResolution && yResolution ? (xResolution + yResolution) / 2 : 0;
            const passed = avgDPI >= 300;
            
            return {
              passed,
              score: passed ? 5 : Math.min(Math.round((avgDPI / 300) * 5), 4), // Partial credit up to 4/5
              message: avgDPI > 0 ? `Scan DPI: ${Math.round(avgDPI)}` : 'No DPI information in scan'
            };
          } catch (error) {
            return {
              passed: false,
              score: 0,
              message: 'Could not extract scan DPI information',
              details: error instanceof Error ? error.message : 'Unknown error'
            };
          }
        }
      },
      {
        id: 'hs-quality-heritage-dating',
        name: 'Heritage Dating Information',
        description: 'Contains historical date information (creation or digitization date)',
        category: 'quality',
        weight: 5,
        validate: async (file: MediaFile) => {
          try {
            const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
            
            const hasOriginalDate = !!exifData.timestamps?.dateTimeOriginal;
            const hasCreateDate = !!exifData.timestamps?.createDate;
            const hasHeritageDate = false; // Not in current heritage interface
            const passed = hasOriginalDate || hasCreateDate || hasHeritageDate;
            
            let message = 'No dating information found';
            if (hasHeritageDate) {
              message = 'Heritage date found';
            } else if (hasOriginalDate) {
              message = `Original date: ${exifData.timestamps.dateTimeOriginal}`;
            } else if (hasCreateDate) {
              message = `Creation date: ${exifData.timestamps.createDate}`;
            }
            
            return {
              passed,
              score: passed ? 5 : 0,
              message
            };
          } catch (error) {
            return {
              passed: false,
              score: 0,
              message: 'Could not extract dating information',
              details: error instanceof Error ? error.message : 'Unknown error'
            };
          }
        }
      },
      {
        id: 'hs-quality-color-accuracy',
        name: 'Color Profile for Heritage',
        description: 'Has appropriate color profile for heritage preservation',
        category: 'quality',
        weight: 5,
        validate: async (file: MediaFile) => {
          try {
            const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
            
            const colorSpace = exifData.image?.colorSpace;
            // Heritage scans benefit from wider color spaces for accurate reproduction
            const heritageSpaces = ['Adobe RGB', 'ProPhoto RGB', 'sRGB'];
            const passed = !!colorSpace && heritageSpaces.some(space => 
              colorSpace.toLowerCase().includes(space.toLowerCase())
            );
            
            return {
              passed,
              score: passed ? 5 : (colorSpace ? 2 : 0), // Partial credit for any color space
              message: colorSpace ? `Color profile: ${colorSpace}` : 'No color profile information'
            };
          } catch (error) {
            return {
              passed: false,
              score: 0,
              message: 'Could not extract color profile information',
              details: error instanceof Error ? error.message : 'Unknown error'
            };
          }
        }
      },
      
      // Expected rules (3 total)
      {
        id: 'hs-expected-creator-info',
        name: 'Creator/Scanner Information',
        description: 'Contains information about who scanned or digitized the heritage item',
        category: 'expected',
        weight: 4,
        validate: async (file: MediaFile) => {
          try {
            const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
            
            const hasCreator = !!exifData.heritage?.creator;
            const hasArtist = false; // Not in current interface
            const hasCopyright = !!exifData.heritage?.copyright;
            const passed = hasCreator || hasArtist || hasCopyright;
            
            let message = 'No creator/scanner information found';
            if (hasCreator) {
              message = `Creator: ${exifData.heritage!.creator}`;
            } else if (hasArtist) {
              message = 'Artist information found';
            } else if (hasCopyright) {
              message = `Copyright: ${exifData.heritage!.copyright}`;
            }
            
            return {
              passed,
              score: passed ? 4 : 0,
              message
            };
          } catch (error) {
            return {
              passed: false,
              score: 0,
              message: 'Could not extract creator information',
              details: error instanceof Error ? error.message : 'Unknown error'
            };
          }
        }
      },
      {
        id: 'hs-expected-document-title',
        name: 'Document Title/Description',
        description: 'Contains descriptive title or document name for heritage context',
        category: 'expected',
        weight: 4,
        validate: async (file: MediaFile) => {
          try {
            const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
            
            const hasDocumentName = !!exifData.heritage?.documentName;
            const hasTitle = false; // Not in image interface
            const hasDescription = !!exifData.heritage?.imageDescription;
            const passed = hasDocumentName || hasTitle || hasDescription;
            
            let message = 'No document title/description found';
            if (hasDocumentName) {
              message = `Document: ${exifData.heritage!.documentName}`;
            } else if (hasTitle) {
              message = 'Title information found';
            } else if (hasDescription) {
              message = `Description: ${exifData.heritage!.imageDescription}`;
            }
            
            return {
              passed,
              score: passed ? 4 : 0,
              message
            };
          } catch (error) {
            return {
              passed: false,
              score: 0,
              message: 'Could not extract title/description',
              details: error instanceof Error ? error.message : 'Unknown error'
            };
          }
        }
      },
      {
        id: 'hs-expected-preservation-notes',
        name: 'Preservation Notes',
        description: 'Contains notes about preservation context or original condition',
        category: 'expected',
        weight: 4,
        validate: async (file: MediaFile) => {
          try {
            const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
            
            const hasPreservationNotes = false; // Not in current heritage interface
            const hasUserComment = !!exifData.heritage?.userComment;
            const hasInstructions = false; // Not in current interface
            const passed = hasPreservationNotes || hasUserComment || hasInstructions;
            
            let message = 'No preservation notes found';
            if (hasPreservationNotes) {
              message = 'Preservation notes found';
            } else if (hasUserComment) {
              message = `User comment: ${exifData.heritage!.userComment}`;
            } else if (hasInstructions) {
              message = 'Processing instructions found';
            }
            
            return {
              passed,
              score: passed ? 4 : 0,
              message
            };
          } catch (error) {
            return {
              passed: false,
              score: 0,
              message: 'Could not extract preservation notes',
              details: error instanceof Error ? error.message : 'Unknown error'
            };
          }
        }
      }
    ];
  }

  /**
   * Run validation against a photo
   */
  async validatePhoto(file: MediaFile): Promise<ValidationReport> {
    this.logger.info('Starting photo validation', { path: file.path });

    // 1. Detect photo type
    const photoType = await this.detectPhotoType(file);
    
    // 2. Get appropriate rules
    let rules: ValidationRule[] = [];
    if (photoType.type !== 'unknown') {
      rules = this.getValidationRules(photoType.type);
    }

    // 3. Run validation rules
    const validatedRules = [];
    for (const rule of rules) {
      try {
        const result = await rule.validate(file);
        validatedRules.push({ ...rule, result });
        
        this.logger.debug('Validation rule completed', {
          ruleId: rule.id,
          passed: result.passed,
          score: result.score
        });
      } catch (error) {
        validatedRules.push({
          ...rule,
          result: {
            passed: false,
            score: 0,
            message: 'Validation rule failed to execute',
            details: error instanceof Error ? error.message : 'Unknown error'
          }
        });
        
        this.logger.warn('Validation rule execution failed', {
          ruleId: rule.id,
          error: error instanceof Error ? error.message : 'Unknown error'
        });
      }
    }

    // 4. Calculate weighted scores and comprehensive summary
    const summary = {
      critical: { passed: 0, total: 0, score: 0, maxScore: 0 },
      quality: { passed: 0, total: 0, score: 0, maxScore: 0 },
      bonus: { passed: 0, total: 0, score: 0, maxScore: 0 },
      expected: { passed: 0, total: 0, score: 0, maxScore: 0 }
    };

    // Calculate per-category scores and totals
    for (const rule of validatedRules) {
      const category = rule.category;
      summary[category].total++;
      summary[category].score += rule.result.score;
      summary[category].maxScore += rule.weight;
      
      if (rule.result.passed) {
        summary[category].passed++;
      }
    }

    // Calculate category score percentages
    const categoryScores = {
      critical: summary.critical.maxScore > 0 ? (summary.critical.score / summary.critical.maxScore) * 100 : 0,
      quality: summary.quality.maxScore > 0 ? (summary.quality.score / summary.quality.maxScore) * 100 : 0,
      bonus: summary.bonus.maxScore > 0 ? (summary.bonus.score / summary.bonus.maxScore) * 100 : 0,
      expected: summary.expected.maxScore > 0 ? (summary.expected.score / summary.expected.maxScore) * 100 : 0
    };

    // Apply weight multipliers for final weighted scores
    const weightedCategoryScores = {
      critical: categoryScores.critical * this.config.weights.critical,
      quality: categoryScores.quality * this.config.weights.quality,
      bonus: categoryScores.bonus * this.config.weights.bonus,
      expected: categoryScores.expected * this.config.weights.expected
    };

    // Calculate overall scores
    const totalUnweightedScore = summary.critical.score + summary.quality.score + summary.bonus.score + summary.expected.score;
    const totalMaxScore = summary.critical.maxScore + summary.quality.maxScore + summary.bonus.maxScore + summary.expected.maxScore;
    const overallScore = totalMaxScore > 0 ? Math.round((totalUnweightedScore / totalMaxScore) * 100) : 0;

    const totalWeightedScore = weightedCategoryScores.critical + weightedCategoryScores.quality + 
                              weightedCategoryScores.bonus + weightedCategoryScores.expected;
    const actualMaxWeightedScore = 
      (summary.critical.maxScore * this.config.weights.critical) +
      (summary.quality.maxScore * this.config.weights.quality) + 
      (summary.bonus.maxScore * this.config.weights.bonus) +
      (summary.expected.maxScore * this.config.weights.expected);
    const weightedScore = actualMaxWeightedScore > 0 ? Math.round((totalWeightedScore / actualMaxWeightedScore) * 100) : 0;

    // 5. Check pass thresholds for each category (only apply thresholds for categories with rules)
    const passThresholds = {
      critical: categoryScores.critical >= this.config.thresholds.critical,
      quality: summary.quality.total > 0 ? categoryScores.quality >= this.config.thresholds.quality : true,
      bonus: summary.bonus.total > 0 ? categoryScores.bonus >= this.config.thresholds.bonus : true,
      expected: summary.expected.total > 0 ? categoryScores.expected >= this.config.thresholds.expected : true,
      overall: weightedScore >= this.config.thresholds.overall
    };

    // Photo passes if all category thresholds are met
    const passed = passThresholds.critical && passThresholds.quality && 
                   passThresholds.bonus && passThresholds.expected && passThresholds.overall;

    const report: ValidationReport = {
      file,
      photoType,
      rules: validatedRules,
      overallScore,
      weightedScore,
      passed,
      config: this.config,
      summary,
      breakdown: {
        categoryScores,
        weightedCategoryScores,
        passThresholds
      }
    };

    this.logger.info('Photo validation completed', {
      path: file.path,
      photoType: photoType.type,
      overallScore,
      weightedScore,
      passed,
      rulesSummary: {
        critical: `${summary.critical.passed}/${summary.critical.total} (${Math.round(categoryScores.critical)}%)`,
        quality: `${summary.quality.passed}/${summary.quality.total} (${Math.round(categoryScores.quality)}%)`,
        bonus: `${summary.bonus.passed}/${summary.bonus.total} (${Math.round(categoryScores.bonus)}%)`,
        expected: `${summary.expected.passed}/${summary.expected.total} (${Math.round(categoryScores.expected)}%)`
      },
      thresholdsPass: {
        critical: passThresholds.critical,
        quality: passThresholds.quality,
        bonus: passThresholds.bonus,
        expected: passThresholds.expected,
        overall: passThresholds.overall
      }
    });

    return report;
  }

  /**
   * Simple pass/fail validation for critical requirements only
   */
  async validateCriticalRequirements(file: MediaFile): Promise<{ passed: boolean; failures: string[] }> {
    const report = await this.validatePhoto(file);
    
    const failures: string[] = [];
    
    // Check critical rules only
    for (const rule of report.rules) {
      if (rule.category === 'critical' && !rule.result.passed) {
        failures.push(`${rule.name}: ${rule.result.message}`);
      }
    }
    
    return {
      passed: failures.length === 0,
      failures
    };
  }
}

export { AutoFixService, AutoFixConfig, AutoFixReport, AutoFixResult } from './AutoFixService.js';