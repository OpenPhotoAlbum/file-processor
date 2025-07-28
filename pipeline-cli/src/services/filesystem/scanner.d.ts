/**
 * Directory scanning and file enumeration functionality
 */
import { ScanOptions, MediaDiscoveryOptions, MediaDiscoveryResult } from './types.js';
export declare class FileSystemScanner {
    private logger;
    private systemErrors;
    /**
     * Scan directory for files matching the specified criteria
     */
    scanDirectory(options: ScanOptions): Promise<string[]>;
    /**
     * Discover media files with additional processing options
     */
    discoverMediaFiles(path: string, recursive?: boolean, options?: MediaDiscoveryOptions): Promise<MediaDiscoveryResult>;
    /**
     * Recursive directory scanning implementation
     */
    private scanDirectoryRecursive;
    /**
     * Check if file passes the specified filters
     */
    private passesFilters;
    /**
     * Get all supported media file extensions
     */
    private getAllMediaExtensions;
    /**
     * Check if extension is a known media extension
     */
    private isMediaExtension;
    /**
     * Check if extension is a known sidecar extension
     */
    private isSidecarExtension;
    /**
     * Map file extension to MIME type (basic mapping)
     */
    private getMimeTypeFromExtension;
}
