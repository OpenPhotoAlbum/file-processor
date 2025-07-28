/**
 * EXIF data extraction utilities
 * Handles ExifTool integration and EXIF data parsing
 */
import { execSync } from 'child_process';
import { Logger } from '../logging/index.js';
import { createExifErrorFactory } from '../errors/factories.js';
/**
 * ExifTool-based metadata extractor
 */
export class ExifExtractor {
    logger = new Logger('EXIF Extractor');
    exifErrors = createExifErrorFactory(this.logger);
    /**
     * Extract comprehensive EXIF data from image file
     */
    async extractExifData(filePath) {
        this.logger.debug('Starting EXIF extraction', { filePath });
        try {
            const rawExif = await this.runExifTool(filePath);
            const exifData = this.parseExifData(rawExif);
            this.logger.info('EXIF extraction completed', {
                filePath,
                hasCamera: !!exifData.camera.make,
                hasGPS: !!exifData.gps?.latitude,
                hasTimestamp: !!exifData.timestamps.preferred
            });
            return exifData;
        }
        catch (error) {
            // Create structured error with code
            this.exifErrors.extractionFailed({ filePath }, error);
            // For non-fatal errors, return empty data and continue processing
            this.logger.warn('Returning empty EXIF data due to extraction failure');
            return this.createEmptyExifData();
        }
    }
    /**
     * Run ExifTool command and parse JSON output
     *
     * Returns ExternalToolOutput because ExifTool's JSON structure varies by:
     * - Camera manufacturer and model
     * - File format (JPEG vs HEIC vs MOV)
     * - Software version
     * - Available metadata fields
     */
    async runExifTool(filePath) {
        // Use ExifTool with JSON output and group tags
        const command = `exiftool -json -G -coordFormat "%.8f" "${filePath}"`;
        this.logger.debug('Running ExifTool command', { command, timeout: 5000 });
        try {
            const output = execSync(command, {
                encoding: 'utf8',
                maxBuffer: 1024 * 1024, // 1MB buffer for large EXIF data
                timeout: 5000 // 5 second timeout
            });
            if (!output || output.trim() === '') {
                this.exifErrors.dataCorrupted({ filePath, reason: 'Empty output from ExifTool' });
                throw new Error('Empty output from ExifTool');
            }
            try {
                const jsonData = JSON.parse(output);
                return Array.isArray(jsonData) ? jsonData[0] : jsonData;
            }
            catch (parseError) {
                this.exifErrors.dataCorrupted({
                    filePath,
                    reason: 'Invalid JSON output from ExifTool',
                    output: output.substring(0, 200) // First 200 chars for debugging
                });
                throw parseError;
            }
        }
        catch (error) {
            // Type guard for system errors
            if (error && typeof error === 'object' && 'code' in error && error.code === 'ETIMEDOUT') {
                this.exifErrors.timeoutExceeded({ filePath, timeout: 5000 });
                throw error;
            }
            else if (error && typeof error === 'object' && 'status' in error) {
                // ExifTool returned non-zero exit code
                this.exifErrors.exiftoolExecutionFailed({
                    filePath,
                    exitCode: 'status' in error ? error.status : 'unknown',
                    stderr: 'stderr' in error ? String(error.stderr) : 'unknown'
                }, error);
                throw error;
            }
            else {
                // Re-throw MPP errors as-is
                throw error;
            }
        }
    }
    /**
     * Parse raw EXIF data into structured format
     *
     * Takes ExternalToolOutput and converts it to our known ExifData structure
     */
    parseExifData(rawExif) {
        const exif = this.createEmptyExifData();
        // Camera information
        exif.camera.make = rawExif['EXIF:Make'] || rawExif['IFD0:Make'];
        exif.camera.model = rawExif['EXIF:Model'] || rawExif['IFD0:Model'];
        exif.camera.lens = rawExif['EXIF:LensModel'] || rawExif['Composite:LensID'];
        exif.camera.software = rawExif['EXIF:Software'] || rawExif['IFD0:Software'];
        // Camera settings
        exif.settings.iso = this.parseNumber(rawExif['EXIF:ISO'] || rawExif['IFD0:ISO']);
        exif.settings.aperture = rawExif['EXIF:FNumber'] || rawExif['Composite:Aperture'];
        exif.settings.shutterSpeed = rawExif['EXIF:ExposureTime'] || rawExif['Composite:ShutterSpeed'];
        exif.settings.focalLength = rawExif['EXIF:FocalLength'];
        exif.settings.focalLength35mm = rawExif['EXIF:FocalLengthIn35mmFormat'];
        exif.settings.flash = rawExif['EXIF:Flash'];
        // Image properties
        exif.image.width = this.parseNumber(rawExif['EXIF:ExifImageWidth'] || rawExif['File:ImageWidth']);
        exif.image.height = this.parseNumber(rawExif['EXIF:ExifImageHeight'] || rawExif['File:ImageHeight']);
        exif.image.orientation = rawExif['EXIF:Orientation'] || rawExif['IFD0:Orientation'];
        exif.image.colorSpace = rawExif['EXIF:ColorSpace'];
        exif.image.compression = rawExif['EXIF:Compression'];
        if (exif.image.width && exif.image.height) {
            exif.image.megapixels = Math.round((exif.image.width * exif.image.height) / 1000000 * 10) / 10;
        }
        // Timestamps (multiple sources with priority)
        exif.timestamps = this.parseTimestamps(rawExif);
        // GPS data
        exif.gps = this.parseGPS(rawExif);
        // Technical metadata
        exif.technical.fileType = rawExif['File:FileType'];
        exif.technical.mimeType = rawExif['File:MIMEType'];
        exif.technical.exifVersion = rawExif['EXIF:ExifVersion'];
        exif.technical.encoding = rawExif['EXIF:EncodingProcess'];
        // Heritage-specific fields (only extract if this is a heritage photo)
        if (this.isHeritagePhoto(rawExif)) {
            exif.heritage = {
                imageDescription: rawExif['EXIF:ImageDescription'] || rawExif['IFD0:ImageDescription'],
                userComment: rawExif['EXIF:UserComment'] || rawExif['IFD0:UserComment'],
                creator: rawExif['EXIF:Creator'] || rawExif['IFD0:Creator'],
                keywords: rawExif['EXIF:Keywords'] || rawExif['IFD0:Keywords'],
                copyright: rawExif['EXIF:Copyright'] || rawExif['IFD0:Copyright'],
                subject: rawExif['EXIF:Subject'] || rawExif['IFD0:Subject'],
                documentName: rawExif['EXIF:DocumentName'] || rawExif['IFD0:DocumentName'],
                digitalSourceType: rawExif['EXIF:DigitalSourceType'] ||
                    rawExif['IFD0:DigitalSourceType'] ||
                    rawExif['XMP:DigitalSourceType']
            };
        }
        // Store any additional fields that might be useful
        Object.keys(rawExif).forEach(key => {
            if (!this.isStandardField(key)) {
                exif.technical[key] = rawExif[key];
            }
        });
        return exif;
    }
    /**
     * Parse timestamp data with priority handling
     */
    parseTimestamps(rawExif) {
        const timestamps = {};
        // Extract all possible timestamp sources
        timestamps.dateTimeOriginal = rawExif['EXIF:DateTimeOriginal'] || rawExif['EXIF:CreateDate'];
        timestamps.createDate = rawExif['EXIF:CreateDate'];
        timestamps.modifyDate = rawExif['EXIF:ModifyDate'] || rawExif['File:FileModifyDate'];
        // Determine preferred timestamp with priority
        if (timestamps.dateTimeOriginal) {
            timestamps.preferred = timestamps.dateTimeOriginal;
            timestamps.source = 'EXIF:DateTimeOriginal';
        }
        else if (timestamps.createDate) {
            timestamps.preferred = timestamps.createDate;
            timestamps.source = 'EXIF:CreateDate';
        }
        else if (timestamps.modifyDate) {
            timestamps.preferred = timestamps.modifyDate;
            timestamps.source = 'EXIF:ModifyDate';
        }
        return timestamps;
    }
    /**
     * Parse GPS data from EXIF
     */
    parseGPS(rawExif) {
        const lat = rawExif['EXIF:GPSLatitude'] || rawExif['GPS:GPSLatitude'] || rawExif['Composite:GPSLatitude'];
        const lon = rawExif['EXIF:GPSLongitude'] || rawExif['GPS:GPSLongitude'] || rawExif['Composite:GPSLongitude'];
        if (!lat || !lon)
            return undefined;
        // Apply coordinate references for proper sign
        const latRef = rawExif['EXIF:GPSLatitudeRef'] || rawExif['GPS:GPSLatitudeRef'];
        const lonRef = rawExif['EXIF:GPSLongitudeRef'] || rawExif['GPS:GPSLongitudeRef'];
        // Parse coordinates - handle both numeric values and coordinate strings with direction
        const parsedLat = this.parseCoordinateWithDirection(lat, latRef);
        const parsedLon = this.parseCoordinateWithDirection(lon, lonRef);
        if (parsedLat === null || parsedLon === null)
            return undefined;
        return {
            latitude: parsedLat,
            longitude: parsedLon,
            altitude: this.parseNumber(rawExif['EXIF:GPSAltitude'] || rawExif['GPS:GPSAltitude']),
            timestamp: rawExif['EXIF:GPSTimeStamp'] || rawExif['GPS:GPSTimeStamp'],
            accuracy: rawExif['EXIF:GPSHPositioningError'] || rawExif['GPS:GPSHPositioningError']
        };
    }
    /**
     * Parse coordinate with direction handling
     * Handles both separate reference fields and direction markers within coordinate strings
     */
    parseCoordinateWithDirection(coordinate, referenceField) {
        if (typeof coordinate === 'number') {
            // Pure numeric coordinate - apply reference if available
            if (referenceField === 'S' || referenceField === 'South' || referenceField === 'W' || referenceField === 'West') {
                return -coordinate;
            }
            return coordinate;
        }
        if (typeof coordinate === 'string') {
            // Parse coordinate string (e.g., "71 deg 3' 50.04\" W")
            const coordinateStr = coordinate.trim();
            // Extract numeric value
            const numericValue = parseFloat(coordinateStr);
            if (isNaN(numericValue))
                return null;
            // Check for direction markers in the string itself
            const hasNorth = /[Nn]/.test(coordinateStr);
            const hasSouth = /[Ss]/.test(coordinateStr);
            const hasEast = /[Ee]/.test(coordinateStr);
            const hasWest = /[Ww]/.test(coordinateStr);
            // Apply direction from coordinate string
            if (hasSouth || hasWest) {
                return -numericValue;
            }
            if (hasNorth || hasEast) {
                return numericValue;
            }
            // Fall back to reference field if no direction in string
            if (referenceField === 'S' || referenceField === 'South' || referenceField === 'W' || referenceField === 'West') {
                return -numericValue;
            }
            return numericValue;
        }
        return null;
    }
    /**
     * Parse number from EXIF value
     */
    parseNumber(value) {
        if (typeof value === 'number')
            return value;
        if (typeof value === 'string') {
            const num = parseFloat(value);
            return isNaN(num) ? undefined : num;
        }
        return undefined;
    }
    /**
     * Check if photo is heritage/scanned based on DigitalSourceType field
     */
    isHeritagePhoto(rawExif) {
        const digitalSourceType = rawExif['EXIF:DigitalSourceType'] ||
            rawExif['IFD0:DigitalSourceType'] ||
            rawExif['XMP:DigitalSourceType'];
        return digitalSourceType?.includes('Scanned') || digitalSourceType?.includes('scanned');
    }
    /**
     * Check if field is already handled in structured parsing
     */
    isStandardField(key) {
        const standardPrefixes = [
            'EXIF:Make', 'EXIF:Model', 'EXIF:LensModel', 'EXIF:Software',
            'EXIF:ISO', 'EXIF:FNumber', 'EXIF:ExposureTime', 'EXIF:FocalLength',
            'EXIF:ExifImageWidth', 'EXIF:ExifImageHeight', 'EXIF:Orientation',
            'EXIF:ColorSpace', 'EXIF:Compression', 'EXIF:DateTimeOriginal',
            'EXIF:CreateDate', 'EXIF:ModifyDate', 'GPS:', 'File:FileType',
            'File:MIMEType', 'File:ImageWidth', 'File:ImageHeight',
            // Heritage fields
            'EXIF:ImageDescription', 'EXIF:UserComment', 'EXIF:Creator',
            'EXIF:Keywords', 'EXIF:Copyright', 'EXIF:Subject',
            'EXIF:DocumentName', 'EXIF:DigitalSourceType',
            'XMP:DigitalSourceType'
        ];
        return standardPrefixes.some(prefix => key.startsWith(prefix));
    }
    /**
     * Create empty EXIF data structure
     */
    createEmptyExifData() {
        return {
            camera: {},
            settings: {},
            image: {},
            timestamps: {},
            technical: {}
        };
    }
}
//# sourceMappingURL=exif.js.map