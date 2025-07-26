---
title: "CLI Documentation"
description: Auto-generated from README.md
---

# CLI Documentation

**Last Updated:** 2025-07-23  
**Status:** Active - MMP unification in progress

## Command Line Interfaces

### Claude Slash Commands
**Status:** Operational - Team coordination commands  
**Purpose:** Multi-Claude orchestration and communication

See [slash-commands.md](slash-commands.md) for detailed usage of:
- `/mail` - Inter-Claude communication system
- `/summon` - Claude role initialization system

### MMP Unified CLI Tool
**Status:** GPS, CROP, SCAN working; DATES, ROTATE, TRANSCRIBE pending  
**Location:** Main pipeline CLI interface

#### Available Commands
- **GPS tagging** - Add GPS coordinates to photos
- **Photo cropping** - Crop photos to remove borders/backgrounds  
- **Scanning workflow** - Complete digitization process
- **Timestamp extraction** - `--timestamp-only` mode for filename generation
- **JSON output** - `--json` mode for pipeable metadata

#### Pending Commands
- **Date correction** - Manual date setting for historical photos
- **Photo rotation** - Orientation correction
- **Audio transcription** - Speech-to-text for video files
- **Filename suggestions** - AI-powered filename generation

### Media File Inspector Integration
**Status:** Integrated into main CLI  
**Purpose:** File format analysis and metadata inspection

See [media-file-inspector.md](media-file-inspector.md) for detailed integration notes.

## Usage Examples

### Basic Processing
```bash
node dist/main.js -f "/photos/archive/2023/07/photo.jpg" -o "output.json"
```

### JSON Output Mode
```bash
node dist/main.js -f "photo.jpg" --json | jq '.location.landmarks'
```

### Timestamp Extraction
```bash
node dist/main.js -f "photo.jpg" --timestamp-only
# Output: 2023-07-15_14-32-45
```

### Environment Variables
- `GEOLOCATION_ENABLED=true` - Enable reverse geocoding
- `RECREATION_GOV_PROVIDER_ENABLED=true` - Enable Recreation.gov lookups
- `GNIS_PROVIDER_ENABLED=true` - Enable USGS GNIS lookups
- `NPS_PROVIDER_ENABLED=true` - Enable National Parks Service lookups

## Development Status

The MMP unified CLI is actively being developed to consolidate all photo processing tools into a single interface. Current implementation provides core metadata processing with additional tools being integrated.

For complete implementation details, see `/plans/mmp-cli-unification-plan.md`.