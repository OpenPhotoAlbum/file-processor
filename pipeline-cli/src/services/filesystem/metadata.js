/**
 * File metadata and statistics operations
 */
import { stat, lstat } from 'fs/promises';
import { Logger } from '../../utils/logging/index.js';
import { createSystemErrorFactory } from '../../utils/errors/factories.js';
import { toAbsolutePath, sanitizePathForLogging } from '../../utils/paths.js';
export class FileSystemMetadataService {
    logger = new Logger('FileSystem Metadata');
    systemErrors = createSystemErrorFactory(this.logger);
    /**
     * Get comprehensive file metadata
     */
    async getFileMetadata(filePath, followSymlinks = true) {
        const absolutePath = toAbsolutePath(filePath);
        const safePath = sanitizePathForLogging(absolutePath);
        this.logger.debug(`Getting metadata for: ${safePath}`);
        try {
            // Use stat or lstat based on symlink handling preference
            const stats = followSymlinks ? await stat(absolutePath) : await lstat(absolutePath);
            const metadata = {
                absolutePath,
                safePath,
                size: stats.size,
                birthtime: stats.birthtime,
                mtime: stats.mtime,
                atime: stats.atime,
                mode: stats.mode,
                isDirectory: stats.isDirectory(),
                isFile: stats.isFile(),
                isSymbolicLink: stats.isSymbolicLink(),
                stats
            };
            this.logger.debug(`Retrieved metadata: ${safePath} (${this.formatFileSize(stats.size)})`);
            return metadata;
        }
        catch (error) {
            this.systemErrors.fileOperationFailed({
                filePath: safePath,
                operation: 'metadata retrieval'
            }, error);
            return null;
        }
    }
    /**
     * Get metadata for multiple files in batch
     */
    async getBatchMetadata(filePaths, followSymlinks = true) {
        this.logger.info(`Getting batch metadata for ${filePaths.length} files`);
        const results = new Map();
        // Process in parallel with concurrency limit
        const concurrency = 15;
        const chunks = this.chunkArray(filePaths, concurrency);
        for (const chunk of chunks) {
            const chunkPromises = chunk.map(async (filePath) => {
                const metadata = await this.getFileMetadata(filePath, followSymlinks);
                return [filePath, metadata];
            });
            const chunkResults = await Promise.all(chunkPromises);
            chunkResults.forEach(([path, metadata]) => {
                results.set(path, metadata);
            });
        }
        const successCount = Array.from(results.values()).filter(m => m !== null).length;
        this.logger.info(`Batch metadata complete: ${successCount}/${filePaths.length} successful`);
        return results;
    }
    /**
     * Get directory contents with metadata
     */
    async getDirectoryContentsWithMetadata(dirPath, includeHidden = false) {
        const absolutePath = toAbsolutePath(dirPath);
        const safePath = sanitizePathForLogging(absolutePath);
        this.logger.debug(`Getting directory contents with metadata: ${safePath}`);
        try {
            const { readdir } = await import('fs/promises');
            const entries = await readdir(absolutePath, { withFileTypes: true });
            const metadataPromises = entries
                .filter(entry => includeHidden || !entry.name.startsWith('.'))
                .map(async (entry) => {
                const fullPath = `${absolutePath}/${entry.name}`;
                return this.getFileMetadata(fullPath);
            });
            const results = await Promise.all(metadataPromises);
            const validResults = results.filter((m) => m !== null);
            this.logger.debug(`Retrieved metadata for ${validResults.length} entries in: ${safePath}`);
            return validResults;
        }
        catch (error) {
            this.systemErrors.fileOperationFailed({
                filePath: safePath,
                operation: 'directory metadata retrieval'
            }, error);
            return [];
        }
    }
    /**
     * Compare file modification times
     */
    isFileNewer(fileA, fileB) {
        return fileA.mtime > fileB.mtime;
    }
    /**
     * Check if file was modified within the specified time frame
     */
    wasModifiedWithin(metadata, milliseconds) {
        const now = new Date();
        const timeDiff = now.getTime() - metadata.mtime.getTime();
        return timeDiff <= milliseconds;
    }
    /**
     * Get total size of multiple files
     */
    getTotalSize(metadataList) {
        return metadataList.reduce((total, metadata) => total + metadata.size, 0);
    }
    /**
     * Format file size for human reading
     */
    formatFileSize(bytes) {
        const units = ['B', 'KB', 'MB', 'GB', 'TB'];
        let size = bytes;
        let unitIndex = 0;
        while (size >= 1024 && unitIndex < units.length - 1) {
            size /= 1024;
            unitIndex++;
        }
        return `${size.toFixed(unitIndex === 0 ? 0 : 1)} ${units[unitIndex]}`;
    }
    /**
     * Format timestamp for human reading
     */
    formatTimestamp(date) {
        return date.toISOString().replace('T', ' ').replace(/\.\d{3}Z$/, ' UTC');
    }
    /**
     * Get file age in human-readable format
     */
    getFileAge(metadata) {
        const now = new Date();
        const ageMs = now.getTime() - metadata.mtime.getTime();
        const minutes = Math.floor(ageMs / (1000 * 60));
        const hours = Math.floor(minutes / 60);
        const days = Math.floor(hours / 24);
        if (days > 0) {
            return `${days} day${days !== 1 ? 's' : ''} ago`;
        }
        else if (hours > 0) {
            return `${hours} hour${hours !== 1 ? 's' : ''} ago`;
        }
        else if (minutes > 0) {
            return `${minutes} minute${minutes !== 1 ? 's' : ''} ago`;
        }
        else {
            return 'just now';
        }
    }
    /**
     * Utility to chunk array for batch processing
     */
    chunkArray(array, chunkSize) {
        const chunks = [];
        for (let i = 0; i < array.length; i += chunkSize) {
            chunks.push(array.slice(i, i + chunkSize));
        }
        return chunks;
    }
}
//# sourceMappingURL=metadata.js.map