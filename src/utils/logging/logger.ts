/**
 * Scoped Logger Implementation
 * Each component creates its own logger instance with a fixed context
 * Fully configurable through environment variables
 */

import { LogLevel, LoggingConfig, LogEntry } from './types.js';
import { getLoggingConfig } from '../config/logging.js';
import { appendFileSync, existsSync, mkdirSync } from 'fs';
import { dirname } from 'path';

const RESET_COLOR = '\x1b[0m';

export enum LogOutput {
  CONSOLE = 'console',
  FILE = 'file'
}

export class Logger {
  private static config: any = null;
  private static envConfig: any = null;

  constructor(private context: string) {
    // Initialize config from environment on first use
    if (!Logger.config) {
      Logger.initializeConfig();
    }
  }

  /**
   * Initialize configuration from environment variables
   */
  private static initializeConfig(): void {
    Logger.envConfig = getLoggingConfig();
    Logger.config = {
      level: Logger.envConfig.level,
      includeTimestamp: Logger.envConfig.includeTimestamp,
      colorize: Logger.envConfig.colorize,
      format: Logger.envConfig.format,
      outputs: Logger.envConfig.outputs,
      filePath: Logger.envConfig.filePath
    };
    
    // Ensure log directory exists if file output is enabled
    if (Logger.config.outputs.includes(LogOutput.FILE) && Logger.config.filePath) {
      const logDir = dirname(Logger.config.filePath);
      if (!existsSync(logDir)) {
        mkdirSync(logDir, { recursive: true });
      }
    }
  }

  /**
   * Configure all logger instances globally (optional override)
   */
  static configure(config: Partial<LoggingConfig>): void {
    if (!Logger.config) {
      Logger.initializeConfig();
    }
    
    Logger.config = { ...Logger.config, ...config };
    
    // Ensure log directory exists if file output is enabled
    if (Logger.config.outputs.includes(LogOutput.FILE) && Logger.config.filePath) {
      const logDir = dirname(Logger.config.filePath);
      if (!existsSync(logDir)) {
        mkdirSync(logDir, { recursive: true });
      }
    }
  }

  /**
   * Get current configuration
   */
  static getConfig(): LoggingConfig {
    return { ...Logger.config };
  }

  /**
   * Log debug message
   */
  debug(message: string, data?: Record<string, any>): void {
    this.log(LogLevel.DEBUG, message, data);
  }

  /**
   * Log info message
   */
  info(message: string, data?: Record<string, any>): void {
    this.log(LogLevel.INFO, message, data);
  }

  /**
   * Log warning message
   */
  warn(message: string, data?: Record<string, any>): void {
    this.log(LogLevel.WARN, message, data);
  }

  /**
   * Log error message
   */
  error(message: string, error?: Error, data?: Record<string, any>): void {
    this.log(LogLevel.ERROR, message, data, error);
  }

  /**
   * Log fatal message
   */
  fatal(message: string, error?: Error, data?: Record<string, any>): void {
    this.log(LogLevel.FATAL, message, data, error);
  }

  /**
   * Internal logging method
   */
  private log(level: LogLevel, message: string, data?: Record<string, any>, error?: Error): void {
    // Check if we should log this level
    if (level < Logger.config.level) {
      return;
    }

    const entry: LogEntry = {
      timestamp: new Date().toISOString(),
      level,
      context: this.context,
      message,
      data,
      error
    };

    // Output to each configured target
    Logger.config.outputs.forEach((output: string) => {
      if (output === LogOutput.CONSOLE) {
        this.writeToConsole(entry);
      } else if (output === LogOutput.FILE) {
        this.writeToFile(entry);
      }
    });
  }

  /**
   * Write to console with colors
   */
  private writeToConsole(entry: LogEntry): void {
    const formatted = this.formatMessage(entry, LogOutput.CONSOLE);
    
    // Use appropriate console method based on level
    switch (entry.level) {
      case LogLevel.DEBUG:
        console.debug(formatted);
        break;
      case LogLevel.INFO:
        console.info(formatted);
        break;
      case LogLevel.WARN:
        console.warn(formatted);
        break;
      case LogLevel.ERROR:
      case LogLevel.FATAL:
        console.error(formatted);
        break;
    }
  }

  /**
   * Write to file without colors
   */
  private writeToFile(entry: LogEntry): void {
    if (!Logger.config.filePath) return;

    const formatted = this.formatMessage(entry, LogOutput.FILE) + '\n';
    
    try {
      appendFileSync(Logger.config.filePath, formatted, 'utf8');
    } catch (error) {
      // Fallback to console if file write fails
      console.error('Failed to write to log file:', error);
      console.log(formatted.trim());
    }
  }

  /**
   * Format message for different outputs
   */
  private formatMessage(entry: LogEntry, target: LogOutput): string {
    const timestamp = Logger.config.includeTimestamp ? entry.timestamp + ' ' : '';
    const levelStr = LogLevel[entry.level].padEnd(5);
    const contextStr = `[${entry.context}]`;
    
    // Build base message
    let message = entry.message;
    
    // Add structured data if present
    if (entry.data && Object.keys(entry.data).length > 0) {
      const dataStr = Object.entries(entry.data)
        .map(([key, value]) => `${key}=${this.formatValue(value)}`)
        .join(' ');
      message += ` ${dataStr}`;
    }
    
    // Add error info if present
    if (entry.error) {
      message += ` error="${entry.error.message}"`;
    }

    if (this.shouldColorize(target)) {
      // Colored output for terminal using environment config
      const levelColor = Logger.envConfig.levelColors[LogLevel[entry.level]] || '';
      const scopeColor = Logger.envConfig.scopeColors[entry.context] || Logger.envConfig.scopeColors.default || '';
      
      return `${timestamp}${levelColor}[${levelStr}]${RESET_COLOR} ${scopeColor}${contextStr}${RESET_COLOR} ${message}`;
    } else {
      // Plain text for files
      return `${timestamp}[${levelStr}] ${contextStr} ${message}`;
    }
  }

  /**
   * Format values for logging
   */
  private formatValue(value: any): string {
    if (typeof value === 'string') {
      return value;
    } else if (typeof value === 'number' || typeof value === 'boolean') {
      return String(value);
    } else if (Array.isArray(value)) {
      return `[${value.join(',')}]`;
    } else if (value && typeof value === 'object') {
      return JSON.stringify(value);
    }
    return String(value);
  }

  /**
   * Determine if output should be colorized
   */
  private shouldColorize(target: LogOutput): boolean {
    return target === LogOutput.CONSOLE && 
           process.stdout.isTTY && 
           Logger.config.colorize;
  }
}