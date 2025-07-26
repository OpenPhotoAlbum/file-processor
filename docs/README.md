# Media Processing Pipeline - Documentation Index

**Last Updated:** July 23, 2025 - All documentation verified current  
**Status:** ✅ Core pipeline complete, advanced features operational  
**Registry:** All topics registered in [REGISTRY.md](REGISTRY.md) to prevent duplicates

## 🚀 Quick Start

- **[Getting Started](deployment/getting-started.md)** - Installation and setup
- **[CLI Reference](cli/README.md)** - Complete command reference with MMP unification status
- **[Quick Organization Workflow](workflows/quick-start.md)** - Fast track photo processing

## 📋 Current Features [VERIFIED CURRENT - July 2025]

### ✅ OPERATIONAL SYSTEMS
- **MMP Unified CLI** 
  - ✅ Working: GPS tagging, Photo cropping, Scanning workflow
  - 🔄 Pending: Date correction, Photo rotation, Audio transcription, Filename suggestions
  - 📖 Docs: [cli/README.md](cli/README.md)

- **Heritage Photo Integration** - Complete (49/49 tests passing)
  - ✅ XMP detection system operational
  - ✅ AI-powered historical analysis via Claude
  - ✅ Series linking and context enrichment
  - 📖 Docs: [workflows/heritage-processing.md](workflows/heritage-processing.md)

- **Video Analysis System** - 174 videos analyzed and ready
  - ✅ Multi-source date assignment (1955-2025 spanning 100 years)
  - ✅ Geographic mapping (50+ videos with GPS coordinates)  
  - ✅ Master analysis: `/FINAL-VIDEO-DATES-WITH-ALL-LOCATIONS.txt`
  - 🔄 Ready: Metadata application scripts prepared
  - 📖 Docs: Video processing documentation needed

- **Claude Orchestration System** - Phase 3 active
  - ✅ Role-based specialist Claude templates operational
  - ✅ Inter-Claude communication system active
  - ✅ Task assignment and handoff protocols
  - ✅ Slash commands: `/mail` and `/summon` documented
  - 📖 Docs: [architecture/claude-orchestration.md](architecture/claude-orchestration.md), [cli/slash-commands.md](cli/slash-commands.md)

- **Photo Organization Pipeline** - Production grade (150,000+ photos processed)
  - ✅ Hash-based deduplication (818GB saved, 54% reduction)
  - ✅ GPS and landmark enrichment (Recreation.gov, GNIS, NPS integration)
  - ✅ Database-first architecture with normalized schema
  - ✅ Zero data loss throughout entire process
  - 📖 Docs: [workflows/photo-organization.md](workflows/photo-organization.md)

- **Scanning & Digitization Toolkit** - Complete
  - ✅ Multicrop photo separation from flatbed scans
  - ✅ Background-aware processing (red/white detection)
  - ✅ Multi-tier duplicate detection including rotation-aware
  - ✅ Historical date assignment for vintage photos
  - 📖 Docs: [workflows/scanning-workflow.md](workflows/scanning-workflow.md)

## 🏗️ Architecture & Technical Docs

### Core Systems
- **[Error System](architecture/error-system.md)** - Structured MPP-* error codes
- **[Logging System](architecture/logging-system.md)** - Component-scoped colored logging
- **[Filesystem Service](architecture/filesystem-service.md)** - Centralized file operations
- **[Path System](architecture/path-system.md)** - Security-first path management

### Processing Pipeline
- **[Enrichment Flow](architecture/enrichment-flow.md)** - GPS and landmark pipeline
- **[Geolocation System](architecture/geolocation-system.md)** - Location services
- **[Metadata Merge Strategy](architecture/metadata-merge-strategy.md)** - Processing history preservation
- **[Live Photo Detection](architecture/live-photo-detection.md)** - Apple Live Photo system

### Team Coordination
- **[Claude Orchestration System](architecture/claude-orchestration.md)** - Multi-agent development workflow
- **[Slash Commands](cli/slash-commands.md)** - /mail and /summon command reference

### Database Architecture
- **[Database Schema Design](architecture/database-schema-design.md)** - Normalized relational design
- **[Database Migration Strategy](architecture/database-migration-strategy.md)** - Schema evolution
- **[Normalized Location Architecture](architecture/normalized-location-architecture.md)** - Geographic foreign keys
- **[Metadata Storage Architecture](architecture/metadata-storage-architecture.md)** - JSON vs database

### Geographic Integration
- **[Recreation.gov ETL](architecture/recreation-gov-etl.md)** - Facility data integration
- **[GPS Coordinate Corruption Fix](gps-coordinate-corruption-fix.md)** - Video GPS longitude fix

## 🛠️ Development & Deployment

### Setup & Configuration
- **[Getting Started](deployment/getting-started.md)** - Complete installation guide
- **[Linting Configuration](deployment/linting.md)** - ESLint with TypeScript rules
- **[Testing Framework](testing/README.md)** - Comprehensive test infrastructure

### Quality Standards
- **Code Quality Gates:** ESLint → TypeScript → Build → Test (MANDATORY sequence)
- **Database Protection:** mykin_db with 150k+ photos - NEVER recreate without permission
- **Type Safety:** Semantic aliases from `types/semantic-any.ts` instead of `any`
- **Zero Regression:** All 49 tests must pass, no quality degradation allowed

## 📊 Project Achievements & Status

### Key Metrics (Complete)
- **150,000+ photos** processed and organized
- **818GB storage** saved through intelligent deduplication (54% reduction)
- **Zero data loss** throughout entire processing pipeline
- **49/49 tests passing** - comprehensive test coverage with mocking system
- **174 home videos** analyzed spanning 1955-2025 (100 years family history)

### Recent Milestones (July 2025)
- ✅ Heritage photo system completed with AI integration
- ✅ Video archive analysis completed (174 videos)
- ✅ Claude orchestration system Phase 3 operational
- ✅ Documentation standardization system implemented
- 🔄 Ready: Video metadata application to 174 analyzed videos

## 🎯 Implementation-Ready Plans

### High-Priority Features
- **[MMP CLI Unification](../plans/mmp-cli-unification-plan.md)** - Consolidate all photo tools
- **[Photo Browser Completion](../plans/photo-browser-completion.md)** - Rich web interface
- **[CompreFace Integration](../plans/compreface-integration.md)** - Face recognition system

### Advanced Intelligence Features
- **[Trip Intelligence](../plans/trip-intelligence.md)** - Photo sequence analysis
- **[Custom Location Rules](../plans/custom-location-rules.md)** - Personal landmarks
- **[Creative Data Storytelling](../plans/creative-data-storytelling.md)** - Narrative generation

## 📁 Documentation Organization

### New Hierarchical Structure (July 2025)
```
/docs/
├── README.md              # This master index (always current)
├── REGISTRY.md            # Central topic registry (prevents duplicates)
├── cli/                   # Command line interfaces
│   ├── README.md          # MMP unified CLI documentation
│   └── media-file-inspector.md
├── api/                   # API documentation
│   ├── README.md          # API overview
│   └── photo-browser.md   # Web interface API
├── workflows/             # User workflows and guides
│   ├── README.md          # Workflow overview
│   ├── heritage-processing.md
│   ├── photo-organization.md
│   ├── scanning-workflow.md
│   └── quick-start.md
├── architecture/          # System design and patterns
│   ├── README.md          # Architecture overview
│   ├── database-*.md      # Database architecture
│   ├── *-system.md        # Core systems
│   └── enrichment-flow.md
├── deployment/            # Installation and setup
│   ├── README.md          # Deployment overview
│   ├── getting-started.md
│   └── linting.md
└── archive/               # Historical/completed documentation
    ├── completed-plans/   # Successfully implemented features
    └── deprecated/        # Removed/moved features
```

### Documentation Standards (Enforced)
- **Registry Check Required:** Must check [REGISTRY.md](REGISTRY.md) before creating new docs
- **Status Indicators:** Current/Active/Pending/Complete status required
- **Last Updated Dates:** Mandatory for currency tracking
- **Cross-References:** Bidirectional linking where relevant
- **Duplicate Prevention:** Central registry prevents topic duplication

## 🔍 Navigation Guide

### For New Users
1. **Start:** [Getting Started](deployment/getting-started.md) for installation
2. **Process Photos:** [Quick Start Workflow](workflows/quick-start.md)
3. **Advanced Features:** [CLI Reference](cli/README.md) for all capabilities

### For Developers
1. **Architecture:** [Architecture Overview](architecture/README.md)
2. **Code Quality:** [Deployment Standards](deployment/README.md)
3. **Testing:** [Testing Framework](testing/README.md)

### For Feature Planning
1. **Current Status:** This index shows all operational systems
2. **Future Plans:** `/plans/` directory contains implementation-ready features
3. **Registry:** [REGISTRY.md](REGISTRY.md) prevents duplicate documentation

## 📝 Documentation Maintenance Protocol

### MANDATORY Update Requirements
**Every Claude role must follow this protocol:**

#### Before Creating Documentation
1. **Check [REGISTRY.md](REGISTRY.md)** for existing topics
2. **Search existing docs:** `grep -r "keywords" /docs/`
3. **Choose:** Update existing, create related section, or register new topic

#### After Completing Tasks
1. **Update affected documentation** to reflect actual implementation
2. **Verify accuracy** against current system state
3. **Update master index** (this file) if status changed
4. **Update [REGISTRY.md](REGISTRY.md)** if new topic created

### Quality Standard
**No task complete until documentation reflects current reality**

## 🤝 Contributing

When adding new features or documentation:
1. **Use [REGISTRY.md](REGISTRY.md)** to prevent duplicates
2. **Follow hierarchy** - place docs in appropriate sections
3. **Update master index** to reflect changes
4. **Cross-reference** related documentation
5. **Run quality gates** - lint, typecheck, build, test

---

**Documentation System Status:** ✅ Standardization complete - Prevents documentation drift through registry system and mandatory update protocol

*This documentation system ensures Stephen's requirement: "Documentation NEVER goes out of date" through systematic prevention and enforcement.*