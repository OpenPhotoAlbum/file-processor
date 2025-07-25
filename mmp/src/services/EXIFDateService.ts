import { execFile } from 'child_process';
import { promisify } from 'util';
import { DateService } from './DateService.js';

const execFileAsync = promisify(execFile);

export interface BatchResult {
  total: number;
  successful: number;
  failed: number;
  errors: Array<{ file: string; error: string }>;
}

export interface EXIFWriteResult {
  success: boolean;
  file: string;
  error?: string;
}

/**
 * Service for writing date metadata to image files using ExifTool
 * Handles both individual files and batch operations
 */
export class EXIFDateService {
  private dateService = new DateService();

  /**
   * Write date to a single image file using ExifTool
   */
  async writeDate(file: string, date: Date, description?: string): Promise<EXIFWriteResult> {
    try {
      const exifDate = this.dateService.formatForEXIF(date);
      const currentTime = this.dateService.formatForEXIF(new Date());

      const args = [
        `-DateTimeOriginal=${exifDate}`,
        `-CreateDate=${exifDate}`,
        `-ModifyDate=${currentTime}`,
        '-overwrite_original'
      ];

      if (description) {
        args.push(`-ImageDescription=${description}`);
      }

      args.push(file);

      await execFileAsync('exiftool', args);

      return { success: true, file };

    } catch (error) {
      const errorMessage = error instanceof Error ? error.message : 'Unknown EXIF write error';

      return {
        success: false,
        file,
        error: errorMessage
      };
    }
  }

  /**
   * Write the same date to multiple files in batch
   */
  async writeBatchDates(files: string[], date: Date, description?: string): Promise<BatchResult> {
    const results: EXIFWriteResult[] = [];
    const batchSize = 10; // Process files in batches to avoid overwhelming the system

    // Process files in batches
    for (let i = 0; i < files.length; i += batchSize) {
      const batch = files.slice(i, i + batchSize);
      const batchPromises = batch.map(file => this.writeDate(file, date, description));
      
      const batchResults = await Promise.all(batchPromises);
      results.push(...batchResults);
    }

    // Compile batch results
    const successful = results.filter(r => r.success).length;
    const failed = results.filter(r => !r.success).length;
    const errors = results
      .filter(r => !r.success)
      .map(r => ({ file: r.file, error: r.error || 'Unknown error' }));

    const batchResult: BatchResult = {
      total: files.length,
      successful,
      failed,
      errors
    };

    return batchResult;
  }

  /**
   * Verify that ExifTool is available on the system
   */
  async verifyExifTool(): Promise<boolean> {
    try {
      await execFileAsync('exiftool', ['-ver']);
      return true;
    } catch (error) {
      return false;
    }
  }

  /**
   * Get current EXIF date from a file for verification
   */
  async getExifDate(file: string): Promise<string | null> {
    try {
      const { stdout } = await execFileAsync('exiftool', ['-DateTimeOriginal', '-s3', file]);
      return stdout.trim() || null;
    } catch (error) {
      return null;
    }
  }
}