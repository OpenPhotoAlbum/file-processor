/**
 * Logging configuration from environment variables
 * Makes the entire logging system configurable without hardcoded values
 */

import { LogLevel } from '../logging/types.js';

interface LoggingEnvConfig {
  // Log levels
  LOG_LEVEL: string;
  LOG_INCLUDE_TIMESTAMP: string;
  LOG_COLORIZE: string;
  LOG_FORMAT: string;
  
  // Output targets
  LOG_OUTPUTS: string;
  LOG_FILE_PATH: string;
  
  // Colors (hex codes without #)
  LOG_COLOR_DEBUG: string;
  LOG_COLOR_INFO: string;
  LOG_COLOR_WARN: string;
  LOG_COLOR_ERROR: string;
  LOG_COLOR_FATAL: string;
  
  // Scope colors - each component can have its own color
  LOG_SCOPE_COLOR_IMAGE_PROCESSOR: string;
  LOG_SCOPE_COLOR_IMAGE_VALIDATION: string;
  LOG_SCOPE_COLOR_EXIF_EXTRACTOR: string;
  LOG_SCOPE_COLOR_GPS_EXTRACTION: string;
  LOG_SCOPE_COLOR_PRE_PROCESSOR: string;
  LOG_SCOPE_COLOR_PIPELINE_ROUTER: string;
  LOG_SCOPE_COLOR_POST_PROCESSOR: string;
  LOG_SCOPE_COLOR_VIDEO_PROCESSOR: string;
  LOG_SCOPE_COLOR_AUDIO_PROCESSOR: string;
  LOG_SCOPE_COLOR_FILE_VALIDATOR: string;
  LOG_SCOPE_COLOR_MIME_DETECTION: string;
  LOG_SCOPE_COLOR_PATH_RESOLVER: string;
  LOG_SCOPE_COLOR_DEFAULT: string;
}

/**
 * Parse log level from string
 */
function parseLogLevel(level: string): LogLevel {
  const levelMap: Record<string, LogLevel> = {
    'DEBUG': LogLevel.DEBUG,
    'INFO': LogLevel.INFO,
    'WARN': LogLevel.WARN,
    'ERROR': LogLevel.ERROR,
    'FATAL': LogLevel.FATAL
  };
  
  return levelMap[level.toUpperCase()] ?? LogLevel.INFO;
}

/**
 * Parse boolean from string
 */
function parseBoolean(value: string): boolean {
  return ['true', '1', 'yes', 'on'].includes(value.toLowerCase());
}

/**
 * Parse array from comma-separated string
 */
function parseArray(value: string): string[] {
  return value.split(',').map(item => item.trim()).filter(Boolean);
}

/**
 * Convert hex color to ANSI escape code
 */
function hexToAnsi(hex: string): string {
  if (!hex || hex === 'none') return '';
  
  // Remove # if present
  hex = hex.replace('#', '');
  
  // Convert hex to RGB
  const r = parseInt(hex.substring(0, 2), 16);
  const g = parseInt(hex.substring(2, 4), 16);
  const b = parseInt(hex.substring(4, 6), 16);
  
  // Return ANSI 24-bit color code
  return `\x1b[38;2;${r};${g};${b}m`;
}

/**
 * Get logging configuration from environment variables
 */
export function getLoggingConfig() {
  const env = process.env as Partial<LoggingEnvConfig>;
  
  return {
    // Basic settings
    level: parseLogLevel(env.LOG_LEVEL || 'INFO'),
    includeTimestamp: parseBoolean(env.LOG_INCLUDE_TIMESTAMP || 'true'),
    colorize: parseBoolean(env.LOG_COLORIZE || 'true'),
    format: (env.LOG_FORMAT || 'console') as 'console' | 'json',
    outputs: parseArray(env.LOG_OUTPUTS || 'console') as ('console' | 'file')[],
    filePath: env.LOG_FILE_PATH || 'logs/media-processing.log',
    
    // Log level colors
    levelColors: {
      DEBUG: hexToAnsi(env.LOG_COLOR_DEBUG || '808080'),    // Gray
      INFO:  hexToAnsi(env.LOG_COLOR_INFO || '00FFFF'),     // Cyan
      WARN:  hexToAnsi(env.LOG_COLOR_WARN || 'FFFF00'),     // Yellow
      ERROR: hexToAnsi(env.LOG_COLOR_ERROR || 'FF0000'),    // Red
      FATAL: hexToAnsi(env.LOG_COLOR_FATAL || 'FF00FF')     // Magenta
    },
    
    // Scope colors
    scopeColors: {
      'Image Processor':   hexToAnsi(env.LOG_SCOPE_COLOR_IMAGE_PROCESSOR || '5F9EFF'),   // Bright Blue
      'Image Validation':  hexToAnsi(env.LOG_SCOPE_COLOR_IMAGE_VALIDATION || '5FFFFF'),  // Bright Cyan
      'EXIF Extractor':    hexToAnsi(env.LOG_SCOPE_COLOR_EXIF_EXTRACTOR || '5FFF5F'),    // Bright Green
      'GPS Extraction':    hexToAnsi(env.LOG_SCOPE_COLOR_GPS_EXTRACTION || 'FFFF5F'),    // Bright Yellow
      'Pre Processor':     hexToAnsi(env.LOG_SCOPE_COLOR_PRE_PROCESSOR || 'FF5FFF'),     // Bright Magenta
      'Pipeline Router':   hexToAnsi(env.LOG_SCOPE_COLOR_PIPELINE_ROUTER || 'FF5F5F'),   // Bright Red
      'Post Processor':    hexToAnsi(env.LOG_SCOPE_COLOR_POST_PROCESSOR || 'FFFFFF'),    // Bright White
      'Video Processor':   hexToAnsi(env.LOG_SCOPE_COLOR_VIDEO_PROCESSOR || '0000FF'),   // Blue
      'Audio Processor':   hexToAnsi(env.LOG_SCOPE_COLOR_AUDIO_PROCESSOR || '00FF00'),   // Green
      'File Validator':    hexToAnsi(env.LOG_SCOPE_COLOR_FILE_VALIDATOR || 'FF00FF'),    // Magenta
      'MIME Detection':    hexToAnsi(env.LOG_SCOPE_COLOR_MIME_DETECTION || 'FFFFFF'),    // White
      'Path Resolver':     hexToAnsi(env.LOG_SCOPE_COLOR_PATH_RESOLVER || '808080'),     // Gray
      'default':           hexToAnsi(env.LOG_SCOPE_COLOR_DEFAULT || 'FFFFFF')            // White
    }
  };
}

/**
 * Validate logging configuration
 */
export function validateLoggingConfig() {
  const config = getLoggingConfig();
  const warnings: string[] = [];
  
  // Validate outputs
  const validOutputs = ['console', 'file'];
  const invalidOutputs = config.outputs.filter(output => !validOutputs.includes(output));
  if (invalidOutputs.length > 0) {
    warnings.push(`Invalid log outputs: ${invalidOutputs.join(', ')}. Valid options: ${validOutputs.join(', ')}`);
  }
  
  // Validate format
  const validFormats = ['console', 'json'];
  if (!validFormats.includes(config.format)) {
    warnings.push(`Invalid log format: ${config.format}. Valid options: ${validFormats.join(', ')}`);
  }
  
  // Validate file path if file output is enabled
  if (config.outputs.includes('file') && !config.filePath) {
    warnings.push('File output enabled but no file path specified');
  }
  
  return { config, warnings };
}