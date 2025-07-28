/**
 * Directory scanning and file enumeration functionality
 */
import { readdir } from 'fs/promises';
import { join, extname } from 'path';
import { Logger } from '../../utils/logging/index.js';
import { createSystemErrorFactory } from '../../utils/errors/factories.js';
import { toAbsolutePath, sanitizePathForLogging } from '../../utils/paths.js';
import { MEDIA_EXTENSIONS } from './types.js';
export class FileSystemScanner {
    logger = new Logger('FileSystem Scanner');
    systemErrors = createSystemErrorFactory(this.logger);
    /**
     * Scan directory for files matching the specified criteria
     */
    async scanDirectory(options) {
        const startTime = Date.now();
        const absolutePath = toAbsolutePath(options.path);
        const safePath = sanitizePathForLogging(absolutePath);
        this.logger.info(`Scanning directory: ${safePath}`);
        try {
            const files = await this.scanDirectoryRecursive(absolutePath, options, 0, options.maxDepth ?? -1);
            const duration = Date.now() - startTime;
            this.logger.info(`Found ${files.length} files in ${duration}ms: ${safePath}`);
            return files;
        }
        catch (error) {
            this.systemErrors.fileOperationFailed({
                filePath: safePath,
                operation: 'directory scanning'
            }, error);
            return [];
        }
    }
    /**
     * Discover media files with additional processing options
     */
    async discoverMediaFiles(path, recursive = false, options = {}) {
        const startTime = Date.now();
        const absolutePath = toAbsolutePath(path);
        const safePath = sanitizePathForLogging(absolutePath);
        this.logger.info(`Discovering media files: ${safePath}`);
        const scanOptions = {
            path: absolutePath,
            recursive,
            extensions: this.getAllMediaExtensions(),
            includeHidden: false
        };
        if (options.maxFileSize) {
            // Add size filtering logic if needed
            this.logger.debug(`Filtering files larger than ${options.maxFileSize} bytes`);
        }
        try {
            const allFiles = await this.scanDirectory(scanOptions);
            const mediaFiles = [];
            const sidecarFiles = [];
            const invalidFiles = [];
            for (const file of allFiles) {
                const ext = extname(file).toLowerCase();
                // Categorize files
                if (this.isMediaExtension(ext)) {
                    if (options.skipInvalid) {
                        // TODO: Add file validation here when validator is implemented
                        mediaFiles.push(file);
                    }
                    else {
                        mediaFiles.push(file);
                    }
                }
                else if (this.isSidecarExtension(ext)) {
                    if (options.includeSidecars) {
                        sidecarFiles.push(file);
                    }
                }
            }
            const result = {
                mediaFiles,
                sidecarFiles,
                invalidFiles,
                totalScanned: allFiles.length,
                scanDuration: Date.now() - startTime
            };
            this.logger.info(`Media discovery complete: ${result.mediaFiles.length} media, ` +
                `${result.sidecarFiles.length} sidecars, ${result.totalScanned} total`);
            return result;
        }
        catch (error) {
            this.systemErrors.fileOperationFailed({
                filePath: safePath,
                operation: 'media file discovery'
            }, error);
            return {
                mediaFiles: [],
                sidecarFiles: [],
                invalidFiles: [],
                totalScanned: 0,
                scanDuration: Date.now() - startTime
            };
        }
    }
    /**
     * Recursive directory scanning implementation
     */
    async scanDirectoryRecursive(dirPath, options, currentDepth, maxDepth) {
        const files = [];
        // Check depth limit
        if (maxDepth >= 0 && currentDepth > maxDepth) {
            return files;
        }
        try {
            const entries = await readdir(dirPath, { withFileTypes: true });
            for (const entry of entries) {
                const fullPath = join(dirPath, entry.name);
                // Skip hidden files unless explicitly included
                if (!options.includeHidden && entry.name.startsWith('.')) {
                    continue;
                }
                if (entry.isDirectory()) {
                    if (options.recursive) {
                        const subFiles = await this.scanDirectoryRecursive(fullPath, options, currentDepth + 1, maxDepth);
                        files.push(...subFiles);
                    }
                }
                else if (entry.isFile() || (entry.isSymbolicLink() && options.followSymlinks)) {
                    // Apply filters
                    if (this.passesFilters(fullPath, options)) {
                        files.push(fullPath);
                    }
                }
            }
        }
        catch (error) {
            const safePath = sanitizePathForLogging(dirPath);
            this.systemErrors.fileOperationFailed({
                filePath: safePath,
                operation: 'directory reading',
                depth: currentDepth
            }, error);
        }
        return files;
    }
    /**
     * Check if file passes the specified filters
     */
    passesFilters(filePath, options) {
        const ext = extname(filePath).toLowerCase();
        // Extension filter
        if (options.extensions && options.extensions.length > 0) {
            if (!options.extensions.includes(ext)) {
                return false;
            }
        }
        // MIME type filter would require file inspection
        // For now, we'll rely on extension mapping
        if (options.mimeTypes && options.mimeTypes.length > 0) {
            const mimeType = this.getMimeTypeFromExtension(ext);
            if (mimeType && !options.mimeTypes.includes(mimeType)) {
                return false;
            }
        }
        return true;
    }
    /**
     * Get all supported media file extensions
     */
    getAllMediaExtensions() {
        return [
            ...MEDIA_EXTENSIONS.IMAGE,
            ...MEDIA_EXTENSIONS.VIDEO,
            ...MEDIA_EXTENSIONS.AUDIO
        ];
    }
    /**
     * Check if extension is a known media extension
     */
    isMediaExtension(extension) {
        return this.getAllMediaExtensions().includes(extension.toLowerCase());
    }
    /**
     * Check if extension is a known sidecar extension
     */
    isSidecarExtension(extension) {
        const sidecarExts = ['.xmp', '.json', '.xml', '.txt', '.yaml', '.yml'];
        return sidecarExts.includes(extension.toLowerCase());
    }
    /**
     * Map file extension to MIME type (basic mapping)
     */
    getMimeTypeFromExtension(extension) {
        const mimeMap = {
            '.jpg': 'image/jpeg',
            '.jpeg': 'image/jpeg',
            '.png': 'image/png',
            '.gif': 'image/gif',
            '.webp': 'image/webp',
            '.heic': 'image/heic',
            '.heif': 'image/heif',
            '.mp4': 'video/mp4',
            '.mov': 'video/quicktime',
            '.avi': 'video/x-msvideo',
            '.mp3': 'audio/mpeg',
            '.wav': 'audio/wav',
            '.flac': 'audio/flac'
        };
        return mimeMap[extension.toLowerCase()] || null;
    }
}
//# sourceMappingURL=scanner.js.map