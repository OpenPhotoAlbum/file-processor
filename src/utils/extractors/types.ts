/**
 * Type definitions for data extractors
 * These replace all 'any' types in the extractor utilities
 */

import { Stats } from 'fs';

// Raw EXIF data from ExifTool - represents the JSON output structure
export interface RawExifData {
  // Core file info
  FileName?: string;
  FileSize?: string | number;
  FileModifyDate?: string;
  FileAccessDate?: string;
  FileInodeChangeDate?: string;
  FilePermissions?: string;
  FileType?: string;
  FileTypeExtension?: string;
  MIMEType?: string;
  
  // Image dimensions
  ExifImageWidth?: number;
  ExifImageHeight?: number;
  ImageWidth?: number;
  ImageHeight?: number;
  
  // Camera info
  Make?: string;
  Model?: string;
  Software?: string;
  LensModel?: string;
  LensMake?: string;
  
  // Camera settings
  ISO?: number;
  FNumber?: number;
  ExposureTime?: string | number;
  FocalLength?: string | number;
  FocalLengthIn35mmFormat?: number;
  Flash?: string;
  WhiteBalance?: string;
  
  // Timestamps
  DateTimeOriginal?: string;
  CreateDate?: string;
  ModifyDate?: string;
  DateTime?: string;
  
  // GPS data (can be strings with direction or numbers)
  GPSLatitude?: string | number;
  GPSLongitude?: string | number;
  GPSLatitudeRef?: string;
  GPSLongitudeRef?: string;
  GPSAltitude?: string | number;
  GPSAltitudeRef?: string;
  GPSTimeStamp?: string;
  GPSDateStamp?: string;
  
  // Live Photo detection
  ContentIdentifier?: string;
  MediaGroupUUID?: string;
  RunTimeValue?: number;
  
  // Technical details
  ColorSpace?: string;
  Compression?: string;
  Orientation?: number | string;
  XResolution?: number;
  YResolution?: number;
  ResolutionUnit?: string;
  
  // Video specific
  Duration?: string | number;
  VideoFrameRate?: number;
  VideoBitrate?: string;
  AudioBitrate?: string;
  
  // Apple-specific
  LivePhotoVideoIndex?: number;
  
  // Allow any other EXIF fields that might exist
  [key: string]: unknown;
}

// Parsed coordinate data
export interface CoordinateData {
  latitude: number;
  longitude: number;
  altitude?: number;
}

// File system stats wrapper
export interface FileStats {
  size: number;
  birthtime: Date;
  mtime: Date;
  atime: Date;
  ctime: Date;
  mode: number;
  uid: number;
  gid: number;
  isFile: () => boolean;
  isDirectory: () => boolean;
}

// Convert Node.js Stats to our interface
export function statsToFileStats(stats: Stats): FileStats {
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

// Generic metadata object for sidecar files
export interface GenericMetadata {
  [key: string]: unknown;
}

// XMP metadata structure
export interface XMPData {
  [key: string]: unknown;
  // Could be expanded with specific XMP schemas if needed
}

// Type for coordinate parsing - handles both string and number formats
export type CoordinateValue = string | number;
export type ReferenceDirection = 'N' | 'S' | 'E' | 'W' | string;