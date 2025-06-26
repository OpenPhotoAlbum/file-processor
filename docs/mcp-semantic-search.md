# MCP Semantic Search Integration

**Date:** 2025-06-25  
**Status:** Configured and Ready for Indexing

## Overview

Integrated semantic search capabilities using Model Context Protocol (MCP) server to enable natural language querying of photo metadata and collections.

## Architecture

```
mcp-photo-search/
├── claude_brain.py              # Main ingestion system
├── mcp_server_simple.py         # MCP server for Claude integration
├── embeddings/                  # SQLite storage with vector embeddings
├── venv/                        # Python virtual environment
├── .brainignore                 # Smart filtering patterns
└── photo_search_config.json     # Photo-specific configuration
```

## Key Features

### Natural Language Search
- **Query examples:**
  - "sunset photos from summer 2019"
  - "photos taken near water features in Maine" 
  - "iPhone X photos with GPS data"
  - "images with low ISO settings"

### Metadata Integration
- **JSON sidecars** from Google Photos (titles, people tags, timestamps)
- **EXIF data** (camera settings, GPS coordinates)
- **Geolocation details** (cities, landmarks, timezone)
- **Collection organization** (album names, directory structure)

### Search Capabilities
- Semantic similarity matching
- Date/time range queries
- Geographic/location search
- Camera/technical specifications
- People and album associations

## Setup Complete

### MCP Server Configuration
```json
{
  "mcpServers": {
    "photo-search": {
      "command": "/home/stephen/Documents/initial-media-processing/mcp-photo-search/venv/bin/python",
      "args": [
        "/home/stephen/Documents/initial-media-processing/mcp-photo-search/mcp_server_simple.py",
        "--db", "/home/stephen/Documents/initial-media-processing/mcp-photo-search/embeddings.db",
        "--project-root", "/photos"
      ],
      "env": {
        "OPENAI_API_KEY": "${OPENAI_API_KEY}"
      }
    }
  }
}
```

### Available NPM Commands
```bash
# Setup and indexing
npm run mcp:setup          # Initial setup (completed)
npm run mcp:rebuild        # Full index rebuild
npm run mcp:index-archive  # Index /photos/archive only
npm run mcp:index-metadata # Index /photos/metadata only

# Server operations
npm run mcp:start-simple   # Start MCP server
npm run mcp:test          # Test search functionality

# Maintenance
npm run mcp:check-drift   # Check for file changes
npm run mcp:auto-update   # Update changed files
npm run mcp:cleanup-db    # Database maintenance
```

## File Filtering

### Indexed Content (.brainignore configured)
- ✅ Documentation files (*.md)
- ✅ JSON metadata and sidecars
- ✅ Configuration files
- ✅ Important scripts (phase2-*.sh)
- ✅ Project structure information

### Excluded Content
- ❌ Media files themselves (*.jpg, *.heic, etc.)
- ❌ Large data files (duplicates.json, *.sql)
- ❌ Build artifacts and temporary files
- ❌ Test mock data
- ❌ Node modules and dependencies

## Dual Context Strategy

### Separate MCP Servers Planned
**photo-search**: Focus on `/photos` directory
- Photo metadata and sidecars
- Collection organization
- Archive structure
- Geolocation and landmark data

**project-context**: Focus on `/home/stephen/Documents/initial-media-processing`
- Source code and documentation
- Configuration and scripts
- Development context and history
- Technical implementation details

### Benefits of Separation
- **Clear context boundaries** - photo search vs development context
- **Optimized filtering** - different .brainignore patterns for each use case
- **Independent indexing** - can update photo metadata without rebuilding code context
- **Focused search results** - avoid mixing photo metadata with code documentation

## Current Status

### ✅ Completed
- MCP server migrated from test project
- Virtual environment and dependencies setup
- Claude Desktop configuration updated
- File filtering patterns optimized for photo metadata
- NPM commands integrated into main project
- All required modules copied and available
- Dual context strategy documented

### 🔄 Ready for Next Steps
- Set up project-context MCP server (separate instance)
- Index existing project documentation and metadata
- Process ongoing photo imports (Phase 2 + iPhone transfers)
- Generate enriched metadata files alongside photos
- Full semantic search capabilities available for both contexts

## Future Enhancements

### Enriched Metadata Generation
Plans to generate comprehensive JSON metadata files for each photo containing:
- Complete EXIF data extraction
- Geolocation and landmark information
- Camera analysis and technical details
- Timestamp resolution and confidence levels
- Collection and album associations

### Advanced Search Features
- Similar photo detection using embeddings
- Temporal clustering (photos from same event/timeframe)
- Geographic clustering (photos from same location)
- Camera-based grouping and analysis
- People and face recognition integration

## Integration with Photo Processing Pipeline

The MCP server complements the existing media processing system:
- **Phase 1**: Deduplication and organization → Archive structure
- **Phase 2**: Directory restructuring → Clean monthly organization  
- **Phase 3**: MCP indexing → Semantic search capabilities
- **Phase 4**: Enriched metadata → Enhanced search precision

This creates a comprehensive photo management system with both systematic organization and intelligent search capabilities.