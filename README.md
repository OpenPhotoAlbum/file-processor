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

## Development

This project uses TypeScript and requires Node.js 18+.

```bash
npm run build    # Compile TypeScript
npm run dev      # Development mode
```