/**
 * Error system type definitions
 */

export enum ErrorSeverity {
  FATAL = 'F',    // Process cannot continue
  ERROR = 'E',    // Operation failed, but process can continue  
  WARNING = 'W',  // Issue detected, but operation succeeded
  INFO = 'I'      // Informational, not an error
}

export enum ErrorComponent {
  VALIDATION = 'VAL',     // File validation (signatures, size checks)
  EXIF = 'EXIF',         // EXIF metadata extraction
  GPS = 'GPS',           // GPS coordinate processing
  TIMESTAMP = 'TIME',    // Timestamp extraction and parsing
  PATH = 'PATH',         // Path resolution and file access
  METADATA = 'META',     // Sidecar metadata processing
  IMAGE = 'IMG',         // Image processing
  VIDEO = 'VID',         // Video processing
  CONFIG = 'CFG',        // Configuration errors
  SYSTEM = 'SYS'         // System/infrastructure errors
}