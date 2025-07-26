# Technical Reference Documentation

**Purpose:** Consolidated technical reference materials for quick lookup  
**Last Updated:** July 26, 2025  
**Status:** Centralized reference system

## Overview

This section provides quick-access technical reference materials that span multiple system components.

## Reference Materials

### Error Codes & Troubleshooting
- **[Error Codes](error-codes.md)** - Complete MPP-* error code reference with solutions
- **[Troubleshooting](troubleshooting.md)** - Common issues and resolution procedures

### Configuration & Environment
- **[Configuration](configuration.md)** - All configuration options across system components
- **[Environment Variables](environment-variables.md)** - Complete environment variable reference

## Component-Specific References

### Core Processing System
For detailed technical documentation, see component-specific sections:

- **[Pipeline CLI Architecture](../pipeline-cli/architecture/README.md)** - Core processing system design
- **[Data Layer Schema](../data-layer/schema/README.md)** - Database design and relationships
- **[MMP Commands](../mmp/commands/)** - User-facing CLI command reference

### System Integration
- **[API Documentation](../api/README.md)** - Web interface and API references
- **[Testing Framework](../testing/README.md)** - Quality assurance procedures
- **[Claude Orchestration](../claude-orchestration/protocols/README.md)** - Multi-Claude communication

## Quick Lookup Tables

### File Format Support
| Format | Pipeline CLI | MMP | Heritage Analysis | Notes |
|--------|-------------|-----|------------------|-------|
| JPEG | ✅ Full | ✅ Full | ✅ Full | Complete metadata extraction |
| HEIC | ✅ Full | ✅ Full | ✅ Full | Apple format, Live Photo detection |
| PNG | ✅ Basic | ✅ Basic | ⚠️ Limited | Technical metadata only |
| GIF | ✅ Basic | ✅ Basic | ❌ No | Format analysis only |
| MP4 | ✅ Full | 🔄 Pending | ❌ No | Video processing operational |
| MOV | ✅ Full | 🔄 Pending | ❌ No | Apple video format |

### Environment Variable Quick Reference
| Variable | Default | Purpose | Component |
|----------|---------|---------|-----------|
| `GEOLOCATION_ENABLED` | `true` | Enable reverse geocoding | Pipeline CLI |
| `RECREATION_GOV_PROVIDER_ENABLED` | `false` | Federal recreation facilities | Pipeline CLI |
| `GNIS_PROVIDER_ENABLED` | `true` | Geographic features database | Pipeline CLI |
| `NPS_PROVIDER_ENABLED` | `true` | National Parks Service | Pipeline CLI |
| `LANDMARK_MAX_RADIUS` | `50000` | Search radius in meters | Pipeline CLI |
| `DB_HOST` | `localhost` | Database host | All components |
| `DB_PORT` | `3309` | Database port | All components |

### Common Command Patterns
```bash
# Pipeline CLI patterns
node pipeline-cli/dist/main.js -f "photo.jpg" --json
node pipeline-cli/dist/main.js -f "photo.jpg" --timestamp-only
GEOLOCATION_ENABLED=false node pipeline-cli/dist/main.js -f "photo.jpg"

# MMP patterns  
mmp capture --flatbed --date YYYY-MM-DD --location <shortcut>
mmp locate /path/to/photos/ --set <location-shortcut>
mmp process /path/ --pipeline "locate,date,prepare" --jobs <number>

# Database operations
docker exec mykin_db mysql -u kin -p'Dalekini21!' kin -e "SHOW TABLES;"
```

### Quality Gate Checklist
All development work must pass these gates in sequence:
```bash
# 1. Linting
npm run lint:check

# 2. Type checking  
npm run typecheck

# 3. Build
npm run build

# 4. Testing
npm test
```

## System Metrics

### Production Performance
- **150,000+ photos** processed successfully
- **818GB storage saved** through intelligent deduplication (54% reduction)
- **Zero data loss** throughout entire processing pipeline
- **49/49 tests passing** - Comprehensive test coverage
- **174 home videos** analyzed spanning 1955-2025 (100 years family history)

### Test Coverage
- **12 end-to-end scenarios** - Full CLI processing pipeline validation
- **7 specialized tests** - Heritage photos, Live Photos, video processing
- **Comprehensive mocking** - API responses, database queries, external services
- **Performance validation** - Tests complete in ~10 seconds with full mocking

## Status Indicators

### System Component Status
| Component | Status | Notes |
|-----------|--------|-------|
| Pipeline CLI | ✅ Production | Core processing engine operational |
| MMP CLI | 🔄 Development | GPS, scanning working; dates, rotation pending |
| Heritage Photos | ✅ Complete | 49/49 tests passing, AI integration operational |
| Database Layer | ✅ Production | MySQL 8.0, normalized schema, 150k+ photos |
| Claude Orchestration | ✅ Phase 3 | Multi-Claude team coordination operational |
| Video Processing | ✅ Analysis Complete | 174 videos analyzed, metadata application ready |

### Legend
- ✅ **Complete/Production** - Fully operational and tested
- 🔄 **In Development** - Partially working, features being added
- ⚠️ **Limited** - Basic functionality only
- ❌ **Not Supported** - Feature not available

## Getting Help

### Documentation Navigation
1. **New users:** Start with [Quick Start Guide](../quick-start/README.md)
2. **Specific workflows:** See [Workflows Documentation](../workflows/README.md)
3. **Technical deep-dive:** Review component-specific documentation
4. **Issues:** Check troubleshooting guides and error code references

### Component Documentation
- **User Interface:** [MMP CLI](../mmp/README.md)
- **Processing Engine:** [Pipeline CLI](../pipeline-cli/README.md)
- **Data Architecture:** [Data Layer](../data-layer/README.md)
- **Development System:** [Claude Orchestration](../claude-orchestration/README.md)

---

**Reference Documentation Status:** ✅ Centralized technical reference system operational