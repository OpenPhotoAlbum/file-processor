import { Logger } from '../../utils/logging/index.js';
import { createValidationErrorFactory, createSystemErrorFactory } from '../../utils/errors/factories.js';
import { ExifExtractor } from '../../utils/extractors/exif.js';
import { getProcessor } from '../../pipeline/router.js';
import { HeritageProcessor } from '../../processors/heritage.processor.js';
/**
 * ValidationService - Core photo validation and type detection
 *
 * Detects photo types (post-digital vs heritage-scan) and runs validation rules
 * against photos to ensure they meet quality and completeness standards.
 */
export class ValidationService {
    logger = new Logger('ValidationService');
    validationErrors = createValidationErrorFactory(this.logger);
    systemErrors = createSystemErrorFactory(this.logger);
    exifExtractor = new ExifExtractor();
    /**
     * Detect photo type based on metadata and file characteristics
     */
    async detectPhotoType(file) {
        const evidence = [];
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
                }
                catch (exifError) {
                    evidence.push('EXIF extraction failed - using router detection only');
                }
                return {
                    type: 'heritage-scan',
                    confidence: 'high',
                    evidence
                };
            }
            else {
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
                }
                catch (exifError) {
                    evidence.push('EXIF extraction failed - using router detection only');
                }
                return {
                    type: 'post-digital',
                    confidence: 'high',
                    evidence
                };
            }
        }
        catch (routerError) {
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
    getValidationRules(photoType) {
        if (photoType === 'post-digital') {
            return this.getPostDigitalRules();
        }
        else {
            return this.getHeritageScanRules();
        }
    }
    /**
     * Post-digital photo validation rules
     */
    getPostDigitalRules() {
        return [
            // Critical rules (7 total)
            {
                id: 'pd-critical-file-readable',
                name: 'File Readable',
                description: 'File can be opened and read',
                category: 'critical',
                weight: 10,
                validate: async (file) => {
                    try {
                        const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
                        return {
                            passed: true,
                            score: 10,
                            message: 'File successfully read'
                        };
                    }
                    catch (error) {
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
                validate: async (file) => {
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
                validate: async (file) => {
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
                        }
                        else {
                            return {
                                passed: false,
                                score: 0,
                                message: 'Missing or invalid dimensions'
                            };
                        }
                    }
                    catch (error) {
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
                validate: async (file) => {
                    try {
                        const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
                        if (exifData.timestamps?.dateTimeOriginal || exifData.timestamps?.createDate) {
                            const timestamp = exifData.timestamps.dateTimeOriginal || exifData.timestamps.createDate;
                            return {
                                passed: true,
                                score: 10,
                                message: `Timestamp present: ${timestamp}`
                            };
                        }
                        else {
                            return {
                                passed: false,
                                score: 0,
                                message: 'No capture or creation timestamp found'
                            };
                        }
                    }
                    catch (error) {
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
                validate: async (file) => {
                    try {
                        const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
                        const megapixels = exifData.image.megapixels || 0;
                        const passed = megapixels >= 0.5;
                        return {
                            passed,
                            score: passed ? 10 : 0,
                            message: passed ? `Resolution adequate: ${megapixels}MP` : `Resolution too low: ${megapixels}MP (minimum 0.5MP)`
                        };
                    }
                    catch (error) {
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
                validate: async (file) => {
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
                validate: async (file) => {
                    const passed = !!file.hash && file.hash.length > 0;
                    return {
                        passed,
                        score: passed ? 10 : 0,
                        message: passed ? 'File hash present' : 'File hash missing'
                    };
                }
            }
        ];
    }
    /**
     * Heritage-scan photo validation rules
     */
    getHeritageScanRules() {
        return [
            // Critical rules (6 total)
            {
                id: 'hs-critical-file-readable',
                name: 'File Readable',
                description: 'Scanned file can be opened and read',
                category: 'critical',
                weight: 10,
                validate: async (file) => {
                    try {
                        const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
                        return {
                            passed: true,
                            score: 10,
                            message: 'Scanned file successfully read'
                        };
                    }
                    catch (error) {
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
                validate: async (file) => {
                    try {
                        const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
                        if (exifData.heritage?.digitalSourceType?.includes('Scanned')) {
                            return {
                                passed: true,
                                score: 10,
                                message: `Heritage metadata present: ${exifData.heritage.digitalSourceType}`
                            };
                        }
                        else {
                            return {
                                passed: false,
                                score: 0,
                                message: 'No heritage scan metadata found'
                            };
                        }
                    }
                    catch (error) {
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
                validate: async (file) => {
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
                    }
                    catch (error) {
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
                validate: async (file) => {
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
                validate: async (file) => {
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
                        }
                        else {
                            return {
                                passed: false,
                                score: 0,
                                message: 'Missing or invalid scan dimensions'
                            };
                        }
                    }
                    catch (error) {
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
                validate: async (file) => {
                    const size = file.size;
                    // Heritage scans should be larger (minimum 100KB, maximum 500MB)
                    const passed = size >= 100 * 1024 && size <= 500 * 1024 * 1024;
                    return {
                        passed,
                        score: passed ? 10 : 0,
                        message: passed ? `Heritage file size OK: ${Math.round(size / (1024 * 1024))}MB` : `Heritage file size issue: ${Math.round(size / 1024)}KB`
                    };
                }
            }
        ];
    }
    /**
     * Run validation against a photo
     */
    async validatePhoto(file) {
        this.logger.info('Starting photo validation', { path: file.path });
        // 1. Detect photo type
        const photoType = await this.detectPhotoType(file);
        // 2. Get appropriate rules
        let rules = [];
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
            }
            catch (error) {
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
        // 4. Calculate scores and summary
        const summary = {
            critical: { passed: 0, total: 0 },
            quality: { passed: 0, total: 0 },
            bonus: { passed: 0, total: 0 },
            expected: { passed: 0, total: 0 }
        };
        let totalScore = 0;
        let maxScore = 0;
        for (const rule of validatedRules) {
            summary[rule.category].total++;
            if (rule.result.passed) {
                summary[rule.category].passed++;
            }
            totalScore += rule.result.score;
            maxScore += rule.weight;
        }
        const overallScore = maxScore > 0 ? Math.round((totalScore / maxScore) * 100) : 0;
        // 5. Determine if photo passes (all critical rules must pass)
        const criticalPassed = summary.critical.passed === summary.critical.total;
        const passed = criticalPassed && overallScore >= 70; // 70% threshold for overall passing
        const report = {
            file,
            photoType,
            rules: validatedRules,
            overallScore,
            passed,
            summary
        };
        this.logger.info('Photo validation completed', {
            path: file.path,
            photoType: photoType.type,
            overallScore,
            passed,
            criticalRulesPassed: `${summary.critical.passed}/${summary.critical.total}`
        });
        return report;
    }
    /**
     * Simple pass/fail validation for critical requirements only
     */
    async validateCriticalRequirements(file) {
        const report = await this.validatePhoto(file);
        const failures = [];
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
//# sourceMappingURL=index.js.map