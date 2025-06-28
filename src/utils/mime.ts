import { extname } from 'path';

/**
 * Simple MIME type detection based on file extension
 */
export function detectMimeType(filePath: string): string {
  const ext = extname(filePath).toLowerCase();
  
  const mimeMap: Record<string, string> = {
    '.jpg': 'image/jpeg',
    '.jpeg': 'image/jpeg',
    '.png': 'image/png',
    '.heic': 'image/heic',
    '.gif': 'image/gif',
    '.tiff': 'image/tiff',
    '.tif': 'image/tiff',
    '.dng': 'image/jpeg',  // DNG files detected as JPEG by ExifTool
    '.cr2': 'image/jpeg',  // Canon RAW files - NOTE: not all CR2s detected as JPEG, some may need image/x-canon-cr2
    '.cr3': 'image/jpeg',  // Canon RAW v3 files (future support)
    '.webp': 'image/webp', // Modern web image format
    '.mov': 'video/quicktime',
    '.mp4': 'video/mp4',
    '.m4v': 'video/mp4',     // M4V is MP4 container format
    '.avi': 'video/x-msvideo',
    '.mkv': 'video/x-matroska',
    '.3gp': 'video/3gpp',    // 3GPP mobile video format
    '.webm': 'video/webm'    // WebM video format
  };
  
  return mimeMap[ext] || 'application/octet-stream';
}