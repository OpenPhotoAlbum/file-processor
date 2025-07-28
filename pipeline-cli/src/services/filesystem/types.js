/**
 * Shared types for filesystem operations
 */
/**
 * Common file extensions for media files
 */
export const MEDIA_EXTENSIONS = {
    IMAGE: ['.jpg', '.jpeg', '.png', '.gif', '.bmp', '.tiff', '.tif', '.webp', '.heic', '.heif', '.raw', '.cr2', '.nef', '.arw'],
    VIDEO: ['.mp4', '.avi', '.mov', '.mkv', '.webm', '.flv', '.wmv', '.m4v', '.3gp'],
    AUDIO: ['.mp3', '.wav', '.flac', '.aac', '.ogg', '.wma', '.m4a']
};
/**
 * Common sidecar file extensions
 */
export const SIDECAR_EXTENSIONS = [
    '.xmp', // Adobe XMP
    '.json', // Custom JSON metadata
    '.xml', // Various XML formats
    '.txt', // Plain text metadata
    '.yaml', // YAML metadata
    '.yml' // YAML metadata (alternative extension)
];
//# sourceMappingURL=types.js.map