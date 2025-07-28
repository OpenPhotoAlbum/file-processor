/**
 * EXIF data extraction utilities
 * Handles ExifTool integration and EXIF data parsing
 */
export interface ExifData {
    camera: {
        make?: string;
        model?: string;
        lens?: string;
        software?: string;
    };
    settings: {
        iso?: number;
        aperture?: string;
        shutterSpeed?: string;
        focalLength?: string;
        focalLength35mm?: string;
        flash?: string;
    };
    image: {
        width?: number;
        height?: number;
        orientation?: string;
        colorSpace?: string;
        compression?: string;
        megapixels?: number;
    };
    timestamps: {
        dateTimeOriginal?: string;
        createDate?: string;
        modifyDate?: string;
        preferred?: string;
        source?: string;
    };
    gps?: {
        latitude?: number;
        longitude?: number;
        altitude?: number;
        timestamp?: string;
        accuracy?: string;
    };
    technical: {
        fileType?: string;
        mimeType?: string;
        exifVersion?: string;
        encoding?: string;
        [key: string]: unknown;
    };
    heritage?: {
        imageDescription?: string;
        userComment?: string;
        creator?: string;
        keywords?: string;
        copyright?: string;
        subject?: string;
        documentName?: string;
        digitalSourceType?: string;
    };
}
/**
 * ExifTool-based metadata extractor
 */
export declare class ExifExtractor {
    private logger;
    private exifErrors;
    /**
     * Extract comprehensive EXIF data from image file
     */
    extractExifData(filePath: string): Promise<ExifData>;
    /**
     * Run ExifTool command and parse JSON output
     *
     * Returns ExternalToolOutput because ExifTool's JSON structure varies by:
     * - Camera manufacturer and model
     * - File format (JPEG vs HEIC vs MOV)
     * - Software version
     * - Available metadata fields
     */
    private runExifTool;
    /**
     * Parse raw EXIF data into structured format
     *
     * Takes ExternalToolOutput and converts it to our known ExifData structure
     */
    private parseExifData;
    /**
     * Parse timestamp data with priority handling
     */
    private parseTimestamps;
    /**
     * Parse GPS data from EXIF
     */
    private parseGPS;
    /**
     * Parse coordinate with direction handling
     * Handles both separate reference fields and direction markers within coordinate strings
     */
    private parseCoordinateWithDirection;
    /**
     * Parse number from EXIF value
     */
    private parseNumber;
    /**
     * Check if photo is heritage/scanned based on DigitalSourceType field
     */
    private isHeritagePhoto;
    /**
     * Check if field is already handled in structured parsing
     */
    private isStandardField;
    /**
     * Create empty EXIF data structure
     */
    private createEmptyExifData;
}
