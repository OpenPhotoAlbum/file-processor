/**
 * GPSService - ExifTool integration for GPS coordinate writing
 * 
 * Handles writing GPS coordinates to media files using ExifTool with proper
 * hemisphere references and batch processing capabilities.
 */

import { execa } from 'execa';
import { promises as fs } from 'fs';
import { extname } from 'path';
import { locationService, type Coordinates } from './LocationService.js';

export interface GPSWriteResult {
  file: string;
  success: boolean;
  error?: string;
}

export interface BatchGPSResult {
  totalFiles: number;
  successCount: number;
  failureCount: number;
  results: GPSWriteResult[];
  coordinates: Coordinates;
}

export class GPSService {
  private readonly SUPPORTED_EXTENSIONS = new Set([
    '.jpg', '.jpeg', '.tiff', '.tif', '.png', 
    '.mp4', '.mov', '.avi', '.mkv', '.m4v'
  ]);

  /**
   * Write GPS coordinates to a single file
   */
  async writeGPS(file: string, lat: number, lng: number): Promise<void> {
    // Validate file exists and is supported
    await this.validateFile(file);
    
    // Get hemisphere references and absolute values
    const { latRef, lngRef } = locationService.getHemisphereReferences(lat, lng);
    const { latAbs, lngAbs } = locationService.getAbsoluteCoordinates(lat, lng);
    
    // Build ExifTool command
    const args = [
      '-overwrite_original',
      `-GPSLatitude=${latAbs}`,
      `-GPSLatitudeRef=${latRef}`,
      `-GPSLongitude=${lngAbs}`,
      `-GPSLongitudeRef=${lngRef}`,
      file
    ];
    
    try {
      await execa('exiftool', args);
    } catch (error) {
      if (error instanceof Error) {
        // Check if exiftool is not found
        if (error.message.includes('ENOENT') || error.message.includes('not found')) {
          throw new Error('ExifTool not found. Please install: apt install libimage-exiftool-perl');
        }
        throw new Error(`ExifTool failed for ${file}: ${error.message}`);
      }
      throw new Error(`ExifTool failed for ${file}: Unknown error`);
    }
  }

  /**
   * Write GPS coordinates to multiple files with error recovery
   */
  async writeBatchGPS(files: string[], lat: number, lng: number): Promise<BatchGPSResult> {
    const results: GPSWriteResult[] = [];
    let successCount = 0;
    let failureCount = 0;
    
    // Validate coordinates once
    locationService.validateCoordinates(lat, lng);
    
    // Process each file individually to allow error recovery
    for (const file of files) {
      try {
        await this.writeGPS(file, lat, lng);
        results.push({ file, success: true });
        successCount++;
      } catch (error) {
        const errorMessage = error instanceof Error ? error.message : String(error);
        results.push({ file, success: false, error: errorMessage });
        failureCount++;
      }
    }
    
    return {
      totalFiles: files.length,
      successCount,
      failureCount,
      results,
      coordinates: { lat, lng }
    };
  }

  /**
   * Check if file has existing GPS data
   */
  async hasGPSData(file: string): Promise<boolean> {
    try {
      const { stdout } = await execa('exiftool', [
        '-GPSLatitude', '-GPSLongitude', '-s', '-s', '-s', file
      ]);
      
      // If output contains coordinate data, GPS exists
      return stdout.trim().length > 0 && !stdout.includes('-');
    } catch (error) {
      // If exiftool fails, assume no GPS data
      return false;
    }
  }

  /**
   * Get existing GPS coordinates from file
   */
  async getGPSData(file: string): Promise<Coordinates | null> {
    try {
      const { stdout } = await execa('exiftool', [
        '-GPSLatitude', '-GPSLongitude', '-c', '%.6f',
        '-s', '-s', '-s', file
      ]);
      
      const lines = stdout.trim().split('\n');
      if (lines.length >= 2 && lines[0] && lines[1]) {
        const lat = parseFloat(lines[0]);
        const lng = parseFloat(lines[1]);
        
        if (!isNaN(lat) && !isNaN(lng)) {
          return { lat, lng };
        }
      }
      
      return null;
    } catch (error) {
      return null;
    }
  }

  /**
   * Filter files to only supported formats
   */
  filterSupportedFiles(files: string[]): string[] {
    return files.filter(file => {
      const ext = extname(file).toLowerCase();
      return this.SUPPORTED_EXTENSIONS.has(ext);
    });
  }

  /**
   * Validate file exists and is supported
   */
  private async validateFile(file: string): Promise<void> {
    try {
      await fs.access(file);
    } catch (error) {
      throw new Error(`File not found: ${file}`);
    }
    
    const ext = extname(file).toLowerCase();
    if (!this.SUPPORTED_EXTENSIONS.has(ext)) {
      throw new Error(`Unsupported file format: ${ext}. Supported: ${Array.from(this.SUPPORTED_EXTENSIONS).join(', ')}`);
    }
  }

  /**
   * Check if ExifTool is available
   */
  async checkExifToolAvailable(): Promise<boolean> {
    try {
      await execa('exiftool', ['-ver']);
      return true;
    } catch (error) {
      return false;
    }
  }

  /**
   * Get supported file extensions
   */
  getSupportedExtensions(): string[] {
    return Array.from(this.SUPPORTED_EXTENSIONS);
  }
}

// Export singleton instance
export const gpsService = new GPSService();
export default gpsService;