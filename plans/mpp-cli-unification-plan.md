# MPP (Media Processing Pipeline) CLI Unification Plan

**Created:** July 22, 2025  
**Status:** APPROVED - Ready for Implementation  
**Priority:** CRITICAL - Primary tool consolidation initiative

## Executive Summary

Create a unified `mpp` command-line tool that consolidates 50+ fragmented tools in `/photos/tools/` into a single, consistent interface following the successful pattern established by `multicrop-tool`.

## Current Problem Analysis

### Tool Fragmentation Crisis
The `/photos/tools/` directory contains severe tool fragmentation that creates significant user friction:

- **4+ different scanning interfaces** causing user confusion and decision paralysis
- **5+ duplicate detection tools** with no clear primary tool
- **Multiple argument patterns** (`--date MM-DD-YYYY` vs `-date 12-01-1997`)
- **Mixed programming languages** (Shell, Python venv, Node.js) with inconsistent dependency management
- **No tool discovery mechanism** - users resort to "bash history archaeology"
- **Interface chaos** - different date formats, output patterns, help systems

### Concrete User Pain Point
**Scenario:** User wants to scan photos  
**Current Reality:** Decision paralysis between:
```bash
/photos/tools/scan.sh --date 12-25-1990 --description "christmas"
# OR
/photos/tools/multicrop-tool/scan -dest /output -name christmas -date 12-25-1990
# OR
cd /photos/tools/document-cleanup && ./split-photos.sh
```

**Result:** User cannot remember which tool to use, leading to workflow inefficiency.

## Solution: MPP Unified CLI

### Design Principles

#### Following multicrop-tool Success Pattern
- **Single entry point:** `mpp` command available globally after installation
- **Clean arguments:** Simple flags like `-r red` instead of complex paths  
- **Self-contained:** Assets, configs, and dependencies managed internally
- **Global availability:** Install once with `./install.sh`, use anywhere
- **Consistent interface:** Same argument patterns across all operations
- **Comprehensive help:** Rich discovery system with examples

#### Architecture Philosophy
- **Operation-based organization** (not media-type based)
- **Wrapper system:** Leverage existing tools (multicrop, exiftool, etc.) via unified interface
- **TypeScript/Node.js core:** Consistent with main project architecture
- **Commander.js:** Standardized argument parsing and help system
- **Media-agnostic operations:** GPS and dates work on photos AND videos

## Core Capabilities for MPP v1

### 📸 Hardware Scanning
**Purpose:** Physical scanner operations
- **Scan photos from flatbed** with automatic file naming
- **Scan documents from ADF** (single-sided and duplex)

**Example Commands:**
```bash
mmp scan --flatbed --date 1990-12-25 --desc "christmas photos" --location cottage
mmp scan --adf --duplex --output /documents/contracts/
```

### 🔧 Processing & Enhancement  
**Purpose:** File operations and metadata management
- **Auto-crop multiple photos** from single scan file (uses multicrop)
- **Set/correct dates** on any media file (photos AND videos)  
- **Apply original dates to scanned photos** (e.g., "these are from Dec 1985")
- **Add GPS coordinates** to any media file (photos AND videos)
- **Use location shortcuts** (like "cottage" → coordinates)
- **Interactive rotation review** (see photo, choose rotation)
- **Manual rotation** (90, 180, 270 degrees) 
- **Extract dates from filenames** (intelligent parsing)
- **Batch operations** (dates, GPS, rotation on multiple files)

**Example Commands:**
```bash
mmp crop /scans/multi-photo.jpg --background red
mmp gps /photos/2020/ --location cottage --batch
mmp dates /scanned-photos/ --set "1985-12-25" 
mmp rotate /photos/ --interactive

# Unix Pipeline Integration Examples
mmp scan --flatbed --desc "family" | mmp crop --background red --output /separated/
mmp scan --flatbed | mmp crop --background red | xargs -I {} mmp dates {} --set "1985-12-25"
```

### 🔗 Astrophotography Calibration Approach
**Revolutionary photo separation using scanner calibration frames:**
- **Background reference images:** Uses actual scanner flat frames (red.jpg, white.jpg)
- **Image difference analysis:** Compares photo scans against pure background scans  
- **Clean background replacement:** Replaces scanner artifacts with pure white/transparent
- **Superior edge detection:** Works with irregular photo shapes and lighting variations

### 📝 Text & Content Extraction
**Purpose:** Extract and analyze text content from any media
- **Extract text from images** (OCR for documents/photos)
- **Extract text from videos** (speech transcription) 
- **AI-enhanced analysis** (optional `--ai-enhance` flag for any transcription)
- **Intelligent filename suggestions** (based on content analysis)

**Example Commands:**
```bash
mmp transcribe document.jpg                    # Simple OCR
mmp transcribe interview.mp4                   # Speech-to-text
mmp transcribe heritage-photo.jpg --ai-enhance # OCR + Claude analysis
mmp suggest-name mystery-scan.jpg --ai-enhance # Intelligent filename
```

## Excluded from MPP v1 Scope

**Kept as separate tools (correct decision):**
- **Google Takeout processing** - One-time migration tool, rarely used after de-googling
- **Directory cleanup scripts** - Housekeeping infrastructure, not user-facing capability
- **Batch processing workers** - Implementation details, not direct user workflow  
- **Duplicate detection** - Future enhancement, not current priority
- **Live Photo organization** - Future enhancement (detection already automatic in main CLI)

**Rationale:** Focus MPP on daily workflow tools. Migration and infrastructure tools serve different purposes and have different usage patterns.

## Technical Implementation Plan

### Directory Structure
```
/photos/tools/mpp/
├── mpp                    # Main executable (like multicrop)
├── install.sh            # Global installation script
├── package.json          # Node.js dependencies
├── tsconfig.json         # TypeScript configuration  
├── src/
│   ├── cli.ts            # Main CLI entry point
│   ├── config.ts         # Configuration management
│   ├── commands/         # Command implementations
│   │   ├── scan.ts       # Scanning operations
│   │   ├── gps.ts        # GPS operations
│   │   ├── dates.ts      # Date operations
│   │   ├── transcribe.ts # Text extraction
│   │   └── rotate.ts     # Rotation operations
│   └── utils/            # Shared utilities
├── assets/               # Reference backgrounds, shortcuts
└── dist/                 # Compiled JavaScript
```

### Installation System (Following multicrop Pattern)
```bash
cd /photos/tools/mpp/
./install.sh

# Installs to:
# ~/.local/bin/mpp                    # Main executable
# ~/.local/share/mpp/                 # Assets and libraries
# ~/.config/mpp/config.json          # User configuration
```

### Configuration Management
**Global Config:** `~/.config/mpp/config.json`
```json
{
  "database": {
    "host": "localhost",
    "port": 3309,
    "user": "kin",
    "database": "kin"
  },
  "directories": {
    "staging": "/photos/staging",
    "archive": "/photos/archive",
    "tools": "/photos/tools"
  },
  "shortcuts": {
    "locations": {
      "cottage": "42.7070,-71.1631",
      "didi-house": "30.2672,-97.7431"
    },
    "backgrounds": {
      "red": "~/.local/share/mpp/backgrounds/red.jpg",
      "white": "~/.local/share/mpp/backgrounds/white.jpg"
    }
  }
}
```

## Implementation Phases

### Phase 1: Foundation (Week 1)
**Priority: HIGH**
- Create `/photos/tools/mpp/` directory structure
- Implement TypeScript CLI core with Commander.js  
- Create installation system (`install.sh`) following multicrop pattern
- Basic configuration system setup
- Implement `mpp scan` domain as proof of concept

**Success Criteria:**
```bash
mmp --help                    # Shows all available commands
mmp scan --help              # Shows scanning options
mmp scan --flatbed --date 1990-12-25  # Basic scanning works
```

### Phase 2: Core Operations (Week 2)  
**Priority: HIGH**
- Implement `mpp` GPS operations (coordinate assignment, shortcuts)
- Implement `mpp` date operations (setting, extraction, batch)
- Implement `mpp` rotation operations (manual, interactive)
- Implement `mpp` crop operations (multicrop wrapper)
- Unified help and discovery system

**Success Criteria:**
```bash
mmp gps /photos/batch/ --location cottage
mmp dates /scanned/ --set "1985-12-25"
mmp rotate /photos/ --interactive
mmp crop scan.jpg --background red
```

### Phase 3: Text Extraction (Week 3)
**Priority: MEDIUM**
- Implement `mpp transcribe` for images (OCR)
- Implement `mpp transcribe` for videos (speech-to-text)
- Implement AI-enhanced analysis with `--ai-enhance` flag
- Implement filename suggestion capabilities

**Success Criteria:**
```bash
mmp transcribe document.jpg
mmp transcribe video.mp4 --ai-enhance
mmp suggest-name mystery.jpg --ai-enhance
```

### Phase 4: Polish & Migration (Week 4)
**Priority: MEDIUM**
- Legacy bridge system for existing tools
- Shell completion support
- Comprehensive documentation
- Migration guides from old tools to MPP
- Performance optimization

## Expected Benefits

### User Experience Transformation
**Before MPP:**
```bash
# User confusion: "I want to scan photos - which tool?"
/photos/tools/scan.sh --date 12-25-1990 --description "christmas" 
# OR
/photos/tools/multicrop-tool/scan -dest /output -name christmas
# OR  
cd /photos/tools/manual-photo-tools && source venv/bin/activate && python geotag-images.py
```

**After MPP:**
```bash
# Clear, discoverable, consistent
mmp --help                           # See all available operations
mmp scan --help                      # See scanning options  
mmp scan --flatbed --date 1990-12-25 --desc "christmas" --location cottage
mmp gps /photos/2020/ --batch --location cottage
mmp transcribe heritage.jpg --ai-enhance
```

### Technical Benefits
- **Reduced maintenance overhead** - centralized bug fixes and updates
- **Consistent testing strategy** - unified test approach across all operations
- **Better Claude integration** - single interface for AI-enhanced workflows
- **Simplified documentation** - one comprehensive tool instead of 50+ fragmented docs
- **Performance optimization** - shared libraries and caching across operations

### Operational Benefits
- **Faster task execution** - no more tool decision paralysis
- **Better automation potential** - consistent interfaces enable scripting
- **Improved onboarding** - new users learn one tool instead of many
- **Reduced cognitive load** - single command structure to remember

## Success Metrics

### Primary Success Indicators
- **Eliminates scanning tool confusion** (primary user pain point addressed)
- **Reduces bash history archaeology** for command discovery
- **Maintains 100% of existing functionality** with better discoverability
- **Follows proven multicrop-tool pattern** for immediate user familiarity
- **Single installation step** makes all capabilities globally available

### Quality Gates
- **All existing workflows preserved** - no loss of functionality
- **Performance equivalent or better** than individual tools
- **Comprehensive help system** - every operation thoroughly documented
- **Shell completion works** for improved developer experience
- **Configuration system intuitive** and well-documented

## Risk Mitigation

### Legacy Bridge System
During transition period, provide wrapper scripts:
```bash
# /photos/tools/scan.sh becomes:
#!/bin/bash
echo "⚠️  Deprecated: Use 'mmp scan --flatbed' instead" >&2
mmp scan --flatbed "$@"
```

### Gradual Migration Strategy
1. **Phase 1:** MPP available alongside existing tools
2. **Phase 2:** Update documentation to reference MPP primarily
3. **Phase 3:** Add deprecation warnings to old tools
4. **Phase 4:** Disable old tools (with easy rollback capability)

## Future Extensions (Post-v1)

### Audio Processing Domain
```bash
mmp extract-audio video.mp4
mmp transcribe audio.wav --speakers 3
```

### Advanced Analysis Domain  
```bash
mmp analyze duplicates --visual /photos/2020/
mmp analyze live-photos --organize
```

### Batch Domain
```bash
mmp batch process --source google-takeout --jobs 8
mmp batch monitor --active
```

## Conclusion

This MPP unification addresses the core user pain point of tool fragmentation while building on the proven success pattern of multicrop-tool. The focused scope ensures rapid delivery of high-impact improvements to daily media processing workflows.

The plan preserves all existing functionality while dramatically improving discoverability and user experience through a single, consistent interface that can be learned once and used everywhere.

**Next Action:** Begin Phase 1 implementation with directory structure creation and TypeScript CLI foundation.