/**
 * Logging system types and enums
 */

export enum LogLevel {
  DEBUG = 0,
  INFO = 1,
  WARN = 2,
  ERROR = 3,
  FATAL = 4
}

export interface LoggingConfig {
  level: LogLevel;
  includeTimestamp: boolean;
  colorize: boolean;
  format: 'console' | 'json';
  outputs: ('console' | 'file')[];
  filePath?: string;
}

// Type for structured logging data - JSON-serializable values
export type LogData = Record<string, unknown>;

export interface LogEntry {
  timestamp: string;
  level: LogLevel;
  context: string;
  message: string;
  data?: LogData;
  error?: Error;
}