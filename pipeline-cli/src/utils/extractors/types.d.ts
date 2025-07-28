/**
 * Type definitions for data extractors
 * These replace all 'any' types in the extractor utilities
 */
import { Stats } from 'fs';
export interface RawExifData {
    FileName?: string;
    FileSize?: string | number;
    FileModifyDate?: string;
    FileAccessDate?: string;
    FileInodeChangeDate?: string;
    FilePermissions?: string;
    FileType?: string;
    FileTypeExtension?: string;
    MIMEType?: string;
    ExifImageWidth?: number;
    ExifImageHeight?: number;
    ImageWidth?: number;
    ImageHeight?: number;
    Make?: string;
    Model?: string;
    Software?: string;
    LensModel?: string;
    LensMake?: string;
    ISO?: number;
    FNumber?: number;
    ExposureTime?: string | number;
    FocalLength?: string | number;
    FocalLengthIn35mmFormat?: number;
    Flash?: string;
    WhiteBalance?: string;
    DateTimeOriginal?: string;
    CreateDate?: string;
    ModifyDate?: string;
    DateTime?: string;
    GPSLatitude?: string | number;
    GPSLongitude?: string | number;
    GPSLatitudeRef?: string;
    GPSLongitudeRef?: string;
    GPSAltitude?: string | number;
    GPSAltitudeRef?: string;
    GPSTimeStamp?: string;
    GPSDateStamp?: string;
    ContentIdentifier?: string;
    MediaGroupUUID?: string;
    RunTimeValue?: number;
    ColorSpace?: string;
    Compression?: string;
    Orientation?: number | string;
    XResolution?: number;
    YResolution?: number;
    ResolutionUnit?: string;
    Duration?: string | number;
    VideoFrameRate?: number;
    VideoBitrate?: string;
    AudioBitrate?: string;
    LivePhotoVideoIndex?: number;
    [key: string]: unknown;
}
export interface CoordinateData {
    latitude: number;
    longitude: number;
    altitude?: number;
}
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
export declare function statsToFileStats(stats: Stats): FileStats;
export interface GenericMetadata {
    [key: string]: unknown;
}
export interface XMPData {
    [key: string]: unknown;
}
export type CoordinateValue = string | number;
export type ReferenceDirection = 'N' | 'S' | 'E' | 'W' | string;
