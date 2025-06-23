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
    '.mov': 'video/quicktime',
    '.mp4': 'video/mp4',
    '.avi': 'video/x-msvideo',
    '.mkv': 'video/x-matroska'
  };
  
  return mimeMap[ext] || 'application/octet-stream';
}