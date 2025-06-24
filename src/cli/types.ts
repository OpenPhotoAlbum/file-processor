/**
 * CLI-specific types and interfaces
 */

export interface CLIOptions {
  /** Directory to scan (non-recursive) */
  directory?: string;
  
  /** Directory to scan recursively */
  recursive?: string;
  
  /** Specific files to process */
  files?: string[];
  
  /** MIME types to filter (overrides env var) */
  mime?: string;
  
  /** Output file path */
  output?: string;
  
  /** Overwrite existing output file */
  overwrite?: boolean;
  
  /** Output in JSON format */
  json?: boolean;
  
  /** Minimal console output */
  quiet?: boolean;
}

export interface ProcessingResult {
  /** Processing was successful */
  success: boolean;
  
  /** Number of files processed */
  filesProcessed: number;
  
  /** Processing duration in milliseconds */
  duration: number;
  
  /** Individual file results */
  results: FileProcessingResult[];
  
  /** Summary statistics */
  summary: ProcessingSummary;
}

export interface FileProcessingResult {
  /** File path (sanitized for logging) */
  filePath: string;
  
  /** Processing was successful */
  success: boolean;
  
  /** Processing duration in milliseconds */
  duration: number;
  
  /** Extracted metadata */
  metadata?: Record<string, unknown>;
  
  /** Error message if processing failed */
  error?: string;
  
  /** Warnings encountered during processing */
  warnings: string[];
}

export interface ProcessingSummary {
  /** Total files discovered */
  totalDiscovered: number;
  
  /** Successfully processed files */
  successfullyProcessed: number;
  
  /** Files with errors */
  failedFiles: number;
  
  /** Files with warnings */
  filesWithWarnings: number;
  
  /** Total processing time */
  totalDuration: number;
  
  /** Average processing time per file */
  averageDuration: number;
  
  /** MIME type breakdown */
  mimeTypeBreakdown: Record<string, number>;
  
  /** Size statistics */
  sizeStats: {
    totalSize: number;
    averageSize: number;
    largestFile: { path: string; size: number } | null;
    smallestFile: { path: string; size: number } | null;
  };
}

export interface OutputOptions {
  /** Output format */
  format: 'console' | 'json';
  
  /** Output destination */
  destination: 'stdout' | 'file';
  
  /** Output file path (if destination is 'file') */
  filePath?: string;
  
  /** Overwrite existing file */
  overwrite: boolean;
  
  /** Quiet mode (minimal output) */
  quiet: boolean;
}