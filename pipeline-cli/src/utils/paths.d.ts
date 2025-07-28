/**
 * Path utilities to abstract away file system structure
 * All external paths are relative to configured base directories
 */
/**
 * Path prefixes for different base directories
 * Used to create portable, environment-independent path references
 */
export declare enum PathPrefix {
    /** Sample media files for testing - maps to SAMPLE_BASE_PATH env var */
    SAMPLE = "sample:",
    /** Production media files - maps to MEDIA_BASE_PATH env var */
    MEDIA = "media:",
    /** Files relative to current working directory - fallback option */
    RELATIVE = "relative:"
}
/**
 * Convert absolute path to relative path from base directory
 */
export declare function toRelativePath(absolutePath: string): string;
/**
 * Convert relative path back to absolute path
 */
export declare function toAbsolutePath(relativePath: string): string;
/**
 * Sanitize path for logging - never expose full absolute paths
 */
export declare function sanitizePathForLogging(path: string): string;
/**
 * Get information about a path prefix
 */
export declare function getPathPrefixInfo(prefix: PathPrefix): {
    readonly envVar: "SAMPLE_BASE_PATH";
    readonly defaultPath: "/default/sample/path";
    readonly description: "Test and sample media files";
    readonly prefixLength: number;
} | {
    readonly envVar: "MEDIA_BASE_PATH";
    readonly defaultPath: "/default/media/path";
    readonly description: "Production media files";
    readonly prefixLength: number;
} | {
    readonly envVar: null;
    readonly defaultPath: string;
    readonly description: "Files relative to current working directory";
    readonly prefixLength: number;
};
/**
 * Check if a path uses a specific prefix
 */
export declare function hasPathPrefix(path: string, prefix: PathPrefix): boolean;
/**
 * Get all available path prefixes
 */
export declare function getAllPathPrefixes(): PathPrefix[];
/**
 * Path system utilities with portable, environment-independent references.
 *
 * This module provides path prefixes (sample:, media:, relative:) that allow
 * files to be referenced independently of their absolute filesystem locations.
 *
 * For complete documentation, see: /docs/path-system.md
 *
 * Quick examples:
 * - toRelativePath('/abs/path/file.jpg') → 'sample:file.jpg'
 * - toAbsolutePath('sample:file.jpg') → '/configured/sample/path/file.jpg'
 * - sanitizePathForLogging(anyPath) → Safe path for logging (never exposes full paths)
 */ 
