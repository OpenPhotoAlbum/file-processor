# MCP Dual Context Implementation Plan

**Date:** 2025-06-25  
**Purpose:** Document the strategy for separate photo and project MCP servers

## Architecture Overview

```
Claude Desktop MCP Servers:
├── photo-search              # Photo metadata and collections
│   ├── Target: /photos/
│   ├── Database: photo-embeddings.db
│   └── Context: Photo search and organization
└── project-context           # Development and documentation
    ├── Target: /home/stephen/Documents/initial-media-processing/
    ├── Database: project-embeddings.db
    └── Context: Source code and development
```

## Server 1: photo-search

### Purpose
Natural language search over photo metadata, collections, and organization

### Target Content
- `/photos/archive/` - Organized photo collection
- `/photos/metadata/` - Sidecar files and enriched metadata
- `/photos/collections/` - Album symlinks and organization
- Photo-related documentation

### Search Examples
- "sunset photos from summer 2019"
- "photos taken near water features in Maine"
- "iPhone X photos with GPS coordinates"
- "images from Christmas 2023 collection"

### .brainignore Configuration
```
# Index metadata, not media files
*.jpg *.heic *.png *.mp4    # Exclude media files
!*.json                     # Include JSON metadata
!*.md                       # Include documentation
```

## Server 2: project-context

### Purpose
Development context and source code understanding

### Target Content
- Source code (`src/`, `tests/`)
- Documentation (`docs/`, `*.md`)
- Configuration files
- Scripts and utilities
- Development history

### Search Examples
- "timestamp extraction implementation"
- "CLI flag handling for photo processing"
- "EXIF data processing workflow"
- "database schema for landmarks"

### .brainignore Configuration
```
# Focus on source code and docs
node_modules/               # Exclude dependencies
dist/ build/                # Exclude build artifacts
*.jpg *.png *.heic         # Exclude any media files
!src/ !docs/ !tests/       # Include source directories
```

## Implementation Steps

### Phase 1: Current photo-search Server (✅ Done)
- [x] Migrated MCP server to project
- [x] Configured for `/photos` directory
- [x] Set up virtual environment
- [x] Updated Claude Desktop config
- [x] Created NPM commands

### Phase 2: Add project-context Server (Pending)
- [ ] Create second MCP server instance
- [ ] Configure separate database
- [ ] Update Claude Desktop config with both servers
- [ ] Create project-specific .brainignore
- [ ] Add NPM commands for project indexing

### Phase 3: Optimize and Maintain
- [ ] Index photo metadata when imports complete
- [ ] Index project source for development context
- [ ] Set up drift monitoring for both contexts
- [ ] Test search capabilities in both domains

## Claude Desktop Configuration

```json
{
  "mcpServers": {
    "photo-search": {
      "command": "/path/to/mcp-photo-search/venv/bin/python",
      "args": [
        "/path/to/mcp-photo-search/mcp_server_simple.py",
        "--db", "/path/to/photo-embeddings.db",
        "--project-root", "/photos"
      ],
      "env": {
        "OPENAI_API_KEY": "${OPENAI_API_KEY}"
      }
    },
    "project-context": {
      "command": "/path/to/mcp-project-context/venv/bin/python",
      "args": [
        "/path/to/mcp-project-context/mcp_server_simple.py",
        "--db", "/path/to/project-embeddings.db",
        "--project-root", "/home/stephen/Documents/initial-media-processing"
      ],
      "env": {
        "OPENAI_API_KEY": "${OPENAI_API_KEY}"
      }
    }
  }
}
```

## Benefits

### Separation of Concerns
- **Photo search** remains focused on media organization
- **Project context** provides development assistance
- No confusion between photo metadata and code documentation

### Performance Optimization
- Smaller, focused databases for faster search
- Independent indexing and updates
- Optimized filtering for each use case

### Maintenance Efficiency
- Update photo metadata without rebuilding code context
- Code changes don't trigger photo re-indexing
- Clear boundaries for troubleshooting

## Usage Patterns

### During Development
- Use **project-context** for code understanding and implementation
- Search for patterns, examples, and documentation
- Understand existing workflows and architecture

### During Photo Management
- Use **photo-search** for finding and organizing photos
- Natural language queries over metadata
- Collection and album management

### Integrated Workflows
- Both servers available simultaneously in Claude
- Context-appropriate search automatically
- Comprehensive assistance across both domains