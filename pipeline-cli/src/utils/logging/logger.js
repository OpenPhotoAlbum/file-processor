/**
 * Scoped Logger Implementation
 * Each component creates its own logger instance with a fixed context
 * Fully configurable through environment variables
 */
import { LogLevel } from './types.js';
import { getLoggingConfig } from '../config/logging.js';
import { appendFileSync, existsSync, mkdirSync } from 'fs';
import { dirname } from 'path';
const RESET_COLOR = '\x1b[0m';
export var LogOutput;
(function (LogOutput) {
    LogOutput["CONSOLE"] = "console";
    LogOutput["FILE"] = "file";
})(LogOutput || (LogOutput = {}));
export class Logger {
    context;
    static config = null;
    static envConfig = null;
    constructor(context) {
        this.context = context;
        // Initialize config from environment on first use
        if (!Logger.config) {
            Logger.initializeConfig();
        }
    }
    /**
     * Initialize configuration from environment variables
     */
    static initializeConfig() {
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
        const config = Logger.ensureConfig();
        if (config.outputs.includes(LogOutput.FILE) && config.filePath) {
            const logDir = dirname(config.filePath);
            if (!existsSync(logDir)) {
                mkdirSync(logDir, { recursive: true });
            }
        }
    }
    /**
     * Ensure config is initialized and return it
     */
    static ensureConfig() {
        if (!Logger.config) {
            Logger.initializeConfig();
        }
        return Logger.config;
    }
    /**
     * Configure all logger instances globally (optional override)
     */
    static configure(config) {
        const currentConfig = Logger.ensureConfig();
        Logger.config = { ...currentConfig, ...config };
        // Ensure log directory exists if file output is enabled
        const finalConfig = Logger.ensureConfig();
        if (finalConfig.outputs.includes(LogOutput.FILE) && finalConfig.filePath) {
            const logDir = dirname(finalConfig.filePath);
            if (!existsSync(logDir)) {
                mkdirSync(logDir, { recursive: true });
            }
        }
    }
    /**
     * Get current configuration
     */
    static getConfig() {
        return { ...Logger.ensureConfig() };
    }
    /**
     * Log debug message
     */
    debug(message, data) {
        this.log(LogLevel.DEBUG, message, data);
    }
    /**
     * Log info message
     */
    info(message, data) {
        this.log(LogLevel.INFO, message, data);
    }
    /**
     * Log warning message
     */
    warn(message, data) {
        this.log(LogLevel.WARN, message, data);
    }
    /**
     * Log error message
     */
    error(message, error, data) {
        this.log(LogLevel.ERROR, message, data, error);
    }
    /**
     * Log fatal message
     */
    fatal(message, error, data) {
        this.log(LogLevel.FATAL, message, data, error);
    }
    /**
     * Internal logging method
     */
    log(level, message, data, error) {
        // Check if we should log this level
        if (level < Logger.ensureConfig().level) {
            return;
        }
        const entry = {
            timestamp: new Date().toISOString(),
            level,
            context: this.context,
            message,
            data,
            error
        };
        // Output to each configured target
        Logger.ensureConfig().outputs.forEach((output) => {
            if (output === LogOutput.CONSOLE) {
                this.writeToConsole(entry);
            }
            else if (output === LogOutput.FILE) {
                this.writeToFile(entry);
            }
        });
    }
    /**
     * Write to console with colors
     */
    writeToConsole(entry) {
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
    writeToFile(entry) {
        const config = Logger.ensureConfig();
        if (!config.filePath)
            return;
        const formatted = `${this.formatMessage(entry, LogOutput.FILE)}\n`;
        try {
            appendFileSync(config.filePath, formatted, 'utf8');
        }
        catch (error) {
            // Fallback to console if file write fails
            console.error('Failed to write to log file:', error);
            console.log(formatted.trim());
        }
    }
    /**
     * Format message for different outputs
     */
    formatMessage(entry, target) {
        const config = Logger.ensureConfig();
        const timestamp = config.includeTimestamp ? `${entry.timestamp} ` : '';
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
            const levelColor = Logger.envConfig?.levelColors[LogLevel[entry.level]] || '';
            const scopeColor = Logger.envConfig?.scopeColors[entry.context] || Logger.envConfig?.scopeColors.default || '';
            return `${timestamp}${levelColor}[${levelStr}]${RESET_COLOR} ${scopeColor}${contextStr}${RESET_COLOR} ${message}`;
        }
        else {
            // Plain text for files
            return `${timestamp}[${levelStr}] ${contextStr} ${message}`;
        }
    }
    /**
     * Format values for logging
     */
    formatValue(value) {
        if (typeof value === 'string') {
            return value;
        }
        else if (typeof value === 'number' || typeof value === 'boolean') {
            return String(value);
        }
        else if (Array.isArray(value)) {
            return `[${value.join(',')}]`;
        }
        else if (value && typeof value === 'object') {
            return JSON.stringify(value);
        }
        return String(value);
    }
    /**
     * Determine if output should be colorized
     */
    shouldColorize(target) {
        const config = Logger.ensureConfig();
        return target === LogOutput.CONSOLE &&
            process.stdout.isTTY &&
            config.colorize;
    }
}
//# sourceMappingURL=logger.js.map