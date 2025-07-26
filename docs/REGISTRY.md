# Documentation Registry - SINGLE SOURCE OF TRUTH

**Purpose:** Prevent duplicate documentation creation  
**Rule:** Check this registry BEFORE creating ANY new documentation  
**Last Updated:** 2025-07-26

## How to Use This Registry

### Before Creating New Documentation
1. **Search this registry** for existing topics using Ctrl+F
2. **Check keywords** - use multiple related terms
3. **Verify with search:** `grep -r "keyword1\|keyword2" /docs/ --include="*.md"`
4. **Choose action:** Update existing, create related section, or register new topic

### Required Registration Format
```markdown
- **Topic:** [Descriptive topic name]
  - **Primary Doc:** [/path/to/main/documentation.md]
  - **Status:** [Complete/Active/Pending/Deprecated]
  - **Keywords:** [searchable, terms, for, finding]
  - **Owner:** [Responsible maintainer]
  - **Last Updated:** [YYYY-MM-DD]
```

## Registered Topics

### 🚀 Quick Start & User Onboarding (NEW STRUCTURE)
- **Topic:** Enhanced User Journey Documentation
  - **Primary Doc:** `/docs/quick-start/README.md`
  - **Supporting Docs:** 
    - `/docs/quick-start/installation.md` (15-minute installation guide)
    - `/docs/quick-start/first-photos.md` (First success workflow)
  - **Status:** Active - New user onboarding system
  - **Keywords:** quick start, user journey, installation, first photos, onboarding, 15 minutes
  - **Owner:** Claude 4 (Chronicler) - user experience documentation
  - **Last Updated:** 2025-07-26

### 💾 Data Layer Architecture (REORGANIZED)
- **Topic:** Database Design & Schema Architecture
  - **Primary Doc:** `/docs/data-layer/schema/design.md`
  - **Former Location:** `/docs/architecture/database-schema-design.md`
  - **Supporting Docs:**
    - `/docs/data-layer/schema/location-normalization.md` (Geographic foreign keys)
    - `/docs/data-layer/schema/storage-architecture.md` (JSON vs database analysis)
  - **Status:** Active - Consolidated database schema documentation
  - **Keywords:** database design, schema architecture, query optimization, MySQL, normalized design
  - **Owner:** Claude 6 (Data Specialist) - data architecture authority
  - **Last Updated:** 2025-07-26

- **Topic:** Database Setup & Operations
  - **Primary Doc:** `/docs/data-layer/setup/installation.md`
  - **Former Location:** `/docs/architecture/database-setup.md`
  - **Supporting Docs:**
    - `/docs/data-layer/setup/migration.md` (Schema migration procedures)
  - **Status:** Active - Operational database procedures
  - **Keywords:** database installation, MySQL setup, migration procedures, container operations
  - **Owner:** Claude 6 (Data Specialist) - operational procedures
  - **Last Updated:** 2025-07-26

- **Topic:** ETL Pipeline Documentation
  - **Primary Doc:** `/docs/data-layer/etl/recreation-gov.md`
  - **Former Location:** `/docs/architecture/recreation-gov-etl.md`
  - **Status:** Active - External data integration pipelines
  - **Keywords:** ETL pipelines, Recreation.gov, GNIS, data integration, external APIs
  - **Owner:** Claude 6 (Data Specialist) - data integration authority
  - **Last Updated:** 2025-07-26

### 🤖 Claude Orchestration System (REORGANIZED)
- **Topic:** Multi-Claude Team Coordination System
  - **Primary Doc:** `/docs/claude-orchestration/README.md`
  - **Former Location:** `/docs/architecture/claude-orchestration.md`
  - **Supporting Docs:**
    - `/docs/claude-orchestration/roles/README.md` (Individual Claude role documentation)
    - `/docs/claude-orchestration/protocols/README.md` (Communication protocols)
    - `/docs/claude-orchestration/development/README.md` (System extension guides)
  - **Status:** Active - Phase 3 operational multi-Claude system
  - **Keywords:** Claude orchestration, multi-agent development, role specialization, team coordination
  - **Owner:** Claude 1 (Architect) - team coordination authority
  - **Last Updated:** 2025-07-26

- **Topic:** Claude Role Specialization
  - **Primary Doc:** `/docs/claude-orchestration/roles/README.md`
  - **Status:** Active - 6 specialist Claude roles documented
  - **Keywords:** Claude roles, Architect, Builder, Guardian, Chronicler, Curator, Data Specialist
  - **Owner:** Claude 4 (Chronicler) - role documentation
  - **Last Updated:** 2025-07-26

- **Topic:** Orchestration Communication Protocols
  - **Primary Doc:** `/docs/claude-orchestration/protocols/slash-commands.md`
  - **Former Location:** `/docs/cli/slash-commands.md`
  - **Supporting Protocols:** Referenced from `/claude-orchestration/protocols/` directory
  - **Status:** Active - Multi-Claude communication system
  - **Keywords:** slash commands, /mail, /summon, inter-Claude communication, task delegation
  - **Owner:** Claude 4 (Chronicler) - protocol documentation
  - **Last Updated:** 2025-07-26

- **Topic:** Orchestration Development System
  - **Primary Doc:** `/docs/claude-orchestration/development/centralized-configuration.md`
  - **Former Location:** `/docs/architecture/centralized-role-configuration.md`
  - **Supporting Docs:**
    - `/docs/claude-orchestration/development/auto-cascade/` (Auto-cascade system documentation)
  - **Status:** Active - Phase 4 development architecture
  - **Keywords:** centralized configuration, YAML config, auto-cascade templates, system extension
  - **Owner:** Claude 4 (Chronicler) - development documentation
  - **Last Updated:** 2025-07-26

### 🏆 Project Accomplishments
- **Topic:** Master Accomplishments Overview
  - **Primary Doc:** `/ACCOMPLISHMENTS.md` (Table of Contents format)
  - **Supporting Details:** `/docs/accomplishments/` directory with detailed analyses
  - **Status:** Active - Updated with major milestones and detailed breakdowns
  - **Keywords:** accomplishments, achievements, project milestones, results, metrics
  - **Owner:** Claude 1 (Architect) - strategic overview
  - **Last Updated:** 2025-07-23

- **Topic:** Enrichment Pipeline Results
  - **Primary Doc:** `/docs/accomplishments/enrichment-results-final.md`
  - **Status:** Complete - Detailed analysis of 24,243 photo enrichment completion
  - **Keywords:** enrichment results, 24243 photos, metadata generation, GPS enrichment
  - **Owner:** Historical record - completed June 2024
  - **Last Updated:** 2024-06-26

- **Topic:** Database Deduplication Achievement
  - **Primary Doc:** `/docs/accomplishments/json-deduplication-complete.md`
  - **Status:** Complete - 90% JSON storage reduction with zero data loss
  - **Keywords:** database deduplication, JSON optimization, storage reduction, normalization
  - **Owner:** Historical record - completed June 2025
  - **Last Updated:** 2025-06-30

- **Topic:** Phase-by-Phase Project Timeline
  - **Primary Doc:** `/docs/accomplishments/phase-completion-overview.md`
  - **Status:** Complete - Strategic overview of all 6 project phases
  - **Keywords:** project phases, timeline, strategic overview, phase completion
  - **Owner:** Historical record - completed June 2024
  - **Last Updated:** 2025-06-30

- **Topic:** Google Takeout Processing Achievement
  - **Primary Doc:** `/docs/accomplishments/google-takeout-completion-summary.md`
  - **Status:** Complete - Detailed technical implementation of 136,869 file processing
  - **Keywords:** Google Takeout, 136869 files, format support, edge cases, processing pipeline
  - **Owner:** Historical record - completed June 2025
  - **Last Updated:** 2025-06-26

## Registered Topics

### 🏗️ Architecture & Design Decisions
- **Topic:** Photo Organization Structure Analysis
  - **Primary Doc:** `/docs/architecture/file-structure-analysis.md`
  - **Status:** Complete - Architectural decision documentation (era-based vs chronological)
  - **Keywords:** photo organization, chronological structure, era-based, architectural decisions, processing profiles
  - **Owner:** Historical record - architectural reasoning preserved
  - **Last Updated:** 2024-06-28

### 📋 Workflows & Procedures
- **Topic:** Heritage Photo Scrapbook Treatment
  - **Primary Doc:** `/docs/workflows/scrapbook-treatment.md`
  - **Status:** Active - Critical operational workflow for heritage document processing
  - **Keywords:** scrapbook treatment, heritage photos, OCR transcription, EXIF metadata, historical documents
  - **Owner:** Active workflow - regularly updated
  - **Last Updated:** 2025-07-20

### 🚀 CLI & User Interface
- **Topic:** MMP Unified CLI Tool
  - **Primary Doc:** `/docs/cli/README.md`
  - **Status:** Complete - Full CLI with comprehensive help system, 49/49 tests passing
  - **Keywords:** MMP, unified CLI, command line, photo tools, timestamps, rotation, JSON output, database storage
  - **Owner:** Claude 2 (Implementation)
  - **Last Updated:** 2025-07-23

- **Topic:** Photo Browser Web Interface
  - **Primary Doc:** `/docs/photo-browser-api.md`
  - **Status:** Complete - Express.js metadata viewer operational
  - **Keywords:** web interface, browser, photo viewer, Express, API
  - **Owner:** Claude 2 (Implementation)
  - **Last Updated:** 2025-01-23

### 🔧 Core Architecture
- **Topic:** Error Handling System
  - **Primary Doc:** `/docs/error-system.md`
  - **Status:** Complete - MPP-* structured error codes with semantic methods
  - **Keywords:** error handling, MPP codes, structured errors, error factories
  - **Owner:** Stable - no regular updates needed
  - **Last Updated:** 2024-12-24

- **Topic:** Logging Architecture
  - **Primary Doc:** `/docs/logging-system.md`
  - **Related:** `/docs/architecture/archive-logger-system-design.md` (original design spec)
  - **Status:** Complete - Component-scoped colored logging
  - **Keywords:** logging, structured logs, component scoped, colored output
  - **Owner:** Stable - no regular updates needed
  - **Last Updated:** 2024-12-24

- **Topic:** Path Security System
  - **Primary Doc:** `/docs/path-system.md`
  - **Status:** Complete - Path resolution and sanitization
  - **Keywords:** path security, sanitization, file paths, security
  - **Owner:** Stable - no regular updates needed
  - **Last Updated:** 2024-12-24

- **Topic:** Filesystem Service Layer
  - **Primary Doc:** `/docs/filesystem-service.md`
  - **Status:** Complete - Centralized file operations
  - **Keywords:** filesystem, file operations, service layer, file validation
  - **Owner:** Stable - no regular updates needed
  - **Last Updated:** 2024-12-24

### 🎯 Heritage & Historical Processing
- **Topic:** Heritage Photo Integration System
  - **Primary Doc:** `/docs/heritage-photo-enrichment.md`
  - **Status:** Complete - 49/49 tests passing, XMP detection, AI enrichment
  - **Keywords:** heritage, historical photos, AI analysis, XMP, Claude integration
  - **Owner:** Claude 2 (Implementation)
  - **Last Updated:** 2025-07-22

- **Topic:** Live Photo Detection
  - **Primary Doc:** `/docs/live-photo-detection.md`
  - **Status:** Complete - Apple Live Photo identification and metadata
  - **Keywords:** Live Photos, Apple, photo pairs, motion photos, HEIC
  - **Owner:** Stable - no regular updates needed
  - **Last Updated:** 2024-12-24

### 📊 Data & Processing (ARCHIVED - See Data Layer Section Above)
- **Topic:** Database Schema Design
  - **Primary Doc:** `/docs/data-layer/schema/design.md`
  - **Former Location:** `/docs/database-schema-design.md`
  - **Status:** RELOCATED - See Data Layer Architecture section above
  - **Keywords:** database, schema, MySQL, normalized, relational
  - **Owner:** Claude 6 (Data Specialist) - data architecture authority
  - **Last Updated:** 2025-07-26

- **Topic:** Database Setup & Migration
  - **Primary Doc:** `/docs/data-layer/setup/installation.md`
  - **Former Location:** `/docs/database-setup.md`
  - **Status:** RELOCATED - See Data Layer Architecture section above
  - **Keywords:** database setup, migration, MySQL, installation
  - **Owner:** Claude 6 (Data Specialist) - operational procedures
  - **Last Updated:** 2025-07-26

- **Topic:** Metadata Storage Architecture
  - **Primary Doc:** `/docs/data-layer/schema/storage-architecture.md`
  - **Former Location:** `/docs/metadata-storage-architecture.md`
  - **Status:** RELOCATED - See Data Layer Architecture section above
  - **Keywords:** metadata storage, JSON sidecars, database storage, architecture
  - **Owner:** Claude 6 (Data Specialist) - data architecture authority
  - **Last Updated:** 2025-07-26

- **Topic:** Metadata Merge Strategy
  - **Primary Doc:** `/docs/metadata-merge-strategy.md`
  - **Status:** Complete - Intelligent merging with processing history
  - **Keywords:** metadata merging, processing history, reprocessing, data preservation
  - **Owner:** Stable - no regular updates needed
  - **Last Updated:** 2024-12-24

### 🌍 Geographic & Location Services
- **Topic:** Geolocation System
  - **Primary Doc:** `/docs/geolocation-system.md`
  - **Status:** Complete - Location services and caching
  - **Keywords:** geolocation, GPS, location services, reverse geocoding
  - **Owner:** Stable - no regular updates needed
  - **Last Updated:** 2024-12-24

- **Topic:** Normalized Location Architecture
  - **Primary Doc:** `/docs/data-layer/schema/location-normalization.md`
  - **Former Location:** `/docs/normalized-location-architecture.md`
  - **Status:** RELOCATED - See Data Layer Architecture section above
  - **Keywords:** location normalization, geographic database, foreign keys
  - **Owner:** Claude 6 (Data Specialist) - data architecture authority
  - **Last Updated:** 2025-07-26

- **Topic:** Recreation.gov Data Integration
  - **Primary Doc:** `/docs/data-layer/etl/recreation-gov.md`
  - **Former Location:** `/docs/recreation-gov-etl.md`
  - **Status:** RELOCATED - See Data Layer Architecture section above
  - **Keywords:** Recreation.gov, ETL, facility data, landmarks, camping
  - **Owner:** Claude 6 (Data Specialist) - data integration authority
  - **Last Updated:** 2025-07-26

- **Topic:** GPS Coordinate Corruption Fix
  - **Primary Doc:** `/docs/gps-coordinate-corruption-fix.md`
  - **Status:** Complete - Video-specific longitude sign corruption fix
  - **Keywords:** GPS corruption, video coordinates, longitude fix, ExifTool
  - **Owner:** Stable - bug fixed
  - **Last Updated:** 2024-12-24

### 📷 Photo Organization & Management
- **Topic:** Photo Organization Strategy
  - **Primary Doc:** `/docs/photo-organization-strategy.md`
  - **Status:** Complete - Complete organization workflow
  - **Keywords:** photo organization, workflow, directory structure, file naming
  - **Owner:** Stable - strategy finalized
  - **Last Updated:** 2024-12-24

- **Topic:** Deduplication System
  - **Primary Doc:** `/docs/deduplication-report.md`
  - **Status:** Complete - Hash-based deduplication process (Final)
  - **Keywords:** deduplication, jdupes, hash-based, storage optimization
  - **Owner:** Completed - archived
  - **Last Updated:** 2024-06-26

- **Topic:** Large Collection Handling
  - **Primary Doc:** `/docs/large-collection-strategy.md`
  - **Status:** Complete - Handling 100k+ photo collections
  - **Keywords:** large collections, 100k photos, performance, scalability
  - **Owner:** Stable - strategy proven
  - **Last Updated:** 2024-12-24

- **Topic:** Google Takeout Processing
  - **Primary Doc:** `/docs/google-takeout-complete-processing.md`
  - **Status:** Complete - Complete processing summary (Final)
  - **Keywords:** Google Takeout, batch processing, 136k files, completion
  - **Owner:** Completed - archived
  - **Last Updated:** 2024-06-26

### 🖼️ Scanning & Digitization
- **Topic:** Multicrop Scanning Workflow
  - **Primary Doc:** `/docs/multicrop-scanning-workflow.md`
  - **Status:** Complete - Complete photo scanning and separation toolkit
  - **Keywords:** scanning, multicrop, photo separation, flatbed, digitization
  - **Owner:** Stable - tools operational
  - **Last Updated:** 2025-01-25

- **Topic:** Duplicate Detection System
  - **Primary Doc:** `/docs/duplicate-detection-system.md`
  - **Status:** Complete - Multi-tier duplicate detection including rotation-aware
  - **Keywords:** duplicate detection, rotation aware, perceptual hashing, three-tier
  - **Owner:** Stable - system operational
  - **Last Updated:** 2025-01-25

### 🔄 Processing Pipeline
- **Topic:** Enrichment Flow Architecture
  - **Primary Doc:** `/docs/enrichment-flow.md`
  - **Status:** Complete - GPS and landmark enrichment pipeline
  - **Keywords:** enrichment, processing pipeline, GPS, landmarks, metadata
  - **Owner:** Stable - pipeline operational
  - **Last Updated:** 2024-12-24

### 🧪 Development & Testing
- **Topic:** Getting Started Guide
  - **Primary Doc:** `/docs/deployment/getting-started.md`
  - **Status:** Complete - Installation and setup guide with scanning tool integration
  - **Keywords:** getting started, installation, setup, quick start, scanning, multicrop
  - **Owner:** Stable - setup procedures finalized
  - **Last Updated:** 2025-07-23

- **Topic:** Quick Start Organization
  - **Primary Doc:** `/docs/quick-start-organization.md`
  - **Status:** Complete - Fast track setup for photo organization
  - **Keywords:** quick start, fast setup, organization, streamlined
  - **Owner:** Stable - procedures finalized
  - **Last Updated:** 2024-12-24

- **Topic:** Testing Framework
  - **Primary Doc:** `/docs/testing/README.md`
  - **Status:** Complete - Test structure and coverage with comprehensive mocking
  - **Keywords:** testing, Jest, mocking, test coverage, CI/CD
  - **Owner:** Stable - framework established
  - **Last Updated:** 2024-12-24

- **Topic:** Quality Gate Validation Reports
  - **Primary Doc:** `/docs/testing/reports/` (directory)
  - **Status:** Active - Guardian formal validation reports for major features
  - **Keywords:** quality gates, validation reports, Claude 3, Guardian, testing evidence
  - **Owner:** Claude 3 (Guardian)
  - **Last Updated:** 2025-07-26

- **Topic:** MMP Documentation Production Readiness
  - **Primary Doc:** `/docs/MMP-DOCUMENTATION-PRODUCTION-READINESS.md`
  - **Status:** Complete - Comprehensive verification report for heritage photo/video processing
  - **Keywords:** MMP documentation verification, production readiness, heritage photos, video processing, quality assurance
  - **Owner:** Claude 4 (Chronicler) - documentation quality verification
  - **Last Updated:** 2025-07-23

- **Topic:** ESLint Configuration
  - **Primary Doc:** `/docs/linting.md`
  - **Status:** Complete - ESLint configuration and rules
  - **Keywords:** linting, ESLint, code quality, TypeScript rules
  - **Owner:** Stable - configuration finalized
  - **Last Updated:** 2024-12-24

### 🔮 Future Planning & Vision
- **Topic:** Future Vision & Opportunities
  - **Primary Doc:** `/docs/future-vision-and-opportunities.md`
  - **Status:** Active - Opportunities and roadmap (may need updates)
  - **Keywords:** future plans, roadmap, opportunities, next features
  - **Owner:** Claude 1 (Architect)
  - **Last Updated:** 2024-12-24

- **Topic:** NAS Migration Planning
  - **Primary Doc:** `/docs/nas-migration-plan.md`
  - **Status:** Complete - Network storage migration strategy
  - **Keywords:** NAS, network storage, migration, remote access
  - **Owner:** Completed - strategy defined
  - **Last Updated:** 2024-12-24

- **Topic:** Phase Completion Overview
  - **Primary Doc:** `/docs/phase-completion-overview.md`
  - **Status:** Active - Project milestones (may need updates)
  - **Keywords:** phases, milestones, completion, project overview
  - **Owner:** Claude 1 (Architect)
  - **Last Updated:** 2024-12-24

### 🤖 Claude Orchestration System (ARCHIVED - See Claude Orchestration Section Above)
- **Topic:** Multi-Claude Team Coordination
  - **Primary Doc:** `/docs/claude-orchestration/README.md`
  - **Former Location:** `/docs/architecture/claude-orchestration.md`
  - **Status:** RELOCATED - See Claude Orchestration System section above
  - **Keywords:** Claude orchestration, multi-agent, team coordination, role specialization, personality system
  - **Owner:** Claude 1 (Architect) - team coordination authority
  - **Last Updated:** 2025-07-26

- **Topic:** Centralized Role Configuration Architecture
  - **Primary Doc:** `/docs/claude-orchestration/development/centralized-configuration.md`
  - **Former Location:** `/docs/architecture/centralized-role-configuration.md`
  - **Status:** RELOCATED - See Claude Orchestration System section above
  - **Keywords:** role configuration, centralized config, YAML configuration, orchestration architecture, config-driven system
  - **Owner:** Claude 4 (Chronicler) - development documentation
  - **Last Updated:** 2025-07-26

- **Topic:** Auto-Cascade Task Chain System
  - **Primary Doc:** `/docs/claude-orchestration/development/auto-cascade/templates-overview.md`
  - **Former Location:** `/docs/orchestration/auto-cascade/templates-overview.md`
  - **Supporting Docs:** 
    - `/claude-orchestration/auto-cascade-architecture-spec.md` (Architecture specification)
    - `/docs/claude-orchestration/development/auto-cascade/usage-guide.md` (Implementation guide)
    - `/docs/claude-orchestration/development/auto-cascade/safety-guidelines.md` (Safety procedures)
  - **Template Library:** `/claude-orchestration/communication/task-chains/templates/` (Auto-cascade YAML templates)
  - **Status:** RELOCATED - See Claude Orchestration System section above
  - **Keywords:** auto-cascade, controlled identity switching, workflow automation, template library, safety mechanisms, Stephen approval gates
  - **Owner:** Claude 4 (Chronicler) - development documentation
  - **Last Updated:** 2025-07-26

- **Topic:** Claude Role Templates
  - **Primary Doc:** `claude-orchestration/role-templates/` (6 files)
  - **Supporting Config:** `claude-orchestration/role-config.yaml` (centralized role definitions)
  - **Supporting Docs:** `/docs/claude-orchestration/roles/README.md` (Role documentation)
  - **Status:** RELOCATED - See Claude Orchestration System section above
  - **Keywords:** Claude roles, templates, specialization, centralized config, role definitions
  - **Owner:** Claude 4 (Chronicler) - role documentation
  - **Last Updated:** 2025-07-26

- **Topic:** Claude Slash Commands
  - **Primary Doc:** `/docs/claude-orchestration/protocols/slash-commands.md`
  - **Former Location:** `/docs/cli/slash-commands.md`
  - **Supporting Migration:** `/docs/migration/mail-to-chain-status-migration.md`
  - **Status:** RELOCATED - See Claude Orchestration System section above
  - **Keywords:** slash commands, mail deprecation, chain-status, task management, communication migration
  - **Owner:** Claude 4 (Chronicler) - protocol documentation
  - **Last Updated:** 2025-07-26

- **Topic:** Communication System Migration 
  - **Primary Doc:** `/docs/migration/mail-to-chain-status-migration.md`
  - **Status:** Complete - Migration from /mail to chain-status.sh task management
  - **Keywords:** mail deprecation, chain-status migration, communication system overhaul, task chain workflow
  - **Owner:** Claude 4 (Chronicler) - migration documentation
  - **Last Updated:** 2025-07-24

- **Topic:** Misunderstanding Tracking System
  - **Primary Doc:** `/.claude/commands/misunderstood.md`
  - **Supporting Data:** `/claude-orchestration/feedback/` (misunderstandings, data, reports)
  - **Status:** Active - Comprehensive feedback system for Claude performance improvement
  - **Keywords:** misunderstanding tracking, feedback system, pattern analysis, Claude improvement, error categorization
  - **Owner:** Claude 2 (Builder) - implementation
  - **Last Updated:** 2025-07-23

### 🎬 Video Processing
- **Topic:** Video Analysis & Metadata Application
  - **Primary Doc:** **MISSING** - Needs creation
  - **Status:** Complete Analysis - 174 videos analyzed, ready for metadata application
  - **Keywords:** video analysis, metadata application, 174 videos, family archive
  - **Owner:** Claude 2 (Implementation)
  - **Last Updated:** 2025-07-02

## Reserved Topics (Prevent Duplicates)

These topics are covered by existing documentation - do NOT create new docs:

- ❌ **Quick Start Documentation** → Use `/docs/quick-start/README.md`
- ❌ **Database Documentation** → Use `/docs/data-layer/` (schema, setup, ETL)
- ❌ **Claude Orchestration** → Use `/docs/claude-orchestration/` (roles, protocols, development)
- ❌ **CLI Tool Documentation** → Use `/docs/cli/README.md` or `/docs/mmp/` (for MMP tools)
- ❌ **Pipeline Architecture** → Use `/docs/pipeline-cli/architecture/`
- ❌ **Error Handling** → Use `/docs/error-system.md`
- ❌ **Photo Processing** → Use `/docs/photo-organization-strategy.md`
- ❌ **Heritage Photos** → Use `/docs/heritage-photo-enrichment.md`
- ❌ **GPS/Location** → Use `/docs/geolocation-system.md`
- ❌ **Testing** → Use `/docs/testing/README.md`
- ❌ **Scanning** → Use `/docs/multicrop-scanning-workflow.md`

## Documentation Search Commands

### Check for Existing Documentation
```bash
# Search for topic keywords by component
grep -r "quick.*start\|installation" /docs/quick-start/ --include="*.md"
grep -r "database\|schema\|MySQL" /docs/data-layer/ --include="*.md"
grep -r "claude\|orchestration\|roles" /docs/claude-orchestration/ --include="*.md"
grep -r "MMP\|command.*line" /docs/mmp/ /docs/cli/ --include="*.md"
grep -r "pipeline\|processing" /docs/pipeline-cli/ --include="*.md"

# Search across all documentation
grep -r "heritage\|historical" /docs/ --include="*.md"
grep -r "your-search-term" /docs/ --include="*.md"

# Find all documentation files by component
find /docs/quick-start -name "*.md" | sort
find /docs/data-layer -name "*.md" | sort
find /docs/claude-orchestration -name "*.md" | sort
find /docs -name "*.md" | sort

# Search registry for topic
grep -i "keyword" /docs/REGISTRY.md
```

### Prevent Duplicate Creation
```bash
# Before creating new documentation:
# 1. Search this registry file
# 2. Search existing documentation
# 3. Check plans directory
find /docs /plans -name "*.md" -exec grep -l "your.*topic" {} \;
```

## Registry Maintenance

### Adding New Topics
1. **Create documentation** in appropriate `/docs/` location
2. **Add registry entry** using required format above
3. **Update master index** `/docs/README.md`
4. **Verify no duplicates** using search commands

### Updating Existing Topics
1. **Update primary documentation** with changes
2. **Update registry status** and last updated date
3. **Update master index** if status changed
4. **Cross-reference related docs** for consistency

### Archiving Completed Topics
1. **Move to `/docs/archive/completed-plans/`** if implementation complete
2. **Update registry status** to "Completed - archived"
3. **Add note in master index** pointing to archive location
4. **Preserve registry entry** for search purposes

---

**Usage Rule:** Every Claude role MUST check this registry before creating documentation. This system ensures Stephen's requirement: "Documentation NEVER goes out of date" through systematic prevention and enforcement.