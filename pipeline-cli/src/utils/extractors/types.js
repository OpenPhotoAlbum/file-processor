/**
 * Type definitions for data extractors
 * These replace all 'any' types in the extractor utilities
 */
// Convert Node.js Stats to our interface
export function statsToFileStats(stats) {
    return {
        size: stats.size,
        birthtime: stats.birthtime,
        mtime: stats.mtime,
        atime: stats.atime,
        ctime: stats.ctime,
        mode: stats.mode,
        uid: stats.uid,
        gid: stats.gid,
        isFile: () => stats.isFile(),
        isDirectory: () => stats.isDirectory()
    };
}
//# sourceMappingURL=types.js.map