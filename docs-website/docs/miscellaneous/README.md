---
title: "Media Processing Pipeline - Documentation Index"
description: Auto-generated from README.md
---

# Media Processing Pipeline - Documentation Index

**Last Updated:** July 26, 2025 - Documentation reorganized with component-based structure  
**Status:** ✅ Core pipeline complete, advanced features operational  
**Registry:** All topics registered in [REGISTRY.md](REGISTRY.md) to prevent duplicates

## 🚀 Quick Start

**New to the system?** Start here for fastest path to processing your first photos:

- **[Quick Start Guide](quick-start/README.md)** - 15-minute installation + first photo success
- **[Installation](quick-start/installation.md)** - Get system running quickly  
- **[First Photos](quick-start/first-photos.md)** - Process your first photos successfully

## 📂 Documentation by System Component

### Essential User Journeys
- **[Quick Start](quick-start/)** - Fast onboarding for new users (15 minutes to first success)
- **[Workflows](workflows/)** - Complete processing workflows for different use cases
- **[Deployment](deployment/)** - System installation and configuration

### Core Processing Systems  
- **[MMP CLI Tools](mmp/)** - MMP unified CLI for photo processing, GPS tagging, scanning
- **[Pipeline CLI](pipeline-cli/)** - Core processing engine and architecture
- **[Data Layer](data-layer/)** - Database, schema, and ETL pipeline documentation

### Advanced Features
- **[Claude Orchestration](claude-orchestration/)** - Multi-Claude development system (6 specialist roles)
- **[API Documentation](api/)** - Web interface and API references
- **[Testing](testing/)** - Test framework and quality assurance

## 📋 Current Features [VERIFIED CURRENT - July 2025]

### ✅ OPERATIONAL SYSTEMS
- **MMP Unified CLI** 
  - ✅ Working: GPS tagging, Photo cropping, Scanning workflow
  - 🔄 Pending: Date correction, Photo rotation, Audio transcription, Filename suggestions
  - 📖 Docs: [mmp/README.md](mmp/README.md)

- **Heritage Photo Integration** - Complete (49/49 tests passing)
  - ✅ XMP detection system operational
  - ✅ AI-powered historical analysis via Claude
  - ✅ Series linking and context enrichment
  - 📖 Docs: [workflows/heritage-photos/README.md](workflows/heritage-photos/README.md)

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
  - 📖 Docs: [claude-orchestration/README.md](claude-orchestration/README.md)

- **Photo Organization Pipeline** - Production grade (150,000+ photos processed)
  - ✅ Hash-based deduplication (818GB saved, 54% reduction)
  - ✅ GPS and landmark enrichment (Recreation.gov, GNIS, NPS integration)
  - ✅ Database-first architecture with normalized schema
  - ✅ Zero data loss throughout entire process
  - 📖 Docs: [workflows/organization/README.md](workflows/organization/README.md)

- **Scanning & Digitization Toolkit** - Complete
  - ✅ Multicrop photo separation from flatbed scans
  - ✅ Background-aware processing (red/white detection)
  - ✅ Multi-tier duplicate detection including rotation-aware
  - ✅ Historical date assignment for vintage photos
  - 📖 Docs: [workflows/scanning/README.md](workflows/scanning/README.md)

## 🔍 Component Navigation Guide

### For New Users (Fast Track)
1. **[Quick Start Guide](quick-start/README.md)** - 15-minute setup to first photo success
2. **[Choose Your Workflow](workflows/README.md)** - Pick the right process for your needs
3. **[MMP Tools](mmp/README.md)** - Essential photo processing commands

### For Photo Organization Projects
1. **[Photo Organization Workflow](workflows/organization/README.md)** - Complete photo collection processing
2. **[Heritage Photos](workflows/heritage-photos/README.md)** - Historical photo processing with AI analysis
3. **[Scanning Workflow](workflows/scanning/README.md)** - Digitizing physical photos

### For Developers and Advanced Users
1. **[Pipeline CLI Architecture](pipeline-cli/architecture/README.md)** - Core processing system design
2. **[Data Layer](data-layer/README.md)** - Database, schema, and ETL documentation
3. **[Claude Orchestration](claude-orchestration/README.md)** - Multi-agent development system

### For System Administration
1. **[Deployment Guide](deployment/getting-started.md)** - Complete installation and configuration
2. **[Data Layer Setup](data-layer/setup/README.md)** - Database installation and operations
3. **[Testing Framework](testing/README.md)** - Quality assurance and validation

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

### Component-Based Structure (July 2025 Reorganization)
```
/docs/
├── README.md                    # This master index (component navigation)
├── REGISTRY.md                  # Central topic registry (prevents duplicates)
├── quick-start/                 # Fast user onboarding (NEW)
│   ├── README.md               # 15-minute installation + first success
│   ├── installation.md         # Quick setup guide
│   └── first-photos.md         # First photo processing workflow
├── mmp/                        # MMP unified CLI tools (NEW)
│   ├── README.md               # MMP tool overview and status
│   ├── commands/               # Individual command documentation
│   └── workflows/              # User workflows with MMP tools
├── pipeline-cli/               # Core processing system (NEW)
│   ├── README.md               # Pipeline overview
│   ├── architecture/           # System design and patterns
│   ├── apis/                   # API documentation
│   └── development/            # Developer guides
├── claude-orchestration/       # Multi-Claude system (NEW)
│   ├── README.md               # Orchestration overview
│   ├── roles/                  # Claude role documentation
│   ├── protocols/              # Communication protocols
│   └── development/            # System extension guides
├── data-layer/                 # Database and storage (NEW)
│   ├── README.md               # Data architecture overview
│   ├── schema/                 # Database design documentation
│   ├── setup/                  # Installation and migration
│   └── etl/                    # ETL pipeline documentation
├── workflows/                  # Cross-system workflows (ENHANCED)
│   ├── README.md               # Workflow navigation
│   ├── heritage-photos/        # Heritage processing workflows
│   ├── organization/           # Photo organization workflows
│   └── scanning/               # Digitization workflows
├── reference/                  # Technical reference (NEW)
│   ├── error-codes.md          # Consolidated error reference
│   ├── configuration.md        # All configuration options
│   └── troubleshooting.md      # Consolidated troubleshooting
└── deployment/                 # System deployment (UNCHANGED)
    ├── getting-started.md      # Complete installation guide
    └── linting.md              # Code quality configuration
```

### Reorganization Benefits (July 2025)
- **Component-based navigation** mirrors actual project structure
- **User journey optimization** from quick start through advanced usage
- **Consolidated information** eliminates scattered documentation
- **Clear audience targeting** (new users, developers, administrators)
- **Enhanced findability** through logical grouping and comprehensive navigation

### Documentation Standards (Enforced)
- **Registry Check Required:** Must check [REGISTRY.md](REGISTRY.md) before creating new docs
- **Component-based organization:** New docs must fit component structure
- **Status Indicators:** Current/Active/Pending/Complete status required
- **Last Updated Dates:** Mandatory for currency tracking
- **Cross-References:** Bidirectional linking where relevant
- **Duplicate Prevention:** Central registry prevents topic duplication

## 🔍 Updated Navigation Paths

### For New Users (Updated)
1. **Start:** [Quick Start Guide](quick-start/README.md) for 15-minute setup to first success
2. **Process Photos:** [Quick Start Workflow](quick-start/first-photos.md) 
3. **Advanced Features:** [MMP Tools](mmp/README.md) for all photo processing capabilities

### For Developers (Updated)
1. **Architecture:** [Pipeline CLI Architecture](pipeline-cli/architecture/README.md) and [Data Layer](data-layer/README.md)
2. **Code Quality:** [Deployment Standards](deployment/README.md)
3. **Testing:** [Testing Framework](testing/README.md)
4. **Multi-Claude Development:** [Claude Orchestration](claude-orchestration/README.md)

### For System Operations (Updated)
1. **Installation:** [Deployment Guide](deployment/getting-started.md) and [Data Layer Setup](data-layer/setup/README.md)
2. **User Workflows:** [Workflows Overview](workflows/README.md) 
3. **System Monitoring:** [Testing Framework](testing/README.md)

### For Feature Planning
1. **Current Status:** This index shows all operational systems with new component organization
2. **Future Plans:** `/plans/` directory contains implementation-ready features
3. **Registry:** [REGISTRY.md](REGISTRY.md) prevents duplicate documentation with component mappings

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

**Documentation System Status:** ✅ Component-based reorganization complete (July 26, 2025)

**Major Improvements:**
- Component-based structure mirrors project architecture
- Enhanced user journey from quick start through advanced usage
- Consolidated scattered documentation (database, orchestration)
- Clear audience targeting and navigation paths
- Preserved registry system and content quality

*This reorganization maintains Stephen's requirement: "Documentation NEVER goes out of date" while dramatically improving findability and user experience.*