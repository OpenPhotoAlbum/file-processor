import { BaseProcessor } from './base.processor.js';
import { ExifExtractor, TimestampExtractor, GPSExtractor } from '../utils/extractors/index.js';
import { extractColorAnalysis } from '../utils/extractors/color.js';
import { Logger } from '../utils/logging/index.js';
import { createValidationErrorFactory, createSystemErrorFactory } from '../utils/errors/factories.js';
import { readFile } from 'fs/promises';
import { existsSync } from 'fs';
import { extname } from 'path';
export class HeritageProcessor extends BaseProcessor {
    supportedMimes = [
        'image/jpeg', 'image/jpg', 'image/png', 'image/heic',
        'image/gif', 'image/tiff', 'image/webp'
    ];
    logger = new Logger('HeritageProcessor');
    validationErrors = createValidationErrorFactory(this.logger);
    systemErrors = createSystemErrorFactory(this.logger);
    exifExtractor = new ExifExtractor();
    timestampExtractor = new TimestampExtractor();
    gpsExtractor = new GPSExtractor();
    async extract(file) {
        this.logger.info('Processing heritage photo', { path: file.path });
        try {
            // 1. Extract EXIF data including heritage fields
            const exifData = await this.exifExtractor.extractExifData(file.absolutePath);
            // 2. Extract timestamps
            const timestampResult = await this.timestampExtractor.extractTimestamps({
                filePath: file.absolutePath,
                exifData,
                sidecarMetadata: file.sidecarMetadata || []
            });
            // 3. Parse series information from DocumentName
            const seriesInfo = this.parseSeriesInfo(exifData.heritage?.documentName);
            // 4. Load transcription file if exists
            const transcription = await this.loadTranscription(file.absolutePath);
            // 5. Detect creator type
            const creatorType = this.detectCreatorType(exifData.heritage?.creator);
            // 6. Extract GPS data if present, but skip expensive landmark enrichment
            const gpsResult = await this.gpsExtractor.extractGPS({
                exifData,
                sidecarMetadata: file.sidecarMetadata,
                filename: file.path,
                directoryPath: file.absolutePath
            });
            // Build location result - keep GPS but disable expensive lookups
            const locationResult = {
                ...gpsResult,
                landmarks: [], // Skip expensive landmark lookups
                enrichmentStatus: {
                    ...gpsResult.enrichmentStatus,
                    landmarks: 'disabled' // Override landmarks to disabled for performance
                }
            };
            // 7. Extract color analysis
            let colorAnalysis = {};
            try {
                const fullColorAnalysis = await extractColorAnalysis(file.absolutePath);
                colorAnalysis = {
                    dominantColor: fullColorAnalysis.dominantColor,
                    meanColor: fullColorAnalysis.meanColor,
                    salientColor: fullColorAnalysis.salientColor || undefined
                };
                this.logger.info(`Extracted colors - dominant: ${colorAnalysis.dominantColor}` +
                    `, mean: ${colorAnalysis.meanColor}, salient: ${colorAnalysis.salientColor || 'none'}`, { filename: file.path });
            }
            catch (error) {
                this.logger.warn('Color extraction failed for heritage photo', {
                    path: file.path,
                    error: error instanceof Error ? error.message : 'Unknown error'
                });
                // Continue processing without colors
            }
            // 8. Build processing result
            const result = {
                file: {
                    path: file.path,
                    hash: file.hash,
                    size: file.size,
                    mimeType: file.mimeType,
                    created: timestampResult.creation?.timestamp || new Date().toISOString(),
                    modified: timestampResult.modification?.timestamp || new Date().toISOString()
                },
                processing: {
                    success: true,
                    processor: 'HeritageProcessor',
                    extractedAt: new Date().toISOString(),
                    notes: 'Heritage photo processing - expensive landmark lookups skipped for performance'
                },
                media: {
                    type: 'image',
                    format: exifData.technical.fileType || 'JPEG',
                    dimensions: {
                        width: exifData.image.width || 0,
                        height: exifData.image.height || 0,
                        megapixels: exifData.image.megapixels || 0,
                        orientation: exifData.image.orientation || 'Unknown'
                    },
                    dominantColor: colorAnalysis.dominantColor,
                    meanColor: colorAnalysis.meanColor,
                    salientColor: colorAnalysis.salientColor
                },
                timestamps: timestampResult,
                location: locationResult,
                camera: exifData.camera,
                settings: exifData.settings,
                technical: exifData.technical,
                sidecars: (file.sidecarMetadata || []).map(sidecar => ({
                    source: sidecar.source,
                    format: sidecar.format,
                    path: sidecar.path
                })),
                // Heritage-specific data
                heritage: {
                    seriesInfo: seriesInfo || undefined,
                    transcription: transcription || undefined,
                    creatorType,
                    metadata: exifData.heritage
                }
            };
            this.logger.info('Heritage photo processing completed', {
                path: file.path,
                hasTranscription: !!transcription,
                seriesDetected: !!seriesInfo,
                creatorType
            });
            return result;
        }
        catch (err) {
            this.systemErrors.fileOperationFailed({ filePath: file.path }, err);
            throw err;
        }
    }
    parseSeriesInfo(documentName) {
        if (!documentName)
            return null;
        // Parse series name from DocumentName field
        // Example: "Stephen-Young-Baby-Book-32-Pages" 
        const parts = documentName.split('-');
        if (parts.length >= 3) {
            return {
                seriesName: parts.slice(0, -2).join('-'), // "Stephen-Young-Baby-Book"
                totalPages: parseInt(parts[parts.length - 2]) || undefined // "32"
            };
        }
        return { seriesName: documentName };
    }
    async loadTranscription(filePath) {
        try {
            const transcriptionPath = filePath.replace(extname(filePath), '.txt');
            if (existsSync(transcriptionPath)) {
                const content = await readFile(transcriptionPath, 'utf-8');
                return content.trim();
            }
        }
        catch {
            this.logger.debug('No transcription file found', { filePath });
        }
        return null;
    }
    detectCreatorType(creator) {
        if (!creator)
            return 'unknown';
        const organizationalPatterns = [
            /department|hospital|school|church|government/i,
            /inc\.|corp\.|ltd\.|llc/i,
            /university|college|institute/i,
            /association|foundation|society/i
        ];
        return organizationalPatterns.some(pattern => pattern.test(creator))
            ? 'organization'
            : 'individual';
    }
}
//# sourceMappingURL=heritage.processor.js.map