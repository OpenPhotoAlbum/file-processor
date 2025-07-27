# Media Processing Pipeline

A comprehensive media processing system for extracting metadata, GPS coordinates, and other information from photos and videos.

## Features

- Image processing (JPEG, PNG, HEIC, GIF, TIFF)
- Video processing (MOV, MP4, AVI)
- EXIF metadata extraction
- GPS coordinate parsing with conflict resolution
- Configurable logging system
- Path abstraction for security

## Setup

```bash
npm install
cp .env.example .env
# Configure your paths in .env
npm run build
npm run start
```

## Project Structure

```
src/
├── processors/     # Media-specific processors
├── utils/         # Shared utilities
├── types/         # TypeScript type definitions
└── main.ts        # Entry point
```

## Documentation

### Documentation Website

Comprehensive documentation is available through the project's documentation website built with Docusaurus:

- **Local Development:** `npm run docs:dev` - Start documentation server at http://localhost:3000
- **Build Documentation:** `npm run docs:build` - Generate static documentation site  
- **Deploy Documentation:** `npm run docs:deploy` - Deploy to GitHub Pages (when ready)

The documentation website includes:

- **Getting Started Guides** - Installation, setup, and first steps
- **CLI Reference** - Complete command-line interface documentation
- **Processing Features** - Photo and video analysis capabilities
- **Geographic Services** - GPS enrichment and location features
- **Database Architecture** - Schema design and data management
- **Developer Guides** - Architecture, testing, and contribution guidelines
- **Photo Management** - Organization, deduplication, and workflows
- **Scanning Tools** - Physical photo digitization and processing
- **API References** - Complete technical specifications

### Quick Documentation Access

Key documentation files are also available in the `/docs` directory:

- [`docs/getting-started.md`](/docs/getting-started.md) - Quick start guide
- [`docs/cli/README.md`](/docs/cli/README.md) - CLI usage and examples
- [`docs/error-system.md`](/docs/error-system.md) - Error handling architecture
- [`docs/photo-organization-strategy.md`](/docs/photo-organization-strategy.md) - Photo management workflow

## Development

This project uses TypeScript and requires Node.js 18+.

```bash
npm run build    # Compile TypeScript
npm run dev      # Development mode
npm run test     # Run test suite
npm run lint     # Check code quality
```

### Documentation Development

To work on documentation:

```bash
cd docs-website
npm install
npm start        # Start docs development server
```

See [`docs-website/README.md`](docs-website/README.md) for complete documentation development guide.