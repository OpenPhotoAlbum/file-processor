/**
 * Scoped Logger Implementation
 * Each component creates its own logger instance with a fixed context
 * Fully configurable through environment variables
 */
import { LoggingConfig, LogData } from './types.js';
export declare enum LogOutput {
    CONSOLE = "console",
    FILE = "file"
}
export declare class Logger {
    private context;
    private static config;
    private static envConfig;
    constructor(context: string);
    /**
     * Initialize configuration from environment variables
     */
    private static initializeConfig;
    /**
     * Ensure config is initialized and return it
     */
    private static ensureConfig;
    /**
     * Configure all logger instances globally (optional override)
     */
    static configure(config: Partial<LoggingConfig>): void;
    /**
     * Get current configuration
     */
    static getConfig(): LoggingConfig;
    /**
     * Log debug message
     */
    debug(message: string, data?: LogData): void;
    /**
     * Log info message
     */
    info(message: string, data?: LogData): void;
    /**
     * Log warning message
     */
    warn(message: string, data?: LogData): void;
    /**
     * Log error message
     */
    error(message: string, error?: Error, data?: LogData): void;
    /**
     * Log fatal message
     */
    fatal(message: string, error?: Error, data?: LogData): void;
    /**
     * Internal logging method
     */
    private log;
    /**
     * Write to console with colors
     */
    private writeToConsole;
    /**
     * Write to file without colors
     */
    private writeToFile;
    /**
     * Format message for different outputs
     */
    private formatMessage;
    /**
     * Format values for logging
     */
    private formatValue;
    /**
     * Determine if output should be colorized
     */
    private shouldColorize;
}
