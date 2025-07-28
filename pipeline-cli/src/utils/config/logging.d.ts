/**
 * Logging configuration from environment variables
 * Makes the entire logging system configurable without hardcoded values
 */
import { LogLevel } from '../logging/types.js';
/**
 * Get logging configuration from environment variables
 */
export declare function getLoggingConfig(): {
    level: LogLevel;
    includeTimestamp: boolean;
    colorize: boolean;
    format: "console" | "json";
    outputs: ("console" | "file")[];
    filePath: string;
    levelColors: {
        DEBUG: string;
        INFO: string;
        WARN: string;
        ERROR: string;
        FATAL: string;
    };
    scopeColors: {
        'Image Processor': string;
        'Image Validation': string;
        'EXIF Extractor': string;
        'GPS Extraction': string;
        'Pre Processor': string;
        'Pipeline Router': string;
        'Post Processor': string;
        'Video Processor': string;
        'Audio Processor': string;
        'File Validator': string;
        'MIME Detection': string;
        'Path Resolver': string;
        default: string;
    };
};
/**
 * Validate logging configuration
 */
export declare function validateLoggingConfig(): {
    config: {
        level: LogLevel;
        includeTimestamp: boolean;
        colorize: boolean;
        format: "console" | "json";
        outputs: ("console" | "file")[];
        filePath: string;
        levelColors: {
            DEBUG: string;
            INFO: string;
            WARN: string;
            ERROR: string;
            FATAL: string;
        };
        scopeColors: {
            'Image Processor': string;
            'Image Validation': string;
            'EXIF Extractor': string;
            'GPS Extraction': string;
            'Pre Processor': string;
            'Pipeline Router': string;
            'Post Processor': string;
            'Video Processor': string;
            'Audio Processor': string;
            'File Validator': string;
            'MIME Detection': string;
            'Path Resolver': string;
            default: string;
        };
    };
    warnings: string[];
};
