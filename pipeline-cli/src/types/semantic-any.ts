/* eslint-disable @typescript-eslint/no-explicit-any */
/**
 * Semantic aliases for 'any' types
 * 
 * These provide clear documentation for WHY we're using 'any' in specific contexts.
 * Each alias documents the reason and shows it's an intentional decision, not laziness.
 * 
 * Rules:
 * 1. Use these ONLY when the data is truly unknowable at compile time
 * 2. Always include a comment explaining why this specific case needs dynamic typing
 * 3. Convert to proper types as soon as the data structure becomes known
 */

/**
 * Raw metadata from external tools (ExifTool, ffprobe, etc.)
 * 
 * Why any: External tools return varying JSON structures with 200+ possible fields
 * that differ by camera manufacturer, model, software version, and file format.
 * The exact structure cannot be known at compile time.
 */
export type ExternalToolOutput = any;

/**
 * Parsed metadata from unknown sidecar files (.json, .xmp, .xml)
 * 
 * Why any: Sidecar files come from various sources (Google Takeout, Adobe, custom tools)
 * with completely different schemas. We need to parse them generically first,
 * then extract known fields.
 */
export type UnknownSidecarData = any;

/**
 * Raw EXIF data before parsing
 * 
 * Why any: EXIF fields vary dramatically by camera and can include manufacturer-specific
 * extensions. ExifTool returns different field combinations for each file.
 */
export type RawExifOutput = any;

/**
 * Generic JSON content from files
 * 
 * Why any: When reading arbitrary JSON files, we don't know the structure until
 * we examine the content and determine the source format.
 */
export type UnknownJsonContent = any;

/**
 * Error objects from external processes
 * 
 * Why any: Error objects from child processes, network requests, and external tools
 * have varying structures. We need to safely extract error information without
 * knowing the exact error type.
 */
export type ExternalErrorData = any;

/**
 * Legacy/deprecated data structures
 * 
 * Why any: During migration or when handling old data formats that we're
 * gradually replacing with proper types.
 */
export type LegacyDataStructure = any;

/**
 * Configuration values from environment variables
 * 
 * Why any: Environment variables are strings, but we need to parse them into
 * various types (numbers, booleans, objects) and the exact type depends on
 * the specific configuration key.
 */
export type DynamicConfigValue = any;

/**
 * Database query results with unknown structure
 * 
 * Why any: Database rows from dynamic queries can have varying column sets
 * and data types. We need to extract known fields after querying.
 */
export type DatabaseRowData = any;