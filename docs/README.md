# Media Processing Pipeline Documentation

Welcome to the documentation for the Media Processing Pipeline project. This system provides comprehensive media file processing with metadata extraction, GPS parsing, and configurable logging.

## 📖 Documentation Index

### Core Systems
- **[Path System](./path-system.md)** - Portable path abstraction with environment-based configuration
- **[Logging System](./logging-system.md)** - Scoped logging with dual-output formatting
- **[Error System](./error-system.md)** - Hybrid error handling with structured codes and semantic methods
- **[Image Validation](./image-validation.md)** - File signature detection and validation
- **[Configuration](./configuration.md)** - Environment-based configuration management

### Processing Components  
- **[Image Processing](./image-processing.md)** - JPEG, PNG, HEIC, GIF processing
- **[EXIF Extraction](./exif-extraction.md)** - Comprehensive metadata extraction
- **[GPS Processing](./gps-processing.md)** - Multi-source GPS data with conflict resolution

### Development
- **[Getting Started](./getting-started.md)** - Setup and development guide
- **[Testing](./testing.md)** - Testing strategies and sample data
- **[Contributing](./contributing.md)** - Development workflow and standards

## 🚀 Quick Start

1. **Clone and Setup**
   ```bash
   git clone <repository>
   cd media-processing-pipeline
   npm install
   ```

2. **Configure Environment**
   ```bash
   cp .env.example .env
   # Edit .env with your paths and settings
   ```

3. **Build and Test**
   ```bash
   npm run build
   npm run test
   ```

## 🏗️ Architecture Overview

```
src/
├── processors/        # Media-specific processors (Image, Video, Audio)
├── utils/
│   ├── logging/      # Scoped logging system
│   ├── errors/       # Hybrid error system with semantic methods
│   ├── config/       # Environment configuration
│   ├── image/        # Image validation utilities  
│   ├── exif/         # EXIF extraction
│   ├── gps/          # GPS processing
│   └── paths.ts      # Path abstraction system
├── types/            # TypeScript type definitions
└── main.ts           # Application entry point
```

## 🔧 Key Features

- **🎯 Type-Safe**: Full TypeScript with comprehensive type definitions
- **📁 Portable Paths**: Environment-independent file references (`sample:`, `media:`, `relative:`)
- **📊 Rich Logging**: Scoped loggers with colored console and plain file output
- **⚠️ Hybrid Error System**: Structured error codes with semantic methods and autocomplete
- **🔍 Validation**: File signature detection and integrity checking
- **🗺️ GPS Processing**: Multi-source GPS data with conflict resolution
- **⚙️ Configurable**: All settings via environment variables with custom colors
- **🧪 Testable**: Comprehensive test suite with sample media files

## 🔒 Security Features

- **Path Sanitization**: Absolute paths never exposed in logs
- **Environment Isolation**: Base directory constraints
- **Credential Protection**: `.env` files excluded from version control
- **Input Validation**: File signature verification and size checking

## 📝 Recent Updates

- **Hybrid Error System**: Replaced magic strings with semantic methods and named constants
- **Structured Error Handling**: Consistent `MPP-[COMPONENT]-[SEVERITY]-[NUMBER]` error codes
- **Enhanced Logging Integration**: Component-scoped loggers with path sanitization
- **Path System Refactor**: Extracted hardcoded prefixes into type-safe `PathPrefix` enum
- **Security Improvements**: Removed sensitive files from git history  
- **Test Organization**: All test work moved to ignored `scratch/` directory
- **Enhanced Documentation**: Comprehensive inline and external documentation

## 🆘 Support

For questions, issues, or contributions:
- Check the relevant documentation pages above
- Look for examples in the `scratch/` directory
- Review the codebase for inline documentation
- Create issues for bugs or feature requests