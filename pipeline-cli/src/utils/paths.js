import { resolve, relative } from 'path';
/**
 * Path utilities to abstract away file system structure
 * All external paths are relative to configured base directories
 */
/**
 * Path prefixes for different base directories
 * Used to create portable, environment-independent path references
 */
export var PathPrefix;
(function (PathPrefix) {
    /** Sample media files for testing - maps to SAMPLE_BASE_PATH env var */
    PathPrefix["SAMPLE"] = "sample:";
    /** Production media files - maps to MEDIA_BASE_PATH env var */
    PathPrefix["MEDIA"] = "media:";
    /** Files relative to current working directory - fallback option */
    PathPrefix["RELATIVE"] = "relative:";
})(PathPrefix || (PathPrefix = {}));
/**
 * Path prefix configuration mapping prefixes to their properties
 */
const PATH_PREFIX_CONFIG = {
    [PathPrefix.SAMPLE]: {
        envVar: 'SAMPLE_BASE_PATH',
        defaultPath: '/default/sample/path',
        description: 'Test and sample media files',
        prefixLength: PathPrefix.SAMPLE.length
    },
    [PathPrefix.MEDIA]: {
        envVar: 'MEDIA_BASE_PATH',
        defaultPath: '/default/media/path',
        description: 'Production media files',
        prefixLength: PathPrefix.MEDIA.length
    },
    [PathPrefix.RELATIVE]: {
        envVar: null,
        defaultPath: process.cwd(),
        description: 'Files relative to current working directory',
        prefixLength: PathPrefix.RELATIVE.length
    }
};
// Get base paths from environment variables (loaded dynamically)
function getBasePaths() {
    return {
        MEDIA_BASE_PATH: process.env.MEDIA_BASE_PATH || '/default/media/path',
        SAMPLE_BASE_PATH: process.env.SAMPLE_BASE_PATH || './scratch/sample_media'
    };
}
/**
 * Convert absolute path to relative path from base directory
 */
export function toRelativePath(absolutePath) {
    const { MEDIA_BASE_PATH, SAMPLE_BASE_PATH } = getBasePaths();
    // Try sample base first, then media base
    if (absolutePath.startsWith(SAMPLE_BASE_PATH)) {
        return `${PathPrefix.SAMPLE}${relative(SAMPLE_BASE_PATH, absolutePath)}`;
    }
    if (absolutePath.startsWith(MEDIA_BASE_PATH)) {
        return `${PathPrefix.MEDIA}${relative(MEDIA_BASE_PATH, absolutePath)}`;
    }
    // If not under known bases, use relative from current working directory
    return `${PathPrefix.RELATIVE}${relative(process.cwd(), absolutePath)}`;
}
/**
 * Convert relative path back to absolute path
 */
export function toAbsolutePath(relativePath) {
    const { MEDIA_BASE_PATH, SAMPLE_BASE_PATH } = getBasePaths();
    if (relativePath.startsWith(PathPrefix.SAMPLE)) {
        return resolve(SAMPLE_BASE_PATH, relativePath.substring(PATH_PREFIX_CONFIG[PathPrefix.SAMPLE].prefixLength));
    }
    if (relativePath.startsWith(PathPrefix.MEDIA)) {
        return resolve(MEDIA_BASE_PATH, relativePath.substring(PATH_PREFIX_CONFIG[PathPrefix.MEDIA].prefixLength));
    }
    if (relativePath.startsWith(PathPrefix.RELATIVE)) {
        return resolve(process.cwd(), relativePath.substring(PATH_PREFIX_CONFIG[PathPrefix.RELATIVE].prefixLength));
    }
    // Fallback - assume it's already relative to cwd
    return resolve(process.cwd(), relativePath);
}
/**
 * Sanitize path for logging - never expose full absolute paths
 */
export function sanitizePathForLogging(path) {
    return toRelativePath(path);
}
/**
 * Get information about a path prefix
 */
export function getPathPrefixInfo(prefix) {
    return PATH_PREFIX_CONFIG[prefix];
}
/**
 * Check if a path uses a specific prefix
 */
export function hasPathPrefix(path, prefix) {
    return path.startsWith(prefix);
}
/**
 * Get all available path prefixes
 */
export function getAllPathPrefixes() {
    return Object.values(PathPrefix);
}
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
//# sourceMappingURL=paths.js.map